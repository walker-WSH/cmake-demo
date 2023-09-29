file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_executable(app ${SOURCES_main})

target_link_libraries(app PRIVATE project-lib)