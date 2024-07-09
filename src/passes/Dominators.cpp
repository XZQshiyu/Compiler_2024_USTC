#include "Dominators.hpp"
#include "logging.hpp"
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
        LOG(INFO) << it->get_name();
        idom_[it] = nullptr;
    }
    /*
    std::cout << "postorder of the basicblocks is : " << std::endl;
    for (auto bb : post_order)
    {
        std::cout << bb->get_name() << " : " << post_order_num[bb] << std::endl;
    }
    std::cout << std::endl;
    */
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
    // for(auto it : post_order)
    // {
        
    //     LOG(INFO) << it->get_name() << " : " << idom_[it]->get_name();
    // }
    // std::cout << "immediate dominance of each basicblock" << std::endl;
    // for (auto &bb : f->get_basic_blocks())
    // {
    //     if (idom_[&bb] != nullptr)
    //         std::cout << "idom[" << bb.get_name() << "] is " << get_idom(&bb)->get_name() << std::endl;
    //     else
    //         std::cout << "idom[" << bb.get_name() << "] is "
    //                   << "nullptr" << std::endl;
    // }
    // std::cout << std::endl;
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
                    // if(runner == nullptr)
                    //     break;
                    // LOG(INFO) <<
                }
            }
        }
    }

    // std::cout << "print the dominance frontiers " << std::endl;
    // for (auto &bb : f->get_basic_blocks())
    // {
    //     std::cout << bb.get_name() << " dominance frontiers is : { ";
    //     for (auto &frontier : dom_frontier_[&bb])
    //     {
    //         std::cout << frontier->get_name() << " ";
    //     }
    //     std::cout << "}" << std::endl;
    // }
    // std::cout << std::endl;
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
    // std::cout << "print the dominance tree succ " << std::endl;
    // for (auto &bb : f->get_basic_blocks())
    // {
    //     std::cout << bb.get_name() << " : ";
    //     for (auto &succ : dom_tree_succ_blocks_[&bb])
    //     {
    //         if (succ == nullptr)
    //         {
    //             std::cout << "nullptr";
    //             break;
    //         }
    //         else
    //             std::cout << succ->get_name() << " ";
    //     }
    //     std::cout << std::endl;
    // }
}
