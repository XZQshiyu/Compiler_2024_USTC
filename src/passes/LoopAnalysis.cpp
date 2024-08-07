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
    dominators_->print_dfs_post_order();
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
        auto block_list = dominators_->get_post_order(&f);
        LOG(INFO) << "func_name: " << f.get_name();
        for(auto bb : block_list)
        {
            LOG(INFO) << "block name: " << bb->get_name();
            const auto last_inst = bb->get_terminator();
            // 结束指令必须是br/ret, 这里筛选出br
            if(last_inst->get_instr_type() != Instruction::OpID::br)
                continue;
            // 筛选条件跳转指令
            const auto br = last_inst->as<BranchInst>();
            if(!br->is_cond_br())
                continue;
            LOG(INFO) << "header block name: " << bb->get_name();
            const auto cmp = br->get_condition();
            auto cmp_inst = cmp->as<ICmpInst>();
            auto lhs = cmp_inst->get_operand(0);
            auto rhs = cmp_inst->get_operand(1);
            
            Value *indvar = nullptr;
            int step = 0;
            LOG(INFO) << br->print();
            LOG(INFO) << cmp_inst->print();
            if(lhs->is<Instruction>() && lhs->as<Instruction>()->is_phi())
            {
                LOG(INFO) << lhs->get_name() << " is phi";
                auto phi_inst = lhs->as<PhiInst>();
                for(auto [val, bb] : phi_inst->get_phi_pairs())
                {
                    if(val->is<IBinaryInst>())
                    {
                        auto bin_inst = val->as<IBinaryInst>();
                        if(bin_inst->get_instr_type() == Instruction::OpID::add)
                        {
                            indvar = lhs->as<PhiInst>();
                            step = bin_inst->get_operand(1)->as<ConstantInt>()->get_value();
                            break;
                        }
                    }
                }
            }
            else if(rhs->is<Instruction>() && rhs->as<Instruction>()->is_phi())
            {
                LOG(INFO) << rhs->get_name() << " is phi";
                auto phi_inst = rhs->as<PhiInst>();
                for(auto [val, bb] : phi_inst->get_phi_pairs())
                {
                    if(val->is<IBinaryInst>())
                    {
                        auto bin_inst = val->as<IBinaryInst>();
                        if(bin_inst->get_instr_type() == Instruction::OpID::add)
                        {
                            indvar = rhs->as<PhiInst>();
                            step = bin_inst->get_operand(1)->as<ConstantInt>()->get_value();
                            break;
                        }
                    }
                }
            }
            else
                continue;
            LOG(INFO) << "reach_here_1";
            if(step == 0)
                continue;
            LOG(INFO) << "reach_here_2";
            // 获取循环头和尾
            const auto header = bb;
            
            const auto exit = br->get_operand(2)->as<BasicBlock>();
            if(!dominators_->is_dom(header, bb))
                continue;
            LOG(INFO) << "reach_here_3";
            auto indvar_inst = indvar->as<Instruction>();
            if(!indvar_inst->is_phi() || indvar_inst->get_parent() != header)
                continue;
            LOG(INFO) << "reach_here_4";
            if(!is_invariant(lhs == indvar ? rhs : lhs, header))
                continue;
            LOG(INFO) << "reach_here_5";
            Value *initial = nullptr;
            if(!get_initial_value(indvar, latch, initial))
                continue;
            LOG(INFO) << "reach_here_6";
            if(!check_cmp_condition(cmp_inst, initial, lhs == indvar ? rhs : lhs, step))
                continue;
            LOG(INFO) << "reach_here_7";
            loops.push_back({header, latch, indvar, lhs, initial, lhs == indvar ? rhs : lhs, step});
        }
        loop_info[&f] = loops;
    }

    print_loop_info();
}
bool LoopAnalysis::match_indvar_step(Value *val, Value*& indvar, int& step)
{
    if(!val->is<IBinaryInst>())
        return false;
    auto bin_inst = val->as<IBinaryInst>();
    if(bin_inst->get_instr_type() != Instruction::OpID::add)
        return false;
    auto lhs = bin_inst->get_operand(0);
    indvar = lhs;
    auto rhs = bin_inst->get_operand(1);
    if(!rhs->is<ConstantInt>())
        return false;
    step = rhs->as<ConstantInt>()->get_value();
    return true;
}

bool LoopAnalysis::is_invariant(Value *val, BasicBlock *header)
{
    // 判断 val 是否在循环头部是不变的
    if(val->is<ConstantInt>())
        return true;
    if(val->is<Argument>())
        return true;
    if(!val->is<Instruction>())
        return false;
    auto inst = val->as<Instruction>();
    return dominators_->is_dom(inst->get_parent(), header);
}
bool LoopAnalysis::get_initial_value(Value *phi, BasicBlock *latch, Value *&initial)
{
    // 获取循环变量的初始值
    auto phi_inst = phi->as<PhiInst>();
    for(auto [val, bb] : phi_inst->get_phi_pairs())
    {
        if(bb != latch)
        {
            if(initial)
                return false;
            initial = val;
        }
    }
    return true;
}

bool LoopAnalysis::check_cmp_condition(ICmpInst *cmp_inst, Value *initial, Value *bound, int step)
{
    auto cmp = cmp_inst->get_instr_type();
    if(cmp == ICmpInst::OpID::ne)
    {
        auto bound_val = bound->as<ConstantInt>()->get_value();
        auto initial_val = initial->as<ConstantInt>()->get_value();
        if((bound_val - initial_val) % step)
            return false;
        if(step > 0 && initial_val >= bound_val)
            return false;
        if(step < 0 && initial_val <= bound_val)
            return false;
    }
    else if(cmp == ICmpInst::OpID::lt)
    {
        if(step <= 0)
            return false;
    }
    else if(cmp == ICmpInst::OpID::gt)
    {
        if(step >= 0)
            return false;
    }
    else
        return false;
    return true;
}

void LoopAnalysis::print_loop_info() const {
    for(auto &f : loop_info)
    {
        LOG(INFO) << "function: " << f.first->get_name();
        for(auto &loop : f.second)
        {
            LOG(INFO) << "loop header: " << loop.header->get_name();
            LOG(INFO) << "loop latch: " << loop.latch->get_name();
            LOG(INFO) << "indvar: " << loop.indvar->get_name();
            LOG(INFO) << "next: " << loop.next->get_name();
            LOG(INFO) << "initial: " << loop.initial->get_name();
            LOG(INFO) << "bound: " << loop.bound->get_name();
            LOG(INFO) << "step: " << loop.step;
        }
    }
}