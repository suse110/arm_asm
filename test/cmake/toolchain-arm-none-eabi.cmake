# ARM Cross-Compilation Toolchain for Test Projects
# This file MUST be passed via -DCMAKE_TOOLCHAIN_FILE=... at configure time
# BEFORE project() is called

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)

# Toolchain path - check multiple possible locations
set(TOOLCHAIN_DIR "${CMAKE_SOURCE_DIR}/../tools/toolchain/xpack/xpack-arm-none-eabi-gcc-10.2.1-1.1-win32-x64/bin")

# Set compilers explicitly
set(CMAKE_C_COMPILER "${TOOLCHAIN_DIR}/arm-none-eabi-gcc.exe")
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_DIR}/arm-none-eabi-gcc.exe")
set(CMAKE_AR "${TOOLCHAIN_DIR}/arm-none-eabi-ar.exe")
set(CMAKE_RANLIB "${TOOLCHAIN_DIR}/arm-none-eabi-ranlib.exe")
set(CMAKE_OBJCOPY "${TOOLCHAIN_DIR}/arm-none-eabi-objcopy.exe")
set(CMAKE_OBJDUMP "${TOOLCHAIN_DIR}/arm-none-eabi-objdump.exe")
set(CMAKE_SIZE "${TOOLCHAIN_DIR}/arm-none-eabi-size.exe")

# Set these so CMake doesn't try to run the compiler
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

message(STATUS "Using ARM toolchain: ${CMAKE_C_COMPILER}")

# Search paths
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
