* 反汇编
-exec disassemble 
-exec disassemble /m main
-exec disassemble /m

* 显示寄存器
-exec info registers

* 打印某寄存器的值
-exec print $rip
-exec p /x $rip 输出16进制

* 执行下一行
-exec si

* arm-none-eabi-addr2line --pretty-print --functions--addresses 0x3c82 -e memfaultelf
8x08883c82: buggy_function at./third-party/memfault/memfault-platform_port.c: 386

* arm-none-eabi-nm --numeric-sort <elf>

* arm-none-eabi-gdb-py --eval-command="target remote locahost:3333" --ex="mon reset" --ex="load" --ex="mon reset" --se=main.elf

[Cortex-Debug for Visual Studio Code](https://lonesometraveler.github.io/2020/03/27/debug.html)
