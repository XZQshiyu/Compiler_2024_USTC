# Flex生成器生成词法分析器
# 将lexical_analyzer.l 作为输入，将lexical_analyzer.c文件作为输出生成在当前路径下，
flex_target(lex lexical_analyzer.l ${CMAKE_CURRENT_BINARY_DIR}/lexical_analyzer.c)
# 使用Bison生成器来生成语法分析器
# 输入文件为 syntax_analyzer.y， 输出文件为 syntax_analyzer.c
# 生成的Bison定义文件为 syntax_analyzer.h
bison_target(syntax syntax_analyzer.y
  ${CMAKE_CURRENT_BINARY_DIR}/syntax_analyzer.c
  DEFINES_FILE ${PROJECT_BINARY_DIR}/syntax_analyzer.h
  )  # 添加编译参数

# 建立 Flex 和 Bison目标之间的依赖关系,lex目标依赖于syntax目标，必须先构建syntax目标
add_flex_bison_dependency(lex syntax)
# 创建静态库 syntax, 依赖为所有通过Bison和Flex生成的文件，比如syntax_analyzer.c等等
add_library(syntax STATIC
  ${BISON_syntax_OUTPUTS}
  ${FLEX_lex_OUTPUTS}
)
# 将当前项目的构建目录的所有头文件添加到编译器的包含路径中
include_directories(${PROJECT_BINARY_DIR})

# 生成可执行文件 parser
add_executable(parser parser.c)
# 将common 和syntax链接到 parser可执行文件中
target_link_libraries(parser syntax common)
# 同上
add_executable(lexer lexer.c)
target_link_libraries(lexer syntax common)

# 添加parser lexer到全局路径
install(
    TARGETS parser
    RUNTIME DESTINATION bin
)

install(
    TARGETS lexer
    RUNTIME DESTINATION bin
)
