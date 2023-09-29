project(cmake_demo LANGUAGES CXX)


# 修改全局输出路径  这几句要在project()命令之后调用
# https://blog.csdn.net/shada/article/details/130772705
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")

add_subdirectory(app)
add_subdirectory(project-dll)
add_subdirectory(project-lib)

