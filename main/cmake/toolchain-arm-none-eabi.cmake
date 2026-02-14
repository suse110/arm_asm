# ARM Cross-Compilation Toolchain for STM32
# This file MUST be passed via -DCMAKE_TOOLCHAIN_FILE=... at configure time
# BEFORE project() is called
#
# Optimized for speed - disables compiler detection to reduce configure time

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR ARM)

# Toolchain path
set(TOOLCHAIN_DIR "${CMAKE_SOURCE_DIR}/../tools/toolchain/xpack/xpack-arm-none-eabi-gcc-10.2.1-1.1-win32-x64/bin")

# Set compilers explicitly - this prevents CMake from searching
set(CMAKE_C_COMPILER "${TOOLCHAIN_DIR}/arm-none-eabi-gcc.exe" CACHE FILEPATH "C compiler" FORCE)
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_DIR}/arm-none-eabi-gcc.exe" CACHE FILEPATH "ASM compiler" FORCE)
set(CMAKE_AR "${TOOLCHAIN_DIR}/arm-none-eabi-ar.exe" CACHE FILEPATH "Archiver" FORCE)
set(CMAKE_RANLIB "${TOOLCHAIN_DIR}/arm-none-eabi-ranlib.exe" CACHE FILEPATH "Ranlib" FORCE)
set(CMAKE_OBJCOPY "${TOOLCHAIN_DIR}/arm-none-eabi-objcopy.exe" CACHE FILEPATH "Objcopy" FORCE)
set(CMAKE_OBJDUMP "${TOOLCHAIN_DIR}/arm-none-eabi-objdump.exe" CACHE FILEPATH "Objdump" FORCE)
set(CMAKE_SIZE "${TOOLCHAIN_DIR}/arm-none-eabi-size.exe" CACHE FILEPATH "Size" FORCE)
set(CMAKE_GDB "${TOOLCHAIN_DIR}/arm-none-eabi-gdb.exe" CACHE FILEPATH "GDB" FORCE)

# Skip compiler detection entirely - set manually to save time
set(CMAKE_C_COMPILER_ID "GNU" CACHE STRING "Compiler ID" FORCE)
set(CMAKE_C_COMPILER_VERSION "10.2.1" CACHE STRING "Compiler version" FORCE)
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT 11 CACHE INTERNAL "")
set(CMAKE_C_COMPILE_FEATURES "c_std_99;c_std_11" CACHE INTERNAL "")

# Disable compiler tests completely
set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
set(CMAKE_ASM_COMPILER_FORCED TRUE)
set(CMAKE_C_COMPILER_WORKS 1 CACHE INTERNAL "")
set(CMAKE_ASM_COMPILER_WORKS 1 CACHE INTERNAL "")

# Don't run try_compile tests
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# Search paths
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

message(STATUS "Using ARM toolchain: ${CMAKE_C_COMPILER}")
