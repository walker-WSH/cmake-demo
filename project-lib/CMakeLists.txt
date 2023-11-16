set(PROJECT_NAME project-lib)

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(${PROJECT_NAME} STATIC ${SOURCES_main})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

#有了这一句 并且是PUBLIC 另一个需要链接这个lib的工程 就可以找到当前lib的头文件了
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})