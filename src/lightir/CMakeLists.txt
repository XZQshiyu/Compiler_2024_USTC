# 添加静态库 IR_lib
# 一个比较基本的静态库,包含需要定义的基本类接口实现
add_library(
    IR_lib STATIC
    Type.cpp
    User.cpp
    Value.cpp
    BasicBlock.cpp
    Constant.cpp
    Function.cpp
    GlobalVariable.cpp
    Instruction.cpp
    Module.cpp
    IRprinter.cpp
)

# 将LLVMSupport链接到动态库IR_lib中
target_link_libraries(
    IR_lib
    LLVMSupport
)
