# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/leaf
    REF boost-1.75.0
    SHA512 9570e3c7964e7e3999fe469a1ca71edec7bd5435865ca0230b232b94ba84bcc1d218773262855868b379483a902bf9bdda50ddcceec7c5d282be208a39c5f6d6
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
