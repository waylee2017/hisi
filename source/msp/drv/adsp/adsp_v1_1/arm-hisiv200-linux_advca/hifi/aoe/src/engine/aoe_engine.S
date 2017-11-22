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
	.file	"aoe_engine.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I./../../../source/common/include -I./../../../source/common/api/include
@ -I./../../../source/common/drv/include -I./../../../source/msp/include
@ -I./../../../source/msp/api/include -I./../../../source/msp/drv/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I./../../../source/component/ha_codec/include -I
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1 -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(aoe_engine)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/.aoe_engine.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/engine/aoe_engine.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fverbose-asm
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
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	ENGINEUpdateChnPreGainState
	.type	ENGINEUpdateChnPreGainState, %function
ENGINEUpdateChnPreGainState:
	.fnstart
.LFB1028:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r1, #4]	@ D.15836,
	ubfx	r3, r2, #10, #1	@ tmp142, D.15836,,
	str	r3, [r0, #80]	@ tmp142, <variable>.stPregain.bPreGainEnable
	ldr	ip, [r1, #4]	@ tmp143,
	ubfx	r2, ip, #11, #8	@ D.15839, tmp143,,
	str	r2, [r0, #84]	@ D.15839, <variable>.stPregain.u32PreGainInt
	ldr	r3, [r1, #4]	@ D.15841,
	tst	r3, #134217728	@ D.15841,
	beq	.L6	@,
	ldr	r3, [r1, #4]	@ D.15848,
	tst	r3, #134217728	@ D.15848,
	ldrne	r3, [r1, #4]	@ tmp149,
	ubfxne	r3, r3, #19, #8	@ D.15852, tmp149,,
	rsbne	r3, r3, #0	@ tmp151, D.15852
	strne	r3, [r0, #88]	@ tmp151, <variable>.stPregain.s32PreGainDec
	bx	lr	@
.L6:
	ldr	ip, [r1, #4]	@ tmp146,
	ubfx	r1, ip, #19, #8	@ D.15845, tmp146,,
	str	r1, [r0, #88]	@ D.15845, <variable>.stPregain.s32PreGainDec
	bx	lr	@
	.fnend
	.size	ENGINEUpdateChnPreGainState, .-ENGINEUpdateChnPreGainState
	.align	2
	.global	ENGINE_GetChnCmd
	.type	ENGINE_GetChnCmd, %function
ENGINE_GetChnCmd:
	.fnstart
.LFB1030:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ D.15878,
	tst	r2, #8	@ D.15878,
	movne	r0, #2	@ eNewCmd,
	bne	.L9	@,
	ldr	r0, [r3, #4]	@ tmp142,
	ands	r0, r0, #3	@ D.15882, tmp142,
	beq	.L9	@,
	cmp	r0, #1	@ D.15882,
	beq	.L9	@,
	ldr	r2, [r3, #4]	@ tmp144,
	mov	ip, #4	@ tmp145,
	mov	r0, #2	@ eNewCmd,
	bfi	r2, ip, #4, #4	@ tmp144, tmp145,,
	str	r2, [r3, #4]	@ tmp144,
	ldr	r2, [r3, #4]	@ tmp146,
	orr	ip, r2, #8	@ tmp149, tmp146,
	str	ip, [r3, #4]	@ tmp149,
.L9:
	str	r0, [r1, #0]	@ eNewCmd,* newcmd
	bx	lr	@
	.fnend
	.size	ENGINE_GetChnCmd, .-ENGINE_GetChnCmd
	.align	2
	.global	ENGINEAckCmd
	.type	ENGINEAckCmd, %function
ENGINEAckCmd:
	.fnstart
.LFB1031:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r2, [r3, #4]	@ D.15891,
	tst	r2, #8	@ D.15891,
	bxne	lr	@
	ldr	ip, [r3, #4]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #4]	@ tmp142,
	ldr	r1, [r3, #4]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #4]	@ tmp145,
	bx	lr	@
	.fnend
	.size	ENGINEAckCmd, .-ENGINEAckCmd
	.align	2
	.global	ENGINEProcChnStopCmd
	.type	ENGINEProcChnStopCmd, %function
ENGINEProcChnStopCmd:
	.fnstart
.LFB1043:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	add	r2, r0, #6	@ tmp138, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r2, [r3, r2, asl #2]	@ state, g_stEneRm.hEne
	cmp	r2, #0	@ state,
	bxeq	lr	@
	ldr	r1, [r2, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r1, #1	@ <variable>.CurStatus,
	moveq	r1, #0	@ tmp140,
	streq	r1, [r2, #76]	@ tmp140, <variable>.CurStatus
	ldr	r3, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r0, [r3, #4]	@ D.16466,
	ands	r2, r0, #8	@ tmp142, D.16466,
	bxne	lr	@
	ldr	r0, [r3, #4]	@ tmp143,
	bfi	r0, r2, #4, #4	@ tmp143, tmp142,,
	str	r0, [r3, #4]	@ tmp143,
	ldr	r2, [r3, #4]	@ tmp144,
	orr	ip, r2, #8	@ tmp147, tmp144,
	str	ip, [r3, #4]	@ tmp147,
	bx	lr	@
	.fnend
	.size	ENGINEProcChnStopCmd, .-ENGINEProcChnStopCmd
	.align	2
	.global	ENGINEGetCunrStatus
	.type	ENGINEGetCunrStatus, %function
ENGINEGetCunrStatus:
	.fnstart
.LFB1048:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #6	@ tmp138, Id,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	moveq	r0, #2	@ D.16380,
	ldrne	r0, [r3, #76]	@ D.16380, <variable>.CurStatus
	bx	lr	@
	.fnend
	.size	ENGINEGetCunrStatus, .-ENGINEGetCunrStatus
	.align	2
	.global	ENGINESwResetReg
	.type	ENGINESwResetReg, %function
ENGINESwResetReg:
	.fnstart
.LFB1050:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #32	@,
	mov	r4, r0	@ pEneReg, pEneReg
	bl	__memzero	@
	ldr	r1, [r4, #4]	@ tmp134,
	mov	r2, #1	@ tmp137,
	orr	r0, r1, #8	@ tmp138, tmp134,
	str	r0, [r4, #4]	@ tmp138,
	ldr	r3, [r4, #4]	@ tmp136,
	bfi	r3, r2, #0, #2	@ tmp136, tmp137,,
	str	r3, [r4, #4]	@ tmp136,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ENGINESwResetReg, .-ENGINESwResetReg
	.align	2
	.global	ENGINE_Init
	.type	ENGINE_Init, %function
ENGINE_Init:
	.fnstart
.LFB1052:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ u32EngineRegBase, u32EngineRegBase
	mov	r5, #0	@ tmp142,
	str	r0, [r4, #0]	@ u32EngineRegBase, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r0, r6, #32	@ temp.497, u32EngineRegBase,
	str	r5, [r4, #24]	@ tmp142, g_stEneRm.hEne
	str	r0, [r4, #4]	@ temp.497, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r2, r6, #64	@ temp.499, u32EngineRegBase,
	str	r5, [r4, #28]	@ tmp142, g_stEneRm.hEne
	str	r2, [r4, #8]	@ temp.499, g_stEneRm.hwEneReg
	mov	r0, r2	@, temp.499
	bl	ENGINESwResetReg	@
	add	r1, r6, #96	@ temp.501, u32EngineRegBase,
	str	r5, [r4, #32]	@ tmp142, g_stEneRm.hEne
	mov	r0, r1	@, temp.501
	str	r1, [r4, #12]	@ temp.501, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	add	r3, r6, #128	@ temp.503, u32EngineRegBase,
	add	r6, r6, #160	@ D.16424, u32EngineRegBase,
	str	r3, [r4, #16]	@ temp.503, g_stEneRm.hwEneReg
	mov	r0, r3	@, temp.503
	str	r5, [r4, #36]	@ tmp142, g_stEneRm.hEne
	bl	ENGINESwResetReg	@
	mov	r0, r6	@, D.16424
	str	r5, [r4, #40]	@ tmp142, g_stEneRm.hEne
	str	r6, [r4, #20]	@ D.16424, g_stEneRm.hwEneReg
	bl	ENGINESwResetReg	@
	str	r5, [r4, #44]	@ tmp142, g_stEneRm.hEne
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ENGINE_Init, .-ENGINE_Init
	.align	2
	.global	ENGINEUpdateChnAopState
	.type	ENGINEUpdateChnAopState, %function
ENGINEUpdateChnAopState:
	.fnstart
.LFB1047:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, #72]	@, <variable>.SamplePerFrame
	.pad #36
	sub	sp, sp, #36	@,,
	tst	r1, #1	@ AopFlag,
	ldr	fp, [r0, #0]	@ SourceBitPerSample, <variable>.stAttr.u32BitPerSample
	mov	r4, r1	@ AopFlag, AopFlag
	mov	r5, r0	@ state, state
	str	r3, [sp, #4]	@, %sfp
	bne	.L98	@,
.L31:
	mov	r6, #0	@ AopBufFreeFlag,
	mov	r7, r6	@ AopNeedUnifyMask, AopBufFreeFlag
	mov	sl, r6	@ AopNoneUnifyMask, AopBufFreeFlag
	mov	r9, r6	@ AopHiPriorityFlag, AopBufFreeFlag
	mov	r8, r6	@ AopLoPriorityFlag, AopBufFreeFlag
.L35:
	tst	r4, #2	@ AopFlag,
	bne	.L99	@,
.L38:
	tst	r4, #4	@ AopFlag,
	bne	.L100	@,
.L45:
	tst	r4, #8	@ AopFlag,
	bne	.L101	@,
.L52:
	tst	r4, #16	@ AopFlag,
	bne	.L102	@,
.L59:
	tst	r4, #32	@ AopFlag,
	bne	.L103	@,
.L66:
	tst	r4, #64	@ AopFlag,
	bne	.L104	@,
.L73:
	tst	r4, #128	@ AopFlag,
	bne	.L105	@,
.L80:
	str	r6, [r5, #52]	@ AopBufFreeFlag, <variable>.AopBufFreeFlag
	str	r4, [r5, #32]	@ AopFlag, <variable>.AopMask
	str	r9, [r5, #36]	@ AopHiPriorityFlag, <variable>.AopHiPriorityMask
	str	r8, [r5, #40]	@ AopLoPriorityFlag, <variable>.AopLoPriorityMask
	str	sl, [r5, #44]	@ AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	str	r7, [r5, #48]	@ AopNeedUnifyMask, <variable>.AopNeedUnifyMask
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L98:
	mov	r0, #0	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r0, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	bne	.L31	@,
	ldr	r9, [sp, #16]	@ status.Priority, status.Priority
	mov	r0, #0	@,
	ldr	r6, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r9, #1	@ status.Priority,
	ldr	r1, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	ldr	r2, [sp, #4]	@, %sfp
	movne	r9, r0	@, AopHiPriorityFlag,
	moveq	r8, #0	@, AopLoPriorityFlag
	movne	r8, #1	@, AopLoPriorityFlag
	cmp	r6, fp	@ status.u32BitPerSample, SourceBitPerSample
	mul	r1, r1, r2	@, status.uFrameSize,
	movne	sl, #0	@, AopNoneUnifyMask
	moveq	sl, #1	@, AopNoneUnifyMask
	moveq	r7, #0	@, AopNeedUnifyMask
	movne	r7, #1	@, AopNeedUnifyMask
	bl	AOP_QueryRbfFree	@
	subs	r6, r0, #0	@ AopBufFreeFlag,,
	movne	r6, #1	@ AopBufFreeFlag
	b	.L35	@
.L105:
	mov	r0, #7	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r0, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	bne	.L80	@,
	ldr	r2, [sp, #16]	@ status.Priority, status.Priority
	mov	r0, #7	@,
	ldr	lr, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r2, #1	@ status.Priority,
	ldr	r1, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	orreq	r9, r9, #128	@ AopHiPriorityFlag, AopHiPriorityFlag,
	orrne	r8, r8, #128	@ AopLoPriorityFlag, AopLoPriorityFlag,
	cmp	r1, fp	@ status.u32BitPerSample, SourceBitPerSample
	mul	r1, lr, r3	@, status.uFrameSize,
	orreq	sl, sl, #128	@ AopNoneUnifyMask, AopNoneUnifyMask,
	orrne	r7, r7, #128	@ AopNeedUnifyMask, AopNeedUnifyMask,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #128	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L80	@
.L104:
	mov	r0, #6	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r0, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	bne	.L73	@,
	ldr	r3, [sp, #16]	@ status.Priority, status.Priority
	cmp	r3, #1	@ status.Priority,
	orrne	r8, r8, #64	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L106	@,
.L79:
	ldr	r1, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r1, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #64	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L107	@,
.L78:
	ldr	r2, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #6	@,
	ldr	ip, [sp, #4]	@, %sfp
	mul	r1, r2, ip	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #64	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L73	@
.L103:
	mov	r0, #5	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r3, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	bne	.L66	@,
	ldr	r1, [sp, #16]	@ status.Priority, status.Priority
	cmp	r1, #1	@ status.Priority,
	orrne	r8, r8, #32	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L108	@,
.L72:
	ldr	r2, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r2, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #32	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L109	@,
.L71:
	ldr	ip, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #5	@,
	ldr	lr, [sp, #4]	@, %sfp
	mul	r1, ip, lr	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #32	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L66	@
.L102:
	add	r1, sp, #12	@,,
	mov	r0, #4	@,
	bl	AOP_GetChnStatus	@
	ldr	r1, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r1, #1	@ status.CurnStatus,
	bne	.L59	@,
	ldr	r2, [sp, #16]	@ status.Priority, status.Priority
	cmp	r2, #1	@ status.Priority,
	orrne	r8, r8, #16	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L110	@,
.L65:
	ldr	r0, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r0, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #16	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L111	@,
.L64:
	ldr	ip, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #4	@,
	ldr	lr, [sp, #4]	@, %sfp
	mul	r1, ip, lr	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #16	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L59	@
.L101:
	mov	r0, #3	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r2, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r2, #1	@ status.CurnStatus,
	bne	.L52	@,
	ldr	r0, [sp, #16]	@ status.Priority, status.Priority
	cmp	r0, #1	@ status.Priority,
	orrne	r8, r8, #8	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L112	@,
.L58:
	ldr	ip, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	ip, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #8	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L113	@,
.L57:
	ldr	lr, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #3	@,
	ldr	r3, [sp, #4]	@, %sfp
	mul	r1, lr, r3	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #8	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L52	@
.L100:
	mov	r0, #2	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	r0, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	bne	.L45	@,
	ldr	ip, [sp, #16]	@ status.Priority, status.Priority
	cmp	ip, #1	@ status.Priority,
	orrne	r8, r8, #4	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L114	@,
.L51:
	ldr	lr, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	lr, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #4	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L115	@,
.L50:
	ldr	r1, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #2	@,
	ldr	r3, [sp, #4]	@, %sfp
	mul	r1, r1, r3	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #4	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L45	@
.L99:
	mov	r0, #1	@,
	add	r1, sp, #12	@,,
	bl	AOP_GetChnStatus	@
	ldr	ip, [sp, #12]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	bne	.L38	@,
	ldr	lr, [sp, #16]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r8, r8, #2	@ AopLoPriorityFlag, AopLoPriorityFlag,
	beq	.L116	@,
.L44:
	ldr	r3, [sp, #20]	@ status.u32BitPerSample, status.u32BitPerSample
	cmp	r3, fp	@ status.u32BitPerSample, SourceBitPerSample
	orrne	r7, r7, #2	@ AopNeedUnifyMask, AopNeedUnifyMask,
	beq	.L117	@,
.L43:
	ldr	r1, [sp, #24]	@ status.uFrameSize, status.uFrameSize
	mov	r0, #1	@,
	ldr	r2, [sp, #4]	@, %sfp
	mul	r1, r1, r2	@, status.uFrameSize,
	bl	AOP_QueryRbfFree	@
	cmp	r0, #0	@,
	orrne	r6, r6, #2	@ AopBufFreeFlag, AopBufFreeFlag,
	b	.L38	@
.L116:
	orr	r9, r9, #2	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L44	@
.L107:
	orr	sl, sl, #64	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L78	@
.L106:
	orr	r9, r9, #64	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L79	@
.L109:
	orr	sl, sl, #32	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L71	@
.L108:
	orr	r9, r9, #32	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L72	@
.L111:
	orr	sl, sl, #16	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L64	@
.L110:
	orr	r9, r9, #16	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L65	@
.L113:
	orr	sl, sl, #8	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L57	@
.L112:
	orr	r9, r9, #8	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L58	@
.L115:
	orr	sl, sl, #4	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L50	@
.L114:
	orr	r9, r9, #4	@ AopHiPriorityFlag, AopHiPriorityFlag,
	b	.L51	@
.L117:
	orr	sl, sl, #2	@ AopNoneUnifyMask, AopNoneUnifyMask,
	b	.L43	@
	.fnend
	.size	ENGINEUpdateChnAopState, .-ENGINEUpdateChnAopState
	.align	2
	.global	ENGINEUpdateChnAipState
	.type	ENGINEUpdateChnAipState, %function
ENGINEUpdateChnAipState:
	.fnstart
.LFB1046:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r1, #1	@ AipFlag,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ AipFlag, AipFlag
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ state, state
	bne	.L174	@,
.L119:
	mov	r6, #0	@ AipHiPriorityFlag,
	mov	r7, r6	@ AipLoPriorityFlag, AipHiPriorityFlag
	mov	r8, r6	@ AipBufDataFlag, AipHiPriorityFlag
.L122:
	tst	r4, #2	@ AipFlag,
	bne	.L175	@,
.L126:
	tst	r4, #4	@ AipFlag,
	bne	.L176	@,
.L132:
	tst	r4, #8	@ AipFlag,
	bne	.L177	@,
.L138:
	tst	r4, #16	@ AipFlag,
	bne	.L178	@,
.L144:
	tst	r4, #32	@ AipFlag,
	bne	.L179	@,
.L150:
	tst	r4, #64	@ AipFlag,
	bne	.L180	@,
.L156:
	tst	r4, #128	@ AipFlag,
	bne	.L181	@,
.L162:
	str	r8, [r5, #28]	@ AipBufDataFlag, <variable>.AipBufDataFlag
	str	r4, [r5, #16]	@ AipFlag, <variable>.AipMask
	str	r6, [r5, #20]	@ AipHiPriorityFlag, <variable>.AipHiPriorityMask
	str	r7, [r5, #24]	@ AipLoPriorityFlag, <variable>.AipLoPriorityMask
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L174:
	mov	r0, #0	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	r8, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r8, #1	@ status.CurnStatus,
	beq	.L120	@,
	mov	r0, #0	@,
	ldr	r6, [r5, #64]	@ blocksize.618, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	r6, r0	@ blocksize.618,
	bcs	.L119	@,
	cmp	r6, #0	@ blocksize.618,
	beq	.L119	@,
	ldr	r6, [sp, #4]	@ status.Priority, status.Priority
	cmp	r6, #1	@ status.Priority,
	movne	r7, #1	@ AipLoPriorityFlag,
	movne	r6, #0	@ AipHiPriorityFlag,
	movne	r8, r7	@ AipBufDataFlag, AipLoPriorityFlag
	moveq	r7, #0	@ AipLoPriorityFlag,
	moveq	r8, r6	@ AipBufDataFlag, AipHiPriorityFlag
	b	.L122	@
.L181:
	mov	r0, #7	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	ip, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	ip, #1	@ status.CurnStatus,
	beq	.L182	@,
	mov	r0, #7	@,
	ldr	sl, [r5, #64]	@ blocksize, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize,
	bcs	.L162	@,
	cmp	sl, #0	@ blocksize,
	beq	.L162	@,
	ldr	r3, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #128	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r3, #1	@ status.Priority,
	orreq	r6, r6, #128	@ AipHiPriorityFlag, AipHiPriorityFlag,
	orrne	r7, r7, #128	@ AipLoPriorityFlag, AipLoPriorityFlag,
	b	.L162	@
.L180:
	mov	r0, #6	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	r0, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r0, #1	@ status.CurnStatus,
	beq	.L157	@,
	mov	r0, #6	@,
	ldr	sl, [r5, #64]	@ blocksize.666, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.666,
	bcs	.L156	@,
	cmp	sl, #0	@ blocksize.666,
	beq	.L156	@,
	ldr	r1, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #64	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r1, #1	@ status.Priority,
	orrne	r7, r7, #64	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #64	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L156	@
.L179:
	mov	r0, #5	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	sl, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	sl, #1	@ status.CurnStatus,
	beq	.L151	@,
	mov	r0, #5	@,
	ldr	sl, [r5, #64]	@ blocksize.658, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.658,
	bcs	.L150	@,
	cmp	sl, #0	@ blocksize.658,
	beq	.L150	@,
	ldr	r3, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #32	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r3, #1	@ status.Priority,
	orrne	r7, r7, #32	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #32	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L150	@
.L178:
	mov	r1, sp	@,
	mov	r0, #4	@,
	bl	AIP_GetChnStatus	@
	ldr	r1, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r1, #1	@ status.CurnStatus,
	beq	.L145	@,
	mov	r0, #4	@,
	ldr	sl, [r5, #64]	@ blocksize.650, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.650,
	bcs	.L144	@,
	cmp	sl, #0	@ blocksize.650,
	beq	.L144	@,
	ldr	r2, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #16	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r2, #1	@ status.Priority,
	orrne	r7, r7, #16	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #16	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L144	@
.L177:
	mov	r0, #3	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	r3, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	beq	.L139	@,
	mov	r0, #3	@,
	ldr	sl, [r5, #64]	@ blocksize.642, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.642,
	bcs	.L138	@,
	cmp	sl, #0	@ blocksize.642,
	beq	.L138	@,
	ldr	lr, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #8	@ AipBufDataFlag, AipBufDataFlag,
	cmp	lr, #1	@ status.Priority,
	orrne	r7, r7, #8	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #8	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L138	@
.L176:
	mov	r0, #2	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	r2, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r2, #1	@ status.CurnStatus,
	beq	.L133	@,
	mov	r0, #2	@,
	ldr	sl, [r5, #64]	@ blocksize.634, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.634,
	bcs	.L132	@,
	cmp	sl, #0	@ blocksize.634,
	beq	.L132	@,
	ldr	ip, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #4	@ AipBufDataFlag, AipBufDataFlag,
	cmp	ip, #1	@ status.Priority,
	orrne	r7, r7, #4	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #4	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L132	@
.L175:
	mov	r0, #1	@,
	mov	r1, sp	@,
	bl	AIP_GetChnStatus	@
	ldr	r3, [sp, #0]	@ status.CurnStatus, status.CurnStatus
	cmp	r3, #1	@ status.CurnStatus,
	beq	.L127	@,
	mov	r0, #1	@,
	ldr	sl, [r5, #64]	@ blocksize.626, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.626,
	bcs	.L126	@,
	cmp	sl, #0	@ blocksize.626,
	beq	.L126	@,
	ldr	r0, [sp, #4]	@ status.Priority, status.Priority
	orr	r8, r8, #2	@ AipBufDataFlag, AipBufDataFlag,
	cmp	r0, #1	@ status.Priority,
	orrne	r7, r7, #2	@ AipLoPriorityFlag, AipLoPriorityFlag,
	orreq	r6, r6, #2	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L126	@
.L182:
	ldr	sl, [sp, #4]	@ status.Priority, status.Priority
	mov	r0, #7	@,
	cmp	sl, #1	@ status.Priority,
	ldr	sl, [r5, #64]	@ blocksize, <variable>.BlockSize
	orreq	r6, r6, #128	@ AipHiPriorityFlag, AipHiPriorityFlag,
	orrne	r7, r7, #128	@ AipLoPriorityFlag, AipLoPriorityFlag,
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize,
	bcs	.L162	@,
	cmp	sl, #0	@ blocksize,
	orrne	r8, r8, #128	@ AipBufDataFlag, AipBufDataFlag,
	b	.L162	@
.L120:
	ldr	r6, [sp, #4]	@ status.Priority, status.Priority
	mov	r0, #0	@,
	ldr	sl, [r5, #64]	@ blocksize.622, <variable>.BlockSize
	cmp	r6, #1	@ status.Priority,
	movne	r6, r0	@, AipHiPriorityFlag,
	moveq	r7, #0	@, AipLoPriorityFlag
	movne	r7, #1	@, AipLoPriorityFlag
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.622,
	bcs	.L124	@,
	cmp	sl, #0	@ blocksize.622,
	bne	.L122	@,
.L124:
	mov	r8, #0	@ AipBufDataFlag,
	b	.L122	@
.L151:
	ldr	lr, [sp, #4]	@ status.Priority, status.Priority
	cmp	lr, #1	@ status.Priority,
	orrne	r7, r7, #32	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L183	@,
.L155:
	mov	r0, #5	@,
	ldr	sl, [r5, #64]	@ blocksize.662, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.662,
	bcs	.L150	@,
	cmp	sl, #0	@ blocksize.662,
	orrne	r8, r8, #32	@ AipBufDataFlag, AipBufDataFlag,
	b	.L150	@
.L157:
	ldr	r2, [sp, #4]	@ status.Priority, status.Priority
	cmp	r2, #1	@ status.Priority,
	orrne	r7, r7, #64	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L184	@,
.L161:
	mov	r0, #6	@,
	ldr	sl, [r5, #64]	@ blocksize.670, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.670,
	bcs	.L156	@,
	cmp	sl, #0	@ blocksize.670,
	orrne	r8, r8, #64	@ AipBufDataFlag, AipBufDataFlag,
	b	.L156	@
.L139:
	ldr	r0, [sp, #4]	@ status.Priority, status.Priority
	cmp	r0, #1	@ status.Priority,
	orrne	r7, r7, #8	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L185	@,
.L143:
	mov	r0, #3	@,
	ldr	sl, [r5, #64]	@ blocksize.646, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.646,
	bcs	.L138	@,
	cmp	sl, #0	@ blocksize.646,
	orrne	r8, r8, #8	@ AipBufDataFlag, AipBufDataFlag,
	b	.L138	@
.L145:
	ldr	ip, [sp, #4]	@ status.Priority, status.Priority
	cmp	ip, #1	@ status.Priority,
	orrne	r7, r7, #16	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L186	@,
.L149:
	mov	r0, #4	@,
	ldr	sl, [r5, #64]	@ blocksize.654, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.654,
	bcs	.L144	@,
	cmp	sl, #0	@ blocksize.654,
	orrne	r8, r8, #16	@ AipBufDataFlag, AipBufDataFlag,
	b	.L144	@
.L127:
	ldr	r1, [sp, #4]	@ status.Priority, status.Priority
	cmp	r1, #1	@ status.Priority,
	orrne	r7, r7, #2	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L187	@,
.L131:
	mov	r0, #1	@,
	ldr	sl, [r5, #64]	@ blocksize.630, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.630,
	bcs	.L126	@,
	cmp	sl, #0	@ blocksize.630,
	orrne	r8, r8, #2	@ AipBufDataFlag, AipBufDataFlag,
	b	.L126	@
.L133:
	ldr	sl, [sp, #4]	@ status.Priority, status.Priority
	cmp	sl, #1	@ status.Priority,
	orrne	r7, r7, #4	@ AipLoPriorityFlag, AipLoPriorityFlag,
	beq	.L188	@,
.L137:
	mov	r0, #2	@,
	ldr	sl, [r5, #64]	@ blocksize.638, <variable>.BlockSize
	bl	AIP_QueryFiFoBusy	@
	cmp	sl, r0	@ blocksize.638,
	bcs	.L132	@,
	cmp	sl, #0	@ blocksize.638,
	orrne	r8, r8, #4	@ AipBufDataFlag, AipBufDataFlag,
	b	.L132	@
.L183:
	orr	r6, r6, #32	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L155	@
.L188:
	orr	r6, r6, #4	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L137	@
.L187:
	orr	r6, r6, #2	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L131	@
.L186:
	orr	r6, r6, #16	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L149	@
.L185:
	orr	r6, r6, #8	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L143	@
.L184:
	orr	r6, r6, #64	@ AipHiPriorityFlag, AipHiPriorityFlag,
	b	.L161	@
	.fnend
	.size	ENGINEUpdateChnAipState, .-ENGINEUpdateChnAipState
	.align	2
	.global	ENGINEDestroyChn
	.type	ENGINEDestroyChn, %function
ENGINEDestroyChn:
	.fnstart
.LFB1035:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, [r4, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	cmp	r3, #0	@ <variable>.stAttr.u32DataFormat,
	bne	.L191	@,
	ldr	r1, [r4, #96]	@ D.16480, <variable>.pAVCStrBuf
	cmp	r1, #0	@ D.16480,
	beq	.L191	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
.L191:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
	.fnend
	.size	ENGINEDestroyChn, .-ENGINEDestroyChn
	.align	2
	.global	ENGINE_DeInit
	.type	ENGINE_DeInit, %function
ENGINE_DeInit:
	.fnstart
.LFB1053:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r5, #0	@ tmp136,
	ldr	r0, [r4, #24]	@, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #28]	@, g_stEneRm.hEne
	str	r5, [r4, #24]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #32]	@, g_stEneRm.hEne
	str	r5, [r4, #28]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #36]	@, g_stEneRm.hEne
	str	r5, [r4, #32]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #40]	@, g_stEneRm.hEne
	str	r5, [r4, #36]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	ldr	r0, [r4, #44]	@, g_stEneRm.hEne
	str	r5, [r4, #40]	@ tmp136, g_stEneRm.hEne
	bl	ENGINEDestroyChn	@
	str	r5, [r4, #44]	@ tmp136, g_stEneRm.hEne
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ENGINE_DeInit, .-ENGINE_DeInit
	.align	2
	.global	ENGINEGainPcmData
	.type	ENGINEGainPcmData, %function
ENGINEGainPcmData:
	.fnstart
.LFB1029:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	mov	r3, r0	@ state, state
	cmp	r2, #0	@ <variable>.stAttr.u32DataFormat,
	bxne	lr	@
	ldr	r0, [r0, #80]	@ <variable>.stPregain.bPreGainEnable, <variable>.stPregain.bPreGainEnable
	cmp	r0, #0	@ <variable>.stPregain.bPreGainEnable,
	bxeq	lr	@
	mov	r0, r1	@, pstFrame
	ldr	r2, [r3, #88]	@, <variable>.stPregain.s32PreGainDec
	ldr	r1, [r3, #84]	@, <variable>.stPregain.u32PreGainInt
	b	UTIL_PreLRGainProcess	@
	.fnend
	.size	ENGINEGainPcmData, .-ENGINEGainPcmData
	.align	2
	.type	ENGINEOutFrame, %function
ENGINEOutFrame:
	.fnstart
.LFB1039:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r0, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	ldr	r4, [r0, #36]	@ prephitmp.764, <variable>.AopHiPriorityMask
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r3, [r0, #40]	@ <variable>.AopLoPriorityMask, <variable>.AopLoPriorityMask
	cmp	r2, #0	@ <variable>.stAttr.u32DataFormat,
	ldr	r6, [r1, #0]	@ D.16122, <variable>.pDataBuf
	mov	r5, r0	@ state, state
	mov	r7, r1	@ pstFrame, pstFrame
	str	r4, [sp, #56]	@ prephitmp.764, PriorityMaskTab
	str	r3, [sp, #60]	@ <variable>.AopLoPriorityMask, PriorityMaskTab
	bne	.L199	@,
	ldr	r0, [r0, #104]	@ <variable>.bAVCEnable, <variable>.bAVCEnable
	cmp	r0, #0	@ <variable>.bAVCEnable,
	bne	.L219	@,
.L199:
	mov	r0, r5	@, state
	mov	r1, r7	@, pstFrame
	bl	ENGINEGainPcmData	@
	tst	r4, #1	@ prephitmp.764,
	add	r8, sp, #36	@ tmp304,,
	add	sl, sp, #4	@ tmp305,,
	add	r9, sp, #56	@ tmp311,,
	mov	r6, #0	@ ivtmp.793,
	bne	.L220	@,
.L200:
	tst	r4, #2	@ prephitmp.764,
	bne	.L221	@,
.L202:
	tst	r4, #4	@ prephitmp.764,
	bne	.L222	@,
.L204:
	tst	r4, #8	@ prephitmp.764,
	bne	.L223	@,
.L206:
	tst	r4, #16	@ prephitmp.764,
	bne	.L224	@,
.L208:
	tst	r4, #32	@ prephitmp.764,
	bne	.L225	@,
.L210:
	tst	r4, #64	@ prephitmp.764,
	bne	.L226	@,
.L212:
	tst	r4, #128	@ prephitmp.764,
	bne	.L227	@,
.L214:
	add	r6, r6, #4	@ ivtmp.793, ivtmp.793,
	cmp	r6, #8	@ ivtmp.793,
	beq	.L218	@,
	ldr	r4, [r9, r6]	@ prephitmp.764, PriorityMaskTab
	tst	r4, #1	@ prephitmp.764,
	beq	.L200	@,
.L220:
	mov	r0, #0	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r1, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r1, #1	@ <variable>.AopBufFreeFlag,
	beq	.L200	@,
	mov	r0, #0	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, #0	@,
	mov	r1, r8	@, tmp304
	bl	AOP_GetChnStatus	@
	ldr	fp, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	ands	fp, fp, #1	@ tmp194, <variable>.AopNoneUnifyMask,
	bne	.L201	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp313, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp313,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp313,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.805,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, fp	@, tmp194
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L200	@
.L218:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L227:
	mov	r0, #7	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r3, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r3, #128	@ <variable>.AopBufFreeFlag,
	beq	.L214	@,
	mov	r0, #7	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, #7	@,
	mov	r1, r8	@, tmp304
	bl	AOP_GetChnStatus	@
	ldr	r2, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r2, #128	@ <variable>.AopNoneUnifyMask,
	beq	.L215	@,
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #7	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L214	@
.L226:
	mov	r0, #6	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r0, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r0, #64	@ <variable>.AopBufFreeFlag,
	beq	.L212	@,
	mov	r0, #6	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r1, r8	@, tmp304
	mov	r0, #6	@,
	bl	AOP_GetChnStatus	@
	ldr	r1, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r1, #64	@ <variable>.AopNoneUnifyMask,
	bne	.L213	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp325, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp325,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp325,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.895,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #6	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L212	@
.L225:
	mov	r0, #5	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r3, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r3, #32	@ <variable>.AopBufFreeFlag,
	beq	.L210	@,
	mov	r0, #5	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, #5	@,
	mov	r1, r8	@, tmp304
	bl	AOP_GetChnStatus	@
	ldr	r2, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r2, #32	@ <variable>.AopNoneUnifyMask,
	bne	.L211	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp323, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp323,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp323,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.880,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #5	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L210	@
.L224:
	mov	r0, #4	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r0, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r0, #16	@ <variable>.AopBufFreeFlag,
	beq	.L208	@,
	mov	r0, #4	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r1, r8	@, tmp304
	mov	r0, #4	@,
	bl	AOP_GetChnStatus	@
	ldr	r1, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r1, #16	@ <variable>.AopNoneUnifyMask,
	bne	.L209	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp321, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp321,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp321,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.865,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #4	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L208	@
.L223:
	mov	r0, #3	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r3, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r3, #8	@ <variable>.AopBufFreeFlag,
	beq	.L206	@,
	mov	r0, #3	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, #3	@,
	mov	r1, r8	@, tmp304
	bl	AOP_GetChnStatus	@
	ldr	r2, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r2, #8	@ <variable>.AopNoneUnifyMask,
	bne	.L207	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp319, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp319,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp319,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.850,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #3	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L206	@
.L222:
	mov	r0, #2	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r0, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r0, #4	@ <variable>.AopBufFreeFlag,
	beq	.L204	@,
	mov	r0, #2	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r1, r8	@, tmp304
	mov	r0, #2	@,
	bl	AOP_GetChnStatus	@
	ldr	r1, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r1, #4	@ <variable>.AopNoneUnifyMask,
	bne	.L205	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp317, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp317,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp317,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.835,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #2	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L204	@
.L221:
	mov	r0, #1	@,
	bl	AOP_WriteBuffProcTryCnt	@
	ldr	r3, [r5, #52]	@ <variable>.AopBufFreeFlag, <variable>.AopBufFreeFlag
	tst	r3, #2	@ <variable>.AopBufFreeFlag,
	beq	.L202	@,
	mov	r0, #1	@,
	bl	AOP_WriteBuffProcOKCnt	@
	mov	r0, #1	@,
	mov	r1, r8	@, tmp304
	bl	AOP_GetChnStatus	@
	ldr	r2, [r5, #44]	@ <variable>.AopNoneUnifyMask, <variable>.AopNoneUnifyMask
	tst	r2, #2	@ <variable>.AopNoneUnifyMask,
	bne	.L203	@,
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp315, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp315,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp315,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ temp.820,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #1	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L202	@
.L219:
	bl	AOE_GetWKBuf	@
	mov	r1, r6	@, D.16122
	mov	r8, r0	@ D.16487,
	ldr	r0, [r5, #92]	@, <variable>.pAVCHandle
	mov	r2, r8	@, D.16487
	bl	iMedia_AVC_Apply	@
	cmp	r0, #0	@,
	bne	.L199	@,
	mov	r1, r8	@, D.16487
	ldr	r2, [r5, #64]	@, <variable>.BlockSize
	mov	r0, r6	@, D.16122
	bl	memcpy	@
	bl	AOE_ReleaseWKBuf	@
	b	.L199	@
.L201:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #0	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L200	@
.L213:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #6	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L212	@
.L215:
	mov	lr, r7	@ pstFrame, pstFrame
	mov	ip, sl	@ tmp327, tmp305
	ldmia	lr!, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp327,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ pstFrame,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp327,,,,
	bl	AOE_GetWKBuf	@
	mov	r2, sl	@, tmp305
	mov	r1, r0	@ D.16143,
	ldr	r0, [sp, #44]	@, AopStatus.u32BitPerSample
	bl	UTIL_UnifyBitDepthPcmData	@
	ldr	r1, [sp, #4]	@, stUnfFrame.pDataBuf
	ldr	r2, [sp, #12]	@, stUnfFrame.u32DataBytes
	mov	r0, #7	@,
	bl	AOP_WriteRbfData	@
	bl	AOE_ReleaseWKBuf	@
	b	.L214	@
.L209:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #4	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L208	@
.L211:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #5	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L210	@
.L207:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #3	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L206	@
.L203:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #1	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L202	@
.L205:
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	mov	r0, #2	@,
	ldr	r2, [r7, #8]	@, <variable>.u32DataBytes
	bl	AOP_WriteRbfData	@
	b	.L204	@
	.fnend
	.size	ENGINEOutFrame, .-ENGINEOutFrame
	.global	__aeabi_uidiv
	.align	2
	.global	ENGINEProcChnData
	.type	ENGINEProcChnData, %function
ENGINEProcChnData:
	.fnstart
.LFB1042:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ state, state
	mov	r2, #34	@,
	ldr	r1, [r4, #60]	@, <variable>.EngineId
	.pad #92
	sub	sp, sp, #92	@,,
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	ldr	r3, [r4, #20]	@ D.16512, <variable>.AipHiPriorityMask
	ldr	r1, [r4, #24]	@ D.16511, <variable>.AipLoPriorityMask
	cmp	r3, #0	@ D.16512,
	ldr	r2, [r4, #28]	@ BufFreeFlag, <variable>.AipBufDataFlag
	beq	.L229	@,
	cmp	r1, #0	@ D.16511,
	beq	.L229	@,
	ands	r0, r3, #1	@ tmp167, D.16512,
	bne	.L356	@,
.L231:
	tst	r3, #2	@ D.16512,
	beq	.L233	@,
	tst	r2, #2	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L233:
	tst	r3, #4	@ D.16512,
	beq	.L235	@,
	tst	r2, #4	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L235:
	tst	r3, #8	@ D.16512,
	beq	.L236	@,
	tst	r2, #8	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L236:
	tst	r3, #16	@ D.16512,
	beq	.L237	@,
	tst	r2, #16	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L237:
	tst	r3, #32	@ D.16512,
	beq	.L238	@,
	tst	r2, #32	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L238:
	tst	r3, #64	@ D.16512,
	beq	.L239	@,
	tst	r2, #64	@ BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
.L239:
	tst	r3, #128	@ D.16512,
	bne	.L357	@,
.L240:
	tst	r1, #1	@ D.16511,
	bne	.L358	@,
.L241:
	tst	r1, #2	@ D.16511,
	beq	.L243	@,
	tst	r2, #2	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L243:
	tst	r1, #4	@ D.16511,
	beq	.L244	@,
	tst	r2, #4	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L244:
	tst	r1, #8	@ D.16511,
	beq	.L245	@,
	tst	r2, #8	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L245:
	tst	r1, #16	@ D.16511,
	beq	.L246	@,
	tst	r2, #16	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L246:
	tst	r1, #32	@ D.16511,
	beq	.L247	@,
	tst	r2, #32	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L247:
	tst	r1, #64	@ D.16511,
	beq	.L248	@,
	tst	r2, #64	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
.L248:
	tst	r1, #128	@ D.16511,
	beq	.L249	@,
	tst	r2, #128	@ BufFreeFlag,
	orrne	r0, r0, #2	@ Flag, Flag,
	beq	.L242	@,
.L249:
	tst	r0, #1	@ Flag,
	beq	.L328	@,
.L250:
	ldr	r0, [r4, #52]	@ BufFreeFlag, <variable>.AopBufFreeFlag
	ldr	r1, [r4, #36]	@ D.16534, <variable>.AopHiPriorityMask
	cmp	r0, #0	@ BufFreeFlag,
	ldr	r2, [r4, #40]	@ D.16533, <variable>.AopLoPriorityMask
	beq	.L328	@,
	cmp	r1, #0	@ D.16534,
	moveq	r3, r1	@ Flag, D.16534
	beq	.L253	@,
	ands	r3, r1, #1	@ tmp200, D.16534,
	beq	.L255	@,
	ands	r3, r0, #1	@ tmp201, BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L255:
	tst	r1, #2	@ D.16534,
	beq	.L257	@,
	tst	r0, #2	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L257:
	tst	r1, #4	@ D.16534,
	beq	.L259	@,
	tst	r0, #4	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L259:
	tst	r1, #8	@ D.16534,
	beq	.L260	@,
	tst	r0, #8	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L260:
	tst	r1, #16	@ D.16534,
	beq	.L261	@,
	tst	r0, #16	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L261:
	tst	r1, #32	@ D.16534,
	beq	.L262	@,
	tst	r0, #32	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L262:
	tst	r1, #64	@ D.16534,
	beq	.L263	@,
	tst	r0, #64	@ BufFreeFlag,
	beq	.L258	@,
	mov	r3, #1	@ Flag,
.L263:
	tst	r1, #128	@ D.16534,
	beq	.L253	@,
	tst	r0, #128	@ BufFreeFlag,
	movne	r3, #1	@ Flag,
	beq	.L258	@,
.L253:
	cmp	r2, #0	@ D.16533,
	beq	.L264	@,
	tst	r2, #1	@ D.16533,
	beq	.L265	@,
	tst	r0, #1	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L265:
	tst	r2, #2	@ D.16533,
	beq	.L267	@,
	tst	r0, #2	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L267:
	tst	r2, #4	@ D.16533,
	beq	.L268	@,
	tst	r0, #4	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L268:
	tst	r2, #8	@ D.16533,
	beq	.L269	@,
	tst	r0, #8	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L269:
	tst	r2, #16	@ D.16533,
	beq	.L270	@,
	tst	r0, #16	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L270:
	tst	r2, #32	@ D.16533,
	beq	.L271	@,
	tst	r0, #32	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L271:
	tst	r2, #64	@ D.16533,
	beq	.L272	@,
	tst	r0, #64	@ BufFreeFlag,
	beq	.L266	@,
	orr	r3, r3, #2	@ Flag, Flag,
.L272:
	tst	r2, #128	@ D.16533,
	beq	.L264	@,
	tst	r0, #128	@ BufFreeFlag,
	orrne	r3, r3, #2	@ Flag, Flag,
	beq	.L266	@,
.L264:
	cmp	r1, #0	@ D.16534,
	bne	.L359	@,
	cmp	r2, #0	@ D.16533,
	beq	.L328	@,
	tst	r3, #2	@ Flag,
	beq	.L328	@,
.L274:
	bl	AOE_FlushWKBuf	@
	mov	r2, #35	@,
	mov	r0, #2	@,
	ldr	r1, [r4, #60]	@, <variable>.EngineId
	bl	TRACE_AOE_FSM	@
	mov	r1, #32	@,
	add	r0, sp, #48	@,,
	ldmia	r4, {r8, r9}	@ phole ldm
	bl	__memzero	@
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4, #64]	@ __n, <variable>.BlockSize
	cmp	r1, #0	@ __n,
	mov	r7, r0	@ pDataBuf,
	beq	.L327	@,
	bl	__memzero	@
.L327:
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	tst	r3, #1	@ <variable>.AipMask,
	bne	.L360	@,
.L275:
	mov	r5, #0	@ u32UnderFlag,
	mov	r6, r5	@ MixCnt, u32UnderFlag
.L277:
	tst	r3, #2	@ <variable>.AipMask,
	bne	.L361	@,
.L281:
	tst	r3, #4	@ <variable>.AipMask,
	bne	.L362	@,
.L286:
	tst	r3, #8	@ <variable>.AipMask,
	bne	.L363	@,
.L291:
	tst	r3, #16	@ <variable>.AipMask,
	bne	.L364	@,
.L296:
	tst	r3, #32	@ <variable>.AipMask,
	bne	.L365	@,
.L301:
	tst	r3, #64	@ <variable>.AipMask,
	bne	.L366	@,
.L306:
	tst	r3, #128	@ <variable>.AipMask,
	bne	.L367	@,
.L311:
	cmp	r6, #0	@ MixCnt,
	ldreq	r3, [sp, #60]	@ prephitmp.935, stFrame.u32SamplesPerFrame
	beq	.L316	@,
	tst	r5, #1	@ u32UnderFlag,
	bne	.L368	@,
.L317:
	tst	r5, #2	@ u32UnderFlag,
	bne	.L369	@,
.L318:
	tst	r5, #4	@ u32UnderFlag,
	bne	.L370	@,
.L319:
	tst	r5, #8	@ u32UnderFlag,
	bne	.L371	@,
.L320:
	tst	r5, #16	@ u32UnderFlag,
	bne	.L372	@,
.L321:
	tst	r5, #32	@ u32UnderFlag,
	bne	.L373	@,
.L322:
	tst	r5, #64	@ u32UnderFlag,
	bne	.L374	@,
.L323:
	tst	r5, #128	@ u32UnderFlag,
	bne	.L375	@,
.L324:
	ldr	lr, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r3, [r4, #72]	@ prephitmp.935, <variable>.SamplePerFrame
	ldmia	r4, {r0, ip}	@ phole ldm
	ldr	r1, [r4, #8]	@ <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate
	ldr	r2, [r4, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	str	r7, [sp, #48]	@ pDataBuf, stFrame.pDataBuf
	str	lr, [sp, #56]	@ <variable>.BlockSize, stFrame.u32DataBytes
	str	ip, [sp, #68]	@ <variable>.stAttr.u32Channels, stFrame.u32Channels
	str	r0, [sp, #64]	@ <variable>.stAttr.u32BitPerSample, stFrame.u32BitPerSample
	str	r1, [sp, #72]	@ <variable>.stAttr.u32SampleRate, stFrame.u32SampleRate
	str	r2, [sp, #76]	@ <variable>.stAttr.u32DataFormat, stFrame.u32DataFormat
	str	r3, [sp, #60]	@ prephitmp.935, stFrame.u32SamplesPerFrame
.L316:
	cmp	r3, #0	@ prephitmp.935,
	bne	.L376	@,
	bl	AOE_FlushWKBuf	@
.L328:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L229:
	cmp	r2, #0	@ BufFreeFlag,
	beq	.L328	@,
	b	.L250	@
.L356:
	ands	r0, r2, #1	@ tmp168, BufFreeFlag,
	beq	.L234	@,
	mov	r0, #1	@ Flag,
	b	.L231	@
.L376:
	mov	r2, #36	@,
	ldr	r1, [r4, #60]	@, <variable>.EngineId
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, state
	add	r1, sp, #48	@,,
	bl	ENGINEOutFrame	@
	ldr	r1, [r4, #60]	@, <variable>.EngineId
	mov	r0, #2	@,
	mov	r2, #32	@,
	bl	TRACE_AOE_FSM	@
	bl	AOE_FlushWKBuf	@
	b	.L328	@
.L359:
	tst	r3, #1	@ Flag,
	bne	.L274	@,
	b	.L328	@
.L358:
	tst	r2, #1	@ BufFreeFlag,
	beq	.L242	@,
	orr	r0, r0, #2	@ Flag, Flag,
	b	.L241	@
.L367:
	mov	r0, #7	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ D.17237, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, D.17237
	bcc	.L312	@,
	cmp	fp, r0	@ TailBytes, D.17237
	bcs	.L313	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes
	ldr	r2, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	lr, r7, fp	@ tmp470, pDataBuf, TailBytes
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, r2, r3	@ tmp462, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	lr, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp462
	mul	r2, r9, r0	@ tmp469, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp478, Ch,
	mov	r0, ip	@, tmp470
	bl	UTIL_MixerPro	@
.L314:
	mov	r0, #7	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	b	.L311	@
.L366:
	mov	r0, #6	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1202, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1200, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1202
	bcc	.L377	@,
	cmp	fp, r0	@ TailBytes.1200, temp.1202
	bcs	.L378	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1200
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r2, r7, fp	@ tmp449, pDataBuf, TailBytes.1200
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp441, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	r2, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp441
	mul	r2, r9, r0	@ tmp448, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1200, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp457, Ch,
	mov	r0, ip	@, tmp449
	bl	UTIL_MixerPro	@
.L310:
	mov	r0, #6	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L306	@
.L365:
	mov	r0, #5	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1171, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1169, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1171
	bcc	.L379	@,
	cmp	fp, r0	@ TailBytes.1169, temp.1171
	bcs	.L380	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1169
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	lr, r7, fp	@ tmp417, pDataBuf, TailBytes.1169
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp409, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	lr, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp409
	mul	r2, r9, r0	@ tmp416, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1169, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp425, Ch,
	mov	r0, ip	@, tmp417
	bl	UTIL_MixerPro	@
.L305:
	mov	r0, #5	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L301	@
.L364:
	mov	r0, #4	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1140, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1138, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1140
	bcc	.L381	@,
	cmp	fp, r0	@ TailBytes.1138, temp.1140
	bcs	.L382	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1138
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r2, r7, fp	@ tmp385, pDataBuf, TailBytes.1138
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp377, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	r2, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp377
	mul	r2, r9, r0	@ tmp384, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1138, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp393, Ch,
	mov	r0, ip	@, tmp385
	bl	UTIL_MixerPro	@
.L300:
	mov	r0, #4	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L296	@
.L363:
	mov	r0, #3	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1109, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1107, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1109
	bcc	.L383	@,
	cmp	fp, r0	@ TailBytes.1107, temp.1109
	bcs	.L384	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1107
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	lr, r7, fp	@ tmp353, pDataBuf, TailBytes.1107
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp345, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	lr, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp345
	mul	r2, r9, r0	@ tmp352, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1107, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp361, Ch,
	mov	r0, ip	@, tmp353
	bl	UTIL_MixerPro	@
.L295:
	mov	r0, #3	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L291	@
.L362:
	mov	r0, #2	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1079, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1077, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1079
	bcc	.L385	@,
	cmp	fp, r0	@ TailBytes.1077, temp.1079
	bcs	.L386	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1077
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	r2, r7, fp	@ tmp321, pDataBuf, TailBytes.1077
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp313, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	r2, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp313
	mul	r2, r9, r0	@ tmp320, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1077, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp329, Ch,
	mov	r0, ip	@, tmp321
	bl	UTIL_MixerPro	@
.L290:
	mov	r0, #2	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L286	@
.L361:
	mov	r0, #1	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1049, <variable>.BlockSize
	ldr	r1, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	fp, [sp, #28]	@ TailBytes.1047, stRbfIn.u32ContiguousDataSize
	cmp	r1, r0	@ stRbfIn.u32TotalDataSize, temp.1049
	bcc	.L387	@,
	cmp	fp, r0	@ TailBytes.1047, temp.1049
	bcs	.L388	@,
	ldr	r3, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, fp	@, TailBytes.1047
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	lr, r7, fp	@ tmp289, pDataBuf, TailBytes.1047
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r3	@ tmp281, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	str	lr, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp281
	mul	r2, r9, r0	@ tmp288, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, fp, r0	@, TailBytes.1047, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #4]	@,
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp297, Ch,
	mov	r0, ip	@, tmp289
	bl	UTIL_MixerPro	@
.L285:
	mov	r0, #1	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	add	r6, r6, #1	@ MixCnt, MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L281	@
.L360:
	mov	r0, #0	@,
	add	r1, sp, #12	@,,
	bl	AIP_QueryFiFoInfo	@
	ldr	r0, [r4, #64]	@ temp.1020, <variable>.BlockSize
	ldr	r3, [sp, #32]	@ stRbfIn.u32TotalDataSize, stRbfIn.u32TotalDataSize
	ldr	r5, [sp, #28]	@ TailBytes.1018, stRbfIn.u32ContiguousDataSize
	cmp	r3, r0	@ stRbfIn.u32TotalDataSize, temp.1020
	bcc	.L389	@,
	cmp	r5, r0	@ TailBytes.1018, temp.1020
	bcs	.L390	@,
	ldr	lr, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	mov	r0, r5	@, TailBytes.1018
	ldr	ip, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	add	sl, r7, r5	@ tmp257, pDataBuf, TailBytes.1018
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r6, ip, lr	@ tmp249, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, r6	@, tmp249
	mul	r2, r9, r0	@ tmp256, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	ldr	r0, [r4, #64]	@ <variable>.BlockSize, <variable>.BlockSize
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	rsb	r0, r5, r0	@, TailBytes.1018, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	ldr	r1, [sp, #12]	@, stRbfIn.u32BasePtr
	mul	r2, r9, r0	@ tmp265, Ch,
	mov	r0, sl	@, tmp257
	bl	UTIL_MixerPro	@
.L280:
	mov	r0, #0	@,
	ldr	r1, [r4, #64]	@, <variable>.BlockSize
	bl	AIP_ReadFiFoComplete	@
	mov	r5, #0	@ u32UnderFlag,
	mov	r6, #1	@ MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L277	@
.L357:
	tst	r2, #128	@ BufFreeFlag,
	movne	r0, #1	@ Flag,
	bne	.L240	@,
.L234:
	bic	r0, r0, #1	@ Flag, Flag,
	b	.L240	@
.L389:
	mov	r0, #0	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r5, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r5, #1	@ stChnStatus.CurnStatus,
	ldrne	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	bne	.L275	@,
	mov	r6, #0	@ MixCnt,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	b	.L277	@
.L383:
	mov	r0, #3	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	ip, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	ip, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #8	@ u32UnderFlag, u32UnderFlag,
	b	.L291	@
.L381:
	mov	r0, #4	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r2, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r2, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #16	@ u32UnderFlag, u32UnderFlag,
	b	.L296	@
.L379:
	mov	r0, #5	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	ip, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	ip, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #32	@ u32UnderFlag, u32UnderFlag,
	b	.L301	@
.L377:
	mov	r0, #6	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r2, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r2, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #64	@ u32UnderFlag, u32UnderFlag,
	b	.L306	@
.L385:
	mov	r0, #2	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r2, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	cmp	r2, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #4	@ u32UnderFlag, u32UnderFlag,
	b	.L286	@
.L387:
	mov	r0, #1	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r3, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r3, #1	@ stChnStatus.CurnStatus,
	ldr	r3, [r4, #16]	@ <variable>.AipMask, <variable>.AipMask
	orreq	r5, r5, #2	@ u32UnderFlag, u32UnderFlag,
	b	.L281	@
.L312:
	mov	r0, #7	@,
	add	r1, sp, #80	@,,
	bl	AIP_GetChnStatus	@
	ldr	r3, [sp, #80]	@ stChnStatus.CurnStatus, stChnStatus.CurnStatus
	cmp	r3, #1	@ stChnStatus.CurnStatus,
	orreq	r5, r5, #128	@ u32UnderFlag, u32UnderFlag,
	b	.L311	@
.L258:
	bic	r3, r3, #1	@ Flag, Flag,
	b	.L253	@
.L266:
	bic	r3, r3, #2	@ Flag, Flag,
	b	.L264	@
.L375:
	mov	r0, #7	@,
	bl	AIP_UnderFlowCalc	@
	b	.L324	@
.L374:
	mov	r0, #6	@,
	bl	AIP_UnderFlowCalc	@
	b	.L323	@
.L373:
	mov	r0, #5	@,
	bl	AIP_UnderFlowCalc	@
	b	.L322	@
.L372:
	mov	r0, #4	@,
	bl	AIP_UnderFlowCalc	@
	b	.L321	@
.L371:
	mov	r0, #3	@,
	bl	AIP_UnderFlowCalc	@
	b	.L320	@
.L370:
	mov	r0, #2	@,
	bl	AIP_UnderFlowCalc	@
	b	.L319	@
.L369:
	mov	r0, #1	@,
	bl	AIP_UnderFlowCalc	@
	b	.L318	@
.L368:
	mov	r0, #0	@,
	bl	AIP_UnderFlowCalc	@
	b	.L317	@
.L380:
	ldr	r2, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	lr, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, lr, r2	@ tmp401, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp401
	mul	r2, r9, r0	@ tmp408, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L305	@
.L313:
	ldr	ip, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, ip	@ tmp479, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp479
	mul	r2, r9, r0	@ tmp486, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L314	@
.L388:
	ldr	r2, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	sl, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, sl, r2	@ tmp273, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp273
	mul	r2, r9, r0	@ tmp280, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L285	@
.L378:
	ldr	lr, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	ip, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, ip, lr	@ tmp433, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp433
	mul	r2, r9, r0	@ tmp440, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L310	@
.L382:
	ldr	lr, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	ip, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, ip, lr	@ tmp369, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp369
	mul	r2, r9, r0	@ tmp376, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L300	@
.L386:
	ldr	lr, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	ip, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, ip, lr	@ tmp305, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp305
	mul	r2, r9, r0	@ tmp312, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L290	@
.L384:
	ldr	r2, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	lr, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	sl, lr, r2	@ tmp337, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, sl	@, tmp337
	mul	r2, r9, r0	@ tmp344, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L295	@
.L390:
	ldr	r2, [sp, #12]	@ stRbfIn.u32BasePtr, stRbfIn.u32BasePtr
	ldr	r6, [sp, #16]	@ stRbfIn.u32ReadPtr, stRbfIn.u32ReadPtr
	ldr	r1, [r4, #68]	@, <variable>.FrameSize
	add	r5, r2, r6	@ tmp241, stRbfIn.u32BasePtr, stRbfIn.u32ReadPtr
	bl	__aeabi_uidiv	@
	mov	r3, r8	@, BitDepth
	mov	r1, r5	@, tmp241
	mul	r2, r9, r0	@ tmp248, Ch,
	mov	r0, r7	@, pDataBuf
	bl	UTIL_MixerPro	@
	b	.L280	@
.L242:
	bic	r0, r0, #2	@ Flag, Flag,
	b	.L249	@
	.fnend
	.size	ENGINEProcChnData, .-ENGINEProcChnData
	.align	2
	.global	ENGINECreateAVC
	.type	ENGINECreateAVC, %function
ENGINECreateAVC:
	.fnstart
.LFB1025:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r5, #:lower16:__stack_chk_guard	@ tmp170,
	movt	r5, #:upper16:__stack_chk_guard	@ tmp170,
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r4, r0	@ state, state
	add	r1, sp, #28	@,,
	ldr	ip, [r5, #0]	@ __stack_chk_guard, __stack_chk_guard
	add	r0, sp, #16	@,,
	movw	lr, #48000	@ tmp143,
	mov	r2, #2	@ tmp144,
	str	lr, [sp, #28]	@ tmp143, stAvcMemConf.iSampleRate
	str	r2, [sp, #32]	@ tmp144, stAvcMemConf.iChannels
	str	ip, [sp, #44]	@ __stack_chk_guard, D.17614
	bl	iMedia_AVC_GetSize	@
	ldr	r1, [sp, #16]	@ stAvcMemSize.uiStrSize, stAvcMemSize.uiStrSize
	mov	r0, #17	@,
	str	r1, [r4, #100]	@ stAvcMemSize.uiStrSize, <variable>.u32AVCStrBufSize
	bl	HI_ADSP_MALLOC	@
	cmp	r0, #0	@ D.15793,
	str	r0, [r4, #96]	@ D.15793, <variable>.pAVCStrBuf
	beq	.L392	@,
	ldr	r1, [sp, #16]	@ __n, stAvcMemSize.uiStrSize
	cmp	r1, #0	@ __n,
	bne	.L398	@,
.L393:
	ldr	r1, [r4, #96]	@, <variable>.pAVCStrBuf
	add	r0, r4, #92	@, state,
	ldr	r2, [r4, #100]	@, <variable>.u32AVCStrBufSize
	add	r3, sp, #4	@,,
	mov	lr, #50	@ movhi	@,
	mov	ip, #100	@ movhi	@,
	strh	lr, [sp, #4]	@ movhi	@, stAvcParams.sAttackTime
	mvn	lr, #31	@ movhi	@,
	strh	ip, [sp, #6]	@ movhi	@, stAvcParams.sReleaseTime
	mvn	ip, #19	@ movhi	@,
	strh	lr, [sp, #8]	@ movhi	@, stAvcParams.sStartLevel
	mov	lr, #5	@ movhi	@,
	strh	ip, [sp, #10]	@ movhi	@, stAvcParams.sCornerLevel
	mvn	ip, #9	@ movhi	@,
	strh	lr, [sp, #12]	@ movhi	@, stAvcParams.sMaxGain
	strh	ip, [sp, #14]	@ movhi	@, stAvcParams.sTargetLevel
	bl	iMedia_AVC_Init	@
	cmp	r0, #0	@ ret
	streq	r0, [r4, #104]	@ ret, <variable>.bAVCEnable
	bne	.L399	@,
.L395:
	ldr	r1, [sp, #44]	@ D.17614, D.17614
	ldr	r3, [r5, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r1, r3	@ D.17614, __stack_chk_guard
	bne	.L400	@,
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, pc}
.L398:
	bl	__memzero	@
	b	.L393	@
.L392:
	mvn	r0, #0	@ D.15805,
	b	.L395	@
.L399:
.L394:
	ldr	r1, [r4, #96]	@ temp.1272, <variable>.pAVCStrBuf
	cmp	r1, #0	@ temp.1272,
	beq	.L392	@,
	mov	r0, #17	@,
	bl	HI_ADSP_FREE	@
	mvn	r0, #0	@ D.15805,
	b	.L395	@
.L400:
	bl	__stack_chk_fail	@
	.fnend
	.size	ENGINECreateAVC, .-ENGINECreateAVC
	.align	2
	.global	ENGINECreateChn
	.type	ENGINECreateChn, %function
ENGINECreateChn:
	.fnstart
.LFB1034:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r6, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r1, #16	@,
	mov	r5, r0	@ Id, Id
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r0, sp	@,
	ldr	r1, [r6, #0]	@ tmp155,* pEneReg
	mov	r7, sp	@ tmp154,
	and	r1, r1, #3	@, tmp155,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L415	@,
.L402:
	mov	r0, #0	@ D.15972,
.L409:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L415:
	ldr	r2, [r6, #0]	@ tmp158,* pEneReg
	add	r0, sp, #4	@, tmp154,
	ubfx	r1, r2, #2, #2	@, tmp158,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L402	@,
	ldr	ip, [r6, #0]	@ tmp162,* pEneReg
	add	r0, sp, #8	@, tmp154,
	ubfx	r1, ip, #4, #4	@, tmp162,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L402	@,
	ldr	lr, [r6, #0]	@ tmp166,* pEneReg
	add	r0, sp, #12	@, tmp154,
	ubfx	r1, lr, #8, #2	@, tmp166,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L402	@,
	mov	r0, #17	@,
	mov	r1, #108	@,
	bl	HI_ADSP_MALLOC	@
	subs	r4, r0, #0	@ state,
	beq	.L402	@,
	mov	r1, #108	@,
	bl	__memzero	@
	ldmia	r7, {r0, r1, r2, r3}	@ tmp154,,,,
	mov	ip, r0	@ <variable>.stAttr.u32BitPerSample,
	stmia	r4, {r0, r1, r2, r3}	@ state,,,,
	mov	r0, r1	@,
	mov	r1, ip	@, <variable>.stAttr.u32BitPerSample
	bl	UTIL_CalcFrameSize	@
	ldr	r3, [r4, #8]	@ <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate
	movw	ip, #:lower16:274877907	@ tmp179,
	movt	ip, #:upper16:274877907	@ tmp179,
	add	r7, r3, r3, asl #2	@, tmp177, <variable>.stAttr.u32SampleRate, <variable>.stAttr.u32SampleRate,
	umull	r3, r2, ip, r7	@, tmp178, tmp179, tmp177
	mov	r1, r2, lsr #6	@ samples, tmp178,
	tst	r1, #255	@ samples
	movne	r1, r2, lsr #14	@ tmp181, tmp178,
	addne	r1, r1, #1	@ D.16543, tmp181,
	movne	r1, r1, asl #8	@ samples, D.16543,
	tst	r1, #3	@ samples,
	addne	r1, r1, #3	@ tmp183, samples,
	bicne	r1, r1, #3	@ samples, tmp183,
	mul	r7, r0, r1	@ tmp184, framesize, samples
	ldr	r0, [r4, #4]	@, <variable>.stAttr.u32Channels
	ldr	r1, [r4, #0]	@, <variable>.stAttr.u32BitPerSample
	str	r7, [r4, #64]	@ tmp184, <variable>.BlockSize
	bl	UTIL_CalcFrameSize	@
	cmp	r0, #0	@ D.15985,
	mov	r7, r0	@ D.15985,
	str	r0, [r4, #68]	@ D.15985, <variable>.FrameSize
	beq	.L414	@,
	mov	r1, r0	@, D.15985
	ldr	r0, [r4, #64]	@, <variable>.BlockSize
	bl	__aeabi_uidiv	@
	ldr	r7, [r4, #12]	@ <variable>.stAttr.u32DataFormat, <variable>.stAttr.u32DataFormat
	cmp	r7, #0	@ <variable>.stAttr.u32DataFormat,
	str	r0, [r4, #72]	@, <variable>.SamplePerFrame
	beq	.L416	@,
.L408:
	mov	lr, #1	@ tmp191,
	str	r5, [r4, #60]	@ Id, <variable>.EngineId
	mov	r0, r4	@ D.15972, state
	str	lr, [r4, #76]	@ tmp191, <variable>.CurStatus
	b	.L409	@
.L416:
	mov	r1, r6	@, pEneReg
	mov	r0, r4	@, state
	bl	ENGINECreateAVC	@
	cmp	r0, #0	@,
	beq	.L408	@,
.L414:
	mov	r0, #17	@,
	mov	r1, r4	@, state
	bl	HI_ADSP_FREE	@
	mov	r0, r7	@ D.15972, <variable>.stAttr.u32DataFormat
	b	.L409	@
	.fnend
	.size	ENGINECreateChn, .-ENGINECreateChn
	.align	2
	.global	ENGINEProcChnStartCmd
	.type	ENGINEProcChnStartCmd, %function
ENGINEProcChnStartCmd:
	.fnstart
.LFB1044:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp170,
	add	r6, r0, #6	@ tmp145, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp170,
	mov	r5, r0	@ Id, Id
	ldr	r3, [r4, r6, asl #2]	@ state, g_stEneRm.hEne
	cmp	r3, #0	@ state,
	beq	.L428	@,
	ldr	r2, [r3, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r2, #0	@ <variable>.CurStatus,
	beq	.L429	@,
.L422:
	mov	r0, #1	@ tmp164,
	str	r0, [r3, #76]	@ tmp164, <variable>.CurStatus
.L421:
	ldr	r3, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r1, [r3, #4]	@ D.16570,
	ands	r2, r1, #8	@ tmp166, D.16570,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r3, #4]	@ tmp167,
	bfi	r0, r2, #4, #4	@ tmp167, tmp166,,
	str	r0, [r3, #4]	@ tmp167,
	ldr	r2, [r3, #4]	@ tmp168,
	orr	ip, r2, #8	@ tmp173, tmp168,
	str	ip, [r3, #4]	@ tmp173,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L429:
	mov	r0, r3	@, state
	bl	ENGINEDestroyChn	@
	mov	r0, r5	@, Id
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.16283,
	str	r0, [r4, r6, asl #2]	@ D.16283, g_stEneRm.hEne
	movne	r3, r0	@ state, D.16283
	bne	.L422	@,
.L427:
	ldr	r3, [r4, r5, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r0, [r3, #4]	@ D.16563,
	tst	r0, #8	@ D.16563,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	lr, [r3, #4]	@ tmp160,
	mov	r2, #3	@ tmp161,
	bfi	lr, r2, #4, #4	@ tmp160, tmp161,,
	str	lr, [r3, #4]	@ tmp160,
	ldr	ip, [r3, #4]	@ tmp162,
	orr	r1, ip, #8	@ tmp172, tmp162,
	str	r1, [r3, #4]	@ tmp172,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L428:
	bl	ENGINECreateChn	@
	cmp	r0, #0	@ D.16276,
	str	r0, [r4, r6, asl #2]	@ D.16276, g_stEneRm.hEne
	movne	r3, #1	@ tmp154,
	strne	r3, [r0, #76]	@ tmp154, <variable>.CurStatus
	bne	.L421	@,
	b	.L427	@
	.fnend
	.size	ENGINEProcChnStartCmd, .-ENGINEProcChnStartCmd
	.align	2
	.global	ENGINEProcChnCmd
	.type	ENGINEProcChnCmd, %function
ENGINEProcChnCmd:
	.fnstart
.LFB1045:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r2, [r3, r0, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	ip, r0	@ Id, Id
	ldr	r1, [r2, #4]	@ D.16579,
	ands	r1, r1, #8	@ tmp140, D.16579,
	bne	.L436	@,
	ldr	r4, [r2, #4]	@ tmp141,
	ands	r4, r4, #3	@ D.16577, tmp141,
	bne	.L437	@,
	ldmfd	sp!, {r4}
	b	ENGINEProcChnStartCmd	@
.L437:
	cmp	r4, #1	@ D.16577,
	bne	.L438	@,
	add	r0, r0, #6	@ tmp148, Id,
	ldr	r0, [r3, r0, asl #2]	@ state, g_stEneRm.hEne
	cmp	r0, #0	@ state,
	beq	.L436	@,
	ldr	r4, [r0, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r4, #1	@ <variable>.CurStatus,
	streq	r1, [r0, #76]	@ tmp140, <variable>.CurStatus
	ldreq	r2, [r3, ip, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	ldr	r3, [r2, #4]	@ D.16588,
	ands	r3, r3, #8	@ tmp152, D.16588,
	bne	.L436	@,
	ldr	r0, [r2, #4]	@ tmp153,
	bfi	r0, r3, #4, #4	@ tmp153, tmp152,,
	str	r0, [r2, #4]	@ tmp153,
	ldr	r1, [r2, #4]	@ tmp154,
	orr	ip, r1, #8	@ tmp157, tmp154,
	str	ip, [r2, #4]	@ tmp157,
.L436:
	ldmfd	sp!, {r4}
	bx	lr
.L438:
	ldr	ip, [r2, #4]	@ tmp143,
	mov	r1, #4	@ tmp144,
	bfi	ip, r1, #4, #4	@ tmp143, tmp144,,
	str	ip, [r2, #4]	@ tmp143,
	ldr	r0, [r2, #4]	@ tmp145,
	orr	r3, r0, #8	@ tmp156, tmp145,
	str	r3, [r2, #4]	@ tmp156,
	b	.L436	@
	.fnend
	.size	ENGINEProcChnCmd, .-ENGINEProcChnCmd
	.align	2
	.global	ENGINEProcChn
	.type	ENGINEProcChn, %function
ENGINEProcChn:
	.fnstart
.LFB1049:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r2, #33	@,
	mov	r4, r0	@ Id, Id
	mov	r1, r0	@, Id
	mov	r0, #2	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, Id
	bl	ENGINEProcChnCmd	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	add	r2, r4, #6	@ tmp147, Id,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r5, [r3, r2, asl #2]	@ state, g_stEneRm.hEne
	cmp	r5, #0	@ state,
	beq	.L440	@,
	ldr	r0, [r5, #76]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r0, #1	@ <variable>.CurStatus,
	beq	.L444	@,
.L440:
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L444:
	ldr	r4, [r3, r4, asl #2]	@ pEneReg, g_stEneRm.hwEneReg
	mov	r0, r5	@, state
	ldrh	r1, [r4, #12]	@ <variable>.ENGINE_ROU_DST.bits.aop_buf_ena, <variable>.ENGINE_ROU_DST.bits.aop_buf_ena
	bl	ENGINEUpdateChnAopState	@
	ldrh	r1, [r4, #8]	@ <variable>.ENGINE_MIX_SRC.bits.aip_fifo_ena, <variable>.ENGINE_MIX_SRC.bits.aip_fifo_ena
	mov	r0, r5	@, state
	bl	ENGINEUpdateChnAipState	@
	ldr	r1, [r4, #4]	@ D.16602,
	ubfx	r3, r1, #9, #1	@ tmp155, D.16602,,
	str	r3, [r5, #104]	@ tmp155, <variable>.bAVCEnable
	ldr	r0, [r4, #4]	@ D.16618,
	ubfx	r2, r0, #10, #1	@ tmp157, D.16618,,
	str	r2, [r5, #80]	@ tmp157, <variable>.stPregain.bPreGainEnable
	ldr	ip, [r4, #4]	@ tmp158,
	ubfx	r1, ip, #11, #8	@ D.16615, tmp158,,
	str	r1, [r5, #84]	@ D.16615, <variable>.stPregain.u32PreGainInt
	ldr	r3, [r4, #4]	@ D.16613,
	tst	r3, #134217728	@ D.16613,
	bne	.L441	@,
	ldr	ip, [r4, #4]	@ tmp161,
	ubfx	lr, ip, #19, #8	@ D.16611, tmp161,,
	str	lr, [r5, #88]	@ D.16611, <variable>.stPregain.s32PreGainDec
.L442:
	mov	r0, r5	@, state
	bl	ENGINEProcChnData	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L441:
	ldr	r2, [r4, #4]	@ D.16609,
	tst	r2, #134217728	@ D.16609,
	ldrne	r2, [r4, #4]	@ tmp164,
	ubfxne	r2, r2, #19, #8	@ D.16607, tmp164,,
	rsbne	r2, r2, #0	@ tmp166, D.16607
	strne	r2, [r5, #88]	@ tmp166, <variable>.stPregain.s32PreGainDec
	b	.L442	@
	.fnend
	.size	ENGINEProcChn, .-ENGINEProcChn
	.align	2
	.global	ENGINE_Process
	.type	ENGINE_Process, %function
ENGINE_Process:
	.fnstart
.LFB1051:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	ENGINEProcChn	@
	mov	r0, #1	@,
	bl	ENGINEProcChn	@
	mov	r0, #2	@,
	bl	ENGINEProcChn	@
	mov	r0, #3	@,
	bl	ENGINEProcChn	@
	mov	r0, #4	@,
	bl	ENGINEProcChn	@
	mov	r0, #5	@,
	ldmfd	sp!, {r4, lr}	@
	b	ENGINEProcChn	@
	.fnend
	.size	ENGINE_Process, .-ENGINE_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stEneRm, %object
	.size	g_stEneRm, 48
g_stEneRm:
	.space	48
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
