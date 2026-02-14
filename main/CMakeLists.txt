# Main project CMakeLists.txt for ARM Embedded OS
#
# WINDOWS USERS - IMPORTANT:
#   Use Ninja generator for MUCH faster builds (10x faster than Make on Windows)
#
#   mkdir build && cd build
#   cmake -G "Ninja" -DCMAKE_MAKE_PROGRAM="../../tools/ninja/ninja.exe" ..
#   cmake --build .
#
# Or with Make (slower on Windows CMD):
#   cmake -G "Unix Makefiles" -DCMAKE_MAKE_PROGRAM="../../tools/toolchain/xpack/xpack-windows-build-tools-4.2.1-2-win32-x64/xpack-windows-build-tools-4.2.1-2/bin/make.exe" ..
#   cmake --build . -j8

cmake_minimum_required(VERSION 3.16)

# IMPORTANT: Toolchain must be set BEFORE project() for cross-compilation
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/toolchain-arm-none-eabi.cmake)

# Performance optimization: skip compiler detection
set(CMAKE_C_COMPILER_FORCED ON)
set(CMAKE_ASM_COMPILER_FORCED ON)
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_ASM_COMPILER_WORKS 1)

# Project - enable both C and ASM languages
project(arm_asm C ASM)

# Set C standard
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Build type" FORCE)
endif()

# Output directories
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)

message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Toolchain: ${CMAKE_C_COMPILER}")

# Build all projects
add_subdirectory(project/stm32f4xx/main)
add_subdirectory(project/stm32f4xx/FreeRTOS_demo)
add_subdirectory(project/stm32f4xx/NetduinoPlus2)
add_subdirectory(project/stm32l5xx/main)

# Print build summary
message(STATUS "========================================")
message(STATUS "ARM ASM Build System")
message(STATUS "========================================")
