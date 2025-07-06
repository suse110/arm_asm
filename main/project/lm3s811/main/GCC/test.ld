/* 内存布局定义 */
MEMORY
{
    FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 64K
    RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 8K
}

SECTIONS
{
 /* 代码段 */
    .text :
    {
				_stext = .;
        . = ALIGN(4);
        KEEP(*(.isr_vector))
        *(.text*)
        . = ALIGN(4);
    } >FLASH

    /* Shell命令段 */
    .shell_command :
    {
        __shell_command_start = .;
        KEEP(*(.shell_command))
        __shell_command_end = .;
    } >FLASH
	_etext = .;
	_exit = .; /*for stdlib*/

/* 数据段 */
    .data :
    {
        _sdata = LOADADDR(.data);
        *(.data)
        _edata = .;
    } >RAM AT> FLASH

    /* BSS段 */
    .bss :
    {
        . = ALIGN(4);
				_sidata = LOADADDR(.data);
        __bss_start__ = .;/*for stdlib*/
				_sbss = __bss_start__;
        *(.bss*)
        *(COMMON)
        _ebss = .;
        . = ALIGN(4);
				__bss_end__ = .;/*for stdlib*/
				_ebss = __bss_end__;
    } >RAM

    /* 堆和栈 */
    . = ALIGN(8);
    _sheap = .;
    . = . + 0x1000;
    _eheap = .;
		ensd = _eheap;/*for stdlib*/

    . = ALIGN(8);
    _sstack = .;
    . = . + 0x1000;
    _estack = .;
}
