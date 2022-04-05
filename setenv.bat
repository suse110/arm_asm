@REM set GDB_ROOT=D:\workspace\tools\gcc-arm-none-eabi-10-2020-q4-major-win32\bin
@REM set QEMU_ROOT=D:\workspace\tools\qemu
@REM set GDB_ROOT=C:\Users\Ophelia\.vscode\extensions\metalcode-eu.windows-arm-none-eabi-0.1.6\bin\

@SET HOME=%USERPROFILE%

@REM PYTHONPATH 用于扩充Python查找模块文件的路径
@set PYTHONPATH=D:\Tools\install\Python\Python27\Lib
@set PYTHONHOME=D:\Tools\install\Python\Python27

@set ROOT_DIR=%CD%
@set QEMU_ROOT=%ROOT_DIR%\tools\qemu\win\w64-202107062
@REM @set ARM_NONE_EABI=%ROOT_DIR%\tools\arm-none-eabi\Sourcery_CodeBench_Lite_for_ARM_EABI\bin
@set ARM_NONE_EABI=%ROOT_DIR%\tools\xpack\xpack-arm-none-eabi-gcc-10.2.1-1.1-win32-x64\bin
@set ARM_LINUX_EABI=D:\Tools\install\linux-version\gcc\gcc-arm-10.3-2021.07-x86_64-arm-none-linux-gnueabihf\bin
@set OPENOCD_ROOT=%ROOT_DIR%\tools\openocd\OpenOCD-20210519-0.11.0\bin
@set HEXDUMP_ROOT=%ROOT_DIR%\tools\hexdump
@set TOOL_ROOT=%ROOT_DIR%\tools\
@set USR_PATH=D:\Tools\Git\bin;D:\Tools\msys64\usr\bin
@set PATH=%PYTHONPATH%;%PATH%;%QEMU_ROOT%;%ARM_NONE_EABI%;%ARM_LINUX_EABI%;%OPENOCD_ROOT%;%HEXDUMP_ROOT%;%TOOL_ROOT%;%USR_PATH%
