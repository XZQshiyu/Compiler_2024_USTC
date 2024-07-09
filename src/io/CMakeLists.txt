# 生成静态库 cminus_io
add_library(sysy_io io.c)

# 将sysy_io添加在/lib目录下
install(
    TARGETS sysy_io
    ARCHIVE DESTINATION lib
)
