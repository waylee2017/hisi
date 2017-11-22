#ifdef HI_VDP_DEI_SUPPORT

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
	.file	"optm_alg_dei.c"
	.text
	.align	2
	.global	vDieRead
	.type	vDieRead, %function
vDieRead:
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
	cmp	r0, #0
	ldmnefd	sp, {fp, sp, pc}
	mov	r0, r1
	mov	r2, #220
	movw	r1, #:lower16:stDieInfoLast
	movt	r1, #:upper16:stDieInfoLast
	bl	memcpy
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	vDieRead, .-vDieRead
	.align	2
	.global	OPTM_AA_ProcRefFld
	.type	OPTM_AA_ProcRefFld, %function
OPTM_AA_ProcRefFld:
	UNWIND(.fnstart)
.LFB6:
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
	mov	r0, #0
	ldr	ip, [r3, #24]
	ldr	r2, [r3, #28]
	str	r1, [r3, #28]
	str	ip, [r3, #20]
	str	r2, [r3, #24]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_ProcRefFld, .-OPTM_AA_ProcRefFld
	.align	2
	.global	OPTM_AA_GetDEIMode
	.type	OPTM_AA_GetDEIMode, %function
OPTM_AA_GetDEIMode:
	UNWIND(.fnstart)
.LFB9:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r0, #720
	cmpls	r1, #576
	movhi	r0, #1
	movls	r0, #3
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_GetDEIMode, .-OPTM_AA_GetDEIMode
	.align	2
	.global	OPTM_AA_GetDie5FMode
	.type	OPTM_AA_GetDie5FMode, %function
OPTM_AA_GetDie5FMode:
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
	ldr	r3, [r0, #460]
	cmp	r3, #576
	movgt	r0, #0
	ldmgtfd	sp, {fp, sp, pc}
	ldr	r0, [r0, #464]
	cmp	r0, #720
	movgt	r0, #0
	movle	r0, #1
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_GetDie5FMode, .-OPTM_AA_GetDie5FMode
	.align	2
	.global	OPTM_AA_GetDieDetInfo
	.type	OPTM_AA_GetDieDetInfo, %function
OPTM_AA_GetDieDetInfo:
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
	mvn	r3, #0
	mvn	ip, #0
	str	r3, [r1, #4]
	mov	r2, #0
	str	ip, [r1, #0]
	str	r2, [r1, #0]
	ldrb	r3, [r0, #176]	@ zero_extendqisi2
	cmp	r3, #1
	moveq	r3, #0
	streq	r3, [r1, #4]
	ldmeqfd	sp, {fp, sp, pc}
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r1, #4]
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_GetDieDetInfo, .-OPTM_AA_GetDieDetInfo
	.align	2
	.global	vDieGetInfo
	.type	vDieGetInfo, %function
vDieGetInfo:
	UNWIND(.fnstart)
.LFB5:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r5, r0, #0
	mov	r4, r1
	ldmnefd	sp, {r4, r5, fp, sp, pc}
	mov	r0, r2
	movw	r1, #:lower16:stDieInfoLast
	mov	r2, #220
	movt	r1, #:upper16:stDieInfoLast
	bl	memcpy
	mov	r0, r5
	mov	r2, r4
	add	r1, r4, #4
	ldmfd	sp, {r4, r5, fp, sp, lr}
	b	OPTM_HAL_DieLayerInReso
	UNWIND(.fnend)
	.size	vDieGetInfo, .-vDieGetInfo
	.align	2
	.global	OPTM_AA_GetOfflineDieInfo
	.type	OPTM_AA_GetOfflineDieInfo, %function
OPTM_AA_GetOfflineDieInfo:
	UNWIND(.fnstart)
.LFB7:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	cmp	r1, #0
	ldmeqfd	sp, {fp, sp, pc}
	add	r2, r1, #636
	add	r1, r1, #460
	ldmfd	sp, {fp, sp, lr}
	b	vDieGetInfo
	UNWIND(.fnend)
	.size	OPTM_AA_GetOfflineDieInfo, .-OPTM_AA_GetOfflineDieInfo
	.align	2
	.global	OPTM_AA_DieCfgApi
	.type	OPTM_AA_DieCfgApi, %function
OPTM_AA_DieCfgApi:
	UNWIND(.fnstart)
.LFB11:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	ldr	ip, [fp, #12]
	mov	r8, r3
	mov	r5, r0
	mov	r4, r1
	ldr	r6, [fp, #4]
	ldr	r3, [fp, #8]
	ldr	sl, [fp, #16]
	cmp	ip, #3
	ldrls	pc, [pc, ip, asl #2]
	b	.L31
.L36:
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
.L31:
	mov	r1, #0
	mov	r0, r5
	mov	r2, r1
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	b	Vou_SetDieEnable
.L35:
	str	r3, [r1, #920]
.L37:
	cmp	r3, #0
	beq	.L31
	ldrb	lr, [r4, #411]	@ zero_extendqisi2
	mov	r3, r2
	mov	r0, r5
	ldr	r1, [r4, #500]
	add	r2, r4, #596
	sxtb	r7, lr
	bl	Vou_SetDieAddr
	cmp	r7, #0
	movle	r7, #0
	movgt	r7, #1
	eor	r3, r7, #1
	cmp	r6, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	bne	.L62
	ldr	r1, [r4, #856]
	mov	r0, r5
	cmp	r1, #0
	movne	r1, #1
	bl	HAL_SetFieldOrder
	cmp	r8, #1
	beq	.L63
.L42:
	ldr	r0, [r4, #28]
	cmp	r0, #0
	moveq	r1, #2
	movne	r1, #3
	movne	r0, #0
	mov	r2, r1
	bl	HAL_DISP_SetReadMode
.L44:
	ldrsb	r0, [r4, #141]
	cmp	r0, #0
	bne	.L46
	ldr	r3, [r4, #592]
	cmp	r3, #0
	bne	.L47
	ldr	r1, [r4, #28]
	cmp	r1, #0
	beq	.L49
.L48:
	mov	ip, #1
	str	ip, [r4, #876]
	str	ip, [r4, #872]
.L46:
	mov	r0, r5
	ldr	r1, [r4, #468]
	ldr	r2, [r4, #472]
	bl	Vou_SetDieEnable
	ldr	r0, [r4, #460]
	cmp	r0, #576
	bgt	.L50
	ldr	lr, [r4, #464]
	cmp	lr, #720
	bgt	.L50
	cmp	sl, #5
	bhi	.L64
	cmp	r6, #1
	beq	.L65
	mov	r1, #0
	mov	r0, r5
	bl	Vou_SetDieLumaMode
	mov	r0, r5
	mov	r1, #0
	bl	Vou_SetDieChmMode
	mov	r1, #5
	mov	r0, r5
	bl	Vou_SetDieStMode
	mov	r1, #0
	str	r1, [r4, #480]
	str	r1, [r4, #476]
.L55:
	mov	r0, r5
	mov	r1, #1
	bl	Vou_SetDieStpUpdate
.L54:
	ldr	r1, [r4, #880]
	mov	r0, r5
	bl	Vou_SetDieOutSel
	mov	r0, r5
	ldr	r1, [r4, #884]
	bl	Vou_SetDieChmOutSel
	mov	r0, r5
	mov	r1, r7
	bl	Vou_SetDieStpRst
	mov	r0, r5
	ldr	r1, [r4, #872]
	bl	Vou_SetPdDirMch
	mov	r0, r5
	ldr	r1, [r4, #876]
	bl	Vou_SetPdChmDirMch
	mov	r0, r5
	ldr	r1, [r4, #896]
	bl	Vou_SetPdSmtEnable
	ldr	r2, [r4, #516]
	cmp	r2, #1
	moveq	r2, #0
	streq	r2, [r4, #516]
	ldmfd	sp, {r4, r5, r6, r7, r8, sl, fp, sp, pc}
.L34:
	str	r3, [r1, #916]
	b	.L37
.L33:
	str	r3, [r1, #912]
	b	.L37
.L32:
	str	r3, [r1, #908]
	b	.L37
.L50:
	mov	r1, #2
	mov	r0, r5
	bl	Vou_SetDieLumaMode
	mov	r0, r5
	mov	r1, #2
	bl	Vou_SetDieChmMode
	mov	r0, r5
	mov	r1, #1
	bl	Vou_SetDieStWbcMd
	mov	r0, r5
	mov	r1, #63
	bl	Vou_SetDieScaleRatio
	mov	r0, r5
	mov	r1, #1
	bl	Vou_SetDieQrstMax
	mov	r1, #1
	mov	r0, r5
	bl	Vou_SetDieSceMax
	ldr	r1, [r4, #464]
	cmp	r1, #1920
	bgt	.L52
	ldr	r2, [r4, #460]
	movw	ip, #1080
	cmp	r2, ip
	ble	.L66
.L52:
	mov	r1, #10
	mov	r0, r5
	bl	Vou_SetDieStMode
	mov	r0, r5
	mov	r1, #0
	bl	Vou_SetDieStpUpdate
.L53:
	mov	r3, #2
	str	r3, [r4, #480]
	str	r3, [r4, #476]
	b	.L54
.L47:
	cmp	r3, #1
	beq	.L67
.L49:
	mov	r3, #0
	str	r3, [r4, #876]
	str	r3, [r4, #872]
	b	.L46
.L62:
	mov	r0, r5
	add	r1, r4, #464
	add	r2, r4, #460
	bl	OPTM_HAL_DieLayerInReso
	ldr	r1, [r4, #856]
	mov	r0, r5
	cmp	r1, #0
	movne	r1, #1
	bl	HAL_SetFieldOrder
	cmp	r8, #1
	bne	.L42
.L63:
	ldr	r0, [r4, #28]
	cmp	r0, #0
	moveq	r1, #3
	movne	r1, #2
	movne	r0, #0
	mov	r2, r1
	bl	HAL_DISP_SetReadMode
	b	.L44
.L64:
	mov	r1, #2
	mov	r0, r5
	bl	Vou_SetDieLumaMode
	mov	r0, r5
	mov	r1, #2
	bl	Vou_SetDieChmMode
	mov	r0, r5
	mov	r1, #10
	bl	Vou_SetDieStMode
	mov	r0, #2
	str	r0, [r4, #480]
	str	r0, [r4, #476]
	b	.L55
.L65:
	mov	r0, r5
	mov	r1, r6
	bl	Vou_SetDieLumaMode
	mov	r0, r5
	mov	r1, r6
	bl	Vou_SetDieChmMode
	mov	r0, r5
	mov	r1, #5
	bl	Vou_SetDieStMode
	str	r6, [r4, #480]
	str	r6, [r4, #476]
	b	.L55
.L67:
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L49
	b	.L48
.L66:
	mov	r0, r5
	mov	r1, #7
	bl	Vou_SetDieStMode
	mov	r0, r5
	mov	r1, #1
	bl	Vou_SetDieStpUpdate
	b	.L53
	UNWIND(.fnend)
	.size	OPTM_AA_DieCfgApi, .-OPTM_AA_DieCfgApi
	.align	2
	.global	OPTM_AA_DieCalcApi
	.type	OPTM_AA_DieCalcApi, %function
OPTM_AA_DieCalcApi:
	UNWIND(.fnstart)
.LFB8:
	@ args = 16, pretend = 0, frame = 232
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #540)
	sub	sp, sp, #540
	sub	r6, fp, #264
	mov	r4, r1
	mov	r9, r0
	mov	r7, r2
	mov	r0, r6
	mov	r2, #220
	mov	r1, #0
	mov	sl, r3
	ldr	r5, [fp, #8]
	bl	memset
	ldr	r3, [r4, #908]
	add	r8, r4, #32
	add	r2, r5, #184
	str	r2, [r4, #436]
	cmp	r3, #0
	bne	.L69
	ldr	r0, [r4, #912]
	cmp	r0, #0
	beq	.L75
.L69:
	ldrb	r2, [r4, #411]	@ zero_extendqisi2
	mov	r3, #0
	add	r5, r4, #460
	str	r3, [r4, #908]
	str	r3, [r4, #912]
	sxtb	lr, r2
	str	r3, [r4, #916]
	cmp	lr, r3
	str	r3, [r4, #920]
	ble	.L71
	str	r3, [fp, #-264]
	sub	r2, r2, #1
	str	r3, [fp, #-144]
	str	r3, [fp, #-140]
	str	r3, [fp, #-136]
	str	r3, [fp, #-132]
	str	r3, [fp, #-236]
	str	r3, [fp, #-240]
	str	r3, [fp, #-244]
	str	r3, [fp, #-232]
	str	r3, [fp, #-220]
	str	r3, [fp, #-224]
	str	r3, [fp, #-180]
	str	r3, [fp, #-216]
	str	r3, [fp, #-176]
	str	r3, [fp, #-212]
	str	r3, [fp, #-172]
	str	r3, [fp, #-208]
	str	r3, [fp, #-168]
	str	r3, [fp, #-204]
	str	r3, [fp, #-164]
	str	r3, [fp, #-200]
	str	r3, [fp, #-160]
	str	r3, [fp, #-196]
	str	r3, [fp, #-156]
	str	r3, [fp, #-192]
	str	r3, [fp, #-152]
	str	r3, [fp, #-188]
	str	r3, [fp, #-148]
	str	r3, [fp, #-184]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-248]
	str	r3, [fp, #-128]
	str	r3, [fp, #-52]
	strb	r2, [r4, #411]
	str	r3, [fp, #-124]
	str	r3, [fp, #-120]
	str	r3, [fp, #-112]
	str	r3, [fp, #-108]
	str	r3, [fp, #-104]
	str	r3, [fp, #-100]
	str	r3, [fp, #-96]
	str	r3, [fp, #-92]
	str	r3, [fp, #-88]
	str	r3, [fp, #-84]
	str	r3, [fp, #-80]
	str	r3, [fp, #-76]
	str	r3, [fp, #-72]
	str	r3, [fp, #-68]
	str	r3, [fp, #-64]
	str	r3, [fp, #-60]
	str	r3, [fp, #-56]
.L72:
	ldr	r3, [r4, #476]
	mov	r1, r6
	mov	r2, #220
	add	r0, sp, #44
	str	r3, [r4, #32]
	bl	memcpy
	add	ip, r5, #16
	str	r8, [sp, #264]
	add	lr, r4, #20
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	r6, [fp, #16]
	str	lr, [sp, #268]
	mov	lr, sp
	str	r7, [sp, #272]
	add	r8, r4, #900
	str	r6, [sp, #288]
	add	r6, r4, #584
	str	sl, [sp, #276]
	add	r4, r4, #856
	stmia	lr!, {r0, r1, r2, r3}
	str	r6, [sp, #280]
	ldmia	ip!, {r0, r1, r2, r3}
	str	r4, [sp, #284]
	ldr	r4, [fp, #4]
	str	r8, [sp, #292]
	str	r4, [sp, #296]
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2}
	stmia	lr, {r0, r1, r2}
	ldmia	r5, {r0, r1, r2, r3}
	bl	ConfigDieInfo
.L74:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L75:
	ldr	r1, [r4, #916]
	cmp	r1, #0
	bne	.L69
	ldr	r3, [r4, #920]
	cmp	r3, #0
	bne	.L69
	mov	r1, r3
	mov	r2, #428
	mov	r0, r8
	str	r3, [fp, #-272]
	bl	memset
	add	r2, r4, #40
	mvn	r3, #0
	str	r2, [r4, #112]
	strb	r3, [r4, #168]
	mov	r7, #2
	ldr	r3, [fp, #-272]
	ldr	ip, [r4, #488]
	ldr	r0, [r4, #484]
	ldr	r1, [r4, #496]
	ldr	r6, [r4, #492]
	str	r3, [r4, #172]
	strb	r7, [r4, #176]
	mov	r7, #1
	strb	r1, [r4, #39]
	str	r3, [r4, #104]
	strb	r7, [r4, #411]
	strb	r6, [r4, #36]
	strb	ip, [r4, #37]
	strb	r0, [r4, #38]
	str	r2, [r4, #108]
	ldr	r2, [r5, #84]
	rsbs	r3, r2, #1
	movcc	r3, #0
	str	r3, [r4, #584]
	ldr	ip, [r5, #84]
	rsbs	r1, ip, #1
	movcc	r1, #0
	str	r1, [r4, #588]
	ldr	r0, [r5, #84]
	rsbs	r2, r0, #1
	movcc	r2, #0
	str	r2, [r4, #592]
	ldr	r3, [r5, #84]
	rsbs	ip, r3, #1
	movcc	ip, #0
	str	ip, [r4, #856]
	b	.L74
.L71:
	ldr	r1, [fp, #4]
	cmp	r1, #0
	beq	.L73
	mov	r0, r6
	add	r1, r4, #636
	mov	r2, #220
	bl	memcpy
	b	.L72
.L73:
	mov	r0, r9
	mov	r1, r5
	mov	r2, r6
	bl	vDieGetInfo
	b	.L72
	UNWIND(.fnend)
	.size	OPTM_AA_DieCalcApi, .-OPTM_AA_DieCalcApi
	.align	2
	.global	OPTM_AA_DeInitDieModule
	.type	OPTM_AA_DeInitDieModule, %function
OPTM_AA_DeInitDieModule:
	UNWIND(.fnstart)
.LFB3:
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
	bl	HI_DRV_MMZ_UnmapAndRelease
	mov	r0, #0
	str	r0, [r4, #0]
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_DeInitDieModule, .-OPTM_AA_DeInitDieModule
	.align	2
	.global	vDieInitApi
	.type	vDieInitApi, %function
vDieInitApi:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 640
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #640)
	sub	sp, sp, #640
	sub	r5, fp, #660
	sub	r4, fp, #340
	mov	r1, r0
	mov	r0, r5
	bl	InitDieInfo
	mov	r2, #320
	mov	r1, r5
	mov	r0, r4
	bl	memcpy
	ldrb	r1, [fp, #-312]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieDirInten
	ldrb	r1, [fp, #-311]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieVerDirInten
	ldr	r1, [fp, #-300]
	mov	r0, #0
	sxth	r1, r1
	bl	Vou_SetDieVerMinInten
	ldrb	r1, [fp, #-304]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieScale
	ldrb	r2, [fp, #-308]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #1
	bl	Vou_SetDieCkGain
	ldrb	r2, [fp, #-309]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #1
	bl	Vou_SetDieCkGnRange
	ldrb	r2, [fp, #-310]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #1
	bl	Vou_SetDieCkMaxRange
	ldrb	r2, [fp, #-305]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #2
	bl	Vou_SetDieCkGain
	ldrb	r2, [fp, #-306]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #2
	bl	Vou_SetDieCkGnRange
	ldrb	r2, [fp, #-307]	@ zero_extendqisi2
	mov	r0, #0
	mov	r1, #2
	bl	Vou_SetDieCkMaxRange
	add	r1, r4, #115
	mov	r0, #0
	bl	Vou_SetDieLumaQTab
	add	r1, r4, #118
	mov	r0, #0
	bl	Vou_SetDieLumaReqTab
	ldrb	r1, [fp, #-226]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieScaleRatio
	ldrb	r1, [fp, #-227]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieWinSize
	ldrb	r1, [fp, #-212]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieSceMax
	ldrb	r1, [fp, #-213]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieQrstMax
	ldrb	r1, [fp, #-211]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieChmCcrEnable
	ldrb	r1, [fp, #-210]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieChmMaOffset
	ldrb	r1, [fp, #-204]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieXchmMax
	ldrb	r3, [fp, #-205]	@ zero_extendqisi2
	ldrb	r1, [fp, #-208]	@ zero_extendqisi2
	mov	r0, #0
	ldrb	r2, [fp, #-209]	@ zero_extendqisi2
	bl	Vou_SetDieCcrDetect
	ldrb	r1, [fp, #-206]	@ zero_extendqisi2
	ldrb	r2, [fp, #-207]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieSimilar
	ldrb	r2, [fp, #-215]	@ zero_extendqisi2
	ldrb	r1, [fp, #-216]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieMfMax
	ldrb	r1, [fp, #-236]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieCkEnh
	ldrb	r1, [fp, #-214]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieStMode
	ldrb	r1, [fp, #-201]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieMidThd
	ldrb	r1, [fp, #-203]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieStUpdMd
	ldrb	r1, [fp, #-202]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieStWbcMd
	ldrb	r1, [fp, #-200]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetDieSadThd
	mov	r0, #0
	mov	r1, r0
	ldr	r2, [fp, #-296]
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-292]
	mov	r0, #0
	mov	r1, #1
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-288]
	mov	r0, #0
	mov	r1, #2
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-284]
	mov	r0, #0
	mov	r1, #3
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-280]
	mov	r0, #0
	mov	r1, #4
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-276]
	mov	r0, #0
	mov	r1, #5
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-272]
	mov	r0, #0
	mov	r1, #6
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-268]
	mov	r0, #0
	mov	r1, #7
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-264]
	mov	r0, #0
	mov	r1, #8
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-260]
	mov	r0, #0
	mov	r1, #9
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-256]
	mov	r0, #0
	mov	r1, #10
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-252]
	mov	r0, #0
	mov	r1, #11
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-248]
	mov	r0, #0
	mov	r1, #12
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-244]
	mov	r0, #0
	mov	r1, #13
	bl	Vou_SetDieDirMult
	ldr	r2, [fp, #-240]
	mov	r0, #0
	mov	r1, #14
	bl	Vou_SetDieDirMult
	mov	r0, #0
	mov	r1, r0
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-44]
	bl	Vou_SetPdBlkPos
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	mov	r0, #0
	mov	r1, #1
	bl	Vou_SetPdBlkPos
	ldr	r1, [fp, #-152]
	mov	r0, #0
	bl	Vou_SetPdStlBlkThd
	ldr	r1, [fp, #-148]
	mov	r0, #0
	bl	Vou_SetPdDiffThd
	add	r1, r4, #196
	mov	r0, #0
	bl	Vou_SetPdHistThd
	add	r1, r4, #212
	mov	r0, #0
	bl	Vou_SetPdUmThd
	ldr	r1, [fp, #-112]
	mov	r0, #0
	bl	Vou_SetPdCoringTkr
	ldr	r1, [fp, #-116]
	mov	r0, #0
	bl	Vou_SetPdCoringNorm
	ldr	r1, [fp, #-108]
	mov	r0, #0
	bl	Vou_SetPdCoringBlk
	ldr	r1, [fp, #-104]
	mov	r0, #0
	bl	Vou_SetPdPccHthd
	add	r1, r4, #240
	mov	r0, #0
	bl	Vou_SetPdPccVthd
	add	r1, r4, #268
	mov	r0, #0
	bl	Vou_SetPdItDiffThd
	ldr	r1, [fp, #-56]
	mov	r0, #0
	bl	Vou_SetPdLasiThd
	ldr	r1, [fp, #-52]
	mov	r0, #0
	bl	Vou_SetPdEdgeThd
	ldrb	r1, [fp, #-234]	@ zero_extendqisi2
	mov	r0, #0
	bl	Vou_SetPdSmtThd
	ldr	r1, [fp, #-48]
	mov	r0, #0
	bl	Vou_SetPdMovThd
	ldr	r1, [fp, #-80]
	mov	r0, #0
	bl	Vou_SetPdMovCoringTkr
	ldr	r1, [fp, #-76]
	mov	r0, #0
	bl	Vou_SetPdMovCoringBlk
	ldr	r1, [fp, #-84]
	mov	r0, #0
	bl	Vou_SetPdMovCoringNorm
	mov	r0, #0
	ldr	r1, [fp, #-28]
	bl	Vou_SetPdIchdThd
	sub	sp, fp, #20
	ldmfd	sp, {r4, r5, fp, sp, pc}
	UNWIND(.fnend)
	.size	vDieInitApi, .-vDieInitApi
	.align	2
	.global	OPTM_AA_ResetDieModule
	.type	OPTM_AA_ResetDieModule, %function
OPTM_AA_ResetDieModule:
	UNWIND(.fnstart)
.LFB1:
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
	add	r7, r0, #460
	mov	r4, r0
	cmp	r3, #720
	mov	r5, #0
	str	r2, [r0, #464]
	mov	r6, r1
	mov	r2, #1
	mov	r1, #0
	strls	r2, [r0, #492]
	strhi	r1, [r0, #492]
	strhi	r1, [r0, #484]
	strhi	r1, [r0, #488]
	strls	r2, [r0, #484]
	strls	r2, [r0, #488]
	cmp	r6, r5
	movne	r6, #0
	moveq	r6, #1
	str	r3, [r0, #460]
	mov	r3, #5
	str	r2, [r0, #516]
	str	r2, [r0, #468]
	str	r2, [r0, #472]
	str	r1, [r0, #476]
	str	r1, [r0, #480]
	str	r5, [r0, #512]
	mov	r0, #1
	str	r3, [r4, #500]
	str	r0, [r4, #504]
	str	r0, [r4, #508]
	mov	r0, r7
	bl	vDieInitApi
	mov	r0, r7
	add	r1, r4, #32
	add	r2, r4, #20
	add	r3, r4, #584
	str	r6, [sp, #0]
	bl	Optm_Alg_InitPld
	str	r5, [r4, #580]
	mov	r0, r5
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_ResetDieModule, .-OPTM_AA_ResetDieModule
	.align	2
	.global	OPTM_AA_InitDieModule
	.type	OPTM_AA_InitDieModule, %function
OPTM_AA_InitDieModule:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 40
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
	mov	r4, r0
	sub	r1, fp, #52
	sub	r0, fp, #48
	mov	r3, #8
	str	r3, [fp, #-52]
	str	r3, [fp, #-48]
	bl	HI_DRV_SYS_GetChipVersion
	ldr	r3, [fp, #-48]
	cmp	r3, #8
	bne	.L91
.L86:
	mvn	r0, #0
.L89:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L91:
	ldr	r2, [fp, #-52]
	cmp	r2, #8
	beq	.L86
	cmp	r3, #7
	beq	.L92
.L87:
	movw	r7, #:lower16:1814400
	movw	r5, #:lower16:259200
	movt	r7, #:upper16:1814400
	movt	r5, #:upper16:259200
.L88:
	mov	r1, #0
	mov	r2, #924
	mov	r0, r4
	sub	r6, fp, #64
	bl	memset
	mov	r1, #0
	mov	r2, r7
	movw	r0, #:lower16:.LC0
	mov	r3, r1
	movt	r0, #:upper16:.LC0
	str	r6, [sp, #0]
	bl	HI_DRV_MMZ_AllocAndMap
	subs	r7, r0, #0
	bne	.L86
	ldmia	r6, {r0, r1, r2}
	ldr	r3, [fp, #-60]
	ldr	r8, [fp, #-64]
	mov	r6, r5, asl #1
	add	lr, r6, r5
	mov	ip, r5, asl #2
	str	r3, [fp, #-80]
	mov	r3, r5, asl #3
	str	r8, [r4, #16]
	add	sl, r3, r5
	stmia	r4, {r0, r1, r2}
	ldr	r0, [fp, #-80]
	add	r9, ip, r5
	rsb	r8, r5, r3
	add	r2, r1, lr, asl #1
	add	ip, ip, r1
	add	lr, lr, r1
	str	r0, [r4, #12]
	add	sl, sl, r1
	add	r0, r8, r1
	add	r9, r9, r1
	str	r2, [r4, #620]
	str	r0, [r4, #624]
	add	r2, r3, r1
	str	r1, [r4, #596]
	add	r5, r5, r1
	add	r6, r6, r1
	str	r2, [r4, #628]
	str	sl, [r4, #632]
	mov	r0, r4
	str	r9, [r4, #616]
	mov	r1, r7
	str	r5, [r4, #600]
	mov	r2, #720
	str	r6, [r4, #604]
	mov	r3, #576
	str	lr, [r4, #608]
	str	ip, [r4, #612]
	bl	OPTM_AA_ResetDieModule
	mov	r0, r7
	b	.L89
.L92:
	cmp	r2, #7
	movweq	r7, #:lower16:387072
	moveq	r5, #55296
	movteq	r7, #:upper16:387072
	bne	.L87
	b	.L88
	UNWIND(.fnend)
	.size	OPTM_AA_InitDieModule, .-OPTM_AA_InitDieModule
	.global	g_s32DMBufFlag
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	ASCII(.ascii	"VO_DeiBuf\000")
	.bss
	.align	2
	.type	g_s32DMBufFlag, %object
	.size	g_s32DMBufFlag, 4
g_s32DMBufFlag:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
#endif

