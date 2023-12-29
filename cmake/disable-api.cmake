
macro(InsertDisabledWinAPI)
	add_definitions(-Dsprintf_s=YouShouldUse_vsnprintf_s)
	add_definitions(-Dsprintf=YouShouldUse_vsnprintf_s_)
	add_definitions(-Dfopen_s=DeprecatedCFunction)
	add_definitions(-Dfopen=Deprecated)
	add_definitions(-DCreateProcessA=Deprecated)
	add_definitions(-DLoadLibraryA=Deprecated)
	add_definitions(-DCreateDirectoryA=Deprecated)
	add_definitions(-DCreateDirectoryExA=Deprecated)
	add_definitions(-DRemoveDirectoryA=Deprecated)
	add_definitions(-DCreateFileA=Deprecated)
	add_definitions(-DDeleteFileA=Deprecated)
	add_definitions(-DFindFirstFileA=Deprecated)
	add_definitions(-DFindNextFileA=Deprecated)
	add_definitions(-DGetFileAttributesA=Deprecated)
	add_definitions(-DGetFileAttributesExA=Deprecated)
	add_definitions(-DGetFileSizeA=Deprecated)
	add_definitions(-GetFullPathNameAD=Deprecated)
	add_definitions(-DGetTempFileNameA=Deprecated)
	add_definitions(-DGetTempPathA=Deprecated)
	add_definitions(-DSetFileAttributesA=Deprecated)
	add_definitions(-DSetFileAttributesExA=Deprecated)
	add_definitions(-DMoveFileA=Deprecated)
	add_definitions(-DCopyFileA=Deprecated)
	add_definitions(-DSHCreateDirectoryExA=Deprecated)
	add_definitions(-DGetModuleFileNameA=Deprecated)
	add_definitions(-DGetCommandLineA=Deprecated)
	add_definitions(-DGetTempPathA=Deprecated)
	add_definitions(-DFindFirstChangeNotificationA=Deprecated)
	add_definitions(-DFindFirstFileExA=Deprecated)
	add_definitions(-DGetCompressedFileSizeA=Deprecated)
	add_definitions(-DGetDiskFreeSpaceA=Deprecated)
	add_definitions(-DGetDiskFreeSpaceExA=Deprecated)
	add_definitions(-DGetDiskSpaceInformationA=Deprecated)
	add_definitions(-DGetDriveTypeA=Deprecated)
	add_definitions(-DGetFinalPathNameByHandleA=Deprecated)
	add_definitions(-DGetLongPathNameA=Deprecated)
	add_definitions(-DGetTempPath2A=Deprecated)
	add_definitions(-DGetVolumeInformationA=Deprecated)
	add_definitions(-DPathFindFileNameA=Deprecated)
	add_definitions(-DPathFindExtensionA=Deprecated)
	add_definitions(-D_splitpath=Deprecated2)
	add_definitions(-D_splitpath_s=Deprecated3)
endmacro()

macro(RemoveDisabledWinAPI)
	remove_definitions(-Dsprintf_s=YouShouldUse_vsnprintf_s)
	remove_definitions(-Dsprintf=YouShouldUse_vsnprintf_s_)
	remove_definitions(-Dfopen_s=DeprecatedCFunction)
	remove_definitions(-Dfopen=Deprecated)
	remove_definitions(-DCreateProcessA=Deprecated)
	remove_definitions(-DLoadLibraryA=Deprecated)
	remove_definitions(-DCreateDirectoryA=Deprecated)
	remove_definitions(-DCreateDirectoryExA=Deprecated)
	remove_definitions(-DRemoveDirectoryA=Deprecated)
	remove_definitions(-DCreateFileA=Deprecated)
	remove_definitions(-DDeleteFileA=Deprecated)
	remove_definitions(-DFindFirstFileA=Deprecated)
	remove_definitions(-DFindNextFileA=Deprecated)
	remove_definitions(-DGetFileAttributesA=Deprecated)
	remove_definitions(-DGetFileAttributesExA=Deprecated)
	remove_definitions(-DGetFileSizeA=Deprecated)
	remove_definitions(-GetFullPathNameAD=Deprecated)
	remove_definitions(-DGetTempFileNameA=Deprecated)
	remove_definitions(-DGetTempPathA=Deprecated)
	remove_definitions(-DSetFileAttributesA=Deprecated)
	remove_definitions(-DSetFileAttributesExA=Deprecated)
	remove_definitions(-DMoveFileA=Deprecated)
	remove_definitions(-DCopyFileA=Deprecated)
	remove_definitions(-DSHCreateDirectoryExA=Deprecated)
	remove_definitions(-DGetModuleFileNameA=Deprecated)
	remove_definitions(-DGetCommandLineA=Deprecated)
	remove_definitions(-DGetTempPathA=Deprecated)
	remove_definitions(-DFindFirstChangeNotificationA=Deprecated)
	remove_definitions(-DFindFirstFileExA=Deprecated)
	remove_definitions(-DGetCompressedFileSizeA=Deprecated)
	remove_definitions(-DGetDiskFreeSpaceA=Deprecated)
	remove_definitions(-DGetDiskFreeSpaceExA=Deprecated)
	remove_definitions(-DGetDiskSpaceInformationA=Deprecated)
	remove_definitions(-DGetDriveTypeA=Deprecated)
	remove_definitions(-DGetFinalPathNameByHandleA=Deprecated)
	remove_definitions(-DGetLongPathNameA=Deprecated)
	remove_definitions(-DGetTempPath2A=Deprecated)
	remove_definitions(-DGetVolumeInformationA=Deprecated)
	remove_definitions(-DPathFindFileNameA=Deprecated)
	remove_definitions(-DPathFindExtensionA=Deprecated)
	remove_definitions(-D_splitpath=Deprecated2)
	remove_definitions(-D_splitpath_s=Deprecated3)
endmacro()
