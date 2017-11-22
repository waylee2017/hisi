#ifdef HI_DISP_GAMMA_SUPPORT

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
	.file	"optm_alg_gamma.c"
	.text
	.align	2
	.global	OPTM_AA_DeInitDispGmm
	.type	OPTM_AA_DeInitDispGmm, %function
OPTM_AA_DeInitDispGmm:
	UNWIND(.fnstart)
.LFB3:
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
	cmp	r3, #1
	bne	.L2
	mov	r1, #0
	str	r1, [r0, #4]
	str	r1, [r0, #8]
	mov	r0, r1
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_DeInitDispGmm, .-OPTM_AA_DeInitDispGmm
	.align	2
	.global	OPTM_AA_SetGmmEnable
	.type	OPTM_AA_SetGmmEnable, %function
OPTM_AA_SetGmmEnable:
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
	bne	.L11
.L8:
	mvn	r0, #0
	ldmfd	sp, {fp, sp, pc}
.L11:
	ldr	r3, [r0, #0]
	cmp	r3, #1
	bne	.L8
	ldr	r0, [r0, #4]
	cmp	r0, #1
	bne	.L8
	bl	Vou_SetGammaEnable
	mov	r0, #0
	ldmfd	sp, {fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_SetGmmEnable, .-OPTM_AA_SetGmmEnable
	.align	2
	.global	OPTM_AA_SetGmmCoef
	.type	OPTM_AA_SetGmmCoef, %function
OPTM_AA_SetGmmCoef:
	UNWIND(.fnstart)
.LFB4:
	@ args = 0, pretend = 0, frame = 952
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #956)
	sub	sp, sp, #956
	subs	r4, r0, #0
	bne	.L21
.L13:
	mvn	r0, #0
.L19:
	sub	sp, fp, #40
	ldmfd	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L21:
	ldr	r3, [r4, #0]
	cmp	r3, #1
	bne	.L13
	ldr	r0, [r4, #4]
	cmp	r0, #1
	bne	.L13
	sub	r2, r1, #5
	cmp	r1, #0
	cmpne	r2, #1
	bls	.L14
	cmp	r1, #1
	beq	.L14
	sub	r5, r1, #7
	cmp	r5, #1
	bls	.L22
	sub	r6, r1, #11
	cmp	r6, #4
	bhi	.L17
	ldr	r2, .L23
	add	r0, r2, #40
	add	r1, r2, #80
	b	.L24
.L25:
	.align	2
.L23:
	.word	.LANCHOR0+120
.L24:
.L16:
	ldrb	r8, [r2, #1]	@ zero_extendqisi2
	movw	sl, #:lower16:-382
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	movw	r7, #:lower16:-384
	movt	r7, #:upper16:-384
	str	r7, [fp, #-664]
	mov	r6, r8, lsr #2
	ldrb	r7, [r2, #6]	@ zero_extendqisi2
	str	sl, [fp, #-712]
	mov	r5, r9, lsr #4
	ldrb	sl, [r2, #7]	@ zero_extendqisi2
	str	r6, [fp, #-496]
	mov	ip, r7, lsr #2
	ldrb	r6, [r2, #11]	@ zero_extendqisi2
	mov	r3, sl, lsr #4
	str	r5, [fp, #-468]
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	mov	lr, r6, lsr #2
	str	ip, [fp, #-580]
	ldrb	ip, [r2, #16]	@ zero_extendqisi2
	str	r3, [fp, #-584]
	ldrb	r3, [r2, #17]	@ zero_extendqisi2
	str	lr, [fp, #-540]
	ldrb	lr, [r2, #3]	@ zero_extendqisi2
	str	lr, [fp, #-448]
	mov	lr, r5, lsr #4
	str	lr, [fp, #-604]
	ldrb	lr, [r2, #8]	@ zero_extendqisi2
	str	lr, [fp, #-460]
	mov	lr, ip, lsr #2
	str	lr, [fp, #-544]
	ldrb	lr, [r2, #13]	@ zero_extendqisi2
	str	lr, [fp, #-464]
	mov	lr, r3, lsr #4
	str	lr, [fp, #-444]
	ldrb	lr, [r2, #18]	@ zero_extendqisi2
	str	lr, [fp, #-528]
	ldr	lr, [fp, #-496]
	orr	r9, lr, r9, asl #6
	str	r9, [fp, #-496]
	ldrb	lr, [r2, #0]	@ zero_extendqisi2
	ldr	r9, [fp, #-448]
	str	lr, [fp, #-440]
	ldr	lr, [fp, #-468]
	orr	lr, lr, r9, asl #4
	str	lr, [fp, #-468]
	ldrb	lr, [r2, #5]	@ zero_extendqisi2
	str	lr, [fp, #-488]
	ldr	r9, [fp, #-580]
	ldr	lr, [fp, #-440]
	orr	sl, r9, sl, asl #6
	str	sl, [fp, #-692]
	orr	r9, lr, r8, asl #8
	ldr	lr, [fp, #-488]
	ldrb	sl, [r2, #10]	@ zero_extendqisi2
	orr	r7, lr, r7, asl #8
	ldr	lr, [fp, #-460]
	ldrb	r8, [r2, #15]	@ zero_extendqisi2
	orr	r6, sl, r6, asl #8
	str	r7, [fp, #-452]
	ldr	r7, [fp, #-584]
	ldr	sl, [fp, #-604]
	orr	r7, r7, lr, asl #4
	ldr	lr, [fp, #-464]
	str	r7, [fp, #-696]
	ldr	r7, [fp, #-540]
	orr	r5, r7, r5, asl #6
	orr	r7, sl, lr, asl #4
	ldr	sl, [fp, #-544]
	orr	lr, r8, ip, asl #8
	ldr	ip, [fp, #-528]
	orr	r8, sl, r3, asl #6
	ldr	r3, [fp, #-444]
	str	r7, [fp, #-604]
	str	r8, [fp, #-440]
	orr	r7, r3, ip, asl #4
	str	lr, [fp, #-608]
	mov	r8, r9, asl #22
	str	r7, [fp, #-444]
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	ldr	r3, [fp, #-496]
	ldr	r7, [fp, #-468]
	str	lr, [fp, #-488]
	ldrb	sl, [r2, #9]	@ zero_extendqisi2
	ldr	lr, [fp, #-452]
	str	r8, [fp, #-580]
	str	sl, [fp, #-540]
	ldr	r8, [fp, #-696]
	mov	r9, lr, asl #22
	ldrb	ip, [r2, #14]	@ zero_extendqisi2
	ldr	sl, [fp, #-692]
	str	r9, [fp, #-584]
	str	ip, [fp, #-544]
	mov	ip, r3, asl #22
	mov	r9, sl, asl #22
	mov	r3, r7, asl #22
	mov	sl, r8, asl #22
	mov	r7, r6, asl #22
	mov	r8, r5, asl #22
	str	r7, [fp, #-692]
	ldr	r5, [fp, #-604]
	mov	ip, ip, lsr #22
	ldr	lr, [fp, #-608]
	mov	r3, r3, lsr #22
	mov	sl, sl, lsr #22
	mov	r9, r9, lsr #22
	mov	r7, r5, asl #22
	ldr	r5, [fp, #-440]
	mov	r6, lr, asl #22
	ldr	lr, [fp, #-444]
	str	r6, [fp, #-696]
	mov	r8, r8, lsr #22
	mov	r6, r5, asl #22
	mov	r7, r7, lsr #22
	mov	r5, lr, asl #22
	ldr	lr, [fp, #-448]
	str	r5, [fp, #-856]
	mov	r6, r6, lsr #22
	mov	r5, lr, lsr #6
	ldr	lr, [fp, #-460]
	mov	lr, lr, lsr #6
	str	lr, [fp, #-460]
	ldr	lr, [fp, #-464]
	mov	lr, lr, lsr #6
	str	lr, [fp, #-464]
	ldr	lr, [fp, #-488]
	orr	r5, r5, lr, asl #2
	ldr	lr, [fp, #-540]
	str	r5, [fp, #-440]
	ldr	r5, [fp, #-460]
	orr	r5, r5, lr, asl #2
	ldr	lr, [fp, #-544]
	str	r5, [fp, #-468]
	ldr	r5, [fp, #-464]
	orr	r5, r5, lr, asl #2
	str	r5, [fp, #-632]
	ldr	r5, [fp, #-580]
	mov	lr, r5, lsr #22
	ldr	r5, [fp, #-584]
	str	lr, [fp, #-580]
	mov	lr, r5, lsr #22
	ldr	r5, [fp, #-692]
	str	lr, [fp, #-584]
	mov	lr, r5, lsr #22
	ldr	r5, [fp, #-696]
	str	lr, [fp, #-692]
	mov	lr, r5, lsr #22
	ldr	r5, [fp, #-856]
	str	lr, [fp, #-696]
	mov	lr, r5, lsr #22
	sub	r5, fp, #512
	str	lr, [fp, #-856]
	ldrh	lr, [r5, #-68]
	ldr	r5, [fp, #-528]
	strh	lr, [fp, #-236]	@ movhi
	mov	lr, r5, lsr #6
	str	lr, [fp, #-612]
	sub	lr, fp, #256
	strh	ip, [fp, #-230]	@ movhi
	movw	r5, #:lower16:-382
	movt	r5, #:upper16:-382
	str	r5, [fp, #-712]
	ldrh	r5, [lr, #-184]
	sub	lr, fp, #512
	strh	r3, [fp, #-224]	@ movhi
	str	ip, [fp, #-800]
	mov	ip, ip, lsr #2
	strh	r5, [fp, #-218]	@ movhi
	ldrh	r5, [lr, #-72]
	sub	lr, fp, #256
	str	ip, [fp, #-896]
	movw	ip, #:lower16:-378
	str	r3, [fp, #-796]
	movt	ip, #:upper16:-378
	strh	r5, [fp, #-212]	@ movhi
	ldrh	r5, [lr, #-212]
	sub	lr, fp, #512
	str	ip, [fp, #-740]
	mov	ip, r3, lsr #4
	sub	r3, fp, #512
	str	ip, [fp, #-900]
	strh	r5, [fp, #-194]	@ movhi
	movw	ip, #:lower16:-376
	ldrh	r5, [lr, #-180]
	movt	ip, #:upper16:-376
	ldrh	lr, [r3, #-120]
	str	ip, [fp, #-668]
	sub	ip, fp, #512
	strh	r5, [fp, #-188]	@ movhi
	movw	r5, #:lower16:-374
	strh	lr, [fp, #-170]	@ movhi
	movt	r5, #:upper16:-374
	sub	lr, fp, #768
	str	r5, [fp, #-672]
	sub	r5, fp, #256
	ldrh	r3, [ip, #-184]
	ldrh	ip, [lr, #-88]
	ldrsh	r5, [r5, #-184]
	strh	r9, [fp, #-206]	@ movhi
	strh	sl, [fp, #-200]	@ movhi
	strh	r8, [fp, #-182]	@ movhi
	mov	lr, r5, lsr #6
	strh	r7, [fp, #-176]	@ movhi
	strh	r3, [fp, #-164]	@ movhi
	movw	r3, #:lower16:-372
	strh	r6, [fp, #-158]	@ movhi
	movt	r3, #:upper16:-372
	strh	ip, [fp, #-152]	@ movhi
	movw	ip, #:lower16:-368
	str	r5, [fp, #-792]
	movt	ip, #:upper16:-368
	str	r3, [fp, #-676]
	ldrb	r3, [r2, #21]	@ zero_extendqisi2
	str	lr, [fp, #-904]
	ldrb	r5, [r2, #26]	@ zero_extendqisi2
	ldrb	lr, [r2, #22]	@ zero_extendqisi2
	str	r5, [fp, #-460]
	mov	r5, r3, lsr #2
	str	ip, [fp, #-688]
	ldrb	ip, [r2, #27]	@ zero_extendqisi2
	str	r5, [fp, #-488]
	ldrb	r5, [r2, #31]	@ zero_extendqisi2
	str	r5, [fp, #-464]
	mov	r5, lr, lsr #4
	str	r5, [fp, #-540]
	ldrb	r5, [r2, #32]	@ zero_extendqisi2
	str	r5, [fp, #-528]
	ldr	r5, [fp, #-460]
	mov	r5, r5, lsr #2
	str	r5, [fp, #-544]
	ldrb	r5, [r2, #36]	@ zero_extendqisi2
	str	r5, [fp, #-496]
	mov	r5, ip, lsr #4
	str	r5, [fp, #-608]
	ldrb	r5, [r2, #23]	@ zero_extendqisi2
	str	r5, [fp, #-440]
	ldr	r5, [fp, #-464]
	mov	r5, r5, lsr #2
	str	r5, [fp, #-548]
	ldrb	r5, [r2, #28]	@ zero_extendqisi2
	str	r5, [fp, #-444]
	ldr	r5, [fp, #-528]
	mov	r5, r5, lsr #4
	str	r5, [fp, #-552]
	ldrb	r5, [r2, #33]	@ zero_extendqisi2
	str	r5, [fp, #-500]
	ldr	r5, [fp, #-496]
	mov	r5, r5, lsr #2
	str	r5, [fp, #-448]
	ldrb	r5, [r2, #37]	@ zero_extendqisi2
	str	r5, [fp, #-588]
	ldr	r5, [fp, #-488]
	orr	lr, r5, lr, asl #6
	str	lr, [fp, #-488]
	ldrb	r5, [r2, #20]	@ zero_extendqisi2
	ldr	lr, [fp, #-440]
	str	r5, [fp, #-452]
	ldr	r5, [fp, #-540]
	orr	r5, r5, lr, asl #4
	str	r5, [fp, #-604]
	ldrb	lr, [r2, #25]	@ zero_extendqisi2
	ldr	r5, [fp, #-544]
	str	lr, [fp, #-540]
	orr	ip, r5, ip, asl #6
	ldr	lr, [fp, #-452]
	ldr	r5, [fp, #-460]
	orr	r3, lr, r3, asl #8
	ldr	lr, [fp, #-540]
	str	ip, [fp, #-544]
	orr	lr, lr, r5, asl #8
	ldr	r5, [fp, #-444]
	ldrb	ip, [r2, #30]	@ zero_extendqisi2
	str	r3, [fp, #-452]
	ldrb	r3, [r2, #35]	@ zero_extendqisi2
	str	lr, [fp, #-460]
	ldr	lr, [fp, #-608]
	orr	lr, lr, r5, asl #4
	str	lr, [fp, #-608]
	ldr	lr, [fp, #-464]
	orr	r5, ip, lr, asl #8
	ldr	ip, [fp, #-528]
	str	r5, [fp, #-464]
	ldr	r5, [fp, #-548]
	orr	lr, r5, ip, asl #6
	ldr	r5, [fp, #-500]
	ldr	ip, [fp, #-552]
	str	lr, [fp, #-472]
	orr	lr, ip, r5, asl #4
	ldr	ip, [fp, #-496]
	ldr	r5, [fp, #-588]
	str	lr, [fp, #-504]
	ldr	lr, [fp, #-448]
	orr	r3, r3, ip, asl #8
	orr	ip, lr, r5, asl #6
	str	ip, [fp, #-556]
	ldr	ip, [fp, #-452]
	ldrb	lr, [r2, #19]	@ zero_extendqisi2
	mov	r5, ip, asl #22
	str	r5, [fp, #-540]
	str	lr, [fp, #-548]
	ldrb	lr, [r2, #24]	@ zero_extendqisi2
	ldr	ip, [fp, #-488]
	str	lr, [fp, #-552]
	ldrb	r5, [r2, #29]	@ zero_extendqisi2
	mov	lr, ip, asl #22
	mov	lr, lr, lsr #22
	str	r5, [fp, #-448]
	ldr	ip, [fp, #-604]
	mov	r5, ip, asl #22
	str	r5, [fp, #-976]
	ldr	r5, [fp, #-460]
	ldrb	ip, [r2, #34]	@ zero_extendqisi2
	str	ip, [fp, #-508]
	mov	ip, r5, asl #22
	ldr	r5, [fp, #-544]
	str	ip, [fp, #-604]
	mov	ip, r5, asl #22
	ldr	r5, [fp, #-608]
	str	ip, [fp, #-496]
	mov	ip, r5, asl #22
	ldr	r5, [fp, #-464]
	str	ip, [fp, #-528]
	mov	ip, r5, asl #22
	ldr	r5, [fp, #-472]
	str	ip, [fp, #-544]
	mov	ip, r5, asl #22
	ldr	r5, [fp, #-504]
	str	ip, [fp, #-464]
	mov	ip, r5, asl #22
	mov	r5, r3, asl #22
	ldr	r3, [fp, #-556]
	str	ip, [fp, #-460]
	str	r5, [fp, #-608]
	mov	ip, r3, asl #22
	ldr	r5, [fp, #-440]
	ldr	r3, [fp, #-444]
	str	ip, [fp, #-488]
	mov	ip, r5, lsr #6
	mov	r5, r3, lsr #6
	ldr	r3, [fp, #-500]
	str	r5, [fp, #-440]
	mov	r5, r3, lsr #6
	ldr	r3, [fp, #-548]
	str	r5, [fp, #-444]
	ldr	r5, [fp, #-612]
	orr	r5, r5, r3, asl #2
	str	r5, [fp, #-636]
	ldr	r5, [fp, #-552]
	ldr	r3, [fp, #-448]
	orr	ip, ip, r5, asl #2
	str	ip, [fp, #-648]
	ldr	ip, [fp, #-440]
	orr	r5, ip, r3, asl #2
	ldr	ip, [fp, #-508]
	ldr	r3, [fp, #-444]
	str	r5, [fp, #-752]
	orr	r5, r3, ip, asl #2
	str	r5, [fp, #-804]
	ldr	ip, [fp, #-540]
	ldr	r5, [fp, #-976]
	strh	lr, [fp, #-134]	@ movhi
	mov	r3, ip, lsr #22
	str	r3, [fp, #-540]
	ldr	r3, [fp, #-604]
	mov	ip, r5, lsr #22
	str	ip, [fp, #-976]
	ldr	ip, [fp, #-496]
	mov	r5, r3, lsr #22
	str	r5, [fp, #-604]
	ldr	r5, [fp, #-528]
	mov	r3, ip, lsr #22
	str	r3, [fp, #-496]
	ldr	r3, [fp, #-544]
	mov	ip, r5, lsr #22
	str	ip, [fp, #-528]
	ldr	ip, [fp, #-464]
	mov	r5, r3, lsr #22
	str	r5, [fp, #-544]
	ldr	r5, [fp, #-460]
	mov	r3, ip, lsr #22
	str	r3, [fp, #-464]
	ldr	r3, [fp, #-608]
	mov	ip, r5, lsr #22
	str	ip, [fp, #-460]
	ldr	ip, [fp, #-488]
	mov	r5, r3, lsr #22
	str	r5, [fp, #-608]
	sub	r5, fp, #512
	mov	r3, ip, lsr #22
	str	r3, [fp, #-488]
	sub	r3, fp, #512
	ldrh	ip, [r5, #-124]
	ldrh	r5, [r3, #-28]
	strh	ip, [fp, #-146]	@ movhi
	ldr	ip, [fp, #-588]
	strh	r5, [fp, #-140]	@ movhi
	sub	r5, fp, #768
	mov	r3, ip, lsr #4
	ldrh	ip, [r5, #-208]
	sub	r5, fp, #512
	str	r3, [fp, #-588]
	mov	r3, #0
	ldrh	r5, [r5, #-136]
	strh	ip, [fp, #-128]	@ movhi
	movw	ip, #:lower16:-366
	movt	ip, #:upper16:-366
	str	ip, [fp, #-744]
	strh	r5, [fp, #-122]	@ movhi
	sub	r5, fp, #512
	ldrh	ip, [r5, #-92]
	sub	r5, fp, #256
	strh	ip, [fp, #-116]	@ movhi
	ldrh	ip, [r5, #-240]
	sub	r5, fp, #512
	str	r9, [fp, #-884]
	mov	r9, r9, lsr #2
	str	r9, [fp, #-916]
	sub	r9, fp, #512
	strh	ip, [fp, #-110]	@ movhi
	ldrh	ip, [r5, #-16]
	ldrh	r5, [r9, #-240]
	sub	r9, fp, #512
	str	sl, [fp, #-880]
	strh	ip, [fp, #-104]	@ movhi
	movw	ip, #:lower16:-362
	movt	ip, #:upper16:-362
	str	ip, [fp, #-748]
	sub	ip, fp, #256
	strh	r5, [fp, #-98]	@ movhi
	ldrh	r5, [r9, #-32]
	ldrh	r9, [ip, #-208]
	sub	ip, fp, #256
	strh	r5, [fp, #-92]	@ movhi
	mov	r5, sl, lsr #4
	strh	r9, [fp, #-86]	@ movhi
	sub	r9, fp, #768
	str	r5, [fp, #-920]
	ldrh	sl, [ip, #-204]
	movw	ip, #:lower16:-360
	ldrh	r5, [r9, #-36]
	movt	ip, #:upper16:-360
	str	ip, [fp, #-700]
	strh	sl, [fp, #-80]	@ movhi
	sub	sl, fp, #512
	strh	r5, [fp, #-74]	@ movhi
	sub	r5, fp, #256
	ldrh	r9, [sl, #-96]
	movw	sl, #:lower16:-358
	ldrh	ip, [r5, #-232]
	sub	r5, fp, #256
	movt	sl, #:upper16:-358
	str	sl, [fp, #-704]
	strh	r9, [fp, #-68]	@ movhi
	strh	ip, [fp, #-62]	@ movhi
	ldrb	r9, [r0, #1]	@ zero_extendqisi2
	ldrsh	ip, [r5, #-212]
	str	r9, [fp, #-440]
	movw	r9, #:lower16:-356
	str	ip, [fp, #-876]
	movt	r9, #:upper16:-356
	ldrb	sl, [r0, #6]	@ zero_extendqisi2
	ldr	r5, [fp, #-440]
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	str	sl, [fp, #-468]
	str	r9, [fp, #-764]
	mov	sl, r5, lsr #2
	ldrb	r9, [r0, #7]	@ zero_extendqisi2
	str	sl, [fp, #-548]
	mov	sl, ip, lsr #4
	ldrb	r5, [r0, #11]	@ zero_extendqisi2
	str	sl, [fp, #-612]
	ldr	sl, [fp, #-468]
	str	r5, [fp, #-444]
	ldrb	r5, [r0, #12]	@ zero_extendqisi2
	str	r5, [fp, #-500]
	mov	r5, sl, lsr #2
	str	r5, [fp, #-560]
	mov	r5, r9, lsr #4
	ldrb	sl, [r2, #38]	@ zero_extendqisi2
	str	r5, [fp, #-564]
	ldr	r5, [fp, #-444]
	str	sl, [fp, #-448]
	ldrb	sl, [r0, #3]	@ zero_extendqisi2
	str	sl, [fp, #-472]
	mov	sl, r5, lsr #2
	str	sl, [fp, #-568]
	ldr	sl, [fp, #-500]
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	str	r5, [fp, #-504]
	mov	r5, sl, lsr #4
	str	r5, [fp, #-512]
	ldrb	sl, [r0, #13]	@ zero_extendqisi2
	ldr	r5, [fp, #-448]
	str	sl, [fp, #-508]
	ldr	sl, [fp, #-588]
	orr	sl, sl, r5, asl #4
	str	sl, [fp, #-588]
	ldrb	r5, [r0, #16]	@ zero_extendqisi2
	ldr	sl, [fp, #-548]
	str	r5, [fp, #-556]
	orr	ip, sl, ip, asl #6
	ldr	r5, [fp, #-472]
	ldr	sl, [fp, #-612]
	str	ip, [fp, #-548]
	orr	sl, sl, r5, asl #4
	ldrb	ip, [r0, #0]	@ zero_extendqisi2
	str	sl, [fp, #-612]
	ldrb	r5, [r0, #5]	@ zero_extendqisi2
	ldr	sl, [fp, #-560]
	str	r5, [fp, #-552]
	orr	r9, sl, r9, asl #6
	str	r9, [fp, #-616]
	ldr	r5, [fp, #-440]
	ldr	sl, [fp, #-468]
	ldrb	r9, [r0, #10]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #8
	ldr	r5, [fp, #-552]
	str	ip, [fp, #-440]
	orr	r5, r5, sl, asl #8
	ldr	sl, [fp, #-504]
	ldrb	ip, [r0, #15]	@ zero_extendqisi2
	str	r5, [fp, #-552]
	ldr	r5, [fp, #-564]
	orr	r5, r5, sl, asl #4
	str	r5, [fp, #-620]
	ldr	r5, [fp, #-444]
	ldr	sl, [fp, #-500]
	orr	r9, r9, r5, asl #8
	ldr	r5, [fp, #-568]
	str	r9, [fp, #-624]
	orr	r9, r5, sl, asl #6
	ldr	sl, [fp, #-508]
	ldr	r5, [fp, #-512]
	str	r9, [fp, #-628]
	orr	r9, r5, sl, asl #4
	ldrb	r2, [r2, #39]	@ zero_extendqisi2
	ldr	r5, [fp, #-556]
	str	r2, [fp, #-560]
	orr	ip, ip, r5, asl #8
	ldrb	sl, [r0, #4]	@ zero_extendqisi2
	ldr	r5, [fp, #-588]
	str	sl, [fp, #-564]
	mov	r2, r5, asl #22
	ldr	r5, [fp, #-440]
	str	r2, [fp, #-468]
	ldrb	sl, [r0, #9]	@ zero_extendqisi2
	str	sl, [fp, #-568]
	mov	sl, r5, asl #22
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	ldr	r5, [fp, #-548]
	mov	sl, sl, lsr #22
	str	r2, [fp, #-480]
	mov	r2, r5, asl #22
	ldr	r5, [fp, #-612]
	mov	r2, r2, lsr #22
	mov	r5, r5, asl #22
	str	r5, [fp, #-992]
	ldr	r5, [fp, #-552]
	mov	r5, r5, asl #22
	str	r5, [fp, #-440]
	ldr	r5, [fp, #-616]
	mov	r5, r5, asl #22
	str	r5, [fp, #-444]
	ldr	r5, [fp, #-620]
	mov	r5, r5, asl #22
	str	r5, [fp, #-500]
	ldr	r5, [fp, #-624]
	mov	r5, r5, asl #22
	str	r5, [fp, #-588]
	ldr	r5, [fp, #-628]
	mov	r5, r5, asl #22
	str	r5, [fp, #-548]
	mov	r5, r9, asl #22
	str	r5, [fp, #-612]
	ldr	r5, [fp, #-448]
	mov	r9, ip, asl #22
	str	r9, [fp, #-552]
	ldr	r9, [fp, #-472]
	mov	ip, r5, lsr #6
	str	ip, [fp, #-448]
	ldr	ip, [fp, #-504]
	mov	r5, r9, lsr #6
	str	r5, [fp, #-472]
	ldr	r5, [fp, #-508]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-560]
	str	r9, [fp, #-504]
	mov	r9, r5, lsr #6
	ldr	r5, [fp, #-448]
	orr	r5, r5, ip, asl #2
	ldr	ip, [fp, #-564]
	str	r5, [fp, #-888]
	ldr	r5, [fp, #-472]
	orr	r5, r5, ip, asl #2
	ldr	ip, [fp, #-568]
	str	r5, [fp, #-448]
	ldr	r5, [fp, #-504]
	orr	r5, r5, ip, asl #2
	str	r5, [fp, #-472]
	ldr	r5, [fp, #-480]
	orr	ip, r9, r5, asl #2
	ldr	r5, [fp, #-468]
	str	ip, [fp, #-512]
	ldr	ip, [fp, #-992]
	mov	r9, r5, lsr #22
	str	r9, [fp, #-468]
	ldr	r9, [fp, #-440]
	mov	r5, ip, lsr #22
	str	r5, [fp, #-992]
	mov	ip, r9, lsr #22
	str	ip, [fp, #-440]
	ldr	r5, [fp, #-444]
	ldr	ip, [fp, #-500]
	strh	sl, [fp, #-234]	@ movhi
	mov	r9, r5, lsr #22
	str	r9, [fp, #-444]
	ldr	r9, [fp, #-588]
	mov	r5, ip, lsr #22
	str	r5, [fp, #-500]
	ldr	r5, [fp, #-548]
	mov	ip, r9, lsr #22
	str	ip, [fp, #-588]
	ldr	ip, [fp, #-612]
	mov	r9, r5, lsr #22
	str	r9, [fp, #-548]
	ldr	r9, [fp, #-552]
	mov	r5, ip, lsr #22
	str	r5, [fp, #-612]
	sub	r5, fp, #256
	strh	r2, [fp, #-228]	@ movhi
	mov	ip, r9, lsr #22
	str	ip, [fp, #-552]
	ldrh	r9, [r5, #-212]
	sub	ip, fp, #768
	ldrh	r5, [ip, #-120]
	sub	ip, fp, #256
	strh	r9, [fp, #-56]	@ movhi
	ldr	r9, [fp, #-556]
	strh	r5, [fp, #-50]	@ movhi
	mov	r5, r9, lsr #2
	ldrh	r9, [ip, #-192]
	ldr	ip, [fp, #-876]
	str	r9, [fp, #-908]
	mov	r9, ip, lsr #6
	sub	ip, fp, #768
	str	r9, [fp, #-924]
	ldrh	r9, [ip, #-224]
	sub	ip, fp, #256
	strh	r9, [fp, #-222]	@ movhi
	ldrh	r9, [ip, #-216]
	sub	ip, fp, #256
	str	r9, [fp, #-928]
	ldrh	r9, [ip, #-192]
	sub	ip, fp, #256
	ldrh	ip, [ip, #-184]
	strh	r9, [fp, #-216]	@ movhi
	movw	r9, #:lower16:-352
	movt	r9, #:upper16:-352
	str	r9, [fp, #-768]
	sub	r9, fp, #256
	strh	ip, [fp, #-210]	@ movhi
	ldrh	ip, [r9, #-188]
	sub	r9, fp, #256
	strh	ip, [fp, #-204]	@ movhi
	movw	ip, #:lower16:-350
	ldrh	r9, [r9, #-244]
	movt	ip, #:upper16:-350
	str	ip, [fp, #-816]
	sub	ip, fp, #256
	str	r8, [fp, #-872]
	mov	r8, r8, lsr #2
	strh	r9, [fp, #-198]	@ movhi
	ldrh	r9, [ip, #-216]
	sub	ip, fp, #512
	str	r8, [fp, #-936]
	sub	r8, fp, #512
	str	r7, [fp, #-868]
	strh	r9, [fp, #-192]	@ movhi
	ldrh	r9, [ip, #-76]
	strh	r9, [fp, #-186]	@ movhi
	sub	r9, fp, #512
	ldrh	ip, [r9, #-36]
	ldrh	r9, [r8, #-100]
	sub	r8, fp, #512
	strh	ip, [fp, #-180]	@ movhi
	movw	ip, #:lower16:-346
	strh	r9, [fp, #-174]	@ movhi
	sub	r9, fp, #512
	movt	ip, #:upper16:-346
	str	ip, [fp, #-820]
	ldrh	r7, [r9, #-40]
	ldrh	ip, [r8, #0]
	movw	r8, #:lower16:-344
	ldr	r9, [fp, #-868]
	movt	r8, #:upper16:-344
	strh	r7, [fp, #-162]	@ movhi
	strh	ip, [fp, #-168]	@ movhi
	ldrb	r7, [r0, #17]	@ zero_extendqisi2
	str	r8, [fp, #-772]
	mov	r8, r9, lsr #4
	ldrb	ip, [r0, #21]	@ zero_extendqisi2
	str	r8, [fp, #-940]
	orr	r5, r5, r7, asl #6
	str	ip, [fp, #-448]
	movw	ip, #:lower16:-342
	ldrb	r8, [r0, #22]	@ zero_extendqisi2
	str	ip, [fp, #-776]
	ldrb	r9, [r0, #26]	@ zero_extendqisi2
	str	r9, [fp, #-472]
	mov	r9, r7, lsr #4
	ldrb	ip, [r0, #27]	@ zero_extendqisi2
	str	ip, [fp, #-504]
	ldr	ip, [fp, #-448]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-620]
	ldrb	ip, [r0, #31]	@ zero_extendqisi2
	str	ip, [fp, #-508]
	mov	ip, r8, lsr #4
	str	ip, [fp, #-568]
	ldrb	ip, [r0, #32]	@ zero_extendqisi2
	str	ip, [fp, #-556]
	ldr	ip, [fp, #-472]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-624]
	ldrb	ip, [r0, #18]	@ zero_extendqisi2
	str	ip, [fp, #-480]
	ldr	ip, [fp, #-504]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-628]
	ldrb	ip, [r0, #23]	@ zero_extendqisi2
	str	ip, [fp, #-492]
	ldr	ip, [fp, #-508]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-452]
	ldrb	ip, [r0, #28]	@ zero_extendqisi2
	str	ip, [fp, #-532]
	ldr	ip, [fp, #-556]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-456]
	ldrb	ip, [r0, #33]	@ zero_extendqisi2
	str	r5, [fp, #-560]
	ldr	r5, [fp, #-620]
	str	ip, [fp, #-592]
	ldr	ip, [fp, #-480]
	orr	r8, r5, r8, asl #6
	ldr	r5, [fp, #-568]
	ldrb	r7, [r0, #36]	@ zero_extendqisi2
	orr	r9, r9, ip, asl #4
	ldr	ip, [fp, #-492]
	str	r9, [fp, #-564]
	ldrb	r9, [r0, #20]	@ zero_extendqisi2
	orr	r5, r5, ip, asl #4
	str	r8, [fp, #-620]
	ldrb	r8, [r0, #25]	@ zero_extendqisi2
	str	r5, [fp, #-568]
	ldr	r5, [fp, #-448]
	ldrb	ip, [r0, #30]	@ zero_extendqisi2
	orr	r9, r9, r5, asl #8
	str	ip, [fp, #-572]
	str	r9, [fp, #-616]
	ldr	ip, [fp, #-472]
	ldr	r5, [fp, #-504]
	ldrb	r9, [r0, #35]	@ zero_extendqisi2
	orr	r8, r8, ip, asl #8
	ldr	ip, [fp, #-624]
	orr	r9, r9, r7, asl #8
	orr	ip, ip, r5, asl #6
	ldr	r5, [fp, #-532]
	str	ip, [fp, #-624]
	ldr	ip, [fp, #-628]
	orr	ip, ip, r5, asl #4
	ldr	r5, [fp, #-508]
	str	ip, [fp, #-628]
	ldr	ip, [fp, #-572]
	orr	ip, ip, r5, asl #8
	ldr	r5, [fp, #-556]
	str	ip, [fp, #-516]
	ldr	ip, [fp, #-452]
	orr	ip, ip, r5, asl #6
	ldr	r5, [fp, #-592]
	str	ip, [fp, #-476]
	ldr	ip, [fp, #-456]
	orr	ip, ip, r5, asl #4
	str	ip, [fp, #-520]
	ldr	ip, [fp, #-560]
	ldrb	r5, [r0, #19]	@ zero_extendqisi2
	mov	ip, ip, asl #22
	str	ip, [fp, #-448]
	ldrb	ip, [r0, #24]	@ zero_extendqisi2
	str	ip, [fp, #-452]
	ldr	ip, [fp, #-564]
	mov	ip, ip, asl #22
	str	ip, [fp, #-472]
	ldrb	ip, [r0, #29]	@ zero_extendqisi2
	str	ip, [fp, #-456]
	ldr	ip, [fp, #-616]
	mov	ip, ip, asl #22
	str	ip, [fp, #-504]
	ldrb	ip, [r0, #34]	@ zero_extendqisi2
	str	ip, [fp, #-536]
	ldr	ip, [fp, #-620]
	mov	ip, ip, asl #22
	str	ip, [fp, #-508]
	ldr	ip, [fp, #-568]
	mov	ip, ip, asl #22
	str	ip, [fp, #-556]
	mov	ip, r8, asl #22
	ldr	r8, [fp, #-624]
	str	ip, [fp, #-560]
	mov	ip, r8, asl #22
	ldr	r8, [fp, #-628]
	str	ip, [fp, #-564]
	mov	ip, r8, asl #22
	ldr	r8, [fp, #-516]
	str	ip, [fp, #-616]
	mov	ip, r8, asl #22
	ldr	r8, [fp, #-476]
	str	ip, [fp, #-620]
	mov	ip, r8, asl #22
	ldr	r8, [fp, #-520]
	str	ip, [fp, #-568]
	mov	ip, r8, asl #22
	mov	r8, r9, asl #22
	str	ip, [fp, #-624]
	ldr	r9, [fp, #-480]
	ldr	ip, [fp, #-492]
	str	r8, [fp, #-628]
	mov	r8, r9, lsr #6
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-532]
	str	r9, [fp, #-480]
	orr	r8, r8, r5, asl #2
	ldr	r5, [fp, #-480]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-592]
	str	r9, [fp, #-492]
	str	r8, [fp, #-516]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-452]
	orr	r8, r5, ip, asl #2
	ldr	ip, [fp, #-456]
	ldr	r5, [fp, #-492]
	str	r8, [fp, #-656]
	orr	r8, r5, ip, asl #2
	ldr	r5, [fp, #-536]
	str	r8, [fp, #-808]
	orr	r8, r9, r5, asl #2
	ldr	r9, [fp, #-448]
	str	r8, [fp, #-812]
	ldr	r8, [fp, #-472]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-504]
	str	ip, [fp, #-448]
	mov	r5, r8, lsr #22
	ldr	r8, [fp, #-508]
	mov	ip, r9, lsr #22
	str	r5, [fp, #-472]
	str	ip, [fp, #-504]
	mov	r5, r8, lsr #22
	str	r5, [fp, #-508]
	ldr	r9, [fp, #-556]
	ldr	r8, [fp, #-560]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-564]
	str	ip, [fp, #-556]
	mov	r5, r8, lsr #22
	ldr	r8, [fp, #-616]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-620]
	str	r5, [fp, #-560]
	str	ip, [fp, #-564]
	mov	r5, r8, lsr #22
	mov	ip, r9, lsr #22
	ldr	r8, [fp, #-568]
	ldr	r9, [fp, #-624]
	str	r5, [fp, #-616]
	str	ip, [fp, #-620]
	mov	r5, r8, lsr #22
	mov	ip, r9, lsr #22
	ldr	r8, [fp, #-628]
	sub	r9, fp, #256
	str	ip, [fp, #-624]
	str	r5, [fp, #-568]
	ldrh	ip, [r9, #-192]
	mov	r5, r8, lsr #22
	str	r5, [fp, #-628]
	sub	r5, fp, #256
	mov	r8, r7, lsr #2
	movw	r7, #:lower16:-342
	ldrh	r9, [r5, #-216]
	sub	r5, fp, #512
	strh	ip, [fp, #-156]	@ movhi
	sub	ip, fp, #512
	str	r8, [fp, #-492]
	movt	r7, #:upper16:-342
	ldrh	r8, [ip, #-4]
	str	r7, [fp, #-776]
	sub	r7, fp, #256
	strh	r9, [fp, #-150]	@ movhi
	ldrsh	r9, [r5, #-120]
	ldrh	ip, [r7, #-248]
	sub	r7, fp, #512
	strh	r8, [fp, #-144]	@ movhi
	sub	r8, fp, #256
	str	r9, [fp, #-864]
	movw	r9, #:lower16:-340
	ldrh	r5, [r8, #-252]
	movt	r9, #:upper16:-340
	ldr	r8, [fp, #-864]
	strh	ip, [fp, #-138]	@ movhi
	ldrh	ip, [r7, #-44]
	str	r9, [fp, #-780]
	sub	r9, fp, #512
	strh	r5, [fp, #-132]	@ movhi
	mov	r5, r8, lsr #6
	strh	ip, [fp, #-126]	@ movhi
	sub	ip, fp, #512
	str	r5, [fp, #-944]
	sub	r5, fp, #512
	ldrh	r7, [r9, #-144]
	ldrh	r9, [r5, #-48]
	sub	r5, fp, #512
	ldrh	r8, [ip, #0]
	strh	r7, [fp, #-120]	@ movhi
	sub	r7, fp, #512
	strh	r9, [fp, #-114]	@ movhi
	ldrh	ip, [r7, #-52]
	sub	r7, fp, #768
	ldrh	r9, [r5, #-104]
	sub	r5, fp, #512
	str	r6, [fp, #-860]
	strh	ip, [fp, #-108]	@ movhi
	strh	r9, [fp, #-102]	@ movhi
	ldrh	ip, [r7, #-40]
	sub	r7, fp, #512
	ldrh	r9, [r5, #-108]
	str	r8, [fp, #-948]
	movw	r8, #:lower16:-336
	strh	ip, [fp, #-96]	@ movhi
	movt	r8, #:upper16:-336
	strh	r9, [fp, #-90]	@ movhi
	sub	r9, fp, #512
	ldr	ip, [fp, #-860]
	str	r8, [fp, #-784]
	movw	r8, #:lower16:-334
	ldrh	r6, [r9, #-112]
	movt	r8, #:upper16:-334
	str	r8, [fp, #-824]
	mov	r5, ip, lsr #2
	ldrh	r8, [r7, #-56]
	sub	r7, fp, #768
	str	r5, [fp, #-956]
	sub	r5, fp, #512
	strh	r6, [fp, #-78]	@ movhi
	movw	ip, #:lower16:-330
	strh	r8, [fp, #-84]	@ movhi
	movt	ip, #:upper16:-330
	ldrh	r8, [r7, #-44]
	ldrh	r9, [r5, #-116]
	ldr	r6, [fp, #-856]
	strh	r8, [fp, #-72]	@ movhi
	movw	r8, #:lower16:-328
	str	ip, [fp, #-828]
	movt	r8, #:upper16:-328
	strh	r9, [fp, #-66]	@ movhi
	mov	r7, r6, lsr #4
	ldrb	r5, [r0, #37]	@ zero_extendqisi2
	str	r7, [fp, #-960]
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	mov	r9, r5, lsr #4
	str	r8, [fp, #-788]
	ldrb	ip, [r1, #7]	@ zero_extendqisi2
	ldrb	r8, [r1, #6]	@ zero_extendqisi2
	str	ip, [fp, #-632]
	mov	ip, r7, lsr #2
	str	ip, [fp, #-592]
	ldrb	ip, [r1, #11]	@ zero_extendqisi2
	str	ip, [fp, #-512]
	mov	ip, r6, lsr #4
	str	ip, [fp, #-572]
	ldrb	ip, [r1, #12]	@ zero_extendqisi2
	str	ip, [fp, #-480]
	mov	ip, r8, lsr #2
	str	ip, [fp, #-524]
	ldrb	ip, [r0, #38]	@ zero_extendqisi2
	str	ip, [fp, #-452]
	ldr	ip, [fp, #-632]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-576]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	str	ip, [fp, #-456]
	ldr	ip, [fp, #-512]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-684]
	ldrb	ip, [r1, #8]	@ zero_extendqisi2
	str	ip, [fp, #-476]
	ldr	ip, [fp, #-480]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-484]
	ldrb	ip, [r1, #13]	@ zero_extendqisi2
	str	ip, [fp, #-520]
	ldr	ip, [fp, #-492]
	orr	r5, ip, r5, asl #6
	str	r5, [fp, #-492]
	ldrb	ip, [r1, #16]	@ zero_extendqisi2
	ldr	r5, [fp, #-452]
	str	ip, [fp, #-536]
	ldr	ip, [fp, #-592]
	orr	r9, r9, r5, asl #4
	ldr	r5, [fp, #-456]
	str	r9, [fp, #-532]
	orr	r6, ip, r6, asl #6
	ldrb	r9, [r1, #0]	@ zero_extendqisi2
	ldr	ip, [fp, #-572]
	str	r6, [fp, #-592]
	orr	r7, r9, r7, asl #8
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	orr	ip, ip, r5, asl #4
	str	ip, [fp, #-572]
	mov	r7, r7, asl #22
	ldr	r9, [fp, #-632]
	orr	r8, r6, r8, asl #8
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	mov	r7, r7, lsr #22
	ldr	r6, [fp, #-524]
	orr	ip, r6, r9, asl #6
	ldr	r6, [fp, #-476]
	str	r5, [fp, #-680]
	ldrb	r5, [r1, #15]	@ zero_extendqisi2
	str	ip, [fp, #-640]
	ldr	ip, [fp, #-576]
	orr	r9, ip, r6, asl #4
	ldr	ip, [fp, #-512]
	str	r9, [fp, #-644]
	ldr	r9, [fp, #-680]
	orr	r6, r9, ip, asl #8
	ldr	r9, [fp, #-480]
	str	r6, [fp, #-708]
	ldr	r6, [fp, #-684]
	orr	ip, r6, r9, asl #6
	ldr	r6, [fp, #-520]
	str	ip, [fp, #-684]
	ldr	ip, [fp, #-484]
	orr	r9, ip, r6, asl #4
	ldr	r6, [fp, #-536]
	str	r9, [fp, #-484]
	orr	r9, r5, r6, asl #8
	ldrb	r5, [r0, #39]	@ zero_extendqisi2
	ldr	r0, [fp, #-492]
	mov	r9, r9, asl #22
	str	r5, [fp, #-524]
	mov	ip, r0, asl #22
	ldr	r5, [fp, #-532]
	str	ip, [fp, #-632]
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	mov	r0, r5, asl #22
	str	r0, [fp, #-512]
	ldr	r5, [fp, #-592]
	str	r6, [fp, #-576]
	ldrb	ip, [r1, #9]	@ zero_extendqisi2
	ldr	r0, [fp, #-572]
	str	ip, [fp, #-680]
	ldr	ip, [fp, #-640]
	ldrb	r6, [r1, #14]	@ zero_extendqisi2
	str	r6, [fp, #-596]
	mov	r6, r5, asl #22
	mov	r5, r0, asl #22
	mov	r0, r8, asl #22
	mov	r8, ip, asl #22
	ldr	ip, [fp, #-644]
	mov	r6, r6, lsr #22
	mov	r5, r5, lsr #22
	mov	r0, r0, lsr #22
	mov	r8, r8, lsr #22
	mov	ip, ip, asl #22
	str	ip, [fp, #-480]
	ldr	ip, [fp, #-708]
	str	r9, [fp, #-572]
	mov	ip, ip, asl #22
	str	ip, [fp, #-492]
	ldr	ip, [fp, #-684]
	mov	ip, ip, asl #22
	str	ip, [fp, #-532]
	ldr	ip, [fp, #-484]
	mov	ip, ip, asl #22
	str	ip, [fp, #-592]
	ldr	ip, [fp, #-452]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-456]
	str	r9, [fp, #-452]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-476]
	str	r9, [fp, #-456]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-520]
	str	r9, [fp, #-476]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-524]
	str	r9, [fp, #-520]
	ldr	r9, [fp, #-452]
	orr	r9, r9, ip, asl #2
	ldr	ip, [fp, #-576]
	str	r9, [fp, #-892]
	ldr	r9, [fp, #-456]
	orr	r9, r9, ip, asl #2
	ldr	ip, [fp, #-680]
	str	r9, [fp, #-452]
	ldr	r9, [fp, #-476]
	orr	r9, r9, ip, asl #2
	ldr	ip, [fp, #-596]
	str	r9, [fp, #-456]
	ldr	r9, [fp, #-520]
	orr	r9, r9, ip, asl #2
	str	r9, [fp, #-476]
	ldr	r9, [fp, #-632]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-512]
	str	ip, [fp, #-632]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-480]
	str	ip, [fp, #-512]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-492]
	str	ip, [fp, #-480]
	mov	ip, r9, lsr #22
	str	ip, [fp, #-492]
	ldr	r9, [fp, #-532]
	strh	r7, [fp, #-232]	@ movhi
	strh	r6, [fp, #-226]	@ movhi
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-592]
	str	ip, [fp, #-532]
	strh	r5, [fp, #-220]	@ movhi
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-572]
	str	ip, [fp, #-592]
	strh	r0, [fp, #-208]	@ movhi
	mov	ip, r9, lsr #22
	sub	r9, fp, #512
	str	ip, [fp, #-572]
	ldrh	ip, [r9, #-120]
	ldr	r9, [fp, #-536]
	strh	r8, [fp, #-202]	@ movhi
	strh	ip, [fp, #-60]	@ movhi
	mov	ip, r9, lsr #2
	sub	r9, fp, #512
	str	ip, [fp, #-536]
	ldrh	ip, [r9, #0]
	sub	r9, fp, #256
	strh	ip, [fp, #-54]	@ movhi
	ldrh	ip, [r9, #-196]
	sub	r9, fp, #768
	str	ip, [fp, #-912]
	ldrh	ip, [r9, #-124]
	sub	r9, fp, #256
	strh	ip, [fp, #-48]	@ movhi
	ldrh	ip, [r9, #-200]
	sub	r9, fp, #256
	str	ip, [fp, #-932]
	ldrh	ip, [r9, #-220]
	movw	r9, #:lower16:-326
	movt	r9, #:upper16:-326
	str	r9, [fp, #-680]
	str	ip, [fp, #-952]
	sub	ip, fp, #256
	ldrh	r9, [ip, #-196]
	sub	ip, fp, #512
	strh	r9, [fp, #-214]	@ movhi
	ldrsh	r9, [ip, #-124]
	movw	ip, #:lower16:-324
	movt	ip, #:upper16:-324
	str	ip, [fp, #-708]
	str	r9, [fp, #-852]
	sub	r9, fp, #256
	ldrh	ip, [r9, #-224]
	ldr	r9, [fp, #-852]
	strh	ip, [fp, #-196]	@ movhi
	mov	ip, r9, lsr #6
	sub	r9, fp, #256
	str	ip, [fp, #-964]
	ldrh	ip, [r9, #-200]
	sub	r9, fp, #512
	str	lr, [fp, #-848]
	strh	ip, [fp, #-190]	@ movhi
	ldrh	ip, [r9, #-4]
	sub	r9, fp, #256
	str	ip, [fp, #-968]
	ldrh	ip, [r9, #-236]
	sub	r9, fp, #512
	ldrh	r9, [r9, #-20]
	strh	ip, [fp, #-184]	@ movhi
	movw	ip, #:lower16:-320
	movt	ip, #:upper16:-320
	str	ip, [fp, #-684]
	sub	ip, fp, #512
	strh	r9, [fp, #-178]	@ movhi
	ldrh	r9, [ip, #-80]
	sub	ip, fp, #256
	ldrh	ip, [ip, #-220]
	strh	r9, [fp, #-172]	@ movhi
	movw	r9, #:lower16:-318
	movt	r9, #:upper16:-318
	str	r9, [fp, #-832]
	strh	ip, [fp, #-166]	@ movhi
	sub	ip, fp, #512
	ldrh	r9, [ip, #-60]
	ldr	ip, [fp, #-848]
	strh	r9, [fp, #-160]	@ movhi
	mov	r9, ip, lsr #2
	ldrb	lr, [r1, #17]	@ zero_extendqisi2
	str	r9, [fp, #-972]
	ldrb	ip, [r1, #21]	@ zero_extendqisi2
	str	ip, [fp, #-636]
	movw	ip, #:lower16:-314
	ldrb	r9, [r1, #22]	@ zero_extendqisi2
	movt	ip, #:upper16:-314
	str	ip, [fp, #-836]
	str	r9, [fp, #-516]
	ldrb	r9, [r1, #26]	@ zero_extendqisi2
	str	r9, [fp, #-452]
	mov	r9, lr, lsr #4
	ldrb	ip, [r1, #27]	@ zero_extendqisi2
	str	ip, [fp, #-456]
	ldr	ip, [fp, #-636]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-576]
	ldrb	ip, [r1, #31]	@ zero_extendqisi2
	str	ip, [fp, #-476]
	ldr	ip, [fp, #-516]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-640]
	ldrb	ip, [r1, #32]	@ zero_extendqisi2
	str	ip, [fp, #-520]
	ldr	ip, [fp, #-452]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-660]
	ldrb	ip, [r1, #18]	@ zero_extendqisi2
	str	ip, [fp, #-484]
	ldr	ip, [fp, #-456]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-720]
	ldrb	ip, [r1, #23]	@ zero_extendqisi2
	str	ip, [fp, #-596]
	ldr	ip, [fp, #-476]
	mov	ip, ip, lsr #2
	str	ip, [fp, #-756]
	ldrb	ip, [r1, #28]	@ zero_extendqisi2
	str	ip, [fp, #-600]
	ldr	ip, [fp, #-520]
	mov	ip, ip, lsr #4
	str	ip, [fp, #-760]
	ldrb	ip, [r1, #33]	@ zero_extendqisi2
	str	ip, [fp, #-652]
	ldr	ip, [fp, #-536]
	orr	lr, ip, lr, asl #6
	ldr	ip, [fp, #-484]
	str	lr, [fp, #-536]
	ldrb	lr, [r1, #36]	@ zero_extendqisi2
	str	lr, [fp, #-716]
	orr	lr, r9, ip, asl #4
	ldr	ip, [fp, #-516]
	ldr	r9, [fp, #-576]
	str	lr, [fp, #-524]
	orr	r9, r9, ip, asl #6
	ldrb	lr, [r1, #20]	@ zero_extendqisi2
	str	r9, [fp, #-576]
	ldrb	ip, [r1, #25]	@ zero_extendqisi2
	ldr	r9, [fp, #-596]
	str	ip, [fp, #-644]
	ldr	ip, [fp, #-640]
	orr	ip, ip, r9, asl #4
	str	ip, [fp, #-640]
	ldrb	r9, [r1, #30]	@ zero_extendqisi2
	str	r9, [fp, #-732]
	ldr	ip, [fp, #-636]
	ldr	r9, [fp, #-452]
	orr	lr, lr, ip, asl #8
	ldr	ip, [fp, #-644]
	str	lr, [fp, #-516]
	orr	ip, ip, r9, asl #8
	ldr	r9, [fp, #-456]
	ldrb	lr, [r1, #35]	@ zero_extendqisi2
	str	ip, [fp, #-644]
	ldr	ip, [fp, #-660]
	orr	ip, ip, r9, asl #6
	ldr	r9, [fp, #-600]
	str	ip, [fp, #-724]
	ldr	ip, [fp, #-720]
	orr	ip, ip, r9, asl #4
	ldr	r9, [fp, #-476]
	str	ip, [fp, #-728]
	ldr	ip, [fp, #-732]
	orr	ip, ip, r9, asl #8
	ldr	r9, [fp, #-520]
	str	ip, [fp, #-736]
	ldr	ip, [fp, #-756]
	orr	ip, ip, r9, asl #6
	ldr	r9, [fp, #-652]
	str	ip, [fp, #-756]
	ldr	ip, [fp, #-760]
	orr	ip, ip, r9, asl #4
	str	ip, [fp, #-760]
	ldr	ip, [fp, #-716]
	orr	r9, lr, ip, asl #8
	ldrb	lr, [r1, #19]	@ zero_extendqisi2
	ldr	ip, [fp, #-536]
	mov	r9, r9, asl #22
	str	lr, [fp, #-660]
	mov	lr, ip, asl #22
	ldrb	ip, [r1, #24]	@ zero_extendqisi2
	mov	lr, lr, lsr #22
	str	ip, [fp, #-720]
	ldr	ip, [fp, #-524]
	mov	ip, ip, asl #22
	str	ip, [fp, #-636]
	ldrb	ip, [r1, #29]	@ zero_extendqisi2
	str	ip, [fp, #-732]
	ldr	ip, [fp, #-516]
	mov	ip, ip, asl #22
	str	ip, [fp, #-516]
	ldrb	ip, [r1, #34]	@ zero_extendqisi2
	str	ip, [fp, #-840]
	ldr	ip, [fp, #-576]
	mov	ip, ip, asl #22
	str	ip, [fp, #-452]
	ldr	ip, [fp, #-640]
	mov	ip, ip, asl #22
	str	ip, [fp, #-456]
	ldr	ip, [fp, #-644]
	str	r9, [fp, #-644]
	mov	ip, ip, asl #22
	str	ip, [fp, #-476]
	ldr	ip, [fp, #-724]
	mov	ip, ip, asl #22
	str	ip, [fp, #-520]
	ldr	ip, [fp, #-728]
	mov	ip, ip, asl #22
	str	ip, [fp, #-536]
	ldr	ip, [fp, #-736]
	mov	ip, ip, asl #22
	str	ip, [fp, #-524]
	ldr	ip, [fp, #-756]
	mov	ip, ip, asl #22
	str	ip, [fp, #-576]
	ldr	ip, [fp, #-760]
	mov	ip, ip, asl #22
	str	ip, [fp, #-640]
	ldr	ip, [fp, #-484]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-596]
	str	r9, [fp, #-484]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-600]
	str	r9, [fp, #-596]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-652]
	str	r9, [fp, #-600]
	mov	r9, ip, lsr #6
	ldr	ip, [fp, #-660]
	str	r9, [fp, #-724]
	ldr	r9, [fp, #-484]
	orr	r9, r9, ip, asl #2
	ldr	ip, [fp, #-720]
	str	r9, [fp, #-484]
	ldr	r9, [fp, #-596]
	orr	r9, r9, ip, asl #2
	ldr	ip, [fp, #-732]
	str	r9, [fp, #-652]
	ldr	r9, [fp, #-600]
	orr	r9, r9, ip, asl #2
	str	r9, [fp, #-728]
	ldr	ip, [fp, #-840]
	ldr	r9, [fp, #-724]
	strh	lr, [fp, #-154]	@ movhi
	orr	r9, r9, ip, asl #2
	str	r9, [fp, #-732]
	ldr	r9, [fp, #-636]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-516]
	str	ip, [fp, #-636]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-452]
	str	ip, [fp, #-516]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-456]
	str	ip, [fp, #-452]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-476]
	str	ip, [fp, #-456]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-520]
	str	ip, [fp, #-476]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-536]
	str	ip, [fp, #-520]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-524]
	str	ip, [fp, #-536]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-576]
	str	ip, [fp, #-524]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-640]
	str	ip, [fp, #-576]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-644]
	str	ip, [fp, #-640]
	mov	ip, r9, lsr #22
	ldr	r9, [fp, #-716]
	str	ip, [fp, #-644]
	mov	ip, r9, lsr #2
	sub	r9, fp, #512
	str	ip, [fp, #-660]
	ldrh	ip, [r9, #-124]
	sub	r9, fp, #256
	strh	ip, [fp, #-148]	@ movhi
	ldrh	ip, [r9, #-228]
	sub	r9, fp, #512
	str	ip, [fp, #-756]
	strh	ip, [fp, #-142]	@ movhi
	ldr	ip, [fp, #-976]
	str	ip, [fp, #-724]
	mov	ip, ip, lsr #4
	ldrh	r9, [r9, #-4]
	str	ip, [fp, #-760]
	strh	r9, [fp, #-136]	@ movhi
	sub	r9, fp, #256
	ldrh	ip, [r9, #-196]
	sub	r9, fp, #256
	ldrh	r9, [r9, #-200]
	strh	ip, [fp, #-130]	@ movhi
	movw	ip, #:lower16:-312
	movt	ip, #:upper16:-312
	str	ip, [fp, #-484]
	sub	ip, fp, #512
	strh	r9, [fp, #-124]	@ movhi
	ldrh	r9, [ip, #-140]
	sub	ip, fp, #256
	ldrh	ip, [ip, #-220]
	strh	r9, [fp, #-118]	@ movhi
	movw	r9, #:lower16:-310
	movt	r9, #:upper16:-310
	str	r9, [fp, #-596]
	sub	r9, fp, #512
	strh	ip, [fp, #-112]	@ movhi
	ldrh	ip, [r9, #-8]
	sub	r9, fp, #512
	strh	ip, [fp, #-106]	@ movhi
	ldrsh	ip, [r9, #-136]
	sub	r9, fp, #512
	str	ip, [fp, #-720]
	ldrh	ip, [r9, #-24]
	sub	r9, fp, #512
	ldrh	r9, [r9, #-216]
	strh	ip, [fp, #-100]	@ movhi
	movw	ip, #:lower16:-308
	movt	ip, #:upper16:-308
	str	ip, [fp, #-600]
	sub	ip, fp, #512
	strh	r9, [fp, #-94]	@ movhi
	ldrh	r9, [ip, #-12]
	ldr	ip, [fp, #-720]
	strh	r9, [fp, #-88]	@ movhi
	mov	r9, ip, lsr #6
	sub	ip, fp, #512
	str	r9, [fp, #-840]
	ldrh	r9, [ip, #-64]
	sub	ip, fp, #512
	strh	r9, [fp, #-82]	@ movhi
	ldrh	r9, [ip, #-144]
	sub	ip, fp, #512
	str	r9, [fp, #-844]
	ldrh	r9, [ip, #-128]
	sub	ip, fp, #512
	strh	r9, [fp, #-76]	@ movhi
	ldrh	r9, [ip, #-140]
	sub	ip, fp, #512
	str	r9, [fp, #-976]
	ldrh	r9, [ip, #-220]
	sub	ip, fp, #512
	ldrh	ip, [ip, #-132]
	strh	r9, [fp, #-70]	@ movhi
	movw	r9, #:lower16:-304
	movt	r9, #:upper16:-304
	str	r9, [fp, #-652]
	strh	ip, [fp, #-64]	@ movhi
	movw	r9, #:lower16:-302
	ldrb	ip, [r1, #37]	@ zero_extendqisi2
	str	r9, [fp, #-716]
	ldrb	r9, [r1, #38]	@ zero_extendqisi2
	str	r9, [fp, #-648]
	movw	r9, #:lower16:-302
	movt	r9, #:upper16:-302
	str	r9, [fp, #-716]
	ldrb	r1, [r1, #39]	@ zero_extendqisi2
	ldr	r9, [fp, #-660]
	str	r1, [fp, #-736]
	mov	r1, ip, lsr #4
	orr	ip, r9, ip, asl #6
	ldr	r9, [fp, #-648]
	orr	r1, r1, r9, asl #4
	str	r1, [fp, #-656]
	mov	r1, r9, lsr #6
	mov	r9, ip, asl #22
	ldr	ip, [fp, #-736]
	str	r9, [fp, #-648]
	orr	r9, r1, ip, asl #2
	sub	ip, fp, #512
	str	r9, [fp, #-736]
	ldrh	r9, [ip, #-224]
	ldr	ip, [fp, #-648]
	ldr	r1, [fp, #-656]
	strh	r9, [fp, #-46]	@ movhi
	mov	r9, ip, lsr #22
	ldr	ip, [fp, #-664]
	str	r9, [fp, #-648]
	mov	r1, r1, asl #22
	strh	r9, [fp, #-58]	@ movhi
	sub	r9, fp, #44
	mov	r1, r1, lsr #22
	str	r1, [fp, #-656]
	strh	r1, [fp, #-52]	@ movhi
	ldrh	r1, [r9, ip]
	ldr	ip, [fp, #-496]
	mov	r9, ip, lsr #2
	str	r9, [fp, #-980]
	ldr	r9, [fp, #-580]
	movw	ip, #:lower16:-298
	movt	ip, #:upper16:-298
	str	ip, [fp, #-660]
	bfi	r1, r9, #0, #10
	ldr	r9, [fp, #-664]
	sub	ip, fp, #44
	strh	r1, [ip, r9]	@ movhi
	ldr	r9, [fp, #-528]
	ldr	r1, [fp, #-428]
	mov	ip, r9, lsr #4
	bfi	r1, sl, #10, #10
	movw	r9, #:lower16:-296
	movt	r9, #:upper16:-296
	str	r9, [fp, #-580]
	sub	sl, fp, #44
	ldr	r9, [fp, #-712]
	str	r1, [fp, #-428]
	mov	r1, r1, lsr #16
	str	ip, [fp, #-984]
	bfi	r1, r7, #4, #10
	movw	ip, #:lower16:-294
	movt	ip, #:upper16:-294
	str	ip, [fp, #-996]
	sub	ip, fp, #512
	strh	r1, [sl, r9]	@ movhi
	mov	r1, r1, lsr #8
	ldr	r7, [fp, #-896]
	ldr	sl, [fp, #-800]
	strb	r7, [fp, #-424]
	bfi	r1, sl, #6, #2
	ldrsh	r9, [ip, #-240]
	sub	sl, fp, #768
	ldr	ip, [fp, #-424]
	strb	r1, [fp, #-425]
	bfi	ip, r2, #8, #10
	ldr	r2, [fp, #-740]
	str	ip, [fp, #-424]
	mov	r7, r9, lsr #6
	mov	ip, ip, lsr #16
	str	r9, [fp, #-752]
	bfi	ip, r6, #2, #10
	sub	r6, fp, #44
	sub	r9, fp, #512
	str	r7, [fp, #-800]
	strh	ip, [r6, r2]	@ movhi
	mov	ip, ip, lsr #8
	ldrh	r1, [sl, #-40]
	movw	r7, #:lower16:-292
	ldrh	sl, [r9, #-216]
	movt	r7, #:upper16:-292
	ldr	r9, [fp, #-796]
	str	r1, [fp, #-740]
	bfi	ip, r9, #4, #4
	mov	r9, r6
	ldr	r6, [fp, #-668]
	ldrb	r2, [fp, #-420]	@ zero_extendqisi2
	ldr	r1, [fp, #-900]
	str	sl, [fp, #-808]
	movw	sl, #:lower16:-286
	strb	ip, [fp, #-421]
	bfi	r2, r1, #0, #6
	ldr	r1, [fp, #-992]
	movw	ip, #:lower16:-288
	strb	r2, [fp, #-420]
	movt	ip, #:upper16:-288
	ldrh	r2, [r9, r6]
	str	sl, [fp, #-664]
	bfi	r2, r1, #6, #10
	strh	r2, [r9, r6]	@ movhi
	ldr	sl, [fp, #-672]
	mov	r1, r9
	ldr	r6, [fp, #-664]
	ldrh	r2, [r9, sl]
	movt	r6, #:upper16:-286
	str	r6, [fp, #-664]
	movw	r9, #:lower16:-282
	bfi	r2, r5, #0, #10
	strh	r2, [r1, sl]	@ movhi
	ldr	sl, [fp, #-464]
	movt	r9, #:upper16:-282
	ldrb	r1, [fp, #-416]	@ zero_extendqisi2
	mov	r2, r2, lsr #8
	ldr	r6, [fp, #-904]
	mov	r5, sl, lsr #2
	ldr	sl, [fp, #-792]
	bfi	r1, r6, #0, #4
	strb	r1, [fp, #-416]
	bfi	r2, sl, #2, #6
	ldr	sl, [fp, #-676]
	sub	r1, fp, #44
	str	r9, [fp, #-668]
	ldr	r9, [fp, #-460]
	strb	r2, [fp, #-417]
	str	r5, [fp, #-796]
	ldr	r6, [fp, #-908]
	mov	r5, r9, lsr #4
	ldrh	r2, [r1, sl]
	mov	r9, r1
	str	r5, [fp, #-792]
	movw	r5, #:lower16:-280
	bfi	r2, r6, #4, #10
	strh	r2, [r1, sl]	@ movhi
	ldr	r1, [fp, #-416]
	sub	r2, fp, #768
	ldr	sl, [fp, #-912]
	movt	r5, #:upper16:-280
	movw	r6, #:lower16:-278
	movt	r6, #:upper16:-278
	bfi	r1, sl, #14, #10
	mov	sl, r9
	str	r1, [fp, #-416]
	ldr	r9, [fp, #-688]
	strb	r3, [fp, #-413]
	ldrsh	r1, [r2, #-36]
	str	r1, [fp, #-712]
	ldrh	r2, [sl, r9]
	mov	sl, r1, lsr #6
	ldr	r1, [fp, #-584]
	movw	r9, #:lower16:-276
	str	sl, [fp, #-804]
	sub	sl, fp, #44
	bfi	r2, r1, #0, #10
	ldr	r1, [fp, #-688]
	movt	r9, #:upper16:-276
	strh	r2, [sl, r1]	@ movhi
	sub	sl, fp, #768
	ldr	r2, [fp, #-412]
	ldrh	r1, [sl, #-44]
	sub	sl, fp, #512
	str	r1, [fp, #-812]
	ldrh	r1, [sl, #-220]
	ldr	sl, [fp, #-440]
	bfi	r2, sl, #10, #10
	str	r1, [fp, #-728]
	str	r2, [fp, #-412]
	movw	r1, #:lower16:-272
	ldr	sl, [fp, #-744]
	mov	r2, r2, lsr #16
	bfi	r2, r0, #4, #10
	sub	r0, fp, #44
	movt	r1, #:upper16:-272
	str	r1, [fp, #-584]
	movw	r1, #:lower16:-270
	movt	r1, #:upper16:-270
	str	r1, [fp, #-672]
	strh	r2, [r0, sl]	@ movhi
	mov	r2, r2, lsr #8
	ldr	r1, [fp, #-916]
	ldr	sl, [fp, #-444]
	ldr	r0, [fp, #-884]
	strb	r1, [fp, #-408]
	ldr	r1, [fp, #-408]
	bfi	r2, r0, #6, #2
	ldr	r0, [fp, #-488]
	bfi	r1, sl, #8, #10
	str	r1, [fp, #-408]
	strb	r2, [fp, #-409]
	movw	sl, #:lower16:-266
	mov	r1, r1, lsr #16
	mov	r2, r0, lsr #2
	bfi	r1, r8, #2, #10
	ldr	r8, [fp, #-748]
	sub	r0, fp, #44
	str	r2, [fp, #-744]
	movt	sl, #:upper16:-266
	str	sl, [fp, #-676]
	strh	r1, [r0, r8]	@ movhi
	mov	r1, r1, lsr #8
	ldrb	r8, [fp, #-404]	@ zero_extendqisi2
	ldr	r2, [fp, #-468]
	ldr	r0, [fp, #-920]
	bfi	r8, r0, #0, #6
	strb	r8, [fp, #-404]
	ldr	r8, [fp, #-700]
	mov	sl, r2, lsr #4
	sub	r0, fp, #44
	ldr	r2, [fp, #-880]
	str	sl, [fp, #-748]
	bfi	r1, r2, #4, #4
	strb	r1, [fp, #-405]
	movw	r1, #:lower16:-262
	ldrh	r2, [r0, r8]
	str	r1, [fp, #-440]
	mov	r1, r0
	ldr	r0, [fp, #-700]
	movw	r8, #:lower16:-264
	ldr	sl, [fp, #-500]
	movt	r8, #:upper16:-264
	bfi	r2, sl, #6, #10
	strh	r2, [r1, r0]	@ movhi
	ldr	sl, [fp, #-704]
	sub	r0, fp, #768
	ldrh	r2, [r1, sl]
	ldrsh	sl, [r0, #-120]
	ldr	r1, [fp, #-440]
	movt	r1, #:upper16:-262
	str	r1, [fp, #-440]
	str	sl, [fp, #-688]
	movw	r1, #:lower16:-260
	ldr	sl, [fp, #-704]
	str	r1, [fp, #-444]
	sub	r1, fp, #44
	ldr	r0, [fp, #-480]
	bfi	r2, r0, #0, #10
	strh	r2, [r1, sl]	@ movhi
	ldr	sl, [fp, #-688]
	ldr	r0, [fp, #-444]
	mov	r2, r2, lsr #8
	ldrb	r1, [fp, #-400]	@ zero_extendqisi2
	movt	r0, #:upper16:-260
	str	r0, [fp, #-444]
	mov	r0, sl, lsr #6
	ldr	sl, [fp, #-924]
	str	r0, [fp, #-480]
	bfi	r1, sl, #0, #4
	strb	r1, [fp, #-400]
	ldr	r1, [fp, #-764]
	sub	sl, fp, #44
	ldr	r0, [fp, #-876]
	bfi	r2, r0, #2, #6
	sub	r0, fp, #768
	strb	r2, [fp, #-401]
	ldrh	r2, [sl, r1]
	sub	r1, fp, #512
	ldrh	sl, [r0, #-124]
	ldrh	r0, [r1, #-224]
	sub	r1, fp, #44
	str	sl, [fp, #-700]
	str	r0, [fp, #-704]
	ldr	r0, [fp, #-764]
	ldr	sl, [fp, #-928]
	bfi	r2, sl, #4, #10
	strh	r2, [r1, r0]	@ movhi
	ldr	r1, [fp, #-400]
	sub	r2, fp, #44
	ldr	sl, [fp, #-932]
	ldr	r0, [fp, #-768]
	bfi	r1, sl, #14, #10
	sub	sl, fp, #44
	str	r2, [fp, #-500]
	mov	r2, #128
	str	r1, [fp, #-400]
	strb	r3, [fp, #-397]
	ldrh	r1, [sl, r0]
	ldr	r0, [fp, #-692]
	bfi	r1, r0, #0, #10
	mov	r0, sl
	ldr	sl, [fp, #-768]
	strh	r1, [r0, sl]	@ movhi
	ldr	sl, [fp, #-588]
	ldr	r1, [fp, #-396]
	bfi	r1, sl, #10, #10
	str	r1, [fp, #-396]
	ldr	r0, [fp, #-492]
	ldr	sl, [fp, #-816]
	mov	r1, r1, lsr #16
	bfi	r1, r0, #4, #10
	sub	r0, fp, #44
	strh	r1, [r0, sl]	@ movhi
	mov	r1, r1, lsr #8
	ldr	r0, [fp, #-936]
	ldr	sl, [fp, #-872]
	strb	r0, [fp, #-392]
	bfi	r1, sl, #6, #2
	ldr	r0, [fp, #-392]
	ldr	sl, [fp, #-548]
	strb	r1, [fp, #-393]
	bfi	r0, sl, #8, #10
	ldr	r1, [fp, #-532]
	str	r0, [fp, #-392]
	sub	sl, fp, #44
	mov	r0, r0, lsr #16
	bfi	r0, r1, #2, #10
	ldr	r1, [fp, #-820]
	strh	r0, [sl, r1]	@ movhi
	mov	r0, r0, lsr #8
	ldrb	r1, [fp, #-388]	@ zero_extendqisi2
	ldr	sl, [fp, #-940]
	bfi	r1, sl, #0, #6
	ldr	sl, [fp, #-868]
	strb	r1, [fp, #-388]
	bfi	r0, sl, #4, #4
	strb	r0, [fp, #-389]
	ldr	r0, [fp, #-772]
	sub	sl, fp, #44
	ldrh	r1, [sl, r0]
	ldr	r0, [fp, #-612]
	bfi	r1, r0, #6, #10
	mov	r0, sl
	ldr	sl, [fp, #-772]
	strh	r1, [r0, sl]	@ movhi
	ldr	sl, [fp, #-776]
	ldrh	r1, [r0, sl]
	ldr	sl, [fp, #-592]
	bfi	r1, sl, #0, #10
	mov	sl, r0
	ldr	r0, [fp, #-776]
	strh	r1, [sl, r0]	@ movhi
	mov	r1, r1, lsr #8
	ldrb	r0, [fp, #-384]	@ zero_extendqisi2
	ldr	sl, [fp, #-944]
	bfi	r0, sl, #0, #4
	strb	r0, [fp, #-384]
	ldr	r0, [fp, #-864]
	ldr	sl, [fp, #-780]
	bfi	r1, r0, #2, #6
	sub	r0, fp, #44
	strb	r1, [fp, #-385]
	ldrh	r1, [r0, sl]
	ldr	sl, [fp, #-948]
	bfi	r1, sl, #4, #10
	mov	sl, r0
	ldr	r0, [fp, #-780]
	strh	r1, [sl, r0]	@ movhi
	ldr	r1, [fp, #-384]
	ldr	r0, [fp, #-952]
	bfi	r1, r0, #14, #10
	mov	r0, sl
	ldr	sl, [fp, #-784]
	str	r1, [fp, #-384]
	strb	r3, [fp, #-381]
	ldrh	r1, [r0, sl]
	ldr	sl, [fp, #-696]
	bfi	r1, sl, #0, #10
	mov	sl, r0
	ldr	r0, [fp, #-784]
	strh	r1, [sl, r0]	@ movhi
	ldr	r1, [fp, #-380]
	ldr	sl, [fp, #-552]
	ldr	r0, [fp, #-572]
	bfi	r1, sl, #10, #10
	str	r1, [fp, #-380]
	sub	sl, fp, #44
	mov	r1, r1, lsr #16
	bfi	r1, r0, #4, #10
	ldr	r0, [fp, #-824]
	strh	r1, [sl, r0]	@ movhi
	mov	r1, r1, lsr #8
	ldr	r0, [fp, #-956]
	ldr	sl, [fp, #-860]
	strb	r0, [fp, #-376]
	bfi	r1, sl, #6, #2
	ldr	r0, [fp, #-376]
	ldr	sl, [fp, #-448]
	strb	r1, [fp, #-377]
	sub	r1, fp, #44
	bfi	r0, sl, #8, #10
	ldr	sl, [fp, #-828]
	str	r0, [fp, #-376]
	mov	r0, r0, lsr #16
	bfi	r0, lr, #2, #10
	strh	r0, [r1, sl]	@ movhi
	ldr	sl, [fp, #-856]
	mov	r0, r0, lsr #8
	ldrb	r1, [fp, #-372]	@ zero_extendqisi2
	bfi	r0, sl, #4, #4
	strb	r0, [fp, #-373]
	ldr	r0, [fp, #-788]
	sub	sl, fp, #44
	ldr	lr, [fp, #-960]
	bfi	r1, lr, #0, #6
	ldr	lr, [fp, #-472]
	strb	r1, [fp, #-372]
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #6, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	lr, [fp, #-680]
	mov	r0, sl
	ldrh	r1, [sl, lr]
	ldr	sl, [fp, #-636]
	bfi	r1, sl, #0, #10
	strh	r1, [r0, lr]	@ movhi
	ldrb	r0, [fp, #-368]	@ zero_extendqisi2
	ldr	lr, [fp, #-964]
	mov	r1, r1, lsr #8
	ldr	sl, [fp, #-852]
	bfi	r0, lr, #0, #4
	strb	r0, [fp, #-368]
	ldr	r0, [fp, #-708]
	bfi	r1, sl, #2, #6
	sub	sl, fp, #44
	strb	r1, [fp, #-369]
	ldr	lr, [fp, #-968]
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #4, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	r0, [fp, #-368]
	ldr	r1, [fp, #-756]
	ldr	lr, [fp, #-540]
	bfi	r0, r1, #14, #10
	str	r0, [fp, #-368]
	ldr	r0, [fp, #-684]
	strb	r3, [fp, #-365]
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #0, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	r1, [fp, #-364]
	ldr	lr, [fp, #-504]
	ldr	r0, [fp, #-516]
	bfi	r1, lr, #10, #10
	mov	lr, sl
	ldr	sl, [fp, #-832]
	str	r1, [fp, #-364]
	mov	r1, r1, lsr #16
	bfi	r1, r0, #4, #10
	strh	r1, [lr, sl]	@ movhi
	ldr	r0, [fp, #-972]
	mov	r1, r1, lsr #8
	ldr	sl, [fp, #-508]
	ldr	lr, [fp, #-848]
	strb	r0, [fp, #-360]
	ldr	r0, [fp, #-360]
	bfi	r1, lr, #6, #2
	ldr	lr, [fp, #-452]
	bfi	r0, sl, #8, #10
	ldr	sl, [fp, #-836]
	strb	r1, [fp, #-361]
	sub	r1, fp, #44
	str	r0, [fp, #-360]
	mov	r0, r0, lsr #16
	bfi	r0, lr, #2, #10
	strh	r0, [r1, sl]	@ movhi
	ldr	lr, [fp, #-760]
	ldrb	r1, [fp, #-356]	@ zero_extendqisi2
	mov	r0, r0, lsr #8
	bfi	r1, lr, #0, #6
	strb	r1, [fp, #-356]
	ldr	sl, [fp, #-724]
	ldr	lr, [fp, #-556]
	bfi	r0, sl, #4, #4
	strb	r0, [fp, #-357]
	ldr	r0, [fp, #-484]
	sub	sl, fp, #44
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #6, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	lr, [fp, #-596]
	mov	r0, sl
	ldrh	r1, [sl, lr]
	ldr	sl, [fp, #-456]
	bfi	r1, sl, #0, #10
	strh	r1, [r0, lr]	@ movhi
	ldr	lr, [fp, #-840]
	ldrb	r0, [fp, #-352]	@ zero_extendqisi2
	mov	r1, r1, lsr #8
	ldr	sl, [fp, #-720]
	bfi	r0, lr, #0, #4
	strb	r0, [fp, #-352]
	ldr	r0, [fp, #-600]
	bfi	r1, sl, #2, #6
	sub	sl, fp, #44
	strb	r1, [fp, #-353]
	ldr	lr, [fp, #-844]
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #4, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	r0, [fp, #-352]
	ldr	r1, [fp, #-976]
	ldr	lr, [fp, #-604]
	bfi	r0, r1, #14, #10
	str	r0, [fp, #-352]
	ldr	r0, [fp, #-652]
	strb	r3, [fp, #-349]
	ldrh	r1, [sl, r0]
	bfi	r1, lr, #0, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	r1, [fp, #-348]
	ldr	lr, [fp, #-560]
	ldr	r0, [fp, #-476]
	bfi	r1, lr, #10, #10
	str	r1, [fp, #-348]
	mov	r1, r1, lsr #16
	bfi	r1, r0, #4, #10
	ldr	r0, [fp, #-716]
	strh	r1, [sl, r0]	@ movhi
	mov	sl, r1, lsr #8
	ldr	lr, [fp, #-496]
	bfi	sl, lr, #6, #2
	strb	sl, [fp, #-345]
	ldr	r0, [fp, #-980]
	ldr	r1, [fp, #-564]
	ldr	sl, [fp, #-520]
	strb	r0, [fp, #-344]
	ldr	lr, [fp, #-344]
	ldr	r0, [fp, #-660]
	bfi	lr, r1, #8, #10
	str	lr, [fp, #-344]
	mov	r1, lr, lsr #16
	bfi	r1, sl, #2, #10
	sub	sl, fp, #44
	strh	r1, [sl, r0]	@ movhi
	mov	r1, r1, lsr #8
	ldrb	r0, [fp, #-340]	@ zero_extendqisi2
	ldr	lr, [fp, #-984]
	bfi	r0, lr, #0, #6
	ldr	lr, [fp, #-528]
	strb	r0, [fp, #-340]
	bfi	r1, lr, #4, #4
	mov	lr, sl
	ldr	sl, [fp, #-580]
	strb	r1, [fp, #-341]
	ldr	r0, [fp, #-616]
	ldrh	r1, [lr, sl]
	bfi	r1, r0, #6, #10
	strh	r1, [lr, sl]	@ movhi
	ldr	r0, [fp, #-996]
	mov	sl, lr
	ldrh	r1, [lr, r0]
	ldr	lr, [fp, #-536]
	bfi	r1, lr, #0, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	lr, [fp, #-800]
	ldrb	r0, [fp, #-336]	@ zero_extendqisi2
	mov	r1, r1, lsr #8
	bfi	r0, lr, #0, #4
	ldr	lr, [fp, #-752]
	strb	r0, [fp, #-336]
	bfi	r1, lr, #2, #6
	ldr	r0, [fp, #-740]
	strb	r1, [fp, #-337]
	ldrh	r1, [sl, r7]
	bfi	r1, r0, #4, #10
	strh	r1, [sl, r7]	@ movhi
	ldr	lr, [fp, #-336]
	mov	r0, sl
	ldr	r7, [fp, #-808]
	bfi	lr, r7, #14, #10
	str	lr, [fp, #-336]
	strb	r3, [fp, #-333]
	ldrh	r1, [sl, ip]
	ldr	sl, [fp, #-544]
	bfi	r1, sl, #0, #10
	strh	r1, [r0, ip]	@ movhi
	ldr	ip, [fp, #-332]
	ldr	r7, [fp, #-620]
	ldr	sl, [fp, #-664]
	bfi	ip, r7, #10, #10
	ldr	lr, [fp, #-524]
	str	ip, [fp, #-332]
	mov	r1, ip, lsr #16
	bfi	r1, lr, #4, #10
	strh	r1, [r0, sl]	@ movhi
	mov	lr, r0
	ldr	r0, [fp, #-796]
	ldr	r7, [fp, #-464]
	mov	ip, r1, lsr #8
	ldr	sl, [fp, #-568]
	strb	r0, [fp, #-328]
	bfi	ip, r7, #6, #2
	ldr	r0, [fp, #-328]
	strb	ip, [fp, #-329]
	mov	ip, lr
	bfi	r0, sl, #8, #10
	ldr	lr, [fp, #-668]
	ldr	r1, [fp, #-576]
	str	r0, [fp, #-328]
	mov	r0, r0, lsr #16
	bfi	r0, r1, #2, #10
	strh	r0, [ip, lr]	@ movhi
	ldr	r7, [fp, #-792]
	sub	ip, fp, #44
	ldrb	sl, [fp, #-324]	@ zero_extendqisi2
	mov	r0, r0, lsr #8
	ldr	r1, [fp, #-460]
	ldr	lr, [fp, #-624]
	bfi	sl, r7, #0, #6
	bfi	r0, r1, #4, #4
	strb	sl, [fp, #-324]
	strb	r0, [fp, #-325]
	mov	r0, ip
	ldrh	r7, [ip, r5]
	bfi	r7, lr, #6, #10
	strh	r7, [ip, r5]	@ movhi
	ldr	sl, [fp, #-640]
	ldrh	ip, [ip, r6]
	bfi	ip, sl, #0, #10
	strh	ip, [r0, r6]	@ movhi
	ldr	r7, [fp, #-804]
	mov	sl, r0
	ldrb	lr, [fp, #-320]	@ zero_extendqisi2
	mov	r5, ip, lsr #8
	ldr	r6, [fp, #-712]
	bfi	lr, r7, #0, #4
	strb	lr, [fp, #-320]
	bfi	r5, r6, #2, #6
	strb	r5, [fp, #-321]
	ldrh	r7, [r0, r9]
	ldr	r0, [fp, #-812]
	bfi	r7, r0, #4, #10
	strh	r7, [sl, r9]	@ movhi
	ldr	r0, [fp, #-584]
	ldr	r6, [fp, #-320]
	ldr	lr, [fp, #-728]
	ldr	r5, [fp, #-608]
	bfi	r6, lr, #14, #10
	str	r6, [fp, #-320]
	strb	r3, [fp, #-317]
	ldrh	r1, [sl, r0]
	bfi	r1, r5, #0, #10
	strh	r1, [sl, r0]	@ movhi
	ldr	r9, [fp, #-316]
	ldr	ip, [fp, #-628]
	ldr	r6, [fp, #-672]
	bfi	r9, ip, #10, #10
	ldr	r7, [fp, #-644]
	str	r9, [fp, #-316]
	mov	r0, r9, lsr #16
	bfi	r0, r7, #4, #10
	strh	r0, [sl, r6]	@ movhi
	ldr	r5, [fp, #-744]
	mov	r7, sl
	ldr	ip, [fp, #-632]
	mov	r1, r0, lsr #8
	ldr	r6, [fp, #-676]
	strb	r5, [fp, #-312]
	ldr	lr, [fp, #-312]
	ldr	sl, [fp, #-488]
	bfi	lr, ip, #8, #10
	ldr	r9, [fp, #-648]
	str	lr, [fp, #-312]
	bfi	r1, sl, #6, #2
	mov	r0, lr, lsr #16
	strb	r1, [fp, #-313]
	bfi	r0, r9, #2, #10
	strh	r0, [r7, r6]	@ movhi
	mov	sl, r7
	ldr	r5, [fp, #-748]
	ldrb	r7, [fp, #-308]	@ zero_extendqisi2
	mov	lr, r0, lsr #8
	ldr	r1, [fp, #-468]
	ldr	ip, [fp, #-512]
	bfi	r7, r5, #0, #6
	bfi	lr, r1, #4, #4
	strb	r7, [fp, #-308]
	strb	lr, [fp, #-309]
	ldrh	r6, [sl, r8]
	bfi	r6, ip, #6, #10
	strh	r6, [sl, r8]	@ movhi
	ldr	lr, [fp, #-440]
	mov	ip, sl
	ldr	r5, [fp, #-656]
	ldrh	r1, [sl, lr]
	bfi	r1, r5, #0, #10
	strh	r1, [sl, lr]	@ movhi
	ldrb	r9, [fp, #-304]	@ zero_extendqisi2
	ldr	r6, [fp, #-480]
	mov	sl, r1, lsr #8
	ldr	r5, [fp, #-700]
	bfi	r9, r6, #0, #4
	strb	r9, [fp, #-304]
	ldr	r9, [fp, #-688]
	bfi	sl, r9, #2, #6
	strb	sl, [fp, #-305]
	ldr	sl, [fp, #-444]
	ldrh	r0, [ip, sl]
	bfi	r0, r5, #4, #10
	strh	r0, [ip, sl]	@ movhi
	ldr	r6, [fp, #-500]
	ldr	r7, [fp, #-304]
	ldr	r5, [fp, #-704]
	bfi	r7, r5, #14, #10
	str	r7, [fp, #-304]
	strb	r3, [fp, #-301]
	mov	r7, r2
	str	r2, [r6, #-388]!
	add	r1, r6, #4
	ldr	r0, [r4, #12]
	bl	memcpy
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #16]
	bl	Vou_SetGammaAddr
	ldr	r0, [r4, #0]
	mov	r1, #3
	bl	HAL_SetDispParaUpd
	mov	r0, #0
	b	.L19
.L14:
	ldr	r2, .L26
	add	r0, r2, #40
	add	r1, r2, #80
	b	.L16
.L17:
	sub	r1, r1, #9
	cmp	r1, #1
	bhi	.L14
	ldr	r2, .L26+4
	add	r0, r2, #40
	add	r1, r2, #80
	b	.L16
.L22:
	movw	r2, #:lower16:.LANCHOR0
	movt	r2, #:upper16:.LANCHOR0
	add	r0, r2, #40
	add	r1, r2, #80
	b	.L16
.L27:
	.align	2
.L26:
	.word	.LANCHOR0+240
	.word	.LANCHOR0+360
	UNWIND(.fnend)
	.size	OPTM_AA_SetGmmCoef, .-OPTM_AA_SetGmmCoef
	.align	2
	.global	OPTM_AA_InitDispGmm
	.type	OPTM_AA_InitDispGmm, %function
OPTM_AA_InitDispGmm:
	UNWIND(.fnstart)
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r3, r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r3, r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	subs	r0, r0, #1
	movne	r0, #1
	mov	r3, r1
	cmp	r1, #0
	movne	r4, r0
	orreq	r4, r0, #1
	cmp	r4, #0
	mvnne	r0, #0
	ldmnefd	sp, {r3, r4, fp, sp, pc}
	movw	r2, #:lower16:.LANCHOR1
	movt	r2, #:upper16:.LANCHOR1
	mov	ip, r1
	mov	lr, #1
	str	lr, [ip], #12
	ldmia	r2, {r0, r1, r2}
	str	lr, [r3, #4]
	str	r4, [r3, #8]
	stmia	ip, {r0, r1, r2}
	mov	r0, r3
	mov	r1, #8
	bl	OPTM_AA_SetGmmCoef
	mov	r0, r4
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_InitDispGmm, .-OPTM_AA_InitDispGmm
	.align	2
	.global	OPTM_AA_DeInitGmmCoef
	.type	OPTM_AA_DeInitGmmCoef, %function
OPTM_AA_DeInitGmmCoef:
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
	movw	r4, #:lower16:.LANCHOR1
	movt	r4, #:upper16:.LANCHOR1
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L33
	mov	r0, r4
	bl	HI_DRV_MMZ_UnmapAndRelease
	mov	r0, #0
	str	r0, [r4, #0]
.L33:
	mov	r0, #0
	ldmfd	sp, {r3, r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_DeInitGmmCoef, .-OPTM_AA_DeInitGmmCoef
	.align	2
	.global	OPTM_AA_InitGmmCoef
	.type	OPTM_AA_InitGmmCoef, %function
OPTM_AA_InitGmmCoef:
	UNWIND(.fnstart)
.LFB0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	UNWIND(.movsp ip)
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	UNWIND(.pad #4)
	UNWIND(.save {r4, fp, ip, lr})
	UNWIND(.setfp fp, ip, #-4)
	sub	fp, ip, #4
	UNWIND(.pad #28)
	sub	sp, sp, #28
	mov	r1, #0
	mov	r2, #1024
	mov	r3, r1
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	sub	r4, fp, #32
	str	r4, [sp, #0]
	bl	HI_DRV_MMZ_AllocAndMap
	subs	ip, r0, #0
	ldmeqia	r4, {r0, r1, r2}
	movweq	r3, #:lower16:.LANCHOR1
	movteq	r3, #:upper16:.LANCHOR1
	mvnne	ip, #0
	stmeqia	r3, {r0, r1, r2}
	mov	r0, ip
	sub	sp, fp, #16
	ldmfd	sp, {r4, fp, sp, pc}
	UNWIND(.fnend)
	.size	OPTM_AA_InitGmmCoef, .-OPTM_AA_InitGmmCoef
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	s_GammaCoef_3716MV300_B_720P, %object
	.size	s_GammaCoef_3716MV300_B_720P, 40
s_GammaCoef_3716MV300_B_720P:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	111
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-110
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_G_720P, %object
	.size	s_GammaCoef_3716MV300_G_720P, 40
s_GammaCoef_3716MV300_G_720P:
	.byte	0
	.byte	8
	.byte	17
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	106
	.byte	112
	.byte	118
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-110
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-86
	.byte	-79
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-54
	.byte	-47
	.byte	-39
	.byte	-31
	.byte	-31
	.byte	-22
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_R_720P, %object
	.size	s_GammaCoef_3716MV300_R_720P, 40
s_GammaCoef_3716MV300_R_720P:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	71
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-112
	.byte	-104
	.byte	-95
	.byte	-95
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_B_SD, %object
	.size	s_GammaCoef_3716MV300_B_SD, 40
s_GammaCoef_3716MV300_B_SD:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-118
	.byte	-109
	.byte	-105
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-79
	.byte	-70
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-13
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_G_SD, %object
	.size	s_GammaCoef_3716MV300_G_SD, 40
s_GammaCoef_3716MV300_G_SD:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-118
	.byte	-109
	.byte	-105
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-79
	.byte	-70
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-13
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_R_SD, %object
	.size	s_GammaCoef_3716MV300_R_SD, 40
s_GammaCoef_3716MV300_R_SD:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-111
	.byte	-104
	.byte	-95
	.byte	-95
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_B_1080i_p, %object
	.size	s_GammaCoef_3716MV300_B_1080i_p, 40
s_GammaCoef_3716MV300_B_1080i_p:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-110
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_G_1080i_p, %object
	.size	s_GammaCoef_3716MV300_G_1080i_p, 40
s_GammaCoef_3716MV300_G_1080i_p:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	105
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	-111
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-87
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_R_1080i_p, %object
	.size	s_GammaCoef_3716MV300_R_1080i_p, 40
s_GammaCoef_3716MV300_R_1080i_p:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	71
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-112
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_B_576P, %object
	.size	s_GammaCoef_3716MV300_B_576P, 40
s_GammaCoef_3716MV300_B_576P:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	-111
	.byte	-103
	.byte	-95
	.byte	-95
	.byte	-87
	.byte	-79
	.byte	-71
	.byte	-64
	.byte	-63
	.byte	-55
	.byte	-47
	.byte	-39
	.byte	-31
	.byte	-31
	.byte	-23
	.byte	-15
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_G_576P, %object
	.size	s_GammaCoef_3716MV300_G_576P, 40
s_GammaCoef_3716MV300_G_576P:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	-111
	.byte	-103
	.byte	-94
	.byte	-94
	.byte	-89
	.byte	-79
	.byte	-70
	.byte	-63
	.byte	-63
	.byte	-55
	.byte	-47
	.byte	-39
	.byte	-31
	.byte	-31
	.byte	-23
	.byte	-15
	.byte	-8
	.byte	-1
	.type	s_GammaCoef_3716MV300_R_576P, %object
	.size	s_GammaCoef_3716MV300_R_576P, 40
s_GammaCoef_3716MV300_R_576P:
	.byte	0
	.byte	8
	.byte	16
	.byte	24
	.byte	32
	.byte	32
	.byte	40
	.byte	48
	.byte	56
	.byte	64
	.byte	64
	.byte	72
	.byte	80
	.byte	88
	.byte	96
	.byte	96
	.byte	104
	.byte	112
	.byte	120
	.byte	-128
	.byte	-128
	.byte	-120
	.byte	-112
	.byte	-104
	.byte	-96
	.byte	-96
	.byte	-88
	.byte	-80
	.byte	-72
	.byte	-64
	.byte	-64
	.byte	-56
	.byte	-48
	.byte	-40
	.byte	-32
	.byte	-32
	.byte	-24
	.byte	-16
	.byte	-8
	.byte	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	ASCII(.ascii	"VOGmmCoef\000")
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_stOptmGammaMBuf, %object
	.size	g_stOptmGammaMBuf, 12
g_stOptmGammaMBuf:
	.space	12
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
#endif

