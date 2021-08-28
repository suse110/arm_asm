start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel .\build\test.elf -s -S
sleep 1
arm-none-eabi-gdb .\build\test.elf -q -x ../gdbinit