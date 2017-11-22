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
	.file	"aoe_main.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(aoe_main)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/.aoe_main.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aoe_main.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aoe_main.o
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
	.weak	HI_DRV_PROC_EchoHelper
	.type	HI_DRV_PROC_EchoHelper, %function
HI_DRV_PROC_EchoHelper:
	.fnstart
.LFB1352:
	@ args = 4, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	stmfd	sp!, {r0, r1, r2, r3}	@,
	.save {r0, r1, r2, r3}
	add	sp, sp, #16	@,,
	bx	lr
	.fnend
	.size	HI_DRV_PROC_EchoHelper, .-HI_DRV_PROC_EchoHelper
	.align	2
	.weak	HI_DRV_PROC_EchoHelperVargs
	.type	HI_DRV_PROC_EchoHelperVargs, %function
HI_DRV_PROC_EchoHelperVargs:
	.fnstart
.LFB1353:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	HI_DRV_PROC_EchoHelperVargs, .-HI_DRV_PROC_EchoHelperVargs
	.align	2
	.global	TRACE_AOE_FSM
	.type	TRACE_AOE_FSM, %function
TRACE_AOE_FSM:
	.fnstart
.LFB1354:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [ip, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	r3, #0	@ g_pstAOEComReg.443,
	movne	r0, r0, asl #16	@ tmp140, ModId,
	andne	r2, r2, #255	@ tmp142, eFsm,
	orrne	r1, r0, r1, asl #8	@, tmp141, tmp140, ch,
	orrne	r2, r1, r2	@ D.24564, tmp141, tmp142
	strne	r2, [r3, #8]	@ D.24564, <variable>.AOE_STATUS0
	bx	lr	@
	.fnend
	.size	TRACE_AOE_FSM, .-TRACE_AOE_FSM
	.align	2
	.global	AOE_Reset
	.type	AOE_Reset, %function
AOE_Reset:
	.fnstart
.LFB1355:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	str	r2, [r3, #4]	@ tmp134, g_stAoeInitFlag
	bx	lr	@
	.fnend
	.size	AOE_Reset, .-AOE_Reset
	.align	2
	.global	AOE_FlushWKBuf
	.type	AOE_FlushWKBuf, %function
AOE_FlushWKBuf:
	.fnstart
.LFB1360:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp134,
	str	r2, [r3, #8]	@ tmp134, g_stWkbuf.uWkBufIdx
	bx	lr	@
	.fnend
	.size	AOE_FlushWKBuf, .-AOE_FlushWKBuf
	.align	2
	.global	AOE_GetWKBuf
	.type	AOE_GetWKBuf, %function
AOE_GetWKBuf:
	.fnstart
.LFB1361:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r2, [r3, #8]	@ D.24643, g_stWkbuf.uWkBufIdx
	ldr	ip, [r3, #16]	@ g_stWkbuf.uWkBufBlockNumber, g_stWkbuf.uWkBufBlockNumber
	ldr	r1, [r3, #20]	@ g_stWkbuf.uWkBufBase, g_stWkbuf.uWkBufBase
	cmp	r2, ip	@ D.24643, g_stWkbuf.uWkBufBlockNumber
	addlt	ip, r2, #1	@ prephitmp.589, D.24643,
	ldrlt	r0, [r3, #12]	@ g_stWkbuf.uWkBufBlockSize, g_stWkbuf.uWkBufBlockSize
	movge	ip, #1	@ prephitmp.589,
	movge	r0, #0	@ prephitmp.587,
	str	ip, [r3, #8]	@ prephitmp.589, g_stWkbuf.uWkBufIdx
	mullt	r0, r0, r2	@ prephitmp.587, g_stWkbuf.uWkBufBlockSize, D.24643
	add	r0, r0, r1	@, prephitmp.587, g_stWkbuf.uWkBufBase
	bx	lr	@
	.fnend
	.size	AOE_GetWKBuf, .-AOE_GetWKBuf
	.align	2
	.global	AOE_ReleaseWKBuf
	.type	AOE_ReleaseWKBuf, %function
AOE_ReleaseWKBuf:
	.fnstart
.LFB1362:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r0, [r3, #8]	@ D.24655, g_stWkbuf.uWkBufIdx
	cmp	r0, #0	@ D.24655,
	ldreq	r0, [r3, #16]	@ g_stWkbuf.uWkBufBlockNumber, g_stWkbuf.uWkBufBlockNumber
	sub	r2, r0, #1	@ tmp140, g_stWkbuf.uWkBufBlockNumber,
	str	r2, [r3, #8]	@ tmp140, g_stWkbuf.uWkBufIdx
	bx	lr	@
	.fnend
	.size	AOE_ReleaseWKBuf, .-AOE_ReleaseWKBuf
	.align	2
	.global	AOE_GetWKBufSize
	.type	AOE_GetWKBufSize, %function
AOE_GetWKBufSize:
	.fnstart
.LFB1363:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #12]	@, g_stWkbuf.uWkBufBlockSize
	bx	lr	@
	.fnend
	.size	AOE_GetWKBufSize, .-AOE_GetWKBufSize
	.align	2
	.global	AOE_SchedStatisticsInit
	.type	AOE_SchedStatisticsInit, %function
AOE_SchedStatisticsInit:
	.fnstart
.LFB1364:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r2, [r3, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r2, #0	@ g_stAoeInitFlag,
	ldrne	r3, [r3, #0]	@ g_pstAOEComReg.455, g_pstAOEComReg
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, #12]	@ tmp137, <variable>.AOE_STATUS1.u32
	bx	lr	@
	.fnend
	.size	AOE_SchedStatisticsInit, .-AOE_SchedStatisticsInit
	.align	2
	.global	AOE_SchedStatisticsShow
	.type	AOE_SchedStatisticsShow, %function
AOE_SchedStatisticsShow:
	.fnstart
.LFB1365:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r2, #0	@ g_stAoeInitFlag,
	bxeq	lr	@
	cmp	r0, #0	@ enStatistics,
	beq	.L31	@,
	cmp	r0, #1	@ enStatistics,
	ldreq	r3, [r3, #0]	@ g_pstAOEComReg.693, g_pstAOEComReg
	streqh	r1, [r3, #14]	@ movhi	@ u16TimeOutCnt, <variable>.AOE_STATUS1.bits.schedule_timeout_cnt
	bx	lr	@
.L31:
	ldr	r3, [r3, #0]	@ g_pstAOEComReg.457, g_pstAOEComReg
	strh	r1, [r3, #12]	@ movhi	@ u16TimeOutCnt, <variable>.AOE_STATUS1.bits.excute_timeout_cnt
	bx	lr	@
	.fnend
	.size	AOE_SchedStatisticsShow, .-AOE_SchedStatisticsShow
	.align	2
	.global	AOE_GetThreadStatus
	.type	AOE_GetThreadStatus, %function
AOE_GetThreadStatus:
	.fnstart
.LFB1367:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #28]	@, g_enAoeTaskStatus
	bx	lr	@
	.fnend
	.size	AOE_GetThreadStatus, .-AOE_GetThreadStatus
	.align	2
	.global	AOE_ProcThread_Sw
	.type	AOE_ProcThread_Sw, %function
AOE_ProcThread_Sw:
	.fnstart
.LFB1366:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp134,
	movt	r4, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp135,
	ldr	r3, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	str	r2, [r4, #28]	@ tmp135, g_enAoeTaskStatus
	cmp	r3, r2	@ g_stAoeInitFlag,
	ldmeqfd	sp!, {r4, pc}	@
	bl	AIP_Process	@
	bl	AOP_Process	@
	bl	ENGINE_Process	@
	ldr	ip, [r4, #32]	@ g_u32AoeTaskTicks, g_u32AoeTaskTicks
	mov	r2, #1	@ tmp139,
	str	r2, [r4, #28]	@ tmp139, g_enAoeTaskStatus
	add	r1, ip, r2	@ g_u32AoeTaskTicks.461, g_u32AoeTaskTicks,
	str	r1, [r4, #32]	@ g_u32AoeTaskTicks.461, g_u32AoeTaskTicks
	ands	r0, r1, #3	@ tmp143, g_u32AoeTaskTicks.461,
	streq	r0, [r4, #28]	@ tmp143, g_enAoeTaskStatus
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AOE_ProcThread_Sw, .-AOE_ProcThread_Sw
	.align	2
	.global	AOE_DeInitWKBuf
	.type	AOE_DeInitWKBuf, %function
AOE_DeInitWKBuf:
	.fnstart
.LFB1359:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r0, #17	@,
	ldr	r1, [r4, #20]	@, g_stWkbuf.uWkBufBase
	bl	HI_ADSP_VFREE_Aligned	@
	add	r0, r4, #8	@, tmp133,
	mov	r1, #20	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	AOE_DeInitWKBuf, .-AOE_DeInitWKBuf
	.align	2
	.global	AOE_InitWKBuf
	.type	AOE_InitWKBuf, %function
AOE_InitWKBuf:
	.fnstart
.LFB1358:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	mov	r5, r1	@ u32WKBufNum, u32WKBufNum
	mov	r6, r0	@ u32WKBufSize, u32WKBufSize
	mov	r1, #20	@,
	add	r0, r4, #8	@, tmp137,
	mov	r7, r2	@ u32AlignToBytes, u32AlignToBytes
	bl	__memzero	@
	sub	r3, r5, #1	@ tmp139, u32WKBufNum,
	cmp	r3, #1	@ tmp139,
	ldmhifd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r2, r7	@, u32AlignToBytes
	mov	r0, #17	@,
	mul	r1, r6, r5	@, u32WKBufSize, u32WKBufNum
	bl	HI_ADSP_VMALLOC_Aligned	@
	cmp	r0, #0	@ ptr
	strne	r6, [r4, #12]	@ u32WKBufSize, g_stWkbuf.uWkBufBlockSize
	strne	r0, [r4, #20]	@ ptr, g_stWkbuf.uWkBufBase
	strne	r5, [r4, #16]	@ u32WKBufNum, g_stWkbuf.uWkBufBlockNumber
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AOE_InitWKBuf, .-AOE_InitWKBuf
	.align	2
	.global	AOE_DeInit
	.type	AOE_DeInit, %function
AOE_DeInit:
	.fnstart
.LFB1357:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r3, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r3, #0	@ g_stAoeInitFlag,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	lr, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	lr, #0	@ g_pstAOEComReg.443,
	movne	r2, #7	@ tmp142,
	strne	r2, [lr, #8]	@ tmp142, <variable>.AOE_STATUS0
	bl	AIP_DeInit	@
	ldr	r1, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	r1, #0	@ g_pstAOEComReg.443,
	movne	r2, #8	@ tmp144,
	strne	r2, [r1, #8]	@ tmp144, <variable>.AOE_STATUS0
	bl	AOP_DeInit	@
	ldr	r3, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	r3, #0	@ g_pstAOEComReg.443,
	movne	r2, #9	@ tmp146,
	strne	r2, [r3, #8]	@ tmp146, <variable>.AOE_STATUS0
	bl	ENGINE_DeInit	@
	ldr	ip, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	ip, #0	@ g_pstAOEComReg.443,
	movne	r2, #10	@ tmp148,
	strne	r2, [ip, #8]	@ tmp148, <variable>.AOE_STATUS0
	bl	AOE_DeInitWKBuf	@
	ldr	r0, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	mov	r1, #0	@ tmp152,
	cmp	r0, #0	@ g_pstAOEComReg.443,
	movne	r2, #11	@ tmp150,
	strne	r2, [r0, #8]	@ tmp150, <variable>.AOE_STATUS0
	ldr	r0, [r4, #36]	@ g_u32RegMapAddr.449, g_u32RegMapAddr
	str	r1, [r4, #4]	@ tmp152, g_stAoeInitFlag
	cmp	r0, r1	@ g_u32RegMapAddr.449,
	str	r1, [r4, #0]	@ tmp152, g_pstAOEComReg
	ldmeqfd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	b	__arm_iounmap	@
	.fnend
	.size	AOE_DeInit, .-AOE_DeInit
	.align	2
	.global	AOE_Init
	.type	AOE_Init, %function
AOE_Init:
	.fnstart
.LFB1356:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp166,
	movt	r4, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r5, [r4, #4]	@ g_stAoeInitFlag, g_stAoeInitFlag
	cmp	r5, #0	@ g_stAoeInitFlag,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r2, r5	@, g_stAoeInitFlag
	mov	r1, #2048	@,
	mov	r0, #20480	@,
	bl	__arm_ioremap	@
	mov	r1, #2048	@,
	str	r0, [r4, #36]	@, g_u32RegMapAddr
	bl	__memzero	@
	ldr	r0, [r4, #36]	@ g_u32RegMapAddr.446, g_u32RegMapAddr
	cmp	r0, #0	@ g_u32RegMapAddr.446,
	str	r0, [r4, #0]	@ g_u32RegMapAddr.446, g_pstAOEComReg
	strne	r5, [r0, #8]	@ g_stAoeInitFlag, <variable>.AOE_STATUS0
	add	r0, r0, #256	@, g_u32RegMapAddr.446,
	bl	AIP_Init	@
	ldr	r3, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	r3, #0	@ g_pstAOEComReg.443,
	movne	r2, #1	@ tmp148,
	strne	r2, [r3, #8]	@ tmp148, <variable>.AOE_STATUS0
	ldr	r2, [r4, #36]	@ g_u32RegMapAddr, g_u32RegMapAddr
	add	r0, r2, #768	@, g_u32RegMapAddr,
	bl	AOP_Init	@
	ldr	ip, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	cmp	ip, #0	@ g_pstAOEComReg.443,
	movne	r2, #2	@ tmp153,
	strne	r2, [ip, #8]	@ tmp153, <variable>.AOE_STATUS0
	ldr	r1, [r4, #36]	@ g_u32RegMapAddr, g_u32RegMapAddr
	add	r0, r1, #64	@, g_u32RegMapAddr,
	bl	ENGINE_Init	@
	ldr	r0, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	mov	r1, #2	@,
	cmp	r0, #0	@ g_pstAOEComReg.443,
	movne	r2, #3	@ tmp158,
	strne	r2, [r0, #8]	@ tmp158, <variable>.AOE_STATUS0
	mov	r2, #32	@,
	mov	r0, #61440	@,
	bl	AOE_InitWKBuf	@
	ldr	r2, [r4, #0]	@ g_pstAOEComReg.443, g_pstAOEComReg
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	cmp	r2, #0	@ g_pstAOEComReg.443,
	movne	r1, #4	@ tmp160,
	moveq	r2, #1	@ tmp165,
	streq	r2, [r3, #4]	@ tmp165, g_stAoeInitFlag
	strne	r1, [r2, #8]	@ tmp160, <variable>.AOE_STATUS0
	movne	r1, #1	@ tmp162,
	strne	r1, [r3, #4]	@ tmp162, g_stAoeInitFlag
	movne	r3, #6	@ tmp163,
	strne	r3, [r2, #8]	@ tmp163, <variable>.AOE_STATUS0
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AOE_Init, .-AOE_Init
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_pstAOEComReg, %object
	.size	g_pstAOEComReg, 4
g_pstAOEComReg:
	.space	4
	.type	g_stAoeInitFlag, %object
	.size	g_stAoeInitFlag, 4
g_stAoeInitFlag:
	.space	4
	.type	g_stWkbuf, %object
	.size	g_stWkbuf, 20
g_stWkbuf:
	.space	20
	.type	g_enAoeTaskStatus, %object
	.size	g_enAoeTaskStatus, 4
g_enAoeTaskStatus:
	.space	4
	.type	g_u32AoeTaskTicks, %object
	.size	g_u32AoeTaskTicks, 4
g_u32AoeTaskTicks:
	.space	4
	.type	g_u32RegMapAddr, %object
	.size	g_u32RegMapAddr, 4
g_u32RegMapAddr:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
