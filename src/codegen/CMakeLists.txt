# 生成静态库 codegen, 依赖为 CodeGen.cpp, Register.cpp
add_library(
    codegen STATIC
    CodeGenRegister.cpp
    liverange.cpp
    Register.cpp
    regalloc.cpp
)

# 将common, IR_lib链接到静态库codegen
target_link_libraries(codegen common IR_lib)
