@/******************************************************************************
@ *    Copyright (c) 2009-2012 by Hisi.
@ *    All rights reserved.
@ * ***
@ *    Create by Czyong. 2012-09-07
@ *
@******************************************************************************/

#include <config.h>

/******************************************************************************************/
#define STACK_TOP               0xc00
#define BOOT_RUN_START_ADDR     0xc00
/******************************************************************************************/

.globl _start
_start:
	b	reset
	ldr	pc, _undefined_instruction
	ldr	pc, _software_interrupt
	ldr	pc, _prefetch_abort
	ldr	pc, _data_abort
	ldr	pc, _not_used
	ldr	pc, _irq
	ldr	pc, _fiq

_undefined_instruction: .word irq_undefined_instruction
_software_interrupt:    .word irq_software_interrupt
_prefetch_abort:        .word irq_prefetch_abort
_data_abort:            .word irq_data_abort
_not_used:              .word irq_not_used
_irq:                   .word irq_irq
_fiq:                   .word irq_firq
_pad:                   .word 0x12345678

.=0x40
__blank_zone_start:
	.fill 1024*8,1,0
__blank_zone_end:

.balignl 16,0xdeadbeef
__start:
	.word _start

.globl _blank_zone_start
_blank_zone_start:
	.word __blank_zone_start


.globl _blank_zone_end
_blank_zone_end:
	.word __blank_zone_end

_TEXT_BASE:
	.word TEXT_BASE

.globl _armboot_start
_armboot_start:
	.word _start

/*
 * These are defined in the board-specific linker script.
 */
.globl _bss_start
_bss_start:
	.word __bss_start

.globl _bss_end
_bss_end:
	.word _end

.globl _relocate
_relocate:
	.word relocate

_clr_remap_nand_entry:
	.word MEM_BASE_NAND + do_clr_remap - TEXT_BASE

_clr_remap_spi_entry:
	.word MEM_BASE_SPI + do_clr_remap - TEXT_BASE

_copy_abort_code:
	.word  copy_abort_code
/*
 * the actual reset code
 */

reset:
	/*
	 *  delay wait mcu switch BUS finish
	 *  prevent mcu and A9 compete BUS conflict
	 */
	ldr	r0, =0x100
delay_wait_mcu:
	sub	r0, #1
	cmp	r0, #0
	bne	delay_wait_mcu
	/*
	 *  read and write system register REG_SC_GEN1
	 *  judge BUS mux whether or not OK
	 */
	ldr	r0, =REG_BASE_SCTL
	mov	r1, #0
wait_mux_finish:
	add	r1, r1, #1
	str	r1, [r0, #REG_SC_GEN1]
	ldr	r2, [r0, #REG_SC_GEN1]
	cmp	r1, r2
	bne	wait_mux_finish

	/* check if standby net transmit or not */
	ldr	r1, [r0, #REG_SC_GEN10]
	ldr	r2, =0x1211beef       /* magic for net transmit mode   */
	cmp	r1, r2
	bne	bootstrap_check       /* go to  ziju flow */

wait_mcu_sync_finish:
	ldr	r1, [r0, #REG_SC_GEN11]
	ldr	r2, =0x4523beef        /* magic for mcu synchronize flag */
	cmp	r1, r2
	bne	wait_mcu_sync_finish 
	mov	r1, #0                  /* clear standby  flag */
	str	r1, [r0, #REG_SC_GEN10]
	str	r1, [r0, #REG_SC_GEN11]

bootstrap_check:

	/*
	 *  read system register REG_SC_GEN1
	 *  check if ziju flag
	 */
	ldr	r1, [r0, #REG_SC_GEN14]
	ldr	r2, =0x7a696a75          /* magic for "ziju" */
	cmp	r1, r2
	bne	normal_start_flow

bootstrap:
	mov	r1, sp                 /* save sp */
	str	r1, [r0, #REG_SC_GEN14]  /* clear ziju flag */

	/* init PLL/DDRC/pin mux/... */
	ldr	r0, _blank_zone_start
	ldr	r1, _TEXT_BASE
	sub	r0, r0, r1
	add	r0, r0, #RAM_START_ADRS
	mov	r1, #0x0                /* flags: 0->normal 1->pm */
	mov	r2, #INIT_REG_ITEM1
	bl	init_registers           /* init PLL/DDRC/... */

	ldr	r0, =REG_BASE_SCTL
	ldr	r1, [r0, #REG_SC_GEN14]

	mov	sp, r1                   /* restore sp */
	ldr	r1, [r0, #REG_SC_GEN15]
	mov	pc, r1                   /* return to bootrom */

normal_start_flow:
	/*
	 * set the cpu to SVC32 mode
	 */
	mrs	r0, cpsr
	bic	r0, r0, #0x1f  /* r0 = ((~0x1F) & r0) */
	orr	r0, r0, #0xd3  /* r0 = (0xd3 | r0)    */
	msr	cpsr,r0

	/*
	 * Invalidate L1 I/D
	 */
	mov	r0, #0                   /* set up for MCR */
	mcr	p15, 0, r0, c8, c7, 0    /* invalidate TLBs */
	mcr	p15, 0, r0, c7, c5, 0    /* invalidate icache */

	/* Invalidate L1 D-cache */
	mcr	p15, 2, r0, c0, c0, 0    /* select L1 data cache */
	mrc	p15, 1, r3, c0, c0, 0    /* Read Current Cache Size Identification Register */
	ldr	r1, =0x1ff
	and	r3, r1, r3, LSR #13      /* r3 = (number of sets -1) */
	mov	r0, #0
way_loop:
	mov	r1, #0                  /* r1->set counter */
line_loop:
	mov	r2, r0, LSL #30
	orr	r2, r1, LSL #5           /* r2->set/way cache-op format */
	mcr     p15, 0, r2, c7, c6, 2    /* Invalidate line described by r2 */
	add	r1, r1, #1               /* Increment set counter */
	cmp	r1, r3                   /* Check if the last set is reached... */
	ble	line_loop                /* if not, continue the set_loop */
	add	r0, r0, #1               /* else, Increment way counter */
	cmp	r0, #4                   /* Check if the last way is reached... */
	blt	way_loop                 /* if not, continue the way_loop */

	/*
	 * disable MMU stuff and caches
	 */
	mrc	p15, 0, r0, c1, c0, 0
	bic	r0, r0, #0x00002000      /* clear bits 13 (--V-)   */
	bic	r0, r0, #0x00000007      /* clear bits 2:0 (-CAM)  */
	orr	r0, r0, #0x00000002      /* set bit 1 (--A-) Align */
	orr	r0, r0, #0x00000800      /* set bit 12 (Z---) BTB  */
	mcr	p15, 0, r0, c1, c0, 0

	/* init serial and printf a string. */
	bl	uart_early_init
	bl	msg_system_startup

check_boot_type:
	/* check_boot_type */
	ldr	r0, =REG_BASE_PERI_CTRL
	ldr	r0, [r0, #REG_START_MODE]

	ldr	r4, =REG_BASE_SCTL
	ldr	r1, [r4, #REG_SC_SYSID2]

	cmp	r1, #0x12
	beq	check_hi3712_boot_type
	cmp	r1, #0x15
	beq	check_hi3712_boot_type
	b	check_hi3716x_boot_type

check_hi3712_boot_type:
	mov	r6, r0, lsr#10
	and	r6, #0x1
	b	check_cpu_boot_type_finish

check_hi3716x_boot_type:
	mov	r6, r0, lsr#9             /* r6 = (r0 >> 9) */
	and	r6, #0x3
	b	check_cpu_boot_type_finish

check_cpu_boot_type_finish:
 
	/* 
	 * REG_SC_GEN14: save start addr 
	 * REG_SC_GEN15: save run flag
	 */
	ldr	r4, =REG_BASE_SCTL

	cmp	r6, #BOOT_FROM_NAND
	bne	check_from_spi
#ifdef CONFIG_GENERIC_NAND
	ldr	r0, =REG_BASE_NANDC
	ldr	r0, [r0, #HINFC504_BOOT_CFG]
	and	r0, #0x01
	cmp	r0, #0x01
	bne	check_from_nand

#ifdef CONFIG_RANDOMIZER_BOOT
check_from_nandr:
	ldr	r6, =BOOT_FROM_NANDR
	ldr	r2, =BOOT_RUN_START_ADDR
	str	r2, [r4, #REG_SC_GEN14]
	ldr	r2, =BOOT_FROM_NANDR
	str	r2, [r4, #REG_SC_GEN15]
	b	check_start_mode
#endif /* CONFIG_RANDOMIZER_BOOT */

check_from_nand:
	ldr	r2, =MEM_BASE_NAND        /* 0x2400_0000 */
	str	r2, [r4, #REG_SC_GEN14]
	mov	r2, #BOOT_FROM_NAND
	str	r2, [r4, #REG_SC_GEN15]
	b	check_start_mode
#endif /* CONFIG_GENERIC_NAND */

check_from_spi:
	cmp	r6, #BOOT_FROM_SPI
	bne	check_from_emmc
#ifdef CONFIG_GENERIC_SF
	ldr	r2, =MEM_BASE_SPI           /* 0x2600_0000 */
	str	r2, [r4, #REG_SC_GEN14]
	mov	r2, #BOOT_FROM_SPI
	str	r2, [r4, #REG_SC_GEN15]
	b	check_start_mode
#endif /* CONFIG_GENERIC_SF */
check_from_emmc:
	cmp	r6, #BOOT_FROM_EMMC
	bne	check_from_other
#ifdef CONFIG_GENERIC_MMC
	mov	r2, #(BOOT_RUN_START_ADDR + CONFIG_MMC_BOOT_ADDR)
	str	r2, [r4, #REG_SC_GEN14]
	mov	r2, #BOOT_FROM_EMMC
	str	r2, [r4, #REG_SC_GEN15]
	b	check_start_mode
#endif

/* boot from nor flash is not suport */
check_from_other:
	b	msg_bad_start_mode

check_start_mode:

	/* Check if I need jump to flash */
	mov	r0, pc, lsr#28             /* r0 = (pc >> 28) */
	cmp	r0, #0x0
	bne	check_ddr_run

	cmp	r6, #BOOT_FROM_NAND
	ldreq	pc, _clr_remap_nand_entry

	cmp	r6, #BOOT_FROM_SPI
	ldreq	pc, _clr_remap_spi_entry

	/* boot from emmc, I need jump after ddr_init,not here!*/
	cmp	r6, #BOOT_FROM_EMMC
	beq	do_clr_remap

	/* boot from nand randomizer */
	cmp	r6, #BOOT_FROM_NANDR
	beq	do_clr_remap
	b	msg_bad_start_mode  /*bug here*/

check_ddr_run:
	cmp	r0, #8
	bne	do_clr_remap
	mov	r2, #BOOT_FROM_DDR
	str	r2, [r4, #REG_SC_GEN15]

do_clr_remap:
	ldr	r0, [r4, #REG_SC_CTRL]  /* r4 = 0x101e_0000 */

	/* Set clear remap bit */
	orr	r0, #(1<<8)             /* r0 = (r0 | (1 << 8)) */
	str	r0, [r4, #REG_SC_CTRL]  /* p156 */
	ldr	sp, =STACK_TOP

	/* enable I-Cache now */
	mrc	p15, 0, r0, c1, c0, 0
	orr	r0, r0, #0x00001000     /* set bit 12 (I) I-Cache */
	mcr	p15, 0, r0, c1, c0, 0

	/* check if pmoc resume */
	ldr	r1, [r4, #REG_SC_GEN0]
	ldr	r2, =0x66031013          /* magic for pm */
	cmp	r1, r2
	bne	un_resume_start

resume_start:
	mov	r1, #0                   /* clear pm flag */
	str	r1, [r4, #REG_SC_GEN0]

	/* disable mcu */
	ldr	r0, =0x600bf000
	ldr	r1, [r0]
	bic	r1, r1, #0x1
	str	r1, [r0]

	/* disable timer0 */
	ldr	r0, =REG_BASE_TIMER01             /* r0 = 0x101e_2000 */
	mov	r1, #0
	str	r1, [r0, #REG_TIMER_CONTROL]

	/* disable WDG_RST */
	mov	r1, #0
	str	r1, [r4, #REG_SC_WDG_RST_CTRL]

	ldr	r0, _blank_zone_start
	ldr	r1, _TEXT_BASE
	sub	r0, r0, r1
	ldr	r1, [r4, #REG_SC_GEN14]
	add	r0, r0, r1
	mov	r1, #1                   /* flags: 0->normal 1->pm */
	mov	r2, #INIT_REG_ITEM1_ITEM2
	bl	init_registers

	ldr	r4, =REG_BASE_SCTL
	ldr	r0, [r4, #REG_SC_GEN9]
	mov	pc, r0

	/* Check if I'm running in ddr */
un_resume_start:
	ldr	r0, [r4, #REG_SC_GEN15]
	cmp	r0, #BOOT_FROM_DDR
	beq	relocate

	/* check if this chip is a ca chip or not */
	bl	get_ca_vendor_reg
	mov	r1, r0
	cmp	r1, #CA_TYPE_NO_CA /* r1 -> 0 means not a ca chip.*/
	/* if this is a ca chip, do not init item1 */
	bne	relocate

normal_init_item1:

#ifdef CONFIG_DDR_UNRESET
	ldr     r0, =0x600b8000
	ldr     r2, =0x600b8000
	ldr     r3, [r0]
	cmp     r3, r2
	moveq   r3, #1
	movne   r3, #0

	/* clear ddr3 reboot flag */
	mov     r2, #0
	str     r2, [r0]
#endif /* CONFIG_DDR_UNRESET */

	ldr	r0, _blank_zone_start
	ldr	r1, _TEXT_BASE
	sub	r0, r0, r1
	ldr	r1, [r4, #REG_SC_GEN14]
	add	r0, r0, r1
	mov	r1, #0x0                 /* flags: 0->normal 1->pm */

#ifdef CONFIG_DDR_UNRESET
	/* if reboot from kernel, go pm flow */
	cmp	r3, #1
	moveq	r1, #1
#endif /* CONFIG_DDR_UNRESET */

	mov	r2, #INIT_REG_ITEM1
	bl	init_registers
	b	normal_init_item2

relocate:                            /* relocate U-Boot to RAM */
	mov	r2, pc
	sub	r2, r2, #8
	ldr	r1, _armboot_start
	ldr	r0, _relocate
	sub	r1, r0, r1
	sub	r0, r2, r1
	str	r0, [r4, #REG_SC_GEN14]

normal_init_item2:
	/* in any case , we will init item2 here */
	ldr	r0, _blank_zone_start
	ldr	r1, _TEXT_BASE
	sub	r0, r0, r1
	ldr	r1, [r4, #REG_SC_GEN14]
	add	r0, r0, r1
#ifdef CONFIG_SHOW_REG_INFO
	bl	display_register_info
#endif /* CONFIG_SHOW_REG_INFO */
	mov	r1, #0x0              /* flags: 0->normal 1->pm */
	mov	r2, #INIT_REG_ITEM2   /* only init item2 */
	bl	init_registers

check_boot_mode:
	ldr	r4, =REG_BASE_SCTL
	ldr	r0, [r4, #REG_SC_GEN15]
	cmp	r0, #BOOT_FROM_EMMC
	beq	emmc_boot
#ifdef CONFIG_RANDOMIZER_BOOT
	cmp	r0, #BOOT_FROM_NANDR
	beq	nandr_boot
#endif /* CONFIG_RANDOMIZER_BOOT */
	b	copy_abort_code

emmc_boot:
#ifdef CONFIG_GENERIC_MMC
	ldr	r0, _TEXT_BASE
	ldr	r1, _bss_start
	sub	r1, r1, r0
	bl	emmc_boot_read
	b	jump_to_ddr
#endif
nandr_boot:
#ifdef CONFIG_RANDOMIZER_BOOT
	ldr	r0, _TEXT_BASE
	ldr	r1, _bss_start
	sub	r1, r1, r0
	bl	nand_read
#endif /* CONFIG_RANDOMIZER_BOOT */
jump_to_ddr:
	ldr	r4, =REG_BASE_SCTL
	ldr	r0, _TEXT_BASE
	str	r0, [r4, #REG_SC_GEN14]
	ldr	pc, _copy_abort_code

copy_abort_code:
	ldr	r4, =REG_BASE_SCTL
	ldr	r0, [r4, #REG_SC_GEN14]
	ldr	r1, =0
	ldr	r2, =0x40
	add	r2, r0, r2       /* r2 = TEXT_BASE + 0x100 */

copy_abort_code_loop:
	ldmia	r0!, {r3 - r10}
	stmia	r1!, {r3 - r10}
	cmp	r0, r2
	ble	copy_abort_code_loop

copy_to_ddr:
	/* relocate Boot to DDR */
	ldr	r4, =REG_BASE_SCTL
	ldr	r0, [r4, #REG_SC_GEN14]

	/*now, r0 stores __reset offset from where we get started*/
	ldr	r1, _TEXT_BASE        /* r1 stores where we will copy uboot to */

	/* compare source and target address, if equal no copy to target address */
	cmp	r0, r1
	beq	stack_setup

	ldr	r2, _armboot_start
	ldr	r3, _bss_start
	sub	r2, r3, r2      /* r2 <- size of armboot */
	add	r2, r0, r2      /* r2 <- source end address */

	/* copy code to ddr _TEXT_BASE start place */
copy_to_ddr_loop:                   /* copy 32 bytes at a time */
	ldmia	r0!, {r3 - r10}    /* copy from source address [r0] */
	stmia	r1!, {r3 - r10}    /* copy to   target address [r1] */
	cmp	r0, r2            /* until source end addreee [r2] */
	ble	copy_to_ddr_loop

	/* Set up the stack */
stack_setup:
	ldr	r0, _TEXT_BASE                       @ upper 128 KiB: relocated uboot
	sub	r0, r0, #CONFIG_BOOTHEAD_GAP         @ boot head gap
	sub	r0, r0, #CONFIG_SYS_MALLOC_LEN       @ malloc area
	sub	r0, r0, #CONFIG_SYS_GBL_DATA_SIZE    @ bdinfo
	sub	sp, r0, #12              @ leave 3 words for abort-stack
	and	sp, sp, #~7              @ 8 byte alinged for (ldr/str)d

	/* Clear BSS (if any). Is below tx (watch load addr - need space) */
clear_bss:
	ldr	r0, _bss_start      @ find start of bss segment
	ldr	r1, _bss_end        @ stop here
	mov	r2, #0x00000000     @ clear value

clear_bss_loop:
	str	r2, [r0]        @ clear BSS location
	cmp	r0, r1          @ are we at the end yet
	add	r0, r0, #4      @ increment clear index pointer
	bne	clear_bss_loop  @ keep clearing till at end

	mov	r0, #0
	mcr	p15, 0, r0, c7, c5, 4
	mcr	p15, 0, r0, c7, c5, 0
	mcr	p15, 0, r0, c7, c5, 6

	ldr	pc, _start_armboot  @ jump to C code

_start_armboot: .word start_armboot

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
.align	2
msg_system_startup:
	mov	r5, lr
	add	r0, pc, #4
	bl	uart_early_puts
	mov	pc, r5
L10:
	.ascii "\r\n\r\nSystem startup\r\n\0"

.align	2
msg_bad_start_mode:
	add	r0, pc, #4
	bl	uart_early_puts
	b	reset
L20:
	.ascii "*** Not support current start mode\r\n\0"
.align	2

#ifdef CONFIG_SHOW_REG_INFO
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@
@  int display_regv110_info(unsigned int base);
@
.align	2
.global	display_regv110_info
.type	display_regv110_info, %function
display_regv110_info:
	push	{r0, r4, lr}
	mov	r4, r0
	add	r0, pc, #4
	bl	uart_early_puts
	b	display_regv110_info_L0
display_regv110_info_str0:
	.ascii "\r\nReg Version:   v1.1.0" "\r\nReg Time:      \0"
.align 2
display_regv110_info_L0:
	add	r0, r4, #0x40
	bl	uart_early_puts
	add	r0, pc, #4
	bl	uart_early_puts
	b	display_regv110_info_L1
display_regv110_info_str1:
	.ascii "\r\nReg Name:      \0"
.align 2
display_regv110_info_L1:
	add	r0, r4, #0x52
	bl	uart_early_puts
	pop	{r0, r4, pc}

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@
@  int display_regunknow_info(unsigned int base);
@
.align	2
.global	display_regunknow_info
.type	display_regunknow_info, %function
display_regunknow_info:
	push	{r0, lr}
	add	r0, pc, #4
	bl	uart_early_puts
	b	display_regunknow_info_L0
display_regunknow_info_str0:
	.ascii "Unknow register table\r\n\0"
.align 2
display_regunknow_info_L0:
	pop	{r0, pc}

#endif /* CONFIG_SHOW_REG_INFO */
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

.align	2
.globl _text_end
_text_end: .word __text_end

