set CUR_DIR=%CD%
cd ..\..\..\..\..
call setenv.bat
cd %CUR_DIR%

openocd -f ./config/program.cfg