#include "LoopInvCM.hpp"
#include "Dominators.hpp"
#include "Instruction.hpp"
#include "logging.hpp"  

#include <iostream>
#include <memory>
#include <unordered_map>

void LoopInvCM::run()
{
    loop_analysis_ = std::make_unique<LoopAnalysis>(m_);
    loop_analysis_->run();
    dominators_ = std::make_unique<Dominators>(m_);
    dominators_->run();
    for(auto &func : m_->get_functions())
    {
        
        // 跳过io函数和没有定义的函数
        if(func.is_declaration())
            continue;
        // 获取函数的循环
        auto loop_list = loop_analysis_->get_loop_list(&func);
        for(auto &header : loop_analysis_->get_topo_order(&func))
        {
            auto loop = loop_analysis_->get_loop_by_header(&func, header);
            if(loop.header == nullptr)
            {
                LOG(INFO) << "NULL header";
                continue;
            }
            auto preheader = loop.preheader;
            bool changed = true;
            while(changed)
            {
                std::vector<Instruction *> to_remove;
                for(auto &bb : loop.body)
                {
                    auto inv_list = get_inv_instructions(bb, loop);
                    to_remove.insert(to_remove.end(), inv_list.begin(), inv_list.end());
                }
                if(to_remove.empty())
                    changed = false;
                LOG(INFO) << "move instrs to preheader";
                for(auto &instr : to_remove)
                {
                    LOG(INFO) << "move instr: " << instr->print();
                }
                LOG(INFO) << "before move: " << preheader->get_instructions().size();
                for(auto &instr : preheader->get_instructions())
                {
                    LOG(INFO) << instr.print();
                }
                for(auto &instr : to_remove)
                {
                    auto bb_parent = instr->get_parent();
                    bb_parent->remove_instr(instr);
                    auto last_instr = preheader->get_terminator();
                    preheader->insert_before(last_instr, instr);
                }
                LOG(INFO) << "after move: " << preheader->get_instructions().size();
                for(auto &instr : preheader->get_instructions())
                {
                    LOG(INFO) << instr.print();
                }
            }
        }   
    }
}
std::vector<Instruction *> LoopInvCM::get_inv_instructions(BasicBlock *bb, const Loop &loop)
{
    std::vector<Instruction *> ret;
    for(auto &instr : bb->get_instructions())
    {
        if(has_side_effect(&instr))
            continue;
        bool is_changed = true;
        for(auto *op : instr.get_operands())
        {
            if(not is_invariant(op, loop))
            {
                is_changed = false;
                break;
            }
        }
        if(is_changed)
        {
            ret.push_back(&instr);
        }
    }
    return ret;
}
bool LoopInvCM::has_side_effect(Instruction *instr)
{
    if(instr->is_store() || instr->is_call() || instr->is_ret() || instr->is_br() || instr->is_load() || instr->is_phi() || instr->is_gep())
        return true;
    return false;
}
bool LoopInvCM::is_invariant(Value *op, const Loop &loop)
{
    if(!op->is<Instruction>())
        return true;
    auto instr = op->as<Instruction>();
    if(loop.body.find(instr->get_parent()) == loop.body.end())
        return true;
    return false;
}