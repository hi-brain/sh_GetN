#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "sh_GetN" for configuration "Debug"
set_property(TARGET sh_GetN APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(sh_GetN PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/components/lib/sh_GetN.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "RTC110d;coil110d;omniORB416_rtd;omniDynamic416_rtd;omnithread34_rtd;advapi32;ws2_32;mswsock;mclmcrrt.lib;shGetN.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/sh_GetN.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS sh_GetN )
list(APPEND _IMPORT_CHECK_FILES_FOR_sh_GetN "${_IMPORT_PREFIX}/components/lib/sh_GetN.lib" "${_IMPORT_PREFIX}/components/bin/sh_GetN.dll" )

# Import target "sh_GetNComp" for configuration "Debug"
set_property(TARGET sh_GetNComp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(sh_GetNComp PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/sh_GetNComp.exe"
  )

list(APPEND _IMPORT_CHECK_TARGETS sh_GetNComp )
list(APPEND _IMPORT_CHECK_FILES_FOR_sh_GetNComp "${_IMPORT_PREFIX}/components/bin/sh_GetNComp.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
