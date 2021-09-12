
@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

%OPENOCD_ROOT%\openocd.exe -f .\config\dbg_cfg.cfg

@REM exit
