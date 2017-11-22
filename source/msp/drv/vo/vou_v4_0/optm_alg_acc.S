#ifdef HI_DISP_ACC_SUPPORT

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
	.file	"optm_alg_acc.c"
	.text
	.align	2
	.global	OPTM_AA_AccResetLayer
	.type	OPTM_AA_AccResetLayer, %function
OPTM_AA_AccResetLayer:
	UNWIND(.fnstart)
.LFB5:
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
	bne	.L6
.L2:
	mvn	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L6:
	ldr	r3, [r0, #0]
	cmp	r3, #2
	bhi	.L2
	ldr	r1, [r0, #4]
	cmp	r1, #1
	moveq	r1, #0
	streq	r1, [r0, #16]
	moveq	r0, r1
	bne	.L2
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccResetLayer, .-OPTM_AA_AccResetLayer
	.align	2
	.global	OPTM_AA_AccSetLayerEnable
	.type	OPTM_AA_AccSetLayerEnable, %function
OPTM_AA_AccSetLayerEnable:
	UNWIND(.fnstart)
.LFB6:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	r3, [r0, #16]
	mov	r4, r0
	cmp	r3, #0
	beq	.L11
	ldr	ip, [r0, #8]
	cmp	ip, r1
	beq	.L9
	str	r1, [r4, #8]
	mov	r2, #0
	ldr	r0, [r0, #0]
	bl	Vou_SetAccCtrl
.L9:
	mov	r0, #0
	ldmfd	sp, {r3, r4, fp, sp, pc}
.L11:
	mov	r1, r3
	str	r3, [r0, #8]
	mov	r2, r3
	ldr	r0, [r0, #0]
	bl	Vou_SetAccCtrl
	ldr	r0, [r4, #16]
	add	r3, r0, #1
	mov	r0, #0
	str	r3, [r4, #16]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccSetLayerEnable, .-OPTM_AA_AccSetLayerEnable
	.align	2
	.global	OPTM_AA_AccDeInitLayer
	.type	OPTM_AA_AccDeInitLayer, %function
OPTM_AA_AccDeInitLayer:
	UNWIND(.fnstart)
.LFB4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r4, r0, #0
	bne	.L16
.L13:
	mvn	r0, #0
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L16:
	ldr	r0, [r4, #0]
	cmp	r0, #2
	bhi	.L13
	mov	r5, #0
	str	r5, [r4, #8]
	mov	r1, r5
	mov	r2, r5
	bl	Vou_SetAccCtrl
	str	r5, [r4, #4]
	str	r5, [r4, #16]
	mov	r0, r5
	ldmfd	sp, {r4, r5, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccDeInitLayer, .-OPTM_AA_AccDeInitLayer
	.align	2
	.global	OPTM_AA_AccUpdateLayer
	.type	OPTM_AA_AccUpdateLayer, %function
OPTM_AA_AccUpdateLayer:
	UNWIND(.fnstart)
.LFB3:
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
	cmp	r0, #2
	str	r0, [fp, #-48]
	mvnhi	r0, #0
	bhi	.L19
	movw	r5, #:lower16:.LANCHOR0
	movw	r4, #:lower16:.LANCHOR1
	movw	lr, #:lower16:.LANCHOR2
	movw	ip, #:lower16:1374389535
	movt	r5, #:upper16:.LANCHOR0
	movt	r4, #:upper16:.LANCHOR1
	movt	lr, #:upper16:.LANCHOR2
	movt	ip, #:upper16:1374389535
	sub	r7, r1, #50
	mov	r3, #0
	movw	r6, #1023
	b	.L22
.L35:
	ldr	r9, [r5, r3]
	ldr	r2, [r4, r3]
	rsb	r0, r9, r2
	mul	r8, r0, r1
	smull	r0, sl, ip, r8
	mov	r2, r8, asr #31
	rsb	r8, r2, sl, asr #4
	add	r0, r8, r9
	cmp	r0, r6
	movge	r0, r6
	cmp	r1, #49
	bic	r2, r0, r0, asr #31
	str	r2, [lr, r3]
	add	r3, r3, #4
	bgt	.L25
.L36:
	ldr	r0, [r5, r3]
	ldr	r2, [r4, r3]
	rsb	r9, r0, r2
	mul	r8, r9, r1
	smull	r9, sl, ip, r8
	mov	r2, r8, asr #31
	rsb	r8, r2, sl, asr #4
	add	r2, r3, #4
	add	sl, r8, r0
	cmp	sl, r6
	movge	sl, r6
	cmp	r1, #49
	bic	r9, sl, sl, asr #31
	str	r9, [lr, r3]
	ble	.L31
.L37:
	ldr	r8, [r4, r2]
	add	r3, r3, #8
	ldr	r0, [r5, r2]
	rsb	r9, r0, r8
	mul	sl, r9, r7
	smull	r0, r9, ip, sl
	mov	sl, sl, asr #31
	rsb	sl, sl, r9, asr #6
	add	r0, sl, r8
	cmp	r0, r6
	movge	r0, r6
	cmp	r3, #180
	bic	r8, r0, r0, asr #31
	str	r8, [lr, r2]
	beq	.L34
.L22:
	cmp	r1, #49
	ble	.L35
	ldr	r0, [r4, r3]
	ldr	r2, [r5, r3]
	rsb	r9, r2, r0
	mul	r8, r9, r7
	smull	r9, sl, ip, r8
	mov	r2, r8, asr #31
	rsb	r8, r2, sl, asr #6
	add	sl, r8, r0
	cmp	sl, r6
	movge	sl, r6
	cmp	r1, #49
	bic	r9, sl, sl, asr #31
	str	r9, [lr, r3]
	add	r3, r3, #4
	ble	.L36
.L25:
	ldr	r9, [r4, r3]
	ldr	r2, [r5, r3]
	rsb	r0, r2, r9
	mul	r8, r0, r7
	smull	r0, sl, ip, r8
	mov	r2, r8, asr #31
	rsb	r8, r2, sl, asr #6
	add	r2, r3, #4
	add	sl, r8, r9
	cmp	sl, r6
	movge	sl, r6
	cmp	r1, #49
	bic	r0, sl, sl, asr #31
	str	r0, [lr, r3]
	bgt	.L37
.L31:
	ldr	r8, [r5, r2]
	add	r3, r3, #8
	ldr	r0, [r4, r2]
	rsb	r9, r8, r0
	mul	sl, r9, r1
	smull	r0, r9, ip, sl
	mov	sl, sl, asr #31
	rsb	sl, sl, r9, asr #4
	add	r8, sl, r8
	cmp	r8, r6
	movge	r8, r6
	cmp	r3, #180
	bic	r8, r8, r8, asr #31
	str	r8, [lr, r2]
	bne	.L22
.L34:
	ldr	r0, [fp, #-48]
	movw	r1, #:lower16:.LANCHOR2
	movt	r1, #:upper16:.LANCHOR2
	bl	Vou_SetAccTab
	mov	r0, #0
.L19:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccUpdateLayer, .-OPTM_AA_AccUpdateLayer
	.align	2
	.global	OPTM_AA_AccInitLayer
	.type	OPTM_AA_AccInitLayer, %function
OPTM_AA_AccInitLayer:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #36)
	sub	sp, sp, #36
	cmp	r0, #2
	movls	r4, #0
	movhi	r4, #1
	mov	r6, r0
	cmp	r1, #0
	orreq	r4, r4, #1
	mov	r5, r1
	cmp	r4, #0
	mvnne	r0, #0
	bne	.L40
	movw	r1, #:lower16:.LANCHOR1
	movt	r1, #:upper16:.LANCHOR1
	bl	Vou_SetAccTab
	sub	ip, fp, #36
	mov	r1, #620
	mov	r0, #400
	str	r1, [fp, #-36]
	mov	r3, #50
	str	r0, [fp, #-32]
	mov	r2, #740
	ldmia	ip, {r0, r1}
	sub	ip, fp, #48
	str	r3, [fp, #-48]
	mov	r3, sp
	str	r2, [fp, #-44]
	mov	r2, #280
	stmia	r3, {r0, r1}
	mov	r0, r6
	str	r2, [fp, #-40]
	ldmia	ip, {r1, r2, r3}
	bl	Vou_SetAccThd
	mov	r0, r6
	str	r4, [r5, #8]
	mov	r1, r4
	mov	r2, r4
	bl	Vou_SetAccCtrl
	mov	r0, r4
	mov	r3, #1
	str	r6, [r5, #0]
	str	r3, [r5, #4]
	str	r4, [r5, #16]
.L40:
	sub	sp, fp, #24
	ldmfd	sp, {r4, r5, r6, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccInitLayer, .-OPTM_AA_AccInitLayer
	.align	2
	.global	OPTM_AA_AccCoefDeInit
	.type	OPTM_AA_AccCoefDeInit, %function
OPTM_AA_AccCoefDeInit:
	UNWIND(.fnstart)
.LFB1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	movw	r4, #:lower16:.LANCHOR2
	movt	r4, #:upper16:.LANCHOR2
	ldr	r3, [r4, #180]
	cmp	r3, #0
	beq	.L43
	add	r0, r4, #180
	bl	HI_DRV_MMZ_UnmapAndRelease
	mov	r0, #0
	str	r0, [r4, #180]
.L43:
	mov	r0, #0
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_AccCoefDeInit, .-OPTM_AA_AccCoefDeInit
	.align	2
	.global	OPTM_AA_AccCoefInit
	.type	OPTM_AA_AccCoefInit, %function
OPTM_AA_AccCoefInit:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #24)
	sub	sp, sp, #24
	mov	r1, #0
	movw	r0, #:lower16:.LC0
	mov	r2, #512
	movt	r0, #:upper16:.LC0
	mov	r3, r1
	sub	r4, fp, #32
	str	r4, [sp, #0]
	bl	HI_DRV_MMZ_AllocAndMap
	subs	r5, r0, #0
	mvnne	r0, #0
	bne	.L47
	ldmia	r4, {r0, r1, r2}
	ldr	r3, .L49
	stmia	r3, {r0, r1, r2}
	ldr	r1, .L49+4
	mov	r2, #512
	ldr	r0, [fp, #-32]
	bl	memcpy
	ldr	r0, [fp, #-28]
	bl	Vou_SetAccWeightAddr
	mov	r0, #1
	mov	r1, #4
	bl	HAL_SetDispParaUpd
	mov	r0, r5
.L47:
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
.L50:
	.align	2
.L49:
	.word	.LANCHOR2+180
	.word	.LANCHOR1+180
	UNWIND(.fnend)
	.size	OPTM_AA_AccCoefInit, .-OPTM_AA_AccCoefInit
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	GammaTable_Basic, %object
	.size	GammaTable_Basic, 180
GammaTable_Basic:
	.word	0
	.word	128
	.word	256
	.word	384
	.word	512
	.word	640
	.word	768
	.word	896
	.word	1023
	.word	0
	.word	128
	.word	256
	.word	384
	.word	512
	.word	640
	.word	768
	.word	896
	.word	1023
	.word	0
	.word	128
	.word	256
	.word	384
	.word	512
	.word	640
	.word	768
	.word	896
	.word	1023
	.word	0
	.word	128
	.word	256
	.word	384
	.word	512
	.word	640
	.word	768
	.word	896
	.word	1023
	.word	0
	.word	128
	.word	256
	.word	384
	.word	512
	.word	640
	.word	768
	.word	896
	.word	1023
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	s_GammaTable_Recommended, %object
	.size	s_GammaTable_Recommended, 180
s_GammaTable_Recommended:
	.word	0
	.word	139
	.word	279
	.word	414
	.word	549
	.word	647
	.word	793
	.word	911
	.word	1023
	.word	0
	.word	109
	.word	226
	.word	362
	.word	511
	.word	665
	.word	804
	.word	917
	.word	1023
	.word	0
	.word	114
	.word	236
	.word	356
	.word	484
	.word	614
	.word	771
	.word	911
	.word	1023
	.word	0
	.word	109
	.word	238
	.word	383
	.word	535
	.word	675
	.word	804
	.word	917
	.word	1023
	.word	0
	.word	110
	.word	226
	.word	347
	.word	483
	.word	639
	.word	789
	.word	917
	.word	1023
	.type	s_AccCoef, %object
	.size	s_AccCoef, 512
s_AccCoef:
	.short	16383
	.short	8192
	.short	5461
	.short	4096
	.short	3277
	.short	2731
	.short	2341
	.short	2048
	.short	1820
	.short	1638
	.short	1489
	.short	1365
	.short	1260
	.short	1170
	.short	1092
	.short	1024
	.short	964
	.short	910
	.short	862
	.short	819
	.short	780
	.short	745
	.short	712
	.short	683
	.short	655
	.short	630
	.short	607
	.short	585
	.short	565
	.short	546
	.short	529
	.short	512
	.short	496
	.short	482
	.short	468
	.short	455
	.short	443
	.short	431
	.short	420
	.short	410
	.short	400
	.short	390
	.short	381
	.short	372
	.short	364
	.short	356
	.short	349
	.short	341
	.short	334
	.short	328
	.short	321
	.short	315
	.short	309
	.short	303
	.short	298
	.short	293
	.short	287
	.short	282
	.short	278
	.short	273
	.short	269
	.short	264
	.short	260
	.short	256
	.short	252
	.short	248
	.short	245
	.short	241
	.short	237
	.short	234
	.short	231
	.short	228
	.short	224
	.short	221
	.short	218
	.short	216
	.short	213
	.short	210
	.short	207
	.short	205
	.short	202
	.short	200
	.short	197
	.short	195
	.short	193
	.short	191
	.short	188
	.short	186
	.short	184
	.short	182
	.short	180
	.short	178
	.short	176
	.short	174
	.short	172
	.short	171
	.short	169
	.short	167
	.short	165
	.short	164
	.short	162
	.short	161
	.short	159
	.short	158
	.short	156
	.short	155
	.short	153
	.short	152
	.short	150
	.short	149
	.short	148
	.short	146
	.short	145
	.short	144
	.short	142
	.short	141
	.short	140
	.short	139
	.short	138
	.short	137
	.short	135
	.short	134
	.short	133
	.short	132
	.short	131
	.short	130
	.short	129
	.short	128
	.short	127
	.short	126
	.short	125
	.short	124
	.short	123
	.short	122
	.short	121
	.short	120
	.short	120
	.short	119
	.short	118
	.short	117
	.short	116
	.short	115
	.short	115
	.short	114
	.short	113
	.short	112
	.short	111
	.short	111
	.short	110
	.short	109
	.short	109
	.short	108
	.short	107
	.short	106
	.short	106
	.short	105
	.short	104
	.short	104
	.short	103
	.short	102
	.short	102
	.short	101
	.short	101
	.short	100
	.short	99
	.short	99
	.short	98
	.short	98
	.short	97
	.short	96
	.short	96
	.short	95
	.short	95
	.short	94
	.short	94
	.short	93
	.short	93
	.short	92
	.short	92
	.short	91
	.short	91
	.short	90
	.short	90
	.short	89
	.short	89
	.short	88
	.short	88
	.short	87
	.short	87
	.short	86
	.short	86
	.short	85
	.short	85
	.short	84
	.short	84
	.short	84
	.short	83
	.short	83
	.short	82
	.short	82
	.short	82
	.short	81
	.short	81
	.short	80
	.short	80
	.short	80
	.short	79
	.short	79
	.short	78
	.short	78
	.short	78
	.short	77
	.short	77
	.short	77
	.short	76
	.short	76
	.short	76
	.short	75
	.short	75
	.short	74
	.short	74
	.short	74
	.short	73
	.short	73
	.short	73
	.short	72
	.short	72
	.short	72
	.short	72
	.short	71
	.short	71
	.short	71
	.short	70
	.short	70
	.short	70
	.short	69
	.short	69
	.short	69
	.short	69
	.short	68
	.short	68
	.short	68
	.short	67
	.short	67
	.short	67
	.short	67
	.short	66
	.short	66
	.short	66
	.short	66
	.short	65
	.short	65
	.short	65
	.short	65
	.short	64
	.short	64
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	ASCII(.ascii	"VOAccCoef\000")
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	s_GammaTable_out.5717, %object
	.size	s_GammaTable_out.5717, 180
s_GammaTable_out.5717:
	.space	180
	.type	g_ACCstMBuf, %object
	.size	g_ACCstMBuf, 12
g_ACCstMBuf:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
#endif

