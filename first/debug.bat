set QEMU_ROOT=D:\workspace\tools\qemu
SET HOME=%USERPROFILE%
@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\
set PATH=%PATH%;%QEMU_ROOT%;%GDB_ROOT%
cmd \k qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel ./build/test.elf -s -S
pause
arm-none-eabi-gdb ./build/test.elf -q -x ../gdbinit