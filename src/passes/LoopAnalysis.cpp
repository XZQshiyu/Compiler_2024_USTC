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
    dominators_->print_dfs_reverse_post_order();
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
                for(auto bb_ : loop.body)
                {
                    for(auto succ_bb : bb_->get_succ_basic_blocks())
                    {
                        if(loop.body.find(succ_bb) == loop.body.end())
                        {
                            loop.exits[bb_] = succ_bb; 
                            break;
                        }
                    }
                }
                // for(auto succ_bb :header->get_succ_basic_blocks())
                // {
                //     if(loop.body.find(succ_bb) == loop.body.end())
                //     {
                //         loop.exit = succ_bb;
                //         break;
                //     }
                // }
                // get subloop
                for(auto &loop : loop_map)
                {
                    auto loop_header = loop.first;
                    auto loop_it = loop.second;
                    if(loop_header == &bb)
                        continue;
                    if(loop_it.body.find(&bb) != loop_it.body.end())
                    {
                        // LOG(INFO)  << "find a subloop";
                        loop.second.sub_loops.insert(&bb);
                    }
                }
                // get indvar, initial, bound, step
                if(loop.latch.size() > 1)
                {
                    LOG(INFO) << "latch size > 1";
                    continue;
                }
                if(loop.exits.size() > 1)
                {
                    LOG(INFO) << "exit size > 1";
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
            LOG(INFO) << it.second.sub_loops.size();
            loops.push_back(it.second);
        }
        loop_info[&f] = loops;
    }
    LOG(INFO) << "finish loop analysis";
    for(auto &f : m_->get_functions())
    {
        if(f.is_declaration())
            continue;
        auto order = get_topo_order(&f);
        for(auto &bb : order)
        {
            LOG(INFO) << bb->get_name();
        }
    }
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
// 对循环进行topo排序
std::vector<BasicBlock *> LoopAnalysis::get_topo_order(Function *f) const
{
    std::vector<BasicBlock *> order;
    std::map<BasicBlock *, int> indegree;
    for(auto it : loop_info.at(f))
    {
        indegree[it.header] = 0;
    }
    for(auto &loop : loop_info.at(f))
    {
        for(auto sub_header : loop.sub_loops)
        {
            indegree[sub_header]++;
        }
    }
    LOG(INFO) << indegree.size();
    for(auto &it : indegree)
    {
        LOG(INFO) << it.first->get_name() << " " << it.second;
    }
    while(!indegree.empty())
    {
        bool changed = false;
        for (auto it = indegree.begin(); it != indegree.end(); ) {
        if (it->second == 0) {
            order.push_back(it->first);
            for (auto &loop : loop_info.at(f)) {
                for(auto sub_header : loop.sub_loops)
                {
                    indegree[sub_header]--;
                }
            }
            it = indegree.erase(it); // 使用迭代器安全删除元素
            changed = true;
        } else {
            ++it;
        }
    }
        if (!changed) {
        // 如果没有任何节点被处理，直接退出，避免死循环
        break;
    }
    }
    return order;
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
            LOG(INFO) << "loop exits: ";
            for(auto &mapping : loop.exits)
            {
                LOG(INFO) << mapping.first->get_name() << " -> " << mapping.second->get_name();
            }
            LOG(INFO) << "loop subloops: ";
            // LOG(INFO) << loop.sub_loops.size();
            for(auto &bb : loop.sub_loops)
            {
                LOG(INFO) << "subloop header is: " << bb->get_name();
            }
            // LOG(INFO) << "loop exit: " << (loop.exit ? loop.exit->get_name() : "nullptr");
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