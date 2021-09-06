@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "start qemu-system-arm"
    start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel %ROOT_DIR%\main\build\lm3s811\main.elf -s -S
    sleep 0.5
) else (
@echo "qemu-system-arm already run"
)

tasklist | findstr /i qemu-system-arm.exe > NUL
if ErrorLevel == 1 (
    @echo "qemu-system-arm start fail"
) else (
    arm-none-eabi-gdb %ROOT_DIR%\main\build\lm3s811\main.elf -q -x gdbinit
)

