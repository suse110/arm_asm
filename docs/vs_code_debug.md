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

#### 明明有源文件，为什么总是跳转到汇编视图？
* 程序中没有调试信息或者GDB通过调试信息找不到源码
* 在调试控制台输入list，查看源码路径，这个路径可能是相对路径根据源码路径
  ```
  ../../../../project/stm32l5xx/main/GCC/startup_stm32l552zetxq.s: No such file or directory.
  ```
* 根据list的源码路径在vscode的launch.json添加源码搜索路径
  ```
    "preLaunchCommands": [
        "dir D:/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/project/stm32l5xx/main/GCC"
    ]
  ```