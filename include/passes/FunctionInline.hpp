#pragma once

#include "PassManager.hpp"


class FunctionInline : public Pass{
public:
    FunctionInline(Module *m) : Pass(m) {}

    void run();

    void inline_function(Instruction *dest, Function *func);

    void inline_all_functions();

    // void log();
    std::set<std::string> outside_func={"getint","getch","getfloat","getarray","getfarray","putint","putch","putarray","putfloat","putfarray","memset_int", "memset_float","_sysy_starttime","_sysy_stoptime"};
};