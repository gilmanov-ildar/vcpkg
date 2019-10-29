include(${CURRENT_INSTALLED_DIR}/share/qt5/qt_port_functions.cmake)

list(APPEND CORE_OPTIONS
    -webengine-proprietary-codecs)

vcpkg_find_acquire_program(FLEX)
get_filename_component(FLEX_EXE_PATH ${FLEX} DIRECTORY)
get_filename_component(FLEX_DIR ${FLEX_EXE_PATH} NAME)
file(COPY ${FLEX_EXE_PATH} DESTINATION "${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-tools" )
set(FLEX_TEMP "${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-tools/${FLEX_DIR}")
file(RENAME "${FLEX_TEMP}/win_bison.exe" "${FLEX_TEMP}/bison.exe")
file(RENAME "${FLEX_TEMP}/win_flex.exe" "${FLEX_TEMP}/flex.exe")
vcpkg_add_to_path("${FLEX_TEMP}")

vcpkg_find_acquire_program(GPERF)
get_filename_component(GPERF_EXE_PATH ${GPERF} DIRECTORY)
vcpkg_add_to_path("${GPERF_EXE_PATH}")

qt_submodule_installation(BUILD_OPTIONS ${CORE_OPTIONS})
