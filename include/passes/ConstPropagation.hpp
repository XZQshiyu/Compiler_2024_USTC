#ifndef CONSTPROPAGATION_HPP
#define CONSTPROPAGATION_HPP
#include "Constant.hpp"
#include "IRBuilder.hpp"
#include "Instruction.hpp"
#include "Module.hpp"
#include "PassManager.hpp"
#include "Value.hpp"

#include <stack>
#include <unordered_map>
#include <vector>
ConstantFP *cast_constantfp(Value *value);
ConstantInt *cast_constantint(Value *value);

class ConstFolder {
public:
    ConstFolder(Module *m) : module_(m) {}
    // cminus only support binary operations
    ConstantInt *compute(Instruction::OpID op, ConstantInt *value1, ConstantInt *value2);
    ConstantFP *compute(Instruction::OpID op, ConstantFP *value1, ConstantFP *value2);
    // int -> float
    ConstantFP *compute(Instruction::OpID op, ConstantInt *value1);
    // float -> int
    ConstantInt *compute(Instruction::OpID op, ConstantFP *value1);

private:
    Module *module_;
};

class ConstPropagation : public Pass {
public:
    ConstPropagation(Module *m) : Pass(m) {}
    void run();

private:
    // clear blocks recursively from the start_bb
    void clear_blocks_recs(BasicBlock *start_bb);

    // check if the bb is the entry block in func
    bool is_entry(BasicBlock *bb);
    IRBuilder *builder = new IRBuilder(nullptr, m_);
    std::vector<Instruction *> wait_delete;
    ConstFolder *folder = new ConstFolder(m_);
    // std::stack<GlobalVariable*>
    std::unordered_map<GlobalVariable *, Constant *> globalvar_def;
    // basic blocks that need to be removed
    std::vector<BasicBlock *> delete_bb;
};

#endif
