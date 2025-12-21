## wireshark 命令行

[Wireshark 用户使用手册 ———— 命令行控制 Wireshark](https://blog.csdn.net/qq_42957717/article/details/120399759)

[11.2. Start Wireshark from the command line](https://www.wireshark.org/docs/wsug_html_chunked/ChCustCommandLine.html)

[Pipes (wireshark.org)](https://wiki.wireshark.org/CaptureSetup/Pipes)

### 获取wireshark启动参数

> wmic process where caption="Wireshark.exe" get caption,commandline,ExecutablePath /val  ue

### 捕获pipe

Wireshark.exe -i \\\\.\pipe\wrsk_0_COM4_xxx -P persconf:"d:/wireshark_settings\" -k -w "e:/pcapng" -b filesize:20480

-i `<interface>`, --interface `<interface>`
                           name or idx of interface (def: first non-loopback)

-P `<key>`:`<path>`    persconf:path - personal configuration files
                           persdata:path - personal data files-p, --no-promiscuous-mode
                           don't capture in promiscuous mod

-k                       start capturing immediately (def: do nothing)

-w <outfile|->           set the output filename (or '-' for stdout)

-b `<ringbuffer opt.>` ..., --ring-buffer `<ringbuffer opt.>`
                           duration:NUM - switch to next file after NUM secs
                           filesize:NUM - switch to next file after NUM KB
                              files:NUM - ringbuffer: replace after NUM files
                            packets:NUM - switch to next file after NUM packets
                           interval:NUM - switch to next file when the time is
                                          an exact multiple of NUM secs

## 解析自定义协议参考内容

[Creating Your Own Custom Wireshark Dissector - CodeProject](https://www.codeproject.com/Articles/19426/Creating-Your-Own-Custom-Wireshark-Dissector)

[HowToDissectAnything (wireshark.org)](https://wiki.wireshark.org/HowToDissectAnything)

[IM通信协议逆向分析、Wireshark自定义数据包格式解析插件编程学习 - 郑瀚Andrew.Hann - 博客园 (cnblogs.com)](https://www.cnblogs.com/LittleHann/p/3751595.html)

## Wireshark Plugin

[Wireshark C 插件开发之插件框架 - 知乎 (zhihu.com)](https://zhuanlan.zhihu.com/p/362748246)

[手把手教你编译wireshark3.1的c语言插件（windows平台2019-3-20） - 简书 (jianshu.com)](https://www.jianshu.com/p/d4825e8db076)

[WireShark编译C语言.dll插件全程（详细） - Linksman - 博客园 (cnblogs.com)](https://www.cnblogs.com/linksman/p/15138514.html)

[Chapter 9. Packet Dissection (wireshark.org)](https://www.wireshark.org/docs/wsdg_html_chunked/ChapterDissection.html)

[9.2. Adding a basic dissector (wireshark.org)](https://www.wireshark.org/docs/wsdg_html_chunked/ChDissectAdd.html)

[2.2. Windows: Step-by-Step Guide (wireshark.org)](https://www.wireshark.org/docs/wsdg_html_chunked/ChSetupWindows.html)

[Wireshark Developer’s Guide](https://www.wireshark.org/docs/wsdg_html_chunked/)

[11.6. Functions For New Protocols And Dissectors (wireshark.org)](https://www.wireshark.org/docs/wsdg_html_chunked/lua_module_Proto.html)

https://github.com/ashdnazg/pyreshark

[Python](https://wiki.wireshark.org/Python) as a built-in scripting language was deprecated due to lack of developers able to support it

### Plugin Startup

* 将Lua文件保存到wireshark的根目录下
* wireshark在启动时会加载init.lua脚本， windows平台在wireshark安装目录下，linux在etc/wireshark下。在 wireshark 的根目录下找到 “init.lua” 文件，在这个文件的开头修改”enable_lua = true“
* 这个文件”init.lua“ 的最后将我们增加到wireshark根目录的Lua文件添加
  * dofile("DATA_DIR..my_plugin_test.lua")
  * dofile("d:/my_plugin_test.lua") 用绝对路径也可以
* 加载Lua脚本
  * 快捷键是 **Ctrl+Shift+L（“分析”菜单->"重新载入Lua插件"）** 。
  * 或者重启wireshark

### Plugin Debug

* 若脚本有语法错误，wireshark图形界面在加载时会弹出提示；若有运行时错误，会在图形化的协议树中显示；wireshark还有一个Lua终端来执行编写的插件脚本、打印错误信息，通过“工具——Lua——console”打开，动态执行脚本通过“工具——Lua——evaluate”,打开Lua调试窗口，将以上代码输入Evaluate窗口，然后点击“Evaluate”按钮，若无错误提示，且末尾提示“--[[  Evaluated --]]”，则说明代码无语法错误，注意看到输出需要使用wireshark提供的内置函数如debug(text)来输出
* 可以把捕获的数据包保存为.pcap文件，每次修改Lua脚本后双击.pcap文件打开Wireshark即可。不必每次都进行Live Capture

#### 构造网络数据包来验证

使用[xcap](http://xcap.weebly.com/)这个工具

直接打开xcap.exe会发现缺少winpap.dll提示，需要下载安装[WinPcap](https://www.winpcap.org/install/)

使用参考[这里](https://www.cnblogs.com/nancyrm/p/7833484.html)

大体步骤：

1. 创建报文
2. 添加报文内容
3. 发送报文

### Dissector

解析器（Dissector）是用来被wireshark调用解析数据包或部分数据包的，需要以Proto对象的形式注册后才能被wireshark调用。同时，我们还可以使用wireshark已经自带的解析器

注册一个解析器的例子代码如下所示:

```
-- trivial protocol example
-- declare our protocol
--trival是协议名字，后面是说明，均需要在wireshark中唯一。
trivial_proto = Proto("trivial","Trivial Protocol")
-- create a function to dissect it
function trivial_proto.dissector(buffer,pinfo,tree)
    pinfo.cols.protocol = "TRIVIAL"
    local subtree = tree:add(trivial_proto,buffer(),"Trivial Protocol Data")
    subtree:add(buffer(0,2),"The first two bytes: " .. buffer(0,2):uint())
    subtree = subtree:add(buffer(2,2),"The next two bytes")
    subtree:add(buffer(2,1),"The 3rd byte: " .. buffer(2,1):uint())
    subtree:add(buffer(3,1),"The 4th byte: " .. buffer(3,1):uint())
end
-- load the udp.port table
udp_table = DissectorTable.get("udp.port")
-- register our protocol to handle udp port 7777
udp_table:add(7777,trivial_proto)
```

解析器注册分为很多种，可以使用函数register_postdissector(trivial_proto)注册为postdissectors，即在所有解析器执行完后执行；也可以在DissectorTable上注册，这样就可以使用wireshark自带的上一层协议解析后的结果。比如，协议TCP的解析表”tcp.port”包括http,smtp,ftp等。例如，你写的解析器想解析tcp端口7777上的某个协议，就使用下面的代码，而不必从tcp或者ip层开始解析

```
-- load the udp.port table
udp_table = DissectorTable.get("udp.port")
-- register our protocol to handle udp port 7777
udp_table:add(7777, trivial_proto)
```

#### 如何定义小于1个字节的field

查了一下User Guide，发现可以在创建ProtoField的时候，使用mask参数就可以了

#### 如何取小于1个字节field的值

这个需要位操作进行处理，具体见参考文献1。

主要是bit.band, bit.bor, bit.bxor, bit.rshift, bit.lshift等。注意右移位是bit.rshift，而不是bit.brshift

#### 如何调用其他Dissector

* Dissector.get()获得系统中已经有的dissector；DissectorTable.get()获得系统中已经有的dissector table，再调用get_dissector()获得最终的dissector
* 获得dissector后，就可以直接调用call，call的参数跟dissector function的参数一致。

  * xx_protocol.dissector = function(buffer,pinfo,tree)
  * 定义这个协议的解析函数，最后会将这个函数注册到wireshark用来解析数据的表中。这个函数的三个参数很重要，是wireshark引擎在调用该函数是会传入，
  * buffer就是我们要分析的数据，
  * pinfo记录了前面分析过协议留下的信息，
  * tree是用来在详细框中添加我们信息的结构。
* 如何设置报文信息

  直接修改pkt.cols.info，其中pkt是dissector function传入的参数
* 如何处理一个应用报文跨多个uTP报文

  在BitTorrent中，PIECE报文比较大，会跨多个uTP报文，这个时候需要判断出第一个PIECE报文，进行解析，后面的PIECE报文不需要解析，如果解析就会导致出错。这里是使用一个检查函数，判断每种type下，协议中数据长度是否满足限制来实现的。

#### Link Type

[HowToDissectAnything (wireshark.org)](https://wiki.wireshark.org/HowToDissectAnything)

*Edit->Preferences->Protocols>DLT_USER->Edit Encapsulations Table* and adding an entry to decode link-layer header type value 147

### post-dissectors

在所有解析器执行完后执行，可以使用函数register_postdissector(trivial_proto)注册

### Plugin options

* A traditional C-Based dissector.
* A script based dissector using the built-in Lua language support.
* A text based dissector using the external project plugin [WSGD](http://wsgd.free.fr/).

### C plugin

### Lua plugin

* [Lua基础](https://www.runoob.com/lua/lua-miscellaneous-operator.html)
* [Lua 位运算](https://blog.csdn.net/u013826918/article/details/86539252)
* [Tutorial scripts](https://link.zhihu.com/?target=https%3A//wiki.wireshark.org/Lua/Examples) 官方示例
* [Dissectors](https://link.zhihu.com/?target=https%3A//wiki.wireshark.org/Lua/Dissectors)
* [Chapter 10. Lua Support in Wireshark](https://link.zhihu.com/?target=https%3A//www.wireshark.org/docs/wsdg_html_chunked/wsluarm.html)
* [Chapter 11. Wireshark’s Lua API Reference Manual](https://link.zhihu.com/?target=https%3A//www.wireshark.org/docs/wsdg_html_chunked/wsluarm_modules.html)
* [Lua in Wireshark](https://link.zhihu.com/?target=https%3A//wiki.wireshark.org/Lua%23Lua_in_Wireshark)
* [Tv](https://link.zhihu.com/?target=https%3A//wiki.wireshark.org/LuaAPI/Tvb%23Tvb)
* [Lua编写Wireshark插件实战 - 简书 (jianshu.com)](https://www.jianshu.com/p/1e2f63a484d6)

[(52条消息) wireshark-lua解析自定义协议_红富士p的博客-CSDN博客_wireshark 自定义协议](https://blog.csdn.net/quniyade0/article/details/115266774)

#### Lua API

##### Proto

表示一个新的Protocol，在Wireshark中Protocol对象有很多用处，解析器是其中主要的一个。主要接口有：

| 接口                                      | 说明                                                                                |
| ----------------------------------------- | ----------------------------------------------------------------------------------- |
| proto:__call (name,desc)                  | 创建Proto对象。name和desc分别是对象的名称和描述，前者可用于过滤器等                 |
| proto.name                                | get名称                                                                             |
| proto.fields                              | get/set字段                                                                         |
| proto.prefs                               | get配置项                                                                           |
| proto.init                                | 初始化，无参数                                                                      |
| proto.dissector                           | 解析函数，3个参数tvb,pinfo,tree，分别是报文内容，报文信息和解析树结构               |
| proto:register_heuristic (listname, func) | 为Proto注册一个启发式解析器，被调用时，参数func将被传入与dissector方法相同的3个参数 |

##### ProtoField

表示协议字段，一般用于解析字段后往解析树上添加节点。根据字段类型不同，其接口可以分为两大类。

这些接口都会返回一个新的字段对象。方括号内是可选字段，花括号内是可替换的类型字段。

ProtoField.{type} (abbr, [name], [base], [valuestring], [mask], [desc])

**整型:**
type包括：uint8, uint16, uint24, uint32, uint64, framenum

**其他类型:**

type包括：float, double, string, stringz, bytes, bool, ipv4, ipv6, ether,oid, guid

```
fields.peer_ipaddr = ProtoField.ipv4("bvc_srt.peer_ipaddr", "Peer IP address")
-- 添加到树的时候要注意
-- 如果是网络序，要使用add_le，而不是add
```

##### Tvb

Tvb（Testy Virtual Buffer）表示报文缓存，也就是实际的报文数据，可以通过下面介绍的TvbRange从报文数据中解出信息。主要接口有：

| **接口**                  | 说明                                                    |
| ------------------------------- | ------------------------------------------------------- |
| tvb:__tostring()                | 将报文数据转化为字符串，可用于调试                      |
| tvb:reported_len()              | get tvb的(not captured)长度                             |
| tvb:len()                       | get tvb的(captured)长度                                 |
| tvb:reported_length_remaining() | 获取当前tvb的剩余长度，如果偏移值大于报文长度，则返回-1 |
| tvb:offset()                    | 返回原始偏移                                            |

Usage:

```
-- tvb(offset, 4)表示从offset开始之后的4个字节
subtree:add_le(fields.peer_ipaddr, tvb(offset, 4))
```

##### TvbRange

表示Tvb的可用范围，常用来从Tvb中解出信息。主要接口有

| 接口                          | 说明                                                                                                                                                                              |
| ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| tvb:range([offset], [length]) | 从tvb创建TvbRange，可选参数分别是偏移和长度，默认值分别是0和总长度                                                                                                                |
| tvbrange:{type}()             | 将tvbrange所表示范围内的数据转换成type类型的值，type包括但不限于：uint,uint64,int,int64,float,ipv4,ether,nstime,string,ustring,bytes,bitfield等，其中某些类型的方法可以带一些参数 |

##### Pinfo

报文信息(packet information)。主要接口有：

| 接口                     | 说明                          |
| ------------------------ | ----------------------------- |
| pinfo.len pinfo.caplen   | get报文长度                   |
| pinfo.abs_ts             | get报文捕获时间               |
| pinfo.number             | get报文编号                   |
| pinfo.src pinfo.dst      | get/set报文的源地址、目的地址 |
| pinfo.columns pinfo.cols | get报文列表列（界面）         |

Usage:

```
-- 修改协议名称,protocol栏位的值
pinfo.cols.protocol = bvc_srt.name
-- 为报文的信息尾部添加字符串
pinfo.cols.info:append(" [ACK]")
-- 还有一种便是直接覆盖
pinfo.cols.info = "[ACK]"
```

##### DissectorTable

表示一个具体协议的解析表，比如，协议TCP的解析表”tcp.port”包括http,smtp,ftp等。可以依次点击wireshark菜单“Internals”、“Dissector tables”，来查看当前的所有解析表

如何获得已经支持的所有协议呢？

```
local t = Dissector.list()
for _,name in ipairs(t) do
    debug(name)
end
 
--查看所有支持的table
local dt = DissectorTable.list()
for _,name in ipairs(dt) do
    debug(name)
end
```

| 接口                                      | 说明                                                                                                          |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| DissectorTable.get(name)                  | get名为name的解析表的引用                                                                                     |
| dissectortable:add(pattern, dissector)    | 将Proto或Dissector对象添加到解析表，即注册。pattern可以是整型值，整型值范围或字符串，这取决于当前解析表的类型 |
| dissectortable:remove(pattern, dissector) | 将满足pattern的一个或一组Proto、Dissector对象从解析表中删除                                                   |

##### Column

###### 自定义column

[Wireshark Tutorial: Changing Your Column Display](https://unit42.paloaltonetworks.com/unit42-customizing-wireshark-changing-column-display/#:~:text=To%20add%20columns%20in%20Wireshark%2C%20use%20the%20Column,Preferences%20menu%20lists%20all%20columns%2C%20viewed%20or%20hidden.)

[wireshark custom lua dissector display metaData column](https://stackoverflow.com/questions/65345286/wireshark-custom-lua-dissector-display-metadata-column)

#### Code Framework

```
-- 首先需要定义一个新协议，就是给这个新协议起一个新的名字
local NAME = "red"
local PORT = 5004
local red = Proto(NAME, "Red Protocol")

-- 对这个新协议进行解析，在 red.dissector 这个函数中写我们解析这种包的逻辑
function red.dissector (tvb, pinfo, tree)
end

-- 将这个新协议添加到 udp 这个已有协议的的底下，用端口号进行区分
DissectorTable.get("udp.port"):add(PORT, red)

```

## pcapng format

[PCAP Next Generation Dump File Format (winpcap.org)](https://www.winpcap.org/ntar/draft/PCAP-DumpFileFormat.html#sectionidb)

```
0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                          Block Type                           |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                      Block Total Length                       |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
/                          Block Body                           /
/          /* variable length, aligned to 32 bits */            /
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                      Block Total Length                       |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
```

    **Figure 1: Basic block structure.**

```
Section Header
|
+- Interface Description
|  +- Simple Packet
|  +- Enhanced Packet
|  +- Interface Statistics
|
+- Name Resolution
```

    **Figure 2: Logical block Hierarchy of a pcapng file.**

```
 0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|      Option Code              |         Option Length         |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
/                       Option Value                            /
/          /* variable length, aligned to 32 bits */            /
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
/                                                               /
/                 . . . other options . . .                     /
/                                                               /
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|   Option Code == opt_endofopt  |  Option Length == 0          |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
```

    **Figure 7: Options format**

```
   0                   1                   2                   3
   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +---------------------------------------------------------------+
 0 |                   Block Type = 0x0A0D0D0A                     |
   +---------------------------------------------------------------+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |                      Byte-Order Magic                         |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12 |          Major Version        |         Minor Version         |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
16 |                                                               |
   |                          Section Length                       |
   |                                                               |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
24 /                                                               /
   /                      Options (variable)                       /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +---------------------------------------------------------------+
```

    **Figure 8: Section Header Block format.**

```
0                   1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +---------------------------------------------------------------+
 0 |                    Block Type = 0x00000001                    |
   +---------------------------------------------------------------+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |           LinkType            |           Reserved            |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12 |                            SnapLen                            |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
16 /                                                               /
   /                      Options (variable)                       /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +---------------------------------------------------------------+
```

    **Figure 9: Interface Description Block format**

```
 0                   1                   2                   3
   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +---------------------------------------------------------------+
 0 |                    Block Type = 0x00000006                    |
   +---------------------------------------------------------------+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |                         Interface ID                          |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12 |                        Timestamp (High)                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
16 |                        Timestamp (Low)                        |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
20 |                         Captured Len                          |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
24 |                          Packet Len                           |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
28 /                                                               /
   /                          Packet Data                          /
   /          /* variable length, aligned to 32 bits */            /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   /                                                               /
   /                      Options (variable)                       /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +---------------------------------------------------------------+
```

    **Figure 10: Enhanced Packet Block format**

```
    0                   1                   2                   3
    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
   +---------------------------------------------------------------+
 0 |                    Block Type = 0x00000003                    |
   +---------------------------------------------------------------+
 4 |                      Block Total Length                       |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 8 |                          Packet Len                           |
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
12 /                                                               /
   /                          Packet Data                          /
   /          /* variable length, aligned to 32 bits */            /
   /                                                               /
   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
   |                      Block Total Length                       |
   +---------------------------------------------------------------+
```

    **Figure 11: Simple Packet Block format.**
