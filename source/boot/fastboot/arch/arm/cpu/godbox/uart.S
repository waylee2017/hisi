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
	ldr	a4, uart_base_addr_L0
	mov	a3, #0
	str	a3, [a4, #48]
	add	a3, a3, #29
	str	a3, [a4, #36]
	mov	a3, #19
	str	a3, [a4, #40]
	add	a3, a3, #93
	str	a3, [a4, #44]
	movw	a3, #769
	str	a3, [a4, #48]
	bx	lr
uart_base_addr_L0:
	.word REG_BASE_UART0

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

#if 0
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
#endif
