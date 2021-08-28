start start_openocd_server.bat
arm-none-eabi-gdb ./build/bin/main.elf -q -x gdbinit 
