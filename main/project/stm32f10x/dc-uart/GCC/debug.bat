@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

echo opeocd_root=%OPENOCD_ROOT%
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
    arm-none-eabi-gdb %ROOT_DIR%\main\build\stm32f10x\dc-uart\dc-uart.elf -q -x gdbinit
)

