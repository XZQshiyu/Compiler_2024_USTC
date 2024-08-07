#ifndef LOOPANALYSIS_HPP
#define LOOPANALYSIS_HPP

#include "BasicBlock.hpp"
#include "Function.hpp"
#include "PassManager.hpp"
#include "Dominators.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <vector>

// identify the loop form like
/*
    for(int i = initial; i != bound; i += step)
*/
struct Loop final
{
    BasicBlock *header;
    BasicBlock *latch;
    BasicBlock *exit;
    
    Value *indvar;
    Value *next;
    Value *initial;
    Value *bound;
    int step;
};

using loop_list = std::vector<Loop>;

class LoopAnalysis : public Pass
{
public:
    explicit LoopAnalysis(Module *m) : Pass(m) {}
    ~LoopAnalysis() override = default;
    void clear()
    {
        loop_info.clear();
        dominators_.reset();
    }
    bool match_indvar_step(Value *val, Value*& indvar, int& step);
    bool is_invariant(Value *val, BasicBlock *header);
    bool get_initial_value(Value *phi, BasicBlock *latch, Value *&initial);
    bool check_cmp_condition(ICmpInst *cmp_inst, Value *initial, Value *bound, int step);
    void print_loop_info() const;
    void run() override;
private:
    std::unordered_map<Function *, loop_list> loop_info;
    std::unique_ptr<Dominators> dominators_;
};
#endif