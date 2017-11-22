#include <config.h>
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@
@  void ddr_training_print(int type, int num);
@
@
.align	2
.global	ddr_training_print
.type	ddr_training_print, %function
ddr_training_print:
#ifdef CONFIG_SUPPORT_CA_RELEASE
	bx	lr
#else
	mov     r5, lr	
	mov     r6, r1
	cmp	r0, #32
	movge	r0, #33	@ if type >=33, set to 33, WRONG type, r0 = 1 ~ 32
	cmp	r0, #1
	movlt	r0, #33	@ if type < 1, set to 33
	sub	r0, #1	@ r0 = 0 ~ 6
	lsl	r0, r0, #3	@ 4Bytes per error
	add     r1, pc, #0x20
	add	r0, r1
	bl      uart_early_puts
	mov     r0, r6
	bl      uart_early_put_hex
	mov     r0, #'\r'
	bl      uart_early_putc
	mov     r0, #'\n'
	bl      uart_early_putc
	mov     pc, r5

						
.align	2
SW_WL_ERR_PHY0:
	.ascii "PHY0SWL\0"
.align	2
SW_GATE_ERR_PHY0:
	.ascii "PHY0SGA\0"
.align	2
HW_GATE_ERR_PHY0:
	.ascii "PHY0HGA\0"
.align	2
HW_RDET_ERR_PHY0:
	.ascii "PHY0HRD\0"
.align	2
SW_WDET_ERR_PHY0:
	.ascii "PHY0SWD\0"
.align	2
SW_RDEL_ERR_PHY0:
	.ascii "PHY0SRD\0"
.align	2
UNKOWN_7_PHY0:
	.ascii "PHY0U07\0"
.align	2
UNKOWN_8_PHY0:
	.ascii "PHY0U08\0"
.align	2
UNKOWN_9_PHY0:
	.ascii "PHY0U09\0"
.align	2
UNKOWN_10_PHY0:
	.ascii "PHY0U10\0"
.align	2
UNKOWN_11_PHY0:
	.ascii "PHY0U11\0"
.align	2
UNKOWN_12_PHY0:
	.ascii "PHY0U12\0"
.align	2
UNKOWN_13_PHY0:
	.ascii "PHY0U13\0"
.align	2
UNKOWN_14_PHY0:
	.ascii "PHY0U14\0"
.align	2
UNKOWN_15_PHY0:
	.ascii "PHY0U15\0"
.align	2
UNKOWN_16_PHY0:
	.ascii "PHY0U16\0"

.align	2
SW_WL_ERR_PHY1:
	.ascii "PHY1SWL\0"
.align	2
SW_GATE_ERR_PHY1:
	.ascii "PHY1SGA\0"
.align	2
HW_GATE_ERR_PHY1:
	.ascii "PHY1HGA\0"
.align	2
HW_RDET_ERR_PHY1:
	.ascii "PHY1HRD\0"
.align	2
SW_WDET_ERR_PHY1:
	.ascii "PHY1SWD\0"
.align	2
SW_RDEL_ERR_PHY1:
	.ascii "PHY1SRD\0"
.align	2
UNKOWN_7_PHY1:
	.ascii "PHY1U07\0"
.align	2
UNKOWN_8_PHY1:
	.ascii "PHY1U08\0"
.align	2
UNKOWN_9_PHY1:
	.ascii "PHY1U09\0"
.align	2
UNKOWN_10_PHY1:
	.ascii "PHY1U10\0"
.align	2
UNKOWN_11_PHY1:
	.ascii "PHY1U11\0"
.align	2
UNKOWN_12_PHY1:
	.ascii "PHY1U12\0"
.align	2
UNKOWN_13_PHY1:
	.ascii "PHY1U13\0"
.align	2
UNKOWN_14_PHY1:
	.ascii "PHY1U14\0"
.align	2
UNKOWN_15_PHY1:
	.ascii "PHY1U15\0"
.align	2
UNKOWN_16_PHY1:
	.ascii "PHY1U16\0"
.align	2
WRONG:
	.ascii "INVDERR\0"
#endif
