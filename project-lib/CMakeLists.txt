set(PROJECT_NAME project-lib)

# 所有工程限制使用如下函数
remove_definitions(-DCreateProcessA=Deprecated)
remove_definitions(-DLoadLibraryA=Deprecated)
remove_definitions(-DCreateDirectoryA=Deprecated)
remove_definitions(-DCreateDirectoryExA=Deprecated)
remove_definitions(-DRemoveDirectoryA=Deprecated)
remove_definitions(-DCreateFileA=Deprecated)
remove_definitions(-DDeleteFileA=Deprecated)
remove_definitions(-DFindFirstFileA=Deprecated)
remove_definitions(-DFindNextFileA=Deprecated)
remove_definitions(-DGetFileAttributesA=Deprecated)
remove_definitions(-DGetFileAttributesExA=Deprecated)
remove_definitions(-DGetFileSizeA=Deprecated)
remove_definitions(-GetFullPathNameAD=Deprecated)
remove_definitions(-DGetTempFileNameA=Deprecated)
remove_definitions(-DGetTempPathA=Deprecated)
remove_definitions(-DMoveFileA=Deprecated)
remove_definitions(-DSetFileAttributesA=Deprecated)
remove_definitions(-DSetFileAttributesExA=Deprecated)

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(${PROJECT_NAME} STATIC ${SOURCES_main})

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

#有了这一句 并且是PUBLIC 另一个需要链接这个lib的工程 就可以找到当前lib的头文件了
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})