file(GLOB_RECURSE    SOURCES_main   *.c *.cpp *.h *.hpp) 
add_library(project-dll SHARED ${SOURCES_main})

set_target_properties(project-dll PROPERTIES 
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/binTest"
	PDB_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/binTest")
	
function(copy_target_func target)
  add_custom_command(TARGET ${target}
    POST_BUILD COMMAND "${CMAKE_COMMAND}"
    "-DCONFIG=$<CONFIGURATION>"
    "-DCONFIG2=${CMAKE_CONFIGURATION_TYPES}"
    -P "${CMAKE_CURRENT_SOURCE_DIR}/test.cmake"
    VERBATIM)
endfunction()

copy_target_func(project-dll)