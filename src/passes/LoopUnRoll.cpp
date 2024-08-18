#include "LoopUnRoll.hpp"
#include "Dominators.hpp"
#include "Instruction.hpp"
#include "logging.hpp"  

#include <iostream>
#include <memory>
#include <unordered_map>
#include <vector>
#include <unordered_set>

void LoopUnRoll::run()
{
    loop_simplify_ = std::make_unique<LoopSimplify>(m_);
    loop_simplify_->run();
    loop_analysis_ = std::make_unique<LoopAnalysis>(m_);
    loop_analysis_->run();
    for(auto &func : m_->get_functions())
    {
        if(func.is_declaration())
            continue;
        // 获取函数的循环
        for(auto &header : loop_analysis_->get_topo_order(&func))
        {
            auto loop = loop_analysis_->get_loop_by_header(&func, header);
            if(loop.header == nullptr)
            {
                LOG(INFO) << "No loop in function " << func.get_name();
                continue;
            }
            if(loop.preheader == nullptr)
            {
                LOG(INFO) << "No preheader in loop " << loop.header->get_name();
                continue;
            }
            auto preheader = loop.preheader;
            auto simple_loop = get_simplify_loop(loop.header, loop);
            
            

        }
    }
}