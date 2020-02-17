include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ViGEm/ViGEmClient
    REF v1.16.98.0
    SHA512 dfb7a846687437665d18af3f23da6bf6a07fbbbb46685da19d17b7d9e40d723a8bd8f2491c1a85a20997b5cbb3b4f41876f8e7d1f8b45dfdba12acd38dcd5e04
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
