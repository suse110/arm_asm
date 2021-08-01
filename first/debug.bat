SET HOME=%USERPROFILE%

set PWD_BKP=%CD%
cd ..
@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
@REM set QEMU_ROOT=D:\workspace\tools\qemu
@REM set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\

set QEMU_ROOT=%CD%\tools\qemu\win\w64-202107062
set GDB_ROOT=%CD%\tools\arm-none-eabi\Sourcery_CodeBench_Lite_for_ARM_EABI\bin
cd %PWD_BKP%

start %QEMU_ROOT%\qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel .\build\test.elf -s -S
pause
%GDB_ROOT%\arm-none-eabi-gdb .\build\test.elf -q -x ..\gdbinit
