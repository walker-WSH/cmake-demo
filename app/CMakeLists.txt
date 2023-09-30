set(PROJECT_NAME app)

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_executable(${PROJECT_NAME} ${SOURCES_main})

target_link_libraries(${PROJECT_NAME} PRIVATE project-lib)