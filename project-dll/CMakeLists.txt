set(PROJECT_NAME project-dll)


file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(${PROJECT_NAME} SHARED ${SOURCES_main})

set_target_properties(${PROJECT_NAME} PROPERTIES 
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/binTest"
	PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/binTest")
	

# 把源目录《src中的》所有文件 复制到目标目录dest中，但是文件夹src不会被复制
file(COPY "${CMAKE_CURRENT_SOURCE_DIR}/test-src/" DESTINATION "${CMAKE_CURRENT_SOURCE_DIR}/dest/")

# 把源目录src复制到目标目录dest中，包含文件夹src也会被复制
# 注意这一句 src目录后面没有“/”
file(COPY "${CMAKE_CURRENT_SOURCE_DIR}/test-src" DESTINATION "${CMAKE_CURRENT_SOURCE_DIR}/dest/")


function(copy_target_func target)
  add_custom_command(TARGET ${target}
    POST_BUILD COMMAND "${CMAKE_COMMAND}"
    "-DCONFIG=$<CONFIGURATION>"
    "-DCONFIG2=${CMAKE_CONFIGURATION_TYPES}"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/test.cmake"
    VERBATIM)
endfunction()

copy_target_func(${PROJECT_NAME})