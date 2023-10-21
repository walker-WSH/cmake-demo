
setlocal
cd %~dp0

set _PROJECT_DIR=%~dp0
set PROJECT_DIR=%_PROJECT_DIR:\=/%
set SRC_DIR=%PROJECT_DIR%
set APP_BUILD_DIR=%PROJECT_DIR%/build_x86


cmake -Wno-dev ^
    -S "%SRC_DIR%" ^
 	-B "%APP_BUILD_DIR%" ^
    -G "Visual Studio 17 2022" ^
    -A Win32 ^
    -T v143 ^