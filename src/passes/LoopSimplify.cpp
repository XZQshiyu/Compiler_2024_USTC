#include "LoopSimplify.hpp"
#include "LoopAnalysis.hpp"
#include "Instruction.hpp"
#include "Dominators.hpp"
#include "logging.hpp"

#include <iostream>
#include <memory>
#include <unordered_map>

void LoopSimplify::run()
{
    loop_analysis_ = std::make_unique<LoopAnalysis>(m_);
    loop_analysis_->run();
    for (auto &f : m_->get_functions())
    {
        if (f.is_declaration())
            continue;
        // add header or exit
        for (auto &header : loop_analysis_->get_topo_order(&f))
        {
            auto loops = loop_analysis_->get_loop_list(&f);
            for (auto &loop : loops)
            {
                if (loop.header != header)
                    continue;
                if (loop.preheader == nullptr)
                {
                    LOG(INFO) << "create preheader";
                    create_preheader(header, loop);
                }
                for (auto [entrance, exit] : loop.exits)
                {
                    bool flag = false;
                    if (exit == nullptr)
                    {
                        auto &bodys = loop.body;
                        for (auto &succ_bb : entrance->get_succ_basic_blocks())
                        {
                            if (bodys.find(succ_bb) == bodys.end())
                            {
                                flag = true;
                            }
                        }
                    }
                    if (flag)
                    {
                        LOG(INFO) << "create exit";
                        create_exit(entrance, loop);
                    }
                }
            }
        }
    }
}

BasicBlock *LoopSimplify::create_preheader(BasicBlock *header, const Loop &loop)
{
    auto func = header->get_parent();
    auto pre_header = BasicBlock::create(m_, "", func);

    std::vector<PhiInst *> phi_list;
    for(auto &instr : header->get_instructions())
    {
        if(not instr.is_phi())
            break;
        phi_list.push_back(instr.as<PhiInst>());
    }

    // modify phi instruction
    for(auto &phi : phi_list)
    {
        auto incomings = phi->get_phi_pairs();
        std::vector<std::pair<Value *, BasicBlock *>> inner, outer;
        for(auto &[op, bb] : incomings)
        {
            if(loop.body.find(bb) != loop.body.end())
                inner.emplace_back(op, bb);
            else
                outer.emplace_back(op, bb);
        }
        // all incoming values are from loop body
        if(outer.size() == 0)
            continue;
        // all incoming values are from ouside of loop
        if(inner.size() == 0)
        {
            phi->replace_all_use_with(outer[0].first);
            phi->get_parent()->remove_instr(phi);
            pre_header->add_instr_begin(phi);
            continue;
        }
        // some incoming values are from loop body
        if(outer.size() == 1)
        {
            inner.emplace_back(outer[0].first, pre_header);
            continue;
        }
        // create a new phi instruction
        pre_header->add_instr_begin(phi);
        inner.emplace_back(phi, header);
    }

    auto in_bbs = header->get_pre_basic_blocks();
    for(auto &in_bb : in_bbs)
    {
        if(loop.body.find(in_bb) != loop.body.end())
            continue;
        in_bb->remove_succ_basic_block(header);
        in_bb->add_succ_basic_block(pre_header);
        pre_header->add_pre_basic_block(in_bb);
    }
    pre_header->add_succ_basic_block(header);
    header->add_pre_basic_block(pre_header);
    return pre_header;
}

BasicBlock *LoopSimplify::create_exit(BasicBlock *entrance, const Loop &loop)
{
    auto func = entrance->get_parent();
    auto exit = BasicBlock::create(m_, "", func);
    auto in_bbs = entrance->get_succ_basic_blocks();
    for(auto &in_bb : in_bbs)
    {
        if(loop.body.find(in_bb) != loop.body.end())
            continue;
        in_bb->remove_pre_basic_block(entrance);
        in_bb->add_pre_basic_block(exit);
        exit->add_succ_basic_block(in_bb);
    }
    entrance->remove_succ_basic_block(exit);
    entrance->add_succ_basic_block(exit);
    exit->add_pre_basic_block(entrance);
    return exit;
}