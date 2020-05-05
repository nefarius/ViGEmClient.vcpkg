include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ViGEm/ViGEmClient
    REF v1.16.107.0
    SHA512 8c858d4ff05cfca29a3598b18a8e816c81da5cb5d027aa9351c6981a358fb6514958ef8f827b5e747738f98b287103db75aa83428662a5fd3ccd8e52c44f8bd8
    HEAD_REF master
)

if (VCPKG_LIBRARY_LINKAGE STREQUAL dynamic)
    vcpkg_install_msbuild(
        SOURCE_PATH ${SOURCE_PATH}
        PROJECT_SUBPATH "src/ViGEmClient.vcxproj"
        INCLUDES_SUBPATH "include"
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
        RELEASE_CONFIGURATION Release_DLL
        DEBUG_CONFIGURATION Debug_DLL
        USE_VCPKG_INTEGRATION
        REMOVE_ROOT_INCLUDES)
elseif (VCPKG_LIBRARY_LINKAGE STREQUAL static)
    vcpkg_install_msbuild(
        SOURCE_PATH ${SOURCE_PATH}
        PROJECT_SUBPATH "src/ViGEmClient.vcxproj"
        INCLUDES_SUBPATH "include"
        PLATFORM ${VCPKG_TARGET_ARCHITECTURE}
        RELEASE_CONFIGURATION Release_LIB
        DEBUG_CONFIGURATION Debug_LIB
        USE_VCPKG_INTEGRATION
        REMOVE_ROOT_INCLUDES)
endif()

# Handle copyright
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/vigemclient RENAME copyright)
