#include "DeadCode.hpp"
#include "logging.hpp"

#include <set>

// 处理流程：两趟处理，mark 标记有用变量，sweep 删除无用指令
void DeadCode::run()
{
    bool changed{};
    func_info->run();
    do
    {
        changed = false;
        for (auto &F : m_->get_functions())
        {
            auto func = &F;
            mark(func);
            changed |= sweep(func);
        }
    } while (changed);
    sweep_globally();
    LOG_INFO << "dead code pass erased " << ins_count << " instructions";
}

void DeadCode::mark(Function *func)
{
    work_list.clear();
    marked.clear();

    for (auto &bb : func->get_basic_blocks())
    {
        for (auto &ins : bb.get_instructions())
        {
            if (is_critical(&ins))
            {
                marked[&ins] = true;
                work_list.push_back(&ins);
            }
        }
    }

    while (work_list.empty() == false)
    {
        auto now = work_list.front();
        work_list.pop_front();

        mark(now);
    }
}

void DeadCode::mark(Instruction *ins)
{
    for (auto op : ins->get_operands())
    {
        auto def = dynamic_cast<Instruction *>(op);
        if (def == nullptr)
            continue;
        if (marked[def])
            continue;
        if (def->get_function() != ins->get_function())
            continue;
        marked[def] = true;
        work_list.push_back(def);
    }
}

bool DeadCode::sweep(Function *func)
{
    std::unordered_set<Instruction *> wait_del{};
    for (auto &bb : func->get_basic_blocks())
    {
        for (auto it = bb.get_instructions().begin();
             it != bb.get_instructions().end();)
        {
            if (marked[&*it])
            {
                ++it;
                continue;
            }
            else
            {
                auto tmp = &*it;
                wait_del.insert(tmp);
                ++it;
            }
        }
    }
    LOG(INFO) << func->print();
    for (auto &bb : func->get_basic_blocks())
    {
        LOG(INFO) << "bb: " << bb.get_name() << " " << bb.tag();
        for (auto &ins : bb.get_instructions())
        {
            // 打印每个指令的tag_
            LOG(INFO) << ins.print();
            LOG(INFO) << ins.tag();
        }
    }

    LOG(INFO) << wait_del.size();
    // LOG(INFO) << "wait_del";
    for (auto inst : wait_del)
    {
        LOG(INFO) << inst->print();
        LOG(INFO) << inst->tag();
    }
    LOG(INFO) << "wait_del";
    for (auto inst : wait_del)
        inst->remove_all_operands();
    for (auto inst : wait_del)
    {
        inst->get_parent()->get_instructions().erase(inst);
    }
    ins_count += wait_del.size();
    return not wait_del.empty(); // changed
}

bool DeadCode::is_critical(Instruction *ins)
{
    // 对纯函数的无用调用也可以在删除之列
    if (ins->is_call())
    {
        auto call_inst = dynamic_cast<CallInst *>(ins);
        auto callee = dynamic_cast<Function *>(call_inst->get_operand(0));
        if (func_info->is_pure_function(callee))
            return false;
        return true;
    }
    if (ins->is_br() || ins->is_ret())
        return true;
    if (ins->is_store())
        return true;
    return false;
}

void DeadCode::sweep_globally()
{
    vector<Function *> unused_funcs;
    vector<GlobalVariable *> unused_globals;
    for (auto &f_r : m_->get_functions())
    {
        if (f_r.get_use_list().size() == 0 and f_r.get_name() != "main")
            unused_funcs.push_back(&f_r);
    }
    for (auto &glob_var_r : m_->get_global_variable())
    {
        if (glob_var_r.get_use_list().size() == 0)
            unused_globals.push_back(&glob_var_r);
    }
    for (auto func : unused_funcs)
        m_->get_functions().erase(func);
    for (auto glob : unused_globals)
        m_->get_global_variable().erase(glob);
    vector<BasicBlock *> unused_bbs;
    set<Instruction *> unused_phi_instrs;
    for (auto &func : m_->get_functions())
    {
        for (auto &bb : func.get_basic_blocks())
        {
            if (bb.get_instructions().size() == 0)
                unused_bbs.push_back(&bb);
            LOG(INFO) << "bb: " << bb.get_name();
            if (bb.get_pre_basic_blocks().size() == 0 and bb.get_name() != "label_entry")
                unused_bbs.push_back(&bb);
        }
    }
    // changed |= unused_funcs.size() or unused_globals.size();
    LOG(INFO) << m_->print();
    for (auto bb : unused_bbs)
    {
        LOG(INFO) << "erase bb: " << bb->get_name();
        auto func = bb->get_parent();
        for (auto &bb_ : func->get_basic_blocks())
        {
            for (auto &instr : bb_.get_instructions())
            {
                if (instr.is_phi())
                {
                    // LOG(INFO) << instr.print();
                    for (unsigned i = 0; i < instr.get_num_operand(); i++)
                    {
                        if (instr.get_operand(i) == bb)
                        {
                            instr.remove_operand(i);
                            instr.remove_operand(i - 1);
                        }
                    }
                    LOG(INFO) << instr.get_num_operand();
                    if(instr.get_num_operand() == 2)
                    {
                        auto val = instr.get_operand(0);
                        instr.replace_all_use_with(val);
                        unused_phi_instrs.insert(&instr);
                    }
                    if(instr.get_num_operand() == 0)
                    {
                        unused_phi_instrs.insert(&instr);
                    }
                }
            }

        }
        bb->get_parent()->remove(bb);
    }
    // LOG(INFO) << m_->print();
    LOG(INFO) << "success delete unuesd bb" ;

    LOG(INFO) << unused_phi_instrs.size();
    for(auto &instr : unused_phi_instrs)
    {
        // LOG(INFO) << instr->print();
        instr->get_parent()->remove_instr(instr);
        LOG(INFO) << "1";
    }
}