[蓝牙 - 如何在Windows下抓取蓝牙数据](https://blog.csdn.net/guoqx/article/details/129174436)

首先，要在Windows上安装一个工具：Bluetooth Virtual Sniffer (btvs.exe)。

[Microsoft Bluetooth Test Platform - BTVS - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/bluetooth/testing-btp-tools-btvs)

这是个嗅探蓝牙数据的工具，集成在Bluetooth Test Platform(BTP)里面，所以要先安装这个蓝牙测试平台。

下载路径：

访问：[Get the Microsoft Bluetooth Test Platform software package - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/bluetooth/testing-btp-setup-package?source=recommendations)

点击下载：https://download.microsoft.com/download/e/e/e/eeed3cd5-bdbd-47db-9b8e-ca9d2df2cd29/BluetoothTestPlatformPack-1.14.0.msi

在安装完以后，找到btvs.exe文件，位于路径：C:\BTP\v1.14.0\x86下，这个视安装版本不同路径名不同。

安装BTP成功。

下一步安装WireShark，访问连接：[Wireshark · Go Deep](https://www.wireshark.org/)

点击下载：[Wireshark · Download](https://www.wireshark.org/download.html)

选择Windows Instarller(64-bit)，最好不要选择PortableApps版，因为后面需要通过btvs.exe来启动Wireshark，如果是绿色可移植版，会启动失败。

下载完成后，安装Wireshark。

准备工作OK。

打开Command Prompt工具，即Windows下的命令行，也就是运行了%windir%\system32\cmd.exe。

在命令行终端里，运行btvs.exe程序。

c:\BTP\v1.14.0\x86>btvs.exe -Mode Wireshark

然后就会启动Wireshark，开始抓取蓝牙数据。要抓取成功，要打开电脑的蓝牙功能，才会有数据出现。


btvs.exe命令介绍

Bluetooth Virtual Sniffer工具搭配其他软件，用来查看实时的HCI操作记录。可以搭配的软件是Frontline Protocol Analysis System，Ellisys Blutooth Analyzer或Wireshark。推荐使用Wireshark，这个是开源免费的，用的人也挺多。

命令行选项

btvs.exe [-Address 127.0.0.1] [-Mode Frontline|Ellisys|Wireshark]  [-Port 24352] [-Remote off|on] [-Service 1|2|3]

    Address     (Ellisys mode only) Specifies the IP address of the machine

                    running Ellisys Bluetooth Analyzer. (Default: 127.0.0.1)

    Mode        Optionally specify whether btvs.exe should generate traces

                    for Frontline, Ellisys, or Wireshark.

    Port        (Ellisys or Wireshark only) Specifies the UDP listen port of the

                    Ellisys Bluetooth Analyzer injection API\Specifies the TCP port

                    for Wireshark. (Default: 24352)

    Remote      (Wireshark only) Specifies whether Wireshark will be on the same machine

                    or run remotely. Off will try to start Wireshark on the same machine. (Default: off)

    Service     (Ellisys mode only) Specifies the HCI Injection Service.

                    1: Primary. 2: Secondary. 3: Tertiary. (Default: 1)

使用方式是打开命令提示行，或Powershell控制台，在BTP安装文件夹里找到并运行btvs应用程序。

操作界面

蓝牙虚拟嗅探器窗口上有两个按钮：

- 完整的数据包记录 / Full Packet Logging

按下这个按钮，HCI log中本来会被丢弃的数据也会被收集。比如，大型ACL数据包，敏感数据包括加密密钥和HID reports。

导致在HCI日志中收集通常会被放弃的数据。例如，大型ACL数据包，敏感数据包括加密密钥和HID报告。

- 设置或扩展调试模式 / Set or Extend Debug Mode

在一定时间内，启用SSP调试模式。发送和接受SMP调试密钥。再次点击可以延长时间。

使用方式 - Wireshark

1，同一机器上，Wireshark安装后，会自动直接启动，如上面使用方式一样。

btvs.exe -Mode Wireshark

2，如果启动失败，也可以手动启动Wireshark，提供一个默认的TCP pipe作为interface：

wireshark -k -i TCP@127.0.0.1:24352

3，不在同一台机器上。

在第一台机器上启动btvs.exe，第二台机器上手动启动wireshark，并将第一台机器的IP地址作为参数。

btvs.exe -Mode Wireshark -Remote on

wireshark -k -i TCP@<ip address>:<port>

注：默认的port是24352

使用方式 - Ellisys Bluetooth Analyzer + Frontline Protocol Analysis System

如果安装这两款软件，也可以配合使用来完成蓝牙数据抓包。这两款软件是业界比较有名的公司的产品。

一般是配套相关的硬件一起使用，也就是需要购买他们家的硬件，很贵。

具体使用请看参考链接。

参考：

[Microsoft Bluetooth Test Platform - BTVS - Windows drivers | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/drivers/bluetooth/testing-btp-tools-btvs)