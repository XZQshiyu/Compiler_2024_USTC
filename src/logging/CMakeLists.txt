# 生成可执行文件 test_ast, test_logging
# 将 syntax, common 链接到 test_ast, common 链接到 test_logging
add_executable(test_ast test_ast.cpp)
add_executable(test_logging test_logging.cpp)
target_link_libraries(test_ast syntax common)
target_link_libraries(test_logging common)
# 安装在路径 /usr/local/bin 即在所有路径下都是可执行的
install(
    TARGETS test_logging
    RUNTIME DESTINATION bin
)

install(
    TARGETS test_ast
    RUNTIME DESTINATION bin
)
