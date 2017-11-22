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
	.file	"sw_main.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(sw_main)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/.sw_main.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.o
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
	.global	AOE_SwEngineDestory
	.type	AOE_SwEngineDestory, %function
AOE_SwEngineDestory:
	.fnstart
.LFB1135:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #10	@,
	mov	r4, #0	@ tmp135,
	str	r4, [r3, #0]	@ tmp135, g_AoeTaskstate
	bl	msleep	@
	mov	r0, r4	@, tmp135
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AOE_SwEngineDestory, .-AOE_SwEngineDestory
	.align	2
	.global	AOE_SwEngineCreate
	.type	AOE_SwEngineCreate, %function
AOE_SwEngineCreate:
	.fnstart
.LFB1134:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, #0	@ tmp141,
	movw	r4, #:lower16:.LANCHOR0	@ tmp150,
	movt	r4, #:upper16:.LANCHOR0	@ tmp150,
	movw	r0, #:lower16:AoEngineTask	@,
	mov	r1, r5	@, tmp141
	movt	r0, #:upper16:AoEngineTask	@,
	mvn	r2, #0	@,
	movw	r3, #:lower16:.LC0	@,
	movt	r3, #:upper16:.LC0	@,
	mov	ip, #1	@ tmp139,
	str	r5, [r4, #4]	@ tmp141, g_AoeRunningFlag
	str	ip, [r4, #0]	@ tmp139, g_AoeTaskstate
	bl	kthread_create_on_node	@
	cmn	r0, #4096	@ g_pstAOEThread.368,
	str	r0, [r4, #8]	@ g_pstAOEThread.368, g_pstAOEThread
	mvnhi	r0, #0	@ D.22107,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #:lower16:-1515870811	@ tmp152,
	bl	wake_up_process	@
	movt	r6, #:upper16:-1515870811	@ tmp152,
	b	.L7	@
.L13:
	bl	msleep	@
	ldr	r2, [r4, #4]	@ g_AoeRunningFlag, g_AoeRunningFlag
	mov	r0, #1	@,
	cmp	r2, r6	@ g_AoeRunningFlag, tmp152
	beq	.L6	@,
	bl	msleep	@
	cmp	r5, #512	@ cnt,
	beq	.L6	@,
.L7:
	ldr	r1, [r4, #4]	@ g_AoeRunningFlag, g_AoeRunningFlag
	mov	r0, #1	@,
	add	r5, r5, r0	@ tmp154, cnt,
	cmp	r1, r6	@ g_AoeRunningFlag, tmp152
	add	r5, r5, r0	@ cnt, tmp154,
	bne	.L13	@,
.L6:
	mov	r0, #0	@ D.22107,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AOE_SwEngineCreate, .-AOE_SwEngineCreate
	.align	2
	.global	SchedStatisticsInit
	.type	SchedStatisticsInit, %function
SchedStatisticsInit:
	.fnstart
.LFB1130:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r2, #0	@ tmp139,
	mov	r0, #0	@ tmp134,
	mov	r1, #0	@,
	str	r2, [r3, #36]	@ tmp139, g_u32cnt
	strd	r0, [r3, #24]	@ tmp134, tmp133,
	strd	r0, [r3, #16]	@ tmp134, tmp133,
	strh	r2, [r3, #32]	@ movhi	@ tmp139, g_u16SchTimeoutCnt
	strh	r2, [r3, #34]	@ movhi	@ tmp139, g_u16ExcuteTimeoutCnt
	b	AOE_SchedStatisticsInit	@
	.fnend
	.size	SchedStatisticsInit, .-SchedStatisticsInit
	.align	2
	.global	SYS_GetLocalCurPts
	.type	SYS_GetLocalCurPts, %function
SYS_GetLocalCurPts:
	.fnstart
.LFB1128:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bl	sched_clock	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp157,
	movt	r3, #:upper16:.LANCHOR0	@ tmp157,
	ldrd	r4, [r3, #40]	@ u64TimeLast, tmp157,
	cmp	r1, r5	@ u64TimeNow, u64TimeLast
	cmpeq	r0, r4	@ u64TimeNow, u64TimeLast
	bcs	.L20	@,
	ldrd	r4, [r3, #48]	@ u64TimeBase, tmp157,
	mvn	sl, #0	@ prephitmp.458,
	movw	fp, #:lower16:4194303	@ prephitmp.458,
	movt	fp, #:upper16:4194303	@ prephitmp.458,
	adds	sl, sl, r4	@ prephitmp.458, prephitmp.458, u64TimeBase
	adc	fp, fp, r5	@ prephitmp.458, prephitmp.458, u64TimeBase
	strd	sl, [r3, #48]	@ prephitmp.458, tmp157,
.L18:
	mov	r4, #0	@ tmp147,
	movw	r8, #:lower16:-1924145349	@ tmp146,
	mov	r2, r4	@ __z, tmp147
	movt	r8, #:upper16:-1924145349	@ tmp146,
	movw	r9, #:lower16:-2095944041	@,
	movt	r9, #:upper16:-2095944041	@,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r6, r7, r8, r0	@, tmp146, u64TimeNow
	cmn	r6, r8	@, tmp146
	adcs	r7, r7, r9	@, tmp146
	adc	r6, r4, #0	@, tmp147
@ 0 "" 2
	mov	r4, r6	@ __res,
	mov	r5, r7	@ __res,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r5, r4, r9, r0	@ __res, tmp146, u64TimeNow
	umlal	r5, r2, r8, r1	@ __res, __z, tmp146, u64TimeNow
	mov	r5, #0	@ __res
	adds	r4, r2, r4	@ __res, __z
	adc	r5, r5, #0	@ __res
	umlal	r4, r5, r9, r1	@ __res, tmp146, u64TimeNow
@ 0 "" 2
	mov	r6, r4, lsr #9	@ tmp152, __res,
	mov	r7, r5, lsr #9	@, __res,
	orr	r6, r6, r5, asl #23	@, tmp152, tmp152, __res,
	strd	r0, [r3, #40]	@ u64TimeNow, tmp157,
	adds	r2, r6, sl	@ tmp150, tmp150, prephitmp.458
	adc	r3, r7, fp	@, tmp12, prephitmp.458
	mov	lr, r6	@ tmp150, tmp152
	mov	r0, r2	@, tmp150
	mov	r1, r3	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L20:
	ldrd	sl, [r3, #48]	@ prephitmp.458, tmp157,
	b	.L18	@
	.fnend
	.size	SYS_GetLocalCurPts, .-SYS_GetLocalCurPts
	.align	2
	.global	SYS_GetTimeStampUs
	.type	SYS_GetTimeStampUs, %function
SYS_GetTimeStampUs:
	.fnstart
.LFB1129:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bl	sched_clock	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp157,
	movt	r3, #:upper16:.LANCHOR0	@ tmp157,
	ldrd	r4, [r3, #40]	@ u64TimeLast, tmp157,
	cmp	r1, r5	@ u64TimeNow, u64TimeLast
	cmpeq	r0, r4	@ u64TimeNow, u64TimeLast
	bcs	.L25	@,
	ldrd	r4, [r3, #48]	@ u64TimeBase, tmp157,
	mvn	sl, #0	@ prephitmp.483,
	movw	fp, #:lower16:4194303	@ prephitmp.483,
	movt	fp, #:upper16:4194303	@ prephitmp.483,
	adds	sl, sl, r4	@ prephitmp.483, prephitmp.483, u64TimeBase
	adc	fp, fp, r5	@ prephitmp.483, prephitmp.483, u64TimeBase
	strd	sl, [r3, #48]	@ prephitmp.483, tmp157,
.L23:
	mov	r4, #0	@ tmp147,
	movw	r8, #:lower16:-1924145349	@ tmp146,
	mov	r2, r4	@ __z, tmp147
	movt	r8, #:upper16:-1924145349	@ tmp146,
	movw	r9, #:lower16:-2095944041	@,
	movt	r9, #:upper16:-2095944041	@,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r6, r7, r8, r0	@, tmp146, u64TimeNow
	cmn	r6, r8	@, tmp146
	adcs	r7, r7, r9	@, tmp146
	adc	r6, r4, #0	@, tmp147
@ 0 "" 2
	mov	r4, r6	@ __res,
	mov	r5, r7	@ __res,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r5, r4, r9, r0	@ __res, tmp146, u64TimeNow
	umlal	r5, r2, r8, r1	@ __res, __z, tmp146, u64TimeNow
	mov	r5, #0	@ __res
	adds	r4, r2, r4	@ __res, __z
	adc	r5, r5, #0	@ __res
	umlal	r4, r5, r9, r1	@ __res, tmp146, u64TimeNow
@ 0 "" 2
	mov	r6, r4, lsr #9	@ tmp152, __res,
	mov	r7, r5, lsr #9	@, __res,
	orr	r6, r6, r5, asl #23	@, tmp152, tmp152, __res,
	strd	r0, [r3, #40]	@ u64TimeNow, tmp157,
	adds	r2, r6, sl	@ tmp150, tmp150, prephitmp.483
	adc	r3, r7, fp	@, tmp12, prephitmp.483
	mov	lr, r6	@ tmp150, tmp152
	mov	r0, r2	@, tmp150
	mov	r1, r3	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L25:
	ldrd	sl, [r3, #48]	@ prephitmp.483, tmp157,
	b	.L23	@
	.fnend
	.size	SYS_GetTimeStampUs, .-SYS_GetTimeStampUs
	.align	2
	.global	SchedStatisticsStop
	.type	SchedStatisticsStop, %function
SchedStatisticsStop:
	.fnstart
.LFB1132:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	str	r0, [sp, #12]	@ enStatistics, %sfp
	bl	sched_clock	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp175,
	movt	r3, #:upper16:.LANCHOR0	@ tmp175,
	ldrd	r6, [r3, #40]	@ u64TimeLast, tmp175,
	cmp	r1, r7	@ u64TimeNow, u64TimeLast
	cmpeq	r0, r6	@ u64TimeNow, u64TimeLast
	bcc	.L27	@,
	ldrd	sl, [r3, #48]	@ prephitmp.508, tmp175,
.L28:
	mov	r7, #0	@ tmp151,
	movw	r8, #:lower16:-1924145349	@,
	mov	r2, r7	@ __z, tmp151
	movt	r8, #:upper16:-1924145349	@,
	movw	r9, #:lower16:-2095944041	@,
	movt	r9, #:upper16:-2095944041	@,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r4, r5, r8, r0	@,, u64TimeNow
	cmn	r4, r8	@,
	adcs	r5, r5, r9	@,
	adc	r4, r7, #0	@, tmp151
@ 0 "" 2
	mov	r6, r4	@ __res,
	mov	r7, r5	@ __res,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r7, r6, r9, r0	@ __res,, u64TimeNow
	umlal	r7, r2, r8, r1	@ __res, __z,, u64TimeNow
	mov	r7, #0	@ __res
	adds	r6, r2, r6	@ __res, __z
	adc	r7, r7, #0	@ __res
	umlal	r6, r7, r9, r1	@ __res,, u64TimeNow
@ 0 "" 2
	mov	lr, r6, lsr #9	@ tmp155, __res,
	ldr	ip, [r3, #16]	@ g_u64BeginPts, g_u64BeginPts
	orr	r8, lr, r7, asl #23	@, tmp155, tmp155, __res,
	strd	r0, [r3, #40]	@ u64TimeNow, tmp175,
	adds	r8, r8, sl	@ u64PtsCur, tmp155, prephitmp.508
	ldr	r4, [sp, #12]	@, %sfp
	movw	r2, #:lower16:274877907	@ tmp162,
	rsb	r1, ip, r8	@ tmp159, g_u64BeginPts, u64PtsCur
	movt	r2, #:upper16:274877907	@ tmp162,
	mov	r9, r7, lsr #9	@, __res,
	adc	r9, r9, fp	@ u64PtsCur,, prephitmp.508
	cmp	r4, #0	@,
	umull	r4, r6, r2, r1	@, tmp161, tmp162, tmp159
	strd	r8, [r3, #24]	@ u64PtsCur, tmp175,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	mov	r6, r6, lsr #6	@ u32Time, tmp161,
	bne	.L29	@,
	cmp	r6, #4	@ u32Time,
	bhi	.L32	@,
.L31:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L29:
	ldr	r5, [sp, #12]	@, %sfp
	cmp	r5, #1	@,
	bne	.L31	@,
	cmp	r6, #41	@ u32Time,
	bls	.L31	@,
	ldrh	r2, [r3, #32]	@ g_u16SchTimeoutCnt, g_u16SchTimeoutCnt
	mov	r0, r5	@,
	add	lr, r2, #1	@ tmp171, g_u16SchTimeoutCnt,
	uxth	r1, lr	@ g_u16SchTimeoutCnt.365, tmp171
	strh	r1, [r3, #32]	@ movhi	@ g_u16SchTimeoutCnt.365, g_u16SchTimeoutCnt
	bl	AOE_SchedStatisticsShow	@
	cmp	r6, #100	@ u32Time,
	bls	.L31	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	mov	r0, #2	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r1, #26	@,
	mov	r3, #149	@,
	str	r6, [sp, #4]	@ u32Time,
	movw	ip, #:lower16:.LC1	@ tmp174,
	movt	ip, #:upper16:.LC1	@ tmp174,
	str	ip, [sp, #0]	@ tmp174,
	bl	HI_LogOut	@
	b	.L31	@
.L27:
	ldrd	r6, [r3, #48]	@ u64TimeBase, tmp175,
	mvn	sl, #0	@ prephitmp.508,
	movw	fp, #:lower16:4194303	@ prephitmp.508,
	movt	fp, #:upper16:4194303	@ prephitmp.508,
	adds	sl, sl, r6	@ prephitmp.508, prephitmp.508, u64TimeBase
	adc	fp, fp, r7	@ prephitmp.508, prephitmp.508, u64TimeBase
	strd	sl, [r3, #48]	@ prephitmp.508, tmp175,
	b	.L28	@
.L32:
	ldrh	ip, [r3, #34]	@ g_u16ExcuteTimeoutCnt, g_u16ExcuteTimeoutCnt
	ldr	r0, [sp, #12]	@, %sfp
	add	r1, ip, #1	@ tmp166, g_u16ExcuteTimeoutCnt,
	uxth	r1, r1	@ g_u16ExcuteTimeoutCnt.363, tmp166
	strh	r1, [r3, #34]	@ movhi	@ g_u16ExcuteTimeoutCnt.363, g_u16ExcuteTimeoutCnt
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	AOE_SchedStatisticsShow	@
	.fnend
	.size	SchedStatisticsStop, .-SchedStatisticsStop
	.align	2
	.global	SchedStatisticsStart
	.type	SchedStatisticsStart, %function
SchedStatisticsStart:
	.fnstart
.LFB1131:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bl	sched_clock	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp155,
	movt	r3, #:upper16:.LANCHOR0	@ tmp155,
	ldrd	r4, [r3, #40]	@ u64TimeLast, tmp155,
	cmp	r1, r5	@ u64TimeNow, u64TimeLast
	cmpeq	r0, r4	@ u64TimeNow, u64TimeLast
	bcs	.L37	@,
	ldrd	r4, [r3, #48]	@ u64TimeBase, tmp155,
	mvn	sl, #0	@ prephitmp.533,
	movw	fp, #:lower16:4194303	@ prephitmp.533,
	movt	fp, #:upper16:4194303	@ prephitmp.533,
	adds	sl, sl, r4	@ prephitmp.533, prephitmp.533, u64TimeBase
	adc	fp, fp, r5	@ prephitmp.533, prephitmp.533, u64TimeBase
	strd	sl, [r3, #48]	@ prephitmp.533, tmp155,
.L35:
	mov	r4, #0	@ tmp147,
	movw	r8, #:lower16:-1924145349	@ tmp146,
	mov	ip, r4	@ __z, tmp147
	movt	r8, #:upper16:-1924145349	@ tmp146,
	movw	r9, #:lower16:-2095944041	@,
	movt	r9, #:upper16:-2095944041	@,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umull	r6, r7, r8, r0	@, tmp146, u64TimeNow
	cmn	r6, r8	@, tmp146
	adcs	r7, r7, r9	@, tmp146
	adc	r6, r4, #0	@, tmp147
@ 0 "" 2
	mov	r4, r6	@ __res,
	mov	r5, r7	@ __res,
#APP
@ 83 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/adsp/adsp_v1_1/./hifi/sw_main.c" 1
	umlal	r5, r4, r9, r0	@ __res, tmp146, u64TimeNow
	umlal	r5, ip, r8, r1	@ __res, __z, tmp146, u64TimeNow
	mov	r5, #0	@ __res
	adds	r4, ip, r4	@ __res, __z
	adc	r5, r5, #0	@ __res
	umlal	r4, r5, r9, r1	@ __res, tmp146, u64TimeNow
@ 0 "" 2
	mov	r2, r4, lsr #9	@ tmp152, __res,
	mov	r7, r5, lsr #9	@, __res,
	orr	r6, r2, r5, asl #23	@, tmp152, tmp152, __res,
	strd	r0, [r3, #40]	@ u64TimeNow, tmp155,
	adds	r6, r6, sl	@ tmp154, tmp152, prephitmp.533
	adc	r7, r7, fp	@,, prephitmp.533
	strd	r6, [r3, #16]	@ tmp154, tmp155,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L37:
	ldrd	sl, [r3, #48]	@ prephitmp.533, tmp155,
	b	.L35	@
	.fnend
	.size	SchedStatisticsStart, .-SchedStatisticsStart
	.align	2
	.type	AoEngineTask, %function
AoEngineTask:
	.fnstart
.LFB1133:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	add	r2, sp, #16	@ tmp152,,
	mov	sl, #99	@ tmp148,
	mov	ip, sp	@,
	bic	r4, ip, #8128	@ tmp149,,
	bic	r4, r4, #63	@ tmp149, tmp149,
	str	sl, [r2, #-4]!	@ tmp148, param.sched_priority
	mov	r1, #1	@,
	mov	sl, #2	@ tmp159,
	ldr	r0, [r4, #12]	@, <variable>.task
	bl	sched_setscheduler	@
	ldr	r6, [r4, #12]	@ temp.568, <variable>.task
	ldr	r7, [r6, #12]	@ <variable>.flags, <variable>.flags
	orr	r1, r7, #32768	@ tmp156, <variable>.flags,
	str	r1, [r6, #12]	@ tmp156, <variable>.flags
	ldr	r0, [r4, #12]	@ temp.569, <variable>.task
	str	sl, [r0, #0]	@ tmp159, <variable>.state
	movw	r5, #:lower16:.LANCHOR1	@ tmp164,
	movt	r5, #:upper16:.LANCHOR1	@ tmp164,
	bl	AOE_Init	@
	movw	r8, #:lower16:5000000	@ D.22179,
	bl	SchedStatisticsInit	@
	ldrd	r0, [r5, #24]	@ ktime_zero.tv64, tmp164,
	movt	r8, #:upper16:5000000	@ D.22179,
	movw	r6, #:lower16:.LANCHOR0	@ tmp176,
	adds	r8, r8, r0	@ D.22179, D.22179, ktime_zero.tv64
	movt	r6, #:upper16:.LANCHOR0	@ tmp176,
	mov	r9, #0	@ D.22179,
	adc	r9, r9, r1	@ D.22179, D.22179, ktime_zero.tv64
	mov	r7, sp	@ tmp181,
	mov	r2, #0	@ tmp161,
	movw	r3, #:lower16:-1515870811	@ tmp163,
	str	r2, [r6, #56]	@ tmp161, task_bug
	movt	r3, #:upper16:-1515870811	@ tmp163,
	str	r3, [r6, #4]	@ tmp163, g_AoeRunningFlag
.L44:
	ldr	r5, [r6, #0]	@ g_AoeTaskstate, g_AoeTaskstate
	mov	r0, #0	@,
	cmp	r5, #1	@ g_AoeTaskstate,
	bne	.L45	@,
.L40:
	bl	SchedStatisticsStart	@
	bl	AOE_ProcThread_Sw	@
	mov	r0, #0	@,
	bl	SchedStatisticsStop	@
	bl	AOE_GetThreadStatus	@
	cmp	r0, #1	@,
	mov	r0, r5	@, g_AoeTaskstate
	beq	.L44	@,
	bl	SchedStatisticsStart	@
	ldr	r3, [r4, #12]	@ temp.570, <variable>.task
	strd	r8, [sp]	@ D.22179, stWaitTime
	str	sl, [r3, #0]	@ tmp180, <variable>.state
	mov	r1, r5	@, g_AoeTaskstate
	mov	r0, sp	@,
	bl	schedule_hrtimeout	@
	mov	r0, r5	@, g_AoeTaskstate
	bl	SchedStatisticsStop	@
	ldr	r5, [r6, #0]	@ g_AoeTaskstate, g_AoeTaskstate
	mov	r0, #0	@,
	cmp	r5, #1	@ g_AoeTaskstate,
	beq	.L40	@,
.L45:
	mov	r4, sp	@,
	bic	r1, r4, #8128	@ tmp172,,
	bic	r2, r1, #63	@ tmp172, tmp172,
	mov	r4, r0	@ tmp174,
	ldr	lr, [r2, #12]	@ temp.571, <variable>.task
	str	r0, [lr, #0]	@ tmp174, <variable>.state
	bl	AOE_DeInit	@
	mov	r0, r4	@, tmp174
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	.fnend
	.size	AoEngineTask, .-AoEngineTask
	.global	g_u64BeginPts
	.global	g_u64EndPts
	.global	g_u16SchTimeoutCnt
	.global	g_u16ExcuteTimeoutCnt
	.global	g_u32cnt
	.section	.rodata
	.align	3
.LANCHOR1 = . + 0
	.type	__func__.22053, %object
	.size	__func__.22053, 20
__func__.22053:
	.ascii	"SchedStatisticsStop\000"
	.space	4
	.type	ktime_zero.8991, %object
	.size	ktime_zero.8991, 8
ktime_zero.8991:
	.space	8
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"AoEngineTask\000"
	.space	3
.LC1:
	.ascii	"Sch TimeOut %d\012\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
	.type	g_AoeTaskstate, %object
	.size	g_AoeTaskstate, 4
g_AoeTaskstate:
	.space	4
	.type	g_AoeRunningFlag, %object
	.size	g_AoeRunningFlag, 4
g_AoeRunningFlag:
	.space	4
	.type	g_pstAOEThread, %object
	.size	g_pstAOEThread, 4
g_pstAOEThread:
	.space	4
	.space	4
	.type	g_u64BeginPts, %object
	.size	g_u64BeginPts, 8
g_u64BeginPts:
	.space	8
	.type	g_u64EndPts, %object
	.size	g_u64EndPts, 8
g_u64EndPts:
	.space	8
	.type	g_u16SchTimeoutCnt, %object
	.size	g_u16SchTimeoutCnt, 2
g_u16SchTimeoutCnt:
	.space	2
	.type	g_u16ExcuteTimeoutCnt, %object
	.size	g_u16ExcuteTimeoutCnt, 2
g_u16ExcuteTimeoutCnt:
	.space	2
	.type	g_u32cnt, %object
	.size	g_u32cnt, 4
g_u32cnt:
	.space	4
	.type	u64TimeLast.21879, %object
	.size	u64TimeLast.21879, 8
u64TimeLast.21879:
	.space	8
	.type	u64TimeBase.21878, %object
	.size	u64TimeBase.21878, 8
u64TimeBase.21878:
	.space	8
	.type	task_bug.22079, %object
	.size	task_bug.22079, 4
task_bug.22079:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
