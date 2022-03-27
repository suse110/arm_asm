@REM @echo off

@REM set CUR_DIR=%CD%
@REM cd ..\..\..\..\..
@REM call setenv.bat
@REM cd %CUR_DIR%
@REM cd ..
@REM @REM 获取当前目录名
@REM pushd %1 & for %%i in (.) do set PROJ_NAME=%%~ni
@REM cd %CUR_DIR%
@REM set QEMU4STM32_PATH=C:\Users\suse1\AppData\Roaming\xPacks\@xpack-dev-tools\qemu-arm\2.8.0-12.1\.content\bin
@REM set ELFFILE=%ROOT_DIR%\main\build\stm32f4xx\%PROJ_NAME%\%PROJ_NAME%.elf
@REM tasklist | findstr /i qemu-system-arm > NUL
@REM if ErrorLevel == 1 (
@REM     @echo "start qemu-system-arm"
@REM     start qemu-system-arm -nographic -smp 1 -machine netduinoplus2 -kernel %ELFFILE% -s -S
@REM     @REM start %QEMU4STM32_PATH%\qemu-system-gnuarmeclipse --gdb tcp::1234 --verbose --verbose --board NetduinoPlus2 -d unimp,guest_errors --nographic --image %ELFFILE% --semihosting-config enable=on,target=native --semihosting-cmdline test 1 2 3
@REM     pause
@REM ) else (
@REM @echo "qemu-system-arm already run"
@REM )

@REM tasklist | findstr /i qemu-system-arm > NUL
@REM if ErrorLevel == 1 (
@REM     @echo "qemu-system-arm start fail"
@REM ) else (
@REM     arm-none-eabi-gdb %ELFFILE% -q -x gdbinit
@REM )

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
    arm-none-eabi-gdb %ROOT_DIR%\main\build\stm32f4xx\FreeRTOS_demo\FreeRTOS_demo.elf -q -x gdbinit
)

