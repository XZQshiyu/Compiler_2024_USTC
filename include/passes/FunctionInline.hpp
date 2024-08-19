#pragma once

#include "Instruction.hpp"
#include "Module.hpp"
#include "PassManager.hpp"


class FunctionInline : public Pass{
public:
    FunctionInline(Module *m) : Pass(m) {module = m;}

    void run();

    void inline_function(Instruction *dest, Function *func);

    void inline_all_functions();

    void log();
    private:
    Module *module;
};