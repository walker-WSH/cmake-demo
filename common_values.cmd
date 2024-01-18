@echo on

set _PROJECT_DIR=%~dp0
set PROJECT_DIR=%_PROJECT_DIR:\=/%
set SRC_DIR=%PROJECT_DIR%
set APP_BUILD_DIR=%PROJECT_DIR%/build_x64

if "%BUILD_TYPE_ARG%"=="Debug" (
	set CMAKE_BUILD_TYPE=Debug
) else (
	set CMAKE_BUILD_TYPE=RelWithDebInfo
)
