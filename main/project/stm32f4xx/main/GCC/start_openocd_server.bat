@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

%OPENOCD_ROOT%\openocd.exe -c "tcl_port disabled" -c "gdb_port 3333" -c "telnet_port 4444"  -f .\config\dbg_cfg.cfg
@REM echo %OPENOCD_ROOT%\openocd.exe -f .\config\dbg_cfg.cfg
@REM exit
