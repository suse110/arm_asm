@echo off

set CUR_DIR=%CD%
cd ..\..
call setenv.bat
cd %CUR_DIR%

@REM 获取当前目录名
pushd %1 & for %%i in (.) do set CUR_DIR_NAME=%%~ni

set ELF_FILE=%ROOT_DIR%\test\%CUR_DIR_NAME%\build\test.elf 
tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "start qemu-system-arm"
    start qemu-system-arm -nographic -smp 1 -machine netduinoplus2 -kernel %ELF_FILE% -s -S
    sleep 0.5
) else (
@echo "qemu-system-arm already run"
)

tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "qemu-system-arm start fail"
) else (
    arm-none-eabi-gdb %ELF_FILE% -q -x ../gdbinit
)

