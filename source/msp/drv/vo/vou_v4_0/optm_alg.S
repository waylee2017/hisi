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
	.text
	.align	2
	.global	DetectStillBlk
	.type	DetectStillBlk, %function
DetectStillBlk:
	UNWIND(.fnstart)
.LFB1:
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
	ldr	r4, [r1, #12]
	movw	ip, #278
	ldr	sl, [r1, #16]
	mov	r7, #284
	ldrh	r6, [r2, ip]
	mov	r5, #276
	movw	r9, #286
	ldrh	r1, [r2, r5]
	mul	r3, r4, sl
	str	r6, [fp, #-48]
	ldr	r8, [fp, #-48]
	movw	r6, #290
	mov	r5, #296
	movw	r4, #302
	str	r1, [fp, #-52]
	mov	r1, #308
	movw	sl, #314
	mov	r3, r3, asr #11
	cmp	r3, r8
	ldrh	r8, [r2, r7]
	strh	r8, [r2, r9]	@ movhi
	movw	r8, #282
	ldrh	r9, [r2, r8]
	mov	r8, #292
	strh	r9, [r2, r7]	@ movhi
	mov	r9, #288
	ldrh	r7, [r2, r6]
	strh	r7, [r2, r8]	@ movhi
	ldrh	r7, [r2, r9]
	movw	r9, #298
	strh	r7, [r2, r6]	@ movhi
	movw	r7, #294
	ldrh	r8, [r2, r5]
	strh	r8, [r2, r9]	@ movhi
	mov	r9, #300
	ldrh	r6, [r2, r7]
	strh	r6, [r2, r5]	@ movhi
	mov	r5, #304
	ldrh	r8, [r2, r4]
	movw	r6, #310
	strh	r8, [r2, r5]	@ movhi
	movw	r5, #306
	ldrh	r7, [r2, r9]
	strh	r7, [r2, r4]	@ movhi
	mov	r7, #316
	ldrh	r4, [r2, r1]
	strh	r4, [r2, r6]	@ movhi
	mov	r6, #320
	ldrh	r8, [r2, r5]
	strh	r8, [r2, r1]	@ movhi
	mov	r1, #312
	ldrh	r9, [r2, sl]
	movw	r8, #322
	strh	r9, [r2, r7]	@ movhi
	movw	r9, #318
	ldrh	r4, [r2, r1]
	mov	r7, #320
	strh	r4, [r2, sl]	@ movhi
	ldrh	r5, [r2, r6]
	mov	r6, #280
	strh	r5, [r2, r8]	@ movhi
	movw	r5, #326
	ldrh	r1, [r2, r9]
	strh	r1, [r2, r7]	@ movhi
	mov	r7, #328
	ldr	r4, [fp, #-48]
	mov	r1, #324
	ldr	r8, [fp, #-52]
	strh	r4, [r2, r6]	@ movhi
	movw	r4, #326
	strh	r8, [r2, ip]	@ movhi
	mov	r8, #332
	ldrh	r9, [r2, r5]
	strh	r9, [r2, r7]	@ movhi
	movw	r9, #334
	ldrh	r6, [r2, r1]
	movw	r7, #330
	strh	r6, [r2, r4]	@ movhi
	mov	r4, #332
	ldrh	r5, [r2, r8]
	movw	r6, #338
	strh	r5, [r2, r9]	@ movhi
	mov	r9, #340
	ldrh	r1, [r2, r7]
	mov	r5, #336
	movw	r7, #338
	strh	r1, [r2, r4]	@ movhi
	mov	r1, #344
	ldrh	r8, [r2, r6]
	strh	r8, [r2, r9]	@ movhi
	movw	r8, #346
	ldrh	r4, [r2, r5]
	movw	r9, #342
	mov	r5, #344
	strh	r4, [r2, r7]	@ movhi
	movw	r4, #350
	ldrh	r6, [r2, r1]
	strh	r6, [r2, r8]	@ movhi
	mov	r6, #352
	ldrh	r7, [r2, r9]
	mov	r8, #348
	movw	r9, #350
	strh	r7, [r2, r5]	@ movhi
	mov	r7, #356
	ldrh	r1, [r2, r4]
	strh	r1, [r2, r6]	@ movhi
	movw	r1, #358
	ldrh	r5, [r2, r8]
	movw	r6, #354
	mov	r8, #356
	strh	r5, [r2, r9]	@ movhi
	movw	r5, #362
	ldrh	r4, [r2, r7]
	strh	r4, [r2, r1]	@ movhi
	mov	r4, #364
	ldrh	r9, [r2, r6]
	mov	r1, #360
	movw	r6, #362
	strh	r9, [r2, r8]	@ movhi
	mov	r8, #368
	ldrh	r7, [r2, r5]
	strh	r7, [r2, r4]	@ movhi
	movw	r7, #370
	ldrh	r9, [r2, r1]
	movw	r4, #366
	strh	r9, [r2, r6]	@ movhi
	mov	r6, #368
	ldrh	r5, [r2, r8]
	strh	r5, [r2, r7]	@ movhi
	ldrh	r1, [r2, r4]
	strh	r1, [r2, r6]	@ movhi
	mov	r1, r0
	ble	.L2
	ldr	r0, [fp, #-52]
	cmp	r3, r0
	bgt	.L21
.L2:
	mov	ip, #0
.L3:
	movw	r4, #286
	ldrh	r8, [r1, #152]
	ldrh	r7, [r2, r4]
	mov	r9, #276
	cmp	r3, r7
	strh	r8, [r2, r9]	@ movhi
	ble	.L4
	movw	r6, #282
	ldrh	r5, [r2, r6]
	cmp	r3, r5
	bgt	.L22
.L4:
	mov	r5, #292
	ldrh	r9, [r1, #156]
	ldrh	r8, [r2, r5]
	movw	r4, #282
	cmp	r3, r8
	strh	r9, [r2, r4]	@ movhi
	ble	.L5
	mov	r0, #288
	ldrh	r6, [r2, r0]
	cmp	r3, r6
	bgt	.L23
.L5:
	movw	r6, #298
	ldrh	r5, [r1, #160]
	ldrh	r9, [r2, r6]
	mov	r4, #288
	cmp	r3, r9
	strh	r5, [r2, r4]	@ movhi
	ble	.L6
	movw	r7, #294
	ldrh	r0, [r2, r7]
	cmp	r3, r0
	bgt	.L24
.L6:
	mov	r0, #304
	ldrh	r6, [r1, #164]
	ldrh	r5, [r2, r0]
	movw	r4, #294
	cmp	r3, r5
	strh	r6, [r2, r4]	@ movhi
	ble	.L7
	mov	r8, #300
	ldrh	r7, [r2, r8]
	cmp	r3, r7
	bgt	.L25
.L7:
	movw	r0, #310
	ldrh	r7, [r1, #168]
	ldrh	r6, [r2, r0]
	mov	r4, #300
	cmp	r3, r6
	strh	r7, [r2, r4]	@ movhi
	ble	.L8
	movw	r9, #306
	ldrh	r8, [r2, r9]
	cmp	r3, r8
	bgt	.L26
.L8:
	mov	r0, #316
	ldrh	r8, [r1, #172]
	ldrh	r7, [r2, r0]
	movw	r4, #306
	cmp	r3, r7
	strh	r8, [r2, r4]	@ movhi
	ble	.L9
	mov	r5, #312
	ldrh	r9, [r2, r5]
	cmp	r3, r9
	bgt	.L27
.L9:
	movw	r0, #322
	ldrh	r9, [r1, #176]
	ldrh	r8, [r2, r0]
	mov	r4, #312
	cmp	r3, r8
	strh	r9, [r2, r4]	@ movhi
	ble	.L10
	movw	r6, #318
	ldrh	r5, [r2, r6]
	cmp	r3, r5
	bgt	.L28
.L10:
	mov	r0, #328
	ldrh	r5, [r1, #180]
	ldrh	r9, [r2, r0]
	movw	r4, #318
	cmp	r3, r9
	strh	r5, [r2, r4]	@ movhi
	ble	.L11
	mov	r7, #324
	ldrh	r6, [r2, r7]
	cmp	r3, r6
	bgt	.L29
.L11:
	movw	r0, #334
	ldrh	r6, [r1, #184]
	ldrh	r5, [r2, r0]
	mov	r4, #324
	cmp	r3, r5
	strh	r6, [r2, r4]	@ movhi
	ble	.L12
	movw	r8, #330
	ldrh	r7, [r2, r8]
	cmp	r3, r7
	bgt	.L30
.L12:
	mov	r0, #340
	ldrh	r7, [r1, #188]
	ldrh	r6, [r2, r0]
	movw	r4, #330
	cmp	r3, r6
	strh	r7, [r2, r4]	@ movhi
	ble	.L13
	mov	r9, #336
	ldrh	r8, [r2, r9]
	cmp	r3, r8
	bgt	.L31
.L13:
	movw	r0, #346
	ldrh	r8, [r1, #192]
	ldrh	r7, [r2, r0]
	mov	r4, #336
	cmp	r3, r7
	strh	r8, [r2, r4]	@ movhi
	ble	.L14
	movw	r5, #342
	ldrh	r9, [r2, r5]
	cmp	r3, r9
	bgt	.L32
.L14:
	mov	r0, #352
	ldrh	r9, [r1, #196]
	ldrh	r8, [r2, r0]
	movw	r4, #342
	cmp	r3, r8
	strh	r9, [r2, r4]	@ movhi
	ble	.L15
	mov	r6, #348
	ldrh	r5, [r2, r6]
	cmp	r3, r5
	bgt	.L33
.L15:
	movw	r5, #358
	mov	r4, #348
	ldrh	r0, [r2, r5]
	ldrh	r5, [r1, #200]
	cmp	r3, r0
	strh	r5, [r2, r4]	@ movhi
	ble	.L16
	movw	r7, #354
	ldrh	r6, [r2, r7]
	cmp	r3, r6
	bgt	.L34
.L16:
	mov	r6, #364
	movw	r4, #354
	ldrh	r7, [r2, r6]
	ldrh	r6, [r1, #204]
	cmp	r3, r7
	strh	r6, [r2, r4]	@ movhi
	ble	.L17
	mov	r0, #360
	ldrh	r8, [r2, r0]
	cmp	r3, r8
	bgt	.L35
.L17:
	movw	r0, #370
	ldrh	r7, [r1, #208]
	ldrh	r8, [r2, r0]
	mov	r4, #360
	cmp	r3, r8
	strh	r7, [r2, r4]	@ movhi
	ble	.L18
	movw	r0, #366
	ldrh	r8, [r2, r0]
	cmp	r3, r8
	ble	.L18
	mov	r0, #368
	ldrh	r8, [r2, r0]
	cmp	r3, r8
	addgt	ip, ip, #1
.L18:
	ldrh	r8, [r1, #212]
	movw	r3, #366
	mov	r0, ip
	strh	r8, [r2, r3]	@ movhi
	str	ip, [r1, #148]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L35:
	movw	r4, #362
	ldrh	r7, [r2, r4]
	cmp	r3, r7
	addgt	ip, ip, #1
	b	.L17
.L34:
	mov	r0, #356
	ldrh	r8, [r2, r0]
	cmp	r3, r8
	addgt	ip, ip, #1
	b	.L16
.L33:
	movw	r8, #350
	ldrh	r7, [r2, r8]
	cmp	r3, r7
	addgt	ip, ip, #1
	b	.L15
.L32:
	mov	r7, #344
	ldrh	r6, [r2, r7]
	cmp	r3, r6
	addgt	ip, ip, #1
	b	.L14
.L31:
	movw	r6, #338
	ldrh	r5, [r2, r6]
	cmp	r3, r5
	addgt	ip, ip, #1
	b	.L13
.L30:
	mov	r5, #332
	ldrh	r9, [r2, r5]
	cmp	r3, r9
	addgt	ip, ip, #1
	b	.L12
.L29:
	movw	r9, #326
	ldrh	r8, [r2, r9]
	cmp	r3, r8
	addgt	ip, ip, #1
	b	.L11
.L28:
	mov	r8, #320
	ldrh	r7, [r2, r8]
	cmp	r3, r7
	addgt	ip, ip, #1
	b	.L10
.L27:
	movw	r7, #314
	ldrh	r6, [r2, r7]
	cmp	r3, r6
	addgt	ip, ip, #1
	b	.L9
.L26:
	mov	r6, #308
	ldrh	r5, [r2, r6]
	cmp	r3, r5
	addgt	ip, ip, #1
	b	.L8
.L25:
	movw	r5, #302
	ldrh	r9, [r2, r5]
	cmp	r3, r9
	addgt	ip, ip, #1
	b	.L7
.L24:
	mov	r9, #296
	ldrh	r8, [r2, r9]
	cmp	r3, r8
	addgt	ip, ip, #1
	b	.L6
.L23:
	movw	r8, #290
	ldrh	r7, [r2, r8]
	cmp	r3, r7
	addgt	ip, ip, #1
	b	.L5
.L22:
	mov	r7, #284
	ldrh	r0, [r2, r7]
	cmp	r3, r0
	addgt	ip, ip, #1
	b	.L4
.L21:
	ldrh	ip, [r2, ip]
	cmp	r3, ip
	movle	ip, #0
	movgt	ip, #1
	b	.L3
	UNWIND(.fnend)
	.size	DetectStillBlk, .-DetectStillBlk
	.global	__aeabi_idiv
	.align	2
	.global	DetectFieldOrder
	.type	DetectFieldOrder, %function
DetectFieldOrder:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #36)
	sub	sp, sp, #36
	ldr	r5, [r2, #0]
	mov	r4, r3
	ldr	r9, [r2, #12]
	cmp	r5, #2
	ldr	r3, [r0, #148]
	ldr	ip, [r2, #16]
	moveq	r0, r5
	streqb	r5, [r4, #144]
	beq	.L38
	cmp	r5, #1
	beq	.L84
.L39:
	cmp	r1, #0
	beq	.L81
	ldr	r2, [r2, #4]
	rsb	r3, r3, #16
	ldr	r5, [r0, #144]
	cmp	r2, #1
	mul	ip, r9, ip
	ldreq	r6, [r0, #136]
	ldrne	r6, [r0, #140]
	ldreq	r7, [r0, #140]
	ldrne	r7, [r0, #136]
	cmp	r5, r6
	movge	r1, r5
	movlt	r1, r6
	cmp	r1, #254
	movgt	lr, r1, asr #31
	movwgt	r0, #:lower16:1717986919
	movtgt	r0, #:upper16:1717986919
	movle	r2, #50
	smullgt	r8, r2, r0, r1
	rsbgt	r2, lr, r2, asr #1
	add	r2, r2, r1
	cmp	r5, r7
	movge	r1, r5
	movlt	r1, r7
	cmp	r2, r7
	movge	r2, #0
	movlt	r2, #1
	cmp	r1, #254
	movgt	r8, r1, asr #31
	movwgt	lr, #:lower16:1717986919
	movtgt	lr, #:upper16:1717986919
	movle	r0, #50
	smullgt	sl, r0, lr, r1
	rsbgt	r0, r8, r0, asr #1
	add	r0, r0, r1
	cmp	r7, r6
	movge	r1, r7
	movlt	r1, r6
	cmp	r0, r6
	movge	r0, #0
	movlt	r0, #1
	cmp	r1, #254
	str	r0, [fp, #-52]
	movgt	r8, r1, asr #31
	movwgt	r0, #:lower16:1717986919
	movtgt	r0, #:upper16:1717986919
	movle	lr, #50
	smullgt	sl, lr, r0, r1
	rsbgt	lr, r8, lr, asr #1
	cmp	r5, r6
	movlt	r0, r5
	movge	r0, r6
	add	lr, lr, r1
	cmp	lr, r5
	movge	lr, #0
	movlt	lr, #1
	cmp	r0, #254
	str	lr, [fp, #-56]
	movgt	r8, r0, asr #31
	movwgt	lr, #:lower16:1717986919
	movtgt	lr, #:upper16:1717986919
	movle	lr, #50
	smullgt	sl, lr, lr, r0
	rsbgt	lr, r8, lr, asr #1
	rsb	lr, lr, r0
	cmp	r5, r7
	movlt	r0, r5
	movge	r0, r7
	cmp	lr, r7
	movle	lr, #0
	movgt	lr, #1
	cmp	r0, #254
	str	lr, [fp, #-48]
	movgt	sl, r0, asr #31
	movwgt	lr, #:lower16:1717986919
	movtgt	lr, #:upper16:1717986919
	movle	sl, #50
	smullgt	r8, lr, lr, r0
	rsbgt	sl, sl, lr, asr #1
	cmp	r7, r6
	movlt	r8, r7
	movge	r8, r6
	rsb	sl, sl, r0
	cmp	sl, r6
	movle	sl, #0
	movgt	sl, #1
	cmp	r8, #254
	movgt	lr, r8, asr #31
	strgt	lr, [fp, #-72]
	movwgt	r0, #:lower16:1717986919
	movtgt	r0, #:upper16:1717986919
	movle	r0, #50
	smullgt	lr, r0, r0, r8
	ldrgt	lr, [fp, #-72]
	rsbgt	r0, lr, r0, asr #1
	mov	lr, ip, asr #9
	rsb	r9, r0, r8
	add	r0, lr, #31
	cmp	r9, r5
	movle	r9, #0
	movgt	r9, #1
	cmp	lr, #0
	movlt	lr, r0
	mov	ip, lr, asr #5
	mul	lr, r3, ip
	cmp	lr, #0
	add	r0, lr, #15
	movlt	lr, r0
	mov	ip, lr, asr #4
	add	r0, ip, ip, asl #1
	add	r3, r0, r0, lsr #31
	mov	r3, r3, asr #1
	cmp	r3, #6
	movlt	r3, #6
	cmp	r1, #100
	ble	.L58
	rsb	ip, r8, r1
	mov	lr, #100
	str	r2, [fp, #-60]
	mul	r0, lr, ip
	str	r3, [fp, #-64]
	bl	__aeabi_idiv
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	cmp	r0, #19
	ble	.L59
.L58:
	mov	r1, r3
	rsb	r0, r6, r7
	str	r2, [fp, #-60]
	bl	__aeabi_idiv
	ldr	r2, [fp, #-60]
	add	r3, r0, #49
	cmp	r3, #98
	bls	.L59
	cmp	r0, #500
	movgt	r3, #500
	ble	.L85
.L61:
	uxtb	r1, r2
	eor	r0, sl, #1
	tst	r1, r0
	beq	.L62
.L87:
	cmp	r3, #50
	movlt	r3, #50
.L63:
	cmp	r9, #0
	beq	.L64
.L88:
	add	r5, r5, r5, asl #2
	cmp	r8, r5, asl #1
	ldrgt	r1, [r4, #424]
	movgt	r3, #0
	movle	r1, #0
	addgt	r1, r1, #1
	str	r1, [r4, #424]
.L66:
	ldr	r8, [fp, #-52]
	ldr	ip, [fp, #-48]
	orr	r2, r8, r2
	ldr	r8, [fp, #-56]
	orr	lr, r2, r8
	orr	r2, lr, ip
	orr	sl, r2, sl
	orrs	sl, sl, r9
	bne	.L68
	cmp	r3, #50
	movge	r3, #50
	mvn	r0, #49
	cmp	r3, r0
	movlt	r3, r0
.L68:
	cmp	r1, #50
	ldr	r1, [r4, #140]
	add	r3, r3, r1
	str	r3, [r4, #140]
	movhi	r3, #0
	strhi	r3, [r4, #424]
	strhi	r3, [r4, #140]
	bhi	.L81
	cmp	r3, #1000
	movgt	r3, #1000
	strgt	r3, [r4, #140]
	ble	.L86
.L72:
	mov	r0, #0
	strb	r0, [r4, #144]
.L38:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L90:
	cmp	r3, #200
	bgt	.L72
	cmn	r3, #200
	blt	.L73
.L81:
	ldrsb	r0, [r4, #144]
	b	.L38
.L59:
	uxtb	r1, r2
	eor	r0, sl, #1
	tst	r1, r0
	mov	r3, #0
	bne	.L87
.L62:
	ldr	r0, [fp, #-48]
	ldr	ip, [fp, #-52]
	eor	lr, r0, #1
	tst	lr, ip
	beq	.L63
	mvn	lr, #49
	cmp	r3, lr
	movge	r3, lr
	cmp	r9, #0
	bne	.L88
.L64:
	ldr	r8, [fp, #-56]
	cmp	r8, #0
	bne	.L67
	tst	r1, sl
	bne	.L82
	ldr	r1, [fp, #-48]
	ldr	ip, [fp, #-52]
	tst	r1, ip
	beq	.L80
.L82:
	ldr	r1, [r4, #424]
	b	.L66
.L84:
	ldr	r5, [r2, #4]
	cmp	r5, #0
	beq	.L89
	cmp	r5, #1
	bne	.L39
	ldr	r5, [r2, #8]
	cmp	r5, #1
	bne	.L39
	ldrsb	r0, [r4, #144]
	b	.L38
.L80:
	ldr	r0, [fp, #-48]
	orrs	ip, sl, r0
	beq	.L82
.L67:
	ldr	r1, [r4, #424]
	mov	r3, #0
	b	.L66
.L89:
	ldr	r5, [r2, #8]
	cmp	r5, #0
	bne	.L39
	ldrsb	r0, [r4, #144]
	b	.L38
.L85:
	movw	r3, #:lower16:-500
	movt	r3, #:upper16:-500
	cmp	r0, r3
	movge	r3, r0
	movlt	r3, r3
	b	.L61
.L86:
	cmn	r3, #1000
	movwlt	r3, #:lower16:-1000
	movtlt	r3, #:upper16:-1000
	strlt	r3, [r4, #140]
	bge	.L90
.L73:
	mov	r0, #1
	strb	r0, [r4, #144]
	b	.L38
	UNWIND(.fnend)
	.size	DetectFieldOrder, .-DetectFieldOrder
	.align	2
	.global	DetectSceneChange
	.type	DetectSceneChange, %function
DetectSceneChange:
	UNWIND(.fnstart)
.LFB3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r2, [r0, #0]
	mov	r3, r0
	ldr	r6, [r0, #4]
	movw	r7, #:lower16:200000
	ldr	r5, [r0, #8]
	movt	r7, #:upper16:200000
	ldr	r4, [r0, #12]
	cmp	r6, r2
	movlt	sl, r6
	movge	sl, r2
	add	ip, r6, r2
	cmp	r5, sl
	movlt	r8, r5
	movge	r8, sl
	cmp	r6, r2
	movge	r9, r6
	movlt	r9, r2
	add	r0, r5, ip
	ldr	ip, [r3, #16]
	cmp	r5, r9
	movge	sl, r5
	movlt	sl, r9
	ldr	r2, [r3, #20]
	cmp	r4, r8
	movlt	r9, r4
	movge	r9, r8
	add	r0, r4, r0
	cmp	ip, r9
	movlt	r8, ip
	movge	r8, r9
	cmp	r4, sl
	movge	sl, r4
	movlt	sl, sl
	add	r9, ip, r0
	cmp	r2, r8
	movlt	r8, r2
	movge	r8, r8
	cmp	ip, sl
	movge	sl, ip
	movlt	sl, sl
	add	r0, r2, r9
	ldr	r9, [r1, #132]
	cmp	r2, sl
	movge	sl, r2
	movlt	sl, sl
	rsb	r0, r8, r0
	ldr	r8, [r1, #128]
	rsb	r0, sl, r0
	ldr	r1, [r1, #124]
	add	sl, r0, #3
	cmp	r0, #0
	add	r8, r8, r9, asl #1
	str	r6, [r3, #0]
	movlt	r0, sl
	add	r1, r1, r8, asl #1
	mov	r0, r0, asr #2
	str	r5, [r3, #4]
	mov	r1, r1, asl #1
	str	r4, [r3, #8]
	cmp	r1, r0, asl #1
	str	r1, [r3, #20]
	str	ip, [r3, #12]
	movle	r0, #0
	movgt	r0, #1
	str	r2, [r3, #16]
	cmp	r1, r7
	movle	r0, #0
	andgt	r0, r0, #1
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	DetectSceneChange, .-DetectSceneChange
	.align	2
	.global	OverLapedTitleCheck
	.type	OverLapedTitleCheck, %function
OverLapedTitleCheck:
	UNWIND(.fnstart)
.LFB4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r0, #20]
	ldr	r0, [r0, #24]
	cmp	r0, r3
	movge	r0, r3
	cmp	r0, #64
	movle	r0, #0
	movgt	r0, #1
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OverLapedTitleCheck, .-OverLapedTitleCheck
	.align	2
	.global	Check32PdPattern
	.type	Check32PdPattern, %function
Check32PdPattern:
	UNWIND(.fnstart)
.LFB5:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #108)
	sub	sp, sp, #108
	sub	r4, fp, #136
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	mov	r0, r4
	movw	r1, #:lower16:.LANCHOR0
	mov	r2, #100
	movt	r1, #:upper16:.LANCHOR0
	mov	r7, r3
	bl	memcpy
	ldr	r3, [fp, #4]
	add	r5, r5, r5, asl #2
	cmp	r3, r7, asl #1
	add	r3, r4, r5, asl #2
	movlt	r0, #0
	blt	.L97
	ldr	r2, [r4, r5, asl #2]
	cmp	r2, #0
	beq	.L98
	ldr	r0, [r6, #0]
	ldr	ip, [r3, #4]
	cmp	r8, r0, asl #5
	movge	r2, #0
	movlt	r2, #1
	cmp	ip, #0
	beq	.L100
.L109:
	ldr	r0, [r6, #4]
	mov	lr, r0, asl #5
	cmp	lr, r8
	movle	r0, r2
	addgt	r0, r2, #1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	beq	.L102
.L110:
	ldr	lr, [r6, #8]
	mov	ip, lr, asl #5
	cmp	ip, r8
	movle	r1, r0
	addgt	r1, r0, #1
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L104
.L111:
	ldr	ip, [r6, #12]
	ldr	r3, [r3, #16]
	mov	r2, ip, asl #5
	cmp	r2, r8
	movle	r2, r1
	addgt	r2, r1, #1
	cmp	r3, #0
	bne	.L106
.L112:
	ldr	r1, [r6, #16]
	cmp	r1, r7
	movne	r0, r2
	addeq	r0, r2, #1
.L107:
	cmp	r0, #4
	movle	r0, #0
	movgt	r0, #1
.L97:
	sub	sp, fp, #32
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L98:
	ldr	r1, [r6, #0]
	ldr	ip, [r3, #4]
	cmp	r1, r7
	movne	r2, #0
	moveq	r2, #1
	cmp	ip, #0
	bne	.L109
.L100:
	ldr	r1, [r6, #4]
	cmp	r1, r7
	movne	r0, r2
	addeq	r0, r2, #1
	ldr	r2, [r3, #8]
	cmp	r2, #0
	bne	.L110
.L102:
	ldr	r1, [r6, #8]
	cmp	r1, r7
	movne	r1, r0
	addeq	r1, r0, #1
	ldr	r0, [r3, #12]
	cmp	r0, #0
	bne	.L111
.L104:
	ldr	lr, [r6, #12]
	ldr	r3, [r3, #16]
	cmp	lr, r7
	movne	r2, r1
	addeq	r2, r1, #1
	cmp	r3, #0
	beq	.L112
.L106:
	ldr	ip, [r6, #16]
	mov	r0, ip, asl #5
	cmp	r0, r8
	movle	r0, r2
	addgt	r0, r2, #1
	b	.L107
	UNWIND(.fnend)
	.size	Check32PdPattern, .-Check32PdPattern
	.align	2
	.global	Calc32PLD
	.type	Calc32PLD, %function
Calc32PLD:
	UNWIND(.fnstart)
.LFB6:
	@ args = 8, pretend = 0, frame = 72
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
	ldr	r4, [fp, #8]
	str	r0, [fp, #-80]
	str	r1, [fp, #-112]
	add	r0, r4, #68
	str	r3, [fp, #-88]
	str	r0, [fp, #-96]
	ldr	lr, [r4, #80]
	ldr	r3, [r4, #76]
	str	r2, [lr, #0]
	ldr	ip, [r4, #80]
	ldr	r2, [r4, #72]
	add	r1, ip, #4
	cmp	r1, r0
	add	r2, r2, #1
	addhi	r1, r4, #8
	cmp	r2, #4
	str	r1, [r4, #80]
	str	r2, [r4, #72]
	ble	.L180
	ldr	r0, [r3, #0]
	add	ip, r4, #8
	ldr	r5, [fp, #-96]
	str	ip, [fp, #-104]
	str	r0, [fp, #-64]
	ldr	r7, [r3], #4
	ldr	r9, [fp, #-96]
	cmp	r5, r3
	ldr	sl, [fp, #-104]
	movcs	ip, r3
	cmp	r0, r7
	movlt	r5, r0
	movge	r5, r7
	ldr	r3, [ip, #0]
	cmp	r7, r0
	movlt	r7, r0
	add	r1, ip, #4
	ldr	r0, [fp, #-96]
	str	r3, [fp, #-60]
	ldr	lr, [ip, #0]
	ldr	ip, [fp, #-104]
	cmp	lr, r5
	movlt	r3, #1
	movge	r3, #0
	movlt	r5, lr
	cmp	r7, lr
	movlt	r7, lr
	cmp	r9, r1
	movcc	r1, sl
	add	r9, r1, #4
	ldr	r6, [r1, #0]
	str	r6, [fp, #-56]
	ldr	r8, [r1, #0]
	ldr	r6, [fp, #-96]
	cmp	r5, r8
	movgt	r3, #2
	movgt	r5, r8
	cmp	r7, r8
	movlt	r7, r8
	cmp	r0, r9
	ldr	r8, [fp, #-104]
	sub	r0, r2, #1
	movcc	r9, ip
	add	r1, r9, #4
	ldr	lr, [r9, #0]
	ldr	r2, [fp, #-56]
	str	lr, [fp, #-52]
	ldr	sl, [r9, #0]
	ldr	r9, [fp, #-52]
	cmp	r5, sl
	movgt	r3, #3
	movgt	r5, sl
	cmp	r7, sl
	movlt	r7, sl
	cmp	r6, r1
	ldr	r6, [fp, #-64]
	movcc	r1, r8
	ldr	r8, [r1, #0]
	str	r8, [fp, #-48]
	ldr	ip, [r1, #0]
	str	r0, [fp, #-84]
	mov	r0, #0
	cmp	ip, r5
	ldr	r1, [fp, #-60]
	str	r9, [fp, #-76]
	sub	r9, fp, #64
	movlt	r3, #4
	movlt	r5, ip
	cmp	ip, r7
	movge	r7, ip
	movlt	r7, r7
	ldr	ip, [fp, #-84]
	cmp	r3, #0
	cmpne	r7, r6
	ldr	lr, [r4, #76]
	movle	r6, r7
	cmp	r3, #1
	cmpne	r6, r1
	add	sl, lr, #4
	str	sl, [fp, #-72]
	str	ip, [r4, #72]
	movgt	r6, r1
	ldr	r1, [fp, #-76]
	cmp	r3, #2
	cmpne	r6, r2
	ldr	lr, [fp, #-76]
	movgt	sl, r2
	movle	sl, r6
	cmp	r3, #3
	cmpne	sl, r1
	ldr	r6, [fp, #-72]
	mov	r1, r9
	movgt	sl, lr
	cmp	r3, #4
	cmpne	r8, sl
	ldr	ip, [fp, #-96]
	mov	r2, r7
	movge	r8, sl
	ldr	sl, [fp, #-104]
	cmp	ip, r6
	mov	r3, r5
	movcs	sl, r6
	str	sl, [r4, #76]
	ldr	r6, [fp, #-112]
	ldr	lr, [r6, #20]
	ldr	ip, [r6, #24]
	str	r8, [sp, #0]
	cmp	ip, lr
	movge	ip, lr
	cmp	ip, #64
	movle	ip, #0
	movgt	ip, #1
	str	ip, [fp, #-76]
	strb	ip, [r4, #113]
	bl	Check32PdPattern
	cmp	r0, #0
	mvneq	sl, #0
	bne	.L181
.L133:
	mov	r6, #1
	mvn	r3, #0
	str	r3, [fp, #-72]
.L134:
	mov	r0, #1
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	str	r8, [sp, #0]
	bl	Check32PdPattern
	cmp	r0, #0
	bne	.L140
.L141:
	add	r6, r6, #1
.L142:
	mov	r0, #2
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	str	r8, [sp, #0]
	bl	Check32PdPattern
	cmp	r0, #0
	bne	.L148
.L149:
	add	r6, r6, #1
.L150:
	mov	r0, #3
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	str	r8, [sp, #0]
	bl	Check32PdPattern
	cmp	r0, #0
	bne	.L156
.L157:
	add	r6, r6, #1
.L158:
	mov	r1, r9
	mov	r2, r7
	mov	r3, r5
	mov	r0, #4
	str	r8, [sp, #0]
	bl	Check32PdPattern
	cmp	r0, #0
	bne	.L182
.L164:
	add	r6, r6, #1
.L169:
	ldr	lr, [fp, #-76]
	cmp	r6, #4
	orrgt	lr, lr, #1
	cmp	lr, #0
	mov	r6, lr
	beq	.L183
	ldr	r1, [fp, #-76]
	cmp	r1, #0
	movne	r2, #0
	strneb	r2, [r4, #110]
	beq	.L171
.L173:
	ldrsb	r3, [r4, #110]
	mov	r1, #0
	sxtb	r2, r2
	strb	r1, [r4, #112]
	str	r2, [r4, #116]
	str	r3, [r4, #132]
	str	r3, [r4, #120]
	str	r3, [r4, #124]
	str	r3, [r4, #128]
	strb	r1, [r4, #109]
	strb	r1, [r4, #111]
.L174:
	uxtb	sl, sl
.L177:
	strb	sl, [r4, #136]
	add	r1, r4, #109
	ldr	r0, [fp, #-80]
	mov	r2, #5
	bl	memcpy
	b	.L113
.L183:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L184
.L171:
	ldrb	r0, [r4, #110]	@ zero_extendqisi2
	sub	ip, r0, #1
	sxtb	lr, ip
	cmp	lr, #4
	movge	lr, #4
	bic	r2, lr, lr, asr #31
	uxtb	r2, r2
	strb	r2, [r4, #110]
	b	.L173
.L182:
	cmp	r0, #1
	bne	.L165
	ldrsb	r3, [r4, #136]
	cmp	r3, #3
	beq	.L166
	cmp	r3, #8
	beq	.L166
.L165:
	mov	sl, #4
	b	.L164
.L156:
	cmp	r0, #1
	bne	.L159
	ldrsb	r3, [r4, #136]
	cmp	r3, #2
	beq	.L163
	cmp	r3, #7
	beq	.L163
.L159:
	mov	sl, #3
	b	.L157
.L148:
	cmp	r0, #1
	bne	.L151
	ldrsb	r3, [r4, #136]
	cmp	r3, #1
	beq	.L155
	cmp	r3, #6
	beq	.L155
.L151:
	mov	sl, #2
	b	.L149
.L181:
	cmp	r0, #1
	bne	.L135
	ldrsb	r3, [r4, #136]
	cmn	r3, #1
	beq	.L139
	cmp	r3, #4
	beq	.L139
.L135:
	mov	sl, #0
	b	.L133
.L140:
	cmp	r0, #1
	bne	.L143
	ldrsb	r3, [r4, #136]
	cmp	r3, #0
	beq	.L147
	cmp	r3, #5
	beq	.L147
.L143:
	mov	sl, #1
	b	.L141
.L180:
	mov	r3, #0
	mvn	r2, #0
	strb	r3, [r4, #112]
	add	r1, r4, #109
	strb	r2, [r4, #136]
	mov	r2, #5
	ldr	r0, [fp, #-80]
	strb	r3, [r4, #110]
	strb	r3, [r4, #109]
	bl	memcpy
.L113:
	ldr	r0, [fp, #-80]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L184:
	ldr	r1, [fp, #-72]
	add	ip, r1, #28
	and	r0, r1, #1
	add	r3, r4, ip, asl #2
	ldr	r2, [r3, #4]
	strb	r2, [r4, #110]
	ldr	r6, [r3, #4]
	cmp	r6, #3
	movle	r1, #0
	movgt	r1, #1
	ldr	r6, [fp, #-88]
	strb	r1, [r4, #109]
	cmp	r0, r6
	ldreq	lr, [fp, #-72]
	ldrne	ip, [fp, #-72]
	uxtbeq	r0, lr
	addne	r0, ip, #5
	ldr	lr, [fp, #-72]
	uxtbne	r0, r0
	strb	r0, [r4, #111]
	rsbs	ip, lr, #1
	movcc	ip, #0
	cmn	lr, #1
	strb	ip, [r4, #112]
	uxtbne	sl, lr
	bne	.L177
	b	.L174
.L166:
	ldr	sl, [r4, #132]
	add	r3, sl, #1
	str	r3, [r4, #132]
	cmp	r3, #0
	ble	.L167
	cmp	r3, #5
	movge	r3, #5
	mov	sl, #4
	cmp	r3, #3
	str	r3, [r4, #132]
	strle	sl, [fp, #-72]
	movgt	r3, #3
	strgt	r3, [r4, #128]
	strgt	sl, [fp, #-72]
	strgt	r3, [r4, #116]
	strgt	r3, [r4, #120]
	strgt	r3, [r4, #124]
	b	.L169
.L147:
	ldr	lr, [r4, #120]
	add	r3, lr, #1
	str	r3, [r4, #120]
	cmp	r3, #0
	ble	.L185
	cmp	r3, #5
	movge	r3, #5
	str	r3, [r4, #120]
	cmp	r3, #3
	movle	sl, #1
	strle	sl, [fp, #-72]
	ble	.L142
	mov	r0, #3
	mov	sl, #1
	str	r0, [r4, #132]
	str	sl, [fp, #-72]
	str	r0, [r4, #116]
	str	r0, [r4, #124]
	str	r0, [r4, #128]
	b	.L142
.L163:
	ldr	lr, [r4, #128]
	add	r3, lr, #1
	str	r3, [r4, #128]
	cmp	r3, #0
	ble	.L186
	cmp	r3, #5
	movge	r3, #5
	str	r3, [r4, #128]
	cmp	r3, #3
	movle	sl, #3
	strle	sl, [fp, #-72]
	ble	.L158
	mov	r0, #3
	str	r0, [r4, #116]
	str	r0, [r4, #120]
	mov	sl, r0
	str	r0, [r4, #124]
	str	r0, [fp, #-72]
	str	r0, [r4, #132]
	b	.L158
.L139:
	ldr	r2, [r4, #116]
	add	r3, r2, #1
	str	r3, [r4, #116]
	cmp	r3, #0
	ble	.L187
	cmp	r3, #5
	movge	r3, #5
	str	r3, [r4, #116]
	cmp	r3, #3
	movle	sl, #0
	strle	sl, [fp, #-72]
	movle	r6, sl
	ble	.L134
	mov	sl, #0
	mov	r1, #3
	mov	r6, sl
	str	r1, [r4, #132]
	str	sl, [fp, #-72]
	str	r1, [r4, #120]
	str	r1, [r4, #124]
	str	r1, [r4, #128]
	b	.L134
.L155:
	ldr	r3, [r4, #124]
	add	r3, r3, #1
	str	r3, [r4, #124]
	cmp	r3, #0
	ble	.L188
	cmp	r3, #5
	movge	r3, #5
	str	r3, [r4, #124]
	cmp	r3, #3
	movle	sl, #2
	strle	sl, [fp, #-72]
	ble	.L150
	mov	r1, #3
	mov	sl, #2
	str	r1, [r4, #132]
	str	sl, [fp, #-72]
	str	r1, [r4, #116]
	str	r1, [r4, #120]
	str	r1, [r4, #128]
	b	.L150
.L186:
	mov	sl, #3
	mov	ip, #0
	str	ip, [r4, #128]
	str	sl, [fp, #-72]
	b	.L158
.L188:
	mov	sl, #2
	mov	r2, #0
	str	r2, [r4, #124]
	str	sl, [fp, #-72]
	b	.L150
.L187:
	mov	sl, #0
	str	sl, [r4, #116]
	mov	r6, sl
	str	sl, [fp, #-72]
	b	.L134
.L185:
	mov	sl, #1
	mov	ip, #0
	str	ip, [r4, #120]
	str	sl, [fp, #-72]
	b	.L142
.L167:
	mov	sl, #4
	mov	lr, #0
	str	lr, [r4, #132]
	str	sl, [fp, #-72]
	b	.L169
	UNWIND(.fnend)
	.size	Calc32PLD, .-Calc32PLD
	.align	2
	.global	DummyRollCalc32Pld
	.type	DummyRollCalc32Pld, %function
DummyRollCalc32Pld:
	UNWIND(.fnstart)
.LFB7:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	ip, [r0, #80]
	add	r3, r0, #8
	add	r1, r0, #68
	sub	r2, ip, #4
	cmp	r2, r3
	movcc	r2, r1
	ldr	r4, [r2, #0]
	str	r4, [ip, #0]
	ldr	r2, [r0, #80]
	ldr	r4, [r0, #72]
	add	ip, r2, #4
	cmp	ip, r1
	add	r2, r4, #1
	str	r2, [r0, #72]
	movhi	ip, r3
	cmp	r2, #4
	str	ip, [r0, #80]
	ldmlefd	sp, {r4, fp, sp, pc}
	ldrb	ip, [r0, #136]	@ zero_extendqisi2
	ldr	r2, [r0, #76]
	add	ip, ip, #1
	str	r4, [r0, #72]
	add	r2, r2, #4
	cmp	r1, r2
	sxtb	ip, ip
	movcc	r2, r3
	cmp	ip, #5
	movge	ip, #5
	bic	r3, ip, ip, asr #31
	str	r2, [r0, #76]
	strb	r3, [r0, #136]
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	DummyRollCalc32Pld, .-DummyRollCalc32Pld
	.align	2
	.global	GetPlayBackConfig
	.type	GetPlayBackConfig, %function
GetPlayBackConfig:
	UNWIND(.fnstart)
.LFB8:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #52)
	sub	sp, sp, #52
	ldr	r6, .L210
	sub	ip, fp, #92
	mov	r5, r2
	mov	r8, r3
	stmia	ip, {r0, r1}
	sub	r4, fp, #84
	ldmia	r6!, {r0, r1, r2, r3}
	mov	r7, r4
	ldmib	fp, {r9, ip}	@ phole ldm
	ldrb	sl, [fp, #-90]	@ zero_extendqisi2
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	r6, {r0, r1}
	stmia	r7, {r0, r1}
	cmp	r5, #3
	ldrls	pc, [pc, r5, asl #2]
	b	.L198
.L203:
	.word	.L198
	.word	.L200
	.word	.L198
	.word	.L202
.L198:
	mov	r3, #0
	rsbs	r8, r8, #1
	movcc	r8, #0
	str	r3, [ip, #40]
	str	r8, [ip, #20]
	str	r8, [ip, #16]
	str	r3, [ip, #8]
	str	r3, [ip, #12]
	str	r3, [ip, #24]
	str	r3, [ip, #28]
	str	r3, [ip, #32]
	str	r3, [ip, #36]
.L208:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L200:
	mov	r1, #0
	mov	r0, #1
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r0, [ip, #24]
	ldr	r3, [r9, #0]
	cmp	r3, #0
	beq	.L209
	cmp	r3, #1
	beq	.L207
	sxtb	r0, sl
	movw	r1, #:lower16:1717986919
	movt	r1, #:upper16:1717986919
	mov	r6, r0, asr #31
	smull	r4, r3, r1, r0
	rsb	r2, r6, r3, asr #2
	add	r1, r2, r2, asl #2
	sub	r6, r0, r1, asl #1
	sxtb	r3, r6
	sub	r6, fp, #44
	add	r4, r6, r3, asl #2
	ldr	r3, [r4, #-40]
.L206:
	mov	r1, #0
	cmp	sl, #4
	movhi	sl, #0
	movls	sl, #1
	str	r3, [ip, #20]
	str	sl, [ip, #36]
	str	r1, [ip, #40]
	str	r1, [ip, #28]
	str	r1, [ip, #32]
	b	.L208
.L202:
	mov	r0, #0
	rsbs	r8, r8, #1
	movcc	r8, #0
	str	r0, [ip, #8]
	mov	r1, #1
	str	r8, [ip, #16]
	str	r0, [ip, #12]
	str	r1, [ip, #24]
	ldr	r2, [r9, #32]
	str	r8, [ip, #20]
	str	r0, [ip, #36]
	str	r2, [ip, #28]
	str	r0, [ip, #32]
	ldr	r3, [r9, #28]
	str	r3, [ip, #40]
	b	.L208
.L209:
	sxtb	r3, sl
	movw	r2, #:lower16:1717986919
	movt	r2, #:upper16:1717986919
	mov	r1, r3, asr #31
	smull	r0, r2, r2, r3
	rsb	r2, r1, r2, asr #2
	add	r0, r2, r2, asl #2
	sub	r2, fp, #44
	sub	r1, r3, r0, asl #1
	sxtb	r0, r1
	add	r3, r2, r0, asl #2
	ldr	r3, [r3, #-40]
	str	r3, [ip, #16]
	b	.L206
.L207:
	sxtb	r3, sl
	movw	r2, #:lower16:1717986919
	movt	r2, #:upper16:1717986919
	add	r1, r3, #1
	mov	r0, r3, asr #31
	smull	r4, r5, r2, r3
	mov	r4, r1, asr #31
	smull	r6, r2, r2, r1
	rsb	r6, r0, r5, asr #2
	add	r0, r6, r6, asl #2
	rsb	r6, r4, r2, asr #2
	sub	r3, r3, r0, asl #1
	sub	r0, fp, #44
	add	r2, r6, r6, asl #2
	sxtb	r6, r3
	sub	r1, r1, r2, asl #1
	add	r3, r0, r6, asl #2
	add	r6, r0, r1, asl #2
	ldr	r3, [r3, #-40]
	ldr	r0, [r6, #-40]
	str	r0, [ip, #16]
	b	.L206
.L211:
	.align	2
.L210:
	.word	.LANCHOR0+100
	UNWIND(.fnend)
	.size	GetPlayBackConfig, .-GetPlayBackConfig
	.align	2
	.global	DetectCopyMode
	.type	DetectCopyMode, %function
DetectCopyMode:
	UNWIND(.fnstart)
.LFB9:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	ip, [r0, #124]
	ldr	r3, [r0, #120]
	ldrsb	r2, [r1, #1]
	ldr	r4, [r0, #128]
	add	r5, ip, r3
	cmp	r2, #0
	ldr	r3, [r0, #132]
	add	ip, r5, r4
	ldr	r5, [r0, #148]
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	add	r0, ip, r3
	ldrsb	r3, [r1, #2]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	bne	.L213
	add	ip, r0, r0, asl #1
	cmp	r3, ip
	bgt	.L226
	add	r5, r3, r3, asl #2
	mov	r0, r2
	add	r2, r5, #4
	mov	r5, r0
	add	r3, r2, ip
	mov	r2, r0
	add	r4, r3, #7
	cmp	r3, #0
	mov	ip, r0
	movlt	r3, r4
	mov	r4, r0
	mov	r3, r3, asr #3
.L215:
	strb	r5, [r1, #0]
	strb	r3, [r1, #2]
	strb	r4, [r1, #3]
	strb	ip, [r1, #4]
	strb	r2, [r1, #1]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L213:
	cmp	r2, #1
	sxtb	ip, ip
	beq	.L227
	cmp	r2, #2
	beq	.L228
	cmp	r5, #15
	sxtb	r4, r4
	addgt	r4, r4, #1
	bgt	.L223
	add	r2, r3, r3, asl #2
	add	ip, r0, r0, asl #1
	add	r5, r2, #4
	mov	r2, #0
	add	r3, r5, ip
	add	ip, r3, #7
	cmp	r3, r2
	movlt	r3, ip
	mov	r3, r3, asr #3
.L223:
	cmp	r4, #15
	ble	.L229
	add	r0, r0, r0, asl #1
	add	r5, r3, r3, asl #2
	add	ip, r0, #4
	mov	r0, #0
	add	r3, ip, r5
	mov	r2, r0
	add	r4, r3, #7
	cmp	r3, r0
	mov	r5, r0
	mov	ip, r0
	movlt	r3, r4
	strb	r5, [r1, #0]
	mov	r4, r0
	mov	r3, r3, asr #3
	strb	r4, [r1, #3]
	strb	r3, [r1, #2]
	strb	ip, [r1, #4]
	strb	r2, [r1, #1]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L226:
	mov	r0, r2
	strb	r3, [r1, #2]
	mov	r2, #1
	mov	r5, r0
	mov	ip, r0
	mov	r4, r0
	strb	r5, [r1, #0]
	strb	r4, [r1, #3]
	strb	ip, [r1, #4]
	strb	r2, [r1, #1]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L227:
	add	r4, r0, r0, asl #1
	cmp	r3, r4
	ble	.L217
	cmp	r5, #15
	uxtble	ip, ip
	uxtbgt	ip, ip
	movle	r0, #0
	movgt	r0, r2
	movle	r5, r0
	movle	r2, #2
	movle	r4, r0
	movgt	r5, r0
	movgt	r2, #3
	movgt	r4, #0
	b	.L215
.L229:
	cmp	r2, #2
	movls	r5, #0
	movhi	r5, #1
	uxtb	r4, r4
	uxtb	r2, r2
	mov	ip, #0
	sxtb	r0, r5
	strb	r5, [r1, #0]
	strb	r3, [r1, #2]
	strb	r4, [r1, #3]
	strb	ip, [r1, #4]
	strb	r2, [r1, #1]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L228:
	cmp	r5, #15
	add	ip, ip, #1
	bgt	.L230
	cmp	ip, #2
	mov	r0, #0
	uxtb	ip, ip
	mov	r5, r0
	movgt	r2, r0
	mov	r4, r0
	b	.L215
.L217:
	add	r5, r3, r3, asl #2
	mov	r0, #0
	add	r2, r5, #4
	uxtb	ip, ip
	add	r4, r2, r4
	mov	r5, r0
	cmp	r4, r0
	add	r3, r4, #7
	mov	r2, r0
	movge	r3, r4
	mov	r4, r0
	mov	r3, r3, asr #3
	b	.L215
.L230:
	mov	r0, #1
	uxtb	ip, ip
	mov	r5, r0
	mov	r2, #3
	mov	r4, #0
	b	.L215
	UNWIND(.fnend)
	.size	DetectCopyMode, .-DetectCopyMode
	.align	2
	.global	Calc22PLD_STB
	.type	Calc22PLD_STB, %function
Calc22PLD_STB:
	UNWIND(.fnstart)
.LFB10:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #148)
	sub	sp, sp, #148
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
	add	r1, r5, #20
	mov	r2, #100
	sub	r0, fp, #144
	mov	r7, r3
	bl	memcpy
	ldr	r1, [fp, #-136]
	rsbs	r6, r6, #1
	movcc	r6, #0
	ldr	r3, [r5, #0]
	cmp	r6, #1
	ldr	ip, [fp, #-144]
	str	r1, [fp, #-172]
	ldr	r2, [r5, #16]
	ldr	r0, [fp, #-140]
	ldr	sl, [fp, #-120]
	str	r2, [fp, #-180]
	ldr	r9, [r5, #12]
	ldr	r1, [fp, #-132]
	ldr	r8, [fp, #-124]
	str	r9, [fp, #-176]
	ldr	r2, [r5, #8]
	str	r2, [fp, #-168]
	ldr	r9, [r5, #4]
	str	r9, [fp, #-164]
	ldr	r2, [r5, #124]
	str	r2, [fp, #-160]
	ldr	r9, [r5, #132]
	str	r9, [fp, #-152]
	ldr	r2, [r5, #128]
	str	r2, [fp, #-156]
	ldr	r5, [r5, #120]
	beq	.L279
	cmp	r7, #0
	moveq	r2, r1
	moveq	r9, ip
	beq	.L234
	cmp	r7, #1
	beq	.L280
.L277:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L279:
	cmp	r7, #0
	beq	.L281
	cmp	r7, #1
	bne	.L277
	ldr	r2, [r4, #40]
	mov	r8, sl
	ldr	r9, [r4, #44]
	ldr	r0, [fp, #-172]
.L234:
	cmp	r2, r9
	movlt	lr, r2
	movge	lr, r9
	cmp	r0, #80
	cmple	r9, #80
	mov	r1, #0
	strb	r1, [r4, #91]
	mov	ip, lr, asl #1
	str	ip, [fp, #-184]
	ble	.L237
	add	sl, r0, r0, asl #1
	mov	r7, r9, asl #1
	cmp	sl, r7
	addgt	r0, r6, r4
	movgt	r2, #1
	strgtb	r1, [r0, #88]
	ble	.L282
.L239:
	mov	r8, r8, asl #5
	cmp	r8, #127
	addgt	r6, r6, r4
	ldrgtb	r1, [r6, #88]	@ zero_extendqisi2
	subgt	r1, r1, #5
	strgtb	r1, [r6, #88]
	cmp	r2, #1
	movne	r0, #0
	strne	r0, [r4, #36]
	beq	.L283
.L268:
	ldrsb	ip, [r4, #88]
	ldrsb	lr, [r4, #89]
	cmp	ip, #32
	movge	ip, #32
	str	r0, [r4, #36]
	bic	r7, ip, ip, asr #31
	cmp	lr, #32
	movge	lr, #32
	bic	r1, lr, lr, asr #31
	uxtb	r2, r7
	strb	r2, [r4, #88]
	uxtb	r1, r1
	strb	r1, [r4, #89]
	sxtb	r2, r2
	cmp	r2, #24
	ble	.L269
	sxtb	r1, r1
	cmp	r1, #24
	movgt	r2, #1
	strgtb	r2, [r4, #90]
	ble	.L270
.L271:
	ldr	r7, [r4, #12]
	movw	sl, #:lower16:1717986919
	ldr	r6, [r4, #8]
	movt	sl, #:upper16:1717986919
	ldr	ip, [r4, #4]
	add	lr, r7, r3
	add	r1, lr, r6
	ldr	r2, [r4, #0]
	add	r9, r1, ip
	ldr	r0, [r4, #28]
	add	r8, r9, r2
	ldr	lr, [r4, #0]
	movw	r2, #:lower16:-2999
	movt	r2, #:upper16:-2999
	smull	r9, r1, sl, r8
	mov	r8, r8, asr #31
	ldr	r9, [r4, #20]
	str	r7, [r4, #16]
	rsb	sl, r9, r0
	str	r6, [r4, #12]
	str	ip, [r4, #8]
	rsb	r1, r8, r1, asr #1
	str	lr, [r4, #4]
	add	sl, sl, r1
	str	r3, [r4, #0]
	cmp	sl, r2
	str	r1, [r4, #24]
	movwlt	sl, #:lower16:-3000
	movtlt	sl, #:upper16:-3000
	blt	.L274
	movw	r3, #3000
	cmp	sl, r3
	movge	sl, r3
.L274:
	ldrsb	r3, [r4, #90]
	str	sl, [r4, #28]
	cmp	r3, #0
	str	r1, [r4, #20]
	streq	r3, [r4, #28]
	beq	.L276
	cmp	sl, #1000
	movge	r3, #0
	strgeb	r3, [r4, #90]
	strgeb	r3, [r4, #88]
	strgeb	r3, [r4, #89]
.L276:
	ldr	r1, [fp, #-152]
	ldr	r2, [fp, #-156]
	ldr	r0, [fp, #-160]
	add	lr, r2, r1, asl #1
	add	ip, r0, lr, asl #1
	add	r5, r5, ip, asl #1
	str	r5, [r4, #32]
	b	.L277
.L237:
	ldr	r1, [fp, #-164]
	movw	ip, #5499
	cmp	r1, ip
	bgt	.L251
	ldr	lr, [fp, #-168]
	ldr	sl, [fp, #-164]
	cmp	lr, #0
	moveq	lr, #20
	cmp	lr, sl
	blt	.L251
	ldr	lr, [fp, #-176]
	cmp	lr, ip
	ble	.L284
.L254:
	cmp	r7, #0
	bne	.L255
.L251:
	add	r1, r6, r4
	mov	r0, #0
	mov	r2, #1
	strb	r0, [r1, #88]
	b	.L239
.L269:
	cmp	r2, #19
	ble	.L272
	sxtb	r1, r1
.L270:
	cmp	r1, #19
	bgt	.L271
.L272:
	mov	r0, #0
	strb	r0, [r4, #91]
	strb	r0, [r4, #90]
	b	.L271
.L282:
	add	ip, r9, r9, asl #2
	add	r1, ip, ip, lsr #31
	cmp	r2, r1, asr #1
	bgt	.L259
	cmp	r2, #1000
	ble	.L241
	add	sl, r2, r2, asl #2
	rsb	lr, r9, r9, asl #3
	cmp	sl, lr
	blt	.L241
.L259:
	add	r1, r6, r4
	mov	r2, #1
	ldrb	r9, [r1, #88]	@ zero_extendqisi2
	sub	r0, r9, #1
	strb	r0, [r1, #88]
	b	.L239
.L281:
	mov	r9, r0
	mov	r2, r1
	mov	r8, sl
	mov	r0, ip
	b	.L234
.L241:
	cmp	r0, #99
	bgt	.L285
	mov	ip, r0, asl #3
	cmp	r9, ip
	blt	.L243
	cmp	r0, #10
	movge	r1, r0
	movlt	r1, #10
	mov	sl, r2, asl #1
	cmp	sl, r1, asl #3
	bge	.L244
.L243:
	ldr	sl, [fp, #-184]
	rsb	lr, r2, r9
	cmp	sl, #150
	movlt	sl, #150
	cmp	lr, #0
	rsblt	lr, lr, #0
	str	lr, [fp, #-164]
	ldr	r1, [fp, #-164]
	add	lr, sl, #50
	cmp	r1, lr
	ble	.L244
	ldr	r1, [r4, #32]
	cmp	r1, #10
	ble	.L244
	add	r1, r6, r4
	mov	r2, #1
	ldrb	ip, [r1, #88]	@ zero_extendqisi2
	sub	r0, ip, #5
	strb	r0, [r1, #88]
	b	.L239
.L284:
	ldr	sl, [fp, #-180]
	ldr	ip, [fp, #-176]
	add	r1, sl, #150
	cmp	ip, r1
	bgt	.L254
.L255:
	cmp	r0, #39
	bgt	.L286
.L256:
	cmp	r2, #80
	ble	.L257
	ldr	r0, [fp, #-184]
	rsb	r2, r9, r2
	add	r9, r0, #50
	cmp	r2, r9
	ble	.L257
	ldr	r1, [r4, #32]
	cmp	r1, #10
	ble	.L257
	ldrsb	r2, [r4, #90]
	cmp	r2, #1
	beq	.L287
	movw	ip, #5000
	cmp	r1, ip
	ble	.L249
.L263:
	add	r1, r6, r4
	ldr	sl, [r4, #36]
	mov	r2, #1
	ldrb	ip, [r1, #88]	@ zero_extendqisi2
	mvn	r0, sl
	add	r0, ip, r0
	strb	r0, [r1, #88]
	b	.L239
.L283:
	ldr	r6, [r4, #36]
	add	r0, r6, #1
	str	r0, [r4, #36]
	cmp	r0, #0
	movle	r0, #0
	ble	.L268
	cmp	r0, #50
	movge	r0, #50
	b	.L268
.L280:
	ldr	r9, [fp, #-172]
	mov	r2, r1
	str	r1, [r4, #40]
	ldr	sl, [fp, #-172]
	str	sl, [r4, #44]
	b	.L234
.L285:
	movw	r2, #:lower16:1374389535
	movt	r2, #:upper16:1374389535
	add	r1, r6, r4
	mov	r7, r0, asr #31
	smull	ip, lr, r2, r0
	ldrb	r9, [r1, #88]	@ zero_extendqisi2
	mov	r2, #1
	sub	r0, r7, lr, asr #5
	add	r0, r0, r9
	strb	r0, [r1, #88]
	b	.L239
.L286:
	cmp	r0, r9, asl #1
	blt	.L256
	b	.L251
.L257:
	ldr	r1, [fp, #-168]
	cmp	r1, #1000
	ble	.L259
	ldr	sl, [fp, #-164]
	mov	r1, r1, asl #1
	mov	r0, sl, asl #4
	cmp	r1, r0
	ble	.L260
	cmp	r7, #0
	bne	.L261
	ldr	r9, [fp, #-176]
	ldr	r2, [fp, #-180]
	cmp	r2, r9, asl #1
	ble	.L260
.L261:
	ldr	lr, [fp, #-168]
	movw	r7, #9000
	cmp	lr, r7
	ble	.L249
.L278:
	add	r1, r6, r4
	mov	r2, #0
	ldrb	r0, [r1, #88]	@ zero_extendqisi2
	add	r0, r0, #1
	strb	r0, [r1, #88]
	b	.L239
.L244:
	cmp	ip, r7
	bge	.L245
	cmp	ip, r2, asl #1
	blt	.L246
	ldr	r7, [r4, #32]
	cmp	r7, #9
	bgt	.L245
.L246:
	ldr	r2, [fp, #-152]
	add	r9, r2, #100
	cmp	r9, r0, asl #2
	bge	.L278
	add	r1, r6, r4
	mov	r2, #1
	ldrb	r0, [r1, #88]	@ zero_extendqisi2
	sub	r0, r0, #15
	strb	r0, [r1, #88]
	b	.L239
.L245:
	add	sl, r9, #150
	cmp	r0, sl
	bgt	.L248
	ldr	r1, [fp, #-172]
	add	lr, r1, #150
	cmp	r0, lr
	ble	.L249
.L248:
	ldrsb	r2, [r4, #90]
	add	r1, r6, r4
	cmp	r2, #1
	ldreqb	r0, [r1, #88]	@ zero_extendqisi2
	movne	r2, #1
	ldrneb	r0, [r1, #88]	@ zero_extendqisi2
	subeq	r0, r0, #1
	subne	r0, r0, #3
	strb	r0, [r1, #88]
	b	.L239
.L249:
	mov	r2, #1
	b	.L239
.L260:
	ldrsb	ip, [r4, #90]
	cmp	ip, #1
	bne	.L259
	cmp	r1, r0
	bge	.L263
	cmp	r7, #0
	bne	.L264
	ldr	r2, [fp, #-176]
	ldr	r1, [fp, #-180]
	mov	sl, r2, asl #4
	cmp	sl, r1, asl #1
	ble	.L263
.L264:
	add	r1, r6, r4
	ldr	lr, [r4, #36]
	mov	r2, #1
	ldrb	r7, [r1, #88]	@ zero_extendqisi2
	mvn	r9, lr
	add	r0, r7, r9, asl #1
	strb	r0, [r1, #88]
	b	.L239
.L287:
	add	r1, r6, r4
	ldr	r0, [r4, #36]
	ldrb	lr, [r1, #88]	@ zero_extendqisi2
	mvn	r7, r0
	add	r0, lr, r7
	strb	r0, [r1, #88]
	b	.L239
	UNWIND(.fnend)
	.size	Calc22PLD_STB, .-Calc22PLD_STB
	.align	2
	.global	Calc22PLD
	.type	Calc22PLD, %function
Calc22PLD:
	UNWIND(.fnstart)
.LFB11:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #164)
	sub	sp, sp, #164
	mov	r5, r0
	rsbs	r6, r1, #1
	movcc	r6, #0
	mov	r4, r2
	add	r1, r5, #20
	mov	r2, #100
	sub	r0, fp, #144
	mov	r7, r3
	bl	memcpy
	ldr	r2, [r5, #0]
	cmp	r6, #1
	ldr	r1, [fp, #-144]
	ldr	r9, [fp, #-120]
	ldr	r8, [fp, #-124]
	str	r2, [fp, #-156]
	str	r1, [fp, #-160]
	str	r9, [fp, #-152]
	str	r8, [fp, #-184]
	ldr	r0, [r5, #124]
	ldr	r9, [r5, #16]
	ldr	r8, [r5, #12]
	ldr	sl, [r5, #8]
	ldr	ip, [r5, #4]
	str	r0, [fp, #-176]
	ldr	r0, [r5, #132]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-132]
	str	r0, [fp, #-168]
	ldr	r0, [r5, #128]
	ldr	r1, [fp, #-136]
	str	r0, [fp, #-164]
	ldr	r5, [r5, #120]
	str	r5, [fp, #-172]
	ldrb	r5, [r4, #90]	@ zero_extendqisi2
	str	r5, [fp, #-180]
	beq	.L367
	cmp	r7, #0
	bne	.L293
	ldr	r7, [fp, #-184]
	ldr	r5, [r4, #48]
	str	r7, [fp, #-152]
	add	r5, r2, r5
	ldr	r0, [r4, #52]
	ldr	lr, [r4, #56]
	str	r2, [r4, #48]
	add	r2, r1, r0
	add	r7, r3, lr
	str	r1, [r4, #52]
	str	r3, [r4, #56]
	str	r5, [r4, #68]
	str	r2, [r4, #72]
	str	r7, [r4, #76]
.L291:
	cmp	r2, r7
	movge	r0, r2
	movlt	r0, r7
	cmp	r9, r8
	movge	lr, r9
	movlt	lr, r8
	cmp	sl, ip
	movge	r1, sl
	movlt	r1, ip
	cmp	r0, #4
	cmple	r5, #4
	str	lr, [fp, #-160]
	mov	r3, #0
	strb	r3, [r4, #91]
	bgt	.L294
	ldr	r3, [fp, #-160]
	cmp	r3, #500
	cmplt	r1, #500
	bge	.L295
	ldr	lr, [fp, #-164]
	cmp	lr, #1
	ble	.L368
.L295:
	cmp	r5, #120
	cmple	r0, #120
	ble	.L297
	cmp	r5, #10
	movlt	r5, #10
	cmp	r2, r7
	movlt	r1, r2
	movge	r1, r7
	mov	ip, r5, asl #2
	mov	r3, r1, asl #1
	cmp	ip, r3
	bge	.L298
	cmp	r1, #120
	ble	.L299
	cmp	r0, #800
	ble	.L300
	add	r2, r5, r5, asl #1
	cmp	r3, r2
	ble	.L300
	cmp	r0, r3
	bgt	.L356
	mov	ip, r1, asl #2
	add	r5, ip, r1
	cmp	r5, r0, asl #2
	ble	.L302
	cmp	r1, r2
	ble	.L303
.L355:
	add	r9, r6, r4
	mov	r3, #0
	ldrb	r1, [r9, #88]	@ zero_extendqisi2
	add	r2, r1, #1
	strb	r2, [r9, #88]
	b	.L296
.L293:
	cmp	r7, #1
	beq	.L369
.L351:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L294:
	cmp	r5, #800
	ble	.L295
	add	r2, r6, r4
	mov	r3, #1
	ldrb	ip, [r2, #88]	@ zero_extendqisi2
	sub	sl, ip, #15
	strb	sl, [r2, #88]
.L296:
	ldr	r7, [fp, #-152]
	mov	r0, r7, asl #5
	cmp	r0, #127
	addgt	r6, r6, r4
	ldrgtb	r2, [r6, #88]	@ zero_extendqisi2
	subgt	r2, r2, #5
	strgtb	r2, [r6, #88]
	cmp	r3, #1
	ldrsb	r5, [r4, #88]
	ldreq	r0, [r4, #36]
	movne	r0, #0
	ldrsb	lr, [r4, #89]
	addeq	r0, r0, #1
	cmp	r5, #32
	movge	r5, #32
	bic	r9, r5, r5, asr #31
	cmp	lr, #32
	movge	lr, #32
	bic	r1, lr, lr, asr #31
	str	r0, [r4, #36]
	uxtb	r6, r9
	strb	r6, [r4, #88]
	uxtb	r1, r1
	strb	r1, [r4, #89]
	sxtb	r2, r6
	cmp	r2, #24
	ble	.L345
	sxtb	r1, r1
	cmp	r1, #24
	movgt	r2, #1
	strgtb	r2, [r4, #90]
	ble	.L346
.L347:
	ldr	r8, [fp, #-156]
	movw	sl, #:lower16:1717986919
	ldr	r5, [r4, #12]
	movt	sl, #:upper16:1717986919
	ldr	ip, [r4, #8]
	add	r2, r5, r8
	ldr	r0, [r4, #4]
	add	lr, r2, ip
	ldr	r2, [r4, #0]
	add	r9, lr, r0
	ldr	r6, [r4, #28]
	add	r7, r9, r2
	ldr	r1, [r4, #20]
	movw	lr, #:lower16:-3000
	movt	lr, #:upper16:-3000
	smull	r9, sl, sl, r7
	mov	r8, r7, asr #31
	ldr	r9, [fp, #-180]
	rsb	r7, r1, r6
	str	ip, [r4, #12]
	str	r2, [r4, #4]
	movw	r2, #3000
	str	r5, [r4, #16]
	sxtb	r6, r9
	rsb	r8, r8, sl, asr #1
	str	r0, [r4, #8]
	add	ip, r7, r8
	str	r8, [r4, #20]
	cmp	ip, lr
	movlt	ip, lr
	ldr	r1, [fp, #-156]
	cmp	ip, r2
	movge	ip, r2
	str	r8, [r4, #24]
	cmp	ip, #1000
	cmpge	r6, #1
	str	ip, [r4, #28]
	str	r1, [r4, #0]
	bne	.L349
	cmp	r3, #0
	bne	.L370
.L349:
	ldrsb	r0, [r4, #90]
	cmp	r0, #1
	cmpeq	r6, #0
	moveq	r0, #0
	streq	r0, [r4, #28]
.L350:
	ldr	lr, [fp, #-168]
	ldr	r5, [fp, #-164]
	add	r7, r5, lr, asl #1
	ldr	r5, [fp, #-176]
	add	r1, r5, r7, asl #1
	ldr	r7, [fp, #-172]
	add	ip, r7, r1, asl #1
	str	ip, [r4, #32]
	b	.L351
.L345:
	cmp	r2, #19
	ble	.L348
	sxtb	r1, r1
.L346:
	cmp	r1, #19
	bgt	.L347
.L348:
	mov	r8, #0
	strb	r8, [r4, #91]
	strb	r8, [r4, #90]
	b	.L347
.L367:
	cmp	r7, #0
	beq	.L371
	cmp	r7, #1
	bne	.L351
	str	r1, [r4, #48]
.L352:
	str	r2, [r4, #52]
	str	r3, [r4, #56]
	ldr	r5, [r4, #68]
	ldr	r2, [r4, #72]
	ldr	r7, [r4, #76]
	b	.L291
.L370:
	mov	r3, #0
	strb	r3, [r4, #90]
	strb	r3, [r4, #88]
	strb	r3, [r4, #89]
	b	.L350
.L297:
	movw	r0, #5499
	cmp	ip, r0
	cmple	r8, r0
	bgt	.L356
	cmp	r5, #39
	ble	.L314
	cmp	r5, r2, asl #1
	bge	.L356
.L314:
	add	r5, ip, ip, asl #2
	mov	r2, sl, asl #2
	movw	r3, #2500
	cmp	r1, r3
	cmpgt	r5, r2
	movle	r7, #0
	movgt	r7, #1
	str	r7, [fp, #-200]
	bgt	.L356
	ldr	r5, [fp, #-160]
	mov	r0, r9, asl #2
	add	r7, r8, r8, asl #2
	str	r0, [fp, #-192]
	cmp	r5, r3
	cmpgt	r7, r0
	movle	r3, #0
	movgt	r3, #1
	str	r3, [fp, #-184]
	ble	.L316
	ldr	sl, [fp, #-200]
	add	r2, r6, r4
	mov	r3, #1
	strb	sl, [r2, #88]
	b	.L296
.L371:
	ldr	r7, [fp, #-160]
	str	r7, [r4, #48]
	b	.L352
.L298:
	add	r2, r3, r1
	cmp	ip, r2
	ble	.L335
.L356:
	add	lr, r6, r4
	mov	r2, #0
	mov	r3, #1
	strb	r2, [lr, #88]
	b	.L296
.L369:
	ldr	r7, [fp, #-184]
	ldr	r5, [r4, #48]
	str	r7, [fp, #-152]
	add	r5, r2, r5
	ldr	r0, [r4, #52]
	ldr	lr, [r4, #56]
	add	r2, r1, r0
	str	r5, [r4, #68]
	add	r7, r3, lr
	str	r2, [r4, #72]
	str	r7, [r4, #76]
	b	.L291
.L368:
	ldr	r3, [fp, #-168]
	cmp	r3, #1
	movle	r3, #1
	strleb	r3, [r4, #90]
	bgt	.L295
	b	.L351
.L318:
	mov	r3, r8, asl #1
	cmp	sl, r3
	ldrgt	r3, [fp, #-184]
	bgt	.L296
	add	r9, r3, r8
	cmp	r2, r9
	bgt	.L336
.L335:
	add	sl, r6, r4
	mov	r3, #1
	ldrb	r2, [sl, #88]	@ zero_extendqisi2
	sub	r2, r2, #5
	strb	r2, [sl, #88]
	b	.L296
.L299:
	cmp	r0, #119
	ble	.L356
	add	r3, r3, r1
	cmp	r0, r3
	bgt	.L356
	rsb	r3, r2, r7
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #40
	ble	.L311
	cmp	r1, #1
	movlt	r1, #1
	bl	__aeabi_idiv
	add	ip, r6, r4
	mov	r3, #1
	ldrb	r8, [ip, #88]	@ zero_extendqisi2
	rsb	r2, r0, r8
	strb	r2, [ip, #88]
	b	.L296
.L300:
	cmp	r0, r3
	bgt	.L356
	mov	r2, r0, asl #1
	add	r0, r2, r0
	cmp	r0, r1, asl #2
	bge	.L307
	add	r7, ip, r5
	cmp	r3, r7
	bgt	.L355
.L303:
	mov	r3, #1
	b	.L296
.L316:
	movw	r3, #10000
	cmp	r1, r3
	ble	.L317
	mov	r2, sl, asl #1
	cmp	r2, ip, asl #4
	ble	.L318
	ldr	ip, [fp, #-160]
	cmp	ip, r3
	bgt	.L363
	ldr	r1, [fp, #-160]
	cmp	r1, #1000
	ble	.L353
	ldr	r2, [fp, #-192]
	cmp	r2, r8, asl #4
	bgt	.L353
.L333:
	mov	r7, #3
	mul	r5, r7, r8
	cmp	r5, r9, asl #1
	blt	.L303
.L340:
	ldrsb	r3, [r4, #90]
	cmp	r3, #1
	beq	.L372
.L336:
	add	ip, r6, r4
	mov	r3, #1
	ldrb	r2, [ip, #88]	@ zero_extendqisi2
	sub	r2, r2, #1
	strb	r2, [ip, #88]
	b	.L296
.L307:
	add	r5, r3, r1
	cmp	r5, r2
	bgt	.L336
	add	lr, r6, r4
	mov	r3, #1
	ldrb	sl, [lr, #88]	@ zero_extendqisi2
	sub	r2, sl, #2
	strb	r2, [lr, #88]
	b	.L296
.L311:
	cmp	r3, #19
	ble	.L355
	mov	r3, #1
	b	.L296
.L317:
	cmp	r1, #1000
	ble	.L327
	cmp	r2, ip, asl #4
	ble	.L328
	ldr	lr, [fp, #-160]
	cmp	lr, r3
	bgt	.L363
	ldr	r3, [fp, #-160]
	cmp	r3, #1000
	ble	.L353
	ldr	r0, [fp, #-192]
	cmp	r0, r8, asl #4
	ble	.L333
.L353:
	add	lr, r6, r4
	ldr	r3, [fp, #-184]
	ldrb	r0, [lr, #88]	@ zero_extendqisi2
	add	r2, r0, #1
	strb	r2, [lr, #88]
	b	.L296
.L302:
	add	r8, r0, r0, asl #1
	cmp	ip, r8
	bgt	.L336
	rsb	r9, r0, r0, asl #3
	cmp	r9, r5, asl #1
	blt	.L335
	add	r1, r6, r4
	mov	r3, #1
	ldrb	r2, [r1, #88]	@ zero_extendqisi2
	sub	r2, r2, #15
	strb	r2, [r1, #88]
	b	.L296
.L327:
	beq	.L336
	ldr	ip, [fp, #-160]
	cmp	ip, r3
	bgt	.L363
	ldr	r2, [fp, #-160]
	cmp	r2, #1000
	ble	.L303
	ldr	r9, [fp, #-192]
	cmp	r9, r8, asl #4
	ble	.L340
	b	.L353
.L363:
	mov	r1, r8, asl #4
	cmp	r1, r9, asl #1
	bge	.L340
	b	.L353
.L328:
	add	r8, r8, r8, asl #1
	cmp	r8, sl, asl #1
	bge	.L335
	b	.L336
.L372:
	add	r5, r6, r4
	ldr	sl, [r4, #36]
	ldrb	r8, [r5, #88]	@ zero_extendqisi2
	mvn	r7, sl
	add	r2, r8, r7, asl #1
	strb	r2, [r5, #88]
	b	.L296
	UNWIND(.fnend)
	.size	Calc22PLD, .-Calc22PLD
	.align	2
	.global	Detect22Pld
	.type	Detect22Pld, %function
Detect22Pld:
	UNWIND(.fnstart)
.LFB12:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r4, r3
	ldr	r3, [fp, #4]
	ldr	ip, [r4, #4]
	mov	lr, r0
	ldr	r6, [r4, #8]
	cmp	r3, #1
	mov	r5, r2
	str	ip, [r4, #0]
	str	r6, [r4, #4]
	beq	.L377
	mov	r0, r1
	mov	r1, lr
	bl	Calc22PLD
	ldrsb	r0, [r5, #90]
	str	r0, [r4, #8]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L377:
	mov	r0, r1
	mov	r1, lr
	bl	Calc22PLD_STB
	ldrsb	r0, [r5, #90]
	str	r0, [r4, #8]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	Detect22Pld, .-Detect22Pld
	.align	2
	.global	GetPlaybackState
	.type	GetPlaybackState, %function
GetPlaybackState:
	UNWIND(.fnstart)
.LFB14:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldrb	ip, [r3, #377]	@ zero_extendqisi2
	ldrb	r4, [r3, #378]	@ zero_extendqisi2
	sxtb	ip, ip
	cmp	ip, #2
	sxtb	r4, r4
	beq	.L381
	cmp	ip, #3
	beq	.L382
	cmp	ip, #1
	beq	.L399
	cmp	r0, #0
	movne	r1, #1
	movne	r0, #0
	movne	ip, r1
	bne	.L384
	cmp	r2, #0
	movne	r1, #2
	movne	ip, r1
	bne	.L384
	cmp	r1, #0
	uxtbeq	r0, r4
	uxtbeq	r1, ip
	movne	r1, #3
	movne	r0, r2
	movne	ip, r1
.L384:
	strb	r0, [r3, #378]
	mov	r0, ip
	strb	r1, [r3, #377]
	ldmfd	sp, {r4, fp, sp, pc}
.L399:
	cmp	r0, #0
	bne	.L397
	cmp	r2, #0
	bne	.L398
	cmp	r1, #0
	movne	r1, #3
	movne	r0, ip
	movne	ip, r1
	bne	.L384
	b	.L396
.L381:
	cmp	r2, #0
	uxtbeq	r1, r4
	moveq	ip, r4
	moveq	r0, #2
	beq	.L384
.L397:
	uxtb	r0, r4
	mov	r1, ip
	strb	r0, [r3, #378]
	mov	r0, ip
	strb	r1, [r3, #377]
	ldmfd	sp, {r4, fp, sp, pc}
.L382:
	cmp	r1, #0
	bne	.L397
	cmp	r2, #0
	bne	.L398
	cmp	r0, #0
	movne	r1, #1
	movne	r0, ip
	movne	ip, r1
	bne	.L384
	mov	r1, r0
.L396:
	mov	r0, ip
	mov	ip, r1
	strb	r0, [r3, #378]
	mov	r0, ip
	strb	r1, [r3, #377]
	ldmfd	sp, {r4, fp, sp, pc}
.L398:
	mov	r1, #2
	mov	r0, ip
	mov	ip, r1
	strb	r0, [r3, #378]
	strb	r1, [r3, #377]
	mov	r0, ip
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	GetPlaybackState, .-GetPlaybackState
	.align	2
	.global	Optm_Alg_ResetFod
	.type	Optm_Alg_ResetFod, %function
Optm_Alg_ResetFod:
	UNWIND(.fnstart)
.LFB15:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	str	r1, [r0, #8]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	Optm_Alg_ResetFod, .-Optm_Alg_ResetFod
	.align	2
	.global	Optm_Alg_PdModuleEnable
	.type	Optm_Alg_PdModuleEnable, %function
Optm_Alg_PdModuleEnable:
	UNWIND(.fnstart)
.LFB18:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	ldrb	ip, [r0, #0]	@ zero_extendqisi2
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	strb	r4, [r1, #7]
	strb	ip, [r1, #4]
	strb	r2, [r1, #5]
	strb	r3, [r1, #6]
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	Optm_Alg_PdModuleEnable, .-Optm_Alg_PdModuleEnable
	.align	2
	.global	Optm_Alg_SetFod
	.type	Optm_Alg_SetFod, %function
Optm_Alg_SetFod:
	UNWIND(.fnstart)
.LFB19:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	strb	r0, [r1, #144]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	Optm_Alg_SetFod, .-Optm_Alg_SetFod
	.align	2
	.global	OPTM_ALG_ProcRefFld
	.type	OPTM_ALG_ProcRefFld, %function
OPTM_ALG_ProcRefFld:
	UNWIND(.fnstart)
.LFB21:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	ip, [r3, #4]
	ldr	r3, [r3, #8]
	cmp	r3, ip
	beq	.L413
	ldr	ip, [r0, #4]
	cmp	r2, #1
	ldr	r3, [r0, #8]
	str	ip, [r0, #0]
	str	r3, [r0, #4]
	beq	.L411
	cmp	r1, #1
	bne	.L409
.L411:
	rsbs	r1, r3, #1
	movcc	r1, #0
	str	r1, [r0, #8]
.L409:
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L413:
	ldr	ip, [r0, #4]
	orrs	r2, r2, r1
	ldr	r3, [r0, #8]
	str	ip, [r0, #0]
	str	r3, [r0, #4]
	beq	.L411
	b	.L409
	UNWIND(.fnend)
	.size	OPTM_ALG_ProcRefFld, .-OPTM_ALG_ProcRefFld
	.align	2
	.global	GetHfirCoef
	.type	GetHfirCoef, %function
GetHfirCoef:
	UNWIND(.fnstart)
.LFB23:
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
.LFB24:
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
	bne	.L424
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
.L424:
	cmp	r6, #2
	movne	r6, #0
	andeq	r6, r3, #1
	cmp	r6, #0
	beq	.L432
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
.L432:
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
.LFB25:
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
	beq	.L447
	ldr	r2, [r1, #52]
	cmp	r2, #0
	bne	.L448
.L452:
	ldr	ip, [r1, #56]
	cmp	ip, #0
	movne	r0, r0, asr #1
	ldmnefd	sp, {fp, sp, pc}
.L448:
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L447:
	ldr	ip, [r1, #52]
	cmp	ip, #0
	bne	.L456
	ldr	r3, [r1, #48]
	cmp	r3, #0
	beq	.L452
	ldr	r2, [r1, #56]
	cmp	r2, #0
	subne	r0, r0, #4096
	movne	r0, r0, asr #1
	ldmnefd	sp, {fp, sp, pc}
	b	.L451
.L456:
	ldr	r0, [r1, #48]
	cmp	r0, #0
	beq	.L448
.L451:
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
.LFB30:
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
	ble	.L458
	cmp	r5, #0
	ldreq	r0, [r4, #0]
	ldrne	r0, [r4, #56]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L458:
	cmp	r0, #3264
	blt	.L461
	cmp	r5, #0
	ldreq	r0, [r4, #4]
	ldrne	r0, [r4, #60]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L461:
	cmp	r0, #3072
	bge	.L473
	cmp	r0, #2048
	blt	.L465
	cmp	r5, #0
	ldreq	r0, [r4, #12]
	ldrne	r0, [r4, #68]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L473:
	cmp	r5, #0
	ldreq	r0, [r4, #8]
	ldrne	r0, [r4, #64]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L465:
	movw	r1, #1364
	cmp	r0, r1
	bgt	.L474
	cmp	r0, #1024
	blt	.L469
	cmp	r5, #0
	ldreq	r0, [r4, #20]
	ldrne	r0, [r4, #76]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L474:
	cmp	r5, #0
	ldreq	r0, [r4, #16]
	ldrne	r0, [r4, #72]
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L469:
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
.LFB31:
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
	bne	.L476
	movw	r3, #4505
	cmp	r0, r3
	ble	.L477
.L513:
	cmp	r6, #0
	ldreq	r0, [r4, #28]
	ldrne	r0, [r4, #84]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L476:
	cmp	r0, #4096
	bgt	.L513
	beq	.L515
	cmp	r0, #3072
	bge	.L517
	cmp	r0, #2048
	bge	.L519
	movw	r2, #1364
	cmp	r0, r2
	bgt	.L521
	cmp	r0, #1024
	bge	.L523
	cmp	r6, #0
	beq	.L507
	ldr	r0, [r4, #108]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L477:
	cmp	r0, #3264
	bge	.L515
	cmp	r0, #3072
	bge	.L517
	cmp	r0, #2048
	bge	.L519
	movw	r1, #1364
	cmp	r0, r1
	bgt	.L521
	cmp	r0, #1024
	bge	.L523
	cmp	r6, #0
	ldrne	r0, [r4, #108]
	ldmnefd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L507:
	ldr	r0, [r4, #52]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L515:
	cmp	r6, #0
	ldreq	r0, [r4, #32]
	ldrne	r0, [r4, #88]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L519:
	cmp	r6, #0
	ldreq	r0, [r4, #40]
	ldrne	r0, [r4, #96]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L517:
	cmp	r6, #0
	ldreq	r0, [r4, #36]
	ldrne	r0, [r4, #92]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L521:
	cmp	r6, #0
	ldreq	r0, [r4, #44]
	ldrne	r0, [r4, #100]
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L523:
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
.LFB32:
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
	beq	.L545
.L525:
	mov	r3, #1
	str	r3, [r4, #40]
.L526:
	ldr	r7, [r6, #0]
	cmp	r7, #1280
	bls	.L527
	ldr	r0, [r6, #8]
	cmp	r0, #1280
	movhi	r0, #0
	strhi	r0, [r4, #40]
.L527:
	ldr	ip, [r6, #16]
	cmp	ip, #1
	beq	.L546
.L528:
	ldr	r7, [r4, #68]
	mov	r2, r7
.L529:
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
	bge	.L536
	ldr	sl, [r4, #64]
	cmp	sl, #0
	beq	.L547
.L536:
	mov	ip, #0
	str	ip, [r4, #48]
	str	ip, [r4, #44]
	str	ip, [r4, #52]
.L537:
	mov	lr, #0
	str	lr, [r4, #72]
	str	lr, [r4, #32]
	str	lr, [r4, #36]
	ldr	r3, [r6, #16]
	cmp	r3, #0
	bne	.L538
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L548
.L539:
	mov	r3, #0
	str	r3, [r4, #76]
.L540:
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
.L538:
	cmp	r3, #1
	bne	.L539
	ldr	lr, [r6, #20]
	cmp	lr, #0
	addeq	r2, r2, r2, lsr #31
	moveq	r2, r2, asr #1
	streq	r2, [r4, #76]
	bne	.L539
	b	.L540
.L547:
	mov	r0, #1
	str	r0, [r4, #48]
	str	r0, [r4, #44]
	str	r0, [r4, #52]
	b	.L537
.L546:
	ldr	r1, [r6, #20]
	cmp	r1, #0
	bne	.L528
	ldr	r7, [r4, #68]
	mov	r2, r7, asl #1
	b	.L529
.L545:
	ldr	lr, [r6, #12]
	cmp	lr, #720
	bls	.L525
	subs	r2, r0, #4096
	movne	r2, #1
	str	r2, [r4, #40]
	b	.L526
.L548:
	sub	ip, r2, #4096
	add	r0, ip, ip, lsr #31
	mov	r2, r0, asr #1
	str	r2, [r4, #76]
	b	.L540
	UNWIND(.fnend)
	.size	OPTM_ALG_GetGfxScalerInfo, .-OPTM_ALG_GetGfxScalerInfo
	.align	2
	.global	IniFlag
	.type	IniFlag, %function
IniFlag:
	UNWIND(.fnstart)
.LFB33:
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
.LFB34:
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
	addls	r0, r3, r0, asl #2
	movhi	r0, #1
	ldrls	r0, [r0, #140]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_GetFormatType, .-OPTM_ALG_GetFormatType
	.align	2
	.global	GetFrameRateInfo
	.type	GetFrameRateInfo, %function
GetFrameRateInfo:
	UNWIND(.fnstart)
.LFB35:
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
	beq	.L567
	ldr	r0, [r1, #8]
	sub	r0, r0, #1
	cmp	r0, #1
	movwls	ip, #:lower16:.LANCHOR0
	movtls	ip, #:upper16:.LANCHOR0
	addls	r0, ip, r0, asl #2
	movhi	ip, #2
	ldrls	ip, [r0, #308]
	cmp	r2, #0
	bne	.L568
.L558:
	ldr	r2, [r1, #4]
	cmp	r2, #1
	beq	.L569
.L563:
	ldr	r2, [r1, #12]
	sub	r2, r2, #1
	cmp	r2, #1
	bls	.L570
.L564:
	mov	r2, #2
	mov	r0, r3
	str	r2, [r3, #4]
	str	ip, [r3, #0]
	ldmfd	sp, {fp, sp, pc}
.L568:
	cmp	ip, #0
	moveq	ip, #5
	beq	.L558
	cmp	ip, #1
	ldr	r2, [r1, #4]
	moveq	ip, #6
	cmp	r2, #1
	bne	.L563
.L569:
	ldr	r2, [r1, #12]
	cmp	r2, #4
	bhi	.L564
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	add	r0, r1, r2, asl #2
	str	ip, [r3, #0]
	ldr	r2, [r0, #316]
	mov	r0, r3
	str	r2, [r3, #4]
	ldmfd	sp, {fp, sp, pc}
.L570:
	movw	r1, #:lower16:.LANCHOR0
	movt	r1, #:upper16:.LANCHOR0
	add	r0, r1, r2, asl #2
	str	ip, [r3, #0]
	ldr	r2, [r0, #336]
	mov	r0, r3
	str	r2, [r3, #4]
	ldmfd	sp, {fp, sp, pc}
.L567:
	ldr	r2, [r1, #8]
	cmp	r2, #4
	movwls	r0, #:lower16:.LANCHOR0
	movtls	r0, #:upper16:.LANCHOR0
	addls	r2, r0, r2, asl #2
	movhi	ip, #2
	ldrls	ip, [r2, #288]
	b	.L558
	UNWIND(.fnend)
	.size	GetFrameRateInfo, .-GetFrameRateInfo
	.align	2
	.global	FrameRateConversion
	.type	FrameRateConversion, %function
FrameRateConversion:
	UNWIND(.fnstart)
.LFB36:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldmia	r0, {r0, r3}	@ phole ldm
	cmp	r0, r3
	beq	.L572
	cmp	r0, #0
	beq	.L605
	cmp	r0, #1
	beq	.L606
	cmp	r0, #6
	beq	.L607
	cmp	r0, #5
	beq	.L608
	cmp	r0, #4
	beq	.L609
	cmp	r0, #3
	beq	.L610
	cmp	r0, #2
	beq	.L611
.L572:
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L605:
	cmp	r3, #1
	bne	.L572
	add	r2, r2, #1
	movw	ip, #:lower16:715827883
	movt	ip, #:upper16:715827883
	smull	r0, r1, ip, r2
	sub	r0, r1, r2, asr #31
	add	r3, r0, r0, asl #1
	cmp	r2, r3, asl #1
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L608:
	cmp	r3, #0
	beq	.L572
	cmp	r3, #1
	cmpne	r3, #6
	beq	.L603
	cmp	r3, #4
	beq	.L612
	cmp	r3, #3
	beq	.L602
	cmp	r3, #2
	bne	.L572
	add	r1, r1, #1
	movw	r3, #:lower16:1374389535
	movt	r3, #:upper16:1374389535
	mov	r2, r1, asr #31
	smull	r0, ip, r3, r1
	rsb	r3, r2, ip, asr #3
	add	r0, r3, r3, asl #2
	add	ip, r0, r0, asl #2
	rsb	r1, ip, r1
	cmp	r1, #24
	beq	.L581
	tst	r1, #1
	bne	.L572
.L576:
	mov	r0, #2
	ldmfd	sp, {fp, sp, pc}
.L606:
	cmp	r3, #0
	bne	.L572
.L600:
	add	r0, r1, #1
	movw	r3, #:lower16:715827883
	movt	r3, #:upper16:715827883
	smull	r2, ip, r3, r0
	sub	r3, ip, r0, asr #31
	add	r2, r3, r3, asl #1
	cmp	r0, r2, asl #1
	beq	.L576
	b	.L572
.L607:
	cmp	r3, #1
	beq	.L572
	cmp	r3, #0
	cmpne	r3, #5
	beq	.L613
	cmp	r3, #4
	beq	.L602
	cmp	r3, #3
	beq	.L614
	cmp	r3, #2
	bne	.L572
	add	r1, r1, #1
	movw	ip, #:lower16:1717986919
	movt	ip, #:upper16:1717986919
	mov	r2, r1, asr #31
	smull	r0, r3, ip, r1
	rsb	ip, r2, r3, asr #1
	add	r0, ip, ip, asl #2
	rsb	r1, r0, r1
	cmp	r1, #4
	beq	.L581
	cmp	r1, #2
	bne	.L572
	b	.L576
.L613:
	add	r2, r1, #1
	movw	r3, #:lower16:715827883
	movt	r3, #:upper16:715827883
	smull	r0, ip, r3, r2
	sub	r0, ip, r2, asr #31
	add	r3, r0, r0, asl #1
	cmp	r2, r3, asl #1
	beq	.L576
	b	.L572
.L611:
	cmp	r3, #0
	cmpne	r3, #5
	bne	.L595
	movw	r3, #:lower16:1374389535
	movt	r3, #:upper16:1374389535
	mov	r1, r2, asr #31
	smull	r0, ip, r3, r2
	rsb	r0, r1, ip, asr #3
	add	r3, r0, r0, asl #2
	add	ip, r3, r3, asl #2
	rsb	r1, ip, r2
	eor	r0, r1, #1
	and	r0, r0, #1
	ldmfd	sp, {fp, sp, pc}
.L609:
	cmp	r3, #1
	cmpne	r3, #6
	beq	.L604
	cmp	r3, #0
	cmpne	r3, #5
	bne	.L588
	movw	ip, #:lower16:1717986919
	movt	ip, #:upper16:1717986919
	mov	r1, r2, asr #31
	smull	r0, r3, ip, r2
	rsb	ip, r1, r3, asr #1
	add	r0, ip, ip, asl #2
	rsb	r1, r0, r2
	cmp	r1, #2
	cmpne	r1, #4
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L604:
	eor	r1, r2, #1
	and	r0, r1, #1
	ldmfd	sp, {fp, sp, pc}
.L610:
	cmp	r3, #0
	cmpne	r3, #5
	beq	.L604
	cmp	r3, #1
	cmpne	r3, #6
	bne	.L592
	movw	r3, #:lower16:715827883
	movt	r3, #:upper16:715827883
	mov	r1, r2, asr #31
	smull	r0, ip, r3, r2
	rsb	r3, r1, ip, asr #1
	add	r0, r3, r3, asl #1
	sub	r2, r2, r0, asl #2
	cmp	r2, #2
	cmpne	r2, #4
	beq	.L593
	cmp	r2, #5
	beq	.L593
	cmp	r2, #7
	beq	.L593
	cmp	r2, #9
	beq	.L593
	cmp	r2, #10
	beq	.L593
	rsbs	r0, r2, #1
	movcc	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L603:
	add	r2, r2, #1
	movw	r0, #:lower16:715827883
	movt	r0, #:upper16:715827883
	smull	r1, r3, r0, r2
	sub	ip, r3, r2, asr #31
	add	r0, ip, ip, asl #1
	cmp	r2, r0, asl #1
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L595:
	cmp	r3, #1
	cmpne	r3, #6
	bne	.L596
	movw	r3, #:lower16:1717986919
	movt	r3, #:upper16:1717986919
	mov	r1, r2, asr #31
	smull	r0, ip, r3, r2
	rsb	r3, r1, ip, asr #1
	add	ip, r3, r3, asl #2
	rsb	r2, ip, r2
	eor	r0, r2, #1
	and	r0, r0, #1
	ldmfd	sp, {fp, sp, pc}
.L602:
	tst	r1, #1
	bne	.L576
	b	.L572
.L588:
	cmp	r3, #3
	beq	.L600
	cmp	r3, #2
	bne	.L572
	add	r1, r1, #1
	movw	ip, #:lower16:1717986919
	movt	ip, #:upper16:1717986919
	mov	r2, r1, asr #31
	smull	r0, r3, ip, r1
	rsb	ip, r2, r3, asr #1
	add	r0, ip, ip, asl #2
	cmp	r1, r0
	beq	.L576
	b	.L572
.L592:
	cmp	r3, #4
	beq	.L603
	cmp	r3, #2
	bne	.L572
	add	r1, r1, #1
	movw	r3, #:lower16:1374389535
	movt	r3, #:upper16:1374389535
	mov	r2, r1, asr #31
	smull	r0, ip, r3, r1
	rsb	r3, r2, ip, asr #3
	add	ip, r3, r3, asl #2
	add	r2, ip, ip, asl #2
	cmp	r1, r2
	beq	.L576
	b	.L572
.L596:
	cmp	r3, #4
	beq	.L615
	cmp	r3, #3
	bne	.L572
	add	r2, r2, #1
	movw	ip, #:lower16:1374389535
	movt	ip, #:upper16:1374389535
	mov	r1, r2, asr #31
	smull	r0, r3, ip, r2
	rsb	ip, r1, r3, asr #3
	add	r1, ip, ip, asl #2
	add	r0, r1, r1, asl #2
	cmp	r2, r0
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L614:
	add	r1, r1, #1
	movw	r3, #:lower16:715827883
	movt	r3, #:upper16:715827883
	mov	r2, r1, asr #31
	smull	r0, ip, r3, r1
	rsb	r0, r2, ip, asr #1
	add	r2, r0, r0, asl #1
	sub	r3, r1, r2, asl #2
	cmp	r3, #4
	cmpne	r3, #9
	beq	.L581
	cmp	r3, #2
	cmpne	r3, #7
	beq	.L576
	cmp	r3, #0
	beq	.L576
	b	.L572
.L593:
	mov	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L612:
	add	ip, r1, #1
	movw	r3, #:lower16:1717986919
	movt	r3, #:upper16:1717986919
	mov	r2, ip, asr #31
	smull	r0, r3, r3, ip
	rsb	r3, r2, r3, asr #1
	add	r0, r3, r3, asl #2
	rsb	r1, r0, ip
	cmp	r1, #2
	cmpne	r1, #4
	beq	.L576
	b	.L572
.L581:
	mov	r0, #3
	ldmfd	sp, {fp, sp, pc}
.L615:
	add	r2, r2, #1
	movw	ip, #:lower16:1717986919
	movt	ip, #:upper16:1717986919
	mov	r1, r2, asr #31
	smull	r0, r3, ip, r2
	rsb	ip, r1, r3, asr #1
	add	r0, ip, ip, asl #2
	cmp	r2, r0
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	FrameRateConversion, .-FrameRateConversion
	.align	2
	.global	OPTM_ALG_MyCheck
	.type	OPTM_ALG_MyCheck, %function
OPTM_ALG_MyCheck:
	UNWIND(.fnstart)
.LFB37:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #3
	bhi	.L617
	cmp	r3, #3
	bhi	.L617
	movw	r2, #:lower16:.LANCHOR0
	movt	r2, #:upper16:.LANCHOR0
	add	r3, r2, r3, asl #2
	ldr	r0, [r3, #344]
	ldmfd	sp, {fp, sp, pc}
.L617:
	mvn	r0, #0
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_MyCheck, .-OPTM_ALG_MyCheck
	.align	2
	.global	OPTM_ALG_AcmInfoCheck
	.type	OPTM_ALG_AcmInfoCheck, %function
OPTM_ALG_AcmInfoCheck:
	UNWIND(.fnstart)
.LFB38:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #3
	ldrls	pc, [pc, r1, asl #2]
	b	.L622
.L627:
	.word	.L623
	.word	.L624
	.word	.L625
	.word	.L626
.L622:
	mvn	r0, #0
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L626:
	add	r3, r0, #48
.L628:
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L622
.L633:
	.word	.L629
	.word	.L630
	.word	.L631
	.word	.L632
.L625:
	add	r3, r0, #32
	b	.L628
.L624:
	add	r3, r0, #16
	b	.L628
.L623:
	mov	r3, r0
	b	.L628
.L632:
	add	r2, r0, #48
.L634:
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	ldrb	r5, [r3, #5]	@ zero_extendqisi2
	rsb	r0, r1, ip
	ldrb	r4, [r2, #5]	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r0, #2
	bhi	.L635
	rsb	r0, r4, r5
	add	r0, r0, #1
	cmp	r0, #2
	bhi	.L635
	rsb	r0, ip, r1
	cmn	r0, #1
	beq	.L649
	cmp	r4, r5
	movne	r6, #0
	moveq	r6, #1
.L645:
	cmp	r1, ip
	beq	.L650
.L640:
	cmp	r0, #1
	beq	.L651
.L641:
	cmp	r1, ip
	beq	.L652
.L635:
	mov	r0, #0
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L631:
	add	r2, r0, #32
	b	.L634
.L630:
	add	r2, r0, #16
	b	.L634
.L629:
	mov	r2, r0
	b	.L634
.L649:
	rsb	r7, r5, r4
	cmn	r7, #1
	beq	.L653
	cmp	r4, r5
	movne	r6, #0
	moveq	r6, #1
	subs	r8, r6, #0
	beq	.L639
	ldrb	r4, [r3, #10]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	ip, [r3, #7]	@ zero_extendqisi2
	ldrb	r1, [r3, #11]	@ zero_extendqisi2
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	strb	r4, [r2, #13]
	strb	ip, [r2, #8]
	strb	r1, [r2, #12]
	strb	r3, [r2, #9]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L652:
	rsb	r4, r5, r4
	cmn	r4, #1
	beq	.L654
	cmp	r6, #0
	beq	.L635
	ldrb	r8, [r3, #13]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	r7, [r3, #6]	@ zero_extendqisi2
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	ldrb	r5, [r3, #7]	@ zero_extendqisi2
	ldrb	r4, [r3, #11]	@ zero_extendqisi2
	ldrb	ip, [r3, #8]	@ zero_extendqisi2
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	strb	r8, [r2, #13]
	strb	r7, [r2, #6]
	strb	r6, [r2, #10]
	strb	r5, [r2, #7]
	strb	r4, [r2, #11]
	strb	ip, [r2, #8]
	strb	r1, [r2, #12]
	strb	r3, [r2, #9]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L650:
	rsb	r7, r5, r4
	cmp	r7, #1
	bne	.L640
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	ip, [r3, #7]	@ zero_extendqisi2
	ldrb	r1, [r3, #11]	@ zero_extendqisi2
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strb	r4, [r2, #13]
	strb	ip, [r2, #6]
	strb	r1, [r2, #10]
	strb	r3, [r2, #9]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L651:
	rsb	r7, r5, r4
	cmp	r7, #1
	beq	.L655
	subs	r0, r6, #0
	beq	.L643
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	ip, [r3, #9]	@ zero_extendqisi2
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strb	r4, [r2, #11]
	strb	ip, [r2, #6]
	strb	r1, [r2, #10]
	strb	r3, [r2, #7]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L653:
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	strb	r1, [r2, #12]
	strb	r3, [r2, #8]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L655:
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strb	r1, [r2, #10]
	strb	r3, [r2, #6]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L654:
	ldrb	r4, [r3, #13]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	ip, [r3, #6]	@ zero_extendqisi2
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	strb	r4, [r2, #12]
	strb	ip, [r2, #7]
	strb	r1, [r2, #11]
	strb	r3, [r2, #8]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L643:
	cmn	r7, #1
	bne	.L641
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	strb	r1, [r2, #11]
	strb	r3, [r2, #7]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
.L639:
	cmp	r7, #1
	bne	.L645
	ldrb	r1, [r3, #11]	@ zero_extendqisi2
	mov	r0, r8
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	strb	r1, [r2, #13]
	strb	r3, [r2, #9]
	ldmfd	sp, {r4, r5, r6, r7, r8, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_AcmInfoCheck, .-OPTM_ALG_AcmInfoCheck
	.align	2
	.global	OPTM_ALG_AcmBoundCheck
	.type	OPTM_ALG_AcmBoundCheck, %function
OPTM_ALG_AcmBoundCheck:
	UNWIND(.fnstart)
.LFB39:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldrb	r2, [r0, #5]	@ zero_extendqisi2
	orrs	r1, r2, r3
	beq	.L666
	rsbs	ip, r3, #1
	movcc	ip, #0
	cmp	r2, #15
	movne	r1, #0
	moveq	r1, #1
	tst	r1, ip
	bne	.L667
	cmp	r3, #15
	movne	r3, #0
	moveq	r3, #1
	tst	r3, r1
	bne	.L668
	rsbs	r2, r2, #1
	movcc	r2, #0
	tst	r2, r3
	bne	.L669
	cmp	ip, #0
	bne	.L670
	cmp	r1, #0
	bne	.L671
	cmp	r3, #0
	bne	.L672
	cmp	r2, #0
	ldmeqfd	sp, {fp, sp, pc}
	ldrsb	r2, [r0, #10]
	ldrsb	ip, [r0, #13]
	bic	r1, r2, r2, asr #31
	strb	r1, [r0, #10]
	bic	r3, ip, ip, asr #31
	strb	r3, [r0, #13]
	ldmfd	sp, {fp, sp, pc}
.L667:
	ldrsb	r2, [r0, #6]
	ldrsb	r1, [r0, #7]
	bic	ip, r2, r2, asr #31
	ldrsb	r3, [r0, #11]
	ldrsb	r2, [r0, #12]
	bic	r1, r1, r1, asr #31
	strb	ip, [r0, #6]
	and	r3, r3, r3, asr #31
	and	ip, r2, r2, asr #31
	strb	r1, [r0, #7]
	strb	ip, [r0, #12]
	strb	r3, [r0, #11]
	ldmfd	sp, {fp, sp, pc}
.L666:
	ldrsb	r2, [r0, #6]
	ldrsb	r1, [r0, #10]
	ldrsb	r3, [r0, #7]
	bic	ip, r2, r2, asr #31
	ldrsb	r2, [r0, #13]
	bic	r1, r1, r1, asr #31
	bic	r3, r3, r3, asr #31
	strb	ip, [r0, #6]
	bic	r2, r2, r2, asr #31
	strb	r1, [r0, #10]
	strb	r2, [r0, #13]
	strb	r3, [r0, #7]
	ldmfd	sp, {fp, sp, pc}
.L669:
	ldrsb	r2, [r0, #10]
	ldrsb	r1, [r0, #8]
	bic	ip, r2, r2, asr #31
	ldrsb	r3, [r0, #9]
	ldrsb	r2, [r0, #13]
	and	r1, r1, r1, asr #31
	strb	ip, [r0, #10]
	and	r3, r3, r3, asr #31
	bic	ip, r2, r2, asr #31
	strb	r1, [r0, #8]
	strb	ip, [r0, #13]
	strb	r3, [r0, #9]
	ldmfd	sp, {fp, sp, pc}
.L668:
	ldrsb	r2, [r0, #11]
	ldrsb	r1, [r0, #8]
	and	ip, r2, r2, asr #31
	ldrsb	r3, [r0, #12]
	ldrsb	r2, [r0, #9]
	and	r1, r1, r1, asr #31
	strb	ip, [r0, #11]
	and	r3, r3, r3, asr #31
	and	ip, r2, r2, asr #31
	strb	r1, [r0, #8]
	strb	ip, [r0, #9]
	strb	r3, [r0, #12]
	ldmfd	sp, {fp, sp, pc}
.L670:
	ldrsb	r2, [r0, #6]
	ldrsb	ip, [r0, #7]
	bic	r1, r2, r2, asr #31
	strb	r1, [r0, #6]
	bic	r3, ip, ip, asr #31
	strb	r3, [r0, #7]
	ldmfd	sp, {fp, sp, pc}
.L671:
	ldrsb	r2, [r0, #11]
	ldrsb	ip, [r0, #12]
	and	r1, r2, r2, asr #31
	strb	r1, [r0, #11]
	and	r3, ip, ip, asr #31
	strb	r3, [r0, #12]
	ldmfd	sp, {fp, sp, pc}
.L672:
	ldrsb	r2, [r0, #8]
	ldrsb	ip, [r0, #9]
	and	r1, r2, r2, asr #31
	strb	r1, [r0, #8]
	and	r3, ip, ip, asr #31
	strb	r3, [r0, #9]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_AcmBoundCheck, .-OPTM_ALG_AcmBoundCheck
	.align	2
	.global	OPTM_ALG_InitAcmInfo
	.type	OPTM_ALG_InitAcmInfo, %function
OPTM_ALG_InitAcmInfo:
	UNWIND(.fnstart)
.LFB40:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #1
	mov	r4, r0
	bne	.L674
	mov	r3, #0
	mov	r2, #12
	str	r1, [r0, #32]
	mov	r5, #10
	str	r1, [r0, #16]
	mvn	lr, #3
	mov	r1, #6
	strb	r2, [r0, #41]
	strb	r1, [r0, #37]
	mvn	ip, #8
	mvn	r0, #11
	mvn	r6, #14
	strb	r0, [r4, #44]
	strb	r6, [r4, #23]
	mvn	r6, #9
	strb	r5, [r4, #9]
	strb	r6, [r4, #27]
	mvn	r6, #4
	strb	lr, [r4, #12]
	strb	r6, [r4, #29]
	mov	r6, #9
	str	r3, [r4, #0]
	strb	r6, [r4, #36]
	mvn	r6, #5
	str	r3, [r4, #48]
	strb	r6, [r4, #42]
	strb	r1, [r4, #4]
	strb	r5, [r4, #5]
	strb	r2, [r4, #6]
	strb	r2, [r4, #10]
	strb	r3, [r4, #7]
	strb	r3, [r4, #11]
	strb	lr, [r4, #8]
	strb	r2, [r4, #13]
	strb	r1, [r4, #20]
	strb	r1, [r4, #21]
	strb	ip, [r4, #22]
	strb	r0, [r4, #26]
	strb	r3, [r4, #24]
	strb	r3, [r4, #28]
	strb	r0, [r4, #25]
	strb	r2, [r4, #38]
	strb	r3, [r4, #39]
	strb	r3, [r4, #43]
	strb	r2, [r4, #40]
	strb	ip, [r4, #45]
	strb	r3, [r4, #61]
	strb	r3, [r4, #52]
	strb	r3, [r4, #53]
	strb	r3, [r4, #54]
	strb	r3, [r4, #58]
	strb	r3, [r4, #55]
	strb	r3, [r4, #59]
	strb	r3, [r4, #56]
	strb	r3, [r4, #60]
	strb	r3, [r4, #57]
.L674:
	mov	r0, r4
	bl	OPTM_ALG_AcmBoundCheck
	add	r0, r4, #16
	bl	OPTM_ALG_AcmBoundCheck
	add	r0, r4, #32
	bl	OPTM_ALG_AcmBoundCheck
	add	r0, r4, #48
	bl	OPTM_ALG_AcmBoundCheck
	mov	r0, r4
	mov	r1, #0
	mov	r2, #1
	bl	OPTM_ALG_AcmInfoCheck
	mov	r0, r4
	mov	r1, #0
	mov	r2, #2
	bl	OPTM_ALG_AcmInfoCheck
	mov	r0, r4
	mov	r1, #0
	mov	r2, #3
	bl	OPTM_ALG_AcmInfoCheck
	mov	r0, r4
	mov	r1, #1
	mov	r2, #2
	bl	OPTM_ALG_AcmInfoCheck
	mov	r0, r4
	mov	r1, #1
	mov	r2, #3
	bl	OPTM_ALG_AcmInfoCheck
	mov	r0, r4
	mov	r1, #2
	mov	r2, #3
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, lr}
	b	OPTM_ALG_AcmInfoCheck
	UNWIND(.fnend)
	.size	OPTM_ALG_InitAcmInfo, .-OPTM_ALG_InitAcmInfo
	.align	2
	.global	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr
	.type	OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr, %function
OPTM_ALG_CalCSCCoefTprtRGBtoYCbCr:
	UNWIND(.fnstart)
.LFB41:
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
	ldr	r4, [r5, #604]
	mul	r1, r1, r2
	mov	r2, r8, asl #1
	ldr	r8, [fp, #-72]
	ldr	r5, [r5, #360]
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
.LFB42:
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
	ldr	r6, [r3, #360]
	str	r7, [fp, #-104]
	mov	r2, r9, asl #1
	ldr	r7, [r3, #604]
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
.LFB44:
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
	ldr	sl, [r8, #360]
	str	r3, [fp, #-52]
	ldr	r3, [r8, #604]
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
.LFB45:
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
	ldr	r6, [ip, #604]
	ldr	ip, [ip, #360]
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
.LFB46:
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
	ldr	r9, [r7, #360]
	movt	ip, #:upper16:1759218605
	ldr	r5, [r7, #604]
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
	.type	OPTM_ALG_GetFrcFmt, %function
OPTM_ALG_GetFrcFmt:
	UNWIND(.fnstart)
.LFB47:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r0, #0
	bne	.L687
	cmp	r1, #250
	moveq	r0, #3
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r1, #300
	moveq	r0, #4
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r1, #125
	beq	.L701
.L688:
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L687:
	cmp	r0, #1
	bne	.L688
	cmp	r1, #250
	moveq	r0, #6
	ldmeqfd	sp, {fp, sp, pc}
	bhi	.L699
	cmp	r1, #150
	moveq	r0, #2
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r1, #240
	bne	.L688
	mov	r0, #5
	ldmfd	sp, {fp, sp, pc}
.L701:
	mov	r0, #1
	ldmfd	sp, {fp, sp, pc}
.L699:
	cmp	r1, #500
	moveq	r0, #8
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r1, #600
	moveq	r0, #9
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r1, #300
	bne	.L688
	mov	r0, #7
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_GetFrcFmt, .-OPTM_ALG_GetFrcFmt
	.align	2
	.global	OPTM_ALG_SetDecPro
	.type	OPTM_ALG_SetDecPro, %function
OPTM_ALG_SetDecPro:
	UNWIND(.fnstart)
.LFB51:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r0, #12]
	mov	r4, r0
	cmp	r3, r1
	beq	.L703
	ldr	r0, [r0, #20]
	cmp	r0, r1
	strne	r1, [r4, #20]
	movne	r3, #1
	strne	r3, [r4, #24]
	beq	.L710
.L703:
	mov	r0, #0
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L710:
	ldr	r1, [r4, #24]
	add	r3, r1, #1
	str	r3, [r4, #24]
	cmp	r3, #5
	ble	.L703
	str	r0, [r4, #12]
	ldr	r1, [r4, #16]
	bl	OPTM_ALG_GetFrcFmt
	cmp	r0, #0
	str	r0, [r4, #0]
	bne	.L711
.L706:
	mov	r0, #0
	str	r0, [r4, #44]
.L708:
	mvn	lr, #0
	mov	ip, #0
	str	lr, [r4, #20]
	mov	r0, #0
	str	ip, [r4, #24]
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L711:
	ldr	r2, [r4, #4]
	cmp	r2, #0
	orrne	r0, r2, r0, asl #16
	strne	r0, [r4, #44]
	bne	.L708
	b	.L706
	UNWIND(.fnend)
	.size	OPTM_ALG_SetDecPro, .-OPTM_ALG_SetDecPro
	.align	2
	.global	Video_InitLTICTIInfo
	.type	Video_InitLTICTIInfo, %function
Video_InitLTICTIInfo:
	UNWIND(.fnstart)
.LFB55:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r3, #4
	mvn	r2, #127
	mov	r6, #15	@ movhi
	mov	r5, #50	@ movhi
	mov	r4, #51	@ movhi
	mov	ip, #2
	mvn	r1, #20
	mvn	r7, #18
	strh	r6, [r0, #46]	@ movhi
	mvn	r6, #0
	strh	r5, [r0, #20]	@ movhi
	mov	r5, #512
	strh	r4, [r0, #22]	@ movhi
	mov	r4, #127
	strb	r7, [r0, #4]
	mvn	r7, #7
	strh	r3, [r0, #40]	@ movhi
	strb	r7, [r0, #5]
	mvn	r7, #1
	strh	r3, [r0, #16]	@ movhi
	strb	r7, [r0, #6]
	mvn	r7, #10
	strb	r2, [r0, #26]
	strb	r6, [r0, #8]
	strh	r5, [r0, #36]	@ movhi
	strb	r4, [r0, #44]
	strh	ip, [r0, #38]	@ movhi
	strb	r1, [r0, #33]
	strb	r7, [r0, #34]
	strb	r6, [r0, #7]
	strh	r5, [r0, #10]	@ movhi
	strb	r4, [r0, #18]
	strh	r3, [r0, #14]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strb	r2, [r0, #24]
	strb	r2, [r0, #25]
	strb	r1, [r0, #32]
	strh	r3, [r0, #42]	@ movhi
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	Video_InitLTICTIInfo, .-Video_InitLTICTIInfo
	.align	2
	.global	Gfx_InitLTICTIInfo
	.type	Gfx_InitLTICTIInfo, %function
Gfx_InitLTICTIInfo:
	UNWIND(.fnstart)
.LFB56:
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
.LFB57:
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
	bge	.L723
	cmp	r2, #8192
	bge	.L724
	cmp	r0, r6
	movge	r6, r0
	movlt	r6, r6
	cmp	r6, #4096
	cmpge	r2, #3072
	movlt	r6, #0
	movge	r6, #1
	bge	.L725
	movw	lr, #2302
	cmp	r2, lr
	bgt	.L726
	ldrsh	r1, [r4, #10]
	str	r6, [r4, #28]
	str	r6, [r4, #0]
	b	.L718
.L724:
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
.L718:
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
.L723:
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
	b	.L718
.L726:
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
	b	.L718
.L725:
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
	b	.L718
	UNWIND(.fnend)
	.size	Gfx_GetLTICTIInfo, .-Gfx_GetLTICTIInfo
	.align	2
	.global	Video_GetLTICTIInfo
	.type	Video_GetLTICTIInfo, %function
Video_GetLTICTIInfo:
	UNWIND(.fnstart)
.LFB58:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r6, [r0, #28]
	mov	r4, r1
	ldr	r2, [r0, #32]
	mov	r5, r0
	ldr	r8, [r0, #24]
	cmp	r6, #720
	mov	r0, r2, asl #12
	ldrgeh	sl, [r1, #48]
	ldrlth	sl, [r1, #46]
	mov	r1, r8
	bl	__aeabi_idiv
	mov	r1, r6
	mov	r7, r0
	ldr	r0, [r5, #36]
	mov	r0, r0, asl #12
	bl	__aeabi_idiv
	cmp	r7, #4096
	cmpge	r0, #4096
	movlt	r3, #0
	strlt	r3, [r4, #28]
	strlt	r3, [r4, #0]
	blt	.L731
	cmp	r8, r6
	movlt	r6, r8
	movge	r6, r6
	cmp	r0, r7
	movge	r2, r0
	movlt	r2, r7
	movw	r3, #1079
	cmp	r0, r7
	movlt	r7, r0
	movge	r7, r7
	cmp	r6, r3
	ble	.L732
	ldr	r3, [r5, #44]
	cmp	r3, #1
	beq	.L750
	cmp	r3, #0
	bne	.L735
	ldr	r6, [r5, #52]
	cmp	r2, #4096
	cmpeq	r6, #0
	bne	.L735
	cmp	r7, #4096
	beq	.L734
.L735:
	ldr	r0, [r5, #60]
	mov	r2, #3	@ movhi
	mov	r3, #2	@ movhi
	mov	lr, #256	@ movhi
	cmp	r0, #0
	mov	ip, #127
	strh	r3, [r4, #12]	@ movhi
	movne	r0, #153
	moveq	r0, #180
	strh	r2, [r4, #16]	@ movhi
	strh	r2, [r4, #14]	@ movhi
	strh	r0, [r4, #10]	@ movhi
	strh	lr, [r4, #36]	@ movhi
	strb	ip, [r4, #18]
.L731:
	sxth	sl, sl
	movw	ip, #:lower16:-2004318071
	cmp	sl, #30
	movge	sl, #30
	movt	ip, #:upper16:-2004318071
	bic	r6, sl, sl, asr #31
	mov	r2, #127
	strb	r2, [r4, #18]
	mov	lr, #2	@ movhi
	mov	r3, r6, asl #2
	mov	sl, r6, asl #9
	mov	r2, r6, asl #8
	strh	lr, [r4, #12]	@ movhi
	smull	r6, r5, ip, r3
	mov	r0, r3, asr #31
	smull	r6, lr, ip, r2
	add	r1, r5, r3
	smull	r5, r3, ip, sl
	rsb	r6, r0, r1, asr #3
	add	ip, lr, r2
	mov	lr, sl, asr #31
	add	sl, r3, sl
	mov	r0, r2, asr #31
	uxth	r1, r6
	rsb	r3, r0, ip, asr #3
	rsb	sl, lr, sl, asr #3
	strh	r3, [r4, #36]	@ movhi
	strh	sl, [r4, #10]	@ movhi
	strh	r1, [r4, #14]	@ movhi
	strh	r1, [r4, #16]	@ movhi
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L732:
	cmp	r6, #720
	bge	.L751
	cmp	r6, #480
	bge	.L752
.L741:
	ldr	ip, [r5, #60]
	mov	r0, #6	@ movhi
	mov	r2, #4	@ movhi
	mov	lr, #256	@ movhi
	cmp	ip, #0
	mov	r5, #127
	strh	r2, [r4, #12]	@ movhi
	movne	ip, #128
	moveq	ip, #153
	strh	r0, [r4, #16]	@ movhi
	strh	r0, [r4, #14]	@ movhi
	strh	lr, [r4, #36]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	strb	r5, [r4, #18]
	b	.L731
.L751:
	ldr	r1, [r5, #44]
	cmp	r1, #1
	bne	.L741
	ldr	ip, [r5, #60]
	mov	lr, #4	@ movhi
	mov	r0, #2	@ movhi
	mov	r5, #256	@ movhi
	cmp	ip, #0
	mov	r6, #127
	strh	r0, [r4, #12]	@ movhi
	movne	ip, #153
	moveq	ip, #180
	strh	lr, [r4, #16]	@ movhi
	strh	lr, [r4, #14]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	strh	r5, [r4, #36]	@ movhi
	strb	r6, [r4, #18]
	b	.L731
.L750:
	ldr	r1, [r5, #52]
	cmp	r1, #1
	bne	.L735
.L734:
	mov	r2, #4	@ movhi
	ldr	r3, [r5, #60]
	mov	r5, #2	@ movhi
	strh	r5, [r4, #12]	@ movhi
.L749:
	cmp	r3, #0
	mov	r6, #256	@ movhi
	strh	r2, [r4, #16]	@ movhi
	movne	r3, #128
	moveq	r3, #153
	strh	r2, [r4, #14]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	mov	r3, #127
	strh	r6, [r4, #36]	@ movhi
	strb	r3, [r4, #18]
	b	.L731
.L752:
	ldr	r2, [r5, #44]
	cmp	r2, #1
	bne	.L741
	ldr	r3, [r5, #60]
	mov	r1, #4	@ movhi
	mov	r2, #6	@ movhi
	strh	r1, [r4, #12]	@ movhi
	b	.L749
	UNWIND(.fnend)
	.size	Video_GetLTICTIInfo, .-Video_GetLTICTIInfo
	.align	2
	.global	OPTM_ALG_Reset
	.type	OPTM_ALG_Reset, %function
OPTM_ALG_Reset:
	UNWIND(.fnstart)
.LFB50:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r2, r0, #0
	mvneq	r0, #0
	ldmeqfd	sp, {fp, sp, pc}
	mov	r0, r2
	mov	r3, #0
	str	r3, [r0], #4
	add	ip, r0, #4
	str	r3, [r2, #4]
	mov	r0, r3
	str	r3, [ip], #4
	mov	r1, #1
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip, #0]
	mvn	r3, #0
	str	r1, [r2, #40]
	str	r3, [r2, #20]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_Reset, .-OPTM_ALG_Reset
	.align	2
	.global	OPTM_ALG_FrcFrmProcExtern
	.type	OPTM_ALG_FrcFrmProcExtern, %function
OPTM_ALG_FrcFrmProcExtern:
	UNWIND(.fnstart)
.LFB54:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r2, [r0, #12]
	mov	r4, r0
	ldr	r3, [r1, #4]
	mov	r5, r1
	cmp	r2, r3
	beq	.L783
.L758:
	mov	r0, r4
	bl	OPTM_ALG_Reset
	ldr	r0, [r5, #4]
	str	r0, [r4, #12]
	ldr	r1, [r5, #12]
	str	r1, [r4, #16]
	ldr	r6, [r5, #16]
	str	r6, [r4, #28]
	ldr	r2, [r5, #0]
	str	r2, [r4, #8]
	bl	OPTM_ALG_GetFrcFmt
	mov	r1, r6
	mov	r5, r0
	str	r0, [r4, #0]
	mov	r0, #1
	bl	OPTM_ALG_GetFrcFmt
	cmp	r5, #0
	str	r0, [r4, #4]
	bne	.L784
.L760:
	mov	lr, #0
	str	lr, [r4, #44]
.L759:
	ldr	r2, [r4, #44]
	movw	r3, #:lower16:327688
	movt	r3, #:upper16:327688
	ldr	r1, [r4, #48]
	cmp	r2, r3
	add	r3, r1, #1
	str	r3, [r4, #48]
	beq	.L769
.L788:
	bls	.L785
	movw	r1, #:lower16:458756
	movt	r1, #:upper16:458756
	cmp	r2, r1
	beq	.L764
	bls	.L786
	movw	r1, #:lower16:524292
	movt	r1, #:upper16:524292
	cmp	r2, r1
	beq	.L767
	bls	.L787
	movw	ip, #:lower16:589827
	movt	ip, #:upper16:589827
	cmp	r2, ip
	beq	.L768
	movw	r1, #:lower16:589832
	movt	r1, #:upper16:589832
	cmp	r2, r1
	beq	.L768
	movw	r0, #:lower16:524297
	movt	r0, #:upper16:524297
	cmp	r2, r0
	bne	.L762
.L767:
	movw	r0, #:lower16:-858993459
	movt	r0, #:upper16:-858993459
	umull	r1, ip, r0, r3
	mov	r2, ip, lsr #2
	add	r1, r2, r2, asl #2
	cmp	r3, r1
	beq	.L764
.L762:
	mov	r0, #0
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L784:
	cmp	r0, #0
	orrne	r5, r0, r5, asl #16
	strne	r5, [r4, #44]
	beq	.L760
	ldr	r2, [r4, #44]
	movw	r3, #:lower16:327688
	movt	r3, #:upper16:327688
	ldr	r1, [r4, #48]
	cmp	r2, r3
	add	r3, r1, #1
	str	r3, [r4, #48]
	bne	.L788
.L769:
	movw	r2, #:lower16:-1431655765
	movt	r2, #:upper16:-1431655765
	umull	r1, r0, r2, r3
	mov	ip, r0, lsr #3
	add	r1, ip, ip, asl #1
	cmp	r3, r1, asl #2
	beq	.L766
.L764:
	mov	r0, #10
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L785:
	movw	ip, #:lower16:131081
	movt	ip, #:upper16:131081
	cmp	r2, ip
	beq	.L766
	bls	.L789
	movw	ip, #:lower16:262147
	movt	ip, #:upper16:262147
	cmp	r2, ip
	beq	.L768
	bls	.L790
	movw	ip, #:lower16:327683
	movt	ip, #:upper16:327683
	cmp	r2, ip
	beq	.L769
	movw	r1, #:lower16:327684
	movt	r1, #:upper16:327684
	cmp	r2, r1
	beq	.L770
	movw	ip, #:lower16:262152
	movt	ip, #:upper16:262152
	cmp	r2, ip
	bne	.L762
.L768:
	movw	ip, #:lower16:-1431655765
	movt	ip, #:upper16:-1431655765
	umull	r1, r2, ip, r3
	mov	ip, r2, lsr #2
	add	r1, ip, ip, asl #1
	cmp	r3, r1, asl #1
	moveq	r0, #4
	ldmeqfd	sp, {r3, r4, r5, r6, fp, sp, pc}
	b	.L762
.L783:
	ldr	r1, [r0, #16]
	ldr	ip, [r5, #12]
	cmp	r1, ip
	bne	.L758
	ldr	r2, [r0, #28]
	ldr	r3, [r5, #16]
	cmp	r2, r3
	bne	.L758
	ldr	r1, [r0, #8]
	ldr	ip, [r5, #0]
	cmp	r1, ip
	bne	.L758
	b	.L759
.L786:
	movw	r0, #:lower16:393220
	movt	r0, #:upper16:393220
	cmp	r2, r0
	beq	.L763
	bls	.L791
	movw	r1, #:lower16:393225
	movt	r1, #:upper16:393225
	cmp	r2, r1
	beq	.L763
	movw	r0, #:lower16:458755
	movt	r0, #:upper16:458755
	cmp	r2, r0
	beq	.L771
	movw	ip, #:lower16:393224
	movt	ip, #:upper16:393224
	cmp	r2, ip
	bne	.L762
	b	.L764
.L789:
	movw	r0, #:lower16:65545
	movt	r0, #:upper16:65545
	cmp	r2, r0
	beq	.L763
	bls	.L792
	movw	ip, #:lower16:131076
	movt	ip, #:upper16:131076
	cmp	r2, ip
	beq	.L766
	movw	r0, #:lower16:131080
	movt	r0, #:upper16:131080
	cmp	r2, r0
	beq	.L765
	movw	r1, #:lower16:131075
	movt	r1, #:upper16:131075
	cmp	r2, r1
	bne	.L762
.L765:
	movw	r2, #:lower16:-1431655765
	movt	r2, #:upper16:-1431655765
	umull	r1, r0, r2, r3
	mov	ip, r0, lsr #1
	add	r2, ip, ip, asl #1
	cmp	r3, r2
	beq	.L766
.L779:
	mov	r0, #11
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L766:
	mov	r0, #12
	ldmfd	sp, {r3, r4, r5, r6, fp, sp, pc}
.L763:
	movw	r0, #:lower16:-858993459
	movt	r0, #:upper16:-858993459
	umull	r1, ip, r0, r3
	mov	r2, ip, lsr #2
	add	r1, r2, r2, asl #2
	rsb	r0, r1, r3
	cmp	r0, #3
	cmpne	r3, r1
	bne	.L764
	b	.L779
.L790:
	movw	r0, #:lower16:196612
	movt	r0, #:upper16:196612
	cmp	r2, r0
	beq	.L767
	movw	r1, #:lower16:196617
	movt	r1, #:upper16:196617
	cmp	r2, r1
	bne	.L762
	b	.L767
.L792:
	movw	r1, #:lower16:65540
	movt	r1, #:upper16:65540
	cmp	r2, r1
	beq	.L763
	movw	r3, #:lower16:65544
	movt	r3, #:upper16:65544
	cmp	r2, r3
	bne	.L762
	b	.L764
.L787:
	movw	r0, #:lower16:458760
	movt	r0, #:upper16:458760
	cmp	r2, r0
	beq	.L771
	movw	r3, #:lower16:458761
	movt	r3, #:upper16:458761
	cmp	r2, r3
	bne	.L762
	b	.L764
.L791:
	movw	ip, #:lower16:327689
	movt	ip, #:upper16:327689
	cmp	r2, ip
	beq	.L770
	movw	r3, #:lower16:393219
	movt	r3, #:upper16:393219
	cmp	r2, r3
	bne	.L762
	b	.L764
.L771:
	movw	r2, #:lower16:-1431655765
	movt	r2, #:upper16:-1431655765
	umull	r1, r0, r2, r3
	mov	ip, r0, lsr #1
	add	r1, ip, ip, asl #1
	cmp	r3, r1
	bne	.L764
	b	.L762
.L770:
	tst	r3, #1
	bne	.L764
	b	.L779
	UNWIND(.fnend)
	.size	OPTM_ALG_FrcFrmProcExtern, .-OPTM_ALG_FrcFrmProcExtern
	.global	__aeabi_uidivmod
	.align	2
	.global	OPTM_ALG_FrcFldProcExtern
	.type	OPTM_ALG_FrcFldProcExtern, %function
OPTM_ALG_FrcFldProcExtern:
	UNWIND(.fnstart)
.LFB53:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #20)
	sub	sp, sp, #20
	ldr	r8, [r1, #12]
	mov	r5, r1
	mov	r4, r0
	mov	r6, r2
	cmp	r8, #0
	streq	r8, [r2, #8]
	streq	r8, [r2, #0]
	streq	r8, [r2, #4]
	beq	.L840
	ldr	sl, [r0, #12]
	ldr	r3, [r1, #4]
	cmp	sl, r3
	beq	.L843
.L796:
	mov	r0, r4
	mov	r7, r8
	bl	OPTM_ALG_Reset
	str	r8, [r4, #16]
	ldr	r0, [r5, #16]
	mov	r3, #1
	mov	r8, r3
	str	r0, [r4, #28]
	ldr	sl, [r5, #4]
	str	sl, [r4, #12]
	ldr	r1, [r5, #0]
	str	r1, [r4, #8]
	ldr	ip, [r5, #20]
	str	r3, [r4, #36]
	str	ip, [r4, #32]
	ldr	r1, [r5, #20]
.L797:
	mov	r0, r0, asl #13
	bl	__aeabi_uidiv
	cmp	sl, #1
	mov	r9, r0
	beq	.L844
	mov	r7, r7, asl #6
	cmp	r0, r7
	bls	.L845
	mov	r1, r7
	bl	__aeabi_uidiv
	mov	r1, r7
	mov	sl, r0
	mov	r0, r9
	bl	__aeabi_uidivmod
	ldr	r3, [r4, #48]
	subs	r9, r1, #0
	beq	.L809
	mov	lr, r9, lsr #1
	add	r0, r8, #1
	str	r0, [fp, #-48]
	mla	r0, r8, r7, lr
	str	r3, [fp, #-52]
	str	lr, [fp, #-56]
	bl	__aeabi_uidiv
	ldr	r2, [fp, #-52]
	mov	r1, r7, lsr #1
	mov	ip, r0
	mov	r0, r2
	str	ip, [fp, #-60]
	bl	__aeabi_uidivmod
	ldr	r2, [fp, #-60]
	ldr	ip, [fp, #-56]
	add	r3, r1, #1
	mov	r3, r3, asl #1
	sub	r1, r3, #1
	cmp	r1, r2
	beq	.L846
	cmp	r2, r3
	beq	.L847
.L809:
	sub	sl, sl, #1
	mov	ip, #0
	str	sl, [r6, #8]
	str	sl, [r6, #4]
	str	ip, [r6, #0]
	ldr	r1, [r4, #48]
	add	r3, r1, #1
	str	r3, [r4, #48]
.L840:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L843:
	ldr	r0, [r0, #28]
	ldr	r1, [r1, #16]
	cmp	r0, r1
	bne	.L796
	ldr	r2, [r4, #8]
	ldr	r7, [r5, #0]
	cmp	r2, r7
	bne	.L796
	ldr	r1, [r4, #32]
	ldr	r9, [r5, #20]
	cmp	r1, r9
	bne	.L796
	ldr	r7, [r4, #16]
	cmp	r7, r8
	ldreq	r8, [r4, #36]
	bne	.L796
	b	.L797
.L845:
	bcs	.L823
	subs	sl, r7, r0
	ldr	r9, [r4, #48]
	beq	.L823
	mov	lr, sl, lsr #1
	mov	r1, sl
	add	r3, r8, #1
	str	lr, [fp, #-60]
	mla	r0, r8, r7, lr
	str	r3, [fp, #-48]
	bl	__aeabi_uidiv
	mov	r1, r7, lsr #1
	mov	r2, r0
	mov	r0, r9
	str	r2, [fp, #-52]
	bl	__aeabi_uidivmod
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-60]
	add	r0, r1, #1
	mov	r9, r0, asl #1
	sub	ip, r9, #1
	cmp	ip, r3
	beq	.L848
	cmp	r3, r9
	bne	.L823
	ldr	r5, [r5, #8]
	mov	r1, sl
	ldr	r0, [fp, #-48]
	cmp	r5, #0
	moveq	r5, #3
	movne	r5, #2
	bl	__aeabi_uidivmod
	cmp	r1, #0
	moveq	r1, sl
	str	r1, [r4, #36]
.L832:
	cmp	r5, #2
	mov	r2, #0
	streq	r2, [r6, #8]
	streq	r2, [r6, #0]
	mvneq	r2, #0
	strne	r2, [r6, #4]
	strne	r2, [r6, #0]
	mvnne	r2, #0
	streq	r2, [r6, #4]
	strne	r2, [r6, #8]
	b	.L805
.L850:
	bcc	.L849
.L823:
	mov	lr, #0
	str	lr, [r6, #8]
	str	lr, [r6, #0]
	str	lr, [r6, #4]
.L805:
	ldr	r1, [r4, #48]
	add	r3, r1, #1
	str	r3, [r4, #48]
	b	.L840
.L844:
	mov	r7, r7, asl #5
	cmp	r0, r7
	bls	.L850
	mov	r1, r7
	bl	__aeabi_uidiv
	mov	r1, r7
	mov	sl, r0
	mov	r0, r9
	bl	__aeabi_uidivmod
	ldr	r9, [r4, #48]
	subs	r5, r1, #0
	beq	.L803
	mul	lr, r8, r7
	add	r0, lr, r5, lsr #1
	bl	__aeabi_uidiv
	mov	r1, r7
	mov	ip, r0
	mov	r0, r9
	str	ip, [fp, #-52]
	bl	__aeabi_uidivmod
	ldr	r2, [fp, #-52]
	add	r0, r1, #1
	cmp	r2, r0
	beq	.L851
.L803:
	mov	r1, #0
	sub	sl, sl, #1
	str	r1, [r6, #8]
	str	sl, [r6, #0]
	str	r1, [r6, #4]
	b	.L805
.L849:
	subs	r9, r7, r0
	ldr	r5, [r4, #48]
	beq	.L823
	mul	sl, r8, r7
	mov	r1, r9
	add	r0, sl, r9, lsr #1
	bl	__aeabi_uidiv
	mov	r1, r7
	mov	sl, r0
	mov	r0, r5
	bl	__aeabi_uidivmod
	add	r0, r1, #1
	cmp	sl, r0
	bne	.L823
	add	r0, r8, #1
	mov	r1, r9
	bl	__aeabi_uidivmod
	mov	ip, #0
	mvn	r2, #0
	cmp	r1, ip
	moveq	r1, r9
	str	r1, [r4, #36]
	str	ip, [r6, #8]
	stmia	r6, {r2, ip}	@ phole stm
	b	.L805
.L847:
	ldr	r5, [r5, #8]
	mov	r1, r9
	ldr	r0, [fp, #-48]
	cmp	r5, #0
	moveq	r5, #3
	movne	r5, #2
	bl	__aeabi_uidivmod
	cmp	r1, #0
	moveq	r1, r9
	str	r1, [r4, #36]
.L817:
	cmp	r5, #2
	strne	sl, [r6, #8]
	subeq	r3, sl, #1
	subne	sl, sl, #1
	streq	r3, [r6, #8]
	movne	r3, #0
	moveq	r3, #0
	streq	sl, [r6, #4]
	streq	r3, [r6, #0]
	strne	r3, [r6, #0]
	strne	sl, [r6, #4]
	b	.L805
.L848:
	ldr	r1, [fp, #-48]
	mla	r0, r7, r1, r2
	mov	r1, sl
	bl	__aeabi_uidiv
	cmp	r0, r9
	beq	.L852
	ldr	r5, [r5, #8]
	mov	r1, sl
	ldr	r0, [fp, #-48]
	cmp	r5, #0
	moveq	r5, #2
	movne	r5, #3
	bl	__aeabi_uidivmod
	cmp	r1, #0
	moveq	r1, sl
	str	r1, [r4, #36]
	b	.L832
.L846:
	ldr	r2, [fp, #-48]
	mov	r1, r9
	str	r3, [fp, #-52]
	mla	r0, r7, r2, ip
	bl	__aeabi_uidiv
	ldr	r1, [fp, #-52]
	cmp	r0, r1
	beq	.L853
	ldr	r5, [r5, #8]
	mov	r1, r9
	ldr	r0, [fp, #-48]
	cmp	r5, #0
	moveq	r5, #2
	movne	r5, #3
	bl	__aeabi_uidivmod
	cmp	r1, #0
	moveq	r1, r9
	str	r1, [r4, #36]
	b	.L817
.L851:
	add	r0, r8, #1
	mov	r1, r5
	bl	__aeabi_uidivmod
	mov	r3, #0
	cmp	r1, r3
	moveq	r1, r5
	str	r1, [r4, #36]
	str	r3, [r6, #8]
	str	sl, [r6, #0]
	str	r3, [r6, #4]
	b	.L805
.L853:
	add	r0, r8, #2
	mov	r1, r9
	bl	__aeabi_uidivmod
	mov	r3, #0
	cmp	r1, #0
	moveq	r1, r9
	str	r1, [r4, #36]
	str	sl, [r6, #8]
	stmia	r6, {r3, sl}	@ phole stm
	b	.L805
.L852:
	add	r0, r8, #2
	mov	r1, sl
	bl	__aeabi_uidivmod
	mvn	ip, #0
	mov	r0, #0
	cmp	r1, #0
	moveq	r1, sl
	str	r1, [r4, #36]
	str	ip, [r6, #8]
	stmia	r6, {r0, ip}	@ phole stm
	b	.L805
	UNWIND(.fnend)
	.size	OPTM_ALG_FrcFldProcExtern, .-OPTM_ALG_FrcFldProcExtern
	.align	2
	.global	OPTM_ALG_Frc
	.type	OPTM_ALG_Frc, %function
OPTM_ALG_Frc:
	UNWIND(.fnstart)
.LFB52:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	mov	r5, r1
	ldr	r1, [r0, #12]
	mov	r4, r0
	mov	r6, r2
	cmp	r1, r5
	mov	r7, r3
	beq	.L905
.L855:
	mov	r0, r4
	bl	OPTM_ALG_Reset
	mov	r1, r6
	str	r5, [r4, #12]
	mov	r0, r5
	str	r6, [r4, #16]
	str	r7, [r4, #28]
	bl	OPTM_ALG_GetFrcFmt
	mov	r1, r7
	mov	r5, r0
	str	r0, [r4, #0]
	mov	r0, #1
	bl	OPTM_ALG_GetFrcFmt
	cmp	r5, #0
	str	r0, [r4, #4]
	bne	.L906
.L857:
	mov	r2, #0
	str	r2, [r4, #44]
.L856:
	ldr	r2, [r4, #44]
	movw	r1, #:lower16:327686
	movt	r1, #:upper16:327686
	ldr	ip, [r4, #48]
	cmp	r2, r1
	add	r0, ip, #1
	str	r0, [r4, #48]
	beq	.L878
.L909:
	bls	.L907
	movw	r3, #:lower16:458758
	movt	r3, #:upper16:458758
	cmp	r2, r3
	beq	.L872
	bls	.L908
	movw	r1, #:lower16:524295
	movt	r1, #:upper16:524295
	cmp	r2, r1
	beq	.L871
	bhi	.L895
	movw	r3, #:lower16:524292
	movt	r3, #:upper16:524292
	cmp	r2, r3
	beq	.L868
	bhi	.L896
	movw	ip, #:lower16:458760
	movt	ip, #:upper16:458760
	cmp	r2, ip
	beq	.L880
	movw	r0, #:lower16:458761
	movt	r0, #:upper16:458761
	cmp	r2, r0
	bne	.L859
.L863:
	mov	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L906:
	cmp	r0, #0
	orrne	r5, r0, r5, asl #16
	strne	r5, [r4, #44]
	beq	.L857
	ldr	r2, [r4, #44]
	movw	r1, #:lower16:327686
	movt	r1, #:upper16:327686
	ldr	ip, [r4, #48]
	cmp	r2, r1
	add	r0, ip, #1
	str	r0, [r4, #48]
	bne	.L909
.L878:
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #4
	add	r2, ip, ip, asl #1
	cmp	r0, r2, asl #3
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L907:
	movw	r3, #:lower16:131081
	movt	r3, #:upper16:131081
	cmp	r2, r3
	beq	.L865
	bls	.L910
	movw	r3, #:lower16:262147
	movt	r3, #:upper16:262147
	cmp	r2, r3
	beq	.L872
	bls	.L911
	movw	r3, #:lower16:262151
	movt	r3, #:upper16:262151
	cmp	r2, r3
	beq	.L875
	bhi	.L890
	movw	ip, #:lower16:262149
	movt	ip, #:upper16:262149
	cmp	r2, ip
	beq	.L873
	movw	r1, #:lower16:262150
	movt	r1, #:upper16:262150
	cmp	r2, r1
	bne	.L859
.L874:
	tst	r0, #1
	beq	.L899
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #3
	add	r2, ip, ip, asl #1
	sub	r0, r0, r2, asl #2
	cmp	r0, #11
	beq	.L899
.L859:
	mov	r0, #0
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L905:
	ldr	r3, [r0, #16]
	cmp	r3, r2
	bne	.L855
	ldr	r0, [r0, #28]
	cmp	r0, r7
	bne	.L855
	b	.L856
.L908:
	movw	ip, #:lower16:393221
	movt	ip, #:upper16:393221
	cmp	r2, ip
	beq	.L902
	bhi	.L892
	movw	r1, #:lower16:327689
	movt	r1, #:upper16:327689
	cmp	r2, r1
	beq	.L877
	bhi	.L893
	movw	r3, #:lower16:327687
	movt	r3, #:upper16:327687
	cmp	r2, r3
	beq	.L879
	movw	ip, #:lower16:327688
	movt	ip, #:upper16:327688
	cmp	r2, ip
	bne	.L859
.L876:
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #3
	add	r2, ip, ip, asl #1
	cmp	r0, r2, asl #2
	bne	.L863
.L900:
	mov	r0, #2
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L910:
	movw	ip, #:lower16:131075
	movt	ip, #:upper16:131075
	cmp	r2, ip
	beq	.L864
	bls	.L912
	movw	ip, #:lower16:131078
	movt	ip, #:upper16:131078
	cmp	r2, ip
	beq	.L867
	bhi	.L887
	movw	r1, #:lower16:131076
	movt	r1, #:upper16:131076
	cmp	r2, r1
	beq	.L865
	movw	r3, #:lower16:131077
	movt	r3, #:upper16:131077
	cmp	r2, r3
	bne	.L859
	tst	r0, #1
	bne	.L863
.L903:
	tst	r0, #7
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L895:
	movw	ip, #:lower16:589829
	movt	ip, #:upper16:589829
	cmp	r2, ip
	beq	.L873
	bhi	.L897
	movw	r1, #:lower16:524297
	movt	r1, #:upper16:524297
	cmp	r2, r1
	beq	.L868
	movw	r3, #:lower16:589827
	movt	r3, #:upper16:589827
	cmp	r2, r3
	bne	.L859
.L872:
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #2
	add	r2, ip, ip, asl #1
	cmp	r0, r2, asl #1
	bne	.L859
.L899:
	mvn	r0, #0
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L887:
	movw	ip, #:lower16:131079
	movt	ip, #:upper16:131079
	cmp	r2, ip
	beq	.L863
	movw	r1, #:lower16:131080
	movt	r1, #:upper16:131080
	cmp	r2, r1
	bne	.L859
.L864:
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #1
	add	r2, ip, ip, asl #1
	cmp	r0, r2
	bne	.L900
.L865:
	mov	r0, #3
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L911:
	movw	ip, #:lower16:196614
	movt	ip, #:upper16:196614
	cmp	r2, ip
	beq	.L875
	bhi	.L889
	movw	r1, #:lower16:196612
	movt	r1, #:upper16:196612
	cmp	r2, r1
	beq	.L868
	movw	r3, #:lower16:196613
	movt	r3, #:upper16:196613
	cmp	r2, r3
	bne	.L859
.L869:
	tst	r0, #1
	beq	.L899
.L902:
	movw	r3, #:lower16:1374389535
	movt	r3, #:upper16:1374389535
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #3
	add	r3, ip, ip, asl #2
	add	r2, r3, r3, asl #2
	cmp	r0, r2
	beq	.L899
	b	.L859
.L912:
	movw	r1, #:lower16:65543
	movt	r1, #:upper16:65543
	cmp	r2, r1
	beq	.L868
	bhi	.L886
	movw	r3, #:lower16:65540
	movt	r3, #:upper16:65540
	cmp	r2, r3
	beq	.L860
	movw	ip, #:lower16:65541
	movt	ip, #:upper16:65541
	cmp	r2, ip
	bne	.L859
	b	.L902
.L892:
	movw	ip, #:lower16:393225
	movt	ip, #:upper16:393225
	cmp	r2, ip
	beq	.L860
	bhi	.L894
	movw	r1, #:lower16:393223
	movt	r1, #:upper16:393223
	cmp	r2, r1
	beq	.L868
	movw	r0, #:lower16:393224
	movt	r0, #:upper16:393224
	cmp	r2, r0
	bne	.L859
	b	.L863
.L889:
	movw	ip, #:lower16:196615
	movt	ip, #:upper16:196615
	cmp	r2, ip
	beq	.L871
	movw	r1, #:lower16:196617
	movt	r1, #:upper16:196617
	cmp	r2, r1
	bne	.L859
.L868:
	movw	ip, #:lower16:-858993459
	movt	ip, #:upper16:-858993459
	umull	r2, r3, ip, r0
	mov	r1, r3, lsr #2
	add	r2, r1, r1, asl #2
	cmp	r0, r2
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L896:
	movw	r1, #:lower16:524293
	movt	r1, #:upper16:524293
	cmp	r2, r1
	beq	.L869
	movw	r3, #:lower16:524294
	movt	r3, #:upper16:524294
	cmp	r2, r3
	bne	.L859
.L875:
	tst	r0, #1
	beq	.L899
	b	.L859
.L886:
	movw	r1, #:lower16:65544
	movt	r1, #:upper16:65544
	cmp	r2, r1
	beq	.L863
	movw	r3, #:lower16:65545
	movt	r3, #:upper16:65545
	cmp	r2, r3
	bne	.L859
.L860:
	movw	ip, #:lower16:-858993459
	movt	ip, #:upper16:-858993459
	umull	r2, r3, ip, r0
	mov	r1, r3, lsr #2
	add	ip, r1, r1, asl #2
	rsb	r2, ip, r0
	cmp	r2, #3
	cmpne	r0, ip
	beq	.L900
	b	.L863
.L867:
	tst	r0, #1
	bne	.L863
	tst	r0, #3
	bne	.L903
	b	.L863
.L894:
	movw	r3, #:lower16:458756
	movt	r3, #:upper16:458756
	cmp	r2, r3
	beq	.L863
	bhi	.L881
	movw	ip, #:lower16:458755
	movt	ip, #:upper16:458755
	cmp	r2, ip
	bne	.L859
.L880:
	movw	r3, #:lower16:-1431655765
	movt	r3, #:upper16:-1431655765
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #1
	add	r2, ip, ip, asl #1
	subs	r0, r0, r2
	movne	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L879:
	tst	r0, #3
	movne	r0, #0
	moveq	r0, #1
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
.L877:
	tst	r0, #1
	beq	.L900
	b	.L863
.L873:
	movw	r3, #:lower16:-858993459
	movt	r3, #:upper16:-858993459
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #2
	add	r2, ip, ip, asl #2
	rsb	r0, r2, r0
	cmp	r0, #1
	cmpne	r0, #3
	beq	.L859
	b	.L899
.L871:
	movw	r3, #:lower16:-858993459
	movt	r3, #:upper16:-858993459
	umull	r2, r1, r3, r0
	mov	ip, r1, lsr #2
	add	r2, ip, ip, asl #2
	rsb	r0, r2, r0
	cmp	r0, #2
	cmpne	r0, #4
	beq	.L899
	b	.L859
.L890:
	movw	r3, #:lower16:327683
	movt	r3, #:upper16:327683
	cmp	r2, r3
	beq	.L876
	movw	ip, #:lower16:327684
	movt	ip, #:upper16:327684
	cmp	r2, ip
	beq	.L877
	movw	r1, #:lower16:262152
	movt	r1, #:upper16:262152
	cmp	r2, r1
	bne	.L859
	b	.L872
.L881:
	movw	r1, #:lower16:-858993459
	movt	r1, #:upper16:-858993459
	umull	r2, ip, r1, r0
	mov	r3, ip, lsr #2
	add	r2, r3, r3, asl #2
	cmp	r0, r2
	beq	.L899
	b	.L859
.L893:
	movw	r1, #:lower16:393219
	movt	r1, #:upper16:393219
	cmp	r2, r1
	beq	.L863
	movw	r3, #:lower16:393220
	movt	r3, #:upper16:393220
	cmp	r2, r3
	bne	.L859
	b	.L860
.L897:
	movw	ip, #:lower16:589831
	movt	ip, #:upper16:589831
	cmp	r2, ip
	beq	.L875
	bcc	.L874
	movw	r1, #:lower16:589832
	movt	r1, #:upper16:589832
	cmp	r2, r1
	bne	.L859
	b	.L872
	UNWIND(.fnend)
	.size	OPTM_ALG_Frc, .-OPTM_ALG_Frc
	.align	2
	.global	OPTM_ALG_DeInit
	.type	OPTM_ALG_DeInit, %function
OPTM_ALG_DeInit:
	UNWIND(.fnstart)
.LFB49:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r2, r0, #0
	mvneq	r0, #0
	ldmeqfd	sp, {fp, sp, pc}
	mov	r0, r2
	mov	r3, #0
	str	r3, [r0], #4
	add	r1, r0, #4
	str	r3, [r2, #4]
	mov	r0, r3
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1], #4
	str	r3, [r1, #0]
	str	r3, [r2, #40]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_DeInit, .-OPTM_ALG_DeInit
	.align	2
	.global	OPTM_ALG_Init
	.type	OPTM_ALG_Init, %function
OPTM_ALG_Init:
	UNWIND(.fnstart)
.LFB48:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r2, r0, #0
	mvneq	r0, #0
	ldmeqfd	sp, {fp, sp, pc}
	mov	r0, r2
	mov	r3, #0
	str	r3, [r0], #4
	add	ip, r0, #4
	str	r3, [r2, #4]
	mov	r0, r3
	str	r3, [ip], #4
	mov	r1, #1
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip], #4
	str	r3, [ip, #0]
	mvn	r3, #0
	str	r1, [r2, #40]
	str	r3, [r2, #20]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_ALG_Init, .-OPTM_ALG_Init
	.align	2
	.global	GetScalerInfo
	.type	GetScalerInfo, %function
GetScalerInfo:
	UNWIND(.fnstart)
.LFB26:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #132)
	sub	sp, sp, #132
	mov	r4, r1
	str	r0, [fp, #-152]
	str	r2, [fp, #-164]
	mov	r1, #0
	mov	r2, #100
	sub	r0, fp, #144
	mov	sl, r3
	ldr	r9, [r4, #76]
	bl	memset
	ldr	r7, [r4, #40]
	mov	r3, #1
	mov	r1, #0
	str	r3, [fp, #-136]
	cmp	r7, #3
	str	r3, [fp, #-132]
	streq	r1, [fp, #-136]
	streq	r1, [fp, #-132]
	str	r3, [fp, #-140]
	str	r3, [fp, #-144]
	ldr	r0, [r4, #24]
	ldr	r1, [r4, #32]
	mov	r0, r0, asl #20
	bl	__aeabi_idiv
	ldr	r6, [r4, #52]
	cmp	r6, #1
	str	r0, [fp, #-84]
	mov	r5, r0
	ldr	r1, [r4, #36]
	ldr	r2, [r4, #44]
	addne	r1, r1, r1, lsr #31
	str	r2, [fp, #-156]
	movne	r1, r1, asr #1
	cmp	r2, #0
	bne	.L925
	ldr	r6, [r4, #28]
	mov	r0, r6, asl #11
	bl	__aeabi_idiv
	mov	r8, r0
	str	r0, [fp, #-80]
.L927:
	str	r8, [fp, #-160]
.L928:
	cmp	r7, #0
	ldr	r6, [fp, #-80]
	movne	r8, r8, asr #1
	cmp	r5, #1048576
	moveq	r3, #0
	movne	r3, #1
	cmp	r6, #4096
	str	r3, [fp, #-116]
	str	r3, [fp, #-124]
	beq	.L954
.L933:
	mov	r2, #1
	str	r2, [fp, #-128]
.L934:
	cmp	r8, #4096
	beq	.L955
.L935:
	mov	r3, #1
	str	r3, [fp, #-120]
.L936:
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
	ldr	r1, [fp, #-160]
	mov	r3, sl
	ldr	r2, [fp, #-164]
	str	r0, [fp, #-60]
	mov	r0, r9
	bl	GetVfirCoef
	mov	r1, r4
	str	r5, [fp, #-76]
	str	r0, [fp, #-56]
	mov	r0, r6
	bl	GetVerticalScalerOffset
	cmp	r7, #1
	movne	r6, r5
	str	r0, [fp, #-68]
	beq	.L956
.L949:
	mov	r1, r4
	mov	r0, r8
	str	r5, [fp, #-72]
	bl	GetVerticalScalerOffset
	sub	r1, fp, #144
	mov	r2, #100
	mov	ip, #0
	str	ip, [fp, #-52]
	add	r6, r0, r6
	ldr	r0, [fp, #-152]
	str	r6, [fp, #-64]
	bl	memcpy
	ldr	r0, [fp, #-152]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L925:
	ldr	lr, [r4, #28]
	mov	r8, lr, asl #12
	str	r8, [fp, #-168]
	mov	r0, r8
	bl	__aeabi_idiv
	ldr	ip, [fp, #-156]
	ldr	r3, [fp, #-168]
	cmp	ip, #1
	mov	r8, r0
	str	r0, [fp, #-80]
	bne	.L927
	cmp	r6, #0
	bne	.L927
	ldr	r1, [r4, #36]
	mov	r0, r3
	bl	__aeabi_idiv
	str	r0, [fp, #-160]
	b	.L928
.L956:
	ldr	r5, [r4, #72]
	movw	r1, #:lower16:-524288
	ldr	r0, [fp, #-156]
	movt	r1, #:upper16:-524288
	cmp	r5, #0
	movne	r5, r1
	moveq	r5, #0
	cmp	r0, #0
	bne	.L952
	ldr	r3, [r4, #48]
	cmp	r3, #0
	movwne	r6, #:lower16:-1536
	movtne	r6, #:upper16:-1536
	bne	.L949
.L952:
	movw	r6, #:lower16:-512
	movt	r6, #:upper16:-512
	b	.L949
.L954:
	mov	r0, r6
	mov	r1, r4
	bl	GetVerticalScalerOffset
	cmp	r0, #0
	streq	r0, [fp, #-128]
	beq	.L934
	b	.L933
.L955:
	mov	r0, r8
	mov	r1, r4
	bl	GetVerticalScalerOffset
	cmp	r0, #0
	streq	r0, [fp, #-120]
	beq	.L936
	b	.L935
	UNWIND(.fnend)
	.size	GetScalerInfo, .-GetScalerInfo
	.align	2
	.global	GetWndZmeInfo_HL8C4_VL4C4OR2
	.type	GetWndZmeInfo_HL8C4_VL4C4OR2, %function
GetWndZmeInfo_HL8C4_VL4C4OR2:
	UNWIND(.fnstart)
.LFB29:
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
	beq	.L958
	ldr	r3, [r4, #64]
	cmp	r3, #0
	movne	r3, #3
	bne	.L959
.L958:
	mov	r3, #2
.L959:
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
.LFB28:
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
.LFB27:
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
	.align	2
	.global	Optm_Alg_PdDetRst
	.type	Optm_Alg_PdDetRst, %function
Optm_Alg_PdDetRst:
	UNWIND(.fnstart)
.LFB17:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #12)
	sub	sp, sp, #12
	subs	r4, r0, #0
	moveq	r0, r4
	beq	.L967
	ldr	lr, [r4, #4]
	mov	r1, #0
	mov	r2, #428
	str	lr, [fp, #-24]
	bl	memset
	ldr	r1, [fp, #-24]
	mov	r3, #1
	add	r2, r4, #8
	mov	r0, r3
	strb	r3, [r4, #379]
	mvn	ip, #0
	mov	r3, #0
	str	r1, [r4, #4]
	str	r2, [r4, #76]
	mov	r1, #2
	str	r3, [r4, #140]
	strb	ip, [r4, #136]
	strb	r1, [r4, #144]
	str	r2, [r4, #80]
	str	r3, [r4, #72]
.L967:
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	Optm_Alg_PdDetRst, .-Optm_Alg_PdDetRst
	.align	2
	.global	Optm_Alg_InitPld
	.type	Optm_Alg_InitPld, %function
Optm_Alg_InitPld:
	UNWIND(.fnstart)
.LFB16:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r0, #0
	cmpne	r1, #0
	mov	r5, r0
	mov	r4, r1
	mov	r7, r2
	movne	r6, #0
	moveq	r6, #1
	mov	r8, r3
	ldr	sl, [fp, #4]
	moveq	r0, #0
	ldmeqfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	mov	r0, r1
	mov	r2, #428
	mov	r1, r6
	bl	memset
	str	r6, [r4, #72]
	str	r6, [r4, #140]
	add	ip, r4, #8
	mov	r3, #1
	str	ip, [r4, #76]
	strb	r3, [r4, #379]
	mvn	r1, #0
	str	ip, [r4, #80]
	mov	r0, #2
	strb	r1, [r4, #136]
	strb	r0, [r4, #144]
	mov	r0, r3
	ldr	r2, [r5, #32]
	rsbs	r3, sl, #1
	movcc	r3, #0
	strb	r2, [r4, #4]
	ldr	ip, [r5, #28]
	strb	ip, [r4, #5]
	ldr	r1, [r5, #24]
	strb	r1, [r4, #6]
	ldr	r2, [r5, #36]
	str	r6, [r4, #400]
	str	r6, [r4, #380]
	strb	r2, [r4, #7]
	str	r6, [r4, #384]
	str	r6, [r4, #388]
	str	r6, [r4, #392]
	str	r6, [r4, #396]
	str	r3, [r7, #8]
	stmia	r7, {r3, sl}	@ phole stm
	str	sl, [r8, #8]
	str	sl, [r8, #0]
	str	sl, [r8, #4]
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	Optm_Alg_InitPld, .-Optm_Alg_InitPld
	.align	2
	.global	Detect32Pld
	.type	Detect32Pld, %function
Detect32Pld:
	UNWIND(.fnstart)
.LFB13:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #28)
	sub	sp, sp, #28
	mov	r5, r1
	ldr	r1, [fp, #12]
	mov	ip, r3
	ldr	r6, [fp, #4]
	cmp	r1, #0
	ldr	r4, [fp, #8]
	ldr	lr, [r0, #124]
	ldr	r1, [r0, #132]
	ldr	r3, [r0, #128]
	bne	.L986
	ldr	r7, [r4, #380]
	cmp	r7, #0
	bne	.L976
	ldr	r8, [r4, #400]
	cmp	r8, #0
	ble	.L977
	mov	r0, r4
	bl	DummyRollCalc32Pld
.L976:
	ldr	lr, [r4, #388]
	cmp	lr, #0
	beq	.L980
	ldr	r1, [r4, #384]
	cmp	r1, #0
	subne	r6, r6, #2
	bne	.L985
.L981:
	sub	r6, r6, #1
.L985:
	add	r6, r6, r6, asl #2
	mov	r0, r5
	add	r4, r6, r4
	mov	r2, #5
	add	r1, r4, #84
	bl	memcpy
.L982:
	ldrsb	r0, [r5, #0]
.L975:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L980:
	ldr	r3, [r4, #384]
	cmp	r3, #0
	bne	.L981
	add	r6, r6, r6, asl #2
	mov	r0, r5
	add	r4, r6, r4
	mov	r2, #5
	add	r1, r4, #84
	bl	memcpy
	b	.L982
.L986:
	mov	r6, #0
	add	r1, r4, #84
	str	r6, [r4, #84]
	mov	r0, r5
	str	r6, [r4, #88]
	mov	r2, #5
	str	r6, [r4, #92]
	str	r6, [r4, #96]
	str	r6, [r4, #100]
	str	r6, [r4, #104]
	strb	r6, [r4, #108]
	bl	memcpy
	strb	r6, [r5, #0]
	mov	r0, r6
	b	.L975
.L977:
	ldr	r8, [r4, #392]
	cmp	r8, #1
	ble	.L978
	str	r7, [r4, #84]
	mov	r0, r5
	str	r7, [r4, #88]
	add	r1, r4, #84
	str	r7, [r4, #92]
	mov	r2, #5
	str	r7, [r4, #96]
	str	r7, [r4, #100]
	str	r7, [r4, #104]
	strb	r7, [r4, #108]
	bl	memcpy
	strb	r7, [r5, #0]
	mov	r0, r7
	str	r7, [r4, #132]
	str	r7, [r4, #116]
	str	r7, [r4, #120]
	str	r7, [r4, #124]
	str	r7, [r4, #128]
	b	.L975
.L978:
	add	r7, r3, r1, asl #1
	mov	r3, r2
	add	r1, r0, #20
	sub	r0, fp, #52
	add	r2, lr, r7, asl #1
	sub	r8, fp, #52
	str	ip, [sp, #0]
	mov	r2, r2, asl #1
	str	r8, [fp, #-56]
	str	r4, [sp, #4]
	bl	Calc32PLD
	ldrsb	r3, [r4, #99]
	ldrb	r7, [fp, #-52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L979
	cmp	r7, #0
	bne	.L979
	mov	r0, #2
	strb	r7, [r4, #104]
	strb	r0, [r4, #90]
	strb	r0, [r4, #105]
	strb	r0, [r4, #100]
	strb	r7, [r4, #99]
	strb	r0, [r4, #95]
	strb	r7, [r4, #94]
	strb	r7, [r4, #89]
.L979:
	add	sl, r4, #89
	add	r9, r4, #94
	mov	r2, #5
	add	r8, r4, #99
	mov	r1, sl
	add	r0, r4, #84
	bl	memcpy
	mov	r1, r9
	mov	r2, #5
	mov	r0, sl
	bl	memcpy
	mov	r1, r8
	mov	r2, #5
	mov	r0, r9
	bl	memcpy
	add	r1, r4, #104
	mov	r0, r8
	mov	r2, #5
	bl	memcpy
	ldr	ip, [fp, #-56]
	strb	r7, [fp, #-52]
	ldmia	ip, {r0, r1}
	str	r0, [r4, #104]
	strb	r1, [r4, #108]
	b	.L976
	UNWIND(.fnend)
	.size	Detect32Pld, .-Detect32Pld
	.align	2
	.global	Optm_Alg_GetPlayBackConfig
	.type	Optm_Alg_GetPlayBackConfig, %function
Optm_Alg_GetPlayBackConfig:
	UNWIND(.fnstart)
.LFB20:
	@ args = 16, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #36)
	sub	sp, sp, #36
	ldr	r4, [fp, #8]
	mov	r6, r0
	mov	r7, r1
	mov	r0, r1
	mov	r8, r2
	mov	r1, r6
	mov	r2, r4
	mov	r9, r3
	mov	sl, #0
	strb	sl, [fp, #-48]
	str	sl, [fp, #-52]
	bl	DetectStillBlk
	ldrsb	r3, [r4, #4]
	cmp	r3, #0
	mvneq	r3, #0
	streqb	r3, [r4, #144]
	beq	.L989
	ldr	r0, [r4, #380]
	cmp	r0, #0
	beq	.L1001
.L989:
	mov	r1, r7
	add	r0, r4, #148
	bl	DetectSceneChange
	ldrsb	ip, [r4, #5]
	add	r1, r8, r4
	cmp	ip, #0
	uxtb	sl, r0
	strb	sl, [r1, #145]
	beq	.L991
	ldr	r3, [r4, #404]
	ldr	r2, [r3, #4]
	cmp	r2, #1
	beq	.L1002
.L992:
	ldr	r1, [r6, #16]
	cmp	r1, #288
	bgt	.L994
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L993
.L994:
	ldr	r2, [r4, #380]
	cmp	r2, #0
	ldrne	ip, [r4, #180]
	beq	.L1003
.L991:
	ldrsb	r0, [r4, #6]
	cmp	r0, #0
	subeq	r5, fp, #44
	moveq	r7, r0
	streqb	r0, [r5, #-8]!
	bne	.L1004
.L997:
	mov	r1, ip
	mov	r2, #0
	mov	r3, r4
	mov	r0, r7
	bl	GetPlaybackState
	ldr	ip, [fp, #12]
	mov	r3, r9
	stmia	sp, {r6, ip}	@ phole stm
	mov	r2, r0
	ldmia	r5, {r0, r1}
	bl	GetPlayBackConfig
	ldr	r1, [fp, #16]
	cmp	r1, #1
	ldreq	r1, [r4, #412]
	movne	r1, #0
	streq	r7, [r4, #412]
	strne	r1, [r4, #412]
	str	r1, [r4, #408]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1004:
	mov	r0, r7
	ldr	lr, [fp, #4]
	ldr	r7, [fp, #16]
	sub	r5, fp, #52
	mov	r2, r8
	sxtb	r3, sl
	mov	r1, r5
	str	ip, [fp, #-56]
	str	r7, [sp, #8]
	str	lr, [sp, #0]
	str	r4, [sp, #4]
	bl	Detect32Pld
	ldr	ip, [fp, #-56]
	mov	r7, r0
	b	.L997
.L1001:
	mov	r0, r7
	mov	r1, r8
	mov	r2, r6
	mov	r3, r4
	bl	DetectFieldOrder
	b	.L989
.L1002:
	ldr	r2, [r3, #8]
	movw	lr, #2379
	cmp	r2, lr
	ble	.L992
	movw	r0, #2419
	cmp	r2, r0
	bgt	.L992
.L993:
	mov	ip, #1
	b	.L991
.L1003:
	ldr	ip, [r4, #0]
	mov	r0, r8
	ldr	lr, [fp, #4]
	mov	r1, r7
	add	r2, r4, #184
	add	r3, r4, #172
	stmia	sp, {ip, lr}	@ phole stm
	bl	Detect22Pld
	mov	ip, r0
	b	.L991
	UNWIND(.fnend)
	.size	Optm_Alg_GetPlayBackConfig, .-Optm_Alg_GetPlayBackConfig
	.align	2
	.global	ConfigDieInfo
	.type	ConfigDieInfo, %function
ConfigDieInfo:
	UNWIND(.fnstart)
.LFB22:
	@ args = 316, pretend = 16, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	UNWIND(.pad #16)
	sub	sp, sp, #16
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-20)
	sub	fp, ip, #20
	UNWIND(.pad #76)
	sub	sp, sp, #76
	ldr	r6, [fp, #288]
	add	r4, fp, #4
	ldr	r5, [fp, #300]
	mov	r8, r0
	ldr	r7, [fp, #304]
	ldr	ip, [r6, #8]
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [fp, #316]
	ldr	r1, [fp, #48]
	rsbs	ip, ip, #1
	movcc	ip, #0
	ldr	r2, [fp, #36]
	cmp	r3, #1
	ldr	r4, [fp, #284]
	str	r1, [fp, #-92]
	str	r2, [fp, #-88]
	ldr	sl, [fp, #8]
	ldr	r9, [fp, #52]
	ldr	r1, [r5, #0]
	ldr	r0, [r5, #8]
	beq	.L1030
	ldr	r3, [r6, #4]
	mov	r2, #3
	str	r2, [fp, #-96]
	rsbs	r3, r3, #1
	movcc	r3, #0
.L1026:
	ldr	r2, [r4, #0]
	str	r8, [fp, #-64]
	ldr	r8, [fp, #-92]
	str	r2, [fp, #-80]
	orrs	r2, r3, r1
	str	sl, [fp, #-68]
	str	r9, [fp, #-48]
	str	r8, [fp, #-52]
	str	r1, [fp, #-76]
	str	r3, [fp, #-72]
	beq	.L1008
	cmp	r1, #1
	movne	r8, #0
	andeq	r8, r3, #1
	eor	r2, r8, #1
.L1008:
	orrs	r3, ip, r0
	beq	.L1010
	cmp	r0, #1
	movne	ip, #0
	andeq	ip, ip, #1
	eor	r3, ip, #1
.L1010:
	ldr	ip, [fp, #-80]
	ldr	r0, [r4, #384]
	ldr	r8, [r4, #388]
	cmp	ip, #1
	ldr	r1, [r4, #396]
	ldr	ip, [r4, #400]
	str	r0, [r4, #380]
	str	r8, [r4, #384]
	str	r1, [r4, #392]
	str	ip, [r4, #396]
	ldr	r0, [fp, #296]
	str	r0, [r4, #400]
	ldr	ip, [fp, #292]
	str	ip, [r4, #388]
	bls	.L1031
.L1011:
	ldr	r0, [fp, #292]
	str	r0, [r7, #12]
	ldr	r3, [r6, #8]
	ldr	r1, [fp, #-88]
	str	r3, [r7, #4]
	cmp	r1, #1
	ldmib	r5, {r2, r3}	@ phole ldm
	stmia	r5, {r2, r3}	@ phole stm
	beq	.L1032
.L1013:
	ldr	r8, [fp, #308]
	str	r3, [r7, #0]
	cmp	r8, #1
	beq	.L1033
	ldr	r2, [r4, #412]
	mov	r0, #0
	str	r0, [r4, #416]
	str	r0, [r4, #420]
.L1018:
	ldr	ip, [fp, #312]
	str	r2, [ip, #0]
	ldr	r3, [r4, #416]
	str	r3, [ip, #4]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L1030:
	mov	r2, #2
	mov	r3, ip
	str	r2, [fp, #-96]
	b	.L1026
.L1033:
	ldr	r2, [r4, #408]
	cmp	r2, #0
	bne	.L1016
	ldr	r3, [r4, #412]
	cmp	r3, #0
	streq	r3, [r4, #420]
	moveq	r2, r3
	streq	r3, [r4, #416]
	beq	.L1018
	cmp	r3, #1
	beq	.L1034
.L1019:
	mov	r1, #0
	mov	r2, r3
	str	r1, [r4, #416]
	str	r1, [r4, #420]
	b	.L1018
.L1032:
	ldrsb	r8, [r4, #144]
	cmp	r8, #2
	movne	r3, r8
	strne	r3, [r5, #8]
	b	.L1013
.L1016:
	cmp	r2, #1
	ldrne	r3, [r4, #412]
	bne	.L1019
	ldr	r3, [r4, #412]
	cmp	r3, #1
	bne	.L1019
	ldrsb	r3, [r4, #111]
	cmp	r3, #0
	cmpne	r3, #5
	ldrne	r3, [r4, #420]
	bne	.L1022
	ldr	r2, [r4, #420]
	add	r3, r2, #1
	str	r3, [r4, #420]
	cmp	r3, #6
	mvnne	ip, #0
	moveq	ip, #0
	str	ip, [r4, #416]
.L1022:
	cmp	r3, #6
	mov	r2, #1
	moveq	r3, #0
	str	r3, [r4, #420]
	b	.L1018
.L1031:
	ldr	r8, [fp, #-96]
	sub	r0, fp, #80
	ldr	lr, [fp, #308]
	add	r1, fp, #64
	str	r4, [sp, #4]
	str	r8, [sp, #0]
	str	r7, [sp, #8]
	str	lr, [sp, #12]
	bl	Optm_Alg_GetPlayBackConfig
	b	.L1011
.L1034:
	ldrsb	r3, [r4, #111]
	str	r2, [r4, #416]
	cmp	r3, #0
	cmpne	r3, #5
	str	r2, [r4, #420]
	ldreq	ip, [fp, #308]
	mvneq	r3, #0
	ldrne	r2, [fp, #308]
	streq	ip, [r4, #420]
	ldreq	r2, [fp, #308]
	streq	r3, [r4, #416]
	b	.L1018
	UNWIND(.fnend)
	.size	ConfigDieInfo, .-ConfigDieInfo
	.align	2
	.global	InitDieInfo
	.type	InitDieInfo, %function
InitDieInfo:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 344
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #348)
	sub	sp, sp, #348
	sub	r8, fp, #364
	mov	r7, #320
	mov	r4, r1
	str	r0, [fp, #-368]
	mov	r2, r7
	mov	r1, #0
	mov	r0, r8
	mvn	sl, #159
	bl	memset
	ldmia	r4, {r1, r5}	@ phole ldm
	mov	r3, #8
	ldr	r6, [r4, #8]
	mov	ip, #0
	ldr	r0, [r4, #12]
	mov	lr, #32
	mul	r9, r5, r1
	strb	r6, [fp, #-256]
	strb	r0, [fp, #-255]
	mov	r6, #2
	str	r1, [fp, #-364]
	mov	r2, #5
	str	r5, [fp, #-360]
	mov	r1, #24
	strb	r3, [fp, #-336]
	mov	r5, #40
	str	r2, [fp, #-268]
	mov	r0, #27
	str	sl, [fp, #-324]
	mov	r2, #18
	str	r5, [fp, #-320]
	mov	sl, #12
	str	r1, [fp, #-316]
	mov	r5, #11
	str	r0, [fp, #-308]
	mov	r1, #9
	str	r2, [fp, #-304]
	mov	r0, #7
	str	sl, [fp, #-296]
	mov	r2, #3
	str	r5, [fp, #-292]
	mov	sl, r9, asr #11
	str	r1, [fp, #-288]
	mov	r5, #30
	str	r0, [fp, #-280]
	mov	r1, r8
	str	r2, [fp, #-264]
	mov	r8, #15
	strb	r5, [fp, #-334]
	mov	r2, r7
	ldr	r0, [fp, #-368]
	mov	r7, #4
	strb	r3, [fp, #-332]
	mov	r9, #20
	str	sl, [fp, #-384]
	mov	sl, #64
	strb	r5, [fp, #-331]
	mov	r5, #16
	strb	r3, [fp, #-329]
	str	lr, [fp, #-312]
	str	r8, [fp, #-300]
	mov	r8, #6
	str	r3, [fp, #-284]
	strb	r6, [fp, #-335]
	strb	r6, [fp, #-333]
	strb	r6, [fp, #-330]
	strb	r6, [fp, #-328]
	str	r8, [fp, #-276]
	mov	r8, #5
	strb	ip, [fp, #-260]
	str	r8, [fp, #-272]
	ldr	r8, [r4, #40]
	str	r8, [fp, #-380]
	ldr	r8, [r4, #16]
	str	r8, [fp, #-372]
	ldr	r8, [r4, #20]
	mov	r4, #48
	strb	r4, [fp, #-248]
	mov	r4, #96
	strb	r4, [fp, #-244]
	mvn	r4, #0
	strb	r4, [fp, #-243]
	ldr	r4, [fp, #-372]
	strb	r8, [fp, #-241]
	mov	r8, #10
	strb	ip, [fp, #-224]
	strb	r4, [fp, #-242]
	ldr	r4, [fp, #-380]
	strb	r8, [fp, #-225]
	mvn	r8, #63
	strb	ip, [fp, #-259]
	strb	r4, [fp, #-238]
	mov	r4, #1
	strb	r8, [fp, #-228]
	mov	r8, #100
	strb	r4, [fp, #-235]
	mov	r4, #96
	strb	lr, [fp, #-258]
	strb	r4, [fp, #-247]
	mov	r4, #15
	strb	ip, [fp, #-246]
	strb	lr, [fp, #-245]
	strb	ip, [fp, #-239]
	strb	ip, [fp, #-240]
	strb	ip, [fp, #-237]
	strb	ip, [fp, #-236]
	strb	ip, [fp, #-227]
	strb	ip, [fp, #-226]
	mov	ip, #200
	strb	r6, [fp, #-251]
	strb	r5, [fp, #-250]
	strb	r5, [fp, #-249]
	strb	r7, [fp, #-234]
	str	ip, [fp, #-64]
	mov	ip, #128
	str	ip, [fp, #-112]
	ldr	ip, [fp, #-384]
	strb	r3, [fp, #-233]
	strb	r3, [fp, #-231]
	strb	r3, [fp, #-229]
	str	r8, [fp, #-60]
	str	r8, [fp, #-68]
	mov	r8, #90
	str	r4, [fp, #-76]
	mov	r4, #50
	str	r8, [fp, #-136]
	mov	r8, #30
	str	r4, [fp, #-104]
	mov	r4, #6
	str	r8, [fp, #-172]
	mov	r8, #200
	str	ip, [fp, #-176]
	str	r3, [fp, #-152]
	str	lr, [fp, #-148]
	str	r3, [fp, #-168]
	str	lr, [fp, #-160]
	str	r3, [fp, #-92]
	str	lr, [fp, #-84]
	str	lr, [fp, #-72]
	strb	r7, [fp, #-232]
	strb	r7, [fp, #-230]
	str	r7, [fp, #-96]
	str	r5, [fp, #-124]
	str	r9, [fp, #-108]
	str	sl, [fp, #-144]
	str	r4, [fp, #-52]
	str	r8, [fp, #-56]
	str	r5, [fp, #-164]
	str	sl, [fp, #-156]
	str	r5, [fp, #-88]
	str	r9, [fp, #-80]
	str	r5, [fp, #-132]
	str	r5, [fp, #-140]
	str	r5, [fp, #-128]
	str	lr, [fp, #-120]
	str	sl, [fp, #-116]
	str	r9, [fp, #-100]
	bl	memcpy
	ldr	r0, [fp, #-368]
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	InitDieInfo, .-InitDieInfo
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
	.global	coef6Tap_8_5M_a2_5
	.global	coef6Tap_8M_a2_5
	.global	coef6Tap_7_2M_a2_5
	.global	coef6Tap_6_9M_a2
	.global	coef6Tap_6_6M_a2
	.global	coef6Tap_6_3M_a2
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
	.global	coef8_cubic_8M_a25
	.global	coef8_cubic_7M_a25
	.global	coefficient8_6M_a30
	.global	coef8_cubic_6M_a2
	.global	coef8_cubic_5_8M_a2_5
	.global	coef8_cubic_5_6M_a2_5
	.global	coef8_cubic_5_3M_a2_5
	.global	coef8_cubic_5M_a2
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
	.global	g_pOrgZoomCoef_sd_IMPREX_On
	.global	g_pOrgZoomCoef_sd_IMPREX_Off
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
	.type	C.10.3452, %object
	.size	C.10.3452, 100
C.10.3452:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.type	C.31.3651, %object
	.size	C.31.3651, 40
C.31.3651:
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.type	CSWTCH.142, %object
	.size	CSWTCH.142, 148
CSWTCH.142:
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
	.type	CSWTCH.147, %object
	.size	CSWTCH.147, 20
CSWTCH.147:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.type	CSWTCH.150, %object
	.size	CSWTCH.150, 8
CSWTCH.150:
	.word	0
	.word	1
	.type	CSWTCH.153, %object
	.size	CSWTCH.153, 20
CSWTCH.153:
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.type	CSWTCH.156, %object
	.size	CSWTCH.156, 8
CSWTCH.156:
	.word	0
	.word	1
	.type	CSWTCH.161, %object
	.size	CSWTCH.161, 16
CSWTCH.161:
	.space	16
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
	.type	coef6Tap_8_5M_a2_5, %object
	.size	coef6Tap_8_5M_a2_5, 432
coef6Tap_8_5M_a2_5:
	.word	-10
	.word	20
	.word	489
	.word	20
	.word	-10
	.word	3
	.word	-7
	.word	7
	.word	489
	.word	33
	.word	-14
	.word	4
	.word	-3
	.word	-5
	.word	485
	.word	48
	.word	-18
	.word	5
	.word	0
	.word	-16
	.word	481
	.word	64
	.word	-23
	.word	6
	.word	3
	.word	-26
	.word	475
	.word	80
	.word	-27
	.word	7
	.word	6
	.word	-35
	.word	467
	.word	97
	.word	-31
	.word	8
	.word	8
	.word	-42
	.word	457
	.word	115
	.word	-35
	.word	9
	.word	10
	.word	-49
	.word	448
	.word	133
	.word	-40
	.word	10
	.word	12
	.word	-55
	.word	436
	.word	152
	.word	-44
	.word	11
	.word	13
	.word	-59
	.word	423
	.word	171
	.word	-48
	.word	12
	.word	15
	.word	-63
	.word	409
	.word	190
	.word	-52
	.word	13
	.word	16
	.word	-66
	.word	394
	.word	210
	.word	-56
	.word	14
	.word	16
	.word	-68
	.word	379
	.word	229
	.word	-59
	.word	15
	.word	17
	.word	-69
	.word	361
	.word	249
	.word	-62
	.word	16
	.word	17
	.word	-69
	.word	343
	.word	269
	.word	-64
	.word	16
	.word	17
	.word	-69
	.word	326
	.word	288
	.word	-67
	.word	17
	.word	17
	.word	-68
	.word	307
	.word	307
	.word	-68
	.word	17
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef6Tap_8M_a2_5, %object
	.size	coef6Tap_8M_a2_5, 432
coef6Tap_8M_a2_5:
	.word	-15
	.word	28
	.word	481
	.word	28
	.word	-15
	.word	5
	.word	-11
	.word	15
	.word	479
	.word	42
	.word	-19
	.word	6
	.word	-8
	.word	3
	.word	477
	.word	56
	.word	-23
	.word	7
	.word	-4
	.word	-8
	.word	472
	.word	71
	.word	-27
	.word	8
	.word	-1
	.word	-19
	.word	467
	.word	87
	.word	-31
	.word	9
	.word	2
	.word	-28
	.word	459
	.word	104
	.word	-35
	.word	10
	.word	4
	.word	-36
	.word	451
	.word	121
	.word	-39
	.word	11
	.word	7
	.word	-43
	.word	440
	.word	139
	.word	-43
	.word	12
	.word	9
	.word	-49
	.word	429
	.word	157
	.word	-47
	.word	13
	.word	11
	.word	-54
	.word	416
	.word	176
	.word	-51
	.word	14
	.word	12
	.word	-58
	.word	403
	.word	194
	.word	-54
	.word	15
	.word	14
	.word	-62
	.word	390
	.word	213
	.word	-58
	.word	15
	.word	15
	.word	-64
	.word	373
	.word	232
	.word	-60
	.word	16
	.word	15
	.word	-66
	.word	359
	.word	251
	.word	-63
	.word	16
	.word	16
	.word	-67
	.word	341
	.word	270
	.word	-65
	.word	17
	.word	16
	.word	-68
	.word	325
	.word	288
	.word	-66
	.word	17
	.word	17
	.word	-67
	.word	305
	.word	307
	.word	-67
	.word	17
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef6Tap_7_2M_a2_5, %object
	.size	coef6Tap_7_2M_a2_5, 432
coef6Tap_7_2M_a2_5:
	.word	-24
	.word	45
	.word	461
	.word	45
	.word	-24
	.word	9
	.word	-20
	.word	32
	.word	460
	.word	58
	.word	-27
	.word	9
	.word	-17
	.word	20
	.word	457
	.word	73
	.word	-31
	.word	10
	.word	-13
	.word	9
	.word	453
	.word	87
	.word	-35
	.word	11
	.word	-10
	.word	-2
	.word	447
	.word	103
	.word	-38
	.word	12
	.word	-7
	.word	-11
	.word	442
	.word	118
	.word	-42
	.word	12
	.word	-4
	.word	-20
	.word	433
	.word	135
	.word	-45
	.word	13
	.word	-1
	.word	-28
	.word	424
	.word	151
	.word	-48
	.word	14
	.word	1
	.word	-35
	.word	415
	.word	168
	.word	-51
	.word	14
	.word	3
	.word	-41
	.word	405
	.word	185
	.word	-54
	.word	14
	.word	6
	.word	-46
	.word	390
	.word	203
	.word	-56
	.word	15
	.word	7
	.word	-51
	.word	379
	.word	220
	.word	-58
	.word	15
	.word	9
	.word	-55
	.word	366
	.word	237
	.word	-60
	.word	15
	.word	10
	.word	-58
	.word	352
	.word	254
	.word	-61
	.word	15
	.word	12
	.word	-60
	.word	336
	.word	271
	.word	-62
	.word	15
	.word	13
	.word	-61
	.word	320
	.word	288
	.word	-62
	.word	14
	.word	13
	.word	-62
	.word	305
	.word	305
	.word	-62
	.word	13
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef6Tap_6_9M_a2, %object
	.size	coef6Tap_6_9M_a2, 432
coef6Tap_6_9M_a2:
	.word	-29
	.word	49
	.word	459
	.word	49
	.word	-29
	.word	13
	.word	-25
	.word	35
	.word	459
	.word	62
	.word	-33
	.word	14
	.word	-21
	.word	23
	.word	455
	.word	77
	.word	-37
	.word	15
	.word	-17
	.word	11
	.word	450
	.word	92
	.word	-40
	.word	16
	.word	-13
	.word	0
	.word	445
	.word	107
	.word	-44
	.word	17
	.word	-10
	.word	-10
	.word	440
	.word	123
	.word	-48
	.word	17
	.word	-6
	.word	-19
	.word	431
	.word	139
	.word	-51
	.word	18
	.word	-3
	.word	-27
	.word	422
	.word	156
	.word	-54
	.word	18
	.word	0
	.word	-35
	.word	413
	.word	172
	.word	-57
	.word	19
	.word	3
	.word	-41
	.word	402
	.word	189
	.word	-60
	.word	19
	.word	5
	.word	-47
	.word	391
	.word	206
	.word	-62
	.word	19
	.word	8
	.word	-52
	.word	378
	.word	223
	.word	-64
	.word	19
	.word	10
	.word	-57
	.word	365
	.word	240
	.word	-65
	.word	19
	.word	12
	.word	-60
	.word	351
	.word	257
	.word	-66
	.word	18
	.word	13
	.word	-63
	.word	337
	.word	274
	.word	-67
	.word	18
	.word	15
	.word	-65
	.word	322
	.word	290
	.word	-67
	.word	17
	.word	16
	.word	-66
	.word	306
	.word	306
	.word	-66
	.word	16
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef6Tap_6_6M_a2, %object
	.size	coef6Tap_6_6M_a2, 432
coef6Tap_6_6M_a2:
	.word	-30
	.word	61
	.word	440
	.word	61
	.word	-30
	.word	10
	.word	-27
	.word	48
	.word	440
	.word	74
	.word	-33
	.word	10
	.word	-23
	.word	36
	.word	437
	.word	87
	.word	-36
	.word	11
	.word	-20
	.word	25
	.word	434
	.word	101
	.word	-39
	.word	11
	.word	-17
	.word	14
	.word	429
	.word	116
	.word	-42
	.word	12
	.word	-14
	.word	5
	.word	423
	.word	131
	.word	-45
	.word	12
	.word	-11
	.word	-4
	.word	416
	.word	146
	.word	-47
	.word	12
	.word	-9
	.word	-13
	.word	410
	.word	161
	.word	-49
	.word	12
	.word	-6
	.word	-20
	.word	399
	.word	177
	.word	-51
	.word	13
	.word	-4
	.word	-27
	.word	391
	.word	193
	.word	-53
	.word	12
	.word	-1
	.word	-33
	.word	380
	.word	209
	.word	-55
	.word	12
	.word	1
	.word	-38
	.word	368
	.word	225
	.word	-56
	.word	12
	.word	3
	.word	-43
	.word	356
	.word	240
	.word	-56
	.word	12
	.word	4
	.word	-47
	.word	345
	.word	256
	.word	-57
	.word	11
	.word	6
	.word	-50
	.word	330
	.word	272
	.word	-56
	.word	10
	.word	7
	.word	-52
	.word	316
	.word	287
	.word	-56
	.word	10
	.word	9
	.word	-54
	.word	300
	.word	302
	.word	-54
	.word	9
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef6Tap_6_3M_a2, %object
	.size	coef6Tap_6_3M_a2, 432
coef6Tap_6_3M_a2:
	.word	-38
	.word	68
	.word	438
	.word	68
	.word	-38
	.word	14
	.word	-34
	.word	55
	.word	436
	.word	81
	.word	-41
	.word	15
	.word	-31
	.word	43
	.word	434
	.word	95
	.word	-44
	.word	15
	.word	-27
	.word	31
	.word	431
	.word	109
	.word	-47
	.word	15
	.word	-24
	.word	20
	.word	427
	.word	123
	.word	-50
	.word	16
	.word	-21
	.word	10
	.word	421
	.word	138
	.word	-52
	.word	16
	.word	-17
	.word	0
	.word	415
	.word	153
	.word	-55
	.word	16
	.word	-14
	.word	-9
	.word	407
	.word	169
	.word	-57
	.word	16
	.word	-11
	.word	-17
	.word	399
	.word	184
	.word	-59
	.word	16
	.word	-8
	.word	-24
	.word	390
	.word	199
	.word	-60
	.word	15
	.word	-5
	.word	-31
	.word	379
	.word	215
	.word	-61
	.word	15
	.word	-3
	.word	-37
	.word	370
	.word	230
	.word	-62
	.word	14
	.word	0
	.word	-43
	.word	358
	.word	246
	.word	-62
	.word	13
	.word	2
	.word	-47
	.word	345
	.word	261
	.word	-61
	.word	12
	.word	4
	.word	-51
	.word	332
	.word	276
	.word	-60
	.word	11
	.word	6
	.word	-54
	.word	318
	.word	291
	.word	-59
	.word	10
	.word	8
	.word	-57
	.word	305
	.word	305
	.word	-57
	.word	8
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
	.type	coef8_cubic_8M_a25, %object
	.size	coef8_cubic_8M_a25, 576
coef8_cubic_8M_a25:
	.word	4
	.word	-10
	.word	20
	.word	485
	.word	20
	.word	-10
	.word	4
	.word	-1
	.word	2
	.word	-6
	.word	7
	.word	486
	.word	34
	.word	-15
	.word	5
	.word	-1
	.word	1
	.word	-2
	.word	-5
	.word	482
	.word	50
	.word	-19
	.word	7
	.word	-2
	.word	0
	.word	2
	.word	-16
	.word	479
	.word	65
	.word	-24
	.word	8
	.word	-2
	.word	-1
	.word	5
	.word	-27
	.word	475
	.word	82
	.word	-29
	.word	10
	.word	-3
	.word	-2
	.word	9
	.word	-36
	.word	467
	.word	100
	.word	-34
	.word	11
	.word	-3
	.word	-3
	.word	11
	.word	-44
	.word	460
	.word	118
	.word	-39
	.word	13
	.word	-4
	.word	-4
	.word	14
	.word	-51
	.word	449
	.word	136
	.word	-43
	.word	15
	.word	-4
	.word	-5
	.word	16
	.word	-58
	.word	440
	.word	155
	.word	-48
	.word	16
	.word	-4
	.word	-5
	.word	18
	.word	-63
	.word	428
	.word	175
	.word	-53
	.word	17
	.word	-5
	.word	-6
	.word	20
	.word	-67
	.word	413
	.word	195
	.word	-57
	.word	19
	.word	-5
	.word	-6
	.word	21
	.word	-70
	.word	399
	.word	215
	.word	-61
	.word	20
	.word	-6
	.word	-7
	.word	22
	.word	-73
	.word	384
	.word	235
	.word	-64
	.word	21
	.word	-6
	.word	-7
	.word	23
	.word	-74
	.word	367
	.word	255
	.word	-68
	.word	22
	.word	-6
	.word	-7
	.word	24
	.word	-75
	.word	350
	.word	274
	.word	-70
	.word	23
	.word	-7
	.word	-7
	.word	24
	.word	-75
	.word	332
	.word	294
	.word	-72
	.word	23
	.word	-7
	.word	-7
	.word	24
	.word	-74
	.word	313
	.word	313
	.word	-74
	.word	24
	.word	-7
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef8_cubic_7M_a25, %object
	.size	coef8_cubic_7M_a25, 576
coef8_cubic_7M_a25:
	.word	11
	.word	-25
	.word	43
	.word	458
	.word	43
	.word	-25
	.word	11
	.word	-4
	.word	10
	.word	-21
	.word	30
	.word	458
	.word	57
	.word	-30
	.word	13
	.word	-5
	.word	9
	.word	-17
	.word	17
	.word	456
	.word	72
	.word	-34
	.word	14
	.word	-5
	.word	7
	.word	-13
	.word	6
	.word	453
	.word	87
	.word	-38
	.word	15
	.word	-5
	.word	6
	.word	-9
	.word	-5
	.word	448
	.word	103
	.word	-42
	.word	17
	.word	-6
	.word	5
	.word	-5
	.word	-15
	.word	442
	.word	119
	.word	-46
	.word	18
	.word	-6
	.word	3
	.word	-2
	.word	-24
	.word	436
	.word	136
	.word	-50
	.word	19
	.word	-6
	.word	2
	.word	2
	.word	-33
	.word	428
	.word	153
	.word	-54
	.word	20
	.word	-6
	.word	1
	.word	5
	.word	-40
	.word	419
	.word	171
	.word	-58
	.word	21
	.word	-7
	.word	0
	.word	8
	.word	-47
	.word	410
	.word	188
	.word	-61
	.word	21
	.word	-7
	.word	-1
	.word	10
	.word	-53
	.word	399
	.word	206
	.word	-64
	.word	22
	.word	-7
	.word	-2
	.word	13
	.word	-58
	.word	386
	.word	224
	.word	-66
	.word	22
	.word	-7
	.word	-3
	.word	15
	.word	-62
	.word	372
	.word	242
	.word	-68
	.word	22
	.word	-6
	.word	-4
	.word	17
	.word	-65
	.word	357
	.word	260
	.word	-69
	.word	22
	.word	-6
	.word	-4
	.word	18
	.word	-68
	.word	343
	.word	277
	.word	-70
	.word	22
	.word	-6
	.word	-5
	.word	20
	.word	-69
	.word	328
	.word	294
	.word	-71
	.word	21
	.word	-6
	.word	-5
	.word	21
	.word	-70
	.word	309
	.word	311
	.word	-70
	.word	21
	.word	-5
	.word	0
	.word	0
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
	.type	coef8_cubic_6M_a2, %object
	.size	coef8_cubic_6M_a2, 576
coef8_cubic_6M_a2:
	.word	21
	.word	-45
	.word	74
	.word	418
	.word	74
	.word	-45
	.word	21
	.word	-6
	.word	20
	.word	-42
	.word	61
	.word	420
	.word	87
	.word	-49
	.word	21
	.word	-6
	.word	19
	.word	-38
	.word	49
	.word	417
	.word	101
	.word	-52
	.word	22
	.word	-6
	.word	18
	.word	-34
	.word	37
	.word	415
	.word	115
	.word	-55
	.word	22
	.word	-6
	.word	17
	.word	-31
	.word	26
	.word	411
	.word	129
	.word	-57
	.word	22
	.word	-5
	.word	16
	.word	-27
	.word	16
	.word	407
	.word	143
	.word	-60
	.word	22
	.word	-5
	.word	15
	.word	-23
	.word	6
	.word	401
	.word	158
	.word	-62
	.word	22
	.word	-5
	.word	14
	.word	-19
	.word	-4
	.word	394
	.word	173
	.word	-64
	.word	22
	.word	-4
	.word	13
	.word	-16
	.word	-12
	.word	387
	.word	188
	.word	-65
	.word	21
	.word	-4
	.word	12
	.word	-12
	.word	-20
	.word	378
	.word	203
	.word	-66
	.word	20
	.word	-3
	.word	10
	.word	-9
	.word	-28
	.word	372
	.word	217
	.word	-67
	.word	19
	.word	-2
	.word	9
	.word	-5
	.word	-35
	.word	362
	.word	232
	.word	-67
	.word	18
	.word	-2
	.word	8
	.word	-2
	.word	-41
	.word	350
	.word	247
	.word	-66
	.word	17
	.word	-1
	.word	7
	.word	1
	.word	-46
	.word	339
	.word	261
	.word	-65
	.word	15
	.word	0
	.word	5
	.word	4
	.word	-51
	.word	328
	.word	275
	.word	-63
	.word	13
	.word	1
	.word	4
	.word	6
	.word	-55
	.word	316
	.word	289
	.word	-61
	.word	11
	.word	2
	.word	3
	.word	9
	.word	-58
	.word	302
	.word	302
	.word	-58
	.word	9
	.word	3
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef8_cubic_5_8M_a2_5, %object
	.size	coef8_cubic_5_8M_a2_5, 576
coef8_cubic_5_8M_a2_5:
	.word	15
	.word	-42
	.word	82
	.word	405
	.word	82
	.word	-42
	.word	15
	.word	-3
	.word	14
	.word	-40
	.word	70
	.word	406
	.word	95
	.word	-45
	.word	15
	.word	-3
	.word	14
	.word	-37
	.word	59
	.word	404
	.word	107
	.word	-47
	.word	15
	.word	-3
	.word	13
	.word	-34
	.word	47
	.word	403
	.word	120
	.word	-49
	.word	15
	.word	-3
	.word	13
	.word	-31
	.word	37
	.word	397
	.word	134
	.word	-51
	.word	15
	.word	-2
	.word	12
	.word	-28
	.word	27
	.word	394
	.word	147
	.word	-53
	.word	15
	.word	-2
	.word	11
	.word	-25
	.word	17
	.word	390
	.word	161
	.word	-54
	.word	14
	.word	-2
	.word	11
	.word	-22
	.word	8
	.word	383
	.word	175
	.word	-56
	.word	14
	.word	-1
	.word	10
	.word	-19
	.word	0
	.word	376
	.word	189
	.word	-56
	.word	13
	.word	-1
	.word	9
	.word	-16
	.word	-8
	.word	370
	.word	203
	.word	-57
	.word	12
	.word	-1
	.word	8
	.word	-13
	.word	-15
	.word	361
	.word	217
	.word	-57
	.word	11
	.word	0
	.word	8
	.word	-10
	.word	-22
	.word	351
	.word	231
	.word	-56
	.word	10
	.word	0
	.word	7
	.word	-8
	.word	-28
	.word	342
	.word	244
	.word	-55
	.word	9
	.word	1
	.word	6
	.word	-5
	.word	-33
	.word	331
	.word	258
	.word	-54
	.word	7
	.word	2
	.word	5
	.word	-3
	.word	-38
	.word	321
	.word	271
	.word	-52
	.word	6
	.word	2
	.word	4
	.word	0
	.word	-42
	.word	308
	.word	284
	.word	-49
	.word	4
	.word	3
	.word	4
	.word	2
	.word	-46
	.word	296
	.word	296
	.word	-46
	.word	2
	.word	4
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef8_cubic_5_6M_a2_5, %object
	.size	coef8_cubic_5_6M_a2_5, 576
coef8_cubic_5_6M_a2_5:
	.word	13
	.word	-43
	.word	89
	.word	396
	.word	89
	.word	-43
	.word	13
	.word	-2
	.word	13
	.word	-41
	.word	78
	.word	396
	.word	101
	.word	-46
	.word	13
	.word	-2
	.word	13
	.word	-39
	.word	66
	.word	395
	.word	114
	.word	-48
	.word	13
	.word	-2
	.word	13
	.word	-36
	.word	55
	.word	391
	.word	126
	.word	-49
	.word	13
	.word	-1
	.word	12
	.word	-33
	.word	45
	.word	388
	.word	139
	.word	-51
	.word	13
	.word	-1
	.word	12
	.word	-31
	.word	35
	.word	385
	.word	152
	.word	-52
	.word	12
	.word	-1
	.word	12
	.word	-28
	.word	25
	.word	379
	.word	165
	.word	-53
	.word	12
	.word	0
	.word	11
	.word	-25
	.word	17
	.word	373
	.word	178
	.word	-53
	.word	11
	.word	0
	.word	10
	.word	-22
	.word	8
	.word	368
	.word	191
	.word	-53
	.word	10
	.word	0
	.word	10
	.word	-20
	.word	0
	.word	360
	.word	205
	.word	-53
	.word	9
	.word	1
	.word	9
	.word	-17
	.word	-7
	.word	353
	.word	218
	.word	-53
	.word	8
	.word	1
	.word	8
	.word	-14
	.word	-14
	.word	345
	.word	231
	.word	-52
	.word	6
	.word	2
	.word	8
	.word	-12
	.word	-20
	.word	335
	.word	244
	.word	-50
	.word	5
	.word	2
	.word	7
	.word	-9
	.word	-26
	.word	325
	.word	257
	.word	-48
	.word	3
	.word	3
	.word	6
	.word	-7
	.word	-31
	.word	315
	.word	269
	.word	-46
	.word	2
	.word	4
	.word	6
	.word	-5
	.word	-35
	.word	304
	.word	281
	.word	-43
	.word	0
	.word	4
	.word	5
	.word	-2
	.word	-39
	.word	291
	.word	293
	.word	-39
	.word	-2
	.word	5
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef8_cubic_5_3M_a2_5, %object
	.size	coef8_cubic_5_3M_a2_5, 576
coef8_cubic_5_3M_a2_5:
	.word	11
	.word	-44
	.word	100
	.word	379
	.word	100
	.word	-44
	.word	11
	.word	-1
	.word	11
	.word	-42
	.word	88
	.word	379
	.word	111
	.word	-45
	.word	10
	.word	0
	.word	11
	.word	-40
	.word	78
	.word	377
	.word	122
	.word	-46
	.word	10
	.word	0
	.word	11
	.word	-38
	.word	67
	.word	376
	.word	134
	.word	-47
	.word	9
	.word	0
	.word	11
	.word	-36
	.word	57
	.word	372
	.word	146
	.word	-48
	.word	9
	.word	1
	.word	11
	.word	-34
	.word	47
	.word	369
	.word	158
	.word	-48
	.word	8
	.word	1
	.word	11
	.word	-32
	.word	38
	.word	366
	.word	170
	.word	-49
	.word	7
	.word	1
	.word	10
	.word	-29
	.word	29
	.word	360
	.word	182
	.word	-48
	.word	6
	.word	2
	.word	10
	.word	-27
	.word	21
	.word	355
	.word	194
	.word	-48
	.word	5
	.word	2
	.word	10
	.word	-25
	.word	13
	.word	347
	.word	207
	.word	-47
	.word	4
	.word	3
	.word	9
	.word	-22
	.word	6
	.word	341
	.word	219
	.word	-46
	.word	2
	.word	3
	.word	9
	.word	-20
	.word	-1
	.word	332
	.word	231
	.word	-44
	.word	1
	.word	4
	.word	8
	.word	-17
	.word	-8
	.word	326
	.word	242
	.word	-42
	.word	-1
	.word	4
	.word	8
	.word	-15
	.word	-14
	.word	316
	.word	254
	.word	-39
	.word	-3
	.word	5
	.word	7
	.word	-13
	.word	-19
	.word	307
	.word	265
	.word	-36
	.word	-4
	.word	5
	.word	7
	.word	-11
	.word	-24
	.word	296
	.word	276
	.word	-32
	.word	-6
	.word	6
	.word	6
	.word	-8
	.word	-28
	.word	285
	.word	287
	.word	-28
	.word	-8
	.word	6
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	coef8_cubic_5M_a2, %object
	.size	coef8_cubic_5M_a2, 576
coef8_cubic_5M_a2:
	.word	10
	.word	-51
	.word	113
	.word	365
	.word	113
	.word	-51
	.word	10
	.word	3
	.word	11
	.word	-50
	.word	102
	.word	365
	.word	124
	.word	-52
	.word	9
	.word	3
	.word	12
	.word	-49
	.word	92
	.word	363
	.word	134
	.word	-52
	.word	8
	.word	4
	.word	12
	.word	-47
	.word	81
	.word	362
	.word	145
	.word	-52
	.word	7
	.word	4
	.word	13
	.word	-46
	.word	71
	.word	360
	.word	156
	.word	-52
	.word	5
	.word	5
	.word	13
	.word	-44
	.word	62
	.word	354
	.word	168
	.word	-51
	.word	4
	.word	6
	.word	14
	.word	-42
	.word	52
	.word	351
	.word	179
	.word	-50
	.word	2
	.word	6
	.word	14
	.word	-40
	.word	43
	.word	346
	.word	190
	.word	-49
	.word	1
	.word	7
	.word	14
	.word	-38
	.word	35
	.word	341
	.word	201
	.word	-47
	.word	-1
	.word	7
	.word	14
	.word	-36
	.word	26
	.word	336
	.word	212
	.word	-45
	.word	-3
	.word	8
	.word	14
	.word	-33
	.word	19
	.word	329
	.word	222
	.word	-43
	.word	-5
	.word	9
	.word	14
	.word	-31
	.word	11
	.word	323
	.word	233
	.word	-40
	.word	-7
	.word	9
	.word	13
	.word	-29
	.word	4
	.word	317
	.word	243
	.word	-37
	.word	-9
	.word	10
	.word	13
	.word	-26
	.word	-3
	.word	309
	.word	254
	.word	-33
	.word	-12
	.word	10
	.word	13
	.word	-24
	.word	-9
	.word	300
	.word	264
	.word	-29
	.word	-14
	.word	11
	.word	12
	.word	-21
	.word	-15
	.word	292
	.word	273
	.word	-25
	.word	-16
	.word	12
	.word	12
	.word	-19
	.word	-20
	.word	283
	.word	283
	.word	-20
	.word	-19
	.word	12
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
	.word	coef6Tap_6_6M_a2
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
	.word	coef8_cubic_5_6M_a2_5
	.word	coefficient6_6M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coef8_cubic_5M_a2
	.word	coefficient6_5M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M_1_0
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_4M_a25
	.word	coefficient6_4M_a20
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_lanczos2_8tap
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
	.type	g_pOrgZoomCoef_sd_IMPREX_On, %object
	.size	g_pOrgZoomCoef_sd_IMPREX_On, 252
g_pOrgZoomCoef_sd_IMPREX_On:
	.word	coefficient8_4M_a25
	.word	coefficient6_4M_a20
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_6M_1_3
	.word	coefficient_lanczos3
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_4M_a25
	.word	coefficient6_4M_a20
	.word	coefficient4_cubic
	.word	coefficient4_cubic
	.word	coefficient2_cubic
	.word	coefficient8_cubic
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_cubic
	.word	s32Coefficient2_4M_0_1
	.word	coef8_cubic_5_6M_a2_5
	.word	coefficient6_6M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coef8_cubic_5M_a2
	.word	coefficient6_5M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M_1_0
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_4M_a25
	.word	coefficient6_4M_a20
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_lanczos2_8tap
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
	.type	g_pOrgZoomCoef_sd_IMPREX_Off, %object
	.size	g_pOrgZoomCoef_sd_IMPREX_Off, 252
g_pOrgZoomCoef_sd_IMPREX_Off:
	.word	coefficient_lanczos3
	.word	coef6Tap_6_6M_a2
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
	.word	coef8_cubic_5_6M_a2_5
	.word	coefficient6_6M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coef8_cubic_5M_a2
	.word	coefficient6_5M_a25
	.word	coefficient4_5M_a15
	.word	coefficient4_5M_a15
	.word	coefficient2_5M_1_0
	.word	coefficient8_lanczos2_8tap
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_5M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_4M_a25
	.word	coefficient6_4M_a20
	.word	coefficient4_4M_a15
	.word	coefficient4_4M_a15
	.word	coefficient2_4M_0_1
	.word	coefficient8_3M_a19
	.word	s32Coeff_guass2_6M_a0_5
	.word	coefficient4_4M_a15
	.word	s32Coefficient2_4M_0_1
	.word	coefficient8_lanczos2_8tap
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
