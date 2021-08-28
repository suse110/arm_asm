
@REM set ROOT_DIR=%CD%
echo opeocd_rwwwwoot=%OPENOCD_ROOT%

%OPENOCD_ROOT%\openocd.exe -f .\config\dbg_cfg.cfg

@REM exit
