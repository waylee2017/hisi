@/******************************************************************************
@ *    Copyright (c) 2009-2012 by Hisi.
@ *    All rights reserved.
@ * ***
@ *    Create by Czyong. 2012-09-07
@ *
@******************************************************************************/

#include <config.h>

@******************************************************************************************
@
@  void uart_early_init(void);
@
.text
.align	2
.global	uart_early_init
.type	uart_early_init, %function
uart_early_init:
	@only for MV330, first set uart clock to 85700000
#if (CONFIG_CHIP_TYPE == hi3716mv330)
	ldr	a4, uart_sel_adr
	ldr	a3, [a4, #0]
	orr	a3, a3, #0x20000000
	str	a3, [a4, #0]
#else
	@only for MV310, first set uart clock to 83300000
	ldr	a4, uart_sel_adr
	ldr	a3, [a4, #0]
	orr	a3, a3, #0x20000000
	str	a3, [a4, #0]

	ldr	a4, uart_sel_source_adr
	ldr	a3, [a4, #0]
	orr	a3, a3, #0x20
	str	a3, [a4, #0]
#endif

	ldr	a4, uart_base_addr_L0
	mov	a3, #0
	str	a3, [a4, #48]
	ldr	a1, =CONFIG_PL011_IBRD
	add	a3, a3, a1
	str	a3, [a4, #36]
	ldr	a3, =CONFIG_PL011_FBRD
	str	a3, [a4, #40]
	movw	a3, #112
	str	a3, [a4, #44]
	movw	a3, #769
	str	a3, [a4, #48]
	bx	lr
uart_base_addr_L0:
	.word REG_BASE_UART0
uart_sel_adr:
	.word REG_BASE_SCTL + REG_SC_SRST_REQ_CTRL

uart_sel_source_adr:
	.word HI3716MV310_PERI_CRG26

@******************************************************************************************
@
@  void uart_early_puts(const char *ss);
@
.align	2
.global	uart_early_puts
.type	uart_early_puts, %function
uart_early_puts:
#if !defined(CONFIG_SUPPORT_CA_RELEASE)
	ldr	a2, uart_base_addr_L1
	b	next_char
output:
	ldr	a4, [a2, #24]
	tst	a4, #32
	bne	output
	str	a3, [a2, #0]
	add	a1, a1, #1
next_char:
	ldrb	a3, [a1]
	cmp	a3, #0
	bne	output

	ldr	a3, =0x3000
delay_wait:
	sub	a3, #1
	cmp	a3, #0
	bne	delay_wait
#endif /* CONFIG_SUPPORT_CA_RELEASE */
	bx	lr
uart_base_addr_L1:
	.word REG_BASE_UART0

#if 1
@******************************************************************************************
@
@  void uart_early_put_hex(int hex);
@
@  call example:
@    mov	r0, sp
@    bl	uart_early_put_hex
@
.align	2
.global	uart_early_put_hex
.type	uart_early_put_hex, %function
uart_early_put_hex:
#if !defined(CONFIG_SUPPORT_CA_RELEASE)
	ldr	a2, uart_base_addr_L2
	mov	a3, #28
wait2:
	ldr	a4, [a2, #24]
	tst	a4, #32
	bne	wait2

	mov	a4, #0xF
	and	a4, a4, a1, lsr a3
	cmp	a4, #9
	addle	a4, a4, #0x30	@ a4 = a4 + '0'
	addgt	a4, a4, #55	@ a4 = a4 - 10 + 'A'
	str	a4, [a2, #0]
	cmp	a3, #0
	bxeq	lr
	sub	a3, a3, #4
	b	wait2

#endif /* CONFIG_SUPPORT_CA_RELEASE */
	bx	lr
uart_base_addr_L2:
	.word REG_BASE_UART0
#endif

@******************************************************************************************
@
@  void uart_early_putc(int chr);
@
@  call example:
@    mov	r0, #'A'
@    bl	uart_early_putc
@
.align	2
.global	uart_early_putc
.type	uart_early_putc, %function
uart_early_putc:
#if !defined(CONFIG_SUPPORT_CA_RELEASE)
	ldr	a2, uart_base_addr_L3
wait3:
	ldr	a4, [a2, #24]
	tst	a4, #32
	bne	wait3
	str	a1, [a2, #0]

#endif /* CONFIG_SUPPORT_CA_RELEASE */
	bx	lr
uart_base_addr_L3:
	.word REG_BASE_UART0
