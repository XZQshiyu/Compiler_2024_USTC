#include "LoopInvHoist.hpp"

#include "LoopSearch.hpp"
#include "logging.hpp"

#include <algorithm>
#include <queue>

void LoopInvHoist::run()
{
    LoopSearch loop_searcher(m_, false);
    loop_searcher.run();

    LOG(INFO) << "====== Loop invariant motion started ======";

    LoopTree loop_tree;
    // TODO: construct loop tree and do loop invariant hoisting

    for (auto &func : m_->get_functions())
    {
        // construct loop tree
        for (auto loop : loop_searcher.get_loops_in_func(&func))
        {
            auto loop_parent = loop_searcher.get_parent_loop(loop);
            if (loop_parent != nullptr)
            {
                if (loop_tree.find(loop_parent) != loop_tree.end())
                {
                    loop_tree[loop_parent].emplace(loop);
                }
                else
                {
                    loop_tree.insert({loop_parent, {loop}});
                }
            }
        }

        // do loop invariant hoisting
        for (auto loop : loop_searcher.get_loops_in_func(&func))
        {
            BBset_t visit = {};
            hoist(loop, loop_tree, loop_searcher, visit);
        }
    }

    LOG(INFO) << "====== Loop invariant motion ended ======";
}

// Optimize from leaf nodes on the loop tree up to the root nodes.
void LoopInvHoist::hoist(std::shared_ptr<BBset_t> loop,
                         LoopTree &loop_tree,
                         LoopSearch &loop_searcher,
                         BBset_t &vis)
{
    for (auto subloop : loop_tree[loop])
    {
        hoist(subloop, loop_tree, loop_searcher, vis);
    }

    if (!loop)
    {
        return;
    }

    auto base = loop_searcher.get_loop_base(loop);
    std::vector<Instruction *> loop_invs;
    // TODO: find loop invariants, insert them into loop_invs
    info_.clear();
    for (auto bb : *loop)
    {
        if (vis.find(bb) == vis.end())
            for (auto &instr : bb->get_instructions())
            {
                // info_.insert({&instr, false});
                if (is_inv(&instr, loop))
                {
                    // if(can_move(&instr))
                        loop_invs.push_back(&instr);
                }
            }
    }

    if (!loop_invs.empty())
    {
        // Insert to the block just before the base block.
        BasicBlock *dest = nullptr;
        for (auto prec : base->get_pre_basic_blocks())
        {
            // base block的前驱，但是不在当前循环内的块作为待插入指令的块
            if (!loop->count(prec))
            {
                dest = prec;
                break;
            }
        }
        if (dest)
        {
            // TODO: insert loop_invs to dest
            LOG(INFO) << dest->get_name();
            LOG(INFO) << dest->print();
            auto last_instr = dest->get_terminator();
            dest->remove_instr(last_instr);
            
            // LOG(INFO) << dest->print();
            // for (auto instr : loop_invs)
            //    LOG(INFO) << instr->print();
            for (auto &instr : loop_invs)
            {
                // LOG(INFO) << instr->print();
                auto parent_bb = instr->get_parent();
                // LOG(INFO) << parent_bb->get_name();
                // LOG(INFO) << parent_bb->print();
                // LOG(INFO) << dest->print();
                LOG(INFO) << "set parent success";
                // LOG(INFO) << dest->print();
                parent_bb->remove_instr(instr);
                dest->add_instruction(instr);
                instr->set_parent(dest);
                // LOG(INFO) << dest->print();
            }
            // LOG(INFO) << bb_true->print();
            // LOG(INFO) << last_instr->print();
            // LOG(INFO) << dest->print();
            dest->add_instruction(last_instr);
            LOG(INFO) << "insert terminator success";
            // LOG(INFO) << dest->print();
        }
        else
        {
            LOG(ERROR) << "This loop doesn't have an entry block?!";
        }
    }

    // Mark this loop body as analyzed
    for (auto bb : *loop)
    {
        vis.insert(bb);
    }
}

// A instruction can be moved <= no side effects (memory stores included)
// PHIs are excluded because we don't want to modify them.
bool LoopInvHoist::can_move(Instruction *instr)
{
    return instr->isBinary() || instr->is_si2fp() || instr->is_fp2si() || instr->is_zext() ||
           instr->is_cmp() || instr->is_fcmp() || instr->is_gep();
}

// Returns false if instr involves any value that is assigned inside loop.
bool LoopInvHoist::is_inv(Value *value, std::shared_ptr<BBset_t> loop)
{
    // TODO:
    // if instr is constant return true
    auto const_op = dynamic_cast<Constant *>(value);
    if (const_op != nullptr)
        return true;
    // 如果循环外指令
    if (info_[value])
        return true;
    auto instr = dynamic_cast<Instruction *>(value);
    if (instr != nullptr)
    {
        LOG(INFO) << instr->print();
        if (instr->is_call() || instr->is_ret() || instr->is_phi() || instr->is_br())
            return false;
        if(instr->is_load())
        {
            info_[instr] = false;
            return false;
        }
        if(instr->is_store() || instr->is_gep())
        {
            return false;
        }
        // LOG(INFO) << instr->get_num_operand();
        for (auto op : instr->get_operands())
        {
            if (!is_inv(op, loop))
            {
                info_[op] = false;
                return false;
            }
        }
        info_[instr] = true;
        return true;
    }
    // global variable and arguments for function call
    info_[value] = true;
    return true;
}
