#include "Mem2Reg.hpp"
#include "IRBuilder.hpp"
#include "Value.hpp"
#include "logging.hpp"
#include <memory>

void Mem2Reg::run()
{
    // 创建支配树分析 Pass 的实例
    LOG(INFO) << "start dominators";
    dominators_ = std::make_unique<Dominators>(m_);
    // 建立支配树
    dominators_->run();
    LOG(INFO) << "create a dominator tree";
    LOG(INFO) << "start mem2reg";
    // 以函数为单元遍历实现 Mem2Reg 算法
    for (auto &f : m_->get_functions())
    {
        if (f.is_declaration())
            continue;
        func_ = &f;
        if (func_->get_basic_blocks().size() >= 1)
        {
            loop_alloc_inv_hoist();
            // 对应伪代码中 phi 指令插入的阶段
            generate_phi();
            // 对应伪代码中重命名阶段
            rename(func_->get_entry_block());

        }
        // 后续 DeadCode 将移除冗余的局部变量的分配空间
    }
}

void Mem2Reg::loop_alloc_inv_hoist(){
    LOG(DEBUG) << "begin loop alloc inv hoist";
    std::vector<Instruction*> alloc_vec;
    for(auto &bb : func_->get_basic_blocks()){
        auto b = &bb;
        // for(auto &inst : b->get_instructions()){
        //     auto instr = &inst;
        //     if(instr->is_br()){
        //         auto cond_br = static_cast<BranchInst*>(instr);
        //         if(cond_br->is_iter()){
        //             std::stack<BasicBlock*> loop_stack;
        //             std::set<BasicBlock*> loop_set;
        //             std::vector<Value*> alloc_vec;
        //             loop_stack.push()
        //         }
        //     }

        // }
        std::vector<Instruction*> replace_inst;
        for(auto &inst : b->get_instructions()){
            auto instr = &inst;
            if(instr->is_alloca()){
                alloc_vec.push_back(instr);
                // LOG(DEBUG) << "1";
                // instr->get_parent()->remove_instr(instr);
                // LOG(DEBUG) << "2";
                replace_inst.push_back(instr);
            }
        }
        for(auto instr : replace_inst){
            instr->get_parent()->remove_instr(instr);
        }
    }
    auto entry_bb = func_->get_entry_block();
    LOG(DEBUG) << "here";
    for(auto &instr : alloc_vec){
        auto ori_bb = instr->get_parent();
        entry_bb->add_instr_begin(instr);
        // ori_bb->erase_instr(instr);
    }
}

void Mem2Reg::generate_phi()
{
    // TODO
    LOG(DEBUG) << "phase_1";
    // 步骤一：找到活跃在多个 block 的全局名字集合，以及它们所属的 bb 块
    // alloca分配的变量都是全局名字
    std::set<Value *> alloca_var;
    // 建立一个全局名字到对应基本块的映射
    std::map<Value *, std::set<BasicBlock *>> alloca_var_map;
    for (auto &bb : func_->get_basic_blocks())
    {
        auto b = &bb;
        // alloca变量使用只出现在 store的目标addr，只需要判断addr不是一个gep或者全局变量
        for (auto &inst : b->get_instructions())
        {
            auto instr = &inst;
            if (inst.is_store())
            {
                // l_val为addr, r_val为value
                auto l_val = dynamic_cast<StoreInst *>(instr)->get_lval();
                if (is_valid_ptr(l_val))
                {
                    alloca_var.insert(l_val);
                    alloca_var_map[l_val].insert(b);
                }
            }
        }
    }
    // 步骤二：从支配树获取支配边界信息，并在对应位置插入 phi 指令
    LOG(DEBUG) << "phase_2";
    for (auto var : alloca_var)
    {
        // 初始化W集合
        std::vector<BasicBlock *> w;
        w.assign(alloca_var_map[var].begin(), alloca_var_map[var].end());
        std::set<BasicBlock *> F;
        //
        for (int i = 0; i < w.size(); i++)
        {
            auto bb = w[i];
            for (auto y : dominators_->get_dominance_frontier(bb))
            {
                if (F.find(y) == F.end())
                {
                    auto phi_inst = PhiInst::create_phi(var->get_type()->get_pointer_element_type(), y);
                    phi_map[phi_inst] = var;
                    y->add_instr_begin(phi_inst);
                    F.insert(y);
                    w.push_back(y);
                }
            }
        }
    }
}

void Mem2Reg::rename(BasicBlock *bb)
{
    // TODO
    std::vector<Instruction *> deleted_instructions;
    LOG(DEBUG) << "phase_3";
    // 步骤三：将 phi 指令作为 lval 的最新定值，lval 即是为局部变量 alloca 出的地址空间
    for (auto &inst : bb->get_instructions())
    {
        auto instr = &inst;
        if (instr->is_phi())
        {
            auto var = phi_map.at(instr);
            var_stack[var].push_back(instr);
        }
    }
    // 步骤四：用 lval 最新的定值替代对应的load指令
    LOG(DEBUG) << "phase_4";
    for (auto &inst : bb->get_instructions())
    {
        auto instr = &inst;
        if (instr->is_load())
        {
            auto l_val = dynamic_cast<LoadInst *>(instr)->get_lval();
            if (is_valid_ptr(l_val))
            {
                if (var_stack.find(l_val) != var_stack.end())
                {
                    instr->replace_all_use_with(var_stack[l_val].back());
                }
            }
        }
        // 步骤五：将 store 指令的 rval，也即被存入内存的值，作为 lval 的最新定值
        LOG(DEBUG) << "phase_5";
        if (instr->is_store())
        {
            auto l_val = dynamic_cast<StoreInst *>(instr)->get_lval();
            auto r_val = dynamic_cast<StoreInst *>(instr)->get_rval();
            if (is_valid_ptr(l_val))
            {
                var_stack[l_val].push_back(r_val);
                deleted_instructions.push_back(instr);
            }
        }
    }
    // 步骤六：为 lval 对应的 phi 指令参数补充完整
    LOG(DEBUG) << "phase_6";
    for (auto succ_b : bb->get_succ_basic_blocks())
    {
        for (auto &inst : succ_b->get_instructions())
        {
            auto instr = &inst;
            if (instr->is_phi())
            {
                auto var = phi_map.at(instr);
                // 找到phi
                if (var_stack.find(var) != var_stack.end())
                {
                    if(var_stack[var].size() != 0)
                        dynamic_cast<PhiInst *>(instr)->add_phi_pair_operand(var_stack[var].back(), bb);
                }
            }
        }
    }
    // 步骤七：对 bb 在支配树上的所有后继节点，递归执行 re_name 操作
    LOG(DEBUG) << "phase_7";
    for (auto b : dominators_->get_dom_tree_succ_blocks(bb))
        rename(b);
    // 步骤八：pop出 lval 的最新定值
    LOG(DEBUG) << "phase_8";
    for (auto &inst : bb->get_instructions())
    {
        auto instr = &inst;
        if (instr->is_phi())
        {
            auto var = phi_map.at(instr);
            if (is_valid_ptr(var))
            {
                var_stack[var].pop_back();
            }
        }
        else if (instr->is_store())
        {
            auto l_val = dynamic_cast<StoreInst *>(instr)->get_lval();
            if (is_valid_ptr(l_val))
                var_stack[l_val].pop_back();
        }
    }
    // 步骤九：清除冗余的指令
    LOG(DEBUG) << "phase_9";
    for (auto inst : deleted_instructions)
        bb->erase_instr(inst);
}


void Mem2Reg::copy_stmt(BasicBlock *bb)
{
    
}