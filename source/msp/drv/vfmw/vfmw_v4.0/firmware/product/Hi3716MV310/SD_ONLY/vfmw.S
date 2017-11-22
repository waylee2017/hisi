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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/.vfmw.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/vfmw.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/vfmw.o
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
	ldr	r0, [r2, #120]	@ D.35771, <variable>.PERI_CRG30.u32
	orr	r3, r0, #3	@ u32TmpValue, D.35771,
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
	ldr	r0, [r2, #120]	@ D.35778, <variable>.PERI_CRG30.u32
	orr	r3, r0, #80	@ u32TmpValue, D.35778,
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
	ldr	r2, [r3, #120]	@ D.35785, <variable>.PERI_CRG30.u32
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
	ldr	r0, [r3, #120]	@ D.35792, <variable>.PERI_CRG30.u32
	orr	r2, r0, #32	@ u32TmpValue, D.35792,
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
	ldr	r0, [r3, #112]	@ D.35799, <variable>.PERI_CRG28.u32
	orr	r2, r0, #1	@ u32TmpValue, D.35799,
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
	movw	ip, #:lower16:g_pstRegCrg	@ tmp138,
	movt	ip, #:upper16:g_pstRegCrg	@ tmp138,
	mov	r0, #0	@,
	ldr	r3, [ip, #0]	@ g_pstRegCrg.451, g_pstRegCrg
	ldr	r1, [r3, #136]	@ D.35806, <variable>.PERI_CRG34.u32
	orr	r2, r1, #1	@ u32TmpValue, D.35806,
	bfc	r2, #4, #1	@ u32TmpValue,,
	str	r2, [r3, #136]	@ u32TmpValue, <variable>.PERI_CRG34.u32
	bx	lr	@
	.fnend
	.size	BPD_OpenHardware, .-BPD_OpenHardware
	.align	2
	.global	VDEC_CID_SetFrameRate
	.type	VDEC_CID_SetFrameRate, %function
VDEC_CID_SetFrameRate:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pArgs
	ldrne	r1, [r1, #0]	@ tmp138,* pArgs
	movwne	r3, #:lower16:.LANCHOR0	@ tmp137,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp137,
	mvneq	r2, #0	@ D.36404,
	movne	r2, #0	@ D.36404,
	strne	r1, [r3, r0, asl #2]	@ tmp138, g_FrameRate
	mov	r0, r2	@, D.36404
	bx	lr	@
	.fnend
	.size	VDEC_CID_SetFrameRate, .-VDEC_CID_SetFrameRate
	.align	2
	.global	VDEC_CID_GetSCDBufferVirAddr
	.type	VDEC_CID_GetSCDBufferVirAddr, %function
VDEC_CID_GetSCDBufferVirAddr:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pArgs
	movwne	r3, #:lower16:g_scd_vir	@ tmp137,
	movtne	r3, #:upper16:g_scd_vir	@ tmp137,
	mvneq	r2, #0	@ D.36414,
	movne	r2, #0	@ D.36414,
	ldrne	r3, [r3, r0, asl #2]	@ tmp138, g_scd_vir
	mov	r0, r2	@, D.36414
	strne	r3, [r1, #0]	@ tmp138,* pArgs
	bx	lr	@
	.fnend
	.size	VDEC_CID_GetSCDBufferVirAddr, .-VDEC_CID_GetSCDBufferVirAddr
	.align	2
	.global	VDEC_Control
	.type	VDEC_Control, %function
VDEC_Control:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR1	@ tmp170,
	movt	r3, #:upper16:.LANCHOR1	@ tmp170,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r4, pc}	@
	cmp	r1, #10	@ eCmdID,
	movweq	r3, #:lower16:VDEC_CID_GetChanState	@ pTargetHandler,
	movteq	r3, #:upper16:VDEC_CID_GetChanState	@ pTargetHandler,
	beq	.L26	@,
	movw	ip, #:lower16:.LANCHOR2	@ ivtmp.756,
	movt	ip, #:upper16:.LANCHOR2	@ ivtmp.756,
	b	.L27	@
.L28:
	ldr	r3, [ip, #12]	@ pTargetHandler, <variable>.pHandler
	add	ip, ip, #8	@ ivtmp.756, ivtmp.756,
	cmp	r3, #0	@ pTargetHandler,
	beq	.L24	@,
	cmp	r4, r1	@ D.36462, eCmdID
	beq	.L26	@,
.L27:
	ldr	r4, [ip, #8]	@ D.36462, <variable>.eCmdID
	cmp	r4, #41	@ D.36462,
	bne	.L28	@,
.L24:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L26:
	mov	r1, r2	@, pArgs
	blx	r3	@ pTargetHandler
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDEC_Control, .-VDEC_Control
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
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDEC_Resume, .-VDEC_Resume
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
	beq	.L42	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_DisableEsBuf	@
.L42:
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
	mov	r6, r0	@ ChanID, ChanID
	.pad #20
	sub	sp, sp, #20	@,,
	mvneq	r0, #0	@ D.36429,
	beq	.L46	@,
	add	r1, sp, #16	@ tmp143,,
	movw	lr, #:lower16:s_pFspInst	@ tmp139,
	movt	lr, #:upper16:s_pFspInst	@ tmp139,
	mov	r4, #0	@ tmp140,
	add	r2, sp, #8	@,,
	str	r4, [r1, #-4]!	@ tmp140, RefNum
	add	r3, sp, #4	@,,
	ldr	r7, [lr, r6, asl #2]	@ pFsp, s_pFspInst
	str	r4, [sp, #4]	@ tmp140, NewNum
	str	r4, [sp, #8]	@ tmp140, ReadNum
	bl	VCTRL_GetChanImgNum	@
	movw	ip, #:lower16:76696	@ tmp150,
	movw	r3, #:lower16:s_DnrChan	@ tmp152,
	movt	ip, #:upper16:76696	@ tmp150,
	movt	r3, #:upper16:s_DnrChan	@ tmp152,
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	mov	r0, r4	@ D.36429, tmp140
	mla	r6, ip, r6, r3	@ tmp151, tmp150, ChanID, tmp152
	str	r2, [r5, #0]	@ RefNum, <variable>.u32RefNum
	ldrb	r1, [r7, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	strb	r1, [r5, #8]	@ <variable>.s32DecFsNum, <variable>.s8DecFsNum
	ldr	r3, [r6, #448]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r3, [r5, #4]	@ <variable>.s32ValidImgNum, <variable>.s32DisFsNum
.L46:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L50	@,
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
.L50:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	beq	.L54	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #:lower16:s_DnrChan	@ tmp137,
	movw	r2, #:lower16:76696	@ tmp140,
	movt	r3, #:upper16:s_DnrChan	@ tmp137,
	movt	r2, #:upper16:76696	@ tmp140,
	ldr	r1, [r5, #0]	@ tmp143,* pArgs
	mla	r4, r2, r4, r3	@ tmp141, tmp140, ChanID, tmp137
	str	r1, [r4, #24]	@ tmp143, <variable>.userSetRwzb_state
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L54:
	mvn	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	subs	r4, r1, #0	@ pArgs, pArgs
	mvneq	r0, #0	@ D.35996,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pArgs
	bl	GetVdecCapability	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.35996,
	ldmfd	sp!, {r4, pc}	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L62	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	DNR_ConfigBackOptimizeFlag	@
	cmp	r0, #0	@,
	beq	.L66	@,
.L63:
	mvn	r4, #0	@ ret,
.L64:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L62:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L66:
	mov	r1, r4	@, pArgs
	mov	r0, r5	@, ChanID
	bl	VCTRL_ConfigPVRInfo	@
	subs	r4, r0, #0	@ ret,
	beq	.L64	@,
	b	.L63	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L69	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, pArgs
	bl	DNR_ConfigFFFBSpeed	@
	cmp	r0, #0	@,
	beq	.L73	@,
.L70:
	mov	r1, r5	@, pArgs
	mov	r0, r4	@, ChanID
	bl	VCTRL_ConfigFFFBSpeed	@
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L69:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L73:
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, pArgs
	bl	VCTRL_ConfigFFFBSpeed	@
	b	.L70	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L76	@,
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
.L76:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	mov	r4, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	mvneq	r4, #0	@ ret,
	beq	.L81	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	mov	r2, #1	@ tmp139,
	mov	r3, #0	@ tmp140,
	stmia	sp, {r2, r3}	@ phole stm
	bl	VCTRL_ResetChanWithOption	@
	cmp	r0, #0	@,
	beq	.L85	@,
.L82:
	mvn	r4, #0	@ ret,
.L83:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L81:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L85:
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, pArgs
	bl	VCTRL_SeekPts	@
	subs	r4, r0, #0	@ ret,
	beq	.L83	@,
	b	.L82	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L88	@,
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
.L88:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	subs	r4, r1, #0	@ pArgs, pArgs
	mvneq	r4, #0	@ ret,
	beq	.L92	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanIDByMemAddr	@
	cmn	r0, #1	@ D.36289,
	str	r0, [r4, #0]	@ D.36289,* pArgs
	moveq	r4, r0	@, ret, D.36289
	movne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L92:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, pc}	@
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
	mov	r5, r0	@ ChanID, ChanID
	.pad #20
	sub	sp, sp, #20	@,,
	mvneq	r5, #0	@ ret,
	beq	.L98	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanMemInfo	@
	subs	r5, r0, #0	@ ret,
	bne	.L103	@,
	ldr	r2, [sp, #8]	@ D.36270, MemRec.PhyAddr
	str	r2, [r4, #0]	@ D.36270, <variable>.PhyAddr
	ldr	r0, [sp, #4]	@ D.36271, MemRec.VirAddr
	cmp	r0, #0	@ D.36271,
	str	r0, [r4, #4]	@ D.36271, <variable>.VirAddr
	ldr	r3, [sp, #12]	@ MemRec.Length, MemRec.Length
	str	r3, [r4, #8]	@ MemRec.Length, <variable>.Length
	beq	.L100	@,
	cmp	r2, #0	@ D.36270,
	beq	.L100	@,
.L101:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L98:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L100:
	mvn	r5, #0	@ ret,
	b	.L101	@
.L103:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	mvn	r5, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L98	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L106	@,
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
.L106:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	subs	r4, r1, #0	@ pArgs, pArgs
	mvneq	r0, #0	@ D.36242,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	VCTRL_SetVdecExtra	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36242,
	ldmfd	sp!, {r4, pc}	@
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
	mov	r4, r0	@ ChanID, ChanID
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r0, #0	@ D.36219,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	str	r5, [r4, #0]	@ ChanID, <variable>.image_provider_inst_id
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDSDFlag	@
	movw	r0, #:lower16:DNR_ReceiveImage	@ tmp142,
	movw	r3, #:lower16:DNR_ReleaseImage	@ tmp143,
	movt	r0, #:upper16:DNR_ReceiveImage	@ tmp142,
	movt	r3, #:upper16:DNR_ReleaseImage	@ tmp143,
	stmib	r4, {r0, r3}	@ phole stm
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.36219,
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L123	@,
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
.L123:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	mov	r4, r0	@ ChanID, ChanID
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
	mov	r4, r0	@ ChanID, ChanID
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L134	@,
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
.L134:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	mov	r4, r0	@ ChanID, ChanID
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r1, #0	@ pArgs, pArgs
	mov	r4, r0	@ ChanID, ChanID
	mvneq	r5, #0	@ ret,
	beq	.L142	@,
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
.L142:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L147	@,
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
.L147:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_DestroyChanWithOption	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	ldmfd	sp!, {r3, pc}	@
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	VCTRL_DestroyChan	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@,,
	ldmfd	sp!, {r3, pc}	@
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
	subs	r4, r1, #0	@ pArgs, pArgs
	mvneq	r0, #0	@ ret,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #0]	@,* pArgs
	mov	r2, #2	@,
	ldr	r1, [r4, #4]	@,
	mov	r3, #0	@,
	bl	VCTRL_CreateChanWithOption	@
	cmp	r0, #0	@ ret.1452,
	str	r0, [r4, #0]	@ ret.1452,* pArgs
	movge	r0, #0	@, ret,
	mvnlt	r0, #0	@, ret,
	ldmfd	sp!, {r4, pc}	@
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mvneq	r0, #0	@ ret,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r1, r4	@ tmp140, pArgs
	ldr	r0, [r1], #4	@,
	bl	VCTRL_CreateChan	@
	cmp	r0, #0	@ ret.1476,
	str	r0, [r4, #0]	@ ret.1476,* pArgs
	movge	r0, #0	@, ret,
	mvnlt	r0, #0	@, ret,
	ldmfd	sp!, {r4, pc}	@
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
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #20
	sub	sp, sp, #20	@,,
	mvneq	r5, #0	@ ret,
	beq	.L168	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r3, #1	@,
	ldr	r1, [r4, #4]	@,
	mov	r2, sp	@,
	ldr	r0, [r4, #0]	@,* pArgs
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r5, r0, #0	@ D.36040,
	ldreq	r3, [sp, #0]	@ DetailMemSize.VdhDetailMem, DetailMemSize.VdhDetailMem
	mvnne	r5, #0	@ ret,
	streq	r3, [r4, #0]	@ DetailMemSize.VdhDetailMem,* pArgs
	ldreq	r3, [sp, #4]	@ DetailMemSize.ScdDetailMem, DetailMemSize.ScdDetailMem
	streq	r3, [r4, #4]	@ DetailMemSize.ScdDetailMem,
	ldreq	r3, [sp, #8]	@ DetailMemSize.ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	streq	r3, [r4, #8]	@ DetailMemSize.ChanCtxDetailMem,
	ldreq	r3, [sp, #12]	@ DetailMemSize.PmvDetailMem, DetailMemSize.PmvDetailMem
	streq	r3, [r4, #12]	@ DetailMemSize.PmvDetailMem,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L168:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
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
	subs	r4, r1, #0	@ pArgs, pArgs
	.pad #28
	sub	sp, sp, #28	@,,
	mvneq	r5, #0	@ ret,
	beq	.L174	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@,* pArgs
	add	r1, sp, #12	@,,
	mov	r2, sp	@,
	bl	VCTRL_GetChanMemSize	@
	subs	r5, r0, #0	@ D.36012,
	mvnne	r5, #0	@ ret,
	beq	.L178	@,
.L176:
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L174:
	mov	r0, r5	@, ret
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L178:
	ldr	r0, [sp, #12]	@ VdmMem, VdmMem
	ldr	r2, [sp, #0]	@ ScdMem, ScdMem
	add	r3, r2, r0	@ tmp145, ScdMem, VdmMem
	str	r3, [r4, #0]	@ tmp145, <variable>.MinMemSize
	ldr	ip, [sp, #16]	@ VdmMem, VdmMem
	ldr	lr, [sp, #4]	@ ScdMem, ScdMem
	add	r1, lr, ip	@ tmp148, ScdMem, VdmMem
	str	r1, [r4, #4]	@ tmp148, <variable>.NormalMemSize
	ldr	r0, [sp, #20]	@ VdmMem, VdmMem
	ldr	r2, [sp, #8]	@ ScdMem, ScdMem
	add	r3, r2, r0	@ tmp151, ScdMem, VdmMem
	str	r3, [r4, #8]	@ tmp151, <variable>.FluentMemSize
	b	.L176	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L181	@,
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
.L181:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r4, #0	@ ret,
	beq	.L186	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r1, sp	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetUsrdecFrame	@
	ldr	r1, [sp, #0]	@ stMem.PhyAddr, stMem.PhyAddr
	str	r1, [r4, #0]	@ stMem.PhyAddr,* pArgs
	ldr	r3, [sp, #8]	@ stMem.Length, stMem.Length
	str	r3, [r4, #4]	@ stMem.Length,
	cmp	r0, #0	@ ret
	moveq	r4, r0	@, ret, ret
	mvnne	r4, #0	@, ret,
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L186:
	mov	r0, r4	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pArgs, pArgs
	mov	r5, r0	@ ChanID, ChanID
	mvneq	r0, #0	@ D.35956,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pArgs
	bl	VCTRL_GetChanState	@
	bl	VCTRL_EnableAllInt	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.35956,
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	bne	.L194	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp138,
	movt	r4, #:upper16:.LANCHOR1	@ tmp138,
	ldr	r0, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	sub	r3, r0, #1	@ g_VfmwInitCount.462, g_VfmwInitCount,
	str	r3, [r4, #4]	@ g_VfmwInitCount.462, g_VfmwInitCount
	cmp	r3, #0	@ g_VfmwInitCount.462,
	ble	.L195	@,
	bl	OSAL_UP	@
	mov	r0, r5	@ D.35940, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L195:
	bl	VCTRL_CloseVfmw	@
	mov	r6, r0	@ ret.1614,
	bl	MEM_ManagerClearOperation	@
	str	r5, [r4, #0]	@ ret, g_VfmwEnableFlag
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret.1614,
	moveq	r0, r6	@ D.35940, ret.1614
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L194:
	mvn	r0, #0	@ D.35940,
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
	beq	.L210	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp240,
	movt	r4, #:upper16:.LANCHOR1	@ tmp240,
	ldr	r3, [r4, #0]	@ g_VfmwEnableFlag, g_VfmwEnableFlag
	cmp	r3, #1	@ g_VfmwEnableFlag,
	beq	.L211	@,
	mov	r1, #8	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp157,
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
	movt	r6, #:upper16:.LANCHOR0	@ tmp157,
	movw	r2, #:lower16:AcceleratorCharacter	@ tmp155,
	movt	r2, #:upper16:AcceleratorCharacter	@ tmp155,
	mov	r1, #0	@ tmp156,
	mov	r0, #15	@ tmp158,
	str	r1, [r2, #0]	@ tmp156, AcceleratorCharacter
	movw	r3, #:lower16:VDM_OpenHardware	@ tmp160,
	str	r0, [r6, #4]	@ tmp158, g_chipID
	movt	r3, #:upper16:VDM_OpenHardware	@ tmp160,
	movw	ip, #:lower16:VDM_CloseHardware	@ tmp162,
	str	r3, [r4, #8]	@ tmp160, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	movt	ip, #:upper16:VDM_CloseHardware	@ tmp162,
	movw	r6, #:lower16:SCD_OpenHardware	@ tmp164,
	str	ip, [r4, #12]	@ tmp162, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	movt	r6, #:upper16:SCD_OpenHardware	@ tmp164,
	movw	r2, #:lower16:SCD_CloseHardware	@ tmp166,
	str	r6, [r4, #16]	@ tmp164, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movt	r2, #:upper16:SCD_CloseHardware	@ tmp166,
	movw	r1, #:lower16:BPD_OpenHardware	@ tmp168,
	str	r2, [r4, #20]	@ tmp166, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	movt	r1, #:upper16:BPD_OpenHardware	@ tmp168,
	movw	r0, #:lower16:VDMHAL_V200R004_GetHalMemSize	@ tmp170,
	str	r1, [r4, #24]	@ tmp168, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	movt	r0, #:upper16:VDMHAL_V200R004_GetHalMemSize	@ tmp170,
	movw	r3, #:lower16:VDMHAL_V200R004_OpenHAL	@ tmp172,
	str	r0, [r4, #32]	@ tmp170, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	movt	r3, #:upper16:VDMHAL_V200R004_OpenHAL	@ tmp172,
	movw	ip, #:lower16:VDMHAL_V200R004_CloseHAL	@ tmp174,
	str	r3, [r4, #36]	@ tmp172, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	movt	ip, #:upper16:VDMHAL_V200R004_CloseHAL	@ tmp174,
	movw	r6, #:lower16:VDMHAL_V200R004_ArrangeMem	@ tmp176,
	str	ip, [r4, #40]	@ tmp174, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	movt	r6, #:upper16:VDMHAL_V200R004_ArrangeMem	@ tmp176,
	movw	r2, #:lower16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	str	r6, [r4, #44]	@ tmp176, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r2, #:upper16:VDMHAL_V200R004_ResetVdm	@ tmp178,
	movw	r1, #:lower16:VDMHAL_V200R400_GetPmvSize	@ tmp180,
	str	r2, [r4, #48]	@ tmp178, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	movt	r1, #:upper16:VDMHAL_V200R400_GetPmvSize	@ tmp180,
	movw	r0, #:lower16:VDMHAL_V200R004_GlbReset	@ tmp182,
	str	r1, [r4, #108]	@ tmp180, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	movt	r0, #:upper16:VDMHAL_V200R004_GlbReset	@ tmp182,
	movw	r3, #:lower16:VDMHAL_V200R004_ClearIntState	@ tmp184,
	str	r0, [r4, #52]	@ tmp182, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	movt	r3, #:upper16:VDMHAL_V200R004_ClearIntState	@ tmp184,
	movw	ip, #:lower16:VDMHAL_V200R004_MaskInt	@ tmp186,
	str	r3, [r4, #56]	@ tmp184, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	movt	ip, #:upper16:VDMHAL_V200R004_MaskInt	@ tmp186,
	movw	r6, #:lower16:VDMHAL_V200R004_EnableInt	@ tmp188,
	str	ip, [r4, #60]	@ tmp186, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	movt	r6, #:upper16:VDMHAL_V200R004_EnableInt	@ tmp188,
	movw	r2, #:lower16:VDMHAL_V200R004_CheckReg	@ tmp190,
	str	r6, [r4, #64]	@ tmp188, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	movt	r2, #:upper16:VDMHAL_V200R004_CheckReg	@ tmp190,
	movw	r1, #:lower16:VDMHAL_V200R004_StartHwRepair	@ tmp192,
	str	r2, [r4, #68]	@ tmp190, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	movt	r1, #:upper16:VDMHAL_V200R004_StartHwRepair	@ tmp192,
	movw	r0, #:lower16:VDMHAL_V200R004_StartHwDecode	@ tmp194,
	str	r1, [r4, #72]	@ tmp192, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	movt	r0, #:upper16:VDMHAL_V200R004_StartHwDecode	@ tmp194,
	movw	r3, #:lower16:VDMHAL_V200R004_PrepareDec	@ tmp196,
	str	r0, [r4, #76]	@ tmp194, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	movt	r3, #:upper16:VDMHAL_V200R004_PrepareDec	@ tmp196,
	movw	ip, #:lower16:VDMHAL_V200R004_IsVdmReady	@ tmp198,
	str	r3, [r4, #80]	@ tmp196, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	movt	ip, #:upper16:VDMHAL_V200R004_IsVdmReady	@ tmp198,
	movw	r6, #:lower16:VDMHAL_V200R004_IsVdmRun	@ tmp200,
	str	ip, [r4, #84]	@ tmp198, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmReady
	movt	r6, #:upper16:VDMHAL_V200R004_IsVdmRun	@ tmp200,
	movw	r2, #:lower16:VDMHAL_V200R004_PrepareRepair	@ tmp202,
	str	r6, [r4, #88]	@ tmp200, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	movt	r2, #:upper16:VDMHAL_V200R004_PrepareRepair	@ tmp202,
	movw	r1, #:lower16:VDMHAL_V200R004_MakeDecReport	@ tmp204,
	str	r2, [r4, #92]	@ tmp202, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	movt	r1, #:upper16:VDMHAL_V200R004_MakeDecReport	@ tmp204,
	movw	r0, #:lower16:VDMHAL_V200R004_UpdateHardwareInfo	@ tmp206,
	str	r1, [r4, #96]	@ tmp204, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	movt	r0, #:upper16:VDMHAL_V200R004_UpdateHardwareInfo	@ tmp206,
	movw	r3, #:lower16:VDMHAL_V200R004_GetCharacter	@ tmp208,
	str	r0, [r4, #100]	@ tmp206, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	movt	r3, #:upper16:VDMHAL_V200R004_GetCharacter	@ tmp208,
	movw	ip, #:lower16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp210,
	str	r3, [r4, #28]	@ tmp208, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	movt	ip, #:upper16:VDMHAL_V200R004_WriteBigTitle1DYuv	@ tmp210,
	movw	r6, #:lower16:DNR_OpenHardware	@ tmp212,
	str	ip, [r4, #104]	@ tmp210, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	movt	r6, #:upper16:DNR_OpenHardware	@ tmp212,
	movw	r2, #:lower16:DNRHAL_V200_Init	@ tmp214,
	str	r6, [r4, #112]	@ tmp212, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	movt	r2, #:upper16:DNRHAL_V200_Init	@ tmp214,
	movw	r1, #:lower16:DNRHAL_V200_CfgReg	@ tmp216,
	str	r2, [r4, #116]	@ tmp214, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	movt	r1, #:upper16:DNRHAL_V200_CfgReg	@ tmp216,
	movw	r0, #:lower16:DNRHAL_V200_Reset	@ tmp218,
	str	r1, [r4, #120]	@ tmp216, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	movt	r0, #:upper16:DNRHAL_V200_Reset	@ tmp218,
	movw	r3, #:lower16:DNRHAL_V200_Start	@ tmp220,
	str	r0, [r4, #124]	@ tmp218, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	movt	r3, #:upper16:DNRHAL_V200_Start	@ tmp220,
	movw	ip, #:lower16:DNRHAL_V200_ClearIntState	@ tmp222,
	str	r3, [r4, #128]	@ tmp220, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movt	ip, #:upper16:DNRHAL_V200_ClearIntState	@ tmp222,
	movw	r6, #:lower16:DNRHAL_V200_MaskInt	@ tmp224,
	str	ip, [r4, #132]	@ tmp222, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	movt	r6, #:upper16:DNRHAL_V200_MaskInt	@ tmp224,
	movw	r2, #:lower16:DNRHAL_V200_EnableInt	@ tmp226,
	str	r6, [r4, #136]	@ tmp224, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	movt	r2, #:upper16:DNRHAL_V200_EnableInt	@ tmp226,
	str	r2, [r4, #140]	@ tmp226, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	bl	VDEC_SpinLockInit	@
	ldr	r3, [r4, #28]	@ D.35915, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetCharacter
	cmp	r3, #0	@ D.35915,
	beq	.L204	@,
	blx	r3	@ D.35915
.L204:
	mov	r0, r5	@, pArgs
	bl	MEM_ManagerWithOperation	@
	mov	r0, #0	@,
	bl	VCTRL_OpenVfmw	@
	subs	r6, r0, #0	@ ret,
	moveq	r3, #1	@ tmp229,
	movne	r3, #0	@ tmp233,
	str	r3, [r4, #4]	@ tmp233, g_VfmwInitCount
	str	r3, [r4, #0]	@ tmp233, g_VfmwEnableFlag
	ldr	r3, [r4, #52]	@ D.35923, g_vdm_hal_fun_ptr.pfun_VDMHAL_GlbReset
	cmp	r3, #0	@ D.35923,
	beq	.L207	@,
	blx	r3	@ D.35923
.L207:
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	cmp	r6, #0	@ ret,
	moveq	r0, r6	@, D.35868, ret
	mvnne	r0, #0	@, D.35868,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L211:
	ldr	r1, [r4, #4]	@ g_VfmwInitCount, g_VfmwInitCount
	add	r0, r1, #1	@ tmp144, g_VfmwInitCount,
	str	r0, [r4, #4]	@ tmp144, g_VfmwInitCount
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	VCTRL_SetCallBack	@
	bl	OSAL_UP	@
	mov	r0, #0	@ D.35868,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L210:
	bl	OSAL_UP	@
	mvn	r0, #0	@ D.35868,
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
.LANCHOR2 = . + 0
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
.LANCHOR0 = . + 0
	.type	g_FrameRate, %object
	.size	g_FrameRate, 4
g_FrameRate:
	.word	30
	.type	g_chipID, %object
	.size	g_chipID, 4
g_chipID:
	.word	15
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
	.bss
	.align	2
.LANCHOR1 = . + 0
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
