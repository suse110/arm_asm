start qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel ./build/main.elf -s -S
sleep 1
arm-none-eabi-gdb ./build/main.elf -q -x ../gdbinit