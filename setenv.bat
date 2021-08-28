@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
@REM set QEMU_ROOT=D:\workspace\tools\qemu
@REM set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\

SET HOME=%USERPROFILE%

@set ROOT_DIR=%CD%
@set QEMU_ROOT=%ROOT_DIR%\tools\qemu\win\w64-202107062
@set GDB_ROOT=%ROOT_DIR%\tools\arm-none-eabi\Sourcery_CodeBench_Lite_for_ARM_EABI\bin
@set OPENOCD_ROOT=%ROOT_DIR%\tools\openocd\OpenOCD-20210519-0.11.0\bin
@set HEXDUMP_ROOT=%ROOT_DIR%\tools\hexdump
@set TOOL_ROOT=%ROOT_DIR%\tools\
@set PATH=%PATH%;%QEMU_ROOT%;%GDB_ROOT%;%OPENOCD_ROOT%;%HEXDUMP_ROOT%;%TOOL_ROOT%
