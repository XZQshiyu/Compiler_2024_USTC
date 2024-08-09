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
    for(auto &f : m_->get_functions())
    {
        if(f.is_declaration()) continue;
        
    }
}