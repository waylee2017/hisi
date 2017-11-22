
OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
	. = 0x00000000;

	. = ALIGN(4);
	.text	:
	{
		arch/arm/cpu/s40/start.o	(.text)
		arch/arm/cpu/s40/lowlevel_init.o	(.text)
		arch/arm/cpu/s40/ddrphy_training.o	(.text)
		arch/arm/cpu/s40/ddrphy_training_func.o	(.text)
		arch/arm/cpu/s40/ddr_dataeye_training.o (.text)
		arch/arm/cpu/s40/emmc_boot.o	(.text)
		arch/arm/cpu/s40/chip.o	(.text)
		arch/arm/cpu/s40/uart.o	(.text)
	__bootram_code_end = .;
		*(.text)
	}
	__text_end = .;
	. = . + 0x84;
	. = ALIGN(4);
	.rodata : { *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*))) }

	. = ALIGN(4);
	.data : { *(.data) }

	. = ALIGN(4);
	.got : { *(.got) }

	__u_boot_cmd_start = .;
	.u_boot_cmd : { *(.u_boot_cmd) }
	__u_boot_cmd_end = .;

	. = ALIGN(4);
	.image : { *(.image) }

	. = ALIGN(4);
	__bss_start = .;
	.bss : { *(.bss) }
	_end = .;
}
