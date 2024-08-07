#include "loop_info.hpp"
#include "logging.hpp"

#include <iostream>
#include <fstream>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <queue>
#include <optional>

void LoopInfo::run()
{
    LOG(INFO) << "start loop info";
    // 清空原先存在的循环信息
    clear();
    // 得到dominator信息
    dominators_ = std::make_unique<Dominators>(m_);
    // 建立支配树
    dominators_->run();
    LOG(INFO) << "dominators done";

    for (auto &func : m_->get_functions())
    {
        // 忽略所有的外部io库函数(只有函数声明)
        // TODO: 这里有一个问题，是否存在有声明的函数，但是没有定义的函数
        if (func.is_declaration())
        {
            LOG(INFO) << "skip " << func.get_name();
            continue;
        }
        LOG(INFO) << "start " << func.get_name();
        // 对于每个func, 找到所有循环信息
        std::unordered_map<BasicBlock *, loop_info_struct> loops;
        for (auto &bb : func.get_basic_blocks())
        {
            // 获得循环头 -> 循环体，latch的映射
            for (auto pre_bb : bb.get_pre_basic_blocks())
            {
                if (dominators_->is_dom(&bb, pre_bb))
                {
                    if (loops.find(&bb) == loops.end())
                    {
                        loops.insert({&bb, loop_info_struct{}});
                    }
                    auto &loop = loops[&bb];
                    loop.latches.push_back(pre_bb);
                    loop.loop_bbs.merge(find_loop_by_latch(&bb, pre_bb));
                }
            }
            // 找到一个以bb为开头的循环
            if (loops.find(&bb) != loops.end())
            {
                auto &loop = loops[&bb];
                // 设置循环的前驱块
                std::vector<BasicBlock *> pre_bb_list;
                for (auto pre : bb.get_pre_basic_blocks())
                {
                    if (loop.loop_bbs.find(pre) == loop.loop_bbs.end())
                    {
                        pre_bb_list.push_back(pre);
                    }
                }
                loop.pre_bb = nullptr;
                // 存在一个前驱块
                if (pre_bb_list.size() == 1 && pre_bb_list.back()->get_succ_basic_blocks().size() == 1)
                {
                    loop.pre_bb = pre_bb_list.back();
                }
                // 找到所有的出口块
                // 因为可能存在break的情况，所以要遍历所有基本块
                for (auto bb_now : loop.loop_bbs)
                {
                    for (auto suc : bb_now->get_succ_basic_blocks())
                    {
                        if (loop.loop_bbs.find(suc) == loop.loop_bbs.end())
                        {
                            loop.exits.insert({bb_now, suc});
                            if (suc->get_pre_basic_blocks().size() == 1)
                            {
                                loop.exits[bb_now] = suc;
                            }
                        }
                    }
                }
                // 子循环
                for (auto &loop_now : loops)
                {
                    if (loop_now.first == &bb)
                        continue;
                    if (loop_now.second.loop_bbs.find(&bb) != loop_now.second.loop_bbs.end())
                    {
                        loop_now.second.sub_loops.insert(&bb);
                    }
                }
                // scev analysis
                loop.ind_var_info = scev_analysis(&bb, loop);
            }
        }
        func_loop_info_[&func].func_loops = std::move(loops);
    }
    print_loop_info();
}

std::set<BasicBlock *> LoopInfo::find_loop_by_latch(BasicBlock *header, BasicBlock *latch)
{
    std::set<BasicBlock *> ret;
    ret.insert(header);
    std::queue<BasicBlock *> q;
    // bfs
    q.push(latch);
    ret.insert(latch);
    while (!q.empty())
    {
        auto cur = q.front();
        q.pop();
        if (cur == header)
            continue;
        for (auto pre_bb : cur->get_pre_basic_blocks())
        {
            if (ret.find(pre_bb) == ret.end())
            {
                q.push(pre_bb);
                ret.insert(pre_bb);
            }
        }
    }
    return ret;
}

// 只对简单循环检测归纳变量
auto LoopInfo::scev_analysis(BasicBlock *header, const loop_info_struct &loop) -> std::optional<loop_info_struct::ind_var_info_struct>
{
    loop_info_struct::ind_var_info_struct ret;
    // 多个latch先不处理归纳变量
    if (loop.latches.size() > 1)
        return std::nullopt;

    if (loop.exits.size() > 1)
        return std::nullopt;

    auto exit_bb = loop.exits.begin()->first;
    if (exit_bb != header)
        return std::nullopt;
    // 解析跳转指令
    if (!header->get_instructions().back().is_br())
        return std::nullopt;
    auto br = dynamic_cast<BranchInst *>(&header->get_instructions().back());
    if (!br->is_cond_br())
        return std::nullopt;
    auto cond = dynamic_cast<Instruction *>(br->get_operand(0));
    // icmp
    if (!cond->is_cmp())
        return std::nullopt;
    auto icmp = dynamic_cast<ICmpInst *>(cond);
    ret.icmp_op = icmp->get_instr_type();
    auto lhs = icmp->get_lhs();
    auto rhs = icmp->get_rhs();
    // 判断是否是循环不变量
    auto is_loop_invariant = [&](Value *val) -> bool {
        if(dynamic_cast<Constant *>(val))
            return true;
        if(dynamic_cast<Argument *>(val))
            return true;
        if (dynamic_cast<Instruction *>(val))
        {
            auto inst = dynamic_cast<Instruction *>(val);
            if(loop.loop_bbs.find(inst->get_parent()) == loop.loop_bbs.end())
                return true;
        }
        return false;
    };
    if(is_loop_invariant(lhs))
    {
        ret.ind_var = rhs;
        ret.bound = lhs;
        ret.icmp_op = icmp->get_instr_type();
    }
    else if(is_loop_invariant(rhs))
    {
        ret.ind_var = lhs;
        ret.bound = rhs;
        ret.icmp_op = icmp->get_instr_type();
    }
    else
    {
        return std::nullopt;
    }
    // find initial and step
    ret.initial = nullptr;
    ret.step = nullptr;
    for(auto &instr : header->get_instructions())
    {
        if(not instr.is_phi())
            break;
        if(&instr != ret.ind_var)
            continue;
        auto phi = dynamic_cast<PhiInst *>(&instr);
        auto value_1 = phi->get_operand(0);
        auto source_1 = dynamic_cast<BasicBlock *>(phi->get_operand(1));
        auto value_2 = phi->get_operand(2);
        auto source_2 = dynamic_cast<BasicBlock *>(phi->get_operand(3));
        // value1是 step, 2是initial
        if(loop.loop_bbs.find(source_1) != loop.loop_bbs.end())
        {
            if(dynamic_cast<IBinaryInst*>(value_1))
            {
                auto bin = dynamic_cast<IBinaryInst*>(value_1);
                if(bin->get_instr_type() == Instruction::OpID::add)
                {
                    if(bin->get_operand(0) == ret.ind_var)
                    {
                        ret.step = bin->get_operand(1);
                        ret.initial = value_2;
                    }
                    else if(bin->get_operand(1) == ret.ind_var)
                    {
                        ret.step = bin->get_operand(0);
                        ret.initial = value_2;
                    }
                }
            }
        }
        else if(loop.loop_bbs.find(source_2) != loop.loop_bbs.end())
        {
            if(dynamic_cast<IBinaryInst*>(value_2))
            {
                auto bin = dynamic_cast<IBinaryInst*>(value_2);
                if(bin->get_instr_type() == Instruction::OpID::add)
                {
                    if(bin->get_operand(0) == ret.ind_var)
                    {
                        ret.step = bin->get_operand(1);
                        ret.initial = value_1;
                    }
                    else if(bin->get_operand(1) == ret.ind_var)
                    {
                        ret.step = bin->get_operand(0);
                        ret.initial = value_1;
                    }
                }
            }
        }
    }
    if(ret.initial == nullptr || ret.step == nullptr)
        return std::nullopt;
    return ret;
}

std::vector<BasicBlock *> LoopInfo::func_loop_info::get_topo_order() const 
{
    std::vector<BasicBlock *> ret;
    std::unordered_map<BasicBlock *, size_t> parent_cnt;
    for(auto &loop : func_loops)
    {
        parent_cnt[loop.first] = 0;
    }
    for(auto &loop : func_loops)
    {
        for(auto &sub_loop : loop.second.sub_loops)
        {
            parent_cnt[sub_loop]++;
        }
    }
    while(!parent_cnt.empty())
    {
        for(auto it = parent_cnt.begin(); it != parent_cnt.end();)
        {
            if(it->second == 0)
            {
                ret.push_back(it->first);
                for(auto &sub_loop : func_loops.at(it->first).sub_loops)
                {
                    parent_cnt[sub_loop]--;
                }
                it = parent_cnt.erase(it);
            }
            else
            {
                it++;
            }
        }
    }
    return ret;
} 

void LoopInfo::print_loop_info() const {
    for (auto &&[func, func_loop] : func_loop_info_) {
        std::cout << func->get_name() << std::endl;
        for (auto &&[header, loop] : func_loop.func_loops) {
            std::cout << "loop latches: " << header->get_name() << std::endl;
            for (auto &&latch : loop.latches) {
                std::cout << latch->get_name() << ' ';
            }
            std::cout << std::endl;
            std::cout << "loop bbs: " << std::endl;
            for (auto &&bb : loop.loop_bbs) {
                std::cout << bb->get_name() << ' ';
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
    }
}