set(PROJECT_NAME project-lib)

file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(${PROJECT_NAME} STATIC ${SOURCES_main})

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})