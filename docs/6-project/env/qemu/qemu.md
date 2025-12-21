Virtual time is related to instruction counter only when QEMU runs with -icount option. In that case it does not match real time and its advancement speed depends on how fast host CPU runs guest instructions.

When -icount is not specified virtual time ticks synchronously with real time. If you try to measure guest instructions timing from inside the guest the result may be unrealistic.

[How to install the xPack QEMU Arm binaries](https://xpack.github.io/qemu-arm/install/)
(https://gnu-mcu-eclipse.github.io/qemu/)

```
Supported boards:
  BluePill             BluePill STM32F103C8T6
  Maple                LeafLab Arduino-style STM32 microcontroller board (r5)
  NUCLEO-F072RB        ST Nucleo Development Board for STM32 F072 devices
  NUCLEO-F103RB        ST Nucleo Development Board for STM32 F1 series
  NUCLEO-F411RE        ST Nucleo Development Board for STM32 F4 series
  NetduinoGo           Netduino GoBus Development Board with STM32F4
  NetduinoPlus2        Netduino Development Board with STM32F4
  OLIMEXINO-STM32      Olimex Maple (Arduino-like) Development Board
  STM32-E407           Olimex Development Board for STM32F407ZGT6
  STM32-H103           Olimex Header Board for STM32F103RBT6
  STM32-P103           Olimex Prototype Board for STM32F103RBT6
  STM32-P107           Olimex Prototype Board for STM32F107VCT6
  STM32F0-Discovery    ST Discovery kit for STM32F051 line
  STM32F051-Discovery  ST Discovery kit for STM32F051 line
  STM32F4-Discovery    ST Discovery kit for STM32F407/417 lines
  STM32F429I-Discovery ST Discovery kit for STM32F429/439 lines
  generic              Generic Cortex-M board; use -mcu to define the device
```

https://xpack.github.io/qemu-arm/options/
A typical emulation session started outside Eclipse looks like this:

$ qemu-system-gnuarmeclipse --verbose --verbose --board STM32F4-Discovery \
--mcu STM32F407VG -d unimp,guest_errors \
--nographic --image test.elf \
--semihosting-config enable=on,target=native \
--semihosting-cmdline test 1 2 3

[Computer Architecture-simulator](http://pages.cs.wisc.edu/~arch/www/tools.html)
gem5 :The gem5 simulator is a modular platform for computer-system architecture research, encompassing system-level architecture as well as processor microarchitecture