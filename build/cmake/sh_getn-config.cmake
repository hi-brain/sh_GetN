# sh_GetN CMake config file
#
# This file sets the following variables:
# sh_GetN_FOUND - Always TRUE.
# sh_GetN_INCLUDE_DIRS - Directories containing the sh_GetN include files.
# sh_GetN_IDL_DIRS - Directories containing the sh_GetN IDL files.
# sh_GetN_LIBRARIES - Libraries needed to use sh_GetN.
# sh_GetN_DEFINITIONS - Compiler flags for sh_GetN.
# sh_GetN_VERSION - The version of sh_GetN found.
# sh_GetN_VERSION_MAJOR - The major version of sh_GetN found.
# sh_GetN_VERSION_MINOR - The minor version of sh_GetN found.
# sh_GetN_VERSION_REVISION - The revision version of sh_GetN found.
# sh_GetN_VERSION_CANDIDATE - The candidate version of sh_GetN found.

message(STATUS "Found sh_GetN-1.0.0")
set(sh_GetN_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(sh_GetN_INCLUDE_DIRS
#    "C:/Program Files/sh_GetN/include/sh_getn-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(sh_GetN_IDL_DIRS
#    "C:/Program Files/sh_GetN/include/sh_getn-1/idl")
set(sh_GetN_INCLUDE_DIRS
    "C:/Program Files/sh_GetN/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(sh_GetN_IDL_DIRS
    "C:/Program Files/sh_GetN/include//idl")


if(WIN32)
    set(sh_GetN_LIBRARIES
        "C:/Program Files/sh_GetN/components/lib/sh_getn.lib"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(sh_GetN_LIBRARIES
        "C:/Program Files/sh_GetN/components/lib/sh_getn.dll"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(sh_GetN_DEFINITIONS ${<dependency>_DEFINITIONS})

set(sh_GetN_VERSION 1.0.0)
set(sh_GetN_VERSION_MAJOR 1)
set(sh_GetN_VERSION_MINOR 0)
set(sh_GetN_VERSION_REVISION 0)
set(sh_GetN_VERSION_CANDIDATE )

