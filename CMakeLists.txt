project(cmake_demo LANGUAGES CXX)


# 修改全局输出路径  这几句要在project()命令之后调用
# https://blog.csdn.net/shada/article/details/130772705
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")


# 所有工程限制使用如下函数
add_definitions(-Dfopen=Deprecated1)
add_definitions(-Dfopen_s=Deprecated2)
add_definitions(-DCreateProcessA=Deprecated3)
add_definitions(-DLoadLibraryA=Deprecated4)
add_definitions(-DCreateFileA=Deprecated5)


# 对所有工程启用
#add_compile_options(-fsanitize=address)
#add_link_options(-fsanitize=address)

add_subdirectory(app)
add_subdirectory(project-dll)
add_subdirectory(project-lib)

