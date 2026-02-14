# Test projects CMakeLists.txt
# Simple ARM assembly and C test projects for QEMU
#
# WINDOWS USERS - IMPORTANT:
#   Use Ninja generator for MUCH faster builds (10x faster than Make on Windows)
#
#   mkdir build && cd build
#   cmake -G "Ninja" -DCMAKE_MAKE_PROGRAM="..\..\tools\ninja\ninja.exe" ..
#   cmake --build .
#
# Or with Make (slower on Windows CMD):
#   cmake -G "Unix Makefiles" -DCMAKE_MAKE_PROGRAM="../../tools/toolchain/xpack/xpack-windows-build-tools-4.2.1-2-win32-x64/xpack-windows-build-tools-4.2.1-2/bin/make.exe" ..
#   cmake --build . -j8

cmake_minimum_required(VERSION 3.16)

# Performance optimization: skip compiler detection
set(CMAKE_C_COMPILER_FORCED ON)
set(CMAKE_ASM_COMPILER_FORCED ON)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_ASM_COMPILER_WORKS 1)

# Must set toolchain BEFORE project()
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/toolchain-arm-none-eabi.cmake)

# Use project() with minimal checks
project(test_projects C ASM)

# Disable unnecessary CMake checks
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_ASM_FLAGS "")

# Find all test subdirectories
set(TEST_PROJECTS
    template
    arithmetic
    branch
    mov
    cm4
    it
    stm
    cm33
)

# Build all test projects
foreach(proj ${TEST_PROJECTS})
    if(EXISTS ${CMAKE_SOURCE_DIR}/${proj}/CMakeLists.txt)
        add_subdirectory(${proj})
    endif()
endforeach()

message(STATUS "========================================")
message(STATUS "Test Projects CMake Build System")
message(STATUS "========================================")
