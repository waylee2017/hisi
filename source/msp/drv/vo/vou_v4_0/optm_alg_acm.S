#ifdef HI_DISP_ACM_SUPPORT

#include "hi_asm_define.h"
	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"optm_alg_acm.c"
	.text
	.align	2
	.global	OPTM_AA_SetAcmEnable
	.type	OPTM_AA_SetAcmEnable, %function
OPTM_AA_SetAcmEnable:
	UNWIND(.fnstart)
.LFB1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r4, r0, #0
	mov	r5, r1
	bne	.L8
.L2:
	mvn	r0, #0
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L8:
	ldr	r6, [r4, #4]
	cmp	r6, #1
	bne	.L2
	cmp	r1, #1
	beq	.L3
	mov	r1, #0
	ldr	r0, [r4, #0]
	mov	r2, r1
	bl	Vou_SetAcmEnableExt
	mov	r1, r6
	ldr	r0, [r4, #0]
	mov	r2, #0
	bl	Vou_SetAcmEnableExt
	ldr	r0, [r4, #0]
	mov	r1, #2
	mov	r2, #0
	bl	Vou_SetAcmEnableExt
	ldr	r0, [r4, #0]
	mov	r1, #3
	mov	r2, #0
	bl	Vou_SetAcmEnableExt
.L4:
	str	r5, [r4, #8]
	mov	r0, #0
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L3:
	ldr	r0, [r4, #0]
	mov	r1, #0
	ldr	r2, [r4, #12]
	bl	Vou_SetAcmEnableExt
	ldr	r0, [r4, #0]
	mov	r1, r5
	ldr	r2, [r4, #28]
	bl	Vou_SetAcmEnableExt
	ldr	r0, [r4, #0]
	ldr	r2, [r4, #44]
	mov	r1, #2
	bl	Vou_SetAcmEnableExt
	ldr	r0, [r4, #0]
	mov	r1, #3
	ldr	r2, [r4, #60]
	bl	Vou_SetAcmEnableExt
	b	.L4
	UNWIND(.fnend)
	.size	OPTM_AA_SetAcmEnable, .-OPTM_AA_SetAcmEnable
	.align	2
	.global	OPTM_AA_InitAcm
	.type	OPTM_AA_InitAcm, %function
OPTM_AA_InitAcm:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #8)
	sub	sp, sp, #8
	add	r7, r1, #12
	mov	r6, #1
	mov	r4, r1
	mov	r5, r0
	str	r6, [r1, #76]
	mov	r0, r7
	mov	r1, r6
	bl	OPTM_ALG_InitAcmInfo
	mov	r0, r5
	ldr	r2, [r4, #12]
	mov	r1, #0
	bl	Vou_SetAcmEnableExt
	add	r1, r4, #20
	mov	ip, sp
	ldmia	r7, {r2, r3}
	ldmia	r1, {r0, r1}
	stmia	ip, {r0, r1}
	mov	r0, r5
	mov	r1, #0
	bl	Vou_SetAcmCoefExt
	mov	r0, r5
	mov	r1, r6
	ldr	r2, [r4, #28]
	bl	Vou_SetAcmEnableExt
	add	r2, r4, #36
	add	r3, r4, #28
	mov	ip, sp
	ldmia	r2, {r0, r1}
	ldmia	r3, {r2, r3}
	stmia	ip, {r0, r1}
	mov	r1, r6
	mov	r0, r5
	bl	Vou_SetAcmCoefExt
	mov	r0, r5
	ldr	r2, [r4, #44]
	mov	r1, #2
	bl	Vou_SetAcmEnableExt
	add	r2, r4, #52
	add	r3, r4, #44
	mov	ip, sp
	ldmia	r2, {r0, r1}
	ldmia	r3, {r2, r3}
	stmia	ip, {r0, r1}
	mov	r0, r5
	mov	r1, #2
	bl	Vou_SetAcmCoefExt
	mov	r0, r5
	ldr	r2, [r4, #60]
	mov	r1, #3
	bl	Vou_SetAcmEnableExt
	add	r2, r4, #68
	add	r3, r4, #60
	mov	ip, sp
	ldmia	r2, {r0, r1}
	ldmia	r3, {r2, r3}
	stmia	ip, {r0, r1}
	mov	r0, r5
	mov	r1, #3
	bl	Vou_SetAcmCoefExt
	stmia	r4, {r5, r6}	@ phole stm
	mov	r0, #0
	str	r6, [r4, #8]
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_InitAcm, .-OPTM_AA_InitAcm
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
#endif

