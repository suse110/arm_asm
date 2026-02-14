@echo off
chcp 437 >nul
setlocal enabledelayedexpansion

REM ARM ASM Build Script for Windows
REM Usage: build.bat [build|clean|rebuild]

set ACTION=%1
if "%ACTION%"=="" set ACTION=build

set PROJECT_DIR=%~dp0main
set BUILD_DIR=%PROJECT_DIR%\build
set LOG_FILE=%BUILD_DIR%\build.log

REM Tool paths
set MAKE_PATH=%~dp0tools\toolchain\xpack\xpack-windows-build-tools-4.2.1-2-win32-x64\xpack-windows-build-tools-4.2.1-2\bin\make.exe
set CMAKE_PATH=cmake

echo ============================================
echo ARM ASM Build System
echo ============================================
echo Project: %PROJECT_DIR%
echo Build:   %BUILD_DIR%
echo Action:  %ACTION%
echo Log:     %LOG_FILE%
echo ============================================
echo.

if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"

if "%ACTION%"=="clean" goto :clean
if "%ACTION%"=="rebuild" goto :rebuild
if "%ACTION%"=="build" goto :build

echo Unknown action: %ACTION%
echo Usage: build.bat [build^|clean^|rebuild]
exit /b 1

:clean
echo [CLEAN] Cleaning build directory...
cd /d "%BUILD_DIR%"
if exist "CMakeCache.txt" (
    %CMAKE_PATH% --build . --target clean 2>&1
)
if exist "*.elf" del /q *.elf 2>nul
if exist "*.bin" del /q *.bin 2>nul
if exist "*.hex" del /q *.hex 2>nul
echo [CLEAN] Done.
goto :eof

:rebuild
call :clean

:build
echo [BUILD] Starting build process...
echo [BUILD] Log file: %LOG_FILE%
echo.

REM Run CMake configuration if needed
cd /d "%BUILD_DIR%"
if not exist "CMakeCache.txt" (
    echo [CMAKE] Configuring project...
    echo [%date% %time%] CMake Configuration >> "%LOG_FILE%"
    %CMAKE_PATH% -G "Unix Makefiles" -DCMAKE_MAKE_PROGRAM="%MAKE_PATH%" .. >> "%LOG_FILE%" 2>&1
    if errorlevel 1 (
        echo [ERROR] CMake configuration failed!
        echo [ERROR] See log: %LOG_FILE%
        exit /b 1
    )
    echo [CMAKE] Configuration complete.
    echo.
)

REM Run build
echo [MAKE] Building project...
echo [%date% %time%] Build Started >> "%LOG_FILE%"
echo ============================================ >> "%LOG_FILE%"

%CMAKE_PATH% --build . -j8 2>&1 | tee -a "%LOG_FILE%"

if errorlevel 1 (
    echo.
    echo ============================================
    echo [ERROR] BUILD FAILED!
    echo [ERROR] See log: %LOG_FILE%
    echo ============================================
    exit /b 1
)

echo.
echo ============================================
echo [SUCCESS] BUILD COMPLETE!
echo ============================================
echo.
echo Output files:
if exist "%BUILD_DIR%\project\stm32f4xx\main\stm32f4xx_main.elf" (
    dir "%BUILD_DIR%\project\stm32f4xx\main\stm32f4xx_main.elf" | findstr "stm32f4xx_main"
)
echo.
echo Log file: %LOG_FILE%

goto :eof
