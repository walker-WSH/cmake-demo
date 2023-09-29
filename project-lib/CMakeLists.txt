file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(project-lib STATIC ${SOURCES_main})
target_include_directories(project-lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})