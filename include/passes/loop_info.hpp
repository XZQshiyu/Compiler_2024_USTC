#ifndef LOOPINFO_HPP
#define LOOPINFO_HPP

#include "BasicBlock.hpp"
#include "Function.hpp"
#include "PassManager.hpp"
#include "Dominators.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include <optional>

class LoopInfo : public Pass
{
    public:
        // 析构函数与构造函数
        explicit LoopInfo(Module *m) : Pass(m) {}
        ~LoopInfo() override = default;
        // loop_struct 结构体
        struct loop_info_struct {
            // 循环头
            std::vector<BasicBlock *> latches;
            // 循环体，包括所有基本块
            std::set<BasicBlock *> loop_bbs;
            // 指向该循环的前置块
            BasicBlock *pre_bb;
            // 循环出口块到其后对应的后续块
            std::unordered_map<BasicBlock *, BasicBlock *> exits;
            // 包含所有嵌套在该循环中的自循环的基本块
            std::set<BasicBlock *> sub_loops;
            // 循环的归约变量信息
            struct ind_var_info_struct {
                // ind_var: 指向归纳变量的指针
                Value *ind_var;
                // 归纳变量的初始值
                Value *initial;
                // 归纳变量的步长
                Value *step;
                // 边界
                Value *bound;
                // 用于比较的操作符
                Instruction::OpID icmp_op;
            };
            std::optional<ind_var_info_struct> ind_var_info{std::nullopt};
        };  
        // 对每个function，得到一个loop信息
        struct func_loop_info {
            std::unordered_map<BasicBlock *, loop_info_struct> func_loops;
            std::vector<BasicBlock *> get_topo_order() const;
        };
        std::unordered_map<Function *, func_loop_info> get_loop_info() { return func_loop_info_; }
        void run() override;

        std::set<BasicBlock *> find_loop_by_latch(BasicBlock *header, BasicBlock *latch);
        // 得到循环的归约变量信息
        auto scev_analysis(BasicBlock *header, const loop_info_struct &loop) -> std::optional<loop_info_struct::ind_var_info_struct>;

        void clear() {
            func_loop_info_.clear();
            dominators_.reset();
        }
    private:
        // 得到每个function到loop信息的映射
        std::unordered_map<Function *, func_loop_info> func_loop_info_;
        // 支配树信息
        std::unique_ptr<Dominators> dominators_;
        
        void print_loop_info() const;
};

#endif  
