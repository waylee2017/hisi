
OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
	. = 0x00000000;

	. = ALIGN(4);
	.text	:
	{
		start.o	(.text)
		lowlevel_init.o	(.text)
		chip.o	(.text)
		ddrphy_train.o	(.text)
		ddrphy_training.o (.text)
		ddrphy_training_print.o (.text)
		ddr_dataeye_training.o (.text)
		hi3716mv310_ddr_training.o (.text)
		uart.o	(.text)
		*(.text)
	}
	__text_end = .;

	. = ALIGN(4);
	.image : { *(.image) }

	. = ALIGN(4);
	.rodata : { *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*))) }

	. = ALIGN(4);
	.data : { *(.data) }

	. = ALIGN(4);
	.got : { *(.got) }

	. = ALIGN(4);
	__bss_start = .;
	.bss : { *(.bss) }
	_end = .;
}
