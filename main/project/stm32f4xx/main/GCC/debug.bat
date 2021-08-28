@echo off
SET HOME=%USERPROFILE%

set PWD_BKP=%CD%
cd ..
@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
@REM set QEMU_ROOT=D:\workspace\tools\qemu
@REM set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\
set ROOT_DIR=J:\document\doc\src\os\toyos\src\gnu\arm_asm
set QEMU_ROOT=%ROOT_DIR%\tools\qemu\win\w64-20210810
set OPENOCD_ROOT=%ROOT_DIR%\tools\openocd\OpenOCD-20210519-0.11.0\bin
set GDB_ROOT=%ROOT_DIR%\tools\arm-none-eabi\Sourcery_CodeBench_Lite_for_ARM_EABI\bin
set PATH=%PATH%;%QEMU_ROOT%;%GDB_ROOT%;%OPENOCD_ROOT%
cd %PWD_BKP%
tasklist | findstr /i openocd.exe > NUL
if ErrorLevel == 1 (
    @echo "start openocd"
    start start_openocd_server.bat
    sleep 0.5
) else (
@echo "openocd already run"
)

tasklist | findstr /i openocd.exe > NUL
if ErrorLevel == 1 (
    @echo "openocd start fail"
) else (
    arm-none-eabi-gdb %ROOT_DIR%\main\build\stm32f4xx\main.elf -q -x gdbinit
)

