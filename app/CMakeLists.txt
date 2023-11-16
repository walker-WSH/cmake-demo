set(PROJECT_NAME app)

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_executable(${PROJECT_NAME} ${SOURCES_main})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

target_link_libraries(${PROJECT_NAME} PRIVATE project-lib project-dll)