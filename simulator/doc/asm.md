[x86通用寄存器](https://zhuanlan.zhihu.com/p/288636064)
### x86汇编常见寄存器
* 数据寄存器
  * EAX
    * 累加器"(accumulator), 它是很多加法乘法指令的缺省寄存器
    * 累加寄存器
      * AH&AL＝AX(accumulator)
  * EBX 
    * 基地址"(base)寄存器, 在内存寻址时存放基地址
  * ECX
    * 计数器(counter), 是重复(REP)前缀指令和LOOP指令的内定计数器
    * 计数寄存器  
      * CH&CL＝CX(count)
  * EDX
    * 总是被用来放整数除法产生的余数
    * 数据寄存器  
      * DH&DL＝DX(data)
* 变址和指针寄存器(ESI,EDI)
  * ESI/EDI分别叫做"源/目标索引寄存器"(source/destination index)它们主要用于存放存储单元在段内的偏移量，用它们可实现多种存储器操作数的寻址方式，为以不同的地址形式访问存储单元提供方便
* 指针寄存器
  * 32位CPU有2个32位通用寄存器EBP和ESP。其低16位对应先前CPU中的BP和SP，对低16位数据的存取，不影响高16位的数据
  * ESP,EBP
  * SP,BP
  * 主要用于存放堆栈内存储单元的偏移量，用它们可实现多种存储器操作数的寻址方式，为以不同的地址形式访问存储单元提供方便。
  * 指针寄存器不可分割成8位寄存器。
  * 作为通用寄存器，也可存储算术逻辑运算的操作数和运算结果。
  * 它们主要用于访问堆栈内的存储单元，并且规定：
    * BP为基指针(Base Pointer)寄存器，用它可直接存取堆栈中的数据
    * SP为堆栈指针(Stack Pointer)寄存器，用它只可访问栈顶
* 段寄存器
  * 段寄存器是根据内存分段的管理模式而设置的。内存单元的物理地址由段寄存器的值和一个偏移量组合而成的，这样可用两个较少位数的值组合成一个可访问较大物理空间的内存地址
  * ES
    * 附加段寄存器(Extra Segment Register)，其值为附加数据段的段值
  * CS
    * 代码段寄存器(Code Segment Register)，其值为代码段的段值
  * SS
    * 堆栈段寄存器(Stack Segment Register)，其值为堆栈段的段值
  * DS
    * 数据段寄存器(Data Segment Register)，其值为数据段的段值
  * FS
    * 附加段寄存器(Extra Segment Register)，其值为附加数据段的段值
  * GS
    * 附加段寄存器(Extra Segment Register)，其值为附加数据段的段值
* 指令寄存器
  * EIP
* FLAG寄存器
  * FLAG寄存器中存储的信息通常又被称作程序状态字（PSW）
    * OF overflow flag 溢出标志 
      * 操作数超出机器能表示的范围表示溢出,溢出时为1. 
    * SF sign Flag 符号标志 
      * 记录运算结果的符号,结果负时为1. 
    * ZF zero flag 零标志 
      * 运算结果等于0时为1,否则为0. 
    * CF carry flag 进位标志 
      * 最高有效位产生进位时为1,否则为0. 
    * AF auxiliary carry flag 辅助进位标志 
      * 运算时,第3位向第4位产生进位时为1,否则为0. 
    * PF parity flag 奇偶标志 
      * 运算结果操作数位为1的个数为偶数个时为1,否则为0. 
    * DF direcion flag 方向标志 
      * 用于串处理.DF=1时,每次操作后使SI和DI减小.DF=0时则增大. 
    * IF interrupt flag 中断标志 
      * IF=1时,允许CPU响应可屏蔽中断,否则关闭中断. 
    * TF trap flag 陷阱标志 
      * 用于调试单步操作

* 累加器(Accumulator) AX,AL
  * 用累加器进行的操作可能需要更少时间。累加器可用于乘、 除、输入/输出等操作，它们的使用频率很高
  * 基地址寄存器(Base Register)
    * BH&BL＝BX(base)
  * 计数寄存器(Count Register), CX
    * 在循环和字符串操作时，要用它来控制循环次数；在位操作 中，当移多位时，要用CL来指明移位的位数
  * 数据寄存器(Data Register), DX
    * 在进行乘、除运算时，它可作为默认的操作数参与运算，也可用于存放I/O的端口地址
  * 
在16位CPU中，AX、BX、CX和DX不能作为基址和变址寄存器来存放存储单元的地址
在32位CPU中，其32位寄存器EAX、EBX、ECX和EDX不仅可传送数据、暂存数据保存算术逻辑运算结果，而且也可作为指针寄存器，所以，这些32位寄存器更具有通用性

EAX 是"累加器"(accumulator), 它是很多加法乘法指令的缺省寄存器。
EBX是"基地址"(base)寄存器, 在内存寻址时存放基地址。
ECX 是计数器(counter), 是重复(REP)前缀指令和LOOP指令的内定计数器。
EDX则总是被用来放整数除法产生的余数。
EAX 是"累加器"(accumulator), 它是很多加法乘法指令的缺省寄存器。 
ESI/EDI分别叫做"源/目标索引寄存器"(source/destination index)它们主要用于存放存储单元在段内的偏移量，用它们可实现多种存储器操作数的寻址方式，为以不同的地址形式访问存储单元提供方便。

堆栈指针寄存器  SP(Stack Pointer)
基址指针寄存器  BP(Base Pointer)
源变址寄存器    SI(Source Index)
目的变址寄存器  DI(Destination Index)
指令指针寄存器  IP(Instruction Pointer)
代码段寄存器    CS(Code Segment)
数据段寄存器    DS(Data Segment)
堆栈段寄存器    SS(Stack Se
附加段寄存器    ES(Extra Segment)

EA--Effective Address:有效地址 ，即偏移地址。
SA--segment address

## 寻址方式
* 寄存器间接寻址
  * 操作数在存储器中，操作数的有效地址在SI,DI,BX,BP这4个寄存器之一中。
  * 在不采用段前缀的情况下， 对于DI,SI,BX默认段为DS,而BP为SS
   ```
    mov ah,[bx] ;
    mov ah,cs:[bx];
   ```
* 寄存器相对寻址
  * 操作数在存储器中，操作数的有效地址是一个基址寄存器(BX,BP)或变址寄存器(SI,DI)的内容加上8位或16位的位移之和。在指令中的8位和16位的常量采用补码表示，8位要被带符号扩展为16位。
    ```
    mov ah,[bx+6] ;段址默认情况与寄存器间接寻址相同
    ```
* 基址变址寻址
  * 操作数在存储器中，操作数的有效地址是一个基址寄存器(BX,BP)加上变址寄存器(SI,DI)的内容。如果有BP，则默认段址为SS,否则为DS.
    ```
    mov ah,[bx+si]
    ```
* 相对基址加变址寻址
  * 操作数在存储器中，操作数的有效地址是一个基址寄存器(BX,BP)和变址寄存器(SI,DI)的内容加上8位或16位的位移之和。如果有BP，则默认段址为SS,否则为DS.
    ```
    mov ax,[bx+di-2]
    mov ax,1234h[bx][di]
    ```

* 在8086CPU中，使用[]来表示寄存器间接寻址.但是只有bx、si、di、bp寄存器可以在中来进行内存单元的寻址;
* BX BP是基址地址(类型)的存储器,SI DI是偏移:因此我们可以得到地址  = 基址地址  + 偏移地址
* 同时由于某些奇怪的原因段寄存器被用到了,因此许多时候上面的段寄存器来定位储存位置.使用上是 段寄存器 : [...]
* 若有效地址用SI、DI和BX等之一来指定，则其缺省的段寄存器为DS；
* 若有效地址用BP来指定，则其缺省的段寄存器为SS(即：堆栈段 BP是和堆栈指针SP联合使用的，作为SP校准使用的，只有在寻找堆栈里的数据)。
  * 比如下面指令是正确的：
    * 在[…]中，这4个寄存器可以单个出现，或只能以4种组合出现：BX和SI，BX和DI，BP和SI，BP和DI，比如下面的指令时正确的：只要在[…]中使用寄存器BP，而指令中没有显性地给出段地址，段地址就默认在SS中，比如：MOV AX, [BP];
