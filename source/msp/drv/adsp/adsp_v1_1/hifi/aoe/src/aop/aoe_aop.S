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
	.file	"aoe_aop.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/api/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/component/ha_codec/include
@ -I
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/adsp/adsp_v1_1
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -D_FORTIFY_SOURCE=2
@ -DCHIP_TYPE_hi3716mv330 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -DHI_LOG_SUPPORT=1 -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1
@ -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT
@ -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(aoe_aop)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/.aoe_aop.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aop/aoe_aop.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
@ -fpromote-loop-indices -freg-struct-return -fregmove -frename-registers
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce -ftree-ccp
@ -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	AOPGetChnCmd
	.type	AOPGetChnCmd, %function
AOPGetChnCmd:
	.fnstart
.LFB885:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.14622,
	tst	r2, #8	@ D.14622,
	movne	r0, #2	@ eNewCmd,
	bne	.L3	@,
	ldr	r0, [r3, #4]	@ tmp142,
	ands	r0, r0, #3	@ D.14626, tmp142,
	beq	.L3	@,
	cmp	r0, #1	@ D.14626,
	beq	.L3	@,
	ldr	r2, [r3, #4]	@ tmp144,
	mov	ip, #4	@ tmp145,
	mov	r0, #2	@ eNewCmd,
	bfi	r2, ip, #4, #4	@ tmp144, tmp145,,
	str	r2, [r3, #4]	@ tmp144,
	ldr	r2, [r3, #4]	@ tmp146,
	orr	ip, r2, #8	@ tmp149, tmp146,
	str	ip, [r3, #4]	@ tmp149,
.L3:
	str	r0, [r1, #0]	@ eNewCmd,* newcmd
	bx	lr	@
	.fnend
	.size	AOPGetChnCmd, .-AOPGetChnCmd
	.align	2
	.global	AOPAckChnCmd
	.type	AOPAckChnCmd, %function
AOPAckChnCmd:
	.fnstart
.LFB886:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.14635,
	tst	r2, #8	@ D.14635,
	bxne	lr	@
	ldr	ip, [r3, #4]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #4]	@ tmp142,
	ldr	r1, [r3, #4]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #4]	@ tmp145,
	bx	lr	@
	.fnend
	.size	AOPAckChnCmd, .-AOPAckChnCmd
	.align	2
	.global	AOPUpdateChnState
	.type	AOPUpdateChnState, %function
AOPUpdateChnState:
	.fnstart
.LFB889:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #8	@ tmp141, Id,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stAopRm.hAop
	ldr	r2, [r2, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state,
	bxeq	lr	@
	mov	r1, #0	@ tmp142,
	str	r1, [r3, #0]	@ tmp142, <variable>.stGain.bLinearMode
	ldrb	r0, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	r0, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	ip, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	ip, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r1, [r2, #12]	@ D.14687,
	ubfx	r0, r1, #16, #1	@ tmp148, D.14687,,
	str	r0, [r3, #8]	@ tmp148, <variable>.bMute
	bx	lr	@
	.fnend
	.size	AOPUpdateChnState, .-AOPUpdateChnState
	.align	2
	.global	AOP_GetChnStatus
	.type	AOP_GetChnStatus, %function
AOP_GetChnStatus:
	.fnstart
.LFB895:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp137, Id,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [ip, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	streq	r3, [r1, #0]	@ state, <variable>.CurnStatus
	ldrne	r2, [r3, #76]	@ <variable>.CurnStatus, <variable>.CurnStatus
	strne	r2, [r1, #0]	@ <variable>.CurnStatus, <variable>.CurnStatus
	ldrne	r2, [r3, #28]	@ <variable>.stAttr.Priority, <variable>.stAttr.Priority
	strne	r2, [r1, #4]	@ <variable>.stAttr.Priority, <variable>.Priority
	ldrne	r2, [r3, #56]	@ <variable>.stAttr.stRbfAttr.uFrameSize, <variable>.stAttr.stRbfAttr.uFrameSize
	strne	r2, [r1, #12]	@ <variable>.stAttr.stRbfAttr.uFrameSize, <variable>.uFrameSize
	ldrne	r3, [r3, #12]	@ <variable>.stAttr.u32BitPerSample, <variable>.stAttr.u32BitPerSample
	strne	r3, [r1, #8]	@ <variable>.stAttr.u32BitPerSample, <variable>.u32BitPerSample
	bx	lr	@
	.fnend
	.size	AOP_GetChnStatus, .-AOP_GetChnStatus
	.align	2
	.global	AOP_WriteBuffProcTryCnt
	.type	AOP_WriteBuffProcTryCnt, %function
AOP_WriteBuffProcTryCnt:
	.fnstart
.LFB900:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	AOP_WriteBuffProcTryCnt, .-AOP_WriteBuffProcTryCnt
	.align	2
	.global	AOP_WriteBuffProcOKCnt
	.type	AOP_WriteBuffProcOKCnt, %function
AOP_WriteBuffProcOKCnt:
	.fnstart
.LFB901:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	AOP_WriteBuffProcOKCnt, .-AOP_WriteBuffProcOKCnt
	.align	2
	.global	AOP_QueryRbfFree
	.type	AOP_QueryRbfFree, %function
AOP_QueryRbfFree:
	.fnstart
.LFB899:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp140, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	beq	.L25	@,
	ldr	r2, [r3, #76]	@ <variable>.CurnStatus, <variable>.CurnStatus
	cmp	r2, #0	@ <variable>.CurnStatus,
	beq	.L25	@,
	ldr	r0, [r3, #72]	@ D.14826, <variable>.hRingOut
	cmp	r0, #0	@ D.14826,
	bne	.L27	@,
.L25:
	mov	r0, #0	@,
	bx	lr	@
.L27:
	b	RBUF_CheckFree	@
	.fnend
	.size	AOP_QueryRbfFree, .-AOP_QueryRbfFree
	.align	2
	.global	AOP_GetChnAttr
	.type	AOP_GetChnAttr, %function
AOP_GetChnAttr:
	.fnstart
.LFB896:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r1	@ pstAttr, pstAttr
	mov	r5, r0	@ Id, Id
	mov	r1, #56	@,
	mov	r0, r4	@, pstAttr
	add	r5, r5, #8	@ tmp137, Id,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	ip, [r3, r5, asl #2]	@ state, g_stAopRm.hAop
	cmp	ip, #0	@ state,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, ip, #12	@ tmp139, state,
	mov	r5, r4	@ pstAttr, pstAttr
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp140,,,,
	mov	r4, lr	@ tmp142, tmp140
	stmia	r5!, {r0, r1, r2, r3}	@ pstAttr,,,,
	mov	ip, r5	@ pstAttr, pstAttr
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp144,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ pstAttr,,,,
	ldmia	r4, {r0, r1}	@ tmp144,,
	stmia	ip, {r0, r1}	@ pstAttr,,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AOP_GetChnAttr, .-AOP_GetChnAttr
	.align	2
	.global	AOPSwResetReg
	.type	AOPSwResetReg, %function
AOPSwResetReg:
	.fnstart
.LFB891:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #32	@,
	mov	r4, r0	@ pAopReg, pAopReg
	bl	__memzero	@
	ldr	r0, [r4, #4]	@ tmp134,
	orr	r3, r0, #8	@ tmp136, tmp134,
	str	r3, [r4, #4]	@ tmp136,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AOPSwResetReg, .-AOPSwResetReg
	.align	2
	.global	AOP_Init
	.type	AOP_Init, %function
AOP_Init:
	.fnstart
.LFB892:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	mov	r6, r0	@ u32AopRegBase, u32AopRegBase
	mov	r5, #0	@ tmp144,
	str	r0, [r4, #0]	@ u32AopRegBase, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r0, r6, #32	@ temp.499, u32AopRegBase,
	str	r5, [r4, #32]	@ tmp144, g_stAopRm.hAop
	str	r0, [r4, #4]	@ temp.499, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r3, r6, #64	@ temp.501, u32AopRegBase,
	str	r5, [r4, #36]	@ tmp144, g_stAopRm.hAop
	str	r3, [r4, #8]	@ temp.501, g_stAopRm.hwAopReg
	mov	r0, r3	@, temp.501
	bl	AOPSwResetReg	@
	add	ip, r6, #96	@ temp.503, u32AopRegBase,
	str	r5, [r4, #40]	@ tmp144, g_stAopRm.hAop
	mov	r0, ip	@, temp.503
	str	ip, [r4, #12]	@ temp.503, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r2, r6, #128	@ temp.505, u32AopRegBase,
	str	r5, [r4, #44]	@ tmp144, g_stAopRm.hAop
	mov	r0, r2	@, temp.505
	str	r2, [r4, #16]	@ temp.505, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r1, r6, #160	@ temp.507, u32AopRegBase,
	str	r5, [r4, #48]	@ tmp144, g_stAopRm.hAop
	mov	r0, r1	@, temp.507
	str	r1, [r4, #20]	@ temp.507, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	add	r3, r6, #192	@ temp.509, u32AopRegBase,
	add	r6, r6, #224	@ D.14728, u32AopRegBase,
	str	r3, [r4, #24]	@ temp.509, g_stAopRm.hwAopReg
	mov	r0, r3	@, temp.509
	str	r5, [r4, #52]	@ tmp144, g_stAopRm.hAop
	bl	AOPSwResetReg	@
	mov	r0, r6	@, D.14728
	str	r5, [r4, #56]	@ tmp144, g_stAopRm.hAop
	str	r6, [r4, #28]	@ D.14728, g_stAopRm.hwAopReg
	bl	AOPSwResetReg	@
	str	r5, [r4, #60]	@ tmp144, g_stAopRm.hAop
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AOP_Init, .-AOP_Init
	.align	2
	.global	AOP_QueryRbfInfo
	.type	AOP_QueryRbfInfo, %function
AOP_QueryRbfInfo:
	.fnstart
.LFB898:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstBufInfo, pstBufInfo
	mov	r5, r0	@ Id, Id
	mov	r1, #36	@,
	mov	r0, r4	@, pstBufInfo
	add	r5, r5, #8	@ tmp137, Id,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, r5, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r3, #76]	@ <variable>.CurnStatus, <variable>.CurnStatus
	cmp	r2, #0	@ <variable>.CurnStatus,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r3, #72]	@, <variable>.hRingOut
	mov	r1, r4	@, pstBufInfo
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	RBUF_QueryInfo	@
	.fnend
	.size	AOP_QueryRbfInfo, .-AOP_QueryRbfInfo
	.align	2
	.global	AOP_WriteRbfData
	.type	AOP_WriteRbfData, %function
AOP_WriteRbfData:
	.fnstart
.LFB897:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp140, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAopRm.hAop
	cmp	r3, #0	@ state,
	beq	.L39	@,
	ldr	ip, [r3, #76]	@ <variable>.CurnStatus, <variable>.CurnStatus
	cmp	ip, #0	@ <variable>.CurnStatus,
	bne	.L41	@,
.L39:
	mov	r0, #0	@,
	bx	lr	@
.L41:
	ldr	r0, [r3, #72]	@, <variable>.hRingOut
	b	RBUF_WriteDataDma	@
	.fnend
	.size	AOP_WriteRbfData, .-AOP_WriteRbfData
	.align	2
	.global	AOP_DestroyChn
	.type	AOP_DestroyChn, %function
AOP_DestroyChn:
	.fnstart
.LFB888:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r0, r0, #8	@ tmp137, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r3, r0, asl #2]	@ inst, g_stAopRm.hAop
	cmp	r4, #0	@ inst,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #72]	@, <variable>.hRingOut
	bl	RBUF_Destroy	@
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
	.fnend
	.size	AOP_DestroyChn, .-AOP_DestroyChn
	.align	2
	.global	AOP_DeInit
	.type	AOP_DeInit, %function
AOP_DeInit:
	.fnstart
.LFB893:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r0, #0	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	bl	AOP_DestroyChn	@
	mov	r0, #1	@,
	mov	r5, #0	@ tmp134,
	str	r5, [r4, #32]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #2	@,
	str	r5, [r4, #36]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #3	@,
	str	r5, [r4, #40]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #4	@,
	str	r5, [r4, #44]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #5	@,
	str	r5, [r4, #48]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #6	@,
	str	r5, [r4, #52]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	mov	r0, #7	@,
	str	r5, [r4, #56]	@ tmp134, g_stAopRm.hAop
	bl	AOP_DestroyChn	@
	str	r5, [r4, #60]	@ tmp134, g_stAopRm.hAop
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AOP_DeInit, .-AOP_DeInit
	.align	2
	.global	AOPGetChnCreateAttr
	.type	AOPGetChnCreateAttr, %function
AOPGetChnCreateAttr:
	.fnstart
.LFB884:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r5, [r3, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	mov	r4, r1	@ pstAttr, pstAttr
	mov	r0, r1	@, pstAttr
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r5, #0]	@ tmp160,* pAopReg
	and	r1, r1, #3	@, tmp160,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L53	@,
.L48:
	mvn	r3, #0	@ D.14563,
.L51:
	mov	r0, r3	@, D.14563
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L53:
	ldr	r2, [r5, #0]	@ tmp162,* pAopReg
	add	r0, r4, #4	@, pstAttr,
	ubfx	r1, r2, #2, #2	@, tmp162,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L48	@,
	ldr	ip, [r5, #0]	@ tmp165,* pAopReg
	add	r0, r4, #8	@, pstAttr,
	ubfx	r1, ip, #4, #4	@, tmp165,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L48	@,
	ldr	lr, [r5, #0]	@ tmp168,* pAopReg
	add	r0, r4, #12	@, pstAttr,
	ubfx	r1, lr, #8, #2	@, tmp168,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L48	@,
	ldr	r1, [r5, #0]	@ tmp171,* pAopReg
	add	r0, sp, #4	@,,
	ubfx	r1, r1, #20, #8	@, tmp171,,
	bl	AOE_REG_ReadBufLatencyMs	@
	cmp	r0, #0	@,
	bne	.L48	@,
	ldr	r3, [r5, #0]	@ tmp174,* pAopReg
	ldr	r1, [r4, #0]	@, <variable>.u32BitPerSample
	ubfx	lr, r3, #10, #1	@ D.14587, tmp174,,
	ldr	r0, [r4, #4]	@, <variable>.u32Channels
	str	lr, [r4, #16]	@ D.14587, <variable>.Priority
	bl	UTIL_CalcFrameSize	@
	mov	r1, #1	@ tmp176,
	str	r1, [r4, #20]	@ tmp176, <variable>.stRbfAttr.bExtMem
	ldr	ip, [r5, #20]	@ tmp177,
	ubfx	r2, ip, #24, #1	@ D.14592, tmp177,,
	str	r2, [r4, #40]	@ D.14592, <variable>.stRbfAttr.uBufFlag
	ldr	r3, [r5, #16]	@ D.14594, <variable>.AOP_BUF_ADDR
	str	r3, [r4, #24]	@ D.14594, <variable>.stRbfAttr.uBufAddr
	ldr	r1, [r5, #20]	@ tmp179,
	ubfx	ip, r1, #0, #24	@ D.14595, tmp179,,
	str	ip, [r4, #28]	@ D.14595, <variable>.stRbfAttr.uBufSize
	ldr	r2, [r5, #20]	@ D.14597,
	tst	r2, #16777216	@ D.14597,
	addeq	r2, r5, #28	@ D.14606, pAopReg,
	addeq	r5, r5, #24	@ D.14604, pAopReg,
	ldrne	r2, [r5, #24]	@ D.14601, <variable>.AOP_BUF_WPTR
	streq	r2, [r4, #36]	@ D.14606, <variable>.stRbfAttr.uBufRptr
	streq	r5, [r4, #32]	@ D.14604, <variable>.stRbfAttr.uBufWptr
	strne	r2, [r4, #32]	@ D.14601, <variable>.stRbfAttr.uBufWptr
	ldrne	r2, [r5, #28]	@ D.14602, <variable>.AOP_BUF_RPTR
	strne	r2, [r4, #36]	@ D.14602, <variable>.stRbfAttr.uBufRptr
	ldr	r3, [sp, #4]	@ uLatencyMs, uLatencyMs
	ldr	r2, [r4, #8]	@, <variable>.u32SampleRate
	str	r3, [r4, #52]	@ uLatencyMs, <variable>.stRbfAttr.uLatencyMs
	mov	r1, r0	@, u32FrameSize
	str	r0, [r4, #44]	@ u32FrameSize, <variable>.stRbfAttr.uFrameSize
	mov	r0, r3	@, uLatencyMs
	bl	UTIL_LatencyMs2ByteSize	@
	mov	r3, #0	@ D.14563,
	str	r0, [r4, #48]	@, <variable>.stRbfAttr.uLatencySize
	b	.L51	@
	.fnend
	.size	AOPGetChnCreateAttr, .-AOPGetChnCreateAttr
	.align	2
	.global	AOPCreateChn
	.type	AOPCreateChn, %function
AOPCreateChn:
	.fnstart
.LFB887:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #68
	sub	sp, sp, #68	@,,
	add	r5, sp, #4	@ tmp140,,
	mov	r3, #0	@ tmp139,
	str	r3, [sp, #60]	@ tmp139, hRingOut
	mov	r1, r5	@, tmp140
	bl	AOPGetChnCreateAttr	@
	cmp	r0, #0	@,
	beq	.L59	@,
.L55:
	mov	ip, #0	@ D.14654,
.L57:
	mov	r0, ip	@, D.14654
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L59:
	add	r0, sp, #60	@,,
	add	r1, r5, #20	@, tmp140,
	bl	RBUF_Create	@
	ldr	r0, [sp, #60]	@ hRingOut, hRingOut
	cmp	r0, #0	@ hRingOut,
	beq	.L55	@,
	mov	r0, #17	@,
	mov	r1, #80	@,
	bl	HI_ADSP_MALLOC	@
	subs	r6, r0, #0	@ D.14658,
	beq	.L56	@,
	mov	r1, #80	@,
	add	r4, r6, #12	@ tmp145, D.14658,
	bl	__memzero	@
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	r7, r4	@ tmp152, tmp145
	mov	ip, r6	@ D.14654, D.14658
	stmia	r7!, {r0, r1, r2, r3}	@ tmp152,,,,
	mov	r4, r7	@ tmp154, tmp152
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp153,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp155,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldmia	r5, {r0, r1}	@ tmp155,,
	mov	r2, #1	@ tmp148,
	stmia	r4, {r0, r1}	@ tmp156,,
	ldr	r1, [sp, #60]	@ hRingOut, hRingOut
	str	r2, [r6, #76]	@ tmp148, <variable>.CurnStatus
	str	r1, [r6, #72]	@ hRingOut, <variable>.hRingOut
	b	.L57	@
.L56:
	ldr	r0, [sp, #60]	@, hRingOut
	bl	RBUF_Destroy	@
	mov	ip, r6	@ D.14654, D.14658
	b	.L57	@
	.fnend
	.size	AOPCreateChn, .-AOPCreateChn
	.align	2
	.global	AOPProcChnlCmd
	.type	AOPProcChnlCmd, %function
AOPProcChnlCmd:
	.fnstart
.LFB890:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	mov	r5, r0	@ Id, Id
	ldr	r3, [r4, r0, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	r2, [r3, #4]	@ D.14857,
	ands	r6, r2, #8	@ tmp142, D.14857,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, [r3, #4]	@ tmp143,
	ands	r1, r1, #3	@ D.14855, tmp143,
	bne	.L69	@,
	bl	AOPCreateChn	@
	add	r3, r5, #8	@ tmp150, Id,
	cmp	r0, #0	@ D.14703,
	str	r0, [r4, r3, asl #2]	@ D.14703, g_stAopRm.hAop
	beq	.L65	@,
.L68:
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
.L66:
	ldr	lr, [r3, #4]	@ D.14874,
	ands	r2, lr, #8	@ tmp163, D.14874,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L70:
	ldr	r1, [r3, #4]	@ tmp164,
	bfi	r1, r2, #4, #4	@ tmp164, tmp163,,
	str	r1, [r3, #4]	@ tmp164,
	ldr	ip, [r3, #4]	@ tmp165,
	orr	r0, ip, #8	@ tmp169, tmp165,
	str	r0, [r3, #4]	@ tmp169,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L69:
	cmp	r1, #1	@ D.14855,
	beq	.L64	@,
	ldr	r2, [r3, #4]	@ tmp145,
	mov	r1, #4	@ tmp146,
	bfi	r2, r1, #4, #4	@ tmp145, tmp146,,
	str	r2, [r3, #4]	@ tmp145,
	ldr	ip, [r3, #4]	@ tmp147,
	orr	r0, ip, #8	@ tmp167, tmp147,
	str	r0, [r3, #4]	@ tmp167,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L64:
	bl	AOP_DestroyChn	@
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	add	r5, r5, #8	@ tmp160, Id,
	str	r6, [r4, r5, asl #2]	@ tmp142, g_stAopRm.hAop
	ldr	lr, [r3, #4]	@ D.14874,
	ands	r2, lr, #8	@ tmp163, D.14874,
	beq	.L70	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L65:
	ldr	r3, [r4, r5, asl #2]	@ pAopReg, g_stAopRm.hwAopReg
	ldr	lr, [r3, #4]	@ D.14867,
	tst	lr, #8	@ D.14867,
	bne	.L66	@,
	ldr	r2, [r3, #4]	@ tmp154,
	mov	r1, #1	@ tmp155,
	bfi	r2, r1, #4, #4	@ tmp154, tmp155,,
	str	r2, [r3, #4]	@ tmp154,
	ldr	ip, [r3, #4]	@ tmp156,
	orr	r0, ip, #8	@ tmp168, tmp156,
	str	r0, [r3, #4]	@ tmp168,
	b	.L68	@
	.fnend
	.size	AOPProcChnlCmd, .-AOPProcChnlCmd
	.align	2
	.global	AOP_Process
	.type	AOP_Process, %function
AOP_Process:
	.fnstart
.LFB894:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp245,
	movt	r4, #:upper16:.LANCHOR0	@ tmp245,
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #0	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #32]	@ state.704, g_stAopRm.hAop
	ldr	r2, [r4, #0]	@ pAopReg.702, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.704,
	beq	.L72	@,
	mov	lr, #0	@ tmp175,
	str	lr, [r3, #0]	@ tmp175, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.709,
	ubfx	r2, r0, #16, #1	@ tmp181, temp.709,,
	str	r2, [r3, #8]	@ tmp181, <variable>.bMute
.L72:
	mov	r0, #0	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #0	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #1	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #36]	@ state.714, g_stAopRm.hAop
	ldr	r2, [r4, #4]	@ pAopReg.712, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.714,
	beq	.L73	@,
	mov	lr, #0	@ tmp184,
	str	lr, [r3, #0]	@ tmp184, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.719,
	ubfx	r2, r0, #16, #1	@ tmp190, temp.719,,
	str	r2, [r3, #8]	@ tmp190, <variable>.bMute
.L73:
	mov	r0, #1	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #1	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #2	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #40]	@ state.724, g_stAopRm.hAop
	ldr	r2, [r4, #8]	@ pAopReg.722, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.724,
	beq	.L74	@,
	mov	lr, #0	@ tmp193,
	str	lr, [r3, #0]	@ tmp193, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.729,
	ubfx	r2, r0, #16, #1	@ tmp199, temp.729,,
	str	r2, [r3, #8]	@ tmp199, <variable>.bMute
.L74:
	mov	r0, #2	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #2	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, #3	@,
	mov	r2, #65	@,
	mov	r1, r0	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #44]	@ state.734, g_stAopRm.hAop
	ldr	r2, [r4, #12]	@ pAopReg.732, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.734,
	beq	.L75	@,
	mov	lr, #0	@ tmp202,
	str	lr, [r3, #0]	@ tmp202, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.739,
	ubfx	r2, r0, #16, #1	@ tmp208, temp.739,,
	str	r2, [r3, #8]	@ tmp208, <variable>.bMute
.L75:
	mov	r0, #3	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, r0	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #4	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #48]	@ state.744, g_stAopRm.hAop
	ldr	r2, [r4, #16]	@ pAopReg.742, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.744,
	beq	.L76	@,
	mov	lr, #0	@ tmp211,
	str	lr, [r3, #0]	@ tmp211, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.749,
	ubfx	r2, r0, #16, #1	@ tmp217, temp.749,,
	str	r2, [r3, #8]	@ tmp217, <variable>.bMute
.L76:
	mov	r0, #4	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #4	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #5	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #52]	@ state.754, g_stAopRm.hAop
	ldr	r2, [r4, #20]	@ pAopReg.752, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.754,
	beq	.L77	@,
	mov	lr, #0	@ tmp220,
	str	lr, [r3, #0]	@ tmp220, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.759,
	ubfx	r2, r0, #16, #1	@ tmp226, temp.759,,
	str	r2, [r3, #8]	@ tmp226, <variable>.bMute
.L77:
	mov	r0, #5	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #5	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #6	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #56]	@ state.764, g_stAopRm.hAop
	ldr	r2, [r4, #24]	@ pAopReg.762, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state.764,
	beq	.L78	@,
	mov	lr, #0	@ tmp229,
	str	lr, [r3, #0]	@ tmp229, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ temp.769,
	ubfx	r2, r0, #16, #1	@ tmp235, temp.769,,
	str	r2, [r3, #8]	@ tmp235, <variable>.bMute
.L78:
	mov	r0, #6	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #6	@,
	mov	r2, #64	@,
	bl	TRACE_AOE_FSM	@
	mov	r2, #65	@,
	mov	r0, #3	@,
	mov	r1, #7	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #60]	@ state, g_stAopRm.hAop
	ldr	r2, [r4, #28]	@ pAopReg, g_stAopRm.hwAopReg
	cmp	r3, #0	@ state,
	beq	.L79	@,
	mov	lr, #0	@ tmp238,
	str	lr, [r3, #0]	@ tmp238, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #12]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.AOP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #4]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r1, [r2, #13]	@ zero_extendqisi2	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.AOP_EXT_CTRL.bits.volume_r
	strh	r1, [r3, #6]	@ movhi	@ <variable>.AOP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r0, [r2, #12]	@ D.14881,
	ubfx	r2, r0, #16, #1	@ tmp244, D.14881,,
	str	r2, [r3, #8]	@ tmp244, <variable>.bMute
.L79:
	mov	r0, #7	@,
	bl	AOPProcChnlCmd	@
	mov	r0, #3	@,
	mov	r1, #7	@,
	mov	r2, #64	@,
	ldmfd	sp!, {r4, lr}	@
	b	TRACE_AOE_FSM	@
	.fnend
	.size	AOP_Process, .-AOP_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAopRm, %object
	.size	g_stAopRm, 64
g_stAopRm:
	.space	64
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
