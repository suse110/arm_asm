SECTIONS
{
	. = 0x0;
	_stext = .;
	.text : {
		*(.text.Reset_Handler);
        *(.isr_vectors)
		/* LONG(0x11223344) */
		*(.text);
		/* LONG(0x55AA55AA) */
	}
	__shell_command_start=.;
	.shell_command : {*(.shell_command)}
	__shell_command_end=.;
	. = ALIGN(4);
	_etext = .;
	_exit = .; /*for stdlib*/
    . = 0x20000000;
	_sdata = .;
	.data : { *(.data)}
	_edata = .;
	_sidata = LOADADDR(.data);
	__bss_start__ = .;/*for stdlib*/
	_sidata = LOADADDR(.data);
	.bss : {
		. = ALIGN(4);
		__bss_start__ = .;
		_sbss = __bss_start__;
		*(.bss*)
		*(COMMON)
		. = ALIGN(4);
		__bss_end__ = .;
		_ebss = __bss_end__;
	}
	
	. = ALIGN(8);
	__bss_end__ = .;/*for stdlib*/
	_sstack = .;
    . = . + 0x1000;
	_estack = .;

	. = ALIGN(8);
	_sheap = .;
    . = . + 0x4000;
	_eheap = .;
	ensd = _eheap;/*for stdlib*/
}
