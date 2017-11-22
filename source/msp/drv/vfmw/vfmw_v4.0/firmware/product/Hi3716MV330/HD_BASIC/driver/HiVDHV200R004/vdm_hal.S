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
	.file	"vdm_hal.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.o
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
	.global	VDMHAL_V200R004_GetHalMemSize
	.type	VDMHAL_V200R004_GetHalMemSize, %function
VDMHAL_V200R004_GetHalMemSize:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:440320	@,
	movt	r0, #:upper16:440320	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_GetHalMemSize, .-VDMHAL_V200R004_GetHalMemSize
	.align	2
	.global	VDMHAL_V200R400_GetPmvSize
	.type	VDMHAL_V200R400_GetPmvSize, %function
VDMHAL_V200R400_GetPmvSize:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #15	@ tmp139, Width,
	add	r2, r1, #15	@ tmp140, Height,
	movw	r3, #:lower16:g_not_direct_8x8_inference_flag	@ tmp148,
	movt	r3, #:upper16:g_not_direct_8x8_inference_flag	@ tmp148,
	mov	ip, r0, asr #4	@ ImgWidthInMb, tmp139,
	mov	r1, r2, asr #4	@ ImgHeightInMb, tmp140,
	cmp	r1, #36	@ ImgHeightInMb,
	cmple	ip, #45	@, ImgWidthInMb,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mul	r1, ip, r1	@ tmp151, ImgWidthInMb, ImgHeightInMb
	movle	r3, #64	@, ColMbSize,
	movgt	r3, #32	@, ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	movne	ip, r3	@ ColMbSize, ColMbSize
	moveq	ip, #64	@ ColMbSize,
	mul	r2, ip, r1	@ tmp152, ColMbSize, tmp151
	add	r0, r2, #127	@ tmp153, tmp152,
	bic	r0, r0, #127	@, tmp153,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R400_GetPmvSize, .-VDMHAL_V200R400_GetPmvSize
	.align	2
	.global	VDMHAL_V200R004_MakeRpMsg
	.type	VDMHAL_V200R004_MakeRpMsg, %function
VDMHAL_V200R004_MakeRpMsg:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpMsg, .-VDMHAL_V200R004_MakeRpMsg
	.align	2
	.global	VDMHAL_V200R004_MakeRpReg
	.type	VDMHAL_V200R004_MakeRpReg, %function
VDMHAL_V200R004_MakeRpReg:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpReg, .-VDMHAL_V200R004_MakeRpReg
	.align	2
	.global	VDMHAL_V200R004_GetCharacter
	.type	VDMHAL_V200R004_GetCharacter, %function
VDMHAL_V200R004_GetCharacter:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:g_VdmCharacter	@ tmp133,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp135,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp133,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp135,
	mov	r1, #11	@ tmp134,
	mov	r2, #4	@ tmp136,
	str	r1, [r0, #0]	@ tmp134, g_VdmCharacter
	str	r2, [r3, #0]	@ tmp136, g_eVdmVersion
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_GetCharacter, .-VDMHAL_V200R004_GetCharacter
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #1144	@ tmp141,
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r2, r3]	@ D.36107, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.36107,
	beq	.L19	@,
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.36111, Data32,
	movne	r0, #1	@ D.36111
	ldmfd	sp!, {r4, pc}	@
.L19:
	mov	r0, r4	@, D.36107
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36111, D.36107
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmRun, .-VDMHAL_V200R004_IsVdmRun
	.align	2
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #1144	@ tmp142,
	mul	r2, r1, r0	@ tmp141, tmp142, VdhId
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_HwMem	@ tmp140,
	movt	r3, #:upper16:g_HwMem	@ tmp140,
	ldr	r0, [r2, r3]	@ D.36093, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ D.36093,
	beq	.L24	@,
	ldr	r0, [r0, #28]	@ Data32.668,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.668,,
	ldmfd	sp!, {r3, pc}	@
.L24:
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #976	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Data32,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_WriteMsgSlot
	.type	VDMHAL_V200R004_WriteMsgSlot, %function
VDMHAL_V200R004_WriteMsgSlot:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L26	@,
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L26	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.36270, tmp151
	ldmfd	sp!, {r4, pc}	@
.L26:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36270,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_WriteMsgSlot, .-VDMHAL_V200R004_WriteMsgSlot
	.align	2
	.global	VDMHAL_V200R004_ReadMsgSlot
	.type	VDMHAL_V200R004_ReadMsgSlot, %function
VDMHAL_V200R004_ReadMsgSlot:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pDst,
	cmpne	r1, #0	@, pSrc,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	beq	.L31	@,
	cmp	r2, #512	@ upmsg_size,
	bhi	.L31	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.36253, tmp144
	ldmfd	sp!, {r4, pc}	@
.L31:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36253,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_ReadMsgSlot, .-VDMHAL_V200R004_ReadMsgSlot
	.align	2
	.global	VDMHAL_V200R004_WriteBigTitle1DYuv
	.type	VDMHAL_V200R004_WriteBigTitle1DYuv, %function
VDMHAL_V200R004_WriteBigTitle1DYuv:
	.fnstart
.LFB1626:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ubfx	r9, r3, #29, #2	@ PicStructure.849, Height,,
	.pad #84
	sub	sp, sp, #84	@,,
	cmp	r9, #1	@ PicStructure.849,
	mov	r6, r3	@ Height, Height
	mov	r4, r1	@ Yaddress, Yaddress
	str	r0, [sp, #24]	@ fpYuv, %sfp
	mov	r5, r2	@ Width, Width
	moveq	r9, #0	@ PicStructure,
	beq	.L37	@,
	cmp	r9, #2	@ PicStructure.849,
	moveq	r9, #1	@ PicStructure,
	movne	r9, #2	@ PicStructure,
.L37:
	ldr	r1, [sp, #24]	@, %sfp
	cmp	r1, #0	@,
	beq	.L75	@,
	add	r3, sp, #64	@ tmp244,,
	add	r2, sp, #48	@,,
	add	lr, r3, #4	@ tmp398, tmp244,
	add	r7, r2, #4	@ tmp395,,
	mov	ip, #0	@ tmp240,
	movw	r0, #:lower16:.LC5	@,
	str	ip, [r7], #4	@ tmp240, MemRecord_ul
	mov	r1, ip	@, tmp240
	str	ip, [lr], #4	@ tmp240, MemRecord_y
	movt	r0, #:upper16:.LC5	@,
	str	ip, [r7], #4	@ tmp240, MemRecord_ul
	mov	r2, #4194304	@,
	str	ip, [lr], #4	@ tmp240, MemRecord_y
	str	ip, [r7, #0]	@ tmp240, MemRecord_ul
	str	ip, [lr, #0]	@ tmp240, MemRecord_y
	str	ip, [sp, #48]	@ tmp240, MemRecord_ul
	str	ip, [sp, #64]	@ tmp240, MemRecord_y
	str	ip, [sp, #0]	@ tmp240,
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.36983,
	bne	.L149	@,
	mov	r1, ip	@, D.36983
	movw	r0, #:lower16:.LC7	@,
	mov	r2, #4194304	@,
	movt	r0, #:upper16:.LC7	@,
	add	r3, sp, #48	@,,
	str	ip, [sp, #0]	@ D.36983,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L150	@,
	add	r5, r5, #15	@ tmp257, Width,
	ldr	r0, [sp, #68]	@, MemRecord_y.VirAddr
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp257,
	add	r6, r6, #15	@ tmp259, Height,
	add	ip, r5, #255	@ tmp261, ImgWidthInPixAln,
	bic	r6, r6, #15	@, tmp259,
	bic	r3, ip, #255	@ tmp262, tmp261,
	str	r0, [sp, #12]	@, %sfp
	str	r0, [sp, #32]	@, %sfp
	mov	r8, r3, asl #4	@, tmp262,
	str	r8, [sp, #8]	@, %sfp
	ldr	r1, [sp, #8]	@, %sfp
	add	ip, r8, #15	@ tmp265,,
	ldr	r2, [sp, #52]	@, MemRecord_ul.VirAddr
	cmp	r1, #0	@,
	str	r6, [sp, #20]	@, %sfp
	add	lr, r2, #2097152	@,,
	str	lr, [sp, #36]	@, %sfp
	movge	ip, r1	@ Stride,
	adds	r0, r6, #31	@ tmp267,,
	addmi	r0, r6, #62	@, tmp269,,
	mov	r3, ip, asr #4	@ tmp266, Stride,
	cmp	r9, #0	@ PicStructure,
	str	r2, [sp, #28]	@, %sfp
	mov	r8, r0, asr #5	@ tmp271, tmp269,
	mla	r8, r8, r3, r4	@ Caddress, tmp271, tmp266, Yaddress
	bne	.L43	@,
	cmp	r6, #0	@,
	mov	lr, r5, lsr #1	@, ImgWidthInPixAln,
	mov	r1, r6, lsr #1	@,,
	str	lr, [sp, #40]	@, %sfp
	str	r1, [sp, #16]	@, %sfp
	beq	.L44	@,
	ldr	fp, [sp, #12]	@ ivtmp.809, %sfp
	str	r8, [sp, #44]	@ Caddress, %sfp
.L45:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L48	@,
	and	r8, r9, #15	@ pretmp.873, i,
	ldr	r6, [sp, #8]	@, %sfp
	mov	lr, r9, lsr #4	@ pretmp.883, i,
	cmp	fp, #0	@ ivtmp.809,
	mov	r7, r8, asl #8	@ tmp282, pretmp.873,
	sub	sl, r5, #1	@ tmp373, ImgWidthInPixAln,
	ubfx	sl, sl, #8, #1	@ tmp374, tmp373,,
	mla	r8, r6, lr, r7	@ pretmp.764,, pretmp.883, tmp282
	beq	.L93	@,
	mov	r0, fp	@, ivtmp.809
	add	r1, r4, r8	@, Yaddress, pretmp.764
	mov	r2, #256	@,
	bl	memcpy	@
.L93:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, fp, r7	@ ivtmp.860, ivtmp.809,
	bls	.L48	@,
	cmp	sl, #0	@ tmp374,
	beq	.L47	@,
	cmp	r6, #0	@ ivtmp.860,
	beq	.L98	@,
	add	r2, r8, #4096	@ tmp461, pretmp.764,
	mov	r0, r6	@, ivtmp.860
	add	r1, r4, r2	@, Yaddress, tmp461
	mov	r2, r7	@, j
	bl	memcpy	@
.L98:
	add	r7, r7, #256	@ j, tmp375,
	add	r6, r6, #256	@ ivtmp.860, tmp376,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L48	@,
.L47:
	mov	ip, r7, lsr #8	@ tmp273, j,
	cmp	r6, #0	@ ivtmp.860,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.860
	add	r3, r8, ip, asl #12	@, tmp275, pretmp.764, tmp273,
	add	r7, r7, r2	@ tmp375, j,
	add	r1, r4, r3	@, Yaddress, tmp275
	beq	.L46	@,
	bl	memcpy	@
.L46:
	mov	r1, r7, lsr #8	@ tmp463, tmp375,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp376, ivtmp.860,
	add	r0, r8, r1, asl #12	@, tmp465, pretmp.764, tmp463,
	add	r1, r4, r0	@, Yaddress, tmp465
	mov	r0, r6	@, tmp376
	beq	.L98	@,
	add	r7, r7, #256	@ j, tmp375,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.860, tmp376,
	bhi	.L47	@,
.L48:
	ldr	r2, [sp, #20]	@, %sfp
	add	r9, r9, #1	@ i, i,
	add	fp, fp, r5	@ ivtmp.809, ivtmp.809, ImgWidthInPixAln
	cmp	r2, r9	@, i
	bhi	.L45	@,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
.L44:
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	mul	r1, r5, r3	@, ImgWidthInPixAln,
	bl	klib_fwrite	@
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r4, #0	@,
	beq	.L49	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.859,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #12]	@ ivtmp.801, %sfp
.L50:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L53	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r4, sl, lsr #3	@ tmp296, i.859,
	and	r6, sl, #7	@ pretmp.881, i.859,
	cmp	r9, #0	@ ivtmp.801,
	sub	fp, r5, #1	@ tmp367, ImgWidthInPixAln,
	mul	r7, ip, r4	@ tmp297,, tmp296
	ubfx	fp, fp, #8, #1	@ tmp368, tmp367,,
	add	r7, r7, r6, asl #8	@, pretmp.762, tmp297, pretmp.881,
	beq	.L86	@,
	mov	r0, r9	@, ivtmp.801
	add	r1, r8, r7	@, Caddress, pretmp.762
	mov	r2, #256	@,
	bl	memcpy	@
.L86:
	mov	r6, #256	@ j.858,
	cmp	r5, r6	@ ImgWidthInPixAln, j.858
	add	r4, r9, r6	@ ivtmp.855, ivtmp.801,
	bls	.L53	@,
	cmp	fp, #0	@ tmp368,
	beq	.L52	@,
	cmp	r4, #0	@ ivtmp.855,
	beq	.L91	@,
	add	r3, r7, #2048	@ tmp449, pretmp.762,
	mov	r0, r4	@, ivtmp.855
	add	r1, r8, r3	@, Caddress, tmp449
	mov	r2, r6	@, j.858
	bl	memcpy	@
.L91:
	add	r6, r6, #256	@ j.858, tmp369,
	add	r4, r4, #256	@ ivtmp.855, tmp370,
	cmp	r5, r6	@ ImgWidthInPixAln, j.858
	bls	.L53	@,
.L52:
	mov	lr, r6, lsr #8	@ tmp287, j.858,
	cmp	r4, #0	@ ivtmp.855,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.855
	add	r1, r7, lr, asl #11	@, tmp289, pretmp.762, tmp287,
	add	r6, r6, r2	@ tmp369, j.858,
	add	r1, r8, r1	@, Caddress, tmp289
	beq	.L51	@,
	bl	memcpy	@
.L51:
	mov	r3, r6, lsr #8	@ tmp451, tmp369,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp370, ivtmp.855,
	add	r0, r7, r3, asl #11	@, tmp453, pretmp.762, tmp451,
	add	r1, r8, r0	@, Caddress, tmp453
	mov	r0, r4	@, tmp370
	beq	.L91	@,
	add	r6, r6, #256	@ j.858, tmp369,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.858
	add	r4, r4, #256	@ ivtmp.855, tmp370,
	bhi	.L52	@,
.L53:
	ldr	r2, [sp, #16]	@, %sfp
	add	sl, sl, #1	@ i.859, i.859,
	add	r9, r9, r5	@ ivtmp.801, ivtmp.801, ImgWidthInPixAln
	cmp	r2, sl	@, i.859
	bhi	.L50	@,
.L49:
	ldr	r1, [sp, #120]	@, chroma_idc
	cmp	r1, #1	@,
	beq	.L151	@,
	ldr	r0, [sp, #120]	@, chroma_idc
	cmp	r0, #0	@,
	bne	.L55	@,
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #36]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
.L55:
	ldr	r2, [sp, #40]	@, %sfp
	ldr	lr, [sp, #16]	@, %sfp
	mul	r4, r2, lr	@ D.37279,,
.L148:
	ldr	r2, [sp, #24]	@, %sfp
	mov	r1, r4	@, D.37335
	ldr	r0, [sp, #28]	@, %sfp
	bl	klib_fwrite	@
	mov	r1, r4	@, D.37335
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	bl	klib_fwrite	@
	ldr	r1, [sp, #52]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@,,
	mov	r1, #16	@,
	bl	__memzero	@
.L42:
	ldr	r1, [sp, #68]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@,,
	mov	r1, #16	@,
	bl	__memzero	@
.L75:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L149:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L75	@
.L43:
	ldr	r1, [sp, #20]	@, %sfp
	subs	r9, r9, #1	@, PicStructure,
	movne	r9, #1	@
	mov	r3, r5, lsr #1	@, ImgWidthInPixAln,
	str	r9, [sp, #32]	@, %sfp
	cmp	r1, r9	@,
	str	r3, [sp, #40]	@, %sfp
	mov	ip, r1, lsr #1	@,,
	strhi	r8, [sp, #44]	@ Caddress, %sfp
	str	ip, [sp, #16]	@, %sfp
	movhi	fp, r1	@ ImgHeightInPixAln,
	bls	.L60	@,
.L61:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L64	@,
	and	lr, r9, #15	@ pretmp.885, i.864,
	ldr	r7, [sp, #8]	@, %sfp
	mov	r2, r9, lsr #4	@ pretmp.888, i.864,
	sub	sl, r5, #1	@ tmp391, ImgWidthInPixAln,
	mov	r8, lr, asl #8	@ tmp313, pretmp.885,
	mov	r6, r9, lsr #1	@ pretmp.874, i.864,
	ldr	r3, [sp, #12]	@, %sfp
	ubfx	sl, sl, #8, #1	@ tmp392, tmp391,,
	mlas	r6, r5, r6, r3	@ ivtmp.844, ImgWidthInPixAln, pretmp.874,
	mla	r8, r7, r2, r8	@ pretmp.756,, pretmp.888, tmp313
	beq	.L111	@,
	mov	r0, r6	@, ivtmp.844
	add	r1, r4, r8	@, Yaddress, pretmp.756
	mov	r2, #256	@,
	bl	memcpy	@
.L111:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, r7	@ ivtmp.844, ivtmp.844,
	bls	.L64	@,
	cmp	sl, #0	@ tmp392,
	beq	.L63	@,
	cmp	r6, #0	@ ivtmp.844,
	beq	.L116	@,
	add	r3, r8, #4096	@ tmp488, pretmp.756,
	mov	r0, r6	@, ivtmp.844
	add	r1, r4, r3	@, Yaddress, tmp488
	mov	r2, r7	@, j
	bl	memcpy	@
.L116:
	add	r7, r7, #256	@ j, tmp393,
	add	r6, r6, #256	@ ivtmp.844, tmp394,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L64	@,
.L63:
	mov	r1, r7, lsr #8	@ tmp304, j,
	cmp	r6, #0	@ ivtmp.844,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.844
	add	lr, r8, r1, asl #12	@, tmp306, pretmp.756, tmp304,
	add	r7, r7, r2	@ tmp393, j,
	add	r1, r4, lr	@, Yaddress, tmp306
	beq	.L62	@,
	bl	memcpy	@
.L62:
	mov	ip, r7, lsr #8	@ tmp490, tmp393,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp394, ivtmp.844,
	add	r0, r8, ip, asl #12	@, tmp492, pretmp.756, tmp490,
	add	r1, r4, r0	@, Yaddress, tmp492
	mov	r0, r6	@, tmp394
	beq	.L116	@,
	add	r7, r7, #256	@ j, tmp393,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.844, tmp394,
	bhi	.L63	@,
.L64:
	add	r9, r9, #2	@ i.864, i.864,
	cmp	fp, r9	@ ImgHeightInPixAln, i.864
	bhi	.L61	@,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
.L60:
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	mul	r1, r5, r0	@ tmp315, ImgWidthInPixAln,
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, r1, lsr #1	@, tmp315,
	bl	klib_fwrite	@
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r4, #0	@,
	beq	.L65	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.868,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #12]	@ ivtmp.836, %sfp
.L66:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L69	@,
	and	r7, sl, #7	@ pretmp.879, i.868,
	ldr	r4, [sp, #8]	@, %sfp
	mov	ip, sl, lsr #3	@ pretmp.890, i.868,
	cmp	r9, #0	@ ivtmp.836,
	mov	r6, r7, asl #8	@ tmp329, pretmp.879,
	sub	fp, r5, #1	@ tmp385, ImgWidthInPixAln,
	ubfx	fp, fp, #8, #1	@ tmp386, tmp385,,
	mla	r7, r4, ip, r6	@ pretmp.754,, pretmp.890, tmp329
	beq	.L104	@,
	mov	r0, r9	@, ivtmp.836
	add	r1, r8, r7	@, Caddress, pretmp.754
	mov	r2, #256	@,
	bl	memcpy	@
.L104:
	mov	r6, #256	@ j.867,
	cmp	r5, r6	@ ImgWidthInPixAln, j.867
	add	r4, r9, r6	@ ivtmp.869, ivtmp.836,
	bls	.L69	@,
	cmp	fp, #0	@ tmp386,
	beq	.L68	@,
	cmp	r4, #0	@ ivtmp.869,
	beq	.L109	@,
	add	r1, r7, #2048	@ tmp476, pretmp.754,
	mov	r0, r4	@, ivtmp.869
	add	r1, r8, r1	@, Caddress, tmp476
	mov	r2, r6	@, j.867
	bl	memcpy	@
.L109:
	add	r6, r6, #256	@ j.867, tmp387,
	add	r4, r4, #256	@ ivtmp.869, tmp388,
	cmp	r5, r6	@ ImgWidthInPixAln, j.867
	bls	.L69	@,
.L68:
	mov	lr, r6, lsr #8	@ tmp320, j.867,
	cmp	r4, #0	@ ivtmp.869,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.869
	add	r3, r7, lr, asl #11	@, tmp322, pretmp.754, tmp320,
	add	r6, r6, r2	@ tmp387, j.867,
	add	r1, r8, r3	@, Caddress, tmp322
	beq	.L67	@,
	bl	memcpy	@
.L67:
	mov	r0, r6, lsr #8	@ tmp478, tmp387,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp388, ivtmp.869,
	add	r1, r7, r0, asl #11	@, tmp480, pretmp.754, tmp478,
	add	r1, r8, r1	@, Caddress, tmp480
	mov	r0, r4	@, tmp388
	beq	.L109	@,
	add	r6, r6, #256	@ j.867, tmp387,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.867
	add	r4, r4, #256	@ ivtmp.869, tmp388,
	bhi	.L68	@,
.L69:
	ldr	r2, [sp, #16]	@, %sfp
	add	sl, sl, #1	@ i.868, i.868,
	add	r9, r9, r5	@ ivtmp.836, ivtmp.836, ImgWidthInPixAln
	cmp	r2, sl	@, i.868
	bhi	.L66	@,
.L65:
	ldr	r3, [sp, #120]	@, chroma_idc
	cmp	r3, #1	@,
	beq	.L152	@,
	ldr	r0, [sp, #120]	@, chroma_idc
	cmp	r0, #0	@,
	bne	.L71	@,
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #36]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
.L71:
	ldr	r3, [sp, #40]	@, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	mul	r4, r3, r2	@ D.37335,,
	b	.L148	@
.L150:
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L42	@
.L152:
	ldr	r3, [sp, #16]	@, %sfp
	cmp	r3, #0	@,
	beq	.L71	@,
	ldr	r8, [sp, #32]	@, %sfp
	mov	r7, #0	@ i.871,
	ldr	sl, [sp, #12]	@, %sfp
	mov	r9, r3	@ chrom_height,
	mla	r6, r5, r8, sl	@ tmp, ImgWidthInPixAln,,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	ldr	sl, [sp, #28]	@ ul, %sfp
	mov	r5, r5, asl #1	@ D.37337, ImgWidthInPixAln,
.L72:
	cmp	r8, #0	@ chrom_width,
	beq	.L74	@,
	mov	r1, r7, lsr #1	@ pretmp.875, i.871,
	ldrb	r4, [r6, #0]	@ zero_extendqisi2	@ tmp438,* tmp
	mov	r0, #1	@ j.870,
	cmp	r8, r0	@ chrom_width, j.870
	mul	ip, r8, r1	@ tmp336, chrom_width, pretmp.875
	add	r3, r6, #2	@ ivtmp.816, tmp,
	add	r2, sl, ip	@ ivtmp.819, ul, tmp336
	add	lr, r2, #2097152	@ tmp437, ivtmp.819,
	add	r1, r2, r0	@ ivtmp.819, ivtmp.819,
	strb	r4, [lr, #0]	@ tmp438,
	ldrb	r4, [r6, #1]	@ zero_extendqisi2	@ tmp439,
	strb	r4, [sl, ip]	@ tmp439,
	bls	.L74	@,
	mov	ip, #1	@ tmp379,
	cmp	ip, #0	@ tmp379,
	beq	.L73	@,
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ tmp468,* ivtmp.816
	add	ip, r1, #2097152	@ tmp467, ivtmp.819,
	mov	r0, #2	@ j.870,
	cmp	r8, r0	@ chrom_width, j.870
	add	r1, r1, #1	@ ivtmp.819, ivtmp.819,
	strb	lr, [ip, #0]	@ tmp468,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp469,
	add	r3, r3, r0	@ ivtmp.816, ivtmp.816,
	strb	r4, [r2, #1]	@ tmp469,
	bls	.L74	@,
.L73:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp332,* ivtmp.816
	add	lr, r1, #2097152	@ tmp331, ivtmp.819,
	mov	r2, r1	@ tmp382, ivtmp.819
	add	ip, r3, #2	@ tmp381, ivtmp.816,
	add	r0, r0, #2	@ j.870, j.870,
	strb	r4, [lr, #0]	@ tmp332,
	cmp	r8, r0	@ chrom_width, j.870
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp334,
	strb	r4, [r2], #1	@ tmp334,
	add	lr, r2, #2097152	@ tmp431, tmp382,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp432,
	add	r3, ip, #2	@ ivtmp.816, tmp381,
	strb	r4, [lr, #0]	@ tmp432,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp433,
	strb	lr, [r1, #1]	@ tmp433,
	add	r1, r2, #1	@ ivtmp.819, tmp382,
	bhi	.L73	@,
.L74:
	add	r7, r7, #2	@ i.871, i.871,
	cmp	r9, r7	@ chrom_height, i.871
	bls	.L71	@,
	add	r6, r6, r5	@ tmp, tmp, D.37337
	b	.L72	@
.L151:
	ldr	r3, [sp, #16]	@, %sfp
	cmp	r3, #0	@,
	beq	.L55	@,
	ldr	r6, [sp, #28]	@ ivtmp.861, %sfp
	mov	r7, #0	@ i.863,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	sl, [sp, #32]	@ YUV, %sfp
.L56:
	cmp	r8, #0	@ chrom_width,
	beq	.L58	@,
	ldrb	ip, [sl, #0]	@ zero_extendqisi2	@ tmp418,* YUV
	add	r3, r6, #2097152	@ tmp417, ivtmp.861,
	mov	r0, #1	@ j.862,
	cmp	r8, r0	@ chrom_width, j.862
	mov	r2, r6	@ ivtmp.781, ivtmp.861
	strb	ip, [r3, #0]	@ tmp418,
	add	r3, sl, #2	@ ivtmp.778, YUV,
	ldrb	r1, [sl, #1]	@ zero_extendqisi2	@ tmp419,
	strb	r1, [r2], #1	@ tmp419,
	bls	.L58	@,
	mov	ip, #1	@ tmp361,
	cmp	ip, #0	@ tmp361,
	beq	.L57	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp441,* ivtmp.778
	add	lr, r2, #2097152	@ tmp440, ivtmp.781,
	mov	r0, #2	@ j.862,
	cmp	r8, r0	@ chrom_width, j.862
	strb	r1, [lr, #0]	@ tmp441,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp442,
	add	r3, r3, r0	@ ivtmp.778, ivtmp.778,
	strb	r4, [r2], #1	@ tmp442,
	bls	.L58	@,
.L57:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp299,* ivtmp.778
	add	lr, r2, #2097152	@ tmp298, ivtmp.781,
	mov	r1, r2	@ tmp364, ivtmp.781
	add	ip, r3, #2	@ tmp363, ivtmp.778,
	add	r0, r0, #2	@ j.862, j.862,
	strb	r4, [lr, #0]	@ tmp299,
	cmp	r8, r0	@ chrom_width, j.862
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp301,
	strb	r4, [r1], #1	@ tmp301,
	add	lr, r1, #2097152	@ tmp411, tmp364,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp412,
	add	r3, ip, #2	@ ivtmp.778, tmp363,
	strb	r4, [lr, #0]	@ tmp412,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp413,
	strb	lr, [r2, #1]	@ tmp413,
	add	r2, r1, #1	@ ivtmp.781, tmp364,
	bhi	.L57	@,
.L58:
	add	r7, r7, #1	@ i.863, i.863,
	add	r6, r6, r8	@ ivtmp.861, ivtmp.861, chrom_width
	cmp	r9, r7	@ chrom_height, i.863
	bls	.L55	@,
	add	sl, sl, r5	@ YUV, YUV, ImgWidthInPixAln
	b	.L56	@
	.fnend
	.size	VDMHAL_V200R004_WriteBigTitle1DYuv, .-VDMHAL_V200R004_WriteBigTitle1DYuv
	.align	2
	.global	VDMHAL_V200R004_StartHwDecode
	.type	VDMHAL_V200R004_StartHwDecode, %function
VDMHAL_V200R004_StartHwDecode:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	bne	.L159	@,
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp138,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp138,
	mov	r1, #3	@,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	bgt	.L160	@,
.L157:
	movw	r1, #1144	@ tmp145,
	movw	ip, #:lower16:g_HwMem	@ tmp143,
	mul	r4, r1, r4	@ tmp144, tmp145, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp143,
	movw	r2, #:lower16:-1431655766	@ tmp148,
	movt	r2, #:upper16:-1431655766	@ tmp148,
	mov	r1, #0	@ tmp153,
	ldr	lr, [r4, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [lr, #156]	@ tmp148,
	mov	lr, #1	@ tmp158,
	ldr	r3, [r4, ip]	@ D.36726, <variable>.pVdmRegVirAddr
	str	r1, [r3, #0]	@ tmp153,* D.36726
	ldr	r0, [r4, ip]	@ temp.917, <variable>.pVdmRegVirAddr
	str	lr, [r0, #0]	@ tmp158,* temp.917
	ldr	r2, [r4, ip]	@ temp.919, <variable>.pVdmRegVirAddr
	str	r1, [r2, #0]	@ tmp153,* temp.919
	ldmfd	sp!, {r4, pc}	@
.L159:
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ble	.L157	@,
.L160:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r2, #1676	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_StartHwDecode, .-VDMHAL_V200R004_StartHwDecode
	.align	2
	.global	VDMHAL_V200R004_StartHwRepair
	.type	VDMHAL_V200R004_StartHwRepair, %function
VDMHAL_V200R004_StartHwRepair:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #1144	@ tmp144,
	mul	r5, r5, r0	@ tmp143, tmp144, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp142,
	movt	r4, #:upper16:g_HwMem	@ tmp142,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	ldr	lr, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [lr, #8]	@ dat,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr	@ tmp148,
	movt	r1, #:upper16:s_RegPhyBaseAddr	@ tmp148,
	orr	r6, r6, #67108864	@ dat.943, dat,
	ldr	r3, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp151,
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #8]	@ dat.943,
#APP
@ 1608 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	ldr	ip, [r5, r4]	@ D.36708, <variable>.pVdmRegVirAddr
	mov	r3, #0	@ tmp162,
	mov	r1, #1	@ tmp167,
	str	r3, [ip, #0]	@ tmp162,* D.36708
	ldr	r0, [r5, r4]	@ temp.951, <variable>.pVdmRegVirAddr
	str	r1, [r0, #0]	@ tmp167,* temp.951
	ldr	r2, [r5, r4]	@ temp.953, <variable>.pVdmRegVirAddr
	str	r3, [r2, #0]	@ tmp162,* temp.953
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VDMHAL_V200R004_StartHwRepair, .-VDMHAL_V200R004_StartHwRepair
	.align	2
	.global	VDMHAL_V200R004_CfgRpReg
	.type	VDMHAL_V200R004_CfgRpReg, %function
VDMHAL_V200R004_CfgRpReg:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r3, #0	@ VdhId, VdhId
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, #0	@ tmp152,
	str	r0, [sp, #12]	@ tmp152, D32
	bgt	.L169	@,
	ldr	r3, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L170	@,
.L166:
	movw	r2, #1144	@ tmp163,
	movw	r3, #:lower16:g_HwMem	@ tmp161,
	mul	r4, r2, r4	@ tmp162, tmp163, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp161,
	ldr	r0, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:536920579	@ tmp173,
	movt	r1, #:upper16:536920579	@ tmp173,
	movw	r2, #:lower16:3148803	@ tmp180,
	bic	r5, r0, #15	@ tmp160, <variable>.MsgSlotAddr,
	movt	r2, #:upper16:3148803	@ tmp180,
	mov	r0, #0	@ D.36483,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [ip, #16]	@ tmp160,
	mov	r5, #7	@ tmp166,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [ip, #36]	@ tmp166,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #12]	@ tmp173,
	ldr	r1, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #60]	@ tmp180,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #64]	@ tmp180,
	ldr	r1, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #68]	@ tmp180,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #72]	@ tmp180,
	ldr	r1, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #76]	@ tmp180,
	ldr	ip, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #80]	@ tmp180,
	ldr	r1, [r4, r3]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r1, #84]	@ tmp180,
.L165:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L170:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	subs	r2, r0, #0	@ D.36487,
	strne	r2, [r1, #0]	@ D.36487, <variable>.pVdmRegVirAddr
	bne	.L166	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36483,
	b	.L165	@
.L169:
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #1338	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36483,
	b	.L165	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpReg, .-VDMHAL_V200R004_CfgRpReg
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V200R004_CfgRpMsg
	.type	VDMHAL_V200R004_CfgRpMsg, %function
VDMHAL_V200R004_CfgRpMsg:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r0	@ pRepairParam, pRepairParam
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r1, #36]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L209	@,
	ldr	r2, [r6, #552]	@ D.36350, <variable>.ValidGroupNum
	sub	r3, r2, #1	@ tmp226, D.36350,
	cmp	r3, #127	@ tmp226,
	bhi	.L210	@,
	ldr	r0, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r8, #0	@ tmp237,
	ldr	r3, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r1, r0, asl #4	@ tmp230, <variable>.ImageHeight,
	adds	ip, r1, #31	@ tmp232, tmp230,
	mov	r0, r3, asl #9	@ tmp229, <variable>.ImageWidth,
	addmi	r2, r1, #62	@, tmp234, tmp230,
	movpl	r2, ip	@, tmp234, tmp232
	mov	r1, r3, asl #4	@ pic_width, <variable>.ImageWidth,
	adds	ip, r1, #15	@ tmp253, pic_width,
	str	lr, [sl, #0]	@ <variable>.RefImageAddr,* pMsgBase
	mov	r2, r2, asr #5	@ tmp236, tmp234,
	addmi	r3, r1, #30	@, tmp255, pic_width,
	movpl	r3, ip	@, tmp255, tmp253
	ldr	lr, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mul	ip, r2, r0	@ ChromaOffset, tmp236, tmp229
	bic	r0, r3, #15	@ tmp258, tmp255,
	add	r1, ip, lr	@ tmp243, ChromaOffset, <variable>.RefImageAddr
	str	r1, [sl, #4]	@ tmp243,
	ldr	lr, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	lr, [sl, #8]	@ <variable>.ImageAddr,
	ldr	r1, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	r2, ip, r1	@ tmp250, ChromaOffset, <variable>.ImageAddr
	str	r2, [sl, #12]	@ tmp250,
	str	r0, [sl, #16]	@ tmp258,
	str	r8, [sl, #20]	@ tmp237,
	ldr	r3, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	ip, r3, #1	@ tmp265, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp269, <variable>.ImageHeight,
	mov	r1, ip, asl #23	@ tmp270, tmp265,
	mov	r0, r1, lsr #23	@ tmp270, tmp270,
	bfi	r0, r2, #16, #9	@ tmp270, tmp269,,
	str	r0, [sp, #4]	@ tmp270,
	str	r0, [sl, #24]	@ tmp270,
	ldr	r3, [r6, #568]	@ prephitmp.1034, <variable>.FullRepair
	cmp	r3, r8	@ prephitmp.1034,
	bne	.L176	@,
	ldr	ip, [r6, #552]	@ temp.1112, <variable>.ValidGroupNum
	cmp	ip, r8	@ temp.1112,
	movle	r8, r3	@ actual_repairTime, prephitmp.1034
	ble	.L178	@,
	mov	r7, r3	@ actual_repairTime.1113, i.1110
	mov	fp, sl	@ pMsgBase, pMsgBase
	b	.L180	@
.L211:
	add	r1, r6, r3, asl #2	@, tmp290, pRepairParam, i.1110,
	sxth	lr, r5	@ prephitmp.1036, prephitmp.1036
	adds	r4, lr, #7	@ tmp281, prephitmp.1036,
	ldrsh	r1, [r1, #38]	@ <variable>.EndMbn, <variable>.EndMbn
	addmi	r0, lr, #14	@, tmp283, prephitmp.1036,
	movpl	r0, r4	@, tmp283, tmp281
	bic	lr, r0, #7	@ tmp286, tmp283,
	adds	r4, r1, #7	@ tmp293, <variable>.EndMbn,
	addmi	r1, r1, #14	@, tmp295, <variable>.EndMbn,
	movpl	r1, r4	@, tmp295, tmp293
	bic	r1, r1, #7	@ tmp298, tmp295,
	cmp	lr, r1	@ tmp286, tmp298
	addle	r4, r3, #1	@ i.1111, i.1110,
	movle	r8, r7	@ actual_repairTime, actual_repairTime.1113
	bgt	.L181	@,
.L182:
	cmp	ip, r4	@ temp.1112, i.1111
	ble	.L207	@,
	add	sl, r4, #1	@ tmp271, i.1111,
	cmp	sl, #127	@ tmp271,
	bgt	.L207	@,
	mov	r3, r4	@ i.1110, i.1111
	mov	r7, r8	@ actual_repairTime.1113, actual_repairTime
.L180:
	add	r2, r3, #10	@ tmp418, i.1110,
	cmp	r3, #0	@ i.1110,
	mov	r5, r2, asl #2	@ tmp273, tmp418,
	add	r4, r5, r6	@ tmp274, tmp273, pRepairParam
	ldrh	sl, [r5, r6]	@ D.36402, <variable>.StartMbn
	ldrh	r5, [r4, #2]	@ prephitmp.1036, <variable>.EndMbn
	bne	.L211	@,
.L181:
	tst	r3, #1	@ i.1110,
	add	r2, r6, r2, asl #2	@, ivtmp.1061, pRepairParam, tmp418,
	movne	r9, r7	@ actual_repairTime.1113, actual_repairTime.1113
	bne	.L183	@,
	add	r4, r3, #1	@ i.1111, i.1110,
	cmp	r3, #0	@ i.1110,
	cmpgt	ip, r4	@, temp.1112, i.1111
	ble	.L203	@,
	cmp	r4, #127	@ i.1111,
	bgt	.L203	@,
	ldrsh	r8, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	sxth	lr, r5	@ prephitmp.1036, prephitmp.1036
	adds	r0, lr, #7	@ tmp438, prephitmp.1036,
	addmi	r5, lr, #14	@, tmp440, prephitmp.1036,
	movpl	r5, r0	@, tmp440, tmp438
	add	r1, r8, #7	@ tmp443, <variable>.StartMbn,
	cmp	r8, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp440,
	movlt	r8, r1	@ <variable>.StartMbn, tmp443
	bic	r3, r8, #7	@ D.37704, <variable>.StartMbn,
	cmp	r5, r3	@ end_Mb, D.37704
	bgt	.L196	@,
	add	r3, r3, #1	@ tmp448, D.37704,
	cmp	r5, r3	@ end_Mb, tmp448
	beq	.L196	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r1, r0, #7	@ tmp450, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp452, <variable>.EndMbn,
	movpl	lr, r1	@, tmp452, tmp450
	bic	r8, lr, #7	@ tmp454, tmp452,
	cmp	r5, r8	@ end_Mb, tmp454
	bgt	.L185	@,
.L196:
	ldrh	r5, [r2, #6]	@ prephitmp.1036, <variable>.EndMbn
	add	r2, r2, #4	@ ivtmp.1061, ivtmp.1061,
	mov	r3, r4	@ i.1110, i.1111
	mov	r9, r7	@ actual_repairTime.1113, actual_repairTime.1113
.L183:
	add	r4, r3, #1	@ i.1111, i.1110,
	sxth	r5, r5	@ prephitmp.1036, prephitmp.1036
	cmp	r3, #0	@ i.1110,
	cmpgt	ip, r4	@, temp.1112, i.1111
	add	r1, r2, #4	@ tmp423, ivtmp.1061,
	mov	r7, r4	@ i.1111, i.1111
	ble	.L208	@,
.L184:
	cmp	r4, #127	@ i.1111,
	bgt	.L208	@,
	ldrsh	lr, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp333, prephitmp.1036,
	addmi	r5, r5, #14	@, tmp335, prephitmp.1036,
	movpl	r5, r3	@, tmp335, tmp333
	mov	r3, r4	@ i.1110, i.1111
	add	r8, lr, #7	@ tmp341, <variable>.StartMbn,
	cmp	lr, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp335,
	movlt	lr, r8	@ <variable>.StartMbn, tmp341
	bic	r0, lr, #7	@ D.37704, <variable>.StartMbn,
	cmp	r5, r0	@ end_Mb, D.37704
	add	r8, r0, #1	@ tmp344, D.37704,
	bgt	.L187	@,
	cmp	r5, r8	@ end_Mb, tmp344
	beq	.L187	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r8, r0, #7	@ tmp346, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp348, <variable>.EndMbn,
	movpl	lr, r8	@, tmp348, tmp346
	bic	r0, lr, #7	@ tmp351, tmp348,
	cmp	r5, r0	@ end_Mb, tmp351
	bgt	.L205	@,
.L187:
	ldrh	r8, [r2, #6]	@ prephitmp.1036, <variable>.EndMbn
	add	r4, r4, #1	@ i.1111, i.1111,
	cmp	r7, #0	@ i.1111,
	cmpgt	ip, r4	@, temp.1112, i.1111
	add	r2, r1, #4	@ ivtmp.1061, tmp423,
	sxth	r5, r8	@ prephitmp.1036, prephitmp.1036
	ble	.L208	@,
	ldrsh	lr, [r1, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp456, prephitmp.1036,
	addmi	r5, r5, #14	@, tmp458, prephitmp.1036,
	movpl	r5, r3	@, tmp458, tmp456
	add	r3, r7, #1	@ i.1110, i.1111,
	cmp	lr, #0	@ <variable>.StartMbn,
	add	r7, lr, #7	@ tmp461, <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp458,
	movlt	lr, r7	@ <variable>.StartMbn, tmp461
	bic	r8, lr, #7	@ D.37704, <variable>.StartMbn,
	cmp	r5, r8	@ end_Mb, D.37704
	add	r7, r8, #1	@ tmp466, D.37704,
	bgt	.L200	@,
	cmp	r5, r7	@ end_Mb, tmp466
	beq	.L200	@,
	ldrsh	lr, [r1, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r7, lr, #7	@ tmp468, <variable>.EndMbn,
	addmi	r8, lr, #14	@, tmp470, <variable>.EndMbn,
	movpl	r8, r7	@, tmp470, tmp468
	bic	r0, r8, #7	@ tmp472, tmp470,
	cmp	r5, r0	@ end_Mb, tmp472
	bgt	.L205	@,
.L200:
	ldrh	r5, [r1, #6]	@ prephitmp.1036, <variable>.EndMbn
	add	r4, r3, #1	@ i.1111, i.1110,
	cmp	r3, #0	@ i.1110,
	cmpgt	ip, r4	@, temp.1112, i.1111
	add	r1, r2, #4	@ tmp423, ivtmp.1061,
	mov	r7, r4	@ i.1111, i.1111
	sxth	r5, r5	@ prephitmp.1036, prephitmp.1036
	bgt	.L184	@,
.L208:
	mov	r7, r9	@ actual_repairTime.1113, actual_repairTime.1113
.L203:
	add	r5, r6, r3, asl #2	@, tmp326, pRepairParam, i.1110,
	ldrsh	r3, [r5, #42]	@ pretmp.1082, <variable>.EndMbn
	adds	ip, r3, #7	@ pretmp.1042, pretmp.1082,
	addmi	r2, r3, #14	@, pretmp.1042, pretmp.1082,
	movpl	r2, ip	@, pretmp.1042, pretmp.1042
	bic	r5, r2, #7	@ end_Mb, pretmp.1042,
	b	.L185	@
.L207:
	ldr	r3, [r6, #568]	@ prephitmp.1034, <variable>.FullRepair
	mov	sl, fp	@ pMsgBase, pMsgBase
.L176:
	cmp	r3, #1	@ prephitmp.1034,
	beq	.L190	@,
.L178:
	sub	r8, r8, #1	@ tmp392, actual_repairTime,
	uxth	r8, r8	@ prephitmp.1032, tmp392
.L192:
	mov	r0, #0	@ tmp406,
	str	r0, [sp, #4]	@ tmp406, D32
	ldr	r2, [r6, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r3, [sp, #6]	@ zero_extendqisi2	@,
	ldr	lr, [r6, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r3, r2, #0, #1	@ tmp408, <variable>.Compress_en,,
	strh	r8, [sp, #4]	@ movhi	@ prephitmp.1032, <variable>.total_grp_num_minus1
	uxtb	r1, r3	@ tmp411, tmp408
	bfi	r1, lr, #4, #2	@ tmp411, <variable>.Pic_type,,
	bfi	r1, lr, #6, #2	@ tmp414, <variable>.Pic_type,,
	strb	r1, [sp, #6]	@ tmp414,
	ldr	ip, [sp, #4]	@ D32.1109, D32
	str	ip, [sl, #28]	@ D32.1109,
.L173:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L205:
	mov	r7, r9	@ actual_repairTime.1113, actual_repairTime.1113
.L185:
	ldr	ip, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	r8, r7, #1	@ actual_repairTime, actual_repairTime.1113,
	ldr	r2, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r1, r2, ip	@ D.37694, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r1, r5	@ D.37694, end_Mb
	suble	r5, r1, #1	@ end_Mb, D.37694,
	cmp	r8, #252	@ actual_repairTime,
	bgt	.L212	@,
	sxth	lr, sl	@ D.36402, D.36402
	mov	r0, #0	@,
	add	r9, lr, #7	@ tmp358, D.36402,
	cmp	lr, r0	@ D.36402,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	movlt	lr, r9	@ D.36402, tmp358
	bic	r9, lr, #7	@ cur_StartMb, D.36402,
	str	r0, [sp, #4]	@, D32
	mov	r0, r9	@, cur_StartMb
	bl	__aeabi_idivmod	@
	ldr	sl, [sp, #4]	@ tmp368,
	mov	r0, r9	@, cur_StartMb
	bfi	sl, r1, #0, #9	@ tmp368,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	add	r1, r7, #4	@ tmp374, actual_repairTime.1113,
	mov	ip, #0	@,
	mov	r7, r7, asl #3	@ tmp389, actual_repairTime.1113,
	add	r7, r7, #36	@ tmp390, tmp389,
	bfi	sl, r0, #16, #9	@ tmp373,,,
	mov	r0, r5	@, end_Mb
	str	sl, [fp, r1, asl #3]	@ D32.1086,* pMsgBase
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	str	ip, [sp, #4]	@, D32
	bl	__aeabi_idivmod	@
	ldr	sl, [sp, #4]	@ tmp383,
	mov	r0, r5	@, end_Mb
	bfi	sl, r1, #0, #9	@ tmp383,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	bfi	sl, r0, #16, #9	@ tmp388,,,
	str	sl, [sp, #4]	@ tmp388,
	str	sl, [fp, r7]	@ D32.1090,
	ldr	ip, [r6, #552]	@ temp.1112, <variable>.ValidGroupNum
	b	.L182	@
.L212:
	mov	sl, fp	@ pMsgBase, pMsgBase
	mov	r3, #1	@ tmp354,
	str	r3, [r6, #568]	@ tmp354, <variable>.FullRepair
.L190:
	mov	r8, #0	@ tmp394,
	mov	r2, #1	@ tmp393,
	mov	r3, r8	@ tmp396, tmp394
	str	r2, [r6, #552]	@ tmp393, <variable>.ValidGroupNum
	bfi	r3, r8, #16, #9	@ tmp396, tmp394,,
	str	r3, [sl, #32]	@ tmp396,
	ldr	r0, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r1, r0, #1	@ tmp400, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp404, <variable>.ImageHeight,
	mov	ip, r1, asl #23	@ tmp405, tmp400,
	mov	r3, ip, lsr #23	@ tmp405, tmp405,
	bfi	r3, r2, #16, #9	@ tmp405, tmp404,,
	str	r3, [sl, #36]	@ tmp405,
	b	.L192	@
.L210:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36349,
	b	.L173	@
.L209:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1186	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36349,
	b	.L173	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpMsg, .-VDMHAL_V200R004_CfgRpMsg
	.align	2
	.global	VDMHAL_V200R004_PrepareRepair
	.type	VDMHAL_V200R004_PrepareRepair, %function
VDMHAL_V200R004_PrepareRepair:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r4, r3, #0	@ VdhId, VdhId
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ VidStd, VidStd
	mov	r8, r1	@ pDecParam, pDecParam
	bgt	.L228	@,
	movw	r9, #1144	@ tmp149,
	movw	sl, #:lower16:g_HwMem	@ tmp150,
	mul	r9, r9, r4	@ D.36648, tmp149, VdhId
	movt	sl, #:upper16:g_HwMem	@ tmp150,
	add	r5, sl, r9	@ pHwMem, tmp150, D.36648
	ldr	r3, [sl, r9]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L229	@,
.L216:
	cmp	r2, #0	@ RepairTime,
	movw	r1, #:lower16:g_RepairParam	@ g_RepairParam.496,
	movt	r1, #:upper16:g_RepairParam	@ g_RepairParam.496,
	bne	.L218	@,
	add	r6, r1, r9	@ pRepairParam, g_RepairParam.496, D.36648
	ldr	r0, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L219	@,
	cmp	r7, #6	@ VidStd,
	bne	.L220	@,
	ldrb	r2, [r8, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	mov	r9, r6	@ pRepairParam, pRepairParam
	cmp	r2, #1	@ <variable>.PicStruct,
	movne	r2, #0	@, tmp181,
	str	r2, [r6, #1136]	@ tmp181, <variable>.Pic_type
.L220:
	mov	r0, r7	@, VidStd
	mov	r2, r8	@, pDecParam
	mov	r3, r4	@, VdhId
.L227:
	mov	r1, r5	@, pHwMem
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r0, r6	@, pRepairParam
	mov	r1, r5	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, #0	@ D.36652,
	b	.L215	@
.L218:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.36652,
	beq	.L230	@,
.L215:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L230:
	cmp	r7, #6	@ VidStd,
	bne	.L223	@,
	ldrb	ip, [r8, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	cmp	ip, #1	@ <variable>.PicStruct,
	bne	.L223	@,
	movw	r0, #1144	@ tmp164,
	mla	r3, r0, r4, r1	@ tmp165, tmp164, VdhId, g_RepairParam.496
	ldr	lr, [r3, #1124]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	lr, #0	@ <variable>.ValidGroupNum,
	ble	.L223	@,
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp177,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp177,
	add	r6, r9, #572	@ tmp168, D.36648,
	ldr	r3, [r2, #40]	@ D.36688, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	add	r6, r1, r6	@ pRepairParam, g_RepairParam.496, tmp168
	mov	r1, #2	@ tmp169,
	cmp	r3, #0	@ D.36688,
	str	r1, [r6, #564]	@ tmp169, <variable>.Pic_type
	beq	.L224	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.36688
.L225:
	mov	r2, r8	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r0, #6	@,
	b	.L227	@
.L229:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r2, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [sp, #4]	@,
	subs	r1, r0, #0	@ D.36656,
	strne	r1, [sl, r9]	@ D.36656, <variable>.pVdmRegVirAddr
	bne	.L216	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36652,
	b	.L215	@
.L228:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #1507	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36652,
	b	.L215	@
.L223:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36652,
	b	.L215	@
.L224:
	mov	r0, r3	@, D.36688
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #1572	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L225	@
.L219:
	mov	r0, r2	@, RepairTime
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36652,
	b	.L215	@
	.fnend
	.size	VDMHAL_V200R004_PrepareRepair, .-VDMHAL_V200R004_PrepareRepair
	.align	2
	.global	VDMHAL_V200R004_UpdateHardwareInfo
	.type	VDMHAL_V200R004_UpdateHardwareInfo, %function
VDMHAL_V200R004_UpdateHardwareInfo:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0	@ VdhId, VdhId
	bgt	.L232	@,
	movw	r4, #1144	@ tmp219,
	movw	r6, #:lower16:g_HwMem	@ tmp356,
	mul	r4, r4, r5	@ tmp218, tmp219, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp356,
	movw	r3, #:lower16:g_DSPState	@ tmp216,
	movt	r3, #:upper16:g_DSPState	@ tmp216,
	ldr	r7, [r3, #0]	@ D.36141, g_DSPState
	ldr	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L247	@,
.L234:
	mov	r2, #180	@ tmp231,
	ldr	r0, [r3, #12]	@ D.36156,
	mul	r1, r2, r5	@ tmp230, tmp231, VdhId
	movw	r4, #:lower16:g_BackUp	@ tmp358,
	movt	r4, #:upper16:g_BackUp	@ tmp358,
	cmp	r7, #1	@ D.36141,
	movne	r7, #0	@, D.37876
	moveq	r7, #1	@, D.37876
	cmp	r7, #1	@ D.37876,
	add	r2, r1, r4	@ tmp232, tmp230, tmp358
	str	r0, [r1, r4]	@ D.36156, <variable>.BasicCfg1
	ldr	r8, [r3, #28]	@ D.36160,
	str	r8, [r2, #4]	@ D.36160, <variable>.VdmState
	beq	.L248	@,
	add	r8, r3, #4096	@ D.36188, D.36153,
	ldr	r1, [r8, #0]	@ D.36189,* D.36188
	str	r1, [r2, #16]	@ D.36189, <variable>.SedSta
	ldr	r0, [r8, #20]	@ D.36193,
	str	r0, [r2, #20]	@ D.36193, <variable>.SedEnd0
	ldr	ip, [r3, #208]	@ temp.1191,
	str	ip, [r2, #8]	@ temp.1191, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ temp.1195,
	str	r6, [r2, #12]	@ temp.1195, <variable>.SwitchRounding
	ldr	r1, [r3, #176]	@ D.36207,
	str	r1, [r2, #24]	@ D.36207, <variable>.DecCyclePerPic
	ldr	r8, [r3, #180]	@ D.36211,
	str	r8, [r2, #28]	@ D.36211, <variable>.RdBdwidthPerPic
	ldr	r0, [r3, #184]	@ D.36215,
	str	r0, [r2, #32]	@ D.36215, <variable>.WrBdWidthPerPic
	ldr	ip, [r3, #188]	@ D.36219,
	str	ip, [r2, #36]	@ D.36219, <variable>.RdReqPerPic
	ldr	r6, [r3, #192]	@ D.36223,
	str	r6, [r2, #40]	@ D.36223, <variable>.WrReqPerPic
.L241:
	add	r3, r3, #33024	@ tmp357, D.36153,
	mov	r2, #180	@ tmp338,
	add	r8, r3, #128	@ D.37917, tmp357,
	mla	r0, r2, r5, r4	@ ivtmp.1190, tmp338, VdhId, tmp358
	mov	r2, r3	@ ivtmp.1186, tmp357
.L242:
	mov	r1, r2	@ tmp359, ivtmp.1186
	add	ip, r0, #4	@ tmp360, ivtmp.1190,
	ldr	r6, [r1], #4	@ D.36229,
	str	r6, [r0, #52]	@ D.36229, <variable>.LumaHistorgam
	add	r0, ip, #4	@ ivtmp.1190, tmp360,
	ldr	r6, [r2, #4]	@ D.36229,
	add	r2, r1, #4	@ ivtmp.1186, tmp359,
	cmp	r2, r8	@ ivtmp.1186, D.37917
	str	r6, [ip, #52]	@ D.36229, <variable>.LumaHistorgam
	bne	.L242	@,
	cmp	r7, #0	@ D.37876,
	moveq	r1, #180	@ tmp345,
	ldreq	r2, [r3, #128]	@ D.36235,
	mlaeq	r4, r1, r5, r4	@ tmp346, tmp345, VdhId, tmp358
	movne	r0, #0	@ D.36139,
	moveq	r0, r7	@ D.36139, D.37876
	streq	r2, [r4, #48]	@ D.36235, <variable>.LumaSumLow
	ldreq	r3, [r3, #132]	@ D.36239,
	streq	r3, [r4, #44]	@ D.36239, <variable>.LumaSumHigh
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L248:
	movw	lr, #1144	@ tmp240,
	mla	ip, lr, r5, r6	@ tmp241, tmp240, VdhId, tmp356
	ldr	r0, [ip, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ pMsgBase,
	beq	.L249	@,
	bic	lr, r8, #-16777216	@ DecSliceNum, D.36160,
	mov	r2, #180	@ tmp255,
	bic	r8, lr, #16646144	@ DecSliceNum, DecSliceNum,
	sub	r1, r8, #1	@ tmp248, DecSliceNum,
	cmp	r1, #127	@ tmp248,
	subls	r0, r8, #-1073741823	@ tmp249, DecSliceNum,
	movls	r1, r8, asl #4	@ tmp251, DecSliceNum,
	movhi	r0, #0	@ prephitmp.1167,
	subls	r1, r1, #8	@ prephitmp.1169, tmp251,
	movls	r0, r0, asl #4	@ prephitmp.1167, tmp249,
	movhi	r1, #8	@ prephitmp.1169,
	mla	r8, r2, r5, r4	@ tmp256, tmp255, VdhId, tmp358
	ldr	ip, [r3, r0]	@ tmp258,* prephitmp.1167
	movw	r0, #1144	@ tmp268,
	mul	lr, r0, r5	@ tmp267, tmp268, VdhId
	str	ip, [r8, #16]	@ tmp258, <variable>.SedSta
	ldr	r1, [r3, r1]	@ tmp265,* prephitmp.1169
	ldr	r3, [lr, r6]	@ D.36153, <variable>.pVdmRegVirAddr
	str	r1, [r8, #20]	@ tmp265, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ D.36197,
	str	r0, [r8, #8]	@ D.36197, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ D.36201,
	str	r6, [r8, #12]	@ D.36201, <variable>.SwitchRounding
	b	.L241	@
.L247:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L234	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36139,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L232:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #1020	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36139,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L249:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1060	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36139,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VDMHAL_V200R004_UpdateHardwareInfo, .-VDMHAL_V200R004_UpdateHardwareInfo
	.align	2
	.global	VDMHAL_V200R004_CheckReg
	.type	VDMHAL_V200R004_CheckReg, %function
VDMHAL_V200R004_CheckReg:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r1, #0	@ VdhId, VdhId
	mov	r7, r0	@ reg_id, reg_id
	bgt	.L263	@,
	movw	r8, #1144	@ tmp145,
	movw	r5, #:lower16:g_HwMem	@ tmp164,
	mul	r8, r8, r6	@ tmp144, tmp145, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp164,
	ldr	r3, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L264	@,
.L253:
	sub	r0, r7, #1	@ tmp155, reg_id,
	cmp	r0, #3	@ tmp155,
	ldrls	pc, [pc, r0, asl #2]	@ tmp155
	b	.L255	@
.L260:
	.word	.L256
	.word	.L257
	.word	.L258
	.word	.L259
.L259:
	movw	ip, #1144	@ tmp160,
	mov	r2, #40	@ reg_type,
	mul	r6, ip, r6	@ tmp159, tmp160, VdhId
	ldr	r1, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L255:
	mov	r3, r7	@, reg_id
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC20	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ dat,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L256:
	movw	ip, #1144	@ tmp160,
	mov	r2, #28	@ reg_type,
	mul	r6, ip, r6	@ tmp159, tmp160, VdhId
	ldr	r1, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L257:
	movw	ip, #1144	@ tmp160,
	mov	r2, #32	@ reg_type,
	mul	r6, ip, r6	@ tmp159, tmp160, VdhId
	ldr	r1, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L258:
	movw	ip, #1144	@ tmp160,
	mov	r2, #36	@ reg_type,
	mul	r6, ip, r6	@ tmp159, tmp160, VdhId
	ldr	r1, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L264:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ D.36050,
	strne	r4, [r8, r5]	@ D.36050, <variable>.pVdmRegVirAddr
	bne	.L253	@,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC19	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ dat, D.36050
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L263:
	mov	r3, r6	@, VdhId
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC18	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ dat,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VDMHAL_V200R004_CheckReg, .-VDMHAL_V200R004_CheckReg
	.align	2
	.global	VDMHAL_V200R004_EnableInt
	.type	VDMHAL_V200R004_EnableInt, %function
VDMHAL_V200R004_EnableInt:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bgt	.L270	@,
	movw	r5, #1144	@ tmp140,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	mul	r5, r5, r0	@ tmp139, tmp140, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L271	@,
.L267:
	mvn	r2, #1	@ tmp148,
	str	r2, [r3, #36]	@ tmp148,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L270:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r2, #758	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L271:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L267	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_EnableInt, .-VDMHAL_V200R004_EnableInt
	.align	2
	.global	VDMHAL_V200R004_MaskInt
	.type	VDMHAL_V200R004_MaskInt, %function
VDMHAL_V200R004_MaskInt:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bgt	.L277	@,
	movw	r5, #1144	@ tmp140,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	mul	r5, r5, r0	@ tmp139, tmp140, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L278	@,
.L274:
	mvn	r2, #0	@ tmp148,
	str	r2, [r3, #36]	@ tmp148,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L277:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r2, #711	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L278:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L274	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_MaskInt, .-VDMHAL_V200R004_MaskInt
	.align	2
	.global	VDMHAL_V200R004_ClearIntState
	.type	VDMHAL_V200R004_ClearIntState, %function
VDMHAL_V200R004_ClearIntState:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bgt	.L284	@,
	movw	r5, #1144	@ tmp140,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	mul	r5, r5, r0	@ tmp139, tmp140, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L285	@,
.L281:
	mvn	r2, #0	@ tmp148,
	str	r2, [r3, #32]	@ tmp148,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L284:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r2, #645	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L285:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L281	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_ClearIntState, .-VDMHAL_V200R004_ClearIntState
	.align	2
	.global	VDMHAL_V200R004_GlbReset
	.type	VDMHAL_V200R004_GlbReset, %function
VDMHAL_V200R004_GlbReset:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r0, #:lower16:269680640	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.35953,
	beq	.L296	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp157,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp157,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp158,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #16	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1315, g_pstRegCrg
	b	.L289	@
.L297:
	ldr	lr, [r1, #372]	@ D.35960, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ i, i,
	tst	lr, #1	@ D.35960,
	str	lr, [sp, #4]	@ D.35960, u32TmpValue_93.u32
	bne	.L288	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp158
	beq	.L290	@,
.L289:
	ldr	ip, [r1, #372]	@ D.35960, <variable>.PERI_CRG93.u32
	tst	ip, #1	@ D.35960,
	str	ip, [sp, #4]	@ D.35960, u32TmpValue_93.u32
	beq	.L297	@,
.L288:
	movw	r0, #8999	@ tmp154,
	cmp	r3, r0	@ i, tmp154
	bgt	.L290	@,
.L291:
	bfc	r5, #4, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L290:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1315, g_pstRegCrg
	b	.L291	@
.L296:
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, lr}
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_GlbReset, .-VDMHAL_V200R004_GlbReset
	.align	2
	.global	VDMHAL_V200R004_ResetVdm
	.type	VDMHAL_V200R004_ResetVdm, %function
VDMHAL_V200R004_ResetVdm:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0	@ VdhId, VdhId
	.pad #8
	sub	sp, sp, #8	@,,
	ble	.L299	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC9	@,
	movw	r2, #445	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	dprint_vfmw	@
.L299:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.35924,
	beq	.L308	@,
	movw	r3, #1144	@ tmp152,
	movw	r6, #:lower16:g_HwMem	@ tmp172,
	mul	r0, r3, r5	@ tmp151, tmp152, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp172,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp171,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp171,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp173,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.445, g_pstRegCrg
	ldr	r1, [r0, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r8, [r1, #36]	@ tmp,
	ldr	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r7, r7, #64	@ u32TmpValue, u32TmpValue,
	str	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1347, g_pstRegCrg
	b	.L302	@
.L310:
	ldr	lr, [r1, #372]	@ D.35936, <variable>.PERI_CRG93.u32
	and	r0, lr, #4	@ tmp180, D.35936,
	str	lr, [sp, #4]	@ D.35936, u32TmpValue_93.u32
	uxtb	r0, r0	@ tmp181, tmp180
	cmp	r0, #0	@ tmp181,
	bne	.L301	@,
	cmp	r3, ip	@ i, tmp173
	beq	.L309	@,
.L302:
	ldr	lr, [r1, #372]	@ D.35936, <variable>.PERI_CRG93.u32
	add	r2, r3, #1	@ tmp174, i,
	add	r3, r2, #1	@ i, tmp174,
	tst	lr, #4	@ D.35936,
	str	lr, [sp, #4]	@ D.35936, u32TmpValue_93.u32
	beq	.L310	@,
.L301:
	movw	r3, #1144	@ tmp168,
	bfc	r7, #6, #1	@ u32TmpValue,,
	mul	r5, r3, r5	@ tmp167, tmp168, VdhId
	str	r7, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [ip, #36]	@ tmp,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L309:
	movw	r1, #:lower16:.LC23	@,
	mov	r2, r5	@, VdhId
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1347, g_pstRegCrg
	b	.L301	@
.L308:
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_ResetVdm, .-VDMHAL_V200R004_ResetVdm
	.align	2
	.global	VDMHAL_V200R004_CloseHAL
	.type	VDMHAL_V200R004_CloseHAL, %function
VDMHAL_V200R004_CloseHAL:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp137,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp137,
	ldr	r3, [r3, #40]	@ D.35735, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35735,
	beq	.L313	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35735
	ldmfd	sp!, {r4, pc}	@
.L313:
	mov	r0, r3	@, D.35735
	movw	r1, #:lower16:.LC15	@,
	mov	r2, #228	@,
	movt	r1, #:upper16:.LC15	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VDMHAL_V200R004_CloseHAL, .-VDMHAL_V200R004_CloseHAL
	.align	2
	.global	VDMHAL_V200R004_MakeDecReport
	.type	VDMHAL_V200R004_MakeDecReport, %function
VDMHAL_V200R004_MakeDecReport:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r1, #0	@ pDecReport, pDecReport
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ VidStd, VidStd
	mov	r8, r2	@ VdhId, VdhId
	beq	.L338	@,
	movw	r0, #1144	@ tmp160,
	movw	r3, #:lower16:g_HwMem	@ tmp161,
	mul	r2, r0, r2	@ tmp159, tmp160, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp161,
	add	r5, r3, r2	@ pHwMem, tmp161, tmp159
	ldr	r0, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L339	@,
	movw	lr, #:lower16:g_DSPState	@ tmp166,
	movt	lr, #:upper16:g_DSPState	@ tmp166,
	mov	r0, r6	@, pDecReport
	mov	r1, #528	@,
	ldr	r7, [lr, #0]	@ D.36554, g_DSPState
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp260,
	movt	r3, #:upper16:g_BackUp	@ tmp260,
	mov	r1, #180	@ tmp171,
	ldr	r0, [r5, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	r2, r1, r8, r3	@ tmp172, tmp171, VdhId, tmp260
	str	r0, [r6, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	ip, [r2, #4]	@ D.36568, <variable>.VdmState
	mov	r2, ip, lsr #17	@ tmp174, D.36568,
	and	r1, r2, #3	@ tmp175, tmp174,
	cmp	r1, #1	@ tmp175,
	moveq	r2, #0	@ prephitmp.1410,
	beq	.L320	@,
	eor	ip, r2, #1	@ tmp179, tmp174,
	and	r2, ip, #1	@ tmp181, tmp179,
	cmp	r4, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1410, tmp181
.L320:
	mov	r1, #180	@ tmp187,
	str	r2, [r6, #0]	@ prephitmp.1410, <variable>.RetType
	mla	r3, r1, r8, r3	@ tmp188, tmp187, VdhId, tmp260
	cmp	r4, #0	@ VidStd,
	cmpne	r4, #15	@, VidStd,
	ldr	r0, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, r0, #-16777216	@ D.36578, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.36578, D.36578,
	str	r2, [r6, #8]	@ D.36578, <variable>.DecSliceNum
	bne	.L321	@,
	cmp	r7, #1	@ D.36554,
	beq	.L340	@,
	movw	ip, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp213,
	movt	ip, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp213,
	ldrb	r1, [ip, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	beq	.L341	@,
.L321:
	cmp	r2, #128	@ D.36578,
	movhi	r3, #0	@ tmp229,
	strhi	r3, [r6, #8]	@ tmp229, <variable>.DecSliceNum
	ldr	r7, [r5, #28]	@ D.36602, <variable>.MsgSlotAddr
	mov	r0, r7	@, D.36602
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.36604,
	beq	.L342	@,
	ldr	r3, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r8, r8, asl #11	@ tmp258, VdhId,
	movw	r4, #:lower16:g_UpMsg	@ tmp259,
	movt	r4, #:upper16:g_UpMsg	@ tmp259,
	add	r5, r4, r8	@ tmp234, tmp259, tmp258
	mov	r2, r3, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp234
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r6, #8]	@ temp.1451, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1451,
	beq	.L325	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1451
	sub	lr, ip, #1	@ tmp263, temp.1451,
	add	r3, r6, #4	@ ivtmp.1439, pDecReport,
	strh	r2, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, lr, r0	@ tmp265, tmp263,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1436, tmp234,
	strh	r1, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L325	@,
	cmp	r2, #0	@ tmp265,
	beq	.L326	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1451
	strh	r2, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1436, ivtmp.1436,
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1439, ivtmp.1439,
	bcs	.L325	@,
.L326:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r1, r5, #16	@ tmp267, ivtmp.1436,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1451
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp268, ivtmp.1439,
	ldrh	r2, [r5, #8]	@, g_UpMsg
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r1, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r1, #16	@ ivtmp.1436, tmp267,
	ldrh	r3, [r1, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1439, tmp268,
	bcc	.L326	@,
.L325:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.36618
	bne	.L343	@,
.L317:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L343:
	ldr	r2, [r6, #8]	@, <variable>.DecSliceNum
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.36602
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	ip, r0, asl #2	@ tmp245, <variable>.DecSliceNum,
	cmp	ip, #3	@ tmp245,
	beq	.L328	@,
	add	r4, r4, r8	@ ivtmp.1426, tmp259, tmp258
	mov	r5, #0	@ i_cnt,
.L329:
	ldr	r7, [r4, #4]	@ tmp250, g_UpMsg
	mov	r2, r5	@, i_cnt
	ldr	lr, [r4, #8]	@ tmp251, g_UpMsg
	mov	r0, #6	@,
	ldr	ip, [r4, #12]	@ tmp252, g_UpMsg
	movw	r1, #:lower16:.LC27	@,
	ldr	r3, [r4, #0]	@ tmp249, g_UpMsg
	movt	r1, #:upper16:.LC27	@,
	str	r7, [sp, #0]	@ tmp250,
	add	r5, r5, #4	@ i_cnt, i_cnt,
	str	lr, [sp, #4]	@ tmp251,
	add	r4, r4, #16	@ ivtmp.1426, ivtmp.1426,
	str	ip, [sp, #8]	@ tmp252,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r1, r2, asl #2	@ tmp253, <variable>.DecSliceNum,
	sub	r3, r1, #3	@ tmp255, tmp253,
	cmp	r3, r5	@ tmp255, i_cnt
	bhi	.L329	@,
.L328:
	mov	r0, #6	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36549,
	b	.L317	@
.L341:
	ldrb	r0, [r3, #19]	@ zero_extendqisi2	@ tmp221, <variable>.SedSta
	and	r3, r0, #3	@ tmp223, tmp221,
	cmp	r3, #2	@ tmp223,
	bne	.L321	@,
	mov	r2, #1	@ tmp224,
	strh	r1, [r6, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.36549, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r6, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r2, [r6, #8]	@ tmp224, <variable>.DecSliceNum
	b	.L317	@
.L340:
	ldr	r3, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r3, #21, #2	@ tmp207, <variable>.SedSta,,
	cmp	r3, #2	@ tmp207,
	bne	.L321	@,
	mov	lr, #0	@ movhi	@,
	str	r7, [r6, #8]	@ D.36554, <variable>.DecSliceNum
	strh	lr, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.36549,
	strh	lr, [r6, #12]	@ movhi	@, <variable>.SliceMbRange
	b	.L317	@
.L342:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1459	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC17	@,
	movt	r3, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36549,
	b	.L317	@
.L339:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1397	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36549,
	b	.L317	@
.L338:
	mov	r0, r6	@, pDecReport
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1396	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC24	@,
	movt	r3, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36549,
	b	.L317	@
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareDec
	.type	VDMHAL_V200R004_PrepareDec, %function
VDMHAL_V200R004_PrepareDec:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r1, #0	@ pDecParam, pDecParam
	mov	r4, r0	@ VidStd, VidStd
	mov	r6, r2	@ VdhId, VdhId
	beq	.L347	@,
	cmp	r2, #0	@ VdhId,
	ble	.L346	@,
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #876	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L347:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L346:
	movw	r7, #:lower16:s_RegPhyBaseAddr	@ tmp139,
	movt	r7, #:upper16:s_RegPhyBaseAddr	@ tmp139,
	cmp	r0, #6	@ VidStd,
	movne	r1, #0	@,
	moveq	r1, #1	@,
	ldr	r0, [r7, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	cmp	r4, #6	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L347	@
.L352:
	.word	.L348
	.word	.L347
	.word	.L349
	.word	.L350
	.word	.L347
	.word	.L347
	.word	.L351
.L351:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	AVSHAL_V200R004_StartDec	@
.L348:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
.L349:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP4HAL_V200R004_StartDec	@
.L350:
	mov	r0, r5	@, pDecParam
	mov	r1, r6	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
	.global	__aeabi_uidiv
	.align	2
	.global	VDMHAL_V200R004_ArrangeMem
	.type	VDMHAL_V200R004_ArrangeMem, %function
VDMHAL_V200R004_ArrangeMem:
	.fnstart
.LFB1601:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	ip, r0, #0	@, MemAddr
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r2	@ Width, Width
	mov	r6, r3	@ Height, Height
	str	ip, [sp, #8]	@, %sfp
	str	r1, [sp, #12]	@ MemSize, %sfp
	ldr	r5, [sp, #68]	@ ChanID, ChanID
	ldr	fp, [sp, #72]	@ pVdmMemArrange, pVdmMemArrange
	ldr	r8, [sp, #76]	@ align_length, align_length
	beq	.L394	@,
	cmp	r3, #31	@ Height,
	movgt	r3, #0	@, tmp178
	movle	r3, #1	@, tmp178
	sub	r9, r2, #32	@ tmp173, Width,
	movw	r2, #8160	@ tmp175,
	cmp	r9, r2	@ tmp173, tmp175
	movls	r9, r3	@, tmp181, tmp178
	orrhi	r9, r3, #1	@,, tmp181, tmp178
	cmp	r9, #0	@ tmp181,
	bne	.L357	@,
	cmp	r6, #8192	@ Height,
	bgt	.L357	@,
	cmp	fp, #0	@ pVdmMemArrange,
	beq	.L395	@,
	add	r4, r4, #15	@ tmp186, Width,
	add	r6, r6, #15	@ tmp187, Height,
	mov	r0, fp	@, pVdmMemArrange
	mov	r1, #416	@,
	mov	r7, r4, asr #4	@ ImgWidthInMb, tmp186,
	mov	r4, r6, asr #4	@ ImgHeightInMb, tmp187,
	ldr	sl, [sp, #56]	@ PmvNum, PmvNum
	bl	__memzero	@
	movw	r0, #:lower16:g_not_direct_8x8_inference_flag	@ tmp195,
	movt	r0, #:upper16:g_not_direct_8x8_inference_flag	@ tmp195,
	mul	r3, r7, r4	@ tmp197, ImgWidthInMb, ImgHeightInMb
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	sl, #20	@ PmvNum,
	movge	sl, #20	@ PmvNum.1529,
	cmp	r4, #36	@ ImgHeightInMb,
	cmple	r7, #45	@, ImgWidthInMb,
	movle	r2, #64	@, ColMbSize,
	movgt	r2, #32	@, ColMbSize,
	cmp	r1, #1	@ g_not_direct_8x8_inference_flag,
	movne	r1, r2	@ ColMbSize, ColMbSize
	moveq	r1, #64	@ ColMbSize,
	mul	ip, r1, r3	@ tmp198, ColMbSize, tmp197
	ldr	r1, [sp, #12]	@, %sfp
	add	r6, ip, #127	@ tmp199, tmp198,
	bic	r6, r6, #127	@ PmvSlotLen, tmp199,
	mul	r0, sl, r6	@ tmp200, PmvNum.1529, PmvSlotLen
	cmp	r0, r1	@ tmp200,
	bge	.L396	@,
	mov	r3, r7, asl #4	@ tmp207, ImgWidthInMb,
	str	sl, [fp, #404]	@ PmvNum.1529, <variable>.ValidPMVNum
	sub	sl, r3, #1	@ tmp208, tmp207,
	mov	lr, r6, asr #1	@ tmp206, PmvSlotLen,
	add	r0, sl, r8	@, tmp208, align_length
	mov	r1, r8	@, align_length
	str	lr, [fp, #400]	@ tmp206, <variable>.HafPmvOffset
	mov	sl, r4, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #64]	@, UserDec
	cmp	r1, #1	@,
	addne	r3, sl, #31	@ tmp217, ImgHeightInPixAln,
	addeq	r4, sl, r4, asl #5	@, tmp216, ImgHeightInPixAln, ImgHeightInMb,
	mul	ip, r8, r0	@ SlotWidth, align_length,
	movne	r3, r3, asr #5	@ tmp218, tmp217,
	addne	r3, r3, r3, asl #1	@, tmp221, tmp218, tmp218,
	movne	r3, r3, asl #5	@ tmp222, tmp221,
	str	ip, [fp, #0]	@ SlotWidth, <variable>.VahbStride
	mulne	ip, ip, r3	@ tmp223, SlotWidth, tmp222
	muleq	r4, ip, r4	@ ImgSlotLen, SlotWidth, tmp216
	movne	r4, ip, asr #1	@ ImgSlotLen, tmp223,
	cmp	r5, #0	@ ChanID,
	blt	.L366	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r8, r0	@ ChanWidth,
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r8, #1	@, ChanWidth,
	beq	.L397	@,
	add	r1, r0, #15	@ tmp235, ChanHeight,
	ldr	r3, [sp, #64]	@, UserDec
	add	lr, r8, #15	@ tmp237, ChanWidth,
	mov	r2, r1, asr #4	@ tmp236, tmp235,
	bic	ip, lr, #15	@ tmp239, tmp237,
	cmp	r3, #1	@,
	add	r0, ip, #255	@ tmp240, tmp239,
	mov	r3, r2, asl #4	@ ChanImgHeightInPixAln, tmp236,
	bic	r1, r0, #255	@ ChanSlotWidth, tmp240,
	addeq	r3, r3, r2, asl #5	@, tmp243, ChanImgHeightInPixAln, tmp236,
	muleq	r3, r1, r3	@ ChanSlotLen, ChanSlotWidth, tmp243
	beq	.L369	@,
	adds	r2, r3, #31	@ tmp244, ChanImgHeightInPixAln,
	addmi	r3, r3, #62	@, tmp246, ChanImgHeightInPixAln,
	movpl	r3, r2	@, tmp246, tmp244
	mov	lr, r3, asr #5	@ tmp248, tmp246,
	mul	ip, lr, r1	@ tmp249, tmp248, ChanSlotWidth
	add	r0, ip, ip, asl #1	@, tmp252, tmp249, tmp249,
	mov	r2, r0, asl #5	@ tmp253, tmp252,
	mov	r3, r2, asr #1	@ ChanSlotLen, tmp253,
.L369:
	cmp	r4, r3	@ ImgSlotLen, ChanSlotLen
	bgt	.L398	@,
.L366:
	add	ip, sl, #31	@ tmp261, ImgHeightInPixAln,
	mov	r7, r7, asl #9	@ tmp260, ImgWidthInMb,
	ldr	lr, [sp, #60]	@, FrameNum
	mov	r0, ip, asr #5	@ tmp262, tmp261,
	cmp	lr, #0	@,
	mul	r1, r0, r7	@ tmp263, tmp262, tmp260
	str	r1, [fp, #264]	@ tmp263, <variable>.ChromOffset
	beq	.L370	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r1, r4	@, ImgSlotLen
	ldr	r2, [sp, #12]	@, %sfp
	add	r7, ip, #1020	@ tmp264,,
	add	r3, r7, #3	@ tmp264, tmp264,
	ldr	r7, [sp, #60]	@ iftmp.441, FrameNum
	bic	lr, r3, #1020	@ tmp266, tmp264,
	bic	r0, lr, #3	@ tmp266, tmp266,
	cmp	r7, #64	@ iftmp.441,
	movge	r7, #64	@ iftmp.441,
	rsb	r3, ip, r0	@,, tmp266
	str	r3, [sp, #4]	@, %sfp
	rsb	r0, r3, r2	@,,
	bl	__aeabi_idiv	@
	cmp	r7, r0	@ iftmp.441,
	movlt	r0, r7	@ iftmp.441, iftmp.441
	movge	r0, r0	@ iftmp.441,
	str	r0, [fp, #276]	@ iftmp.441, <variable>.ValidFrameNum
	cmp	r0, #0	@ iftmp.441,
	beq	.L371	@,
	ble	.L373	@,
	ldr	ip, [sp, #4]	@, %sfp
	cmp	r0, #1	@ iftmp.441,
	ldr	lr, [sp, #8]	@, %sfp
	sub	r1, r0, #1	@ tmp300, iftmp.441,
	add	r3, fp, #4	@ ivtmp.1527, pVdmMemArrange,
	add	r2, ip, lr	@ ivtmp.1523,,
	and	ip, r1, #1	@ tmp302, tmp300,
	str	r2, [fp, #8]	@ ivtmp.1523, <variable>.FrameAddr
	mov	r1, #1	@ i,
	add	r2, r2, r4	@ ivtmp.1523, ivtmp.1523, ImgSlotLen
	ble	.L373	@,
	cmp	ip, #0	@ tmp302,
	beq	.L374	@,
	mov	r1, #2	@ i,
	cmp	r0, r1	@ iftmp.441, i
	str	r2, [r3, #8]	@ ivtmp.1523, <variable>.FrameAddr
	add	r2, r2, r4	@ ivtmp.1523, ivtmp.1523, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1527, ivtmp.1527,
	ble	.L373	@,
.L374:
	add	r1, r1, #2	@ i, i,
	add	ip, r3, #4	@ tmp304, ivtmp.1527,
	cmp	r0, r1	@ iftmp.441, i
	add	r7, r2, r4	@ ivtmp.1523, ivtmp.1523, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1523, <variable>.FrameAddr
	add	r2, r7, r4	@ ivtmp.1523, ivtmp.1523, ImgSlotLen
	str	r7, [ip, #8]	@ ivtmp.1523, <variable>.FrameAddr
	add	r3, ip, #4	@ ivtmp.1527, tmp304,
	bgt	.L374	@,
.L373:
	cmp	r5, #0	@ ChanID,
	blt	.L375	@,
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp292,
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp292,
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1497, s_pstVfmwChan
	cmp	r1, #0	@ prephitmp.1497,
	beq	.L375	@,
	ldr	r9, [fp, #404]	@ D.35902, <variable>.ValidPMVNum
	movw	lr, #:lower16:211824	@ tmp278,
	movt	lr, #:upper16:211824	@ tmp278,
	mul	r2, r9, r6	@ tmp277, D.35902, PmvSlotLen
	ldr	r3, [r1, lr]	@ <variable>.stChanMem_pmv.Length, <variable>.stChanMem_pmv.Length
	cmp	r2, r3	@ tmp277, <variable>.stChanMem_pmv.Length
	bgt	.L376	@,
	cmp	r9, #0	@ D.35902,
	ble	.L375	@,
	tst	r9, #1	@ D.35902,
	mov	r3, #0	@ ivtmp.1513,
	movw	r8, #:lower16:211820	@ tmp294,
	mov	r2, fp	@ ivtmp.1519, pVdmMemArrange
	movt	r8, #:upper16:211820	@ tmp294,
	mov	sl, r3	@ i.1537, ivtmp.1513
	beq	.L390	@,
	str	r4, [sp, #8]	@ ImgSlotLen, %sfp
	b	.L378	@
.L399:
	ldr	r4, [r7, r5, asl #2]	@ prephitmp.1497, s_pstVfmwChan
	ldr	lr, [r4, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	ip, ip, lr	@ tmp319, ivtmp.1513, <variable>.stChanMem_pmv.PhyAddr
	str	ip, [r1, #280]	@ tmp319, <variable>.PMVAddr
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1497, s_pstVfmwChan
.L378:
	ldr	r1, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	sl, sl, #1	@ tmp298, i.1537,
	cmp	r9, sl	@ D.35902, tmp298
	add	ip, r3, r6	@ ivtmp.1513, ivtmp.1513, PmvSlotLen
	add	r4, r3, r1	@ tmp285, ivtmp.1513, <variable>.stChanMem_pmv.PhyAddr
	add	r1, r2, #4	@ tmp299, ivtmp.1519,
	str	r4, [r2, #280]	@ tmp285, <variable>.PMVAddr
	add	sl, sl, #1	@ i.1537, tmp298,
	add	r3, ip, r6	@ ivtmp.1513, ivtmp.1513, PmvSlotLen
	add	r2, r1, #4	@ ivtmp.1519, tmp299,
	bgt	.L399	@,
	ldr	r4, [sp, #8]	@ ImgSlotLen, %sfp
.L375:
	ldr	r1, [sp, #4]	@, %sfp
	mov	r2, #1024	@ tmp289,
	str	r4, [fp, #408]	@ ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [fp, #412]	@ tmp289, <variable>.u32StrideByte
	mla	r3, r0, r4, r1	@ tmp288, iftmp.441, ImgSlotLen,
	mov	r0, #0	@ D.35806,
	str	r3, [fp, #4]	@ tmp288, <variable>.TotalMemUsed
.L356:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L370:
	ldr	r0, [sp, #60]	@, FrameNum
	str	r0, [fp, #276]	@, <variable>.ValidFrameNum
.L371:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #390	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC35	@,
	movt	r3, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L390:
	ldr	ip, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	mov	sl, #1	@ i.1537,
	mov	r3, r6	@ ivtmp.1513, PmvSlotLen
	add	r2, fp, #4	@ ivtmp.1519, pVdmMemArrange,
	str	ip, [fp, #280]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.PMVAddr
	str	r4, [sp, #8]	@ ImgSlotLen, %sfp
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1497, s_pstVfmwChan
	b	.L378	@
.L357:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC30	@,
	movt	r3, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L398:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #378	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC34	@,
	movt	r3, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L394:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #282	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r3, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L396:
	mov	r0, r9	@, tmp181
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #307	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r3, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L376:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #414	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC36	@,
	movt	r3, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L395:
	mov	r0, fp	@, pVdmMemArrange
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #284	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r3, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
.L397:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35806,
	b	.L356	@
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem, .-VDMHAL_V200R004_ArrangeMem
	.align	2
	.global	VDMHAL_V200R004_OpenHAL
	.type	VDMHAL_V200R004_OpenHAL, %function
VDMHAL_V200R004_OpenHAL:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r9, #:lower16:440319	@ tmp162,
	movt	r9, #:upper16:440319	@ tmp162,
	mov	r8, r1	@ Size, Size
	cmp	r0, #0	@ MemBaseAddr,
	cmpne	r1, r9	@, Size, tmp162
	mov	r7, r0	@ MemBaseAddr, MemBaseAddr
	mov	r4, r2	@ VdhId, VdhId
	movgt	r9, #0	@, tmp168
	movle	r9, #1	@, tmp168
	ble	.L411	@,
	cmp	r2, #0	@ VdhId,
	bgt	.L412	@,
	movw	r1, #1144	@ tmp173,
	movw	r5, #:lower16:g_HwMem	@ tmp297,
	mul	sl, r1, r2	@ tmp172, tmp173, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp297,
	add	r6, r5, sl	@ __p, tmp297, tmp172
	mov	r0, r6	@, __p
	bl	__memzero	@
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	mov	r3, r0	@ D.35700,
	mov	r2, r0	@, D.35700
	str	r3, [r5, sl]	@ D.35700, <variable>.pVdmRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:269733888	@,
	movt	r0, #:upper16:269733888	@,
	bl	MEM_Phy2Vir	@
	add	ip, r4, r4, asl #3	@, tmp185, VdhId, VdhId,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	rsb	ip, r4, ip, asl #4	@, tmp187, VdhId, tmp185,
	add	ip, ip, #1	@ tmp188, tmp187,
	mov	r3, r0	@ D.35704,
	mov	r2, r0	@, D.35704
	str	r3, [r5, ip, asl #3]	@ D.35704, <variable>.pBpdRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	r1, r7, #1020	@ tmp190, MemBaseAddr,
	add	r3, r1, #3	@ tmp190, tmp190,
	add	ip, r8, r7	@ tmp205, Size, MemBaseAddr
	bic	r2, r3, #1020	@ D.35709, tmp190,
	mov	r3, r6	@ ivtmp.1573, __p
	bic	r2, r2, #3	@ D.35709, D.35709,
	mov	r1, #1024	@ tmp213,
	rsb	r0, r2, ip	@ tmp206, D.35709, tmp205
	str	r2, [r6, #16]	@ D.35709, <variable>.HALMemBaseAddr
	str	r0, [r6, #20]	@ tmp206, <variable>.HALMemSize
	str	r1, [r6, #24]	@ tmp213, <variable>.VahbStride
.L404:
	add	r0, r9, #1024	@ tmp299, ivtmp.1570,
	add	lr, r9, r2	@ tmp223, ivtmp.1570, D.35709
	add	r9, r9, #3072	@ ivtmp.1570, ivtmp.1570,
	add	r1, r3, #4	@ tmp300, ivtmp.1573,
	cmp	r9, #144384	@ ivtmp.1570,
	add	ip, r0, #1024	@ ivtmp.1570, tmp299,
	str	lr, [r3, #28]	@ tmp223, <variable>.MsgSlotAddr
	add	ip, ip, r2	@ tmp306, ivtmp.1570, D.35709
	add	lr, r0, r2	@ tmp303, tmp299, D.35709
	str	ip, [r1, #32]	@ tmp306, <variable>.MsgSlotAddr
	add	r3, r3, #12	@ ivtmp.1573, ivtmp.1573,
	str	lr, [r1, #28]	@ tmp303, <variable>.MsgSlotAddr
	bne	.L404	@,
	movw	r1, #1144	@ tmp227,
	add	r3, r2, #144384	@ PhyAddr.1574, D.35709,
	mla	r4, r1, r4, r5	@ tmp228, tmp227, VdhId, tmp297
	add	ip, r3, #261120	@ PhyAddr.1581, PhyAddr.1574,
	rsb	r2, r7, #32768	@ tmp293, MemBaseAddr,
	add	r0, r3, #83968	@ PhyAddr.1577, PhyAddr.1574,
	add	r2, r2, ip	@ D.35718, tmp293, PhyAddr.1581
	add	r1, r3, #199680	@ PhyAddr.1580, PhyAddr.1574,
	cmp	r8, r2	@ Size, D.35718
	add	lr, r3, #5120	@ PhyAddr.1575, PhyAddr.1574,
	mov	r5, #141	@ tmp230,
	add	r7, r3, #38912	@ PhyAddr.1576, PhyAddr.1574,
	str	r5, [r4, #1052]	@ tmp230, <variable>.ValidMsgSlotNum
	add	r5, r3, #129024	@ PhyAddr.1578, PhyAddr.1574,
	str	lr, [r4, #1080]	@ PhyAddr.1575, <variable>.SedTopAddr
	add	lr, r3, #196608	@ PhyAddr.1579, PhyAddr.1574,
	str	r7, [r4, #1084]	@ PhyAddr.1576, <variable>.PmvTopAddr
	str	r0, [r4, #1092]	@ PhyAddr.1577, <variable>.ItransTopAddr
	str	r5, [r4, #1096]	@ PhyAddr.1578, <variable>.DblkTopAddr
	str	lr, [r4, #1112]	@ PhyAddr.1579, <variable>.IntensityConvTabAddr
	str	r1, [r4, #1124]	@ PhyAddr.1580, <variable>.DnrTopAddr
	str	ip, [r4, #1116]	@ PhyAddr.1581, <variable>.VpTabAddr
	str	r3, [r4, #1076]	@ PhyAddr.1574, <variable>.H264MnAddr
	str	r0, [r4, #1088]	@ PhyAddr.1577, <variable>.RcnTopAddr
	str	r1, [r4, #1120]	@ PhyAddr.1580, <variable>.DnrMbInfoAddr
	blt	.L405	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, __p
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@ D.35723
	mvnne	r0, #0	@, Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L412:
	mov	r0, r9	@, tmp168
	movw	r1, #:lower16:.LC9	@,
	mov	r2, #118	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L405:
	mov	r3, r8	@, Size
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L411:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #114	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC37	@,
	movt	r3, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	VDMHAL_V200R004_OpenHAL, .-VDMHAL_V200R004_OpenHAL
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.36035, %object
	.size	__func__.36035, 25
__func__.36035:
	.ascii	"VDMHAL_V200R004_CheckReg\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDM register not mapped yet!\012\000"
	.space	2
.LC1:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"VDM register not mapped yet!\000"
	.space	3
.LC3:
	.ascii	"WriteMsgSlot error!\012\000"
	.space	3
.LC4:
	.ascii	"ReadUpMsgSlot error!\012\000"
	.space	2
.LC5:
	.ascii	"BigTile1d_y\000"
.LC6:
	.ascii	"failed mem_allocMemBlock BigTile_yuv save!\012\000"
.LC7:
	.ascii	"BigTile1d_uv\000"
	.space	3
.LC8:
	.ascii	"VdhId is wrong! VDMHAL_V200R004_StartHwDecode\012\000"
	.space	1
.LC9:
	.ascii	"line: %d\012\000"
	.space	2
.LC10:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC11:
	.ascii	"can not map repair msg virtual address!\000"
.LC12:
	.ascii	"ValidGroupNum=%d out of range!\012\000"
.LC13:
	.ascii	"vdm register virtual address not mapped, VDMHAL_V20"
	.ascii	"0R003_PrepareRepair failed!\012\000"
.LC14:
	.ascii	"FIRST_REPAIR Parameter Error!\012\000"
	.space	1
.LC15:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC16:
	.ascii	"SECOND_REPAIR Parameter Error!\012\000"
.LC17:
	.ascii	"can NOT map vir addr for up-msg\000"
.LC18:
	.ascii	"%s: VdhId(%d) Invalid!\012\000"
.LC19:
	.ascii	"%s: vdm register virtual address not mapped, reset "
	.ascii	"failed!\012\000"
.LC20:
	.ascii	"%s: unkown reg_id = %d\012\000"
.LC21:
	.ascii	"VDMHAL_V200R004_ResetVdm: map vdm register fail, vi"
	.ascii	"r(reg) = (%p)\012\000"
	.space	2
.LC22:
	.ascii	"GLB Reset failed!\012\000"
	.space	1
.LC23:
	.ascii	"VDH: %d VDMHAL_V200R004_ResetVdm ERROR!!!\012\000"
	.space	1
.LC24:
	.ascii	"'pDecReport' is NULL\000"
	.space	3
.LC25:
	.ascii	"\012***** UpMsg DecSliceNum=%d\012\000"
	.space	3
.LC26:
	.ascii	"\012***** Up Msg (phy addr: %#8x) *****\012\000"
	.space	2
.LC27:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC28:
	.ascii	"\012***** Up Msg print finished *****\012\000"
.LC29:
	.ascii	"Mem addr is 0\000"
	.space	2
.LC30:
	.ascii	"image size out of range\000"
.LC31:
	.ascii	"'pVdmMemArrange' is NULL\000"
	.space	3
.LC32:
	.ascii	"MemSize not enough for pmv slot\000"
.LC33:
	.ascii	"VDMHAL_V200R003_ArrangeMem get ChanWidth/ChanHeight"
	.ascii	" failed!\012\000"
	.space	3
.LC34:
	.ascii	"ImgSlotLen > ChanSlotLen\000"
	.space	3
.LC35:
	.ascii	"cann't allocate img slot\000"
	.space	3
.LC36:
	.ascii	"cann't allocate PMV slot\000"
	.space	3
.LC37:
	.ascii	"VDMHAL_V200R004_OpenHAL: input error!\000"
	.space	2
.LC38:
	.ascii	"g_VdmRegVirAddr, g_VdmResetVirAddr = %p\012\000"
	.space	3
.LC39:
	.ascii	"BPDRegVirAddr %p\012\000"
	.space	2
.LC40:
	.ascii	"mem is enough!\012\000"
.LC41:
	.ascii	"!!!!!! HAL memory not enouph! need %d, have %d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
