#include "LoopAnalysis.hpp"
#include "Dominators.hpp"
#include "logging.hpp"

#include <iostream>
#include <unordered_map>
#include <unordered_set>

void LoopAnalysis::run()
{
    LOG(INFO) << "start loop analysis";
    // clear original loop information
    clear();
    // get dominator tree
    dominators_ = std::make_unique<Dominators>(m_);
    // build dominator tree
    dominators_->run();
    LOG(INFO) << "dominators done";

    LOG(INFO) << "dominator tree dfs post order";
    // dominators_->print_dfs_post_order();
    LOG(INFO) << "dominator tree dfs reverse post order";
    // dominators_->print_dfs_reverse_post_order();
    // for(auto &f : m_->get_functions())
    // {
    //     if(f.is_declaration())
    //         continue;
    //     dominators_->dump_cfg(&f);
    //     dominators_->dump_dominator_tree(&f);
    // }
    for(auto &f : m_->get_functions())
    {
        // 对于只有声明的io库接口，直接跳过
        if(f.is_declaration())
            continue;
        std::vector<Loop> loops;
        auto block_list = dominators_->get_reverse_post_order(&f);
        LOG(INFO) << "func_name: " << f.get_name();
        // get loop body
        std::unordered_map<BasicBlock *, Loop> loop_map;
        for(auto &bb : f.get_basic_blocks())
        {
            LOG(INFO) << "bb_name: " << bb.get_name();
            // get header, body, latch
            for(auto &pre_bb : bb.get_pre_basic_blocks())
            {
                LOG(INFO) << "pre_bb_name: " << pre_bb->get_name();
                if(dominators_->is_dom(&bb, pre_bb))
                {
                    LOG(INFO) << "find a header";
                    LOG(INFO) << "pre_bb_name: " << pre_bb->get_name();
                    if(loop_map.find(&bb) == loop_map.end())
                    {
                        LOG(INFO) << "create a new loop";
                        Loop loop;
                        loop.header = &bb;
                        loop_map[&bb] = loop; 
                    }
                    LOG(INFO) << "add latch";
                    auto &loop = loop_map[&bb];
                    LOG(INFO) << "finish add latch";
                    loop.latch.push_back(pre_bb);
                    // get body
                    LOG(INFO) << "get loop body";
                    loop.body.merge(get_loop_body(&bb, pre_bb));
                    // LOG(INFO) << "reach here";
                }
                LOG(INFO) << "finish";
            }
            // get exit and preheader
            if(loop_map.find(&bb) != loop_map.end())
            {
                // pre_header
                auto &loop = loop_map[&bb];
                LOG(INFO) << bb.get_name();
                LOG(INFO) << "loop header: " << loop.header->get_name();
                std::vector<BasicBlock*> pre_bb_list;
                for(auto pre_bb : bb.get_pre_basic_blocks())
                {
                    if(loop.body.find(pre_bb) == loop.body.end())
                    {
                        pre_bb_list.push_back(pre_bb);
                    }
                }
                if(pre_bb_list.size() == 1 && pre_bb_list[0]->get_succ_basic_blocks().size() == 1)
                {
                    loop.preheader = pre_bb_list[0];
                }
                // exit block
                auto header = loop.header;
                for(auto succ_bb :header->get_succ_basic_blocks())
                {
                    if(loop.body.find(succ_bb) == loop.body.end())
                    {
                        loop.exit = succ_bb;
                        break;
                    }
                }
                // get indvar, initial, bound, step
                if(loop.latch.size() > 1)
                {
                    LOG(INFO) << "latch size > 1";
                    continue;
                }
                if(loop.exit == loop.header)
                {
                    LOG(INFO) << "exit == header";
                    continue;
                }
                auto branch = header->get_terminator()->as<BranchInst>();
                if(!branch->is_cond_br())
                {
                    LOG(INFO) << "branch is not cond_br";
                    continue;
                }
                auto cond = branch->get_condition();
                if(!cond->is<ICmpInst>())
                {
                    LOG(INFO) << "cond is not icmp";
                    continue;
                }
                auto icmp = cond->as<ICmpInst>();
                if(icmp->get_operand(0)->is<PhiInst>())
                {
                    auto phi = icmp->get_operand(0)->as<PhiInst>();
                    LOG(INFO) << phi->get_name();
                    loop.indvar = phi;
                    loop.bound = icmp->get_operand(1);
                    auto pairs = phi->get_phi_pairs();
                    for(auto &pair : pairs)
                    {
                        LOG(INFO) << pair.first->print() << " " << pair.second->get_name();
                        if(pair.second == loop.preheader)
                        {
                            loop.initial = pair.first;
                        }
                        else
                        {
                            auto next = pair.first;
                            if(next->is<IBinaryInst>())
                            {
                                auto bin = next->as<IBinaryInst>();
                                if(bin->get_instr_type() == Instruction::OpID::add)
                                {
                                    loop.it_type = Instruction::OpID::add;
                                    if(bin->get_operand(0) == phi)
                                    {
                                        loop.step = bin->get_operand(1);
                                    }
                                    else if(bin->get_operand(1) == phi)
                                    {
                                        loop.step = bin->get_operand(0);
                                    }
                                }
                                else if(bin->get_instr_type() == Instruction::OpID::sub)
                                {
                                    loop.it_type = Instruction::OpID::sub;
                                    if(bin->get_operand(0) == phi)
                                    {
                                        loop.step = bin->get_operand(1);
                                    }
                                    else if(bin->get_operand(1) == phi)
                                    {
                                        loop.step = bin->get_operand(0);
                                    }
                                }
                            }
                        }
                    }
                }
                else if(icmp->get_operand(1)->is<PhiInst>())
                {
                    auto phi = icmp->get_operand(1)->as<PhiInst>();
                    loop.indvar = phi;
                    loop.bound = icmp->get_operand(0);
                    auto pairs = phi->get_phi_pairs();
                    for(auto &pair : pairs)
                    {
                        if(pair.second == loop.preheader)
                        {
                            loop.initial = pair.first;
                        }
                        else
                        {
                            auto next = pair.first;
                            if(next->is<IBinaryInst>())
                            {
                                auto bin = next->as<IBinaryInst>();
                                if(bin->get_instr_type() == Instruction::OpID::add)
                                {
                                    loop.it_type = Instruction::OpID::add;
                                    if(bin->get_operand(0) == phi)
                                    {
                                        loop.step = bin->get_operand(1);
                                    }
                                    else if(bin->get_operand(1) == phi)
                                    {
                                        loop.step = bin->get_operand(0);
                                    }
                                }
                                else if(bin->get_instr_type() == Instruction::OpID::sub)
                                {
                                    loop.it_type = Instruction::OpID::sub;
                                    if(bin->get_operand(0) == phi)
                                    {
                                        loop.step = bin->get_operand(1);
                                    }
                                    else if(bin->get_operand(1) == phi)
                                    {
                                        loop.step = bin->get_operand(0);
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    LOG(INFO) << "icmp is not phi";
                    continue;
                }

            }
            
        }
        LOG(INFO) << "finish get loop body";
        for(auto it : loop_map)
        {
            loops.push_back(it.second);
        }
        loop_info[&f] = loops;
    }
    LOG(INFO) << "finish loop analysis";
    print_loop_info();
}

std::set<BasicBlock *> LoopAnalysis::get_loop_body(BasicBlock *header, BasicBlock *latch)
{
    std::set<BasicBlock *> loop_body;
    loop_body.insert(header);
    loop_body.insert(latch);
    std::queue<BasicBlock *> q;
    q.push(latch);
    while(!q.empty())
    {
        auto bb = q.front();
        q.pop();
        LOG(INFO) << "bb_name: " << bb->get_name();
        if(bb == header)
            continue;
        for(auto *pre_bb : bb->get_pre_basic_blocks())
        {
            if(loop_body.find(pre_bb) == loop_body.end())
            {
                loop_body.insert(pre_bb);
                q.push(pre_bb);
            }
        }
    }
    return loop_body;
}

std::vector<BasicBlock *> LoopAnalysis::get_topo_order(Function *f) const
{
    std::vector<BasicBlock *> block_list;
    auto rpo = dominators_->get_reverse_post_order(f);
    for(auto &bb : rpo)
    {
        block_list.push_back(bb);
    }
    return block_list;
}

void LoopAnalysis::print_loop_info() const {
    for(auto &f : loop_info)
    {
        LOG(INFO) << "function: " << f.first->get_name();
        for(auto &loop : f.second)
        {
            if(loop.body.empty())
                continue;
            LOG(INFO) << "loop header: " << (loop.header ? loop.header->get_name() : "nullptr");
            LOG(INFO) << "loop preheader: " << (loop.preheader ? loop.preheader->get_name() : "nullptr");
            LOG(INFO) << "loop latch: ";
            for(auto &bb : loop.latch)
            {
                LOG(INFO) << bb->get_name();
            }
            LOG(INFO) << "loop body: ";
            for(auto &bb : loop.body)
            {
                LOG(INFO) << bb->get_name();
            }
            LOG(INFO) << "loop exit: " << (loop.exit ? loop.exit->get_name() : "nullptr");
            LOG(INFO) << "indvar: " << (loop.indvar ? loop.indvar->get_name() : "nullptr");
            if(loop.initial->is<ConstantInt>())
            {
                LOG(INFO) << "initial: " << loop.initial->as<ConstantInt>()->get_value();
            }
            else if(loop.initial->is<Instruction>())
            {
                LOG(INFO) << "initial: " << loop.initial->get_name();
            }
            else
                LOG(INFO) << "nullptr";
            if(loop.bound->is<ConstantInt>())
            {
                LOG(INFO) << "bound: " << loop.bound->as<ConstantInt>()->get_value();
            }
            else if(loop.bound->is<Instruction>())
            {
                LOG(INFO) << "bound: " << loop.bound->get_name();
            }
            else
                LOG(INFO) << "nullptr";
            if(loop.step->is<ConstantInt>())
            {
                LOG(INFO) << "step: " << loop.step->as<ConstantInt>()->get_value();
            }
            else if(loop.step->is<Instruction>())
            {
                LOG(INFO) << "step: " << loop.step->get_name();
            }
            else
                LOG(INFO) << "nullptr";
            if(loop.it_type == Instruction::OpID::add)
                LOG(INFO) << "it_type: add";
            else if(loop.it_type == Instruction::OpID::sub)
                LOG(INFO) << "it_type: sub";
            else
                LOG(INFO) << "nullptr";
        }
    }
}