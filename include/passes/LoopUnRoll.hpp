#include "LoopAnalysis.hpp"
#include "BasicBlock.hpp"
#include "PassManager.hpp"
#include "Dominators.hpp"
#include "LoopSimplify.hpp"
#include "IRBuilder.hpp"

#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <optional>

class LoopUnRoll : public Pass {
    public:
        LoopUnRoll(Module *m) : Pass(m) {}
        void run() override;
         struct SimpLoop {
            BasicBlock *header;
            BasicBlock *preheader;
            BasicBlock *latch;
            BasicBlock *exit;
            std::set<BasicBlock *> body;
            Value *indvar;
            ConstantInt *initial;
            ConstantInt *bound;
            ConstantInt *step;
        };
        SimpLoop get_simplify_loop(BasicBlock *header,const Loop &loop);
        void unroll_loop(const SimpLoop &sloop, int unroll_factor);
    private:
        std::unique_ptr<LoopAnalysis> loop_analysis_;
        std::unique_ptr<Dominators> dominators_;
        std::unique_ptr<LoopSimplify> loop_simplify_;

};