#pragma once

#include "BasicBlock.hpp"
#include "Function.hpp"
#include "LoopSearch.hpp"
#include "Module.hpp"
#include "PassManager.hpp"
#include "IRBuilder.hpp"

#include <unordered_map>
#include <unordered_set>
class LoopInvHoist : public Pass {
  public:
    LoopInvHoist(Module *m) : Pass(m) {}

    void run() override;

  private:
    std::unordered_map<Value *, bool> info_;

    using LoopTree = std::unordered_map<std::shared_ptr<BBset_t>, std::unordered_set<std::shared_ptr<BBset_t>>>;

    void hoist(std::shared_ptr<BBset_t> loop, LoopTree &loop_tree, LoopSearch &loop_searcher, BBset_t &vis);
    bool is_inv(Value *value, std::shared_ptr<BBset_t> loop);
    bool can_move(Instruction *instr);
    IRBuilder *builder = new IRBuilder(nullptr, m_);
};
