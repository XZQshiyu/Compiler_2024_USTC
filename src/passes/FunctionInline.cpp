#include "../../include/passes/FunctionInline.hpp"
#include "../../include/lightir/Function.hpp"
#include "Instruction.hpp"
#include "Value.hpp"
#include <cassert>
#include <filesystem>
#include <memory>
#include <vector>

void FunctionInline::run() {
    inline_all_functions();
}

void FunctionInline::inline_all_functions() {
    for (auto &func : module->get_functions()) {
        // if (func.get_name() == "main") {
        //     continue;
        // }
        for (auto &bb : func.get_basic_blocks()) {
            for (auto &inst : bb.get_instructions()) {
                if (inst.is_call()) {
                    auto call = &inst;
                    auto func1 = static_cast<Function*>(call->get_operand(0));
                    if (func1->get_name() == func.get_name()) {
                        continue;
                    }
                    inline_function(call, func1);
                }
            }
        }
    }
}



void FunctionInline::inline_function(Instruction *call, Function *origin) {
    std::map<Value*, Value*> v_map;
    std::vector<BasicBlock*> bb_list;
    std::vector<Instruction*> ret_list; //记录函数所有出口
    auto args = origin->get_args();
    for(int i = 0; i < args.size(); i++){
        v_map.insert((Value*)(&args.front()+i), call->get_operand(i+1));
    }
    auto call_bb = call->get_parent();
    auto call_func = call_bb->get_parent();
    for(auto &bb : origin->get_basic_blocks()){
        auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
        v_map.insert(static_cast<Value*>(&bb), static_cast<Value*>(bb_new));
        bb_list.push_back(bb_new);
        for(auto &inst : bb.get_instructions()){
            Instruction *inst_new = inst.clone(bb_new);
            bb_new->add_instruction(inst_new);
            v_map.insert(static_cast<Value*>(&inst), static_cast<Value*>(inst_new));
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
    if(!origin->get_return_type()->is_void_type()){
        if(ret_list.size() == 1){
            ret_val = ret_list.front();
        }
        else{
            //多个返回值
            auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
            for(auto ret : ret_list){
                auto ret_bb = ret->get_parent();
                ret_bb->remove_instr(ret);
                BranchInst::create_br(bb_new, ret_bb);
                // ret_bb->add_instruction(br);
                auto phi = PhiInst::create_phi(origin->get_return_type(), bb_new);
                for(auto R : ret_list){
                    phi->add_phi_pair_operand(R->get_operand(0), R->get_parent());
                }
                ret_val = phi;
                bb_list.push_back(bb_new);
            }
        }
    }
    bool is_terminated = false;
    auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
    BranchInst::create_br(bb_new, bb_list.back());
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
                call_bb->remove_instr(call);

                is_terminated = true;
            }
        }
        else{
            call_bb->remove_instr(&inst);
            bb_new->add_instruction(&inst);
        }
    }
}