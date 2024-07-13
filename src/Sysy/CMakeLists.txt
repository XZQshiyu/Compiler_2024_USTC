# 生成可执行程序 sysy
# 依赖为 sysy.cpp sysy_builder.cpp
add_executable(
    sysy
    sysy.cpp
    sysy_builder.cpp
)
# 链接动态库
# 将 IR_lib,common,syntax, codegen, stdc++fs, opt_lib链接到 sysy
target_link_libraries(
    sysy
    IR_lib
    common
    syntax
    codegen
    opt_lib
)

# 添加为全局路径,可以在任意路径下执行sysy,默认将sysy添加到 /usr/local/bin路径下
install(
    TARGETS sysy
    RUNTIME DESTINATION bin
)
