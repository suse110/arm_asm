SECTIONS
{
	. = 0x0;
	_stext = .;
	.text : {
		*(.text._start);
        *(.isr_vectors)
		/* LONG(0x11223344) */
		*(.text);
		/* LONG(0x55AA55AA) */
	}
	_etext = .;
    . = 0x20000000;
	.data : { *(.data)}
	
	.bss : { *(.bss) }
	. = ALIGN(8);
	_sstack = .;
    . = . + 0x1000;
	_estack = .;
}
