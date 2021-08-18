start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel test.elf -s -S
sleep 1
arm-none-eabi-gdb test.elf -q -x ../gdbinit