# 生成静态库 common, 依赖为 syntax_tree.c, ast.cpp, logging.cpp
# 静态库 common 包含了几个基本的文件: syntax_tree.cpp(分析树), ast.cpp(语法树),logging.cpp(打印调试文件)
add_library(common STATIC
    syntax_tree.c
    ast.cpp
    logging.cpp
)
# 生成可执行文件 common,相当于一个动态库
target_link_libraries(common)

