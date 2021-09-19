SECTIONS
{
	. = 0x0;
	.text : {
        *(.is_vector)
		*(.text)
	}
    . = 0x20000000;
	.data : {
		*(.data)
		*(.rodata)
	}
	.bss : { *(.bss) }
	. = ALIGN(8);
    . = . + 0x1000;
    _estack = .;
}
