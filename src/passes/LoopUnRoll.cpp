#include "LoopUnRoll.hpp"
#include "Dominators.hpp"
#include "Instruction.hpp"
#include "logging.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>
#include <vector>
#include <unordered_set>
#include <algorithm>

void LoopUnRoll::run()
{
    loop_simplify_ = std::make_unique<LoopSimplify>(m_);
    loop_simplify_->run();
    loop_analysis_ = std::make_unique<LoopAnalysis>(m_);
    loop_analysis_->run();
    for (auto &func : m_->get_functions())
    {
        if (func.is_declaration())
            continue;
        // 获取函数的循环
        for (auto &header : loop_analysis_->get_topo_order(&func))
        {
            auto loop = loop_analysis_->get_loop_by_header(&func, header);
            if (loop.header == nullptr)
            {
                LOG(INFO) << "No loop in function " << func.get_name();
                continue;
            }
            if (loop.preheader == nullptr)
            {
                LOG(INFO) << "No preheader in loop " << loop.header->get_name();
                continue;
            }
            auto simple_loop = get_simplify_loop(loop.header, loop);
            if (simple_loop.header == nullptr)
            {
                LOG(INFO) << "No simple loop in loop " << loop.header->get_name();
                continue;
            }
            if (!should_unroll(simple_loop))
            {
                LOG(INFO) << "No need to unroll loop " << simple_loop.header->get_name();
                continue;
            }
            LOG(INFO) << "Unroll loop " << simple_loop.header->get_name();
            unroll_loop(simple_loop, 2);
        }
    }
}
// 只处理简单循环
LoopUnRoll::SimpLoop LoopUnRoll::get_simplify_loop(BasicBlock *header, const Loop &loop)
{
    SimpLoop ret;
    ret.header = header;
    ret.preheader = loop.preheader;
    // get body
    for (auto &bb : loop.body)
    {
        if (bb != header)
            ret.body.insert(bb);
    }
    // only parse loop without nested loop
    if (loop.sub_loops.size() != 0)
    {
        ret.header = nullptr;
        return ret;
    }
    // only parse loop with one latch
    if (loop.latch.size() != 1)
    {
        ret.header = nullptr;
        return ret;
    }
    ret.latch = *loop.latch.begin();
    // only parse loop with one exit, and the exiting must be header
    if (loop.exits.size() != 1)
    {
        ret.header = nullptr;
        return ret;
    }
    auto [exiting, exit] = *loop.exits.begin();
    if (exiting != header)
    {
        ret.header = nullptr;
        return ret;
    }
    ret.exit = exit;
    // get induction variable
    ret.indvar = loop.indvar;
    if (ret.initial->as<ConstantInt>() == nullptr)
    {
        ret.header = nullptr;
        return ret;
    }
    ret.initial = ret.initial->as<ConstantInt>();
    LOG(INFO) << "the initial value is " << ret.initial->get_value();
    if (ret.step->as<ConstantInt>() == nullptr)
    {
        LOG(INFO) << "the step value is not a constant";
        ret.header = nullptr;
        return ret;
    }
    ret.step = ret.step->as<ConstantInt>();
    LOG(INFO) << "the step value is " << ret.step->get_value();
    if (ret.bound->as<ConstantInt>() == nullptr)
    {
        LOG(INFO) << "the bound value is not a constant";
        ret.header = nullptr;
        return ret;
    }
    ret.bound = ret.bound->as<ConstantInt>();
    LOG(INFO) << "the bound value is " << ret.bound->get_value();
    ret.icmp_op = loop.it_type;
    return ret;
}
bool LoopUnRoll::should_unroll(const SimpLoop &sloop)
{
    int initial = sloop.initial->get_value();
    int bound = sloop.bound->get_value();
    int step = sloop.step->get_value();

    int inst_size = 0;
    for (auto &bb : sloop.body)
    {
        inst_size += bb->get_num_of_instr();
    }

    int loop_size = (bound - initial) / step;
    return loop_size * inst_size < UNROLL_THRESHOLD;
}

void LoopUnRoll::unroll_loop(const SimpLoop &sloop, int unroll_factor)
{
    auto header = sloop.header;
    // 拓扑排序
    std::vector<BasicBlock *> topo_order;
    std::map<BasicBlock *, size_t> bb_map;
    std::unordered_set<BasicBlock *> visited;
    for (auto bb : sloop.body)
    {
        auto bb_pre_list = bb->get_pre_basic_blocks();
        if (std::find(bb_pre_list.begin(), bb_pre_list.end(), header) == bb_pre_list.end())
        {
            LOG(INFO) << "bb " << bb->get_name() << " is not connected to header";
            bb_map[bb] = 0;
        }
        else
        {
            bb_map[bb] = bb_pre_list.size();
        }
    }
    while (!bb_map.empty())
    {
        bool changed = false;
        for (auto it = bb_map.begin(); it != bb_map.end();)
        {
            if (it->second == 0)
            {
                topo_order.push_back(it->first);
                visited.insert(it->first);
                for (auto succ : it->first->get_succ_basic_blocks())
                {
                    if (visited.find(succ) != visited.end())
                        continue;
                    bb_map[succ]--;
                }
                it = bb_map.erase(it);
                changed = true;
            }
            else
            {
                it++;
            }
        }
        if (!changed)
        {
            LOG(INFO) << "Loop has cycle";
            break;
        }
    }
    if (topo_order.size() != sloop.body.size())
    {
        LOG(INFO) << "Failed to get topo order";
        return;
    }
    // unroll
    std::map<Value *, Value *> old2new, phi_map;
    for (auto &instr : header->get_instructions())
    {
        if (!instr.is_phi())
            break;
        auto phi = instr.as<PhiInst>();
        for (auto it : phi->get_phi_pairs())
        {
            auto [val, bb] = it;
            if (sloop.body.find(bb) != sloop.body.end())
            {
                phi_map.emplace(phi, val);
            }
            else
            {
                old2new.emplace(phi_map[phi], val);
            }
        }
    }

    auto should_exit = [&](int i)
    {
        int bound = sloop.bound->get_value();
        switch (sloop.icmp_op)
        {
        case Instruction::OpID::ge:
            return i >= bound;
        case Instruction::OpID::gt:
            return i > bound;
        case Instruction::OpID::le:
            return i <= bound;
        case Instruction::OpID::lt:
            return i < bound;
        case Instruction::OpID::eq:
            return i == bound;
        case Instruction::OpID::ne:
            return i != bound;
        default:
            LOG(INFO) << "Unknown icmp op";
            return false;
        }
    };
    auto func = header->get_parent();

    auto clone_bb = [&]()
    {
        for(auto bb : topo_order)
            old2new[bb] = BasicBlock::create(m_, "", func);
        old2new[header] = BasicBlock::create(m_, "", func);
    };

    auto clone2bb = [&](BasicBlock *bb)
    {
        auto new_bb = BasicBlock::create(m_, "", func);
        for(auto &instr : bb->get_instructions())
        {
            if(bb == header)
            {
                if(instr.is_phi())
                {
                    old2new[&instr]= old2new[phi_map[&instr]];
                    continue;
                }
                else if(instr.is_br())
                    continue;
            }
            // not header
            auto new_inst = new_bb->clone_instr(new_bb->get_instructions().end(), &instr, false);
            for(auto &op : new_inst->get_modified_operands())
            {
                if(old2new.find(op) != old2new.end())
                    op = old2new[op];
            }
            old2new[&instr] = new_inst;
        }
    };
    auto unroll_exit = [&]() { return old2new[header]->as<BasicBlock>(); };
    auto unroll_entry = [&]() {
        if(old2new.find(topo_order.front()) == old2new.end())
            return old2new[topo_order.front()]->as<BasicBlock>();
        else
            return old2new[header]->as<BasicBlock>();
    };

    old2new[header] = BasicBlock::create(m_, "", func);
    clone2bb(header);
    auto bb_entry = unroll_entry();

    for(int i = sloop.initial->get_value(); !should_exit(i); i += sloop.step->get_value())
    {
        auto last_exit = unroll_exit();
        clone_bb();
        auto entry = unroll_entry();
        auto new_br = BranchInst::create_br(entry, last_exit);
        last_exit->insert_after(last_exit->get_terminator(), new_br);

        // clone body and header
        for(auto bb : topo_order)
        {
            if(bb == header)
                continue;
            clone2bb(bb);
        }
        clone2bb(header);
    }

    for(auto [old_inst, new_inst] : old2new)
    {
        if(!old_inst->as<Instruction>()->is_phi())
            continue;
        old_inst->replace_all_use_with(new_inst);
    }
    // connect exit
    header->erase_instr(header->get_terminator());
    auto unroll_exit_bb = unroll_exit();
    auto new_br_exit = BranchInst::create_br(sloop.exit ,unroll_exit_bb);
    unroll_exit_bb->insert_after(unroll_exit_bb->get_terminator(), new_br_exit);

    // connect preheader
    sloop.preheader->get_terminator()->replace_all_use_with(old2new[header]);
    
    // remove old body
    for(auto it = func->get_basic_blocks().begin(); it != func->get_basic_blocks().end();)
    {
        if(std::find(sloop.body.begin(), sloop.body.end(), &*it) !=  sloop.body.end())
        {
            it = func->get_basic_blocks().erase(it);
        }
        else
        {
            it++;
        }
    }
}