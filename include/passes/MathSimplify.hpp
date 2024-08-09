#ifndef MATHSIMPLIFY_HPP
#define MATHSIMPLIFY_HPP
#include "Constant.hpp"
#include "IRBuilder.hpp"
#include "Instruction.hpp"
#include "Module.hpp"
#include "PassManager.hpp"
#include "Value.hpp"

#include <stack>
#include <unordered_map>
#include <vector>
#include <algorithm>
#include <math.h>
#include <ilist.hpp>
#include "ConstPropagation.hpp"

class MathSimplify: public Pass
{
public:
    /* data */
    MathSimplify(Module *m) : Pass(m) {}
    void run();
    Instruction* mul(Value *value, ConstantInt * con, Instruction &inst, BasicBlock *bb);
    Instruction* sdiv(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb);
    Instruction* srem(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb);

private:
    std::vector<Instruction *> wait_delete;
};

#endif