#include "LoopSearch.hpp"
#include "logging.hpp"

#include <fstream>
#include <iostream>
#include <unordered_set>

// Control Flow Graph 结点 data structure定义
struct CFGNode
{
    // 当前CFG结点的后继列表
    std::unordered_set<CFGNodePtr> succs;
    // 当前CFG结点的前驱列表
    std::unordered_set<CFGNodePtr> prevs;
    // 当前CFG对应的是哪个 基本块bb
    BasicBlock *bb;
    // 用于tarjan算法的基本信息, 维护每个节点的index和 lowlink
    // index 是结点在DFS中的访问顺序
    // lowlink 是当前结点通过自己和其后继在DFS树中所有可达结点的index最小值
    int index;   // the index of the node in CFG
    int lowlink; // the min index of the node in the strongly connected componets
    bool onStack;
};

void LoopSearch::build_cfg(Function *func, std::unordered_set<CFGNodePtr> &result)
{
    // TODO: build control flow graph used in loop search pass
    // bb 到 cfg 的映射表
    std::unordered_map<BasicBlock *, CFGNodePtr> bb2cfg_map;
    ;
    // initial all the cfgnode, and set up mapping between bb and cfgnode
    for (auto &bb : func->get_basic_blocks())
    {
        auto node = std::make_shared<CFGNode>();
        // initial the cfgnode
        node->bb = &bb;
        node->index = node->lowlink = -1;
        node->onStack = false;
        bb2cfg_map.insert({&bb, node});

        result.insert(node);
    }
    for (auto &bb : func->get_basic_blocks())
    {
        auto node = bb2cfg_map[&bb];
        std::string succ_string = "success node: ";
        // 后继
        for (auto &succ : bb.get_succ_basic_blocks())
        {
            succ_string += succ->get_name() + " ";
            node->succs.insert(bb2cfg_map[succ]);
        }
        // 前驱
        std::string prev_string = "previous node: ";
        for (auto &prev : bb.get_pre_basic_blocks())
        {
            prev_string += prev->get_name() + " ";
            node->prevs.insert(bb2cfg_map[prev]);
        }
    }
}

// Tarjan algorithm
bool LoopSearch::strongly_connected_components(CFGNodePtrSet &nodes,
                                               std::unordered_set<std::shared_ptr<CFGNodePtrSet>> &result)
{
    index_count = 0;
    stack.clear();
    for (auto n : nodes)
    {
        // 如果 没有被访问过
        if (n->index == -1)
        {
            traverse(n, result);
        }
    }
    return result.size() != 0;
}

void LoopSearch::traverse(CFGNodePtr n, std::unordered_set<std::shared_ptr<CFGNodePtrSet>> &result)
{
    n->index = index_count++;
    n->lowlink = n->index;
    stack.push_back(n);
    n->onStack = true;

    for (auto su : n->succs)
    {
        // has not visited su
        if (su->index == -1)
        {
            traverse(su, result);
            n->lowlink = std::min(su->lowlink, n->lowlink);
        }
        // has visited su
        else if (su->onStack)
        {
            n->lowlink = std::min(su->index, n->lowlink);
        }
    }

    if (n->index == n->lowlink)
    {
        // TODO: pop out the nodes in the same strongly connected component from stack
        // 将栈中的节点弹出，直到弹出 v本身，这些pop的结点构成了一个强联通分量
        auto scc_set = std::make_shared<CFGNodePtrSet>();
        CFGNodePtr temp;
        do
        {
            temp = stack.back();
            temp->onStack = false;
            scc_set->insert(temp);
            stack.pop_back();
        } while (temp != n);
        if (scc_set->size() == 1)
            scc_set.reset();
        else
            result.insert(scc_set);
    }
}

CFGNodePtr LoopSearch::find_loop_base(std::shared_ptr<CFGNodePtrSet> set, CFGNodePtrSet &reserved)
{
    CFGNodePtr base = nullptr;
    // TODO: find the loop base node
    // 某个块的前驱块不在这个强联通分量中，说明这个块就是 循环入口
    for (auto n : *set)
    {
        for (auto prev : n->prevs)
        {
            if (set->find(prev) == set->end())
                base = n;
        }
    }
    // 对于内循环，外部循环的入口已经被删除，所以遍历所有被删除的循环入口，如果某个循环入口的后继在该循环中，说明该后继就是内层循环的入口
    if (base != nullptr)
        return base;
    for (auto res : reserved)
    {
        for (auto succ : res->succs)
        {
            if (set->find(succ) != set->end())
                base = succ;
        }
    }
    return base;

    return base;
}
void LoopSearch::run()
{
    // 函数块列表，对每个函数，找出其所有的循环，和循环的入口，便于循环不变量外提使用
    // 对于每个函数，先通过tarjan找到外层循环，然后破坏外层循环的入口结点，再调用tarjan算法找其内层子循环
    auto &func_list = m_->get_functions();
    for (auto &func1 : func_list)
    {
        auto func = &func1;
        // 当前函数没有基本块，不存在循环，跳过
        if (func->get_basic_blocks().size() == 0)
        {
            continue;
        }
        // Loop Search
        else
        {
            // CFG 中所有结点
            CFGNodePtrSet nodes;
            // CFG 中被删除的所有循环入口
            CFGNodePtrSet reserved;
            // 所有强联通分量集合
            std::unordered_set<std::shared_ptr<CFGNodePtrSet>> sccs;

            // step 1: build cfg
            // TODO:
            build_cfg(func, nodes);
            // dump graph
            dump_graph(nodes, func->get_name());
            // step 2: find strongly connected graph from external to internal
            // tarjan
            int scc_index = 0;
            // strongly_connected_compoents 先得到所有的外层循环存于sccs，而后再寻找其内层循环
            while (strongly_connected_components(nodes, sccs))
            {
                // sccs 是当前的一个强联通分量
                if (sccs.size() == 0)
                    break;
                else
                {
                    // step 3: find loop base node for each strongly connected graph
                    // 对于每个强联通分量(即循环)，找到循环入口
                    for (auto scc : sccs)
                    {
                        scc_index++;

                        // 循环入口记为 base
                        auto base = find_loop_base(scc, reserved);
                        // step 4: store result
                        auto bb_set = std::make_shared<BBset_t>();
                        std::string node_net_string = "";

                        for (auto n : *scc)
                        {
                            bb_set->insert(n->bb);
                            node_net_string += n->bb->get_name() + ',';
                        }
                        // 将找到的循环添加到 loop_set中
                        loop_set.insert(bb_set);
                        // 记录当前函数和循环的映射
                        func2loop[func].insert(bb_set);
                        // 记录循环入口和循环的映射
                        base2loop.insert({base->bb, bb_set});
                        // 反向映射
                        loop2base.insert({bb_set, base->bb});

                        // step 5: map each node to loop base
                        // 记录循环中的每个块到入口的映射
                        for (auto &bb : *bb_set)
                        {
                            if (bb2base.find(bb) == bb2base.end())
                                bb2base.insert({bb, base->bb});
                            else
                                bb2base[bb] = base->bb;
                        }
                        // step 6: remove loop base node for researching inner loop
                        // 删除循环入口，便于寻找内层循环
                        reserved.insert(base);
                        dump_graph(*scc, func->get_name() + '_' + std::to_string(scc_index));
                        // 从 nodes中删除
                        nodes.erase(base);
                        // 同时取消其它结点和base之间的边关系
                        for (auto su : base->succs)
                            su->prevs.erase(base);
                        for (auto prev : base->prevs)
                            prev->succs.erase(base);
                    }
                    // for (auto scc : sccs)
                    // {
                    //     delete scc;
                    // }
                    for (auto scc : sccs)
                        scc.reset();
                    sccs.clear();
                    for (auto n : nodes)
                    {
                        n->index = n->lowlink = -1;
                        n->onStack = false;
                    }
                }
            }

            // TODO:
            reserved.clear();
            // for (auto node : nodes)
            // {
            //     delete node;
            // }
            for (auto node : nodes)
                node.reset();
            nodes.clear();
        }
    }
}

void LoopSearch::dump_graph(CFGNodePtrSet &nodes, std::string title)
{
    if (dump)
    {
        std::vector<std::string> edge_set;
        for (auto node : nodes)
        {
            if (node->bb->get_name() == "")
            {
                return;
            }
            if (base2loop.find(node->bb) != base2loop.end())
            {
                for (auto succ : node->succs)
                {
                    if (nodes.find(succ) != nodes.end())
                    {
                        edge_set.insert(edge_set.begin(),
                                        '\t' + node->bb->get_name() + "->" + succ->bb->get_name() +
                                            ';' + '\n');
                    }
                }
                edge_set.insert(edge_set.begin(),
                                '\t' + node->bb->get_name() + " [color=red]" + ';' + '\n');
            }
            else
            {
                for (auto succ : node->succs)
                {
                    if (nodes.find(succ) != nodes.end())
                    {
                        edge_set.push_back('\t' + node->bb->get_name() + "->" +
                                           succ->bb->get_name() + ';' + '\n');
                    }
                }
            }
        }
        std::string digragh = "digraph G {\n";
        for (auto edge : edge_set)
        {
            digragh += edge;
        }
        digragh += '}';
        std::ofstream file_output;
        file_output.open(title + ".dot", std::ios::out);

        file_output << digragh;
        file_output.close();
        std::string dot_cmd = "dot -Tpng " + title + ".dot" + " -o " + title + ".png";
        std::system(dot_cmd.c_str());
    }
}

std::shared_ptr<BBset_t> LoopSearch::get_parent_loop(std::shared_ptr<BBset_t> loop)
{
    auto base = loop2base[loop];
    for (auto prev : base->get_pre_basic_blocks())
    {
        if (loop->find(prev) != loop->end())
        {
            continue;
        }
        auto loop = get_inner_loop(prev);
        if (loop == nullptr || loop->find(base) == loop->end())
        {
            return nullptr;
        }
        else
        {
            return loop;
        }
    }
    return nullptr;
}

std::unordered_set<std::shared_ptr<BBset_t>> LoopSearch::get_loops_in_func(Function *f)
{
    return func2loop.count(f) ? func2loop[f] : std::unordered_set<std::shared_ptr<BBset_t>>();
}
