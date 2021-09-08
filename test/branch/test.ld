SECTIONS
{
	. = 0x0;
	.text : {
        *(.isr_vectors)
		*(.text)
	}
    . = 0x20000000;
	.data : { *(.data) }
	.bss : { *(.bss) }
	. = ALIGN(8);
    . = . + 0x1000;
    _estack = .;
}
