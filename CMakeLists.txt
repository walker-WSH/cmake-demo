include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/disable-api.cmake)

project(cmake_demo LANGUAGES CXX)


# 修改全局输出路径  这几句要在project()命令之后调用
# https://blog.csdn.net/shada/article/details/130772705
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/lib")
set(CMAKE_PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")



# 对所有工程启用
#add_compile_options(-fsanitize=address)
#add_link_options(-fsanitize=address)


InsertDisabledWinAPI() # 该函数是对所有子工程应用了

add_subdirectory(app)

# 该工程内部会执行RemoveDisabledWinAPI 但之应用于该子工程 不影响后续的其他子工程
add_subdirectory(project-dll)


add_subdirectory(project-lib)
