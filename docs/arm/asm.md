[ARM GCC 内嵌（inline）汇编手册](https://blog.csdn.net/lhf_tiger/article/details/32343851?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_baidulandingword-0&spm=1001.2101.3001.4242)

[ARM GCC Inline Assembler Cookbook (ethernut.de)](http://www.ethernut.de/en/documents/arm-inline-asm.html)

[Writing inline assembly code](https://developer.arm.com/documentation/100748/0616/Using-Assembly-and-Intrinsics-in-C-or-C---Code/Writing-inline-assembly-code)


# 内嵌汇编的格式

```
asm volatile (
"asm code"
: output
: input
: changed
)
```

## asm code

在”asm code”里面，可以写多条汇编代码，但是每一条汇编代码都以\n 或者是 \n\t进行换行

## input output list

* output(输出操作符列表)表示的是从ASM到C语言输出，简单理解就是**寄存器到变量的操作**
* input(输入操作符列表)相反，指的是**C变量到ASM寄存器**赋值的过程。

### output和input的格式

`[xxx] "xx" (xxxx)`


第一个[]括号里面代表的是符号名，是asm code 指令里面需要用到的，比如定义

* `：[input1]“+r”(a)`,然后 在asm code 里面就可以直接用 `MOV R0 %[input1]`
* 当然这个[]也可以省略，当省略之后，asm code要指代这个变量时 就用 %number , number>0
  * 如MOV R0 %1

第二个引号里面的内容为限定

| = | 代表只写操作           |
| - | ---------------------- |
| + | 代表读写操作           |
| & | 占位操作，只能做为输出 |
| r | 使用任何可用的寄存器   |
| m | 使用变量的内存地址     |
| i | 使用立即数             |
| x | 操作符只能做为输出     |


第三个() 这个括号里面代表的是C语言变量名字

## changed


代表的是操作之后改变的内容，比如在 asm code 中使用了 r0，但是调用R0 之前 R0 是存储有关键数据的，但是我们却在嵌入的汇编中暂时改变了它的值。所以必须要恢复过来，这并不需要我们来做，gcc已经做好了，我们只需要在 changed 里面写上我们用到的寄存器，gcc 就会帮助恢复其原有寄存器的值

如果修改了没有在output 和input 里面定义的任何位置的内存，都必须在changed 上面写上memroy
这段 代码就是用内嵌汇编实现的两个数相加。%[input1]就相当于a

```
int add(int a, int b)
{
    int c;  
__asm__ __volatile__ (
    "MOV r0,%[input1] \n"
    "MOV r1,%[input2] \n"
    "ADD %[output1], r0, r1"
    :[output1]"+r"(c)
    :[input1]"+r"(a),[input2]"+r"(b)
    :r0,r1
    );
    return c;
}
```
