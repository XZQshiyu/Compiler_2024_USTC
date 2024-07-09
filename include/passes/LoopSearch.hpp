#ifndef LOOPSEARCH_HPP
#define LOOPSEARCH_HPP

#include "BasicBlock.hpp"
#include "Function.hpp"
#include "PassManager.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>
#include <unordered_set>
#include <vector>
struct CFGNode;
using CFGNodePtr    = std::shared_ptr<CFGNode>;
using CFGNodePtrSet = std::unordered_set<std::shared_ptr<CFGNode>>;
using BBset_t       = std::unordered_set<BasicBlock *>;

class LoopSearch : public Pass {
public:
    explicit LoopSearch(Module *m, bool dump = false) : Pass(m), dump(dump) {}
    ~LoopSearch() override = default;
    void build_cfg(Function *func, std::unordered_set<CFGNodePtr> &result);
    void run() override;
    bool strongly_connected_components(CFGNodePtrSet &nodes,
                                       std::unordered_set<std::shared_ptr<CFGNodePtrSet>> &result);
    void dump_graph(CFGNodePtrSet &nodes, std::string title);
    void traverse(CFGNodePtr n, std::unordered_set<std::shared_ptr<CFGNodePtrSet>> &result);
    CFGNodePtr find_loop_base(std::shared_ptr<CFGNodePtrSet> set, CFGNodePtrSet &reserved);

    auto begin() {
        return loop_set.begin();
    }
    auto end() {
        return loop_set.end();
    }

    BasicBlock *get_loop_base(std::shared_ptr<BBset_t> loop) {
        return loop2base[loop];
    }

    // get the lowest level loop which contains bb
    std::shared_ptr<BBset_t> get_inner_loop(BasicBlock *bb) {
        if (bb2base.find(bb) == bb2base.end()) {
            return nullptr;
        }
        return base2loop[bb2base[bb]];
    }

    // get the parent loop of loop
    std::shared_ptr<BBset_t> get_parent_loop(std::shared_ptr<BBset_t> loop);

    // get all the loops in a function
    std::unordered_set<std::shared_ptr<BBset_t>> get_loops_in_func(Function *f);

private:
    int index_count{};
    bool dump;
    std::vector<CFGNodePtr> stack;
    // loops found
    // 算法找到的所有循环的集合
    std::unordered_set<std::shared_ptr<BBset_t>> loop_set;
    // loops found in a function
    // 记录函数与循环的对应关系
    std::unordered_map<Function *, std::unordered_set<std::shared_ptr<BBset_t>>> func2loop;
    // { entry bb of loop : loop }
    // base 块与循环的对应关系
    std::unordered_map<BasicBlock *, std::shared_ptr<BBset_t>> base2loop;
    // { loop : entry bb of loop }
    std::unordered_map<std::shared_ptr<BBset_t>, BasicBlock *> loop2base;
    // { bb :  entry bb of loop} 默认最低层次的loop
    // 记录循环中的一个块到这个块所在循环（最内层循环）的入口映射关系
    std::unordered_map<BasicBlock *, BasicBlock *> bb2base;
};

#endif
