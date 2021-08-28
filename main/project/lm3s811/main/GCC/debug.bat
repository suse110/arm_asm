@echo off
SET HOME=%USERPROFILE%

set PWD_BKP=%CD%
@REM cd ..
@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
@REM set QEMU_ROOT=D:\workspace\tools\qemu
@REM set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\
set ROOT_DIR= %CD%\..\..\..\..\..
set QEMU_ROOT=%ROOT_DIR%\tools\qemu\win\w64-202107062
set GDB_ROOT=%ROOT_DIR%\tools\arm-none-eabi\Sourcery_CodeBench_Lite_for_ARM_EABI\bin
set PATH=%PATH%;%QEMU_ROOT%;%GDB_ROOT%
@REM cd %PWD_BKP%
tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "start qemu-system-arm"
    start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel %ROOT_DIR%\main\build\lm3s811\test.elf -s -S
    sleep 0.5
) else (
@echo "qemu-system-arm already run"
)

tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "qemu-system-arm start fail"
) else (
    arm-none-eabi-gdb %ROOT_DIR%\main\build\lm3s811\test.elf -q -x gdbinit
)

