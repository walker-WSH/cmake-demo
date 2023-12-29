
macro(InsertDisabledWinAPI)
if(WIN32)
	add_definitions(-Dsprintf_s=Deprecated_sprintf_s_use_vsnprintf_s)
	add_definitions(-D_splitpath=Deprecated__splitpath)
	add_definitions(-D_splitpath_s=Deprecated__splitpath_s)
	add_definitions(-Dfopen_s=Deprecated_fopen_s)
	add_definitions(-Dfopen=Deprecated_fopen)
	add_definitions(-DCreateProcessA=Deprecated_CreateProcessA)
	add_definitions(-DLoadLibraryA=Deprecated_LoadLibraryA)
	add_definitions(-DCreateDirectoryA=Deprecated_CreateDirectoryA)
	add_definitions(-DCreateDirectoryExA=Deprecated_CreateDirectoryExA)
	add_definitions(-DRemoveDirectoryA=Deprecated_RemoveDirectoryA)
	add_definitions(-DCreateFileA=Deprecated_CreateFileA)
	add_definitions(-DDeleteFileA=Deprecated_DeleteFileA)
	add_definitions(-DFindFirstFileA=Deprecated_FindFirstFileA)
	add_definitions(-DFindNextFileA=Deprecated_FindNextFileA)
	add_definitions(-DGetFileAttributesA=Deprecated_GetFileAttributesA)
	add_definitions(-DGetFileAttributesExA=Deprecated_GetFileAttributesExA)
	add_definitions(-DGetFileSizeA=Deprecated_GetFileSizeA)
	add_definitions(-DGetFullPathNameA=Deprecated_GetFullPathNameA)
	add_definitions(-DGetTempFileNameA=Deprecated_GetTempFileNameA)
	add_definitions(-DGetTempFileNameA=Deprecated_GetTempFileNameA)
	add_definitions(-DSetFileAttributesA=Deprecated_SetFileAttributesA)
	add_definitions(-DSetFileAttributesExA=Deprecated_SetFileAttributesExA)
	add_definitions(-DMoveFileA=Deprecated_MoveFileA)
	add_definitions(-DCopyFileA=Deprecated_CopyFileA)
	add_definitions(-DSHCreateDirectoryExA=Deprecated_SHCreateDirectoryExA)
	add_definitions(-DGetModuleFileNameA=Deprecated_GetModuleFileNameA)
	add_definitions(-DGetCommandLineA=Deprecated_GetCommandLineA)
	add_definitions(-DGetTempPathA=Deprecated_GetTempPathA)
	add_definitions(-DFindFirstChangeNotificationA=Deprecated_FindFirstChangeNotificationA)
	add_definitions(-DFindFirstFileExA=Deprecated_FindFirstFileExA)
	add_definitions(-DGetCompressedFileSizeA=Deprecated_GetCompressedFileSizeA)
	add_definitions(-DGetDiskFreeSpaceA=Deprecated_GetDiskFreeSpaceAv)
	add_definitions(-DGetDiskFreeSpaceExA=Deprecated_GetDiskFreeSpaceExA)
	add_definitions(-DGetDiskSpaceInformationA=Deprecated_GetDiskSpaceInformationA)
	add_definitions(-DGetDriveTypeA=Deprecated_GetDriveTypeA)
	add_definitions(-DGetFinalPathNameByHandleA=Deprecated_GetFinalPathNameByHandleA)
	add_definitions(-DGetLongPathNameA=Deprecated_GetLongPathNameA)
	add_definitions(-DGetTempPath2A=Deprecated_GetTempPath2A)
	add_definitions(-DGetVolumeInformationA=Deprecated_GetVolumeInformationA)
	add_definitions(-DPathFindFileNameA=Deprecated_PathFindFileNameA)
	add_definitions(-DPathFindExtensionA=Deprecated_PathFindExtensionA)
else()
	message("not Windows system, ignore disabled API")
endif()
endmacro()

macro(RemoveDisabledWinAPI)
if(WIN32)
	remove_definitions(-Dsprintf_s=Deprecated_sprintf_s_use_vsnprintf_s)
	remove_definitions(-D_splitpath=Deprecated__splitpath)
	remove_definitions(-D_splitpath_s=Deprecated__splitpath_s)
	remove_definitions(-Dfopen_s=Deprecated_fopen_s)
	remove_definitions(-Dfopen=Deprecated_fopen)
	remove_definitions(-DCreateProcessA=Deprecated_CreateProcessA)
	remove_definitions(-DLoadLibraryA=Deprecated_LoadLibraryA)
	remove_definitions(-DCreateDirectoryA=Deprecated_CreateDirectoryA)
	remove_definitions(-DCreateDirectoryExA=Deprecated_CreateDirectoryExA)
	remove_definitions(-DRemoveDirectoryA=Deprecated_RemoveDirectoryA)
	remove_definitions(-DCreateFileA=Deprecated_CreateFileA)
	remove_definitions(-DDeleteFileA=Deprecated_DeleteFileA)
	remove_definitions(-DFindFirstFileA=Deprecated_FindFirstFileA)
	remove_definitions(-DFindNextFileA=Deprecated_FindNextFileA)
	remove_definitions(-DGetFileAttributesA=Deprecated_GetFileAttributesA)
	remove_definitions(-DGetFileAttributesExA=Deprecated_GetFileAttributesExA)
	remove_definitions(-DGetFileSizeA=Deprecated_GetFileSizeA)
	remove_definitions(-DGetFullPathNameA=Deprecated_GetFullPathNameA)
	remove_definitions(-DGetTempFileNameA=Deprecated_GetTempFileNameA)
	remove_definitions(-DGetTempFileNameA=Deprecated_GetTempFileNameA)
	remove_definitions(-DSetFileAttributesA=Deprecated_SetFileAttributesA)
	remove_definitions(-DSetFileAttributesExA=Deprecated_SetFileAttributesExA)
	remove_definitions(-DMoveFileA=Deprecated_MoveFileA)
	remove_definitions(-DCopyFileA=Deprecated_CopyFileA)
	remove_definitions(-DSHCreateDirectoryExA=Deprecated_SHCreateDirectoryExA)
	remove_definitions(-DGetModuleFileNameA=Deprecated_GetModuleFileNameA)
	remove_definitions(-DGetCommandLineA=Deprecated_GetCommandLineA)
	remove_definitions(-DGetTempPathA=Deprecated_GetTempPathA)
	remove_definitions(-DFindFirstChangeNotificationA=Deprecated_FindFirstChangeNotificationA)
	remove_definitions(-DFindFirstFileExA=Deprecated_FindFirstFileExA)
	remove_definitions(-DGetCompressedFileSizeA=Deprecated_GetCompressedFileSizeA)
	remove_definitions(-DGetDiskFreeSpaceA=Deprecated_GetDiskFreeSpaceAv)
	remove_definitions(-DGetDiskFreeSpaceExA=Deprecated_GetDiskFreeSpaceExA)
	remove_definitions(-DGetDiskSpaceInformationA=Deprecated_GetDiskSpaceInformationA)
	remove_definitions(-DGetDriveTypeA=Deprecated_GetDriveTypeA)
	remove_definitions(-DGetFinalPathNameByHandleA=Deprecated_GetFinalPathNameByHandleA)
	remove_definitions(-DGetLongPathNameA=Deprecated_GetLongPathNameA)
	remove_definitions(-DGetTempPath2A=Deprecated_GetTempPath2A)
	remove_definitions(-DGetVolumeInformationA=Deprecated_GetVolumeInformationA)
	remove_definitions(-DPathFindFileNameA=Deprecated_PathFindFileNameA)
	remove_definitions(-DPathFindExtensionA=Deprecated_PathFindExtensionA)
else()
	message("not Windows system, ignore disabled API")
endif()
endmacro()
