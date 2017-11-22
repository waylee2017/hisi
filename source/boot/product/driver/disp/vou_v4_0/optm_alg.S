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
	.file	"optm_alg.c"
	.global	__aeabi_idiv
	.text
	.align	2
	.global	GetHfirCoef
	.type	GetHfirCoef, %function
GetHfirCoef:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r4, r0
	mov	r0, #16777216
	bl	__aeabi_idiv
	cmp	r0, #4096
	ldrgt	r0, [r4, #0]
	ldmgtfd	sp, {r3, r4, fp, sp, pc}
	ldreq	r0, [r4, #4]
	ldmeqfd	sp, {r3, r4, fp, sp, pc}
	cmp	r0, #3072
	ldrge	r0, [r4, #8]
	ldmgefd	sp, {r3, r4, fp, sp, pc}
	cmp	r0, #2048
	ldrge	r0, [r4, #12]
	ldmgefd	sp, {r3, r4, fp, sp, pc}
	movw	r3, #1364
	cmp	r0, r3
	ldrgt	r0, [r4, #16]
	ldmgtfd	sp, {r3, r4, fp, sp, pc}
	cmp	r0, #1024
	ldrge	r0, [r4, #20]
	ldrlt	r0, [r4, #24]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetHfirCoef, .-GetHfirCoef
	.align	2
	.global	GetVfirCoef
	.type	GetVfirCoef, %function
GetVfirCoef:
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
	mov	r4, r0
	mov	r0, #16777216
	mov	r5, r3
	mov	r6, r2
	bl	__aeabi_idiv
	cmp	r5, #2
	movne	r3, #0
	moveq	r3, #1
	cmp	r6, #1
	cmpeq	r5, #2
	bne	.L12
	cmp	r0, #4096
	ldrgt	r0, [r4, #28]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	ldreq	r0, [r4, #32]
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #3072
	ldrge	r0, [r4, #36]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #2048
	ldrge	r0, [r4, #40]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	movw	r3, #1364
	cmp	r0, r3
	ldrgt	r0, [r4, #44]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #1024
	ldrge	r0, [r4, #48]
	ldrlt	r0, [r4, #52]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L12:
	cmp	r6, #2
	movne	r6, #0
	andeq	r6, r3, #1
	cmp	r6, #0
	beq	.L20
	cmp	r0, #4096
	ldrgt	r0, [r4, #56]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	ldreq	r0, [r4, #60]
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #3072
	ldrge	r0, [r4, #64]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #2048
	ldrge	r0, [r4, #68]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	movw	r1, #1364
	cmp	r0, r1
	ldrgt	r0, [r4, #72]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #1024
	ldrge	r0, [r4, #76]
	ldrlt	r0, [r4, #80]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L20:
	cmp	r0, #4096
	ldrgt	r0, [r4, #84]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	ldreq	r0, [r4, #88]
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #3072
	ldrge	r0, [r4, #92]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #2048
	ldrge	r0, [r4, #96]
	ldmgefd	sp, {r3, r4, r5, r6, fp, sp, pc}
	movw	r2, #1364
	cmp	r0, r2
	ldrgt	r0, [r4, #100]
	ldmgtfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	cmp	r0, #1024
	ldrge	r0, [r4, #104]
	ldrlt	r0, [r4, #108]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetVfirCoef, .-GetVfirCoef
	.align	2
	.global	GetVerticalScalerOffset
	.type	GetVerticalScalerOffset, %function
GetVerticalScalerOffset:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r1, #44]
	cmp	r3, #0
	beq	.L35
	ldr	r2, [r1, #52]
	cmp	r2, #0
	bne	.L36
.L40:
	ldr	ip, [r1, #56]
	cmp	ip, #0
	movne	r0, r0, asr #1
	ldmnefd	sp, {fp, sp, pc}
.L36:
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L35:
	ldr	ip, [r1, #52]
	cmp	ip, #0
	bne	.L44
	ldr	r3, [r1, #48]
	cmp	r3, #0
	beq	.L40
	ldr	r2, [r1, #56]
	cmp	r2, #0
	subne	r0, r0, #4096
	movne	r0, r0, asr #1
	ldmnefd	sp, {fp, sp, pc}
	b	.L39
.L44:
	ldr	r0, [r1, #48]
	cmp	r0, #0
	beq	.L36
.L39:
	movw	r0, #:lower16:-2048
	movt	r0, #:upper16:-2048
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	GetVerticalScalerOffset, .-GetVerticalScalerOffset
	.align	2
	.global	GetGfxHfirCoef
	.type	GetGfxHfirCoef, %function
GetGfxHfirCoef:
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
	mov	r4, r0
	mov	r0, #16777216
	mov	r5, r2
	bl	__aeabi_idiv
	movw	r3, #4505
	cmp	r0, r3
	ble	.L46
	cmp	r5, #0
	ldreq	r0, [r4, #0]
	ldrne	r0, [r4, #56]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L46:
	cmp	r0, #3264
	blt	.L49
	cmp	r5, #0
	ldreq	r0, [r4, #4]
	ldrne	r0, [r4, #60]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L49:
	cmp	r0, #3072
	bge	.L61
	cmp	r0, #2048
	blt	.L53
	cmp	r5, #0
	ldreq	r0, [r4, #12]
	ldrne	r0, [r4, #68]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L61:
	cmp	r5, #0
	ldreq	r0, [r4, #8]
	ldrne	r0, [r4, #64]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L53:
	movw	r1, #1364
	cmp	r0, r1
	bgt	.L62
	cmp	r0, #1024
	blt	.L57
	cmp	r5, #0
	ldreq	r0, [r4, #20]
	ldrne	r0, [r4, #76]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L62:
	cmp	r5, #0
	ldreq	r0, [r4, #16]
	ldrne	r0, [r4, #72]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L57:
	cmp	r5, #0
	ldreq	r0, [r4, #24]
	ldrne	r0, [r4, #80]
	ldmfd	sp, {r4, r5, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetGfxHfirCoef, .-GetGfxHfirCoef
	.align	2
	.global	GetGfxVfirCoef
	.type	GetGfxVfirCoef, %function
GetGfxVfirCoef:
	UNWIND(.fnstart)
.LFB8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r4, r0
	mov	r0, #16777216
	mov	r5, r2
	mov	r6, r3
	bl	__aeabi_idiv
	cmp	r5, #0
	bne	.L64
	movw	r3, #4505
	cmp	r0, r3
	ble	.L65
.L101:
	cmp	r6, #0
	ldreq	r0, [r4, #28]
	ldrne	r0, [r4, #84]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L64:
	cmp	r0, #4096
	bgt	.L101
	beq	.L103
	cmp	r0, #3072
	bge	.L105
	cmp	r0, #2048
	bge	.L107
	movw	r2, #1364
	cmp	r0, r2
	bgt	.L109
	cmp	r0, #1024
	bge	.L111
	cmp	r6, #0
	beq	.L95
	ldr	r0, [r4, #108]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L65:
	cmp	r0, #3264
	bge	.L103
	cmp	r0, #3072
	bge	.L105
	cmp	r0, #2048
	bge	.L107
	movw	r1, #1364
	cmp	r0, r1
	bgt	.L109
	cmp	r0, #1024
	bge	.L111
	cmp	r6, #0
	ldrne	r0, [r4, #108]
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L95:
	ldr	r0, [r4, #52]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L103:
	cmp	r6, #0
	ldreq	r0, [r4, #32]
	ldrne	r0, [r4, #88]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L107:
	cmp	r6, #0
	ldreq	r0, [r4, #40]
	ldrne	r0, [r4, #96]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L105:
	cmp	r6, #0
	ldreq	r0, [r4, #36]
	ldrne	r0, [r4, #92]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L109:
	cmp	r6, #0
	ldreq	r0, [r4, #44]
	ldrne	r0, [r4, #100]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L111:
	cmp	r6, #0
	ldreq	r0, [r4, #48]
	ldrne	r0, [r4, #104]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetGfxVfirCoef, .-GetGfxVfirCoef
	.global	__aeabi_uidiv
	.align	2
	.global	OPTM_ALG_GetGfxScalerInfo
	.type	OPTM_ALG_GetGfxScalerInfo, %function
OPTM_ALG_GetGfxScalerInfo:
	UNWIND(.fnstart)
.LFB9:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r8, #0
	ldr	r5, [r0, #24]
	mov	r4, r1
	str	r8, [r1, #24]
	ldr	r1, [r0, #16]
	mov	r6, r0
	mov	r8, r2
	str	r1, [r4, #88]
	ldr	ip, [r0, #0]
	ldr	r1, [r0, #8]
	mov	r0, ip, asl #12
	bl	__aeabi_uidiv
	str	r0, [r4, #28]
	mov	r7, r0
	ldr	r0, [r6, #4]
	subs	r7, r7, #4096
	movne	r7, #1
	ldr	r1, [r6, #12]
	mov	r0, r0, asl #12
	bl	__aeabi_uidiv
	str	r7, [r4, #0]
	str	r0, [r4, #68]
	ldr	r2, [r6, #16]
	ldr	r3, [r6, #20]
	cmp	r2, r3
	beq	.L133
.L113:
	mov	r3, #1
	str	r3, [r4, #40]
.L114:
	ldr	r7, [r6, #0]
	cmp	r7, #1280
	bls	.L115
	ldr	r0, [r6, #8]
	cmp	r0, #1280
	movhi	r0, #0
	strhi	r0, [r4, #40]
.L115:
	ldr	ip, [r6, #16]
	cmp	ip, #1
	beq	.L134
.L116:
	ldr	r7, [r4, #68]
	mov	r2, r7
.L117:
	ldr	r1, [r4, #28]
	mov	r3, #0
	str	r3, [r4, #64]
	mov	lr, #1
	cmp	r1, #4096
	str	lr, [r4, #56]
	str	lr, [r4, #60]
	movne	r3, #1
	cmp	r1, #4096
	str	r3, [r4, #16]
	movlt	lr, #1
	movge	lr, #0
	cmp	r7, #4096
	str	r3, [r4, #20]
	str	lr, [r4, #24]
	str	lr, [r4, #4]
	str	lr, [r4, #8]
	str	lr, [r4, #12]
	ldrge	sl, [r4, #64]
	bge	.L124
	ldr	sl, [r4, #64]
	cmp	sl, #0
	beq	.L135
.L124:
	mov	ip, #0
	str	ip, [r4, #48]
	str	ip, [r4, #44]
	str	ip, [r4, #52]
.L125:
	mov	lr, #0
	str	lr, [r4, #72]
	str	lr, [r4, #32]
	str	lr, [r4, #36]
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L126
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L136
.L127:
	mov	r3, #0
	str	r3, [r4, #76]
.L128:
	mov	r2, r8
	mov	r0, r5
	bl	GetGfxHfirCoef
	mov	r1, r7
	mov	r2, sl
	mov	r3, r8
	str	r0, [r4, #80]
	mov	r0, r5
	bl	GetGfxVfirCoef
	str	r0, [r4, #84]
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L126:
	cmp	r3, #1
	bne	.L127
	ldr	lr, [r6, #20]
	cmp	lr, #0
	addeq	r2, r2, r2, lsr #31
	moveq	r2, r2, asr #1
	streq	r2, [r4, #76]
	bne	.L127
	b	.L128
.L135:
	mov	r0, #1
	str	r0, [r4, #48]
	str	r0, [r4, #44]
	str	r0, [r4, #52]
	b	.L125
.L134:
	ldr	r1, [r6, #20]
	cmp	r1, #0
	bne	.L116
	ldr	r7, [r4, #68]
	mov	r2, r7, asl #1
	b	.L117
.L133:
	ldr	lr, [r6, #12]
	cmp	lr, #720
	bls	.L113
	subs	r2, r0, #4096
	movne	r2, #1
	str	r2, [r4, #40]
	b	.L114
.L136:
	sub	ip, r2, #4096
	add	r0, ip, ip, lsr #31
	mov	r2, r0, asr #1
	str	r2, [r4, #76]
	b	.L128
	UNWIND(.fnend)
	.size	OPTM_ALG_GetGfxScalerInfo, .-OPTM_ALG_GetGfxScalerInfo
	.align	2
	.global	IniFlag
	.type	IniFlag, %function
IniFlag:
	UNWIND(.fnstart)
.LFB10:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	IniFlag, .-IniFlag
	.align	2
	.global	OPTM_ALG_GetFormatType
	.type	OPTM_ALG_GetFormatType, %function
OPTM_ALG_GetFormatType:
	UNWIND(.fnstart)
.LFB11:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	sub	r0, r0, #24
	cmp	r0, #36
	movwls	r3, #:lower16:.LANCHOR0
	movtls	r3, #:upper16:.LANCHOR0
	movhi	r0, #1
	ldrls	r0, [r3, r0, asl #2]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_GetFormatType, .-OPTM_ALG_GetFormatType
	.align	2
	.global	GetFrameRateInfo
	.type	GetFrameRateInfo, %function
GetFrameRateInfo:
	UNWIND(.fnstart)
.LFB12:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r3, r0
	ldr	r0, [r1, #0]
	cmp	r0, #1
	beq	.L155
	ldr	r0, [r1, #8]
	sub	r0, r0, #1
	cmp	r0, #1
	movwls	ip, #:lower16:.LANCHOR0
	movtls	ip, #:upper16:.LANCHOR0
	addls	r0, ip, r0, asl #2
	movhi	ip, #2
	ldrls	ip, [r0, #168]
	cmp	r2, #0
	bne	.L156
.L146:
	ldr	r2, [r1, #4]
	cmp	r2, #1
	beq	.L157
.L151:
	ldr	r2, [r1, #12]
	sub	r2, r2, #1
	cmp	r2, #1
	bls	.L158
.L152:
	mov	r2, #2
	mov	r0, r3
	str	r2, [r3, #4]
	str	ip, [r3, #0]
	ldmfd	sp, {fp, sp, pc}
.L156:
	cmp	ip, #0
	moveq	ip, #5
	beq	.L146
	cmp	ip, #1
	ldr	r2, [r1, #4]
	moveq	ip, #6
	cmp	r2, #1
	bne	.L151
.L157:
	ldr	r2, [r1, #12]
	cmp	r2, #4
	bhi	.L152
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	add	r0, r1, r2, asl #2
	str	ip, [r3, #0]
	ldr	r2, [r0, #176]
	mov	r0, r3
	str	r2, [r3, #4]
	ldmfd	sp, {fp, sp, pc}
.L158:
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	add	r0, r1, r2, asl #2
	str	ip, [r3, #0]
	ldr	r2, [r0, #196]
	mov	r0, r3
	str	r2, [r3, #4]
	ldmfd	sp, {fp, sp, pc}
.L155:
	ldr	r2, [r1, #8]
	cmp	r2, #4
	movwls	r0, #:lower16:.LANCHOR0
	movtls	r0, #:upper16:.LANCHOR0
	addls	r2, r0, r2, asl #2
	movhi	ip, #2
	ldrls	ip, [r2, #148]
	b	.L146
	UNWIND(.fnend)
	.size	GetFrameRateInfo, .-GetFrameRateInfo
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr
	.type	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr, %function
OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr:
	UNWIND(.fnstart)
.LFB13:
	@ args = 16, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #100)
	sub	sp, sp, #100
	rsb	r4, r2, r2, asl #4
	movw	r6, #:lower16:1374389535
	movt	r6, #:upper16:1374389535
	ldr	ip, [fp, #12]
	mov	r8, r4, asl #2
	add	r2, r0, #50
	str	r2, [fp, #-48]
	movw	r4, #:lower16:.LANCHOR0
	umull	r0, r5, r6, r8
	movt	r4, #:upper16:.LANCHOR0
	ldr	r0, [ip, #24]
	mov	r3, r3, asl #1
	ldr	sl, [fp, #-48]
	ldr	r8, [fp, #4]
	str	r0, [fp, #-72]
	movw	r0, #:lower16:274877907
	ldr	r7, [ip, #28]
	mov	r6, r5, lsr #5
	mov	r2, sl, asl #1
	movt	r0, #:upper16:274877907
	add	r5, r4, r6, asl #2
	movw	r6, #:lower16:1759218605
	str	r7, [fp, #-76]
	ldr	r9, [ip, #32]
	ldr	r4, [r5, #448]
	mul	r1, r1, r2
	mov	r2, r8, asl #1
	ldr	r8, [fp, #-72]
	ldr	r5, [r5, #204]
	str	r9, [fp, #-80]
	str	r3, [fp, #-96]
	movw	r3, #:lower16:1125899907
	ldr	r9, [ip, #20]
	movt	r3, #:upper16:1125899907
	ldr	sl, [ip, #12]
	ldr	r7, [ip, #16]
	str	r2, [fp, #-60]
	mul	r2, r8, r4
	str	r6, [fp, #-52]
	mul	r9, r9, r5
	ldr	r6, [fp, #8]
	mul	sl, sl, r5
	str	r2, [fp, #-84]
	mov	r8, r6, asl #1
	str	r8, [fp, #-92]
	ldr	r8, [fp, #-84]
	ldr	r6, [ip, #0]
	str	r9, [fp, #-136]
	ldr	r9, [fp, #-76]
	str	r6, [fp, #-100]
	mov	r6, r8, asr #31
	str	r6, [fp, #-68]
	mov	r8, sl, asr #31
	mul	r6, r9, r4
	ldr	r9, [fp, #-80]
	mul	r7, r7, r5
	str	r8, [fp, #-64]
	mul	r8, r9, r4
	ldr	r2, [fp, #16]
	mov	r9, r7, asr #31
	str	r9, [fp, #-88]
	str	r8, [fp, #-56]
	smull	r9, r8, r0, sl
	mov	r9, r6, asr #31
	str	r8, [fp, #-128]
	ldr	sl, [fp, #-84]
	str	r9, [fp, #-104]
	smull	r9, r8, r0, sl
	ldr	sl, [fp, #-136]
	mov	r9, sl, asr #31
	str	r9, [fp, #-108]
	str	r8, [fp, #-120]
	smull	r8, r7, r0, r7
	ldr	r8, [fp, #-56]
	ldr	r9, [fp, #-128]
	mov	sl, r8, asr #31
	ldr	r8, [fp, #-64]
	str	sl, [fp, #-112]
	smull	sl, r6, r0, r6
	rsb	sl, r8, r9, asr #6
	ldr	r8, [fp, #-136]
	str	sl, [fp, #-84]
	smull	sl, r9, r0, r8
	ldr	sl, [fp, #-120]
	ldr	r8, [fp, #-68]
	rsb	r8, r8, sl, asr #6
	ldr	sl, [fp, #-56]
	str	r8, [fp, #-120]
	smull	sl, r8, r0, sl
	ldr	sl, [fp, #-88]
	rsb	r7, sl, r7, asr #6
	str	r7, [fp, #-88]
	ldr	r7, [fp, #-92]
	mul	sl, r1, r7
	ldr	r7, [fp, #-104]
	rsb	r6, r7, r6, asr #6
	str	sl, [fp, #-56]
	ldr	sl, [fp, #-96]
	mul	r7, r1, sl
	ldr	sl, [fp, #-108]
	rsb	r9, sl, r9, asr #6
	ldr	sl, [fp, #-112]
	rsb	r8, sl, r8, asr #6
	str	r7, [fp, #-68]
	add	r9, r9, r8
	ldr	r7, [fp, #-60]
	mul	r1, r1, r7
	ldr	r7, [fp, #-120]
	str	r1, [fp, #-64]
	ldr	r1, [fp, #-84]
	add	sl, r1, r7
	ldr	r7, [fp, #-88]
	add	r1, r7, r6
	ldr	r7, [ip, #4]
	ldr	r6, [fp, #-68]
	str	r7, [fp, #-84]
	mul	sl, r6, sl
	ldr	r8, [ip, #8]
	movw	r6, #:lower16:1759218605
	movt	r6, #:upper16:1759218605
	str	r8, [fp, #-88]
	ldr	r7, [fp, #-64]
	ldr	r8, [fp, #-56]
	str	r6, [fp, #-52]
	mul	r1, r1, r7
	smull	r6, r7, r3, sl
	mul	r9, r9, r8
	mov	r8, sl, asr #31
	str	r7, [fp, #-108]
	smull	r7, sl, r3, r1
	mov	r1, r1, asr #31
	smull	r7, r6, r3, r9
	mov	r9, r9, asr #31
	str	r6, [fp, #-104]
	ldr	r6, [fp, #-108]
	rsb	r7, r8, r6, asr #18
	rsb	r8, r1, sl, asr #18
	str	r7, [r2, #12]
	str	r8, [r2, #16]
	ldr	r7, [fp, #-104]
	ldr	r8, [ip, #16]
	ldr	r1, [ip, #12]
	rsb	r6, r9, r7, asr #18
	str	r6, [r2, #20]
	ldr	sl, [fp, #-80]
	ldr	r7, [ip, #20]
	ldr	ip, [fp, #-72]
	mul	r6, sl, r5
	mul	sl, r7, r4
	mul	r7, ip, r5
	ldr	ip, [fp, #-76]
	mul	r1, r1, r4
	mov	r9, r6, asr #31
	mul	r4, r8, r4
	str	r9, [fp, #-72]
	mul	r5, ip, r5
	mov	r9, sl, asr #31
	smull	r8, ip, r0, sl
	mov	sl, r1, asr #31
	str	r9, [fp, #-80]
	mov	r9, r7, asr #31
	mov	r8, r5, asr #31
	str	ip, [fp, #-76]
	smull	ip, r7, r0, r7
	mov	ip, r4, asr #31
	str	ip, [fp, #-108]
	smull	ip, r5, r0, r5
	rsb	r9, r9, r7, asr #6
	str	r9, [fp, #-104]
	smull	r7, r4, r0, r4
	smull	ip, r1, r0, r1
	rsb	r8, r8, r5, asr #6
	smull	r9, r6, r0, r6
	ldr	ip, [fp, #-100]
	ldr	r0, [fp, #-48]
	sub	r1, sl, r1, asr #6
	ldr	r5, [fp, #-108]
	ldr	r9, [fp, #-84]
	mul	sl, ip, r0
	ldr	r7, [fp, #-80]
	sub	ip, r5, r4, asr #6
	ldr	r5, [fp, #-76]
	mul	r4, r9, r0
	ldr	r9, [fp, #-48]
	sub	r0, r7, r5, asr #6
	ldr	r7, [fp, #-88]
	add	r8, r8, ip
	mul	r5, r7, r9
	ldr	r7, [fp, #-72]
	ldr	r9, [fp, #-104]
	rsb	r6, r7, r6, asr #6
	add	r7, r9, r1
	ldr	r1, [fp, #-68]
	add	r0, r6, r0
	ldr	r6, [fp, #-64]
	ldr	r9, [fp, #-96]
	mul	ip, r1, r7
	ldr	r7, [fp, #-56]
	mul	r1, r6, r8
	mul	r0, r0, r7
	mov	r8, ip, asr #31
	str	r8, [fp, #-48]
	ldr	r6, [fp, #-60]
	mov	r7, r1, asr #31
	str	r7, [fp, #-60]
	mul	sl, r9, sl
	ldr	r9, [fp, #-92]
	smull	r7, r8, r3, r0
	mul	r4, r6, r4
	ldr	r6, [fp, #-52]
	mul	r5, r9, r5
	mov	r9, r0, asr #31
	str	r8, [fp, #-56]
	mov	r8, sl, asr #31
	smull	r0, sl, r6, sl
	mov	r6, r4, asr #31
	ldr	r0, [fp, #-52]
	smull	r0, r7, r0, r5
	rsb	r8, r8, sl, asr #12
	ldr	r0, [fp, #-52]
	mov	r5, r5, asr #31
	smull	sl, ip, r3, ip
	smull	r0, r4, r0, r4
	rsb	r5, r5, r7, asr #12
	smull	r0, r1, r3, r1
	ldr	r3, [fp, #-56]
	rsb	r4, r6, r4, asr #12
	rsb	r0, r9, r3, asr #18
	str	r0, [r2, #32]
	ldr	r6, [fp, #-48]
	str	r8, [r2, #0]
	str	r4, [r2, #4]
	rsb	ip, r6, ip, asr #18
	str	r5, [r2, #8]
	ldr	r7, [fp, #-60]
	str	ip, [r2, #24]
	rsb	r1, r7, r1, asr #18
	str	r1, [r2, #28]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr, .-OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB
	.type	OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB, %function
OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB:
	UNWIND(.fnstart)
.LFB14:
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #84)
	sub	sp, sp, #84
	rsb	r5, r2, r2, asl #4
	movw	r4, #:lower16:1374389535
	movt	r4, #:upper16:1374389535
	ldr	ip, [fp, #12]
	mov	sl, r5, asl #2
	add	r0, r0, #50
	mov	r1, r1, asl #1
	mov	r9, r3, asl #1
	umull	r5, r8, r4, sl
	movw	r2, #:lower16:.LANCHOR0
	ldr	r7, [ip, #20]
	movt	r2, #:upper16:.LANCHOR0
	ldr	sl, [ip, #28]
	movw	r5, #:lower16:351843721
	movt	r5, #:upper16:351843721
	movw	r4, #:lower16:274877907
	str	r7, [fp, #-108]
	movt	r4, #:upper16:274877907
	mul	r7, r0, r1
	mov	r6, r8, lsr #5
	ldr	r8, [ip, #4]
	str	r9, [fp, #-84]
	add	r3, r2, r6, asl #2
	ldr	r9, [fp, #8]
	ldr	r6, [r3, #204]
	str	r7, [fp, #-104]
	mov	r2, r9, asl #1
	ldr	r7, [r3, #448]
	str	r2, [fp, #-96]
	movw	r2, #:lower16:1759218605
	ldr	r3, [ip, #32]
	movt	r2, #:upper16:1759218605
	mul	sl, sl, r6
	mul	r9, r3, r7
	ldr	r3, [fp, #4]
	mul	sl, r1, sl
	str	r9, [fp, #-92]
	mov	r9, r3, asl #1
	mul	r3, r7, r1
	str	r9, [fp, #-80]
	mul	r9, r8, r6
	ldr	r8, [fp, #-92]
	str	sl, [fp, #-88]
	movw	sl, #:lower16:1125899907
	movt	sl, #:upper16:1125899907
	str	r3, [fp, #-56]
	ldr	r3, [fp, #16]
	str	r9, [fp, #-64]
	mov	r9, r8, asr #31
	str	r9, [fp, #-68]
	ldr	r8, [ip, #16]
	str	sl, [fp, #-76]
	mul	r9, r8, r6
	ldr	r8, [fp, #-56]
	str	r9, [fp, #-60]
	ldr	sl, [ip, #8]
	mul	r9, sl, r8
	ldr	r8, [fp, #-88]
	mov	sl, r8, asr #31
	ldr	r8, [fp, #-108]
	str	sl, [fp, #-48]
	mul	sl, r8, r7
	ldr	r8, [fp, #-64]
	str	sl, [fp, #-52]
	mov	sl, r8, asr #31
	ldr	r8, [fp, #-88]
	str	sl, [fp, #-72]
	smull	sl, r8, r5, r8
	str	r8, [fp, #-88]
	mov	r8, r9, asr #31
	ldr	sl, [fp, #-92]
	str	r8, [fp, #-100]
	smull	r8, sl, r4, sl
	ldr	r8, [fp, #-52]
	str	sl, [fp, #-92]
	mov	sl, r8, asr #31
	ldr	r8, [fp, #-96]
	str	sl, [fp, #-116]
	mul	sl, r0, r8
	ldr	r8, [fp, #-88]
	str	sl, [fp, #-120]
	ldr	sl, [fp, #-48]
	rsb	sl, sl, r8, asr #13
	str	sl, [fp, #-88]
	smull	r8, sl, r5, r9
	ldr	r9, [fp, #-68]
	str	sl, [fp, #-48]
	ldr	sl, [fp, #-92]
	sub	r8, r9, sl, asr #6
	ldr	r9, [fp, #-64]
	smull	sl, r9, r4, r9
	ldr	sl, [fp, #-60]
	str	r9, [fp, #-68]
	ldr	r9, [fp, #-88]
	add	r8, r9, r8
	str	r8, [fp, #-92]
	smull	r8, r9, r4, sl
	ldr	sl, [fp, #-60]
	ldr	r8, [fp, #-52]
	str	r9, [fp, #-112]
	mov	r9, sl, asr #31
	smull	sl, r8, r4, r8
	ldr	sl, [fp, #-48]
	str	r8, [fp, #-88]
	ldr	r8, [fp, #-100]
	sub	r8, r8, sl, asr #13
	ldr	sl, [fp, #-104]
	str	r8, [fp, #-52]
	ldr	r8, [fp, #-80]
	mul	r8, r8, sl
	ldr	sl, [fp, #-68]
	str	r8, [fp, #-64]
	ldr	r8, [fp, #-72]
	rsb	r8, r8, sl, asr #6
	ldr	sl, [fp, #-120]
	str	r8, [fp, #-48]
	ldr	r8, [fp, #-92]
	mul	r8, r8, sl
	str	r8, [fp, #-104]
	ldr	sl, [fp, #-112]
	rsb	r8, r9, sl, asr #6
	ldr	r9, [fp, #-84]
	mul	sl, r0, r9
	ldr	r9, [fp, #-88]
	str	sl, [fp, #-60]
	ldr	sl, [fp, #-116]
	sub	sl, sl, r9, asr #6
	ldr	r9, [fp, #-48]
	str	sl, [fp, #-68]
	ldr	sl, [fp, #-52]
	add	sl, sl, r9
	str	sl, [fp, #-48]
	ldr	sl, [fp, #-68]
	add	r9, r8, sl
	ldr	sl, [ip, #32]
	mul	r8, sl, r6
	ldr	sl, [fp, #-104]
	str	r8, [fp, #-52]
	mov	r8, sl, asr #31
	ldr	sl, [fp, #-64]
	str	r8, [fp, #-72]
	ldr	r8, [ip, #0]
	mul	r9, r9, sl
	ldr	sl, [fp, #-48]
	str	r8, [fp, #-92]
	ldr	r8, [fp, #-60]
	mul	r8, r8, sl
	ldr	sl, [fp, #-104]
	str	r8, [fp, #-88]
	ldr	r8, [ip, #12]
	str	r8, [fp, #-100]
	smull	r8, sl, r2, sl
	ldr	r8, [fp, #-76]
	str	sl, [fp, #-112]
	mov	sl, r9, asr #31
	str	sl, [fp, #-68]
	smull	sl, r8, r8, r9
	ldr	r9, [fp, #-88]
	str	r8, [fp, #-104]
	ldr	r8, [fp, #-88]
	mov	sl, r8, asr #31
	str	sl, [fp, #-48]
	smull	sl, r8, r2, r9
	ldr	sl, [fp, #-112]
	ldr	r9, [fp, #-72]
	str	r8, [fp, #-88]
	rsb	r8, r9, sl, asr #12
	str	r8, [r3, #28]
	ldr	r9, [fp, #-52]
	ldr	sl, [fp, #-104]
	mov	r8, r9, asr #31
	ldr	r9, [fp, #-68]
	str	r8, [fp, #-72]
	rsb	r8, r9, sl, asr #18
	ldr	sl, [ip, #8]
	mul	r9, sl, r6
	str	r9, [fp, #-68]
	str	r8, [r3, #16]
	ldr	sl, [ip, #28]
	ldr	r9, [fp, #-56]
	mul	r8, sl, r9
	ldr	r9, [fp, #-88]
	ldr	sl, [fp, #-48]
	rsb	sl, sl, r9, asr #12
	str	sl, [fp, #-48]
	str	sl, [r3, #4]
	ldr	r9, [fp, #-68]
	ldr	sl, [ip, #16]
	mul	r1, r1, r9
	str	sl, [fp, #-56]
	mov	sl, r8, asr #31
	str	sl, [fp, #-68]
	ldr	r9, [ip, #4]
	mul	sl, r9, r7
	ldr	r9, [ip, #24]
	ldr	ip, [fp, #-108]
	str	r9, [fp, #-48]
	ldr	r9, [fp, #-56]
	mul	r6, ip, r6
	mov	ip, r1, asr #31
	mul	r7, r9, r7
	ldr	r9, [fp, #-52]
	str	ip, [fp, #-56]
	smull	r9, ip, r4, r9
	mov	r9, sl, asr #31
	str	r9, [fp, #-88]
	smull	r9, r8, r5, r8
	mov	r9, r6, asr #31
	str	r9, [fp, #-52]
	smull	r9, r1, r5, r1
	ldr	r5, [fp, #-72]
	smull	r9, sl, r4, sl
	sub	ip, r5, ip, asr #6
	ldr	r9, [fp, #-68]
	rsb	r8, r9, r8, asr #13
	smull	r9, r6, r4, r6
	add	ip, ip, r8
	smull	r5, r4, r4, r7
	mov	r7, r7, asr #31
	ldr	r5, [fp, #-96]
	ldr	r8, [fp, #-56]
	mul	r9, ip, r5
	ldr	r5, [fp, #-92]
	rsb	r1, r8, r1, asr #13
	ldr	ip, [fp, #-88]
	mul	r8, r5, r0
	ldr	r5, [fp, #-100]
	rsb	sl, ip, sl, asr #6
	add	r1, r1, sl
	mul	ip, r5, r0
	ldr	r5, [fp, #-52]
	rsb	r6, r5, r6, asr #6
	ldr	r5, [fp, #-48]
	mul	r5, r5, r0
	mul	r0, r0, r9
	str	r5, [fp, #-56]
	rsb	r5, r7, r4, asr #6
	ldr	sl, [fp, #-60]
	add	r6, r6, r5
	ldr	r7, [fp, #-64]
	mov	r4, r0, asr #31
	ldr	r9, [fp, #-80]
	mul	r5, sl, r1
	mul	sl, r7, r6
	ldr	r6, [fp, #-84]
	str	r4, [fp, #-84]
	ldr	r4, [fp, #-76]
	mul	r7, r6, r8
	ldr	r6, [fp, #-56]
	ldr	r8, [fp, #-96]
	mov	r1, r5, asr #31
	mul	ip, r9, ip
	str	r1, [fp, #-80]
	mul	r1, r8, r6
	mov	r8, sl, asr #31
	smull	r6, sl, r4, sl
	mov	r6, r7, asr #31
	smull	r4, r9, r2, r0
	mov	r4, ip, asr #31
	smull	r0, r5, r2, r5
	rsb	r8, r8, sl, asr #18
	smull	sl, ip, r2, ip
	str	r9, [fp, #-48]
	smull	r9, r7, r2, r7
	mov	r9, r1, asr #31
	smull	r0, r2, r2, r1
	rsb	ip, r4, ip, asr #12
	ldr	sl, [fp, #-48]
	ldr	r1, [fp, #-80]
	rsb	r6, r6, r7, asr #12
	ldr	r7, [fp, #-84]
	rsb	r5, r1, r5, asr #12
	str	r6, [r3, #0]
	rsb	r0, r7, sl, asr #12
	rsb	r9, r9, r2, asr #12
	str	r0, [r3, #32]
	str	r5, [r3, #8]
	str	ip, [r3, #12]
	str	r8, [r3, #20]
	str	r9, [r3, #24]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB, .-OPTM_ALG_CalCSCCoefTprtYCbCrtoRGB
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr
	.type	OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr, %function
OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr:
	UNWIND(.fnstart)
.LFB16:
	@ args = 16, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #92)
	sub	sp, sp, #92
	rsb	ip, r2, r2, asl #4
	movw	r4, #:lower16:1374389535
	movt	r4, #:upper16:1374389535
	add	r0, r0, #50
	mov	r7, ip, asl #2
	ldr	r9, [fp, #12]
	mov	sl, r0, asl #1
	movw	r8, #:lower16:1759218605
	umull	r6, r2, r4, r7
	movt	r8, #:upper16:1759218605
	ldr	r7, [r9, #12]
	movw	r5, #:lower16:.LANCHOR0
	str	r0, [fp, #-76]
	movt	r5, #:upper16:.LANCHOR0
	ldr	r6, [r9, #16]
	movw	ip, #:lower16:274877907
	str	r8, [fp, #-60]
	mov	r8, r3, asl #1
	mul	r3, r1, sl
	mov	r0, r2, lsr #5
	str	r8, [fp, #-48]
	movt	ip, #:upper16:274877907
	add	r8, r5, r0, asl #2
	ldr	r5, [fp, #4]
	ldr	sl, [r8, #204]
	str	r3, [fp, #-52]
	ldr	r3, [r8, #448]
	ldr	r2, [r9, #24]
	mul	r7, r7, sl
	ldr	r0, [r9, #28]
	mul	r8, r2, r3
	mov	r2, r5, asl #1
	mul	r5, r0, r3
	mul	r6, r6, sl
	mov	r1, r8, asr #31
	str	r1, [fp, #-84]
	smull	r1, r0, ip, r7
	mov	r7, r7, asr #31
	str	r0, [fp, #-56]
	smull	r1, r0, ip, r8
	ldr	r8, [fp, #-56]
	str	r0, [fp, #-64]
	mov	r0, r6, asr #31
	str	r0, [fp, #-88]
	ldr	r1, [r9, #20]
	mul	r0, r1, sl
	rsb	r1, r7, r8, asr #6
	str	r1, [fp, #-56]
	mov	r8, r5, asr #31
	ldr	r7, [r9, #32]
	str	r8, [fp, #-72]
	mul	r1, r7, r3
	smull	r8, r7, ip, r6
	ldr	r6, [fp, #-84]
	str	r7, [fp, #-68]
	ldr	r7, [fp, #-64]
	rsb	r8, r6, r7, asr #6
	ldr	r7, [fp, #-56]
	smull	r6, r5, ip, r5
	add	r6, r7, r8
	str	r6, [fp, #-56]
	smull	r6, r7, ip, r0
	mov	r0, r0, asr #31
	ldr	r8, [fp, #-68]
	str	r7, [fp, #-84]
	ldr	r7, [fp, #-88]
	rsb	r6, r7, r8, asr #6
	smull	r8, r7, ip, r1
	mov	r1, r1, asr #31
	str	r7, [fp, #-64]
	ldr	r7, [fp, #-72]
	rsb	r8, r7, r5, asr #6
	ldr	r5, [fp, #-52]
	ldr	r7, [fp, #-56]
	add	r6, r6, r8
	mul	r6, r5, r6
	mul	r8, r5, r7
	ldr	r5, [fp, #-84]
	ldr	r7, [fp, #-64]
	rsb	r0, r0, r5, asr #6
	ldr	r5, [fp, #4]
	rsb	r1, r1, r7, asr #6
	add	r1, r0, r1
	ldr	r0, [fp, #-60]
	rsb	r7, r2, r5, asl #24
	smull	r0, r5, r0, r8
	mov	r8, r8, asr #31
	ldr	r0, [fp, #-52]
	mul	r1, r0, r1
	rsb	r8, r8, r5, asr #12
	mov	r0, r6, asr #31
	str	r0, [fp, #-80]
	ldr	r5, [fp, #16]
	ldr	r0, [fp, #-60]
	str	r8, [fp, #-88]
	str	r8, [r5, #12]
	ldr	r8, [fp, #-60]
	smull	r0, r6, r0, r6
	rsb	r0, r2, r7, asl #7
	smull	r8, r7, r8, r1
	ldr	r8, [fp, #-80]
	str	r0, [fp, #-108]
	mov	r0, r1, asr #31
	rsb	r6, r8, r6, asr #12
	str	r6, [fp, #-84]
	str	r6, [r5, #16]
	ldr	r8, [r9, #24]
	rsb	r0, r0, r7, asr #12
	ldr	r5, [r9, #12]
	str	r0, [fp, #-80]
	mul	r6, r8, sl
	ldr	r1, [fp, #8]
	mul	r8, r5, r3
	ldr	r5, [r9, #28]
	mov	r1, r1, asl #1
	mul	r7, r5, sl
	ldr	r5, [fp, #16]
	str	r7, [fp, #-96]
	ldr	r7, [r9, #16]
	str	r0, [r5, #20]
	mul	r5, r7, r3
	smull	r7, r0, ip, r6
	mov	r7, r8, asr #31
	str	r7, [fp, #-56]
	mov	r6, r6, asr #31
	smull	r7, r8, ip, r8
	str	r0, [fp, #-72]
	ldr	r0, [r9, #32]
	mul	r7, r0, sl
	mov	sl, r5, asr #31
	str	sl, [fp, #-68]
	ldr	r0, [fp, #-72]
	str	r7, [fp, #-64]
	rsb	r6, r6, r0, asr #6
	ldr	r7, [r9, #20]
	mul	sl, r7, r3
	ldr	r7, [fp, #-96]
	smull	r0, r3, ip, r7
	ldr	r0, [fp, #-56]
	sub	r8, r0, r8, asr #6
	smull	r0, r7, ip, r5
	movw	r5, #299
	str	r3, [fp, #-92]
	add	r8, r6, r8
	ldr	r3, [fp, #-96]
	movw	r6, #587
	str	r8, [fp, #-72]
	str	r7, [fp, #-56]
	mov	r0, r3, asr #31
	ldr	r7, [fp, #-48]
	ldr	r8, [fp, #-56]
	mul	r3, r5, r7
	mvn	r5, #146
	mla	r7, r6, r2, r3
	ldr	r3, [fp, #-92]
	ldr	r6, [fp, #-68]
	str	r7, [fp, #-96]
	rsb	r7, r0, r3, asr #6
	ldr	r0, [fp, #-48]
	mul	r3, r5, r0
	mvn	r0, #288
	mla	r3, r0, r2, r3
	sub	r5, r6, r8, asr #6
	str	r3, [fp, #-104]
	ldr	r6, [r9, #4]
	ldr	r8, [fp, #-64]
	str	r6, [fp, #-56]
	smull	r6, r0, ip, r8
	add	r8, r7, r5
	ldr	r6, [fp, #-48]
	mvn	r5, #231
	ldr	r7, [fp, #-108]
	str	r8, [fp, #-100]
	mov	r8, #232
	mul	r5, r5, r2
	str	r0, [fp, #-116]
	smull	r0, r3, ip, sl
	add	r0, r2, r7, asl #2
	mvn	r7, #340
	str	r0, [fp, #-112]
	mla	r5, r8, r1, r5
	str	r3, [fp, #-92]
	movw	r3, #341
	mul	r0, r3, r6
	mov	r3, #114
	mla	r6, r7, r2, r0
	ldr	r0, [fp, #-76]
	str	r6, [fp, #-68]
	ldr	r8, [r9, #0]
	ldr	r6, [fp, #-52]
	mul	r7, r8, r0
	ldr	r0, [fp, #-72]
	mul	r8, r6, r0
	ldr	r0, [fp, #-64]
	mov	r6, sl, asr #31
	ldr	sl, [fp, #-96]
	str	r6, [fp, #-72]
	mla	r6, r3, r1, sl
	mov	sl, r0, asr #31
	mul	r0, r3, r2
	ldr	r3, [fp, #-116]
	str	r0, [fp, #-96]
	rsb	r0, sl, r3, asr #6
	ldr	sl, [fp, #-48]
	mvn	r3, #167
	str	r0, [fp, #-64]
	mul	r0, r3, sl
	ldr	r3, [fp, #-92]
	str	r0, [fp, #-116]
	ldr	r0, [fp, #-72]
	sub	sl, r0, r3, asr #6
	ldr	r0, [fp, #-104]
	mov	r3, #436
	mla	r3, r3, r1, r0
	str	r3, [fp, #-72]
	movw	r3, #886
	ldr	r0, [r9, #8]
	ldr	r9, [fp, #-96]
	str	r0, [fp, #-104]
	mla	r0, r3, r1, r9
	ldr	r9, [fp, #-116]
	ldr	r3, [fp, #-64]
	add	sl, r3, sl
	str	sl, [fp, #-108]
	str	r0, [fp, #-92]
	mov	r0, #168
	mla	r3, r0, r2, r9
	movw	r9, #615
	str	r3, [fp, #-96]
	ldr	sl, [fp, #-48]
	ldr	r0, [fp, #-112]
	mla	r3, r9, sl, r0
	ldr	sl, [fp, #-56]
	ldr	r9, [fp, #-76]
	ldr	r0, [fp, #-100]
	str	r3, [fp, #-116]
	mul	r3, sl, r9
	ldr	sl, [fp, #-52]
	ldr	r9, [fp, #-48]
	str	r3, [fp, #-64]
	mul	r3, sl, r0
	movw	sl, #701
	mov	r0, #203
	str	r3, [fp, #-56]
	mul	r3, sl, r9
	mul	r9, r0, r2
	mov	r0, r8, asr #31
	str	r3, [fp, #-120]
	mov	r3, r7, asr #31
	smull	sl, r7, r4, r7
	str	r9, [fp, #-100]
	ldr	sl, [fp, #-60]
	mov	r9, r6, asr #31
	smull	sl, r8, sl, r8
	mov	sl, r5, asr #31
	str	sl, [fp, #-48]
	smull	sl, r6, r4, r6
	ldr	sl, [fp, #-68]
	rsb	r8, r0, r8, asr #12
	mvn	r0, #202
	mov	sl, sl, asr #31
	str	sl, [fp, #-112]
	smull	sl, r5, r4, r5
	rsb	sl, r3, r7, asr #5
	ldr	r3, [fp, #-68]
	rsb	r6, r9, r6, asr #5
	ldr	r7, [fp, #-100]
	movw	r9, #299
	str	sl, [fp, #-128]
	smull	r3, sl, r4, r3
	mla	r3, r0, r1, r7
	ldr	r0, [fp, #-120]
	mla	r2, r9, r2, r0
	ldr	r0, [fp, #-112]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-48]
	rsb	sl, r0, sl, asr #5
	ldr	r0, [fp, #-64]
	rsb	r7, r3, r5, asr #5
	ldr	r5, [fp, #-108]
	str	r2, [fp, #-100]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-116]
	str	r7, [fp, #-120]
	mvn	r7, #99
	mul	r9, r2, r5
	ldr	r2, [fp, #-76]
	mla	r5, r7, r1, r3
	mov	r7, r0, asr #31
	ldr	r3, [fp, #-56]
	str	r9, [fp, #-48]
	ldr	r9, [fp, #-104]
	str	r5, [fp, #-52]
	mul	r5, r9, r2
	mov	r9, r3, asr #31
	smull	r0, r2, r4, r0
	ldr	r0, [fp, #-72]
	mov	r1, r0, asr #31
	str	r1, [fp, #-104]
	ldr	r0, [fp, #-60]
	rsb	r2, r7, r2, asr #5
	smull	r3, r1, r0, r3
	ldr	r0, [fp, #-92]
	mov	r3, r0, asr #31
	ldr	r0, [fp, #-72]
	str	r3, [fp, #-108]
	rsb	r1, r9, r1, asr #12
	smull	r3, r0, r4, r0
	ldr	r3, [fp, #-96]
	str	r0, [fp, #-76]
	mov	r0, r3, asr #31
	ldr	r3, [fp, #-92]
	str	r0, [fp, #-112]
	ldr	r9, [fp, #-76]
	smull	r0, r3, r4, r3
	ldr	r0, [fp, #-96]
	str	r3, [fp, #-56]
	smull	r7, r3, r4, r0
	ldr	r7, [fp, #-48]
	ldr	r0, [fp, #-60]
	str	r3, [fp, #-72]
	smull	r0, r3, r0, r7
	ldr	r0, [fp, #-100]
	ldr	r7, [fp, #-104]
	str	r3, [fp, #-64]
	rsb	r3, r7, r9, asr #5
	smull	r7, r9, r4, r0
	ldr	r0, [fp, #-56]
	ldr	r7, [fp, #-108]
	str	r9, [fp, #-92]
	rsb	r9, r7, r0, asr #5
	str	r9, [fp, #-60]
	smull	r9, r0, r4, r5
	mov	r5, r5, asr #31
	ldr	r7, [fp, #-72]
	ldr	r9, [fp, #-112]
	str	r0, [fp, #-76]
	rsb	r0, r9, r7, asr #5
	ldr	r7, [fp, #-52]
	str	r0, [fp, #-116]
	smull	r0, r9, r4, r7
	ldr	r0, [fp, #-68]
	str	r9, [fp, #-56]
	smull	r9, r7, r4, r0
	mul	r9, r8, sl
	ldr	r0, [fp, #-48]
	str	r7, [fp, #-72]
	mov	r4, r0, asr #31
	ldr	r7, [fp, #-52]
	str	r9, [fp, #-112]
	ldr	r9, [fp, #-128]
	mov	r0, r7, asr #31
	str	r0, [fp, #-48]
	mul	r7, r9, sl
	str	r7, [fp, #-96]
	ldr	r0, [fp, #-68]
	ldr	r7, [fp, #-88]
	mov	r9, r0, asr #31
	str	r9, [fp, #-52]
	mul	r9, r8, r6
	mul	r0, r7, sl
	ldr	r7, [fp, #-76]
	ldr	sl, [fp, #-100]
	str	r9, [fp, #-100]
	rsb	r9, r5, r7, asr #5
	ldr	r5, [fp, #-120]
	str	r0, [fp, #-104]
	mov	r0, sl, asr #31
	ldr	r7, [fp, #-64]
	mul	sl, r8, r5
	ldr	r5, [fp, #-56]
	str	sl, [fp, #-108]
	rsb	sl, r4, r7, asr #12
	ldr	r4, [fp, #-128]
	ldr	r7, [fp, #-48]
	mul	r8, r4, r6
	ldr	r4, [fp, #-120]
	str	r8, [fp, #-76]
	rsb	r8, r7, r5, asr #5
	ldr	r7, [fp, #-128]
	mul	r5, r7, r4
	ldr	r7, [fp, #-72]
	str	r5, [fp, #-64]
	ldr	r5, [fp, #-52]
	rsb	r4, r5, r7, asr #5
	ldr	r5, [fp, #-88]
	ldr	r7, [fp, #-92]
	mul	r6, r5, r6
	str	r6, [fp, #-56]
	rsb	r6, r0, r7, asr #5
	ldr	r7, [fp, #-120]
	mul	r0, r5, r7
	ldr	r7, [fp, #-112]
	ldr	r5, [fp, #-116]
	str	r0, [fp, #-92]
	mla	r0, r1, r5, r7
	ldr	r5, [fp, #-96]
	str	r0, [fp, #-112]
	ldr	r0, [fp, #-116]
	mla	r7, r2, r0, r5
	ldr	r0, [fp, #-84]
	ldr	r5, [fp, #-104]
	str	r7, [fp, #-88]
	ldr	r7, [fp, #-116]
	mla	r7, r0, r7, r5
	str	r7, [fp, #-96]
	ldr	r7, [fp, #-100]
	ldr	r5, [fp, #-108]
	mla	r0, r1, r3, r7
	ldr	r7, [fp, #-76]
	str	r0, [fp, #-68]
	ldr	r0, [fp, #-60]
	mla	r1, r1, r0, r5
	mla	r5, r2, r3, r7
	ldr	r7, [fp, #-56]
	str	r1, [fp, #-72]
	ldr	r1, [fp, #-64]
	str	r5, [fp, #-48]
	ldr	r5, [fp, #-84]
	mla	r2, r2, r0, r1
	ldr	r1, [fp, #-92]
	str	r2, [fp, #-52]
	mla	r2, r5, r3, r7
	ldr	r3, [fp, #-112]
	mla	r7, r5, r0, r1
	ldr	r5, [fp, #-88]
	ldr	r0, [fp, #-80]
	ldr	r1, [fp, #-96]
	str	r7, [fp, #-56]
	mla	r7, sl, r6, r3
	mla	r3, r9, r6, r5
	ldr	r5, [fp, #-68]
	mla	r6, r0, r6, r1
	mla	r1, sl, r8, r5
	ldr	r5, [fp, #-72]
	mov	r0, r7, asr #31
	str	r0, [fp, #-88]
	mov	r0, r3, asr #31
	str	r0, [fp, #-76]
	mla	sl, sl, r4, r5
	ldr	r5, [fp, #-48]
	mla	r0, r9, r8, r5
	mov	r5, r6, asr #31
	str	r5, [fp, #-48]
	ldr	r5, [fp, #-52]
	mla	r9, r9, r4, r5
	mov	r5, r1, asr #31
	str	r5, [fp, #-52]
	ldr	r5, [fp, #-80]
	mla	r8, r5, r8, r2
	mov	r2, sl, asr #31
	str	r2, [fp, #-84]
	ldr	r2, [fp, #-56]
	mla	r4, r5, r4, r2
	mov	r5, r0, asr #31
	str	r5, [fp, #-60]
	smull	r5, r2, ip, r7
	mov	r7, r9, asr #31
	mov	r5, r8, asr #31
	str	r2, [fp, #-80]
	smull	r2, r0, ip, r0
	smull	r2, r9, ip, r9
	mov	r2, r4, asr #31
	str	r2, [fp, #-56]
	smull	r2, r3, ip, r3
	ldr	r2, [fp, #-60]
	rsb	r9, r7, r9, asr #6
	smull	r7, r6, ip, r6
	rsb	r0, r2, r0, asr #6
	smull	r2, r8, ip, r8
	smull	r7, r4, ip, r4
	ldr	r2, [fp, #-76]
	rsb	r8, r5, r8, asr #6
	ldr	r5, [fp, #-48]
	ldr	r7, [fp, #-56]
	rsb	r3, r2, r3, asr #6
	rsb	r6, r5, r6, asr #6
	ldr	r5, [fp, #-80]
	smull	r2, r1, ip, r1
	rsb	r4, r7, r4, asr #6
	smull	r7, sl, ip, sl
	ldr	ip, [fp, #-88]
	rsb	r7, ip, r5, asr #6
	ldr	ip, [fp, #16]
	str	r7, [ip, #32]
	ldr	r2, [fp, #-52]
	stmia	ip, {r0, r9}	@ phole stm
	rsb	r1, r2, r1, asr #6
	str	r3, [ip, #8]
	ldr	r3, [fp, #-84]
	str	r8, [ip, #12]
	rsb	sl, r3, sl, asr #6
	str	r4, [ip, #16]
	str	r6, [ip, #20]
	str	r1, [ip, #24]
	str	sl, [ip, #28]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr, .-OPTM_ALG_CalCSCCoefTprtYCbCrtoYCbCr
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit
	.type	OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit, %function
OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit:
	UNWIND(.fnstart)
.LFB17:
	@ args = 16, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #124)
	sub	sp, sp, #124
	rsb	ip, r2, r2, asl #4
	movw	r4, #:lower16:1374389535
	movt	r4, #:upper16:1374389535
	mov	r5, r1, asl #1
	mov	r2, ip, asl #2
	ldr	r7, [fp, #8]
	movw	sl, #:lower16:.LANCHOR0
	movt	sl, #:upper16:.LANCHOR0
	umull	r1, r9, r4, r2
	add	r1, r0, #50
	str	r5, [fp, #-96]
	mov	r4, #227
	mov	r0, r1, asl #1
	str	r0, [fp, #-52]
	ldr	r1, [fp, #-96]
	mov	r5, #179
	movw	r2, #:lower16:351843721
	movt	r2, #:upper16:351843721
	mov	r6, r9, lsr #5
	ldr	r9, [fp, #-52]
	movw	r0, #:lower16:1759218605
	movt	r0, #:upper16:1759218605
	add	ip, sl, r6, asl #2
	mul	r8, r7, r9
	ldr	r6, [ip, #448]
	ldr	ip, [ip, #204]
	mul	r3, r3, r9
	mov	r9, #150
	rsb	r7, ip, ip, asl #3
	mul	sl, r4, ip
	str	r8, [fp, #-72]
	add	r8, ip, r7, asl #2
	str	r8, [fp, #-84]
	mov	r8, #106
	str	r3, [fp, #-76]
	mul	r6, r6, r1
	ldr	r3, [fp, #16]
	mul	r1, r9, ip
	str	sl, [fp, #-56]
	mul	r9, r8, ip
	mov	sl, #77
	mul	r7, sl, ip
	mov	sl, #190
	str	r1, [fp, #-80]
	mul	r1, r5, r6
	str	r9, [fp, #-92]
	mul	r9, r5, ip
	str	r7, [fp, #-88]
	mul	r5, sl, r6
	mov	r7, r6, asl #3
	mul	sl, r4, r6
	ldr	r4, [fp, #-96]
	add	r8, r7, r6
	add	ip, r6, r6, asl #1
	str	r1, [fp, #-60]
	rsb	r7, r6, r7
	str	r5, [fp, #-68]
	rsb	r1, r6, r6, asl #4
	ldr	r5, [fp, #-56]
	add	r7, r7, r7, asl #4
	str	sl, [fp, #-64]
	add	sl, r6, r6, asl #2
	add	r6, r6, r8, asl #2
	ldr	r8, [fp, #-96]
	mul	r4, r4, r5
	ldr	r5, [fp, #-96]
	mul	r9, r8, r9
	mov	r8, r1, asl #2
	ldr	r1, [fp, #-84]
	rsb	sl, sl, sl, asl #4
	str	r4, [fp, #-104]
	ldr	r4, [fp, #-80]
	str	r9, [fp, #-56]
	mul	r9, r5, r4
	ldr	r5, [fp, #-96]
	ldr	r4, [fp, #-88]
	str	r9, [fp, #-160]
	mul	r9, r5, r1
	mul	r1, r5, r4
	ldr	r4, [fp, #-92]
	add	r5, ip, ip, asl #5
	mov	ip, ip, asl #3
	str	r1, [fp, #-48]
	ldr	r1, [fp, #-96]
	mul	r1, r1, r4
	str	r1, [fp, #-164]
	smull	r4, r1, r2, r8
	mov	r8, r8, asr #31
	str	r1, [fp, #-80]
	ldr	r4, [fp, #-60]
	mov	r1, r4, asr #31
	str	r1, [fp, #-100]
	smull	r1, r4, r2, r7
	mov	r7, r7, asr #31
	ldr	r1, [fp, #-60]
	str	r4, [fp, #-84]
	mov	r4, sl, asr #31
	str	r4, [fp, #-116]
	smull	r4, r1, r2, r1
	str	r1, [fp, #-96]
	mov	r1, ip, asr #31
	str	r1, [fp, #-128]
	smull	r1, r4, r2, sl
	str	r4, [fp, #-112]
	ldr	r4, [fp, #-68]
	mov	r1, r4, asr #31
	str	r1, [fp, #-144]
	smull	r4, sl, r2, ip
	mov	r4, r6, asr #31
	str	r4, [fp, #-152]
	smull	r4, r1, r2, r5
	mov	r5, r5, asr #31
	str	sl, [fp, #-124]
	ldr	sl, [fp, #-64]
	ldr	r4, [fp, #-68]
	str	r1, [fp, #-132]
	smull	r1, ip, r2, sl
	ldr	r1, [fp, #-160]
	str	ip, [fp, #-136]
	smull	ip, sl, r2, r4
	mov	ip, r1, asr #31
	str	ip, [fp, #-92]
	smull	ip, r4, r2, r6
	mov	r6, r9, asr #31
	str	sl, [fp, #-140]
	ldr	sl, [fp, #-104]
	str	r6, [fp, #-108]
	smull	r6, r1, r2, sl
	str	r4, [fp, #-148]
	ldr	r6, [fp, #-56]
	ldr	r4, [fp, #-48]
	str	r1, [fp, #-156]
	mov	ip, r4, asr #31
	ldr	r1, [fp, #-160]
	smull	r4, sl, r2, r6
	smull	r6, r9, r2, r9
	ldr	r6, [fp, #-80]
	str	ip, [fp, #-120]
	smull	ip, r4, r2, r1
	str	sl, [fp, #-68]
	rsb	sl, r8, r6, asr #13
	ldr	r8, [fp, #-48]
	ldr	ip, [fp, #-64]
	str	sl, [fp, #-60]
	smull	r1, sl, r2, r8
	ldr	r1, [fp, #-84]
	str	r4, [fp, #-88]
	mov	r4, ip, asr #31
	rsb	ip, r7, r1, asr #13
	str	ip, [fp, #-48]
	ldr	r6, [fp, #-164]
	ldr	r8, [fp, #-96]
	ldr	ip, [fp, #-52]
	smull	r7, r2, r2, r6
	ldr	r7, [fp, #-100]
	ldr	r6, [fp, #4]
	sub	r1, r7, r8, asr #13
	ldr	r7, [fp, #-116]
	ldr	r8, [fp, #-112]
	mul	r6, r6, ip
	str	r1, [fp, #-64]
	ldr	ip, [fp, #-124]
	sub	r1, r7, r8, asr #13
	ldr	r8, [fp, #-128]
	str	r1, [fp, #-112]
	ldr	r1, [fp, #-132]
	sub	r7, r8, ip, asr #13
	ldr	r8, [fp, #-136]
	str	r7, [fp, #-116]
	rsb	ip, r5, r1, asr #13
	ldr	r5, [fp, #-144]
	rsb	r7, r4, r8, asr #13
	ldr	r1, [fp, #-140]
	str	ip, [fp, #-80]
	str	r7, [fp, #-84]
	ldr	ip, [fp, #-148]
	sub	r4, r5, r1, asr #13
	ldr	r7, [fp, #-152]
	ldr	r1, [fp, #-56]
	ldr	r5, [fp, #-164]
	sub	r8, r7, ip, asr #13
	str	r4, [fp, #-96]
	ldr	ip, [fp, #-88]
	ldr	r4, [fp, #-104]
	ldr	r7, [fp, #-92]
	str	r8, [fp, #-100]
	mov	r8, r1, asr #31
	mov	r1, r5, asr #31
	mov	r5, r4, asr #31
	sub	r4, r7, ip, asr #13
	ldr	r7, [fp, #-108]
	ldr	ip, [fp, #-120]
	sub	r9, r7, r9, asr #13
	ldr	r7, [fp, #-68]
	sub	sl, ip, sl, asr #13
	rsb	ip, r8, r7, asr #13
	ldr	r8, [fp, #-156]
	rsb	r7, r1, r2, asr #13
	str	ip, [fp, #-52]
	str	r7, [fp, #-88]
	rsb	r2, r5, r8, asr #13
	str	r2, [fp, #-68]
	ldr	r1, [fp, #-60]
	ldr	ip, [fp, #-48]
	ldr	r7, [fp, #-64]
	add	r8, r1, #77
	ldr	r1, [fp, #-112]
	add	r5, ip, #150
	add	r2, r7, #29
	str	r5, [fp, #-56]
	str	r2, [fp, #-60]
	add	ip, r1, #77
	ldr	r7, [fp, #-80]
	ldr	r2, [fp, #-84]
	ldr	r5, [fp, #-116]
	ldr	r1, [fp, #-96]
	str	ip, [fp, #-48]
	add	ip, r5, #150
	add	r5, r7, #29
	add	r7, r2, #77
	add	r2, r1, #150
	ldr	r1, [fp, #-100]
	add	r2, r2, r4
	add	r7, r7, sl
	add	r1, r1, #29
	str	r1, [fp, #-64]
	mul	r2, r6, r2
	ldr	r1, [fp, #-52]
	add	r8, r8, r1
	ldr	r1, [fp, #-88]
	add	ip, ip, r1
	add	r1, r5, r9
	str	ip, [fp, #-52]
	ldr	r5, [fp, #-64]
	ldr	ip, [fp, #-68]
	str	r2, [fp, #-88]
	ldr	r2, [fp, #-72]
	str	r1, [fp, #-84]
	add	r1, r5, ip
	ldr	r5, [fp, #-60]
	mul	r1, r2, r1
	add	r9, r5, r9
	ldr	r5, [fp, #-76]
	ldr	ip, [fp, #-56]
	mul	r9, r9, r2
	add	r4, ip, r4
	mul	r7, r5, r7
	mov	r2, r1, asr #31
	mul	r8, r5, r8
	str	r2, [fp, #-68]
	mul	r4, r6, r4
	ldr	r2, [fp, #-52]
	ldr	r5, [fp, #-88]
	ldr	ip, [fp, #-48]
	mul	r6, r6, r2
	add	sl, ip, sl
	ldr	r2, [fp, #-84]
	mov	ip, r7, asr #31
	str	ip, [fp, #-60]
	mov	ip, r5, asr #31
	ldr	r5, [fp, #-76]
	str	ip, [fp, #-48]
	mov	ip, r8, asr #31
	str	ip, [fp, #-80]
	ldr	ip, [fp, #-72]
	mul	sl, r5, sl
	mov	r5, r4, asr #31
	str	r5, [fp, #-52]
	mul	r5, ip, r2
	mov	ip, r9, asr #31
	str	ip, [fp, #-72]
	smull	ip, r2, r0, r1
	mov	r1, sl, asr #31
	str	r1, [fp, #-76]
	mov	ip, r6, asr #31
	smull	r1, r4, r0, r4
	mov	r1, r5, asr #31
	str	r2, [fp, #-64]
	smull	r2, r8, r0, r8
	smull	r2, r9, r0, r9
	ldr	r2, [fp, #-80]
	rsb	r8, r2, r8, asr #12
	smull	r2, sl, r0, sl
	ldr	r2, [fp, #-52]
	rsb	r4, r2, r4, asr #12
	smull	r2, r6, r0, r6
	ldr	r2, [fp, #-72]
	rsb	r9, r2, r9, asr #12
	smull	r2, r5, r0, r5
	rsb	r6, ip, r6, asr #12
	ldr	ip, [fp, #-88]
	ldr	r2, [fp, #-76]
	rsb	sl, r2, sl, asr #12
	smull	r2, r7, r0, r7
	rsb	r5, r1, r5, asr #12
	smull	ip, r2, r0, ip
	ldr	ip, [fp, #-64]
	ldr	r0, [fp, #-68]
	rsb	r1, r0, ip, asr #12
	str	r1, [r3, #32]
	ldr	r0, [fp, #-60]
	str	r8, [r3, #0]
	str	r4, [r3, #4]
	rsb	r7, r0, r7, asr #12
	str	r9, [r3, #8]
	ldr	r1, [fp, #-48]
	str	sl, [r3, #12]
	rsb	r2, r1, r2, asr #12
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r7, [r3, #24]
	str	r2, [r3, #28]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit, .-OPTM_ALG_CalCSCCoefTprtRGBtoRGB_8bit
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtRGBtoRGB
	.type	OPTM_ALG_CalCSCCoefTprtRGBtoRGB, %function
OPTM_ALG_CalCSCCoefTprtRGBtoRGB:
	UNWIND(.fnstart)
.LFB18:
	@ args = 16, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #116)
	sub	sp, sp, #116
	rsb	r6, r2, r2, asl #4
	movw	r4, #:lower16:1374389535
	movt	r4, #:upper16:1374389535
	movw	ip, #:lower16:.LANCHOR0
	mov	r8, r6, asl #2
	movt	ip, #:upper16:.LANCHOR0
	add	sl, r0, #50
	mov	r1, r1, asl #1
	umull	r5, r9, r4, r8
	mov	r8, sl, asl #1
	movw	r4, #907
	str	r8, [fp, #-56]
	mov	r8, #117
	movw	r6, #718
	mov	r2, r9, lsr #5
	add	r7, ip, r2, asl #2
	movw	r2, #:lower16:351843721
	movt	r2, #:upper16:351843721
	movw	ip, #:lower16:1759218605
	ldr	r9, [r7, #204]
	movt	ip, #:upper16:1759218605
	ldr	r5, [r7, #448]
	movw	r7, #601
	mul	sl, r7, r9
	movw	r7, #306
	mul	r5, r5, r1
	mul	r0, r4, r9
	str	sl, [fp, #-52]
	mul	sl, r7, r9
	mul	r4, r8, r9
	add	r8, r5, r5, asl #1
	str	r0, [fp, #-88]
	ldr	r0, [fp, #16]
	str	sl, [fp, #-68]
	rsb	sl, r5, r8, asl #5
	str	sl, [fp, #-64]
	mov	r8, #242
	str	r4, [fp, #-60]
	movw	r4, #423
	mul	r7, r4, r9
	mov	r4, sl, asr #31
	movw	sl, #299
	str	r4, [fp, #-108]
	mul	r4, sl, r5
	movw	sl, #906
	mul	r8, r8, r5
	str	r7, [fp, #-96]
	movw	r7, #475
	mul	r7, r7, r5
	str	r4, [fp, #-48]
	mul	r4, sl, r5
	mov	sl, r8, asr #31
	str	sl, [fp, #-84]
	mul	r9, r6, r9
	str	r7, [fp, #-120]
	mul	r6, r6, r5
	str	r4, [fp, #-72]
	mov	r4, #760
	mul	sl, r4, r5
	mov	r4, r7, asr #31
	str	r4, [fp, #-92]
	ldr	r4, [fp, #-48]
	str	sl, [fp, #-76]
	mov	sl, #146
	mul	r7, sl, r5
	mov	sl, r4, asr #31
	str	sl, [fp, #-104]
	movw	sl, #394
	mul	r5, sl, r5
	ldr	sl, [fp, #-88]
	str	r7, [fp, #-80]
	ldr	r7, [fp, #-72]
	mov	r4, r7, asr #31
	ldr	r7, [fp, #-76]
	str	r4, [fp, #-112]
	mov	r4, r7, asr #31
	ldr	r7, [fp, #-80]
	str	r4, [fp, #-128]
	mul	r4, r1, sl
	mov	sl, r7, asr #31
	ldr	r7, [fp, #-52]
	str	sl, [fp, #-132]
	mul	sl, r1, r9
	mov	r9, r6, asr #31
	str	r9, [fp, #-100]
	mul	r9, r1, r7
	mov	r7, r5, asr #31
	str	r7, [fp, #-124]
	ldr	r7, [fp, #-60]
	mul	r7, r1, r7
	str	r7, [fp, #-52]
	mov	r7, r4, asr #31
	str	r7, [fp, #-136]
	ldr	r7, [fp, #-68]
	mul	r7, r1, r7
	str	r7, [fp, #-60]
	mov	r7, sl, asr #31
	str	r7, [fp, #-88]
	ldr	r7, [fp, #-96]
	mul	r1, r1, r7
	smull	r7, r8, r2, r8
	ldr	r7, [fp, #-52]
	str	r1, [fp, #-68]
	mov	r1, r9, asr #31
	str	r1, [fp, #-96]
	mov	r1, r7, asr #31
	ldr	r7, [fp, #-120]
	str	r1, [fp, #-116]
	smull	r1, r7, r2, r7
	ldr	r1, [fp, #-60]
	str	r7, [fp, #-152]
	mov	r7, r1, asr #31
	ldr	r1, [fp, #-48]
	str	r7, [fp, #-120]
	smull	r7, r1, r2, r1
	ldr	r7, [fp, #-84]
	rsb	r8, r7, r8, asr #13
	str	r8, [fp, #-48]
	str	r1, [fp, #-144]
	ldr	r1, [fp, #-64]
	smull	r7, r8, r2, r1
	ldr	r7, [fp, #-152]
	ldr	r1, [fp, #-92]
	rsb	r1, r1, r7, asr #13
	str	r1, [fp, #-84]
	ldr	r1, [fp, #-72]
	smull	r7, r1, r2, r1
	ldr	r7, [fp, #-144]
	str	r1, [fp, #-72]
	ldr	r1, [fp, #-104]
	sub	r1, r1, r7, asr #13
	str	r1, [fp, #-92]
	ldr	r1, [fp, #-76]
	smull	r7, r6, r2, r6
	smull	r7, r1, r2, r1
	ldr	r7, [fp, #-72]
	str	r1, [fp, #-64]
	ldr	r1, [fp, #-108]
	sub	r8, r1, r8, asr #13
	ldr	r1, [fp, #-112]
	str	r8, [fp, #-76]
	rsb	r8, r1, r7, asr #13
	str	r8, [fp, #-104]
	smull	r1, r5, r2, r5
	ldr	r8, [fp, #-128]
	ldr	r1, [fp, #-64]
	sub	r7, r8, r1, asr #13
	ldr	r8, [fp, #-80]
	str	r7, [fp, #-108]
	smull	r1, r7, r2, r8
	ldr	r1, [fp, #-100]
	sub	r8, r1, r6, asr #13
	str	r8, [fp, #-72]
	smull	r1, r6, r2, r4
	ldr	r4, [fp, #-124]
	rsb	r8, r4, r5, asr #13
	str	r8, [fp, #-80]
	smull	r4, r8, r2, r9
	str	r6, [fp, #-112]
	smull	r6, r1, r2, sl
	ldr	r6, [fp, #-132]
	ldr	r4, [fp, #-52]
	ldr	r9, [fp, #-60]
	sub	r5, r6, r7, asr #13
	ldr	r7, [fp, #-48]
	str	r8, [fp, #-124]
	add	r8, r7, #304
	str	r1, [fp, #-64]
	smull	r7, sl, r2, r4
	add	r8, r8, #2
	ldr	r1, [fp, #-84]
	str	r5, [fp, #-100]
	add	r7, r1, #600
	ldr	r5, [fp, #-92]
	smull	r1, r6, r2, r9
	str	sl, [fp, #-52]
	ldr	sl, [fp, #-68]
	add	r4, r5, #304
	ldr	r5, [fp, #-68]
	add	r7, r7, #1
	str	r4, [fp, #-92]
	ldr	r1, [fp, #8]
	str	r6, [fp, #-48]
	mov	r4, r5, asr #31
	smull	r6, r9, r2, sl
	ldr	r6, [fp, #-76]
	ldr	sl, [fp, #-56]
	add	r2, r6, #600
	ldr	r5, [fp, #4]
	ldr	r6, [fp, #-56]
	add	r2, r2, #1
	str	r9, [fp, #-60]
	str	r4, [fp, #-68]
	ldr	r9, [fp, #-104]
	ldr	r4, [fp, #-108]
	mul	r3, r3, sl
	mul	r1, r1, sl
	add	sl, r9, #304
	mul	r5, r5, r6
	ldr	r9, [fp, #-124]
	add	r6, r4, #600
	ldr	r4, [fp, #-96]
	add	sl, sl, #2
	add	r6, r6, #1
	sub	r4, r4, r9, asr #13
	ldr	r9, [fp, #-52]
	str	r4, [fp, #-84]
	ldr	r4, [fp, #-116]
	sub	r4, r4, r9, asr #13
	ldr	r9, [fp, #-48]
	str	r4, [fp, #-56]
	ldr	r4, [fp, #-120]
	sub	r4, r4, r9, asr #13
	str	r4, [fp, #-52]
	ldr	r9, [fp, #-64]
	ldr	r4, [fp, #-88]
	rsb	r4, r4, r9, asr #13
	ldr	r9, [fp, #-60]
	str	r4, [fp, #-48]
	ldr	r4, [fp, #-68]
	rsb	r4, r4, r9, asr #13
	ldr	r9, [fp, #-112]
	str	r4, [fp, #-64]
	ldr	r4, [fp, #-136]
	rsb	r4, r4, r9, asr #13
	str	r4, [fp, #-76]
	ldr	r4, [fp, #-72]
	add	r9, r4, #117
	ldr	r4, [fp, #-92]
	str	r9, [fp, #-60]
	add	r9, r4, #2
	ldr	r4, [fp, #-80]
	str	r9, [fp, #-92]
	add	r9, r4, #117
	ldr	r4, [fp, #-100]
	add	r4, r4, #117
	str	r4, [fp, #-72]
	ldr	r4, [fp, #-48]
	add	r8, r8, r4
	ldr	r4, [fp, #-64]
	add	r2, r2, r4
	ldr	r4, [fp, #-52]
	str	r2, [fp, #-48]
	ldr	r2, [fp, #-56]
	add	sl, sl, r4
	ldr	r4, [fp, #-72]
	add	r9, r9, r2
	ldr	r2, [fp, #-84]
	str	r9, [fp, #-64]
	ldr	r9, [fp, #-76]
	add	r6, r6, r2
	mul	sl, r3, sl
	add	r2, r4, r9
	ldr	r4, [fp, #-84]
	mul	r8, r3, r8
	add	r9, r7, r4
	ldr	r4, [fp, #-56]
	ldr	r7, [fp, #-60]
	mul	r9, r5, r9
	add	r7, r7, r4
	ldr	r4, [fp, #-52]
	str	r7, [fp, #-56]
	ldr	r7, [fp, #-92]
	add	r7, r7, r4
	str	r7, [fp, #-52]
	mul	r7, r5, r6
	mov	r6, sl, asr #31
	str	r7, [fp, #-84]
	str	r6, [fp, #-68]
	mul	r7, r1, r2
	ldr	r6, [fp, #-56]
	ldr	r4, [fp, #-84]
	mov	r2, r4, asr #31
	str	r2, [fp, #-72]
	mul	r2, r6, r1
	ldr	r6, [fp, #-52]
	mov	r4, r7, asr #31
	str	r4, [fp, #-76]
	mul	r4, r3, r6
	ldr	r6, [fp, #-48]
	mov	r3, r8, asr #31
	str	r3, [fp, #-80]
	mov	r3, r9, asr #31
	str	r3, [fp, #-56]
	mul	r5, r5, r6
	ldr	r6, [fp, #-64]
	mov	r3, r2, asr #31
	str	r3, [fp, #-52]
	smull	r3, r9, ip, r9
	mul	r1, r1, r6
	smull	r3, r6, ip, r7
	mov	r7, r4, asr #31
	str	r7, [fp, #-48]
	smull	r7, r8, ip, r8
	mov	r7, r1, asr #31
	smull	r3, r2, ip, r2
	ldr	r3, [fp, #-80]
	str	r6, [fp, #-64]
	mov	r6, r5, asr #31
	rsb	r8, r3, r8, asr #12
	smull	r3, r4, ip, r4
	ldr	r3, [fp, #-56]
	rsb	r9, r3, r9, asr #12
	smull	r3, r5, ip, r5
	ldr	r3, [fp, #-52]
	rsb	r2, r3, r2, asr #12
	smull	r3, r1, ip, r1
	rsb	r5, r6, r5, asr #12
	ldr	r3, [fp, #-48]
	rsb	r4, r3, r4, asr #12
	smull	r3, sl, ip, sl
	rsb	r1, r7, r1, asr #12
	ldr	r3, [fp, #-84]
	smull	r3, r6, ip, r3
	ldr	r3, [fp, #-64]
	ldr	ip, [fp, #-76]
	rsb	r7, ip, r3, asr #12
	str	r7, [r0, #32]
	ldr	r7, [fp, #-68]
	stmia	r0, {r8, r9}	@ phole stm
	rsb	sl, r7, sl, asr #12
	str	r2, [r0, #8]
	ldr	r9, [fp, #-72]
	str	r4, [r0, #12]
	rsb	r6, r9, r6, asr #12
	str	r5, [r0, #16]
	str	r1, [r0, #20]
	str	sl, [r0, #24]
	str	r6, [r0, #28]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_CalCSCCoefTprtRGBtoRGB, .-OPTM_ALG_CalCSCCoefTprtRGBtoRGB
	.align	2
	.global	Video_InitLTICTIInfo
	.type	Video_InitLTICTIInfo, %function
Video_InitLTICTIInfo:
	UNWIND(.fnstart)
.LFB19:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mvn	r2, #127
	mov	r4, #15	@ movhi
	mov	ip, #50	@ movhi
	mov	r1, #51	@ movhi
	mov	r3, #256	@ movhi
	strh	r4, [r0, #46]	@ movhi
	strh	ip, [r0, #20]	@ movhi
	mvn	r4, #18
	mvn	ip, #0
	strh	r1, [r0, #22]	@ movhi
	strh	r3, [r0, #36]	@ movhi
	mvn	r1, #20
	mov	r3, #4
	strb	r4, [r0, #4]
	strb	r2, [r0, #26]
	mvn	r4, #7
	strh	r3, [r0, #40]	@ movhi
	strb	r4, [r0, #5]
	mvn	r4, #1
	strb	ip, [r0, #8]
	strb	r4, [r0, #6]
	mvn	r4, #10
	strb	r1, [r0, #33]
	strb	r4, [r0, #34]
	mov	r4, #127
	strb	ip, [r0, #7]
	strb	r4, [r0, #44]
	strb	r2, [r0, #24]
	strb	r2, [r0, #25]
	strb	r1, [r0, #32]
	strh	r3, [r0, #38]	@ movhi
	strh	r3, [r0, #42]	@ movhi
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	Video_InitLTICTIInfo, .-Video_InitLTICTIInfo
	.align	2
	.global	Gfx_InitLTICTIInfo
	.type	Gfx_InitLTICTIInfo, %function
Gfx_InitLTICTIInfo:
	UNWIND(.fnstart)
.LFB20:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldrsh	r6, [r0, #46]
	movw	r5, #:lower16:-2004318071
	movt	r5, #:upper16:-2004318071
	mov	r7, #256	@ movhi
	cmp	r6, #30
	movge	r6, #30
	strh	r7, [r0, #10]	@ movhi
	bic	r4, r6, r6, asr #31
	mov	r2, #60	@ movhi
	mov	r3, #61	@ movhi
	mvn	r6, #10
	mov	r1, r4, asl #8
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #22]	@ movhi
	mvn	r2, #127
	smull	r4, ip, r5, r1
	mov	r7, r1, asr #31
	mvn	r3, #20
	mov	r5, #0
	add	r1, ip, r1
	mov	r4, #127
	strb	r3, [r0, #33]
	rsb	r1, r7, r1, asr #3
	strb	r2, [r0, #26]
	strb	r3, [r0, #4]
	strb	r6, [r0, #34]
	strh	r5, [r0, #38]	@ movhi
	strb	r3, [r0, #5]
	strh	r1, [r0, #36]	@ movhi
	strb	r4, [r0, #44]
	strb	r6, [r0, #6]
	strb	r2, [r0, #24]
	strb	r2, [r0, #25]
	strh	r5, [r0, #12]	@ movhi
	strb	r4, [r0, #18]
	strb	r3, [r0, #32]
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	Gfx_InitLTICTIInfo, .-Gfx_InitLTICTIInfo
	.align	2
	.global	Gfx_GetLTICTIInfo
	.type	Gfx_GetLTICTIInfo, %function
Gfx_GetLTICTIInfo:
	UNWIND(.fnstart)
.LFB21:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r2, [r0, #8]
	mov	r5, r0
	mov	r4, r1
	ldr	r1, [r0, #0]
	mov	r0, r2, asl #12
	bl	__aeabi_uidiv
	ldr	r1, [r5, #4]
	mov	r6, r0
	ldr	r0, [r5, #12]
	mov	r0, r0, asl #12
	bl	__aeabi_uidiv
	ldrh	r3, [r4, #46]
	cmp	r0, r6
	movlt	r2, r0
	movge	r2, r6
	cmp	r2, #12288
	bge	.L180
	cmp	r2, #8192
	bge	.L181
	cmp	r0, r6
	movge	r6, r0
	movlt	r6, r6
	cmp	r6, #4096
	cmpge	r2, #3072
	movlt	r6, #0
	movge	r6, #1
	bge	.L182
	movw	lr, #2302
	cmp	r2, lr
	bgt	.L183
	ldrsh	r1, [r4, #10]
	str	r6, [r4, #28]
	str	r6, [r4, #0]
	b	.L175
.L181:
	mov	r1, #1
	str	r1, [r4, #28]
	str	r1, [r4, #0]
	mov	r1, #230
	mov	lr, #230	@ movhi
	mov	ip, #2	@ movhi
	mov	r2, #127
	strh	lr, [r4, #10]	@ movhi
	strh	ip, [r4, #12]	@ movhi
	strb	r2, [r4, #18]
.L175:
	sxth	r0, r3
	movw	lr, #:lower16:-2004318071
	cmp	r0, #30
	movge	r0, #30
	movt	lr, #:upper16:-2004318071
	bic	r3, r0, r0, asr #31
	mul	ip, r3, r1
	smull	r1, r2, lr, ip
	mov	r0, ip, asr #31
	add	lr, r2, ip
	rsb	r3, r0, lr, asr #3
	strh	r3, [r4, #10]	@ movhi
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L180:
	mov	ip, #1
	mov	r1, #127
	mov	r0, #256	@ movhi
	mov	lr, #2	@ movhi
	strb	r1, [r4, #18]
	mov	r1, #256
	strh	r0, [r4, #10]	@ movhi
	strh	lr, [r4, #12]	@ movhi
	str	ip, [r4, #28]
	str	ip, [r4, #0]
	b	.L175
.L183:
	mov	r1, #2	@ movhi
	mov	r2, #1
	mov	ip, #153	@ movhi
	strh	r1, [r4, #12]	@ movhi
	mov	r0, #127
	strh	ip, [r4, #10]	@ movhi
	str	r2, [r4, #28]
	mov	r1, #153
	str	r2, [r4, #0]
	strb	r0, [r4, #18]
	b	.L175
.L182:
	mov	r1, #2	@ movhi
	mov	r2, #1
	mov	ip, #180	@ movhi
	strh	r1, [r4, #12]	@ movhi
	mov	r0, #127
	strh	ip, [r4, #10]	@ movhi
	str	r2, [r4, #28]
	mov	r1, #180
	str	r2, [r4, #0]
	strb	r0, [r4, #18]
	b	.L175
	UNWIND(.fnend)
	.size	Gfx_GetLTICTIInfo, .-Gfx_GetLTICTIInfo
	.align	2
	.global	Video_GetLTICTIInfo
	.type	Video_GetLTICTIInfo, %function
Video_GetLTICTIInfo:
	UNWIND(.fnstart)
.LFB22:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r6, [r0, #28]
	mov	r5, r0
	ldr	r3, [r0, #24]
	mov	r4, r1
	cmp	r6, #720
	ldr	r0, [r0, #32]
	ldr	sl, [r5, #36]
	ldrgeh	r8, [r1, #48]
	ldrlth	r8, [r1, #46]
	cmp	r2, #1
	beq	.L209
	mov	r1, r3
	mov	r0, r0, asl #12
	cmp	r3, r6
	movlt	r9, r3
	movge	r9, r6
	bl	__aeabi_idiv
	mov	r1, r6
	mov	r7, r0
	mov	r0, sl, asl #12
	bl	__aeabi_idiv
	cmp	r0, r7
	movge	r2, r0
	movlt	r2, r7
	cmp	r0, r7
	movlt	r7, r0
	movge	r7, r7
	movw	r0, #1079
	cmp	r9, r0
	ble	.L189
	ldr	r3, [r5, #44]
	cmp	r3, #1
	beq	.L210
	cmp	r3, #0
	bne	.L191
	ldr	r9, [r5, #52]
	cmp	r2, #4096
	cmpeq	r9, #0
	bne	.L191
	cmp	r7, #4096
	beq	.L192
.L191:
	movw	lr, #2729
	cmp	r7, lr
	ble	.L196
	ldr	r0, [r5, #60]
	mov	r1, #3	@ movhi
	mov	r6, #2	@ movhi
	mov	r7, #256	@ movhi
	cmp	r0, #0
	mov	r3, #127
	strh	r6, [r4, #12]	@ movhi
	movne	r0, #153
	moveq	r0, #180
	strh	r1, [r4, #16]	@ movhi
	strh	r1, [r4, #14]	@ movhi
	strh	r7, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strb	r3, [r4, #18]
.L188:
	sxth	r8, r8
	ldrh	r9, [r4, #16]
	cmp	r8, #30
	movge	r8, #30
	ldrh	r6, [r4, #14]
	bic	r7, r8, r8, asr #31
	ldrsh	r2, [r4, #36]
	movw	r3, #:lower16:-2004318071
	movt	r3, #:upper16:-2004318071
	mul	r0, r7, r0
	mul	r1, r9, r7
	mul	r8, r6, r7
	mul	r2, r2, r7
	mov	r7, r0, asr #31
	smull	r9, sl, r3, r0
	mov	r6, r1, asr #31
	smull	ip, r5, r3, r2
	add	r0, sl, r0
	smull	r9, ip, r3, r1
	add	r5, r5, r2
	smull	sl, r3, r3, r8
	add	r1, ip, r1
	mov	ip, r8, asr #31
	mov	r2, r2, asr #31
	add	r8, r3, r8
	rsb	r0, r7, r0, asr #3
	rsb	r3, r6, r1, asr #3
	rsb	r9, r2, r5, asr #3
	rsb	r8, ip, r8, asr #3
	strh	r9, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r8, [r4, #14]	@ movhi
	ldmfd	sp, {r3, r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L189:
	cmp	r9, #720
	bge	.L211
	cmp	r9, #480
	bge	.L212
.L200:
	ldr	r0, [r5, #60]
	mov	r2, #6	@ movhi
	mov	sl, #4	@ movhi
	mov	r9, #256	@ movhi
	cmp	r0, #0
	mov	r6, #127
	strh	sl, [r4, #12]	@ movhi
	movne	r0, #128
	moveq	r0, #153
	strh	r2, [r4, #16]	@ movhi
	strh	r2, [r4, #14]	@ movhi
	strh	r9, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strb	r6, [r4, #18]
	b	.L188
.L211:
	ldr	r3, [r5, #44]
.L196:
	cmp	r3, #1
	bne	.L200
.L193:
	cmp	r2, #4096
	movlt	r3, #0
	movge	r3, #1
	cmp	r7, #3072
	cmpge	r2, #4096
	bge	.L213
.L201:
	cmp	r7, #3840
	movlt	ip, #0
	andge	ip, r3, #1
	cmp	ip, #0
	beq	.L200
	ldr	r0, [r5, #60]
	mov	r7, #6	@ movhi
	mov	r1, #4	@ movhi
	mov	r3, #256	@ movhi
	cmp	r0, #0
	mov	lr, #127
	strh	r1, [r4, #12]	@ movhi
	movne	r0, #128
	moveq	r0, #153
	strh	r7, [r4, #16]	@ movhi
	strh	r7, [r4, #14]	@ movhi
	strh	r3, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strb	lr, [r4, #18]
	b	.L188
.L210:
	ldr	r1, [r5, #52]
	cmp	r2, #4096
	cmpge	r1, #1
	bne	.L191
	movw	r6, #2729
	cmp	r7, r6
	ble	.L193
.L192:
	ldr	r0, [r5, #60]
	mov	ip, #2	@ movhi
	mov	r5, #4	@ movhi
	mov	sl, #256	@ movhi
	cmp	r0, #0
	mov	r2, #127
	strh	ip, [r4, #12]	@ movhi
	movne	r0, #128
	moveq	r0, #153
	strh	r5, [r4, #16]	@ movhi
	strh	r5, [r4, #14]	@ movhi
	strh	sl, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strb	r2, [r4, #18]
	b	.L188
.L209:
	mov	r3, #0
	ldrsh	r0, [r1, #10]
	str	r3, [r1, #28]
	str	r3, [r1, #0]
	b	.L188
.L213:
	ldr	r0, [r5, #60]
	mov	sl, #4	@ movhi
	mov	r5, #2	@ movhi
	mov	r2, #256	@ movhi
	cmp	r0, #0
	mov	r9, #127
	strh	r5, [r4, #12]	@ movhi
	movne	r0, #153
	moveq	r0, #180
	strh	sl, [r4, #16]	@ movhi
	strh	sl, [r4, #14]	@ movhi
	strh	r2, [r4, #36]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strb	r9, [r4, #18]
	b	.L188
.L212:
	ldr	r0, [r5, #44]
	cmp	r0, #1
	bne	.L200
	cmp	r2, #4096
	movlt	r3, #0
	movge	r3, #1
	b	.L201
	UNWIND(.fnend)
	.size	Video_GetLTICTIInfo, .-Video_GetLTICTIInfo
	.align	2
	.global	GetScalerInfo
	.type	GetScalerInfo, %function
GetScalerInfo:
	UNWIND(.fnstart)
.LFB3:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #124)
	sub	sp, sp, #124
	mov	r4, r1
	str	r0, [fp, #-152]
	str	r2, [fp, #-160]
	mov	r1, #0
	mov	r2, #100
	sub	r0, fp, #144
	mov	sl, r3
	ldr	r9, [r4, #76]
	bl	memset
	ldr	r8, [r4, #40]
	mov	r5, #1
	mov	r1, #0
	str	r5, [fp, #-136]
	cmp	r8, #3
	str	r5, [fp, #-132]
	str	r5, [fp, #-140]
	str	r5, [fp, #-144]
	streq	r1, [fp, #-136]
	streq	r1, [fp, #-132]
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #32]
	mov	r0, r2, asl #20
	bl	__aeabi_idiv
	mov	r5, r0
	ldr	r0, [r4, #52]
	str	r5, [fp, #-84]
	ldr	r3, [r4, #44]
	cmp	r0, #1
	ldr	r1, [r4, #36]
	str	r3, [fp, #-156]
	addne	r1, r1, r1, lsr #31
	ldr	r0, [r4, #28]
	movne	r1, r1, asr #1
	cmp	r3, #0
	moveq	r0, r0, asl #11
	movne	r0, r0, asl #12
	bl	__aeabi_idiv
	cmp	r8, #0
	str	r0, [fp, #-80]
	mov	r6, r0
	ldr	r7, [fp, #-80]
	movne	r6, r0, asr #1
	cmp	r5, #1048576
	moveq	r3, #0
	movne	r3, #1
	cmp	r7, #4096
	str	r3, [fp, #-116]
	str	r3, [fp, #-124]
	beq	.L244
.L223:
	mov	ip, #1
	str	ip, [fp, #-128]
.L224:
	cmp	r6, #4096
	beq	.L245
.L225:
	mov	r3, #1
	str	r3, [fp, #-120]
.L226:
	ldr	r1, [fp, #-84]
	cmp	sl, #2
	mov	r0, r9
	mov	r5, #0
	moveq	r3, #0
	movne	r3, #1
	mov	r1, r1, asr #8
	str	r3, [fp, #-88]
	str	r5, [fp, #-108]
	str	r5, [fp, #-112]
	str	r5, [fp, #-100]
	str	r5, [fp, #-104]
	bl	GetHfirCoef
	mov	r1, r7
	ldr	r2, [fp, #-160]
	mov	r3, sl
	str	r0, [fp, #-60]
	mov	r0, r9
	bl	GetVfirCoef
	mov	r1, r4
	str	r5, [fp, #-76]
	str	r0, [fp, #-56]
	mov	r0, r7
	bl	GetVerticalScalerOffset
	cmp	r8, #1
	movne	r7, r5
	str	r0, [fp, #-68]
	beq	.L246
.L239:
	mov	r1, r4
	mov	r0, r6
	str	r5, [fp, #-72]
	bl	GetVerticalScalerOffset
	sub	r1, fp, #144
	mov	r2, #100
	mov	ip, #0
	str	ip, [fp, #-52]
	add	r7, r0, r7
	ldr	r0, [fp, #-152]
	str	r7, [fp, #-64]
	bl	memcpy
	ldr	r0, [fp, #-152]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L246:
	ldr	r5, [r4, #72]
	movw	r0, #:lower16:-524288
	ldr	r3, [fp, #-156]
	movt	r0, #:upper16:-524288
	cmp	r5, #0
	movne	r5, r0
	moveq	r5, #0
	cmp	r3, #0
	bne	.L242
	ldr	r2, [r4, #48]
	cmp	r2, #0
	movwne	r7, #:lower16:-1536
	movtne	r7, #:upper16:-1536
	bne	.L239
.L242:
	movw	r7, #:lower16:-512
	movt	r7, #:upper16:-512
	b	.L239
.L245:
	mov	r0, r6
	mov	r1, r4
	bl	GetVerticalScalerOffset
	cmp	r0, #0
	streq	r0, [fp, #-120]
	beq	.L226
	b	.L225
.L244:
	mov	r0, r7
	mov	r1, r4
	bl	GetVerticalScalerOffset
	cmp	r0, #0
	streq	r0, [fp, #-128]
	beq	.L224
	b	.L223
	UNWIND(.fnend)
	.size	GetScalerInfo, .-GetScalerInfo
	.align	2
	.global	GetWndZmeInfo_HL8C4_VL4C4OR2
	.type	GetWndZmeInfo_HL8C4_VL4C4OR2, %function
GetWndZmeInfo_HL8C4_VL4C4OR2:
	UNWIND(.fnstart)
.LFB6:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #264)
	sub	sp, sp, #264
	sub	r5, fp, #184
	mov	r4, r1
	mov	r7, r0
	mov	r1, #0
	mov	r0, r5
	mov	r2, #156
	bl	memset
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L248
	ldr	r3, [r4, #64]
	cmp	r3, #0
	movne	r3, #3
	bne	.L249
.L248:
	mov	r3, #2
.L249:
	sub	r6, fp, #292
	mov	r1, r4
	mov	r2, #2
	mov	r0, r6
	bl	GetScalerInfo
	mov	r1, r6
	mov	r2, #100
	sub	r0, fp, #128
	bl	memcpy
	mov	r0, r7
	mov	r1, r5
	mov	r2, #156
	bl	memcpy
	mov	r0, r7
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetWndZmeInfo_HL8C4_VL4C4OR2, .-GetWndZmeInfo_HL8C4_VL4C4OR2
	.align	2
	.global	GetWndZmeInfo_HL8C4_VL4C4
	.type	GetWndZmeInfo_HL8C4_VL4C4, %function
GetWndZmeInfo_HL8C4_VL4C4:
	UNWIND(.fnstart)
.LFB5:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #268)
	sub	sp, sp, #268
	sub	r5, fp, #192
	mov	r4, #156
	mov	r7, r0
	mov	r8, r1
	mov	r2, r4
	sub	r6, fp, #300
	mov	r1, #0
	mov	r0, r5
	bl	memset
	mov	r2, #2
	mov	r3, r2
	mov	r1, r8
	mov	r0, r6
	bl	GetScalerInfo
	mov	r1, r6
	sub	r0, fp, #136
	mov	r2, #100
	bl	memcpy
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	memcpy
	mov	r0, r7
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetWndZmeInfo_HL8C4_VL4C4, .-GetWndZmeInfo_HL8C4_VL4C4
	.align	2
	.global	GetWndZmeInfo_HL8C4_VL6C4
	.type	GetWndZmeInfo_HL8C4_VL6C4, %function
GetWndZmeInfo_HL8C4_VL6C4:
	UNWIND(.fnstart)
.LFB4:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #268)
	sub	sp, sp, #268
	sub	r5, fp, #192
	mov	r4, #156
	sub	r6, fp, #300
	mov	r7, r0
	mov	r8, r1
	mov	r2, r4
	mov	r1, #0
	mov	r0, r5
	bl	memset
	mov	r3, #2
	mov	r1, r8
	mov	r0, r6
	mov	r2, #1
	bl	GetScalerInfo
	mov	r1, r6
	sub	r0, fp, #136
	mov	r2, #100
	bl	memcpy
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	memcpy
	mov	r0, r7
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetWndZmeInfo_HL8C4_VL6C4, .-GetWndZmeInfo_HL8C4_VL6C4
	.global	coefficient4_1M
	.global	coefficient4_cubic
	.global	coefficient4_2M
	.global	coefficient4_3M
	.global	coefficient4_4M
	.global	coefficient4_5M
	.global	coefficient4_5_3M
	.global	coefficient2_cubic
	.global	coefficient2_5M
	.global	coefficient2_4M
	.global	coefficient2_3M
	.global	coefficient2_2M
	.global	coefficient2_1M
	.global	coefficient8_5_3M
	.global	coefficient8_cubic
	.global	coefficient8_3M
	.global	coefficient8_2M
	.global	coefficient8_1M
	.global	coefficient8_lanczos2_8tap
	.global	coefficient_lanczos2
	.global	coefficient_lanczos3
	.global	coefficient6_cubic
	.global	coefficient6_1M
	.global	coefficient6_1_5M
	.global	coefficient6_2M
	.global	coefficient6_3_5M
	.global	coefficient6_3M
	.global	coefficient6_3_25M
	.global	coefficient6_4M
	.global	coefficient6_5M
	.global	coefficient6_6M
	.global	coefficient_lanczos2_6tap
	.global	coefficient_guassian_6tap_6M
	.global	coefficient6_5_8M
	.global	coefficient6_5_6M
	.global	coefficient8_6M_a30
	.global	coefficient8_5M_a25
	.global	coefficient8_4M_a25
	.global	coefficient8_3M_a19
	.global	coefficient6_6M_a25
	.global	coefficient6_5M_a25
	.global	coefficient6_4M_a20
	.global	coefficient6_3M_a15
	.global	coefficient6_675M_a25
	.global	coefficient4_6M_a15
	.global	coefficient4_6M_a19
	.global	coefficient4_5M_a10
	.global	coefficient4_5M_a15
	.global	coefficient4_675M_a20
	.global	coefficient4_4_5M_a15
	.global	coefficient4_4M_a15
	.global	coefficient2_6M_1_3
	.global	coefficient2_5M_1_0
	.global	coefficient2_4M_0_1
	.global	s32Coeff_Bilinear
	.global	s32Coeff_guass2_6M_2_5
	.global	s32Coeff_guass2_6_75M_a0_5
	.global	s32Coeff_guass2_6M_a0_5
	.global	s32Coeff_guass2_6M_a2_0
	.global	s32Coefficient2_4M_0_1
	.global	g_pOrgZoomCoef
	.global	gfxcoefficient4_cubic
	.global	gfxcoefficient4_1M
	.global	gfxcoefficient4_2M
	.global	gfxcoefficient4_3M
	.global	gfxcoefficient4_4M
	.global	gfxcoefficient4_5M
	.global	gfxcoefficient4_5_3M
	.global	gfxcoefficient2_cubic
	.global	gfxcoefficient2_5M
	.global	gfxcoefficient2_4M
	.global	gfxcoefficient2_3M
	.global	gfxcoefficient2_2M
	.global	gfxcoefficient2_1M
	.global	gfxcoefficient8_5_3M
	.global	gfxcoefficient8_cubic
	.global	gfxcoefficient8_3M
	.global	gfxcoefficient8_2M
	.global	gfxcoefficient8_1M
	.global	gfxcoefficient4_6M_a15
	.global	gfxcoefficient4_5M_a15
	.global	gfxcoefficient4_4_5M_a15
	.global	gfxcoefficient4_3M_a13
	.global	gfxcoefficient8_lanczos2_8tap
	.global	gfxcoefficient8_lanczos3_8tap
	.global	gfxcoefficient8_6M_a30
	.global	gfxcoefficient8_5M_a25
	.global	gfxcoefficient8_4M_a25
	.global	gfxcoefficient8_3M_a19
	.global	gfxcoefficient4_lanczos2_6M_a15
	.global	gfxcoefficient4_lanczos2_5M_a15
	.global	gfxcoefficient4_lanczos2_4_5M_a15
	.global	gfxcoefficient4_lanczos2_4M_a15
	.global	gfxcoefficient4_lanczos2_3M_a13
	.global	gfxcoefficient4_lanczos_4tap
	.global	gfxcoefficient2h_guass2_6M_2_5
	.global	gfxcoefficient2v_guass2_6M_2_5
	.global	gfxcoefficient2h_guass2_6_75M_a0_5
	.global	gfxcoefficient2v_guass2_6_75M_a0_5
	.global	gfxcoefficient2h_guass2_6M_a0_5
	.global	gfxcoefficient2v_guass2_6M_a0_5
	.global	gfxcoefficient2h_guass2_6M_a2_0
	.global	gfxcoefficient2v_guass2_6M_a2_0
	.global	gfxcoefficient2h_4M_0_1
	.global	gfxcoefficient2v_4M_0_1
	.global	g_pGfxOrgZoomCoef_sharp
	.global	g_pGfxOrgZoomCoef
	.global	g_pSDGfxOrgZoomCoef
	.global	coefficient8t8p_cubic
	.global	coefficient8t8p_3M
	.global	coefficient8t8p_lanczos2
	.global	SIN_TABLE
	.global	COS_TABLE
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CSWTCH.41, %object
	.size	CSWTCH.41, 148
CSWTCH.41:
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	3
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	4
	.type	CSWTCH.46, %object
	.size	CSWTCH.46, 20
CSWTCH.46:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.type	CSWTCH.49, %object
	.size	CSWTCH.49, 8
CSWTCH.49:
	.word	0
	.word	1
	.type	CSWTCH.52, %object
	.size	CSWTCH.52, 20
CSWTCH.52:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.type	CSWTCH.55, %object
	.size	CSWTCH.55, 8
CSWTCH.55:
	.word	0
	.word	1
	.type	COS_TABLE, %object
	.size	COS_TABLE, 244
COS_TABLE:
	.word	866
	.word	875
	.word	883
	.word	891
	.word	899
	.word	906
	.word	914
	.word	921
	.word	927
	.word	934
	.word	940
	.word	946
	.word	951
	.word	956
	.word	961
	.word	966
	.word	970
	.word	974
	.word	978
	.word	982
	.word	985
	.word	988
	.word	990
	.word	993
	.word	995
	.word	996
	.word	998
	.word	999
	.word	999
	.word	1000
	.word	1000
	.word	1000
	.word	999
	.word	999
	.word	998
	.word	996
	.word	995
	.word	993
	.word	990
	.word	988
	.word	985
	.word	982
	.word	978
	.word	974
	.word	970
	.word	966
	.word	961
	.word	956
	.word	951
	.word	946
	.word	940
	.word	934
	.word	927
	.word	921
	.word	914
	.word	906
	.word	899
	.word	891
	.word	883
	.word	875
	.word	866
	.type	SIN_TABLE, %object
	.size	SIN_TABLE, 244
SIN_TABLE:
	.word	-500
	.word	-485
	.word	-469
	.word	-454
	.word	-438
	.word	-422
	.word	-407
	.word	-391
	.word	-374
	.word	-358
	.word	-342
	.word	-325
	.word	-309
	.word	-292
	.word	-276
	.word	-259
	.word	-242
	.word	-225
	.word	-208
	.word	-191
	.word	-174
	.word	-156
	.word	-139
	.word	-122
	.word	-104
	.word	-87
	.word	-70
	.word	-52
	.word	-35
	.word	-17
	.word	0
	.word	17
	.word	35
	.word	52
	.word	70
	.word	87
	.word	104
	.word	122
	.word	139
	.word	156
	.word	174
	.word	191
	.word	208
	.word	225
	.word	242
	.word	259
	.word	276
	.word	292
	.word	309
	.word	325
	.word	342
	.word	358
	.word	374
	.word	391
	.word	407
	.word	422
	.word	438
	.word	454
	.word	469
	.word	485
	.word	500
	.type	coefficient6_cubic, %object
	.size	coefficient6_cubic, 432
coefficient6_cubic:
	.word	0
	.word	0
	.word	511
	.word	0
	.word	0
	.word	0
	.word	3
	.word	-12
	.word	511
	.word	13
	.word	-3
	.word	0
	.word	6
	.word	-22
	.word	507
	.word	28
	.word	-7
	.word	0
	.word	8
	.word	-32
	.word	502
	.word	44
	.word	-11
	.word	1
	.word	10
	.word	-40
	.word	495
	.word	61
	.word	-15
	.word	1
	.word	11
	.word	-47
	.word	486
	.word	79
	.word	-19
	.word	2
	.word	12
	.word	-53
	.word	476
	.word	98
	.word	-24
	.word	3
	.word	13
	.word	-58
	.word	464
	.word	117
	.word	-28
	.word	4
	.word	14
	.word	-62
	.word	451
	.word	137
	.word	-33
	.word	5
	.word	15
	.word	-65
	.word	437
	.word	157
	.word	-38
	.word	6
	.word	15
	.word	-67
	.word	420
	.word	179
	.word	-42
	.word	7
	.word	15
	.word	-68
	.word	404
	.word	200
	.word	-46
	.word	7
	.word	14
	.word	-68
	.word	386
	.word	221
	.word	-50
	.word	9
	.word	14
	.word	-68
	.word	367
	.word	243
	.word	-54
	.word	10
	.word	14
	.word	-67
	.word	348
	.word	264
	.word	-58
	.word	11
	.word	13
	.word	-66
	.word	328
	.word	286
	.word	-61
	.word	12
	.word	13
	.word	-63
	.word	306
	.word	306
	.word	-63
	.word	13
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_1M, %object
	.size	coefficient6_1M, 432
coefficient6_1M:
	.word	89
	.word	98
	.word	104
	.word	98
	.word	89
	.word	36
	.word	88
	.word	97
	.word	103
	.word	98
	.word	89
	.word	38
	.word	87
	.word	96
	.word	103
	.word	97
	.word	89
	.word	40
	.word	86
	.word	96
	.word	102
	.word	97
	.word	89
	.word	42
	.word	84
	.word	95
	.word	102
	.word	97
	.word	89
	.word	44
	.word	83
	.word	94
	.word	102
	.word	97
	.word	89
	.word	47
	.word	82
	.word	94
	.word	101
	.word	97
	.word	89
	.word	49
	.word	81
	.word	93
	.word	101
	.word	97
	.word	89
	.word	51
	.word	80
	.word	93
	.word	100
	.word	97
	.word	89
	.word	53
	.word	78
	.word	92
	.word	100
	.word	97
	.word	89
	.word	55
	.word	77
	.word	92
	.word	100
	.word	97
	.word	89
	.word	57
	.word	76
	.word	91
	.word	99
	.word	97
	.word	89
	.word	59
	.word	74
	.word	91
	.word	99
	.word	98
	.word	89
	.word	61
	.word	73
	.word	91
	.word	99
	.word	98
	.word	90
	.word	62
	.word	71
	.word	91
	.word	99
	.word	98
	.word	90
	.word	64
	.word	69
	.word	90
	.word	98
	.word	98
	.word	90
	.word	66
	.word	68
	.word	90
	.word	98
	.word	98
	.word	90
	.word	68
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_1_5M, %object
	.size	coefficient6_1_5M, 432
coefficient6_1_5M:
	.word	80
	.word	105
	.word	116
	.word	105
	.word	80
	.word	26
	.word	79
	.word	104
	.word	116
	.word	105
	.word	81
	.word	28
	.word	77
	.word	103
	.word	115
	.word	106
	.word	81
	.word	29
	.word	76
	.word	102
	.word	115
	.word	106
	.word	82
	.word	31
	.word	74
	.word	101
	.word	115
	.word	106
	.word	83
	.word	33
	.word	73
	.word	100
	.word	114
	.word	106
	.word	84
	.word	35
	.word	71
	.word	99
	.word	114
	.word	107
	.word	84
	.word	37
	.word	70
	.word	98
	.word	113
	.word	107
	.word	85
	.word	39
	.word	68
	.word	98
	.word	113
	.word	107
	.word	86
	.word	40
	.word	67
	.word	97
	.word	112
	.word	108
	.word	86
	.word	42
	.word	65
	.word	96
	.word	112
	.word	108
	.word	87
	.word	44
	.word	63
	.word	95
	.word	112
	.word	108
	.word	88
	.word	46
	.word	62
	.word	94
	.word	111
	.word	108
	.word	88
	.word	48
	.word	60
	.word	93
	.word	111
	.word	109
	.word	89
	.word	50
	.word	58
	.word	93
	.word	111
	.word	109
	.word	90
	.word	51
	.word	57
	.word	92
	.word	110
	.word	110
	.word	90
	.word	53
	.word	55
	.word	91
	.word	110
	.word	110
	.word	91
	.word	55
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_2M, %object
	.size	coefficient6_2M, 432
coefficient6_2M:
	.word	66
	.word	115
	.word	137
	.word	116
	.word	66
	.word	12
	.word	64
	.word	114
	.word	136
	.word	116
	.word	68
	.word	14
	.word	63
	.word	113
	.word	135
	.word	117
	.word	70
	.word	14
	.word	61
	.word	111
	.word	135
	.word	118
	.word	71
	.word	16
	.word	59
	.word	110
	.word	134
	.word	119
	.word	73
	.word	17
	.word	57
	.word	108
	.word	134
	.word	120
	.word	74
	.word	19
	.word	55
	.word	107
	.word	133
	.word	121
	.word	76
	.word	20
	.word	53
	.word	105
	.word	133
	.word	121
	.word	78
	.word	22
	.word	51
	.word	104
	.word	133
	.word	122
	.word	79
	.word	23
	.word	49
	.word	102
	.word	132
	.word	123
	.word	81
	.word	25
	.word	47
	.word	101
	.word	132
	.word	124
	.word	82
	.word	26
	.word	45
	.word	99
	.word	131
	.word	125
	.word	84
	.word	28
	.word	44
	.word	98
	.word	130
	.word	125
	.word	85
	.word	30
	.word	42
	.word	96
	.word	130
	.word	126
	.word	87
	.word	31
	.word	40
	.word	95
	.word	129
	.word	127
	.word	89
	.word	32
	.word	38
	.word	93
	.word	129
	.word	127
	.word	90
	.word	35
	.word	36
	.word	92
	.word	128
	.word	128
	.word	92
	.word	36
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_3_5M, %object
	.size	coefficient6_3_5M, 432
coefficient6_3_5M:
	.word	-11
	.word	154
	.word	253
	.word	154
	.word	-11
	.word	-28
	.word	-14
	.word	149
	.word	254
	.word	160
	.word	-7
	.word	-29
	.word	-17
	.word	144
	.word	255
	.word	165
	.word	-3
	.word	-31
	.word	-20
	.word	139
	.word	255
	.word	171
	.word	1
	.word	-33
	.word	-23
	.word	133
	.word	255
	.word	177
	.word	5
	.word	-34
	.word	-26
	.word	128
	.word	254
	.word	182
	.word	9
	.word	-35
	.word	-28
	.word	122
	.word	254
	.word	188
	.word	13
	.word	-37
	.word	-31
	.word	117
	.word	253
	.word	193
	.word	18
	.word	-38
	.word	-33
	.word	111
	.word	252
	.word	198
	.word	23
	.word	-39
	.word	-35
	.word	106
	.word	250
	.word	203
	.word	28
	.word	-40
	.word	-36
	.word	100
	.word	248
	.word	208
	.word	33
	.word	-41
	.word	-38
	.word	94
	.word	246
	.word	212
	.word	38
	.word	-41
	.word	-39
	.word	88
	.word	244
	.word	217
	.word	43
	.word	-42
	.word	-40
	.word	83
	.word	242
	.word	221
	.word	49
	.word	-42
	.word	-41
	.word	77
	.word	239
	.word	225
	.word	54
	.word	-42
	.word	-42
	.word	71
	.word	236
	.word	229
	.word	60
	.word	-42
	.word	-42
	.word	66
	.word	232
	.word	232
	.word	66
	.word	-42
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_3M, %object
	.size	coefficient6_3M, 432
coefficient6_3M:
	.word	21
	.word	142
	.word	204
	.word	142
	.word	21
	.word	-18
	.word	18
	.word	139
	.word	204
	.word	146
	.word	24
	.word	-18
	.word	15
	.word	136
	.word	204
	.word	149
	.word	28
	.word	-19
	.word	12
	.word	132
	.word	204
	.word	153
	.word	31
	.word	-19
	.word	9
	.word	129
	.word	204
	.word	156
	.word	35
	.word	-20
	.word	6
	.word	125
	.word	203
	.word	160
	.word	38
	.word	-20
	.word	3
	.word	121
	.word	203
	.word	163
	.word	42
	.word	-20
	.word	1
	.word	118
	.word	202
	.word	166
	.word	46
	.word	-20
	.word	-1
	.word	114
	.word	201
	.word	169
	.word	50
	.word	-20
	.word	-4
	.word	110
	.word	200
	.word	172
	.word	54
	.word	-20
	.word	-6
	.word	106
	.word	199
	.word	175
	.word	58
	.word	-20
	.word	-8
	.word	102
	.word	198
	.word	178
	.word	62
	.word	-19
	.word	-10
	.word	98
	.word	196
	.word	180
	.word	66
	.word	-19
	.word	-11
	.word	94
	.word	195
	.word	183
	.word	70
	.word	-18
	.word	-13
	.word	90
	.word	193
	.word	185
	.word	74
	.word	-17
	.word	-14
	.word	86
	.word	191
	.word	187
	.word	78
	.word	-16
	.word	-15
	.word	82
	.word	189
	.word	189
	.word	82
	.word	-15
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_3_25M, %object
	.size	coefficient6_3_25M, 432
coefficient6_3_25M:
	.word	6
	.word	149
	.word	227
	.word	149
	.word	6
	.word	-24
	.word	2
	.word	145
	.word	228
	.word	153
	.word	9
	.word	-25
	.word	-1
	.word	140
	.word	228
	.word	158
	.word	13
	.word	-26
	.word	-4
	.word	136
	.word	228
	.word	162
	.word	17
	.word	-27
	.word	-7
	.word	132
	.word	228
	.word	167
	.word	20
	.word	-28
	.word	-10
	.word	127
	.word	228
	.word	171
	.word	25
	.word	-29
	.word	-12
	.word	123
	.word	227
	.word	175
	.word	29
	.word	-29
	.word	-15
	.word	118
	.word	226
	.word	180
	.word	33
	.word	-30
	.word	-17
	.word	114
	.word	225
	.word	184
	.word	37
	.word	-31
	.word	-19
	.word	109
	.word	224
	.word	187
	.word	42
	.word	-31
	.word	-21
	.word	104
	.word	223
	.word	191
	.word	46
	.word	-31
	.word	-23
	.word	99
	.word	221
	.word	195
	.word	51
	.word	-31
	.word	-25
	.word	95
	.word	219
	.word	198
	.word	56
	.word	-31
	.word	-26
	.word	90
	.word	217
	.word	201
	.word	61
	.word	-31
	.word	-27
	.word	85
	.word	215
	.word	205
	.word	65
	.word	-31
	.word	-28
	.word	80
	.word	213
	.word	207
	.word	70
	.word	-30
	.word	-29
	.word	75
	.word	210
	.word	210
	.word	75
	.word	-29
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_4M, %object
	.size	coefficient6_4M, 432
coefficient6_4M:
	.word	-43
	.word	158
	.word	310
	.word	158
	.word	-43
	.word	-28
	.word	-46
	.word	151
	.word	311
	.word	166
	.word	-40
	.word	-30
	.word	-48
	.word	143
	.word	311
	.word	175
	.word	-37
	.word	-32
	.word	-51
	.word	136
	.word	312
	.word	183
	.word	-33
	.word	-35
	.word	-53
	.word	128
	.word	312
	.word	191
	.word	-29
	.word	-37
	.word	-55
	.word	121
	.word	311
	.word	200
	.word	-25
	.word	-40
	.word	-57
	.word	113
	.word	311
	.word	208
	.word	-21
	.word	-42
	.word	-58
	.word	106
	.word	309
	.word	216
	.word	-16
	.word	-45
	.word	-59
	.word	98
	.word	307
	.word	223
	.word	-11
	.word	-46
	.word	-60
	.word	90
	.word	305
	.word	231
	.word	-6
	.word	-48
	.word	-61
	.word	83
	.word	302
	.word	238
	.word	0
	.word	-50
	.word	-61
	.word	75
	.word	299
	.word	246
	.word	6
	.word	-53
	.word	-61
	.word	67
	.word	296
	.word	252
	.word	12
	.word	-54
	.word	-61
	.word	60
	.word	291
	.word	259
	.word	18
	.word	-55
	.word	-60
	.word	53
	.word	287
	.word	265
	.word	25
	.word	-58
	.word	-60
	.word	45
	.word	283
	.word	271
	.word	31
	.word	-58
	.word	-59
	.word	38
	.word	277
	.word	277
	.word	38
	.word	-59
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_5M, %object
	.size	coefficient6_5M, 432
coefficient6_5M:
	.word	-78
	.word	130
	.word	403
	.word	130
	.word	-78
	.word	5
	.word	-77
	.word	118
	.word	404
	.word	142
	.word	-78
	.word	3
	.word	-76
	.word	106
	.word	404
	.word	155
	.word	-78
	.word	1
	.word	-75
	.word	94
	.word	403
	.word	168
	.word	-78
	.word	0
	.word	-73
	.word	82
	.word	401
	.word	181
	.word	-78
	.word	-1
	.word	-71
	.word	71
	.word	399
	.word	195
	.word	-77
	.word	-5
	.word	-69
	.word	60
	.word	396
	.word	208
	.word	-75
	.word	-8
	.word	-66
	.word	49
	.word	392
	.word	220
	.word	-73
	.word	-10
	.word	-64
	.word	38
	.word	387
	.word	233
	.word	-71
	.word	-11
	.word	-61
	.word	28
	.word	382
	.word	246
	.word	-68
	.word	-15
	.word	-58
	.word	18
	.word	376
	.word	258
	.word	-64
	.word	-18
	.word	-55
	.word	9
	.word	369
	.word	271
	.word	-60
	.word	-22
	.word	-52
	.word	0
	.word	362
	.word	282
	.word	-56
	.word	-24
	.word	-48
	.word	-9
	.word	354
	.word	294
	.word	-51
	.word	-28
	.word	-45
	.word	-17
	.word	345
	.word	305
	.word	-45
	.word	-31
	.word	-41
	.word	-25
	.word	336
	.word	316
	.word	-39
	.word	-35
	.word	-38
	.word	-32
	.word	326
	.word	326
	.word	-32
	.word	-38
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_6M, %object
	.size	coefficient6_6M, 432
coefficient6_6M:
	.word	-58
	.word	75
	.word	443
	.word	75
	.word	-58
	.word	35
	.word	-53
	.word	61
	.word	441
	.word	89
	.word	-62
	.word	36
	.word	-48
	.word	47
	.word	439
	.word	104
	.word	-66
	.word	36
	.word	-43
	.word	34
	.word	436
	.word	119
	.word	-69
	.word	35
	.word	-38
	.word	21
	.word	432
	.word	134
	.word	-73
	.word	36
	.word	-33
	.word	10
	.word	426
	.word	149
	.word	-76
	.word	36
	.word	-28
	.word	-2
	.word	420
	.word	165
	.word	-78
	.word	35
	.word	-23
	.word	-12
	.word	413
	.word	180
	.word	-80
	.word	34
	.word	-18
	.word	-22
	.word	405
	.word	196
	.word	-82
	.word	33
	.word	-14
	.word	-31
	.word	397
	.word	211
	.word	-83
	.word	32
	.word	-9
	.word	-39
	.word	386
	.word	227
	.word	-83
	.word	30
	.word	-4
	.word	-47
	.word	376
	.word	242
	.word	-83
	.word	28
	.word	0
	.word	-54
	.word	365
	.word	257
	.word	-83
	.word	27
	.word	4
	.word	-60
	.word	353
	.word	272
	.word	-81
	.word	24
	.word	8
	.word	-65
	.word	341
	.word	286
	.word	-79
	.word	21
	.word	12
	.word	-70
	.word	328
	.word	301
	.word	-77
	.word	18
	.word	15
	.word	-74
	.word	315
	.word	315
	.word	-74
	.word	15
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient_lanczos2_6tap, %object
	.size	coefficient_lanczos2_6tap, 432
coefficient_lanczos2_6tap:
	.word	-29
	.word	116
	.word	338
	.word	116
	.word	-29
	.word	0
	.word	-28
	.word	106
	.word	338
	.word	125
	.word	-29
	.word	0
	.word	-28
	.word	97
	.word	337
	.word	135
	.word	-29
	.word	0
	.word	-27
	.word	88
	.word	336
	.word	145
	.word	-29
	.word	0
	.word	-26
	.word	80
	.word	333
	.word	154
	.word	-29
	.word	-1
	.word	-25
	.word	71
	.word	331
	.word	164
	.word	-28
	.word	-1
	.word	-24
	.word	63
	.word	327
	.word	174
	.word	-27
	.word	-1
	.word	-23
	.word	55
	.word	324
	.word	184
	.word	-26
	.word	-2
	.word	-22
	.word	48
	.word	319
	.word	194
	.word	-24
	.word	-3
	.word	-20
	.word	40
	.word	314
	.word	203
	.word	-22
	.word	-3
	.word	-19
	.word	34
	.word	309
	.word	213
	.word	-20
	.word	-4
	.word	-17
	.word	27
	.word	303
	.word	223
	.word	-18
	.word	-5
	.word	-16
	.word	21
	.word	296
	.word	232
	.word	-15
	.word	-6
	.word	-15
	.word	15
	.word	290
	.word	241
	.word	-12
	.word	-7
	.word	-13
	.word	10
	.word	282
	.word	250
	.word	-8
	.word	-8
	.word	-12
	.word	5
	.word	275
	.word	258
	.word	-4
	.word	-9
	.word	-11
	.word	0
	.word	267
	.word	267
	.word	0
	.word	-11
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient_guassian_6tap_6M, %object
	.size	coefficient_guassian_6tap_6M, 432
coefficient_guassian_6tap_6M:
	.word	-50
	.word	55
	.word	459
	.word	55
	.word	-50
	.word	42
	.word	-44
	.word	40
	.word	456
	.word	70
	.word	-56
	.word	44
	.word	-37
	.word	26
	.word	452
	.word	86
	.word	-61
	.word	46
	.word	-31
	.word	13
	.word	447
	.word	101
	.word	-66
	.word	48
	.word	-24
	.word	0
	.word	441
	.word	117
	.word	-71
	.word	49
	.word	-18
	.word	-12
	.word	434
	.word	133
	.word	-75
	.word	50
	.word	-12
	.word	-23
	.word	426
	.word	149
	.word	-79
	.word	51
	.word	-6
	.word	-33
	.word	417
	.word	165
	.word	-83
	.word	51
	.word	0
	.word	-42
	.word	407
	.word	182
	.word	-86
	.word	51
	.word	6
	.word	-51
	.word	397
	.word	198
	.word	-88
	.word	51
	.word	11
	.word	-59
	.word	386
	.word	214
	.word	-90
	.word	50
	.word	16
	.word	-65
	.word	374
	.word	230
	.word	-91
	.word	49
	.word	21
	.word	-71
	.word	361
	.word	246
	.word	-92
	.word	47
	.word	25
	.word	-77
	.word	348
	.word	261
	.word	-92
	.word	45
	.word	30
	.word	-81
	.word	335
	.word	277
	.word	-91
	.word	43
	.word	33
	.word	-85
	.word	321
	.word	292
	.word	-90
	.word	40
	.word	37
	.word	-87
	.word	307
	.word	307
	.word	-87
	.word	37
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_5_8M, %object
	.size	coefficient6_5_8M, 432
coefficient6_5_8M:
	.word	-58
	.word	75
	.word	443
	.word	75
	.word	-58
	.word	35
	.word	-53
	.word	61
	.word	441
	.word	89
	.word	-62
	.word	36
	.word	-48
	.word	47
	.word	439
	.word	104
	.word	-66
	.word	36
	.word	-43
	.word	34
	.word	436
	.word	119
	.word	-69
	.word	36
	.word	-38
	.word	21
	.word	431
	.word	134
	.word	-73
	.word	36
	.word	-33
	.word	10
	.word	426
	.word	149
	.word	-76
	.word	36
	.word	-28
	.word	-2
	.word	420
	.word	165
	.word	-78
	.word	35
	.word	-23
	.word	-12
	.word	413
	.word	180
	.word	-80
	.word	35
	.word	-18
	.word	-22
	.word	405
	.word	196
	.word	-82
	.word	34
	.word	-14
	.word	-31
	.word	396
	.word	211
	.word	-83
	.word	32
	.word	-9
	.word	-39
	.word	386
	.word	227
	.word	-83
	.word	31
	.word	-4
	.word	-47
	.word	376
	.word	242
	.word	-83
	.word	29
	.word	0
	.word	-54
	.word	365
	.word	257
	.word	-83
	.word	27
	.word	4
	.word	-60
	.word	353
	.word	272
	.word	-81
	.word	24
	.word	8
	.word	-65
	.word	341
	.word	286
	.word	-79
	.word	22
	.word	12
	.word	-70
	.word	328
	.word	301
	.word	-77
	.word	19
	.word	15
	.word	-74
	.word	314
	.word	314
	.word	-74
	.word	15
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_5_6M, %object
	.size	coefficient6_5_6M, 432
coefficient6_5_6M:
	.word	-70
	.word	97
	.word	432
	.word	97
	.word	-70
	.word	27
	.word	-67
	.word	83
	.word	431
	.word	111
	.word	-73
	.word	27
	.word	-63
	.word	70
	.word	430
	.word	125
	.word	-76
	.word	26
	.word	-59
	.word	57
	.word	428
	.word	139
	.word	-78
	.word	26
	.word	-55
	.word	44
	.word	424
	.word	154
	.word	-80
	.word	25
	.word	-51
	.word	32
	.word	420
	.word	169
	.word	-82
	.word	24
	.word	-47
	.word	21
	.word	415
	.word	183
	.word	-83
	.word	22
	.word	-43
	.word	10
	.word	409
	.word	198
	.word	-83
	.word	21
	.word	-38
	.word	-1
	.word	402
	.word	213
	.word	-83
	.word	19
	.word	-34
	.word	-11
	.word	395
	.word	228
	.word	-83
	.word	17
	.word	-29
	.word	-20
	.word	387
	.word	242
	.word	-82
	.word	14
	.word	-25
	.word	-29
	.word	377
	.word	256
	.word	-80
	.word	12
	.word	-21
	.word	-37
	.word	368
	.word	270
	.word	-78
	.word	9
	.word	-16
	.word	-44
	.word	357
	.word	284
	.word	-75
	.word	6
	.word	-12
	.word	-51
	.word	346
	.word	297
	.word	-71
	.word	3
	.word	-8
	.word	-57
	.word	335
	.word	310
	.word	-67
	.word	-1
	.word	-4
	.word	-62
	.word	323
	.word	323
	.word	-62
	.word	-4
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_6M_a30, %object
	.size	coefficient8_6M_a30, 576
coefficient8_6M_a30:
	.word	11
	.word	-35
	.word	76
	.word	412
	.word	76
	.word	-35
	.word	11
	.word	-4
	.word	11
	.word	-33
	.word	64
	.word	411
	.word	88
	.word	-38
	.word	12
	.word	-3
	.word	10
	.word	-30
	.word	52
	.word	411
	.word	101
	.word	-41
	.word	12
	.word	-3
	.word	10
	.word	-27
	.word	41
	.word	408
	.word	114
	.word	-43
	.word	12
	.word	-3
	.word	9
	.word	-24
	.word	31
	.word	404
	.word	128
	.word	-45
	.word	12
	.word	-3
	.word	8
	.word	-21
	.word	21
	.word	399
	.word	142
	.word	-47
	.word	12
	.word	-2
	.word	8
	.word	-18
	.word	12
	.word	393
	.word	156
	.word	-49
	.word	12
	.word	-2
	.word	7
	.word	-16
	.word	4
	.word	387
	.word	170
	.word	-50
	.word	12
	.word	-2
	.word	6
	.word	-13
	.word	-4
	.word	380
	.word	184
	.word	-51
	.word	12
	.word	-2
	.word	6
	.word	-10
	.word	-12
	.word	372
	.word	199
	.word	-52
	.word	11
	.word	-2
	.word	5
	.word	-8
	.word	-18
	.word	363
	.word	213
	.word	-53
	.word	11
	.word	-1
	.word	4
	.word	-6
	.word	-25
	.word	355
	.word	228
	.word	-53
	.word	10
	.word	-1
	.word	4
	.word	-3
	.word	-30
	.word	343
	.word	242
	.word	-52
	.word	9
	.word	-1
	.word	3
	.word	-1
	.word	-35
	.word	332
	.word	256
	.word	-51
	.word	8
	.word	0
	.word	2
	.word	1
	.word	-39
	.word	321
	.word	270
	.word	-50
	.word	7
	.word	0
	.word	2
	.word	3
	.word	-43
	.word	308
	.word	283
	.word	-48
	.word	6
	.word	1
	.word	1
	.word	4
	.word	-46
	.word	297
	.word	297
	.word	-46
	.word	4
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_5M_a25, %object
	.size	coefficient8_5M_a25, 576
coefficient8_5M_a25:
	.word	7
	.word	-42
	.word	109
	.word	363
	.word	109
	.word	-42
	.word	7
	.word	1
	.word	7
	.word	-41
	.word	99
	.word	363
	.word	120
	.word	-43
	.word	6
	.word	1
	.word	8
	.word	-40
	.word	89
	.word	360
	.word	131
	.word	-43
	.word	6
	.word	1
	.word	8
	.word	-39
	.word	79
	.word	359
	.word	142
	.word	-44
	.word	5
	.word	2
	.word	8
	.word	-37
	.word	69
	.word	357
	.word	152
	.word	-43
	.word	4
	.word	2
	.word	9
	.word	-36
	.word	60
	.word	353
	.word	164
	.word	-43
	.word	3
	.word	2
	.word	9
	.word	-34
	.word	51
	.word	349
	.word	175
	.word	-43
	.word	2
	.word	3
	.word	9
	.word	-32
	.word	43
	.word	344
	.word	186
	.word	-42
	.word	1
	.word	3
	.word	9
	.word	-30
	.word	34
	.word	340
	.word	197
	.word	-40
	.word	-1
	.word	3
	.word	9
	.word	-28
	.word	27
	.word	333
	.word	208
	.word	-39
	.word	-2
	.word	4
	.word	9
	.word	-26
	.word	19
	.word	327
	.word	219
	.word	-37
	.word	-3
	.word	4
	.word	8
	.word	-24
	.word	12
	.word	321
	.word	229
	.word	-34
	.word	-5
	.word	5
	.word	8
	.word	-22
	.word	6
	.word	314
	.word	240
	.word	-32
	.word	-7
	.word	5
	.word	8
	.word	-20
	.word	-1
	.word	305
	.word	250
	.word	-28
	.word	-8
	.word	6
	.word	7
	.word	-18
	.word	-6
	.word	298
	.word	260
	.word	-25
	.word	-10
	.word	6
	.word	7
	.word	-16
	.word	-12
	.word	290
	.word	270
	.word	-21
	.word	-12
	.word	6
	.word	6
	.word	-14
	.word	-16
	.word	280
	.word	280
	.word	-16
	.word	-14
	.word	6
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_4M_a25, %object
	.size	coefficient8_4M_a25, 576
coefficient8_4M_a25:
	.word	-7
	.word	-21
	.word	133
	.word	300
	.word	133
	.word	-21
	.word	-7
	.word	2
	.word	-6
	.word	-22
	.word	126
	.word	299
	.word	141
	.word	-20
	.word	-8
	.word	2
	.word	-5
	.word	-23
	.word	118
	.word	299
	.word	148
	.word	-18
	.word	-9
	.word	2
	.word	-4
	.word	-24
	.word	110
	.word	297
	.word	156
	.word	-16
	.word	-9
	.word	2
	.word	-4
	.word	-24
	.word	103
	.word	295
	.word	164
	.word	-14
	.word	-10
	.word	2
	.word	-3
	.word	-25
	.word	96
	.word	294
	.word	171
	.word	-12
	.word	-11
	.word	2
	.word	-3
	.word	-25
	.word	89
	.word	292
	.word	179
	.word	-10
	.word	-12
	.word	2
	.word	-2
	.word	-25
	.word	82
	.word	288
	.word	187
	.word	-7
	.word	-13
	.word	2
	.word	-1
	.word	-25
	.word	75
	.word	285
	.word	194
	.word	-4
	.word	-14
	.word	2
	.word	-1
	.word	-25
	.word	68
	.word	283
	.word	201
	.word	-1
	.word	-15
	.word	2
	.word	0
	.word	-25
	.word	62
	.word	277
	.word	209
	.word	3
	.word	-16
	.word	2
	.word	0
	.word	-24
	.word	56
	.word	273
	.word	216
	.word	6
	.word	-17
	.word	2
	.word	0
	.word	-24
	.word	50
	.word	270
	.word	222
	.word	10
	.word	-18
	.word	2
	.word	1
	.word	-23
	.word	44
	.word	264
	.word	229
	.word	14
	.word	-19
	.word	2
	.word	1
	.word	-23
	.word	38
	.word	259
	.word	236
	.word	19
	.word	-20
	.word	2
	.word	1
	.word	-22
	.word	33
	.word	254
	.word	242
	.word	23
	.word	-21
	.word	2
	.word	1
	.word	-21
	.word	28
	.word	248
	.word	248
	.word	28
	.word	-21
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_3M_a19, %object
	.size	coefficient8_3M_a19, 576
coefficient8_3M_a19:
	.word	-18
	.word	18
	.word	144
	.word	226
	.word	144
	.word	19
	.word	-17
	.word	-4
	.word	-17
	.word	16
	.word	139
	.word	226
	.word	148
	.word	21
	.word	-17
	.word	-4
	.word	-17
	.word	13
	.word	135
	.word	227
	.word	153
	.word	24
	.word	-18
	.word	-5
	.word	-17
	.word	11
	.word	131
	.word	226
	.word	157
	.word	27
	.word	-18
	.word	-5
	.word	-17
	.word	9
	.word	126
	.word	225
	.word	161
	.word	30
	.word	-17
	.word	-5
	.word	-16
	.word	6
	.word	122
	.word	225
	.word	165
	.word	33
	.word	-17
	.word	-6
	.word	-16
	.word	4
	.word	118
	.word	224
	.word	169
	.word	37
	.word	-17
	.word	-7
	.word	-16
	.word	2
	.word	113
	.word	224
	.word	173
	.word	40
	.word	-17
	.word	-7
	.word	-15
	.word	0
	.word	109
	.word	222
	.word	177
	.word	43
	.word	-17
	.word	-7
	.word	-15
	.word	-1
	.word	104
	.word	220
	.word	181
	.word	47
	.word	-16
	.word	-8
	.word	-14
	.word	-3
	.word	100
	.word	218
	.word	185
	.word	51
	.word	-16
	.word	-9
	.word	-14
	.word	-5
	.word	96
	.word	217
	.word	188
	.word	54
	.word	-15
	.word	-9
	.word	-14
	.word	-6
	.word	91
	.word	214
	.word	192
	.word	58
	.word	-14
	.word	-9
	.word	-13
	.word	-7
	.word	87
	.word	212
	.word	195
	.word	62
	.word	-14
	.word	-10
	.word	-13
	.word	-9
	.word	83
	.word	210
	.word	198
	.word	66
	.word	-13
	.word	-10
	.word	-12
	.word	-10
	.word	79
	.word	207
	.word	201
	.word	70
	.word	-12
	.word	-11
	.word	-12
	.word	-11
	.word	74
	.word	205
	.word	205
	.word	74
	.word	-11
	.word	-12
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_6M_a25, %object
	.size	coefficient6_6M_a25, 432
coefficient6_6M_a25:
	.word	-34
	.word	78
	.word	415
	.word	78
	.word	-34
	.word	9
	.word	-32
	.word	66
	.word	415
	.word	90
	.word	-36
	.word	9
	.word	-29
	.word	54
	.word	413
	.word	103
	.word	-38
	.word	9
	.word	-26
	.word	43
	.word	411
	.word	116
	.word	-41
	.word	9
	.word	-23
	.word	33
	.word	406
	.word	129
	.word	-42
	.word	9
	.word	-21
	.word	24
	.word	401
	.word	143
	.word	-44
	.word	9
	.word	-18
	.word	14
	.word	396
	.word	157
	.word	-46
	.word	9
	.word	-16
	.word	6
	.word	389
	.word	171
	.word	-47
	.word	9
	.word	-14
	.word	-2
	.word	382
	.word	185
	.word	-48
	.word	9
	.word	-11
	.word	-9
	.word	374
	.word	199
	.word	-49
	.word	8
	.word	-9
	.word	-16
	.word	365
	.word	213
	.word	-49
	.word	8
	.word	-7
	.word	-21
	.word	354
	.word	228
	.word	-49
	.word	7
	.word	-5
	.word	-27
	.word	345
	.word	242
	.word	-49
	.word	6
	.word	-3
	.word	-32
	.word	333
	.word	256
	.word	-48
	.word	6
	.word	-1
	.word	-36
	.word	322
	.word	269
	.word	-46
	.word	4
	.word	0
	.word	-39
	.word	309
	.word	283
	.word	-44
	.word	3
	.word	2
	.word	-42
	.word	296
	.word	296
	.word	-42
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_5M_a25, %object
	.size	coefficient6_5M_a25, 432
coefficient6_5M_a25:
	.word	-31
	.word	104
	.word	362
	.word	104
	.word	-31
	.word	4
	.word	-30
	.word	94
	.word	362
	.word	114
	.word	-32
	.word	4
	.word	-29
	.word	84
	.word	361
	.word	125
	.word	-32
	.word	3
	.word	-28
	.word	75
	.word	359
	.word	136
	.word	-33
	.word	3
	.word	-27
	.word	66
	.word	356
	.word	147
	.word	-33
	.word	3
	.word	-25
	.word	57
	.word	353
	.word	158
	.word	-33
	.word	2
	.word	-24
	.word	49
	.word	349
	.word	169
	.word	-33
	.word	2
	.word	-22
	.word	41
	.word	344
	.word	180
	.word	-32
	.word	1
	.word	-20
	.word	33
	.word	339
	.word	191
	.word	-31
	.word	0
	.word	-19
	.word	26
	.word	333
	.word	203
	.word	-30
	.word	-1
	.word	-17
	.word	19
	.word	327
	.word	214
	.word	-29
	.word	-2
	.word	-16
	.word	13
	.word	320
	.word	225
	.word	-27
	.word	-3
	.word	-14
	.word	7
	.word	312
	.word	236
	.word	-25
	.word	-4
	.word	-13
	.word	1
	.word	305
	.word	246
	.word	-22
	.word	-5
	.word	-11
	.word	-4
	.word	295
	.word	257
	.word	-19
	.word	-6
	.word	-10
	.word	-8
	.word	286
	.word	267
	.word	-16
	.word	-7
	.word	-9
	.word	-12
	.word	277
	.word	277
	.word	-12
	.word	-9
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_4M_a20, %object
	.size	coefficient6_4M_a20, 432
coefficient6_4M_a20:
	.word	-20
	.word	130
	.word	297
	.word	130
	.word	-20
	.word	-5
	.word	-21
	.word	122
	.word	298
	.word	138
	.word	-19
	.word	-6
	.word	-22
	.word	115
	.word	297
	.word	146
	.word	-17
	.word	-7
	.word	-22
	.word	108
	.word	296
	.word	153
	.word	-16
	.word	-7
	.word	-23
	.word	101
	.word	295
	.word	161
	.word	-14
	.word	-8
	.word	-23
	.word	93
	.word	294
	.word	169
	.word	-12
	.word	-9
	.word	-24
	.word	87
	.word	292
	.word	177
	.word	-10
	.word	-10
	.word	-24
	.word	80
	.word	289
	.word	185
	.word	-7
	.word	-11
	.word	-24
	.word	73
	.word	286
	.word	193
	.word	-4
	.word	-12
	.word	-23
	.word	66
	.word	283
	.word	200
	.word	-1
	.word	-13
	.word	-23
	.word	60
	.word	279
	.word	208
	.word	2
	.word	-14
	.word	-23
	.word	54
	.word	276
	.word	215
	.word	5
	.word	-15
	.word	-22
	.word	48
	.word	271
	.word	222
	.word	9
	.word	-16
	.word	-21
	.word	42
	.word	266
	.word	229
	.word	13
	.word	-17
	.word	-21
	.word	37
	.word	261
	.word	236
	.word	17
	.word	-18
	.word	-21
	.word	32
	.word	255
	.word	242
	.word	22
	.word	-18
	.word	-20
	.word	27
	.word	249
	.word	249
	.word	27
	.word	-20
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_3M_a15, %object
	.size	coefficient6_3M_a15, 432
coefficient6_3M_a15:
	.word	16
	.word	136
	.word	217
	.word	136
	.word	16
	.word	-9
	.word	13
	.word	132
	.word	217
	.word	141
	.word	18
	.word	-9
	.word	11
	.word	128
	.word	217
	.word	145
	.word	21
	.word	-10
	.word	9
	.word	124
	.word	216
	.word	149
	.word	24
	.word	-10
	.word	7
	.word	119
	.word	216
	.word	153
	.word	27
	.word	-10
	.word	5
	.word	115
	.word	216
	.word	157
	.word	30
	.word	-11
	.word	3
	.word	111
	.word	215
	.word	161
	.word	33
	.word	-11
	.word	1
	.word	107
	.word	214
	.word	165
	.word	36
	.word	-11
	.word	0
	.word	102
	.word	213
	.word	169
	.word	39
	.word	-11
	.word	-2
	.word	98
	.word	211
	.word	173
	.word	43
	.word	-11
	.word	-3
	.word	94
	.word	209
	.word	177
	.word	46
	.word	-11
	.word	-4
	.word	90
	.word	207
	.word	180
	.word	50
	.word	-11
	.word	-5
	.word	85
	.word	206
	.word	184
	.word	53
	.word	-11
	.word	-6
	.word	81
	.word	203
	.word	187
	.word	57
	.word	-10
	.word	-7
	.word	77
	.word	201
	.word	190
	.word	61
	.word	-10
	.word	-8
	.word	73
	.word	198
	.word	193
	.word	65
	.word	-9
	.word	-9
	.word	69
	.word	196
	.word	196
	.word	69
	.word	-9
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient6_675M_a25, %object
	.size	coefficient6_675M_a25, 432
coefficient6_675M_a25:
	.word	-29
	.word	56
	.word	448
	.word	56
	.word	-29
	.word	10
	.word	-25
	.word	44
	.word	445
	.word	70
	.word	-32
	.word	10
	.word	-22
	.word	32
	.word	443
	.word	83
	.word	-35
	.word	11
	.word	-19
	.word	20
	.word	440
	.word	98
	.word	-38
	.word	11
	.word	-16
	.word	10
	.word	435
	.word	112
	.word	-41
	.word	12
	.word	-13
	.word	0
	.word	429
	.word	128
	.word	-44
	.word	12
	.word	-10
	.word	-9
	.word	422
	.word	143
	.word	-47
	.word	13
	.word	-7
	.word	-17
	.word	414
	.word	159
	.word	-50
	.word	13
	.word	-4
	.word	-24
	.word	404
	.word	175
	.word	-52
	.word	13
	.word	-2
	.word	-31
	.word	395
	.word	191
	.word	-54
	.word	13
	.word	0
	.word	-37
	.word	384
	.word	208
	.word	-56
	.word	13
	.word	2
	.word	-42
	.word	372
	.word	224
	.word	-57
	.word	13
	.word	4
	.word	-46
	.word	359
	.word	240
	.word	-58
	.word	13
	.word	6
	.word	-50
	.word	346
	.word	256
	.word	-58
	.word	12
	.word	7
	.word	-53
	.word	332
	.word	272
	.word	-58
	.word	12
	.word	9
	.word	-55
	.word	318
	.word	287
	.word	-58
	.word	11
	.word	10
	.word	-57
	.word	303
	.word	303
	.word	-57
	.word	10
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_6M_a15, %object
	.size	coefficient4_6M_a15, 288
coefficient4_6M_a15:
	.word	78
	.word	392
	.word	78
	.word	-36
	.word	67
	.word	393
	.word	89
	.word	-37
	.word	56
	.word	393
	.word	102
	.word	-39
	.word	46
	.word	392
	.word	115
	.word	-41
	.word	36
	.word	391
	.word	128
	.word	-43
	.word	27
	.word	387
	.word	142
	.word	-44
	.word	18
	.word	384
	.word	155
	.word	-45
	.word	10
	.word	378
	.word	170
	.word	-46
	.word	3
	.word	372
	.word	184
	.word	-47
	.word	-5
	.word	366
	.word	198
	.word	-47
	.word	-11
	.word	357
	.word	213
	.word	-47
	.word	-17
	.word	350
	.word	226
	.word	-47
	.word	-23
	.word	340
	.word	241
	.word	-46
	.word	-28
	.word	330
	.word	255
	.word	-45
	.word	-32
	.word	319
	.word	269
	.word	-44
	.word	-36
	.word	307
	.word	282
	.word	-41
	.word	-39
	.word	295
	.word	295
	.word	-39
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_6M_a19, %object
	.size	coefficient4_6M_a19, 288
coefficient4_6M_a19:
	.word	77
	.word	386
	.word	77
	.word	-28
	.word	66
	.word	387
	.word	88
	.word	-29
	.word	56
	.word	387
	.word	100
	.word	-31
	.word	47
	.word	385
	.word	112
	.word	-32
	.word	38
	.word	383
	.word	125
	.word	-34
	.word	29
	.word	380
	.word	138
	.word	-35
	.word	21
	.word	376
	.word	151
	.word	-36
	.word	13
	.word	371
	.word	165
	.word	-37
	.word	6
	.word	365
	.word	179
	.word	-38
	.word	0
	.word	358
	.word	192
	.word	-38
	.word	-6
	.word	350
	.word	206
	.word	-38
	.word	-12
	.word	342
	.word	220
	.word	-38
	.word	-17
	.word	332
	.word	234
	.word	-37
	.word	-22
	.word	322
	.word	248
	.word	-36
	.word	-25
	.word	311
	.word	261
	.word	-35
	.word	-28
	.word	299
	.word	274
	.word	-33
	.word	-31
	.word	287
	.word	287
	.word	-31
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_5M_a10, %object
	.size	coefficient4_5M_a10, 288
coefficient4_5M_a10:
	.word	106
	.word	334
	.word	106
	.word	-34
	.word	97
	.word	334
	.word	116
	.word	-35
	.word	87
	.word	334
	.word	126
	.word	-35
	.word	78
	.word	333
	.word	136
	.word	-35
	.word	70
	.word	330
	.word	147
	.word	-35
	.word	61
	.word	329
	.word	157
	.word	-35
	.word	53
	.word	326
	.word	168
	.word	-35
	.word	45
	.word	323
	.word	178
	.word	-34
	.word	37
	.word	319
	.word	189
	.word	-33
	.word	30
	.word	314
	.word	199
	.word	-31
	.word	23
	.word	309
	.word	209
	.word	-29
	.word	17
	.word	302
	.word	220
	.word	-27
	.word	10
	.word	298
	.word	229
	.word	-25
	.word	5
	.word	290
	.word	239
	.word	-22
	.word	-1
	.word	282
	.word	249
	.word	-18
	.word	-6
	.word	275
	.word	258
	.word	-15
	.word	-10
	.word	266
	.word	266
	.word	-10
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_5M_a15, %object
	.size	coefficient4_5M_a15, 288
coefficient4_5M_a15:
	.word	103
	.word	335
	.word	103
	.word	-29
	.word	92
	.word	335
	.word	112
	.word	-27
	.word	84
	.word	335
	.word	121
	.word	-28
	.word	75
	.word	334
	.word	131
	.word	-28
	.word	67
	.word	332
	.word	141
	.word	-28
	.word	59
	.word	329
	.word	152
	.word	-28
	.word	51
	.word	326
	.word	162
	.word	-27
	.word	43
	.word	323
	.word	173
	.word	-27
	.word	36
	.word	319
	.word	183
	.word	-26
	.word	30
	.word	313
	.word	194
	.word	-25
	.word	23
	.word	308
	.word	204
	.word	-23
	.word	17
	.word	301
	.word	215
	.word	-21
	.word	12
	.word	295
	.word	225
	.word	-20
	.word	6
	.word	288
	.word	235
	.word	-17
	.word	2
	.word	280
	.word	244
	.word	-14
	.word	-3
	.word	271
	.word	254
	.word	-10
	.word	-7
	.word	263
	.word	263
	.word	-7
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_675M_a20, %object
	.size	coefficient4_675M_a20, 288
coefficient4_675M_a20:
	.word	60
	.word	417
	.word	60
	.word	-25
	.word	49
	.word	418
	.word	73
	.word	-28
	.word	39
	.word	418
	.word	85
	.word	-30
	.word	29
	.word	416
	.word	99
	.word	-32
	.word	19
	.word	414
	.word	113
	.word	-34
	.word	10
	.word	411
	.word	127
	.word	-36
	.word	2
	.word	406
	.word	142
	.word	-38
	.word	-6
	.word	400
	.word	158
	.word	-40
	.word	-12
	.word	393
	.word	173
	.word	-42
	.word	-18
	.word	384
	.word	189
	.word	-43
	.word	-24
	.word	376
	.word	205
	.word	-45
	.word	-29
	.word	364
	.word	222
	.word	-45
	.word	-33
	.word	353
	.word	238
	.word	-46
	.word	-37
	.word	341
	.word	254
	.word	-46
	.word	-40
	.word	329
	.word	269
	.word	-46
	.word	-42
	.word	314
	.word	285
	.word	-45
	.word	-44
	.word	300
	.word	300
	.word	-44
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_4_5M_a15, %object
	.size	coefficient4_4_5M_a15, 288
coefficient4_4_5M_a15:
	.word	112
	.word	307
	.word	112
	.word	-19
	.word	103
	.word	307
	.word	120
	.word	-18
	.word	95
	.word	307
	.word	128
	.word	-18
	.word	88
	.word	305
	.word	137
	.word	-18
	.word	80
	.word	303
	.word	146
	.word	-17
	.word	73
	.word	301
	.word	154
	.word	-16
	.word	66
	.word	298
	.word	163
	.word	-15
	.word	59
	.word	295
	.word	172
	.word	-14
	.word	52
	.word	291
	.word	181
	.word	-12
	.word	46
	.word	287
	.word	189
	.word	-10
	.word	40
	.word	282
	.word	198
	.word	-8
	.word	34
	.word	277
	.word	207
	.word	-6
	.word	29
	.word	271
	.word	215
	.word	-3
	.word	24
	.word	266
	.word	223
	.word	-1
	.word	19
	.word	259
	.word	231
	.word	3
	.word	14
	.word	253
	.word	239
	.word	6
	.word	10
	.word	246
	.word	246
	.word	10
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_4M_a15, %object
	.size	coefficient4_4M_a15, 288
coefficient4_4M_a15:
	.word	120
	.word	281
	.word	120
	.word	-9
	.word	113
	.word	281
	.word	127
	.word	-9
	.word	106
	.word	280
	.word	134
	.word	-8
	.word	99
	.word	279
	.word	141
	.word	-7
	.word	92
	.word	277
	.word	148
	.word	-5
	.word	85
	.word	275
	.word	156
	.word	-4
	.word	79
	.word	273
	.word	162
	.word	-2
	.word	72
	.word	270
	.word	170
	.word	0
	.word	66
	.word	267
	.word	177
	.word	2
	.word	61
	.word	263
	.word	184
	.word	4
	.word	56
	.word	259
	.word	191
	.word	6
	.word	50
	.word	255
	.word	198
	.word	9
	.word	44
	.word	251
	.word	205
	.word	12
	.word	40
	.word	246
	.word	211
	.word	15
	.word	34
	.word	241
	.word	218
	.word	19
	.word	31
	.word	235
	.word	224
	.word	22
	.word	26
	.word	230
	.word	230
	.word	26
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_6M_1_3, %object
	.size	coefficient2_6M_1_3, 288
coefficient2_6M_1_3:
	.word	0
	.word	420
	.word	92
	.word	0
	.word	0
	.word	412
	.word	100
	.word	0
	.word	0
	.word	404
	.word	108
	.word	0
	.word	0
	.word	395
	.word	117
	.word	0
	.word	0
	.word	386
	.word	126
	.word	0
	.word	0
	.word	376
	.word	136
	.word	0
	.word	0
	.word	366
	.word	146
	.word	0
	.word	0
	.word	356
	.word	156
	.word	0
	.word	0
	.word	346
	.word	166
	.word	0
	.word	0
	.word	335
	.word	177
	.word	0
	.word	0
	.word	325
	.word	187
	.word	0
	.word	0
	.word	313
	.word	199
	.word	0
	.word	0
	.word	302
	.word	210
	.word	0
	.word	0
	.word	291
	.word	221
	.word	0
	.word	0
	.word	279
	.word	233
	.word	0
	.word	0
	.word	268
	.word	244
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_5M_1_0, %object
	.size	coefficient2_5M_1_0, 288
coefficient2_5M_1_0:
	.word	0
	.word	397
	.word	115
	.word	0
	.word	0
	.word	389
	.word	123
	.word	0
	.word	0
	.word	381
	.word	131
	.word	0
	.word	0
	.word	373
	.word	139
	.word	0
	.word	0
	.word	365
	.word	147
	.word	0
	.word	0
	.word	356
	.word	156
	.word	0
	.word	0
	.word	347
	.word	165
	.word	0
	.word	0
	.word	339
	.word	173
	.word	0
	.word	0
	.word	330
	.word	182
	.word	0
	.word	0
	.word	321
	.word	191
	.word	0
	.word	0
	.word	312
	.word	200
	.word	0
	.word	0
	.word	303
	.word	209
	.word	0
	.word	0
	.word	293
	.word	219
	.word	0
	.word	0
	.word	284
	.word	228
	.word	0
	.word	0
	.word	275
	.word	237
	.word	0
	.word	0
	.word	265
	.word	247
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_4M_0_1, %object
	.size	coefficient2_4M_0_1, 288
coefficient2_4M_0_1:
	.word	0
	.word	366
	.word	146
	.word	0
	.word	0
	.word	359
	.word	153
	.word	0
	.word	0
	.word	351
	.word	161
	.word	0
	.word	0
	.word	344
	.word	168
	.word	0
	.word	0
	.word	337
	.word	175
	.word	0
	.word	0
	.word	330
	.word	182
	.word	0
	.word	0
	.word	323
	.word	189
	.word	0
	.word	0
	.word	316
	.word	196
	.word	0
	.word	0
	.word	309
	.word	203
	.word	0
	.word	0
	.word	302
	.word	210
	.word	0
	.word	0
	.word	296
	.word	216
	.word	0
	.word	0
	.word	289
	.word	223
	.word	0
	.word	0
	.word	282
	.word	230
	.word	0
	.word	0
	.word	276
	.word	236
	.word	0
	.word	0
	.word	269
	.word	243
	.word	0
	.word	0
	.word	263
	.word	249
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	s32Coeff_Bilinear, %object
	.size	s32Coeff_Bilinear, 144
s32Coeff_Bilinear:
	.word	511
	.word	0
	.word	496
	.word	16
	.word	480
	.word	32
	.word	464
	.word	48
	.word	448
	.word	64
	.word	432
	.word	80
	.word	416
	.word	96
	.word	400
	.word	112
	.word	384
	.word	128
	.word	368
	.word	144
	.word	352
	.word	160
	.word	336
	.word	176
	.word	320
	.word	192
	.word	304
	.word	208
	.word	288
	.word	224
	.word	272
	.word	240
	.word	256
	.word	256
	.word	0
	.word	0
	.type	s32Coeff_guass2_6M_2_5, %object
	.size	s32Coeff_guass2_6M_2_5, 144
s32Coeff_guass2_6M_2_5:
	.word	509
	.word	3
	.word	507
	.word	5
	.word	505
	.word	7
	.word	502
	.word	10
	.word	498
	.word	14
	.word	493
	.word	19
	.word	486
	.word	26
	.word	477
	.word	35
	.word	466
	.word	46
	.word	452
	.word	60
	.word	434
	.word	78
	.word	413
	.word	99
	.word	388
	.word	124
	.word	359
	.word	153
	.word	327
	.word	185
	.word	292
	.word	220
	.word	256
	.word	256
	.word	0
	.word	0
	.type	s32Coeff_guass2_6_75M_a0_5, %object
	.size	s32Coeff_guass2_6_75M_a0_5, 144
s32Coeff_guass2_6_75M_a0_5:
	.word	511
	.word	0
	.word	498
	.word	14
	.word	483
	.word	29
	.word	468
	.word	44
	.word	453
	.word	59
	.word	437
	.word	75
	.word	422
	.word	90
	.word	406
	.word	106
	.word	390
	.word	122
	.word	373
	.word	139
	.word	357
	.word	155
	.word	340
	.word	172
	.word	324
	.word	188
	.word	307
	.word	205
	.word	290
	.word	222
	.word	273
	.word	239
	.word	256
	.word	256
	.word	0
	.word	0
	.type	s32Coeff_guass2_6M_a0_5, %object
	.size	s32Coeff_guass2_6M_a0_5, 144
s32Coeff_guass2_6M_a0_5:
	.word	462
	.word	50
	.word	449
	.word	63
	.word	437
	.word	75
	.word	424
	.word	88
	.word	411
	.word	101
	.word	398
	.word	114
	.word	386
	.word	126
	.word	373
	.word	139
	.word	360
	.word	152
	.word	347
	.word	165
	.word	334
	.word	178
	.word	321
	.word	191
	.word	308
	.word	204
	.word	295
	.word	217
	.word	282
	.word	230
	.word	269
	.word	243
	.word	256
	.word	256
	.word	0
	.word	0
	.type	s32Coeff_guass2_6M_a2_0, %object
	.size	s32Coeff_guass2_6M_a2_0, 144
s32Coeff_guass2_6M_a2_0:
	.word	503
	.word	9
	.word	499
	.word	13
	.word	495
	.word	17
	.word	489
	.word	23
	.word	482
	.word	30
	.word	473
	.word	39
	.word	463
	.word	49
	.word	451
	.word	61
	.word	437
	.word	75
	.word	421
	.word	91
	.word	403
	.word	109
	.word	383
	.word	129
	.word	361
	.word	151
	.word	336
	.word	176
	.word	310
	.word	202
	.word	283
	.word	229
	.word	256
	.word	256
	.word	0
	.word	0
	.type	s32Coefficient2_4M_0_1, %object
	.size	s32Coefficient2_4M_0_1, 144
s32Coefficient2_4M_0_1:
	.word	366
	.word	146
	.word	359
	.word	153
	.word	351
	.word	161
	.word	344
	.word	168
	.word	337
	.word	175
	.word	330
	.word	182
	.word	323
	.word	189
	.word	316
	.word	196
	.word	309
	.word	203
	.word	302
	.word	210
	.word	296
	.word	216
	.word	289
	.word	223
	.word	282
	.word	230
	.word	276
	.word	236
	.word	269
	.word	243
	.word	263
	.word	249
	.word	256
	.word	256
	.word	0
	.word	0
	.data
	.align	2
	.type	coefficient4_1M, %object
	.size	coefficient4_1M, 288
coefficient4_1M:
	.word	151
	.word	150
	.word	151
	.word	60
	.word	149
	.word	149
	.word	150
	.word	64
	.word	147
	.word	148
	.word	150
	.word	67
	.word	145
	.word	147
	.word	149
	.word	71
	.word	143
	.word	146
	.word	148
	.word	75
	.word	141
	.word	145
	.word	148
	.word	78
	.word	139
	.word	144
	.word	147
	.word	82
	.word	137
	.word	144
	.word	146
	.word	85
	.word	134
	.word	143
	.word	146
	.word	89
	.word	132
	.word	143
	.word	145
	.word	92
	.word	130
	.word	143
	.word	145
	.word	94
	.word	127
	.word	143
	.word	144
	.word	98
	.word	125
	.word	142
	.word	144
	.word	101
	.word	122
	.word	142
	.word	143
	.word	105
	.word	119
	.word	142
	.word	143
	.word	108
	.word	117
	.word	142
	.word	143
	.word	110
	.word	114
	.word	142
	.word	142
	.word	114
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_cubic, %object
	.size	coefficient4_cubic, 288
coefficient4_cubic:
	.word	0
	.word	511
	.word	0
	.word	0
	.word	-19
	.word	511
	.word	21
	.word	-1
	.word	-37
	.word	509
	.word	42
	.word	-2
	.word	-51
	.word	504
	.word	64
	.word	-5
	.word	-64
	.word	499
	.word	86
	.word	-9
	.word	-74
	.word	492
	.word	108
	.word	-14
	.word	-82
	.word	484
	.word	129
	.word	-19
	.word	-89
	.word	474
	.word	152
	.word	-25
	.word	-94
	.word	463
	.word	174
	.word	-31
	.word	-97
	.word	451
	.word	196
	.word	-38
	.word	-98
	.word	438
	.word	217
	.word	-45
	.word	-98
	.word	424
	.word	238
	.word	-52
	.word	-98
	.word	409
	.word	260
	.word	-59
	.word	-95
	.word	392
	.word	280
	.word	-65
	.word	-92
	.word	376
	.word	300
	.word	-72
	.word	-88
	.word	358
	.word	320
	.word	-78
	.word	-83
	.word	339
	.word	339
	.word	-83
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_2M, %object
	.size	coefficient4_2M, 288
coefficient4_2M:
	.word	148
	.word	171
	.word	148
	.word	45
	.word	145
	.word	170
	.word	149
	.word	48
	.word	142
	.word	170
	.word	149
	.word	51
	.word	139
	.word	168
	.word	150
	.word	55
	.word	136
	.word	167
	.word	151
	.word	58
	.word	133
	.word	167
	.word	151
	.word	61
	.word	130
	.word	165
	.word	152
	.word	65
	.word	127
	.word	164
	.word	153
	.word	68
	.word	124
	.word	164
	.word	153
	.word	71
	.word	121
	.word	163
	.word	154
	.word	74
	.word	118
	.word	162
	.word	154
	.word	78
	.word	115
	.word	161
	.word	155
	.word	81
	.word	111
	.word	161
	.word	155
	.word	85
	.word	108
	.word	160
	.word	156
	.word	88
	.word	105
	.word	159
	.word	156
	.word	92
	.word	102
	.word	158
	.word	157
	.word	95
	.word	98
	.word	158
	.word	158
	.word	98
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_3M, %object
	.size	coefficient4_3M, 288
coefficient4_3M:
	.word	141
	.word	211
	.word	141
	.word	19
	.word	137
	.word	210
	.word	145
	.word	20
	.word	132
	.word	208
	.word	148
	.word	24
	.word	127
	.word	207
	.word	151
	.word	27
	.word	123
	.word	206
	.word	154
	.word	29
	.word	118
	.word	205
	.word	157
	.word	32
	.word	114
	.word	203
	.word	160
	.word	35
	.word	109
	.word	202
	.word	163
	.word	38
	.word	105
	.word	200
	.word	165
	.word	42
	.word	100
	.word	199
	.word	168
	.word	45
	.word	96
	.word	197
	.word	171
	.word	48
	.word	92
	.word	195
	.word	173
	.word	52
	.word	87
	.word	193
	.word	176
	.word	56
	.word	83
	.word	191
	.word	178
	.word	60
	.word	79
	.word	190
	.word	180
	.word	63
	.word	75
	.word	187
	.word	183
	.word	67
	.word	71
	.word	185
	.word	185
	.word	71
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_4M, %object
	.size	coefficient4_4M, 288
coefficient4_4M:
	.word	128
	.word	272
	.word	128
	.word	-16
	.word	121
	.word	271
	.word	135
	.word	-15
	.word	114
	.word	269
	.word	142
	.word	-13
	.word	107
	.word	268
	.word	148
	.word	-11
	.word	100
	.word	267
	.word	155
	.word	-10
	.word	93
	.word	264
	.word	162
	.word	-7
	.word	87
	.word	262
	.word	168
	.word	-5
	.word	80
	.word	260
	.word	175
	.word	-3
	.word	74
	.word	257
	.word	181
	.word	0
	.word	68
	.word	254
	.word	187
	.word	3
	.word	62
	.word	251
	.word	193
	.word	6
	.word	56
	.word	247
	.word	199
	.word	10
	.word	50
	.word	244
	.word	205
	.word	13
	.word	45
	.word	240
	.word	210
	.word	17
	.word	40
	.word	235
	.word	216
	.word	21
	.word	35
	.word	231
	.word	221
	.word	25
	.word	30
	.word	226
	.word	226
	.word	30
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_5M, %object
	.size	coefficient4_5M, 288
coefficient4_5M:
	.word	106
	.word	350
	.word	106
	.word	-50
	.word	96
	.word	351
	.word	117
	.word	-52
	.word	85
	.word	350
	.word	128
	.word	-51
	.word	76
	.word	349
	.word	139
	.word	-52
	.word	66
	.word	348
	.word	150
	.word	-52
	.word	57
	.word	345
	.word	162
	.word	-52
	.word	48
	.word	342
	.word	173
	.word	-51
	.word	39
	.word	339
	.word	184
	.word	-50
	.word	30
	.word	335
	.word	196
	.word	-49
	.word	22
	.word	330
	.word	207
	.word	-47
	.word	15
	.word	324
	.word	218
	.word	-45
	.word	7
	.word	318
	.word	229
	.word	-42
	.word	1
	.word	311
	.word	239
	.word	-39
	.word	-6
	.word	304
	.word	250
	.word	-36
	.word	-12
	.word	296
	.word	260
	.word	-32
	.word	-18
	.word	288
	.word	270
	.word	-28
	.word	-23
	.word	279
	.word	279
	.word	-23
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient4_5_3M, %object
	.size	coefficient4_5_3M, 288
coefficient4_5_3M:
	.word	97
	.word	376
	.word	97
	.word	-58
	.word	86
	.word	377
	.word	109
	.word	-60
	.word	75
	.word	377
	.word	121
	.word	-61
	.word	64
	.word	376
	.word	134
	.word	-62
	.word	54
	.word	374
	.word	147
	.word	-63
	.word	43
	.word	372
	.word	160
	.word	-63
	.word	33
	.word	369
	.word	173
	.word	-63
	.word	24
	.word	365
	.word	186
	.word	-63
	.word	15
	.word	360
	.word	199
	.word	-62
	.word	7
	.word	355
	.word	212
	.word	-62
	.word	-1
	.word	348
	.word	225
	.word	-60
	.word	-9
	.word	342
	.word	237
	.word	-58
	.word	-16
	.word	333
	.word	250
	.word	-55
	.word	-23
	.word	325
	.word	262
	.word	-52
	.word	-29
	.word	316
	.word	274
	.word	-49
	.word	-35
	.word	306
	.word	285
	.word	-44
	.word	-40
	.word	296
	.word	296
	.word	-40
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_cubic, %object
	.size	coefficient2_cubic, 288
coefficient2_cubic:
	.word	0
	.word	511
	.word	0
	.word	0
	.word	0
	.word	511
	.word	1
	.word	0
	.word	0
	.word	506
	.word	6
	.word	0
	.word	0
	.word	499
	.word	13
	.word	0
	.word	0
	.word	490
	.word	22
	.word	0
	.word	0
	.word	478
	.word	34
	.word	0
	.word	0
	.word	465
	.word	47
	.word	0
	.word	0
	.word	449
	.word	63
	.word	0
	.word	0
	.word	432
	.word	80
	.word	0
	.word	0
	.word	413
	.word	99
	.word	0
	.word	0
	.word	393
	.word	119
	.word	0
	.word	0
	.word	372
	.word	140
	.word	0
	.word	0
	.word	350
	.word	162
	.word	0
	.word	0
	.word	328
	.word	184
	.word	0
	.word	0
	.word	304
	.word	208
	.word	0
	.word	0
	.word	280
	.word	232
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_5M, %object
	.size	coefficient2_5M, 288
coefficient2_5M:
	.word	0
	.word	386
	.word	126
	.word	0
	.word	0
	.word	378
	.word	134
	.word	0
	.word	0
	.word	370
	.word	142
	.word	0
	.word	0
	.word	362
	.word	150
	.word	0
	.word	0
	.word	355
	.word	157
	.word	0
	.word	0
	.word	347
	.word	165
	.word	0
	.word	0
	.word	338
	.word	174
	.word	0
	.word	0
	.word	330
	.word	182
	.word	0
	.word	0
	.word	322
	.word	190
	.word	0
	.word	0
	.word	314
	.word	198
	.word	0
	.word	0
	.word	306
	.word	206
	.word	0
	.word	0
	.word	298
	.word	214
	.word	0
	.word	0
	.word	289
	.word	223
	.word	0
	.word	0
	.word	281
	.word	231
	.word	0
	.word	0
	.word	273
	.word	239
	.word	0
	.word	0
	.word	264
	.word	248
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_4M, %object
	.size	coefficient2_4M, 288
coefficient2_4M:
	.word	0
	.word	371
	.word	141
	.word	0
	.word	0
	.word	363
	.word	149
	.word	0
	.word	0
	.word	356
	.word	156
	.word	0
	.word	0
	.word	348
	.word	164
	.word	0
	.word	0
	.word	341
	.word	171
	.word	0
	.word	0
	.word	334
	.word	178
	.word	0
	.word	0
	.word	327
	.word	185
	.word	0
	.word	0
	.word	319
	.word	193
	.word	0
	.word	0
	.word	312
	.word	200
	.word	0
	.word	0
	.word	305
	.word	207
	.word	0
	.word	0
	.word	298
	.word	214
	.word	0
	.word	0
	.word	291
	.word	221
	.word	0
	.word	0
	.word	284
	.word	228
	.word	0
	.word	0
	.word	277
	.word	235
	.word	0
	.word	0
	.word	270
	.word	242
	.word	0
	.word	0
	.word	263
	.word	249
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_3M, %object
	.size	coefficient2_3M, 288
coefficient2_3M:
	.word	0
	.word	359
	.word	153
	.word	0
	.word	0
	.word	351
	.word	161
	.word	0
	.word	0
	.word	344
	.word	168
	.word	0
	.word	0
	.word	337
	.word	175
	.word	0
	.word	0
	.word	331
	.word	181
	.word	0
	.word	0
	.word	324
	.word	188
	.word	0
	.word	0
	.word	317
	.word	195
	.word	0
	.word	0
	.word	311
	.word	201
	.word	0
	.word	0
	.word	304
	.word	208
	.word	0
	.word	0
	.word	298
	.word	214
	.word	0
	.word	0
	.word	292
	.word	220
	.word	0
	.word	0
	.word	286
	.word	226
	.word	0
	.word	0
	.word	280
	.word	232
	.word	0
	.word	0
	.word	274
	.word	238
	.word	0
	.word	0
	.word	268
	.word	244
	.word	0
	.word	0
	.word	262
	.word	250
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_2M, %object
	.size	coefficient2_2M, 288
coefficient2_2M:
	.word	0
	.word	350
	.word	162
	.word	0
	.word	0
	.word	343
	.word	169
	.word	0
	.word	0
	.word	336
	.word	176
	.word	0
	.word	0
	.word	330
	.word	182
	.word	0
	.word	0
	.word	323
	.word	189
	.word	0
	.word	0
	.word	317
	.word	195
	.word	0
	.word	0
	.word	311
	.word	201
	.word	0
	.word	0
	.word	305
	.word	207
	.word	0
	.word	0
	.word	299
	.word	213
	.word	0
	.word	0
	.word	293
	.word	219
	.word	0
	.word	0
	.word	288
	.word	224
	.word	0
	.word	0
	.word	282
	.word	230
	.word	0
	.word	0
	.word	277
	.word	235
	.word	0
	.word	0
	.word	272
	.word	240
	.word	0
	.word	0
	.word	266
	.word	246
	.word	0
	.word	0
	.word	261
	.word	251
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient2_1M, %object
	.size	coefficient2_1M, 288
coefficient2_1M:
	.word	0
	.word	345
	.word	167
	.word	0
	.word	0
	.word	338
	.word	174
	.word	0
	.word	0
	.word	331
	.word	181
	.word	0
	.word	0
	.word	325
	.word	187
	.word	0
	.word	0
	.word	319
	.word	193
	.word	0
	.word	0
	.word	313
	.word	199
	.word	0
	.word	0
	.word	307
	.word	205
	.word	0
	.word	0
	.word	301
	.word	211
	.word	0
	.word	0
	.word	296
	.word	216
	.word	0
	.word	0
	.word	291
	.word	221
	.word	0
	.word	0
	.word	285
	.word	227
	.word	0
	.word	0
	.word	280
	.word	232
	.word	0
	.word	0
	.word	275
	.word	237
	.word	0
	.word	0
	.word	270
	.word	242
	.word	0
	.word	0
	.word	266
	.word	246
	.word	0
	.word	0
	.word	261
	.word	251
	.word	0
	.word	0
	.word	256
	.word	256
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_5_3M, %object
	.size	coefficient8_5_3M, 576
coefficient8_5_3M:
	.word	35
	.word	-70
	.word	102
	.word	373
	.word	102
	.word	-70
	.word	35
	.word	5
	.word	36
	.word	-68
	.word	90
	.word	373
	.word	113
	.word	-72
	.word	34
	.word	6
	.word	37
	.word	-66
	.word	78
	.word	371
	.word	125
	.word	-73
	.word	32
	.word	8
	.word	38
	.word	-63
	.word	66
	.word	369
	.word	137
	.word	-74
	.word	30
	.word	9
	.word	38
	.word	-60
	.word	55
	.word	365
	.word	149
	.word	-74
	.word	28
	.word	11
	.word	38
	.word	-56
	.word	45
	.word	362
	.word	161
	.word	-75
	.word	25
	.word	12
	.word	38
	.word	-53
	.word	34
	.word	358
	.word	172
	.word	-74
	.word	23
	.word	14
	.word	38
	.word	-49
	.word	24
	.word	353
	.word	184
	.word	-73
	.word	20
	.word	15
	.word	38
	.word	-45
	.word	15
	.word	346
	.word	196
	.word	-72
	.word	17
	.word	17
	.word	37
	.word	-41
	.word	6
	.word	340
	.word	207
	.word	-70
	.word	14
	.word	19
	.word	37
	.word	-37
	.word	-3
	.word	333
	.word	219
	.word	-68
	.word	11
	.word	20
	.word	36
	.word	-33
	.word	-11
	.word	326
	.word	230
	.word	-65
	.word	7
	.word	22
	.word	35
	.word	-29
	.word	-19
	.word	318
	.word	241
	.word	-62
	.word	4
	.word	24
	.word	34
	.word	-25
	.word	-26
	.word	310
	.word	252
	.word	-58
	.word	0
	.word	25
	.word	33
	.word	-21
	.word	-32
	.word	301
	.word	262
	.word	-54
	.word	-4
	.word	27
	.word	31
	.word	-16
	.word	-39
	.word	293
	.word	273
	.word	-50
	.word	-8
	.word	28
	.word	30
	.word	-12
	.word	-44
	.word	282
	.word	282
	.word	-44
	.word	-12
	.word	30
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_cubic, %object
	.size	coefficient8_cubic, 576
coefficient8_cubic:
	.word	0
	.word	0
	.word	0
	.word	511
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	3
	.word	-12
	.word	511
	.word	14
	.word	-4
	.word	1
	.word	0
	.word	-2
	.word	6
	.word	-23
	.word	509
	.word	28
	.word	-8
	.word	2
	.word	0
	.word	-2
	.word	9
	.word	-33
	.word	503
	.word	44
	.word	-12
	.word	3
	.word	0
	.word	-3
	.word	11
	.word	-41
	.word	496
	.word	61
	.word	-16
	.word	4
	.word	0
	.word	-3
	.word	13
	.word	-48
	.word	488
	.word	79
	.word	-21
	.word	5
	.word	-1
	.word	-3
	.word	14
	.word	-54
	.word	477
	.word	98
	.word	-25
	.word	7
	.word	-2
	.word	-4
	.word	16
	.word	-59
	.word	465
	.word	118
	.word	-30
	.word	8
	.word	-2
	.word	-4
	.word	17
	.word	-63
	.word	451
	.word	138
	.word	-35
	.word	9
	.word	-1
	.word	-4
	.word	18
	.word	-66
	.word	437
	.word	158
	.word	-39
	.word	10
	.word	-2
	.word	-4
	.word	18
	.word	-68
	.word	421
	.word	180
	.word	-44
	.word	11
	.word	-2
	.word	-4
	.word	18
	.word	-69
	.word	404
	.word	201
	.word	-48
	.word	13
	.word	-3
	.word	-4
	.word	18
	.word	-70
	.word	386
	.word	222
	.word	-52
	.word	14
	.word	-2
	.word	-4
	.word	18
	.word	-70
	.word	368
	.word	244
	.word	-56
	.word	15
	.word	-3
	.word	-4
	.word	18
	.word	-69
	.word	348
	.word	265
	.word	-59
	.word	16
	.word	-3
	.word	-4
	.word	18
	.word	-67
	.word	329
	.word	286
	.word	-63
	.word	16
	.word	-3
	.word	-3
	.word	17
	.word	-65
	.word	307
	.word	307
	.word	-65
	.word	17
	.word	-3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_3M, %object
	.size	coefficient8_3M, 576
coefficient8_3M:
	.word	-46
	.word	29
	.word	165
	.word	236
	.word	165
	.word	29
	.word	-46
	.word	-20
	.word	-46
	.word	25
	.word	161
	.word	236
	.word	169
	.word	32
	.word	-45
	.word	-20
	.word	-47
	.word	21
	.word	158
	.word	236
	.word	173
	.word	37
	.word	-45
	.word	-21
	.word	-47
	.word	17
	.word	154
	.word	236
	.word	178
	.word	41
	.word	-44
	.word	-23
	.word	-47
	.word	14
	.word	150
	.word	236
	.word	182
	.word	45
	.word	-43
	.word	-25
	.word	-47
	.word	10
	.word	146
	.word	236
	.word	186
	.word	49
	.word	-42
	.word	-26
	.word	-47
	.word	7
	.word	142
	.word	236
	.word	190
	.word	53
	.word	-41
	.word	-28
	.word	-47
	.word	4
	.word	138
	.word	235
	.word	194
	.word	58
	.word	-40
	.word	-30
	.word	-47
	.word	0
	.word	134
	.word	235
	.word	197
	.word	62
	.word	-39
	.word	-30
	.word	-47
	.word	-3
	.word	130
	.word	234
	.word	201
	.word	67
	.word	-37
	.word	-33
	.word	-46
	.word	-6
	.word	125
	.word	232
	.word	204
	.word	71
	.word	-35
	.word	-33
	.word	-46
	.word	-9
	.word	121
	.word	232
	.word	207
	.word	76
	.word	-34
	.word	-35
	.word	-45
	.word	-12
	.word	116
	.word	230
	.word	211
	.word	80
	.word	-32
	.word	-36
	.word	-45
	.word	-15
	.word	112
	.word	228
	.word	214
	.word	85
	.word	-30
	.word	-37
	.word	-43
	.word	-18
	.word	108
	.word	227
	.word	216
	.word	89
	.word	-28
	.word	-39
	.word	-43
	.word	-20
	.word	103
	.word	224
	.word	219
	.word	94
	.word	-25
	.word	-40
	.word	-41
	.word	-23
	.word	98
	.word	222
	.word	222
	.word	98
	.word	-23
	.word	-41
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_2M, %object
	.size	coefficient8_2M, 576
coefficient8_2M:
	.word	14
	.word	66
	.word	113
	.word	133
	.word	113
	.word	66
	.word	14
	.word	-7
	.word	12
	.word	65
	.word	112
	.word	133
	.word	114
	.word	68
	.word	15
	.word	-7
	.word	11
	.word	63
	.word	111
	.word	132
	.word	115
	.word	70
	.word	17
	.word	-7
	.word	10
	.word	62
	.word	110
	.word	132
	.word	116
	.word	71
	.word	18
	.word	-7
	.word	8
	.word	60
	.word	108
	.word	132
	.word	118
	.word	73
	.word	20
	.word	-7
	.word	7
	.word	58
	.word	107
	.word	132
	.word	119
	.word	75
	.word	21
	.word	-7
	.word	6
	.word	56
	.word	106
	.word	132
	.word	120
	.word	76
	.word	23
	.word	-7
	.word	4
	.word	55
	.word	105
	.word	132
	.word	121
	.word	78
	.word	24
	.word	-7
	.word	4
	.word	53
	.word	103
	.word	131
	.word	122
	.word	80
	.word	26
	.word	-7
	.word	3
	.word	51
	.word	102
	.word	131
	.word	122
	.word	81
	.word	28
	.word	-6
	.word	1
	.word	50
	.word	101
	.word	131
	.word	123
	.word	83
	.word	29
	.word	-6
	.word	1
	.word	48
	.word	99
	.word	131
	.word	124
	.word	84
	.word	31
	.word	-6
	.word	0
	.word	46
	.word	98
	.word	130
	.word	125
	.word	86
	.word	33
	.word	-6
	.word	-1
	.word	45
	.word	97
	.word	129
	.word	126
	.word	88
	.word	34
	.word	-6
	.word	-2
	.word	43
	.word	95
	.word	129
	.word	127
	.word	89
	.word	36
	.word	-5
	.word	-3
	.word	41
	.word	94
	.word	128
	.word	127
	.word	91
	.word	38
	.word	-4
	.word	-3
	.word	39
	.word	92
	.word	128
	.word	128
	.word	92
	.word	39
	.word	-3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_1M, %object
	.size	coefficient8_1M, 576
coefficient8_1M:
	.word	57
	.word	68
	.word	79
	.word	83
	.word	79
	.word	68
	.word	57
	.word	21
	.word	56
	.word	68
	.word	79
	.word	82
	.word	79
	.word	69
	.word	57
	.word	22
	.word	55
	.word	68
	.word	78
	.word	82
	.word	79
	.word	69
	.word	57
	.word	24
	.word	54
	.word	67
	.word	78
	.word	82
	.word	79
	.word	69
	.word	58
	.word	25
	.word	54
	.word	66
	.word	77
	.word	82
	.word	79
	.word	69
	.word	58
	.word	27
	.word	53
	.word	66
	.word	77
	.word	81
	.word	79
	.word	70
	.word	58
	.word	28
	.word	52
	.word	66
	.word	77
	.word	81
	.word	79
	.word	70
	.word	58
	.word	29
	.word	51
	.word	65
	.word	76
	.word	81
	.word	79
	.word	70
	.word	59
	.word	31
	.word	50
	.word	65
	.word	76
	.word	81
	.word	79
	.word	70
	.word	59
	.word	32
	.word	49
	.word	64
	.word	75
	.word	81
	.word	79
	.word	71
	.word	59
	.word	34
	.word	48
	.word	63
	.word	75
	.word	81
	.word	79
	.word	71
	.word	60
	.word	35
	.word	47
	.word	63
	.word	75
	.word	81
	.word	79
	.word	71
	.word	60
	.word	36
	.word	46
	.word	63
	.word	74
	.word	81
	.word	80
	.word	71
	.word	60
	.word	37
	.word	45
	.word	62
	.word	74
	.word	80
	.word	80
	.word	72
	.word	60
	.word	39
	.word	44
	.word	62
	.word	73
	.word	80
	.word	80
	.word	72
	.word	61
	.word	40
	.word	43
	.word	62
	.word	73
	.word	80
	.word	80
	.word	72
	.word	61
	.word	41
	.word	42
	.word	61
	.word	73
	.word	80
	.word	80
	.word	73
	.word	61
	.word	42
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient8_lanczos2_8tap, %object
	.size	coefficient8_lanczos2_8tap, 576
coefficient8_lanczos2_8tap:
	.word	-16
	.word	0
	.word	145
	.word	254
	.word	145
	.word	0
	.word	-16
	.word	0
	.word	-16
	.word	-2
	.word	140
	.word	253
	.word	151
	.word	3
	.word	-17
	.word	0
	.word	-15
	.word	-5
	.word	135
	.word	253
	.word	157
	.word	5
	.word	-18
	.word	0
	.word	-14
	.word	-7
	.word	129
	.word	252
	.word	162
	.word	8
	.word	-18
	.word	0
	.word	-13
	.word	-9
	.word	123
	.word	252
	.word	167
	.word	11
	.word	-19
	.word	0
	.word	-13
	.word	-11
	.word	118
	.word	250
	.word	172
	.word	15
	.word	-19
	.word	0
	.word	-12
	.word	-12
	.word	112
	.word	250
	.word	177
	.word	18
	.word	-20
	.word	-1
	.word	-11
	.word	-14
	.word	107
	.word	247
	.word	183
	.word	21
	.word	-20
	.word	-1
	.word	-10
	.word	-15
	.word	101
	.word	245
	.word	188
	.word	25
	.word	-21
	.word	-1
	.word	-9
	.word	-16
	.word	96
	.word	243
	.word	192
	.word	29
	.word	-21
	.word	-2
	.word	-8
	.word	-18
	.word	90
	.word	242
	.word	197
	.word	33
	.word	-22
	.word	-2
	.word	-8
	.word	-19
	.word	85
	.word	239
	.word	202
	.word	37
	.word	-22
	.word	-2
	.word	-7
	.word	-19
	.word	80
	.word	236
	.word	206
	.word	41
	.word	-22
	.word	-3
	.word	-7
	.word	-20
	.word	75
	.word	233
	.word	210
	.word	46
	.word	-22
	.word	-3
	.word	-6
	.word	-21
	.word	69
	.word	230
	.word	215
	.word	50
	.word	-22
	.word	-3
	.word	-5
	.word	-21
	.word	65
	.word	226
	.word	219
	.word	55
	.word	-22
	.word	-5
	.word	-5
	.word	-21
	.word	60
	.word	222
	.word	222
	.word	60
	.word	-21
	.word	-5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient_lanczos2, %object
	.size	coefficient_lanczos2, 288
coefficient_lanczos2:
	.word	0
	.word	511
	.word	0
	.word	0
	.word	-10
	.word	511
	.word	11
	.word	0
	.word	-18
	.word	508
	.word	23
	.word	-1
	.word	-25
	.word	502
	.word	36
	.word	-1
	.word	-31
	.word	494
	.word	51
	.word	-2
	.word	-35
	.word	484
	.word	66
	.word	-3
	.word	-39
	.word	473
	.word	83
	.word	-5
	.word	-41
	.word	460
	.word	101
	.word	-8
	.word	-43
	.word	445
	.word	119
	.word	-9
	.word	-44
	.word	428
	.word	139
	.word	-11
	.word	-44
	.word	411
	.word	159
	.word	-14
	.word	-43
	.word	392
	.word	180
	.word	-17
	.word	-41
	.word	373
	.word	201
	.word	-21
	.word	-40
	.word	353
	.word	222
	.word	-23
	.word	-37
	.word	331
	.word	244
	.word	-26
	.word	-35
	.word	310
	.word	266
	.word	-29
	.word	-32
	.word	288
	.word	288
	.word	-32
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coefficient_lanczos3, %object
	.size	coefficient_lanczos3, 576
coefficient_lanczos3:
	.word	4
	.word	-22
	.word	40
	.word	468
	.word	40
	.word	-22
	.word	4
	.word	0
	.word	3
	.word	-18
	.word	26
	.word	468
	.word	54
	.word	-26
	.word	5
	.word	0
	.word	2
	.word	-14
	.word	14
	.word	466
	.word	68
	.word	-30
	.word	6
	.word	0
	.word	2
	.word	-11
	.word	2
	.word	462
	.word	84
	.word	-34
	.word	7
	.word	0
	.word	1
	.word	-7
	.word	-9
	.word	457
	.word	100
	.word	-38
	.word	8
	.word	0
	.word	1
	.word	-4
	.word	-18
	.word	450
	.word	116
	.word	-42
	.word	9
	.word	0
	.word	1
	.word	-2
	.word	-27
	.word	443
	.word	133
	.word	-46
	.word	10
	.word	0
	.word	0
	.word	2
	.word	-35
	.word	434
	.word	151
	.word	-50
	.word	10
	.word	0
	.word	0
	.word	4
	.word	-42
	.word	425
	.word	168
	.word	-54
	.word	11
	.word	0
	.word	0
	.word	6
	.word	-49
	.word	414
	.word	186
	.word	-57
	.word	12
	.word	0
	.word	0
	.word	8
	.word	-54
	.word	401
	.word	204
	.word	-60
	.word	13
	.word	0
	.word	0
	.word	10
	.word	-58
	.word	387
	.word	222
	.word	-62
	.word	13
	.word	0
	.word	0
	.word	11
	.word	-62
	.word	374
	.word	240
	.word	-65
	.word	14
	.word	0
	.word	0
	.word	12
	.word	-65
	.word	359
	.word	258
	.word	-66
	.word	14
	.word	0
	.word	0
	.word	13
	.word	-67
	.word	344
	.word	276
	.word	-68
	.word	14
	.word	0
	.word	0
	.word	14
	.word	-68
	.word	327
	.word	293
	.word	-68
	.word	14
	.word	0
	.word	0
	.word	14
	.word	-68
	.word	310
	.word	310
	.word	-68
	.word	14
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	g_pOrgZoomCoef, %object
	.size	g_pOrgZoomCoef, 252
g_pOrgZoomCoef:
	.word	coefficient_lanczos3
	.word	coefficient6_6M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_6M_1_3
	.word	coefficient_lanczos3
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_cubic
	.word	coefficient6_cubic
	.word	coefficient4_cubic
	.word	coefficient4_cubic
	.word	coefficient2_cubic
	.word	coefficient8_cubic
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_cubic
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_lanczos2_8tap
	.word	coefficient6_5M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_lanczos2_8tap
	.word	coefficient6_4M_a20
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M_1_0
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	coefficient6_3M_a15
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	coefficient6_3M_a15
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	coefficient6_3M_a15
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.type	gfxcoefficient4_cubic, %object
	.size	gfxcoefficient4_cubic, 128
gfxcoefficient4_cubic:
	.short	0
	.short	511
	.short	0
	.short	0
	.short	-37
	.short	509
	.short	42
	.short	-2
	.short	-64
	.short	499
	.short	86
	.short	-9
	.short	-82
	.short	484
	.short	129
	.short	-19
	.short	-94
	.short	463
	.short	174
	.short	-31
	.short	-98
	.short	438
	.short	217
	.short	-45
	.short	-98
	.short	409
	.short	260
	.short	-59
	.short	-92
	.short	376
	.short	300
	.short	-72
	.short	-83
	.short	339
	.short	339
	.short	-83
	.short	-72
	.short	300
	.short	376
	.short	-92
	.short	-59
	.short	260
	.short	409
	.short	-98
	.short	-45
	.short	217
	.short	438
	.short	-98
	.short	-31
	.short	174
	.short	463
	.short	-94
	.short	-19
	.short	129
	.short	484
	.short	-82
	.short	-9
	.short	86
	.short	499
	.short	-64
	.short	-2
	.short	42
	.short	509
	.short	-37
	.type	gfxcoefficient4_1M, %object
	.size	gfxcoefficient4_1M, 128
gfxcoefficient4_1M:
	.short	151
	.short	150
	.short	151
	.short	60
	.short	147
	.short	148
	.short	150
	.short	67
	.short	143
	.short	146
	.short	148
	.short	75
	.short	139
	.short	144
	.short	147
	.short	82
	.short	134
	.short	143
	.short	146
	.short	89
	.short	130
	.short	143
	.short	145
	.short	94
	.short	125
	.short	142
	.short	144
	.short	101
	.short	119
	.short	142
	.short	143
	.short	108
	.short	114
	.short	142
	.short	142
	.short	114
	.short	108
	.short	143
	.short	142
	.short	119
	.short	101
	.short	144
	.short	142
	.short	125
	.short	94
	.short	145
	.short	143
	.short	130
	.short	89
	.short	146
	.short	143
	.short	134
	.short	82
	.short	147
	.short	144
	.short	139
	.short	75
	.short	148
	.short	146
	.short	143
	.short	67
	.short	150
	.short	148
	.short	147
	.type	gfxcoefficient4_2M, %object
	.size	gfxcoefficient4_2M, 128
gfxcoefficient4_2M:
	.short	148
	.short	171
	.short	148
	.short	45
	.short	142
	.short	170
	.short	149
	.short	51
	.short	136
	.short	167
	.short	151
	.short	58
	.short	130
	.short	165
	.short	152
	.short	65
	.short	124
	.short	164
	.short	153
	.short	71
	.short	118
	.short	162
	.short	154
	.short	78
	.short	111
	.short	161
	.short	155
	.short	85
	.short	105
	.short	159
	.short	156
	.short	92
	.short	98
	.short	158
	.short	158
	.short	98
	.short	92
	.short	156
	.short	159
	.short	105
	.short	85
	.short	155
	.short	161
	.short	111
	.short	78
	.short	154
	.short	162
	.short	118
	.short	71
	.short	153
	.short	164
	.short	124
	.short	65
	.short	152
	.short	165
	.short	130
	.short	58
	.short	151
	.short	167
	.short	136
	.short	51
	.short	149
	.short	170
	.short	142
	.type	gfxcoefficient4_3M, %object
	.size	gfxcoefficient4_3M, 128
gfxcoefficient4_3M:
	.short	141
	.short	211
	.short	141
	.short	19
	.short	132
	.short	208
	.short	148
	.short	24
	.short	123
	.short	206
	.short	154
	.short	29
	.short	114
	.short	203
	.short	160
	.short	35
	.short	105
	.short	200
	.short	165
	.short	42
	.short	96
	.short	197
	.short	171
	.short	48
	.short	87
	.short	193
	.short	176
	.short	56
	.short	79
	.short	190
	.short	180
	.short	63
	.short	71
	.short	185
	.short	185
	.short	71
	.short	63
	.short	180
	.short	190
	.short	79
	.short	56
	.short	176
	.short	193
	.short	87
	.short	48
	.short	171
	.short	197
	.short	96
	.short	42
	.short	165
	.short	200
	.short	105
	.short	35
	.short	160
	.short	203
	.short	114
	.short	29
	.short	154
	.short	206
	.short	123
	.short	24
	.short	148
	.short	208
	.short	132
	.type	gfxcoefficient4_4M, %object
	.size	gfxcoefficient4_4M, 128
gfxcoefficient4_4M:
	.short	128
	.short	272
	.short	128
	.short	-16
	.short	114
	.short	269
	.short	142
	.short	-13
	.short	100
	.short	267
	.short	155
	.short	-10
	.short	87
	.short	262
	.short	168
	.short	-5
	.short	74
	.short	257
	.short	181
	.short	0
	.short	62
	.short	251
	.short	193
	.short	6
	.short	50
	.short	244
	.short	205
	.short	13
	.short	40
	.short	235
	.short	216
	.short	21
	.short	30
	.short	226
	.short	226
	.short	30
	.short	21
	.short	216
	.short	235
	.short	40
	.short	13
	.short	205
	.short	244
	.short	50
	.short	6
	.short	193
	.short	251
	.short	62
	.short	0
	.short	181
	.short	257
	.short	74
	.short	-5
	.short	168
	.short	262
	.short	87
	.short	-10
	.short	155
	.short	267
	.short	100
	.short	-13
	.short	142
	.short	269
	.short	114
	.type	gfxcoefficient4_5M, %object
	.size	gfxcoefficient4_5M, 128
gfxcoefficient4_5M:
	.short	106
	.short	350
	.short	106
	.short	-50
	.short	85
	.short	350
	.short	128
	.short	-51
	.short	66
	.short	348
	.short	150
	.short	-52
	.short	48
	.short	342
	.short	173
	.short	-51
	.short	30
	.short	335
	.short	196
	.short	-49
	.short	15
	.short	324
	.short	218
	.short	-45
	.short	1
	.short	311
	.short	239
	.short	-39
	.short	-12
	.short	296
	.short	260
	.short	-32
	.short	-23
	.short	279
	.short	279
	.short	-23
	.short	-32
	.short	260
	.short	296
	.short	-12
	.short	-39
	.short	239
	.short	311
	.short	1
	.short	-45
	.short	218
	.short	324
	.short	15
	.short	-49
	.short	196
	.short	335
	.short	30
	.short	-51
	.short	173
	.short	342
	.short	48
	.short	-52
	.short	150
	.short	348
	.short	66
	.short	-51
	.short	128
	.short	350
	.short	85
	.type	gfxcoefficient4_5_3M, %object
	.size	gfxcoefficient4_5_3M, 128
gfxcoefficient4_5_3M:
	.short	97
	.short	376
	.short	97
	.short	-58
	.short	75
	.short	377
	.short	121
	.short	-61
	.short	54
	.short	374
	.short	147
	.short	-63
	.short	33
	.short	369
	.short	173
	.short	-63
	.short	15
	.short	360
	.short	199
	.short	-62
	.short	-1
	.short	348
	.short	225
	.short	-60
	.short	-16
	.short	333
	.short	250
	.short	-55
	.short	-29
	.short	316
	.short	274
	.short	-49
	.short	-40
	.short	296
	.short	296
	.short	-40
	.short	-49
	.short	274
	.short	316
	.short	-29
	.short	-55
	.short	250
	.short	333
	.short	-16
	.short	-60
	.short	225
	.short	348
	.short	-1
	.short	-62
	.short	199
	.short	360
	.short	15
	.short	-63
	.short	173
	.short	369
	.short	33
	.short	-63
	.short	147
	.short	374
	.short	54
	.short	-61
	.short	121
	.short	377
	.short	75
	.type	gfxcoefficient2_cubic, %object
	.size	gfxcoefficient2_cubic, 128
gfxcoefficient2_cubic:
	.short	0
	.short	511
	.short	0
	.short	0
	.short	0
	.short	506
	.short	6
	.short	0
	.short	0
	.short	490
	.short	22
	.short	0
	.short	0
	.short	465
	.short	47
	.short	0
	.short	0
	.short	432
	.short	80
	.short	0
	.short	0
	.short	393
	.short	119
	.short	0
	.short	0
	.short	350
	.short	162
	.short	0
	.short	0
	.short	304
	.short	208
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	208
	.short	304
	.short	0
	.short	0
	.short	162
	.short	350
	.short	0
	.short	0
	.short	119
	.short	393
	.short	0
	.short	0
	.short	80
	.short	432
	.short	0
	.short	0
	.short	47
	.short	465
	.short	0
	.short	0
	.short	22
	.short	490
	.short	0
	.short	0
	.short	6
	.short	506
	.short	0
	.type	gfxcoefficient2_5M, %object
	.size	gfxcoefficient2_5M, 128
gfxcoefficient2_5M:
	.short	0
	.short	386
	.short	126
	.short	0
	.short	0
	.short	370
	.short	142
	.short	0
	.short	0
	.short	355
	.short	157
	.short	0
	.short	0
	.short	338
	.short	174
	.short	0
	.short	0
	.short	322
	.short	190
	.short	0
	.short	0
	.short	306
	.short	206
	.short	0
	.short	0
	.short	289
	.short	223
	.short	0
	.short	0
	.short	273
	.short	239
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	239
	.short	273
	.short	0
	.short	0
	.short	223
	.short	289
	.short	0
	.short	0
	.short	206
	.short	306
	.short	0
	.short	0
	.short	190
	.short	322
	.short	0
	.short	0
	.short	174
	.short	338
	.short	0
	.short	0
	.short	157
	.short	355
	.short	0
	.short	0
	.short	142
	.short	370
	.short	0
	.type	gfxcoefficient2_4M, %object
	.size	gfxcoefficient2_4M, 128
gfxcoefficient2_4M:
	.short	0
	.short	371
	.short	141
	.short	0
	.short	0
	.short	356
	.short	156
	.short	0
	.short	0
	.short	341
	.short	171
	.short	0
	.short	0
	.short	327
	.short	185
	.short	0
	.short	0
	.short	312
	.short	200
	.short	0
	.short	0
	.short	298
	.short	214
	.short	0
	.short	0
	.short	284
	.short	228
	.short	0
	.short	0
	.short	270
	.short	242
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	242
	.short	270
	.short	0
	.short	0
	.short	228
	.short	284
	.short	0
	.short	0
	.short	214
	.short	298
	.short	0
	.short	0
	.short	200
	.short	312
	.short	0
	.short	0
	.short	185
	.short	327
	.short	0
	.short	0
	.short	171
	.short	341
	.short	0
	.short	0
	.short	156
	.short	356
	.short	0
	.type	gfxcoefficient2_3M, %object
	.size	gfxcoefficient2_3M, 128
gfxcoefficient2_3M:
	.short	0
	.short	359
	.short	153
	.short	0
	.short	0
	.short	344
	.short	168
	.short	0
	.short	0
	.short	331
	.short	181
	.short	0
	.short	0
	.short	317
	.short	195
	.short	0
	.short	0
	.short	304
	.short	208
	.short	0
	.short	0
	.short	292
	.short	220
	.short	0
	.short	0
	.short	280
	.short	232
	.short	0
	.short	0
	.short	268
	.short	244
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	244
	.short	268
	.short	0
	.short	0
	.short	232
	.short	280
	.short	0
	.short	0
	.short	220
	.short	292
	.short	0
	.short	0
	.short	208
	.short	304
	.short	0
	.short	0
	.short	195
	.short	317
	.short	0
	.short	0
	.short	181
	.short	331
	.short	0
	.short	0
	.short	168
	.short	344
	.short	0
	.type	gfxcoefficient2_2M, %object
	.size	gfxcoefficient2_2M, 128
gfxcoefficient2_2M:
	.short	0
	.short	350
	.short	162
	.short	0
	.short	0
	.short	336
	.short	176
	.short	0
	.short	0
	.short	323
	.short	189
	.short	0
	.short	0
	.short	311
	.short	201
	.short	0
	.short	0
	.short	299
	.short	213
	.short	0
	.short	0
	.short	288
	.short	224
	.short	0
	.short	0
	.short	277
	.short	235
	.short	0
	.short	0
	.short	266
	.short	246
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	246
	.short	266
	.short	0
	.short	0
	.short	235
	.short	277
	.short	0
	.short	0
	.short	224
	.short	288
	.short	0
	.short	0
	.short	213
	.short	299
	.short	0
	.short	0
	.short	201
	.short	311
	.short	0
	.short	0
	.short	189
	.short	323
	.short	0
	.short	0
	.short	176
	.short	336
	.short	0
	.type	gfxcoefficient2_1M, %object
	.size	gfxcoefficient2_1M, 128
gfxcoefficient2_1M:
	.short	0
	.short	345
	.short	167
	.short	0
	.short	0
	.short	331
	.short	181
	.short	0
	.short	0
	.short	319
	.short	193
	.short	0
	.short	0
	.short	307
	.short	205
	.short	0
	.short	0
	.short	296
	.short	216
	.short	0
	.short	0
	.short	285
	.short	227
	.short	0
	.short	0
	.short	275
	.short	237
	.short	0
	.short	0
	.short	266
	.short	246
	.short	0
	.short	0
	.short	256
	.short	256
	.short	0
	.short	0
	.short	246
	.short	266
	.short	0
	.short	0
	.short	237
	.short	275
	.short	0
	.short	0
	.short	227
	.short	285
	.short	0
	.short	0
	.short	216
	.short	296
	.short	0
	.short	0
	.short	205
	.short	307
	.short	0
	.short	0
	.short	193
	.short	319
	.short	0
	.short	0
	.short	181
	.short	331
	.short	0
	.type	gfxcoefficient8_5_3M, %object
	.size	gfxcoefficient8_5_3M, 128
gfxcoefficient8_5_3M:
	.short	35
	.short	-70
	.short	102
	.short	373
	.short	102
	.short	-70
	.short	35
	.short	5
	.short	38
	.short	-60
	.short	55
	.short	365
	.short	149
	.short	-74
	.short	28
	.short	11
	.short	38
	.short	-45
	.short	15
	.short	346
	.short	196
	.short	-72
	.short	17
	.short	17
	.short	35
	.short	-29
	.short	-19
	.short	318
	.short	241
	.short	-62
	.short	4
	.short	24
	.short	30
	.short	-12
	.short	-44
	.short	282
	.short	282
	.short	-44
	.short	-12
	.short	30
	.short	24
	.short	4
	.short	-62
	.short	241
	.short	318
	.short	-19
	.short	-29
	.short	35
	.short	17
	.short	17
	.short	-72
	.short	196
	.short	346
	.short	15
	.short	-45
	.short	38
	.short	11
	.short	28
	.short	-74
	.short	149
	.short	365
	.short	55
	.short	-60
	.short	38
	.type	gfxcoefficient8_cubic, %object
	.size	gfxcoefficient8_cubic, 128
gfxcoefficient8_cubic:
	.short	0
	.short	0
	.short	0
	.short	511
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-3
	.short	11
	.short	-41
	.short	496
	.short	61
	.short	-16
	.short	4
	.short	0
	.short	-4
	.short	17
	.short	-63
	.short	451
	.short	138
	.short	-35
	.short	9
	.short	-1
	.short	-4
	.short	18
	.short	-70
	.short	386
	.short	222
	.short	-52
	.short	14
	.short	-2
	.short	-3
	.short	17
	.short	-65
	.short	307
	.short	307
	.short	-65
	.short	17
	.short	-3
	.short	-2
	.short	14
	.short	-52
	.short	222
	.short	386
	.short	-70
	.short	18
	.short	-4
	.short	-1
	.short	9
	.short	-35
	.short	138
	.short	451
	.short	-63
	.short	17
	.short	-4
	.short	0
	.short	4
	.short	-16
	.short	61
	.short	496
	.short	-41
	.short	11
	.short	-3
	.type	gfxcoefficient8_3M, %object
	.size	gfxcoefficient8_3M, 128
gfxcoefficient8_3M:
	.short	-46
	.short	29
	.short	165
	.short	236
	.short	165
	.short	29
	.short	-46
	.short	-20
	.short	-47
	.short	14
	.short	150
	.short	236
	.short	182
	.short	45
	.short	-43
	.short	-25
	.short	-47
	.short	0
	.short	134
	.short	235
	.short	197
	.short	62
	.short	-39
	.short	-30
	.short	-45
	.short	-12
	.short	116
	.short	230
	.short	211
	.short	80
	.short	-32
	.short	-36
	.short	-41
	.short	-23
	.short	98
	.short	222
	.short	222
	.short	98
	.short	-23
	.short	-41
	.short	-36
	.short	-32
	.short	80
	.short	211
	.short	230
	.short	116
	.short	-12
	.short	-45
	.short	-30
	.short	-39
	.short	62
	.short	197
	.short	235
	.short	134
	.short	0
	.short	-47
	.short	-25
	.short	-43
	.short	45
	.short	182
	.short	236
	.short	150
	.short	14
	.short	-47
	.type	gfxcoefficient8_2M, %object
	.size	gfxcoefficient8_2M, 128
gfxcoefficient8_2M:
	.short	14
	.short	66
	.short	113
	.short	133
	.short	113
	.short	66
	.short	14
	.short	-7
	.short	8
	.short	60
	.short	108
	.short	132
	.short	118
	.short	73
	.short	20
	.short	-7
	.short	4
	.short	53
	.short	103
	.short	131
	.short	122
	.short	80
	.short	26
	.short	-7
	.short	0
	.short	46
	.short	98
	.short	130
	.short	125
	.short	86
	.short	33
	.short	-6
	.short	-3
	.short	39
	.short	92
	.short	128
	.short	128
	.short	92
	.short	39
	.short	-3
	.short	-6
	.short	33
	.short	86
	.short	125
	.short	130
	.short	98
	.short	46
	.short	0
	.short	-7
	.short	26
	.short	80
	.short	122
	.short	131
	.short	103
	.short	53
	.short	4
	.short	-7
	.short	20
	.short	73
	.short	118
	.short	132
	.short	108
	.short	60
	.short	8
	.type	gfxcoefficient8_1M, %object
	.size	gfxcoefficient8_1M, 128
gfxcoefficient8_1M:
	.short	57
	.short	68
	.short	79
	.short	83
	.short	79
	.short	68
	.short	57
	.short	21
	.short	54
	.short	66
	.short	77
	.short	82
	.short	79
	.short	69
	.short	58
	.short	27
	.short	50
	.short	65
	.short	76
	.short	81
	.short	79
	.short	70
	.short	59
	.short	32
	.short	46
	.short	63
	.short	74
	.short	81
	.short	80
	.short	71
	.short	60
	.short	37
	.short	42
	.short	61
	.short	73
	.short	80
	.short	80
	.short	73
	.short	61
	.short	42
	.short	37
	.short	60
	.short	71
	.short	80
	.short	81
	.short	74
	.short	63
	.short	46
	.short	32
	.short	59
	.short	70
	.short	79
	.short	81
	.short	76
	.short	65
	.short	50
	.short	27
	.short	58
	.short	69
	.short	79
	.short	82
	.short	77
	.short	66
	.short	54
	.type	gfxcoefficient4_6M_a15, %object
	.size	gfxcoefficient4_6M_a15, 128
gfxcoefficient4_6M_a15:
	.short	78
	.short	392
	.short	78
	.short	-36
	.short	56
	.short	393
	.short	102
	.short	-39
	.short	36
	.short	391
	.short	128
	.short	-43
	.short	18
	.short	384
	.short	155
	.short	-45
	.short	2
	.short	373
	.short	184
	.short	-47
	.short	-12
	.short	358
	.short	213
	.short	-47
	.short	-23
	.short	340
	.short	241
	.short	-46
	.short	-32
	.short	319
	.short	269
	.short	-44
	.short	-39
	.short	295
	.short	295
	.short	-39
	.short	-44
	.short	269
	.short	319
	.short	-32
	.short	-46
	.short	241
	.short	340
	.short	-23
	.short	-47
	.short	213
	.short	358
	.short	-12
	.short	-47
	.short	184
	.short	373
	.short	2
	.short	-45
	.short	155
	.short	384
	.short	18
	.short	-43
	.short	128
	.short	391
	.short	36
	.short	-39
	.short	102
	.short	393
	.short	56
	.type	gfxcoefficient4_5M_a15, %object
	.size	gfxcoefficient4_5M_a15, 128
gfxcoefficient4_5M_a15:
	.short	102
	.short	335
	.short	102
	.short	-27
	.short	84
	.short	334
	.short	121
	.short	-27
	.short	67
	.short	331
	.short	141
	.short	-27
	.short	51
	.short	326
	.short	162
	.short	-27
	.short	36
	.short	319
	.short	183
	.short	-26
	.short	23
	.short	308
	.short	204
	.short	-23
	.short	12
	.short	295
	.short	225
	.short	-20
	.short	2
	.short	280
	.short	244
	.short	-14
	.short	-7
	.short	263
	.short	263
	.short	-7
	.short	-14
	.short	244
	.short	280
	.short	2
	.short	-20
	.short	225
	.short	295
	.short	12
	.short	-23
	.short	204
	.short	308
	.short	23
	.short	-26
	.short	183
	.short	319
	.short	36
	.short	-27
	.short	162
	.short	326
	.short	51
	.short	-27
	.short	141
	.short	331
	.short	67
	.short	-27
	.short	121
	.short	334
	.short	84
	.type	gfxcoefficient4_4_5M_a15, %object
	.size	gfxcoefficient4_4_5M_a15, 128
gfxcoefficient4_4_5M_a15:
	.short	112
	.short	306
	.short	112
	.short	-18
	.short	95
	.short	306
	.short	129
	.short	-18
	.short	80
	.short	303
	.short	146
	.short	-17
	.short	66
	.short	298
	.short	163
	.short	-15
	.short	52
	.short	291
	.short	181
	.short	-12
	.short	40
	.short	283
	.short	198
	.short	-9
	.short	29
	.short	272
	.short	215
	.short	-4
	.short	19
	.short	260
	.short	231
	.short	2
	.short	10
	.short	246
	.short	246
	.short	10
	.short	2
	.short	231
	.short	260
	.short	19
	.short	-4
	.short	215
	.short	272
	.short	29
	.short	-9
	.short	198
	.short	283
	.short	40
	.short	-12
	.short	181
	.short	291
	.short	52
	.short	-15
	.short	163
	.short	298
	.short	66
	.short	-17
	.short	146
	.short	303
	.short	80
	.short	-18
	.short	129
	.short	306
	.short	95
	.type	gfxcoefficient4_3M_a13, %object
	.size	gfxcoefficient4_3M_a13, 128
gfxcoefficient4_3M_a13:
	.short	135
	.short	230
	.short	135
	.short	12
	.short	124
	.short	228
	.short	143
	.short	17
	.short	114
	.short	225
	.short	152
	.short	21
	.short	104
	.short	222
	.short	160
	.short	26
	.short	94
	.short	218
	.short	168
	.short	32
	.short	85
	.short	214
	.short	176
	.short	37
	.short	76
	.short	208
	.short	183
	.short	45
	.short	67
	.short	203
	.short	190
	.short	52
	.short	59
	.short	197
	.short	197
	.short	59
	.short	52
	.short	190
	.short	203
	.short	67
	.short	45
	.short	183
	.short	208
	.short	76
	.short	37
	.short	176
	.short	214
	.short	85
	.short	32
	.short	168
	.short	218
	.short	94
	.short	26
	.short	160
	.short	222
	.short	104
	.short	21
	.short	152
	.short	225
	.short	114
	.short	17
	.short	143
	.short	228
	.short	124
	.type	gfxcoefficient8_lanczos2_8tap, %object
	.size	gfxcoefficient8_lanczos2_8tap, 128
gfxcoefficient8_lanczos2_8tap:
	.short	-16
	.short	0
	.short	145
	.short	254
	.short	145
	.short	0
	.short	-16
	.short	0
	.short	-13
	.short	-9
	.short	123
	.short	252
	.short	167
	.short	11
	.short	-19
	.short	0
	.short	-10
	.short	-15
	.short	101
	.short	245
	.short	188
	.short	25
	.short	-21
	.short	-1
	.short	-7
	.short	-19
	.short	80
	.short	236
	.short	206
	.short	41
	.short	-22
	.short	-3
	.short	-5
	.short	-21
	.short	60
	.short	222
	.short	222
	.short	60
	.short	-21
	.short	-5
	.short	-3
	.short	-22
	.short	41
	.short	206
	.short	236
	.short	80
	.short	-19
	.short	-7
	.short	-1
	.short	-21
	.short	25
	.short	188
	.short	245
	.short	101
	.short	-15
	.short	-10
	.short	0
	.short	-19
	.short	11
	.short	167
	.short	252
	.short	123
	.short	-9
	.short	-13
	.type	gfxcoefficient8_lanczos3_8tap, %object
	.size	gfxcoefficient8_lanczos3_8tap, 128
gfxcoefficient8_lanczos3_8tap:
	.short	4
	.short	-22
	.short	40
	.short	468
	.short	40
	.short	-22
	.short	4
	.short	0
	.short	1
	.short	-7
	.short	-9
	.short	457
	.short	100
	.short	-38
	.short	8
	.short	0
	.short	0
	.short	4
	.short	-42
	.short	425
	.short	168
	.short	-54
	.short	11
	.short	0
	.short	0
	.short	11
	.short	-62
	.short	374
	.short	240
	.short	-65
	.short	14
	.short	0
	.short	0
	.short	14
	.short	-68
	.short	310
	.short	310
	.short	-68
	.short	14
	.short	0
	.short	0
	.short	14
	.short	-65
	.short	240
	.short	374
	.short	-62
	.short	11
	.short	0
	.short	0
	.short	11
	.short	-54
	.short	168
	.short	425
	.short	-42
	.short	4
	.short	0
	.short	0
	.short	8
	.short	-38
	.short	100
	.short	457
	.short	-9
	.short	-7
	.short	1
	.type	gfxcoefficient8_6M_a30, %object
	.size	gfxcoefficient8_6M_a30, 128
gfxcoefficient8_6M_a30:
	.short	11
	.short	-35
	.short	76
	.short	412
	.short	76
	.short	-35
	.short	11
	.short	-4
	.short	9
	.short	-24
	.short	31
	.short	404
	.short	128
	.short	-45
	.short	12
	.short	-3
	.short	6
	.short	-13
	.short	-4
	.short	380
	.short	184
	.short	-51
	.short	12
	.short	-2
	.short	4
	.short	-4
	.short	-30
	.short	344
	.short	242
	.short	-52
	.short	9
	.short	-1
	.short	1
	.short	4
	.short	-46
	.short	297
	.short	297
	.short	-46
	.short	4
	.short	1
	.short	-1
	.short	9
	.short	-52
	.short	242
	.short	344
	.short	-30
	.short	-4
	.short	4
	.short	-2
	.short	12
	.short	-51
	.short	184
	.short	380
	.short	-4
	.short	-13
	.short	6
	.short	-3
	.short	12
	.short	-45
	.short	128
	.short	404
	.short	31
	.short	-24
	.short	9
	.type	gfxcoefficient8_5M_a25, %object
	.size	gfxcoefficient8_5M_a25, 128
gfxcoefficient8_5M_a25:
	.short	7
	.short	-42
	.short	109
	.short	363
	.short	109
	.short	-42
	.short	7
	.short	1
	.short	8
	.short	-37
	.short	69
	.short	357
	.short	152
	.short	-43
	.short	4
	.short	2
	.short	9
	.short	-30
	.short	34
	.short	340
	.short	197
	.short	-40
	.short	-1
	.short	3
	.short	8
	.short	-22
	.short	6
	.short	314
	.short	240
	.short	-32
	.short	-7
	.short	5
	.short	6
	.short	-14
	.short	-16
	.short	280
	.short	280
	.short	-16
	.short	-14
	.short	6
	.short	5
	.short	-7
	.short	-32
	.short	240
	.short	314
	.short	6
	.short	-22
	.short	8
	.short	3
	.short	-1
	.short	-40
	.short	197
	.short	340
	.short	34
	.short	-30
	.short	9
	.short	2
	.short	4
	.short	-43
	.short	152
	.short	357
	.short	69
	.short	-37
	.short	8
	.type	gfxcoefficient8_4M_a25, %object
	.size	gfxcoefficient8_4M_a25, 128
gfxcoefficient8_4M_a25:
	.short	-7
	.short	-21
	.short	133
	.short	300
	.short	133
	.short	-21
	.short	-7
	.short	2
	.short	-4
	.short	-24
	.short	103
	.short	296
	.short	164
	.short	-14
	.short	-11
	.short	2
	.short	-1
	.short	-25
	.short	75
	.short	286
	.short	194
	.short	-4
	.short	-15
	.short	2
	.short	0
	.short	-24
	.short	50
	.short	270
	.short	222
	.short	10
	.short	-18
	.short	2
	.short	1
	.short	-21
	.short	28
	.short	248
	.short	248
	.short	28
	.short	-21
	.short	1
	.short	2
	.short	-18
	.short	10
	.short	222
	.short	270
	.short	50
	.short	-24
	.short	0
	.short	2
	.short	-15
	.short	-4
	.short	194
	.short	286
	.short	75
	.short	-25
	.short	-1
	.short	2
	.short	-11
	.short	-14
	.short	164
	.short	296
	.short	103
	.short	-24
	.short	-4
	.type	gfxcoefficient8_3M_a19, %object
	.size	gfxcoefficient8_3M_a19, 128
gfxcoefficient8_3M_a19:
	.short	-18
	.short	19
	.short	144
	.short	226
	.short	144
	.short	19
	.short	-18
	.short	-4
	.short	-17
	.short	9
	.short	126
	.short	225
	.short	161
	.short	30
	.short	-17
	.short	-5
	.short	-15
	.short	0
	.short	109
	.short	222
	.short	177
	.short	43
	.short	-17
	.short	-7
	.short	-14
	.short	-6
	.short	91
	.short	214
	.short	192
	.short	58
	.short	-14
	.short	-9
	.short	-12
	.short	-11
	.short	74
	.short	205
	.short	205
	.short	74
	.short	-11
	.short	-12
	.short	-9
	.short	-14
	.short	58
	.short	192
	.short	214
	.short	91
	.short	-6
	.short	-14
	.short	-7
	.short	-17
	.short	43
	.short	177
	.short	222
	.short	109
	.short	0
	.short	-15
	.short	-5
	.short	-17
	.short	30
	.short	161
	.short	225
	.short	126
	.short	9
	.short	-17
	.type	gfxcoefficient4_lanczos2_6M_a15, %object
	.size	gfxcoefficient4_lanczos2_6M_a15, 128
gfxcoefficient4_lanczos2_6M_a15:
	.short	79
	.short	383
	.short	79
	.short	-29
	.short	58
	.short	384
	.short	102
	.short	-32
	.short	40
	.short	380
	.short	127
	.short	-35
	.short	23
	.short	374
	.short	153
	.short	-38
	.short	8
	.short	363
	.short	180
	.short	-39
	.short	-6
	.short	349
	.short	208
	.short	-39
	.short	-16
	.short	331
	.short	235
	.short	-38
	.short	-25
	.short	311
	.short	262
	.short	-36
	.short	-31
	.short	287
	.short	287
	.short	-31
	.short	-36
	.short	262
	.short	311
	.short	-25
	.short	-38
	.short	235
	.short	331
	.short	-16
	.short	-39
	.short	208
	.short	349
	.short	-6
	.short	-39
	.short	180
	.short	363
	.short	8
	.short	-38
	.short	153
	.short	374
	.short	23
	.short	-35
	.short	127
	.short	380
	.short	40
	.short	-32
	.short	102
	.short	384
	.short	58
	.type	gfxcoefficient4_lanczos2_5M_a15, %object
	.size	gfxcoefficient4_lanczos2_5M_a15, 128
gfxcoefficient4_lanczos2_5M_a15:
	.short	103
	.short	328
	.short	103
	.short	-22
	.short	85
	.short	328
	.short	121
	.short	-22
	.short	69
	.short	324
	.short	141
	.short	-22
	.short	53
	.short	319
	.short	161
	.short	-21
	.short	40
	.short	311
	.short	181
	.short	-20
	.short	27
	.short	301
	.short	201
	.short	-17
	.short	16
	.short	288
	.short	221
	.short	-13
	.short	7
	.short	273
	.short	240
	.short	-8
	.short	-2
	.short	258
	.short	258
	.short	-2
	.short	-8
	.short	240
	.short	273
	.short	7
	.short	-13
	.short	221
	.short	288
	.short	16
	.short	-17
	.short	201
	.short	301
	.short	27
	.short	-20
	.short	181
	.short	311
	.short	40
	.short	-21
	.short	161
	.short	319
	.short	53
	.short	-22
	.short	141
	.short	324
	.short	69
	.short	-22
	.short	121
	.short	328
	.short	85
	.type	gfxcoefficient4_lanczos2_4_5M_a15, %object
	.size	gfxcoefficient4_lanczos2_4_5M_a15, 128
gfxcoefficient4_lanczos2_4_5M_a15:
	.short	113
	.short	301
	.short	113
	.short	-15
	.short	97
	.short	300
	.short	129
	.short	-14
	.short	82
	.short	297
	.short	145
	.short	-12
	.short	68
	.short	292
	.short	162
	.short	-10
	.short	55
	.short	285
	.short	179
	.short	-7
	.short	43
	.short	277
	.short	196
	.short	-4
	.short	32
	.short	267
	.short	212
	.short	1
	.short	23
	.short	255
	.short	227
	.short	7
	.short	14
	.short	242
	.short	242
	.short	14
	.short	7
	.short	227
	.short	255
	.short	23
	.short	1
	.short	212
	.short	267
	.short	32
	.short	-4
	.short	196
	.short	277
	.short	43
	.short	-7
	.short	179
	.short	285
	.short	55
	.short	-10
	.short	162
	.short	292
	.short	68
	.short	-12
	.short	145
	.short	297
	.short	82
	.short	-14
	.short	129
	.short	300
	.short	97
	.type	gfxcoefficient4_lanczos2_4M_a15, %object
	.size	gfxcoefficient4_lanczos2_4M_a15, 128
gfxcoefficient4_lanczos2_4M_a15:
	.short	121
	.short	276
	.short	121
	.short	-6
	.short	107
	.short	275
	.short	134
	.short	-4
	.short	93
	.short	272
	.short	148
	.short	-1
	.short	81
	.short	267
	.short	162
	.short	2
	.short	68
	.short	262
	.short	176
	.short	6
	.short	58
	.short	255
	.short	189
	.short	10
	.short	48
	.short	246
	.short	202
	.short	16
	.short	38
	.short	237
	.short	214
	.short	23
	.short	30
	.short	226
	.short	226
	.short	30
	.short	23
	.short	214
	.short	237
	.short	38
	.short	16
	.short	202
	.short	246
	.short	48
	.short	10
	.short	189
	.short	255
	.short	58
	.short	6
	.short	176
	.short	262
	.short	68
	.short	2
	.short	162
	.short	267
	.short	81
	.short	-1
	.short	148
	.short	272
	.short	93
	.short	-4
	.short	134
	.short	275
	.short	107
	.type	gfxcoefficient4_lanczos2_3M_a13, %object
	.size	gfxcoefficient4_lanczos2_3M_a13, 128
gfxcoefficient4_lanczos2_3M_a13:
	.short	135
	.short	227
	.short	135
	.short	15
	.short	124
	.short	226
	.short	143
	.short	19
	.short	115
	.short	222
	.short	151
	.short	24
	.short	105
	.short	219
	.short	159
	.short	29
	.short	95
	.short	215
	.short	167
	.short	35
	.short	86
	.short	211
	.short	174
	.short	41
	.short	78
	.short	206
	.short	181
	.short	47
	.short	69
	.short	201
	.short	188
	.short	54
	.short	62
	.short	194
	.short	194
	.short	62
	.short	54
	.short	188
	.short	201
	.short	69
	.short	47
	.short	181
	.short	206
	.short	78
	.short	41
	.short	174
	.short	211
	.short	86
	.short	35
	.short	167
	.short	215
	.short	95
	.short	29
	.short	159
	.short	219
	.short	105
	.short	24
	.short	151
	.short	222
	.short	115
	.short	19
	.short	143
	.short	226
	.short	124
	.type	gfxcoefficient4_lanczos_4tap, %object
	.size	gfxcoefficient4_lanczos_4tap, 128
gfxcoefficient4_lanczos_4tap:
	.short	115
	.short	282
	.short	115
	.short	0
	.short	101
	.short	282
	.short	129
	.short	0
	.short	87
	.short	280
	.short	144
	.short	1
	.short	75
	.short	275
	.short	159
	.short	3
	.short	63
	.short	270
	.short	174
	.short	5
	.short	52
	.short	262
	.short	189
	.short	9
	.short	42
	.short	253
	.short	204
	.short	13
	.short	33
	.short	242
	.short	218
	.short	19
	.short	26
	.short	230
	.short	230
	.short	26
	.short	19
	.short	218
	.short	242
	.short	33
	.short	13
	.short	204
	.short	253
	.short	42
	.short	9
	.short	189
	.short	262
	.short	52
	.short	5
	.short	174
	.short	270
	.short	63
	.short	3
	.short	159
	.short	275
	.short	75
	.short	1
	.short	144
	.short	280
	.short	87
	.short	0
	.short	129
	.short	282
	.short	101
	.type	gfxcoefficient2h_guass2_6M_2_5, %object
	.size	gfxcoefficient2h_guass2_6M_2_5, 32
gfxcoefficient2h_guass2_6M_2_5:
	.short	509
	.short	3
	.short	498
	.short	14
	.short	466
	.short	46
	.short	388
	.short	124
	.short	256
	.short	256
	.short	124
	.short	388
	.short	46
	.short	466
	.short	14
	.short	498
	.type	gfxcoefficient2v_guass2_6M_2_5, %object
	.size	gfxcoefficient2v_guass2_6M_2_5, 64
gfxcoefficient2v_guass2_6M_2_5:
	.short	509
	.short	3
	.short	505
	.short	7
	.short	498
	.short	14
	.short	486
	.short	26
	.short	466
	.short	46
	.short	434
	.short	78
	.short	388
	.short	124
	.short	327
	.short	185
	.short	256
	.short	256
	.short	185
	.short	327
	.short	124
	.short	388
	.short	78
	.short	434
	.short	46
	.short	466
	.short	26
	.short	486
	.short	14
	.short	498
	.short	7
	.short	505
	.type	gfxcoefficient2h_guass2_6_75M_a0_5, %object
	.size	gfxcoefficient2h_guass2_6_75M_a0_5, 32
gfxcoefficient2h_guass2_6_75M_a0_5:
	.short	511
	.short	0
	.short	453
	.short	59
	.short	390
	.short	122
	.short	324
	.short	188
	.short	256
	.short	256
	.short	188
	.short	324
	.short	122
	.short	390
	.short	59
	.short	453
	.type	gfxcoefficient2v_guass2_6_75M_a0_5, %object
	.size	gfxcoefficient2v_guass2_6_75M_a0_5, 64
gfxcoefficient2v_guass2_6_75M_a0_5:
	.short	511
	.short	0
	.short	483
	.short	29
	.short	453
	.short	59
	.short	422
	.short	90
	.short	390
	.short	122
	.short	357
	.short	155
	.short	324
	.short	188
	.short	290
	.short	222
	.short	256
	.short	256
	.short	222
	.short	290
	.short	188
	.short	324
	.short	155
	.short	357
	.short	122
	.short	390
	.short	90
	.short	422
	.short	59
	.short	453
	.short	29
	.short	483
	.type	gfxcoefficient2h_guass2_6M_a0_5, %object
	.size	gfxcoefficient2h_guass2_6M_a0_5, 32
gfxcoefficient2h_guass2_6M_a0_5:
	.short	462
	.short	50
	.short	411
	.short	101
	.short	360
	.short	152
	.short	308
	.short	204
	.short	256
	.short	256
	.short	204
	.short	308
	.short	152
	.short	360
	.short	101
	.short	411
	.type	gfxcoefficient2v_guass2_6M_a0_5, %object
	.size	gfxcoefficient2v_guass2_6M_a0_5, 64
gfxcoefficient2v_guass2_6M_a0_5:
	.short	462
	.short	50
	.short	437
	.short	75
	.short	411
	.short	101
	.short	386
	.short	126
	.short	360
	.short	152
	.short	334
	.short	178
	.short	308
	.short	204
	.short	282
	.short	230
	.short	256
	.short	256
	.short	230
	.short	282
	.short	204
	.short	308
	.short	178
	.short	334
	.short	152
	.short	360
	.short	126
	.short	386
	.short	101
	.short	411
	.short	75
	.short	437
	.type	gfxcoefficient2h_guass2_6M_a2_0, %object
	.size	gfxcoefficient2h_guass2_6M_a2_0, 32
gfxcoefficient2h_guass2_6M_a2_0:
	.short	503
	.short	9
	.short	482
	.short	30
	.short	437
	.short	75
	.short	361
	.short	151
	.short	256
	.short	256
	.short	30
	.short	482
	.short	75
	.short	437
	.short	151
	.short	361
	.type	gfxcoefficient2v_guass2_6M_a2_0, %object
	.size	gfxcoefficient2v_guass2_6M_a2_0, 64
gfxcoefficient2v_guass2_6M_a2_0:
	.short	503
	.short	9
	.short	495
	.short	17
	.short	482
	.short	30
	.short	463
	.short	49
	.short	437
	.short	75
	.short	403
	.short	109
	.short	361
	.short	151
	.short	310
	.short	202
	.short	256
	.short	256
	.short	17
	.short	495
	.short	30
	.short	482
	.short	49
	.short	463
	.short	75
	.short	437
	.short	109
	.short	403
	.short	151
	.short	361
	.short	202
	.short	310
	.type	gfxcoefficient2h_4M_0_1, %object
	.size	gfxcoefficient2h_4M_0_1, 32
gfxcoefficient2h_4M_0_1:
	.short	366
	.short	146
	.short	337
	.short	175
	.short	309
	.short	203
	.short	282
	.short	230
	.short	256
	.short	256
	.short	175
	.short	337
	.short	203
	.short	309
	.short	230
	.short	282
	.type	gfxcoefficient2v_4M_0_1, %object
	.size	gfxcoefficient2v_4M_0_1, 64
gfxcoefficient2v_4M_0_1:
	.short	366
	.short	146
	.short	351
	.short	161
	.short	337
	.short	175
	.short	323
	.short	189
	.short	309
	.short	203
	.short	296
	.short	216
	.short	282
	.short	230
	.short	269
	.short	243
	.short	256
	.short	256
	.short	161
	.short	351
	.short	175
	.short	337
	.short	189
	.short	323
	.short	203
	.short	309
	.short	216
	.short	296
	.short	230
	.short	282
	.short	243
	.short	269
	.type	g_pGfxOrgZoomCoef_sharp, %object
	.size	g_pGfxOrgZoomCoef_sharp, 224
g_pGfxOrgZoomCoef_sharp:
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6_75M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_cubic
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_cubic
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_lanczos2_6M_a15
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_lanczos2_6M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_lanczos2_5M_a15
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_lanczos2_5M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4_5M_a15
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4_5M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4M_a15
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_3M_a13
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.type	g_pGfxOrgZoomCoef, %object
	.size	g_pGfxOrgZoomCoef, 224
g_pGfxOrgZoomCoef:
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6_75M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_cubic
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_cubic
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_lanczos2_6M_a15
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_lanczos2_6M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_lanczos2_5M_a15
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_lanczos2_5M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4_5M_a15
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4_5M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4M_a15
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_4M_a15
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_lanczos2_3M_a13
	.word	gfxcoefficient2h_guass2_6_75M_a0_5
	.word	gfxcoefficient2v_guass2_6M_a0_5
	.word	gfxcoefficient2h_4M_0_1
	.word	gfxcoefficient2v_4M_0_1
	.type	g_pSDGfxOrgZoomCoef, %object
	.size	g_pSDGfxOrgZoomCoef, 112
g_pSDGfxOrgZoomCoef:
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient8_lanczos3_8tap
	.word	gfxcoefficient4_6M_a15
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_cubic
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_lanczos2_8tap
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.word	gfxcoefficient8_3M_a19
	.word	gfxcoefficient4_3M_a13
	.type	coefficient8t8p_cubic, %object
	.size	coefficient8t8p_cubic, 128
coefficient8t8p_cubic:
	.short	0
	.short	0
	.short	0
	.short	511
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-3
	.short	11
	.short	-41
	.short	496
	.short	61
	.short	-16
	.short	4
	.short	0
	.short	-4
	.short	17
	.short	-63
	.short	451
	.short	138
	.short	-35
	.short	9
	.short	-1
	.short	-4
	.short	18
	.short	-70
	.short	386
	.short	222
	.short	-52
	.short	14
	.short	-2
	.short	-3
	.short	17
	.short	-65
	.short	307
	.short	307
	.short	-65
	.short	17
	.short	-3
	.short	-2
	.short	14
	.short	-52
	.short	222
	.short	386
	.short	-70
	.short	18
	.short	-4
	.short	-1
	.short	9
	.short	-35
	.short	138
	.short	451
	.short	-63
	.short	17
	.short	-4
	.short	0
	.short	4
	.short	-16
	.short	61
	.short	496
	.short	-41
	.short	11
	.short	-3
	.type	coefficient8t8p_3M, %object
	.size	coefficient8t8p_3M, 128
coefficient8t8p_3M:
	.short	-46
	.short	29
	.short	165
	.short	236
	.short	165
	.short	29
	.short	-46
	.short	-20
	.short	-47
	.short	14
	.short	150
	.short	236
	.short	182
	.short	45
	.short	-43
	.short	-25
	.short	-47
	.short	0
	.short	134
	.short	235
	.short	197
	.short	62
	.short	-39
	.short	-30
	.short	-45
	.short	-12
	.short	116
	.short	230
	.short	211
	.short	80
	.short	-32
	.short	-36
	.short	-41
	.short	-23
	.short	98
	.short	222
	.short	222
	.short	98
	.short	-23
	.short	-41
	.short	-36
	.short	-32
	.short	80
	.short	211
	.short	230
	.short	116
	.short	-12
	.short	-45
	.short	-30
	.short	-39
	.short	62
	.short	197
	.short	235
	.short	134
	.short	0
	.short	-47
	.short	-25
	.short	-43
	.short	45
	.short	182
	.short	236
	.short	150
	.short	14
	.short	-47
	.type	coefficient8t8p_lanczos2, %object
	.size	coefficient8t8p_lanczos2, 128
coefficient8t8p_lanczos2:
	.short	-16
	.short	0
	.short	145
	.short	254
	.short	145
	.short	0
	.short	-16
	.short	0
	.short	-13
	.short	-9
	.short	123
	.short	252
	.short	167
	.short	11
	.short	-19
	.short	0
	.short	-10
	.short	-15
	.short	101
	.short	245
	.short	188
	.short	25
	.short	-21
	.short	-1
	.short	-7
	.short	-19
	.short	80
	.short	236
	.short	206
	.short	41
	.short	-22
	.short	-3
	.short	-5
	.short	-21
	.short	60
	.short	222
	.short	222
	.short	60
	.short	-21
	.short	-5
	.short	-3
	.short	-22
	.short	41
	.short	206
	.short	236
	.short	80
	.short	-19
	.short	-7
	.short	-1
	.short	-21
	.short	25
	.short	188
	.short	245
	.short	101
	.short	-15
	.short	-10
	.short	0
	.short	-19
	.short	11
	.short	167
	.short	252
	.short	123
	.short	-9
	.short	-13
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
