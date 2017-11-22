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
	.file	"optm_alg_api.c"
	.text
	.align	2
	.type	VouTranlateZoomCoef, %function
VouTranlateZoomCoef:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #8
	bls	.L2
	mov	r5, #6
.L4:
	mov	ip, #0
	mov	r6, ip
.L3:
	add	r1, r2, ip, asl #4
	ldr	r7, [r0, #0]
	add	r3, r1, #8
	add	ip, ip, #1
	ldrh	r8, [r1, #4]
	cmp	ip, r5
	bfi	r8, r7, #0, #10
	strh	r8, [r1, #4]	@ movhi
	ldr	r4, [r0, #4]
	ldr	r8, [r1, #4]
	bfi	r8, r4, #10, #10
	str	r8, [r1, #4]
	ldr	r7, [r0, #8]
	ldrh	r4, [r1, #6]
	bfi	r4, r7, #4, #10
	strh	r4, [r1, #6]	@ movhi
	ldr	r7, [r0, #12]
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	mov	r8, r7, lsr #2
	bfi	r4, r7, #6, #2
	strb	r8, [r1, #8]
	strb	r4, [r1, #7]
	ldr	r8, [r1, #8]
	ldr	r4, [r0, #16]
	bfi	r8, r4, #8, #10
	str	r8, [r1, #8]
	ldr	r7, [r0, #20]
	ldrh	r4, [r1, #10]
	bfi	r4, r7, #2, #10
	strh	r4, [r1, #10]	@ movhi
	ldr	r4, [r0, #24]
	ldrb	r8, [r1, #11]	@ zero_extendqisi2
	bfi	r8, r4, #4, #4
	strb	r8, [r1, #11]
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	mov	r7, r4, lsr #4
	ldrh	r4, [r3, #6]
	bfi	r1, r7, #0, #6
	strb	r1, [r3, #4]
	ldr	r8, [r0, #28]
	ldrh	r7, [r3, #4]
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bfi	r7, r8, #6, #10
	strh	r7, [r3, #4]	@ movhi
	ldr	r7, [r0, #32]
	bfi	r4, r7, #0, #10
	strh	r4, [r3, #6]	@ movhi
	ldr	r7, [r0, #36]
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	mov	r8, r7, lsr #6
	bfi	r4, r7, #2, #6
	bfi	r1, r8, #0, #4
	strb	r4, [r3, #7]
	strb	r1, [r3, #8]
	ldr	r4, [r0, #40]
	ldrh	r1, [r3, #8]
	bfi	r1, r4, #4, #10
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, [r0, #44]
	add	r0, r0, #48
	ldr	r1, [r3, #8]
	bfi	r1, r4, #14, #10
	str	r1, [r3, #8]
	strb	r6, [r3, #11]
	bcc	.L3
.L5:
	mov	r5, r5, asl #4
	mov	r0, #0
	str	r5, [r2, #0]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L2:
	movw	ip, #:lower16:.LANCHOR0
	movt	ip, #:upper16:.LANCHOR0
	movw	r5, #:lower16:-1431655765
	movt	r5, #:upper16:-1431655765
	ldr	r3, [ip, r1, asl #2]
	add	ip, r3, r3, asl #3
	mov	r1, ip, asl #1
	umull	ip, r3, r5, r1
	movs	r5, r3, lsr #3
	bne	.L4
	b	.L5
	UNWIND(.fnend)
	.size	VouTranlateZoomCoef, .-VouTranlateZoomCoef
	.align	2
	.global	OPTM_ALG_API_TranZoomCoefAlign128bit
	.type	OPTM_ALG_API_TranZoomCoefAlign128bit, %function
OPTM_ALG_API_TranZoomCoefAlign128bit:
	UNWIND(.fnstart)
.LFB7:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #0
	beq	.L10
	ldrh	r5, [r0, #0]
	mov	r4, #1
	cmp	r4, r1
	sub	r3, r1, #1
	and	ip, r3, r4
	mov	r3, #2
	strh	r5, [r2, #0]	@ movhi
	bcs	.L10
	cmp	ip, #0
	beq	.L11
	ldrh	r5, [r0, #2]
	cmp	r3, r1
	mov	r4, r3
	mov	r3, #4
	strh	r5, [r2, #2]	@ movhi
	bcs	.L10
.L11:
	ldrh	r5, [r0, r3]
	add	ip, r3, #2
	add	r4, r4, #2
	cmp	r4, r1
	strh	r5, [r2, r3]	@ movhi
	ldrh	r3, [r0, ip]
	strh	r3, [r2, ip]	@ movhi
	add	r3, ip, #2
	bcc	.L11
.L10:
	mov	r0, r1, asl #1
	ldmfd	sp, {r4, r5, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_API_TranZoomCoefAlign128bit, .-OPTM_ALG_API_TranZoomCoefAlign128bit
	.align	2
	.global	OPTM_ALG_API_TranZoomCoefAlign128bitTI
	.type	OPTM_ALG_API_TranZoomCoefAlign128bitTI, %function
OPTM_ALG_API_TranZoomCoefAlign128bitTI:
	UNWIND(.fnstart)
.LFB8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r2, #0
	beq	.L20
	ldrh	r4, [r0, #0]
	strh	r4, [r3, #0]	@ movhi
	mov	r4, #2
	ldrh	ip, [r0, #2]
	cmp	r4, r2
	add	r0, r0, #4
	strh	ip, [r3, #2]	@ movhi
	sub	ip, r2, #1
	ldrh	r5, [r1, #0]
	ubfx	ip, ip, #1, #1
	strh	r5, [r3, #4]	@ movhi
	ldrh	r5, [r1, #2]
	add	r1, r1, #4
	strh	r5, [r3, #6]	@ movhi
	add	r3, r3, #8
	bcs	.L20
	cmp	ip, #0
	beq	.L21
	ldrh	r4, [r0, #0]
	strh	r4, [r3, #0]	@ movhi
	mov	r4, #4
	ldrh	r5, [r0, #2]
	cmp	r4, r2
	add	r0, r0, r4
	strh	r5, [r3, #2]	@ movhi
	ldrh	r5, [r1, #0]
	strh	r5, [r3, #4]	@ movhi
	ldrh	ip, [r1, #2]
	add	r1, r1, r4
	strh	ip, [r3, #6]	@ movhi
	add	r3, r3, #8
	bcs	.L20
.L21:
	ldrh	ip, [r0, #0]
	add	r4, r4, #4
	cmp	r4, r2
	strh	ip, [r3, #0]	@ movhi
	add	ip, r3, #8
	ldrh	r6, [r0, #2]
	strh	r6, [r3, #2]	@ movhi
	add	r6, r0, #4
	ldrh	r5, [r1, #0]
	strh	r5, [r3, #4]	@ movhi
	ldrh	r5, [r1, #2]
	strh	r5, [r3, #6]	@ movhi
	ldrh	r5, [r0, #4]
	strh	r5, [r3, #8]	@ movhi
	add	r5, r1, #4
	ldrh	r0, [r6, #2]
	strh	r0, [ip, #2]	@ movhi
	add	r0, r6, #4
	ldrh	r3, [r1, #4]
	strh	r3, [ip, #4]	@ movhi
	add	r3, ip, #8
	ldrh	r1, [r5, #2]
	strh	r1, [ip, #6]	@ movhi
	add	r1, r5, #4
	bcc	.L21
.L20:
	mov	r0, r2, asl #2
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_API_TranZoomCoefAlign128bitTI, .-OPTM_ALG_API_TranZoomCoefAlign128bitTI
	.align	2
	.type	VouTranlateGfxTiHorZoomCoef, %function
VouTranlateGfxTiHorZoomCoef:
	UNWIND(.fnstart)
.LFB9:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #76)
	sub	sp, sp, #76
	mov	ip, r0
	ldrh	r9, [r2, #4]
	ldrh	r5, [ip], #2
	mov	r6, r1
	ldrb	r7, [r2, #12]	@ zero_extendqisi2
	bfi	r9, r5, #0, #10
	strh	r9, [r2, #4]	@ movhi
	ldrh	r0, [r0, #2]
	add	r8, ip, #2
	ldr	r3, [r2, #4]
	add	r9, r8, #2
	add	r4, r9, #2
	str	r4, [fp, #-68]
	bfi	r3, r0, #10, #10
	str	r3, [r2, #4]
	ldrh	r0, [r6], #2
	add	sl, r4, #2
	str	sl, [fp, #-56]
	mov	sl, r3, lsr #16
	bfi	sl, r0, #4, #10
	strh	sl, [r2, #6]	@ movhi
	ldrsh	r1, [r1, #2]
	add	r0, r6, #2
	ldrb	sl, [r2, #7]	@ zero_extendqisi2
	add	r3, r0, #2
	str	r3, [fp, #-64]
	add	r3, r3, #2
	bfi	sl, r1, #6, #2
	str	r3, [fp, #-60]
	strb	sl, [r2, #7]
	mov	sl, r1, lsr #2
	strb	sl, [r2, #8]
	mov	r3, #0
	ldrh	r1, [ip, #2]
	ldr	sl, [fp, #-60]
	ldr	ip, [fp, #-56]
	str	r1, [fp, #-72]
	add	sl, sl, #2
	add	r1, ip, #2
	str	sl, [fp, #-52]
	ldr	ip, [r2, #8]
	add	sl, sl, #2
	str	sl, [fp, #-48]
	add	sl, r1, #2
	str	sl, [fp, #-112]
	ldr	sl, [fp, #-72]
	ldrh	r5, [r2, #14]
	bfi	ip, sl, #8, #10
	ldr	sl, [fp, #-112]
	str	ip, [r2, #8]
	add	sl, sl, #2
	ldrh	r8, [r8, #2]
	str	sl, [fp, #-108]
	mov	ip, ip, lsr #16
	ldr	sl, [fp, #-48]
	bfi	ip, r8, #2, #10
	ldrb	r4, [r2, #16]	@ zero_extendqisi2
	add	sl, sl, #2
	str	sl, [fp, #-104]
	strh	ip, [r2, #10]	@ movhi
	add	ip, sl, #2
	ldr	sl, [fp, #-108]
	ldrsh	r6, [r6, #2]
	add	r8, sl, #2
	str	ip, [fp, #-100]
	str	r8, [fp, #-96]
	add	sl, r8, #2
	ldr	r8, [fp, #-100]
	ldrb	ip, [r2, #11]	@ zero_extendqisi2
	str	sl, [fp, #-92]
	add	sl, r8, #2
	str	sl, [fp, #-88]
	bfi	ip, r6, #4, #4
	strb	ip, [r2, #11]
	mov	r8, r6, lsr #4
	ldr	ip, [fp, #-88]
	bfi	r7, r8, #0, #6
	strb	r7, [r2, #12]
	add	sl, ip, #2
	str	sl, [fp, #-84]
	ldrh	ip, [r0, #2]
	ldr	r0, [fp, #-92]
	ldr	r7, [fp, #-84]
	add	sl, r0, #2
	ldrh	r0, [r2, #12]
	add	r6, sl, #2
	add	r8, r7, #2
	str	r6, [fp, #-80]
	add	r7, r6, #2
	str	r8, [fp, #-76]
	bfi	r0, ip, #6, #10
	str	r7, [fp, #-72]
	strh	r0, [r2, #12]	@ movhi
	ldrh	r8, [r9, #2]
	ldr	r0, [fp, #-76]
	bfi	r5, r8, #0, #10
	strh	r5, [r2, #14]	@ movhi
	ldr	r5, [fp, #-68]
	add	r6, r0, #2
	add	ip, r6, #2
	mov	r0, r3
	ldrsh	r7, [r5, #2]
	ldrb	r5, [r2, #15]	@ zero_extendqisi2
	mov	r8, r7, lsr #6
	bfi	r5, r7, #2, #6
	ldr	r7, [fp, #-64]
	bfi	r4, r8, #0, #4
	strb	r5, [r2, #15]
	ldr	r5, [fp, #-60]
	strb	r4, [r2, #16]
	ldrh	r8, [r7, #2]
	ldrh	r4, [r2, #16]
	bfi	r4, r8, #4, #10
	strh	r4, [r2, #16]	@ movhi
	ldrh	r7, [r5, #2]
	ldr	r8, [r2, #16]
	ldrh	r5, [r2, #20]
	bfi	r8, r7, #14, #10
	str	r8, [r2, #16]
	ldr	r4, [fp, #-56]
	strb	r3, [r2, #19]
	ldrh	r8, [r4, #2]
	ldrb	r4, [r2, #28]	@ zero_extendqisi2
	bfi	r5, r8, #0, #10
	strh	r5, [r2, #20]	@ movhi
	ldrh	r7, [r1, #2]
	ldr	r5, [r2, #20]
	ldr	r8, [fp, #-52]
	bfi	r5, r7, #10, #10
	str	r5, [r2, #20]
	ldrh	r1, [r2, #30]
	ldrh	r7, [r8, #2]
	mov	r8, r5, lsr #16
	ldr	r5, [fp, #-48]
	bfi	r8, r7, #4, #10
	strh	r8, [r2, #22]	@ movhi
	ldrsh	r7, [r5, #2]
	ldrb	r5, [r2, #23]	@ zero_extendqisi2
	bfi	r5, r7, #6, #2
	strb	r5, [r2, #23]
	ldr	r5, [fp, #-112]
	mov	r8, r7, lsr #2
	strb	r8, [r2, #24]
	ldr	r8, [fp, #-108]
	ldrh	r7, [r5, #2]
	ldr	r5, [r2, #24]
	bfi	r5, r7, #8, #10
	str	r5, [r2, #24]
	ldrh	r7, [r8, #2]
	mov	r8, r5, lsr #16
	ldr	r5, [fp, #-104]
	bfi	r8, r7, #2, #10
	strh	r8, [r2, #26]	@ movhi
	ldrsh	r7, [r5, #2]
	ldrb	r5, [r2, #27]	@ zero_extendqisi2
	mov	r8, r7, lsr #4
	bfi	r5, r7, #4, #4
	ldr	r7, [fp, #-100]
	bfi	r4, r8, #0, #6
	ldr	r8, [fp, #-96]
	strb	r4, [r2, #28]
	strb	r5, [r2, #27]
	ldrh	r4, [r2, #28]
	ldrh	r5, [r7, #2]
	bfi	r4, r5, #6, #10
	strh	r4, [r2, #28]	@ movhi
	ldrh	r5, [r8, #2]
	bfi	r1, r5, #0, #10
	strh	r1, [r2, #30]	@ movhi
	ldr	r1, [fp, #-92]
	ldrb	r8, [r2, #32]	@ zero_extendqisi2
	ldrb	r7, [r2, #31]	@ zero_extendqisi2
	ldrsh	r4, [r1, #2]
	ldr	r1, [fp, #-88]
	bfi	r7, r4, #2, #6
	strb	r7, [r2, #31]
	mov	r5, r4, lsr #6
	ldrh	r4, [r2, #36]
	bfi	r8, r5, #0, #4
	strb	r8, [r2, #32]
	ldr	r8, [fp, #-84]
	ldrh	r7, [r1, #2]
	ldrh	r5, [r2, #32]
	ldrb	r1, [r2, #44]	@ zero_extendqisi2
	bfi	r5, r7, #4, #10
	strh	r5, [r2, #32]	@ movhi
	ldrh	r7, [r8, #2]
	ldr	r5, [r2, #32]
	bfi	r5, r7, #14, #10
	str	r5, [r2, #32]
	strb	r3, [r2, #35]
	ldrh	r8, [sl, #2]
	ldr	sl, [fp, #-80]
	bfi	r4, r8, #0, #10
	strh	r4, [r2, #36]	@ movhi
	ldr	r4, [r2, #36]
	ldrh	r7, [sl, #2]
	bfi	r4, r7, #10, #10
	ldr	r7, [fp, #-76]
	str	r4, [r2, #36]
	mov	r8, r4, lsr #16
	ldrh	r5, [r7, #2]
	bfi	r8, r5, #4, #10
	strh	r8, [r2, #38]	@ movhi
	ldrsh	r5, [r6, #2]
	ldrb	r8, [r2, #39]	@ zero_extendqisi2
	bfi	r8, r5, #6, #2
	strb	r8, [r2, #39]
	ldr	r8, [fp, #-72]
	mov	r4, r5, lsr #2
	strb	r4, [r2, #40]
	ldr	r4, [r2, #40]
	ldrh	r6, [r8, #2]
	bfi	r4, r6, #8, #10
	str	r4, [r2, #40]
	ldrh	r5, [r8, #4]
	mov	r6, r4, lsr #16
	bfi	r6, r5, #2, #10
	strh	r6, [r2, #42]	@ movhi
	ldrsh	r5, [ip, #2]
	ldrb	r4, [r2, #43]	@ zero_extendqisi2
	mov	r6, r5, lsr #4
	bfi	r4, r5, #4, #4
	bfi	r1, r6, #0, #6
	strb	r4, [r2, #43]
	strb	r1, [r2, #44]
	ldrh	r4, [ip, #4]
	ldrh	r1, [r2, #44]
	ldrb	ip, [r2, #48]	@ zero_extendqisi2
	bfi	r1, r4, #6, #10
	strh	r1, [r2, #44]	@ movhi
	ldrh	r1, [r2, #46]
	bfi	ip, r3, #0, #4
	strb	ip, [r2, #48]
	mov	r4, #48
	ldrh	ip, [r2, #48]
	bfi	r1, r3, #0, #10
	str	r4, [r2, #0]
	bfi	ip, r3, #4, #10
	strh	ip, [r2, #48]	@ movhi
	ldr	ip, [r2, #48]
	mov	r4, r1, lsr #8
	strh	r1, [r2, #46]	@ movhi
	bfi	r4, r3, #2, #6
	bfi	ip, r3, #14, #10
	strb	r4, [r2, #47]
	str	ip, [r2, #48]
	strb	r3, [r2, #51]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouTranlateGfxTiHorZoomCoef, .-VouTranlateGfxTiHorZoomCoef
	.align	2
	.global	OPTM_ALG_API_Rgb2Yuv
	.type	OPTM_ALG_API_Rgb2Yuv, %function
OPTM_ALG_API_Rgb2Yuv:
	UNWIND(.fnstart)
.LFB19:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #12)
	sub	sp, sp, #12
	ldrb	sl, [r0, #0]	@ zero_extendqisi2
	mvn	ip, #147
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	movw	r9, #291
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	movw	r7, #439
	mul	ip, ip, sl
	movw	r3, #:lower16:274877907
	mul	r4, r9, r5
	movt	r3, #:upper16:274877907
	mul	r9, r7, r2
	mov	r6, #368
	mul	r7, r7, sl
	rsb	r0, r5, r5, asl #6
	mul	r6, r6, r5
	mov	r0, r0, asl #3
	smull	r8, r5, r3, ip
	str	r7, [fp, #-52]
	smull	r8, r4, r3, r4
	mov	r8, #98
	mul	r8, r8, r2
	add	r7, r2, r2, asl #3
	mov	ip, ip, asr #31
	add	sl, sl, sl, asl #8
	rsb	r2, r2, r7, asl #3
	smull	r7, r9, r3, r9
	rsb	r7, ip, r5, asr #6
	str	r8, [fp, #-48]
	smull	r8, r6, r3, r6
	smull	r5, r8, r3, r0
	sub	r5, r7, r4, lsr #6
	ldr	r4, [fp, #-52]
	sub	ip, r5, #128
	smull	r7, sl, r3, sl
	add	ip, ip, r9, lsr #6
	smull	r4, r5, r3, r4
	mov	r0, r0, asr #31
	smull	r7, r4, r3, r2
	uxtb	ip, ip
	ldr	r7, [fp, #-48]
	rsb	r0, r0, r8, asr #6
	mov	r6, r6, asr #6
	mov	r2, r2, asr #31
	cmp	ip, #15
	add	sl, r0, sl, lsr #6
	smull	r7, r3, r3, r7
	rsb	r5, r6, r5, lsr #6
	sub	r4, r2, r4, asr #6
	add	sl, sl, #16
	sub	r5, r5, #128
	strb	ip, [r1, #1]
	add	r4, r5, r4
	strb	r4, [r1, #2]
	add	r3, sl, r3, lsr #6
	strb	r3, [r1, #0]
	movls	r3, #16
	strlsb	r3, [r1, #1]
	bls	.L33
	cmp	ip, #240
	mvnhi	r3, #15
	strhib	r3, [r1, #1]
.L33:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	cmp	r3, #15
	movls	r3, #16
	strlsb	r3, [r1, #2]
	bls	.L36
	cmp	r3, #240
	mvnhi	r3, #15
	strhib	r3, [r1, #2]
.L36:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_API_Rgb2Yuv, .-OPTM_ALG_API_Rgb2Yuv
	.global	__aeabi_idiv
	.align	2
	.global	OPTM_ALG_API_CalcCscDc
	.type	OPTM_ALG_API_CalcCscDc, %function
OPTM_ALG_API_CalcCscDc:
	UNWIND(.fnstart)
.LFB23:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r0, #9
	ldr	r4, [fp, #4]
	sub	r0, r2, #50
	beq	.L43
	cmp	r1, #9
	beq	.L44
	mvn	ip, #127
	mov	r0, #128
	sub	r3, r2, #34
	mvn	r1, #15
	str	r3, [r4, #20]
	str	ip, [r4, #0]
	str	ip, [r4, #4]
	str	r0, [r4, #12]
	str	r1, [r4, #8]
	str	r0, [r4, #16]
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L43:
	cmp	r1, #9
	beq	.L45
	sub	r1, r2, #34
	mov	r0, #128
	mov	r2, #0
	str	r1, [r4, #20]
	str	r2, [r4, #0]
	str	r2, [r4, #8]
	str	r0, [r4, #12]
	str	r2, [r4, #4]
	str	r0, [r4, #16]
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L44:
	mov	lr, #100
	add	r1, r3, #50
	mul	r0, lr, r0
	bl	__aeabi_idiv
	mov	r3, #0
	mvn	r2, #127
	str	r3, [r4, #12]
	str	r2, [r4, #0]
	str	r2, [r4, #4]
	str	r3, [r4, #20]
	str	r3, [r4, #16]
	sub	ip, r0, #16
	str	ip, [r4, #8]
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L45:
	movw	r3, #298
	mov	ip, #0
	mul	r1, r3, r0
	str	ip, [r4, #0]
	str	ip, [r4, #8]
	str	ip, [r4, #4]
	add	r0, r1, #128
	add	r2, r0, #255
	cmp	r0, #0
	movlt	r0, r2
	mov	r3, r0, asr #8
	str	r3, [r4, #12]
	str	r3, [r4, #20]
	str	r3, [r4, #16]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_API_CalcCscDc, .-OPTM_ALG_API_CalcCscDc
	.align	2
	.global	OPTM_AA_VTIApi
	.type	OPTM_AA_VTIApi, %function
OPTM_AA_VTIApi:
	UNWIND(.fnstart)
.LFB25:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #0
	cmpne	r1, #2
	mov	r4, r1
	mov	r5, r2
	mov	r6, r0
	movne	r7, #0
	moveq	r7, #1
	beq	.L52
	sub	r4, r4, #1
	cmp	r4, #1
	bls	.L53
.L48:
	cmp	r7, #0
	bne	.L54
	cmp	r4, #1
	ldmhifd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L55:
	mov	r0, r6
	ldr	r2, [r5, #28]
	mov	r1, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, lr}
	b	Vou_SetTiEnable
.L54:
	mov	r0, r6
	mov	r1, #0
	ldr	r2, [r5, #0]
	bl	Vou_SetTiEnable
	cmp	r4, #1
	ldmhifd	sp, {r4, r5, r6, r7, fp, sp, pc}
	b	.L55
.L52:
	mov	r1, #0
	ldrsh	r2, [r2, #10]
	bl	Vou_SetTiGainRatio
	mov	r0, r6
	mov	r1, #0
	ldrb	r2, [r5, #18]	@ zero_extendqisi2
	bl	Vou_SetTiMixRatio
	mov	r0, r6
	mov	r1, #0
	ldrh	r2, [r5, #12]
	bl	Vou_SetTiCoringThd
	sub	r4, r4, #1
	mov	r0, r6
	mov	r1, #0
	ldrh	r2, [r5, #16]
	ldrh	r3, [r5, #14]
	bl	Vou_SetTiSwing
	cmp	r4, #1
	bhi	.L48
.L53:
	mov	r0, r6
	mov	r1, #1
	ldrsh	r2, [r5, #36]
	bl	Vou_SetTiGainRatio
	b	.L48
	UNWIND(.fnend)
	.size	OPTM_AA_VTIApi, .-OPTM_AA_VTIApi
	.align	2
	.global	OPTM_ALG_TICoefInit
	.type	OPTM_ALG_TICoefInit, %function
OPTM_ALG_TICoefInit:
	UNWIND(.fnstart)
.LFB24:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #60)
	sub	sp, sp, #60
	sub	r6, fp, #88
	cmp	r0, #4
	add	r8, r6, #4
	mov	r4, #0
	add	r3, r8, #4
	mov	r5, r0
	mov	r7, r1
	str	r4, [fp, #-88]
	str	r4, [r3], #4
	str	r4, [fp, #-84]
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3], #4
	str	r4, [r3, #0]
	beq	.L59
	mov	r0, r6
	bl	Video_InitLTICTIInfo
	cmp	r7, r4
	cmpne	r7, #2
	beq	.L60
	sub	r7, r7, #1
	cmp	r7, #1
	bls	.L61
.L59:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L60:
	ldrsh	r2, [fp, #-78]
	mov	r0, r5
	mov	r1, r4
	sub	r7, r7, #1
	bl	Vou_SetTiGainRatio
	mov	r0, r5
	mov	r1, r4
	ldrb	r2, [fp, #-70]	@ zero_extendqisi2
	bl	Vou_SetTiMixRatio
	mov	r0, r5
	mov	r1, r4
	ldrh	r2, [fp, #-76]
	bl	Vou_SetTiCoringThd
	ldrh	r3, [fp, #-74]
	mov	r0, r5
	mov	r1, r4
	ldrh	r2, [fp, #-72]
	bl	Vou_SetTiSwing
	mov	r0, r5
	mov	r1, r4
	add	r2, r6, #20
	bl	Vou_SetTiHfThd
	mov	r0, r5
	mov	r1, r4
	add	r2, r6, #24
	bl	Vou_SetTiGainCoef
	mov	r0, r5
	mov	r1, r4
	mov	r2, r8
	bl	Vou_SetTiHpCoef
	cmp	r7, #1
	bhi	.L59
.L61:
	ldrsh	r2, [fp, #-52]
	mov	r0, r5
	mov	r1, #1
	bl	Vou_SetTiGainRatio
	mov	r0, r5
	ldrb	r2, [fp, #-44]	@ zero_extendqisi2
	mov	r1, #1
	bl	Vou_SetTiMixRatio
	mov	r0, r5
	ldrh	r2, [fp, #-50]
	mov	r1, #1
	bl	Vou_SetTiCoringThd
	mov	r0, r5
	ldrh	r2, [fp, #-46]
	mov	r1, #1
	ldrh	r3, [fp, #-48]
	bl	Vou_SetTiSwing
	mov	r0, r5
	add	r2, r6, #32
	mov	r1, #1
	bl	Vou_SetTiHpCoef
	b	.L59
	UNWIND(.fnend)
	.size	OPTM_ALG_TICoefInit, .-OPTM_ALG_TICoefInit
	.align	2
	.global	OPTM_ALG_API_CalcChroma_10bit
	.type	OPTM_ALG_API_CalcChroma_10bit, %function
OPTM_ALG_API_CalcChroma_10bit:
	UNWIND(.fnstart)
.LFB21:
	@ args = 20, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #56)
	sub	sp, sp, #56
	cmp	r0, #9
	mov	ip, r0
	mov	r5, r1
	ldr	r7, [fp, #4]
	add	r6, fp, #8
	ldmia	r6, {r6, r8, sl}	@ phole ldm
	ldr	r4, [fp, #20]
	beq	.L75
	cmp	r1, #9
	beq	.L76
	cmp	r0, #8
	bhi	.L74
	cmp	r1, #1
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	str	r8, [sp, #0]
	add	ip, r1, r0, asl #3
	mov	r0, r3
	mov	r1, r2
	mov	r3, r6
	ldreq	ip, [ip, #36]
	mov	r2, r7
	ldrne	ip, [ip, #40]
	sub	r8, fp, #72
	str	sl, [sp, #4]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	bl	OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr
.L65:
	ldr	r7, [fp, #-68]
	ldr	r5, [fp, #-64]
	ldr	ip, [fp, #-60]
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	ldr	r6, [fp, #-40]
	ldr	r8, [fp, #-72]
	str	r7, [r4, #4]
	str	r6, [r4, #32]
	str	r8, [r4, #0]
	str	r5, [r4, #8]
	str	ip, [r4, #12]
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	str	r2, [r4, #24]
	str	r3, [r4, #28]
.L74:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L75:
	cmp	r1, #9
	beq	.L77
	ldr	ip, .L78
	cmp	r5, #1
	mov	r0, r3
	mov	r3, r6
	sub	r6, ip, #36
	mov	r1, r2
	mov	r2, r7
	moveq	r5, ip
	movne	r5, r6
	str	r8, [sp, #0]
	str	r5, [sp, #8]
	sub	r5, fp, #72
	str	sl, [sp, #4]
	str	r5, [sp, #12]
	bl	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr
	b	.L65
.L76:
	ldr	lr, .L78+4
	cmp	ip, #1
	mov	r0, r3
	mov	r1, r2
	sub	r5, lr, #36
	mov	r2, r7
	mov	r3, r6
	moveq	ip, lr
	movne	ip, r5
	sub	r7, fp, #72
	stmia	sp, {r8, sl, ip}	@ phole stm
	str	r7, [sp, #12]
	bl	OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB
	b	.L65
.L77:
	mov	r0, r3
	mov	r1, r2
	mov	r3, r6
	mov	r2, r7
	sub	lr, fp, #72
	stmia	sp, {r8, sl}	@ phole stm
	movw	ip, #:lower16:.LANCHOR1
	str	lr, [sp, #12]
	movt	ip, #:upper16:.LANCHOR1
	str	ip, [sp, #8]
	bl	OPTM_ALG_CalCSCCoefTprtRGBtoRGB
	b	.L65
.L79:
	.align	2
.L78:
	.word	.LANCHOR1+72
	.word	.LANCHOR1+144
	UNWIND(.fnend)
	.size	OPTM_ALG_API_CalcChroma_10bit, .-OPTM_ALG_API_CalcChroma_10bit
	.align	2
	.global	OPTM_ALG_API_CalcChroma_8bit
	.type	OPTM_ALG_API_CalcChroma_8bit, %function
OPTM_ALG_API_CalcChroma_8bit:
	UNWIND(.fnstart)
.LFB20:
	@ args = 20, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #56)
	sub	sp, sp, #56
	cmp	r0, #9
	mov	ip, r0
	mov	r5, r1
	ldr	r7, [fp, #4]
	add	r6, fp, #8
	ldmia	r6, {r6, r8, sl}	@ phole ldm
	ldr	r4, [fp, #20]
	beq	.L93
	cmp	r1, #9
	beq	.L94
	cmp	r0, #8
	bhi	.L92
	cmp	r1, #1
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	str	r8, [sp, #0]
	add	ip, r1, r0, asl #3
	mov	r0, r3
	mov	r1, r2
	mov	r3, r6
	ldreq	ip, [ip, #108]
	mov	r2, r7
	ldrne	ip, [ip, #112]
	sub	r8, fp, #72
	str	sl, [sp, #4]
	str	r8, [sp, #12]
	str	ip, [sp, #8]
	bl	OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr
.L83:
	ldr	r7, [fp, #-68]
	ldr	r5, [fp, #-64]
	ldr	ip, [fp, #-60]
	sub	r0, fp, #56
	ldmia	r0, {r0, r1, r2, r3}	@ phole ldm
	ldr	r6, [fp, #-40]
	ldr	r8, [fp, #-72]
	str	r7, [r4, #4]
	str	r6, [r4, #32]
	str	r8, [r4, #0]
	str	r5, [r4, #8]
	str	ip, [r4, #12]
	str	r0, [r4, #16]
	str	r1, [r4, #20]
	str	r2, [r4, #24]
	str	r3, [r4, #28]
.L92:
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L93:
	cmp	r1, #9
	beq	.L95
	ldr	ip, .L96
	cmp	r5, #1
	mov	r0, r3
	mov	r1, r2
	sub	lr, ip, #36
	mov	r3, r6
	mov	r2, r7
	moveq	r5, ip
	movne	r5, lr
	sub	r6, fp, #72
	stmia	sp, {r8, sl}	@ phole stm
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	bl	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr
	b	.L83
.L94:
	ldr	lr, .L96+4
	cmp	ip, #1
	mov	r0, r3
	mov	r1, r2
	sub	r5, lr, #36
	mov	r2, r7
	mov	r3, r6
	moveq	ip, lr
	movne	ip, r5
	sub	r7, fp, #72
	stmia	sp, {r8, sl, ip}	@ phole stm
	str	r7, [sp, #12]
	bl	OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB
	b	.L83
.L95:
	ldr	r5, .L96+8
	mov	r0, r3
	mov	r1, r2
	mov	r3, r6
	mov	r2, r7
	sub	ip, fp, #72
	stmia	sp, {r8, sl}	@ phole stm
	str	r5, [sp, #8]
	str	ip, [sp, #12]
	bl	OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit
	b	.L83
.L97:
	.align	2
.L96:
	.word	.LANCHOR1+252
	.word	.LANCHOR1+324
	.word	.LANCHOR1+180
	UNWIND(.fnend)
	.size	OPTM_ALG_API_CalcChroma_8bit, .-OPTM_ALG_API_CalcChroma_8bit
	.align	2
	.global	OPTM_ALG_API_CalcChroma
	.type	OPTM_ALG_API_CalcChroma, %function
OPTM_ALG_API_CalcChroma:
	UNWIND(.fnstart)
.LFB22:
	@ args = 20, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #12)
	sub	sp, sp, #12
	ldr	ip, [fp, #20]
	mov	r6, r3
	ldr	r3, [fp, #16]
	mov	r5, r0
	mov	r8, r1
	mov	r7, r2
	ldmib	fp, {r4, sl}	@ phole ldm
	ldr	r9, [fp, #12]
	str	r3, [fp, #-48]
	str	ip, [fp, #-52]
	bl	HAL_GetChipsetVouVersion
	cmp	r0, #2
	beq	.L101
	ldr	ip, [fp, #-48]
	mov	r0, r5
	ldr	lr, [fp, #-52]
	mov	r1, r8
	mov	r2, r7
	mov	r3, r6
	stmib	fp, {r4, sl}	@ phole stm
	str	r9, [fp, #12]
	str	ip, [fp, #16]
	str	lr, [fp, #20]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	b	OPTM_ALG_API_CalcChroma_8bit
.L101:
	ldr	ip, [fp, #-48]
	mov	r0, r5
	ldr	lr, [fp, #-52]
	mov	r1, r8
	mov	r2, r7
	mov	r3, r6
	stmib	fp, {r4, sl}	@ phole stm
	str	r9, [fp, #12]
	str	ip, [fp, #16]
	str	lr, [fp, #20]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	b	OPTM_ALG_API_CalcChroma_10bit
	UNWIND(.fnend)
	.size	OPTM_ALG_API_CalcChroma, .-OPTM_ALG_API_CalcChroma
	.align	2
	.global	OPTM_AA_GfxZmeApi
	.type	OPTM_AA_GfxZmeApi, %function
OPTM_AA_GfxZmeApi:
	UNWIND(.fnstart)
.LFB18:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #220)
	sub	sp, sp, #220
	sub	r7, fp, #200
	sub	r6, fp, #108
	mov	r4, r0
	mov	r5, r1
	mov	r8, r2
	mov	r1, #0
	mov	r2, #92
	mov	r0, r7
	sub	sl, fp, #96
	bl	memset
	mov	r1, #0
	mov	r2, #64
	mov	r0, r6
	bl	memset
	ldmia	sl!, {r0, r1, r2, r3}
	ldmia	r5, {r9, ip, lr}	@ phole ldm
	str	ip, [fp, #-56]
	mov	ip, sp
	str	r9, [fp, #-60]
	stmia	ip!, {r0, r1, r2, r3}
	str	lr, [fp, #-52]
	mov	lr, sl
	ldr	sl, [r5, #12]
	ldmia	lr!, {r0, r1, r2, r3}
	str	sl, [fp, #-48]
	mov	sl, ip
	mov	ip, lr
	stmia	sl!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	ip, [ip, #0]
	stmia	sl!, {r0, r1, r2, r3}
	mov	r0, r4
	str	ip, [sl, #0]
	ldmia	r6, {r1, r2, r3}
	bl	HAL_SetZmeReso
	cmp	r4, #4
	mov	r0, r5
	mov	r1, r7
	moveq	r2, #0
	movne	r2, #1
	bl	OPTM_ALG_GetGfxScalerInfo
	mov	r1, #4
	ldr	r2, [fp, #-200]
	mov	r0, r4
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #4
	ldr	r2, [fp, #-184]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #6
	ldr	r2, [fp, #-180]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-192]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #1
	ldr	r2, [fp, #-188]
	bl	HAL_SetMidEnable
	ldr	r2, [fp, #-196]
	mov	r0, r4
	mov	r1, #6
	bl	HAL_SetMidEnable
	mov	r0, r4
	ldr	r1, [fp, #-176]
	bl	HAL_SetHfirOrder
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-120]
	bl	HAL_SetCoefAddr
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-168]
	bl	HAL_SetZmePhase
	ldr	r2, [fp, #-164]
	mov	r0, r4
	mov	r1, #1
	bl	HAL_SetZmePhase
	mov	r0, r4
	ldr	r1, [fp, #-172]
	bl	Vou_SetHorRatio
	mov	r0, r4
	mov	r1, #0
	bl	HAL_SetLayerParaUpd
	mov	r0, r4
	mov	r1, #5
	ldr	r2, [fp, #-160]
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #5
	ldr	r2, [fp, #-144]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #7
	ldr	r2, [fp, #-140]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-152]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #3
	ldr	r2, [fp, #-148]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #7
	ldr	r2, [fp, #-156]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-136]
	bl	HAL_SetZmeVerTap
	mov	r0, r4
	mov	r1, #8
	ldr	r2, [fp, #-128]
	bl	HAL_SetZmePhase
	ldr	r2, [fp, #-124]
	mov	r0, r4
	mov	r1, #9
	bl	HAL_SetZmePhase
	mov	r0, r4
	ldr	r1, [fp, #-132]
	bl	Vou_SetVerRatio
	ldr	r2, [fp, #-116]
	mov	r0, r4
	mov	r1, #1
	bl	HAL_SetCoefAddr
	mov	r0, r4
	mov	r1, #1
	bl	HAL_SetLayerParaUpd
	mov	r0, r4
	ldr	r1, [fp, #-112]
	bl	Vou_SetGfxReadMode
	cmp	r8, #0
	ldrne	r3, [fp, #-124]
	strne	r3, [r8, #0]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_GfxZmeApi, .-OPTM_AA_GfxZmeApi
	.align	2
	.global	OPTM_AA_DeInitGzmeCoef
	.type	OPTM_AA_DeInitGzmeCoef, %function
OPTM_AA_DeInitGzmeCoef:
	UNWIND(.fnstart)
.LFB17:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r0, #0]
	mov	r4, r0
	cmp	r3, #0
	ldmeqfd	sp, {r3, r4, fp, sp, pc}
	bl	HI_MMZ_Release
	mov	r0, #0
	str	r0, [r4, #0]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_DeInitGzmeCoef, .-OPTM_AA_DeInitGzmeCoef
	.align	2
	.global	OPTM_AA_DeInitVzmeCoef
	.type	OPTM_AA_DeInitVzmeCoef, %function
OPTM_AA_DeInitVzmeCoef:
	UNWIND(.fnstart)
.LFB5:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r0, #0]
	mov	r4, r0
	cmp	r3, #0
	ldmeqfd	sp, {r3, r4, fp, sp, pc}
	bl	HI_MMZ_Release
	mov	r0, #0
	str	r0, [r4, #0]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_DeInitVzmeCoef, .-OPTM_AA_DeInitVzmeCoef
	.align	2
	.type	VouLoadGfxZoomCoefH, %function
VouLoadGfxZoomCoefH:
	UNWIND(.fnstart)
.LFB11:
	@ args = 0, pretend = 0, frame = 328
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #328)
	sub	sp, sp, #328
	cmp	r2, #0
	mov	r5, r0
	mov	r7, r1
	bne	.L114
	movw	r6, #:lower16:g_pGfxOrgZoomCoef
	movt	r6, #:upper16:g_pGfxOrgZoomCoef
	sub	r4, fp, #156
	ldr	r1, [r6, r0, asl #5]
.L115:
	ldrh	ip, [r1, r2]
	add	r3, r2, #2
	strh	ip, [r4, r2]	@ movhi
	add	r2, r3, #2
	ldrh	r0, [r1, r3]
	cmp	r2, #128
	strh	r0, [r4, r3]	@ movhi
	bne	.L115
	mov	r0, r7
	mov	r1, r4
	bl	memcpy
	add	ip, r6, r5, asl #5
	add	r7, r7, #128
	mov	r2, #0
	ldr	r1, [ip, #8]
.L119:
	ldrh	r0, [r1, r2]
	add	r3, r2, #2
	strh	r0, [r4, r2]	@ movhi
	add	r2, r3, #2
	ldrh	lr, [r1, r3]
	cmp	r2, #128
	strh	lr, [r4, r3]	@ movhi
	bne	.L119
	mov	r1, r4
	mov	r0, r7
	bl	memcpy
	add	r0, r6, r5, asl #5
	sub	r2, fp, #352
	add	r4, r7, #128
	mov	r5, r0
	ldr	r1, [r0, #24]
	ldr	r0, [r0, #16]
	bl	VouTranlateGfxTiHorZoomCoef
.L123:
	mov	r0, r4
	sub	r1, fp, #348
	ldr	r2, [fp, #-352]
	bl	memcpy
	mov	r0, #0
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L114:
	movw	r6, #:lower16:g_pGfxOrgZoomCoef_sharp
	movt	r6, #:upper16:g_pGfxOrgZoomCoef_sharp
	sub	r4, fp, #156
	mov	r2, #0
	ldr	r1, [r6, r0, asl #5]
.L117:
	ldrh	r0, [r1, r2]
	add	r3, r2, #2
	strh	r0, [r4, r2]	@ movhi
	add	r2, r3, #2
	ldrh	lr, [r1, r3]
	cmp	r2, #128
	strh	lr, [r4, r3]	@ movhi
	bne	.L117
	mov	r0, r7
	mov	r1, r4
	bl	memcpy
	add	ip, r6, r5, asl #5
	add	r7, r7, #128
	mov	r2, #0
	ldr	r1, [ip, #8]
.L121:
	ldrh	r3, [r1, r2]
	add	lr, r2, #2
	strh	r3, [r4, r2]	@ movhi
	add	r2, lr, #2
	ldrh	ip, [r1, lr]
	cmp	r2, #128
	strh	ip, [r4, lr]	@ movhi
	bne	.L121
	mov	r1, r4
	mov	r0, r7
	bl	memcpy
	movw	r1, #:lower16:g_pGfxOrgZoomCoef
	movt	r1, #:upper16:g_pGfxOrgZoomCoef
	add	r6, r6, r5, asl #5
	add	r5, r1, r5, asl #5
	sub	r2, fp, #352
	ldr	r0, [r6, #16]
	add	r4, r7, #128
	ldr	r1, [r5, #24]
	bl	VouTranlateGfxTiHorZoomCoef
	b	.L123
	UNWIND(.fnend)
	.size	VouLoadGfxZoomCoefH, .-VouLoadGfxZoomCoefH
	.align	2
	.type	VouLoadGfxZoomCoefV, %function
VouLoadGfxZoomCoefV:
	UNWIND(.fnstart)
.LFB12:
	@ args = 0, pretend = 0, frame = 624
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #628)
	sub	sp, sp, #628
	cmp	r2, #0
	str	r1, [fp, #-664]
	sub	r4, fp, #44
	movw	r1, #:lower16:-450
	movweq	r3, #:lower16:g_pGfxOrgZoomCoef
	movwne	r3, #:lower16:g_pGfxOrgZoomCoef_sharp
	movteq	r3, #:upper16:g_pGfxOrgZoomCoef
	movtne	r3, #:upper16:g_pGfxOrgZoomCoef_sharp
	add	r6, r3, r0, asl #5
	movw	r3, #:lower16:-452
	movt	r3, #:upper16:-452
	movt	r1, #:upper16:-450
	ldr	sl, [r6, #12]
	movw	lr, #:lower16:-448
	ldr	r9, [r6, #28]
	movt	lr, #:upper16:-448
	ldr	r7, [r6, #4]
	mov	ip, sl
	ldr	r5, [r6, #20]
	ldrh	r0, [ip], #2
	movw	r6, #:lower16:-446
	movt	r6, #:upper16:-446
	strh	r0, [r4, r3]	@ movhi
	add	r4, ip, #2
	ldrh	r8, [sl, #2]
	sub	sl, fp, #44
	mov	r3, r7
	movw	r0, #:lower16:-444
	movt	r0, #:upper16:-444
	strh	r8, [sl, r1]	@ movhi
	movw	r1, #:lower16:-442
	ldrh	r2, [ip, #2]
	mov	ip, sl
	movt	r1, #:upper16:-442
	strh	r2, [sl, lr]	@ movhi
	mov	lr, ip
	ldrh	sl, [r4, #2]
	strh	sl, [ip, r6]	@ movhi
	movw	r6, #:lower16:-440
	ldrh	r8, [r3], #2
	movt	r6, #:upper16:-440
	mov	sl, ip
	strh	r8, [ip, r0]	@ movhi
	add	r8, r4, #2
	ldrh	r0, [r7, #2]
	strh	r0, [ip, r1]	@ movhi
	add	r0, r3, #2
	ldrh	r7, [r3, #2]
	movw	r1, #:lower16:-438
	movt	r1, #:upper16:-438
	movw	ip, #:lower16:-436
	movt	ip, #:upper16:-436
	movw	r3, #:lower16:-434
	strh	r7, [lr, r6]	@ movhi
	movt	r3, #:upper16:-434
	ldrh	r2, [r0, #2]
	strh	r2, [lr, r1]	@ movhi
	add	lr, r8, #2
	ldrh	r6, [r8, #2]
	add	r1, lr, #2
	movw	r2, #:lower16:-432
	movt	r2, #:upper16:-432
	strh	r6, [sl, ip]	@ movhi
	ldrh	r4, [lr, #2]
	strh	r4, [sl, r3]	@ movhi
	add	r4, r1, #2
	ldrh	r6, [r1, #2]
	movw	r3, #:lower16:-430
	movt	r3, #:upper16:-430
	strh	r6, [sl, r2]	@ movhi
	add	r2, r0, #2
	ldrh	lr, [r4, #2]
	add	r0, r2, #2
	movw	r6, #:lower16:-428
	movt	r6, #:upper16:-428
	add	r1, r0, #2
	add	r4, r4, #2
	strh	lr, [sl, r3]	@ movhi
	movw	r3, #:lower16:-426
	ldrh	ip, [r2, #2]
	movt	r3, #:upper16:-426
	movw	r2, #:lower16:-424
	movt	r2, #:upper16:-424
	add	r7, r4, #2
	strh	ip, [sl, r6]	@ movhi
	add	r8, r7, #2
	ldrh	lr, [r0, #2]
	strh	lr, [sl, r3]	@ movhi
	add	lr, r1, #2
	ldrh	r6, [r1, #2]
	movw	r3, #:lower16:-422
	movt	r3, #:upper16:-422
	movw	r1, #:lower16:-420
	movt	r1, #:upper16:-420
	strh	r6, [sl, r2]	@ movhi
	movw	r2, #:lower16:-418
	ldrh	ip, [lr, #2]
	movt	r2, #:upper16:-418
	movw	r6, #:lower16:-416
	movt	r6, #:upper16:-416
	strh	ip, [sl, r3]	@ movhi
	add	ip, r8, #2
	ldrh	r0, [r4, #2]
	movw	r3, #:lower16:-414
	movt	r3, #:upper16:-414
	strh	r0, [sl, r1]	@ movhi
	ldrh	r4, [r7, #2]
	strh	r4, [sl, r2]	@ movhi
	ldrh	r7, [r8, #2]
	add	r8, lr, #2
	add	lr, r8, #2
	add	r0, lr, #2
	strh	r7, [sl, r6]	@ movhi
	movw	r6, #:lower16:-412
	ldrh	r2, [ip, #2]
	movt	r6, #:upper16:-412
	strh	r2, [sl, r3]	@ movhi
	movw	r3, #:lower16:-410
	ldrh	r4, [r8, #2]
	movt	r3, #:upper16:-410
	movw	r2, #:lower16:-404
	movt	r2, #:upper16:-404
	strh	r4, [sl, r6]	@ movhi
	movw	r6, #:lower16:-408
	ldrh	r1, [lr, #2]
	movt	r6, #:upper16:-408
	strh	r1, [sl, r3]	@ movhi
	add	r1, r0, #2
	ldrh	r4, [r0, #2]
	movw	r3, #:lower16:-406
	add	r0, ip, #2
	movt	r3, #:upper16:-406
	add	ip, r0, #2
	strh	r4, [sl, r6]	@ movhi
	movw	r4, #:lower16:-402
	ldrh	lr, [r1, #2]
	movt	r4, #:upper16:-402
	add	r1, r1, #2
	strh	lr, [sl, r3]	@ movhi
	add	lr, ip, #2
	ldrh	r6, [r0, #2]
	strh	r6, [sl, r2]	@ movhi
	movw	r2, #:lower16:-400
	ldrh	r8, [ip, #2]
	movt	r2, #:upper16:-400
	movw	r6, #:lower16:-398
	movt	r6, #:upper16:-398
	strh	r8, [sl, r4]	@ movhi
	add	r8, lr, #2
	ldrh	r3, [lr, #2]
	strh	r3, [sl, r2]	@ movhi
	movw	r2, #:lower16:-396
	ldrh	r0, [r8, #2]
	movt	r2, #:upper16:-396
	add	r8, r8, #2
	strh	r0, [sl, r6]	@ movhi
	add	r0, r1, #2
	ldrh	r3, [r1, #2]
	movw	r6, #:lower16:-394
	add	r1, r0, #2
	movt	r6, #:upper16:-394
	add	r7, r1, #2
	strh	r3, [sl, r2]	@ movhi
	movw	r2, #:lower16:-392
	ldrh	r4, [r0, #2]
	movt	r2, #:upper16:-392
	movw	r3, #:lower16:-390
	movt	r3, #:upper16:-390
	strh	r4, [sl, r6]	@ movhi
	add	r4, r8, #2
	ldrh	lr, [r1, #2]
	movw	r1, #:lower16:-386
	movt	r1, #:upper16:-386
	strh	lr, [sl, r2]	@ movhi
	movw	r2, #:lower16:-388
	ldrh	ip, [r7, #2]
	movt	r2, #:upper16:-388
	add	lr, r4, #2
	add	r7, r7, #2
	add	r6, lr, #2
	strh	ip, [sl, r3]	@ movhi
	movw	r3, #:lower16:-384
	ldrh	r0, [r8, #2]
	movt	r3, #:upper16:-384
	movw	ip, #:lower16:-382
	movt	ip, #:upper16:-382
	strh	r0, [sl, r2]	@ movhi
	movw	r2, #:lower16:-380
	ldrh	r4, [r4, #2]
	movt	r2, #:upper16:-380
	strh	r4, [sl, r1]	@ movhi
	add	r4, r7, #2
	ldrh	r0, [lr, #2]
	add	lr, r6, #2
	strh	r0, [sl, r3]	@ movhi
	ldrh	r8, [r6, #2]
	movw	r6, #:lower16:-372
	movt	r6, #:upper16:-372
	strh	r8, [sl, ip]	@ movhi
	movw	ip, #:lower16:-378
	ldrh	r3, [r7, #2]
	movt	ip, #:upper16:-378
	add	r7, r4, #2
	movw	r8, #:lower16:-376
	movt	r8, #:upper16:-376
	strh	r3, [sl, r2]	@ movhi
	movw	r3, #:lower16:-374
	ldrh	r0, [r4, #2]
	movt	r3, #:upper16:-374
	strh	r0, [sl, ip]	@ movhi
	add	r0, r7, #2
	ldrh	r1, [r7, #2]
	strh	r1, [sl, r8]	@ movhi
	add	r8, lr, #2
	ldrh	r2, [r0, #2]
	strh	r2, [sl, r3]	@ movhi
	add	r2, r8, #2
	ldrh	ip, [lr, #2]
	movw	r3, #:lower16:-370
	movt	r3, #:upper16:-370
	strh	ip, [sl, r6]	@ movhi
	movw	r6, #:lower16:-368
	ldrh	r1, [r8, #2]
	movt	r6, #:upper16:-368
	strh	r1, [sl, r3]	@ movhi
	add	r1, r2, #2
	ldrh	ip, [r2, #2]
	movw	r3, #:lower16:-366
	add	r2, r0, #2
	movt	r3, #:upper16:-366
	strh	ip, [sl, r6]	@ movhi
	add	ip, r2, #2
	ldrh	r8, [r1, #2]
	movw	r6, #:lower16:-364
	movt	r6, #:upper16:-364
	add	r1, r1, #2
	strh	r8, [sl, r3]	@ movhi
	add	r8, ip, #2
	ldrh	r0, [r2, #2]
	movw	r3, #:lower16:-362
	movt	r3, #:upper16:-362
	add	r4, r8, #2
	strh	r0, [sl, r6]	@ movhi
	movw	r6, #:lower16:-360
	ldrh	r2, [ip, #2]
	movt	r6, #:upper16:-360
	strh	r2, [sl, r3]	@ movhi
	movw	r3, #:lower16:-358
	ldrh	lr, [r8, #2]
	movt	r3, #:upper16:-358
	movw	r2, #:lower16:-356
	movt	r2, #:upper16:-356
	strh	lr, [sl, r6]	@ movhi
	add	r6, r1, #2
	ldrh	r0, [r4, #2]
	add	r7, r6, #2
	add	ip, r7, #2
	add	r4, r4, #2
	strh	r0, [sl, r3]	@ movhi
	movw	r3, #:lower16:-354
	ldrh	r8, [r1, #2]
	movt	r3, #:upper16:-354
	movw	r0, #:lower16:-352
	movt	r0, #:upper16:-352
	movw	r1, #:lower16:-350
	movt	r1, #:upper16:-350
	strh	r8, [sl, r2]	@ movhi
	add	r8, r4, #2
	ldrh	lr, [r6, #2]
	movw	r2, #:lower16:-348
	movt	r2, #:upper16:-348
	mov	r6, sl
	strh	lr, [sl, r3]	@ movhi
	movw	r3, #:lower16:-346
	ldrh	r7, [r7, #2]
	movt	r3, #:upper16:-346
	strh	r7, [sl, r0]	@ movhi
	ldrh	r0, [ip, #2]
	add	ip, ip, #2
	strh	r0, [sl, r1]	@ movhi
	add	r0, r8, #2
	ldrh	r1, [r4, #2]
	strh	r1, [sl, r2]	@ movhi
	add	r1, r0, #2
	ldrh	lr, [r8, #2]
	movw	r2, #:lower16:-344
	movt	r2, #:upper16:-344
	movw	r8, #:lower16:-342
	movt	r8, #:upper16:-342
	strh	lr, [sl, r3]	@ movhi
	add	r3, ip, #2
	ldrh	r4, [r0, #2]
	strh	r4, [sl, r2]	@ movhi
	movw	r2, #:lower16:-340
	ldrh	r0, [r1, #2]
	movt	r2, #:upper16:-340
	add	r1, r1, #2
	movw	r4, #:lower16:-326
	movt	r4, #:upper16:-326
	strh	r0, [sl, r8]	@ movhi
	movw	r8, #:lower16:-338
	ldrh	ip, [ip, #2]
	movt	r8, #:upper16:-338
	strh	ip, [sl, r2]	@ movhi
	add	ip, r3, #2
	ldrh	r0, [r3, #2]
	movw	r2, #:lower16:-336
	movt	r2, #:upper16:-336
	strh	r0, [sl, r8]	@ movhi
	add	r0, ip, #2
	ldrh	r3, [ip, #2]
	movw	r8, #:lower16:-334
	movt	r8, #:upper16:-334
	strh	r3, [sl, r2]	@ movhi
	movw	r2, #:lower16:-332
	ldrh	ip, [r0, #2]
	movt	r2, #:upper16:-332
	strh	ip, [sl, r8]	@ movhi
	add	sl, r1, #2
	ldrh	r3, [r1, #2]
	movw	r8, #:lower16:-330
	add	r1, sl, #2
	movt	r8, #:upper16:-330
	add	r7, r1, #2
	strh	r3, [r6, r2]	@ movhi
	movw	r2, #:lower16:-328
	ldrh	ip, [sl, #2]
	movt	r2, #:upper16:-328
	strh	ip, [r6, r8]	@ movhi
	add	r8, r0, #2
	ldrh	r3, [r1, #2]
	add	r1, r8, #2
	add	lr, r1, #2
	strh	r3, [r6, r2]	@ movhi
	movw	r2, #:lower16:-324
	ldrh	sl, [r7, #2]
	movt	r2, #:upper16:-324
	movw	r3, #:lower16:-322
	movt	r3, #:upper16:-322
	add	r7, r7, #2
	strh	sl, [r6, r4]	@ movhi
	ldrh	r0, [r8, #2]
	add	r8, lr, #2
	strh	r0, [r6, r2]	@ movhi
	movw	r2, #:lower16:-320
	ldrh	r4, [r1, #2]
	movt	r2, #:upper16:-320
	movw	r0, #:lower16:-318
	movt	r0, #:upper16:-318
	movw	r1, #:lower16:-316
	movt	r1, #:upper16:-316
	strh	r4, [r6, r3]	@ movhi
	add	r4, r7, #2
	ldrh	ip, [lr, #2]
	add	lr, r4, #2
	movw	r3, #:lower16:-314
	movt	r3, #:upper16:-314
	strh	ip, [r6, r2]	@ movhi
	movw	ip, #:lower16:-312
	ldrh	sl, [r8, #2]
	movt	ip, #:upper16:-312
	strh	sl, [r6, r0]	@ movhi
	add	r0, lr, #2
	ldrh	r2, [r7, #2]
	mov	sl, r6
	strh	r2, [r6, r1]	@ movhi
	ldrh	r4, [r4, #2]
	strh	r4, [r6, r3]	@ movhi
	movw	r3, #:lower16:-310
	ldrh	r7, [lr, #2]
	movt	r3, #:upper16:-310
	add	lr, r8, #2
	movw	r8, #:lower16:-308
	add	r4, lr, #2
	movt	r8, #:upper16:-308
	strh	r7, [r6, ip]	@ movhi
	ldrh	r2, [r0, #2]
	strh	r2, [r6, r3]	@ movhi
	add	r2, r4, #2
	ldrh	ip, [lr, #2]
	movw	r3, #:lower16:-306
	movt	r3, #:upper16:-306
	strh	ip, [r6, r8]	@ movhi
	movw	r8, #:lower16:-304
	ldrh	r1, [r4, #2]
	movt	r8, #:upper16:-304
	strh	r1, [r6, r3]	@ movhi
	add	r1, r2, #2
	ldrh	ip, [r2, #2]
	movw	r3, #:lower16:-302
	add	r2, r0, #2
	movt	r3, #:upper16:-302
	add	lr, r2, #2
	strh	ip, [r6, r8]	@ movhi
	movw	r8, #:lower16:-300
	ldrh	r4, [r1, #2]
	movt	r8, #:upper16:-300
	add	r0, lr, #2
	strh	r4, [r6, r3]	@ movhi
	movw	r4, #:lower16:-298
	ldrh	ip, [r2, #2]
	movt	r4, #:upper16:-298
	movw	r2, #:lower16:-296
	movt	r2, #:upper16:-296
	strh	ip, [r6, r8]	@ movhi
	ldrh	r3, [lr, #2]
	strh	r3, [r6, r4]	@ movhi
	add	r4, r0, #2
	ldrh	r8, [r0, #2]
	movw	r3, #:lower16:-294
	movt	r3, #:upper16:-294
	strh	r8, [r6, r2]	@ movhi
	add	r2, r1, #2
	ldrh	lr, [r4, #2]
	add	r0, r2, #2
	movw	r8, #:lower16:-292
	movt	r8, #:upper16:-292
	add	r1, r0, #2
	add	r4, r4, #2
	strh	lr, [r6, r3]	@ movhi
	movw	r3, #:lower16:-290
	ldrh	lr, [r2, #2]
	movt	r3, #:upper16:-290
	movw	r2, #:lower16:-288
	movt	r2, #:upper16:-288
	add	r7, r4, #2
	strh	lr, [r6, r8]	@ movhi
	ldrh	ip, [r0, #2]
	movw	r0, #:lower16:-284
	movt	r0, #:upper16:-284
	strh	ip, [r6, r3]	@ movhi
	add	ip, r1, #2
	ldrh	r8, [r1, #2]
	movw	r6, #:lower16:-286
	movt	r6, #:upper16:-286
	movw	r1, #:lower16:-282
	movt	r1, #:upper16:-282
	strh	r8, [sl, r2]	@ movhi
	add	r8, r7, #2
	ldrh	lr, [ip, #2]
	movw	r2, #:lower16:-280
	movt	r2, #:upper16:-280
	strh	lr, [sl, r6]	@ movhi
	add	lr, r8, #2
	ldrh	r3, [r4, #2]
	movw	r6, #:lower16:-278
	movt	r6, #:upper16:-278
	strh	r3, [sl, r0]	@ movhi
	ldrh	r4, [r7, #2]
	mov	r7, sl
	strh	r4, [sl, r1]	@ movhi
	ldrh	r3, [r8, #2]
	add	r8, ip, #2
	add	r4, r8, #2
	strh	r3, [sl, r2]	@ movhi
	movw	r2, #:lower16:-276
	ldrh	ip, [lr, #2]
	movt	r2, #:upper16:-276
	movw	r3, #:lower16:-274
	movt	r3, #:upper16:-274
	strh	ip, [sl, r6]	@ movhi
	add	r6, r4, #2
	ldrh	r1, [r8, #2]
	mov	r8, sl
	strh	r1, [sl, r2]	@ movhi
	movw	r2, #:lower16:-272
	ldrh	ip, [r4, #2]
	movt	r2, #:upper16:-272
	strh	ip, [sl, r3]	@ movhi
	add	ip, r6, #2
	ldrh	r0, [r6, #2]
	movw	r3, #:lower16:-270
	add	r6, lr, #2
	movt	r3, #:upper16:-270
	add	lr, r6, #2
	strh	r0, [sl, r2]	@ movhi
	movw	r2, #:lower16:-268
	ldrh	r1, [ip, #2]
	movt	r2, #:upper16:-268
	add	ip, ip, #2
	strh	r1, [sl, r3]	@ movhi
	movw	r3, #:lower16:-266
	ldrh	r0, [r6, #2]
	movt	r3, #:upper16:-266
	add	r6, lr, #2
	strh	r0, [sl, r2]	@ movhi
	movw	r2, #:lower16:-264
	ldrh	r1, [lr, #2]
	movt	r2, #:upper16:-264
	strh	r1, [sl, r3]	@ movhi
	add	r1, r6, #2
	ldrh	r0, [r6, #2]
	movw	r3, #:lower16:-262
	movt	r3, #:upper16:-262
	add	r4, r1, #2
	strh	r0, [sl, r2]	@ movhi
	add	r0, ip, #2
	ldrh	lr, [r1, #2]
	movw	r2, #:lower16:-260
	movt	r2, #:upper16:-260
	strh	lr, [sl, r3]	@ movhi
	movw	r3, #:lower16:-258
	ldrh	sl, [ip, #2]
	movt	r3, #:upper16:-258
	add	ip, r0, #2
	mvn	lr, #255
	strh	sl, [r7, r2]	@ movhi
	ldrh	r6, [r0, #2]
	add	r0, ip, #2
	strh	r6, [r7, r3]	@ movhi
	add	r7, r4, #2
	ldrh	r2, [ip, #2]
	add	r3, r7, #2
	strh	r2, [r8, lr]	@ movhi
	add	lr, fp, lr
	ldrh	sl, [r0, #2]
	add	r2, r3, #2
	add	r0, r0, #2
	strh	sl, [lr, #-42]	@ movhi
	ldrh	r6, [r4, #2]
	strh	r6, [lr, #-40]	@ movhi
	add	r6, r0, #2
	ldrh	r1, [r7, #2]
	mov	r7, lr
	strh	r1, [lr, #-38]	@ movhi
	ldrh	ip, [r3, #2]
	add	r3, r6, #2
	strh	ip, [lr, #-36]	@ movhi
	ldrh	sl, [r2, #2]
	strh	sl, [lr, #-34]	@ movhi
	ldrh	r0, [r0, #2]
	strh	r0, [lr, #-32]	@ movhi
	add	r0, r3, #2
	ldrh	r1, [r6, #2]
	add	r6, r2, #2
	strh	r1, [lr, #-30]	@ movhi
	add	r1, r6, #2
	ldrh	sl, [r3, #2]
	add	r3, r1, #2
	strh	sl, [lr, #-28]	@ movhi
	ldrh	r8, [r0, #2]
	strh	r8, [lr, #-26]	@ movhi
	add	r8, r0, #2
	ldrh	r2, [r6, #2]
	strh	r2, [lr, #-24]	@ movhi
	add	r2, r3, #2
	ldrh	r4, [r1, #2]
	strh	r4, [lr, #-22]	@ movhi
	ldrh	r6, [r3, #2]
	add	r3, r8, #2
	add	r1, r3, #2
	strh	r6, [lr, #-20]	@ movhi
	ldrh	lr, [r2, #2]
	add	r2, r2, #2
	strh	lr, [r7, #-18]	@ movhi
	ldrh	r4, [r8, #2]
	strh	r4, [r7, #-16]	@ movhi
	ldrh	r6, [r3, #2]
	add	r3, r1, #2
	strh	r6, [r7, #-14]	@ movhi
	add	r6, r2, #2
	ldrh	sl, [r1, #2]
	strh	sl, [r7, #-12]	@ movhi
	add	sl, r6, #2
	ldrh	lr, [r3, #2]
	add	r4, sl, #2
	add	r3, r3, #2
	add	ip, r4, #2
	strh	lr, [r7, #-10]	@ movhi
	ldrh	r2, [r2, #2]
	strh	r2, [r7, #-8]	@ movhi
	add	r2, r3, #2
	ldrh	r1, [r6, #2]
	strh	r1, [r7, #-6]	@ movhi
	ldrh	r6, [sl, #2]
	strh	r6, [r7, #-4]	@ movhi
	ldrh	lr, [r4, #2]
	strh	lr, [r7, #-2]	@ movhi
	add	lr, ip, #2
	ldrh	r8, [r3, #2]
	add	r3, lr, #2
	strh	r8, [r7, #0]	@ movhi
	add	r7, r2, #2
	ldrh	r1, [r2, #2]
	strh	r1, [fp, #-254]	@ movhi
	sub	r1, fp, #496
	ldrh	sl, [r7, #2]
	strh	sl, [fp, #-252]	@ movhi
	ldrh	r6, [r7, #4]
	strh	r6, [fp, #-250]	@ movhi
	ldrh	r2, [ip, #2]
	strh	r2, [fp, #-248]	@ movhi
	mov	r2, #256
	ldrh	r0, [lr, #2]
	strh	r0, [fp, #-246]	@ movhi
	ldrh	r4, [r3, #2]
	ldr	r0, [fp, #-664]
	strh	r4, [fp, #-244]	@ movhi
	mov	r4, #0
	ldrh	r8, [r3, #4]
	strh	r8, [fp, #-242]	@ movhi
	bl	memcpy
	mov	r2, r5
	ldrh	r7, [fp, #-236]
	ldrh	sl, [r2], #2
	mov	r3, r9
	ldrb	r8, [fp, #-228]	@ zero_extendqisi2
	bfi	r7, sl, #0, #10
	strh	r7, [fp, #-236]	@ movhi
	ldr	r1, [fp, #-236]
	add	sl, r2, #2
	ldrh	ip, [r5, #2]
	add	r6, sl, #2
	add	r5, r6, #2
	str	r6, [fp, #-516]
	bfi	r1, ip, #10, #10
	str	r5, [fp, #-512]
	str	r1, [fp, #-236]
	add	lr, r5, #2
	ldrh	r0, [r3], #2
	mov	ip, r1, lsr #16
	str	lr, [fp, #-508]
	bfi	ip, r0, #4, #10
	strh	ip, [fp, #-234]	@ movhi
	ldrsh	r0, [r9, #2]
	add	r9, r3, #2
	ldrb	r1, [fp, #-233]	@ zero_extendqisi2
	add	lr, r9, #2
	ldr	r5, [fp, #-508]
	add	ip, lr, #2
	bfi	r1, r0, #6, #2
	strb	r1, [fp, #-233]
	add	r5, r5, #2
	str	r5, [fp, #-504]
	mov	r5, r0, lsr #2
	strb	r5, [fp, #-232]
	ldrh	r0, [r2, #2]
	add	r5, ip, #2
	ldr	r1, [fp, #-504]
	ldr	r2, [fp, #-232]
	str	r0, [fp, #-524]
	add	r0, r5, #2
	add	r1, r1, #2
	str	r1, [fp, #-636]
	add	r1, r0, #2
	str	r1, [fp, #-632]
	ldr	r1, [fp, #-524]
	ldrh	r7, [fp, #-226]
	bfi	r2, r1, #8, #10
	ldr	r1, [fp, #-636]
	str	r2, [fp, #-232]
	add	r1, r1, #2
	ldrh	sl, [sl, #2]
	str	r1, [fp, #-520]
	mov	r2, r2, lsr #16
	ldr	r1, [fp, #-632]
	bfi	r2, sl, #2, #10
	ldrb	r6, [fp, #-224]	@ zero_extendqisi2
	add	r1, r1, #2
	str	r1, [fp, #-628]
	strh	r2, [fp, #-230]	@ movhi
	add	r1, r1, #2
	ldr	sl, [fp, #-520]
	ldrsh	r2, [r3, #2]
	add	r3, sl, #2
	str	r3, [fp, #-624]
	ldr	sl, [fp, #-624]
	ldrb	r3, [fp, #-229]	@ zero_extendqisi2
	add	sl, sl, #2
	str	sl, [fp, #-620]
	add	sl, sl, #2
	str	sl, [fp, #-608]
	bfi	r3, r2, #4, #4
	mov	sl, r2, lsr #4
	strb	r3, [fp, #-229]
	bfi	r8, sl, #0, #6
	ldr	r3, [fp, #-608]
	add	sl, r1, #2
	str	r1, [fp, #-616]
	ldr	r1, [fp, #-516]
	strb	r8, [fp, #-228]
	add	r8, sl, #2
	str	sl, [fp, #-612]
	add	sl, r8, #2
	ldrh	r2, [r9, #2]
	add	r9, r3, #2
	ldrh	r3, [fp, #-228]
	str	r8, [fp, #-604]
	add	r8, r9, #2
	str	sl, [fp, #-600]
	bfi	r3, r2, #6, #10
	str	r8, [fp, #-596]
	add	r2, r8, #2
	strh	r3, [fp, #-228]	@ movhi
	add	sl, sl, #2
	ldrh	r3, [r1, #2]
	add	r1, r2, #2
	str	sl, [fp, #-588]
	add	r8, r1, #2
	bfi	r7, r3, #0, #10
	ldr	r3, [fp, #-512]
	strh	r7, [fp, #-226]	@ movhi
	add	r7, sl, #2
	str	r1, [fp, #-580]
	add	sl, r7, #2
	str	r2, [fp, #-592]
	add	r1, r8, #2
	ldrsh	r2, [r3, #2]
	ldrb	r3, [fp, #-225]	@ zero_extendqisi2
	str	r7, [fp, #-584]
	mov	r7, r2, lsr #6
	str	r8, [fp, #-576]
	str	sl, [fp, #-572]
	bfi	r3, r2, #2, #6
	str	r1, [fp, #-564]
	bfi	r6, r7, #0, #4
	strb	r3, [fp, #-225]
	add	r2, r1, #2
	strb	r6, [fp, #-224]
	add	r6, sl, #2
	str	r6, [fp, #-568]
	ldrh	sl, [lr, #2]
	ldrh	r3, [fp, #-224]
	str	r2, [fp, #-556]
	ldr	lr, [fp, #-568]
	bfi	r3, sl, #4, #10
	ldr	r7, [fp, #-556]
	strh	r3, [fp, #-224]	@ movhi
	add	r8, lr, #2
	ldr	sl, [fp, #-508]
	add	r1, r8, #2
	str	r8, [fp, #-560]
	add	r6, r7, #2
	str	r1, [fp, #-552]
	add	r2, r1, #2
	str	r6, [fp, #-548]
	add	r1, r2, #2
	ldrh	lr, [ip, #2]
	add	ip, r6, #2
	ldr	r8, [fp, #-224]
	add	r7, ip, #2
	str	r1, [fp, #-540]
	str	r7, [fp, #-536]
	bfi	r8, lr, #14, #10
	str	r2, [fp, #-544]
	str	r8, [fp, #-224]
	add	r8, r1, #2
	ldrh	r3, [fp, #-220]
	add	lr, r8, #2
	strb	r4, [fp, #-221]
	ldrh	r2, [sl, #2]
	ldr	r6, [fp, #-536]
	bfi	r3, r2, #0, #10
	strh	r3, [fp, #-220]	@ movhi
	ldr	r3, [fp, #-504]
	add	r7, r6, #2
	str	r8, [fp, #-528]
	add	sl, r7, #2
	str	r7, [fp, #-532]
	add	r7, sl, #2
	ldrh	r2, [r3, #2]
	ldr	r3, [fp, #-220]
	str	lr, [fp, #-524]
	bfi	r3, r2, #10, #10
	ldr	r1, [fp, #-524]
	str	sl, [fp, #-516]
	str	r7, [fp, #-508]
	add	r8, r1, #2
	str	r3, [fp, #-220]
	add	sl, r8, #2
	ldrh	r2, [r5, #2]
	mov	r5, r3, lsr #16
	ldrb	r6, [fp, #-212]	@ zero_extendqisi2
	ldrh	lr, [fp, #-210]
	bfi	r5, r2, #4, #10
	str	r8, [fp, #-512]
	strh	r5, [fp, #-218]	@ movhi
	add	r5, sl, #2
	str	sl, [fp, #-504]
	ldrsh	r8, [r0, #2]
	add	r0, r7, #2
	ldr	sl, [fp, #-636]
	add	r1, r0, #2
	ldrb	r3, [fp, #-217]	@ zero_extendqisi2
	add	r7, r1, #2
	mov	r2, r8, lsr #2
	strb	r2, [fp, #-216]
	str	r0, [fp, #-656]
	bfi	r3, r8, #6, #2
	str	r5, [fp, #-660]
	str	r7, [fp, #-648]
	strb	r3, [fp, #-217]
	add	r3, r5, #2
	str	r1, [fp, #-652]
	add	r0, r3, #2
	ldrh	r1, [sl, #2]
	add	r8, r0, #2
	ldr	r2, [fp, #-216]
	add	sl, r7, #2
	ldr	r5, [fp, #-520]
	add	r7, sl, #2
	str	r0, [fp, #-644]
	bfi	r2, r1, #8, #10
	ldr	r0, [fp, #-632]
	str	r2, [fp, #-216]
	str	r7, [fp, #-636]
	add	r7, r8, #2
	ldrh	r1, [r5, #2]
	mov	r5, r2, lsr #16
	str	r8, [fp, #-640]
	str	r7, [fp, #-520]
	bfi	r5, r1, #2, #10
	strh	r5, [fp, #-214]	@ movhi
	sub	r1, fp, #44
	ldrsh	r7, [r0, #2]
	ldrb	r5, [fp, #-213]	@ zero_extendqisi2
	ldr	r2, [fp, #-664]
	mov	r8, r7, lsr #4
	bfi	r5, r7, #4, #4
	bfi	r6, r8, #0, #6
	ldr	r8, [fp, #-628]
	strb	r6, [fp, #-212]
	add	r0, r2, #256
	ldr	r6, [fp, #-624]
	mov	r2, #96
	strb	r5, [fp, #-213]
	ldrh	r5, [fp, #-212]
	ldrh	r7, [r8, #2]
	bfi	r5, r7, #6, #10
	strh	r5, [fp, #-212]	@ movhi
	ldrh	r8, [r6, #2]
	bfi	lr, r8, #0, #10
	strh	lr, [fp, #-210]	@ movhi
	ldr	lr, [fp, #-620]
	ldrb	r8, [fp, #-208]	@ zero_extendqisi2
	ldrb	r7, [fp, #-209]	@ zero_extendqisi2
	ldrsh	r5, [lr, #2]
	ldr	lr, [fp, #-616]
	bfi	r7, r5, #2, #6
	strb	r7, [fp, #-209]
	mov	r6, r5, lsr #6
	ldrh	r5, [fp, #-204]
	bfi	r8, r6, #0, #4
	ldr	r6, [fp, #-612]
	strb	r8, [fp, #-208]
	ldrh	r7, [lr, #2]
	ldrh	r8, [fp, #-208]
	ldrb	lr, [fp, #-196]	@ zero_extendqisi2
	bfi	r8, r7, #4, #10
	strh	r8, [fp, #-208]	@ movhi
	ldr	r8, [fp, #-208]
	ldrh	r7, [r6, #2]
	bfi	r8, r7, #14, #10
	ldr	r7, [fp, #-608]
	str	r8, [fp, #-208]
	strb	r4, [fp, #-205]
	ldrh	r6, [r7, #2]
	ldr	r8, [fp, #-604]
	bfi	r5, r6, #0, #10
	strh	r5, [fp, #-204]	@ movhi
	ldr	r7, [fp, #-204]
	ldrh	r5, [r9, #2]
	bfi	r7, r5, #10, #10
	str	r7, [fp, #-204]
	ldrh	r6, [r8, #2]
	mov	r5, r7, lsr #16
	ldr	r7, [fp, #-600]
	bfi	r5, r6, #4, #10
	strh	r5, [fp, #-202]	@ movhi
	ldrb	r5, [fp, #-201]	@ zero_extendqisi2
	ldrsh	r6, [r7, #2]
	ldr	r7, [fp, #-596]
	bfi	r5, r6, #6, #2
	strb	r5, [fp, #-201]
	mov	r8, r6, lsr #2
	strb	r8, [fp, #-200]
	ldr	r5, [fp, #-200]
	ldrh	r8, [r7, #2]
	bfi	r5, r8, #8, #10
	str	r5, [fp, #-200]
	ldr	r6, [fp, #-592]
	ldr	r8, [fp, #-588]
	mov	r5, r5, lsr #16
	ldrh	r7, [r6, #2]
	bfi	r5, r7, #2, #10
	strh	r5, [fp, #-198]	@ movhi
	ldrsh	r6, [r8, #2]
	ldr	r8, [fp, #-584]
	ldrb	r5, [fp, #-197]	@ zero_extendqisi2
	mov	r7, r6, lsr #4
	bfi	r5, r6, #4, #4
	bfi	lr, r7, #0, #6
	strb	r5, [fp, #-197]
	strb	lr, [fp, #-196]
	ldr	r6, [fp, #-580]
	ldrh	lr, [r8, #2]
	ldrh	r7, [fp, #-196]
	ldrh	r8, [fp, #-194]
	bfi	r7, lr, #6, #10
	ldr	lr, [fp, #-576]
	strh	r7, [fp, #-196]	@ movhi
	ldrh	r5, [r6, #2]
	ldrb	r6, [fp, #-192]	@ zero_extendqisi2
	bfi	r8, r5, #0, #10
	strh	r8, [fp, #-194]	@ movhi
	ldrsh	r7, [lr, #2]
	ldrb	r5, [fp, #-193]	@ zero_extendqisi2
	ldrh	lr, [fp, #-188]
	bfi	r5, r7, #2, #6
	strb	r5, [fp, #-193]
	ldr	r5, [fp, #-572]
	mov	r8, r7, lsr #6
	bfi	r6, r8, #0, #4
	ldr	r7, [fp, #-568]
	strb	r6, [fp, #-192]
	ldrh	r6, [r5, #2]
	ldrh	r8, [fp, #-192]
	bfi	r8, r6, #4, #10
	strh	r8, [fp, #-192]	@ movhi
	ldr	r8, [fp, #-564]
	ldrh	r6, [r7, #2]
	ldr	r5, [fp, #-192]
	bfi	r5, r6, #14, #10
	str	r5, [fp, #-192]
	strb	r4, [fp, #-189]
	ldrh	r6, [r8, #2]
	bfi	lr, r6, #0, #10
	strh	lr, [fp, #-188]	@ movhi
	ldr	r7, [fp, #-556]
	ldr	lr, [fp, #-188]
	ldr	r6, [fp, #-560]
	ldrh	r5, [r7, #2]
	bfi	lr, r5, #10, #10
	ldr	r5, [fp, #-552]
	str	lr, [fp, #-188]
	ldrh	r8, [r6, #2]
	mov	r7, lr, lsr #16
	bfi	r7, r8, #4, #10
	strh	r7, [fp, #-186]	@ movhi
	ldrsh	lr, [r5, #2]
	ldr	r7, [fp, #-548]
	ldrb	r8, [fp, #-185]	@ zero_extendqisi2
	mov	r6, lr, lsr #2
	strb	r6, [fp, #-184]
	bfi	r8, lr, #6, #2
	ldr	lr, [fp, #-184]
	strb	r8, [fp, #-185]
	ldrh	r5, [r7, #2]
	ldr	r6, [fp, #-544]
	bfi	lr, r5, #8, #10
	str	lr, [fp, #-184]
	ldrh	ip, [ip, #2]
	mov	r8, lr, lsr #16
	bfi	r8, ip, #2, #10
	strh	r8, [fp, #-182]	@ movhi
	ldrsh	lr, [r6, #2]
	ldrb	r8, [fp, #-180]	@ zero_extendqisi2
	ldr	ip, [fp, #-540]
	ldrb	r7, [fp, #-181]	@ zero_extendqisi2
	mov	r5, lr, lsr #4
	bfi	r8, r5, #0, #6
	ldr	r5, [fp, #-536]
	strb	r8, [fp, #-180]
	bfi	r7, lr, #4, #4
	strb	r7, [fp, #-181]
	ldrh	r7, [fp, #-180]
	ldrh	r6, [ip, #2]
	ldrh	lr, [fp, #-178]
	bfi	r7, r6, #6, #10
	strh	r7, [fp, #-180]	@ movhi
	ldrh	r8, [r5, #2]
	ldrb	ip, [fp, #-176]	@ zero_extendqisi2
	ldrh	r5, [fp, #-172]
	bfi	lr, r8, #0, #10
	strh	lr, [fp, #-178]	@ movhi
	ldr	r6, [fp, #-532]
	ldrb	lr, [fp, #-177]	@ zero_extendqisi2
	ldrsh	r7, [r6, #2]
	ldr	r6, [fp, #-528]
	bfi	lr, r7, #2, #6
	strb	lr, [fp, #-177]
	mov	r8, r7, lsr #6
	bfi	ip, r8, #0, #4
	ldr	r8, [fp, #-524]
	strb	ip, [fp, #-176]
	ldrh	r7, [r6, #2]
	ldrh	ip, [fp, #-176]
	bfi	ip, r7, #4, #10
	ldr	r7, [fp, #-516]
	strh	ip, [fp, #-176]	@ movhi
	ldr	r6, [fp, #-176]
	ldrh	lr, [r8, #2]
	ldr	r8, [fp, #-508]
	bfi	r6, lr, #14, #10
	str	r6, [fp, #-176]
	strb	r4, [fp, #-173]
	ldrh	ip, [r7, #2]
	ldr	lr, [fp, #-512]
	bfi	r5, ip, #0, #10
	strh	r5, [fp, #-172]	@ movhi
	ldr	r6, [fp, #-172]
	ldrh	r5, [r8, #2]
	ldr	r8, [fp, #-504]
	bfi	r6, r5, #10, #10
	str	r6, [fp, #-172]
	ldrh	r7, [lr, #2]
	mov	ip, r6, lsr #16
	bfi	ip, r7, #4, #10
	strh	ip, [fp, #-170]	@ movhi
	ldrsh	lr, [r8, #2]
	ldr	r7, [fp, #-656]
	ldrb	r6, [fp, #-169]	@ zero_extendqisi2
	mov	r5, lr, lsr #2
	strb	r5, [fp, #-168]
	ldr	r5, [fp, #-168]
	bfi	r6, lr, #6, #2
	ldr	r8, [fp, #-652]
	strb	r6, [fp, #-169]
	ldrh	ip, [r7, #2]
	bfi	r5, ip, #8, #10
	str	r5, [fp, #-168]
	ldrh	lr, [r8, #2]
	mov	r6, r5, lsr #16
	ldrb	r5, [fp, #-164]	@ zero_extendqisi2
	bfi	r6, lr, #2, #10
	strh	r6, [fp, #-166]	@ movhi
	ldr	ip, [fp, #-660]
	ldrb	r8, [fp, #-165]	@ zero_extendqisi2
	ldrsh	r7, [ip, #2]
	ldrh	ip, [fp, #-162]
	bfi	r8, r7, #4, #4
	strb	r8, [fp, #-165]
	mov	lr, r7, lsr #4
	ldrb	r8, [fp, #-160]	@ zero_extendqisi2
	bfi	r5, lr, #0, #6
	ldr	lr, [fp, #-648]
	strb	r5, [fp, #-164]
	ldrh	r6, [r3, #2]
	ldrh	r7, [fp, #-164]
	bfi	r7, r6, #6, #10
	strh	r7, [fp, #-164]	@ movhi
	ldrh	r3, [lr, #2]
	ldrh	lr, [fp, #-156]
	bfi	ip, r3, #0, #10
	strh	ip, [fp, #-162]	@ movhi
	ldrsh	r5, [sl, #2]
	ldr	r3, [fp, #-644]
	ldrb	r7, [fp, #-161]	@ zero_extendqisi2
	mov	r6, r5, lsr #6
	bfi	r7, r5, #2, #6
	bfi	r8, r6, #0, #4
	strb	r7, [fp, #-161]
	strb	r8, [fp, #-160]
	ldr	r7, [fp, #-640]
	ldrh	ip, [r3, #2]
	ldrh	r8, [fp, #-160]
	bfi	r8, ip, #4, #10
	ldr	ip, [fp, #-636]
	strh	r8, [fp, #-160]	@ movhi
	ldr	r5, [fp, #-160]
	ldrh	r6, [r7, #2]
	bfi	r5, r6, #14, #10
	str	r5, [fp, #-160]
	strb	r4, [fp, #-157]
	ldrh	r3, [ip, #2]
	bfi	lr, r3, #0, #10
	strh	lr, [fp, #-156]	@ movhi
	ldr	r7, [fp, #-156]
	ldrh	r8, [ip, #4]
	ldr	lr, [fp, #-520]
	bfi	r7, r8, #10, #10
	str	r7, [fp, #-156]
	ldrh	r6, [lr, #2]
	mov	r5, r7, lsr #16
	bfi	r5, r6, #4, #10
	strh	r5, [fp, #-154]	@ movhi
	ldrsh	ip, [lr, #4]
	ldrb	r7, [fp, #-144]	@ zero_extendqisi2
	ldrb	r3, [fp, #-153]	@ zero_extendqisi2
	mov	r8, ip, lsr #2
	strb	r8, [fp, #-152]
	ldr	lr, [fp, #-152]
	bfi	r3, ip, #6, #2
	bfi	r7, r4, #0, #4
	strb	r3, [fp, #-153]
	bfi	lr, r4, #8, #10
	strb	r7, [fp, #-144]
	ldrh	r3, [fp, #-146]
	ldrh	r5, [fp, #-144]
	mov	ip, lr, lsr #16
	ldrb	r6, [fp, #-148]	@ zero_extendqisi2
	bfi	ip, r4, #2, #10
	bfi	r3, r4, #0, #10
	bfi	r5, r4, #4, #10
	strh	r5, [fp, #-144]	@ movhi
	bfi	r6, r4, #0, #6
	strb	r6, [fp, #-148]
	mov	r8, ip, lsr #8
	ldr	r6, [fp, #-144]
	mov	r5, r3, lsr #8
	ldrh	r7, [fp, #-148]
	bfi	r8, r4, #4, #4
	str	lr, [fp, #-152]
	bfi	r5, r4, #2, #6
	strh	ip, [fp, #-150]	@ movhi
	bfi	r7, r4, #6, #10
	strb	r8, [fp, #-149]
	bfi	r6, r4, #14, #10
	strh	r3, [fp, #-146]	@ movhi
	mov	r8, r2
	str	r6, [fp, #-144]
	strh	r7, [fp, #-148]	@ movhi
	strb	r5, [fp, #-145]
	strb	r4, [fp, #-141]
	str	r2, [r1, #-196]!
	add	r1, r1, #4
	bl	memcpy
	mov	r0, r4
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadGfxZoomCoefV, .-VouLoadGfxZoomCoefV
	.align	2
	.type	VouLoadSDGfxZoomCoefH, %function
VouLoadSDGfxZoomCoefH:
	UNWIND(.fnstart)
.LFB13:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #128)
	sub	sp, sp, #128
	movw	r5, #:lower16:g_pSDGfxOrgZoomCoef
	movt	r5, #:upper16:g_pSDGfxOrgZoomCoef
	sub	r4, fp, #156
	mov	r7, r0
	ldr	r3, [r5, r0, asl #4]
	mov	r6, r1
	mov	r2, #0
.L143:
	ldrh	ip, [r3, r2]
	add	r1, r2, #2
	strh	ip, [r4, r2]	@ movhi
	add	r2, r1, #2
	ldrh	r0, [r3, r1]
	cmp	r2, #128
	strh	r0, [r4, r1]	@ movhi
	bne	.L143
	add	r5, r5, r7, asl #4
	mov	r1, r4
	mov	r0, r6
	bl	memcpy
	ldr	r1, [r5, #8]
	mov	r2, #0
.L144:
	ldrh	r0, [r1, r2]
	add	r3, r2, #2
	strh	r0, [r4, r2]	@ movhi
	add	r2, r3, #2
	ldrh	lr, [r1, r3]
	cmp	r2, #128
	strh	lr, [r4, r3]	@ movhi
	bne	.L144
	add	r0, r6, #128
	mov	r1, r4
	bl	memcpy
	mov	r0, #0
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadSDGfxZoomCoefH, .-VouLoadSDGfxZoomCoefH
	.align	2
	.type	VouLoadSDGfxZoomCoefV, %function
VouLoadSDGfxZoomCoefV:
	UNWIND(.fnstart)
.LFB14:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #256)
	sub	sp, sp, #256
	movw	r2, #:lower16:g_pSDGfxOrgZoomCoef
	movt	r2, #:upper16:g_pSDGfxOrgZoomCoef
	add	lr, r2, r0, asl #4
	sub	r6, fp, #28
	mvn	r4, #255
	mov	r0, r1
	ldr	r7, [lr, #12]
	mov	r2, #256
	ldr	lr, [lr, #4]
	sub	r1, fp, #284
	mov	ip, r7
	ldrh	r5, [ip], #2
	strh	r5, [r6, r4]	@ movhi
	add	r6, ip, #2
	ldrh	r3, [r7, #2]
	sub	r7, fp, #256
	strh	r3, [r7, #-26]	@ movhi
	mov	r3, lr
	ldrh	ip, [ip, #2]
	strh	ip, [r7, #-24]	@ movhi
	add	ip, r6, #2
	ldrh	r4, [r6, #2]
	mov	r6, r7
	add	r5, ip, #2
	strh	r4, [r7, #-22]	@ movhi
	mov	r4, r6
	ldrh	r7, [r3], #2
	strh	r7, [r6, #-20]	@ movhi
	add	r6, r3, #2
	ldrh	lr, [lr, #2]
	mov	r7, r4
	strh	lr, [r4, #-18]	@ movhi
	add	r4, r5, #2
	ldrh	r3, [r3, #2]
	add	lr, r4, #2
	strh	r3, [r7, #-16]	@ movhi
	ldrh	r3, [r6, #2]
	strh	r3, [r7, #-14]	@ movhi
	add	r3, r6, #2
	ldrh	ip, [ip, #2]
	strh	ip, [r7, #-12]	@ movhi
	add	ip, r3, #2
	ldrh	r5, [r5, #2]
	strh	r5, [r7, #-10]	@ movhi
	add	r5, lr, #2
	ldrh	r4, [r4, #2]
	strh	r4, [r7, #-8]	@ movhi
	add	r4, ip, #2
	ldrh	lr, [lr, #2]
	strh	lr, [r7, #-6]	@ movhi
	add	lr, r5, #2
	ldrh	r3, [r3, #2]
	strh	r3, [r7, #-4]	@ movhi
	add	r3, r4, #2
	ldrh	ip, [ip, #2]
	strh	ip, [r7, #-2]	@ movhi
	add	ip, lr, #2
	ldrh	r4, [r4, #2]
	strh	r4, [r7, #0]	@ movhi
	add	r4, ip, #2
	ldrh	r6, [r3, #2]
	strh	r6, [fp, #-254]	@ movhi
	add	r6, r3, #2
	ldrh	r7, [r5, #2]
	strh	r7, [fp, #-252]	@ movhi
	add	r7, r6, #2
	ldrh	lr, [lr, #2]
	strh	lr, [fp, #-250]	@ movhi
	ldrh	r5, [ip, #2]
	strh	r5, [fp, #-248]	@ movhi
	add	r5, r7, #2
	ldrh	ip, [r4, #2]
	strh	ip, [fp, #-246]	@ movhi
	ldrh	r3, [r6, #2]
	strh	r3, [fp, #-244]	@ movhi
	add	r3, r5, #2
	ldrh	lr, [r7, #2]
	add	r7, r4, #2
	strh	lr, [fp, #-242]	@ movhi
	add	lr, r7, #2
	ldrh	r6, [r5, #2]
	strh	r6, [fp, #-240]	@ movhi
	add	r6, lr, #2
	ldrh	ip, [r3, #2]
	add	r3, r3, #2
	strh	ip, [fp, #-238]	@ movhi
	ldrh	r5, [r7, #2]
	strh	r5, [fp, #-236]	@ movhi
	add	r5, r6, #2
	ldrh	r4, [lr, #2]
	add	lr, r3, #2
	strh	r4, [fp, #-234]	@ movhi
	ldrh	ip, [r6, #2]
	strh	ip, [fp, #-232]	@ movhi
	ldrh	r7, [r5, #2]
	strh	r7, [fp, #-230]	@ movhi
	add	r7, r5, #2
	ldrh	r6, [r3, #2]
	add	r3, lr, #2
	strh	r6, [fp, #-228]	@ movhi
	ldrh	r4, [lr, #2]
	add	lr, r3, #2
	strh	r4, [fp, #-226]	@ movhi
	add	r4, r7, #2
	ldrh	ip, [r3, #2]
	add	r3, r4, #2
	strh	ip, [fp, #-224]	@ movhi
	add	ip, lr, #2
	ldrh	r6, [lr, #2]
	strh	r6, [fp, #-222]	@ movhi
	add	r6, r3, #2
	ldrh	r5, [r7, #2]
	strh	r5, [fp, #-220]	@ movhi
	add	r5, ip, #2
	ldrh	lr, [r4, #2]
	strh	lr, [fp, #-218]	@ movhi
	ldrh	r7, [r3, #2]
	add	r3, r5, #2
	strh	r7, [fp, #-216]	@ movhi
	ldrh	r4, [r6, #2]
	strh	r4, [fp, #-214]	@ movhi
	ldrh	ip, [ip, #2]
	strh	ip, [fp, #-212]	@ movhi
	add	ip, r3, #2
	ldrh	lr, [r5, #2]
	add	r5, r6, #2
	add	r6, r5, #2
	strh	lr, [fp, #-210]	@ movhi
	ldrh	r7, [r3, #2]
	strh	r7, [fp, #-208]	@ movhi
	add	r7, r6, #2
	ldrh	r4, [ip, #2]
	strh	r4, [fp, #-206]	@ movhi
	ldrh	lr, [r5, #2]
	strh	lr, [fp, #-204]	@ movhi
	add	lr, r7, #2
	ldrh	r3, [r6, #2]
	add	r6, ip, #2
	strh	r3, [fp, #-202]	@ movhi
	ldrh	r4, [r7, #2]
	add	r7, r6, #2
	add	ip, r7, #2
	strh	r4, [fp, #-200]	@ movhi
	ldrh	r5, [lr, #2]
	strh	r5, [fp, #-198]	@ movhi
	add	r5, lr, #2
	ldrh	r3, [r6, #2]
	strh	r3, [fp, #-196]	@ movhi
	add	r3, ip, #2
	ldrh	r4, [r7, #2]
	add	r7, r5, #2
	strh	r4, [fp, #-194]	@ movhi
	add	r4, r7, #2
	ldrh	r6, [ip, #2]
	strh	r6, [fp, #-192]	@ movhi
	add	r6, r3, #2
	ldrh	r3, [r3, #2]
	strh	r3, [fp, #-190]	@ movhi
	add	r3, r4, #2
	ldrh	lr, [r5, #2]
	strh	lr, [fp, #-188]	@ movhi
	add	lr, r6, #2
	ldrh	r5, [r7, #2]
	strh	r5, [fp, #-186]	@ movhi
	ldrh	ip, [r4, #2]
	strh	ip, [fp, #-184]	@ movhi
	add	ip, lr, #2
	ldrh	r7, [r3, #2]
	strh	r7, [fp, #-182]	@ movhi
	ldrh	r4, [r6, #2]
	strh	r4, [fp, #-180]	@ movhi
	add	r4, ip, #2
	ldrh	r5, [lr, #2]
	add	lr, r3, #2
	strh	r5, [fp, #-178]	@ movhi
	add	r5, lr, #2
	ldrh	r7, [ip, #2]
	strh	r7, [fp, #-176]	@ movhi
	add	r7, r5, #2
	ldrh	r6, [r4, #2]
	add	r4, r4, #2
	strh	r6, [fp, #-174]	@ movhi
	ldrh	r3, [lr, #2]
	strh	r3, [fp, #-172]	@ movhi
	add	r3, r7, #2
	ldrh	ip, [r5, #2]
	strh	ip, [fp, #-170]	@ movhi
	add	ip, r4, #2
	ldrh	lr, [r7, #2]
	strh	lr, [fp, #-168]	@ movhi
	add	lr, ip, #2
	ldrh	r5, [r3, #2]
	strh	r5, [fp, #-166]	@ movhi
	ldrh	r6, [r4, #2]
	strh	r6, [fp, #-164]	@ movhi
	add	r6, r3, #2
	ldrh	r7, [ip, #2]
	add	ip, lr, #2
	strh	r7, [fp, #-162]	@ movhi
	add	r7, r6, #2
	ldrh	r5, [lr, #2]
	strh	r5, [fp, #-160]	@ movhi
	add	r5, r7, #2
	ldrh	r4, [ip, #2]
	strh	r4, [fp, #-158]	@ movhi
	ldrh	r3, [r6, #2]
	add	r6, ip, #2
	strh	r3, [fp, #-156]	@ movhi
	add	r3, r5, #2
	ldrh	lr, [r7, #2]
	strh	lr, [fp, #-154]	@ movhi
	add	lr, r6, #2
	ldrh	r4, [r5, #2]
	strh	r4, [fp, #-152]	@ movhi
	ldrh	r7, [r3, #2]
	add	r3, r3, #2
	strh	r7, [fp, #-150]	@ movhi
	add	r7, lr, #2
	ldrh	r5, [r6, #2]
	strh	r5, [fp, #-148]	@ movhi
	ldrh	r4, [lr, #2]
	add	lr, r3, #2
	strh	r4, [fp, #-146]	@ movhi
	add	r4, r7, #2
	ldrh	ip, [r7, #2]
	add	r7, lr, #2
	strh	ip, [fp, #-144]	@ movhi
	ldrh	r6, [r4, #2]
	add	r4, r4, #2
	strh	r6, [fp, #-142]	@ movhi
	ldrh	r5, [r3, #2]
	strh	r5, [fp, #-140]	@ movhi
	add	r5, r7, #2
	ldrh	r3, [lr, #2]
	add	lr, r4, #2
	strh	r3, [fp, #-138]	@ movhi
	ldrh	ip, [r7, #2]
	strh	ip, [fp, #-136]	@ movhi
	add	ip, lr, #2
	ldrh	r6, [r5, #2]
	strh	r6, [fp, #-134]	@ movhi
	ldrh	r7, [r4, #2]
	add	r4, ip, #2
	strh	r7, [fp, #-132]	@ movhi
	add	r7, r5, #2
	ldrh	r3, [lr, #2]
	add	r5, r7, #2
	strh	r3, [fp, #-130]	@ movhi
	ldrh	r6, [ip, #2]
	strh	r6, [fp, #-128]	@ movhi
	add	r6, r5, #2
	ldrh	lr, [r4, #2]
	strh	lr, [fp, #-126]	@ movhi
	add	lr, r4, #2
	ldrh	r3, [r7, #2]
	strh	r3, [fp, #-124]	@ movhi
	ldrh	ip, [r5, #2]
	add	r5, r6, #2
	strh	ip, [fp, #-122]	@ movhi
	add	ip, lr, #2
	ldrh	r7, [r6, #2]
	add	r6, ip, #2
	strh	r7, [fp, #-120]	@ movhi
	add	r7, r5, #2
	ldrh	r3, [r5, #2]
	strh	r3, [fp, #-118]	@ movhi
	ldrh	r5, [lr, #2]
	strh	r5, [fp, #-116]	@ movhi
	ldrh	r4, [ip, #2]
	strh	r4, [fp, #-114]	@ movhi
	add	r4, r6, #2
	ldrh	r3, [r6, #2]
	add	r6, r7, #2
	strh	r3, [fp, #-112]	@ movhi
	add	r3, r6, #2
	ldrh	lr, [r4, #2]
	strh	lr, [fp, #-110]	@ movhi
	ldrh	ip, [r7, #2]
	strh	ip, [fp, #-108]	@ movhi
	add	ip, r3, #2
	ldrh	r5, [r6, #2]
	add	r6, r4, #2
	strh	r5, [fp, #-106]	@ movhi
	ldrh	r7, [r3, #2]
	add	r3, r6, #2
	strh	r7, [fp, #-104]	@ movhi
	add	r7, r3, #2
	ldrh	lr, [ip, #2]
	add	ip, ip, #2
	strh	lr, [fp, #-102]	@ movhi
	ldrh	r5, [r6, #2]
	strh	r5, [fp, #-100]	@ movhi
	add	r5, r7, #2
	ldrh	r4, [r3, #2]
	strh	r4, [fp, #-98]	@ movhi
	add	r4, ip, #2
	ldrh	lr, [r7, #2]
	strh	lr, [fp, #-96]	@ movhi
	add	lr, r4, #2
	ldrh	r6, [r5, #2]
	add	r5, r5, #2
	strh	r6, [fp, #-94]	@ movhi
	add	r6, lr, #2
	ldrh	r3, [ip, #2]
	strh	r3, [fp, #-92]	@ movhi
	ldrh	r7, [r4, #2]
	strh	r7, [fp, #-90]	@ movhi
	add	r7, r5, #2
	ldrh	ip, [lr, #2]
	add	lr, r7, #2
	strh	ip, [fp, #-88]	@ movhi
	add	ip, r6, #2
	ldrh	r3, [r6, #2]
	strh	r3, [fp, #-86]	@ movhi
	add	r3, lr, #2
	ldrh	r4, [r5, #2]
	strh	r4, [fp, #-84]	@ movhi
	ldrh	r6, [r7, #2]
	strh	r6, [fp, #-82]	@ movhi
	add	r6, ip, #2
	ldrh	r5, [lr, #2]
	add	lr, r6, #2
	strh	r5, [fp, #-80]	@ movhi
	ldrh	r4, [r3, #2]
	strh	r4, [fp, #-78]	@ movhi
	ldrh	r7, [ip, #2]
	strh	r7, [fp, #-76]	@ movhi
	add	r7, lr, #2
	ldrh	ip, [r6, #2]
	add	r6, r3, #2
	strh	ip, [fp, #-74]	@ movhi
	add	ip, r6, #2
	ldrh	r5, [lr, #2]
	strh	r5, [fp, #-72]	@ movhi
	add	r5, ip, #2
	ldrh	r4, [r7, #2]
	strh	r4, [fp, #-70]	@ movhi
	ldrh	r3, [r6, #2]
	strh	r3, [fp, #-68]	@ movhi
	add	r3, r5, #2
	ldrh	lr, [ip, #2]
	add	ip, r7, #2
	add	r7, ip, #2
	strh	lr, [fp, #-66]	@ movhi
	ldrh	r4, [r5, #2]
	strh	r4, [fp, #-64]	@ movhi
	add	r4, r7, #2
	ldrh	r6, [r3, #2]
	strh	r6, [fp, #-62]	@ movhi
	add	r6, r3, #2
	ldrh	lr, [ip, #2]
	strh	lr, [fp, #-60]	@ movhi
	add	lr, r4, #2
	ldrh	r5, [r7, #2]
	strh	r5, [fp, #-58]	@ movhi
	add	r5, r6, #2
	ldrh	ip, [r4, #2]
	add	r4, r5, #2
	strh	ip, [fp, #-56]	@ movhi
	add	ip, lr, #2
	ldrh	r7, [lr, #2]
	strh	r7, [fp, #-54]	@ movhi
	add	r7, r4, #2
	ldrh	r3, [r6, #2]
	strh	r3, [fp, #-52]	@ movhi
	add	r3, ip, #2
	ldrh	r6, [r5, #2]
	strh	r6, [fp, #-50]	@ movhi
	ldrh	r5, [r4, #2]
	add	r4, r3, #2
	strh	r5, [fp, #-48]	@ movhi
	ldrh	r5, [r7, #2]
	strh	r5, [fp, #-46]	@ movhi
	ldrh	lr, [ip, #2]
	add	ip, r7, #2
	add	r7, ip, #2
	strh	lr, [fp, #-44]	@ movhi
	ldrh	r6, [r3, #2]
	add	r3, r7, #2
	strh	r6, [fp, #-42]	@ movhi
	ldrh	r6, [r4, #2]
	strh	r6, [fp, #-40]	@ movhi
	ldrh	r4, [r4, #4]
	strh	r4, [fp, #-38]	@ movhi
	ldrh	lr, [ip, #2]
	strh	lr, [fp, #-36]	@ movhi
	ldrh	ip, [r7, #2]
	strh	ip, [fp, #-34]	@ movhi
	ldrh	r7, [r3, #2]
	strh	r7, [fp, #-32]	@ movhi
	ldrh	r3, [r3, #4]
	strh	r3, [fp, #-30]	@ movhi
	bl	memcpy
	mov	r0, #0
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadSDGfxZoomCoefV, .-VouLoadSDGfxZoomCoefV
	.align	2
	.global	VouLoadGfxZoomCoefHV
	.type	VouLoadGfxZoomCoefHV, %function
VouLoadGfxZoomCoefHV:
	UNWIND(.fnstart)
.LFB15:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r7, r2
	mov	r6, r3
	mov	r4, r0
	mov	r2, r3
	mov	sl, r1
	mov	r0, #0
	mov	r1, r7
	add	r5, sl, #304
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #304
	mov	r2, r6
	str	sl, [r4, #0]
	mov	r0, #1
	add	r8, sl, #608
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #608
	mov	r2, r6
	str	r5, [r4, #4]
	mov	r0, #2
	add	r5, sl, #912
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #912
	mov	r2, r6
	str	r8, [r4, #8]
	mov	r0, #3
	add	r8, sl, #1216
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #1216
	mov	r2, r6
	str	r5, [r4, #12]
	mov	r0, #4
	add	r5, sl, #1520
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #1520
	mov	r2, r6
	str	r8, [r4, #16]
	mov	r0, #5
	add	r8, sl, #1824
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #1824
	mov	r2, r6
	str	r5, [r4, #20]
	mov	r0, #6
	add	r5, sl, #2128
	bl	VouLoadGfxZoomCoefH
	add	r1, r7, #2128
	mov	r2, r6
	str	r8, [r4, #24]
	mov	r0, #0
	add	r8, sl, #2480
	bl	VouLoadGfxZoomCoefV
	add	r1, r7, #2480
	mov	r2, r6
	str	r5, [r4, #28]
	mov	r0, #1
	add	r5, r7, #3888
	bl	VouLoadGfxZoomCoefV
	add	r1, r7, #2832
	mov	r2, r6
	str	r8, [r4, #32]
	mov	r0, #2
	add	r8, sl, #2832
	bl	VouLoadGfxZoomCoefV
	add	r1, r7, #3184
	mov	r2, r6
	str	r8, [r4, #36]
	mov	r0, #3
	add	r8, sl, #3184
	bl	VouLoadGfxZoomCoefV
	add	r1, r7, #3536
	mov	r2, r6
	str	r8, [r4, #40]
	mov	r0, #4
	add	r7, sl, #3536
	bl	VouLoadGfxZoomCoefV
	mov	r2, r6
	mov	r1, r5
	str	r7, [r4, #44]
	mov	r0, #5
	add	sl, sl, #3888
	bl	VouLoadGfxZoomCoefV
	mov	r2, r6
	str	sl, [r4, #48]
	add	r1, r5, #352
	mov	r0, #6
	add	r6, sl, #352
	bl	VouLoadGfxZoomCoefV
	str	r6, [r4, #52]
	add	r1, r5, #704
	mov	r0, #0
	bl	VouLoadSDGfxZoomCoefH
	add	r0, sl, #704
	add	r1, r5, #960
	str	r0, [r4, #56]
	mov	r0, #1
	add	r6, sl, #960
	bl	VouLoadSDGfxZoomCoefH
	str	r6, [r4, #60]
	add	r1, r5, #1216
	mov	r0, #2
	bl	VouLoadSDGfxZoomCoefH
	add	r3, sl, #1216
	add	r1, r5, #1472
	str	r3, [r4, #64]
	mov	r0, #3
	add	r6, sl, #1472
	bl	VouLoadSDGfxZoomCoefH
	str	r6, [r4, #68]
	add	r1, r5, #1728
	mov	r0, #4
	bl	VouLoadSDGfxZoomCoefH
	add	ip, sl, #1728
	add	r1, r5, #1984
	str	ip, [r4, #72]
	mov	r0, #5
	add	r6, sl, #1984
	bl	VouLoadSDGfxZoomCoefH
	str	r6, [r4, #76]
	add	r1, r5, #2240
	mov	r0, #6
	bl	VouLoadSDGfxZoomCoefH
	add	r2, sl, #2240
	add	r1, r5, #2496
	str	r2, [r4, #80]
	mov	r0, #0
	add	r6, sl, #2496
	bl	VouLoadSDGfxZoomCoefV
	str	r6, [r4, #84]
	add	r1, r5, #2752
	mov	r0, #1
	bl	VouLoadSDGfxZoomCoefV
	add	r1, sl, #2752
	mov	r0, #2
	str	r1, [r4, #88]
	add	r1, r5, #3008
	add	r6, sl, #3008
	bl	VouLoadSDGfxZoomCoefV
	str	r6, [r4, #92]
	add	r1, r5, #3264
	mov	r0, #3
	bl	VouLoadSDGfxZoomCoefV
	add	r0, sl, #3264
	add	r1, r5, #3520
	str	r0, [r4, #96]
	mov	r0, #4
	add	r6, sl, #3520
	bl	VouLoadSDGfxZoomCoefV
	add	r1, r5, #3776
	str	r6, [r4, #100]
	mov	r0, #5
	bl	VouLoadSDGfxZoomCoefV
	add	r3, sl, #3776
	add	r1, r5, #4032
	str	r3, [r4, #104]
	mov	r0, #6
	add	sl, sl, #4032
	bl	VouLoadSDGfxZoomCoefV
	str	sl, [r4, #108]
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadGfxZoomCoefHV, .-VouLoadGfxZoomCoefHV
	.align	2
	.global	OPTM_AA_InitGzmeCoef
	.type	OPTM_AA_InitGzmeCoef, %function
OPTM_AA_InitGzmeCoef:
	UNWIND(.fnstart)
.LFB16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #24)
	sub	sp, sp, #24
	mov	r2, #124
	mov	r7, r1
	mov	r1, #0
	mov	r5, r0
	bl	memset
	mov	r1, #0
	movw	r0, #:lower16:.LC0
	movw	r2, #8176
	movt	r0, #:upper16:.LC0
	mov	r3, r1
	sub	r4, fp, #40
	str	r4, [sp, #0]
	bl	HI_MMZ_Alloc
	subs	r6, r0, #0
	mvnne	r0, #0
	bne	.L156
	ldmia	r4, {r0, r1, r2}
	mov	r3, r7
	stmia	r5, {r0, r1, r2}
	add	r0, r5, #12
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	bl	VouLoadGfxZoomCoefHV
	mov	r0, r6
.L156:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_InitGzmeCoef, .-OPTM_AA_InitGzmeCoef
	.align	2
	.type	VouLoadZoomCoefH, %function
VouLoadZoomCoefH:
	UNWIND(.fnstart)
.LFB1:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #200)
	sub	sp, sp, #200
	movw	lr, #:lower16:g_pOrgZoomCoef
	sub	r4, fp, #224
	movt	lr, #:upper16:g_pOrgZoomCoef
	add	r6, r0, r0, asl #3
	add	r5, r4, #4
	mov	r7, r1
	ldr	r0, [lr, r6, asl #2]
	mov	r2, r4
	mov	r1, #0
	add	r6, lr, r6, asl #2
	bl	VouTranlateZoomCoef
	mov	r1, r5
	ldr	r2, [fp, #-224]
	mov	r0, r7
	bl	memcpy
	ldr	ip, [fp, #-224]
	mov	r2, r4
	ldr	r0, [r6, #8]
	add	r7, r7, ip
	mov	r1, #2
	bl	VouTranlateZoomCoef
	mov	r1, r5
	ldr	r2, [fp, #-224]
	mov	r0, r7
	bl	memcpy
	ldr	r1, [fp, #-224]
	mov	r2, r4
	ldr	r0, [r6, #20]
	add	r7, r7, r1
	mov	r1, #5
	bl	VouTranlateZoomCoef
	mov	r1, r5
	ldr	r2, [fp, #-224]
	mov	r0, r7
	bl	memcpy
	ldr	r3, [fp, #-224]
	mov	r2, r4
	ldr	r0, [r6, #28]
	add	r7, r7, r3
	mov	r1, #7
	bl	VouTranlateZoomCoef
	mov	r1, r5
	mov	r0, r7
	ldr	r2, [fp, #-224]
	bl	memcpy
	mov	r0, #0
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadZoomCoefH, .-VouLoadZoomCoefH
	.align	2
	.type	VouLoadZoomCoefV, %function
VouLoadZoomCoefV:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #200)
	sub	sp, sp, #200
	add	r7, r0, r0, asl #3
	sub	r4, fp, #232
	add	r0, r7, r1
	movw	r5, #:lower16:g_pOrgZoomCoef
	movt	r5, #:upper16:g_pOrgZoomCoef
	add	r6, r4, #4
	mov	sl, r3
	mov	r8, r2
	ldr	r0, [r5, r0, asl #2]
	mov	r2, r4
	bl	VouTranlateZoomCoef
	mov	r1, r6
	ldr	r2, [fp, #-232]
	mov	r0, sl
	bl	memcpy
	ldr	r2, [fp, #-232]
	add	ip, r7, r8
	mov	r1, r8
	add	sl, sl, r2
	mov	r2, r4
	ldr	r0, [r5, ip, asl #2]
	add	r5, r5, r7, asl #2
	bl	VouTranlateZoomCoef
	mov	r1, r6
	ldr	r2, [fp, #-232]
	mov	r0, sl
	bl	memcpy
	ldr	r1, [fp, #-232]
	mov	r2, r4
	ldr	r0, [r5, #24]
	add	sl, sl, r1
	mov	r1, #6
	bl	VouTranlateZoomCoef
	mov	r1, r6
	ldr	r2, [fp, #-232]
	mov	r0, sl
	bl	memcpy
	ldr	r3, [fp, #-232]
	mov	r2, r4
	ldr	r0, [r5, #32]
	add	sl, sl, r3
	mov	r1, #8
	bl	VouTranlateZoomCoef
	mov	r1, r6
	mov	r0, sl
	ldr	r2, [fp, #-232]
	bl	memcpy
	mov	r0, #0
	sub	sp, fp, #36
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadZoomCoefV, .-VouLoadZoomCoefV
	.align	2
	.global	VouLoadZoomCoefHV
	.type	VouLoadZoomCoefHV, %function
VouLoadZoomCoefHV:
	UNWIND(.fnstart)
.LFB3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r4, r0
	mov	sl, r1
	mov	r0, #0
	mov	r1, r2
	mov	r8, r2
	bl	VouLoadZoomCoefH
	str	sl, [r4, #0]
	add	r1, r8, #576
	mov	r0, #1
	add	r6, sl, #576
	bl	VouLoadZoomCoefH
	str	r6, [r4, #4]
	add	r1, r8, #1152
	mov	r0, #2
	bl	VouLoadZoomCoefH
	add	r3, sl, #1152
	add	r1, r8, #1728
	str	r3, [r4, #8]
	mov	r0, #3
	add	r5, sl, #1728
	bl	VouLoadZoomCoefH
	str	r5, [r4, #12]
	add	r1, r8, #2304
	mov	r0, #4
	add	r5, r8, #4032
	bl	VouLoadZoomCoefH
	add	r2, sl, #2304
	add	r1, r8, #2880
	str	r2, [r4, #16]
	mov	r0, #5
	bl	VouLoadZoomCoefH
	add	r1, sl, #2880
	mov	r0, #6
	str	r1, [r4, #20]
	add	r1, r8, #3456
	add	r7, sl, #3456
	bl	VouLoadZoomCoefH
	mov	r3, r5
	str	r7, [r4, #24]
	mov	r1, #1
	mov	r2, #3
	mov	r0, #0
	bl	VouLoadZoomCoefV
	mov	r0, #1
	add	r7, sl, #4032
	add	r3, r5, #336
	str	r7, [r4, #28]
	mov	r1, r0
	mov	r2, #3
	add	r6, r7, #336
	bl	VouLoadZoomCoefV
	add	r3, r5, #672
	str	r6, [r4, #32]
	mov	r1, #1
	mov	r2, #3
	mov	r0, #2
	bl	VouLoadZoomCoefV
	mov	r0, #3
	add	ip, r7, #672
	add	r3, r5, #1008
	str	ip, [r4, #36]
	mov	r1, #1
	mov	r2, r0
	add	r6, r7, #1008
	bl	VouLoadZoomCoefV
	str	r6, [r4, #40]
	add	r3, r8, #5376
	mov	r1, #1
	mov	r2, #3
	mov	r0, #4
	bl	VouLoadZoomCoefV
	add	sl, sl, #5376
	add	r3, r5, #1680
	mov	r1, #1
	mov	r2, #3
	str	sl, [r4, #44]
	mov	r0, #5
	add	r6, r7, #1680
	bl	VouLoadZoomCoefV
	add	r3, r5, #2016
	str	r6, [r4, #48]
	mov	r1, #1
	mov	r2, #3
	mov	r0, #6
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, r1
	add	r3, r5, #2352
	add	r0, r7, #2016
	str	r0, [r4, #52]
	mov	r0, #0
	add	r6, r7, #2352
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, r1
	add	r3, r5, #2640
	str	r6, [r4, #56]
	mov	r0, #1
	bl	VouLoadZoomCoefV
	mov	r1, #3
	add	ip, r7, #2640
	mov	r2, r1
	str	ip, [r4, #60]
	add	r3, r5, #2928
	mov	r0, #2
	add	r6, r7, #2928
	bl	VouLoadZoomCoefV
	mov	r0, #3
	add	r3, r5, #3216
	str	r6, [r4, #64]
	mov	r1, r0
	mov	r2, r0
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, r1
	add	r3, r5, #3504
	add	r6, r7, #3216
	mov	r0, #4
	str	r6, [r4, #68]
	add	r6, r5, #4080
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, r1
	add	r3, r5, #3792
	add	r0, r7, #3504
	str	r0, [r4, #72]
	mov	r0, #5
	add	r5, r7, #3792
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, r1
	str	r5, [r4, #76]
	mov	r3, r6
	mov	r0, #6
	add	r7, r7, #4080
	bl	VouLoadZoomCoefV
	str	r7, [r4, #80]
	mov	r1, #3
	mov	r2, #4
	add	r3, r6, #288
	mov	r0, #0
	add	r5, r7, #288
	bl	VouLoadZoomCoefV
	str	r5, [r4, #84]
	mov	r1, #3
	mov	r2, #4
	add	r3, r6, #576
	mov	r0, #1
	bl	VouLoadZoomCoefV
	add	r3, r7, #576
	mov	r1, #3
	str	r3, [r4, #88]
	mov	r2, #4
	add	r3, r6, #864
	mov	r0, #2
	add	r5, r7, #864
	bl	VouLoadZoomCoefV
	mov	r0, #3
	str	r5, [r4, #92]
	mov	r1, r0
	mov	r2, #4
	add	r3, r6, #1152
	bl	VouLoadZoomCoefV
	mov	r0, #4
	add	ip, r7, #1152
	mov	r1, #3
	str	ip, [r4, #96]
	mov	r2, r0
	add	r3, r6, #1440
	add	r5, r7, #1440
	bl	VouLoadZoomCoefV
	mov	r1, #3
	mov	r2, #4
	add	r3, r6, #1728
	str	r5, [r4, #100]
	mov	r0, #5
	bl	VouLoadZoomCoefV
	add	r2, r7, #1728
	add	r3, r6, #2016
	str	r2, [r4, #104]
	mov	r0, #6
	mov	r1, #3
	mov	r2, #4
	add	r7, r7, #2016
	bl	VouLoadZoomCoefV
	str	r7, [r4, #108]
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	VouLoadZoomCoefHV, .-VouLoadZoomCoefHV
	.align	2
	.global	OPTM_AA_InitVzmeCoef
	.type	OPTM_AA_InitVzmeCoef, %function
OPTM_AA_InitVzmeCoef:
	UNWIND(.fnstart)
.LFB4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #28)
	sub	sp, sp, #28
	mov	r1, #0
	mov	r2, #152
	mov	r5, r0
	bl	memset
	mov	r1, #0
	movw	r0, #:lower16:.LC1
	movw	r2, #10416
	movt	r0, #:upper16:.LC1
	mov	r3, r1
	sub	r4, fp, #40
	str	r4, [sp, #0]
	bl	HI_MMZ_Alloc
	subs	r6, r0, #0
	mvnne	r6, #0
	bne	.L166
	add	r0, r5, #12
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-40]
	bl	VouLoadZoomCoefHV
	ldmia	r4, {r0, r1, r2}
	stmia	r5, {r0, r1, r2}
.L166:
	mov	r0, r6
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_InitVzmeCoef, .-OPTM_AA_InitVzmeCoef
	.align	2
	.global	OPTM_AA_VZmeApi
	.type	OPTM_AA_VZmeApi, %function
OPTM_AA_VZmeApi:
	UNWIND(.fnstart)
.LFB6:
	@ args = 12, pretend = 0, frame = 440
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #500)
	sub	sp, sp, #500
	sub	sl, fp, #104
	mov	r5, #0
	add	r6, sl, #8
	sub	r9, fp, #168
	ldr	r8, [fp, #12]
	mov	r4, r0
	str	r5, [r6], #4
	mov	r2, #64
	str	r5, [r6], #4
	mov	r0, r9
	str	r5, [r6], #4
	mov	r7, r3
	str	r5, [r6], #4
	str	r5, [r6], #4
	add	ip, r6, #4
	mov	r6, r1
	mov	r1, r5
	str	r5, [ip], #4
	str	r5, [ip], #4
	str	r5, [ip], #4
	str	r5, [ip], #4
	str	r5, [ip, #0]
	str	r5, [fp, #-100]
	bl	memset
	mov	r1, r5
	mov	r2, #156
	sub	r0, fp, #324
	bl	memset
	ldrh	r1, [r8, #4]
	ldr	r0, [r8, #0]
	cmp	r7, r5
	strh	r1, [fp, #-58]	@ movhi
	ldrh	r2, [r8, #6]
	str	r0, [fp, #-104]
	str	r0, [fp, #-76]
	strh	r2, [fp, #-56]	@ movhi
	ldrne	r0, [r7, #28]
	streq	r7, [r6, #68]
	strne	r0, [r6, #68]
	cmp	r4, #9
	movne	r7, #0
	moveq	r7, #1
	ldr	r3, [fp, #4]
	cmp	r3, #1
	cmpeq	r4, #9
	beq	.L194
	cmp	r4, #0
	beq	.L195
	sub	r5, fp, #484
	mov	r1, r6
	mov	r0, r5
	bl	GetWndZmeInfo_HL8C4_VL4C4
	mov	r1, r5
	sub	r0, fp, #324
	mov	r2, #156
	bl	memcpy
.L172:
	ldr	r5, [r6, #24]
	mov	lr, sp
	ldr	ip, [r6, #44]
	str	r5, [fp, #-120]
	cmp	ip, #1
	ldr	r2, [r6, #28]
	sub	ip, fp, #156
	ldr	r0, [r6, #32]
	ldr	r1, [r6, #52]
	movne	r2, r2, asr #1
	str	r2, [fp, #-116]
	str	r0, [fp, #-112]
	cmp	r1, #1
	ldr	r3, [r6, #36]
	movne	r3, r3, asr #1
	str	r3, [fp, #-108]
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	mov	r5, lr
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	lr, [ip, #0]
	mov	ip, r5
	stmia	ip!, {r0, r1, r2, r3}
	mov	r0, r4
	ldmia	r9, {r1, r2, r3}
	str	lr, [ip, #0]
	bl	HAL_SetZmeReso
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-264]
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-268]
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #1
	ldr	r2, [fp, #-256]
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #3
	ldr	r2, [fp, #-260]
	bl	HAL_SetZmeEnable
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-248]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-252]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #1
	ldr	r2, [fp, #-240]
	bl	HAL_SetZmeFirEnable
	cmp	r4, #2
	bhi	.L178
	ldr	lr, [fp, #8]
	cmp	lr, #0
	beq	.L179
	mov	r0, r4
	mov	r1, #3
	mov	r2, #0
	bl	HAL_SetZmeFirEnable
	mov	r1, #0
	mov	r2, r1
	mov	r0, r4
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #1
	mov	r2, #0
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	ldr	r2, [fp, #-232]
	mov	r1, #0
	bl	HAL_SetMidEnable
	mov	r0, r4
	ldr	r2, [fp, #-236]
	mov	r1, #2
	bl	HAL_SetMidEnable
	mov	r0, r4
	ldr	r2, [fp, #-224]
	mov	r1, #1
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #3
	mov	r2, #0
	bl	HAL_SetMidEnable
	ldr	r3, [r8, #0]
	cmp	r3, #1
	beq	.L196
.L181:
	mov	r0, r6
	mov	r1, sl
	mov	r2, #1
	bl	Video_GetLTICTIInfo
	mov	r2, sl
	mov	r0, r4
	mov	r1, #2
	mov	ip, #0
	str	ip, [fp, #-76]
	str	ip, [fp, #-104]
	bl	OPTM_AA_VTIApi
	sub	r0, fp, #48
	sub	r1, fp, #52
	bl	OPTM_HAL_GetVersion
	cmp	r7, #0
	bne	.L197
.L183:
	ldr	r0, [fp, #-208]
	cmp	r0, #1048576
	blt	.L185
	ldr	r2, [fp, #-104]
	cmp	r2, #1
	bne	.L186
	ldr	r1, [fp, #-76]
	cmp	r1, #1
	beq	.L198
.L186:
	mov	r0, r4
	mov	r1, #0
	bl	HAL_SetHfirOrder
.L184:
	ldr	r2, [fp, #-212]
	mov	r0, r4
	mov	r1, #3
	bl	HAL_SetZmeVerTap
	ldr	r1, [r6, #40]
	mov	r0, r4
	cmp	r1, #1
	movne	r1, #0
	bl	HAL_SetZmeVerType
	ldr	r1, [fp, #-208]
	mov	r0, r4
	bl	Vou_SetHorRatio
	mov	r0, r4
	ldr	r1, [fp, #-204]
	bl	Vou_SetVerRatio
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-200]
	bl	HAL_SetZmePhase
	mov	r0, r4
	mov	r1, #1
	ldr	r2, [fp, #-196]
	bl	HAL_SetZmePhase
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-192]
	bl	HAL_SetZmePhase
	cmp	r4, #2
	cmpne	r4, #0
	bne	.L189
	ldr	r1, [fp, #8]
	cmp	r1, #0
	beq	.L189
	mov	r0, r4
	mov	r1, #3
	mov	r2, #0
	bl	HAL_SetZmePhase
.L191:
	ldr	r2, [fp, #-184]
	mov	r0, r4
	mov	r1, #0
	bl	HAL_SetCoefAddr
	mov	r0, r4
	ldr	r2, [fp, #-180]
	mov	r1, #1
	bl	HAL_SetCoefAddr
	mov	r0, r4
	mov	r1, #0
	bl	HAL_SetLayerParaUpd
	mov	r0, r4
	mov	r1, #1
	bl	HAL_SetLayerParaUpd
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L195:
	sub	r5, fp, #484
	mov	r1, r6
	mov	r0, r5
	bl	GetWndZmeInfo_HL8C4_VL6C4
	mov	r1, r5
	sub	r0, fp, #324
	mov	r2, #156
	bl	memcpy
	b	.L172
.L189:
	mov	r0, r4
	mov	r1, #3
	ldr	r2, [fp, #-188]
	bl	HAL_SetZmePhase
	b	.L191
.L179:
	ldr	r2, [fp, #-244]
	mov	r0, r4
	mov	r1, #3
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	ldr	r1, [fp, #8]
	ldr	r2, [fp, #-248]
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	ldr	r2, [fp, #-240]
	mov	r1, #1
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	ldr	r1, [fp, #8]
	ldr	r2, [fp, #-232]
	bl	HAL_SetMidEnable
	mov	r0, r4
	ldr	r2, [fp, #-236]
	mov	r1, #2
	bl	HAL_SetMidEnable
	ldr	r2, [fp, #-224]
	mov	r0, r4
	mov	r1, #1
.L193:
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #3
	ldr	r2, [fp, #-228]
	bl	HAL_SetMidEnable
	ldr	r3, [r8, #0]
	cmp	r3, #1
	bne	.L181
.L196:
	mov	r1, sl
	ldr	r2, [fp, #8]
	mov	r0, r6
	bl	Video_GetLTICTIInfo
	mov	r0, r4
	mov	r2, sl
	mov	r1, #2
	bl	OPTM_AA_VTIApi
	sub	r0, fp, #48
	sub	r1, fp, #52
	bl	OPTM_HAL_GetVersion
	cmp	r7, #0
	beq	.L183
.L197:
	mov	r0, #9
	mov	r1, #0
	bl	HAL_SetHfirOrder
	b	.L184
.L194:
	sub	r5, fp, #484
	mov	r1, r6
	mov	r0, r5
	bl	GetWndZmeInfo_HL8C4_VL4C4OR2
	mov	r1, r5
	sub	r0, fp, #324
	mov	r2, #156
	bl	memcpy
	b	.L172
.L178:
	mov	r1, #3
	ldr	r2, [fp, #-244]
	mov	r0, r4
	bl	HAL_SetZmeFirEnable
	mov	r0, r4
	mov	r1, #0
	ldr	r2, [fp, #-232]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #2
	ldr	r2, [fp, #-236]
	bl	HAL_SetMidEnable
	mov	r0, r4
	mov	r1, #1
	ldr	r2, [fp, #-224]
	b	.L193
.L185:
	mov	r0, r4
	mov	r1, #1
	bl	HAL_SetHfirOrder
	b	.L184
.L198:
	mov	r0, r4
	bl	HAL_SetHfirOrder
	b	.L184
	UNWIND(.fnend)
	.size	OPTM_AA_VZmeApi, .-OPTM_AA_VZmeApi
	.global	CSCTable_NtscSDYCbCr_to_HDYCbCr_8bit
	.global	CSCTable_PalSDYCbCr_to_HDYCbCr_8bit
	.global	CSCTable_240MHDYCbCr_to_HDYCbCr_8bit
	.global	CSCTable_FccSDYCbCr_to_HDYCbCr_8bit
	.global	CSCTable_XvYCCSDYCbCr_to_HDYCbCr_8bit
	.global	CSCTable_HDYCbCr_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_Identity_YCbCr_to_YCbCr_8bit
	.global	CSCTable_RGB_to_HDYCbCr_8bit
	.global	CSCTable_RGB_to_XvYCCSDYCbCr_8bit
	.global	CSCTable_HDYCbCr_to_RGB_8bit
	.global	CSCTable_XvYCCSDYCbCr_to_RGB_8bit
	.global	CSCTable_Identity_RGB_to_RGB_8bit
	.global	CSCTable_NtscSDYCbCr_to_HDYCbCr
	.global	CSCTable_PalSDYCbCr_to_HDYCbCr
	.global	CSCTable_240MHDYCbCr_to_HDYCbCr
	.global	CSCTable_FccSDYCbCr_to_HDYCbCr
	.global	CSCTable_XvYCCSDYCbCr_to_HDYCbCr
	.global	CSCTable_HDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr
	.global	CSCTable_Identity_YCbCr_to_YCbCr
	.global	CSCTable_RGB_to_HDYCbCr
	.global	CSCTable_RGB_to_XvYCCSDYCbCr
	.global	CSCTable_HDYCbCr_to_RGB
	.global	CSCTable_XvYCCSDYCbCr_to_RGB
	.global	CSCTable_Identity_RGB_to_RGB
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CSWTCH.25, %object
	.size	CSWTCH.25, 36
CSWTCH.25:
	.word	8
	.word	6
	.word	4
	.word	4
	.word	4
	.word	8
	.word	2
	.word	4
	.word	2
	.type	CSC_YCbCr_MatrixTbl, %object
	.size	CSC_YCbCr_MatrixTbl, 72
CSC_YCbCr_MatrixTbl:
	.word	0
	.space	4
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	CSCTable_HDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.word	0
	.space	4
	.word	CSCTable_FccSDYCbCr_to_HDYCbCr
	.word	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_PalSDYCbCr_to_HDYCbCr
	.word	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_NtscSDYCbCr_to_HDYCbCr
	.word	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_240MHDYCbCr_to_HDYCbCr
	.word	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr
	.word	CSCTable_XvYCCSDYCbCr_to_HDYCbCr
	.word	CSCTable_Identity_YCbCr_to_YCbCr
	.type	CSC_YCbCr_MatrixTbl_8bit, %object
	.size	CSC_YCbCr_MatrixTbl_8bit, 72
CSC_YCbCr_MatrixTbl_8bit:
	.word	0
	.space	4
	.word	CSCTable_Identity_YCbCr_to_YCbCr_8bit
	.word	CSCTable_HDYCbCr_to_XvYCCSDYCbCr_8bit
	.word	CSCTable_Identity_YCbCr_to_YCbCr_8bit
	.word	CSCTable_Identity_YCbCr_to_YCbCr_8bit
	.word	0
	.space	4
	.word	CSCTable_FccSDYCbCr_to_HDYCbCr_8bit
	.word	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr_8bit
	.word	CSCTable_PalSDYCbCr_to_HDYCbCr_8bit
	.word	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr_8bit
	.word	CSCTable_NtscSDYCbCr_to_HDYCbCr_8bit
	.word	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr_8bit
	.word	CSCTable_240MHDYCbCr_to_HDYCbCr_8bit
	.word	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr_8bit
	.word	CSCTable_XvYCCSDYCbCr_to_HDYCbCr_8bit
	.word	CSCTable_Identity_YCbCr_to_YCbCr_8bit
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	CSCTable_Identity_RGB_to_RGB, %object
	.size	CSCTable_Identity_RGB_to_RGB, 36
CSCTable_Identity_RGB_to_RGB:
	.word	1024
	.word	0
	.word	0
	.word	0
	.word	1024
	.word	0
	.word	0
	.word	0
	.word	1024
	.type	CSCTable_RGB_to_XvYCCSDYCbCr, %object
	.size	CSCTable_RGB_to_XvYCCSDYCbCr, 36
CSCTable_RGB_to_XvYCCSDYCbCr:
	.word	264
	.word	516
	.word	100
	.word	-152
	.word	-298
	.word	450
	.word	450
	.word	-377
	.word	-73
	.type	CSCTable_RGB_to_HDYCbCr, %object
	.size	CSCTable_RGB_to_HDYCbCr, 36
CSCTable_RGB_to_HDYCbCr:
	.word	188
	.word	629
	.word	63
	.word	-103
	.word	-347
	.word	450
	.word	450
	.word	-409
	.word	-41
	.type	CSCTable_XvYCCSDYCbCr_to_RGB, %object
	.size	CSCTable_XvYCCSDYCbCr_to_RGB, 36
CSCTable_XvYCCSDYCbCr_to_RGB:
	.word	1192
	.word	0
	.word	1634
	.word	1192
	.word	-400
	.word	-833
	.word	1192
	.word	2066
	.word	0
	.type	CSCTable_HDYCbCr_to_RGB, %object
	.size	CSCTable_HDYCbCr_to_RGB, 36
CSCTable_HDYCbCr_to_RGB:
	.word	1192
	.word	0
	.word	1836
	.word	1192
	.word	-218
	.word	-547
	.word	1192
	.word	2166
	.word	0
	.type	CSCTable_Identity_RGB_to_RGB_8bit, %object
	.size	CSCTable_Identity_RGB_to_RGB_8bit, 36
CSCTable_Identity_RGB_to_RGB_8bit:
	.word	256
	.word	0
	.word	0
	.word	0
	.word	256
	.word	0
	.word	0
	.word	0
	.word	256
	.type	CSCTable_RGB_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_RGB_to_XvYCCSDYCbCr_8bit, 36
CSCTable_RGB_to_XvYCCSDYCbCr_8bit:
	.word	66
	.word	129
	.word	25
	.word	-38
	.word	-74
	.word	112
	.word	112
	.word	-94
	.word	-18
	.type	CSCTable_RGB_to_HDYCbCr_8bit, %object
	.size	CSCTable_RGB_to_HDYCbCr_8bit, 36
CSCTable_RGB_to_HDYCbCr_8bit:
	.word	47
	.word	157
	.word	16
	.word	-26
	.word	-86
	.word	112
	.word	112
	.word	-102
	.word	-10
	.type	CSCTable_XvYCCSDYCbCr_to_RGB_8bit, %object
	.size	CSCTable_XvYCCSDYCbCr_to_RGB_8bit, 36
CSCTable_XvYCCSDYCbCr_to_RGB_8bit:
	.word	298
	.word	0
	.word	409
	.word	298
	.word	-100
	.word	-208
	.word	298
	.word	517
	.word	0
	.type	CSCTable_HDYCbCr_to_RGB_8bit, %object
	.size	CSCTable_HDYCbCr_to_RGB_8bit, 36
CSCTable_HDYCbCr_to_RGB_8bit:
	.word	298
	.word	0
	.word	459
	.word	298
	.word	-55
	.word	-137
	.word	298
	.word	541
	.word	0
	.type	CSCTable_NtscSDYCbCr_to_HDYCbCr_8bit, %object
	.size	CSCTable_NtscSDYCbCr_to_HDYCbCr_8bit, 36
CSCTable_NtscSDYCbCr_to_HDYCbCr_8bit:
	.word	256
	.word	-22
	.word	-51
	.word	0
	.word	258
	.word	28
	.word	0
	.word	15
	.word	241
	.type	CSCTable_PalSDYCbCr_to_HDYCbCr_8bit, %object
	.size	CSCTable_PalSDYCbCr_to_HDYCbCr_8bit, 36
CSCTable_PalSDYCbCr_to_HDYCbCr_8bit:
	.word	256
	.word	-29
	.word	-48
	.word	0
	.word	257
	.word	26
	.word	0
	.word	22
	.word	275
	.type	CSCTable_240MHDYCbCr_to_HDYCbCr_8bit, %object
	.size	CSCTable_240MHDYCbCr_to_HDYCbCr_8bit, 36
CSCTable_240MHDYCbCr_to_HDYCbCr_8bit:
	.word	256
	.word	0
	.word	0
	.word	0
	.word	254
	.word	0
	.word	0
	.word	1
	.word	237
	.type	CSCTable_FccSDYCbCr_to_HDYCbCr_8bit, %object
	.size	CSCTable_FccSDYCbCr_to_HDYCbCr_8bit, 36
CSCTable_FccSDYCbCr_to_HDYCbCr_8bit:
	.word	256
	.word	0
	.word	0
	.word	14
	.word	287
	.word	-1
	.word	9
	.word	-3
	.word	387
	.type	CSCTable_XvYCCSDYCbCr_to_HDYCbCr_8bit, %object
	.size	CSCTable_XvYCCSDYCbCr_to_HDYCbCr_8bit, 36
CSCTable_XvYCCSDYCbCr_to_HDYCbCr_8bit:
	.word	256
	.word	-30
	.word	-53
	.word	0
	.word	261
	.word	29
	.word	0
	.word	19
	.word	263
	.type	CSCTable_HDYCbCr_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_HDYCbCr_to_XvYCCSDYCbCr_8bit, 36
CSCTable_HDYCbCr_to_XvYCCSDYCbCr_8bit:
	.word	256
	.word	26
	.word	49
	.word	0
	.word	253
	.word	-28
	.word	0
	.word	-19
	.word	252
	.type	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr_8bit, 36
CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr_8bit:
	.word	259
	.word	28
	.word	74
	.word	13
	.word	285
	.word	-44
	.word	7
	.word	-24
	.word	381
	.type	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr_8bit, 36
CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr_8bit:
	.word	256
	.word	0
	.word	7
	.word	0
	.word	252
	.word	-5
	.word	0
	.word	2
	.word	268
	.type	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr_8bit, 36
CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr_8bit:
	.word	256
	.word	6
	.word	-2
	.word	0
	.word	254
	.word	1
	.word	0
	.word	-5
	.word	235
	.type	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr_8bit, %object
	.size	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr_8bit, 36
CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr_8bit:
	.word	256
	.word	26
	.word	45
	.word	0
	.word	251
	.word	-26
	.word	0
	.word	-17
	.word	233
	.type	CSCTable_Identity_YCbCr_to_YCbCr_8bit, %object
	.size	CSCTable_Identity_YCbCr_to_YCbCr_8bit, 36
CSCTable_Identity_YCbCr_to_YCbCr_8bit:
	.word	256
	.word	0
	.word	0
	.word	0
	.word	256
	.word	0
	.word	0
	.word	0
	.word	256
	.type	CSCTable_NtscSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_NtscSDYCbCr_to_HDYCbCr, 36
CSCTable_NtscSDYCbCr_to_HDYCbCr:
	.word	1024
	.word	-89
	.word	-203
	.word	0
	.word	1033
	.word	113
	.word	0
	.word	58
	.word	965
	.type	CSCTable_PalSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_PalSDYCbCr_to_HDYCbCr, 36
CSCTable_PalSDYCbCr_to_HDYCbCr:
	.word	1024
	.word	-118
	.word	-194
	.word	0
	.word	1029
	.word	102
	.word	0
	.word	87
	.word	1098
	.type	CSCTable_240MHDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_240MHDYCbCr_to_HDYCbCr, 36
CSCTable_240MHDYCbCr_to_HDYCbCr:
	.word	1024
	.word	0
	.word	0
	.word	0
	.word	1015
	.word	0
	.word	0
	.word	5
	.word	947
	.type	CSCTable_FccSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_FccSDYCbCr_to_HDYCbCr, 36
CSCTable_FccSDYCbCr_to_HDYCbCr:
	.word	1024
	.word	0
	.word	0
	.word	56
	.word	1148
	.word	-5
	.word	34
	.word	-12
	.word	1548
	.type	CSCTable_XvYCCSDYCbCr_to_HDYCbCr, %object
	.size	CSCTable_XvYCCSDYCbCr_to_HDYCbCr, 36
CSCTable_XvYCCSDYCbCr_to_HDYCbCr:
	.word	1024
	.word	-118
	.word	-213
	.word	0
	.word	1043
	.word	117
	.word	0
	.word	77
	.word	1050
	.type	CSCTable_HDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_HDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_HDYCbCr_to_XvYCCSDYCbCr:
	.word	1024
	.word	102
	.word	196
	.word	0
	.word	1014
	.word	-113
	.word	0
	.word	-74
	.word	1007
	.type	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_FccSDYCbCr_to_XvYCCSDYCbCr:
	.word	1036
	.word	113
	.word	296
	.word	52
	.word	1138
	.word	-177
	.word	30
	.word	-96
	.word	1522
	.type	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_PalSDYCbCr_to_XvYCCSDYCbCr:
	.word	1024
	.word	2
	.word	27
	.word	0
	.word	1009
	.word	-20
	.word	0
	.word	10
	.word	1072
	.type	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_NtscSDYCbCr_to_XvYCCSDYCbCr:
	.word	1024
	.word	26
	.word	-7
	.word	0
	.word	1016
	.word	5
	.word	0
	.word	-18
	.word	941
	.type	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr, %object
	.size	CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr, 36
CSCTable_240MHDYCbCr_to_XvYCCSDYCbCr:
	.word	1024
	.word	103
	.word	182
	.word	0
	.word	1004
	.word	-105
	.word	0
	.word	-69
	.word	931
	.type	CSCTable_Identity_YCbCr_to_YCbCr, %object
	.size	CSCTable_Identity_YCbCr_to_YCbCr, 36
CSCTable_Identity_YCbCr_to_YCbCr:
	.word	1024
	.word	0
	.word	0
	.word	0
	.word	1024
	.word	0
	.word	0
	.word	0
	.word	1024
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	ASCII(.ascii	"VOGZmeCoef\000")
	.space	1
.LC1:
	ASCII(.ascii	"VO_ZmeCoef\000")
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
