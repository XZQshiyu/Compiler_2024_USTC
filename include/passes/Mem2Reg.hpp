#pragma once

#include "Dominators.hpp"
#include "Instruction.hpp"
#include "Value.hpp"

#include <map>
#include <memory>

class Mem2Reg : public Pass {
  private:
    // 当前处理的函数
    Function *func_;
    // 支配树分析的实例
    std::unique_ptr<Dominators> dominators_;

    // TODO 添加需要的变量
    std::map<Value*, std::vector<Value*>> var_stack;

    std::map<Value*, Value*> phi_map;

  public:
    Mem2Reg(Module *m) : Pass(m) {}
    ~Mem2Reg() = default;

    void run() override;
    void loop_alloc_inv_hoist();
    void generate_phi();
    void rename(BasicBlock *bb);
    void copy_stmt(BasicBlock *bb);

    static inline bool is_global_variable(Value *l_val) {
        return dynamic_cast<GlobalVariable *>(l_val) != nullptr;
    }
    static inline bool is_gep_instr(Value *l_val) {
        return dynamic_cast<GetElementPtrInst *>(l_val) != nullptr;
    }

    static inline bool is_valid_ptr(Value *l_val) {
        return not is_global_variable(l_val) and not is_gep_instr(l_val);
    }
};
