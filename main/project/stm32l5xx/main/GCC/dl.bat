@echo off

set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

%OPENOCD_ROOT%\openocd -f ./config/program.cfg