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
	.file	"vfmw.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/.vfmw.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/vfmw.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/vfmw.o
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
	.global	VDM_OpenHardware
	.type	VDM_OpenHardware, %function
VDM_OpenHardware:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.35805, <variable>.PERI_CRG30.u32
	orr	r3, r0, #3	@ u32TmpValue, D.35805,
	bfc	r3, #4, #1	@ u32TmpValue,,
	bfc	r3, #6, #1	@ u32TmpValue,,
	bfc	r3, #8, #2	@ u32TmpValue,,
	bfc	r3, #12, #5	@ u32TmpValue,,
	bfc	r3, #17, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	VDM_OpenHardware, .-VDM_OpenHardware
	.align	2
	.global	VDM_CloseHardware
	.type	VDM_CloseHardware, %function
VDM_CloseHardware:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp138,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp138,
	ldr	r2, [r1, #0]	@ g_pstRegCrg.447, g_pstRegCrg
	ldr	r0, [r2, #120]	@ D.35812, <variable>.PERI_CRG30.u32
	orr	r3, r0, #80	@ u32TmpValue, D.35812,
	bfc	r3, #0, #1	@ u32TmpValue,,
	bfc	r3, #1, #1	@ u32TmpValue,,
	str	r3, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	VDM_CloseHardware, .-VDM_CloseHardware
	.align	2
	.global	SCD_OpenHardware
	.type	SCD_OpenHardware, %function
SCD_OpenHardware:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r0, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r0, #0]	@ g_pstRegCrg.448, g_pstRegCrg
	ldr	r2, [r3, #120]	@ D.35819, <variable>.PERI_CRG30.u32
	bfc	r2, #5, #1	@ u32TmpValue,,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	SCD_OpenHardware, .-SCD_OpenHardware
	.align	2
	.global	SCD_CloseHardware
	.type	SCD_CloseHardware, %function
SCD_CloseHardware:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.449, g_pstRegCrg
	ldr	r0, [r3, #120]	@ D.35826, <variable>.PERI_CRG30.u32
	orr	r2, r0, #32	@ u32TmpValue, D.35826,
	str	r2, [r3, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	bx	lr	@
	.fnend
	.size	SCD_CloseHardware, .-SCD_CloseHardware
	.align	2
	.global	DNR_OpenHardware
	.type	DNR_OpenHardware, %function
DNR_OpenHardware:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:g_pstRegCrg	@ tmp137,
	movt	r1, #:upper16:g_pstRegCrg	@ tmp137,
	ldr	r3, [r1, #0]	@ g_pstRegCrg.450, g_pstRegCrg
	ldr	r0, [r3, #112]	@ D.35833, <variable>.PERI_CRG28.u32
	orr	r2, r0, #1	@ u32TmpValue, D.35833,
	bfc	r2, #1, #1	@ u32TmpValue,,
	str	r2, [r3, #112]	@ u32TmpValue, <variable>.PERI_CRG28.u32
	bx	lr	@
	.fnend
	.size	DNR_OpenHardware, .-DNR_OpenHardware
	.align	2
	.global	BPD_OpenHardware
	.type	BPD_OpenHardware, %function
BPD_OpenHardware:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	VFMW_set_dbgopt
	.type	VFMW_set_dbgopt, %function
VFMW_set_dbgopt:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	VCTRL_SetDbgOption	@
	.fnend
	.size	VFMW_set_dbgopt, .-VFMW_set_dbgopt
	.align	2
	.global	VDEC_Resume
	.type	VDEC_Resume, %function
VDEC_Resume:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_Resume	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp170,
	movt	r3, #:upper16:.LANCHOR0	@ tmp170,
	ldr	r3, [r3, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	bne	.L30	@,
	cmp	r1, #10	@ eCmdID,
	movweq	r3, #:lower16:VDEC_CID_GetChanState	@ pTargetHandler,
	movteq	r3, #:upper16:VDEC_CID_GetChanState	@ pTargetHandler,
	beq	.L23	@,
	movw	ip, #:lower16:.LANCHOR1	@ ivtmp.753,
	movt	ip, #:upper16:.LANCHOR1	@ ivtmp.753,
	b	.L24	@
.L25:
	ldr	r3, [ip, #12]	@ pTargetHandler, <variable>.pHandler
	add	ip, ip, #8	@ ivtmp.753, ivtmp.753,
	cmp	r3, #0	@ pTargetHandler,
	beq	.L19	@,
	cmp	lr, r1	@ D.36562, eCmdID
	beq	.L23	@,
.L24:
	ldr	lr, [ip, #8]	@ D.36562, <variable>.eCmdID
	cmp	lr, #41	@ D.36562,
	bne	.L25	@,
.L19:
	mov	r2, r1	@, eCmdID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L23:
	mov	r1, r2	@, pArgs
	blx	r3	@ pTargetHandler
	ldmfd	sp!, {r3, pc}	@
.L30:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
	.align	2
	.global	VDEC_CID_GetSCDBufferVirAddr
	.type	VDEC_CID_GetSCDBufferVirAddr, %function
VDEC_CID_GetSCDBufferVirAddr:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L35	@,
	movw	ip, #:lower16:g_scd_vir	@ tmp141,
	movt	ip, #:upper16:g_scd_vir	@ tmp141,
	mov	r2, #0	@ D.36511,
	ldr	r3, [ip, r0, asl #2]	@ tmp142, g_scd_vir
	str	r3, [r1, #0]	@ tmp142,* pArgs
.L33:
	mov	r0, r2	@, D.36511
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L35:
	mov	r0, r1	@, pArgs
	ldr	r2, .L36	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r3, #1004	@,
	movt	r1, #:upper16:.LC3	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	mvn	r2, #0	@ D.36511,
	b	.L33	@
.L37:
	.align	2
.L36:
	.word	.LANCHOR1+280
	.fnend
	.size	VDEC_CID_GetSCDBufferVirAddr, .-VDEC_CID_GetSCDBufferVirAddr
	.align	2
	.global	VDEC_CID_SetFrameRate
	.type	VDEC_CID_SetFrameRate, %function
VDEC_CID_SetFrameRate:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pArgs
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L42	@,
	ldr	r1, [r1, #0]	@ tmp142,* pArgs
	movw	r3, #:lower16:.LANCHOR2	@ tmp141,
	movt	r3, #:upper16:.LANCHOR2	@ tmp141,
	mov	r2, #0	@ D.36499,
	str	r1, [r3, r0, asl #2]	@ tmp142, g_FrameRate
.L40:
	mov	r0, r2	@, D.36499
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L42:
	mov	r0, r1	@, pArgs
	ldr	r2, .L43	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #995	@,
	movt	r1, #:upper16:.LC3	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	mvn	r2, #0	@ D.36499,
	b	.L40	@
.L44:
	.align	2
.L43:
	.word	.LANCHOR1+312
	.fnend
	.size	VDEC_CID_SetFrameRate, .-VDEC_CID_SetFrameRate
	.align	2
	.global	VDEC_Suspend
	.type	VDEC_Suspend, %function
VDEC_Suspend:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_Suspend	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Suspend, .-VDEC_Suspend
	.align	2
	.global	GetVdecCapability
	.type	GetVdecCapability, %function
GetVdecCapability:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #148	@,
	mov	r4, r0	@ pCap, pCap
	bl	__memzero	@
	mov	r2, #1	@ tmp134,
	mov	r0, #50	@ tmp135,
	mov	r3, #1920	@ tmp136,
	mov	ip, #1088	@ tmp137,
	str	r2, [r4, #44]	@ tmp134, <variable>.SupportedStd
	movw	r1, #:lower16:94003200	@ tmp157,
	str	r0, [r4, #4]	@ tmp135, <variable>.s32MaxBitRate
	movt	r1, #:upper16:94003200	@ tmp157,
	mov	r0, #0	@ tmp139,
	str	r3, [r4, #8]	@ tmp136, <variable>.s32MaxFrameWidth
	str	ip, [r4, #12]	@ tmp137, <variable>.s32MaxFrameHeight
	mov	r3, #3	@ tmp140,
	mov	ip, #2	@ tmp141,
	str	r2, [r4, #0]	@ tmp134, <variable>.s32MaxChanNum
	str	r1, [r4, #16]	@ tmp157, <variable>.s32MaxPixelPerSec
	mov	r2, #6	@ tmp142,
	mov	r1, #8	@ tmp143,
	str	r0, [r4, #20]	@ tmp139, <variable>.SupportedStd
	str	r3, [r4, #24]	@ tmp140, <variable>.SupportedStd
	mov	r0, #9	@ tmp144,
	mov	r3, #5	@ tmp146,
	str	ip, [r4, #28]	@ tmp141, <variable>.SupportedStd
	str	r2, [r4, #32]	@ tmp142, <variable>.SupportedStd
	mov	ip, #4	@ tmp147,
	mov	r2, #10	@ tmp148,
	str	r1, [r4, #36]	@ tmp143, <variable>.SupportedStd
	str	r0, [r4, #40]	@ tmp144, <variable>.SupportedStd
	mov	r1, #14	@ tmp149,
	mov	r0, #11	@ tmp150,
	str	r3, [r4, #48]	@ tmp146, <variable>.SupportedStd
	str	ip, [r4, #52]	@ tmp147, <variable>.SupportedStd
	mov	r3, #12	@ tmp151,
	str	r2, [r4, #56]	@ tmp148, <variable>.SupportedStd
	mov	ip, #13	@ tmp152,
	str	r1, [r4, #60]	@ tmp149, <variable>.SupportedStd
	mov	r2, #15	@ tmp153,
	str	r0, [r4, #64]	@ tmp150, <variable>.SupportedStd
	mov	r1, #17	@ tmp154,
	str	r3, [r4, #68]	@ tmp151, <variable>.SupportedStd
	mov	r0, #18	@ tmp155,
	mov	r3, #19	@ tmp156,
	str	ip, [r4, #72]	@ tmp152, <variable>.SupportedStd
	str	r2, [r4, #76]	@ tmp153, <variable>.SupportedStd
	str	r1, [r4, #80]	@ tmp154, <variable>.SupportedStd
	str	r0, [r4, #84]	@ tmp155, <variable>.SupportedStd
	str	r3, [r4, #88]	@ tmp156, <variable>.SupportedStd
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	GetVdecCapability, .-GetVdecCapability
	.align	2
	.global	VDEC_CID_ReportDmxBufRls
	.type	VDEC_CID_ReportDmxBufRls, %function
VDEC_CID_ReportDmxBufRls:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_IsEsBufEnable	@
	cmp	r0, #0	@,
	beq	.L50	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L50:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_ReportDmxBufRls, .-VDEC_CID_ReportDmxBufRls
	.align	2
	.global	VDEC_CID_GetVFMWInfo
	.type	VDEC_CID_GetVFMWInfo, %function
VDEC_CID_GetVFMWInfo:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, #0	@ tmp139,
	mov	r6, r0	@ ChanID, ChanID
	str	r4, [sp, #20]	@ tmp139, RefNum
	str	r4, [sp, #16]	@ tmp139, ReadNum
	str	r4, [sp, #12]	@ tmp139, NewNum
	beq	.L56	@,
	movw	lr, #:lower16:s_pFspInst	@ tmp146,
	movt	lr, #:upper16:s_pFspInst	@ tmp146,
	add	r1, sp, #20	@,,
	add	r2, sp, #16	@,,
	add	r3, sp, #12	@,,
	ldr	r7, [lr, r0, asl #2]	@ pFsp, s_pFspInst
	bl	VCTRL_GetChanImgNum	@
	movw	ip, #:lower16:76696	@ tmp154,
	movw	r3, #:lower16:s_DnrChan	@ tmp156,
	movt	ip, #:upper16:76696	@ tmp154,
	movt	r3, #:upper16:s_DnrChan	@ tmp156,
	ldr	r2, [sp, #20]	@ RefNum, RefNum
	mov	r0, r4	@ D.36528, tmp139
	mla	r6, ip, r6, r3	@ tmp155, tmp154, ChanID, tmp156
	str	r2, [r5, #0]	@ RefNum, <variable>.u32RefNum
	ldrb	r1, [r7, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	strb	r1, [r5, #8]	@ <variable>.s32DecFsNum, <variable>.s8DecFsNum
	ldr	r3, [r6, #448]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r3, [r5, #4]	@ <variable>.s32ValidImgNum, <variable>.s32DisFsNum
.L54:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L56:
	mov	r0, r5	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L57	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #1017	@,
	movw	ip, #:lower16:.LC4	@ tmp145,
	movt	ip, #:upper16:.LC4	@ tmp145,
	str	ip, [sp, #0]	@ tmp145,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36528,
	b	.L54	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR1+336
	.fnend
	.size	VDEC_CID_GetVFMWInfo, .-VDEC_CID_GetVFMWInfo
	.align	2
	.global	VDEC_CID_FrameDNR
	.type	VDEC_CID_FrameDNR, %function
VDEC_CID_FrameDNR:
	.fnstart
.LFB1695:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L64	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r2, r4	@, pArgs
	mov	r1, #1	@,
	mov	r0, r5	@, ChanID
	bl	DNR_SetDataSource	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L61:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L64:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L65	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #981	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L61	@
.L66:
	.align	2
.L65:
	.word	.LANCHOR1+360
	.fnend
	.size	VDEC_CID_FrameDNR, .-VDEC_CID_FrameDNR
	.align	2
	.global	VDEC_CID_RWZBState
	.type	VDEC_CID_RWZBState, %function
VDEC_CID_RWZBState:
	.fnstart
.LFB1691:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L71	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:s_DnrChan	@ tmp141,
	movw	r2, #:lower16:76696	@ tmp144,
	movt	r3, #:upper16:s_DnrChan	@ tmp141,
	movt	r2, #:upper16:76696	@ tmp144,
	ldr	r1, [r4, #0]	@ tmp147,* pArgs
	mla	r5, r2, r5, r3	@ tmp145, tmp144, ChanID, tmp141
	str	r1, [r5, #24]	@ tmp147, <variable>.userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L69:
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L71:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L72	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #885	@,
	movw	ip, #:lower16:.LC4	@ tmp139,
	movt	ip, #:upper16:.LC4	@ tmp139,
	str	ip, [sp, #0]	@ tmp139,
	bl	dprint_vfmw	@
	b	.L69	@
.L73:
	.align	2
.L72:
	.word	.LANCHOR1+380
	.fnend
	.size	VDEC_CID_RWZBState, .-VDEC_CID_RWZBState
	.align	2
	.global	VDEC_CID_GetCapability
	.type	VDEC_CID_GetCapability, %function
VDEC_CID_GetCapability:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L78	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36034,
.L76:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L78:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L79	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #471	@,
	movw	ip, #:lower16:.LC4	@ tmp141,
	movt	ip, #:upper16:.LC4	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36034,
	b	.L76	@
.L80:
	.align	2
.L79:
	.word	.LANCHOR1+400
	.fnend
	.size	VDEC_CID_GetCapability, .-VDEC_CID_GetCapability
	.align	2
	.global	VDEC_CID_SetCTRLInfo
	.type	VDEC_CID_SetCTRLInfo, %function
VDEC_CID_SetCTRLInfo:
	.fnstart
.LFB1694:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L87	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	DNR_ConfigBackOptimizeFlag	@
	cmp	r0, #0	@,
	beq	.L88	@,
.L84:
	mvn	r4, #0	@ ret,
.L85:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L83:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L88:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	subs	r4, r0, #0	@ ret,
	beq	.L85	@,
	b	.L84	@
.L87:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L89	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #953	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	dprint_vfmw	@
	b	.L83	@
.L90:
	.align	2
.L89:
	.word	.LANCHOR1+424
	.fnend
	.size	VDEC_CID_SetCTRLInfo, .-VDEC_CID_SetCTRLInfo
	.align	2
	.global	VDEC_CID_SetTrickMode
	.type	VDEC_CID_SetTrickMode, %function
VDEC_CID_SetTrickMode:
	.fnstart
.LFB1693:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L98	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L99	@,
.L94:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	cmp	r0, #0	@ ret.1009
	moveq	r4, r0	@, ret.1009, ret.1009
	mvnne	r4, #0	@, ret.1009,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L93:
	mov	r0, r4	@, ret.1009
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L99:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, .L100	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r3, #936	@,
	subs	ip, r0, #0	@ ret,
	mov	r0, #22	@,
	mvnne	ip, #0	@, ret,
	str	ip, [sp, #0]	@ ret,
	bl	dprint_vfmw	@
	b	.L94	@
.L98:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L100	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #925	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	mvn	r4, #0	@ ret.1009,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	b	.L93	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR1+448
	.fnend
	.size	VDEC_CID_SetTrickMode, .-VDEC_CID_SetTrickMode
	.align	2
	.global	VDEC_CID_ResetChanWithOption
	.type	VDEC_CID_ResetChanWithOption, %function
VDEC_CID_ResetChanWithOption:
	.fnstart
.LFB1682:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L107	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L104:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L107:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L108	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #702	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L104	@
.L109:
	.align	2
.L108:
	.word	.LANCHOR1+472
	.fnend
	.size	VDEC_CID_ResetChanWithOption, .-VDEC_CID_ResetChanWithOption
	.align	2
	.global	VDEC_CID_SetPTSToSeek
	.type	VDEC_CID_SetPTSToSeek, %function
VDEC_CID_SetPTSToSeek:
	.fnstart
.LFB1692:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ ChanID, ChanID
	beq	.L116	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	add	r1, sp, #8	@,,
	mov	r2, #1	@ tmp143,
	mov	r3, #0	@ tmp144,
	str	r2, [sp, #8]	@ tmp143, option.s32KeepBS
	str	r3, [sp, #12]	@ tmp144, option.s32KeepSPSPPS
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	beq	.L117	@,
.L113:
	mvn	r4, #0	@ ret,
.L114:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L112:
	mov	r0, r4	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L117:
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r4, r0, #0	@ ret,
	beq	.L114	@,
	b	.L113	@
.L116:
	mov	r0, r5	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L118	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #901	@,
	movw	ip, #:lower16:.LC4	@ tmp141,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	dprint_vfmw	@
	b	.L112	@
.L119:
	.align	2
.L118:
	.word	.LANCHOR1+504
	.fnend
	.size	VDEC_CID_SetPTSToSeek, .-VDEC_CID_SetPTSToSeek
	.align	2
	.global	VDEC_CID_SetDiscardPicParam
	.type	VDEC_CID_SetDiscardPicParam, %function
VDEC_CID_SetDiscardPicParam:
	.fnstart
.LFB1690:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L124	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetDiscardPicParam	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L122:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L124:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L125	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #871	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L122	@
.L126:
	.align	2
.L125:
	.word	.LANCHOR1+528
	.fnend
	.size	VDEC_CID_SetDiscardPicParam, .-VDEC_CID_SetDiscardPicParam
	.align	2
	.global	VDEC_CID_GetChanIDByMem
	.type	VDEC_CID_GetChanIDByMem, %function
VDEC_CID_GetChanIDByMem:
	.fnstart
.LFB1689:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L133	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.36369,
	str	r0, [r4, #0]	@ D.36369,* pArgs
	moveq	r4, r0	@, ret, D.36369
	movne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L129:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L133:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L134	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #855	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	b	.L129	@
.L135:
	.align	2
.L134:
	.word	.LANCHOR1+556
	.fnend
	.size	VDEC_CID_GetChanIDByMem, .-VDEC_CID_GetChanIDByMem
	.align	2
	.global	VDEC_CID_GetChanMemAddr
	.type	VDEC_CID_GetChanMemAddr, %function
VDEC_CID_GetChanMemAddr:
	.fnstart
.LFB1688:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L143	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	add	r1, sp, #8	@,,
	bl	VCTRL_GetChanMemInfo	@
	subs	r5, r0, #0	@ ret,
	bne	.L144	@,
	ldr	r2, [sp, #16]	@ D.36347, MemRec.PhyAddr
	str	r2, [r4, #0]	@ D.36347, <variable>.PhyAddr
	ldr	r0, [sp, #12]	@ D.36348, MemRec.VirAddr
	cmp	r0, #0	@ D.36348,
	str	r0, [r4, #4]	@ D.36348, <variable>.VirAddr
	ldr	r3, [sp, #20]	@ MemRec.Length, MemRec.Length
	str	r3, [r4, #8]	@ MemRec.Length, <variable>.Length
	beq	.L140	@,
	cmp	r2, #0	@ D.36347,
	beq	.L140	@,
.L141:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L138:
	mov	r0, r5	@, ret
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L140:
	mvn	r5, #0	@ ret,
	b	.L141	@
.L144:
	mvn	r2, #0	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L138	@
.L143:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L145	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #813	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	mvn	r5, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	b	.L138	@
.L146:
	.align	2
.L145:
	.word	.LANCHOR1+580
	.fnend
	.size	VDEC_CID_GetChanMemAddr, .-VDEC_CID_GetChanMemAddr
	.align	2
	.global	VDEC_CID_GetStreamSize
	.type	VDEC_CID_GetStreamSize, %function
VDEC_CID_GetStreamSize:
	.fnstart
.LFB1687:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L151	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetStreamSize	@
	mov	r4, r0	@ ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L149:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L151:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L152	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #795	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L149	@
.L153:
	.align	2
.L152:
	.word	.LANCHOR1+604
	.fnend
	.size	VDEC_CID_GetStreamSize, .-VDEC_CID_GetStreamSize
	.align	2
	.global	VDEC_CID_CfgExtra
	.type	VDEC_CID_CfgExtra, %function
VDEC_CID_CfgExtra:
	.fnstart
.LFB1686:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L158	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36314,
.L156:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L158:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L159	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, #780	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	movt	ip, #:upper16:.LC4	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36314,
	b	.L156	@
.L160:
	.align	2
.L159:
	.word	.LANCHOR1+628
	.fnend
	.size	VDEC_CID_CfgExtra, .-VDEC_CID_CfgExtra
	.align	2
	.global	VDEC_CID_ReleaseStream
	.type	VDEC_CID_ReleaseStream, %function
VDEC_CID_ReleaseStream:
	.fnstart
.LFB1685:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseStream	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_ReleaseStream, .-VDEC_CID_ReleaseStream
	.align	2
	.global	VDEC_CID_GetImageIntf
	.type	VDEC_CID_GetImageIntf, %function
VDEC_CID_GetImageIntf:
	.fnstart
.LFB1684:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L170	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	movw	r0, #:lower16:DNR_ReceiveImage	@ tmp146,
	movw	r3, #:lower16:DNR_ReleaseImage	@ tmp147,
	movt	r0, #:upper16:DNR_ReceiveImage	@ tmp146,
	movt	r3, #:upper16:DNR_ReleaseImage	@ tmp147,
	stmib	r4, {r0, r3}	@ phole stm
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36287,
.L166:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L170:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L171	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, #732	@,
	movw	ip, #:lower16:.LC4	@ tmp142,
	movt	ip, #:upper16:.LC4	@ tmp142,
	str	ip, [sp, #0]	@ tmp142,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36287,
	b	.L166	@
.L172:
	.align	2
.L171:
	.word	.LANCHOR1+648
	.fnend
	.size	VDEC_CID_GetImageIntf, .-VDEC_CID_GetImageIntf
	.align	2
	.global	VDEC_CID_SetStreamIntf
	.type	VDEC_CID_SetStreamIntf, %function
VDEC_CID_SetStreamIntf:
	.fnstart
.LFB1683:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L178	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetStreamInterface	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L175:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L178:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L179	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #717	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L175	@
.L180:
	.align	2
.L179:
	.word	.LANCHOR1+672
	.fnend
	.size	VDEC_CID_SetStreamIntf, .-VDEC_CID_SetStreamIntf
	.align	2
	.global	VDEC_CID_ResetChan
	.type	VDEC_CID_ResetChan, %function
VDEC_CID_ResetChan:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_ResetChan, .-VDEC_CID_ResetChan
	.align	2
	.global	VDEC_CID_StopChan
	.type	VDEC_CID_StopChan, %function
VDEC_CID_StopChan:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_StopChan, .-VDEC_CID_StopChan
	.align	2
	.global	VDEC_CID_StartChanWithOption
	.type	VDEC_CID_StartChanWithOption, %function
VDEC_CID_StartChanWithOption:
	.fnstart
.LFB1679:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L192	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChanWithOption	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L189:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L192:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L193	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #657	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L189	@
.L194:
	.align	2
.L193:
	.word	.LANCHOR1+696
	.fnend
	.size	VDEC_CID_StartChanWithOption, .-VDEC_CID_StartChanWithOption
	.align	2
	.global	VDEC_CID_StartChan
	.type	VDEC_CID_StartChan, %function
VDEC_CID_StartChan:
	.fnstart
.LFB1678:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_EnableEsBuf	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_StartChan, .-VDEC_CID_StartChan
	.align	2
	.global	VDEC_CID_CfgChan
	.type	VDEC_CID_CfgChan, %function
VDEC_CID_CfgChan:
	.fnstart
.LFB1677:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ ChanID, ChanID
	beq	.L203	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigChan	@
	cmp	r0, #0	@ ret
	moveq	r5, r0	@, ret, ret
	mvnne	r5, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_LoadDspCode	@
.L200:
	mov	r0, r5	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L203:
	mov	r0, r5	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L204	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #623	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r5, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L200	@
.L205:
	.align	2
.L204:
	.word	.LANCHOR1+728
	.fnend
	.size	VDEC_CID_CfgChan, .-VDEC_CID_CfgChan
	.align	2
	.global	VDEC_CID_GetChanCfg
	.type	VDEC_CID_GetChanCfg, %function
VDEC_CID_GetChanCfg:
	.fnstart
.LFB1676:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L211	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L208:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L211:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L212	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, #608	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L208	@
.L213:
	.align	2
.L212:
	.word	.LANCHOR1+748
	.fnend
	.size	VDEC_CID_GetChanCfg, .-VDEC_CID_GetChanCfg
	.align	2
	.global	VDEC_CID_DestroyChanWithOption
	.type	VDEC_CID_DestroyChanWithOption, %function
VDEC_CID_DestroyChanWithOption:
	.fnstart
.LFB1675:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_DestroyChanWithOption, .-VDEC_CID_DestroyChanWithOption
	.align	2
	.global	VDEC_CID_DestroyChan
	.type	VDEC_CID_DestroyChan, %function
VDEC_CID_DestroyChan:
	.fnstart
.LFB1674:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r1	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_DestroyChan	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_CID_DestroyChan, .-VDEC_CID_DestroyChan
	.align	2
	.global	VDEC_CID_CreateChanWithOption
	.type	VDEC_CID_CreateChanWithOption, %function
VDEC_CID_CreateChanWithOption:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L225	@,
	ldr	r0, [r4, #0]	@,* pArgs
	mov	r2, #2	@,
	ldr	r1, [r4, #4]	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.1458,
	str	r0, [r4, #0]	@ ret.1458,* pArgs
	movge	r0, #0	@, ret,
	mvnlt	r0, #0	@, ret,
.L222:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L225:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L226	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #570	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L222	@
.L227:
	.align	2
.L226:
	.word	.LANCHOR1+768
	.fnend
	.size	VDEC_CID_CreateChanWithOption, .-VDEC_CID_CreateChanWithOption
	.align	2
	.global	VDEC_CID_CreateChan
	.type	VDEC_CID_CreateChan, %function
VDEC_CID_CreateChan:
	.fnstart
.LFB1672:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L233	@,
	mov	r1, r4	@ tmp145, pArgs
	ldr	r0, [r1], #4	@,
	bl	VCTRL_CreateChan	@
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r5, r0	@ ret.1482,
	mov	r0, #2	@,
	mov	r2, r5	@, ret.1482
	bl	dprint_vfmw	@
	cmp	r5, #0	@ ret.1482,
	str	r5, [r4, #0]	@ ret.1482,* pArgs
	movge	r0, #0	@, ret,
	mvnlt	r0, #0	@, ret,
.L230:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L233:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L234	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #549	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L230	@
.L235:
	.align	2
.L234:
	.word	.LANCHOR1+800
	.fnend
	.size	VDEC_CID_CreateChan, .-VDEC_CID_CreateChan
	.align	2
	.global	VDEC_CID_GetChanDetailMemSizeWithOption
	.type	VDEC_CID_GetChanDetailMemSizeWithOption, %function
VDEC_CID_GetChanDetailMemSizeWithOption:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L242	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [r4, #4]	@,
	add	r2, sp, #8	@,,
	mov	r3, #1	@,
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r5, r0, #0	@ D.36084,
	ldreq	r0, [sp, #8]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	mvnne	r5, #0	@ ret,
	ldreq	r1, [sp, #12]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	ldreq	r3, [sp, #16]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	ldreq	r2, [sp, #20]	@ DetailMemSize.PmvDetailMem, DetailMemSize.PmvDetailMem
	streq	r0, [r4, #0]	@ DetailMemSize.VdhDetailMem,* pArgs
	streq	r1, [r4, #4]	@ DetailMemSize.ScdDetailMem,
	streq	r2, [r4, #12]	@ DetailMemSize.PmvDetailMem,
	streq	r3, [r4, #8]	@ DetailMemSize.ChanCtxDetailMem,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L238:
	mov	r0, r5	@, ret
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L242:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L243	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #519	@,
	movw	ip, #:lower16:.LC4	@ tmp144,
	mvn	r5, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp144,
	str	ip, [sp, #0]	@ tmp144,
	bl	dprint_vfmw	@
	b	.L238	@
.L244:
	.align	2
.L243:
	.word	.LANCHOR1+820
	.fnend
	.size	VDEC_CID_GetChanDetailMemSizeWithOption, .-VDEC_CID_GetChanDetailMemSizeWithOption
	.align	2
	.global	VDEC_CID_GetChanMemSize
	.type	VDEC_CID_GetChanMemSize, %function
VDEC_CID_GetChanMemSize:
	.fnstart
.LFB1670:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r2, r0	@ ChanID, ChanID
	mov	r4, r1	@ pArgs, pArgs
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pArgs,
	beq	.L251	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	add	r1, sp, #20	@,,
	add	r2, sp, #8	@,,
	bl	VCTRL_GetChanMemSize	@
	subs	r5, r0, #0	@ D.36053,
	mvnne	r5, #0	@ ret,
	beq	.L252	@,
.L249:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L247:
	mov	r0, r5	@, ret
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, pc}
.L252:
	ldr	lr, [sp, #20]	@ VdmMem, VdmMem
	ldr	r2, [sp, #8]	@ ScdMem, ScdMem
	ldr	r1, [sp, #16]	@ ScdMem, ScdMem
	ldr	r3, [sp, #24]	@ VdmMem, VdmMem
	add	r0, r2, lr	@ tmp150, ScdMem, VdmMem
	ldr	ip, [sp, #12]	@ ScdMem, ScdMem
	ldr	lr, [sp, #28]	@ VdmMem, VdmMem
	add	r3, ip, r3	@ tmp153, ScdMem, VdmMem
	str	r0, [r4, #0]	@ tmp150, <variable>.MinMemSize
	add	r2, r1, lr	@ tmp156, ScdMem, VdmMem
	str	r3, [r4, #4]	@ tmp153, <variable>.NormalMemSize
	str	r2, [r4, #8]	@ tmp156, <variable>.FluentMemSize
	b	.L249	@
.L251:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L253	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, #488	@,
	movw	ip, #:lower16:.LC4	@ tmp143,
	mvn	r5, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp143,
	str	ip, [sp, #0]	@ tmp143,
	bl	dprint_vfmw	@
	b	.L247	@
.L254:
	.align	2
.L253:
	.word	.LANCHOR1+860
	.fnend
	.size	VDEC_CID_GetChanMemSize, .-VDEC_CID_GetChanMemSize
	.align	2
	.global	VDEC_CID_PutUsrDecFrame
	.type	VDEC_CID_PutUsrDecFrame, %function
VDEC_CID_PutUsrDecFrame:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L260	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_PutUsrdecFrame	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L257:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L260:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L261	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, #456	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	b	.L257	@
.L262:
	.align	2
.L261:
	.word	.LANCHOR1+884
	.fnend
	.size	VDEC_CID_PutUsrDecFrame, .-VDEC_CID_PutUsrDecFrame
	.align	2
	.global	VDEC_CID_GetUsrDecFrame
	.type	VDEC_CID_GetUsrDecFrame, %function
VDEC_CID_GetUsrDecFrame:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L268	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	add	r1, sp, #8	@,,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r1, [sp, #8]	@ stMem.PhyAddr, stMem.PhyAddr
	str	r1, [r4, #0]	@ stMem.PhyAddr,* pArgs
	ldr	r3, [sp, #16]	@ stMem.Length, stMem.Length
	str	r3, [r4, #4]	@ stMem.Length,
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L265:
	mov	r0, r4	@, ret
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L268:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L269	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #438	@,
	movw	ip, #:lower16:.LC4	@ tmp141,
	mvn	r4, #0	@ ret,
	movt	ip, #:upper16:.LC4	@ tmp141,
	str	ip, [sp, #0]	@ tmp141,
	bl	dprint_vfmw	@
	b	.L265	@
.L270:
	.align	2
.L269:
	.word	.LANCHOR1+908
	.fnend
	.size	VDEC_CID_GetUsrDecFrame, .-VDEC_CID_GetUsrDecFrame
	.align	2
	.global	VDEC_CID_GetChanState
	.type	VDEC_CID_GetChanState, %function
VDEC_CID_GetChanState:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ ChanID, ChanID
	beq	.L275	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanState	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.35987,
.L273:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L275:
	mov	r0, r4	@, pArgs
	movw	r1, #:lower16:.LC3	@,
	ldr	r2, .L276	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #422	@,
	movw	ip, #:lower16:.LC4	@ tmp140,
	movt	ip, #:upper16:.LC4	@ tmp140,
	str	ip, [sp, #0]	@ tmp140,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35987,
	b	.L273	@
.L277:
	.align	2
.L276:
	.word	.LANCHOR1+932
	.fnend
	.size	VDEC_CID_GetChanState, .-VDEC_CID_GetChanState
	.align	2
	.global	VDEC_Exit
	.type	VDEC_Exit, %function
VDEC_Exit:
	.fnstart
.LFB1665:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	subs	r5, r0, #0	@ ret,
	bne	.L279	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.460, g_VfmwInitCount,
	str	r3, [r4, #4]	@ g_VfmwInitCount.460, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.460,
	ble	.L280	@,
	bl	OSAL_UP	@
	mov	r0, r5	@ D.35969, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L280:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret.1620,
	bl	MEM_ManagerClearOperation	@
	str	r5, [r4, #0]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret.1620,
	moveq	r0, r6	@ D.35969, ret.1620
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L279:
	mvn	r0, #0	@ D.35969,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_Exit, .-VDEC_Exit
	.align	2
	.global	VDEC_SpinLockInit
	.type	VDEC_SpinLockInit, %function
VDEC_SpinLockInit:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQInit	@
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	ldmfd	sp!, {r4, lr}	@
	b	OSAL_SpinLockIRQInit	@
	.fnend
	.size	VDEC_SpinLockInit, .-VDEC_SpinLockInit
	.align	2
	.global	VDEC_InitWithOperation
	.type	VDEC_InitWithOperation, %function
VDEC_InitWithOperation:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pArgs, pArgs
	bl	OSAL_DOWN_INTERRUPTIBLE	@
	cmp	r5, #0	@ pArgs,
	beq	.L296	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp241,
	movt	r4, #:upper16:.LANCHOR0	@ tmp241,
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L297	@,
	mov	r1, #8	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	movw	r6, #:lower16:SCD_OpenHardware	@ tmp163,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_RecordLock	@,
	movt	r0, #:upper16:g_RecordLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLock	@,
	movt	r0, #:upper16:g_SpinLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLock_fsp	@,
	movt	r0, #:upper16:g_SpinLock_fsp	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLockIsr_Image2D	@,
	movt	r0, #:upper16:g_SpinLockIsr_Image2D	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_ActivateLock	@,
	movt	r0, #:upper16:g_ActivateLock	@,
	bl	__memzero	@
	mov	r1, #8	@,
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	__memzero	@
	movw	r3, #:lower16:AcceleratorCharacter	@ tmp156,
	movt	r3, #:upper16:AcceleratorCharacter	@ tmp156,
	mov	r1, #0	@ tmp157,
	movt	r6, #:upper16:SCD_OpenHardware	@ tmp163,
	movw	r0, #:lower16:VDM_OpenHardware	@ tmp159,
	str	r1, [r3, #0]	@ tmp157, AcceleratorCharacter
	movt	r0, #:upper16:VDM_OpenHardware	@ tmp159,
	str	r6, [r4, #16]	@ tmp163, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	ip, #:lower16:VDM_CloseHardware	@ tmp161,
	str	r0, [r4, #8]	@ tmp159, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	movt	ip, #:upper16:VDM_CloseHardware	@ tmp161,
	movw	r2, #:lower16:SCD_CloseHardware	@ tmp165,
	str	ip, [r4, #12]	@ tmp161, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	movt	r2, #:upper16:SCD_CloseHardware	@ tmp165,
	movw	r1, #:lower16:BPD_OpenHardware	@ tmp167,
	str	r2, [r4, #20]	@ tmp165, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	movt	r1, #:upper16:BPD_OpenHardware	@ tmp167,
	movw	r0, #:lower16:VDMHAL_V200R004_GetHalMemSize	@ tmp169,
	str	r1, [r4, #24]	@ tmp167, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	movt	r0, #:upper16:VDMHAL_V200R004_GetHalMemSize	@ tmp169,
	movw	r3, #:lower16:VDMHAL_V200R004_OpenHAL	@ tmp171,
	str	r0, [r4, #32]	@ tmp169, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movt	r3, #:upper16:VDMHAL_V200R004_OpenHAL	@ tmp171,
	movw	ip, #:lower16:VDMHAL_V200R004_CloseHAL	@ tmp173,
	str	r3, [r4, #36]	@ tmp171, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	movt	ip, #:upper16:VDMHAL_V200R004_CloseHAL	@ tmp173,
	movw	r6, #:lower16:VDMHAL_V200R004_ArrangeMem	@ tmp175,
	str	ip, [r4, #40]	@ tmp173, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movt	r6, #:upper16:VDMHAL_V200R004_ArrangeMem	@ tmp175,
	movw	r2, #:lower16:VDMHAL_V200R004_ResetVdm	@ tmp177,
	str	r6, [r4, #44]	@ tmp175, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r2, #:upper16:VDMHAL_V200R004_ResetVdm	@ tmp177,
	movw	r1, #:lower16:VDMHAL_V200R400_GetPmvSize	@ tmp179,
	str	r2, [r4, #48]	@ tmp177, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	movt	r1, #:upper16:VDMHAL_V200R400_GetPmvSize	@ tmp179,
	movw	r0, #:lower16:VDMHAL_V200R004_GlbReset	@ tmp181,
	str	r1, [r4, #108]	@ tmp179, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	movt	r0, #:upper16:VDMHAL_V200R004_GlbReset	@ tmp181,
	movw	r3, #:lower16:VDMHAL_V200R004_ClearIntState	@ tmp183,
	str	r0, [r4, #52]	@ tmp181, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	movt	r3, #:upper16:VDMHAL_V200R004_ClearIntState	@ tmp183,
	movw	ip, #:lower16:VDMHAL_V200R004_MaskInt	@ tmp185,
	str	r3, [r4, #56]	@ tmp183, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	movt	ip, #:upper16:VDMHAL_V200R004_MaskInt	@ tmp185,
	movw	r6, #:lower16:VDMHAL_V200R004_EnableInt	@ tmp187,
	str	ip, [r4, #60]	@ tmp185, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movt	r6, #:upper16:VDMHAL_V200R004_EnableInt	@ tmp187,
	movw	r2, #:lower16:VDMHAL_V200R004_CheckReg	@ tmp189,
	str	r6, [r4, #64]	@ tmp187, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	movt	r2, #:upper16:VDMHAL_V200R004_CheckReg	@ tmp189,
	movw	r1, #:lower16:VDMHAL_V200R004_StartHwRepair	@ tmp191,
	str	r2, [r4, #68]	@ tmp189, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	movt	r1, #:upper16:VDMHAL_V200R004_StartHwRepair	@ tmp191,
	movw	r0, #:lower16:VDMHAL_V200R004_StartHwDecode	@ tmp193,
	str	r1, [r4, #72]	@ tmp191, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	movt	r0, #:upper16:VDMHAL_V200R004_StartHwDecode	@ tmp193,
	movw	r3, #:lower16:VDMHAL_V200R004_PrepareDec	@ tmp195,
	str	r0, [r4, #76]	@ tmp193, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movt	r3, #:upper16:VDMHAL_V200R004_PrepareDec	@ tmp195,
	movw	ip, #:lower16:VDMHAL_V200R004_IsVdmReady	@ tmp197,
	str	r3, [r4, #80]	@ tmp195, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	movt	ip, #:upper16:VDMHAL_V200R004_IsVdmReady	@ tmp197,
	movw	r6, #:lower16:VDMHAL_V200R004_IsVdmRun	@ tmp199,
	str	ip, [r4, #84]	@ tmp197, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movt	r6, #:upper16:VDMHAL_V200R004_IsVdmRun	@ tmp199,
	movw	r2, #:lower16:VDMHAL_V200R004_PrepareRepair	@ tmp201,
	str	r6, [r4, #88]	@ tmp199, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	movt	r2, #:upper16:VDMHAL_V200R004_PrepareRepair	@ tmp201,
	movw	r1, #:lower16:VDMHAL_V200R004_MakeDecReport	@ tmp203,
	str	r2, [r4, #92]	@ tmp201, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r1, #:upper16:VDMHAL_V200R004_MakeDecReport	@ tmp203,
	movw	r0, #:lower16:VDMHAL_V200R004_UpdateHardwareInfo	@ tmp205,
	str	r1, [r4, #96]	@ tmp203, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	movt	r0, #:upper16:VDMHAL_V200R004_UpdateHardwareInfo	@ tmp205,
	movw	r3, #:lower16:VDMHAL_V200R004_GetCharacter	@ tmp207,
	str	r0, [r4, #100]	@ tmp205, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	movt	r3, #:upper16:VDMHAL_V200R004_GetCharacter	@ tmp207,
	movw	ip, #:lower16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp209,
	str	r3, [r4, #28]	@ tmp207, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	movt	ip, #:upper16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp209,
	movw	r6, #:lower16:DNR_OpenHardware	@ tmp211,
	str	ip, [r4, #104]	@ tmp209, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	movt	r6, #:upper16:DNR_OpenHardware	@ tmp211,
	movw	r2, #:lower16:DNRHAL_V200_Init	@ tmp213,
	str	r6, [r4, #112]	@ tmp211, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	movt	r2, #:upper16:DNRHAL_V200_Init	@ tmp213,
	movw	r1, #:lower16:DNRHAL_V200_CfgReg	@ tmp215,
	str	r2, [r4, #116]	@ tmp213, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	movt	r1, #:upper16:DNRHAL_V200_CfgReg	@ tmp215,
	movw	r0, #:lower16:DNRHAL_V200_Reset	@ tmp217,
	str	r1, [r4, #120]	@ tmp215, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	movt	r0, #:upper16:DNRHAL_V200_Reset	@ tmp217,
	movw	r3, #:lower16:DNRHAL_V200_Start	@ tmp219,
	str	r0, [r4, #124]	@ tmp217, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	movt	r3, #:upper16:DNRHAL_V200_Start	@ tmp219,
	movw	ip, #:lower16:DNRHAL_V200_ClearIntState	@ tmp221,
	str	r3, [r4, #128]	@ tmp219, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movt	ip, #:upper16:DNRHAL_V200_ClearIntState	@ tmp221,
	movw	r6, #:lower16:DNRHAL_V200_MaskInt	@ tmp223,
	str	ip, [r4, #132]	@ tmp221, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	movt	r6, #:upper16:DNRHAL_V200_MaskInt	@ tmp223,
	movw	r2, #:lower16:DNRHAL_V200_EnableInt	@ tmp225,
	str	r6, [r4, #136]	@ tmp223, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	movt	r2, #:upper16:DNRHAL_V200_EnableInt	@ tmp225,
	str	r2, [r4, #140]	@ tmp225, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.35942, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.35942,
	beq	.L289	@,
	blx	r3	@ D.35942
.L289:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r6, r0	@ ret,
	mov	r0, #2	@,
	mov	r2, r6	@, ret
	bl	dprint_vfmw	@
	cmp	r6, #0	@ ret,
	ldr	r0, [r4, #52]	@ D.35951, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	moveq	r3, #1	@ tmp229,
	movne	r3, #0	@ tmp233,
	cmp	r0, #0	@ D.35951,
	str	r3, [r4, #4]	@ tmp233, g_VfmwInitCount
	str	r3, [r4, #0]	@ tmp233, g_VfmwEnableFlag
	beq	.L292	@,
	blx	r0	@ D.35951
.L293:
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret,
	moveq	r0, r6	@, D.35896, ret
	mvnne	r0, #0	@, D.35896,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L297:
	ldr	r1, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	add	r0, r1, #1	@ tmp145, g_VfmwInitCount,
	str	r0, [r4, #4]	@ tmp145, g_VfmwInitCount
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	mov	r0, #0	@ D.35896,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L292:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #382	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	b	.L293	@
.L296:
	bl	OSAL_UP	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35896,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDEC_InitWithOperation, .-VDEC_InitWithOperation
	.align	2
	.global	VDEC_Init
	.type	VDEC_Init, %function
VDEC_Init:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ VdecCallback, VdecCallback
	mov	r1, #16	@,
	mov	r0, sp	@,
	mov	r4, sp	@ tmp137,
	bl	__memzero	@
	mov	r0, sp	@,
	mov	r3, #0	@ tmp138,
	str	r5, [sp, #4]	@ VdecCallback, Args.VdecCallback
	str	r3, [sp, #12]	@ tmp138, Args.mem_free
	str	r3, [sp, #8]	@ tmp138, Args.mem_malloc
	bl	VDEC_InitWithOperation	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VDEC_Init, .-VDEC_Init
	.align	2
	.global	VDEC_ExitModule
	.type	VDEC_ExitModule, %function
VDEC_ExitModule:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_proc_exit	@
	.fnend
	.size	VDEC_ExitModule, .-VDEC_ExitModule
	.align	2
	.global	VDEC_OpenModule
	.type	VDEC_OpenModule, %function
VDEC_OpenModule:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	OSAL_SEMA_INTIT	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_proc_init	@
	.fnend
	.size	VDEC_OpenModule, .-VDEC_OpenModule
	.global	g_VfmwEnableFlag
	.global	g_VfmwInitCount
	.global	g_chipID
	.global	g_ChipMaxWidth
	.global	g_ChipMaxHeight
	.global	g_vdm_hal_fun_ptr
	.global	g_dnr_hal_fun_ptr
	.global	g_FrameRate
	.global	g_LastFrameRate
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	g_VDEC_CID_HandlerTable, %object
	.size	g_VDEC_CID_HandlerTable, 280
g_VDEC_CID_HandlerTable:
@ eCmdID:
	.word	10
@ pHandler:
	.word	VDEC_CID_GetChanState
@ eCmdID:
	.word	25
@ pHandler:
	.word	VDEC_CID_GetUsrDecFrame
@ eCmdID:
	.word	26
@ pHandler:
	.word	VDEC_CID_PutUsrDecFrame
@ eCmdID:
	.word	1
@ pHandler:
	.word	VDEC_CID_GetCapability
@ eCmdID:
	.word	18
@ pHandler:
	.word	VDEC_CID_GetChanMemSize
@ eCmdID:
	.word	19
@ pHandler:
	.word	VDEC_CID_GetChanDetailMemSizeWithOption
@ eCmdID:
	.word	4
@ pHandler:
	.word	VDEC_CID_CreateChan
@ eCmdID:
	.word	5
@ pHandler:
	.word	VDEC_CID_CreateChanWithOption
@ eCmdID:
	.word	6
@ pHandler:
	.word	VDEC_CID_DestroyChan
@ eCmdID:
	.word	7
@ pHandler:
	.word	VDEC_CID_DestroyChanWithOption
@ eCmdID:
	.word	8
@ pHandler:
	.word	VDEC_CID_GetChanCfg
@ eCmdID:
	.word	9
@ pHandler:
	.word	VDEC_CID_CfgChan
@ eCmdID:
	.word	11
@ pHandler:
	.word	VDEC_CID_StartChan
@ eCmdID:
	.word	36
@ pHandler:
	.word	VDEC_CID_StartChanWithOption
@ eCmdID:
	.word	12
@ pHandler:
	.word	VDEC_CID_StopChan
@ eCmdID:
	.word	13
@ pHandler:
	.word	VDEC_CID_ResetChan
@ eCmdID:
	.word	23
@ pHandler:
	.word	VDEC_CID_ResetChanWithOption
@ eCmdID:
	.word	14
@ pHandler:
	.word	VDEC_CID_SetStreamIntf
@ eCmdID:
	.word	15
@ pHandler:
	.word	VDEC_CID_GetImageIntf
@ eCmdID:
	.word	22
@ pHandler:
	.word	VDEC_CID_ReleaseStream
@ eCmdID:
	.word	24
@ pHandler:
	.word	VDEC_CID_CfgExtra
@ eCmdID:
	.word	16
@ pHandler:
	.word	VDEC_CID_GetStreamSize
@ eCmdID:
	.word	20
@ pHandler:
	.word	VDEC_CID_GetChanMemAddr
@ eCmdID:
	.word	21
@ pHandler:
	.word	VDEC_CID_GetChanIDByMem
@ eCmdID:
	.word	28
@ pHandler:
	.word	VDEC_CID_SetDiscardPicParam
@ eCmdID:
	.word	39
@ pHandler:
	.word	VDEC_CID_RWZBState
@ eCmdID:
	.word	32
@ pHandler:
	.word	VDEC_CID_SetPTSToSeek
@ eCmdID:
	.word	33
@ pHandler:
	.word	VDEC_CID_SetTrickMode
@ eCmdID:
	.word	34
@ pHandler:
	.word	VDEC_CID_SetCTRLInfo
@ eCmdID:
	.word	29
@ pHandler:
	.word	VDEC_CID_FrameDNR
@ eCmdID:
	.word	35
@ pHandler:
	.word	VDEC_CID_SetFrameRate
@ eCmdID:
	.word	37
@ pHandler:
	.word	VDEC_CID_GetSCDBufferVirAddr
@ eCmdID:
	.word	38
@ pHandler:
	.word	VDEC_CID_GetVFMWInfo
@ eCmdID:
	.word	40
@ pHandler:
	.word	VDEC_CID_ReportDmxBufRls
@ eCmdID:
	.word	41
@ pHandler:
	.word	0
	.type	__func__.36507, %object
	.size	__func__.36507, 29
__func__.36507:
	.ascii	"VDEC_CID_GetSCDBufferVirAddr\000"
	.space	3
	.type	__func__.36495, %object
	.size	__func__.36495, 22
__func__.36495:
	.ascii	"VDEC_CID_SetFrameRate\000"
	.space	2
	.type	__func__.36524, %object
	.size	__func__.36524, 21
__func__.36524:
	.ascii	"VDEC_CID_GetVFMWInfo\000"
	.space	3
	.type	__func__.36480, %object
	.size	__func__.36480, 18
__func__.36480:
	.ascii	"VDEC_CID_FrameDNR\000"
	.space	2
	.type	__func__.36391, %object
	.size	__func__.36391, 19
__func__.36391:
	.ascii	"VDEC_CID_RWZBState\000"
	.space	1
	.type	__func__.36029, %object
	.size	__func__.36029, 23
__func__.36029:
	.ascii	"VDEC_CID_GetCapability\000"
	.space	1
	.type	__func__.36457, %object
	.size	__func__.36457, 21
__func__.36457:
	.ascii	"VDEC_CID_SetCTRLInfo\000"
	.space	3
	.type	__func__.36428, %object
	.size	__func__.36428, 22
__func__.36428:
	.ascii	"VDEC_CID_SetTrickMode\000"
	.space	2
	.type	__func__.36251, %object
	.size	__func__.36251, 29
__func__.36251:
	.ascii	"VDEC_CID_ResetChanWithOption\000"
	.space	3
	.type	__func__.36406, %object
	.size	__func__.36406, 22
__func__.36406:
	.ascii	"VDEC_CID_SetPTSToSeek\000"
	.space	2
	.type	__func__.36379, %object
	.size	__func__.36379, 28
__func__.36379:
	.ascii	"VDEC_CID_SetDiscardPicParam\000"
	.type	__func__.36362, %object
	.size	__func__.36362, 24
__func__.36362:
	.ascii	"VDEC_CID_GetChanIDByMem\000"
	.type	__func__.36338, %object
	.size	__func__.36338, 24
__func__.36338:
	.ascii	"VDEC_CID_GetChanMemAddr\000"
	.type	__func__.36323, %object
	.size	__func__.36323, 23
__func__.36323:
	.ascii	"VDEC_CID_GetStreamSize\000"
	.space	1
	.type	__func__.36309, %object
	.size	__func__.36309, 18
__func__.36309:
	.ascii	"VDEC_CID_CfgExtra\000"
	.space	2
	.type	__func__.36283, %object
	.size	__func__.36283, 22
__func__.36283:
	.ascii	"VDEC_CID_GetImageIntf\000"
	.space	2
	.type	__func__.36267, %object
	.size	__func__.36267, 23
__func__.36267:
	.ascii	"VDEC_CID_SetStreamIntf\000"
	.space	1
	.type	__func__.36211, %object
	.size	__func__.36211, 29
__func__.36211:
	.ascii	"VDEC_CID_StartChanWithOption\000"
	.space	3
	.type	__func__.36183, %object
	.size	__func__.36183, 17
__func__.36183:
	.ascii	"VDEC_CID_CfgChan\000"
	.space	3
	.type	__func__.36167, %object
	.size	__func__.36167, 20
__func__.36167:
	.ascii	"VDEC_CID_GetChanCfg\000"
	.type	__func__.36122, %object
	.size	__func__.36122, 30
__func__.36122:
	.ascii	"VDEC_CID_CreateChanWithOption\000"
	.space	2
	.type	__func__.36100, %object
	.size	__func__.36100, 20
__func__.36100:
	.ascii	"VDEC_CID_CreateChan\000"
	.type	__func__.36073, %object
	.size	__func__.36073, 40
__func__.36073:
	.ascii	"VDEC_CID_GetChanDetailMemSizeWithOption\000"
	.type	__func__.36044, %object
	.size	__func__.36044, 24
__func__.36044:
	.ascii	"VDEC_CID_GetChanMemSize\000"
	.type	__func__.36014, %object
	.size	__func__.36014, 24
__func__.36014:
	.ascii	"VDEC_CID_PutUsrDecFrame\000"
	.type	__func__.35996, %object
	.size	__func__.35996, 24
__func__.35996:
	.ascii	"VDEC_CID_GetUsrDecFrame\000"
	.type	__func__.35983, %object
	.size	__func__.35983, 22
__func__.35983:
	.ascii	"VDEC_CID_GetChanState\000"
	.section	___ksymtab+VDEC_Control,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Control, %object
	.size	__ksymtab_VDEC_Control, 8
__ksymtab_VDEC_Control:
@ value:
	.word	VDEC_Control
@ name:
	.word	__kstrtab_VDEC_Control
	.section	___ksymtab+VDEC_Exit,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Exit, %object
	.size	__ksymtab_VDEC_Exit, 8
__ksymtab_VDEC_Exit:
@ value:
	.word	VDEC_Exit
@ name:
	.word	__kstrtab_VDEC_Exit
	.section	___ksymtab+VDEC_Init,"a",%progbits
	.align	2
	.type	__ksymtab_VDEC_Init, %object
	.size	__ksymtab_VDEC_Init, 8
__ksymtab_VDEC_Init:
@ value:
	.word	VDEC_Init
@ name:
	.word	__kstrtab_VDEC_Init
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_VDEC_Control, %object
	.size	__kstrtab_VDEC_Control, 13
__kstrtab_VDEC_Control:
	.ascii	"VDEC_Control\000"
	.type	__kstrtab_VDEC_Exit, %object
	.size	__kstrtab_VDEC_Exit, 10
__kstrtab_VDEC_Exit:
	.ascii	"VDEC_Exit\000"
	.type	__kstrtab_VDEC_Init, %object
	.size	__kstrtab_VDEC_Init, 10
__kstrtab_VDEC_Init:
	.ascii	"VDEC_Init\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	g_FrameRate, %object
	.size	g_FrameRate, 4
g_FrameRate:
	.word	30
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	16
	.type	g_ChipMaxWidth, %object
	.size	g_ChipMaxWidth, 4
g_ChipMaxWidth:
	.word	8192
	.type	g_ChipMaxHeight, %object
	.size	g_ChipMaxHeight, 4
g_ChipMaxHeight:
	.word	8192
	.type	g_LastFrameRate, %object
	.size	g_LastFrameRate, 4
g_LastFrameRate:
	.word	30
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDEC_Resume ok !\012\000"
	.space	2
.LC1:
	.ascii	"VFMW has been destroyed, so any operation is unusef"
	.ascii	"ul!\012\000"
.LC2:
	.ascii	"Unsupport eCmdID %d\012\000"
	.space	3
.LC3:
	.ascii	"%s %d: %s\012\000"
	.space	1
.LC4:
	.ascii	"pArgs = null!\000"
	.space	2
.LC5:
	.ascii	"VDEC_Suspend ok !\012\000"
	.space	1
.LC6:
	.ascii	"Not care param %d\012\000"
	.space	1
.LC7:
	.ascii	"[%s][%d] %d!\012\000"
	.space	2
.LC8:
	.ascii	"VCTRL_GetChanMemInfo return %d!\012\000"
	.space	3
.LC9:
	.ascii	"Not care param %p\012\000"
	.space	1
.LC10:
	.ascii	"VCTRL_CreateChan() return %d\012\000"
	.space	2
.LC11:
	.ascii	"VDEC_InitWithOperation has NULL parameter, error!\012"
	.ascii	"\000"
	.space	1
.LC12:
	.ascii	"VCTRL_OpenVfmw() return %d\012\000"
.LC13:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_VfmwEnableFlag, %object
	.size	g_VfmwEnableFlag, 4
g_VfmwEnableFlag:
	.space	4
	.type	g_VfmwInitCount, %object
	.size	g_VfmwInitCount, 4
g_VfmwInitCount:
	.space	4
	.type	g_vdm_hal_fun_ptr, %object
	.size	g_vdm_hal_fun_ptr, 104
g_vdm_hal_fun_ptr:
	.space	104
	.type	g_dnr_hal_fun_ptr, %object
	.size	g_dnr_hal_fun_ptr, 36
g_dnr_hal_fun_ptr:
	.space	36
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
