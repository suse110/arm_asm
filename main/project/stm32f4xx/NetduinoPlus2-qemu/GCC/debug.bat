@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%
cd ..
@REM 获取当前目录名
pushd %1 & for %%i in (.) do set PROJ_NAME=%%~ni
cd %CUR_DIR%
set QEMU4STM32_PATH=C:\Users\suse1\AppData\Roaming\xPacks\@xpack-dev-tools\qemu-arm\2.8.0-12.1\.content\bin
set ELFFILE=%ROOT_DIR%\main\build\stm32f4xx\%PROJ_NAME%\%PROJ_NAME%.elf
@echo %ELFFILE%
tasklist | findstr /i qemu-system-arm > NUL
if ErrorLevel == 1 (
    @echo "start qemu-system-arm"
    start qemu-system-arm -nographic -smp 1 -machine netduinoplus2 -kernel %ELFFILE% -s -S
    @REM start %QEMU4STM32_PATH%\qemu-system-gnuarmeclipse --gdb tcp::1234 --verbose --verbose --board NetduinoPlus2 -d unimp,guest_errors --nographic --image %ELFFILE% --semihosting-config enable=on,target=native --semihosting-cmdline test 1 2 3
    pause
) else (
@echo "qemu-system-arm already run"
)

tasklist | findstr /i qemu-system-arm > NUL
if ErrorLevel == 1 (
    @echo "qemu-system-arm start fail"
) else (
    arm-none-eabi-gdb %ELFFILE% -q -x gdbinit
)

