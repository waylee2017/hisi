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
	.file	"vdm_drv.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV330
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
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
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #0]	@ tmp134,* pPrioArray
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	cmp	r1, #0	@ tmp134,
	movgt	r2, #0	@ tmp138,
	mvnle	r2, #0	@ tmp136,
	strgt	r2, [r3, #4]	@ tmp138, g_ChanCtx.ChanIdTabByPrior
	strle	r2, [r3, #4]	@ tmp136, g_ChanCtx.ChanIdTabByPrior
	strgt	r2, [r0, #0]	@ tmp138,* pPrioArray
	bx	lr	@
	.fnend
	.size	VDMDRV_SetPriority, .-VDMDRV_SetPriority
	.align	2
	.global	VDMDRV_AdjustPriorityAfterDec
	.type	VDMDRV_AdjustPriorityAfterDec, %function
VDMDRV_AdjustPriorityAfterDec:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	VDMDRV_AdjustPriorityAfterDec, .-VDMDRV_AdjustPriorityAfterDec
	.align	2
	.global	VDMDRV_GetSleepStage
	.type	VDMDRV_GetSleepStage, %function
VDMDRV_GetSleepStage:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, VdhId,
	ldr	r0, [r3, #12]	@, s_eVdmDrvSleepState
	bx	lr	@
	.fnend
	.size	VDMDRV_GetSleepStage, .-VDMDRV_GetSleepStage
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #0]	@ D.32558, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.32558,
	beq	.L10	@,
	blx	r3	@ D.32558
.L10:
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r4, r1, r4, asl #2	@, tmp139, tmp136, VdhId,
	mov	r0, #0	@ tmp141,
	str	r0, [r4, #12]	@ tmp141, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	mov	r4, r0	@ StateAfterRepair, StateAfterRepair
	mov	r5, r1	@ VdhId, VdhId
	ldr	r3, [r3, #64]	@ D.32567, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.32567,
	beq	.L14	@,
	mov	r0, r1	@, VdhId
	blx	r3	@ D.32567
.L14:
	add	r5, r5, r5, asl #2	@, tmp141, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r1, r5, asl #3	@, tmp143, tmp137, tmp141,
	str	r4, [r0, #16]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #68]	@ D.32575, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.32575,
	beq	.L17	@,
	blx	r3	@ D.32575
.L17:
	add	r4, r4, r4, asl #2	@, tmp140, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp144,
	add	r0, r1, r4, asl #3	@, tmp142, tmp136, tmp140,
	str	r2, [r0, #16]	@ tmp144, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_IsChanDec
	.type	VDMDRV_IsChanDec, %function
VDMDRV_IsChanDec:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, #2	@ tmp137, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r0, [r3, r1, asl #2]	@ tmp138, g_ChanCtx.ChanDecByVdhPlusOne
	subs	r0, r0, #0	@, tmp138,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	VDMDRV_IsChanDec, .-VDMDRV_IsChanDec
	.align	2
	.global	VDMDRV_SetChanIsDec
	.type	VDMDRV_SetChanIsDec, %function
VDMDRV_SetChanIsDec:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #2	@ tmp136, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	add	r1, r1, #1	@ tmp137, VdhID,
	str	r1, [r3, r2, asl #2]	@ tmp137, g_ChanCtx.ChanDecByVdhPlusOne
	b	VDMDRV_AdjustPriorityAfterDec	@
	.fnend
	.size	VDMDRV_SetChanIsDec, .-VDMDRV_SetChanIsDec
	.align	2
	.global	VDMDRV_ClearChanIsDec
	.type	VDMDRV_ClearChanIsDec, %function
VDMDRV_ClearChanIsDec:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #2	@ tmp135, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp136,
	str	r2, [r3, r0, asl #2]	@ tmp136, g_ChanCtx.ChanDecByVdhPlusOne
	bx	lr	@
	.fnend
	.size	VDMDRV_ClearChanIsDec, .-VDMDRV_ClearChanIsDec
	.align	2
	.global	VDMDRV_GetMb0QpInCurrPic
	.type	VDMDRV_GetMb0QpInCurrPic, %function
VDMDRV_GetMb0QpInCurrPic:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #180	@ tmp139,
	mla	r3, r2, r0, r1	@ tmp140, tmp139, VdhId, tmp136
	ldr	r0, [r3, #64]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	and	r0, r0, #31	@, <variable>.Mb0QpInCurrPic,
	bx	lr	@
	.fnend
	.size	VDMDRV_GetMb0QpInCurrPic, .-VDMDRV_GetMb0QpInCurrPic
	.align	2
	.global	VDMDRV_GetSwitchRounding
	.type	VDMDRV_GetSwitchRounding, %function
VDMDRV_GetSwitchRounding:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #180	@ tmp139,
	mla	r3, r2, r0, r1	@ tmp140, tmp139, VdhId, tmp136
	ldr	r0, [r3, #68]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	and	r0, r0, #1	@, <variable>.SwitchRounding,
	bx	lr	@
	.fnend
	.size	VDMDRV_GetSwitchRounding, .-VDMDRV_GetSwitchRounding
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsCopy
	.type	VDMDRV_IsCopy, %function
VDMDRV_IsCopy:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_IsCopy, .-VDMDRV_IsCopy
	.align	2
	.global	VDMDRV_ResetVDH
	.type	VDMDRV_ResetVDH, %function
VDMDRV_ResetVDH:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #24]	@ <variable>.ChanId, <variable>.ChanId
	cmp	r3, r0	@ <variable>.ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp137,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp137,
	ldr	r3, [r0, #40]	@ D.33093, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33093,
	beq	.L37	@,
	mov	r0, #0	@,
	blx	r3	@ D.33093
.L37:
	mov	r1, #0	@ tmp139,
	str	r1, [r4, #16]	@ tmp139, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ResetVDH, .-VDMDRV_ResetVDH
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L41	@ tmp135,
	add	r0, r0, r0, asl #2	@, tmp138, VdhId, VdhId,
	mov	r1, #40	@,
	add	r0, r3, r0, asl #3	@,, tmp135, tmp138,
	b	__memzero	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0+16
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r3, #0]	@ D.32433, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r6, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.32433,
	beq	.L44	@,
	blx	r3	@ D.32433
.L44:
	mov	r5, r6, asl #2	@ tmp139, VdhId,
	movw	r4, #:lower16:.LANCHOR0	@ tmp136,
	add	r2, r5, r6	@ tmp140, tmp139, VdhId
	movt	r4, #:upper16:.LANCHOR0	@ tmp136,
	add	ip, r4, #16	@ tmp137, tmp136,
	add	r4, r5, r4	@ tmp146, tmp139, tmp136
	add	r0, ip, r2, asl #3	@,, tmp137, tmp140,
	mov	r1, #40	@,
	bl	__memzero	@
	mov	r0, #0	@ tmp148,
	str	r0, [r4, #12]	@ tmp148, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp280,
	movt	r4, #:upper16:.LANCHOR0	@ tmp280,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r4, #4]	@ D.32716, g_ChanCtx.ChanIdTabByPrior
	cmp	r7, #0	@ D.32716,
	blt	.L47	@,
	mov	r6, r5, asl #2	@ tmp279, VdhId,
	mov	r0, r7	@, D.32716
	add	sl, r6, r5	@ tmp151, tmp279, VdhId
	add	r8, sl, #1	@ tmp152, tmp151,
	add	r8, r4, r8, asl #3	@, tmp155, tmp280, tmp152,
	str	r7, [r8, #16]	@ D.32716, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L47	@,
	add	r3, r7, #2	@ tmp158, D.32716,
	ldr	r3, [r4, r3, asl #2]	@ tmp159, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp159,
	bne	.L47	@,
	add	sl, r4, sl, asl #3	@, tmp248, tmp280, tmp151,
	mov	r0, r7	@, D.32716
	str	r3, [sl, #32]	@ tmp159, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.33151,
	str	r0, [sl, #32]	@ D.33151, <variable>.pDecParam
	beq	.L47	@,
	ldr	r7, [r8, #16]	@ D.32718, <variable>.ChanId
	mov	r0, r7	@, D.32718
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ D.33678,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp277,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp277,
	str	r2, [r8, #20]	@ D.33678, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.448, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.448,
	beq	.L52	@,
	ldr	r1, [sl, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ D.33678, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.32718, DecparamInfo.ChanID
	str	r1, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.448
	cmp	r0, #1	@,
	beq	.L47	@,
.L52:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp170,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp170,
	ldr	r3, [r0, #72]	@ D.33670, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.33670,
	beq	.L49	@,
	add	lr, r6, r5	@ tmp174, tmp279, VdhId
	mov	r2, r5	@, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp171,
	movt	r8, #:upper16:.LANCHOR0	@ tmp171,
	add	sl, r4, lr, asl #3	@, tmp187, tmp280, tmp174,
	ldr	r0, [sl, #28]	@, <variable>.VidStd
	ldr	r1, [sl, #32]	@, <variable>.pDecParam
	blx	r3	@ D.33670
	cmp	r0, #0	@,
	beq	.L50	@,
.L49:
	add	r6, r6, r5	@ tmp194, tmp279, VdhId
	mov	r3, #100	@ tmp207,
	mov	r8, #0	@ tmp198,
	mov	r0, r7	@, D.32718
	add	r6, r4, r6, asl #3	@, tmp196, tmp280, tmp194,
	mov	r2, r8	@, tmp198
	mov	r1, r3	@, tmp207
	add	r7, r7, #2	@ tmp209, D.32718,
	str	r3, [r6, #20]	@ tmp207, <variable>.ErrRatio
	str	r8, [r6, #16]	@ tmp198, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	str	r8, [r4, r7, asl #2]	@ tmp198, g_ChanCtx.ChanDecByVdhPlusOne
.L47:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L50:
	bl	OSAL_GetTimeInMs	@
	add	r1, r5, r5, asl #1	@, tmp223, VdhId, VdhId,
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp219,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp219,
	add	ip, r3, r1, asl #4	@, tmp225, tmp219, tmp223,
	mov	r2, r0	@ D.33667,
	mov	r0, r5	@, VdhId
	str	r2, [sl, #36]	@ D.33667, <variable>.StartTime
	str	r2, [ip, #4]	@ D.33667, <variable>.u32VdhLastStartTimeInMs
	bl	VDMDRV_StartDec	@
	mov	r0, r7	@, D.32718
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L47	@,
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, r7, asl #2	@, tmp230, tmp171, D.32718,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp234,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp234,
	ldr	r1, [r7, #236]	@ tmp233, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r1, r0	@ tmp232, tmp233, currtime
	cmp	r2, ip	@ tmp232, g_TraceFramePeriod
	strhi	r0, [r7, #236]	@ currtime, last_rec_pos_time
	b	.L47	@
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #144
	sub	sp, sp, #144	@,,
	add	r8, sp, #4	@ tmp149, tmp244,
	mov	r5, r0	@ VdhId, VdhId
	mov	r1, #140	@,
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r1, #136	@,
	mov	r0, r8	@, tmp149
	movw	r4, #:lower16:.LANCHOR0	@ tmp243,
	bl	__memzero	@
	add	r1, r5, r5, asl #2	@, tmp154, VdhId, VdhId,
	movt	r4, #:upper16:.LANCHOR0	@ tmp243,
	mov	r6, sp	@ tmp244,
	mov	r3, r1, asl #3	@ tmp155, tmp154,
	add	r2, r3, r4	@ tmp156, tmp155, tmp243
	ldr	r2, [r2, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r2, #2	@ <variable>.VdmStateMachine,
	beq	.L59	@,
	cmp	r2, #3	@ <variable>.VdmStateMachine,
	beq	.L59	@,
	cmp	r2, #1	@ <variable>.VdmStateMachine,
	beq	.L68	@,
	add	r3, r4, r1, asl #3	@, tmp238, tmp243, tmp154,
	mov	r0, #0	@ tmp242,
	ldr	r2, [r3, #24]	@ <variable>.ChanId, <variable>.ChanId
	add	ip, r2, #2	@ tmp240, <variable>.ChanId,
	str	r0, [r4, ip, asl #2]	@ tmp242, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L66	@
.L59:
	add	r6, r4, #16	@ tmp215, tmp243,
	mov	r2, r8	@, tmp149
	add	r7, r6, r3	@ pVdmDrvParam, tmp215, tmp155
	mov	r6, #0	@ tmp220,
	ldr	lr, [r7, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r0, [r7, #8]	@, <variable>.ChanId
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.917,
	str	r6, [r7, #28]	@ tmp220, <variable>.VdmTimeOut
	bic	r1, lr, lr, asr #31	@ iftmp.466, iftmp.917
	str	r1, [r7, #4]	@ iftmp.466, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r7, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r1, [r7, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r3, r1, #2	@ tmp227, <variable>.ChanId,
	str	r6, [r4, r3, asl #2]	@ tmp220, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
.L66:
	add	sp, sp, #144	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L68:
	add	r7, r4, #16	@ tmp160, tmp243,
	add	r7, r7, r3	@ pVdmDrvParam, tmp160, tmp155
	ldr	r3, [r7, #28]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	r3, #1	@ <variable>.VdmTimeOut,
	beq	.L69	@,
	mov	r2, r5	@, VdhId
	ldr	r1, [r7, #16]	@, <variable>.pDecParam
	ldr	r0, [r7, #12]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	ldr	ip, [r7, #12]	@ D.33726, <variable>.VidStd
	sub	r2, ip, #8	@ tmp172, D.33726,
	cmp	ip, #5	@ D.33726,
	cmpne	r2, #1	@, tmp172,
	movls	ip, #0	@ tmp180,
	str	r0, [r7, #4]	@ D.33727, <variable>.ErrRatio
	mov	r1, r0	@ D.33727,
	strls	ip, [r7, #4]	@ tmp180, <variable>.ErrRatio
	bls	.L61	@,
	cmp	r0, #0	@ D.33727,
	beq	.L61	@,
	movw	lr, #:lower16:g_event_report	@ tmp181,
	movt	lr, #:upper16:g_event_report	@ tmp181,
	ldr	r3, [lr, #0]	@ g_event_report.457, g_event_report
	cmp	r3, #0	@ g_event_report.457,
	beq	.L61	@,
	add	r2, sp, #144	@ tmp183,,
	ldr	r0, [r7, #8]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ D.33727, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report.457
.L61:
	ldr	r3, [sp, #0]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	moveq	r1, #0	@ tmp185,
	streq	r1, [r7, #4]	@ tmp185, <variable>.ErrRatio
	beq	.L64	@,
	ldr	r1, [r7, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r1, #0	@ <variable>.ErrRatio,
	bne	.L70	@,
.L64:
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.458,
	add	r2, r6, #4	@, tmp244,
	bic	r1, r1, r1, asr #31	@ iftmp.927, iftmp.458
	ldr	r0, [r7, #8]	@, <variable>.ChanId
	str	r1, [r7, #4]	@ iftmp.927, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r7, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r2, [r7, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	mov	r1, #0	@ tmp197,
	add	ip, r2, #2	@ tmp195, <variable>.ChanId,
	str	r1, [r4, ip, asl #2]	@ tmp197, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L66	@
.L69:
	ldr	r1, [r7, #16]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	ldr	r0, [r7, #12]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	r1, #100	@ tmp168,
	mov	r0, #0	@ tmp169,
	str	r1, [r7, #4]	@ tmp168, <variable>.ErrRatio
	str	r0, [r7, #28]	@ tmp169, <variable>.VdmTimeOut
	b	.L61	@
.L70:
	ldr	r0, [r7, #12]	@, <variable>.VidStd
	ldr	r1, [r7, #16]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L66	@,
	ldr	r1, [r7, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	b	.L64	@
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_IsrProcess
	.type	VDMDRV_IsrProcess, %function
VDMDRV_IsrProcess:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #12
	sub	sp, sp, #12	@,,
	ble	.L88	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L88:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp296,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp296,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.33210, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.33210,
	beq	.L73	@,
	mov	r0, #2	@,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.33210
	tst	r0, #1	@,
	beq	.L73	@,
	ldr	r3, [r5, #92]	@ D.33038, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.33038,
	beq	.L85	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33038
.L85:
	ldr	r3, [r5, #48]	@ D.33042, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.33042,
	beq	.L75	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33042
.L75:
	mov	r6, r4, asl #2	@ tmp297, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp294,
	add	r7, r6, r4	@ tmp170, tmp297, VdhId
	movt	r5, #:upper16:.LANCHOR0	@ tmp294,
	mov	r0, #6	@,
	add	r8, r5, r7, asl #3	@, tmp174, tmp294, tmp170,
	ldr	r7, [r8, #24]	@ D.33046, <variable>.ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L89	@,
.L76:
	add	sl, r4, r4, asl #1	@, tmp185, VdhId, VdhId,
	movw	r8, #:lower16:g_VfmwGlobalStat	@ tmp187,
	movt	r8, #:upper16:g_VfmwGlobalStat	@ tmp187,
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, sl, asl #4	@, pGs, tmp187, tmp185,
	ldr	r2, [r7, #4]	@ prephitmp.944, <variable>.u32VdhLastStartTimeInMs
	cmp	r2, #0	@ prephitmp.944,
	beq	.L77	@,
	ldr	r9, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	mov	r1, #180	@ tmp197,
	ldr	ip, [r7, #32]	@ <variable>.u32PicNum, <variable>.u32PicNum
	add	lr, r9, #499712	@ tmp188, <variable>.u32VdhStatisticStartTimeInMs,
	add	r3, lr, #288	@ tmp188, tmp188,
	mla	r9, r1, r4, r5	@ tmp198, tmp197, VdhId, tmp294
	cmp	r2, r3	@ prephitmp.944, tmp188
	strhi	r2, [r8, sl, asl #4]	@ prephitmp.944, <variable>.u32VdhStatisticStartTimeInMs
	ldrls	lr, [r7, #8]	@ prephitmp.958, <variable>.u32VdhWorkTimeInMs
	movhi	r3, #0	@ tmp191,
	ldr	fp, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	movhi	lr, r3	@ prephitmp.958, tmp191
	strhi	r3, [r7, #8]	@ tmp191, <variable>.u32VdhWorkTimeInMs
	rsb	fp, fp, r0	@ Period, <variable>.u32VdhStatisticStartTimeInMs, CurTime
	add	r0, lr, r0	@ tmp192, prephitmp.958, CurTime
	rsb	r0, r2, r0	@ D.33237, prephitmp.944, tmp192
	add	r2, ip, #1	@ tmp204, <variable>.u32PicNum,
	str	r0, [r7, #8]	@ D.33237, <variable>.u32VdhWorkTimeInMs
	cmp	fp, #1000	@ Period,
	str	r2, [r7, #32]	@ tmp204, <variable>.u32PicNum
	ldr	lr, [r9, #80]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	mov	r9, #0	@ tmp193,
	ldr	r3, [r7, #36]	@ <variable>.u32AccountVdhKiloCycle, <variable>.u32AccountVdhKiloCycle
	str	r9, [r7, #4]	@ tmp193, <variable>.u32VdhLastStartTimeInMs
	add	r3, r3, lr, lsr #10	@, D.33233, <variable>.u32AccountVdhKiloCycle, <variable>.DecCyclePerPic,
	str	r3, [r7, #36]	@ D.33233, <variable>.u32AccountVdhKiloCycle
	bcs	.L90	@,
.L77:
	add	r7, r6, r4	@ tmp218, tmp297, VdhId
	add	r3, r5, r7, asl #3	@, tmp230, tmp294, tmp218,
	ldr	r1, [r3, #52]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	mov	r0, r3	@ tmp222, tmp230
	ldr	r7, [r3, #24]	@ ChanId, <variable>.ChanId
	cmp	r1, #1	@ <variable>.ChanResetFlag,
	moveq	r0, #0	@ tmp241,
	streq	r0, [r3, #52]	@ tmp241, <variable>.ChanResetFlag
	beq	.L81	@,
	ldr	lr, [r3, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	lr, #0	@ <variable>.VdmStateMachine,
	beq	.L82	@,
	ldr	r8, [r3, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r8, #0	@ <variable>.pDecParam,
	beq	.L91	@,
.L82:
	mov	r0, r7	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	beq	.L92	@,
.L81:
	add	lr, r6, r4	@ tmp264, tmp297, VdhId
	mov	r3, #0	@ tmp272,
	add	r1, r5, lr, asl #3	@, tmp268, tmp294, tmp264,
	ldr	r0, [r1, #24]	@ <variable>.ChanId, <variable>.ChanId
	add	ip, r0, #2	@ tmp270, <variable>.ChanId,
	str	r3, [r5, ip, asl #2]	@ tmp272, g_ChanCtx.ChanDecByVdhPlusOne
	str	r3, [r1, #16]	@ tmp272, <variable>.VdmStateMachine
.L86:
	add	r4, r6, r4	@ tmp285, tmp297, VdhId
	add	r5, r5, r4, asl #3	@, tmp289, tmp294, tmp285,
	ldr	r0, [r5, #24]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L89:
	bl	OSAL_GetTimeInMs	@
	add	sl, r5, #240	@ tmp177, tmp294,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp181,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp181,
	ldr	r1, [sl, r7, asl #2]	@ tmp180,
	ldr	r2, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp179, tmp180, CurTime
	cmp	ip, r2	@ tmp179, g_TraceFramePeriod
	strhi	r0, [sl, r7, asl #2]	@ CurTime,
	b	.L76	@
.L90:
	mov	ip, #1000	@ tmp208,
	mov	r1, fp	@, Period
	mul	r0, ip, r0	@, tmp208, D.33237
	str	r3, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	str	r9, [r8, sl, asl #4]	@ tmp193, <variable>.u32VdhStatisticStartTimeInMs
	str	r9, [r7, #32]	@ tmp193, <variable>.u32PicNum
	ldr	r2, [sp, #4]	@,
	str	fp, [r7, #44]	@ Period, <variable>.u32Period
	str	r9, [r7, #36]	@ tmp193, <variable>.u32AccountVdhKiloCycle
	str	r2, [r7, #40]	@ D.33233, <variable>.u32VdhKiloCyclePerSecond
	str	r0, [r7, #12]	@, <variable>.u32VdhLoad
	b	.L77	@
.L73:
	add	r4, r4, r4, asl #2	@, tmp160, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp156,
	movt	r1, #:upper16:.LANCHOR0	@ tmp156,
	mov	r2, #0	@ tmp164,
	add	r3, r1, r4, asl #3	@, tmp162, tmp156, tmp160,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #16]	@ tmp164, <variable>.VdmStateMachine
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L92:
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L81	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
	b	.L86	@
.L91:
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L81	@,
	mov	r0, r7	@, ChanId
	mov	r2, r8	@, <variable>.pDecParam
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L81	@
	.fnend
	.size	VDMDRV_IsrProcess, .-VDMDRV_IsrProcess
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r0, asl #2	@ tmp319, VdhId,
	add	r7, r6, r0	@ tmp148, tmp319, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp320,
	movt	r4, #:upper16:.LANCHOR0	@ tmp320,
	mov	r5, r0	@ VdhId, VdhId
	add	r3, r4, r7, asl #3	@, tmp152, tmp320, tmp148,
	ldr	r0, [r3, #24]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L107	@,
.L94:
	add	sl, r6, r5	@ tmp200, tmp319, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp196,
	movt	r7, #:upper16:.LANCHOR0	@ tmp196,
	add	r8, r4, sl, asl #3	@, tmp202, tmp320, tmp200,
	ldr	r3, [r8, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	bne	.L108	@,
.L95:
	add	r4, r6, r4	@ tmp310, tmp319, tmp320
	ldr	r7, [r4, #12]	@ D.32913, s_eVdmDrvSleepState
	cmp	r7, #0	@ D.32913,
	moveq	r0, r7	@ D.32912, D.32913
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #1	@ D.32913,
	moveq	r3, #2	@ tmp317,
	moveq	r0, r7	@ D.32912, D.32913
	streq	r3, [r4, #12]	@ tmp317, s_eVdmDrvSleepState
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L101:
	mov	r0, #1	@ D.32912,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L108:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #36]	@ D.33267, <variable>.StartTime
	cmp	r0, r2	@ D.33269, D.33267
	mov	r3, r0	@ D.33269,
	str	r0, [r8, #40]	@ D.33269, <variable>.CurrTime
	strcc	r0, [r8, #36]	@ D.33269, <variable>.StartTime
	movcc	r0, #1	@ D.32912,
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	subs	r1, r3, r2	@ TimeElapse, D.33269, D.33267
	bmi	.L98	@,
	cmp	r2, #0	@ D.33267,
	beq	.L98	@,
	cmp	r1, #500	@ TimeElapse,
	bls	.L101	@,
	movw	lr, #:lower16:g_event_report	@ tmp237,
	movt	lr, #:upper16:g_event_report	@ tmp237,
	ldr	r3, [lr, #0]	@ g_event_report.471, g_event_report
	cmp	r3, #0	@ g_event_report.471,
	beq	.L102	@,
	add	r7, r7, sl, asl #3	@, tmp245, tmp196, tmp200,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [r7, #24]	@, <variable>.ChanId
	blx	r3	@ g_event_report.471
.L102:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp248,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp248,
	ldr	r3, [r3, #40]	@ D.32905, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.32905,
	beq	.L103	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.32905
.L103:
	add	r6, r6, r5	@ tmp253, tmp319, VdhId
	mov	r7, #1	@ tmp257,
	movw	r3, #:lower16:.LANCHOR0	@ tmp249,
	movt	r3, #:upper16:.LANCHOR0	@ tmp249,
	add	r4, r4, r6, asl #3	@, tmp255, tmp320, tmp253,
	ldr	r0, [r4, #52]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #44]	@ tmp257, <variable>.VdmTimeOut
	cmp	r0, r7	@ <variable>.ChanResetFlag,
	bne	.L104	@,
	add	r6, r3, r6, asl #3	@, tmp302, tmp249, tmp253,
	mov	r2, #0	@ tmp275,
	mov	r0, r2	@ D.32912, tmp275
	str	r2, [r4, #44]	@ tmp275, <variable>.VdmTimeOut
	ldr	ip, [r6, #24]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #52]	@ tmp275, <variable>.ChanResetFlag
	add	r1, ip, #2	@ tmp304, <variable>.ChanId,
	str	r2, [r4, #16]	@ tmp275, <variable>.VdmStateMachine
	str	r2, [r3, r1, asl #2]	@ tmp275, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L107:
	add	r7, r4, r7, asl #3	@, tmp161, tmp320, tmp148,
	ldr	r3, [r7, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	beq	.L95	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r0, #80]	@ D.32893, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.32893,
	beq	.L96	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.32893
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp173,
	strne	r3, [r7, #52]	@ tmp173, <variable>.ChanResetFlag
	bne	.L94	@,
.L96:
	add	sl, r6, r5	@ tmp178, tmp319, VdhId
	mov	r7, #0	@ tmp182,
	mov	r0, r5	@, VdhId
	add	ip, r4, sl, asl #3	@, tmp180, tmp320, tmp178,
	add	r8, r4, sl, asl #3	@, tmp191, tmp320, tmp178,
	str	r7, [ip, #52]	@ tmp182, <variable>.ChanResetFlag
	bl	VDMDRV_Reset	@
	ldr	r2, [r8, #24]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #2	@ tmp193, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp182, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L94	@
.L98:
	add	r5, r6, r5	@ tmp225, tmp319, VdhId
	mov	r0, #1	@ D.32912,
	add	r4, r4, r5, asl #3	@, tmp227, tmp320, tmp225,
	str	r3, [r4, #36]	@ D.33269, <variable>.StartTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L104:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.32912, tmp257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	VDMDRV_CheckDevice	@
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	b	VDMDRV_ActivateVDH	@
	.fnend
	.size	VDMDRV_WakeUpVdm, .-VDMDRV_WakeUpVdm
	.align	2
	.global	VDMDRV_ForeceSleep
	.type	VDMDRV_ForeceSleep, %function
VDMDRV_ForeceSleep:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ VdhId, VdhId
	add	r4, sp, #4	@ tmp148,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r5, r5, r6, asl #2	@, tmp138, tmp135, VdhId,
	mov	r0, r4	@, tmp148
	bl	OSAL_LockIRQ	@
	ldr	r3, [r5, #12]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L113	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #12]	@ tmp146, s_eVdmDrvSleepState
.L113:
	mov	r0, r4	@, tmp148
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r4, sp, #4	@ tmp166,,
	mov	r5, r0	@ VdhId, VdhId
	mov	r0, r4	@, tmp166
	bl	OSAL_LockIRQ	@
	mov	r2, r5, asl #2	@ tmp139, VdhId,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r1, r2, r3	@ tmp140, tmp139, tmp137
	ldr	r0, [r1, #12]	@ tmp142, s_eVdmDrvSleepState
	cmp	r0, #0	@ tmp142,
	mvnne	r5, #0	@ ret,
	bne	.L117	@,
	add	r5, r2, r5	@ tmp147, tmp139, VdhId
	add	r3, r3, r5, asl #3	@, tmp149, tmp137, tmp147,
	ldr	r5, [r3, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r5, #0	@ <variable>.VdmStateMachine,
	movne	r5, r0	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r1, #12]	@ tmp163, s_eVdmDrvSleepState
.L117:
	mov	r0, r4	@, tmp166
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	g_HwMem
	.global	g_UpMsg
	.global	g_RepairParam
	.global	g_DecReport
	.global	g_BackUp
	.global	g_VdmDrvParam
	.global	g_ChanCtx
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_CapItem, %object
	.size	__kstrtab_CapItem, 8
__kstrtab_CapItem:
	.ascii	"CapItem\000"
	.data
	.align	2
	.type	CapItem, %object
	.size	CapItem, 924
CapItem:
	.word	176
	.word	144
	.word	4
	.word	10
	.word	11
	.word	12
	.word	524288
	.word	352
	.word	288
	.word	4
	.word	10
	.word	11
	.word	12
	.word	786432
	.word	720
	.word	576
	.word	4
	.word	10
	.word	11
	.word	12
	.word	1048576
	.word	1280
	.word	720
	.word	4
	.word	10
	.word	11
	.word	12
	.word	2097152
	.word	1920
	.word	1088
	.word	4
	.word	10
	.word	11
	.word	12
	.word	3145728
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	5632
	.word	4224
	.word	1
	.word	3
	.word	3
	.word	3
	.word	16777216
	.word	1280
	.word	800
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	800
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1488
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	1280
	.word	1488
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	2160
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	1280
	.word	2176
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	2160
	.word	2176
	.word	4
	.word	11
	.word	11
	.word	11
	.word	4194304
	.word	4096
	.word	2304
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	2160
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	4096
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	8388608
	.word	8192
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	4096
	.word	8192
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	8192
	.word	8192
	.word	1
	.word	3
	.word	3
	.word	3
	.word	20971520
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	17
	.word	26
	.word	26
	.word	26
	.word	2097152
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	4096
	.word	2304
	.word	4
	.word	4
	.word	4
	.word	4
	.word	16777216
	.type	USE_FF_APT_EN, %object
	.size	USE_FF_APT_EN, 4
USE_FF_APT_EN:
	.word	1
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_ChanCtx, %object
	.size	g_ChanCtx, 12
g_ChanCtx:
	.space	12
	.type	s_eVdmDrvSleepState, %object
	.size	s_eVdmDrvSleepState, 4
s_eVdmDrvSleepState:
	.space	4
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 40
g_VdmDrvParam:
	.space	40
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	last_rec_pos_time.32632, %object
	.size	last_rec_pos_time.32632, 4
last_rec_pos_time.32632:
	.space	4
	.type	last_rec_pos_time.33030, %object
	.size	last_rec_pos_time.33030, 4
last_rec_pos_time.33030:
	.space	4
	.type	g_HwMem, %object
	.size	g_HwMem, 1144
g_HwMem:
	.space	1144
	.type	g_UpMsg, %object
	.size	g_UpMsg, 2048
g_UpMsg:
	.space	2048
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.section	___ksymtab+CapItem,"a",%progbits
	.align	2
	.type	__ksymtab_CapItem, %object
	.size	__ksymtab_CapItem, 8
__ksymtab_CapItem:
@ value:
	.word	CapItem
@ name:
	.word	__kstrtab_CapItem
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
