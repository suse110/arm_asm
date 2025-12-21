[下载Openocd](https://gnutoolchains.com/arm-eabi/openocd/)
我下载的是openocd-20210519，解压后放在 OPENOCD_HOME=D:\Tools\OpenOCD\openocd-20210519\OpenOCD-20210519-0.11.0

stlink.cfg 位于 %OPENOCD_HOME%\share\openocd\scripts\interface
stm32f4x.cfg 位于 %OPENOCD_HOME%\share\openocd\scripts\target

* 在终端执行 openocd -f interface/stlink.cfg -f target/stm32f4x.cfg，指示灯会闪烁，看到如下信息，说明连接成功
```
Open On-Chip Debugger 0.11.0 (2021-05-19) [https://github.com/sysprogs/openocd]
Licensed under GNU GPL v2
libusb1 09e75e98b4d9ea7909e8837b7a3f00dda4589dc3
For bug reports, read
        http://openocd.org/doc/doxygen/bugs.html
Info : auto-selecting first available session transport "hla_swd". To override use 'transport select <transport>'.
Info : The selected transport took over low-level target control. The results might differ compared to plain JTAG/SWD
Info : Listening on port 6666 for tcl connections
Info : Listening on port 4444 for telnet connections
Info : clock speed 2000 kHz
Info : STLINK V2J33M25 (API v2) VID:PID 0483:3752
Info : Target voltage: 3.255010
Info : stm32f4x.cpu: hardware has 6 breakpoints, 4 watchpoints
Info : starting gdb server for stm32f4x.cpu on 3333
Info : Listening on port 3333 for gdb connections
```

* telnet 连接
`Listening on port 4444 for telnet connections`
成功连接后，openocd会监听本机(localhost)的4444端口,可以通过telnet 连接到openocd，windows 中我使用MobaXterm的telnet功能,在remote host中填入localhost,在port中填入4444,然后可以看到
```
Open On-Chip Debugger
>
```

* 烧写程序
在telnet终端中执行如下命令:
```
Open On-Chip Debugger
> **halt**
target halted due to debug-request, current mode: Handler HardFault
xPSR: 0x01000003 pc: 0xfffffffe msp: 0xffffffd8
> **flash write_image erase J:/document/doc/src/os/toyos/src/gnu/stm32f4-gcc/build/main.elf**
device id = 0x10006433
flash size = 512 kbytes
auto erase enabled
wrote 16384 bytes from file J:/document/doc/src/os/toyos/src/gnu/stm32f4-gcc/build/main.elf in 0.636421s (25.141 KiB/s)
```

* Cannot Load Flash Programming Algorithm ！错误
从笔记本连接usb到显示器扩展口，在从扩展口连接到开发板，这样的线路不稳定，直接连接到笔记本usb口后烧写正常
* Unable to match requested speed 2000 kHz, using 1800 kHz

* 命令说明，OpenOCD命令并不是固定不变的，不同版本对应命令可能有所不同，最好查看一下对应版本的手册
  halt 挂起STM32，相当于关机，不执行halt，无法把程序写入STM32的Flash
  flash write_image erase <elf_path>/main.elf 写入镜像，支持的类型有bin文件、hex文件、elf文件等
  erase：写入程序前先擦除Flash用到的扇区。如果要写入程序的所有扇区已经用“Flash erase_sector”命令擦除过，则可以去掉“erase”选项
  reset 复位
  flash banks 查看flash的bank序号,#0 表示bank序号是0。bank序号在某些指令上要用到
  flash erase_check <bank number> 查看Flash擦除状态
  flash erase_sector 0 61 63 命令后面的三个参数“0 61 63”，分别为bank序号，起始扇区，终止扇区
  adapter speed 1000  设置jtag速度


通过终端敲命令方式登陆telnet比较麻烦，可以直接将命令写入cfg文件中，openocd 命令行调用即可
```
source [find stlink.cfg]
source [find stm32f4x.cfg]

# default ports
telnet_port 4444
gdb_port 3333
tcl_port 6666

init
halt

#Poll the current target for its current state
#If that target is in debug mode, architecture specific information about the current state is printed.
poll

#Erase entire bank
#stm32f4x mass_erase 0

#Identify the flash, or validate the parameters of the configured flash
flash probe 0

flash write_image erase J:/document/doc/src/os/toyos/src/gnu/stm32f4-gcc/build/main.elf

# this equals to reset run, it means run after reset
reset 

#after reset init, immediately halt the target, and execute the reset-init script, a board-specific script might do things like setting up DRAM
#reset init

#Close the OpenOCD server, disconnecting all clients (GDB, telnet, other).
shutdown
```

* 在VSCode下创建task运行OpenOCD
  这样就不用打开终端输入命令连接板子了
  在VSCode界面下，单击“任务”，选择“配置任务”
  在task.json下 创建一个名为 "openocd" 的 task, 代码如下：
  ```
  {
      // See https://go.microsoft.com/fwlink/?LinkId=733558
      // for the documentation about the tasks.json format
      "version": "2.0.0",
      "tasks": [
          {
              "label": "openocd",
              "type": "shell",
              "command": "openocd -f interface/stlink.cfg -f target/stm32f4x.cfg",
          }
      ],
  }
  ```
  按F1 显示命令， 输入 “Tasks: Run Task”,然后回车，选择“openocd”，然后一路回车。即可让VSCode 创建一个task去 运行openocd连接ST-Link了