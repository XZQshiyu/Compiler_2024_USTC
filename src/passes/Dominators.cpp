#include "Dominators.hpp"
#include "logging.hpp"
#include <iostream>

void Dominators::run() {
    for (auto &f1 : m_->get_functions()) {
        auto f = &f1;
        if (f->get_basic_blocks().size() == 0)
            continue;
        for (auto &bb1 : f->get_basic_blocks()) {
            auto bb = &bb1;
            // LOG(DEBUG) << bb->get_name() + "===============";
            // LOG(DEBUG) << bb->get_succ_basic_blocks().size();
            idom_.insert({bb, {}});
            dom_frontier_.insert({bb, {}});
            dom_tree_succ_blocks_.insert({bb, {}});
        }

        create_idom(f);
        create_dominance_frontier(f);
        create_dom_tree_succ(f);
    }
}
/*
This iterative algorithm is both easy to understand and easy to implement. However, it is impractically
slow. A version that uses distinct bit-vector Dom sets at each node is up to 900 times slower than our
implementation of the Lengauer-Tarjan algorithm. With large graphs, considerable time is wasted performing
intersections on sparsely populated sets and copying these sets from one node to another. When we tried
to reduce the time necessary to do the intersections by substituting SparseSets for the bit vectors [9], the
increased memory requirements again made the algorithm impractical.
To improve the iterative algorithm’s performance, we need a memory-efficient data structure that supports
a fast intersection. Keeping the Dom sets in a consistent order is one way to speed up intersection. If we
think of the set as a list, and require that the union always add to the end of the list, then the Dom sets will
reflect the order in which nodes are added. With this order, if Dom(a) ∩ Dom(b) ∕= ∅, then the resulting set
is a prefix of both Dom(a) and Dom(b).
This observation lets us implement intersection as a forward walk through the ordered sets, performing
a pairwise comparison of elements. If the elements agree, that node is copied into the result set, and the
comparison moves to the next element. When the elements disagree or the end of the sets is reached, the
intersection terminates, and the current node is added as the last element of its own dominator set.
To improve memory efficiency, we rely on a subtle property of these ordered Dom sets. Notice that, for
all nodes except n0
Dom(b) = {b} ∪ IDom(b) ∪ IDom(IDom(b)) · · · {n0}
This suggests a relationship between the ordered Dom set and an auxiliary data structure called the dominator tree. It contains the nodes of the cfg, with edges that reflect dominance. In the dominator tree, each
node is a child of its immediate dominator in the cfg.
Dom(b) contains exactly those nodes on a path through the dominator tree from the entry node n0 to
b. Our ordered intersection operator creates Dom(b) in precisely the order of that path. The first element
of Dom(b) is n0. The last element of Dom(b) is b. The penultimate element of Dom(b) is b’s immediate
dominator—the node in Dom(b) that is closest to b. Thus, with these ordered Dom sets, we can read IDom
directly from the sets.
This relationship between the Dom sets and the dominator tree suggests an alternative data structure.
Rather than keeping distinct Dom sets, the algorithm can represent the dominator tree and read the Dom
sets from the tree. The algorithm keeps a single array, doms, for the whole cfg, indexed by node. For
a node b, we represent b’s inclusion in Dom(b) implicitly. The entry doms(b) holds IDom(b). The entry
doms(doms(b)) holds the next entry, which is IDom(IDom(b)). By walking the doms array, starting at b, we
can reconstruct both the path through the dominator tree from b to n0 and b’s Dom set.
*/

void Dominators::dfs(BasicBlock *bb){
    // LOG(DEBUG) << "dfs " + bb->get_name();
    if (visited.find(bb) != visited.end())
        return;
    visited.insert(bb);
    // LOG(DEBUG) << bb->get_succ_basic_blocks().size();
    // LOG(DEBUG) << bb->get_pre_basic_blocks().size();
    for (auto succ : bb->get_succ_basic_blocks()){
        if(succ->get_parent()!= bb->get_parent()){
            LOG(ERROR) << succ->print() << "\n\n=====\n\n";
            LOG(ERROR) << bb->get_parent()->print();
        }

        
        dfs(succ);
    }
    dfs_stack.push(bb);
    // LOG(DEBUG) << "push " + bb->get_name();
    return;
}

void Dominators::get_reverse_post_order(){
    int i = 0;
    while (dfs_stack.empty() == false)
    {
        auto bb = dfs_stack.top();
        dfs_stack.pop();
        reverse_post_order.push_back(bb);
        reverse_post_order_map.insert({bb, i++});
    }
    
}

void Dominators::create_idom(Function *f) {
    LOG(DEBUG) << "create_idom";
    // TODO 分析得到 f 中各个基本块的 idom
    auto bb_num = f->get_num_basic_blocks();
    // std::vector<BasicBlock *> bb_id_map(bb_num, nullptr);
    for (auto &bb : f->get_basic_blocks()){
        idom_.insert({&bb, nullptr});
        LOG(DEBUG) << bb.get_name() + " : " << &bb;
    }
    idom_.at(f->get_entry_block()) = f->get_entry_block();
    //LOG(DEBUG) << "here";
    bool changed = true;
    while (dfs_stack.empty() == false)
    {
        dfs_stack.pop();
    }
    visited.clear();
    reverse_post_order.clear();
    reverse_post_order_map.clear();
    
    dfs(f->get_entry_block());
        // LOG(DEBUG) << dfs_stack.size();
    get_reverse_post_order();
    while (changed){
        changed = false;
        // auto &bblist = f->get_basic_blocks();
        // LOG(DEBUG) << reverse_post_order.size();
        for (int i = 0; i < reverse_post_order.size(); i++){
            auto bb = reverse_post_order[i];
            // LOG(INFO) << bb->get_name();
            if (bb == (f->get_entry_block()))
                continue;
            auto pre_bb_list = bb->get_pre_basic_blocks();
            BasicBlock *new_idom = nullptr;

            try {
            for (auto pre_bb : pre_bb_list){
                LOG(DEBUG) << "pre_bb : " + pre_bb->get_name();
                // LOG (ERROR) << pre_bb->get_name();
                if (new_idom == nullptr){
                    new_idom = pre_bb;
                    continue;
                }
                LOG(DEBUG) << "new_bb : " + new_idom->get_name();
                // LOG (ERROR) << new_idom->get_name();
                try{
                    if (idom_.at(pre_bb) != nullptr){
                    new_idom = intersect(pre_bb, new_idom);
                }}catch (const std::exception& e){
                    LOG(ERROR) << pre_bb->get_name() << ":" << pre_bb;
                    // std::cout<< e.what() << std::endl;
                    LOG(ERROR) << new_idom->get_name();
                }
                //LOG(DEBUG) << "done";
            }
                
                if (idom_.at(bb) != new_idom){
                    idom_.at(bb) = new_idom;
                    changed = true;
                }
            } catch (const std::exception& e) {
                LOG(ERROR) << bb->get_name();
                LOG(ERROR) << new_idom->get_name();
                LOG(ERROR) << bb->get_parent()->print();
            }

        }

    }
    for(auto info : idom_){
        if(info.first->get_parent() == f)
        LOG(DEBUG) << info.first->get_name() + " idom_ : " + info.second->get_name();
    }
}

BasicBlock* Dominators::intersect(BasicBlock *b1, BasicBlock *b2) {
    
    while (b1 != b2)
    {
        while (reverse_post_order_map.at(b1) > reverse_post_order_map.at(b2))
            b1 = idom_.at(b1);
        while (reverse_post_order_map.at(b2) > reverse_post_order_map.at(b1))
            b2 = idom_.at(b2);
    }
    
    return b1;
}

void Dominators::create_dom(Function *f) {
    LOG(DEBUG) << "create_dom";
    LOG(DEBUG) << f->get_name();
    // for(auto info : idom_){
    //     if(info.first->get_parent() == f)
    //     LOG(DEBUG) << info.first->get_name() + " idom_ : " + info.second->get_name();
    // }
    std::map<BasicBlock *, std::vector<BasicBlock *>> temp_dom;
    auto entry = f->get_entry_block();
    for (auto &bb1 : f->get_basic_blocks()) {
        auto bb = &bb1;
        temp_dom.insert({bb, {entry}});
        for (auto tempbb = bb; tempbb != entry && tempbb; tempbb = idom_.at(tempbb)){
            temp_dom.at(bb).push_back(tempbb);
        }
    }
    LOG(DEBUG) << "here";
    for(auto &bb1 : f->get_basic_blocks()){
        dom_.insert({&bb1, {}});
    }
    for (auto &bb1 : f->get_basic_blocks()) {
        auto bb = &bb1;
        // dom_.insert({bb, {}});
        try
        {
            for (auto tempbb : temp_dom.at(bb)){
            dom_.at(tempbb).push_back(bb);
        }
        }
        catch(const std::exception& e)
        {
            LOG(ERROR) << bb->get_name();
        }
        
        
    }
    // LOG(DEBUG) << dom_.at(f->get_entry_block()).size();
}

void Dominators::create_dominance_frontier(Function *f) {
    LOG(DEBUG) << "create_dominance_frontier";
    // TODO 分析得到 f 中各个基本块的支配边界集合
    create_dom(f);
    // LOG(DEBUG) << "here";
    for (auto &bb1 : f->get_basic_blocks()) {
        auto bb = &bb1;
        // if (bb == f->get_entry_block()) continue;
        LOG(DEBUG) << bb->get_name();
        for (auto dombb : dom_.at(bb)){
            // LOG(DEBUG) << bb->get_name() + " dom_: " + dombb->get_name();
            for(auto succbb : dombb->get_succ_basic_blocks()){
                // LOG(DEBUG) << succbb->get_name();
                if (dom_.at(bb).end() == std::find(dom_.at(bb).begin(), dom_.at(bb).end(), succbb)){
                    // LOG(DEBUG) <<"here";
                    dom_frontier_.at(bb).insert(succbb);
                }
            }
        }
    }
}

void Dominators::create_dom_tree_succ(Function *f) {
    LOG(DEBUG) << "create_dom_tree_succ";
    // TODO 分析得到 f 中各个基本块的支配树后继
    for (auto &bb1 : f->get_basic_blocks()) {
        auto bb = &bb1;
        if (bb == f->get_entry_block()) continue;
        dom_tree_succ_blocks_.at(idom_.at(bb)).insert(bb);
    }
}
