# Test projects CMakeLists.txt
# Simple ARM assembly and C test projects for QEMU

cmake_minimum_required(VERSION 3.16)

# Must set toolchain BEFORE project()
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/toolchain-arm-none-eabi.cmake)

project(test_projects C ASM)

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
