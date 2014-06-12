# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_NSIS "ON")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "OFF")
SET(CPACK_BINARY_ZIP "OFF")
SET(CPACK_CMAKE_GENERATOR "Visual Studio 10 Win64")
SET(CPACK_COMPONENTS_ALL "component;documentation")
SET(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
SET(CPACK_COMPONENT_COMPONENT_DESCRIPTION "Component library and stand-alone executable")
SET(CPACK_COMPONENT_COMPONENT_DISPLAY_NAME "Applications")
SET(CPACK_COMPONENT_DOCUMENTATION_DEPENDS "component")
SET(CPACK_COMPONENT_DOCUMENTATION_DESCRIPTION "Component documentation")
SET(CPACK_COMPONENT_DOCUMENTATION_DISPLAY_NAME "Documentation")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "ZIP")
SET(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp$;\\.#;/#")
SET(CPACK_INSTALLED_DIRECTORIES "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN;/")
SET(CPACK_INSTALL_CMAKE_PROJECTS "")
SET(CPACK_INSTALL_PREFIX "C:/Program Files/sh_GetN")
SET(CPACK_MODULE_PATH "")
SET(CPACK_NSIS_DISPLAY_NAME "sh_GetN100")
SET(CPACK_NSIS_EXTRA_INSTALL_COMMANDS "  Rename "$INSTDIR\share\sh_getn-1\sh_getn-config.cmake" "$INSTDIR\sh_getn-config.cmake"
  Rename "$INSTDIR\share\sh_getn-1\sh_getn-config-version.cmake" "$INSTDIR\sh_getn-config-version.cmake"")
SET(CPACK_NSIS_EXTRA_UNINSTALL_COMMANDS "  Delete "$INSTDIR\sh_getn-config.cmake"
  Delete "$INSTDIR\sh_getn-config-version.cmake"")
SET(CPACK_NSIS_HELP_LINK "http://www.openrtm.org")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "C:\Program Files")
SET(CPACK_NSIS_MENU_LINKS "C:/Program Files/sh_GetN/share/doc/sh_getn-1/html/index.html;Component documentation")
SET(CPACK_NSIS_MODIFY_PATH "ON")
SET(CPACK_NSIS_MUI_ICON "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/cmake\rt_middleware_logo.ico")
SET(CPACK_NSIS_MUI_UNIICON "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/cmake\rt_middleware_logo.ico")
SET(CPACK_NSIS_PACKAGE_NAME "sh_GetN100")
SET(CPACK_NSIS_URL_INFO_ABOUT "http://www.openrtm.org")
SET(CPACK_OUTPUT_CONFIG_FILE "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/build/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files (x86)/CMake 2.8/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "ModuleDescription")
SET(CPACK_PACKAGE_EXECUTABLES "sh_getnComp;sh_getnComp")
SET(CPACK_PACKAGE_FILE_NAME "sh_GetN-1.0.0-Source")
SET(CPACK_PACKAGE_ICON "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/cmake\rt_middleware_logo.bmp")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "sh_GetN100")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "sh_GetN100")
SET(CPACK_PACKAGE_NAME "sh_GetN")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "VenderName")
SET(CPACK_PACKAGE_VERSION "1.0.0")
SET(CPACK_PACKAGE_VERSION_MAJOR "1")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "0")
SET(CPACK_PROJECT_CONFIG_FILE "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/build/cpack_options.cmake")
SET(CPACK_RESOURCE_FILE_LICENSE "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/cmake/License.rtf")
SET(CPACK_RESOURCE_FILE_README "C:/Program Files (x86)/CMake 2.8/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files (x86)/CMake 2.8/share/cmake-2.8/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "ZIP")
SET(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp$;\\.#;/#")
SET(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN;/")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/build/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_PACKAGE_FILE_NAME "sh_GetN-1.0.0-Source")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "ON")
SET(CPACK_STRIP_FILES "")
SET(CPACK_SYSTEM_NAME "win64")
SET(CPACK_TOPLEVEL_TAG "win64-Source")
SET(CPACK_WIX_LANG "ja-jp")
SET(CPACK_WIX_SIZEOF_VOID_P "8")
SET(CPACK_WIX_XSL "C:/Users/urabe/OpenRTM/workspace/comp1.1v64b/shmodels/sh_GetN/build/wix.xsl")
