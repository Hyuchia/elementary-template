# Project name
project ({{app.bin_name}})

# The oldest stable cmake version we support
cmake_minimum_required (VERSION 2.8)

# tell cmake where its modules can be found in our project directory
list (APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

# where we install data directory (if we have any)
set (DATADIR "${CMAKE_INSTALL_PREFIX}/share")

# what to call that directory where we install data too
set (PKGDATADIR "${DATADIR}/{{app.bin_name}}")

set (EXEC_NAME "{{app.bin_name}}")
set (RELEASE_NAME "A hello world.")
set (VERSION "0.1.0")
set (VERSION_INFO "whats up world")

# we're about to use pkgconfig to make sure dependencies are installed so let's find pkgconfig first
find_package(PkgConfig)

# now let's actually check for the required dependencies
pkg_check_modules(DEPS REQUIRED gtk+-3.0)

add_definitions(${DEPS_CFLAGS})
link_libraries(${DEPS_LIBRARIES})
link_directories(${DEPS_LIBRARY_DIRS})

# make sure we have vala
find_package(Vala REQUIRED)
# make sure we use vala
include(ValaVersion)
# make sure it's the desired version of vala
ensure_vala_version("0.26" MINIMUM)

# Add the other directories CMakeLists files to this one
add_subdirectory (data)
add_subdirectory (po)
add_subdirectory (src)

