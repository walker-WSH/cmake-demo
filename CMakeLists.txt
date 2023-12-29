project(cmake_demo LANGUAGES CXX)


# 修改全局输出路径  这几句要在project()命令之后调用
# https://blog.csdn.net/shada/article/details/130772705
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")


# 所有工程限制使用如下函数
add_definitions(-Dfopen_s=DeprecatedCFunction)
add_definitions(-Dfopen=Deprecated)
add_definitions(-DCreateProcessA=Deprecated)
add_definitions(-DLoadLibraryA=Deprecated)
add_definitions(-DCreateDirectoryA=Deprecated)
add_definitions(-DCreateDirectoryExA=Deprecated)
add_definitions(-DRemoveDirectoryA=Deprecated)
add_definitions(-DCreateFileA=Deprecated)
add_definitions(-DDeleteFileA=Deprecated)
add_definitions(-DFindFirstFileA=Deprecated)
add_definitions(-DFindNextFileA=Deprecated)
add_definitions(-DGetFileAttributesA=Deprecated)
add_definitions(-DGetFileAttributesExA=Deprecated)
add_definitions(-DGetFileSizeA=Deprecated)
add_definitions(-GetFullPathNameAD=Deprecated)
add_definitions(-DGetTempFileNameA=Deprecated)
add_definitions(-DGetTempPathA=Deprecated)
add_definitions(-DMoveFileA=Deprecated)
add_definitions(-DSetFileAttributesA=Deprecated)
add_definitions(-DSetFileAttributesExA=Deprecated)


# 对所有工程启用
#add_compile_options(-fsanitize=address)
#add_link_options(-fsanitize=address)

add_subdirectory(app)
add_subdirectory(project-dll)
add_subdirectory(project-lib)

