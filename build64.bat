cmake --build ./build_x64 --config Debug -t ALL_BUILD     #会编译ALL_BUILD.vcxproj的Debug版本
cmake --build ./build_x64 --config Release -t ALL_BUILD
cmake --build ./build_x64 --config RelWithDebInfo -t ALL_BUILD