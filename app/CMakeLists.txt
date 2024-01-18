set(PROJECT_NAME app)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MTd")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} /MT")

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_executable(${PROJECT_NAME} ${SOURCES_main})

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")

target_link_libraries(${PROJECT_NAME} PRIVATE project-lib project-dll)