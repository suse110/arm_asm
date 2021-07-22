SECTIONS
{
	. = 0x0;
	.text : {
        *(.isr_vectors)
		LONG(0x11223344)
		*(.text);
		LONG(0x55AA55AA)
	}
	
    . = 0x20000000;
	.data : { *(.data) ;LONG(0x55AA55AA)}
	
	.bss : { *(.bss) }
	. = ALIGN(8);
    . = . + 0x1000;
    stack_top = .;
}
