[【Python】struct 模块](https://www.jianshu.com/p/7d2576efdac2)

数据在计算机中存储和在网络中传输的方式各有不同。

struct 模块用于 Python 值和用 Python 字节对象表示的 C 结构体之间的转换。

给 C 结构打包时一般包含了 **填充字节** （pad bytes），在打/拆包时需考虑**对齐**的问题。

struct 模块使用 Format Strings 作为 C 结构布局的简洁描述以及与 Python 值的预期转换。

# 格式字符串

格式字符串用于在打包和解包数据时指定预期布局。它们由格式字符构成，指定打包/解包的数据类型。此外，还有用于控制字节顺序，大小和对齐的特殊字符。

## 字节顺序、大小和对齐

默认情况下，C 类型以机器的本机格式和字节顺序表示，并在必要时通过跳过填充字节进行正确对齐（根据C编译器使用的规则）。

* 本机字节顺序是 big-endian 或 little-endian，具体取决于主机系统：
  * Intel x86 和 AMD64（x86-64）是 little-endian；
  * 摩托罗拉 68000 和 PowerPC G5 都是大端的；
  * ARM 和 Intel Itanium 具有可切换的字节序（双端）
* 使用 `sys.byteorder` 可查看系统所采用的字节顺序（big-endian or little-endian）
* 使用 C 编译器的 `sizeof` 表达式确定 native size 和 alignment

或者，根据下表，格式字符串的第一个字符可用于指示打包数据的字节顺序，大小和对齐方式：

| Character | ByteOrder              | Size     | Alignment |
| --------- | ---------------------- | -------- | --------- |
| @         | native                 | native   | native    |
| =         | native                 | standard | none      |
| <         | little-endian          | standard | none      |
| >         | big-endian             | standard | none      |
| !         | network (= big-endian) | standard | none      |

* `@` 和 `=` 之间的区别：两者都使用本机字节顺序，但后者的大小和对齐是标准化的。
* 当网络字节顺序不确定时，可采用 `！`。
* 无法指示非本机字节的顺序（强制字节交换）；只能使用适当的 `<` 或 `>` 选项
* 填充仅在连续的结构成员之间自动添加。在编码结构的开头或结尾没有添加填充。
* 使用非原生大小和对齐时，不添加填充，例如，使用 `<`，`>`，`=` 和 `！`。
* 要将结构的末尾与特定类型的对齐要求对齐，请使用重复计数为零的该类型的代码结束格式。
* 标准尺寸仅取决于格式字符，请参阅格式字符部分中的表

## Format Characters

格式字符具有以下含义：根据类型，C和Python值之间的转换应该是显而易见的。 “标准大小”列是指使用标准大小时打包值的大小（以字节为单位），也就是说，当格式字符串以 `<`，`>`，`！` 之一开头时或 `=`。使用本机大小时，打包值的大小取决于平台。

| Format | C Type             | Python type       | Standard size | Notes    |
| ------ | ------------------ | ----------------- | ------------- | -------- |
| x      | pad byte           | no value          |               |          |
| c      | char               | bytes of length 1 | 1             |          |
| b      | signed char        | integer           | 1             | (1), (3) |
| B      | unsigned char      | integer           | 1             | (3)      |
| ?      | _Bool              | bool              | 1             | (1)      |
| h      | short              | integer           | 2             | (3)      |
| H      | unsigned short     | integer           | 2             | (3)      |
| i      | int                | integer           | 4             | (3)      |
| I      | unsigned int       | integer           | 4             | (3)      |
| l      | long               | integer           | 4             | (3)      |
| L      | unsigned long      | integer           | 4             | (3)      |
| q      | long long          | integer           | 8             | (2), (3) |
| Q      | unsigned long long | integer           | 8             | (2), (3) |
| n      | ssize_t            | integer           | (4)           |          |
| N      | size_t             | integer           | (4)           |          |
| e      | (7)                | float             | 2             | (5)      |
| f      | float              | float             | 4             | (5)      |
| d      | double             | float             | 8             | (5)      |
| s      | char[]             | bytes             |               |          |
| p      | char[]             | bytes             |               |          |
| P      | void *             | integer           | (6)           |          |

* `?` 转换码对应于 C99 定义的 `_Bool` 类型。如果此类型不可用，则使用 char 进行模拟。在标准模式下，它始终由一个字节表示。
* 仅当平台 C 编译器支持 C long long，或者在 Windows 上支持 `__int64`时，`q` 和 `Q` 转换代码才能以纯模式提供。它们始终以标准模式提供。
* 当尝试使用任何整数转换码打包非整数时，如果非整数具有 `__index __()` 方法，则调用该方法以在打包之前将参数转换为整数。
* `n` 和 `N` 转换码仅适用于本机大小（选择为默认值或带有 `@` 字节顺序字符）。对于标准大小，您可以使用适合您的应用程序的其他整数格式。
* 对于 `f`，`d` 和 `e` 转换码，打包表示使用 IEEE 754 binary32，binary64 或binary16 格式（分别用于 `f`，`d` 和 `e`），无论浮平台用的什么浮点格式。
* `P` 格式字符仅适用于本机字节排序（选择为默认字符或带有 `@` 字节顺序字符）。字节顺序字符 `=` 选择使用基于主机系统的小端或大端排序。 struct 模块不会将其解释为本机排序，因此 `P` 格式不可用。
* IEEE 754 二进制 16 “半精度” 类型是在 2008 年的 IEEE 754 标准修订版中引入的。它有一个符号位，一个 5 位指数和 11 位精度（显式存储 10 位），并且可以完全精确地表示大约 6.1e-05和6.5e + 04 之间的数字。 C编译器并不广泛支持这种类型：在典型的机器上，unsigned short 可用于存储，但不能用于数学运算。有关详细信息，请参阅有关半精度浮点格式的 Wikipedia 页面。

格式字符之前可以是整数重复计数。例如，格式字符串 `4h` 表示与 `hhhh` 完全相同。

格式之间的空白字符被忽略；计数及其格式不得包含空格。

对于 `s` 格式字符，count 被解释为字节的长度，而不是像其他格式字符那样的重复计数。例如，`10s` 表示单个 10 字节字符串，而 `10c` 表示 10 个字符。如果未给出计数，则默认为1。对于打包，字符串将被截断或填充为适当的空字节以使其适合。对于解包，生成的字节对象始终具有指定的字节数。作为一种特殊情况，`0` 表示单个空字符串（而 `0c` 表示 0 个字符）。

当使用整数格式（`b`，`B`，`h`，`H`，`i`，`I`，`l`，`L`，`q`，`Q`）之一打包值 x 时，如果 x 超出该格式的有效范围，则引发 `struct.error`。

`p` 格式字符编码 “Pascal字符串”，表示存储在固定字节数中的短可变长度字符串，由 count 给出。存储的第一个字节是字符串的长度，或255，取较小者。字符串的字节如下。如果传入 `pack()` 的字符串太长（长于 count-1），则只存储字符串的前导 count-1 字节。如果字符串短于 count-1，则用空字节填充，以便使用所有字节中的精确计数字节。请注意，对于 `unpack()`，`p` 格式字符使用 count 个字节，但返回的字符串永远不会包含超过 255 个字节。

对于 `？` 格式字符，返回值为 True 或 False。打包时，使用参数对象的真值。将打包本机或标准 bool 表示中的 0 或 1，并且在解包时任何非零值都将为 True。

# 函数

* struct.`pack(fmt, v1, v2, ...)`

  根据指定的格式 `fmt` 将值 `v1, v2`打包成字节对象
* struct.`pack_into(fmt, buf, offset, v1, v2, ...)`

  按偏移量 offset 根据指定的格式 `fmt` 将值 `v1, v2`打包成字节对象并写入缓冲区
* struct.`unpack(fmt, buf)`

  根据格式 fmt 从缓冲区解压出数据，以 tuple 的形式返回。

  缓冲区的大小（以字节为单位）必须与格式所需的大小相匹配，如 `calcsize()` 所示。
* struct.`unpack_from(fmt, buf, offset=0)`

  根据格式字符串格式从位置偏移处开始从缓冲区解包。

  缓冲区的大小（以字节为单位，减去偏移量）必须至少为格式所需的大小，如 `calcsize()` 所示
* struct.`iter_unpack(fmt, buf)`

  根据格式字符串格式从缓冲区缓冲区迭代解压缩。此函数返回一个迭代器，它将从缓冲区读取大小相同的块，直到其所有内容都被消耗掉。缓冲区的大小（以字节为单位）必须是格式所需大小的倍数，如 `calcsize()`所示。

  每次迭代都会产生格式字符串指定的元组
* struct.`calcsize(fmt)`

  返回与格式字符串格式对应的 struct 的大小（以及 `pack(format, ...)` 生成的 bytes 对象）的大小。

# 例子

> 所有示例都假定本机字节顺序，大小和与 big-endian 机器的对齐

打包/解包三个整数的基本示例：

```
>>> from struct import *
>>> pack('hhl', 1, 2, 3)
b'\x00\x01\x00\x02\x00\x00\x00\x03'
>>> unpack('hhl', b'\x00\x01\x00\x02\x00\x00\x00\x03')
(1, 2, 3)
>>> calcsize('hhl')
8
```

可以通过将解压缩字段分配给变量或将结果包装在命名元组中来命名解压缩字段：

```
>>> record = b'raymond   \x32\x12\x08\x01\x08'
>>> name, serialnum, school, gradelevel = unpack('<10sHHb', record)

>>> from collections import namedtuple
>>> Student = namedtuple('Student', 'name serialnum school gradelevel')
>>> Student._make(unpack('<10sHHb', record))
Student(name=b'raymond   ', serialnum=4658, school=264, gradelevel=8)
```

格式字符的排序可能会对大小产生影响，因为满足对齐要求所需的填充是不同的：

```
>>> pack('ci', b'*', 0x12131415)
b'*\x00\x00\x00\x12\x13\x14\x15'
>>> pack('ic', 0x12131415, b'*')
b'\x12\x13\x14\x15*'
>>> calcsize('ci')
8
>>> calcsize('ic')
5
```

`"llh0l"`假设long在4字节边界上对齐，指定末尾的两个填充字节（这仅在原始大小和对齐生效时有效;标准大小和对齐不强制任何对齐）

```
>>> pack('llh0l', 1, 2, 3)
b'\x00\x00\x00\x01\x00\x00\x00\x02\x00\x03\x00\x00'
```
