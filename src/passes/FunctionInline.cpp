#include "../../include/passes/FunctionInline.hpp"
#include "../../include/lightir/Function.hpp"
#include "../../include/codegen/CodeGenRegister.hpp"
#include "Instruction.hpp"
#include "Value.hpp"
#include "logging.hpp"
#include <cassert>
#include <filesystem>
#include <iostream>
#include <memory>
#include <utility>
#include <vector>



void FunctionInline::run() {
    inline_all_functions();
}

void FunctionInline::inline_all_functions() {
    std::set<Function*> recursive_func;
    for(auto &func : m_->get_functions()){
        for(auto &bb : func.get_basic_blocks()){
            for(auto &inst : bb.get_instructions()){
                if(inst.is_call()){
                    auto call = &inst;
                    auto func1 = static_cast<Function*>(call->get_operand(0));
                    if(func1 == &func){
                        recursive_func.insert(func1);
                        break;
                    }
                }
            }
        }
    }
    for (auto &func : m_->get_functions()) {
        // std::cout << func.print();
        // auto name = func.get_name();
        // if (func.get_name() == "main") {
        //     continue;
        // }
        if(outside_func.find(func.get_name()) != outside_func.end()){
            continue;
        }
        a1:
        for (auto &bb : func.get_basic_blocks()) {
            for (auto &inst : bb.get_instructions()) {
                if (inst.is_call()) {
                    auto call = &inst;
                    auto func1 = static_cast<Function*>(call->get_operand(0));
                    if (func1 == &func) {
                        continue;
                    }
                    if(recursive_func.find(func1) != recursive_func.end()) continue;
                    if(outside_func.find(func1->get_name()) != outside_func.end()) continue;
                    // name = func1->get_name();
                    LOG(DEBUG)<< func.print() << "\n\n======||||||\n\n"<< func1->print() << "\n\n======||||||\n\n";
                    inline_function(call, func1);
                    LOG(DEBUG)<< func.print();
                    goto a1;
                }
            }
        }
    }
}



void FunctionInline::inline_function(Instruction *call, Function *origin) {
    std::map<Value*, Value*> v_map;
    std::vector<BasicBlock*> bb_list;
    std::vector<Instruction*> ret_list; //记录函数所有出口

    for(auto &arg:origin->get_args()){
        v_map.insert(std::make_pair(static_cast<Value*>(&arg), call->get_operand(arg.get_arg_no() + 1)));
    }
    auto call_bb = call->get_parent();
    auto call_func = call_bb->get_parent();
    for(auto &bb : origin->get_basic_blocks()){
        auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
        v_map.insert(std::make_pair(static_cast<Value*>(&bb), static_cast<Value*>(bb_new)));
        bb_list.push_back(bb_new);
        for(auto &inst : bb.get_instructions()){
            Instruction *inst_new = inst.clone(bb_new);

            v_map.insert(std::make_pair(static_cast<Value*>(&inst), static_cast<Value*>(inst_new)));
            if(inst.is_ret()){
                ret_list.push_back(inst_new);
            }
        }
    }
    for(auto bb : bb_list){
        for(auto &inst : bb->get_instructions()){
            for(int i = 0; i < inst.get_num_operand(); i++){
                auto op = inst.get_operand(i);
                if(v_map.find(op) != v_map.end()){
                    inst.set_operand(i, v_map[op]);
                }
            }
        }
    }
    // auto bb_1 = BasicBlock::create(call_func->get_parent(), "", call_func);
    // auto bb_2 = BasicBlock::create(call_func->get_parent(), "", call_func);
    Instruction* ret_val = nullptr; //返回值
    bool is_terminated = false;
    auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
    if(!origin->get_return_type()->is_void_type()){
        if(ret_list.size() == 1){
            auto ret = ret_list.front();
            ret_val = static_cast<Instruction*>(ret->get_operand(0));
            auto ret_bb = ret->get_parent();
            ret_bb->remove_instr(ret);
            BranchInst::create_br(bb_new, ret_bb);
        }
        else{
            //多个返回值
            auto bb_phi = BasicBlock::create(call_func->get_parent(), "phi", call_func);
            std::vector<BasicBlock*> ret_bb_list;
            for(auto ret : ret_list){
                auto ret_bb = ret->get_parent();
                ret_bb_list.push_back(ret_bb);
                ret_bb->remove_instr(ret);
                BranchInst::create_br(bb_phi, ret_bb);
                // ret_bb->add_instruction(br);
            }
            auto phi = PhiInst::create_phi(origin->get_return_type(), bb_phi);
            for(int i = 0; i < ret_list.size(); i++){
                phi->add_phi_pair_operand(ret_list[i]->get_operand(0), ret_bb_list[i]);
            }
            bb_phi->add_instruction(phi);
            ret_val = phi;
            bb_list.push_back(bb_phi);
            BranchInst::create_br(bb_new, bb_phi);
        }
    }
    std::vector<Instruction*> del_list;
    for(auto &inst : call_bb->get_instructions()){
        if(!is_terminated){
            //如果前一个基本块还没遇到这条跳转指令
            if(&(inst) == call) {
                auto br = BranchInst::create_br(bb_list.front(), call_bb);
                // bb_1->add_instruction(br);
                call_bb->insert_before(&inst, br);
                // inst.replace_all_use_with(br);
                if(!origin->get_return_type()->is_void_type()){
                    call->replace_all_use_with(ret_val);
                }
                // call_bb->remove_instr(call);
                // del_list.push_back(call);
                is_terminated = true;
            }
        }
        else{
            // call_bb->remove_instr(&inst);
            del_list.push_back(&inst);
        }
    }
    call_bb->remove_instr(call);
    origin->remove_use(call, 0);
    // LOG(ERROR) << origin->get_use_list().size();
    for(auto inst : del_list){
            call_bb->remove_instr(inst);
            bb_new->add_instruction(inst);
    }
    origin->reset_bbs();
    call_func->reset_bbs();
    return;
}