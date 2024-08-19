#include "Dominators.hpp"
#include "logging.hpp"
#include <fstream>
void Dominators::run()
{
    LOG(INFO) << "enter here";
    for (auto &f1 : m_->get_functions())
    {   
        LOG(INFO) << f1.get_name();
        auto f = &f1;
        if (f->get_basic_blocks().size() == 0)
            continue;
        for (auto &bb1 : f->get_basic_blocks())
        {
            auto bb = &bb1;
            idom_.insert({bb, {}});
            dom_frontier_.insert({bb, {}});
            dom_tree_succ_blocks_.insert({bb, {}});
        }
        LOG(INFO) << "start create idom";
        create_idom(f);
        LOG(INFO) << "finish create idom";
        create_dominance_frontier(f);
        LOG(INFO) << "finfish dominance frontier";
        create_dom_tree_succ(f);
        LOG(INFO) << "finish dom_tree_succ";
    }
}
// 后序遍历
void Dominators::post_order_traversal(BasicBlock *bb, BBSet &visit)
{
    visit.insert(bb);
    for (auto b : bb->get_succ_basic_blocks())
    {
        if (visit.find(b) == visit.end())
            post_order_traversal(b, visit);
    }
    post_order_num[bb] = post_order.size();
    post_order.push_back(bb);
    post_order_map[bb->get_parent()].push_back(bb);
}
void Dominators::print_dfs_post_order()
{
    for(auto &f : m_->get_functions())
    {
        LOG(INFO) << f.get_name();
        int cnt = 0;
        for(auto &bb : post_order_map[&f])
        {
            LOG(INFO) << bb->get_name() << " : " << cnt++;
        }
    }
}
void Dominators::print_dfs_reverse_post_order()
{
    for(auto &f : m_->get_functions())
    {
        LOG(INFO) << f.get_name();
        int cnt = 0;
        for(auto &bb : reverse_post_order_map[&f])
        {
            LOG(INFO) << bb->get_name() << " : " << cnt++;
        }
    }
}
void Dominators::create_idom(Function *f)
{
    // TODO 分析得到 f 中各个基本块的 idom
    f->set_instr_name();
    // visit数组
    BBSet visit;
    auto entry = f->get_entry_block();
    // dfs, postorder
    post_order.clear();
    post_order_num.clear();
    post_order_traversal(entry, visit);
    // reverse postorder
    post_order.reverse();
    for(auto it : post_order)
    {
        reverse_post_order_map[it->get_parent()].push_back(it);
        idom_[it] = nullptr;
    }
    // initialize the dominators arry
    idom_[entry] = entry;
    bool changed = true;
    while (changed)
    {
        changed = false;
        for (auto bb : post_order)
        {
            // leave the start_node out
            if (bb == entry)
                continue;
            // new_idom = first(processed) predecessor of b
            BasicBlock *new_idom = nullptr;
            for (auto &it : bb->get_pre_basic_blocks())
            {
                // porcessed
                if (idom_.at(it) != nullptr)
                {
                    new_idom = it;
                    break;
                }
            }
            /*
                for all other predecessors, p of b
                    if doms[p] != undefined
                        new_idom = intersect(p, new_idom)
            */
            for (auto &p : bb->get_pre_basic_blocks())
            {
                if (p == new_idom)
                    continue;
                if (idom_[p] != nullptr)
                {
                    // new_idom = intersect(p, new_idom);
                    auto finger1 = p;
                    auto finger2 = new_idom;
                    while (finger1 != finger2)
                    {
                        while (post_order_num[finger1] < post_order_num[finger2])
                            finger1 = idom_[finger1];
                        while (post_order_num[finger2] < post_order_num[finger1])
                            finger2 = idom_[finger2];
                    }
                    new_idom = finger1;
                }
            }
            /*
                if doms[b] != new_idom
                    doms[b] = new_idom
                    changed = true
            */
            if (idom_[bb] != new_idom)
            {
                idom_[bb] = new_idom;
                changed = true;
            }
        }
    }
}

void Dominators::create_dominance_frontier(Function *f)
{
    // TODO 分析得到 f 中各个基本块的支配边界集合
    LOG(INFO) << f->get_name();
    for (auto &b : f->get_basic_blocks())
    {
        LOG(INFO) << b.get_name();
        if (b.get_pre_basic_blocks().size() >= 2)
        {
            for (auto &p : b.get_pre_basic_blocks())
            {
                LOG(INFO) << p->get_name();
                auto runner = p;
                LOG(INFO) << idom_[&b]->get_name();
                while (runner != idom_.at(&b))
                {
                    // LOG(INFO) << idom_[&b]->print();
                    dom_frontier_[runner].insert(&b);
                    runner = idom_[runner];
                    if(runner == nullptr)
                        break;
                    // LOG(INFO) <<
                }
            }
        }
    }
}

void Dominators::create_dom_tree_succ(Function *f)
{
    // TODO 分析得到 f 中各个基本块的支配树后继
    for (auto &b : f->get_basic_blocks())
    {
        auto entry = f->get_entry_block();
        if (idom_[&b] == nullptr)
            dom_tree_succ_blocks_[entry].insert(&b);
        else if (idom_[&b] == &b)
            continue;
        else
            dom_tree_succ_blocks_[idom_[&b]].insert(&b);
    }
}

void Dominators::dump_cfg(Function *f)
{
    if(f->is_declaration())
        return;
    std::vector<std::string> edge_set;
    bool has_edges = false;
    for (auto &bb : f->get_basic_blocks()) {
        auto succ_blocks = bb.get_succ_basic_blocks();
        if(!succ_blocks.empty())
            has_edges = true;
        for (auto succ : succ_blocks) {
            edge_set.push_back('\t' + bb.get_name() + "->" + succ->get_name() + ";\n");
        }
    }
    std::string digraph = "digraph G {\n";
    if (!has_edges && !f->get_basic_blocks().empty()) {
        // 如果没有边且至少有一个基本块，添加一个自环以显示唯一的基本块
        auto &bb = f->get_basic_blocks().front();
        digraph += '\t' + bb.get_name() + ";\n";
    } else {
        for (auto &edge : edge_set) {
            digraph += edge;
        }
    }
    digraph += "}\n";
    std::ofstream file_output;
    file_output.open(f->get_name() + "_cfg.dot", std::ios::out);
    file_output << digraph;
    file_output.close();
    std::string dot_cmd = "dot -Tpng " + f->get_name() + "_cfg.dot" + " -o " + f->get_name() + "_cfg.png";
    std::system(dot_cmd.c_str());
}

void Dominators::dump_dominator_tree(Function *f)
{
    if(f->is_declaration())
        return;

    std::vector<std::string> edge_set;
    bool has_edges = false; // 用于检查是否有边存在

    for (auto &b : f->get_basic_blocks()) {
        if (idom_.find(&b) != idom_.end() && idom_[&b] != &b) {
            edge_set.push_back('\t' + idom_[&b]->get_name() + "->" + b.get_name() + ";\n");
            has_edges = true; // 如果存在支配边，标记为 true
        }
    }

    std::string digraph = "digraph G {\n";

    if (!has_edges && !f->get_basic_blocks().empty()) {
        // 如果没有边且至少有一个基本块，直接添加该块以显示它
        auto &b = f->get_basic_blocks().front();
        digraph += '\t' + b.get_name() + ";\n";
    } else {
        for (auto &edge : edge_set) {
            digraph += edge;
        }
    }

    digraph += "}\n";

    std::ofstream file_output;
    file_output.open(f->get_name() + "_dom_tree.dot", std::ios::out);
    file_output << digraph;
    file_output.close();

    std::string dot_cmd = "dot -Tpng " + f->get_name() + "_dom_tree.dot" + " -o " + f->get_name() + "_dom_tree.png";
    std::system(dot_cmd.c_str());
}