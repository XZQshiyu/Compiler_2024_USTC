#include "../../include/passes/FunctionInline.hpp"
#include "../../include/lightir/Function.hpp"
#include "Instruction.hpp"
#include "Value.hpp"
#include <filesystem>
#include <memory>

void FunctionInline::run() {
    inline_all_functions();
}

void FunctionInline::inline_all_functions() {
    
}



void FunctionInline::inline_function(Instruction *call, Function *origin) {
    std::map<Value*, Value*> v_map;
    auto args = origin->get_args();
    for(int i = 0; i < args.size(); i++){
        v_map.insert((Value*)(&args.front()), call->get_operand(1));
    }
    auto call_bb = call->get_parent();
    auto call_func = call_bb->get_parent();
    for(auto &bb : origin->get_basic_blocks()){
        auto bb_new = BasicBlock::create(call_func->get_parent(), "", call_func);
        v_map.insert(static_cast<Value*>(&bb), static_cast<Value*>(bb_new));

        for(auto &inst : bb.get_instructions()){
            
        }
    }
}