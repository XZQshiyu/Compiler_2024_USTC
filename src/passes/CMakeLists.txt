# 创建静态库opt_lib,依赖为如下四个文件
add_library(
    opt_lib STATIC
    Dominators.cpp
    Mem2Reg.cpp
    FuncInfo.cpp
    DeadCode.cpp
    ConstPropagation.cpp
    LoopInvHoist.cpp
    LoopSearch.cpp
    gvn.cpp
)
