#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sh_GetN" for configuration "RelWithDebInfo"
set_property(TARGET sh_GetN APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(sh_GetN PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/components/lib/sh_GetN.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "RTC110;coil110;omniORB416_rt;omniDynamic416_rt;omnithread34_rt;advapi32;ws2_32;mswsock;mclmcrrt.lib;shGetN.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/components/bin/sh_GetN.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS sh_GetN )
list(APPEND _IMPORT_CHECK_FILES_FOR_sh_GetN "${_IMPORT_PREFIX}/components/lib/sh_GetN.lib" "${_IMPORT_PREFIX}/components/bin/sh_GetN.dll" )

# Import target "sh_GetNComp" for configuration "RelWithDebInfo"
set_property(TARGET sh_GetNComp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(sh_GetNComp PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/components/bin/sh_GetNComp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS sh_GetNComp )
list(APPEND _IMPORT_CHECK_FILES_FOR_sh_GetNComp "${_IMPORT_PREFIX}/components/bin/sh_GetNComp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
