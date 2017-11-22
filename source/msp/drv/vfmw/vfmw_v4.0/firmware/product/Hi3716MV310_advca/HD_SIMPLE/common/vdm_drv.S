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
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/drv/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix
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
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fno-pic -fverbose-asm
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
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
	.fnstart
.LFB1919:
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
.LFB1920:
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
.LFB1922:
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
.LFB1927:
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
.LFB1928:
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
.LFB1929:
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
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
.LFB1935:
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
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsVc1SkpicCopy
	.type	VDMDRV_IsVc1SkpicCopy, %function
VDMDRV_IsVc1SkpicCopy:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_IsVc1SkpicCopy, .-VDMDRV_IsVc1SkpicCopy
	.align	2
	.global	VDMDRV_IsVp6NvopCopy
	.type	VDMDRV_IsVp6NvopCopy, %function
VDMDRV_IsVp6NvopCopy:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMDRV_IsVp6NvopCopy, .-VDMDRV_IsVp6NvopCopy
	.align	2
	.global	VDMDRV_IsMpeg4NvopCopy
	.type	VDMDRV_IsMpeg4NvopCopy, %function
VDMDRV_IsMpeg4NvopCopy:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pDecParam, pDecParam
	beq	.L29	@,
	cmp	r0, #2	@ VidStd,
	movne	r0, #0	@ D.36298,
	ldmnefd	sp!, {r4, pc}	@
	ldrb	r0, [r4, #158]	@ zero_extendqisi2	@ <variable>.IsNvopCopy, <variable>.IsNvopCopy
	cmp	r0, #1	@ <variable>.IsNvopCopy,
	movne	r0, #0	@, D.36298
	moveq	r0, #1	@, D.36298
	ldmfd	sp!, {r4, pc}	@
.L29:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.36298, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsMpeg4NvopCopy, .-VDMDRV_IsMpeg4NvopCopy
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #68]	@ D.35917, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.35917,
	beq	.L31	@,
	blx	r3	@ D.35917
.L32:
	add	r4, r4, r4, asl #2	@, tmp140, VdhId, VdhId,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #1	@ tmp144,
	add	r0, r1, r4, asl #3	@, tmp142, tmp136, tmp140,
	str	r2, [r0, #16]	@ tmp144, <variable>.VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L31:
	bl	vfmw_dprint_nothing	@
	b	.L32	@
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp136,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp136,
	mov	r4, r0	@ StateAfterRepair, StateAfterRepair
	mov	r5, r1	@ VdhId, VdhId
	ldr	r3, [r3, #64]	@ D.35909, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	cmp	r3, #0	@ D.35909,
	beq	.L35	@,
	mov	r0, r1	@, VdhId
	add	r5, r5, r5, asl #2	@, tmp141, VdhId, VdhId,
	blx	r3	@ D.35909
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r1, r5, asl #3	@, tmp143, tmp137, tmp141,
	str	r4, [r0, #16]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L35:
	add	r5, r5, r5, asl #2	@, tmp141, VdhId, VdhId,
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r1, r5, asl #3	@, tmp143, tmp137, tmp141,
	str	r4, [r0, #16]	@ StateAfterRepair, <variable>.VdmStateMachine
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #0]	@ D.35900, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r4, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.35900,
	beq	.L39	@,
	blx	r3	@ D.35900
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, #0	@ tmp141,
	add	r4, r1, r4, asl #2	@, tmp139, tmp136, VdhId,
	str	r0, [r4, #12]	@ tmp141, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L39:
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, #0	@ tmp141,
	add	r4, r1, r4, asl #2	@, tmp139, tmp136, VdhId,
	str	r0, [r4, #12]	@ tmp141, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L44	@ tmp135,
	add	r0, r0, r0, asl #2	@, tmp138, VdhId, VdhId,
	mov	r1, #40	@,
	add	r0, r3, r0, asl #3	@,, tmp135, tmp138,
	b	__memzero	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR0+16
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r3, #0]	@ D.35775, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	mov	r6, r0	@ VdhId, VdhId
	cmp	r3, #0	@ D.35775,
	beq	.L47	@,
	blx	r3	@ D.35775
.L48:
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
.L47:
	bl	vfmw_dprint_nothing	@
	b	.L48	@
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp414,
	movt	r4, #:upper16:.LANCHOR0	@ tmp414,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #4]	@ D.35964, g_ChanCtx.ChanIdTabByPrior
	cmp	r3, #0	@ D.35964,
	blt	.L51	@,
	mov	r7, r5, asl #2	@ tmp417, VdhId,
	mov	r0, r3	@, D.35964
	add	r8, r7, r5	@ tmp156, tmp417, VdhId
	add	r6, r8, #1	@ tmp157, tmp156,
	add	r6, r4, r6, asl #3	@, tmp160, tmp414, tmp157,
	str	r3, [r6, #16]	@ D.35964, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L62	@,
	ldr	r0, [r6, #16]	@ <variable>.ChanId, <variable>.ChanId
	add	r3, r0, #2	@ tmp172, <variable>.ChanId,
	ldr	r3, [r4, r3, asl #2]	@ tmp174, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp174,
	bne	.L62	@,
	add	r8, r4, r8, asl #3	@, tmp393, tmp414, tmp156,
	str	r3, [r8, #32]	@ tmp174, <variable>.pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35973,
	str	r0, [r8, #32]	@ D.35973, <variable>.pDecParam
	beq	.L63	@,
	ldr	r0, [r6, #16]	@, <variable>.ChanId
	bl	VCTRL_GetVidStd	@
	movw	r1, #:lower16:AcceleratorCharacter	@ tmp194,
	movt	r1, #:upper16:AcceleratorCharacter	@ tmp194,
	str	r0, [r6, #20]	@ D.35977, <variable>.VidStd
	mov	r2, r0	@ D.35977,
	ldr	r3, [r1, #0]	@ AcceleratorCharacter.516, AcceleratorCharacter
	cmp	r3, #0	@ AcceleratorCharacter.516,
	beq	.L54	@,
	ldr	ip, [r6, #16]	@ <variable>.ChanId, <variable>.ChanId
	add	r0, sp, #4	@,,
	ldr	lr, [r8, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	str	r2, [sp, #8]	@ D.35977, DecparamInfo.VidStd
	str	ip, [sp, #4]	@ <variable>.ChanId, DecparamInfo.ChanID
	str	lr, [sp, #12]	@ <variable>.pDecParam, DecparamInfo.pDecParam
	blx	r3	@ AcceleratorCharacter.516
.L51:
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L62:
	bl	vfmw_dprint_nothing	@
	b	.L51	@
.L63:
	ldr	r0, [r6, #16]	@, <variable>.ChanId
	bl	VCTRL_IsChanDecable	@
	b	.L51	@
.L54:
	ldr	r1, [r8, #32]	@, <variable>.pDecParam
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L64	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp267,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp267,
	ldr	r3, [r0, #72]	@ D.36007, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.36007,
	beq	.L56	@,
	ldr	r0, [r6, #20]	@, <variable>.VidStd
	mov	r2, r5	@, VdhId
	ldr	r1, [r8, #32]	@, <variable>.pDecParam
	blx	r3	@ D.36007
	cmp	r0, #0	@,
	beq	.L57	@,
.L56:
	bl	vfmw_dprint_nothing	@
	add	r2, r7, r5	@ tmp291, tmp417, VdhId
	add	r7, r2, #1	@ tmp309, tmp291,
	mov	lr, #100	@ tmp304,
	add	ip, r4, r2, asl #3	@, tmp293, tmp414, tmp291,
	mov	r6, #0	@ tmp295,
	add	r7, r4, r7, asl #3	@, tmp312, tmp414, tmp309,
	mov	r1, lr	@, tmp304
	mov	r3, r6	@, tmp295
	mov	r2, #15	@,
	ldr	r0, [r7, #16]	@, <variable>.ChanId
	str	lr, [ip, #20]	@ tmp304, <variable>.ErrRatio
	str	r6, [ip, #16]	@ tmp295, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_Reset	@
	ldr	r1, [r7, #16]	@ <variable>.ChanId, <variable>.ChanId
	add	r3, r1, #2	@ tmp325, <variable>.ChanId,
	str	r6, [r4, r3, asl #2]	@ tmp295, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L51	@
.L57:
	bl	OSAL_GetTimeInMs	@
	add	r1, r5, r5, asl #1	@, tmp340, VdhId, VdhId,
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp336,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp336,
	add	r3, r2, r1, asl #4	@, tmp342, tmp336, tmp340,
	mov	ip, r0	@ D.36012,
	mov	r0, r5	@, VdhId
	str	ip, [r8, #36]	@ D.36012, <variable>.StartTime
	str	ip, [r3, #4]	@ D.36012, <variable>.u32VaLastStartTime
	bl	VDMDRV_StartDec	@
	mov	r1, r5	@, VdhId
	ldr	r0, [r6, #16]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L51	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r6, #16]	@ temp.928, <variable>.ChanId
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp369,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp369,
	mov	ip, r2, asl #2	@ tmp416, temp.928,
	ldr	r3, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	add	r1, ip, r4	@ tmp365, tmp416, tmp414
	ldr	r1, [r1, #56]	@ tmp368, last_rec_pos_time
	rsb	r1, r1, r0	@ tmp367, tmp368, currtime.927
	cmp	r1, r3	@ tmp367, g_TraceFramePeriod
	addhi	ip, ip, r4	@ tmp374, tmp416, tmp414
	strhi	r0, [ip, #56]	@ currtime.927, last_rec_pos_time
	b	.L51	@
.L64:
	ldr	r0, [r8, #32]	@, <variable>.pDecParam
	mov	r1, r5	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ D.35990,
	bne	.L51	@,
	str	r3, [r8, #20]	@ D.35990, <variable>.ErrRatio
	add	r0, r0, #2	@,,
	mov	r1, r5	@, VdhId
	bl	VDMDRV_StartRepair	@
	mov	r1, r5	@, VdhId
	ldr	r0, [r6, #16]	@, <variable>.ChanId
	bl	VDMDRV_SetChanIsDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L51	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r6, #16]	@ temp.924, <variable>.ChanId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp260,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp260,
	add	r4, r4, r2, asl #2	@, tmp256, tmp414, temp.924,
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r1, [r4, #56]	@ tmp259, last_rec_pos_time
	rsb	r2, r1, r0	@ tmp258, tmp259, currtime
	cmp	r2, r3	@ tmp258, g_TraceFramePeriod
	strhi	r0, [r4, #56]	@ currtime, last_rec_pos_time
	b	.L51	@
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #144
	sub	sp, sp, #144	@,,
	add	r7, sp, #4	@ tmp573,,
	mov	r5, r0	@ VdhId, VdhId
	mov	r1, #136	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp574,
	mov	r0, r7	@, tmp573
	movt	r4, #:upper16:.LANCHOR0	@ tmp574,
	bl	__memzero	@
	mov	r1, #180	@ tmp152,
	mla	r3, r1, r5, r4	@ tmp153, tmp152, VdhId, tmp574
	mov	r6, r5, asl #2	@ tmp572, VdhId,
	add	r9, r6, r5	@ tmp175, tmp572, VdhId
	add	sl, r4, r9, asl #3	@, tmp177, tmp574, tmp175,
	ldr	r0, [r3, #60]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	and	r2, r0, #15	@ tmp155, <variable>.BasicCfg1,
	cmp	r2, #5	@ tmp155,
	ldreq	r8, [r3, #72]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r8, [r3, #68]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r8, r8, #1	@ Mb0QpInCurrPic, <variable>.SwitchRounding,
	andne	r8, r8, #31	@ Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sl, #16]	@ D.36059, <variable>.VdmStateMachine
	movw	r3, #:lower16:.LANCHOR0	@ tmp171,
	movt	r3, #:upper16:.LANCHOR0	@ tmp171,
	cmp	r2, #1	@ D.36059,
	beq	.L81	@,
	cmp	r2, #2	@ D.36059,
	beq	.L82	@,
	cmp	r2, #3	@ D.36059,
	beq	.L83	@,
	bl	vfmw_dprint_nothing	@
.L80:
	add	sp, sp, #144	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L83:
	ldr	r0, [sl, #44]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	r0, #1	@ <variable>.VdmTimeOut,
	moveq	r0, #0	@ tmp521,
	streq	r0, [sl, #44]	@ tmp521, <variable>.VdmTimeOut
.L79:
	add	r6, r6, r5	@ tmp526, tmp572, VdhId
	mov	r2, r8	@, Mb0QpInCurrPic
	add	r8, r6, #1	@ tmp552, tmp526,
	mov	r3, r7	@, tmp573
	add	r6, r4, r6, asl #3	@, tmp528, tmp574, tmp526,
	mov	r7, #0	@ tmp530,
	add	r8, r4, r8, asl #3	@, tmp555, tmp574, tmp552,
	ldr	r1, [r6, #20]	@ <variable>.ErrRatio, <variable>.ErrRatio
	ldr	r0, [r8, #16]	@, <variable>.ChanId
	cmp	r1, #100	@ <variable>.ErrRatio,
	movge	r1, #100	@ iftmp.979,
	str	r7, [r6, #16]	@ tmp530, <variable>.VdmStateMachine
	bic	r1, r1, r1, asr #31	@ iftmp.525, iftmp.979
	str	r1, [r6, #20]	@ iftmp.525, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r8, #16]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r3, r2, #2	@ tmp569, <variable>.ChanId,
	str	r7, [r4, r3, asl #2]	@ tmp530, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L80	@
.L81:
	ldr	ip, [sl, #44]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	cmp	ip, #1	@ <variable>.VdmTimeOut,
	beq	.L84	@,
	add	r9, r9, #1	@ tmp229, tmp175,
	ldr	r1, [sl, #32]	@, <variable>.pDecParam
	mov	r2, r5	@, VdhId
	add	r9, r3, r9, asl #3	@, tmp232, tmp171, tmp229,
	ldr	r0, [r9, #20]	@, <variable>.VidStd
	bl	PostPro_GetErrRatio	@
	str	r0, [sl, #20]	@, <variable>.ErrRatio
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r9, #20]	@ prephitmp.950, <variable>.VidStd
	sub	r1, r0, #8	@ tmp261, prephitmp.950,
	cmp	r0, #5	@ prephitmp.950,
	cmpne	r1, #1	@, tmp261,
	movls	r1, #0	@ tmp277,
	strls	r1, [sl, #20]	@ tmp277, <variable>.ErrRatio
	bls	.L79	@,
	ldr	r1, [sl, #20]	@ D.36076, <variable>.ErrRatio
	cmp	r1, #0	@ D.36076,
	beq	.L79	@,
	movw	ip, #:lower16:g_event_report	@ tmp286,
	movt	ip, #:upper16:g_event_report	@ tmp286,
	ldr	r3, [ip, #0]	@ g_event_report.522, g_event_report
	cmp	r3, #0	@ g_event_report.522,
	beq	.L73	@,
	add	r2, sp, #144	@ tmp297,,
	ldr	r0, [r9, #16]	@, <variable>.ChanId
	str	r1, [r2, #-4]!	@ D.36076, para
	mov	r1, #114	@,
	blx	r3	@ g_event_report.522
.L70:
	add	r2, r6, r5	@ tmp302, tmp572, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp298,
	movt	r3, #:upper16:.LANCHOR0	@ tmp298,
	add	lr, r4, r2, asl #3	@, tmp304, tmp574, tmp302,
	ldr	r0, [lr, #20]	@ <variable>.ErrRatio, <variable>.ErrRatio
	cmp	r0, #0	@ <variable>.ErrRatio,
	beq	.L79	@,
	add	r3, r3, r2, asl #3	@, tmp314, tmp298, tmp302,
	ldr	r0, [r3, #28]	@ prephitmp.950, <variable>.VidStd
.L73:
	add	r1, r6, r5	@ tmp320, tmp572, VdhId
	add	r2, r4, r1, asl #3	@, tmp322, tmp574, tmp320,
	ldr	r1, [r2, #32]	@, <variable>.pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L80	@,
	b	.L79	@
.L82:
	add	r6, r6, r5	@ tmp396, tmp572, VdhId
	ldr	r0, [sl, #44]	@ <variable>.VdmTimeOut, <variable>.VdmTimeOut
	add	ip, r6, #1	@ tmp397, tmp396,
	cmp	r0, #1	@ <variable>.VdmTimeOut,
	add	r6, r4, r6, asl #3	@, tmp409, tmp574, tmp396,
	add	r4, r4, ip, asl #3	@, tmp400, tmp574, tmp397,
	moveq	r0, #0	@ tmp392,
	ldr	r1, [r6, #32]	@, <variable>.pDecParam
	streq	r0, [sl, #44]	@ tmp392, <variable>.VdmTimeOut
	movw	sl, #:lower16:.LANCHOR0	@ tmp393,
	ldr	r0, [r4, #20]	@, <variable>.VidStd
	movt	sl, #:upper16:.LANCHOR0	@ tmp393,
	bl	VDMDRV_IsMpeg4NvopCopy	@
	cmp	r0, #1	@,
	beq	.L85	@,
	ldr	lr, [r6, #20]	@ <variable>.ErrRatio, <variable>.ErrRatio
	mov	r3, r7	@, tmp573
	mov	r2, r8	@, Mb0QpInCurrPic
	ldr	r0, [r4, #16]	@, <variable>.ChanId
	cmp	lr, #100	@ <variable>.ErrRatio,
	movge	lr, #100	@ iftmp.524,
	mov	r7, #0	@ tmp462,
	bic	r1, lr, lr, asr #31	@ iftmp.981, iftmp.524
	str	r7, [r6, #16]	@ tmp462, <variable>.VdmStateMachine
	str	r1, [r6, #20]	@ iftmp.981, <variable>.ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	ip, [r4, #16]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r1, ip, #2	@ tmp501, <variable>.ChanId,
	str	r7, [sl, r1, asl #2]	@ tmp462, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L80	@
.L84:
	add	lr, r3, r9, asl #3	@, tmp195, tmp171, tmp175,
	mov	r2, r5	@, VdhId
	ldr	r1, [sl, #32]	@, <variable>.pDecParam
	ldr	r0, [lr, #28]	@, <variable>.VidStd
	bl	PostPro_SetFullRepair	@
	mov	r2, #100	@ tmp215,
	mov	r3, #0	@ tmp224,
	str	r2, [sl, #20]	@ tmp215, <variable>.ErrRatio
	str	r3, [sl, #44]	@ tmp224, <variable>.VdmTimeOut
	bl	vfmw_dprint_nothing	@
	b	.L70	@
.L85:
	mov	r9, #0	@ tmp420,
	mov	r2, r8	@, Mb0QpInCurrPic
	mov	r3, r7	@, tmp573
	ldr	r0, [r4, #16]	@, <variable>.ChanId
	mov	r1, r9	@, tmp420
	str	r9, [r6, #20]	@ tmp420, <variable>.ErrRatio
	str	r9, [r6, #16]	@ tmp420, <variable>.VdmStateMachine
	bl	VCTRL_VdmPostProc	@
	ldr	r2, [r4, #16]	@ <variable>.ChanId, <variable>.ChanId
	mov	r0, r5	@, VdhId
	add	r3, r2, #2	@ tmp451, <variable>.ChanId,
	str	r9, [sl, r3, asl #2]	@ tmp420, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_Reset	@
	mov	r0, r5	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L80	@
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_VdmIntServProc
	.type	VDMDRV_VdmIntServProc, %function
VDMDRV_VdmIntServProc:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, #15	@ tmp148,
	str	r3, [sp, #12]	@ tmp148, Mb0QpInCurrPic
	ble	.L87	@,
	bl	vfmw_dprint_nothing	@
.L105:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L87:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp596,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp596,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r7, #60]	@ D.36200, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.36200,
	beq	.L89	@,
	mov	r0, #2	@,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.36200
	tst	r0, #1	@,
	beq	.L89	@,
	ldr	r3, [r7, #92]	@ D.36208, g_vdm_hal_fun_ptr.pfun_VDMHAL_BackupInfo
	movw	r5, #:lower16:.LANCHOR0	@ tmp591,
	mov	r6, r4, asl #2	@ tmp595, VdhId,
	movt	r5, #:upper16:.LANCHOR0	@ tmp591,
	add	lr, r6, r5	@ tmp165, tmp595, tmp591
	cmp	r3, #0	@ D.36208,
	mov	ip, #1	@ tmp167,
	str	ip, [lr, #240]	@ tmp167, s_VdmIsInISR
	beq	.L91	@,
	add	r0, sp, #12	@,,
	mov	r1, r4	@, VdhId
	blx	r3	@ D.36208
.L92:
	ldr	r3, [r7, #48]	@ D.36212, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.36212,
	beq	.L93	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.36212
.L94:
	mov	r0, #6	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L106	@,
.L95:
	add	ip, r6, r4	@ tmp198, tmp595, VdhId
	movw	r3, #:lower16:.LANCHOR0	@ tmp194,
	movt	r3, #:upper16:.LANCHOR0	@ tmp194,
	add	r2, r5, ip, asl #3	@, tmp200, tmp591, tmp198,
	ldr	r0, [r2, #52]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	cmp	r0, #1	@ <variable>.ChanResetFlag,
	beq	.L107	@,
	mov	r7, #180	@ tmp248,
	mov	r8, r4, asl #1	@ tmp594, VdhId,
	mla	r1, r7, r4, r3	@ tmp249, tmp248, VdhId, tmp194
	add	r7, r8, r4	@ tmp258, tmp594, VdhId
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp592,
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp592,
	add	r9, sl, r7, asl #4	@, tmp260, tmp592, tmp258,
	add	r3, r6, r3	@ tmp238, tmp595, tmp194
	ldr	ip, [r9, #4]	@ <variable>.u32VaLastStartTime, <variable>.u32VaLastStartTime
	ldr	r0, [r1, #84]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	ldr	lr, [r3, #248]	@ tmp251, cycle
	cmp	ip, #0	@ <variable>.u32VaLastStartTime,
	add	r2, lr, r0	@ tmp253, tmp251, <variable>.DecCyclePerPic
	str	r2, [r3, #248]	@ tmp253, cycle
	bne	.L108	@,
.L97:
	add	sl, r6, r4	@ tmp452, tmp595, VdhId
	movw	r8, #:lower16:.LANCHOR0	@ tmp448,
	movt	r8, #:upper16:.LANCHOR0	@ tmp448,
	add	r3, r5, sl, asl #3	@, tmp454, tmp591, tmp452,
	ldr	r0, [r3, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r0, #0	@ <variable>.VdmStateMachine,
	beq	.L100	@,
	ldr	r7, [r3, #32]	@ <variable>.pDecParam, <variable>.pDecParam
	cmp	r7, #0	@ <variable>.pDecParam,
	beq	.L109	@,
.L100:
	add	sl, r6, r4	@ tmp513, tmp595, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp510,
	add	r8, sl, #1	@ tmp514, tmp513,
	movt	r7, #:upper16:.LANCHOR0	@ tmp510,
	add	r8, r5, r8, asl #3	@, tmp517, tmp591, tmp514,
	ldr	r0, [r8, #16]	@, <variable>.ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L110	@,
	ldr	r0, [r8, #16]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	subs	r9, r0, #0	@ D.36266,
	beq	.L111	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L103:
	add	r4, r6, r4	@ tmp583, tmp595, VdhId
	add	r6, r6, r5	@ tmp577, tmp595, tmp591
	mov	lr, #0	@ tmp579,
	add	r5, r5, r4, asl #3	@, tmp587, tmp591, tmp583,
	str	lr, [r6, #240]	@ tmp579, s_VdmIsInISR
	ldr	r0, [r5, #24]	@, <variable>.ChanId
	bl	VCTRL_InformVdmFree	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L105	@
.L110:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r8, #16]	@ <variable>.ChanId, <variable>.ChanId
	add	sl, r7, sl, asl #3	@, tmp539, tmp510, tmp513,
	mov	r0, #0	@ tmp532,
	add	r1, r3, #2	@ tmp530, <variable>.ChanId,
	str	r0, [r7, r1, asl #2]	@ tmp532, g_ChanCtx.ChanDecByVdhPlusOne
	str	r0, [sl, #16]	@ tmp532, <variable>.VdmStateMachine
	b	.L103	@
.L108:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sl, r7, asl #4]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	ldr	r1, [r9, #4]	@ prephitmp.997, <variable>.u32VaLastStartTime
	add	r8, r8, r4	@ tmp310, tmp594, VdhId
	add	ip, r2, #49920	@ tmp277, <variable>.u32VaBeginTime,
	add	fp, ip, #80	@ tmp277, tmp277,
	cmp	fp, r1	@ tmp277, prephitmp.997
	strcc	r1, [sl, r7, asl #4]	@ prephitmp.997, <variable>.u32VaBeginTime
	movcc	r2, r7, asl #1	@ tmp296, tmp258,
	ldr	r3, [sl, r8, asl #4]	@ <variable>.u32VaBeginTime, <variable>.u32VaBeginTime
	movcs	r7, r9	@ tmp285, tmp260
	addcc	r2, r2, #1	@ tmp297, tmp296,
	ldrcs	ip, [r7, #8]	@ prephitmp.1020, <variable>.u32VaVdmWorkTime
	mov	r7, #180	@ tmp335,
	mla	r9, r7, r4, r5	@ tmp336, tmp335, VdhId, tmp591
	movcc	fp, #0	@ tmp298,
	add	r7, sl, r8, asl #4	@, tmp321, tmp592, tmp310,
	strcc	fp, [sl, r2, asl #3]	@ tmp298, <variable>.u32VaVdmWorkTime
	movcc	ip, fp	@ prephitmp.1020, tmp298
	mov	fp, r8, asl #1	@ tmp311, tmp310,
	ldr	r2, [r7, #36]	@ <variable>.u32AccVdmKiloCycle, <variable>.u32AccVdmKiloCycle
	add	fp, fp, #1	@ tmp312, tmp311,
	ldr	lr, [r7, #32]	@ <variable>.u32PicNum, <variable>.u32PicNum
	ldr	r9, [r9, #84]	@ <variable>.DecCyclePerPic, <variable>.DecCyclePerPic
	add	lr, lr, #1	@ tmp367, <variable>.u32PicNum,
	str	lr, [r7, #32]	@ tmp367, <variable>.u32PicNum
	add	r2, r2, r9, lsr #10	@, tmp349, <variable>.u32AccVdmKiloCycle, <variable>.DecCyclePerPic,
	mov	r9, #0	@ tmp323,
	str	r2, [r7, #36]	@ tmp349, <variable>.u32AccVdmKiloCycle
	str	r9, [r7, #4]	@ tmp323, <variable>.u32VaLastStartTime
	rsb	r3, r3, r0	@ Period, <variable>.u32VaBeginTime, CurTime
	add	r0, ip, r0	@ tmp313, prephitmp.1020, CurTime
	cmp	r3, #1000	@ Period,
	rsb	r0, r1, r0	@ tmp314, prephitmp.997, tmp313
	str	r0, [sl, fp, asl #3]	@ tmp314, <variable>.u32VaVdmWorkTime
	movw	sl, #:lower16:g_VfmwGlobalStat	@ tmp307,
	movt	sl, #:upper16:g_VfmwGlobalStat	@ tmp307,
	bcc	.L97	@,
	mov	lr, #1000	@ tmp394,
	mov	r1, r3	@, Period
	mul	r0, lr, r0	@, tmp394, tmp314
	stmia	sp, {r2, r3}	@ phole stm
	bl	__aeabi_uidiv	@
	str	r9, [sl, r8, asl #4]	@ tmp323, <variable>.u32VaBeginTime
	add	fp, sl, fp, asl #3	@, tmp384, tmp307, tmp312,
	str	r9, [r7, #32]	@ tmp323, <variable>.u32PicNum
	ldr	sl, [sp, #0]	@,
	str	sl, [r7, #40]	@ tmp349, <variable>.u32VaVdmKiloCycle
	ldr	r8, [sp, #4]	@,
	str	r9, [r7, #36]	@ tmp323, <variable>.u32AccVdmKiloCycle
	str	r8, [r7, #44]	@ Period, <variable>.u32StatTime
	str	r0, [fp, #4]	@, <variable>.u32VaVdmLoad
	b	.L97	@
.L106:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, r4	@ tmp174, tmp595, VdhId
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp187,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp187,
	add	r1, r5, r2, asl #3	@, tmp178, tmp591, tmp174,
	ldr	r2, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r3, [r1, #24]	@ D.36220, <variable>.ChanId
	add	r3, r5, r3, asl #2	@, tmp183, tmp591, D.36220,
	ldr	ip, [r3, #244]	@ tmp186, last_rec_pos_time
	rsb	r1, ip, r0	@ tmp185, tmp186, currtime
	cmp	r1, r2	@ tmp185, g_TraceFramePeriod
	strhi	r0, [r3, #244]	@ currtime, last_rec_pos_time
	b	.L95	@
.L89:
	movw	r0, #:lower16:g_TaskLock	@,
	add	r4, r4, r4, asl #2	@, tmp157, VdhId, VdhId,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp153,
	movt	r1, #:upper16:.LANCHOR0	@ tmp153,
	mov	r2, #0	@ tmp161,
	add	r0, r1, r4, asl #3	@, tmp159, tmp153, tmp157,
	str	r2, [r0, #16]	@ tmp161, <variable>.VdmStateMachine
	b	.L105	@
.L109:
	add	sl, sl, #1	@ tmp470, tmp452,
	bl	vfmw_dprint_nothing	@
	add	r8, r8, sl, asl #3	@, tmp473, tmp448, tmp470,
	ldr	r0, [r8, #16]	@, <variable>.ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L101	@,
	ldr	r0, [r8, #16]	@, <variable>.ChanId
	mov	r3, r7	@, <variable>.pDecParam
	mov	r1, #100	@,
	ldr	r2, [sp, #12]	@, Mb0QpInCurrPic
	bl	VCTRL_VdmPostProc	@
.L101:
	add	r4, r6, r4	@ tmp491, tmp595, VdhId
	mov	r1, #0	@ tmp499,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	add	r2, r5, r4, asl #3	@, tmp495, tmp591, tmp491,
	ldr	ip, [r2, #24]	@ <variable>.ChanId, <variable>.ChanId
	mov	r4, r2	@ tmp506, tmp495
	add	r3, ip, #2	@ tmp497, <variable>.ChanId,
	str	r1, [r5, r3, asl #2]	@ tmp499, g_ChanCtx.ChanDecByVdhPlusOne
	str	r1, [r2, #16]	@ tmp499, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L105	@
.L93:
	bl	vfmw_dprint_nothing	@
	b	.L94	@
.L91:
	bl	vfmw_dprint_nothing	@
	b	.L92	@
.L107:
	add	r1, r3, ip, asl #3	@, tmp220, tmp194, tmp198,
	mov	lr, #0	@ tmp211,
	movw	r0, #:lower16:g_TaskLock	@,
	str	lr, [r2, #52]	@ tmp211, <variable>.ChanResetFlag
	ldr	ip, [r1, #24]	@ <variable>.ChanId, <variable>.ChanId
	movt	r0, #:upper16:g_TaskLock	@,
	add	r1, ip, #2	@ tmp222, <variable>.ChanId,
	str	lr, [r3, r1, asl #2]	@ tmp211, g_ChanCtx.ChanDecByVdhPlusOne
	str	lr, [r2, #16]	@ tmp211, <variable>.VdmStateMachine
	bl	OSAL_SpinUnLockIRQ	@
	b	.L105	@
.L111:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, #16]	@ <variable>.ChanId, <variable>.ChanId
	add	sl, r7, sl, asl #3	@, tmp571, tmp510, tmp513,
	add	ip, r2, #2	@ tmp562, <variable>.ChanId,
	str	r9, [r7, ip, asl #2]	@ D.36266, g_ChanCtx.ChanDecByVdhPlusOne
	str	r9, [sl, #16]	@ D.36266, <variable>.VdmStateMachine
	b	.L103	@
	.fnend
	.size	VDMDRV_VdmIntServProc, .-VDMDRV_VdmIntServProc
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
.LFB1932:
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
	beq	.L127	@,
.L113:
	add	sl, r6, r5	@ tmp200, tmp319, VdhId
	movw	r7, #:lower16:.LANCHOR0	@ tmp196,
	movt	r7, #:upper16:.LANCHOR0	@ tmp196,
	add	r8, r4, sl, asl #3	@, tmp202, tmp320, tmp200,
	ldr	r3, [r8, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	bne	.L128	@,
.L114:
	add	r4, r6, r4	@ tmp310, tmp319, tmp320
	ldr	r7, [r4, #12]	@ D.36176, s_eVdmDrvSleepState
	cmp	r7, #0	@ D.36176,
	moveq	r0, r7	@ D.36175, D.36176
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #1	@ D.36176,
	moveq	r3, #2	@ tmp317,
	moveq	r0, r7	@ D.36175, D.36176
	streq	r3, [r4, #12]	@ tmp317, s_eVdmDrvSleepState
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L120:
	mov	r0, #1	@ D.36175,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L128:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r8, #36]	@ D.36155, <variable>.StartTime
	cmp	r0, r2	@ D.36153, D.36155
	mov	r3, r0	@ D.36153,
	str	r0, [r8, #40]	@ D.36153, <variable>.CurrTime
	strcc	r0, [r8, #36]	@ D.36153, <variable>.StartTime
	movcc	r0, #1	@ D.36175,
	ldmccfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	subs	r1, r3, r2	@ TimeElapse, D.36153, D.36155
	bmi	.L117	@,
	cmp	r2, #0	@ D.36155,
	beq	.L117	@,
	cmp	r1, #500	@ TimeElapse,
	bls	.L120	@,
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_event_report	@ tmp237,
	movt	r3, #:upper16:g_event_report	@ tmp237,
	ldr	r3, [r3, #0]	@ g_event_report.528, g_event_report
	cmp	r3, #0	@ g_event_report.528,
	beq	.L121	@,
	add	lr, r7, sl, asl #3	@, tmp245, tmp196, tmp200,
	mov	r1, #101	@,
	mov	r2, #0	@,
	ldr	r0, [lr, #24]	@, <variable>.ChanId
	blx	r3	@ g_event_report.528
.L121:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp248,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp248,
	ldr	r3, [r0, #40]	@ D.36168, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.36168,
	beq	.L122	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.36168
.L123:
	add	r6, r6, r5	@ tmp253, tmp319, VdhId
	mov	r7, #1	@ tmp257,
	movw	r3, #:lower16:.LANCHOR0	@ tmp249,
	movt	r3, #:upper16:.LANCHOR0	@ tmp249,
	add	r4, r4, r6, asl #3	@, tmp255, tmp320, tmp253,
	ldr	r1, [r4, #52]	@ <variable>.ChanResetFlag, <variable>.ChanResetFlag
	str	r7, [r4, #44]	@ tmp257, <variable>.VdmTimeOut
	cmp	r1, r7	@ <variable>.ChanResetFlag,
	bne	.L124	@,
	add	r6, r3, r6, asl #3	@, tmp302, tmp249, tmp253,
	mov	r2, #0	@ tmp275,
	mov	r0, r2	@ D.36175, tmp275
	str	r2, [r4, #44]	@ tmp275, <variable>.VdmTimeOut
	ldr	lr, [r6, #24]	@ <variable>.ChanId, <variable>.ChanId
	str	r2, [r4, #52]	@ tmp275, <variable>.ChanResetFlag
	add	ip, lr, #2	@ tmp304, <variable>.ChanId,
	str	r2, [r4, #16]	@ tmp275, <variable>.VdmStateMachine
	str	r2, [r3, ip, asl #2]	@ tmp275, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L127:
	add	r7, r4, r7, asl #3	@, tmp161, tmp320, tmp148,
	ldr	r3, [r7, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r3, #0	@ <variable>.VdmStateMachine,
	beq	.L114	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	ldr	r3, [r0, #80]	@ D.36147, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.36147,
	beq	.L115	@,
	mov	r0, r5	@, VdhId
	blx	r3	@ D.36147
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp173,
	strne	r3, [r7, #52]	@ tmp173, <variable>.ChanResetFlag
	bne	.L113	@,
.L115:
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
	b	.L113	@
.L117:
	add	r5, r6, r5	@ tmp225, tmp319, VdhId
	mov	r0, #1	@ D.36175,
	add	r4, r4, r5, asl #3	@, tmp227, tmp320, tmp225,
	str	r3, [r4, #36]	@ D.36153, <variable>.StartTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L124:
	mov	r0, r5	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r7	@ D.36175, tmp257
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L122:
	bl	vfmw_dprint_nothing	@
	b	.L123	@
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
.LFB1934:
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
.LFB1923:
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
	beq	.L133	@,
	mov	r0, r6	@, VdhId
	bl	VDMDRV_Reset	@
	mov	r0, #2	@ tmp146,
	str	r0, [r5, #12]	@ tmp146, s_eVdmDrvSleepState
.L133:
	mov	r0, r4	@, tmp148
	bl	OSAL_UnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
.LFB1921:
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
	bne	.L137	@,
	add	r5, r2, r5	@ tmp147, tmp139, VdhId
	add	r3, r3, r5, asl #3	@, tmp149, tmp137, tmp147,
	ldr	r5, [r3, #16]	@ <variable>.VdmStateMachine, <variable>.VdmStateMachine
	cmp	r5, #0	@ <variable>.VdmStateMachine,
	movne	r5, r0	@ ret, tmp142
	moveq	r3, #2	@ tmp157,
	movne	r3, #1	@ tmp163,
	str	r3, [r1, #12]	@ tmp163, s_eVdmDrvSleepState
.L137:
	mov	r0, r4	@, tmp166
	bl	OSAL_UnLockIRQ	@
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.global	CapItem
	.global	USE_FF_APT_EN
	.global	__ksymtab_CapItem
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
	.type	last_rec_pos_time.35953, %object
	.size	last_rec_pos_time.35953, 4
last_rec_pos_time.35953:
	.space	4
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	s_VdmIsInISR, %object
	.size	s_VdmIsInISR, 4
s_VdmIsInISR:
	.space	4
	.type	last_rec_pos_time.36191, %object
	.size	last_rec_pos_time.36191, 4
last_rec_pos_time.36191:
	.space	4
	.type	cycle.36190, %object
	.size	cycle.36190, 8
cycle.36190:
	.space	8
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
