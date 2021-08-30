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


[Cortex-Debug for Visual Studio Code](https://lonesometraveler.github.io/2020/03/27/debug.html)
