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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	ldr	r0, [r3, #24]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
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
	ldr	r0, [r3, #28]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
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
	.global	VDMDRV_ResetVDH
	.type	VDMDRV_ResetVDH, %function
VDMDRV_ResetVDH:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r4, #204]	@ <variable>.ChanId, <variable>.ChanId
	cmp	r3, r0	@ <variable>.ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp137,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp137,
	ldr	r3, [r0, #40]	@ D.33577, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33577,
	beq	.L25	@,
	mov	r0, #0	@,
	blx	r3	@ D.33577
.L26:
	mov	r1, #0	@ tmp140,
	str	r1, [r4, #196]	@ tmp140, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L25:
	mov	r0, r3	@, D.33577
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1290	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L26	@
	.fnend
	.size	VDMDRV_ResetVDH, .-VDMDRV_ResetVDH
	.align	2
	.global	VDMDRV_IsCopy
	.type	VDMDRV_IsCopy, %function
VDMDRV_IsCopy:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L35	@,
	cmp	r0, #2	@ VidStd,
	movne	r0, #0	@ D.33563,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r0, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.33563
	moveq	r0, #1	@, D.33563
	ldmfd	sp!, {r4, pc}	@
.L35:
	mov	r0, r4	@, pDecParam
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33563, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsCopy, .-VDMDRV_IsCopy
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
	ldr	r3, [r3, #68]	@ D.33031, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.33031,
	beq	.L37	@,
	blx	r3	@ D.33031
.L38:
	add	r4, r4, r4, asl #2	@, tmp141, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r2, #1	@ tmp145,
	add	r0, r1, r4, asl #3	@, tmp143, tmp137, tmp141,
	str	r2, [r0, #196]	@ tmp145, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L37:
	mov	r0, r3	@, D.33031
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #258	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L38	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
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
	mov	r5, r0	@ StateAfterRepair, StateAfterRepair
	mov	r4, r1	@ VdhId, VdhId
	ldr	r3, [r3, #64]	@ D.33022, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.33022,
	beq	.L41	@,
	mov	r0, r1	@, VdhId
	add	r4, r4, r4, asl #2	@, tmp142, VdhId, VdhId,
	blx	r3	@ D.33022
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r1, r4, asl #3	@, tmp144, tmp138, tmp142,
	str	r5, [r0, #196]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L41:
	mov	r0, r3	@, D.33022
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #250	@,
	movt	r1, #:upper16:.LC0	@,
	add	r4, r4, r4, asl #2	@, tmp142, VdhId, VdhId,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r1, r4, asl #3	@, tmp144, tmp138, tmp142,
	str	r5, [r0, #196]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
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
	ldr	r3, [r3, #0]	@ D.33012, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.33012,
	beq	.L45	@,
	blx	r3	@ D.33012
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #12]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L45:
	mov	r0, r3	@, D.33012
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #242	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	mov	r0, #0	@ tmp142,
	add	r4, r1, r4, asl #2	@, tmp140, tmp137, VdhId,
	str	r0, [r4, #12]	@ tmp142, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L50	@ tmp135,
	add	r0, r0, r0, asl #2	@, tmp138, VdhId, VdhId,
	mov	r1, #40	@,
	add	r0, r3, r0, asl #3	@,, tmp135, tmp138,
	b	__memzero	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0+196
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
	ldr	r3, [r3, #0]	@ D.32885, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.32885,
	beq	.L53	@,
	blx	r3	@ D.32885
.L54:
	mov	r6, r4, asl #2	@ tmp140, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp137,
	add	r2, r6, r4	@ tmp141, tmp140, VdhId
	movt	r5, #:upper16:.LANCHOR0	@ tmp137,
	add	ip, r5, #196	@ tmp138, tmp137,
	add	r5, r6, r5	@ tmp147, tmp140, tmp137
	add	r0, ip, r2, asl #3	@,, tmp138, tmp141,
	mov	r1, #40	@,
	bl	__memzero	@
	mov	r0, #0	@ tmp149,
	str	r0, [r5, #12]	@ tmp149, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L53:
	mov	r0, r3	@, D.32885
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #95	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L54	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp347,
	movt	r4, #:upper16:.LANCHOR0	@ tmp347,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r4, #4]	@ D.33183, g_ChanCtx.ChanIdTabByPrior
	cmp	r7, #0	@ D.33183,
	blt	.L57	@,
	mov	r6, r5, asl #2	@ tmp349, VdhId,
	mov	r0, r7	@, D.33183
	add	sl, r6, r5	@ tmp155, tmp349, VdhId
	add	r8, sl, #1	@ tmp156, tmp155,
	add	r8, r4, r8, asl #3	@, tmp159, tmp347, tmp156,
	str	r7, [r8, #196]	@ D.33183, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L71	@,
	add	r3, r7, #2	@ tmp164, D.33183,
	ldr	r3, [r4, r3, asl #2]	@ tmp165, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp165,
	bne	.L72	@,
	add	sl, r4, sl, asl #3	@, tmp317, tmp347, tmp155,
	mov	r0, r7	@, D.33183
	str	r3, [sl, #212]	@ tmp165, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.33639,
	str	r0, [sl, #212]	@ D.33639, <variable>.pDecParam
	beq	.L64	@,
	ldr	r7, [r8, #196]	@ D.33185, <variable>.ChanId
	mov	r0, r7	@, D.33185
	bl	VCTRL_GetVidStd	@
	mov	r2, r0	@ prephitmp.885,
	movw	r0, #:lower16:AcceleratorCharacter	@ tmp346,
	movt	r0, #:upper16:AcceleratorCharacter	@ tmp346,
	str	r2, [r8, #200]	@ prephitmp.885, <variable>.VidStd
	ldr	r3, [r0, #0]	@ AcceleratorCharacter.449, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.449,
	beq	.L66	@,
	ldr	r1, [sl, #212]	@ <variable>.pDecParam, <variable>.pDecParam
	add	r0, sp, #4	@,,
	str	r2, [sp, #8]	@ prephitmp.885, DecparamInfo.VidStd
	str	r7, [sp, #4]	@ D.33185, DecparamInfo.ChanID
	str	r1, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.449
	cmp	r0, #1	@,
	beq	.L57	@,
	ldr	r2, [r8, #200]	@ prephitmp.885, <variable>.VidStd
.L66:
	add	r9, r6, r5	@ tmp191, tmp349, VdhId
	mov	r0, r2	@, prephitmp.885
	movw	r8, #:lower16:.LANCHOR0	@ tmp187,
	movt	r8, #:upper16:.LANCHOR0	@ tmp187,
	add	sl, r4, r9, asl #3	@, tmp193, tmp347, tmp191,
	ldr	r1, [sl, #212]	@, <variable>.pDecParam
	bl	VDMDRV_IsCopy	@
	cmp	r0, #0	@,
	beq	.L60	@,
	add	r9, r8, r9, asl #3	@, tmp203, tmp187, tmp191,
	ldr	r4, [r9, #208]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r4, #2	@ <variable>.VidStd,
	beq	.L73	@,
.L57:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L72:
	mov	r2, r7	@, D.33183
	movw	r1, #:lower16:.LC3	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L57	@
.L71:
	mov	r3, r7	@, D.33183
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC2	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L57	@
.L60:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp238,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp238,
	ldr	r3, [r0, #72]	@ D.34137, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.34137,
	beq	.L62	@,
	add	r9, r8, r9, asl #3	@, tmp246, tmp187, tmp191,
	ldr	r1, [sl, #212]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	ldr	r0, [r9, #208]	@, <variable>.VidStd
	blx	r3	@ D.34137
	cmp	r0, #0	@,
	beq	.L63	@,
.L62:
	add	r6, r6, r5	@ tmp263, tmp349, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	add	r6, r4, r6, asl #3	@, tmp265, tmp347, tmp263,
	mov	r8, r0	@ tmp267,
	bl	dprint_vfmw	@
	mov	ip, #100	@ tmp276,
	mov	r0, r7	@, D.33185
	mov	r2, r8	@, tmp267
	mov	r1, ip	@, tmp276
	str	ip, [r6, #200]	@ tmp276, <variable>.ErrRatio
	str	r8, [r6, #196]	@ tmp267, <variable>.VdmStateMachine
	add	r7, r7, #2	@ tmp278, D.33185,
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	str	r8, [r4, r7, asl #2]	@ tmp267, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L57	@
.L73:
	ldr	r0, [sl, #212]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ ret,
	bne	.L57	@,
	str	r3, [sl, #200]	@ ret, <variable>.ErrRatio
	mov	r0, r4	@, <variable>.VidStd
	mov	r1, r5	@, VdhId
	bl	VDMDRV_StartRepair	@
	mov	r0, r7	@, D.33185
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L57	@,
.L70:
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, r7, asl #2	@, tmp299, tmp187, D.33185,
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp303,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp303,
	ldr	ip, [r7, #236]	@ tmp302, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, ip, r0	@ tmp301, tmp302, currtime.899
	cmp	r2, r3	@ tmp301, g_TraceFramePeriod
	strhi	r0, [r7, #236]	@ currtime.899, last_rec_pos_time
	b	.L57	@
.L63:
	bl	OSAL_GetTimeInMs	@
	add	r1, r5, r5, asl #1	@, tmp292, VdhId, VdhId,
	movw	ip, #:lower16:g_VfmwGlobalStat	@ tmp288,
	movt	ip, #:upper16:g_VfmwGlobalStat	@ tmp288,
	add	r3, ip, r1, asl #4	@, tmp294, tmp288, tmp292,
	mov	r2, r0	@ D.34133,
	mov	r0, r5	@, VdhId
	str	r2, [sl, #216]	@ D.34133, <variable>.StartTime
	str	r2, [r3, #4]	@ D.34133, <variable>.u32VdhLastStartTimeInMs
	bl	VDMDRV_StartDec	@
	mov	r0, r7	@, D.33185
	mov	r1, r5	@, VdhId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L57	@,
	b	.L70	@
.L64:
	mov	r2, r7	@, D.33183
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	b	.L57	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	add	r9, r0, r0, asl #2	@, tmp158, VdhId, VdhId,
	.pad #152
	sub	sp, sp, #152	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp297,
	add	r7, sp, #8	@ tmp299,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp297,
	add	sl, r7, #4	@ tmp152, tmp299,
	mov	r8, r9, asl #3	@ tmp159, tmp158,
	add	r5, r8, r4	@ tmp160, tmp159, tmp297
	mov	r1, #140	@,
	mov	r6, r0	@ VdhId, VdhId
	mov	r0, r7	@, tmp299
	bl	__memzero	@
	mov	r0, sl	@, tmp152
	mov	r1, #136	@,
	bl	__memzero	@
	ldr	ip, [r5, #200]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r2, [r5, #196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	mov	r0, #2	@,
	ldr	r3, [r5, #224]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [sp, #0]	@ <variable>.ErrRatio,
	bl	dprint_vfmw	@
	ldr	r5, [r5, #196]	@ temp.927, <variable>.VdmStateMachine
	cmp	r5, #2	@ temp.927,
	beq	.L77	@,
	cmp	r5, #3	@ temp.927,
	beq	.L78	@,
	cmp	r5, #1	@ temp.927,
	beq	.L89	@,
	add	r9, r9, #1	@ tmp278, tmp158,
	mov	r3, r5	@, temp.927
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	add	r9, r4, r9, asl #3	@, tmp281, tmp297, tmp278,
	movt	r1, #:upper16:.LC9	@,
	ldr	r2, [r9, #196]	@, <variable>.ChanId
	bl	dprint_vfmw	@
	ldr	r1, [r9, #196]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, #0	@ tmp296,
	add	r2, r1, #2	@ tmp294, <variable>.ChanId,
	str	r0, [r4, r2, asl #2]	@ tmp296, g_ChanCtx.ChanDecByVdhPlusOne
.L86:
	add	sp, sp, #152	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L89:
	add	r0, r4, #196	@ tmp190, tmp297,
	add	r8, r0, r8	@ pVdmDrvParam, tmp190, tmp159
	ldr	r3, [r8, #28]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	r3, #1	@ <variable>.VdmTimeOut,
	beq	.L90	@,
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	mov	r2, r6	@, VdhId
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	mov	ip, r0	@ D.34213,
	mov	r2, r0	@, D.34213
	str	ip, [r8, #4]	@ D.34213, <variable>.ErrRatio
	mov	r0, r5	@, temp.927
	bl	dprint_vfmw	@
	ldr	r1, [r8, #12]	@ D.34210, <variable>.VidStd
	sub	r3, r1, #8	@ tmp204, D.34210,
	cmp	r1, #5	@ D.34210,
	cmpne	r3, #1	@, tmp204,
	movls	r1, #0	@ tmp212,
	strls	r1, [r8, #4]	@ tmp212, <variable>.ErrRatio
	bls	.L80	@,
	ldr	r1, [r8, #4]	@ D.34211, <variable>.ErrRatio
	cmp	r1, #0	@ D.34211,
	beq	.L80	@,
	movw	lr, #:lower16:g_event_report	@ tmp213,
	movt	lr, #:upper16:g_event_report	@ tmp213,
	ldr	r3, [lr, #0]	@ g_event_report.458, g_event_report
	cmp	r3, #0	@ g_event_report.458,
	beq	.L80	@,
	add	r2, sp, #152	@ tmp215,,
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ D.34211, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report.458
.L80:
	ldr	r0, [sp, #8]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r0, #1	@ VdmInfoExt.ModuleLowlyEnable,
	moveq	r1, #0	@ tmp217,
	streq	r1, [r8, #4]	@ tmp217, <variable>.ErrRatio
	beq	.L83	@,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r1, #0	@ <variable>.ErrRatio,
	bne	.L91	@,
.L83:
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.459,
	add	r2, r7, #4	@, tmp299,
	bic	r1, r1, r1, asr #31	@ iftmp.945, iftmp.459
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r1, [r8, #4]	@ iftmp.945, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r6	@, VdhId
	mov	r2, #0	@ tmp229,
	add	r1, r3, #2	@ tmp227, <variable>.ChanId,
	str	r2, [r4, r1, asl #2]	@ tmp229, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L86	@
.L78:
	add	r5, r4, #196	@ tmp258, tmp297,
	mov	r2, sl	@, tmp152
	add	r8, r5, r8	@ pVdmDrvParam, tmp258, tmp159
	mov	r5, #0	@ tmp263,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.929,
	str	r5, [r8, #28]	@ tmp263, <variable>.VdmTimeOut
	bic	r1, r1, r1, asr #31	@ iftmp.467, iftmp.929
	str	r1, [r8, #4]	@ iftmp.467, <variable>.ErrRatio
.L88:
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	ip, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r6	@, VdhId
	add	r3, ip, #2	@ tmp270, <variable>.ChanId,
	str	r5, [r4, r3, asl #2]	@ tmp263, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L86	@
.L77:
	add	r7, r4, #196	@ tmp231, tmp297,
	mov	r5, #0	@ tmp236,
	add	r8, r7, r8	@ pVdmDrvParam, tmp231, tmp159
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	str	r5, [r8, #28]	@ tmp236, <variable>.VdmTimeOut
	bl	VDMDRV_IsCopy	@
	subs	r7, r0, #0	@ D.34232,
	bne	.L92	@,
	ldr	lr, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	mov	r2, sl	@, tmp152
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.943,
	bic	r1, lr, lr, asr #31	@ iftmp.465, iftmp.943
	str	r1, [r8, #4]	@ iftmp.465, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r2, [r8, #8]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r6	@, VdhId
	add	ip, r2, #2	@ tmp254, <variable>.ChanId,
	str	r7, [r4, ip, asl #2]	@ D.34232, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L86	@
.L90:
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	mov	r2, r6	@, VdhId
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	ip, #0	@ tmp199,
	mov	r2, #100	@ tmp198,
	mov	r0, ip	@, tmp199
	movw	r1, #:lower16:.LC7	@,
	str	ip, [r8, #28]	@ tmp199, <variable>.VdmTimeOut
	movt	r1, #:upper16:.LC7	@,
	str	r2, [r8, #4]	@ tmp198, <variable>.ErrRatio
	bl	dprint_vfmw	@
	b	.L80	@
.L92:
	mov	r2, sl	@, tmp152
	mov	r1, r5	@, tmp236
	ldr	r0, [r8, #8]	@, <variable>.ChanId
	str	r5, [r8, #4]	@ tmp236, <variable>.ErrRatio
	b	.L88	@
.L91:
	ldr	r0, [r8, #12]	@, <variable>.VidStd
	ldr	r1, [r8, #16]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L86	@,
	ldr	r1, [r8, #4]	@ <variable>.ErrRatio, <variable>.ErrRatio
	b	.L83	@
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
	ble	.L94	@,
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC10	@,
	movw	r2, #1027	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
.L94:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp302,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp302,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.33680, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.33680,
	beq	.L95	@,
	mov	r0, #2	@,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.33680
	tst	r0, #1	@,
	beq	.L95	@,
	ldr	r3, [r5, #92]	@ D.33517, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.33517,
	beq	.L114	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33517
.L97:
	ldr	r3, [r5, #48]	@ D.33522, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.33522,
	beq	.L98	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33522
.L99:
	mov	r6, r4, asl #2	@ tmp300, VdhId,
	movw	r5, #:lower16:.LANCHOR0	@ tmp301,
	add	r7, r6, r4	@ tmp174, tmp300, VdhId
	movt	r5, #:upper16:.LANCHOR0	@ tmp301,
	mov	r0, #6	@,
	add	r8, r5, r7, asl #3	@, tmp178, tmp301, tmp174,
	ldr	r7, [r8, #204]	@ D.33526, <variable>.ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L115	@,
.L100:
	add	sl, r4, r4, asl #1	@, tmp189, VdhId, VdhId,
	movw	r8, #:lower16:g_VfmwGlobalStat	@ tmp191,
	movt	r8, #:upper16:g_VfmwGlobalStat	@ tmp191,
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, sl, asl #4	@, pGs, tmp191, tmp189,
	ldr	r2, [r7, #4]	@ prephitmp.962, <variable>.u32VdhLastStartTimeInMs
	cmp	r2, #0	@ prephitmp.962,
	beq	.L101	@,
	ldr	r9, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	mov	r1, #180	@ tmp201,
	ldr	ip, [r7, #32]	@ <variable>.u32PicNum, <variable>.u32PicNum
	add	lr, r9, #499712	@ tmp192, <variable>.u32VdhStatisticStartTimeInMs,
	add	r3, lr, #288	@ tmp192, tmp192,
	mla	r9, r1, r4, r5	@ tmp202, tmp201, VdhId, tmp301
	cmp	r2, r3	@ prephitmp.962, tmp192
	strhi	r2, [r8, sl, asl #4]	@ prephitmp.962, <variable>.u32VdhStatisticStartTimeInMs
	ldrls	lr, [r7, #8]	@ prephitmp.977, <variable>.u32VdhWorkTimeInMs
	movhi	r3, #0	@ tmp195,
	ldr	fp, [r8, sl, asl #4]	@ <variable>.u32VdhStatisticStartTimeInMs, <variable>.u32VdhStatisticStartTimeInMs
	movhi	lr, r3	@ prephitmp.977, tmp195
	strhi	r3, [r7, #8]	@ tmp195, <variable>.u32VdhWorkTimeInMs
	rsb	fp, fp, r0	@ Period, <variable>.u32VdhStatisticStartTimeInMs, CurTime
	add	r0, lr, r0	@ tmp196, prephitmp.977, CurTime
	rsb	r0, r2, r0	@ D.33707, prephitmp.962, tmp196
	add	r2, ip, #1	@ tmp208, <variable>.u32PicNum,
	str	r0, [r7, #8]	@ D.33707, <variable>.u32VdhWorkTimeInMs
	cmp	fp, #1000	@ Period,
	str	r2, [r7, #32]	@ tmp208, <variable>.u32PicNum
	ldr	lr, [r9, #40]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	mov	r9, #0	@ tmp197,
	ldr	r3, [r7, #36]	@ <variable>.u32AccountVdhKiloCycle, <variable>.u32AccountVdhKiloCycle
	str	r9, [r7, #4]	@ tmp197, <variable>.u32VdhLastStartTimeInMs
	add	r3, r3, lr, lsr #10	@, D.33703, <variable>.u32AccountVdhKiloCycle, <variable>.DecCyclePerPic,
	str	r3, [r7, #36]	@ D.33703, <variable>.u32AccountVdhKiloCycle
	bcc	.L101	@,
	mov	ip, #1000	@ tmp212,
	mov	r1, fp	@, Period
	mul	r0, ip, r0	@, tmp212, D.33707
	str	r3, [sp, #4]	@,
	bl	__aeabi_uidiv	@
	str	r9, [r8, sl, asl #4]	@ tmp197, <variable>.u32VdhStatisticStartTimeInMs
	str	r9, [r7, #32]	@ tmp197, <variable>.u32PicNum
	ldr	r2, [sp, #4]	@,
	str	fp, [r7, #44]	@ Period, <variable>.u32Period
	str	r9, [r7, #36]	@ tmp197, <variable>.u32AccountVdhKiloCycle
	str	r2, [r7, #40]	@ D.33703, <variable>.u32VdhKiloCyclePerSecond
	str	r0, [r7, #12]	@, <variable>.u32VdhLoad
.L101:
	add	r7, r6, r4	@ tmp222, tmp300, VdhId
	add	r3, r5, r7, asl #3	@, tmp234, tmp301, tmp222,
	ldr	r1, [r3, #232]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	mov	r0, r3	@ tmp226, tmp234
	ldr	r7, [r3, #204]	@ ChanId, <variable>.ChanId
	cmp	r1, #1	@ <variable>.ChanResetFlag,
	moveq	r0, #0	@ tmp245,
	streq	r0, [r3, #232]	@ tmp245, <variable>.ChanResetFlag
	beq	.L105	@,
	ldr	r2, [r3, #196]	@ D.34297, <variable>.VdmStateMachine
	cmp	r2, #0	@ D.34297,
	beq	.L106	@,
	ldr	r8, [r3, #212]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r8, #0	@ <variable>.pDecParam,
	beq	.L116	@,
.L106:
	mov	r0, r7	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L117	@,
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L118	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L111:
	add	r4, r6, r4	@ tmp291, tmp300, VdhId
	add	r5, r5, r4, asl #3	@, tmp295, tmp301, tmp291,
	ldr	r0, [r5, #204]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L95:
	add	r4, r4, r4, asl #2	@, tmp162, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp158,
	movt	r1, #:upper16:.LANCHOR0	@ tmp158,
	mov	r2, #0	@ tmp166,
	add	r3, r1, r4, asl #3	@, tmp164, tmp158, tmp162,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #196]	@ tmp166, <variable>.VdmStateMachine
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_SpinUnLockIRQ	@
.L117:
	movw	r1, #:lower16:.LC12	@,
	mov	r3, r7	@, ChanId
	movt	r1, #:upper16:.LC12	@,
	movw	r2, #1002	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L105:
	add	r1, r6, r4	@ tmp270, tmp300, VdhId
	mov	r3, #0	@ tmp278,
	add	r0, r5, r1, asl #3	@, tmp274, tmp301, tmp270,
	ldr	ip, [r0, #204]	@ <variable>.ChanId, <variable>.ChanId
	add	r2, ip, #2	@ tmp276, <variable>.ChanId,
	str	r3, [r5, r2, asl #2]	@ tmp278, g_ChanCtx.ChanDecByVdhPlusOne
	str	r3, [r0, #196]	@ tmp278, <variable>.VdmStateMachine
	b	.L111	@
.L115:
	bl	OSAL_GetTimeInMs	@
	add	sl, r5, #240	@ tmp181, tmp301,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp185,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp185,
	ldr	r1, [sl, r7, asl #2]	@ tmp184,
	ldr	r2, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp183, tmp184, CurTime
	cmp	ip, r2	@ tmp183, g_TraceFramePeriod
	strhi	r0, [sl, r7, asl #2]	@ CurTime,
	b	.L100	@
.L114:
	mov	r0, r3	@, D.33517
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1055	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L97	@
.L98:
	mov	r0, r3	@, D.33522
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1057	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L99	@
.L118:
	mov	r3, r7	@, ChanId
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #1008	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	b	.L105	@
.L116:
	mov	r0, r8	@, <variable>.pDecParam
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L105	@,
	mov	r0, r7	@, ChanId
	mov	r2, r8	@, <variable>.pDecParam
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L105	@
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
	mov	r6, r0, asl #2	@ tmp322, VdhId,
	add	r7, r6, r0	@ tmp148, tmp322, VdhId
	movw	r4, #:lower16:.LANCHOR0	@ tmp321,
	movt	r4, #:upper16:.LANCHOR0	@ tmp321,
	mov	r5, r0	@ VdhId, VdhId
	add	r3, r4, r7, asl #3	@, tmp152, tmp321, tmp148,
	ldr	r0, [r3, #204]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L134	@,
.L120:
	add	r8, r6, r5	@ tmp200, tmp322, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp196,
	movt	r7, #:upper16:.LANCHOR0	@ tmp196,
	add	sl, r4, r8, asl #3	@, tmp202, tmp321, tmp200,
	ldr	r3, [sl, #196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	bne	.L135	@,
.L121:
	add	r4, r6, r4	@ tmp312, tmp322, tmp321
	ldr	r7, [r4, #12]	@ D.33388, s_eVdmDrvSleepState
	cmp	r7, #0	@ D.33388,
	moveq	r0, r7	@ D.33387, D.33388
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #1	@ D.33388,
	moveq	r3, #2	@ tmp319,
	moveq	r0, r7	@ D.33387, D.33388
	streq	r3, [r4, #12]	@ tmp319, s_eVdmDrvSleepState
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L127:
	mov	r0, #1	@ D.33387,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L135:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sl, #216]	@ D.33725, <variable>.StartTime
	cmp	r0, r1	@ D.33727, D.33725
	mov	r3, r0	@ D.33727,
	str	r0, [sl, #220]	@ D.33727, <variable>.CurrTime
	strcc	r0, [sl, #216]	@ D.33727, <variable>.StartTime
	movcc	r0, #1	@ D.33387,
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	subs	r2, r3, r1	@ TimeElapse, D.33727, D.33725
	bmi	.L124	@,
	cmp	r1, #0	@ D.33725,
	beq	.L124	@,
	cmp	r2, #500	@ TimeElapse,
	bls	.L127	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp238,
	movt	r3, #:upper16:g_event_report	@ tmp238,
	ldr	r3, [r3, #0]	@ g_event_report.472, g_event_report
	cmp	r3, #0	@ g_event_report.472,
	beq	.L128	@,
	add	lr, r7, r8, asl #3	@, tmp246, tmp196, tmp200,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [lr, #204]	@, <variable>.ChanId
	blx	r3	@ g_event_report.472
.L128:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp249,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp249,
	ldr	r3, [r0, #40]	@ D.33379, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33379,
	beq	.L129	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.33379
.L130:
	add	r6, r6, r5	@ tmp255, tmp322, VdhId
	mov	r7, #1	@ tmp259,
	movw	r3, #:lower16:.LANCHOR0	@ tmp251,
	movt	r3, #:upper16:.LANCHOR0	@ tmp251,
	add	r4, r4, r6, asl #3	@, tmp257, tmp321, tmp255,
	ldr	r1, [r4, #232]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #224]	@ tmp259, <variable>.VdmTimeOut
	cmp	r1, r7	@ <variable>.ChanResetFlag,
	bne	.L131	@,
	add	r6, r3, r6, asl #3	@, tmp304, tmp251, tmp255,
	mov	r2, #0	@ tmp277,
	mov	r0, r2	@ D.33387, tmp277
	str	r2, [r4, #224]	@ tmp277, <variable>.VdmTimeOut
	ldr	lr, [r6, #204]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #232]	@ tmp277, <variable>.ChanResetFlag
	add	ip, lr, #2	@ tmp306, <variable>.ChanId,
	str	r2, [r4, #196]	@ tmp277, <variable>.VdmStateMachine
	str	r2, [r3, ip, asl #2]	@ tmp277, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L134:
	add	r7, r4, r7, asl #3	@, tmp161, tmp321, tmp148,
	ldr	r3, [r7, #196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	beq	.L121	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r0, #80]	@ D.33366, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.33366,
	beq	.L122	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.33366
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp173,
	strne	r3, [r7, #232]	@ tmp173, <variable>.ChanResetFlag
	bne	.L120	@,
.L122:
	add	sl, r6, r5	@ tmp178, tmp322, VdhId
	mov	r7, #0	@ tmp182,
	mov	r0, r5	@, VdhId
	add	ip, r4, sl, asl #3	@, tmp180, tmp321, tmp178,
	add	r8, r4, sl, asl #3	@, tmp191, tmp321, tmp178,
	str	r7, [ip, #232]	@ tmp182, <variable>.ChanResetFlag
	bl	VDMDRV_Reset	@
	ldr	r2, [r8, #204]	@ <variable>.ChanId, <variable>.ChanId
	add	r1, r2, #2	@ tmp193, <variable>.ChanId,
	str	r7, [r4, r1, asl #2]	@ tmp182, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L120	@
.L124:
	add	r5, r6, r5	@ tmp225, tmp322, VdhId
	mov	r0, #1	@ D.33387,
	add	r4, r4, r5, asl #3	@, tmp227, tmp321, tmp225,
	str	r3, [r4, #216]	@ D.33727, <variable>.StartTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L131:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.33387, tmp259
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L129:
	mov	r0, r3	@, D.33379
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #823	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	b	.L130	@
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
	add	r4, sp, #4	@ tmp149,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp135,
	movt	r5, #:upper16:.LANCHOR0	@ tmp135,
	add	r5, r5, r6, asl #2	@, tmp138, tmp135, VdhId,
	mov	r0, r4	@, tmp149
	bl	OSAL_LockIRQ	@
	ldr	r3, [r5, #12]	@ tmp140, s_eVdmDrvSleepState
	cmp	r3, #2	@ tmp140,
	beq	.L140	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #12]	@ tmp146, s_eVdmDrvSleepState
.L140:
	mov	r0, r4	@, tmp149
	bl	OSAL_UnLockIRQ	@
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
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
	bne	.L144	@,
	add	r5, r2, r5	@ tmp147, tmp139, VdhId
	add	r3, r3, r5, asl #3	@, tmp149, tmp137, tmp147,
	ldr	r5, [r3, #196]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r5, #0	@ <variable>.VdmStateMachine,
	movne	r5, r0	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r1, #12]	@ tmp163, s_eVdmDrvSleepState
.L144:
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
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.33059, %object
	.size	__func__.33059, 19
__func__.33059:
	.ascii	"VDMDRV_ChnDecReady\000"
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC1:
	.ascii	"VDMDRV_IsProtocolCopy point of picture para null, w"
	.ascii	"ait forever!!!\012\000"
	.space	1
.LC2:
	.ascii	"%s The channel %d is not active\012\000"
	.space	3
.LC3:
	.ascii	"The channel %d is decoding\012\000"
.LC4:
	.ascii	"The channel %d DEC PARAM is not ready\012\000"
	.space	1
.LC5:
	.ascii	"VDM Start Fail 2 !\012\000"
.LC6:
	.ascii	"isr begin: *pVdmStateMachine = %d, timeout = %d, Er"
	.ascii	"rRatio = %d\012\000"
.LC7:
	.ascii	"ISR process vdm timeout!\012\000"
	.space	2
.LC8:
	.ascii	"*pErrRatio = %d\012\000"
	.space	3
.LC9:
	.ascii	"Chan %d VdmStateMachine=%d Error!\012\000"
	.space	1
.LC10:
	.ascii	"line: %d\012\000"
	.space	2
.LC11:
	.ascii	"vdm state machine = %d, but DecParam is null!\012\000"
	.space	1
.LC12:
	.ascii	"line :%d ISR called but chan %d is not active!\012\000"
.LC13:
	.ascii	"line :%d ISR called chan %d is active! But Dec Para"
	.ascii	"m in CTX is NULL!!!\012\000"
.LC14:
	.ascii	"Vdm Time Out(%d ms), Reset Vdm!\012\000"
	.space	3
.LC15:
	.ascii	"====== forece VDM sleep! ======\012\000"
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
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 40
g_VdmDrvParam:
	.space	40
	.type	last_rec_pos_time.33097, %object
	.size	last_rec_pos_time.33097, 4
last_rec_pos_time.33097:
	.space	4
	.type	last_rec_pos_time.33508, %object
	.size	last_rec_pos_time.33508, 4
last_rec_pos_time.33508:
	.space	4
	.type	g_HwMem, %object
	.size	g_HwMem, 1140
g_HwMem:
	.space	1140
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
