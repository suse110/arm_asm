@echo off
REM Build script for ARM ASM project

cd /d "%~dp0\main"
if not exist "build" mkdir build
cd build

echo ============================================
echo ARM ASM Build System
echo ============================================

if not exist "CMakeCache.txt" (
    echo Configuring with CMake...
    cmake -G "Unix Makefiles" -DCMAKE_MAKE_PROGRAM="../../tools/toolchain/xpack/xpack-windows-build-tools-4.2.1-2-win32-x64/xpack-windows-build-tools-4.2.1-2/bin/make.exe" ..
    if errorlevel 1 (
        echo ERROR: CMake configuration failed!
        exit /b 1
    )
)

echo.
echo Building project...
cmake --build . -j8 2>&1

if errorlevel 1 (
    echo.
    echo ============================================
    echo BUILD FAILED!
    echo ============================================
    exit /b 1
) else (
    echo.
    echo ============================================
    echo BUILD SUCCESSFUL!
    echo ============================================
    echo.
    dir /b "project\stm32f4xx\main\*.elf" 2>nul
    dir /b "project\stm32f4xx\main\*.bin" 2>nul
)
