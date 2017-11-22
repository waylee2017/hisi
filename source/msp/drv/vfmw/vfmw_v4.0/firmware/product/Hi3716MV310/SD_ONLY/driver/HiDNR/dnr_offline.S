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
	.file	"dnr_offline.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_offline)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_offline.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm
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
	.global	DNRDRV_PrepareSleep
	.type	DNRDRV_PrepareSleep, %function
DNRDRV_PrepareSleep:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #0]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp138,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #0]	@ tmp138, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_PrepareSleep, .-DNRDRV_PrepareSleep
	.align	2
	.global	DNRDRV_GetSleepStage
	.type	DNRDRV_GetSleepStage, %function
DNRDRV_GetSleepStage:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #0]	@, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_GetSleepStage, .-DNRDRV_GetSleepStage
	.align	2
	.global	DNRDRV_ForeceSleep
	.type	DNRDRV_ForeceSleep, %function
DNRDRV_ForeceSleep:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	ldr	r2, [r3, #0]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #0]	@ tmp136, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_ForeceSleep, .-DNRDRV_ForeceSleep
	.align	2
	.global	DNRDRV_ExitSleep
	.type	DNRDRV_ExitSleep, %function
DNRDRV_ExitSleep:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #0]	@ D.32598, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.32598,
	beq	.L11	@,
	blx	r3	@ D.32598
.L11:
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #0]	@ tmp136, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNRDRV_ExitSleep, .-DNRDRV_ExitSleep
	.align	2
	.global	DNR_CloseChan
	.type	DNR_CloseChan, %function
DNR_CloseChan:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #0	@ ChanID, ChanID
	movweq	r3, #:lower16:.LANCHOR0	@ tmp136,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp136,
	mvnne	r0, #0	@ D.32641,
	moveq	r0, r2	@ D.32641, ChanID
	streq	r2, [r3, #16]	@ ChanID, <variable>.s32IsOpen
	streq	r2, [r3, #20]	@ ChanID, <variable>.InstMode
	bx	lr	@
	.fnend
	.size	DNR_CloseChan, .-DNR_CloseChan
	.align	2
	.global	DNR_ConfigChan
	.type	DNR_ConfigChan, %function
DNR_ConfigChan:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L26	@,
.L19:
	mvn	r0, #0	@ D.32781,
	bx	lr	@
.L26:
	movw	r3, #:lower16:.LANCHOR0	@ tmp175,
	movt	r3, #:upper16:.LANCHOR0	@ tmp175,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L19	@,
	cmp	r1, #0	@ pArgs,
	beq	.L19	@,
	movw	r2, #:lower16:76684	@ tmp145,
	movt	r2, #:upper16:76684	@ tmp145,
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	ip, [r3, r2]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	strb	r0, [r3, #10]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldreqsb	r0, [r1, #0]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movweq	ip, #:lower16:76696	@ tmp148,
	ldrneb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movteq	ip, #:upper16:76696	@ tmp148,
	streq	r0, [r3, ip]	@ <variable>.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	strneb	ip, [r3, #9]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldrsb	r0, [r1, #1]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, #1	@ <variable>.s32VcmpEn,
	beq	.L27	@,
.L22:
	mov	r0, #0	@ D.32781,
	bx	lr	@
.L27:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	movw	r2, #:lower16:.LANCHOR0	@ tmp154,
	movt	r2, #:upper16:.LANCHOR0	@ tmp154,
	strb	ip, [r3, #11]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldrsb	r3, [r1, #2]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r3, #1	@ <variable>.s32WmEn,
	beq	.L28	@,
	movw	ip, #:lower16:76624	@ tmp169,
	movw	r3, #:lower16:76628	@ tmp172,
	movt	ip, #:upper16:76624	@ tmp169,
	movt	r3, #:upper16:76628	@ tmp172,
	movw	r0, #65535	@ tmp170,
	str	r0, [r2, ip]	@ tmp170, <variable>.s32VcmpWmStartLine
	str	r0, [r2, r3]	@ tmp170, <variable>.s32VcmpWmEndLine
	mov	r0, #0	@ D.32781,
	bx	lr	@
.L28:
	ldr	ip, [r1, #4]	@ D.32800, <variable>.s32VcmpWmStartLine
	movw	r3, #:lower16:76624	@ tmp159,
	movt	r3, #:upper16:76624	@ tmp159,
	movw	r0, #:lower16:76628	@ tmp161,
	movt	r0, #:upper16:76628	@ tmp161,
	str	ip, [r2, r3]	@ D.32800, <variable>.s32VcmpWmStartLine
	ldr	r1, [r1, #8]	@ D.32801, <variable>.s32VcmpWmEndLine
	cmp	ip, r1	@ D.32800, D.32801
	str	r1, [r2, r0]	@ D.32801, <variable>.s32VcmpWmEndLine
	ble	.L22	@,
	movw	r1, #65535	@ tmp164,
	str	r1, [r2, r0]	@ tmp164, <variable>.s32VcmpWmEndLine
	str	r1, [r2, r3]	@ tmp164, <variable>.s32VcmpWmStartLine
	mov	r0, #0	@ D.32781,
	bx	lr	@
	.fnend
	.size	DNR_ConfigChan, .-DNR_ConfigChan
	.align	2
	.global	DNR_ConfigFFFBSpeed
	.type	DNR_ConfigFFFBSpeed, %function
DNR_ConfigFFFBSpeed:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L33	@,
.L30:
	mvn	r0, #0	@ D.32813,
	bx	lr	@
.L33:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L30	@,
	cmp	r1, #0	@ pArgs,
	beq	.L30	@,
	ldr	r1, [r1, #0]	@ tmp141,* pArgs
	movw	ip, #:lower16:76632	@ tmp140,
	movt	ip, #:upper16:76632	@ tmp140,
	str	r1, [r3, ip]	@ tmp141, <variable>.s32FastForwardBackwardSpeed
	bx	lr	@
	.fnend
	.size	DNR_ConfigFFFBSpeed, .-DNR_ConfigFFFBSpeed
	.align	2
	.global	DNR_ConfigBackOptimizeFlag
	.type	DNR_ConfigBackOptimizeFlag, %function
DNR_ConfigBackOptimizeFlag:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	str	r4, [sp, #-4]!	@,
	.save {r4}
	beq	.L38	@,
.L35:
	mvn	r0, #0	@ D.32827,
.L36:
	ldmfd	sp!, {r4}
	bx	lr
.L38:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L35	@,
	cmp	r1, #0	@ pArgs,
	beq	.L35	@,
	ldr	r4, [r1, #12]	@, <variable>.u32BackwardOptimizeFlag
	movw	ip, #:lower16:76636	@ tmp140,
	movt	ip, #:upper16:76636	@ tmp140,
	movw	r2, #:lower16:76652	@ tmp143,
	movt	r2, #:upper16:76652	@ tmp143,
	str	r4, [r3, ip]	@, <variable>.u32BackwardOptimizeFlag
	ldr	r1, [r1, #16]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	str	r1, [r3, r2]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	b	.L36	@
	.fnend
	.size	DNR_ConfigBackOptimizeFlag, .-DNR_ConfigBackOptimizeFlag
	.align	2
	.global	DNR_StartChan
	.type	DNR_StartChan, %function
DNR_StartChan:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L43	@,
.L40:
	mvn	r0, #0	@ D.32841,
	bx	lr	@
.L43:
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	streq	r2, [r3, #20]	@ <variable>.s32IsOpen, <variable>.InstMode
	bne	.L40	@,
	bx	lr	@
	.fnend
	.size	DNR_StartChan, .-DNR_StartChan
	.align	2
	.global	DNR_DisableChan
	.type	DNR_DisableChan, %function
DNR_DisableChan:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L48	@,
.L45:
	mvn	r0, #0	@ D.32922,
	bx	lr	@
.L48:
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	streq	r0, [r3, #20]	@ ChanID, <variable>.InstMode
	bne	.L45	@,
	bx	lr	@
	.fnend
	.size	DNR_DisableChan, .-DNR_DisableChan
	.align	2
	.global	DNR_StopChan
	.type	DNR_StopChan, %function
DNR_StopChan:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L53	@,
.L50:
	mvn	r0, #0	@ D.32932,
	bx	lr	@
.L53:
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	streq	r0, [r3, #20]	@ ChanID, <variable>.InstMode
	bne	.L50	@,
	bx	lr	@
	.fnend
	.size	DNR_StopChan, .-DNR_StopChan
	.align	2
	.global	DNR_ClearTempImage
	.type	DNR_ClearTempImage, %function
DNR_ClearTempImage:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:76696	@ tmp176,
	movt	r3, #:upper16:76696	@ tmp176,
	movw	ip, #:lower16:.LANCHOR0	@ tmp221,
	movt	ip, #:upper16:.LANCHOR0	@ tmp221,
	mul	r3, r3, r0	@ tmp175, tmp176, InstId
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	add	r2, r3, ip	@ tmp177, tmp175, tmp221
	add	r1, r2, #51456	@ tmp178, tmp177,
	add	r2, r1, #72	@ tmp178, tmp178,
	ldr	r1, [r2, #4]	@ D.32982, <variable>.TempImageNum
	cmp	r1, #0	@ D.32982,
	movle	r3, #0	@ tmp185,
	mvnle	r1, #0	@ D.32985,
	strle	r3, [r2, #4]	@ tmp185, <variable>.TempImageNum
	ble	.L56	@,
	mov	r4, #392	@ tmp189,
	movw	r6, #19174	@ tmp225,
	mla	r2, r4, r1, r3	@ tmp192, tmp189, D.32982, tmp175
	add	r1, ip, #51456	@ tmp197, tmp221,
	mul	r6, r6, r0	@ tmp226, tmp225, InstId
	add	r5, r1, #80	@ tmp197, tmp197,
	add	r4, r2, ip	@ tmp193, tmp192, tmp221
	add	r5, r5, r3	@ D.35138, tmp197, tmp175
	add	r1, r4, #51456	@ ivtmp.888, tmp193,
	mov	r4, #0	@ tmp227,
	add	r3, r1, #80	@ ivtmp.888, ivtmp.888,
.L57:
	ldr	r1, [r3, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r3, r3, #392	@ ivtmp.888, ivtmp.888,
	cmp	r3, r5	@ ivtmp.888, D.35138
	movw	r2, #:lower16:.LANCHOR0	@ tmp201,
	add	r1, r6, r1	@ tmp204, tmp226, <variable>.image_id
	movt	r2, #:upper16:.LANCHOR0	@ tmp201,
	add	r1, r1, #178	@ tmp206, tmp204,
	add	r1, ip, r1, asl #2	@, tmp209, tmp221, tmp206,
	str	r4, [r1, #8]	@ tmp227, <variable>.LogicImageIsUsed
	bne	.L57	@,
	movw	ip, #:lower16:76696	@ tmp216,
	movt	ip, #:upper16:76696	@ tmp216,
	mov	r1, r4	@ D.32985, tmp227
	mla	r3, ip, r0, r2	@ tmp217, tmp216, InstId, tmp201
	add	ip, r3, #51456	@ tmp218, tmp217,
	add	r0, ip, #72	@ tmp218, tmp218,
	str	r4, [r0, #4]	@ tmp227, <variable>.TempImageNum
.L56:
	mov	r0, r1	@, D.32985
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	DNR_ClearTempImage, .-DNR_ClearTempImage
	.align	2
	.global	DNR_IsIFrame
	.type	DNR_IsIFrame, %function
DNR_IsIFrame:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #128]	@ D.32997, <variable>.is_fld_save
	cmp	r3, #0	@ D.32997,
	bne	.L61	@,
	ldr	r3, [r0, #140]	@ <variable>.format, <variable>.format
	tst	r3, #3	@ <variable>.format,
	movne	r0, #0	@, D.33010
	moveq	r0, #1	@, D.33010
	bx	lr	@
.L61:
	cmp	r3, #1	@ D.32997,
	beq	.L67	@,
.L63:
	mov	r0, #0	@ D.33010,
	bx	lr	@
.L67:
	ldr	r1, [r0, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, r1, #3	@ D.33003, <variable>.top_fld_type,
	beq	.L64	@,
	ldr	r2, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r2, #3	@ <variable>.bottom_fld_type,
	bne	.L63	@,
.L64:
	ldr	ip, [r0, #140]	@ <variable>.format, <variable>.format
	tst	ip, #3	@ <variable>.format,
	beq	.L65	@,
	cmp	r3, #0	@ D.33003,
	bne	.L65	@,
	ldr	r0, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	ands	r0, r0, #3	@ D.33010, <variable>.bottom_fld_type,
	movne	r0, #1	@, D.33010,
	bx	lr	@
.L65:
	mov	r0, #1	@ D.33010,
	bx	lr	@
	.fnend
	.size	DNR_IsIFrame, .-DNR_IsIFrame
	.align	2
	.global	DNR_GetSourceImgType
	.type	DNR_GetSourceImgType, %function
DNR_GetSourceImgType:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:g_eVdmVersion	@ tmp136,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp136,
	ldr	r1, [r2, #0]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r1, #3	@ tmp137, g_eVdmVersion,
	cmp	r3, #1	@ tmp137,
	bls	.L69	@,
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp139,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp139,
	ldr	ip, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	ip, #1	@ USE_FF_APT_EN,
	beq	.L72	@,
.L69:
	mov	r0, #0	@ D.33194,
	bx	lr	@
.L72:
	ldr	r1, [r0, #16]	@ <variable>.video_standard, <variable>.video_standard
	cmp	r1, #0	@ <variable>.video_standard,
	ldreqb	r0, [r0, #4]	@ zero_extendqisi2	@ D.33194, <variable>.pic_structure
	bxeq	lr	@
	mov	r0, #0	@ D.33194,
	bx	lr	@
	.fnend
	.size	DNR_GetSourceImgType, .-DNR_GetSourceImgType
	.align	2
	.global	DNR_SetDnrCfgDrDbDcEnable
	.type	DNR_SetDnrCfgDrDbDcEnable, %function
DNR_SetDnrCfgDrDbDcEnable:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movw	ip, #:lower16:.LANCHOR0	@ tmp199,
	movw	r4, #:lower16:76696	@ tmp147,
	movt	ip, #:upper16:.LANCHOR0	@ tmp199,
	movt	r4, #:upper16:76696	@ tmp147,
	mla	r4, r4, r1, ip	@ tmp148, tmp147, NextInstId, tmp199
	ldr	r5, [r4, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	cmp	r5, #0	@ <variable>.IsRwzb,
	bne	.L74	@,
	ldr	r2, [r2, #16]	@ D.33236, <variable>.video_standard
	cmp	r2, #8	@ D.33236,
	beq	.L74	@,
	cmp	r2, #1	@ D.33236,
	beq	.L74	@,
	ldr	r2, [r3, #32]	@ <variable>.MbWidth, <variable>.MbWidth
	cmp	r2, #45	@ <variable>.MbWidth,
	ble	.L84	@,
.L74:
	mov	r5, #0	@ tmp160,
	strb	r5, [r0, #0]	@ tmp160, <variable>.dc_en
	strb	r5, [r0, #2]	@ tmp160, <variable>.dr_en
	strb	r5, [r0, #1]	@ tmp160, <variable>.db_en
.L76:
	movw	r3, #:lower16:.LANCHOR1	@ tmp200,
	movt	r3, #:upper16:.LANCHOR1	@ tmp200,
	movw	r2, #:lower16:76696	@ tmp177,
	movt	r2, #:upper16:76696	@ tmp177,
	ldr	r5, [r3, #3048]	@ g_DREnable, g_DREnable
	mla	r2, r2, r1, ip	@ tmp178, tmp177, NextInstId, tmp199
	cmp	r5, #1	@ g_DREnable,
	ldrnesb	r4, [r0, #2]	@ iftmp.480, <variable>.dr_en
	moveq	r4, r5	@ iftmp.480, prephitmp.967
	str	r4, [r2, #36]	@ iftmp.480, <variable>.enDR
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	uxtbne	r5, r4	@ prephitmp.967, iftmp.480
	strb	r5, [r0, #2]	@ prephitmp.967, <variable>.dr_en
	ldr	r5, [r3, #3052]	@ g_DBEnable, g_DBEnable
	mla	r2, r2, r1, ip	@ tmp187, tmp186, NextInstId, tmp199
	cmp	r5, #1	@ g_DBEnable,
	ldrnesb	r4, [r0, #1]	@ iftmp.482, <variable>.db_en
	moveq	r4, r5	@ iftmp.482, prephitmp.956
	uxtbne	r5, r4	@ prephitmp.956, iftmp.482
	str	r4, [r2, #40]	@ iftmp.482, <variable>.enDB
	strb	r5, [r0, #1]	@ prephitmp.956, <variable>.db_en
	ldr	r3, [r3, #3056]	@ g_DCEnable, g_DCEnable
	cmp	r3, #1	@ g_DCEnable,
	moveq	r4, r3	@ prephitmp.968, g_DCEnable
	movw	r3, #:lower16:76696	@ tmp195,
	movt	r3, #:upper16:76696	@ tmp195,
	ldrnesb	r2, [r0, #0]	@ iftmp.484, <variable>.dc_en
	moveq	r2, r4	@ iftmp.484, prephitmp.968
	mla	ip, r3, r1, ip	@ tmp196, tmp195, NextInstId, tmp199
	uxtbne	r4, r2	@ prephitmp.968, iftmp.484
	str	r2, [ip, #44]	@ iftmp.484, <variable>.enDC
	strb	r4, [r0, #0]	@ prephitmp.968, <variable>.dc_en
	ldmfd	sp!, {r4, r5}
	bx	lr
.L84:
	ldr	r3, [r3, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	cmp	r3, #36	@ <variable>.MbHeight,
	bgt	.L74	@,
	ldr	r2, [r4, #32]	@ <variable>.userSetRwzb_state, <variable>.userSetRwzb_state
	cmp	r2, #1	@ <variable>.userSetRwzb_state,
	beq	.L74	@,
	mov	r3, #1	@ tmp166,
	strb	r5, [r0, #0]	@ <variable>.IsRwzb, <variable>.dc_en
	strb	r3, [r0, #1]	@ tmp166, <variable>.db_en
	strb	r3, [r0, #2]	@ tmp166, <variable>.dr_en
	b	.L76	@
	.fnend
	.size	DNR_SetDnrCfgDrDbDcEnable, .-DNR_SetDnrCfgDrDbDcEnable
	.align	2
	.global	DNR_SetDnrCfgPicStructure
	.type	DNR_SetDnrCfgPicStructure, %function
DNR_SetDnrCfgPicStructure:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	mov	r3, r0	@ pDnrCfg, pDnrCfg
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r0, #4	@ <variable>.pic_structure,
	beq	.L95	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp224,
	movw	ip, #:lower16:76696	@ tmp227,
	movt	r0, #:upper16:.LANCHOR0	@ tmp224,
	movt	ip, #:upper16:76696	@ tmp227,
	mov	r4, #0	@ tmp230,
	mla	r1, ip, r1, r0	@ tmp228, tmp227, NextInstId, tmp224
	mov	r0, r4	@ D.33301, tmp230
	str	r4, [r1, #24]	@ tmp230, <variable>.NeedStartAgain
.L94:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ <variable>.Range_mapuv, <variable>.Range_mapuv
	strb	r1, [r3, #8]	@ <variable>.Range_mapuv, <variable>.Range_mapuv
	ldrb	ip, [r2, #7]	@ zero_extendqisi2	@ <variable>.Range_mapuv_flag, <variable>.Range_mapuv_flag
	strb	ip, [r3, #7]	@ <variable>.Range_mapuv_flag, <variable>.Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ <variable>.Range_mapy, <variable>.Range_mapy
	strb	r1, [r3, #6]	@ <variable>.Range_mapy, <variable>.Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ <variable>.Range_mapy_flag, <variable>.Range_mapy_flag
	strb	r2, [r3, #5]	@ <variable>.Range_mapy_flag, <variable>.Range_mapy_flag
.L89:
	ldmfd	sp!, {r4}
	bx	lr
.L95:
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movw	ip, #:lower16:76696	@ tmp143,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:76696	@ tmp143,
	mla	r1, ip, r1, r0	@ tmp144, tmp143, NextInstId, tmp140
	ldr	r0, [r1, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	bne	.L87	@,
	ldr	ip, [r1, #188]	@ D.33280, <variable>.Cur1DImage.format
	and	r4, ip, #3072	@ tmp153, D.33280,
	cmp	r4, #3072	@ tmp153,
	moveq	ip, #1	@ tmp160,
	streq	ip, [r1, #24]	@ tmp160, <variable>.NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp160, <variable>.pic_structure
	beq	.L94	@,
	ands	r4, ip, #2048	@ tmp171, D.33280,
	beq	.L90	@,
.L93:
	str	r0, [r1, #24]	@ tmp213, <variable>.NeedStartAgain
	mov	r1, #2	@ tmp214,
	strb	r1, [r3, #3]	@ tmp214, <variable>.pic_structure
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapuv, <variable>.bottom_Range_mapuv
	strb	ip, [r3, #8]	@ <variable>.bottom_Range_mapuv, <variable>.Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapuv_flag, <variable>.bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ <variable>.bottom_Range_mapuv_flag, <variable>.Range_mapuv_flag
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapy, <variable>.bottom_Range_mapy
	strb	ip, [r3, #6]	@ <variable>.bottom_Range_mapy, <variable>.Range_mapy
	ldrb	r2, [r2, #0]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapy_flag, <variable>.bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ <variable>.bottom_Range_mapy_flag, <variable>.Range_mapy_flag
	b	.L89	@
.L87:
	mov	r0, #0	@ tmp213,
	b	.L93	@
.L90:
	tst	ip, #1024	@ D.33280,
	mvneq	r0, #0	@ D.33301,
	beq	.L89	@,
	str	r4, [r1, #24]	@ tmp171, <variable>.NeedStartAgain
	mov	r0, r4	@ D.33301, tmp171
	mov	r1, #1	@ tmp197,
	strb	r1, [r3, #3]	@ tmp197, <variable>.pic_structure
	b	.L94	@
	.fnend
	.size	DNR_SetDnrCfgPicStructure, .-DNR_SetDnrCfgPicStructure
	.align	2
	.global	DNR_IsStdNeedProcess
	.type	DNR_IsStdNeedProcess, %function
DNR_IsStdNeedProcess:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #10	@ tmp136, eVidStd,
	cmp	r3, #2	@ tmp136,
	bhi	.L97	@,
	movw	r2, #:lower16:g_VdmCharacter	@ tmp137,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp137,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L98	@,
.L97:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L98	@,
	cmp	r0, #18	@ eVidStd,
	movne	r0, #0	@, D.33600
	moveq	r0, #1	@, D.33600
	bx	lr	@
.L98:
	mov	r0, #1	@ D.33600,
	bx	lr	@
	.fnend
	.size	DNR_IsStdNeedProcess, .-DNR_IsStdNeedProcess
	.align	2
	.global	DNR_Fsp_ReleasePic
	.type	DNR_Fsp_ReleasePic, %function
DNR_Fsp_ReleasePic:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #19174	@ tmp138,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	mla	r2, ip, r0, r1	@ tmp139, tmp138, ChanID, PicBufID
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	ip, #0	@ tmp145,
	mov	r0, ip	@, tmp145
	add	r2, r2, #178	@ tmp140, tmp139,
	add	r3, r3, r2, asl #2	@, tmp143, tmp136, tmp140,
	str	ip, [r3, #8]	@ tmp145, <variable>.LogicImageIsUsed
	bx	lr	@
	.fnend
	.size	DNR_Fsp_ReleasePic, .-DNR_Fsp_ReleasePic
	.align	2
	.global	DNR_DelImageProc
	.type	DNR_DelImageProc, %function
DNR_DelImageProc:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pImageQueue
	bne	.L107	@,
.L104:
	mvn	r0, #0	@ D.34066,
	bx	lr	@
.L107:
	cmp	r1, #63	@ ImageID,
	bhi	.L104	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r2, r3, #976	@ tmp139, tmp137,
	cmp	r0, r2	@ pImageQueue, tmp139
	bne	.L104	@,
	add	r1, r1, #178	@ tmp141, ImageID,
	mov	ip, #0	@ tmp146,
	mov	r0, ip	@ D.34066, tmp146
	add	r3, r3, r1, asl #2	@, tmp144, tmp137, tmp141,
	str	ip, [r3, #8]	@ tmp146, <variable>.LogicImageIsUsed
	bx	lr	@
	.fnend
	.size	DNR_DelImageProc, .-DNR_DelImageProc
	.align	2
	.global	DNR_NeedDnr
	.type	DNR_NeedDnr, %function
DNR_NeedDnr:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movw	r2, #:lower16:76696	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	movt	r2, #:upper16:76696	@ tmp140,
	mla	r3, r2, r0, r3	@ tmp141, tmp140, ChanID, tmp137
	add	ip, r3, #75776	@ tmp142, tmp141,
	add	ip, ip, #904	@ tmp142, tmp142,
	ldr	r2, [ip, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	r0, #1	@ D.34320,
	bxne	lr	@
	ldr	r0, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r2, [ip, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	r0, r2	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	movhi	r0, #0	@ D.34320,
	bxhi	lr	@
	add	r3, r3, #75776	@ tmp157, tmp141,
	ldr	r0, [r1, #148]	@ <variable>.image_height, <variable>.image_height
	add	ip, r3, #912	@ tmp157, tmp157,
	ldr	r1, [ip, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r0, r1	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	movhi	r0, #0	@, D.34320
	movls	r0, #1	@, D.34320
	bx	lr	@
	.fnend
	.size	DNR_NeedDnr, .-DNR_NeedDnr
	.align	2
	.global	DNR_FsOccupyByVO
	.type	DNR_FsOccupyByVO, %function
DNR_FsOccupyByVO:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #368]	@ <variable>.is_processed_by_dnr, <variable>.is_processed_by_dnr
	ldr	ip, [r0, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	cmp	r3, #0	@ <variable>.is_processed_by_dnr,
	ldreq	r3, [r0, #104]	@ ImgStartAddr, <variable>.luma_phy_addr
	ldrne	r3, [r0, #120]	@ ImgStartAddr, <variable>.luma_2d_phy_addr
	add	r0, r3, ip	@ ImgEndAddr, ImgStartAddr, <variable>.ImgSize
	cmp	r3, r2	@ ImgStartAddr, DecPhyEndAddr
	movge	ip, #0	@, tmp151
	movlt	ip, #1	@, tmp151
	cmp	r3, r1	@ ImgStartAddr, DecPhyStartAddr
	movlt	ip, #0	@, tmp151,
	cmp	ip, #0	@ tmp151,
	bne	.L116	@,
	cmp	r0, r2	@ ImgEndAddr, DecPhyEndAddr
	movgt	ip, #0	@, tmp158
	movle	ip, #1	@, tmp158
	cmp	r0, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	ip, #0	@, tmp158,
	cmp	ip, #0	@ tmp158,
	bne	.L116	@,
	cmp	r0, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@, s32Count
	movgt	r0, #1	@, s32Count
	cmp	r3, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@, s32Count,
	bx	lr	@
.L116:
	mov	r0, #1	@ s32Count,
	bx	lr	@
	.fnend
	.size	DNR_FsOccupyByVO, .-DNR_FsOccupyByVO
	.align	2
	.global	DNR_FsIsInImgQue
	.type	DNR_FsIsInImgQue, %function
DNR_FsIsInImgQue:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r6, r1, #0	@ DecPhy, DecPhy
	mov	r9, r0	@ ChanID, ChanID
	bne	.L131	@,
.L120:
	mvn	r4, #0	@ s32Count,
.L125:
	mov	r0, r4	@, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L131:
	cmp	r2, #0	@ Size,
	beq	.L120	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp209,
	movw	sl, #:lower16:76696	@ tmp153,
	movt	r7, #:upper16:.LANCHOR0	@ tmp209,
	movt	sl, #:upper16:76696	@ tmp153,
	add	r8, r2, r6	@ DecPhyEndAddr, Size, DecPhy
	movw	r1, #26408	@ tmp151,
	mla	r2, sl, r0, r7	@ tmp154, tmp153, ChanID, tmp209
	add	r0, r2, #26368	@ tmp155, tmp154,
	add	r3, r0, #40	@ tmp155, tmp155,
	ldr	r5, [r2, r1]	@ i, <variable>.LogicImageQue.history
	ldr	sl, [r3, #4]	@ i.1147, <variable>.LogicImageQue.head
	and	r5, r5, #63	@ i.1146, i,
	cmp	sl, r5	@ i.1147, i.1146
	moveq	r4, #0	@ s32Count,
	beq	.L122	@,
	movw	fp, #19174	@ tmp164,
	mul	fp, fp, r9	@ tmp163, tmp164, ChanID
	add	r3, fp, r5	@ tmp165, tmp163, i.1146
	add	ip, r7, r3, asl #2	@, tmp170, tmp209, tmp165,
	ldr	r0, [ip, #1056]	@ pImage.1148, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1148,
	movne	r4, #0	@ s32Count,
	bne	.L123	@,
	b	.L120	@
.L124:
	ldr	r0, [r3, #1056]	@ pImage.1148, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1148,
	beq	.L120	@,
.L123:
	mov	r1, r6	@, DecPhy
	mov	r2, r8	@, DecPhyEndAddr
	bl	DNR_FsOccupyByVO	@
	add	r5, r5, #1	@ i.1143, i.1146,
	and	r5, r5, #63	@ i.1146, i.1143,
	add	r1, fp, r5	@ tmp175, tmp214, i.1146
	cmp	r5, sl	@ i.1146, i.1147
	add	r3, r7, r1, asl #2	@, tmp180, tmp209, tmp175,
	add	r4, r4, r0	@ s32Count, s32Count,
	bne	.L124	@,
.L122:
	movw	r2, #:lower16:76696	@ tmp185,
	movt	r2, #:upper16:76696	@ tmp185,
	movw	r0, #26416	@ tmp183,
	and	sl, sl, #63	@ i.1145, i.1147,
	mla	ip, r2, r9, r7	@ tmp186, tmp185, ChanID, tmp209
	movw	r2, #:lower16:.LANCHOR0	@ tmp182,
	movt	r2, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r5, [ip, r0]	@ D.34576, <variable>.LogicImageQue.tail
	cmp	r5, sl	@ D.34576, i.1145
	beq	.L125	@,
	movw	r0, #19174	@ tmp190,
	mul	r9, r0, r9	@ tmp189, tmp190, ChanID
	add	r3, r9, sl	@ tmp191, tmp189, i.1145
	add	r1, r2, r3, asl #2	@, tmp196, tmp182, tmp191,
	ldr	r0, [r1, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L120	@,
.L129:
	mov	r1, r6	@, DecPhy
	mov	r2, r8	@, DecPhyEndAddr
	bl	DNR_FsOccupyByVO	@
	add	sl, sl, #1	@ i.1144, i.1145,
	and	sl, sl, #63	@ i.1145, i.1144,
	add	ip, r9, sl	@ tmp201, tmp212, i.1145
	cmp	sl, r5	@ i.1145, D.34576
	add	r3, r7, ip, asl #2	@, tmp206, tmp209, tmp201,
	add	r4, r4, r0	@ s32Count, s32Count,
	beq	.L125	@,
	ldr	r0, [r3, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L129	@,
	b	.L120	@
	.fnend
	.size	DNR_FsIsInImgQue, .-DNR_FsIsInImgQue
	.align	2
	.global	DNR_SetDSDParam
	.type	DNR_SetDSDParam, %function
DNR_SetDSDParam:
	.fnstart
.LFB1656:
	@ args = 20, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movw	r5, #:lower16:76696	@ tmp157,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:76696	@ tmp157,
	add	ip, sp, #12	@ tmp136,,
	mla	r4, r5, r0, r4	@ tmp141, tmp157, ChanID, tmp137
	stmia	ip, {r1, r2, r3}	@ tmp136,,,
	ldr	r1, [sp, #16]	@ stDSDParam$s32ThrWidth, stDSDParam.s32ThrWidth
	add	ip, r4, #75776	@ tmp149, tmp141,
	ldr	r2, [sp, #20]	@ stDSDParam$s32ThrHeight, stDSDParam.s32ThrHeight
	ldr	r3, [sp, #12]	@ stDSDParam.s32DSDenable, stDSDParam.s32DSDenable
	add	r4, ip, #904	@ tmp142, tmp142,
	add	r0, ip, #912	@ tmp149, tmp149,
	str	r1, [r4, #8]	@ stDSDParam$s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	str	r2, [r0, #4]	@ stDSDParam$s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	str	r3, [r4, #4]	@ stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	ldmfd	sp!, {r4, r5}
	add	sp, sp, #16	@,,
	bx	lr
	.fnend
	.size	DNR_SetDSDParam, .-DNR_SetDSDParam
	.align	2
	.global	DNR_ChanIsOpen
	.type	DNR_ChanIsOpen, %function
DNR_ChanIsOpen:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #9587	@ tmp138,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	mul	r2, ip, r0	@ tmp137, tmp138, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r2, asl #3	@, tmp142, tmp136, tmp137,
	ldr	r0, [r3, #16]	@, <variable>.s32IsOpen
	bx	lr	@
	.fnend
	.size	DNR_ChanIsOpen, .-DNR_ChanIsOpen
	.align	2
	.global	DNR_OpenChan
	.type	DNR_OpenChan, %function
DNR_OpenChan:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #9587	@ tmp136,
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	mul	ip, r2, r0	@ tmp135, tmp136, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #1	@ tmp142,
	add	r3, r1, ip, asl #3	@, tmp140, tmp134, tmp135,
	str	r2, [r3, #16]	@ tmp142, <variable>.s32IsOpen
	bx	lr	@
	.fnend
	.size	DNR_OpenChan, .-DNR_OpenChan
	.align	2
	.global	DNR_SetDataSource
	.type	DNR_SetDataSource, %function
DNR_SetDataSource:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	mvnne	r0, #0	@ D.34679,
	bne	.L140	@,
	ldr	r6, [r2, #0]	@ <variable>.pstCaptureInFrm, <variable>.pstCaptureInFrm
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movw	r5, #:lower16:76676	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	movt	r5, #:upper16:76676	@ tmp139,
	movw	ip, #:lower16:76680	@ tmp142,
	movw	r4, #:lower16:76664	@ tmp145,
	movt	ip, #:upper16:76680	@ tmp142,
	str	r6, [r3, r5]	@ <variable>.pstCaptureInFrm, <variable>.pCaptureImageIn
	movt	r4, #:upper16:76664	@ tmp145,
	ldr	r2, [r2, #4]	@ <variable>.pstCaptureOutFrm, <variable>.pstCaptureOutFrm
	str	r1, [r3, r4]	@ DNRDataSourceFlag, <variable>.DNRCaptureEnableFlag
	str	r2, [r3, ip]	@ <variable>.pstCaptureOutFrm, <variable>.pCaptureImageOut
.L140:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	DNR_SetDataSource, .-DNR_SetDataSource
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r5, r0, #0	@ ChanID, ChanID
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	beq	.L171	@,
.L143:
	mvn	r0, #0	@ D.34454,
.L159:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L171:
	cmp	r1, #0	@ VoUsingFrameArray,
	beq	.L143	@,
	add	r0, sp, #16	@,,
	mov	r1, #8	@,
	str	r2, [sp, #0]	@,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp216,
	movt	r3, #:upper16:.LANCHOR0	@ tmp216,
	movw	r0, #26408	@ tmp162,
	movw	r7, #26412	@ tmp164,
	ldr	r1, [r3, r0]	@ i, <variable>.LogicImageQue.history
	ldr	ip, [r3, r7]	@ i.1315, <variable>.LogicImageQue.head
	and	r1, r1, #63	@ i.1323, i,
	ldr	r2, [sp, #0]	@,
	cmp	ip, r1	@ i.1315, i.1323
	moveq	r0, r5	@ s32UsingCount, ChanID
	beq	.L145	@,
	mov	r0, r5	@ s32UsingCount, ChanID
.L148:
	add	ip, r3, r1, asl #2	@, tmp170, tmp216, i.1323,
	add	r6, r4, r0, asl #3	@, D.34473, VoUsingFrameArray, s32UsingCount,
	ldr	ip, [ip, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	subs	r5, ip, #0	@ tmp178, pImage,
	movne	r5, #1	@ tmp178
	cmp	r0, #63	@ s32UsingCount,
	movgt	r5, #0	@, tmp178,
	cmp	r5, #0	@ tmp178,
	beq	.L146	@,
	ldr	r5, [ip, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r5, [r4, r0, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r0, r0, #1	@ s32UsingCount, s32UsingCount,
	ldr	lr, [ip, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	lr, [r6, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L147:
	add	r1, r1, #1	@ i.1301, i.1323,
	ldr	ip, [r3, r7]	@ i.1315, <variable>.LogicImageQue.head
	and	r1, r1, #63	@ i.1323, i.1301,
	cmp	ip, r1	@ i.1315, i.1323
	bne	.L148	@,
.L145:
	movw	r7, #26416	@ tmp185,
	and	r1, ip, #63	@ i.1321, i.1315,
	ldr	ip, [r3, r7]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	cmp	ip, r1	@ <variable>.LogicImageQue.tail, i.1321
	beq	.L154	@,
.L165:
	add	r5, r3, r1, asl #2	@, tmp192, tmp216, i.1321,
	add	r6, r4, r0, asl #3	@, temp.1308, VoUsingFrameArray, s32UsingCount,
	ldr	ip, [r5, #1056]	@ pImage.1302, <variable>.LogicImageQue.image_ptr
	subs	r5, ip, #0	@ tmp200, pImage.1302,
	movne	r5, #1	@ tmp200
	cmp	r0, #63	@ s32UsingCount,
	movgt	r5, #0	@, tmp200,
	cmp	r5, #0	@ tmp200,
	beq	.L152	@,
	ldr	r5, [ip, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r5, [r4, r0, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r0, r0, #1	@ s32UsingCount, s32UsingCount,
	ldr	lr, [ip, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	lr, [r6, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L153:
	add	r1, r1, #1	@ i.1312, i.1321,
	ldr	ip, [r3, r7]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	and	r1, r1, #63	@ i.1321, i.1312,
	cmp	ip, r1	@ <variable>.LogicImageQue.tail, i.1321
	bne	.L165	@,
.L154:
	cmp	r0, #0	@ s32UsingCount,
	beq	.L150	@,
	ldr	r3, [r4, #0]	@, <variable>.FrameAddr
	cmp	r3, #-2147483648	@,
	str	r3, [sp, #8]	@, %sfp
	beq	.L143	@,
	add	r7, r4, #16	@ ivtmp.1300, VoUsingFrameArray,
	mov	sl, #0	@ i.1313,
	str	r4, [sp, #4]	@ VoUsingFrameArray, %sfp
	mov	fp, r7	@ ivtmp.1300, ivtmp.1300
	str	r2, [sp, #12]	@ s32Num, %sfp
.L151:
	add	r7, sl, #1	@ j.1314, i.1313,
	cmp	r7, r0	@ j.1314, s32UsingCount
	bge	.L168	@,
	ldr	r8, [fp, #-8]	@ D.34490, <variable>.FrameAddr
	cmp	r8, #-2147483648	@ D.34490,
	mov	ip, r8	@ D.34496, D.34490
	beq	.L143	@,
	mvn	r6, r7	@ tmp220, j.1314
	add	r2, r6, r0	@ tmp219, tmp220, s32UsingCount
	tst	r2, #1	@ tmp219,
	mov	r1, fp	@ ivtmp.1290, ivtmp.1300
	mov	r6, sl	@ MinIndex, i.1313
	mov	r5, r7	@ j, j.1314
	beq	.L170	@,
	ldr	r6, [r4, sl, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r1, fp	@ ivtmp.1290, ivtmp.1300
	ldr	ip, [r1], #8	@ D.34496, <variable>.FrameAddr
	add	r5, r7, #1	@ j, j.1314,
	cmp	r8, r6	@ D.34490, <variable>.FrameAddr
	movge	r6, sl	@ MinIndex, i.1313
	movlt	r6, r7	@ MinIndex, j.1314
	cmp	ip, #-2147483648	@ D.34496,
	beq	.L143	@,
.L170:
	mov	r9, r7	@ j.1314, j.1314
	b	.L155	@
.L157:
	ldr	r7, [r2], #8	@ D.34496, <variable>.FrameAddr
	cmp	r7, #-2147483648	@ D.34496,
	beq	.L143	@,
	ldr	lr, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	ip, [r1, #8]	@ D.34496, <variable>.FrameAddr
	add	r1, r2, #8	@ ivtmp.1290, tmp222,
	cmp	r7, lr	@ D.34496, <variable>.FrameAddr
	movlt	r6, r3	@ MinIndex, tmp223
	cmp	ip, #-2147483648	@ D.34496,
	beq	.L143	@,
.L155:
	ldr	r7, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r3, r5, #1	@ tmp223, j,
	mov	r2, r1	@ tmp222, ivtmp.1290
	cmp	ip, r7	@ D.34496, <variable>.FrameAddr
	movlt	r6, r5	@ MinIndex, j
	cmp	r3, r0	@ tmp223, s32UsingCount
	add	r5, r3, #1	@ j, tmp223,
	blt	.L157	@,
	cmp	r6, sl	@ MinIndex, i.1313
	mov	r7, r9	@ j.1314, j.1314
	beq	.L158	@,
	ldr	sl, [sp, #8]	@, %sfp
	add	r3, r4, r6, asl #3	@, temp.1318, VoUsingFrameArray, MinIndex,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r2, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	str	sl, [sp, #16]	@, TempVoUsingFrameInfo.FrameAddr
	ldr	r1, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r2, [ip, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r8, [sp, #16]	@ TempVoUsingFrameInfo.FrameAddr, TempVoUsingFrameInfo.FrameAddr
	str	r1, [sp, #20]	@ <variable>.FrameSize, TempVoUsingFrameInfo.FrameSize
	str	lr, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r8, [r4, r6, asl #3]	@ TempVoUsingFrameInfo.FrameAddr, <variable>.FrameAddr
	ldr	sl, [sp, #20]	@ TempVoUsingFrameInfo.FrameSize, TempVoUsingFrameInfo.FrameSize
	ldr	r8, [fp, #-8]	@ D.34490, <variable>.FrameAddr
	str	sl, [r3, #4]	@ TempVoUsingFrameInfo.FrameSize, <variable>.FrameSize
.L158:
	cmp	r8, #-2147483648	@ D.34490,
	sub	r3, fp, #8	@, ivtmp.1300,
	str	r8, [sp, #8]	@ D.34490, %sfp
	mov	sl, r7	@ i.1313, j.1314
	str	r3, [sp, #4]	@, %sfp
	add	fp, fp, #8	@ ivtmp.1300, ivtmp.1300,
	bne	.L151	@,
	b	.L143	@
.L146:
	cmp	r0, #63	@ s32UsingCount,
	ble	.L147	@,
	b	.L143	@
.L152:
	cmp	r0, #63	@ s32UsingCount,
	ble	.L153	@,
	b	.L143	@
.L168:
	ldr	r2, [sp, #12]	@ s32Num, %sfp
.L150:
	str	r0, [r2, #0]	@ s32UsingCount,* s32Num
	mov	r0, #0	@ D.34454,
	b	.L159	@
	.fnend
	.size	DNR_GetVoUsingFrameInQue, .-DNR_GetVoUsingFrameInQue
	.align	2
	.global	DNR_Fsp_Reset
	.type	DNR_Fsp_Reset, %function
DNR_Fsp_Reset:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L174	@ tmp136,
	mov	r1, #256	@,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:76696	@ tmp142,
	movt	r3, #:upper16:76696	@ tmp142,
	mla	r0, r3, r0, r2	@ tmp140, tmp142, ChanID, tmp136
	add	r0, r0, #712	@, tmp140,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L175:
	.align	2
.L174:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Fsp_Reset, .-DNR_Fsp_Reset
	.align	2
	.global	DNR_Fsp_Init
	.type	DNR_Fsp_Init, %function
DNR_Fsp_Init:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	b	DNR_Fsp_Reset	@
	.fnend
	.size	DNR_Fsp_Init, .-DNR_Fsp_Init
	.align	2
	.global	DNR_SetDetPara
	.type	DNR_SetDetPara, %function
DNR_SetDetPara:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ NextInstId, NextInstId
	mov	r1, #44	@,
	mov	r5, r0	@ pDetPara, pDetPara
	mov	r6, r2	@ SourceImgStoreType, SourceImgStoreType
	bl	__memzero	@
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movw	r0, #:lower16:76696	@ tmp169,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	movt	r0, #:upper16:76696	@ tmp169,
	rsbs	r6, r6, #1	@ tmp168, SourceImgStoreType
	movcc	r6, #0	@ tmp168
	mla	r4, r0, r4, ip	@ tmp142, tmp169, NextInstId, tmp138
	ldr	r1, [r4, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	str	r1, [r5, #8]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.pPicBufY
	ldr	r3, [r4, #192]	@ D.33212, <variable>.Cur1DImage.image_width
	add	r2, r3, #15	@ tmp164, D.33212,
	str	r3, [r5, #20]	@ D.33212, <variable>.PicWidth
	ldr	ip, [r4, #196]	@ D.33214, <variable>.Cur1DImage.image_height
	mov	r1, r2, asr #4	@ tmp165, tmp164,
	add	r0, ip, #15	@ tmp166, D.33214,
	str	ip, [r5, #24]	@ D.33214, <variable>.PicHeight
	ldr	r2, [r4, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r3, r0, asr #4	@ tmp167, tmp166,
	str	r6, [r5, #40]	@ tmp168, <variable>.IsFrameStored
	str	r1, [r5, #32]	@ tmp165, <variable>.MbWidth
	str	r2, [r5, #28]	@ <variable>.Cur1DImage.image_stride, <variable>.PicStride
	str	r3, [r5, #36]	@ tmp167, <variable>.MbHeight
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_SetDetPara, .-DNR_SetDetPara
	.align	2
	.global	DNR_EnableChanWithoutArrange
	.type	DNR_EnableChanWithoutArrange, %function
DNR_EnableChanWithoutArrange:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #16
	sub	sp, sp, #16	@,,
	mvngt	r0, #0	@ D.34644,
	ble	.L184	@,
.L182:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L184:
	movw	r1, #:lower16:76696	@ tmp139,
	movt	r1, #:upper16:76696	@ tmp139,
	movw	r5, #:lower16:.LANCHOR0	@ tmp136,
	movt	r5, #:upper16:.LANCHOR0	@ tmp136,
	mul	r7, r1, r4	@ tmp138, tmp139, ChanID
	add	r6, r5, #8	@ tmp137, tmp136,
	mov	r8, sp	@ tmp142,
	add	r0, r6, r7	@, tmp137, tmp138
	bl	__memzero	@
	mov	r3, r4	@, ChanID
	mov	r1, #16	@,
	mov	r0, sp	@,
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	add	r1, r7, #968	@ tmp148, tmp138,
	add	r0, r6, r1	@, tmp137, tmp148
	movw	r2, #:lower16:DNR_DelImageProc	@,
	mov	r1, sp	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp154,
	mul	r4, r0, r4	@ tmp153, tmp154, ChanID
	mov	r3, #1	@ tmp160,
	mov	r0, #0	@ D.34644,
	add	r5, r5, r4, asl #3	@, tmp158, tmp136, tmp153,
	str	r3, [r5, #16]	@ tmp160, <variable>.s32IsOpen
	b	.L182	@
	.fnend
	.size	DNR_EnableChanWithoutArrange, .-DNR_EnableChanWithoutArrange
	.align	2
	.global	DNR_ArrangeMem
	.type	DNR_ArrangeMem, %function
DNR_ArrangeMem:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #440
	sub	sp, sp, #440	@,,
	ble	.L194	@,
.L186:
	mvn	r0, #0	@ D.34597,
.L191:
	add	sp, sp, #440	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L194:
	cmp	r1, #0	@ pChanMem,
	beq	.L186	@,
	ldr	r0, [r1, #0]	@ D.34602, <variable>.PhyAddr
	cmp	r0, #0	@ D.34602,
	beq	.L186	@,
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L186	@,
	ldr	r1, [r1, #8]	@ D.34606, <variable>.Length
	cmp	r1, #0	@ D.34606,
	ble	.L186	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	ip, [ip, #36]	@ D.34610, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34610,
	beq	.L187	@,
	mov	lr, #0	@ tmp161,
	mvn	r5, #0	@ tmp164,
	str	lr, [sp, #8]	@ tmp161,
	str	lr, [sp, #0]	@ tmp161,
	add	lr, lr, #64	@ tmp162, tmp162,
	str	r5, [sp, #12]	@ tmp164,
	add	r5, sp, #24	@ tmp165,,
	str	lr, [sp, #20]	@ tmp162,
	str	lr, [sp, #4]	@ tmp162,
	str	r5, [sp, #16]	@ tmp165,
	blx	ip	@ D.34610
	cmp	r0, #0	@ D.34612
	bne	.L187	@,
	movw	r6, #:lower16:76696	@ tmp170,
	movt	r6, #:upper16:76696	@ tmp170,
	movw	r3, #:lower16:.LANCHOR0	@ tmp205,
	movt	r3, #:upper16:.LANCHOR0	@ tmp205,
	mul	r1, r6, r4	@ tmp169, tmp170, ChanID
	ldr	ip, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r4, r3, #8	@ tmp168, tmp205,
	mov	r7, r5	@ ivtmp.1464, tmp165
	mov	r6, r0	@ i, D.34612
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp180,
	add	lr, r1, r3	@ tmp177, tmp169, tmp205
	add	r5, r1, #26368	@ tmp171, tmp169,
	add	r0, lr, #456	@ tmp178, tmp177,
	add	r8, r5, #64	@ tmp171, tmp171,
	str	ip, [lr, #456]	@ tmp180, <variable>.s32ValidImgNum
	add	r5, r4, r1	@ ivtmp.1468, tmp168, tmp169
	ldr	r2, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, r8	@ pLogicImage, tmp168, tmp171
	ldr	r1, [sp, #32]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r8, r0	@ tmp209, tmp178
	rsb	r3, r1, r2	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r0, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
.L190:
	ldr	ip, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r6, ip	@ i, <variable>.s32ValidImgNum
	add	r6, r6, #1	@ i, i,
	ldrlt	ip, [r7, #8]	@ D.34624, MemArrange.FrameAddr
	add	r7, r7, #4	@ ivtmp.1464, ivtmp.1464,
	ldrge	ip, [sp, #32]	@ temp.1476, MemArrange.FrameAddr
	str	ip, [r5, #456]	@ temp.1476, <variable>.s32ImageAddr
	mov	r0, ip	@, temp.1476
	str	ip, [r4, #120]	@ temp.1476, <variable>.luma_2d_phy_addr
	add	r5, r5, #4	@ ivtmp.1468, ivtmp.1468,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r6, #64	@ i,
	str	r2, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	bne	.L190	@,
.L187:
	mov	r0, #0	@ D.34597,
	b	.L191	@
	.fnend
	.size	DNR_ArrangeMem, .-DNR_ArrangeMem
	.align	2
	.global	CalcFrameCheckSum
	.type	CalcFrameCheckSum, %function
CalcFrameCheckSum:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ p_image, p_image
	ldr	r4, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r0, [r0, #88]	@, <variable>.top_luma_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r4, r4, lsr #3	@ ivtmp.1519, <variable>.image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L196	@,
	ldr	r7, [r5, #148]	@ temp.1523, <variable>.image_height
	cmp	r7, #0	@ temp.1523,
	beq	.L196	@,
	ldr	r8, [r5, #172]	@ pretmp.1498, <variable>.image_stride
	mov	r6, r4	@ D.35787, ivtmp.1519
	ldr	r5, [r5, #144]	@ pretmp.1522, <variable>.image_width
	mov	r0, #0	@ CheckSum,
	bic	r8, r8, #3	@ pretmp.1524, pretmp.1498,
.L199:
	cmp	r5, #0	@ pretmp.1522,
	add	r1, r1, r8	@ p32, p32, pretmp.1524
	beq	.L197	@,
	mov	r3, #1	@ x,
	ldr	r2, [r1, #0]	@ tmp150,* p32
	cmp	r5, r3	@ pretmp.1522, x
	sub	ip, r5, #1	@ tmp154, pretmp.1522,
	and	ip, ip, r3	@ tmp156, tmp154,
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L197	@,
	cmp	ip, #0	@ tmp156,
	beq	.L198	@,
	mov	r3, #2	@ x,
	cmp	r5, r3	@ pretmp.1522, x
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L197	@,
.L198:
	add	lr, r3, #1	@ tmp157, x,
	mov	ip, r3, asr #2	@ tmp159, x,
	add	r3, lr, #1	@ x, tmp157,
	mov	r2, lr, asr #2	@ tmp163, tmp157,
	ldr	lr, [r1, ip, asl #2]	@ tmp160,* p32
	cmp	r5, r3	@ pretmp.1522, x
	ldr	r2, [r1, r2, asl #2]	@ tmp164,* p32
	add	r0, r0, lr	@ CheckSum, CheckSum, tmp160
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp164
	bhi	.L198	@,
.L197:
	add	r4, r4, r6	@ ivtmp.1519, ivtmp.1519, D.35787
	rsb	r3, r6, r4	@ tmp151, D.35787, ivtmp.1519
	cmp	r7, r3	@ temp.1523, tmp151
	bhi	.L199	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L196:
	mov	r0, #0	@ CheckSum,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	CalcFrameCheckSum, .-CalcFrameCheckSum
	.align	2
	.global	DNR_EnableChan
	.type	DNR_EnableChan, %function
DNR_EnableChan:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r5, r1	@ pChanMem, pChanMem
	ble	.L218	@,
.L210:
	mvn	r0, #0	@ D.32725,
.L216:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L218:
	movw	r1, #:lower16:76696	@ tmp154,
	movt	r1, #:upper16:76696	@ tmp154,
	movw	r6, #:lower16:.LANCHOR0	@ tmp229,
	movt	r6, #:upper16:.LANCHOR0	@ tmp229,
	mul	r7, r1, r4	@ tmp153, tmp154, ChanID
	add	r8, r6, #8	@ tmp228, tmp229,
	str	r2, [sp, #28]	@,
	str	r3, [sp, #24]	@,
	add	sl, r8, r7	@ tmp155, tmp228, tmp153
	mov	r0, sl	@, tmp155
	bl	__memzero	@
	cmp	r5, #0	@ pChanMem,
	ldr	r2, [sp, #28]	@,
	ldr	r3, [sp, #24]	@,
	beq	.L210	@,
	ldr	r0, [r5, #0]	@ D.32737, <variable>.PhyAddr
	cmp	r0, #0	@ D.32737,
	beq	.L210	@,
	ldr	r1, [r5, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L210	@,
	ldr	r1, [r5, #8]	@ D.32741, <variable>.Length
	cmp	r1, #0	@ D.32741,
	ble	.L210	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp158,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp158,
	ldr	r9, [ip, #36]	@ D.32745, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r9, #0	@ D.32745,
	beq	.L211	@,
	mov	r5, #0	@ tmp159,
	mvn	lr, #0	@ tmp162,
	add	ip, r5, #64	@ tmp160, tmp160,
	str	r5, [sp, #8]	@ tmp159,
	str	r5, [sp, #0]	@ tmp159,
	add	r5, sp, #32	@ tmp163,,
	str	ip, [sp, #20]	@ tmp160,
	str	lr, [sp, #12]	@ tmp162,
	str	ip, [sp, #4]	@ tmp160,
	str	r5, [sp, #16]	@ tmp163,
	blx	r9	@ D.32745
	cmp	r0, #0	@ D.32747
	bne	.L211	@,
	add	lr, r7, r6	@ tmp175, tmp153, tmp229
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r9, r7, #26368	@ tmp169, tmp153,
	add	r2, lr, #456	@ tmp176, tmp175,
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp178,
	str	ip, [lr, #456]	@ tmp178, <variable>.s32ValidImgNum
	add	r7, r9, #64	@ tmp169, tmp169,
	ldr	r1, [sp, #44]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r9, r0	@ i, D.32747
	ldr	r0, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r7, r8, r7	@ pLogicImage, tmp228, tmp169
	mov	fp, r2	@ tmp234, tmp176
	rsb	r3, r0, r1	@ tmp187, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r2, #4]	@ tmp187, <variable>.s32ImgBlockMemSize
	b	.L215	@
.L220:
	ldr	ip, [r5, #8]	@ D.32759, MemArrange.FrameAddr
	str	ip, [sl, #456]	@ D.32759, <variable>.s32ImageAddr
	mov	r0, ip	@, D.32759
	str	ip, [r7, #120]	@ D.32759, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [fp, #4]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r3, [r7, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
.L213:
	add	r9, r9, #1	@ i, i,
	add	r7, r7, #392	@ pLogicImage, pLogicImage,
	cmp	r9, #64	@ i,
	add	r5, r5, #4	@ ivtmp.1573, ivtmp.1573,
	add	sl, sl, #4	@ ivtmp.1577, ivtmp.1577,
	beq	.L219	@,
.L215:
	ldr	r2, [fp, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r2, r9	@ <variable>.s32ValidImgNum, i
	bgt	.L220	@,
	ldr	lr, [sp, #40]	@ temp.1588, MemArrange.FrameAddr
	str	lr, [sl, #456]	@ temp.1588, <variable>.s32ImageAddr
	mov	r0, lr	@, temp.1588
	str	lr, [r7, #120]	@ temp.1588, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	b	.L213	@
.L211:
	mov	r0, #0	@ D.32725,
	b	.L216	@
.L219:
	add	r5, sp, #448	@ tmp208,,
	mov	r3, r4	@, ChanID
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC0	@,
	mov	r0, r5	@, tmp208
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	movw	r3, #:lower16:76696	@ tmp213,
	movt	r3, #:upper16:76696	@ tmp213,
	mov	r1, r5	@, tmp208
	movw	r2, #:lower16:DNR_DelImageProc	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	mla	ip, r3, r4, r8	@ tmp215, tmp213, ChanID, tmp228
	add	r0, ip, #968	@, tmp215,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp220,
	mul	r4, r0, r4	@ tmp219, tmp220, ChanID
	mov	r3, #1	@ tmp226,
	mov	r0, #0	@ D.32725,
	add	r6, r6, r4, asl #3	@, tmp224, tmp229, tmp219,
	str	r3, [r6, #16]	@ tmp226, <variable>.s32IsOpen
	b	.L216	@
	.fnend
	.size	DNR_EnableChan, .-DNR_EnableChan
	.align	2
	.global	DNR_ProcessWaitTime
	.type	DNR_ProcessWaitTime, %function
DNR_ProcessWaitTime:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:g_DnrSleepTime	@ tmp137,
	movt	r4, #:upper16:g_DnrSleepTime	@ tmp137,
	ldr	r3, [r4, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	movwle	r5, #:lower16:.LANCHOR1	@ tmp146,
	movtle	r5, #:upper16:.LANCHOR1	@ tmp146,
	ble	.L222	@,
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR1	@ tmp146,
	movt	r5, #:upper16:.LANCHOR1	@ tmp146,
	ldr	r3, [r4, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r1, [r5, #3060]	@ timePrevDo, timePrevDo
	rsb	r2, r1, r0	@ tmp140, timePrevDo,
	cmp	r2, r3	@ tmp140, g_DnrSleepTime
	movcc	r3, #1	@ D.33130,
	bcc	.L223	@,
.L222:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.33130,
	str	r0, [r5, #3060]	@, timePrevDo
.L223:
	mov	r0, r3	@, D.33130
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DNR_ProcessWaitTime, .-DNR_ProcessWaitTime
	.align	2
	.global	DNR_ReleaseUsrData
	.type	DNR_ReleaseUsrData, %function
DNR_ReleaseUsrData:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r1	@ pImage, pImage
	ldr	r1, [r1, #192]	@ temp.1642, <variable>.p_usrdat
	mov	r5, r0	@ ChanID, ChanID
	cmp	r1, #0	@ temp.1642,
	beq	.L228	@,
	movw	r2, #:lower16:pstVdecUsdPool	@ tmp143,
	movt	r2, #:upper16:pstVdecUsdPool	@ tmp143,
	ldr	r3, [r2, r0, asl #2]	@ tmp144, pstVdecUsdPool
	cmp	r3, #0	@ tmp144,
	beq	.L228	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp145,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp145,
	ldr	r2, [ip, r0, asl #2]	@ temp.1644, s_pstVfmwChan
	cmp	r2, #0	@ temp.1644,
	beq	.L228	@,
	movw	r3, #:lower16:217508	@ tmp146,
	movt	r3, #:upper16:217508	@ tmp146,
	ldr	ip, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L233	@,
.L228:
	ldr	r1, [r4, #196]	@ temp.1647, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1647,
	beq	.L229	@,
	movw	ip, #:lower16:pstVdecUsdPool	@ tmp150,
	movt	ip, #:upper16:pstVdecUsdPool	@ tmp150,
	ldr	r2, [ip, r5, asl #2]	@ tmp151, pstVdecUsdPool
	cmp	r2, #0	@ tmp151,
	beq	.L229	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	ldr	r2, [r3, r5, asl #2]	@ temp.1649, s_pstVfmwChan
	cmp	r2, #0	@ temp.1649,
	beq	.L229	@,
	movw	r3, #:lower16:217508	@ tmp153,
	movt	r3, #:upper16:217508	@ tmp153,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	ip, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, ip	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L234	@,
.L229:
	ldr	r1, [r4, #200]	@ temp.1652, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1652,
	beq	.L230	@,
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp157,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp157,
	ldr	r2, [r0, r5, asl #2]	@ tmp158, pstVdecUsdPool
	cmp	r2, #0	@ tmp158,
	beq	.L230	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp159,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp159,
	ldr	r2, [ip, r5, asl #2]	@ temp.1654, s_pstVfmwChan
	cmp	r2, #0	@ temp.1654,
	beq	.L230	@,
	movw	ip, #:lower16:217508	@ tmp160,
	movt	ip, #:upper16:217508	@ tmp160,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, ip]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L235	@,
.L230:
	ldr	r1, [r4, #204]	@ D.34330, <variable>.p_usrdat
	cmp	r1, #0	@ D.34330,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp164,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp164,
	ldr	r2, [r0, r5, asl #2]	@ tmp165, pstVdecUsdPool
	cmp	r2, #0	@ tmp165,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp166,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp166,
	ldr	r2, [r3, r5, asl #2]	@ D.34337, s_pstVfmwChan
	cmp	r2, #0	@ D.34337,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r3, #:lower16:217508	@ tmp167,
	movt	r3, #:upper16:217508	@ tmp167,
	ldr	ip, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r0, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, r0	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp170,
	str	r1, [r4, #204]	@ tmp170, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L233:
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #192]	@ tmp149, <variable>.p_usrdat
	b	.L228	@
.L234:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #196]	@ tmp156, <variable>.p_usrdat
	b	.L229	@
.L235:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp163,
	str	r1, [r4, #200]	@ tmp163, <variable>.p_usrdat
	b	.L230	@
	.fnend
	.size	DNR_ReleaseUsrData, .-DNR_ReleaseUsrData
	.global	__aeabi_uidivmod
	.align	2
	.global	DNR_ReleaseImage
	.type	DNR_ReleaseImage, %function
DNR_ReleaseImage:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ p_image, p_image
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L253	@,
.L237:
	mvn	r7, #0	@ ret,
.L240:
	mov	r0, r7	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L253:
	cmp	r1, #0	@ p_image,
	beq	.L237	@,
	ldr	r2, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r3, [sp, #0]	@ ChanID, BtmPhyAddr
	cmp	r2, #0	@ <variable>.top_luma_phy_addr,
	str	r3, [sp, #4]	@ ChanID, TopPhyAddr
	beq	.L237	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L238	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L238	@,
	ldr	r6, [r4, #176]	@ D.34378, <variable>.image_id
	movw	r5, #:lower16:.LANCHOR0	@ tmp231,
	movt	r5, #:upper16:.LANCHOR0	@ tmp231,
	add	r2, sp, #4	@,,
	mov	r3, sp	@,
	add	r0, r5, #976	@, tmp231,
	mov	r1, r6	@, D.34378
	bl	IMGQUE_DeleteImage	@
	mov	r7, r0	@ ret.1689,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L254	@,
.L241:
	movw	r0, #:lower16:76684	@ tmp169,
	movt	r0, #:upper16:76684	@ tmp169,
	cmp	r7, #1	@ ret.1689,
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	ldr	r8, [r5, r0]	@ prephitmp.1676, <variable>.stDSDParam.s32DSDenable
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	cmp	r8, #1	@ prephitmp.1676,
	beq	.L255	@,
.L244:
	mov	r0, r6	@, D.34378
	mov	r1, #100	@,
	bl	__aeabi_uidivmod	@
	mov	r6, #392	@ tmp186,
	movw	r0, #26560	@ tmp184,
	ldr	r2, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	mul	r3, r6, r1	@ tmp185, tmp186, tmp182
	movw	r6, #:lower16:.LANCHOR0	@ tmp183,
	movt	r6, #:upper16:.LANCHOR0	@ tmp183,
	add	r5, r3, r5	@ tmp187, tmp185, tmp231
	ldr	ip, [r5, r0]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	ip, r2	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	beq	.L246	@,
	rsbs	r3, r7, #1	@ prephitmp.1678, ret
	movcc	r3, #0	@ prephitmp.1678
.L247:
	cmp	r8, #1	@ prephitmp.1676,
	movne	r3, #0	@, tmp225
	andeq	r3, r3, #1	@,, tmp225, prephitmp.1678
	cmp	r3, #0	@ tmp225,
	beq	.L240	@,
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_RlsDSDFrame	@
	mov	r7, r0	@ ret,
	b	.L240	@
.L238:
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_ReleaseChanImage	@
	cmp	r0, #0	@ D.34375
	bne	.L237	@,
	mov	r7, r0	@ ret,
	b	.L240	@
.L254:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp162,
	movt	r3, #:upper16:.LANCHOR1	@ tmp162,
	movw	r2, #:lower16:g_TraceImgPeriod	@ tmp165,
	movt	r2, #:upper16:g_TraceImgPeriod	@ tmp165,
	ldr	ip, [r3, #3064]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r8, [r2, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp163, last_rec_pos_time, currtime
	cmp	r1, r8	@ tmp163, g_TraceImgPeriod
	strhi	r0, [r3, #3064]	@ currtime, last_rec_pos_time
	b	.L241	@
.L246:
	add	r2, r1, #178	@ tmp194, tmp182,
	add	r3, r6, r3	@ tmp204, tmp183, tmp185
	add	ip, r3, #26368	@, tmp204,
	mov	lr, #0	@ tmp199,
	add	r8, r6, r2, asl #2	@, tmp197, tmp183, tmp194,
	add	r1, ip, #72	@,,
	mov	r0, lr	@, tmp199
	str	lr, [r8, #8]	@ tmp199, <variable>.LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	movw	r1, #:lower16:76684	@ tmp208,
	movt	r1, #:upper16:76684	@ tmp208,
	rsbs	r3, r7, #1	@ prephitmp.1678, ret
	movcc	r3, #0	@ prephitmp.1678
	ldr	r8, [r6, r1]	@ prephitmp.1676, <variable>.stDSDParam.s32DSDenable
	b	.L247	@
.L255:
	movw	ip, #:lower16:76688	@ tmp171,
	movt	ip, #:upper16:76688	@ tmp171,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r1, [r3, ip]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	lr, r1	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	bhi	.L245	@,
	movw	r2, #:lower16:76692	@ tmp175,
	movt	r2, #:upper16:76692	@ tmp175,
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r3, [r3, r2]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r0, r3	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	bls	.L244	@,
.L245:
	ldr	r6, [r4, #176]	@ temp.1691, <variable>.image_id
	mov	r0, #0	@,
	ldr	ip, [r4, #380]	@ <variable>.resetNum, <variable>.resetNum
	mov	r1, r4	@, p_image
	add	lr, r6, ip	@ tmp227, temp.1691, <variable>.resetNum
	sub	r7, lr, #6	@ tmp229, tmp227,
	str	r7, [r4, #176]	@ tmp229, <variable>.image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r7, r0, #0	@ ret,
	strne	r6, [r4, #176]	@ temp.1691, <variable>.image_id
	mvnne	r7, #0	@ ret,
	bne	.L240	@,
	ldr	r8, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r0, #:lower16:76684	@ tmp220,
	movt	r0, #:upper16:76684	@ tmp220,
	mov	r3, #1	@ prephitmp.1678,
	add	r1, r5, r8, asl #2	@, tmp216, tmp231, <variable>.image_id,
	str	r7, [r1, #744]	@ ret, <variable>.LogicImageIsUsed
	str	r6, [r4, #176]	@ temp.1691, <variable>.image_id
	ldr	r8, [r5, r0]	@ prephitmp.1676, <variable>.stDSDParam.s32DSDenable
	b	.L247	@
	.fnend
	.size	DNR_ReleaseImage, .-DNR_ReleaseImage
	.align	2
	.global	DNR_ReceiveImage
	.type	DNR_ReceiveImage, %function
DNR_ReceiveImage:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ p_image, p_image
	beq	.L266	@,
.L257:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L266:
	cmp	r1, #0	@ p_image,
	beq	.L257	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp200,
	movt	r5, #:upper16:.LANCHOR0	@ tmp200,
	ldr	r3, [r5, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #0	@ <variable>.s32IsOpen,
	beq	.L257	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	mov	r6, r0	@ eVidStd,
	beq	.L258	@,
	cmp	r0, #18	@ eVidStd,
	bne	.L259	@,
.L258:
	mov	r0, #0	@,
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.34260
	bne	.L257	@,
	cmp	r6, #18	@ eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r4, #120]	@ D.34265, <variable>.luma_2d_phy_addr
	ldr	lr, [r4, #124]	@ D.34267, <variable>.chrom_2d_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r3, [r4, #88]	@ D.34265, <variable>.top_luma_phy_addr
	add	ip, r1, lr	@ tmp158, <variable>.image_stride, D.34267
	add	r2, r1, r3	@ tmp156, <variable>.image_stride, D.34265
	str	ip, [r4, #100]	@ tmp158, <variable>.btm_chrom_phy_addr
	str	r2, [r4, #96]	@ tmp156, <variable>.btm_luma_phy_addr
	str	lr, [r4, #92]	@ D.34267, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L259:
	mov	r1, r4	@, p_image
	add	r0, r5, #976	@, tmp200,
	bl	IMGQUE_GetImage	@
	mov	r6, r0	@ ret.1717,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L267	@,
.L262:
	cmp	r6, #1	@ ret.1717,
	bne	.L257	@,
	ldr	lr, [r4, #176]	@ D.34292, <variable>.image_id
	movw	r6, #:lower16:.LANCHOR0	@ tmp168,
	movt	r6, #:upper16:.LANCHOR0	@ tmp168,
	add	r0, lr, #178	@ tmp169, D.34292,
	add	r5, r5, r0, asl #2	@, tmp172, tmp200, tmp169,
	ldr	r2, [r5, #8]	@ D.34293, <variable>.LogicImageIsUsed
	cmp	r2, #3	@ D.34293,
	beq	.L257	@,
	movw	ip, #:lower16:76684	@ tmp175,
	movt	ip, #:upper16:76684	@ tmp175,
	ldr	r3, [r6, ip]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r3, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L263	@,
	cmp	r2, #2	@ D.34293,
	beq	.L263	@,
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	DNR_ReleaseImage	@
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #0	@ tmp184,
	mvn	r0, #0	@ ret,
	add	r1, r3, #178	@ tmp178, <variable>.image_id,
	add	r6, r6, r1, asl #2	@, tmp182, tmp168, tmp178,
	str	r2, [r6, #8]	@ tmp184, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L267:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp162,
	movt	r3, #:upper16:.LANCHOR1	@ tmp162,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp165,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp165,
	ldr	ip, [r3, #3068]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp163, last_rec_pos_time, currtime
	cmp	r1, r2	@ tmp163, g_TraceImgPeriod
	strhi	r0, [r3, #3068]	@ currtime, last_rec_pos_time
	b	.L262	@
.L263:
	mov	r0, #3	@ tmp198,
	str	r0, [r5, #8]	@ tmp198, <variable>.LogicImageIsUsed
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_PushTempImageToVOQ
	.type	DNR_PushTempImageToVOQ, %function
DNR_PushTempImageToVOQ:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	movw	r3, #:lower16:76696	@ tmp148,
	movt	r3, #:upper16:76696	@ tmp148,
	str	r0, [sp, #8]	@ InstId, %sfp
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r2, [sp, #8]	@, %sfp
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #20]	@, %sfp
	mul	r3, r3, r2	@ tmp147, tmp148,
	add	ip, r3, r0	@ tmp149, tmp147,
	add	r1, ip, #51456	@ tmp150, tmp149,
	add	r1, r1, #72	@ tmp150, tmp150,
	ldr	r2, [r1, #4]	@ prephitmp.1735, <variable>.TempImageNum
	cmp	r2, #0	@ prephitmp.1735,
	movle	r3, #0	@ tmp157,
	mvnle	r0, #0	@ D.32953,
	strle	r3, [r1, #4]	@ tmp157, <variable>.TempImageNum
	ble	.L270	@,
	sub	r4, r2, #1	@ i, prephitmp.1735,
	mov	r5, #392	@ tmp161,
	ldr	r6, [sp, #20]	@, %sfp
	movw	r0, #51760	@ tmp159,
	mla	r3, r5, r4, r3	@ tmp164, tmp161, i, tmp147
	add	r5, r3, r6	@ tmp165, tmp164,
	ldr	r3, [r5, r0]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r3, #1	@ <variable>.last_frame,
	moveq	r2, #0	@ tmp177,
	streq	r2, [r5, r0]	@ tmp177, <variable>.last_frame
	streq	r3, [ip, r0]	@ <variable>.last_frame, <variable>.last_frame
	ldreq	r2, [r1, #4]	@ prephitmp.1735, <variable>.TempImageNum
	subeq	r4, r2, #1	@ i, prephitmp.1735,
	cmp	r4, #0	@ i,
	blt	.L272	@,
	ldr	ip, [sp, #8]	@, %sfp
	movw	r8, #:lower16:76696	@ tmp194,
	movt	r8, #:upper16:76696	@ tmp194,
	mov	r6, #392	@ tmp199,
	ldr	r7, .L297	@ tmp250,
	mov	sl, r6	@ tmp253, tmp199
	mul	r8, r8, ip	@ tmp193, tmp194,
	movw	fp, #19174	@ tmp256,
	mla	r1, r6, r4, r8	@ tmp211, tmp253, i, tmp255
	movw	r5, #:lower16:g_event_report	@,
	mla	r3, r6, r2, r8	@ tmp202, tmp199, prephitmp.1735, tmp193
	add	r9, r8, #968	@ tmp195, tmp193,
	add	lr, r1, #51456	@ tmp212, tmp211,
	add	r9, r7, r9	@ D.32963, tmp250, tmp195
	add	r6, lr, #72	@ tmp212, tmp212,
	movt	r5, #:upper16:g_event_report	@,
	add	r6, r7, r6	@ pTemp, tmp250, tmp212
	add	r0, r3, #51456	@ tmp203, tmp202,
	add	r2, r0, #72	@ tmp203, tmp203,
	mov	r0, r9	@, D.32963
	mov	r1, r6	@, pTemp
	str	r5, [sp, #12]	@, %sfp
	mul	fp, fp, ip	@ tmp257, tmp256,
	add	r5, r7, r2	@ ivtmp.1753, tmp250, tmp203
	and	ip, r4, #1	@, i,
	str	ip, [sp, #16]	@, %sfp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L294	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	add	ip, fp, r3	@ tmp292, tmp257, <variable>.image_id
	add	r6, r2, ip, asl #2	@, tmp295,, tmp292,
	add	lr, r6, #720	@ tmp296, tmp295,
	mov	r6, #0	@,
	str	r6, [lr, #0]	@, <variable>.LogicImageIsUsed
.L279:
	subs	r4, r4, #1	@ i, i,
	sub	r5, r5, #392	@ ivtmp.1753, ivtmp.1753,
	bmi	.L272	@,
	ldr	r6, [sp, #16]	@, %sfp
	cmp	r6, #0	@,
	beq	.L275	@,
	mla	lr, sl, r4, r8	@ tmp316, tmp253, i, tmp255
	mov	r0, r9	@, D.32963
	add	r1, lr, #51456	@ tmp318, tmp316,
	add	ip, r1, #72	@ tmp318, tmp318,
	add	r6, r7, ip	@ pTemp, tmp250, tmp318
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L291	@,
	ldr	r6, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #0	@,
	add	ip, fp, r6	@ tmp324, tmp257, <variable>.image_id
	movw	r6, #:lower16:.LANCHOR0	@,
	movt	r6, #:upper16:.LANCHOR0	@,
	add	r3, r6, ip, asl #2	@, tmp327,, tmp324,
	add	r2, r3, #720	@ tmp328, tmp327,
	str	r0, [r2, #0]	@, <variable>.LogicImageIsUsed
.L286:
	subs	r4, r4, #1	@ i, tmp264,
	sub	r5, r5, #392	@ ivtmp.1753, ivtmp.1753,
	bmi	.L272	@,
.L275:
	mla	ip, sl, r4, r8	@ tmp271, tmp253, i, tmp255
	mov	r0, r9	@, D.32963
	add	r1, ip, #51456	@ tmp273, tmp271,
	add	lr, r1, #72	@ tmp273, tmp273,
	add	r6, r7, lr	@ pTemp, tmp250, tmp273
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L295	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r6, #0	@,
	add	lr, fp, r3	@ tmp230, tmp257, <variable>.image_id
	add	r1, lr, #178	@ tmp232, tmp230,
	add	r0, ip, r1, asl #2	@, tmp235,, tmp232,
	str	r6, [r0, #8]	@, <variable>.LogicImageIsUsed
.L274:
	sub	r4, r4, #1	@ tmp264, i,
	mov	r0, r9	@, D.32963
	sub	r5, r5, #392	@ ivtmp.1753, ivtmp.1753,
	mla	r1, sl, r4, r8	@ tmp284, tmp253, tmp264, tmp255
	add	r6, r1, #51456	@ tmp286, tmp284,
	add	r2, r6, #72	@ tmp286, tmp286,
	add	r6, r7, r2	@ pTemp, tmp250, tmp286
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L296	@,
	ldr	r0, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	subs	r4, r4, #1	@ i, tmp264,
	add	r2, fp, r0	@ tmp346, tmp257, <variable>.image_id
	sub	r5, r5, #392	@ ivtmp.1753, ivtmp.1753,
	add	r6, r2, #178	@ tmp347, tmp346,
	add	ip, r1, r6, asl #2	@, tmp349,, tmp347,
	mov	r6, #0	@,
	str	r6, [ip, #8]	@, <variable>.LogicImageIsUsed
	bpl	.L275	@,
.L272:
	ldr	r0, [sp, #8]	@, %sfp
	movw	r2, #:lower16:76696	@ tmp242,
	ldr	r1, [sp, #20]	@, %sfp
	movt	r2, #:upper16:76696	@ tmp242,
	mov	ip, #0	@ tmp245,
	mla	r3, r2, r0, r1	@ tmp243, tmp242,,
	mov	r0, ip	@ D.32953, tmp245
	add	r2, r3, #51456	@ tmp244, tmp243,
	add	r3, r2, #72	@ tmp244, tmp244,
	str	ip, [r3, #4]	@ tmp245, <variable>.TempImageNum
.L270:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L295:
	ldr	r2, [sp, #12]	@, %sfp
	mov	r1, #5	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [sp, #8]	@, %sfp
	ldr	ip, [r2, #0]	@ g_event_report.454, g_event_report
	add	lr, fp, r3	@ tmp217, tmp257, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	add	lr, r3, lr, asl #2	@, tmp222,, tmp217,
	cmp	ip, #0	@ g_event_report.454,
	mov	r3, #2	@ tmp224,
	add	r2, sp, #28	@,,
	str	r3, [lr, #720]	@ tmp224, <variable>.LogicImageIsUsed
	beq	.L274	@,
	str	r6, [sp, #28]	@ pTemp, para
	blx	ip	@ g_event_report.454
	b	.L274	@
.L296:
	ldr	r3, [sp, #12]	@, %sfp
	mov	r1, #5	@,
	ldr	ip, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	add	r2, sp, #28	@,,
	ldr	r0, [sp, #8]	@, %sfp
	ldr	lr, [r3, #0]	@, g_event_report
	add	ip, fp, ip	@, tmp257, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	cmp	lr, #0	@,
	str	lr, [sp, #4]	@, %sfp
	add	lr, r3, ip, asl #2	@,,,,
	mov	r3, #2	@,
	str	lr, [sp, #16]	@, %sfp
	str	r3, [lr, #720]	@, <variable>.LogicImageIsUsed
	beq	.L286	@,
	str	r6, [sp, #28]	@ pTemp, para
	ldr	r6, [sp, #4]	@, %sfp
	blx	r6	@
	b	.L286	@
.L294:
	ldr	r0, [sp, #12]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp306,
	ldr	ip, [r0, #0]	@ g_event_report.454, g_event_report
	add	r2, fp, r3	@ tmp301, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.454,
	add	r0, lr, r2, asl #2	@, tmp304,, tmp301,
	str	r1, [r0, #720]	@ tmp306, <variable>.LogicImageIsUsed
	beq	.L279	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.454
	b	.L279	@
.L291:
	ldr	lr, [sp, #12]	@, %sfp
	movw	r2, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp338,
	ldr	ip, [lr, #0]	@ g_event_report.454, g_event_report
	add	r0, fp, r3	@ tmp333, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.454,
	add	lr, r2, r0, asl #2	@, tmp336,, tmp333,
	str	r1, [lr, #720]	@ tmp338, <variable>.LogicImageIsUsed
	beq	.L286	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.454
	b	.L286	@
.L298:
	.align	2
.L297:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PushTempImageToVOQ, .-DNR_PushTempImageToVOQ
	.align	2
	.global	DNR_FastBackOptimize
	.type	DNR_FastBackOptimize, %function
DNR_FastBackOptimize:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp457,
	movw	r9, #:lower16:76696	@ tmp150,
	movt	r4, #:upper16:.LANCHOR0	@ tmp457,
	movt	r9, #:upper16:76696	@ tmp150,
	mov	r5, r0	@ InstId, InstId
	movw	sl, #:lower16:76696	@ tmp173,
	movt	sl, #:upper16:76696	@ tmp173,
	mla	r3, r9, r0, r4	@ tmp151, tmp150, InstId, tmp457
	mov	r7, r1	@ pImage, pImage
	mul	sl, sl, r5	@ tmp172, tmp173, InstId
	movw	r2, #:lower16:76648	@ tmp148,
	add	r6, r3, #75776	@ tmp152, tmp151,
	movt	r2, #:upper16:76648	@ tmp148,
	add	r0, r6, #872	@ tmp152, tmp152,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r6, sl, r4	@ tmp174, tmp172, tmp457
	ldr	r1, [r0, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	add	r8, r6, #51456	@ tmp175, tmp174,
	add	r8, r8, #72	@ tmp175, tmp175,
	cmp	r1, #1	@ <variable>.u32DispOptimizeFlag,
	movne	r1, #3	@ tmp167,
	strne	r1, [r3, r2]	@ tmp167, <variable>.u32VoFrmNum
	ldrne	r3, [r7, #140]	@ <variable>.format, <variable>.format
	moveq	r1, #7	@ tmp160,
	streq	r1, [r3, r2]	@ tmp160, <variable>.u32VoFrmNum
	movw	r2, #51528	@ tmp171,
	orrne	r3, r3, #262144	@ tmp169, <variable>.format,
	strne	r3, [r7, #140]	@ tmp169, <variable>.format
	ldr	r9, [r6, r2]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r9, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L302	@,
	add	r3, r6, #75776	@ tmp182, tmp174,
	ldr	r0, [r7, #80]	@ D.33060, <variable>.GopNum
	add	r3, r3, #864	@ tmp182, tmp182,
	movw	r1, #:lower16:76640	@ tmp178,
	movt	r1, #:upper16:76640	@ tmp178,
	ldr	ip, [r3, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r0, ip	@ D.33060, <variable>.LastGopNum
	beq	.L303	@,
	str	r0, [r3, #4]	@ D.33060, <variable>.LastGopNum
	mov	ip, #1	@ tmp203,
	ldr	r0, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, r2]	@ tmp203, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.DistanceBeforeFirstFrame,
	str	r0, [r6, r1]	@ <variable>.DistanceBeforeFirstFrame, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L318	@,
	ldr	r2, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r3, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
.L308:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L302:
	add	r8, r6, #75776	@ tmp357, tmp174,
	ldr	r3, [r7, #80]	@ temp.1801, <variable>.GopNum
	add	r8, r8, #864	@ tmp357, tmp357,
	movw	r9, #:lower16:76640	@ tmp353,
	movt	r9, #:upper16:76640	@ tmp353,
	ldr	r0, [r8, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r3, r0	@ temp.1801, <variable>.LastGopNum
	beq	.L311	@,
	mov	r0, r5	@, InstId
	mov	r1, r7	@, pImage
	str	r3, [r8, #4]	@ temp.1801, <variable>.LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	ldr	r0, [r7, #76]	@ temp.1803, <variable>.DistanceBeforeFirstFrame
	cmp	r0, #0	@ temp.1803,
	str	r0, [r6, r9]	@ temp.1803, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L319	@,
.L313:
	ldr	r2, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r8, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L308	@
.L311:
	ldr	r0, [r6, r9]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ <variable>.u32BackwardOptimizeDistanceCnt,
	beq	.L313	@,
	ldr	r1, [r6, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L320	@,
.L314:
	movw	ip, #:lower16:76696	@ tmp425,
	movt	ip, #:upper16:76696	@ tmp425,
	mov	r0, r5	@, InstId
	ldr	lr, .L321	@ tmp426,
	mul	r5, ip, r5	@ tmp424, tmp425, InstId
	add	r1, r5, lr	@, tmp424, tmp426
	add	r4, r5, r4	@ tmp432, tmp424, tmp457
	bl	VCTRL_ReleaseChanImage	@
	movw	r3, #:lower16:76640	@ tmp436,
	movt	r3, #:upper16:76640	@ tmp436,
	mov	r0, #0	@ tmp434,
	str	r0, [r4, #440]	@ tmp434, <variable>.s321DFrameIsProc
	mvn	r0, #0	@ ret,
	ldr	r1, [r4, r3]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	add	r2, r1, r0	@ tmp448, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r2, [r4, r3]	@ tmp448, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L308	@
.L303:
	ldr	r7, .L321+4	@ tmp293,
	add	ip, sl, #40	@ tmp296, tmp172,
	mov	r0, r5	@, InstId
	add	r1, r7, ip	@, tmp293, tmp296
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #4]	@ D.34788, <variable>.TempImageNum
	str	r9, [r6, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	cmp	r3, #0	@ D.34788,
	strle	r9, [r8, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.TempImageNum
	mvnle	r0, #0	@ ret,
	ble	.L308	@,
	mov	lr, #392	@ tmp321,
	movw	r1, #19174	@ tmp467,
	mla	ip, lr, r3, sl	@ tmp324, tmp321, D.34788, tmp172
	add	r2, r7, #51456	@ tmp329, tmp293,
	mul	r1, r1, r5	@ tmp468, tmp467, InstId
	add	r0, r2, #72	@ tmp329, tmp329,
	add	r3, ip, #51456	@ tmp325, tmp324,
	add	sl, r0, sl	@ D.36080, tmp329, tmp172
	add	lr, r3, #72	@ tmp325, tmp325,
	add	r7, r7, lr	@ ivtmp.1796, tmp293, tmp325
.L310:
	ldr	r2, [r7, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r7, r7, #392	@ ivtmp.1796, ivtmp.1796,
	cmp	r7, sl	@ ivtmp.1796, D.36080
	movw	r3, #:lower16:.LANCHOR0	@ tmp333,
	add	ip, r1, r2	@ tmp336, tmp468, <variable>.image_id
	movt	r3, #:upper16:.LANCHOR0	@ tmp333,
	add	r0, r4, ip, asl #2	@, tmp341, tmp457, tmp336,
	str	r9, [r0, #720]	@ tmp469, <variable>.LogicImageIsUsed
	bne	.L310	@,
	movw	ip, #:lower16:76696	@ tmp348,
	movt	ip, #:upper16:76696	@ tmp348,
	mvn	r0, #0	@ ret,
	mla	lr, ip, r5, r3	@ tmp349, tmp348, InstId, tmp333
	add	r1, lr, #51456	@ tmp350, tmp349,
	add	r3, r1, #72	@ tmp350, tmp350,
	str	r9, [r3, #4]	@ tmp469, <variable>.TempImageNum
	b	.L308	@
.L318:
	ldr	r7, .L321+4	@ tmp212,
	add	lr, sl, #40	@ tmp215, tmp172,
	mov	r0, r5	@, InstId
	add	r1, r7, lr	@, tmp212, tmp215
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #4]	@ D.34779, <variable>.TempImageNum
	str	r9, [r6, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	cmp	r3, #0	@ D.34779,
	strle	r9, [r8, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.TempImageNum
	ble	.L306	@,
	mov	r2, #392	@ tmp240,
	movw	r1, #19174	@ tmp462,
	mla	r3, r2, r3, sl	@ tmp243, tmp240, D.34779, tmp172
	add	lr, r7, #51456	@ tmp248, tmp212,
	mul	r1, r1, r5	@ tmp463, tmp462, InstId
	add	ip, lr, #72	@ tmp248, tmp248,
	add	r0, r3, #51456	@ tmp244, tmp243,
	add	sl, ip, sl	@ D.36065, tmp248, tmp172
	add	r2, r0, #72	@ tmp244, tmp244,
	add	r7, r7, r2	@ ivtmp.1787, tmp212, tmp244
.L307:
	ldr	lr, [r7, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r7, r7, #392	@ ivtmp.1787, ivtmp.1787,
	cmp	r7, sl	@ ivtmp.1787, D.36065
	movw	r3, #:lower16:.LANCHOR0	@ tmp252,
	add	ip, r1, lr	@ tmp255, tmp463, <variable>.image_id
	movt	r3, #:upper16:.LANCHOR0	@ tmp252,
	add	r0, r4, ip, asl #2	@, tmp260, tmp457, tmp255,
	str	r9, [r0, #720]	@ tmp464, <variable>.LogicImageIsUsed
	bne	.L307	@,
	movw	r2, #:lower16:76696	@ tmp267,
	movt	r2, #:upper16:76696	@ tmp267,
	mla	r0, r2, r5, r3	@ tmp268, tmp267, InstId, tmp252
	add	r1, r0, #51456	@ tmp269, tmp268,
	add	r3, r1, #72	@ tmp269, tmp269,
	str	r9, [r3, #4]	@ tmp464, <variable>.TempImageNum
.L306:
	movw	r0, #:lower16:76696	@ tmp274,
	movt	r0, #:upper16:76696	@ tmp274,
	movw	r3, #:lower16:76640	@ tmp272,
	movt	r3, #:upper16:76640	@ tmp272,
	mla	lr, r0, r5, r4	@ tmp275, tmp274, InstId, tmp457
	mvn	r0, #0	@ ret,
	ldr	r1, [lr, r3]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	add	ip, r1, r0	@ tmp284, <variable>.u32BackwardOptimizeDistanceCnt,
	str	ip, [lr, r3]	@ tmp284, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L308	@
.L319:
	ldr	lr, .L321	@ tmp375,
	mov	r0, r5	@, InstId
	add	r1, sl, lr	@, tmp172, tmp375
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #0]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mov	r1, #0	@ tmp383,
	mvn	r0, #0	@ ret,
	sub	r2, r3, #1	@ tmp397, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r1, [r6, #440]	@ tmp383, <variable>.s321DFrameIsProc
	str	r2, [r8, #0]	@ tmp397, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L308	@
.L320:
	movw	ip, #:lower16:g_event_report	@ tmp419,
	movt	ip, #:upper16:g_event_report	@ tmp419,
	ldr	r3, [ip, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L314	@,
	add	r2, sp, #8	@ tmp421,,
	mov	r0, r5	@, InstId
	str	r1, [r2, #-4]!	@ <variable>.Cur1DImage.last_frame, para
	add	r1, r1, #114	@,,
	blx	r3	@ g_event_report.462
	b	.L314	@
.L322:
	.align	2
.L321:
	.word	.LANCHOR0+48
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_FastBackOptimize, .-DNR_FastBackOptimize
	.align	2
	.global	DNR_FastForwardFastBack
	.type	DNR_FastForwardFastBack, %function
DNR_FastForwardFastBack:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp241,
	movw	r9, #:lower16:76696	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp241,
	movt	r9, #:upper16:76696	@ tmp145,
	mov	r5, r0	@ InstId, InstId
	movw	r8, #:lower16:76696	@ tmp168,
	movt	r8, #:upper16:76696	@ tmp168,
	mla	r3, r9, r0, r4	@ tmp146, tmp145, InstId, tmp241
	mov	sl, r1	@ pImage, pImage
	mul	r8, r8, r5	@ tmp167, tmp168, InstId
	movw	r2, #:lower16:76648	@ tmp143,
	add	r6, r3, #75776	@ tmp147, tmp146,
	movt	r2, #:upper16:76648	@ tmp143,
	add	r0, r6, #872	@ tmp147, tmp147,
	movw	r9, #51528	@ tmp166,
	add	r6, r8, r4	@ tmp169, tmp167, tmp241
	.pad #4
	sub	sp, sp, #4	@,,
	ldr	r1, [r0, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	add	r7, r6, #51456	@ tmp170, tmp169,
	add	r7, r7, #72	@ tmp170, tmp170,
	cmp	r1, #1	@ <variable>.u32DispOptimizeFlag,
	movne	r1, #3	@ tmp162,
	strne	r1, [r3, r2]	@ tmp162, <variable>.u32VoFrmNum
	ldrne	r3, [sl, #140]	@ <variable>.format, <variable>.format
	moveq	r1, #7	@ tmp155,
	streq	r1, [r3, r2]	@ tmp155, <variable>.u32VoFrmNum
	orrne	r3, r3, #262144	@ tmp164, <variable>.format,
	strne	r3, [sl, #140]	@ tmp164, <variable>.format
	ldr	fp, [r6, r9]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	fp, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L326	@,
	mov	r0, sl	@, pImage
	bl	DNR_IsIFrame	@
	subs	sl, r0, #0	@ D.33029,
	movne	r3, #1	@ tmp178,
	movne	r0, fp	@ ret, <variable>.GetFirstIFrameFlag
	strne	r3, [r6, r9]	@ tmp178, <variable>.GetFirstIFrameFlag
	beq	.L334	@,
.L328:
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L326:
	mov	r0, sl	@, pImage
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.33035
	beq	.L328	@,
	mov	r0, r5	@, InstId
	mov	r1, sl	@, pImage
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	DNR_PushTempImageToVOQ	@
.L334:
	ldr	r9, .L335	@ tmp180,
	add	ip, r8, #40	@ tmp183, tmp167,
	mov	r0, r5	@, InstId
	add	r1, r9, ip	@, tmp180, tmp183
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #4]	@ D.34797, <variable>.TempImageNum
	str	sl, [r6, #440]	@ D.33029, <variable>.s321DFrameIsProc
	cmp	r3, #0	@ D.34797,
	strle	sl, [r7, #4]	@ D.33029, <variable>.TempImageNum
	mvnle	r0, #0	@ ret,
	ble	.L328	@,
	mov	lr, #392	@ tmp208,
	movw	r1, #19174	@ tmp244,
	mla	r0, lr, r3, r8	@ tmp211, tmp208, D.34797, tmp167
	add	ip, r9, #51456	@ tmp216, tmp180,
	mul	r1, r1, r5	@ tmp245, tmp244, InstId
	add	r2, ip, #72	@ tmp216, tmp216,
	add	r3, r0, #51456	@ tmp212, tmp211,
	add	r8, r2, r8	@ D.36134, tmp216, tmp167
	add	lr, r3, #72	@ tmp212, tmp212,
	add	r9, r9, lr	@ ivtmp.1844, tmp180, tmp212
.L330:
	ldr	ip, [r9, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r9, r9, #392	@ ivtmp.1844, ivtmp.1844,
	cmp	r9, r8	@ ivtmp.1844, D.36134
	movw	r3, #:lower16:.LANCHOR0	@ tmp220,
	add	r0, r1, ip	@ tmp223, tmp245, <variable>.image_id
	movt	r3, #:upper16:.LANCHOR0	@ tmp220,
	add	r2, r4, r0, asl #2	@, tmp228, tmp241, tmp223,
	str	sl, [r2, #720]	@ tmp246, <variable>.LogicImageIsUsed
	bne	.L330	@,
	movw	r2, #:lower16:76696	@ tmp235,
	movt	r2, #:upper16:76696	@ tmp235,
	mvn	r0, #0	@ ret,
	mla	lr, r2, r5, r3	@ tmp236, tmp235, InstId, tmp220
	add	r1, lr, #51456	@ tmp237, tmp236,
	add	r3, r1, #72	@ tmp237, tmp237,
	str	sl, [r3, #4]	@ tmp246, <variable>.TempImageNum
	b	.L328	@
.L336:
	.align	2
.L335:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_InsertQueueWithDSD
	.type	DNR_InsertQueueWithDSD, %function
DNR_InsertQueueWithDSD:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp146,
	movt	r3, #:upper16:76696	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp384,
	mul	r3, r3, r0	@ tmp145, tmp146, NextInstId
	movt	r4, #:upper16:.LANCHOR0	@ tmp384,
	movw	r1, #:lower16:76632	@ tmp144,
	movt	r1, #:upper16:76632	@ tmp144,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ NextInstId, NextInstId
	add	r5, r3, r4	@ tmp147, tmp145, tmp384
	ldr	r2, [r5, r1]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r2, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L350	@,
	movw	r8, #51528	@ tmp210,
	add	r6, r5, #51456	@ tmp214, tmp147,
	ldr	ip, [r5, r8]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	r6, r6, #72	@ tmp214, tmp214,
	cmp	ip, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L342	@,
	ldr	r2, [r6, #4]	@ D.34770, <variable>.TempImageNum
	cmp	r2, #0	@ D.34770,
	strle	ip, [r6, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.TempImageNum
	movle	r0, ip	@ D.33560, <variable>.GetFirstIFrameFlag
	ble	.L340	@,
	mov	r1, #392	@ tmp232,
	movw	r5, #19174	@ tmp389,
	mla	r0, r1, r2, r3	@ tmp235, tmp232, D.34770, tmp145
	add	r1, r4, #51456	@ tmp240, tmp384,
	mul	r5, r5, r7	@ tmp390, tmp389, NextInstId
	add	r1, r1, #80	@ tmp240, tmp240,
	add	r2, r0, r4	@ tmp236, tmp235, tmp384
	add	r3, r1, r3	@ D.36176, tmp240, tmp145
	add	r0, r2, #51456	@ ivtmp.1878, tmp236,
	add	r2, r0, #80	@ ivtmp.1878, ivtmp.1878,
.L344:
	ldr	r0, [r2, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r2, r2, #392	@ ivtmp.1878, ivtmp.1878,
	cmp	r2, r3	@ ivtmp.1878, D.36176
	movw	r1, #:lower16:.LANCHOR0	@ tmp244,
	add	r0, r5, r0	@ tmp247, tmp390, <variable>.image_id
	movt	r1, #:upper16:.LANCHOR0	@ tmp244,
	add	r0, r4, r0, asl #2	@, tmp252, tmp384, tmp247,
	str	ip, [r0, #720]	@ tmp391, <variable>.LogicImageIsUsed
	bne	.L344	@,
	movw	r2, #:lower16:76696	@ tmp259,
	movt	r2, #:upper16:76696	@ tmp259,
	mov	r0, ip	@ D.33560, tmp391
	mla	r3, r2, r7, r1	@ tmp260, tmp259, NextInstId, tmp244
	add	r2, r3, #51456	@ tmp261, tmp260,
	add	r3, r2, #72	@ tmp261, tmp261,
	str	ip, [r3, #4]	@ tmp391, <variable>.TempImageNum
.L340:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L342:
	ldr	lr, [r6, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mov	r1, #392	@ tmp295,
	ldr	r0, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	sl, r4, #8	@ tmp385, tmp384,
	ldr	ip, [r5, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	mov	r2, r1	@, tmp295
	mla	r3, r1, lr, r3	@ tmp298, tmp295, <variable>.TempImageNum, tmp145
	add	r0, r0, #6	@ tmp275, <variable>.Cur1DImage.image_id,
	rsb	lr, ip, r0	@ tmp284, <variable>.Cur1DImage.resetNum, tmp275
	str	lr, [r5, #224]	@ tmp284, <variable>.Cur1DImage.image_id
	add	r1, r5, #48	@, tmp147,
	add	r0, r3, #51456	@ tmp299, tmp298,
	add	lr, r0, #72	@ tmp299, tmp299,
	add	r0, sl, lr	@, tmp385, tmp299
	bl	memcpy	@
	ldr	r2, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	movw	r1, #19174	@ tmp319,
	movw	r3, #:lower16:76648	@ tmp348,
	movt	r3, #:upper16:76648	@ tmp348,
	ldr	ip, [r6, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mla	r2, r1, r7, r2	@ tmp320, tmp319, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r0, [r5, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r1, [r5, r3]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	r3, ip, #1	@ D.33571, <variable>.TempImageNum,
	str	r3, [r6, #4]	@ D.33571, <variable>.TempImageNum
	rsb	ip, r1, r0	@ tmp353, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	mov	r1, #4	@ tmp327,
	cmp	r3, ip	@ D.33571, tmp353
	add	ip, r4, r2, asl #2	@, tmp325, tmp384, tmp320,
	str	r1, [ip, #720]	@ tmp327, <variable>.LogicImageIsUsed
	movcs	ip, #0	@ tmp369,
	strcs	ip, [r5, r8]	@ tmp369, <variable>.GetFirstIFrameFlag
	bcs	.L346	@,
	ldr	r2, [r5, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r2, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L346	@,
	movw	r0, #:lower16:76696	@ tmp379,
	movt	r0, #:upper16:76696	@ tmp379,
	mov	r1, #0	@ tmp382,
	mla	r2, r0, r7, r4	@ tmp380, tmp379, NextInstId, tmp384
	mov	r0, r1	@ D.33560, tmp382
	str	r1, [r2, #440]	@ tmp382, <variable>.s321DFrameIsProc
	b	.L340	@
.L346:
	movw	ip, #:lower16:76696	@ tmp373,
	movt	ip, #:upper16:76696	@ tmp373,
	mov	r0, r7	@, NextInstId
	mla	r3, ip, r7, sl	@ tmp375, tmp373, NextInstId, tmp385
	add	r1, r3, #40	@, tmp375,
	bl	DNR_PushTempImageToVOQ	@
	movw	r0, #:lower16:76696	@ tmp379,
	movt	r0, #:upper16:76696	@ tmp379,
	mov	r1, #0	@ tmp382,
	mla	r2, r0, r7, r4	@ tmp380, tmp379, NextInstId, tmp384
	mov	r0, r1	@ D.33560, tmp382
	str	r1, [r2, #440]	@ tmp382, <variable>.s321DFrameIsProc
	b	.L340	@
.L350:
	ldr	r1, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r0, r4, #8	@ tmp173, tmp384,
	add	r8, r3, #40	@ tmp176, tmp145,
	ldr	r2, [r5, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	r8, r0, r8	@ D.33551, tmp173, tmp176
	add	lr, r1, #6	@ tmp162, <variable>.Cur1DImage.image_id,
	add	r3, r3, #968	@ tmp181, tmp145,
	rsb	ip, r2, lr	@ tmp171, <variable>.Cur1DImage.resetNum, tmp162
	add	r0, r0, r3	@, tmp173, tmp181
	mov	r1, r8	@, D.33551
	str	ip, [r5, #224]	@ tmp171, <variable>.Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.33560,
	bne	.L340	@,
	ldr	r2, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	movw	r1, #19174	@ tmp191,
	movw	r3, #:lower16:g_event_report	@ tmp207,
	movt	r3, #:upper16:g_event_report	@ tmp207,
	mov	r6, #0	@ tmp206,
	mov	ip, #2	@ tmp199,
	mla	lr, r1, r7, r2	@ tmp192, tmp191, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r3, [r3, #0]	@ g_event_report.501, g_event_report
	str	r6, [r5, #440]	@ tmp206, <variable>.s321DFrameIsProc
	cmp	r3, r6	@ g_event_report.501,
	moveq	r0, r3	@ D.33560, g_event_report.501
	add	r4, r4, lr, asl #2	@, tmp197, tmp384, tmp192,
	str	ip, [r4, #720]	@ tmp199, <variable>.LogicImageIsUsed
	beq	.L340	@,
	add	r2, sp, #8	@ tmp208,,
	mov	r0, r7	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.33551, para
	blx	r3	@ g_event_report.501
	mov	r0, r6	@ D.33560, tmp206
	b	.L340	@
	.fnend
	.size	DNR_InsertQueueWithDSD, .-DNR_InsertQueueWithDSD
	.align	2
	.global	DNR_SetImageLogic
	.type	DNR_SetImageLogic, %function
DNR_SetImageLogic:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:76696	@ tmp150,
	movt	r4, #:upper16:76696	@ tmp150,
	movw	r5, #:lower16:.LANCHOR0	@ tmp298,
	movt	r5, #:upper16:.LANCHOR0	@ tmp298,
	movw	ip, #:lower16:76656	@ tmp148,
	mul	r4, r4, r0	@ tmp149, tmp150, NextInstId
	movt	ip, #:upper16:76656	@ tmp148,
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	mov	r7, r0	@ NextInstId, NextInstId
	add	r1, r4, r5	@ tmp151, tmp149, tmp298
	ldr	r3, [r1, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ <variable>.DNRDataSourceFlag,
	moveq	r3, #392	@ tmp157,
	movwne	r3, #:lower16:76680	@ tmp164,
	mlaeq	r4, r3, r2, r4	@ tmp160, tmp157, PicBufID, tmp149
	movtne	r3, #:upper16:76680	@ tmp164,
	ldrne	r4, [r1, r3]	@ pImageLogic, <variable>.pCaptureImageOut
	addeq	r4, r4, r5	@ tmp161, tmp160, tmp298
	addeq	r4, r4, #26368	@ pImageLogic, tmp161,
	addeq	r4, r4, #72	@ pImageLogic, pImageLogic,
	cmp	r4, #0	@ pImageLogic,
	mvneq	r0, #0	@ D.33419,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	sl, #:lower16:76696	@ tmp172,
	movt	sl, #:upper16:76696	@ tmp172,
	mov	r2, #392	@,
	mov	r0, r4	@, pImageLogic
	mla	sl, sl, r7, r5	@ tmp173, tmp172, NextInstId, tmp298
	ldr	r8, [r4, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r9, [r4, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	add	r1, sl, #48	@, tmp173,
	bl	memcpy	@
	ldr	r2, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	movw	r1, #:lower16:76656	@ tmp181,
	movt	r1, #:upper16:76656	@ tmp181,
	str	r9, [r4, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	str	r2, [r4, #172]	@ <variable>.ddr_stride, <variable>.image_stride
	str	r8, [r4, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r0, [sl, r1]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r0, #1	@ <variable>.DNRDataSourceFlag,
	beq	.L363	@,
	ldr	r3, [r6, #28]	@ temp.1918, <variable>.pic_height_in_mb
	ldr	lr, [r6, #60]	@ temp.1917, <variable>.ddr_stride
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	mov	r2, r3, asl #4	@ tmp192, temp.1918,
	cmp	r1, #0	@ <variable>.pic_structure,
	mul	r0, lr, r2	@ tmp193, temp.1917, tmp192
	moveq	r1, #1	@ iftmp.493,
	movne	r1, #2	@ iftmp.493,
	mla	r0, r1, r0, r8	@ prephitmp.1904, iftmp.493, tmp193, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1904, <variable>.chrom_2d_phy_addr
.L357:
	bl	MEM_Phy2Vir	@
	movw	r8, #:lower16:76696	@ tmp200,
	movt	r8, #:upper16:76696	@ tmp200,
	ldr	ip, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ <variable>.chrom_2d_phy_addr, <variable>.chrom_2d_phy_addr
	movw	r2, #:lower16:76656	@ tmp227,
	mla	r3, r8, r7, r5	@ tmp201, tmp200, NextInstId, tmp298
	str	ip, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r1, [r4, #92]	@ <variable>.chrom_2d_phy_addr, <variable>.top_chrom_phy_addr
	movt	r2, #:upper16:76656	@ tmp227,
	ldr	r8, [r3, #424]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.Cur1DImage.u32IsLastFrame
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	ldr	r0, [r3, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	str	r0, [r4, #356]	@ <variable>.IsRwzb, <variable>.optm_inf.Rwzb
	ldr	r0, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	add	ip, r0, ip	@ tmp206, <variable>.ddr_stride, <variable>.luma_2d_phy_addr
	str	ip, [r4, #96]	@ tmp206, <variable>.btm_luma_phy_addr
	ldr	ip, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	r0, #0	@ tmp224,
	str	r8, [r4, #376]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.u32IsLastFrame
	add	r1, ip, r1	@ tmp209, <variable>.ddr_stride, <variable>.chrom_2d_phy_addr
	str	r1, [r4, #100]	@ tmp209, <variable>.btm_chrom_phy_addr
	ldr	ip, [r3, #460]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r0, [r4, #364]	@ tmp224, <variable>.u32Is1D
	mov	r0, #1	@ tmp225,
	str	r0, [r4, #368]	@ tmp225, <variable>.is_processed_by_dnr
	str	ip, [r4, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
	ldr	r2, [r3, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #0	@ <variable>.DNRDataSourceFlag,
	bne	.L360	@,
	add	ip, r3, #75776	@ tmp238, tmp201,
	add	r1, ip, #904	@ tmp238, tmp238,
	ldr	lr, [r1, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, r0	@ <variable>.stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ <variable>.DNRDataSourceFlag, <variable>.u32Circumrotate
	addeq	r3, r3, #75776	@ tmp246, tmp201,
	addeq	r3, r3, #912	@ tmp246, tmp246,
	ldreq	r3, [r3, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	streqb	r3, [r6, #11]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.s32MirrorEn
.L360:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp249,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp249,
	ldr	r3, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L361	@,
	movw	lr, #:lower16:76696	@ tmp255,
	movt	lr, #:upper16:76696	@ tmp255,
	movw	r2, #:lower16:76624	@ tmp268,
	movt	r2, #:upper16:76624	@ tmp268,
	mla	r5, lr, r7, r5	@ tmp256, tmp255, NextInstId, tmp298
	ldr	ip, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r7, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	add	ip, ip, #15	@ tmp281, <variable>.image_height,
	add	r1, r5, #8	@ tmp257, tmp256,
	add	r3, r5, #75776	@ tmp272, tmp256,
	add	lr, r3, #848	@ tmp272, tmp272,
	add	r6, r7, #15	@ tmp284, <variable>.image_width,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33462, <variable>.s32VcmpEn
	bic	r6, r6, #15	@ tmp286, tmp284,
	bic	r7, ip, #15	@ tmp283, tmp281,
	cmp	r0, #1	@ D.33462,
	strb	r0, [r4, #296]	@ D.33462, <variable>.ImageDnr.s32VcmpEn
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	strb	r0, [r4, #297]	@ <variable>.s32WmEn, <variable>.ImageDnr.s32WmEn
	ldr	r1, [r5, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r1, [r4, #320]	@ <variable>.s32VcmpWmStartLine, <variable>.ImageDnr.s32VcmpWmStartLine
	ldr	r0, [lr, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	r7, [r4, #332]	@ tmp283, <variable>.ImageDnr.s32VcmpFrameHeight
	str	r6, [r4, #328]	@ tmp286, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r0, [r4, #324]	@ <variable>.s32VcmpWmEndLine, <variable>.ImageDnr.s32VcmpWmEndLine
	beq	.L364	@,
.L361:
	mov	r0, #0	@ D.33419,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L363:
	ldr	ip, [r6, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r3, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	lr, ip, asl #4	@ tmp187, <variable>.pic_height_in_mb,
	mla	r0, r3, lr, r8	@ prephitmp.1904, <variable>.ddr_stride, tmp187, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1904, <variable>.chrom_2d_phy_addr
	b	.L357	@
.L364:
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	mov	ip, ip, lsr #4	@ tmp293, tmp281,
	ldr	r3, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	mov	r0, #0	@ D.33419,
	add	lr, r1, #2	@ tmp288, <variable>.image_stride,
	mov	r2, lr, asl #4	@ tmp290, tmp288,
	mla	r1, ip, r2, r3	@ tmp296, tmp293, tmp290, <variable>.top_luma_phy_addr
	str	r1, [r4, #92]	@ tmp296, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	DNR_SetImageLogic, .-DNR_SetImageLogic
	.align	2
	.global	DNR_ProcessDnrImage
	.type	DNR_ProcessDnrImage, %function
DNR_ProcessDnrImage:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp350,
	movw	fp, #:lower16:76696	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp350,
	movt	fp, #:upper16:76696	@ tmp156,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r1	@ pLogic, pLogic
	mov	r5, r0	@ ChanID, ChanID
	mla	lr, fp, r0, r4	@ tmp157, tmp156, ChanID, tmp350
	ldr	fp, [lr, #452]	@ PicBufID, <variable>.CurImageBufID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r8, [r6, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:1374389535	@ tmp162,
	movt	r2, #:upper16:1374389535	@ tmp162,
	umull	r1, ip, r2, r8	@, tmp161, tmp162, <variable>.image_id
	mov	r1, #100	@ tmp164,
	mov	r3, ip, lsr #5	@ tmp159, tmp161,
	mls	r7, r1, r3, r8	@ tmp165, tmp164, tmp159, <variable>.image_id
	add	r2, r7, #2	@ tmp166, tmp165,
	cmp	r0, r2	@, tmp166
	beq	.L385	@,
.L366:
	movw	r3, #:lower16:76696	@ tmp174,
	movt	r3, #:upper16:76696	@ tmp174,
	movw	ip, #:lower16:76632	@ tmp172,
	movt	ip, #:upper16:76632	@ tmp172,
	mul	r3, r3, r5	@ tmp173, tmp174, ChanID
	movw	r7, #:lower16:.LANCHOR0	@ tmp171,
	movt	r7, #:upper16:.LANCHOR0	@ tmp171,
	add	r8, r3, r4	@ tmp175, tmp173, tmp350
	ldr	r1, [r8, ip]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r1, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L386	@,
	movw	r9, #51528	@ tmp209,
	add	sl, r8, #51456	@ tmp213, tmp175,
	ldr	ip, [r8, r9]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	sl, sl, #72	@ tmp213, tmp213,
	cmp	ip, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L377	@,
	ldr	r2, [sl, #4]	@ D.34806, <variable>.TempImageNum
	cmp	r2, #0	@ D.34806,
	strle	ip, [sl, #4]	@ <variable>.GetFirstIFrameFlag, <variable>.TempImageNum
	ble	.L371	@,
	mov	lr, #392	@ tmp231,
	movw	r8, #19174	@ tmp353,
	mla	r2, lr, r2, r3	@ tmp234, tmp231, D.34806, tmp173
	add	r0, r7, #51456	@ tmp239, tmp171,
	mul	r8, r8, r5	@ tmp354, tmp353, ChanID
	add	r1, r0, #80	@ tmp239, tmp239,
	add	lr, r7, r2	@ tmp235, tmp171, tmp234
	add	r3, r1, r3	@ D.36277, tmp239, tmp173
	add	r0, lr, #51456	@ ivtmp.1964, tmp235,
	add	r2, r0, #80	@ ivtmp.1964, ivtmp.1964,
.L379:
	ldr	r0, [r2, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r2, r2, #392	@ ivtmp.1964, ivtmp.1964,
	cmp	r2, r3	@ ivtmp.1964, D.36277
	movw	r1, #:lower16:.LANCHOR0	@ tmp243,
	add	lr, r8, r0	@ tmp246, tmp354, <variable>.image_id
	movt	r1, #:upper16:.LANCHOR0	@ tmp243,
	add	r0, r4, lr, asl #2	@, tmp251, tmp350, tmp246,
	str	ip, [r0, #720]	@ tmp355, <variable>.LogicImageIsUsed
	bne	.L379	@,
	movw	lr, #:lower16:76696	@ tmp258,
	movt	lr, #:upper16:76696	@ tmp258,
	mla	r2, lr, r5, r1	@ tmp259, tmp258, ChanID, tmp243
	add	r1, r2, #51456	@ tmp260, tmp259,
	add	r3, r1, #72	@ tmp260, tmp260,
	str	ip, [r3, #4]	@ tmp355, <variable>.TempImageNum
.L371:
	ldr	r1, [r6, #192]	@ D.34186, <variable>.p_usrdat
	cmp	r1, #0	@ D.34186,
	beq	.L372	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L372:
	ldr	r1, [r6, #196]	@ temp.1972, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1972,
	beq	.L373	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L373:
	ldr	r1, [r6, #200]	@ temp.1973, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1973,
	beq	.L374	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L374:
	ldr	r1, [r6, #204]	@ temp.1969, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1969,
	beq	.L376	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L376:
	movw	r1, #:lower16:76696	@ tmp340,
	movt	r1, #:upper16:76696	@ tmp340,
	movw	r0, #:lower16:76632	@ tmp338,
	movt	r0, #:upper16:76632	@ tmp338,
	mla	ip, r1, r5, r4	@ tmp341, tmp340, ChanID, tmp350
	ldr	lr, [ip, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	lr, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L382	@,
	movw	r3, #:lower16:g_event_report	@ tmp344,
	movt	r3, #:upper16:g_event_report	@ tmp344,
	ldr	r3, [r3, #0]	@ g_event_report.1971, g_event_report
	cmp	r3, #0	@ g_event_report.1971,
	beq	.L382	@,
	add	r2, sp, #16	@ tmp345,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1971
	mov	r0, #0	@ D.34160,
.L370:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L382:
	mov	r0, #0	@ D.34160,
	b	.L370	@
.L385:
	movw	r0, #:lower16:g_event_report	@ tmp168,
	movt	r0, #:upper16:g_event_report	@ tmp168,
	mov	r7, #1	@ tmp167,
	str	r7, [r6, #224]	@ tmp167, <variable>.last_frame
	ldr	r3, [r0, #0]	@ g_event_report.555, g_event_report
	cmp	r3, #0	@ g_event_report.555,
	beq	.L367	@,
	add	r2, sp, #16	@ tmp170,,
	mov	r8, #0	@ tmp169,
	mov	r0, r5	@, ChanID
	mov	r1, #115	@,
	str	r8, [r2, #-4]!	@ tmp169, para
	blx	r3	@ g_event_report.555
.L367:
	mov	r0, r5	@, ChanID
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L366	@
.L377:
	str	fp, [r6, #176]	@ PicBufID, <variable>.image_id
	mov	ip, #392	@ tmp271,
	ldr	r0, [sl, #4]	@ D.34168, <variable>.TempImageNum
	mov	r2, ip	@, tmp271
	mov	r1, r6	@, pLogic
	mla	lr, ip, r0, r3	@ tmp274, tmp271, D.34168, tmp173
	add	r0, r7, lr	@ tmp275, tmp171, tmp274
	add	ip, r0, #51456	@, tmp275,
	add	r0, ip, #80	@,,
	str	lr, [sp, #4]	@,
	bl	memcpy	@
	movw	r3, #19174	@ tmp284,
	mla	fp, r3, r5, fp	@ tmp285, tmp284, ChanID, PicBufID
	movw	r0, #:lower16:76648	@ tmp312,
	movt	r0, #:upper16:76648	@ tmp312,
	ldr	ip, [sl, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	r1, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r2, [r8, r0]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	r0, ip, #1	@ D.34170, <variable>.TempImageNum,
	mov	ip, #4	@ tmp291,
	str	r0, [sl, #4]	@ D.34170, <variable>.TempImageNum
	add	fp, r7, fp, asl #2	@, tmp289, tmp171, tmp285,
	rsb	r3, r2, r1	@ tmp317, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	r0, r3	@ D.34170, tmp317
	str	ip, [fp, #720]	@ tmp291, <variable>.LogicImageIsUsed
	ldr	r3, [sp, #4]	@,
	movcs	r3, #0	@ tmp336,
	strcs	r3, [r8, r9]	@ tmp336, <variable>.GetFirstIFrameFlag
	bcc	.L387	@,
.L381:
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, pLogic
	bl	DNR_PushTempImageToVOQ	@
	b	.L371	@
.L387:
	add	r3, r3, r7	@ tmp327, tmp274, tmp171
	movw	r2, #51760	@ tmp321,
	ldr	r1, [r3, r2]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r1, #1	@ <variable>.last_frame,
	bne	.L371	@,
	b	.L381	@
.L386:
	add	r2, r7, r3	@ tmp182, tmp171, tmp173
	str	fp, [r6, #176]	@ PicBufID, <variable>.image_id
	add	r0, r2, #976	@, tmp182,
	mov	r1, r6	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.34160,
	bne	.L370	@,
	movw	r1, #19174	@ tmp186,
	mov	lr, #2	@ tmp193,
	mla	fp, r1, r5, fp	@ tmp187, tmp186, ChanID, PicBufID
	mov	r0, #11	@,
	add	r7, r7, fp, asl #2	@, tmp191, tmp171, tmp187,
	str	lr, [r7, #720]	@ tmp193, <variable>.LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L371	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp194,
	movt	r3, #:upper16:.LANCHOR1	@ tmp194,
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp201,
	add	ip, r3, r5, asl #2	@, tmp197, tmp194, ChanID,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp201,
	ldr	r1, [ip, #3072]	@ tmp200, last_rec_pos_time
	ldr	r3, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r1, r0	@ tmp199, tmp200, currtime
	cmp	r2, r3	@ tmp199, g_TraceFramePeriod
	strhi	r0, [ip, #3072]	@ currtime, last_rec_pos_time
	b	.L371	@
	.fnend
	.size	DNR_ProcessDnrImage, .-DNR_ProcessDnrImage
	.align	2
	.global	DNR_ProcessDnrReturn
	.type	DNR_ProcessDnrReturn, %function
DNR_ProcessDnrReturn:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp144,
	movt	r3, #:upper16:76696	@ tmp144,
	movw	r2, #:lower16:.LANCHOR0	@ tmp188,
	movt	r2, #:upper16:.LANCHOR0	@ tmp188,
	mul	r3, r3, r0	@ tmp143, tmp144, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	add	ip, r3, r2	@ tmp145, tmp143, tmp188
	movw	r0, #:lower16:76656	@ tmp148,
	movt	r0, #:upper16:76656	@ tmp148,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [ip, #452]	@ PicBufID, <variable>.CurImageBufID
	ldr	r0, [ip, r0]	@ D.34201, <variable>.DNRDataSourceFlag
	cmp	r0, #0	@ D.34201,
	bne	.L389	@,
	mov	ip, #392	@ tmp156,
	mla	r1, ip, r1, r3	@ tmp159, tmp156, PicBufID, tmp143
	add	ip, r1, r2	@ tmp160, tmp159, tmp188
	add	r1, ip, #26368	@ pLogic, tmp160,
	add	r1, r1, #72	@ pLogic, pLogic,
.L390:
	cmp	r4, #0	@ ChanID,
	beq	.L398	@,
.L391:
	mvn	r0, #0	@ D.34211,
.L394:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L389:
	cmp	r0, #1	@ D.34201,
	bne	.L391	@,
	movw	r3, #:lower16:76680	@ tmp163,
	movt	r3, #:upper16:76680	@ tmp163,
	ldr	r1, [ip, r3]	@ pLogic, <variable>.pCaptureImageOut
	b	.L390	@
.L398:
	ldr	ip, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L391	@,
	cmp	r0, #0	@ D.34201,
	bne	.L392	@,
	ldrsb	r2, [r2, #8]	@ <variable>.DecChanRstFlag, <variable>.DecChanRstFlag
	movw	r3, #:lower16:.LANCHOR0	@ tmp169,
	movt	r3, #:upper16:.LANCHOR0	@ tmp169,
	cmp	r2, #1	@ <variable>.DecChanRstFlag,
	streq	r0, [r3, #24]	@ D.34201, <variable>.NeedStartAgain
	beq	.L394	@,
	ldr	r3, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r3, #0	@ <variable>.NeedStartAgain,
	beq	.L399	@,
.L395:
	mov	r0, #0	@ D.34211,
	b	.L394	@
.L399:
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@,
	beq	.L391	@,
	mov	r0, #0	@ D.34211,
	b	.L394	@
.L392:
	cmp	r0, #1	@ D.34201,
	bne	.L391	@,
	movw	ip, #:lower16:76660	@ tmp176,
	movt	ip, #:upper16:76660	@ tmp176,
	movw	r0, #:lower16:.LANCHOR0	@ tmp175,
	movt	r0, #:upper16:.LANCHOR0	@ tmp175,
	ldr	r3, [r2, ip]	@ <variable>.DNRCaptureStartFlag, <variable>.DNRCaptureStartFlag
	cmp	r3, #1	@ <variable>.DNRCaptureStartFlag,
	bne	.L391	@,
	movw	r3, #:lower16:g_event_report	@ tmp184,
	movt	r3, #:upper16:g_event_report	@ tmp184,
	movw	r2, #:lower16:76656	@ tmp179,
	movt	r2, #:upper16:76656	@ tmp179,
	ldr	r3, [r3, #0]	@ g_event_report.566, g_event_report
	str	r4, [r0, ip]	@ ChanID, <variable>.DNRCaptureStartFlag
	cmp	r3, #0	@ g_event_report.566,
	str	r4, [r0, r2]	@ ChanID, <variable>.DNRDataSourceFlag
	beq	.L395	@,
	add	r2, sp, #8	@ tmp185,,
	mov	r0, r4	@, ChanID
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #21	@,
	blx	r3	@ g_event_report.566
	mov	r0, r4	@ D.34211, ChanID
	b	.L394	@
	.fnend
	.size	DNR_ProcessDnrReturn, .-DNR_ProcessDnrReturn
	.align	2
	.global	DNR_Fsp_ShowPic
	.type	DNR_Fsp_ShowPic, %function
DNR_Fsp_ShowPic:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r1	@ pPicBufID, pPicBufID
	bl	VCTRL_GetFrameInterface	@
	movw	r3, #:lower16:76696	@ tmp147,
	movt	r3, #:upper16:76696	@ tmp147,
	movw	r8, #:lower16:.LANCHOR0	@ tmp239,
	movt	r8, #:upper16:.LANCHOR0	@ tmp239,
	mul	r3, r3, r7	@ tmp146, tmp147, ChanID
	add	r2, r3, r8	@ tmp148, tmp146, tmp239
	ldr	ip, [r2, #456]	@ D.34025, <variable>.s32ValidImgNum
	cmp	ip, #0	@ D.34025,
	ble	.L401	@,
	ldr	r2, [r2, #720]	@ <variable>.LogicImageIsUsed, <variable>.LogicImageIsUsed
	cmp	r2, #1	@ <variable>.LogicImageIsUsed,
	movls	r4, #0	@ i,
	bls	.L403	@,
	tst	ip, #1	@ D.34025,
	add	r4, r8, #8	@ tmp158, tmp239,
	add	r3, r4, r3	@ ivtmp.2025, tmp158, tmp146
	mov	r4, #0	@ i,
	bne	.L404	@,
	ldr	lr, [r3, #716]	@ D.34022, <variable>.LogicImageIsUsed
	mov	r4, #1	@ i,
	add	r3, r3, #4	@ ivtmp.2025, ivtmp.2025,
	cmp	lr, r4	@ D.34022,
	bhi	.L404	@,
.L403:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5, #0]	@ i,* pPicBufID
	beq	.L406	@,
	ldr	r3, [r0, #4]	@ D.34030, <variable>.get_frame
	cmp	r3, #0	@ D.34030,
	beq	.L406	@,
	movw	lr, #19174	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp161,
	mla	ip, lr, r7, r4	@ tmp164, tmp163, ChanID, i
	movt	r5, #:upper16:.LANCHOR0	@ tmp161,
	add	r6, ip, #178	@ tmp165, tmp164,
	add	r6, r8, r6, asl #2	@, tmp168, tmp239, tmp165,
	ldr	r0, [r6, #8]	@ tmp170, <variable>.LogicImageIsUsed
	cmp	r0, #0	@ tmp170,
	beq	.L418	@,
.L406:
	movw	r0, #19174	@ tmp229,
	mov	r2, #1	@ tmp236,
	mla	r7, r0, r7, r4	@ tmp230, tmp229, ChanID, i
	mov	r0, #0	@ D.34044,
	add	r8, r8, r7, asl #2	@, tmp234, tmp239, tmp230,
	str	r2, [r8, #720]	@ tmp236, <variable>.LogicImageIsUsed
	b	.L408	@
.L407:
	ldr	r1, [r3, #716]	@ D.34022, <variable>.LogicImageIsUsed
	add	r3, r2, #4	@ ivtmp.2025, tmp243,
	cmp	r1, #1	@ D.34022,
	bls	.L403	@,
	ldr	r1, [r2, #716]	@ D.34022, <variable>.LogicImageIsUsed
	add	r4, r4, #1	@ i, i,
	cmp	r1, #1	@ D.34022,
	bls	.L403	@,
.L404:
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ tmp243, ivtmp.2025,
	cmp	r4, ip	@ i, D.34025
	blt	.L407	@,
.L401:
	mvn	r0, #0	@ D.34044,
.L408:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L418:
	movw	r1, #:lower16:76696	@ tmp175,
	movt	r1, #:upper16:76696	@ tmp175,
	mov	r0, r7	@, ChanID
	mul	r7, r1, r7	@ tmp174, tmp175, ChanID
	add	r1, sp, #4	@,,
	add	ip, r7, r5	@ tmp176, tmp174, tmp161
	ldr	r2, [ip, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	ldr	lr, [ip, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	add	ip, lr, #15	@ tmp187, <variable>.Cur1DImage.image_height,
	add	lr, r2, #63	@ tmp178, <variable>.Cur1DImage.image_width,
	bic	ip, ip, #15	@ tmp189, tmp187,
	bic	r2, lr, #63	@ tmp180, tmp178,
	mul	lr, ip, r2	@ tmp190, tmp189, tmp180
	mov	ip, #3	@ tmp192,
	mul	r2, ip, lr	@ tmp191, tmp192, tmp190
	mov	r2, r2, asr #1	@, tmp191,
	blx	r3	@ D.34030
	cmp	r0, #0	@ D.34041
	bne	.L401	@,
	mov	r3, #392	@ tmp200,
	ldr	r1, [sp, #4]	@ ExtFrame.PhyAddr, ExtFrame.PhyAddr
	mla	r4, r3, r4, r7	@ tmp203, tmp200, i, tmp174
	movw	ip, #26560	@ tmp208,
	sub	lr, ip, #72	@ tmp198, tmp198,
	mov	r3, #1	@ tmp226,
	add	r5, r4, r5	@ tmp204, tmp203, tmp161
	str	r1, [r5, ip]	@ ExtFrame.PhyAddr, <variable>.luma_2d_phy_addr
	ldr	r2, [sp, #8]	@ ExtFrame.VirAddr, ExtFrame.VirAddr
	str	r2, [r5, lr]	@ ExtFrame.VirAddr, <variable>.luma_2d_vir_addr
	str	r3, [r6, #8]	@ tmp226, <variable>.LogicImageIsUsed
	b	.L408	@
	.fnend
	.size	DNR_Fsp_ShowPic, .-DNR_Fsp_ShowPic
	.align	2
	.global	DNR_Get2DFrameStore
	.type	DNR_Get2DFrameStore, %function
DNR_Get2DFrameStore:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #:lower16:76696	@ tmp145,
	movw	r4, #:lower16:.LANCHOR0	@ tmp197,
	movt	r3, #:upper16:76696	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp197,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pPicBufID, pPicBufID
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r3, r3, r0, r4	@ tmp146, tmp145, NextInstId, tmp197
	add	r1, r3, #440	@ tmp147, tmp146,
	ldr	r2, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r2, #1	@ <variable>.s321DFrameIsProc,
	movne	r0, #1	@ D.33668,
	beq	.L426	@,
.L421:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L426:
	ldr	r2, [r1, #4]	@ D.33655, <variable>.s32OldImgWidth
	ldr	r7, [r3, #192]	@ Width, <variable>.Cur1DImage.image_width
	ldr	r8, [r3, #196]	@ Height, <variable>.Cur1DImage.image_height
	cmp	r2, r7	@ D.33655, Width
	beq	.L427	@,
.L422:
	movw	r1, #:lower16:g_event_report	@ tmp174,
	movt	r1, #:upper16:g_event_report	@ tmp174,
	ldr	r3, [r1, #0]	@ g_event_report.506, g_event_report
	cmp	r3, #0	@ g_event_report.506,
	beq	.L424	@,
	movw	r1, #:lower16:76696	@ tmp178,
	movt	r1, #:upper16:76696	@ tmp178,
	strh	r2, [sp, #0]	@ movhi	@ D.33655, para
	mov	r0, r5	@, NextInstId
	mla	lr, r1, r5, r4	@ tmp179, tmp178, NextInstId, tmp197
	strh	r7, [sp, #4]	@ movhi	@ Width, para
	strh	r8, [sp, #6]	@ movhi	@ Height, para
	mov	r1, #8	@,
	mov	r2, sp	@,
	ldr	ip, [lr, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	strh	ip, [sp, #2]	@ movhi	@ <variable>.s32OldImgHeight, para
	blx	r3	@ g_event_report.506
.L424:
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	mla	r4, r2, r5, r4	@ tmp187, tmp186, NextInstId, tmp197
	str	r8, [r4, #448]	@ Height, <variable>.s32OldImgHeight
	str	r7, [r4, #444]	@ Width, <variable>.s32OldImgWidth
.L423:
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Fsp_ShowPic	@
	subs	r0, r0, #0	@ D.33668,,
	movne	r0, #1	@ D.33668
	b	.L421	@
.L427:
	ldr	r0, [r3, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r0, r8	@ <variable>.s32OldImgHeight, Height
	bne	.L422	@,
	b	.L423	@
	.fnend
	.size	DNR_Get2DFrameStore, .-DNR_Get2DFrameStore
	.align	2
	.global	DNR_InformDecChanReset
	.type	DNR_InformDecChanReset, %function
DNR_InformDecChanReset:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp156,
	movt	r3, #:upper16:76696	@ tmp156,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp349,
	mul	r3, r3, r0	@ tmp155, tmp156, ChanID
	movt	r4, #:upper16:.LANCHOR0	@ tmp349,
	movw	r8, #:lower16:76632	@ tmp197,
	movt	r8, #:upper16:76632	@ tmp197,
	.pad #436
	sub	sp, sp, #436	@,,
	mov	r5, r0	@ ChanID, ChanID
	add	r2, r3, r4	@ tmp157, tmp155, tmp349
	movw	r6, #:lower16:76640	@ tmp183,
	add	ip, r2, #51456	@ tmp180, tmp157,
	add	r7, r2, #75776	@ tmp187, tmp157,
	add	r1, ip, #72	@ tmp180, tmp180,
	movt	r6, #:upper16:76640	@ tmp183,
	mov	r0, r7	@ tmp201, tmp187
	add	r7, r7, #864	@ tmp187, tmp187,
	ldr	ip, [r1, #4]	@ D.34815, <variable>.TempImageNum
	add	lr, r0, #856	@ tmp201, tmp201,
	mov	r0, #0	@ tmp167,
	str	r0, [r2, r8]	@ tmp167, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, r0	@ D.34815,
	movw	r8, #51528	@ tmp176,
	str	r0, [r2, r8]	@ tmp167, <variable>.GetFirstIFrameFlag
	mov	r9, #1	@ tmp159,
	str	r0, [r2, r6]	@ tmp167, <variable>.u32BackwardOptimizeDistanceCnt
	movw	r8, #65535	@ tmp188,
	str	r0, [lr, #4]	@ tmp167, <variable>.u32BackwardOptimizeFlag
	str	r0, [r2, #24]	@ tmp167, <variable>.NeedStartAgain
	str	r0, [r2, #440]	@ tmp167, <variable>.s321DFrameIsProc
	strle	r0, [r1, #4]	@ tmp167, <variable>.TempImageNum
	addle	r0, r4, #8	@, tmp349,
	strb	r9, [r2, #8]	@ tmp159, <variable>.DecChanRstFlag
	str	r8, [r7, #4]	@ tmp188, <variable>.LastGopNum
	strle	r0, [sp, #0]	@, %sfp
	ble	.L430	@,
	mov	r9, #392	@ tmp226,
	movw	lr, #19174	@ tmp368,
	mla	r1, r9, ip, r3	@ tmp229, tmp226, D.34815, tmp155
	add	ip, r4, #51456	@ tmp234, tmp349,
	mul	lr, lr, r5	@ tmp369, tmp368, ChanID
	add	r9, ip, #80	@ tmp234, tmp234,
	add	r2, r1, #51456	@ tmp230, tmp229,
	add	r1, r4, #8	@, tmp349,
	add	r2, r2, #72	@ tmp230, tmp230,
	add	ip, r9, r3	@ D.36437, tmp234, tmp155
	add	r3, r1, r2	@ ivtmp.2109,, tmp230
	str	r1, [sp, #0]	@, %sfp
.L431:
	ldr	r9, [r3, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r3, r3, #392	@ ivtmp.2109, ivtmp.2109,
	cmp	r3, ip	@ ivtmp.2109, D.36437
	movw	r2, #:lower16:.LANCHOR0	@ tmp238,
	add	r1, lr, r9	@ tmp241, tmp369, <variable>.image_id
	movt	r2, #:upper16:.LANCHOR0	@ tmp238,
	add	r9, r1, #178	@ tmp243, tmp241,
	add	r1, r4, r9, asl #2	@, tmp246, tmp349, tmp243,
	str	r0, [r1, #8]	@ tmp370, <variable>.LogicImageIsUsed
	bne	.L431	@,
	movw	lr, #:lower16:76696	@ tmp253,
	movt	lr, #:upper16:76696	@ tmp253,
	mla	ip, lr, r5, r2	@ tmp254, tmp253, ChanID, tmp238
	add	r2, ip, #51456	@ tmp255, tmp254,
	add	r3, r2, #72	@ tmp255, tmp255,
	str	r0, [r3, #4]	@ tmp370, <variable>.TempImageNum
.L430:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetFrameInterface	@
	subs	r9, r0, #0	@ pFrameIntf,
	beq	.L432	@,
	ldr	r0, [r9, #8]	@ <variable>.release_frame, <variable>.release_frame
	cmp	r0, #0	@ <variable>.release_frame,
	beq	.L432	@,
	movw	sl, #:lower16:76696	@ tmp261,
	movt	sl, #:upper16:76696	@ tmp261,
	mul	r3, sl, r5	@ tmp260, tmp261, ChanID
	add	sl, r3, r4	@ tmp262, tmp260, tmp349
	ldr	r1, [sl, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r1, #0	@ <variable>.s32ValidImgNum,
	ble	.L432	@,
	ldr	fp, [sp, #0]	@, %sfp
	add	r8, r3, #26368	@ tmp273, tmp260,
	add	r6, r8, #112	@ tmp273, tmp273,
	add	sl, sl, #456	@ tmp366, tmp262,
	add	r8, fp, r6	@ ivtmp.2099,, tmp273
	add	r7, fp, r3	@ ivtmp.2098,, tmp260
	mov	r6, #0	@ i,
	add	fp, sp, #412	@ tmp362,,
	b	.L434	@
.L433:
	ldr	r0, [sl, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r8, r8, #392	@ ivtmp.2099, ivtmp.2099,
	cmp	r0, r6	@ <variable>.s32ValidImgNum, i
	ble	.L432	@,
.L434:
	ldr	r3, [r7, #712]	@ tmp275, <variable>.LogicImageIsUsed
	add	r6, r6, #1	@ i, i,
	add	r7, r7, #4	@ ivtmp.2098, ivtmp.2098,
	cmp	r3, #0	@ tmp275,
	beq	.L433	@,
	ldr	lr, [r8, #0]	@ <variable>.luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	mov	r0, r5	@, ChanID
	ldr	ip, [r8, #72]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	mov	r1, fp	@, tmp362
	add	r8, r8, #392	@ ivtmp.2099, ivtmp.2099,
	str	lr, [sp, #416]	@ <variable>.luma_2d_vir_addr, ExtFrame.VirAddr
	str	ip, [sp, #412]	@ <variable>.luma_2d_phy_addr, ExtFrame.PhyAddr
	ldr	r2, [r9, #8]	@ <variable>.release_frame, <variable>.release_frame
	blx	r2	@ <variable>.release_frame
	ldr	r0, [sl, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r6	@ <variable>.s32ValidImgNum, i
	bgt	.L434	@,
.L432:
	movw	r2, #:lower16:76696	@ tmp290,
	movt	r2, #:upper16:76696	@ tmp290,
	mul	r1, r2, r5	@ tmp289, tmp290, ChanID
	add	r2, r1, r4	@ tmp291, tmp289, tmp349
	add	r3, r2, #75776	@ tmp292, tmp291,
	add	r3, r3, #904	@ tmp292, tmp292,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L465	@,
.L435:
	ldr	r1, [sp, #0]	@, %sfp
	movw	ip, #:lower16:76696	@ tmp310,
	movt	ip, #:upper16:76696	@ tmp310,
	mov	r2, #0	@ i.2116,
	mov	r0, r2	@ tmp351, i.2116
	mla	r5, ip, r5, r1	@ ivtmp.2088, tmp310, ChanID,
.L437:
	ldr	lr, [r5, #712]	@ tmp343, <variable>.LogicImageIsUsed
	add	r3, r5, #4	@ tmp373, ivtmp.2088,
	add	r2, r2, #1	@ tmp372, i.2116,
	cmp	lr, #3	@ tmp343,
	strne	r0, [r5, #712]	@ tmp351, <variable>.LogicImageIsUsed
	ldr	r5, [r3, #712]	@ tmp383, <variable>.LogicImageIsUsed
	add	r2, r2, #1	@ i.2116, tmp372,
	cmp	r5, #3	@ tmp383,
	strne	r0, [r3, #712]	@ tmp351, <variable>.LogicImageIsUsed
	cmp	r2, #64	@ i.2116,
	add	r5, r3, #4	@ ivtmp.2088, tmp373,
	bne	.L437	@,
	add	sp, sp, #436	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L465:
	movw	r6, #19174	@ tmp355,
	ldr	r7, [sp, #0]	@, %sfp
	mul	sl, r6, r5	@, tmp355, ChanID
	add	r9, r1, #968	@ tmp298, tmp289,
	add	r6, r7, r9	@ D.32889,, tmp298
	add	fp, sp, #16	@ tmp353,,
	movw	r9, #:lower16:1374389535	@ tmp354,
	str	r2, [sp, #12]	@ tmp291, %sfp
	movt	r9, #:upper16:1374389535	@ tmp354,
	str	r3, [sp, #8]	@ tmp292, %sfp
	mov	r8, r5	@ ChanID, ChanID
	mov	r7, r4	@ tmp349, tmp349
	str	sl, [sp, #4]	@, %sfp
	mov	sl, #0	@ i.2114,
	b	.L442	@
.L438:
	mov	r0, r6	@, D.32889
	mov	r1, fp	@, tmp353
	mov	r4, #0	@ tmp377,
	str	r4, [sp, #428]	@ tmp377, TopPhyAddr
	str	r4, [sp, #424]	@ tmp377, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	add	sl, sl, #1	@ tmp374, i.2114,
	cmp	r0, #1	@,
	bne	.L464	@,
	ldr	r1, [sp, #192]	@ D.32892, stimage.image_id
	umull	r2, r0, r9, r1	@, tmp387, tmp354, D.32892
	mov	r2, #100	@ tmp389,
	mov	r3, r0, lsr #5	@ RelImgID, tmp387,
	mls	r5, r2, r3, r1	@ RelImgID, tmp389, RelImgID, D.32892
	cmp	r5, #63	@ RelImgID,
	bgt	.L464	@,
	mov	r0, r6	@, D.32889
	add	r2, sp, #428	@,,
	add	r3, sp, #424	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	beq	.L466	@,
.L452:
	add	sl, sl, #1	@ i.2114, tmp374,
	cmp	sl, #64	@ i.2114,
	beq	.L464	@,
.L442:
	mov	r0, r6	@, D.32889
	mov	r1, fp	@, tmp353
	mov	r4, #0	@ tmp299,
	str	r4, [sp, #428]	@ tmp299, TopPhyAddr
	str	r4, [sp, #424]	@ tmp299, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@,
	bne	.L464	@,
	ldr	r1, [sp, #192]	@ D.32892, stimage.image_id
	mov	r5, #100	@ tmp306,
	umull	r2, r0, r9, r1	@, tmp303, tmp354, D.32892
	mov	lr, r0, lsr #5	@ RelImgID, tmp303,
	mls	r5, r5, lr, r1	@ RelImgID, tmp306, RelImgID, D.32892
	cmp	r5, #63	@ RelImgID,
	bgt	.L464	@,
	mov	r0, r6	@, D.32889
	add	r2, sp, #428	@,,
	add	r3, sp, #424	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	bne	.L438	@,
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	add	ip, r1, r5	@ tmp316,, RelImgID
	ldr	lr, [sp, #160]	@ stimage.image_width, stimage.image_width
	add	r5, ip, #178	@ tmp317, tmp316,
	ldr	r2, [r0, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	r3, r7, r5, asl #2	@, tmp320, tmp349, tmp317,
	cmp	lr, r2	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	str	r4, [r3, #8]	@ tmp299, <variable>.LogicImageIsUsed
	bhi	.L438	@,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r5, [sp, #164]	@ stimage.image_height, stimage.image_height
	add	r2, r0, #75776	@ tmp336,,
	add	lr, r2, #912	@ tmp336, tmp336,
	ldr	r3, [lr, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r5, r3	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L438	@,
	ldr	r1, [sp, #208]	@ temp.2118, stimage.p_usrdat
	cmp	r1, #0	@ temp.2118,
	beq	.L439	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #208]	@ tmp299, stimage.p_usrdat
.L439:
	ldr	r1, [sp, #212]	@ temp.2119, stimage.p_usrdat
	cmp	r1, #0	@ temp.2119,
	beq	.L440	@,
	mov	r0, r8	@, ChanID
	mov	r4, #0	@ tmp340,
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #212]	@ tmp340, stimage.p_usrdat
.L440:
	ldr	r1, [sp, #216]	@ temp.2120, stimage.p_usrdat
	cmp	r1, #0	@ temp.2120,
	beq	.L441	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	ip, #0	@ tmp341,
	str	ip, [sp, #216]	@ tmp341, stimage.p_usrdat
.L441:
	ldr	r1, [sp, #220]	@ D.32911, stimage.p_usrdat
	cmp	r1, #0	@ D.32911,
	beq	.L438	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp342,
	str	r1, [sp, #220]	@ tmp342, stimage.p_usrdat
	b	.L438	@
.L466:
	ldmib	sp, {r0, r2}	@ phole ldm
	add	r3, r0, r5	@ tmp397,, RelImgID
	ldr	r1, [sp, #160]	@ stimage.image_width, stimage.image_width
	add	r5, r3, #178	@ tmp398, tmp397,
	ldr	lr, [r2, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	ip, r7, r5, asl #2	@, tmp400, tmp349, tmp398,
	cmp	r1, lr	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	str	r4, [ip, #8]	@ tmp377, <variable>.LogicImageIsUsed
	bhi	.L452	@,
	ldr	r2, [sp, #12]	@, %sfp
	ldr	ip, [sp, #164]	@ stimage.image_height, stimage.image_height
	add	lr, r2, #75776	@ tmp409,,
	add	r1, lr, #912	@ tmp409, tmp409,
	ldr	r5, [r1, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	ip, r5	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L452	@,
	ldr	r1, [sp, #208]	@ temp.2118, stimage.p_usrdat
	cmp	r1, #0	@ temp.2118,
	beq	.L453	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #208]	@ tmp377, stimage.p_usrdat
.L453:
	ldr	r1, [sp, #212]	@ temp.2119, stimage.p_usrdat
	cmp	r1, #0	@ temp.2119,
	beq	.L454	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	ip, #0	@ tmp418,
	str	ip, [sp, #212]	@ tmp418, stimage.p_usrdat
.L454:
	ldr	r1, [sp, #216]	@ temp.2120, stimage.p_usrdat
	cmp	r1, #0	@ temp.2120,
	beq	.L455	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp417,
	str	r0, [sp, #216]	@ tmp417, stimage.p_usrdat
.L455:
	ldr	r1, [sp, #220]	@ D.32911, stimage.p_usrdat
	cmp	r1, #0	@ D.32911,
	beq	.L452	@,
	mov	r0, r8	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r3, #0	@ tmp416,
	str	r3, [sp, #220]	@ tmp416, stimage.p_usrdat
	b	.L452	@
.L464:
	mov	r5, r8	@ ChanID, ChanID
	b	.L435	@
	.fnend
	.size	DNR_InformDecChanReset, .-DNR_InformDecChanReset
	.align	2
	.global	DNR_ProcessLastFrameError
	.type	DNR_ProcessLastFrameError, %function
DNR_ProcessLastFrameError:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	movw	ip, #:lower16:76696	@ tmp141,
	movt	ip, #:upper16:76696	@ tmp141,
	movw	r4, #:lower16:.LANCHOR0	@ tmp173,
	movt	r4, #:upper16:.LANCHOR0	@ tmp173,
	mul	r1, ip, r5	@ tmp140, tmp141, NextInstId
	movw	r3, #:lower16:1374389535	@ tmp147,
	movt	r3, #:upper16:1374389535	@ tmp147,
	add	r2, r1, r4	@ tmp142, tmp140, tmp173
	ldr	r2, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r2	@, tmp146, tmp147, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp149,
	mov	r3, r3, lsr #5	@ tmp144, tmp146,
	mls	r2, ip, r3, r2	@ tmp150, tmp149, tmp144, <variable>.Cur1DImage.image_id
	add	r2, r2, #2	@ tmp151, tmp150,
	cmp	r0, r2	@, tmp151
	addne	r6, r4, #8	@ tmp174, tmp173,
	beq	.L475	@,
.L468:
	movw	r2, #:lower16:76696	@ tmp163,
	movt	r2, #:upper16:76696	@ tmp163,
	mov	r0, r5	@, NextInstId
	mul	r5, r2, r5	@ tmp162, tmp163, NextInstId
	add	r3, r5, #40	@ tmp164, tmp162,
	add	r5, r5, r4	@ tmp170, tmp162, tmp173
	add	r1, r6, r3	@, tmp174, tmp164
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, #0	@ tmp172,
	str	r0, [r5, #440]	@ tmp172, <variable>.s321DFrameIsProc
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L475:
	add	lr, r1, #968	@ tmp156, tmp140,
	add	r6, r4, #8	@ tmp174, tmp173,
	add	r0, r6, lr	@, tmp174, tmp156
	bl	IMGQUE_GetLastImageID	@
	movw	r1, #:lower16:g_event_report	@ tmp158,
	movt	r1, #:upper16:g_event_report	@ tmp158,
	ldr	r3, [r1, #0]	@ g_event_report.467, g_event_report
	cmp	r3, #0	@ g_event_report.467,
	beq	.L469	@,
	cmn	r0, #1	@ LastFrameId.2145,
	add	r2, sp, #8	@ tmp159,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.468,
	str	r0, [r2, #-4]!	@ iftmp.468, para
	mov	r0, r5	@, NextInstId
	blx	r3	@ g_event_report.467
.L469:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L468	@
	.fnend
	.size	DNR_ProcessLastFrameError, .-DNR_ProcessLastFrameError
	.align	2
	.global	DNR_PrecessChanLastFrame
	.type	DNR_PrecessChanLastFrame, %function
DNR_PrecessChanLastFrame:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r6, #:lower16:76696	@ tmp145,
	movt	r6, #:upper16:76696	@ tmp145,
	movw	r5, #:lower16:.LANCHOR0	@ tmp142,
	movt	r5, #:upper16:.LANCHOR0	@ tmp142,
	.pad #12
	sub	sp, sp, #12	@,,
	mul	r6, r6, r0	@ tmp144, tmp145, NextInstId
	add	r7, r5, #8	@ tmp143, tmp142,
	mov	r4, r0	@ NextInstId, NextInstId
	add	r8, r6, #40	@ tmp146, tmp144,
	add	r8, r7, r8	@ D.33492, tmp143, tmp146
	mov	r1, r8	@, D.33492
	bl	VCTRL_GetChanImage	@
	subs	sl, r0, #0	@ D.33493,
	bne	.L477	@,
	add	r5, r6, r5	@ tmp151, tmp144, tmp142
	add	r3, r5, #75776	@ tmp152, tmp151,
	add	r3, r3, #856	@ tmp152, tmp152,
	ldr	r7, [r3, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	cmp	r7, #1	@ <variable>.u32BackwardOptimizeFlag,
	beq	.L478	@,
	ldr	r2, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r1, #1	@ tmp160,
	str	r1, [r5, #440]	@ tmp160, <variable>.s321DFrameIsProc
	add	r5, r5, #192	@ tmp166, tmp151,
	cmp	r2, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L484	@,
	ldr	r0, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r0, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L484	@,
	ldr	ip, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L490	@,
.L482:
	mov	r0, #0	@ D.33504,
.L481:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L484:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, #1	@ D.33504,
	b	.L481	@
.L477:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L482	@,
	add	r0, r6, #968	@ tmp221, tmp144,
	add	r0, r7, r0	@, tmp143, tmp221
	bl	IMGQUE_GetLastImageID	@
	movw	r1, #:lower16:g_event_report	@ tmp223,
	movt	r1, #:upper16:g_event_report	@ tmp223,
	ldr	r3, [r1, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	beq	.L486	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp224,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.498,
	str	r0, [r2, #-4]!	@ iftmp.498, para
	mov	r0, r4	@, NextInstId
	blx	r3	@ g_event_report.497
.L486:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	mov	r0, #0	@ D.33504,
	b	.L481	@
.L478:
	ldr	r2, [r5, #116]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ <variable>.Cur1DImage.DispEnableFlag,
	bne	.L491	@,
	ldr	lr, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	r0, r5, #192	@ tmp201, tmp151,
	str	r2, [r5, #440]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.s321DFrameIsProc
	cmp	lr, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L484	@,
	ldr	r2, [r0, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r2, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L484	@,
	ldr	r3, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L482	@,
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.33492
	bl	DNR_FastBackOptimize	@
	mov	r0, sl	@ D.33504, D.33493
	b	.L481	@
.L491:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r7	@ D.33504, <variable>.u32BackwardOptimizeFlag
	b	.L481	@
.L490:
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.33492
	bl	DNR_FastForwardFastBack	@
	mov	r0, sl	@ D.33504, D.33493
	b	.L481	@
	.fnend
	.size	DNR_PrecessChanLastFrame, .-DNR_PrecessChanLastFrame
	.align	2
	.global	DNR_PutYuv
	.type	DNR_PutYuv, %function
DNR_PutYuv:
	.fnstart
.LFB1636:
	@ args = 24, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #100
	sub	sp, sp, #100	@,,
	mov	r4, r1	@ pLuma, pLuma
	add	r1, sp, #92	@,,
	str	r2, [sp, #72]	@ PicWidth, %sfp
	mov	fp, r3	@ PicHeight, PicHeight
	mov	r7, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r5, r0, #0	@ D.33817,
	mvnne	r0, #0	@ D.33820,
	beq	.L497	@,
.L494:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L497:
	ldr	r6, [sp, #136]	@, Stride
	movw	sl, #:lower16:76696	@ tmp158,
	ldr	r0, [sp, #92]	@, PicBufID
	movt	sl, #:upper16:76696	@ tmp158,
	mov	r1, #392	@ tmp156,
	movw	ip, #26488	@,
	mul	lr, fp, r6	@ D.33829, PicHeight,
	movw	r6, #:lower16:.LANCHOR0	@ tmp153,
	mul	r3, sl, r7	@, tmp158, ChanID
	movt	r6, #:upper16:.LANCHOR0	@ tmp153,
	mla	sl, r1, r0, r3	@ tmp159, tmp156,,
	mov	r1, r4	@, pLuma
	add	r9, lr, lr, asl #1	@, tmp579, D.33829, D.33829,
	add	r4, sl, r6	@ tmp169, tmp159, tmp153
	str	r3, [sp, #76]	@, %sfp
	add	r8, r9, r9, lsr #31	@, tmp581, tmp579, tmp579,
	movw	r3, #26560	@ tmp257,
	ldr	r2, [r4, ip]	@, <variable>.luma_2d_vir_addr
	add	r0, r4, #26368	@, tmp169,
	mov	ip, r8, asr #1	@, tmp581,
	str	ip, [sp, #80]	@, %sfp
	add	r8, r0, #248	@, tmp2,
	str	r2, [sp, #12]	@, %sfp
	add	r2, r0, #136	@, tmp3,
	ldr	ip, [r4, r3]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	add	r3, r0, #160	@, tmp9,
	str	r0, [sp, #4]	@, %sfp
	str	r2, [sp, #24]	@, %sfp
	ldr	r2, [sp, #4]	@, %sfp
	str	r0, [sp, #36]	@ tmp9, %sfp
	str	r0, [sp, #40]	@ tmp2, %sfp
	str	r0, [sp, #44]	@ tmp3, %sfp
	str	r0, [sp, #48]	@, %sfp
	str	r0, [sp, #52]	@ tmp9, %sfp
	ldr	r9, [sp, #36]	@, %sfp
	str	r0, [sp, #56]	@ tmp2, %sfp
	str	r0, [sp, #60]	@ tmp3, %sfp
	str	r0, [sp, #64]	@, %sfp
	str	r0, [sp, #68]	@ tmp9, %sfp
	str	r8, [sp, #20]	@, %sfp
	add	r8, r0, #144	@,,
	str	r3, [sp, #32]	@, %sfp
	add	r0, r2, #192	@,,
	ldr	r3, [sp, #40]	@, %sfp
	str	r0, [sp, #4]	@, %sfp
	ldr	r0, [sp, #44]	@, %sfp
	add	r2, r3, #104	@,,
	str	r8, [sp, #28]	@, %sfp
	add	r8, r9, #168	@,,
	str	r2, [sp, #40]	@, %sfp
	add	r9, r0, #120	@,,
	ldr	r2, [sp, #52]	@, %sfp
	str	r8, [sp, #36]	@, %sfp
	str	r9, [sp, #44]	@, %sfp
	add	r0, r2, #216	@,,
	ldr	r8, [sp, #48]	@, %sfp
	ldr	r9, [sp, #56]	@, %sfp
	add	r3, r8, #176	@,,
	str	r0, [sp, #52]	@, %sfp
	add	r8, r9, #224	@,,
	str	r3, [sp, #48]	@, %sfp
	str	r8, [sp, #56]	@, %sfp
	ldr	r3, [sp, #60]	@, %sfp
	ldr	r8, [sp, #68]	@, %sfp
	ldr	r0, [sp, #64]	@, %sfp
	add	r2, r3, #232	@,,
	add	r3, r8, #208	@,,
	ldr	r8, [sp, #92]	@, PicBufID
	str	r2, [sp, #60]	@, %sfp
	add	r9, r0, #240	@,,
	add	r2, sl, #26368	@, tmp159,
	str	r9, [sp, #64]	@, %sfp
	movw	r9, #26616	@ tmp163,
	str	r3, [sp, #68]	@, %sfp
	add	r0, r2, #64	@,,
	ldr	r2, [sp, #80]	@, %sfp
	str	r0, [sp, #16]	@, %sfp
	movw	sl, #26464	@,
	ldr	r0, [sp, #12]	@, %sfp
	add	r3, lr, ip	@ tmp285, D.33829, <variable>.luma_2d_phy_addr
	str	r8, [r4, r9]	@, <variable>.image_id
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, sl]	@, tmp169,
	ldr	sl, [sp, #16]	@, %sfp
	ldr	r9, .L498	@,
	add	r8, r9, sl	@,,
	movw	sl, #26544	@ tmp346,
	str	r8, [sp, #16]	@, %sfp
	str	ip, [r4, sl]	@ <variable>.luma_2d_phy_addr, <variable>.luma_phy_addr
	ldr	r8, [sp, #140]	@, DispPicWidth
	ldr	sl, [sp, #4]	@, %sfp
	mov	r9, r8, lsr #1	@,,
	str	r9, [sp, #84]	@, %sfp
	str	r3, [sl, #4]	@ tmp285, <variable>.chrom_2d_phy_addr
	ldr	r8, [sp, #144]	@, DispPicHeight
	ldr	sl, [sp, #72]	@, %sfp
	mov	r9, r8, lsr #1	@,,
	movw	r8, #26584	@ tmp453,
	str	r9, [sp, #8]	@, %sfp
	str	sl, [r4, r8]	@, <variable>.image_width
	ldr	r9, [sp, #12]	@, %sfp
	add	sl, r9, lr	@ tmp383,, D.33829
	ldr	lr, [sp, #52]	@, %sfp
	str	fp, [lr, #4]	@ PicHeight, <variable>.image_height
	mov	lr, #1	@ tmp216,
	ldr	fp, [sp, #44]	@, %sfp
	str	sl, [fp, #4]	@ tmp383, <variable>.chrom_2d_vir_addr
	ldr	r8, [sp, #136]	@, Stride
	ldr	r9, [sp, #84]	@, %sfp
	add	fp, r8, ip	@ tmp305,, <variable>.luma_2d_phy_addr
	movw	r8, #26600	@ tmp489,
	str	r9, [r4, r8]	@, <variable>.disp_center_x
	ldr	r8, [sp, #136]	@, Stride
	add	r9, r8, r3	@ tmp325,, tmp285
	movw	r8, #26536	@ tmp287,
	str	fp, [r4, r8]	@ tmp305, <variable>.btm_luma_phy_addr
	ldr	r8, [sp, #36]	@, %sfp
	str	r9, [r8, #4]	@ tmp325, <variable>.btm_chrom_phy_addr
	ldr	fp, [sp, #8]	@, %sfp
	ldr	r8, [sp, #60]	@, %sfp
	str	fp, [r8, #4]	@, <variable>.disp_center_y
	movw	r8, #26648	@ tmp558,
	ldr	r9, [sp, #136]	@, Stride
	ldr	fp, [sp, #64]	@, %sfp
	str	lr, [r4, r8]	@ tmp216, <variable>.chroma_idc
	str	r9, [fp, #4]	@, <variable>.image_stride
	movw	fp, #26440	@ tmp172,
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, fp]	@, tmp169, tmp172
	movw	fp, #26448	@ tmp181,
	strd	r8, [r4, fp]	@, tmp169, tmp181
	movw	fp, #26456	@ tmp190,
	strd	r8, [r4, fp]	@, tmp169, tmp190
	ldr	r9, [sp, #24]	@, %sfp
	str	lr, [r9, #4]	@ tmp216, <variable>.DispEnableFlag
	movw	r9, #26512	@ tmp218,
	str	r5, [r4, r9]	@ D.33817, <variable>.DispFrameDistance
	movw	r9, #26520	@ tmp238,
	ldr	lr, [sp, #28]	@, %sfp
	str	r5, [r4, r9]	@ D.33817, <variable>.GopNum
	str	r5, [lr, #4]	@ D.33817, <variable>.DistanceBeforeFirstFrame
	movw	lr, #26528	@ tmp248,
	str	ip, [r4, lr]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	movw	ip, #26472	@ tmp327,
	ldr	r8, [sp, #32]	@, %sfp
	str	r3, [r8, #4]	@ tmp285, <variable>.top_chrom_phy_addr
	movw	r8, #26568	@ tmp443,
	ldr	r9, [sp, #12]	@, %sfp
	str	r9, [r4, ip]	@, <variable>.luma_vir_addr
	movw	r9, #26592	@ tmp471,
	ldr	lr, [sp, #40]	@, %sfp
	movw	ip, #26608	@ tmp529,
	str	sl, [lr, #4]	@ tmp383, <variable>.chrom_vir_addr
	ldr	sl, [sp, #48]	@, %sfp
	str	r5, [r4, r8]	@ D.33817, <variable>.is_fld_save
	str	r3, [sl, #4]	@ tmp285, <variable>.chrom_phy_addr
	ldr	r8, [sp, #140]	@, DispPicWidth
	str	r8, [r4, r9]	@, <variable>.disp_width
	ldr	r9, [sp, #144]	@, DispPicHeight
	ldr	sl, [sp, #56]	@, %sfp
	str	r9, [sl, #4]	@, <variable>.disp_height
	str	r5, [r4, ip]	@ D.33817, <variable>.frame_rate
	movw	ip, #11296	@ tmp576,
	ldr	r3, [sp, #20]	@, %sfp
	str	r5, [r3, #4]	@ D.33817, <variable>.error_level
	ldr	lr, [sp, #68]	@, %sfp
	str	ip, [lr, #4]	@ tmp576, <variable>.format
	bl	memcpy	@
	movw	r2, #26488	@,
	ldr	r4, [r4, r2]	@ temp.2200, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, temp.2200
	bl	MEM_Vir2Phy	@
	ldr	r2, [sp, #80]	@, %sfp
	mov	r1, r0	@ D.33858,
	mov	r0, r4	@, temp.2200
	bl	KernelFlushCache	@
	ldr	r3, [sp, #76]	@, %sfp
	ldr	ip, .L498	@,
	add	r0, r3, #968	@ tmp610,,
	ldr	r1, [sp, #16]	@, %sfp
	add	r0, ip, r0	@,, tmp610
	bl	IMGQUE_InsertImage	@
	ldr	r2, [sp, #92]	@ PicBufID, PicBufID
	movw	r1, #19174	@ tmp614,
	movw	r3, #:lower16:g_event_report	@ tmp623,
	movt	r3, #:upper16:g_event_report	@ tmp623,
	mla	ip, r1, r7, r2	@ tmp615, tmp614, ChanID, PicBufID
	ldr	r3, [r3, #0]	@ g_event_report.527, g_event_report
	mov	r2, #2	@ tmp622,
	cmp	r3, #0	@ g_event_report.527,
	moveq	r0, r3	@ D.33820, g_event_report.527
	add	r6, r6, ip, asl #2	@, tmp620, tmp153, tmp615,
	str	r2, [r6, #720]	@ tmp622, <variable>.LogicImageIsUsed
	beq	.L494	@,
	ldr	r8, [sp, #16]	@, %sfp
	add	r2, sp, #96	@ tmp624,,
	mov	r0, r7	@, ChanID
	mov	r1, #5	@,
	str	r8, [r2, #-8]!	@, para
	blx	r3	@ g_event_report.527
	mov	r0, r5	@ D.33820, D.33817
	b	.L494	@
.L499:
	.align	2
.L498:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PutYuv, .-DNR_PutYuv
	.align	2
	.global	DNR_SetDnrCfg
	.type	DNR_SetDnrCfg, %function
DNR_SetDnrCfg:
	.fnstart
.LFB1627:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pDnrCfg, pDnrCfg
	mov	r0, r3	@, pDetPara
	mov	r7, r1	@ NextInstId, NextInstId
	mov	r8, r3	@ pDetPara, pDetPara
	mov	r5, r2	@ pImageDnr, pImageDnr
	bl	DetPic	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp310,
	movw	r2, #:lower16:76696	@ tmp150,
	movt	r6, #:upper16:.LANCHOR0	@ tmp310,
	movt	r2, #:upper16:76696	@ tmp150,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp154,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp154,
	mla	r2, r2, r7, r6	@ tmp151, tmp150, NextInstId, tmp310
	str	r0, [r2, #28]	@, <variable>.IsRwzb
	ldr	r1, [sp, #24]	@ SourceImgStoreType, SourceImgStoreType
	strb	r1, [r4, #3]	@ SourceImgStoreType, <variable>.pic_structure
	ldr	r3, [r3, #0]	@ g_eVdmVersion.488, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.488,
	beq	.L516	@,
	cmp	r3, #4	@ g_eVdmVersion.488,
	ldreq	r3, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
.L502:
	mov	r3, r8	@, pDetPara
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	mov	r2, r5	@, pImageDnr
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r0, [r5, #16]	@ D.33327, <variable>.video_standard
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	cmp	r0, #1	@ D.33327,
	ldrb	ip, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	str	r0, [r4, #16]	@ D.33327, <variable>.video_standard
	mla	r3, r2, r7, r6	@ tmp180, tmp179, NextInstId, tmp310
	ldreqb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.vc1_profile, <variable>.vc1_profile
	movne	r0, #3	@ tmp173,
	strneb	r0, [r4, #9]	@ tmp173, <variable>.vc1_profile
	streqb	r0, [r4, #9]	@ <variable>.vc1_profile, <variable>.vc1_profile
	ldreq	r0, [r5, #32]	@ <variable>.Rangedfrm, <variable>.Rangedfrm
	streq	r0, [r4, #68]	@ <variable>.Rangedfrm, <variable>.Rangedfrm
	movw	r0, #:lower16:76696	@ tmp197,
	ldr	r1, [r3, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	movt	r0, #:upper16:76696	@ tmp197,
	cmp	ip, #0	@ <variable>.pic_structure,
	movw	r3, #:lower16:g_VdmCharacter	@ tmp311,
	add	r8, r1, #15	@ tmp182, <variable>.Cur1DImage.image_height,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp311,
	mla	r1, r0, r7, r6	@ tmp198, tmp197, NextInstId, tmp310
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, tmp182,
	addne	r8, r8, #1	@ tmp193, tmp192,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, tmp193,
	ldr	ip, [r1, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	str	r8, [r4, #28]	@ CurPicHeightInMb, <variable>.pic_height_in_mb
	add	r2, ip, #15	@ tmp200, <variable>.Cur1DImage.image_width,
	mov	ip, r2, lsr #4	@ D.33346, tmp200,
	str	ip, [r4, #24]	@ D.33346, <variable>.pic_width_in_mb
	mul	r0, ip, r8	@ tmp202, D.33346, CurPicHeightInMb
	mov	r2, ip, asl #4	@ tmp214, D.33346,
	str	r0, [r4, #20]	@ tmp202, <variable>.mbtodec
	ldr	r0, [r1, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	str	r0, [r4, #32]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.dnr_ystaddr_1d
	ldr	r1, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #4	@ g_VdmCharacter,
	movw	r1, #:lower16:76696	@ tmp231,
	addeq	r2, r2, #63	@ tmp215, tmp214,
	addne	r2, r2, #79	@ tmp219, tmp218,
	bic	r0, r2, #63	@ tmp220, tmp219,
	str	r0, [r4, #60]	@ tmp220, <variable>.ddr_stride
	ldrb	ip, [r5, #11]	@ zero_extendqisi2	@ <variable>.use_pic_qp_en, <variable>.use_pic_qp_en
	movt	r1, #:upper16:76696	@ tmp231,
	movw	r2, #:lower16:76656	@ tmp229,
	movt	r2, #:upper16:76656	@ tmp229,
	mul	r1, r1, r7	@ tmp230, tmp231, NextInstId
	strb	ip, [r4, #10]	@ <variable>.use_pic_qp_en, <variable>.use_pic_qp_en
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	movw	r0, #:lower16:.LANCHOR0	@ tmp228,
	movt	r0, #:upper16:.LANCHOR0	@ tmp228,
	strb	ip, [r4, #4]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	add	ip, r1, r6	@ tmp232, tmp230, tmp310
	ldr	lr, [r5, #20]	@ <variable>.QP_Y, <variable>.QP_Y
	str	lr, [r4, #48]	@ <variable>.QP_Y, <variable>.QP_Y
	ldr	lr, [r5, #24]	@ <variable>.QP_U, <variable>.QP_U
	str	lr, [r4, #52]	@ <variable>.QP_U, <variable>.QP_U
	ldr	lr, [r5, #28]	@ <variable>.QP_V, <variable>.QP_V
	str	lr, [r4, #56]	@ <variable>.QP_V, <variable>.QP_V
	ldr	lr, [ip, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	lr, #1	@ <variable>.DNRDataSourceFlag,
	beq	.L517	@,
	ldr	r2, [sp, #28]	@ PicBufID, PicBufID
	mov	lr, #392	@ tmp254,
	mla	r1, lr, r2, r1	@ tmp257, tmp254, PicBufID, tmp230
	movw	r2, #26560	@ tmp252,
	add	r0, r1, r0	@ tmp258, tmp257, tmp228
	ldr	r1, [r0, r2]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldrb	lr, [ip, #9]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	strb	lr, [r4, #11]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
.L510:
	ldr	r3, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L511	@,
	movw	lr, #:lower16:76696	@ tmp275,
	movt	lr, #:upper16:76696	@ tmp275,
	movw	r2, #:lower16:76624	@ tmp281,
	movt	r2, #:upper16:76624	@ tmp281,
	mla	r1, lr, r7, r6	@ tmp276, tmp275, NextInstId, tmp310
	add	r3, r1, #75776	@ tmp285, tmp276,
	add	lr, r3, #848	@ tmp285, tmp285,
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	strb	ip, [r4, #12]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	r0, [r1, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [r4, #76]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	ip, [lr, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	ip, [r4, #80]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
.L511:
	mov	r2, r5	@, pImageDnr
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.33388,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r2, #2	@ <variable>.pic_structure,
	movne	r0, #0	@ D.33391,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	lr, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r2, #:lower16:76696	@ tmp304,
	movt	r2, #:upper16:76696	@ tmp304,
	mov	r0, #0	@ D.33391,
	mul	ip, lr, r8	@ tmp295, <variable>.pic_width_in_mb, CurPicHeightInMb
	mla	r6, r2, r7, r6	@ tmp305, tmp304, NextInstId, tmp310
	mov	r3, ip, asl #8	@ tmp299, tmp295,
	add	r8, r3, ip, asl #7	@, tmp300, tmp299, tmp295,
	ldr	r1, [r6, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	add	r8, r8, r1	@ tmp308, tmp300, <variable>.Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ tmp308, <variable>.dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L517:
	movw	r0, #:lower16:76680	@ tmp236,
	movt	r0, #:upper16:76680	@ tmp236,
	ldr	r2, [ip, r0]	@ <variable>.pCaptureImageOut, <variable>.pCaptureImageOut
	ldr	r1, [r2, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldr	lr, [ip, #420]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.Cur1DImage.u32Circumrotate
	strb	lr, [r4, #11]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.s32MirrorEn
	b	.L510	@
.L516:
	ldr	ip, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r0, ip, asl #5	@ tmp162, <variable>.Cur1DImage.image_stride,
	str	r0, [r4, #64]	@ tmp162, <variable>.dnr_stride_1d
	b	.L502	@
	.fnend
	.size	DNR_SetDnrCfg, .-DNR_SetDnrCfg
	.align	2
	.global	DNR_DetNetworkParam
	.type	DNR_DetNetworkParam, %function
DNR_DetNetworkParam:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #48
	sub	sp, sp, #48	@,,
	add	r4, sp, #4	@ tmp220,,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	mov	r1, #44	@,
	mov	r0, r4	@, tmp220
	bl	__memzero	@
	movw	r3, #:lower16:g_eVdmVersion	@ tmp143,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp143,
	ldr	r3, [r3, #0]	@ g_eVdmVersion.474, g_eVdmVersion
	sub	r2, r3, #3	@ tmp144, g_eVdmVersion.474,
	cmp	r2, #1	@ tmp144,
	bls	.L519	@,
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp145,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp145,
	ldr	r0, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r0, #1	@ USE_FF_APT_EN,
	beq	.L527	@,
.L529:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
.L528:
	mov	r1, #0	@ s32SourceImgStoreType,
.L521:
	rsbs	r1, r1, #1	@ prephitmp.2263, s32SourceImgStoreType
	movcc	r1, #0	@ prephitmp.2263
.L523:
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	str	r1, [sp, #44]	@ prephitmp.2263, stDetPara.IsFrameStored
	mov	r0, r4	@, tmp220
	mla	r5, r2, r5, r3	@ tmp180, tmp179, NextInstId, tmp219
	ldr	r2, [r5, #192]	@ D.33170, <variable>.Cur1DImage.image_width
	ldr	r3, [r5, #196]	@ D.33172, <variable>.Cur1DImage.image_height
	ldr	lr, [r5, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	add	r4, r2, #15	@ tmp202, D.33170,
	ldr	ip, [r5, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	add	r1, r3, #15	@ tmp204, D.33172,
	mov	r4, r4, asr #4	@ tmp203, tmp202,
	str	r2, [sp, #24]	@ D.33170, stDetPara.PicWidth
	mov	r1, r1, asr #4	@ tmp205, tmp204,
	str	r4, [sp, #36]	@ tmp203, stDetPara.MbWidth
	str	lr, [sp, #12]	@ <variable>.Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	ip, [sp, #32]	@ <variable>.Cur1DImage.image_stride, stDetPara.PicStride
	str	r1, [sp, #40]	@ tmp205, stDetPara.MbHeight
	str	r3, [sp, #28]	@ D.33172, stDetPara.PicHeight
	bl	DetPic	@
	str	r0, [r5, #404]	@ D.33180, <variable>.Cur1DImage.optm_inf.Rwzb
	str	r0, [r5, #28]	@ D.33180, <variable>.IsRwzb
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L519:
	cmp	r3, #3	@ g_eVdmVersion.474,
	bne	.L522	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp163,
	mov	r1, #1	@ prephitmp.2263,
	mla	ip, lr, r5, r3	@ tmp164, tmp163, NextInstId, tmp219
	ldr	r0, [ip, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r2, r0, asl #5	@ tmp167, <variable>.Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ tmp167, <variable>.dnr_stride_1d
	b	.L523	@
.L527:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp150,
	mla	ip, lr, r5, r3	@ tmp151, tmp150, NextInstId, tmp219
	ldr	r1, [ip, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r1, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r1, [ip, #336]	@ zero_extendqisi2	@ s32SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L521	@,
	b	.L528	@
.L522:
	cmp	r3, #4	@ g_eVdmVersion.474,
	bne	.L529	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	ip, #:lower16:76696	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	ip, #:upper16:76696	@ tmp172,
	mov	r1, #1	@ prephitmp.2263,
	mla	r0, ip, r5, r3	@ tmp173, tmp172, NextInstId, tmp219
	ldr	r2, [r0, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	str	r2, [r6, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
	b	.L523	@
	.fnend
	.size	DNR_DetNetworkParam, .-DNR_DetNetworkParam
	.align	2
	.global	DNR_DSDProcess
	.type	DNR_DSDProcess, %function
DNR_DSDProcess:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movw	r4, #:lower16:76696	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:76696	@ tmp141,
	mov	r5, r0	@ NextInstId, NextInstId
	mla	r4, r4, r0, r2	@ tmp142, tmp141, NextInstId, tmp138
	add	ip, r4, #75776	@ tmp143, tmp142,
	add	ip, ip, #904	@ tmp143, tmp143,
	ldr	r3, [ip, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r3, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L535	@,
.L531:
	mov	r0, #0	@ D.33638,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L535:
	ldr	r3, [r4, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r3, #1	@ <variable>.s321DFrameIsProc,
	beq	.L536	@,
.L532:
	mov	r0, #1	@ D.33638,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L536:
	add	r7, r4, #75776	@ tmp163, tmp142,
	add	r6, r4, #192	@ tmp157, tmp142,
	add	r2, r7, #912	@ tmp163, tmp163,
	ldr	ip, [ip, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r8, [r6, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	sl, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	ldr	r7, [r4, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	cmp	r7, ip	@ <variable>.Cur1DImage.image_width, <variable>.stDSDParam.s32ThrWidth
	cmple	r8, sl	@, <variable>.Cur1DImage.image_height, <variable>.stDSDParam.s32ThrHeight
	ble	.L531	@,
	ldr	lr, [r2, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	mov	ip, #0	@ tmp200,
	str	r3, [r4, #412]	@ <variable>.s321DFrameIsProc, <variable>.Cur1DImage.u32Is1D
	str	ip, [r4, #416]	@ tmp200, <variable>.Cur1DImage.is_processed_by_dnr
	str	lr, [r4, #420]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.Cur1DImage.u32Circumrotate
	bl	DNR_DetNetworkParam	@
	ldr	r3, [r6, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	ip, [r4, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r0, r5	@, NextInstId
	add	r1, r3, #31	@ tmp235, <variable>.Cur1DImage.image_height,
	ldr	r3, [r4, #136]	@ <variable>.Cur1DImage.top_luma_phy_addr, <variable>.Cur1DImage.top_luma_phy_addr
	add	r2, ip, #255	@ tmp226, <variable>.Cur1DImage.image_width,
	bic	ip, r2, #255	@ tmp228, tmp226,
	mov	r1, r1, lsr #5	@ tmp237, tmp235,
	mul	r2, r1, ip	@ tmp238, tmp237, tmp228
	add	r1, r3, r2, asl #5	@, tmp247, <variable>.Cur1DImage.top_luma_phy_addr, tmp238,
	str	r1, [r4, #140]	@ tmp247, <variable>.Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.33635,
	bne	.L532	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	DNR_DSDProcess, .-DNR_DSDProcess
	.align	2
	.global	DNR_ProcessChannel
	.type	DNR_ProcessChannel, %function
DNR_ProcessChannel:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #:lower16:76696	@ tmp145,
	movw	r4, #:lower16:.LANCHOR0	@ tmp236,
	movt	r3, #:upper16:76696	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp236,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r4	@ tmp146, tmp145, NextInstId, tmp236
	ldr	ip, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	ip, #0	@ <variable>.NeedStartAgain,
	bne	.L538	@,
	ldr	r1, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r1, #0	@ <variable>.s321DFrameIsProc,
	beq	.L539	@,
	movw	r0, #:lower16:76656	@ tmp157,
	movt	r0, #:upper16:76656	@ tmp157,
	ldr	r7, [r3, r0]	@ prephitmp.2316, <variable>.DNRDataSourceFlag
.L540:
	cmp	r7, #1	@ prephitmp.2316,
	bne	.L542	@,
	movw	r1, #:lower16:76696	@ tmp177,
	movt	r1, #:upper16:76696	@ tmp177,
	mov	r2, #392	@,
	mla	r8, r1, r5, r4	@ tmp178, tmp177, NextInstId, tmp236
	add	r3, r8, #75776	@ tmp185, tmp178,
	add	r0, r8, #48	@, tmp178,
	add	ip, r3, #896	@ tmp185, tmp185,
	ldr	r1, [ip, #4]	@, <variable>.pCaptureImageIn
	bl	memcpy	@
	ldr	r2, [r8, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	str	r7, [r8, #440]	@ prephitmp.2316, <variable>.s321DFrameIsProc
	str	r2, [r6, #0]	@ <variable>.Cur1DImage.image_id,* pPicBufID
.L543:
	movw	r0, #:lower16:76696	@ tmp208,
	movt	r0, #:upper16:76696	@ tmp208,
	movw	ip, #:lower16:76656	@ tmp220,
	movt	ip, #:upper16:76656	@ tmp220,
	mla	r4, r0, r5, r4	@ tmp209, tmp208, NextInstId, tmp236
	mov	r0, #0	@ tmp211,
	add	r2, r4, #408	@ tmp210, tmp209,
	ldr	lr, [r4, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	str	r0, [r2, #4]	@ tmp211, <variable>.Cur1DImage.u32Is1D
	cmp	lr, r0	@ <variable>.DNRDataSourceFlag,
	str	r0, [r4, #416]	@ tmp211, <variable>.Cur1DImage.is_processed_by_dnr
	bne	.L544	@,
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Get2DFrameStore	@
	cmp	r0, #1	@,
	movne	r0, #0	@, D.33689
	moveq	r0, #1	@, D.33689
	b	.L544	@
.L538:
	ldr	r3, [r3, #452]	@ <variable>.CurImageBufID, <variable>.CurImageBufID
	mov	r0, #0	@ D.33689,
	str	r3, [r1, #0]	@ <variable>.CurImageBufID,* pPicBufID
.L544:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L539:
	movw	lr, #:lower16:76656	@ tmp163,
	movt	lr, #:upper16:76656	@ tmp163,
	add	r8, r3, #75776	@ tmp167, tmp146,
	ldr	r7, [r3, lr]	@ prephitmp.2316, <variable>.DNRDataSourceFlag
	add	r8, r8, #880	@ tmp167, tmp167,
	cmp	r7, #0	@ prephitmp.2316,
	bne	.L540	@,
	str	r2, [sp, #4]	@,
	bl	DNR_PrecessChanLastFrame	@
	ldr	r2, [sp, #4]	@,
	cmp	r0, #1	@,
	beq	.L541	@,
	ldr	r7, [r8, #0]	@ prephitmp.2316, <variable>.DNRDataSourceFlag
	b	.L540	@
.L542:
	mov	r1, r2	@, pDnrCfg
	mov	r0, r5	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	bne	.L547	@,
.L541:
	mov	r0, #1	@ D.33689,
	b	.L544	@
.L547:
	cmn	r0, #1	@ result,
	bne	.L543	@,
	b	.L544	@
	.fnend
	.size	DNR_ProcessChannel, .-DNR_ProcessChannel
	.align	2
	.global	DNR_DoNextInstance
	.type	DNR_DoNextInstance, %function
DNR_DoNextInstance:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #256
	sub	sp, sp, #256	@,,
	add	r5, sp, #124	@ tmp271,,
	mov	r6, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	mov	r7, #0	@ tmp152,
	mov	r0, r5	@, tmp271
	str	r7, [sp, #252]	@ tmp152, PicBufID
	movw	r4, #:lower16:.LANCHOR0	@ tmp270,
	bl	__memzero	@
	movt	r4, #:upper16:.LANCHOR0	@ tmp270,
	movw	r3, #:lower16:76664	@ tmp155,
	movt	r3, #:upper16:76664	@ tmp155,
	ldr	r2, [r4, r3]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	r2, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L570	@,
.L549:
	ldr	r2, [r4, #20]	@ <variable>.InstMode, <variable>.InstMode
	movw	r3, #:lower16:.LANCHOR0	@ tmp165,
	movt	r3, #:upper16:.LANCHOR0	@ tmp165,
	cmp	r2, #0	@ <variable>.InstMode,
	bne	.L550	@,
	movw	r0, #:lower16:76656	@ tmp168,
	movt	r0, #:upper16:76656	@ tmp168,
	ldr	r3, [r3, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r3, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L551	@,
.L550:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	ip, r0, #10	@ tmp170, eVidStd,
	cmp	ip, #2	@ tmp170,
	bhi	.L552	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp171,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp171,
	ldr	lr, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L552	@,
.L551:
	mvn	r0, #0	@ D.33766,
.L564:
	add	sp, sp, #256	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L552:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r7, #0	@, tmp180
	moveq	r7, #1	@, tmp180
	beq	.L551	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L551	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L551	@,
	mov	r0, r7	@, tmp180
	add	r1, sp, #20	@,,
	bl	VCTRL_GetChanState	@
	movw	ip, #:lower16:76632	@ tmp185,
	movt	ip, #:upper16:76632	@ tmp185,
	ldr	r0, [sp, #116]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	movw	r3, #:lower16:.LANCHOR0	@ tmp182,
	movt	r3, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r2, [r4, ip]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r0, [r4, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	r2, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L554	@,
	movw	lr, #51532	@ tmp191,
	movw	r1, #51528	@ tmp188,
	ldr	r2, [r3, lr]	@ D.34833, <variable>.TempImageNum
	str	r7, [r3, r1]	@ tmp180, <variable>.GetFirstIFrameFlag
	cmp	r2, #0	@ D.34833,
	strle	r7, [r3, lr]	@ tmp180, <variable>.TempImageNum
	ble	.L554	@,
	mov	lr, #392	@ tmp198,
	add	r0, r3, #51456	@ D.36696, tmp182,
	mla	ip, lr, r2, r3	@ tmp199, tmp198, D.34833, tmp182
	add	r0, r0, #80	@ D.36696, D.36696,
	add	r3, ip, #51456	@ ivtmp.2357, tmp199,
	add	r3, r3, #80	@ ivtmp.2357, ivtmp.2357,
.L556:
	ldr	ip, [r3, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r3, r3, #392	@ ivtmp.2357, ivtmp.2357,
	cmp	r3, r0	@ ivtmp.2357, D.36696
	movw	r2, #:lower16:.LANCHOR0	@ tmp204,
	movt	r2, #:upper16:.LANCHOR0	@ tmp204,
	add	r1, r4, ip, asl #2	@, tmp209, tmp270, <variable>.image_id,
	str	r7, [r1, #720]	@ tmp275, <variable>.LogicImageIsUsed
	bne	.L556	@,
	movw	r3, #51532	@ tmp214,
	str	r7, [r2, r3]	@ tmp275, <variable>.TempImageNum
.L554:
	mov	r0, #0	@,
	add	r1, sp, #252	@,,
	mov	r2, r5	@, tmp271
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L551	@,
	cmn	r0, #1	@ result,
	beq	.L551	@,
	ldr	r3, [r4, #348]	@ D.33767, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	r2, r3, #10	@ tmp219, D.33767,
	cmp	r2, #2	@ tmp219,
	bhi	.L557	@,
	movw	lr, #:lower16:g_VdmCharacter	@ tmp220,
	movt	lr, #:upper16:g_VdmCharacter	@ tmp220,
	ldr	r0, [lr, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L551	@,
.L557:
	cmp	r3, #4	@ D.33767,
	cmpne	r3, #14	@, D.33767,
	beq	.L551	@,
	cmp	r3, #18	@ D.33767,
	beq	.L551	@,
	movw	ip, #:lower16:g_eVdmVersion	@ tmp230,
	movt	ip, #:upper16:g_eVdmVersion	@ tmp230,
	ldr	r1, [ip, #0]	@ g_eVdmVersion, g_eVdmVersion
	sub	r7, r1, #3	@ tmp231, g_eVdmVersion,
	cmp	r7, #1	@ tmp231,
	bls	.L558	@,
	movw	r0, #:lower16:USE_FF_APT_EN	@ tmp233,
	movt	r0, #:upper16:USE_FF_APT_EN	@ tmp233,
	ldr	r2, [r0, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r2, #1	@ USE_FF_APT_EN,
	beq	.L571	@,
.L558:
	mov	r8, #0	@ SourceImgStoreType,
.L559:
	add	r3, sp, #208	@ tmp236,,
	mov	r1, #0	@,
	mov	r2, r8	@, SourceImgStoreType
	str	r3, [sp, #12]	@,
	mov	r0, r3	@, tmp236
	movw	r7, #:lower16:.LANCHOR0	@ tmp238,
	bl	DNR_SetDetPara	@
	ldr	ip, [sp, #252]	@ PicBufID, PicBufID
	movt	r7, #:upper16:.LANCHOR0	@ tmp238,
	ldr	r3, [sp, #12]	@,
	mov	r0, r5	@, tmp271
	mov	r1, #0	@,
	add	r2, r7, #332	@, tmp238,
	stmia	sp, {r8, ip}	@ phole stm
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L551	@,
	mov	r0, #0	@,
	mov	r1, r5	@, tmp271
	ldr	r2, [sp, #252]	@, PicBufID
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L551	@,
	movw	r8, #:lower16:g_dnr_hal_fun_ptr	@ tmp269,
	movt	r8, #:upper16:g_dnr_hal_fun_ptr	@ tmp269,
	ldr	lr, [sp, #252]	@ PicBufID, PicBufID
	ldr	r3, [r8, #12]	@ D.33780, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.33780,
	str	lr, [r7, #452]	@ PicBufID, <variable>.CurImageBufID
	beq	.L560	@,
	blx	r3	@ D.33780
.L560:
	ldr	r3, [r8, #8]	@ D.33784, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.33784,
	beq	.L561	@,
	mov	r0, r5	@, tmp271
	blx	r3	@ D.33784
.L561:
	movw	ip, #:lower16:76656	@ tmp255,
	movt	ip, #:upper16:76656	@ tmp255,
	ldr	r3, [r8, #16]	@ D.33788, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movw	r2, #:lower16:76660	@ tmp253,
	ldr	r1, [r4, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	movt	r2, #:upper16:76660	@ tmp253,
	cmp	r3, #0	@ D.33788,
	mov	r0, #0	@ tmp250,
	strb	r0, [r4, #8]	@ tmp250, <variable>.DecChanRstFlag
	str	r1, [r4, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRCaptureStartFlag
	beq	.L562	@,
	blx	r3	@ D.33788
.L562:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp258,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp258,
	str	r0, [r3, #20]	@, <variable>.u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L563	@,
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp259,
	movt	ip, #:upper16:.LANCHOR1	@ tmp259,
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp262,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp262,
	ldr	r3, [ip, #3076]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r1, r3, r0	@ tmp260, last_rec_pos_time, currtime
	cmp	r1, r2	@ tmp260, g_TraceFramePeriod
	strhi	r0, [ip, #3076]	@ currtime, last_rec_pos_time
.L563:
	mov	r0, #0	@ tmp265,
	mov	lr, #1	@ tmp267,
	str	r0, [r6, #0]	@ tmp265,* pNextInstId
	str	lr, [r4, #20]	@ tmp267, <variable>.InstMode
	b	.L564	@
.L570:
	ldr	r1, [r4, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r1, #1	@ <variable>.s321DFrameIsProc,
	strne	r7, [r4, r3]	@ tmp152, <variable>.DNRCaptureEnableFlag
	movwne	r1, #:lower16:76656	@ tmp160,
	movtne	r1, #:upper16:76656	@ tmp160,
	strne	r2, [r4, r1]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L549	@
.L571:
	cmp	r3, #0	@ D.33767,
	ldreqb	r8, [r4, #336]	@ zero_extendqisi2	@ SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L559	@,
	b	.L558	@
	.fnend
	.size	DNR_DoNextInstance, .-DNR_DoNextInstance
	.align	2
	.global	DNR_Wakeup
	.type	DNR_Wakeup, %function
DNR_Wakeup:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR1	@ tmp213,
	movt	r4, #:upper16:.LANCHOR1	@ tmp213,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L573	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L583	@,
.L574:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L573:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #3100]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp153, s_DnrCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp153,
	ble	.L574	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp217,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.2378, s_DnrCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp217,
	movw	r7, #:lower16:76696	@ tmp161,
	movt	r7, #:upper16:76696	@ tmp161,
	movw	r3, #:lower16:1374389535	@ tmp167,
	movt	r3, #:upper16:1374389535	@ tmp167,
	mla	r2, r7, r1, r5	@ tmp162, tmp161, prephitmp.2378, tmp217
	ldr	r7, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r7	@, tmp166, tmp167, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp169,
	mov	r3, r3, lsr #5	@ tmp164, tmp166,
	mls	r2, ip, r3, r7	@ tmp170, tmp169, tmp164, <variable>.Cur1DImage.image_id
	add	r7, r2, #2	@ tmp171, tmp170,
	cmp	r0, r7	@, tmp171
	addne	r6, r5, #8	@ tmp216, tmp217,
	beq	.L584	@,
.L575:
	movw	r7, #:lower16:76696	@ tmp197,
	movt	r7, #:upper16:76696	@ tmp197,
	mov	r0, r1	@, prephitmp.2378
	mla	lr, r7, r1, r6	@ tmp199, tmp197, prephitmp.2378, tmp216
	add	r1, lr, #40	@, tmp199,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r0, [r4, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp209,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp209,
	mov	ip, #0	@ tmp208,
	mla	r5, r7, r0, r5	@ tmp206, tmp197, s_DnrCtrl.ThisInstID, tmp217
	ldr	r3, [r3, #12]	@ D.33980, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.33980,
	str	ip, [r5, #440]	@ tmp208, <variable>.s321DFrameIsProc
	beq	.L579	@,
	blx	r3	@ D.33980
.L579:
	mov	r2, #0	@ tmp211,
	str	r2, [r4, #3096]	@ tmp211, s_DnrCtrl.DNRState
	b	.L574	@
.L583:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp150,
	str	r1, [r4, #3096]	@ tmp150, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L574	@
.L584:
	movw	r7, #:lower16:g_event_report	@ tmp215,
	movt	r7, #:upper16:g_event_report	@ tmp215,
	ldr	r3, [r7, #0]	@ g_event_report.537, g_event_report
	cmp	r3, #0	@ g_event_report.537,
	beq	.L576	@,
	add	r6, sp, #8	@ tmp174,,
	mov	r0, r1	@, prephitmp.2378
	mov	lr, #1	@ tmp173,
	mov	r1, #115	@,
	str	lr, [r6, #-8]!	@ tmp173, para
	mov	r2, sp	@,
	blx	r3	@ g_event_report.537
	ldr	r1, [r4, #3092]	@ prephitmp.2378, s_DnrCtrl.ThisInstID
.L576:
	ldr	r6, .L586	@ tmp216,
	movw	r0, #:lower16:76696	@ tmp179,
	movt	r0, #:upper16:76696	@ tmp179,
	mla	ip, r0, r1, r6	@ tmp181, tmp179, prephitmp.2378, tmp216
	add	r0, ip, #968	@, tmp181,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L585	@,
	ldr	r3, [r7, #0]	@ g_event_report.2391, g_event_report
	cmp	r3, #0	@ g_event_report.2391,
	beq	.L578	@,
	add	r7, sp, #8	@ tmp190,,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	mov	r2, sp	@,
	str	r1, [r7, #-8]!	@ ret_val, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2391
.L578:
	mov	r1, #0	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.2378, s_DnrCtrl.ThisInstID
	b	.L575	@
.L585:
	ldr	r3, [r7, #0]	@ g_event_report.2389, g_event_report
	cmp	r3, #0	@ g_event_report.2389,
	beq	.L578	@,
	add	r2, sp, #8	@ tmp186,,
	mov	r1, #1	@ tmp183,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	str	r1, [r2, #-8]!	@ tmp183, para
	mov	r2, sp	@,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2389
	b	.L578	@
.L587:
	.align	2
.L586:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Wakeup, .-DNR_Wakeup
	.global	__aeabi_uidiv
	.align	2
	.global	DNR_IntServeProc
	.type	DNR_IntServeProc, %function
DNR_IntServeProc:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR1	@ tmp240,
	movt	r4, #:upper16:.LANCHOR1	@ tmp240,
	.pad #8
	sub	sp, sp, #8	@,,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #3140]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r0, #44]	@ dat,
	tst	r3, #1	@ dat,
	beq	.L596	@,
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r3, [r1, #20]	@ D.33885, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r3, #0	@ D.33885,
	beq	.L591	@,
	blx	r3	@ D.33885
.L591:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L600	@,
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	bne	.L601	@,
.L593:
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	beq	.L602	@,
.L596:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L600:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #3092]	@ D.33893, s_DnrCtrl.ThisInstID
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp162,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp162,
	add	r2, r4, r2, asl #2	@, tmp158, tmp240, D.33893,
	ldr	ip, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r1, [r2, #3156]	@ tmp161, last_rec_pos_time
	rsb	r7, r1, r0	@ tmp160, tmp161, currtime
	cmp	r7, ip	@ tmp160, g_TraceFramePeriod
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	strhi	r0, [r2, #3156]	@ currtime, last_rec_pos_time
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	beq	.L593	@,
.L601:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldr	ip, [r7, #20]	@ prephitmp.2421, <variable>.u32DaLastStartTime
	add	r3, r2, #49920	@ tmp173, <variable>.u32DaBeginTime,
	add	r1, r3, #80	@ tmp173, tmp173,
	cmp	r1, ip	@ tmp173, prephitmp.2421
	strcc	ip, [r7, #16]	@ prephitmp.2421, <variable>.u32DaBeginTime
	ldr	r5, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldrcs	r3, [r7, #24]	@ prephitmp.2410, <variable>.u32DaDnrWorkTime
	movcc	r3, #0	@ prephitmp.2410,
	rsb	r1, r5, r0	@ Period, <variable>.u32DaBeginTime, CurTime
	add	r6, r3, r0	@ tmp181, prephitmp.2410, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r6	@ D.33910, prephitmp.2421, tmp181
	movw	r5, #:lower16:g_VfmwGlobalStat	@ tmp182,
	mov	r6, #0	@ tmp184,
	str	r3, [r7, #24]	@ D.33910, <variable>.u32DaDnrWorkTime
	movt	r5, #:upper16:g_VfmwGlobalStat	@ tmp182,
	str	r6, [r7, #20]	@ tmp184, <variable>.u32DaLastStartTime
	bcc	.L593	@,
	mov	r0, #1000	@ tmp190,
	mul	r0, r0, r3	@, tmp190, D.33910
	bl	__aeabi_uidiv	@
	str	r6, [r5, #16]	@ tmp184, <variable>.u32DaBeginTime
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	str	r0, [r5, #28]	@, <variable>.u32DaDnrLoad
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	bne	.L596	@,
.L602:
	ldr	r0, [r3, #3092]	@ temp.2423, s_DnrCtrl.ThisInstID
	movw	ip, #9587	@ tmp201,
	movw	r8, #:lower16:.LANCHOR0	@ tmp243,
	movt	r8, #:upper16:.LANCHOR0	@ tmp243,
	mul	r6, ip, r0	@ tmp200, tmp201, temp.2423
	add	r5, r8, r6, asl #3	@, tmp205, tmp243, tmp200,
	ldr	r7, [r5, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r7, #1	@ <variable>.InstMode,
	beq	.L603	@,
.L597:
	ldr	r0, [r4, #3092]	@ temp.2424, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:76696	@ tmp214,
	movt	r5, #:upper16:76696	@ tmp214,
	mov	r3, #0	@ tmp209,
	str	r3, [r4, #3096]	@ tmp209, s_DnrCtrl.DNRState
	movw	r7, #:lower16:.LANCHOR1	@ tmp208,
	mul	r1, r5, r0	@ tmp213, tmp214, temp.2424
	movw	r6, #:lower16:.LANCHOR0	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp208,
	movt	r6, #:upper16:.LANCHOR0	@ tmp211,
	add	r8, r1, r8	@ tmp215, tmp213, tmp243
	ldr	r8, [r8, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r8, r3	@ <variable>.NeedStartAgain,
	beq	.L604	@,
.L598:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L596	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	lr, #1	@ tmp237,
	str	lr, [r4, #3096]	@ tmp237, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L596	@
.L604:
	add	r2, r6, r1	@ tmp222, tmp211, tmp213
	add	r1, r2, #48	@, tmp222,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, [r7, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r5, r5, r1, r6	@ tmp230, tmp214, s_DnrCtrl.ThisInstID, tmp211
	str	r8, [r5, #440]	@ <variable>.NeedStartAgain, <variable>.s321DFrameIsProc
	b	.L598	@
.L603:
	bl	DNR_ProcessDnrReturn	@
	b	.L597	@
	.fnend
	.size	DNR_IntServeProc, .-DNR_IntServeProc
	.align	2
	.global	DNR_CloseDrivers
	.type	DNR_CloseDrivers, %function
DNR_CloseDrivers:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldr	r0, [r0, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #28]	@ <variable>.stDnrReg.Length, <variable>.stDnrReg.Length
	cmp	r3, #0	@ <variable>.stDnrReg.Length,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	DNR_CloseDrivers, .-DNR_CloseDrivers
	.align	2
	.global	DNR_OpenDrivers
	.type	DNR_OpenDrivers, %function
DNR_OpenDrivers:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #16	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r1, #4096	@,
	movw	r0, #:lower16:272957440	@,
	mov	r2, r5	@, pstMem
	movt	r0, #:upper16:272957440	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L609	@,
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L613	@,
.L611:
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L609:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L611	@,
.L613:
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MEM_AddMemRecord	@
	.fnend
	.size	DNR_OpenDrivers, .-DNR_OpenDrivers
	.align	2
	.global	DNR_Init
	.type	DNR_Init, %function
DNR_Init:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #:lower16:g_dnr_hal_fun_ptr	@ tmp155,
	movt	r5, #:upper16:g_dnr_hal_fun_ptr	@ tmp155,
	ldr	r3, [r5, #0]	@ D.32614, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.32614,
	beq	.L615	@,
	blx	r3	@ D.32614
.L615:
	movw	r4, #:lower16:.LANCHOR1	@ tmp156,
	movt	r4, #:upper16:.LANCHOR1	@ tmp156,
	ldr	r3, [r4, #3080]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.32621,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r0, r4, #3072	@, tmp156,
	mov	r1, #60	@,
	add	r0, r0, #8	@,,
	bl	__memzero	@
	ldr	r0, .L620	@,
	movw	r1, #:lower16:76696	@,
	movt	r1, #:upper16:76696	@,
	bl	__memzero	@
	add	r0, r4, #3104	@, tmp156,
	bl	DNR_OpenDrivers	@
	bl	DNR_Fsp_Init	@
	ldr	r3, [r5, #4]	@ D.32632, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.32632,
	beq	.L618	@,
	blx	r3	@ D.32632
.L618:
	mov	r1, #1	@ tmp153,
	mov	r0, #0	@ D.32621,
	str	r1, [r4, #3080]	@ tmp153, s_DnrCtrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L621:
	.align	2
.L620:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Init, .-DNR_Init
	.align	2
	.global	DNR_Close
	.type	DNR_Close, %function
DNR_Close:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, .L624	@,
	bl	DNR_CloseDrivers	@
	ldr	r0, .L624+4	@,
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L625:
	.align	2
.L624:
	.word	.LANCHOR1+3104
	.word	.LANCHOR1+3080
	.fnend
	.size	DNR_Close, .-DNR_Close
	.align	2
	.global	DNR_GetState
	.type	DNR_GetState, %function
DNR_GetState:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r1, #0	@ pstDnrChanState, pstDnrChanState
	mov	r5, r0	@ ChanID, ChanID
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, pstDnrChanState
	mov	r1, #80	@,
	bl	__memzero	@
	movw	r1, #:lower16:76696	@ tmp138,
	movt	r1, #:upper16:76696	@ tmp138,
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	add	r2, r4, #76	@, pstDnrChanState,
	mul	r5, r1, r5	@ tmp137, tmp138, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	ip, r5, r0	@ tmp139, tmp137, tmp135
	add	r0, ip, #976	@, tmp146,
	ldr	r3, [ip, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r3, [r4, #68]	@ <variable>.s32ValidImgNum, <variable>.total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
	.fnend
	.size	DNR_GetState, .-DNR_GetState
	.global	g_DBEnable
	.global	g_DREnable
	.global	g_DCEnable
	.global	g_DnrHwMem
	.global	s_DnrCtrl
	.global	s_DnrChan
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"LQue%d\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 73656
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.space	4
	.type	s_DnrChan, %object
	.size	s_DnrChan, 76696
s_DnrChan:
	.space	76696
	.type	g_DREnable, %object
	.size	g_DREnable, 4
g_DREnable:
	.space	4
	.type	g_DBEnable, %object
	.size	g_DBEnable, 4
g_DBEnable:
	.space	4
	.type	g_DCEnable, %object
	.size	g_DCEnable, 4
g_DCEnable:
	.space	4
	.type	timePrevDo.33120, %object
	.size	timePrevDo.33120, 4
timePrevDo.33120:
	.space	4
	.type	last_rec_pos_time.34354, %object
	.size	last_rec_pos_time.34354, 4
last_rec_pos_time.34354:
	.space	4
	.type	last_rec_pos_time.34242, %object
	.size	last_rec_pos_time.34242, 4
last_rec_pos_time.34242:
	.space	4
	.type	last_rec_pos_time.34122, %object
	.size	last_rec_pos_time.34122, 4
last_rec_pos_time.34122:
	.space	4
	.type	last_rec_pos_time.33719, %object
	.size	last_rec_pos_time.33719, 4
last_rec_pos_time.33719:
	.space	4
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.33874, %object
	.size	last_rec_pos_time.33874, 4
last_rec_pos_time.33874:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
