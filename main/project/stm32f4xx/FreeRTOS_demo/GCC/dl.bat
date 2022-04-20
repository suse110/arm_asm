@echo off
set CUR_DIR=%CD%
cd ..\..\..\..\..
if "%OPENOCD_ROOT%" == "" ( 
    call setenv.bat 
) 
cd %CUR_DIR%

@openocd -f ./config/program.cfg