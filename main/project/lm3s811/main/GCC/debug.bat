@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%
cd ..
@REM 获取当前目录名
pushd %1 & for %%i in (.) do set PROJ_NAME=%%~ni
cd %CUR_DIR%

set ELFFILE=%ROOT_DIR%\main\build\lm3s811\%PROJ_NAME%\%PROJ_NAME%.elf
tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "start qemu-system-arm"
    start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel %ELFFILE% -s -S
    pause
) else (
@echo "qemu-system-arm already run"
)

tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "qemu-system-arm start fail"
) else (
    arm-none-eabi-gdb %ELFFILE% -q -x gdbinit
)

