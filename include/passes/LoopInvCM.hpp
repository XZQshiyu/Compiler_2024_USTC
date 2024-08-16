#include "BasicBlock.hpp"
#include "LoopAnalysis.hpp"
#include "PassManager.hpp"
#include "Dominators.hpp"
#include "IRBuilder.hpp"
#include "FuncInfo.hpp"
#include "LoopSimplify.hpp"

#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <memory>

class LoopInvCM : public Pass {
    public:
        LoopInvCM(Module *m) : Pass(m) {}
        void run() override;
        std::vector<Instruction *> get_inv_instructions(BasicBlock *bb, const Loop &loop);
        bool has_side_effect(Instruction *instr);
        bool is_invariant(Value *op, const Loop &loop);
    private:
        std::unique_ptr<LoopAnalysis> loop_analysis_;
        std::unique_ptr<Dominators> dominators_;
        std::unique_ptr<LoopSimplify> loop_simplify_;
};