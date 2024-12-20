#ifndef LOOPSIMPLIFY_HPP
#define LOOPSIMPLIFY_HPP

#include "PassManager.hpp"
#include "LoopAnalysis.hpp"
#include "BasicBlock.hpp"
#include "Instruction.hpp"
#include "Dominators.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <vector>

class LoopSimplify : public Pass
{
    public:
        explicit LoopSimplify(Module *m) : Pass(m) {}
        ~LoopSimplify() override = default;
        BasicBlock *create_preheader(BasicBlock *header, const Loop &loop);
        BasicBlock *create_exit(BasicBlock *entrance, const Loop &loop);
        void run() override;
    private:
        std::unique_ptr<LoopAnalysis> loop_analysis_;

};


#endif