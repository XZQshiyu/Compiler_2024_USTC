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
    BasicBlock *preheader;
    std::vector<BasicBlock *> latch;
    std::set<BasicBlock *> body;
    BasicBlock *exit;

    Value *indvar;
    Value *initial;
    Value *bound;
    Value *step;
    Instruction::OpID it_type;

    // 默认构造函数
    Loop() 
        : header(nullptr), preheader(nullptr), exit(nullptr),
          indvar(nullptr), initial(nullptr), bound(nullptr), step(nullptr), it_type(Instruction::OpID::add) {}
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
    std::set<BasicBlock *> get_loop_body(BasicBlock *header, BasicBlock *latch);
    void print_loop_info() const;
    std::vector<BasicBlock *> get_topo_order(Function *f) const;
    void run() override;
private:
    std::unordered_map<Function *, loop_list> loop_info;
    std::unique_ptr<Dominators> dominators_;
};
#endif