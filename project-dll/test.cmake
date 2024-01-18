
message(STATUS "==================================")
message(STATUS "------------- CONFIG = ${CONFIG}")
message(STATUS "------------- CONFIG2 = ${CONFIG2}")
message(STATUS "------------- CONFIG3 = ${CONFIG3}")

if(CONFIG STREQUAL "Debug")
message(STATUS "--- yes, it is debug")
#add_definitions(-D_TEST_DEBUG_)
#target_link_directories(project-dll PRIVATE C:/path/) # can't apply
else()
message(STATUS "--- no, it is not debug")
#add_definitions(-D_TEST_RELEASE_)
endif()

message(STATUS "==================================")