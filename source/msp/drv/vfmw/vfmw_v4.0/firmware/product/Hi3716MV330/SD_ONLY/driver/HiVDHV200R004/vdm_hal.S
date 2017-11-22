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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
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
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #1144	@ tmp142,
	movw	r1, #:lower16:g_HwMem	@ tmp140,
	mul	r2, ip, r0	@ tmp141, tmp142, VdhId
	movt	r1, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r2, r1]	@ D.35244, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ D.35244,
	ldrne	r0, [r3, #28]	@ Data32.574,
	mvneq	r0, #0	@ Data32,
	ubfxne	r0, r0, #17, #1	@ Data32, Data32.574,,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #1144	@ tmp141,
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	ldr	r0, [r2, r3]	@ D.35257, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ D.35257,
	bxeq	lr	@
	ldr	r0, [r0, #40]	@ Data32,
	subs	r0, r0, #1	@ D.35260, Data32,
	movne	r0, #1	@ D.35260
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_IsVdmRun, .-VDMHAL_V200R004_IsVdmRun
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
	bne	.L27	@,
.L24:
	mvn	r0, #0	@ D.35414,
	ldmfd	sp!, {r4, pc}	@
.L27:
	rsbs	r4, r2, #1	@ tmp148, dnmsg_size
	movcc	r4, #0	@ tmp148
	cmp	r2, #256	@ dnmsg_size,
	orrhi	r4, r4, #1	@,, tmp151, tmp148
	cmp	r4, #0	@ tmp151,
	bne	.L24	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.35414, tmp151
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
	bne	.L32	@,
.L29:
	mvn	r0, #0	@ D.35398,
	ldmfd	sp!, {r4, pc}	@
.L32:
	cmp	r2, #512	@ upmsg_size,
	bhi	.L29	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.35398, tmp144
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
	ubfx	r9, r3, #29, #2	@ PicStructure.844, Height,,
	.pad #84
	sub	sp, sp, #84	@,,
	cmp	r9, #1	@ PicStructure.844,
	mov	r6, r3	@ Height, Height
	mov	r4, r1	@ Yaddress, Yaddress
	str	r0, [sp, #12]	@ fpYuv, %sfp
	mov	r5, r2	@ Width, Width
	moveq	r9, #0	@ PicStructure,
	beq	.L35	@,
	cmp	r9, #2	@ PicStructure.844,
	moveq	r9, #1	@ PicStructure,
	movne	r9, #2	@ PicStructure,
.L35:
	ldr	r1, [sp, #12]	@, %sfp
	cmp	r1, #0	@,
	beq	.L71	@,
	add	r3, sp, #64	@ tmp244,,
	add	r2, sp, #48	@,,
	add	lr, r3, #4	@ tmp396, tmp244,
	add	r7, r2, #4	@ tmp393,,
	mov	ip, #0	@ tmp240,
	movw	r0, #:lower16:.LC0	@,
	str	ip, [r7], #4	@ tmp240, MemRecord_ul
	mov	r1, ip	@, tmp240
	str	ip, [lr], #4	@ tmp240, MemRecord_y
	movt	r0, #:upper16:.LC0	@,
	str	ip, [r7], #4	@ tmp240, MemRecord_ul
	mov	r2, #4194304	@,
	str	ip, [lr], #4	@ tmp240, MemRecord_y
	str	ip, [r7, #0]	@ tmp240, MemRecord_ul
	str	ip, [lr, #0]	@ tmp240, MemRecord_y
	str	ip, [sp, #48]	@ tmp240, MemRecord_ul
	str	ip, [sp, #64]	@ tmp240, MemRecord_y
	str	ip, [sp, #0]	@ tmp240,
	bl	MEM_AllocMemBlock	@
	subs	ip, r0, #0	@ D.36079,
	beq	.L145	@,
.L71:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L145:
	mov	r1, ip	@, D.36079
	movw	r0, #:lower16:.LC1	@,
	mov	r2, #4194304	@,
	movt	r0, #:upper16:.LC1	@,
	add	r3, sp, #48	@,,
	str	ip, [sp, #0]	@ D.36079,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L38	@,
	add	r5, r5, #15	@ tmp255, Width,
	ldr	r0, [sp, #68]	@, MemRecord_y.VirAddr
	bic	r5, r5, #15	@ ImgWidthInPixAln, tmp255,
	add	r6, r6, #15	@ tmp257, Height,
	add	ip, r5, #255	@ tmp259, ImgWidthInPixAln,
	bic	r6, r6, #15	@, tmp257,
	bic	r3, ip, #255	@ tmp260, tmp259,
	str	r0, [sp, #16]	@, %sfp
	str	r0, [sp, #32]	@, %sfp
	mov	r8, r3, asl #4	@, tmp260,
	str	r8, [sp, #8]	@, %sfp
	ldr	r1, [sp, #8]	@, %sfp
	add	ip, r8, #15	@ tmp263,,
	ldr	r2, [sp, #52]	@, MemRecord_ul.VirAddr
	cmp	r1, #0	@,
	str	r6, [sp, #24]	@, %sfp
	add	lr, r2, #2097152	@,,
	str	lr, [sp, #36]	@, %sfp
	movge	ip, r1	@ Stride,
	adds	r0, r6, #31	@ tmp265,,
	addmi	r0, r6, #62	@, tmp267,,
	mov	r3, ip, asr #4	@ tmp264, Stride,
	cmp	r9, #0	@ PicStructure,
	str	r2, [sp, #28]	@, %sfp
	mov	r8, r0, asr #5	@ tmp269, tmp267,
	mla	r8, r8, r3, r4	@ Caddress, tmp269, tmp264, Yaddress
	bne	.L39	@,
	cmp	r6, #0	@,
	mov	lr, r5, lsr #1	@, ImgWidthInPixAln,
	mov	r1, r6, lsr #1	@,,
	str	lr, [sp, #40]	@, %sfp
	str	r1, [sp, #20]	@, %sfp
	beq	.L40	@,
	ldr	fp, [sp, #16]	@ ivtmp.804, %sfp
	str	r8, [sp, #44]	@ Caddress, %sfp
.L41:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L44	@,
	and	r8, r9, #15	@ pretmp.869, i,
	ldr	r6, [sp, #8]	@, %sfp
	mov	lr, r9, lsr #4	@ pretmp.875, i,
	cmp	fp, #0	@ ivtmp.804,
	mov	r7, r8, asl #8	@ tmp280, pretmp.869,
	sub	sl, r5, #1	@ tmp371, ImgWidthInPixAln,
	ubfx	sl, sl, #8, #1	@ tmp372, tmp371,,
	mla	r8, r6, lr, r7	@ pretmp.759,, pretmp.875, tmp280
	beq	.L89	@,
	mov	r0, fp	@, ivtmp.804
	add	r1, r4, r8	@, Yaddress, pretmp.759
	mov	r2, #256	@,
	bl	memcpy	@
.L89:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, fp, r7	@ ivtmp.854, ivtmp.804,
	bls	.L44	@,
	cmp	sl, #0	@ tmp372,
	beq	.L43	@,
	cmp	r6, #0	@ ivtmp.854,
	beq	.L94	@,
	add	r2, r8, #4096	@ tmp459, pretmp.759,
	mov	r0, r6	@, ivtmp.854
	add	r1, r4, r2	@, Yaddress, tmp459
	mov	r2, r7	@, j
	bl	memcpy	@
.L94:
	add	r7, r7, #256	@ j, tmp373,
	add	r6, r6, #256	@ ivtmp.854, tmp374,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L44	@,
.L43:
	mov	ip, r7, lsr #8	@ tmp271, j,
	cmp	r6, #0	@ ivtmp.854,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.854
	add	r3, r8, ip, asl #12	@, tmp273, pretmp.759, tmp271,
	add	r7, r7, r2	@ tmp373, j,
	add	r1, r4, r3	@, Yaddress, tmp273
	beq	.L42	@,
	bl	memcpy	@
.L42:
	mov	r1, r7, lsr #8	@ tmp461, tmp373,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp374, ivtmp.854,
	add	r0, r8, r1, asl #12	@, tmp463, pretmp.759, tmp461,
	add	r1, r4, r0	@, Yaddress, tmp463
	mov	r0, r6	@, tmp374
	beq	.L94	@,
	add	r7, r7, #256	@ j, tmp373,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.854, tmp374,
	bhi	.L43	@,
.L44:
	ldr	r2, [sp, #24]	@, %sfp
	add	r9, r9, #1	@ i, i,
	add	fp, fp, r5	@ ivtmp.804, ivtmp.804, ImgWidthInPixAln
	cmp	r2, r9	@, i
	bhi	.L41	@,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
.L40:
	ldr	r3, [sp, #24]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [sp, #12]	@, %sfp
	mul	r1, r5, r3	@, ImgWidthInPixAln,
	bl	klib_fwrite	@
	ldr	r4, [sp, #20]	@, %sfp
	cmp	r4, #0	@,
	beq	.L45	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.853,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #16]	@ ivtmp.796, %sfp
.L46:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L49	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r4, sl, lsr #3	@ tmp294, i.853,
	and	r6, sl, #7	@ pretmp.866, i.853,
	cmp	r9, #0	@ ivtmp.796,
	sub	fp, r5, #1	@ tmp365, ImgWidthInPixAln,
	mul	r7, ip, r4	@ tmp295,, tmp294
	ubfx	fp, fp, #8, #1	@ tmp366, tmp365,,
	add	r7, r7, r6, asl #8	@, pretmp.757, tmp295, pretmp.866,
	beq	.L82	@,
	mov	r0, r9	@, ivtmp.796
	add	r1, r8, r7	@, Caddress, pretmp.757
	mov	r2, #256	@,
	bl	memcpy	@
.L82:
	mov	r6, #256	@ j.852,
	cmp	r5, r6	@ ImgWidthInPixAln, j.852
	add	r4, r9, r6	@ ivtmp.849, ivtmp.796,
	bls	.L49	@,
	cmp	fp, #0	@ tmp366,
	beq	.L48	@,
	cmp	r4, #0	@ ivtmp.849,
	beq	.L87	@,
	add	r3, r7, #2048	@ tmp447, pretmp.757,
	mov	r0, r4	@, ivtmp.849
	add	r1, r8, r3	@, Caddress, tmp447
	mov	r2, r6	@, j.852
	bl	memcpy	@
.L87:
	add	r6, r6, #256	@ j.852, tmp367,
	add	r4, r4, #256	@ ivtmp.849, tmp368,
	cmp	r5, r6	@ ImgWidthInPixAln, j.852
	bls	.L49	@,
.L48:
	mov	lr, r6, lsr #8	@ tmp285, j.852,
	cmp	r4, #0	@ ivtmp.849,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.849
	add	r1, r7, lr, asl #11	@, tmp287, pretmp.757, tmp285,
	add	r6, r6, r2	@ tmp367, j.852,
	add	r1, r8, r1	@, Caddress, tmp287
	beq	.L47	@,
	bl	memcpy	@
.L47:
	mov	r3, r6, lsr #8	@ tmp449, tmp367,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp368, ivtmp.849,
	add	r0, r7, r3, asl #11	@, tmp451, pretmp.757, tmp449,
	add	r1, r8, r0	@, Caddress, tmp451
	mov	r0, r4	@, tmp368
	beq	.L87	@,
	add	r6, r6, #256	@ j.852, tmp367,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.852
	add	r4, r4, #256	@ ivtmp.849, tmp368,
	bhi	.L48	@,
.L49:
	ldr	r2, [sp, #20]	@, %sfp
	add	sl, sl, #1	@ i.853, i.853,
	add	r9, r9, r5	@ ivtmp.796, ivtmp.796, ImgWidthInPixAln
	cmp	r2, sl	@, i.853
	bhi	.L46	@,
.L45:
	ldr	r1, [sp, #120]	@, chroma_idc
	cmp	r1, #1	@,
	beq	.L146	@,
	ldr	r0, [sp, #120]	@, chroma_idc
	cmp	r0, #0	@,
	beq	.L147	@,
.L51:
	ldr	r2, [sp, #40]	@, %sfp
	ldr	lr, [sp, #20]	@, %sfp
	mul	r4, r2, lr	@ D.36374,,
.L144:
	ldr	r2, [sp, #12]	@, %sfp
	mov	r1, r4	@, D.36430
	ldr	r0, [sp, #28]	@, %sfp
	bl	klib_fwrite	@
	mov	r1, r4	@, D.36430
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	bl	klib_fwrite	@
	ldr	r1, [sp, #52]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@,,
	mov	r1, #16	@,
	bl	__memzero	@
.L38:
	ldr	r1, [sp, #68]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L71	@
.L39:
	ldr	r1, [sp, #24]	@, %sfp
	subs	r9, r9, #1	@, PicStructure,
	movne	r9, #1	@
	mov	r3, r5, lsr #1	@, ImgWidthInPixAln,
	str	r9, [sp, #32]	@, %sfp
	cmp	r1, r9	@,
	str	r3, [sp, #40]	@, %sfp
	mov	ip, r1, lsr #1	@,,
	strhi	r8, [sp, #44]	@ Caddress, %sfp
	str	ip, [sp, #20]	@, %sfp
	movhi	fp, r1	@ ImgHeightInPixAln,
	bls	.L56	@,
.L57:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L60	@,
	and	lr, r9, #15	@ pretmp.879, i.858,
	ldr	r7, [sp, #8]	@, %sfp
	mov	r2, r9, lsr #4	@ pretmp.750, i.858,
	sub	sl, r5, #1	@ tmp389, ImgWidthInPixAln,
	mov	r8, lr, asl #8	@ tmp311, pretmp.879,
	mov	r6, r9, lsr #1	@ pretmp.870, i.858,
	ldr	r3, [sp, #16]	@, %sfp
	ubfx	sl, sl, #8, #1	@ tmp390, tmp389,,
	mlas	r6, r5, r6, r3	@ ivtmp.839, ImgWidthInPixAln, pretmp.870,
	mla	r8, r7, r2, r8	@ pretmp.751,, pretmp.750, tmp311
	beq	.L107	@,
	mov	r0, r6	@, ivtmp.839
	add	r1, r4, r8	@, Yaddress, pretmp.751
	mov	r2, #256	@,
	bl	memcpy	@
.L107:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, r7	@ ivtmp.839, ivtmp.839,
	bls	.L60	@,
	cmp	sl, #0	@ tmp390,
	beq	.L59	@,
	cmp	r6, #0	@ ivtmp.839,
	beq	.L112	@,
	add	r3, r8, #4096	@ tmp486, pretmp.751,
	mov	r0, r6	@, ivtmp.839
	add	r1, r4, r3	@, Yaddress, tmp486
	mov	r2, r7	@, j
	bl	memcpy	@
.L112:
	add	r7, r7, #256	@ j, tmp391,
	add	r6, r6, #256	@ ivtmp.839, tmp392,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L60	@,
.L59:
	mov	r1, r7, lsr #8	@ tmp302, j,
	cmp	r6, #0	@ ivtmp.839,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.839
	add	lr, r8, r1, asl #12	@, tmp304, pretmp.751, tmp302,
	add	r7, r7, r2	@ tmp391, j,
	add	r1, r4, lr	@, Yaddress, tmp304
	beq	.L58	@,
	bl	memcpy	@
.L58:
	mov	ip, r7, lsr #8	@ tmp488, tmp391,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp392, ivtmp.839,
	add	r0, r8, ip, asl #12	@, tmp490, pretmp.751, tmp488,
	add	r1, r4, r0	@, Yaddress, tmp490
	mov	r0, r6	@, tmp392
	beq	.L112	@,
	add	r7, r7, #256	@ j, tmp391,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.839, tmp392,
	bhi	.L59	@,
.L60:
	add	r9, r9, #2	@ i.858, i.858,
	cmp	fp, r9	@ ImgHeightInPixAln, i.858
	bhi	.L57	@,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
.L56:
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [sp, #12]	@, %sfp
	mul	r1, r5, r0	@ tmp313, ImgWidthInPixAln,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r1, lsr #1	@, tmp313,
	bl	klib_fwrite	@
	ldr	r4, [sp, #20]	@, %sfp
	cmp	r4, #0	@,
	beq	.L61	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.862,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #16]	@ ivtmp.831, %sfp
.L62:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L65	@,
	and	r7, sl, #7	@ pretmp.882, i.862,
	ldr	r4, [sp, #8]	@, %sfp
	mov	ip, sl, lsr #3	@ pretmp.884, i.862,
	cmp	r9, #0	@ ivtmp.831,
	mov	r6, r7, asl #8	@ tmp327, pretmp.882,
	sub	fp, r5, #1	@ tmp383, ImgWidthInPixAln,
	ubfx	fp, fp, #8, #1	@ tmp384, tmp383,,
	mla	r7, r4, ip, r6	@ pretmp.749,, pretmp.884, tmp327
	beq	.L100	@,
	mov	r0, r9	@, ivtmp.831
	add	r1, r8, r7	@, Caddress, pretmp.749
	mov	r2, #256	@,
	bl	memcpy	@
.L100:
	mov	r6, #256	@ j.861,
	cmp	r5, r6	@ ImgWidthInPixAln, j.861
	add	r4, r9, r6	@ ivtmp.863, ivtmp.831,
	bls	.L65	@,
	cmp	fp, #0	@ tmp384,
	beq	.L64	@,
	cmp	r4, #0	@ ivtmp.863,
	beq	.L105	@,
	add	r1, r7, #2048	@ tmp474, pretmp.749,
	mov	r0, r4	@, ivtmp.863
	add	r1, r8, r1	@, Caddress, tmp474
	mov	r2, r6	@, j.861
	bl	memcpy	@
.L105:
	add	r6, r6, #256	@ j.861, tmp385,
	add	r4, r4, #256	@ ivtmp.863, tmp386,
	cmp	r5, r6	@ ImgWidthInPixAln, j.861
	bls	.L65	@,
.L64:
	mov	lr, r6, lsr #8	@ tmp318, j.861,
	cmp	r4, #0	@ ivtmp.863,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.863
	add	r3, r7, lr, asl #11	@, tmp320, pretmp.749, tmp318,
	add	r6, r6, r2	@ tmp385, j.861,
	add	r1, r8, r3	@, Caddress, tmp320
	beq	.L63	@,
	bl	memcpy	@
.L63:
	mov	r0, r6, lsr #8	@ tmp476, tmp385,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp386, ivtmp.863,
	add	r1, r7, r0, asl #11	@, tmp478, pretmp.749, tmp476,
	add	r1, r8, r1	@, Caddress, tmp478
	mov	r0, r4	@, tmp386
	beq	.L105	@,
	add	r6, r6, #256	@ j.861, tmp385,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.861
	add	r4, r4, #256	@ ivtmp.863, tmp386,
	bhi	.L64	@,
.L65:
	ldr	r2, [sp, #20]	@, %sfp
	add	sl, sl, #1	@ i.862, i.862,
	add	r9, r9, r5	@ ivtmp.831, ivtmp.831, ImgWidthInPixAln
	cmp	r2, sl	@, i.862
	bhi	.L62	@,
.L61:
	ldr	r3, [sp, #120]	@, chroma_idc
	cmp	r3, #1	@,
	beq	.L148	@,
	ldr	r0, [sp, #120]	@, chroma_idc
	cmp	r0, #0	@,
	beq	.L149	@,
.L67:
	ldr	r3, [sp, #40]	@, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mul	r4, r3, r2	@ D.36430,,
	b	.L144	@
.L149:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #36]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L67	@
.L147:
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	ldr	r0, [sp, #36]	@, %sfp
	bl	memset	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, #128	@,
	mov	r2, #1048576	@,
	bl	memset	@
	b	.L51	@
.L148:
	ldr	r3, [sp, #20]	@, %sfp
	cmp	r3, #0	@,
	beq	.L67	@,
	ldr	r8, [sp, #32]	@, %sfp
	mov	r7, r5, asl #1	@ D.36432, ImgWidthInPixAln,
	ldr	sl, [sp, #16]	@, %sfp
	mov	r9, r3	@ chrom_height,
	mla	r6, r5, r8, sl	@ tmp, ImgWidthInPixAln,,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	ldr	sl, [sp, #28]	@ ul, %sfp
	mov	r5, #0	@ i.865,
.L68:
	cmp	r8, #0	@ chrom_width,
	beq	.L70	@,
	mov	r1, r5, lsr #1	@ pretmp.871, i.865,
	ldrb	r4, [r6, #0]	@ zero_extendqisi2	@ tmp436,* tmp
	mov	r0, #1	@ j.864,
	cmp	r8, r0	@ chrom_width, j.864
	mul	ip, r8, r1	@ tmp334, chrom_width, pretmp.871
	add	r3, r6, #2	@ ivtmp.811, tmp,
	add	r2, sl, ip	@ ivtmp.814, ul, tmp334
	add	lr, r2, #2097152	@ tmp435, ivtmp.814,
	add	r1, r2, r0	@ ivtmp.814, ivtmp.814,
	strb	r4, [lr, #0]	@ tmp436,
	ldrb	r4, [r6, #1]	@ zero_extendqisi2	@ tmp437,
	strb	r4, [sl, ip]	@ tmp437,
	bls	.L70	@,
	mov	ip, #1	@ tmp377,
	cmp	ip, #0	@ tmp377,
	beq	.L69	@,
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ tmp466,* ivtmp.811
	add	ip, r1, #2097152	@ tmp465, ivtmp.814,
	mov	r0, #2	@ j.864,
	cmp	r8, r0	@ chrom_width, j.864
	add	r1, r1, #1	@ ivtmp.814, ivtmp.814,
	strb	lr, [ip, #0]	@ tmp466,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp467,
	add	r3, r3, r0	@ ivtmp.811, ivtmp.811,
	strb	r4, [r2, #1]	@ tmp467,
	bls	.L70	@,
.L69:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp330,* ivtmp.811
	add	lr, r1, #2097152	@ tmp329, ivtmp.814,
	mov	r2, r1	@ tmp378, ivtmp.814
	add	ip, r3, #2	@ tmp380, ivtmp.811,
	add	r0, r0, #2	@ j.864, j.864,
	strb	r4, [lr, #0]	@ tmp330,
	cmp	r8, r0	@ chrom_width, j.864
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp332,
	strb	r4, [r2], #1	@ tmp332,
	add	lr, r2, #2097152	@ tmp429, tmp378,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp430,
	add	r3, ip, #2	@ ivtmp.811, tmp380,
	strb	r4, [lr, #0]	@ tmp430,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp431,
	strb	lr, [r1, #1]	@ tmp431,
	add	r1, r2, #1	@ ivtmp.814, tmp378,
	bhi	.L69	@,
.L70:
	add	r5, r5, #2	@ i.865, i.865,
	cmp	r9, r5	@ chrom_height, i.865
	bls	.L67	@,
	add	r6, r6, r7	@ tmp, tmp, D.36432
	b	.L68	@
.L146:
	ldr	r3, [sp, #20]	@, %sfp
	cmp	r3, #0	@,
	beq	.L51	@,
	ldr	r6, [sp, #28]	@ ivtmp.855, %sfp
	mov	r7, #0	@ i.857,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	sl, [sp, #32]	@ YUV, %sfp
.L52:
	cmp	r8, #0	@ chrom_width,
	beq	.L54	@,
	ldrb	ip, [sl, #0]	@ zero_extendqisi2	@ tmp416,* YUV
	add	r3, r6, #2097152	@ tmp415, ivtmp.855,
	mov	r0, #1	@ j.856,
	cmp	r8, r0	@ chrom_width, j.856
	mov	r2, r6	@ ivtmp.776, ivtmp.855
	strb	ip, [r3, #0]	@ tmp416,
	add	r3, sl, #2	@ ivtmp.773, YUV,
	ldrb	r1, [sl, #1]	@ zero_extendqisi2	@ tmp417,
	strb	r1, [r2], #1	@ tmp417,
	bls	.L54	@,
	mov	ip, #1	@ tmp359,
	cmp	ip, #0	@ tmp359,
	beq	.L53	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp439,* ivtmp.773
	add	lr, r2, #2097152	@ tmp438, ivtmp.776,
	mov	r0, #2	@ j.856,
	cmp	r8, r0	@ chrom_width, j.856
	strb	r1, [lr, #0]	@ tmp439,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp440,
	add	r3, r3, r0	@ ivtmp.773, ivtmp.773,
	strb	r4, [r2], #1	@ tmp440,
	bls	.L54	@,
.L53:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp297,* ivtmp.773
	add	lr, r2, #2097152	@ tmp296, ivtmp.776,
	mov	r1, r2	@ tmp361, ivtmp.776
	add	ip, r3, #2	@ tmp360, ivtmp.773,
	add	r0, r0, #2	@ j.856, j.856,
	strb	r4, [lr, #0]	@ tmp297,
	cmp	r8, r0	@ chrom_width, j.856
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp299,
	strb	r4, [r1], #1	@ tmp299,
	add	lr, r1, #2097152	@ tmp409, tmp361,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp410,
	add	r3, ip, #2	@ ivtmp.773, tmp360,
	strb	r4, [lr, #0]	@ tmp410,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp411,
	strb	lr, [r2, #1]	@ tmp411,
	add	r2, r1, #1	@ ivtmp.776, tmp361,
	bhi	.L53	@,
.L54:
	add	r7, r7, #1	@ i.857, i.857,
	add	r6, r6, r8	@ ivtmp.855, ivtmp.855, chrom_width
	cmp	r9, r7	@ chrom_height, i.857
	bls	.L51	@,
	add	sl, sl, r5	@ YUV, YUV, ImgWidthInPixAln
	b	.L52	@
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
	bne	.L151	@,
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp138,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp138,
	mov	r1, #3	@,
	ldr	r0, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L151:
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ldmgtfd	sp!, {r4, pc}	@
	movw	r1, #1144	@ tmp143,
	movw	ip, #:lower16:g_HwMem	@ tmp141,
	mul	r4, r1, r4	@ tmp142, tmp143, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp141,
	movw	r3, #:lower16:-1431655766	@ tmp146,
	movt	r3, #:upper16:-1431655766	@ tmp146,
	mov	r1, #0	@ tmp151,
	ldr	r0, [r4, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r0, #156]	@ tmp146,
	mov	r0, #1	@ tmp156,
	ldr	r2, [r4, ip]	@ D.35822, <variable>.pVdmRegVirAddr
	str	r1, [r2, #0]	@ tmp151,* D.35822
	ldr	r3, [r4, ip]	@ temp.911, <variable>.pVdmRegVirAddr
	str	r0, [r3, #0]	@ tmp156,* temp.911
	ldr	r2, [r4, ip]	@ temp.913, <variable>.pVdmRegVirAddr
	str	r1, [r2, #0]	@ tmp151,* temp.913
	ldmfd	sp!, {r4, pc}	@
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
	orr	r6, r6, #67108864	@ dat.937, dat,
	ldr	r3, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp151,
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r2, #8]	@ dat.937,
#APP
@ 1608 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	ldr	ip, [r5, r4]	@ D.35806, <variable>.pVdmRegVirAddr
	mov	r3, #0	@ tmp162,
	mov	r1, #1	@ tmp167,
	str	r3, [ip, #0]	@ tmp162,* D.35806
	ldr	r0, [r5, r4]	@ temp.945, <variable>.pVdmRegVirAddr
	str	r1, [r0, #0]	@ tmp167,* temp.945
	ldr	r2, [r5, r4]	@ temp.947, <variable>.pVdmRegVirAddr
	str	r3, [r2, #0]	@ tmp162,* temp.947
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
	cmp	r3, #0	@ VdhId
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ble	.L162	@,
.L158:
	mvn	r0, #0	@ D.35624,
.L160:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L162:
	ldr	r2, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ tmp152,
	str	r0, [sp, #12]	@ tmp152, D32
	cmp	r2, r0	@ <variable>.pVdmRegVirAddr,
	beq	.L163	@,
.L159:
	movw	ip, #1144	@ tmp161,
	movw	r2, #:lower16:g_HwMem	@ tmp159,
	mul	r3, ip, r3	@ tmp160, tmp161, VdhId
	movt	r2, #:upper16:g_HwMem	@ tmp159,
	ldr	r0, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	ip, #:lower16:536920579	@ tmp171,
	movt	ip, #:upper16:536920579	@ tmp171,
	movw	r1, #:lower16:3148803	@ tmp178,
	bic	r5, r0, #15	@ tmp158, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:3148803	@ tmp178,
	mov	r0, #0	@ D.35624,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #16]	@ tmp158,
	mov	r5, #7	@ tmp164,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r5, [r4, #36]	@ tmp164,
	ldr	r4, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r4, #12]	@ tmp171,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp178,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp178,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp178,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp178,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp178,
	ldr	ip, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp178,
	ldr	r3, [r3, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp178,
	b	.L160	@
.L163:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	ldr	r3, [sp, #0]	@,
	cmp	r0, #0	@ D.35628
	beq	.L158	@,
	str	r0, [r1, #0]	@ D.35628, <variable>.pVdmRegVirAddr
	b	.L159	@
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
	subs	r7, r0, #0	@ pMsgBase,
	bne	.L201	@,
.L165:
	mvn	r0, #0	@ D.35492,
.L184:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L201:
	ldr	r0, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r3, r0, #1	@ tmp222, <variable>.ValidGroupNum,
	cmp	r3, #127	@ tmp222,
	bhi	.L165	@,
	ldr	r0, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	sl, #0	@ tmp233,
	ldr	r3, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r1, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	lr, r0, asl #4	@ tmp226, <variable>.ImageHeight,
	adds	ip, lr, #31	@ tmp228, tmp226,
	mov	r0, r3, asl #9	@ tmp225, <variable>.ImageWidth,
	addmi	r2, lr, #62	@, tmp230, tmp226,
	movpl	r2, ip	@, tmp230, tmp228
	mov	lr, r3, asl #4	@ pic_width, <variable>.ImageWidth,
	adds	ip, lr, #15	@ tmp249, pic_width,
	str	r1, [r7, #0]	@ <variable>.RefImageAddr,* pMsgBase
	mov	r2, r2, asr #5	@ tmp232, tmp230,
	addmi	r3, lr, #30	@, tmp251, pic_width,
	movpl	r3, ip	@, tmp251, tmp249
	ldr	r1, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	bic	ip, r3, #15	@ tmp254, tmp251,
	mul	lr, r2, r0	@ ChromaOffset, tmp232, tmp225
	add	r1, lr, r1	@ tmp239, ChromaOffset, <variable>.RefImageAddr
	str	r1, [r7, #4]	@ tmp239,
	ldr	r0, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	r0, [r7, #8]	@ <variable>.ImageAddr,
	ldr	r1, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	r2, lr, r1	@ tmp246, ChromaOffset, <variable>.ImageAddr
	str	r2, [r7, #12]	@ tmp246,
	str	ip, [r7, #16]	@ tmp254,
	str	sl, [r7, #20]	@ tmp233,
	ldr	r3, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r0, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	lr, r3, #1	@ tmp261, <variable>.ImageWidth,
	sub	r2, r0, #1	@ tmp265, <variable>.ImageHeight,
	mov	ip, lr, asl #23	@ tmp266, tmp261,
	mov	r1, ip, lsr #23	@ tmp266, tmp266,
	bfi	r1, r2, #16, #9	@ tmp266, tmp265,,
	str	r1, [sp, #4]	@ tmp266,
	str	r1, [r7, #24]	@ tmp266,
	ldr	r3, [r6, #568]	@ prephitmp.1028, <variable>.FullRepair
	cmp	r3, sl	@ prephitmp.1028,
	bne	.L167	@,
	ldr	ip, [r6, #552]	@ temp.1106, <variable>.ValidGroupNum
	cmp	ip, sl	@ temp.1106,
	movle	sl, r3	@ actual_repairTime, prephitmp.1028
	ble	.L169	@,
	mov	r8, r3	@ actual_repairTime.1107, i.1104
	mov	fp, r7	@ pMsgBase, pMsgBase
	b	.L171	@
.L202:
	add	r1, r6, r3, asl #2	@, tmp286, pRepairParam, i.1104,
	sxth	lr, r5	@ prephitmp.1030, prephitmp.1030
	adds	r4, lr, #7	@ tmp277, prephitmp.1030,
	ldrsh	r1, [r1, #38]	@ <variable>.EndMbn, <variable>.EndMbn
	addmi	r0, lr, #14	@, tmp279, prephitmp.1030,
	movpl	r0, r4	@, tmp279, tmp277
	bic	lr, r0, #7	@ tmp282, tmp279,
	adds	r4, r1, #7	@ tmp289, <variable>.EndMbn,
	addmi	r1, r1, #14	@, tmp291, <variable>.EndMbn,
	movpl	r1, r4	@, tmp291, tmp289
	bic	r1, r1, #7	@ tmp294, tmp291,
	cmp	lr, r1	@ tmp282, tmp294
	addle	r4, r3, #1	@ i.1105, i.1104,
	movle	sl, r8	@ actual_repairTime, actual_repairTime.1107
	bgt	.L172	@,
.L173:
	cmp	ip, r4	@ temp.1106, i.1105
	ble	.L199	@,
	add	r7, r4, #1	@ tmp267, i.1105,
	cmp	r7, #127	@ tmp267,
	bgt	.L199	@,
	mov	r3, r4	@ i.1104, i.1105
	mov	r8, sl	@ actual_repairTime.1107, actual_repairTime
.L171:
	add	r2, r3, #10	@ tmp413, i.1104,
	cmp	r3, #0	@ i.1104,
	mov	r5, r2, asl #2	@ tmp269, tmp413,
	add	r4, r5, r6	@ tmp270, tmp269, pRepairParam
	ldrh	r7, [r5, r6]	@ D.35544, <variable>.StartMbn
	ldrh	r5, [r4, #2]	@ prephitmp.1030, <variable>.EndMbn
	bne	.L202	@,
.L172:
	tst	r3, #1	@ i.1104,
	add	r2, r6, r2, asl #2	@, ivtmp.1055, pRepairParam, tmp413,
	movne	r9, r8	@ actual_repairTime.1107, actual_repairTime.1107
	bne	.L174	@,
	add	r4, r3, #1	@ i.1105, i.1104,
	cmp	r3, #0	@ i.1104,
	cmpgt	ip, r4	@, temp.1106, i.1105
	ble	.L195	@,
	cmp	r4, #127	@ i.1105,
	bgt	.L195	@,
	ldrsh	sl, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	sxth	lr, r5	@ prephitmp.1030, prephitmp.1030
	adds	r0, lr, #7	@ tmp434, prephitmp.1030,
	addmi	r5, lr, #14	@, tmp436, prephitmp.1030,
	movpl	r5, r0	@, tmp436, tmp434
	add	r1, sl, #7	@ tmp439, <variable>.StartMbn,
	cmp	sl, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp436,
	movlt	sl, r1	@ <variable>.StartMbn, tmp439
	bic	r3, sl, #7	@ D.36799, <variable>.StartMbn,
	cmp	r5, r3	@ end_Mb, D.36799
	bgt	.L188	@,
	add	r3, r3, #1	@ tmp444, D.36799,
	cmp	r5, r3	@ end_Mb, tmp444
	beq	.L188	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r1, r0, #7	@ tmp446, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp448, <variable>.EndMbn,
	movpl	lr, r1	@, tmp448, tmp446
	bic	sl, lr, #7	@ tmp450, tmp448,
	cmp	r5, sl	@ end_Mb, tmp450
	bgt	.L176	@,
.L188:
	ldrh	r5, [r2, #6]	@ prephitmp.1030, <variable>.EndMbn
	add	r2, r2, #4	@ ivtmp.1055, ivtmp.1055,
	mov	r3, r4	@ i.1104, i.1105
	mov	r9, r8	@ actual_repairTime.1107, actual_repairTime.1107
.L174:
	add	r4, r3, #1	@ i.1105, i.1104,
	sxth	r5, r5	@ prephitmp.1030, prephitmp.1030
	cmp	r3, #0	@ i.1104,
	cmpgt	ip, r4	@, temp.1106, i.1105
	add	r1, r2, #4	@ tmp419, ivtmp.1055,
	mov	r8, r4	@ i.1105, i.1105
	ble	.L200	@,
	cmp	r4, #127	@ i.1105,
	bgt	.L200	@,
	ldrsh	lr, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp329, prephitmp.1030,
	addmi	r5, r5, #14	@, tmp331, prephitmp.1030,
	movpl	r5, r3	@, tmp331, tmp329
	mov	r3, r4	@ i.1104, i.1105
	add	sl, lr, #7	@ tmp337, <variable>.StartMbn,
	cmp	lr, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp331,
	movlt	lr, sl	@ <variable>.StartMbn, tmp337
	bic	r0, lr, #7	@ D.36799, <variable>.StartMbn,
	cmp	r5, r0	@ end_Mb, D.36799
	add	sl, r0, #1	@ tmp340, D.36799,
	bgt	.L178	@,
	cmp	r5, sl	@ end_Mb, tmp340
	beq	.L178	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	sl, r0, #7	@ tmp342, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp344, <variable>.EndMbn,
	movpl	lr, sl	@, tmp344, tmp342
	bic	r0, lr, #7	@ tmp347, tmp344,
	cmp	r5, r0	@ end_Mb, tmp347
	bgt	.L197	@,
.L178:
	ldrh	sl, [r2, #6]	@ prephitmp.1030, <variable>.EndMbn
	add	r4, r4, #1	@ i.1105, i.1105,
	cmp	r8, #0	@ i.1105,
	cmpgt	ip, r4	@, temp.1106, i.1105
	add	r2, r1, #4	@ ivtmp.1055, tmp419,
	sxth	r5, sl	@ prephitmp.1030, prephitmp.1030
	ble	.L200	@,
	ldrsh	lr, [r1, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp452, prephitmp.1030,
	addmi	r5, r5, #14	@, tmp454, prephitmp.1030,
	movpl	r5, r3	@, tmp454, tmp452
	add	r3, r8, #1	@ i.1104, i.1105,
	cmp	lr, #0	@ <variable>.StartMbn,
	add	r8, lr, #7	@ tmp457, <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp454,
	movlt	lr, r8	@ <variable>.StartMbn, tmp457
	bic	sl, lr, #7	@ D.36799, <variable>.StartMbn,
	cmp	r5, sl	@ end_Mb, D.36799
	add	r8, sl, #1	@ tmp462, D.36799,
	bgt	.L192	@,
	cmp	r5, r8	@ end_Mb, tmp462
	beq	.L192	@,
	ldrsh	lr, [r1, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r8, lr, #7	@ tmp464, <variable>.EndMbn,
	addmi	sl, lr, #14	@, tmp466, <variable>.EndMbn,
	movpl	sl, r8	@, tmp466, tmp464
	bic	r0, sl, #7	@ tmp468, tmp466,
	cmp	r5, r0	@ end_Mb, tmp468
	bgt	.L197	@,
.L192:
	ldrh	r5, [r1, #6]	@ prephitmp.1030, <variable>.EndMbn
	b	.L174	@
.L197:
	mov	r8, r9	@ actual_repairTime.1107, actual_repairTime.1107
.L176:
	ldr	ip, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	sl, r8, #1	@ actual_repairTime, actual_repairTime.1107,
	ldr	r2, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r1, r2, ip	@ D.36789, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r1, r5	@ D.36789, end_Mb
	suble	r5, r1, #1	@ end_Mb, D.36789,
	cmp	sl, #252	@ actual_repairTime,
	bgt	.L203	@,
	sxth	lr, r7	@ D.35544, D.35544
	mov	r0, #0	@,
	add	r9, lr, #7	@ tmp354, D.35544,
	cmp	lr, r0	@ D.35544,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	movlt	lr, r9	@ D.35544, tmp354
	bic	r9, lr, #7	@ cur_StartMb, D.35544,
	str	r0, [sp, #4]	@, D32
	mov	r0, r9	@, cur_StartMb
	bl	__aeabi_idivmod	@
	ldr	r7, [sp, #4]	@ tmp364,
	mov	r0, r9	@, cur_StartMb
	bfi	r7, r1, #0, #9	@ tmp364,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	add	r1, r8, #4	@ tmp370, actual_repairTime.1107,
	mov	ip, #0	@,
	mov	r8, r8, asl #3	@ tmp385, actual_repairTime.1107,
	add	r8, r8, #36	@ tmp386, tmp385,
	bfi	r7, r0, #16, #9	@ tmp369,,,
	mov	r0, r5	@, end_Mb
	str	r7, [fp, r1, asl #3]	@ D32.1080,* pMsgBase
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	str	ip, [sp, #4]	@, D32
	bl	__aeabi_idivmod	@
	ldr	r7, [sp, #4]	@ tmp379,
	mov	r0, r5	@, end_Mb
	bfi	r7, r1, #0, #9	@ tmp379,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	bfi	r7, r0, #16, #9	@ tmp384,,,
	str	r7, [sp, #4]	@ tmp384,
	str	r7, [fp, r8]	@ D32.1084,
	ldr	ip, [r6, #552]	@ temp.1106, <variable>.ValidGroupNum
	b	.L173	@
.L200:
	mov	r8, r9	@ actual_repairTime.1107, actual_repairTime.1107
.L195:
	add	r5, r6, r3, asl #2	@, tmp322, pRepairParam, i.1104,
	ldrsh	r3, [r5, #42]	@ pretmp.1076, <variable>.EndMbn
	adds	ip, r3, #7	@ pretmp.1036, pretmp.1076,
	addmi	r2, r3, #14	@, pretmp.1036, pretmp.1076,
	movpl	r2, ip	@, pretmp.1036, pretmp.1036
	bic	r5, r2, #7	@ end_Mb, pretmp.1036,
	b	.L176	@
.L199:
	ldr	r3, [r6, #568]	@ prephitmp.1028, <variable>.FullRepair
	mov	r7, fp	@ pMsgBase, pMsgBase
.L167:
	cmp	r3, #1	@ prephitmp.1028,
	beq	.L181	@,
.L169:
	sub	sl, sl, #1	@ tmp388, actual_repairTime,
	uxth	sl, sl	@ prephitmp.1026, tmp388
.L183:
	mov	r0, #0	@ tmp402,
	str	r0, [sp, #4]	@ tmp402, D32
	ldr	r2, [r6, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r3, [sp, #6]	@ zero_extendqisi2	@,
	ldr	lr, [r6, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r3, r2, #0, #1	@ tmp404, <variable>.Compress_en,,
	strh	sl, [sp, #4]	@ movhi	@ prephitmp.1026, <variable>.total_grp_num_minus1
	uxtb	r1, r3	@ tmp407, tmp404
	bfi	r1, lr, #4, #2	@ tmp407, <variable>.Pic_type,,
	bfi	r1, lr, #6, #2	@ tmp410, <variable>.Pic_type,,
	strb	r1, [sp, #6]	@ tmp410,
	ldr	ip, [sp, #4]	@ D32.1103, D32
	str	ip, [r7, #28]	@ D32.1103,
	b	.L184	@
.L203:
	mov	r7, fp	@ pMsgBase, pMsgBase
	mov	r3, #1	@ tmp350,
	str	r3, [r6, #568]	@ tmp350, <variable>.FullRepair
.L181:
	mov	sl, #0	@ tmp390,
	mov	r2, #1	@ tmp389,
	mov	r3, sl	@ tmp392, tmp390
	str	r2, [r6, #552]	@ tmp389, <variable>.ValidGroupNum
	bfi	r3, sl, #16, #9	@ tmp392, tmp390,,
	str	r3, [r7, #32]	@ tmp392,
	ldr	r0, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r1, r0, #1	@ tmp396, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp400, <variable>.ImageHeight,
	mov	ip, r1, asl #23	@ tmp401, tmp396,
	mov	r3, ip, lsr #23	@ tmp401, tmp401,
	bfi	r3, r2, #16, #9	@ tmp401, tmp400,,
	str	r3, [r7, #36]	@ tmp401,
	b	.L183	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r3, #0	@ VdhId, VdhId
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ VidStd, VidStd
	mov	r4, r2	@ RepairTime, RepairTime
	ble	.L210	@,
.L205:
	mvn	r0, #0	@ D.35776,
.L208:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L210:
	movw	r7, #1144	@ tmp144,
	movw	sl, #:lower16:g_HwMem	@ tmp145,
	mul	r7, r7, r5	@ D.35773, tmp144, VdhId
	movt	sl, #:upper16:g_HwMem	@ tmp145,
	add	r6, sl, r7	@ pHwMem, tmp145, D.35773
	ldr	r3, [sl, r7]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L211	@,
.L206:
	cmp	r4, #0	@ RepairTime,
	bne	.L207	@,
	movw	r2, #:lower16:g_RepairParam	@ tmp148,
	movt	r2, #:upper16:g_RepairParam	@ tmp148,
	add	r7, r2, r7	@ pRepairParam, tmp148, D.35773
	ldr	r0, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L205	@,
	mov	r2, r1	@, pDecParam
	mov	r3, r5	@, VdhId
	mov	r1, r6	@, pHwMem
	mov	r0, r8	@, VidStd
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r0, r7	@, pRepairParam
	mov	r1, r6	@, pHwMem
	mov	r2, r5	@, VdhId
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, r4	@ D.35776, RepairTime
	b	.L208	@
.L207:
	cmp	r4, #1	@ RepairTime,
	movne	r0, #0	@ D.35776,
	bne	.L208	@,
	b	.L205	@
.L211:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ D.35780
	beq	.L205	@,
	str	r0, [sl, r7]	@ D.35780, <variable>.pVdmRegVirAddr
	b	.L206	@
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
	ble	.L225	@,
.L213:
	mvn	r0, #0	@ D.35287,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L225:
	movw	r4, #1144	@ tmp219,
	movw	r6, #:lower16:g_HwMem	@ tmp351,
	mul	r4, r4, r5	@ tmp218, tmp219, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp351,
	movw	r3, #:lower16:g_DSPState	@ tmp216,
	movt	r3, #:upper16:g_DSPState	@ tmp216,
	ldr	r7, [r3, #0]	@ D.35289, g_DSPState
	ldr	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L226	@,
.L214:
	mov	r2, #180	@ tmp229,
	ldr	r0, [r3, #12]	@ D.35303,
	mul	r1, r2, r5	@ tmp228, tmp229, VdhId
	movw	r4, #:lower16:g_BackUp	@ tmp352,
	movt	r4, #:upper16:g_BackUp	@ tmp352,
	cmp	r7, #1	@ D.35289,
	movne	r7, #0	@, D.36967
	moveq	r7, #1	@, D.36967
	cmp	r7, #1	@ D.36967,
	add	r2, r1, r4	@ tmp230, tmp228, tmp352
	str	r0, [r1, r4]	@ D.35303, <variable>.BasicCfg1
	ldr	r8, [r3, #28]	@ D.35307,
	str	r8, [r2, #4]	@ D.35307, <variable>.VdmState
	beq	.L227	@,
	add	r8, r3, #4096	@ D.35334, D.35300,
	ldr	r1, [r8, #0]	@ D.35335,* D.35334
	str	r1, [r2, #16]	@ D.35335, <variable>.SedSta
	ldr	ip, [r8, #20]	@ D.35339,
	str	ip, [r2, #20]	@ D.35339, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ temp.1181,
	str	r0, [r2, #8]	@ temp.1181, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ temp.1185,
	str	r6, [r2, #12]	@ temp.1185, <variable>.SwitchRounding
	ldr	r1, [r3, #176]	@ D.35353,
	str	r1, [r2, #24]	@ D.35353, <variable>.DecCyclePerPic
	ldr	r8, [r3, #180]	@ D.35357,
	str	r8, [r2, #28]	@ D.35357, <variable>.RdBdwidthPerPic
	ldr	ip, [r3, #184]	@ D.35361,
	str	ip, [r2, #32]	@ D.35361, <variable>.WrBdWidthPerPic
	ldr	r0, [r3, #188]	@ D.35365,
	str	r0, [r2, #36]	@ D.35365, <variable>.RdReqPerPic
	ldr	r6, [r3, #192]	@ D.35369,
	str	r6, [r2, #40]	@ D.35369, <variable>.WrReqPerPic
.L218:
	add	r8, r3, #33024	@ tmp350, D.35300,
	mov	r3, #180	@ tmp332,
	add	r6, r8, #128	@ D.37008, tmp350,
	mla	r1, r3, r5, r4	@ ivtmp.1180, tmp332, VdhId, tmp352
	mov	r3, r8	@ ivtmp.1176, tmp350
.L219:
	mov	r2, r3	@ tmp353, ivtmp.1176
	add	r0, r1, #4	@ tmp354, ivtmp.1180,
	ldr	ip, [r2], #4	@ D.35375,
	str	ip, [r1, #52]	@ D.35375, <variable>.LumaHistorgam
	add	r1, r0, #4	@ ivtmp.1180, tmp354,
	ldr	ip, [r3, #4]	@ D.35375,
	add	r3, r2, #4	@ ivtmp.1176, tmp353,
	cmp	r3, r6	@ ivtmp.1176, D.37008
	str	ip, [r0, #52]	@ D.35375, <variable>.LumaHistorgam
	bne	.L219	@,
	cmp	r7, #0	@ D.36967,
	moveq	r2, #180	@ tmp339,
	ldreq	r3, [r8, #128]	@ D.35381,
	mlaeq	r4, r2, r5, r4	@ tmp340, tmp339, VdhId, tmp352
	movne	r0, #0	@ D.35287,
	moveq	r0, r7	@ D.35287, D.36967
	streq	r3, [r4, #48]	@ D.35381, <variable>.LumaSumLow
	ldreq	r3, [r8, #132]	@ D.35385,
	streq	r3, [r4, #44]	@ D.35385, <variable>.LumaSumHigh
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L227:
	movw	lr, #1144	@ tmp238,
	mla	ip, lr, r5, r6	@ tmp239, tmp238, VdhId, tmp351
	ldr	r0, [ip, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L213	@,
	bic	r1, r8, #-16777216	@ DecSliceNum, D.35307,
	mov	r2, #180	@ tmp249,
	bic	r8, r1, #16646144	@ DecSliceNum, DecSliceNum,
	movw	ip, #1144	@ tmp262,
	sub	r3, r8, #1	@ tmp242, DecSliceNum,
	cmp	r3, #127	@ tmp242,
	subls	r1, r8, #-1073741823	@ tmp243, DecSliceNum,
	movls	r3, r8, asl #4	@ tmp245, DecSliceNum,
	mul	ip, ip, r5	@ tmp261, tmp262, VdhId
	movls	r1, r1, asl #4	@ prephitmp.1157, tmp243,
	mla	r8, r2, r5, r4	@ tmp250, tmp249, VdhId, tmp352
	movhi	r1, #0	@ prephitmp.1157,
	ldr	lr, [r0, r1]	@ tmp252,* prephitmp.1157
	subls	r3, r3, #8	@ prephitmp.1159, tmp245,
	movhi	r3, #8	@ prephitmp.1159,
	str	lr, [r8, #16]	@ tmp252, <variable>.SedSta
	ldr	r1, [r0, r3]	@ tmp259,* prephitmp.1159
	ldr	r3, [ip, r6]	@ D.35300, <variable>.pVdmRegVirAddr
	str	r1, [r8, #20]	@ tmp259, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ D.35343,
	str	r0, [r8, #8]	@ D.35343, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ D.35347,
	str	r6, [r8, #12]	@ D.35347, <variable>.SwitchRounding
	b	.L218	@
.L226:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L213	@,
	str	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	b	.L214	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r5, r1, #0	@ VdhId, VdhId
	mov	r6, r0	@ reg_id, reg_id
	mvngt	r0, #0	@ dat,
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r7, #1144	@ tmp143,
	movw	r4, #:lower16:g_HwMem	@ tmp158,
	mul	r7, r7, r5	@ tmp142, tmp143, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp158,
	ldr	r3, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L240	@,
.L231:
	sub	r6, r6, #1	@ tmp151, reg_id,
	cmp	r6, #3	@ tmp151,
	ldrls	pc, [pc, r6, asl #2]	@ tmp151
	b	.L232	@
.L237:
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L236
.L232:
	mov	r0, #0	@ dat,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L236:
	mov	r2, #40	@ reg_type,
.L238:
	movw	r0, #1144	@ tmp154,
	mul	r5, r0, r5	@ tmp153, tmp154, VdhId
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L235:
	mov	r2, #36	@ reg_type,
	b	.L238	@
.L234:
	mov	r2, #32	@ reg_type,
	b	.L238	@
.L233:
	mov	r2, #28	@ reg_type,
	b	.L238	@
.L240:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.35210
	beq	.L232	@,
	str	r0, [r7, r4]	@ D.35210, <variable>.pVdmRegVirAddr
	b	.L231	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	movw	r5, #1144	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L245	@,
.L243:
	mvn	r3, #1	@ tmp146,
	str	r3, [r0, #36]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L245:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L243	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	movw	r5, #1144	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L250	@,
.L248:
	mvn	r3, #0	@ tmp146,
	str	r3, [r0, #36]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L250:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L248	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	movw	r5, #1144	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L255	@,
.L253:
	mvn	r3, #0	@ tmp146,
	str	r3, [r0, #32]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L255:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L253	@
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
	str	lr, [sp, #-4]!	@,
	.save {lr}
	movw	r0, #:lower16:269680640	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L260	@,
	movw	r2, #:lower16:g_pstRegCrg	@ tmp143,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp143,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp152,
	ldr	r1, [r2, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	ip, ip, #16	@ u32TmpValue, u32TmpValue,
	str	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r2, #0]	@ pretmp.1304, g_pstRegCrg
	b	.L259	@
.L264:
	ldr	r2, [r1, #372]	@ D.35129, <variable>.PERI_CRG93.u32
	tst	r2, #1	@ D.35129,
	str	r2, [sp, #4]	@ D.35129, u32TmpValue_93.u32
	bne	.L258	@,
	cmp	r3, r0	@ i, tmp152
	beq	.L258	@,
.L259:
	ldr	lr, [r1, #372]	@ D.35129, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp153, i,
	add	r3, r3, #1	@ i, tmp153,
	tst	lr, #1	@ D.35129,
	str	lr, [sp, #4]	@ D.35129, u32TmpValue_93.u32
	beq	.L264	@,
.L258:
	bfc	ip, #4, #1	@ u32TmpValue,,
	str	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
.L260:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	.pad #8
	sub	sp, sp, #8	@,,
	ble	.L273	@,
.L269:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L273:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L269	@,
	movw	r0, #1144	@ tmp149,
	movw	ip, #:lower16:g_HwMem	@ tmp166,
	mul	r6, r0, r4	@ tmp148, tmp149, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp166,
	movw	r2, #:lower16:g_pstRegCrg	@ tmp152,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp152,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp167,
	ldr	r1, [r2, #0]	@ g_pstRegCrg.445, g_pstRegCrg
	ldr	lr, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [lr, #36]	@ tmp,
	ldr	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #64	@ u32TmpValue, u32TmpValue,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r2, #0]	@ pretmp.1336, g_pstRegCrg
	b	.L268	@
.L274:
	ldr	lr, [r1, #372]	@ D.35107, <variable>.PERI_CRG93.u32
	tst	lr, #4	@ D.35107,
	str	lr, [sp, #4]	@ D.35107, u32TmpValue_93.u32
	bne	.L267	@,
	cmp	r3, r0	@ i, tmp167
	beq	.L267	@,
.L268:
	ldr	r2, [r1, #372]	@ D.35107, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp168, i,
	add	r3, r3, #1	@ i, tmp168,
	tst	r2, #4	@ D.35107,
	str	r2, [sp, #4]	@ D.35107, u32TmpValue_93.u32
	beq	.L274	@,
.L267:
	movw	r0, #1144	@ tmp163,
	bfc	r5, #6, #1	@ u32TmpValue,,
	mul	r4, r0, r4	@ tmp162, tmp163, VdhId
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #36]	@ tmp,
	b	.L269	@
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
	ldr	r3, [r3, #40]	@ D.34911, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.34911,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r4	@, VdhId
	blx	r3	@ D.34911
	ldmfd	sp!, {r4, pc}	@
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
	subs	r4, r1, #0	@ pDecReport, pDecReport
	mov	r5, r0	@ VidStd, VidStd
	mov	r6, r2	@ VdhId, VdhId
	bne	.L303	@,
.L279:
	mvn	r0, #0	@ D.35688,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L303:
	movw	r1, #1144	@ tmp155,
	movw	r0, #:lower16:g_HwMem	@ tmp156,
	mul	r2, r1, r2	@ tmp154, tmp155, VdhId
	movt	r0, #:upper16:g_HwMem	@ tmp156,
	add	r7, r0, r2	@ pHwMem, tmp156, tmp154
	ldr	r3, [r0, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L279	@,
	movw	lr, #:lower16:g_DSPState	@ tmp158,
	movt	lr, #:upper16:g_DSPState	@ tmp158,
	mov	r0, r4	@, pDecReport
	mov	r1, #528	@,
	ldr	r8, [lr, #0]	@ D.35693, g_DSPState
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp236,
	movt	r3, #:upper16:g_BackUp	@ tmp236,
	mov	ip, #180	@ tmp163,
	ldr	r1, [r7, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	r2, ip, r6, r3	@ tmp164, tmp163, VdhId, tmp236
	str	r1, [r4, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r0, [r2, #4]	@ D.35707, <variable>.VdmState
	mov	r2, r0, lsr #17	@ tmp166, D.35707,
	and	ip, r2, #3	@ tmp167, tmp166,
	cmp	ip, #1	@ tmp167,
	moveq	r2, #0	@ prephitmp.1399,
	beq	.L281	@,
	eor	r0, r2, #1	@ tmp171, tmp166,
	and	r2, r0, #1	@ tmp173, tmp171,
	cmp	r5, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1399, tmp173
.L281:
	mov	ip, #180	@ tmp179,
	str	r2, [r4, #0]	@ prephitmp.1399, <variable>.RetType
	mla	r3, ip, r6, r3	@ tmp180, tmp179, VdhId, tmp236
	cmp	r5, #0	@ VidStd,
	cmpne	r5, #15	@, VidStd,
	ldr	r1, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, r1, #-16777216	@ D.35717, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.35717, D.35717,
	str	r2, [r4, #8]	@ D.35717, <variable>.DecSliceNum
	bne	.L282	@,
	cmp	r8, #1	@ D.35693,
	beq	.L304	@,
	movw	r0, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp205,
	movt	r0, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp205,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L282	@,
	ldrb	ip, [r3, #19]	@ zero_extendqisi2	@ tmp213, <variable>.SedSta
	and	r3, ip, #3	@ tmp215, tmp213,
	cmp	r3, #2	@ tmp215,
	bne	.L282	@,
	mov	r2, #1	@ tmp216,
	strh	r1, [r4, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.35688, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r4, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r2, [r4, #8]	@ tmp216, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L304:
	ldr	r3, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r3, #21, #2	@ tmp199, <variable>.SedSta,,
	cmp	r3, #2	@ tmp199,
	bne	.L282	@,
	mov	lr, #0	@ movhi	@,
	str	r8, [r4, #8]	@ D.35693, <variable>.DecSliceNum
	strh	lr, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.35688,
	strh	lr, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L282:
	cmp	r2, #128	@ D.35717,
	movhi	r3, #0	@ tmp221,
	strhi	r3, [r4, #8]	@ tmp221, <variable>.DecSliceNum
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.35743,
	beq	.L279	@,
	ldr	r3, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	movw	r5, #:lower16:g_UpMsg	@ tmp225,
	movt	r5, #:upper16:g_UpMsg	@ tmp225,
	add	r5, r5, r6, asl #11	@, tmp224, tmp225, VdhId,
	mov	r2, r3, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp224
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r4, #8]	@ temp.1427, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1427,
	beq	.L286	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1427
	sub	lr, ip, #1	@ tmp242, temp.1427,
	add	r3, r4, #4	@ ivtmp.1420, pDecReport,
	strh	r2, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, lr, r0	@ tmp244, tmp242,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1417, tmp224,
	strh	r1, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L286	@,
	cmp	r2, #0	@ tmp244,
	beq	.L287	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1427
	strh	r2, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1417, ivtmp.1417,
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1420, ivtmp.1420,
	bcs	.L286	@,
.L287:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r1, r5, #16	@ tmp246, ivtmp.1417,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1427
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp247, ivtmp.1420,
	ldrh	r2, [r5, #8]	@, g_UpMsg
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r1, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r1, #16	@ ivtmp.1417, tmp246,
	ldrh	r3, [r1, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1420, tmp247,
	bcc	.L287	@,
.L286:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	beq	.L288	@,
	ldr	r0, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r3, r0, asl #2	@ tmp232, <variable>.DecSliceNum,
	subs	r2, r3, #3	@ D.35760, tmp232,
	beq	.L288	@,
	cmp	r2, #4	@ D.35760,
	sub	ip, r3, #4	@ tmp239, tmp232,
	ubfx	r1, ip, #2, #1	@ tmp240, tmp239,,
	mov	r3, #4	@ i_cnt,
	bls	.L288	@,
	cmp	r1, #0	@ tmp240,
	beq	.L289	@,
	mov	r3, #8	@ i_cnt,
	cmp	r2, r3	@ D.35760, i_cnt
	bls	.L288	@,
.L289:
	add	r3, r3, #8	@ i_cnt, i_cnt,
	cmp	r2, r3	@ D.35760, i_cnt
	bhi	.L289	@,
.L288:
	mov	r0, #0	@ D.35688,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareDec
	.type	VDMHAL_V200R004_PrepareDec, %function
VDMHAL_V200R004_PrepareDec:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r1, #0	@ pDecParam, pDecParam
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ VidStd, VidStd
	bne	.L310	@,
.L306:
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L310:
	cmp	r2, #0	@ VdhId,
	bgt	.L306	@,
	movw	r6, #:lower16:s_RegPhyBaseAddr	@ tmp138,
	movt	r6, #:upper16:s_RegPhyBaseAddr	@ tmp138,
	cmp	r0, #6	@ VidStd,
	movne	r1, #0	@,
	moveq	r1, #1	@,
	str	r2, [sp, #4]	@,
	ldr	r0, [r6, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	cmp	r4, #0	@ VidStd,
	ldr	r2, [sp, #4]	@,
	bne	.L311	@,
	mov	r0, r5	@, pDecParam
	mov	r1, r2	@, VdhId
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, lr}
	b	H264HAL_V200R004_StartDec	@
.L311:
	cmp	r4, #3	@ VidStd,
	bne	.L306	@,
	mov	r0, r5	@, pDecParam
	mov	r1, r2	@, VdhId
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, lr}
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
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ MemAddr, MemAddr
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r1	@ MemSize, MemSize
	ldr	r7, [sp, #76]	@ ChanID, ChanID
	ldr	r6, [sp, #80]	@ pVdmMemArrange, pVdmMemArrange
	ldr	fp, [sp, #84]	@ align_length, align_length
	bne	.L330	@,
.L313:
	mvn	r0, #0	@ D.34980,
.L328:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L330:
	cmp	r3, #31	@ Height,
	movgt	r0, #0	@, tmp175
	movle	r0, #1	@, tmp175
	sub	ip, r2, #32	@ tmp170, Width,
	movw	r1, #8160	@ tmp172,
	cmp	ip, r1	@ tmp170, tmp172
	movls	r1, r0	@, tmp178, tmp175
	orrhi	r1, r0, #1	@,, tmp178, tmp175
	cmp	r1, #0	@ tmp178,
	bne	.L313	@,
	cmp	r3, #8192	@ Height,
	bgt	.L313	@,
	cmp	r6, #0	@ pVdmMemArrange,
	beq	.L313	@,
	mov	r0, r6	@, pVdmMemArrange
	add	r1, r1, #416	@,,
	ldr	r9, [sp, #64]	@ PmvNum, PmvNum
	movw	r8, #:lower16:g_not_direct_8x8_inference_flag	@ tmp188,
	str	r2, [sp, #16]	@,
	movt	r8, #:upper16:g_not_direct_8x8_inference_flag	@ tmp188,
	str	r3, [sp, #12]	@,
	bl	__memzero	@
	ldr	ip, [sp, #16]	@,
	cmp	r9, #20	@ PmvNum,
	movge	r9, #20	@ PmvNum.1507,
	ldr	sl, [sp, #12]	@,
	add	r0, ip, #15	@ tmp179, Width,
	ldrb	r2, [r8, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	add	r3, sl, #15	@ tmp180, Height,
	mov	sl, r0, asr #4	@ ImgWidthInMb, tmp179,
	mov	r3, r3, asr #4	@ ImgHeightInMb, tmp180,
	cmp	r3, #36	@ ImgHeightInMb,
	cmple	sl, #45	@, ImgWidthInMb,
	mul	ip, sl, r3	@ tmp190, ImgWidthInMb, ImgHeightInMb
	movle	r1, #64	@, ColMbSize,
	movgt	r1, #32	@, ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r1, #64	@ ColMbSize,
	mul	r0, r1, ip	@ tmp191, ColMbSize, tmp190
	add	r8, r0, #127	@ tmp192, tmp191,
	bic	r8, r8, #127	@ PmvSlotLen, tmp192,
	mul	r2, r9, r8	@ tmp193, PmvNum.1507, PmvSlotLen
	cmp	r2, r5	@ tmp193, MemSize
	bge	.L313	@,
	mov	r1, sl, asl #4	@ tmp197, ImgWidthInMb,
	str	r9, [r6, #404]	@ PmvNum.1507, <variable>.ValidPMVNum
	sub	r9, r1, #1	@ tmp198, tmp197,
	mov	lr, r8, asr #1	@ tmp196, PmvSlotLen,
	add	r0, r9, fp	@, tmp198, align_length
	mov	r1, fp	@, align_length
	str	lr, [r6, #400]	@ tmp196, <variable>.HafPmvOffset
	mov	r9, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #72]	@, UserDec
	cmp	r1, #1	@,
	addne	r3, r9, #31	@ tmp206, ImgHeightInPixAln,
	movne	r2, #96	@ tmp209,
	movne	r3, r3, asr #5	@ tmp207, tmp206,
	mul	r0, fp, r0	@ SlotWidth, align_length,
	moveq	fp, #3	@ tmp205,
	mulne	r3, r2, r3	@ tmp208, tmp209, tmp207
	muleq	fp, fp, r9	@ tmp204, tmp205, ImgHeightInPixAln
	str	r0, [r6, #0]	@ SlotWidth, <variable>.VahbStride
	mulne	r0, r0, r3	@ tmp210, SlotWidth, tmp208
	muleq	fp, r0, fp	@ ImgSlotLen, SlotWidth, tmp204
	movne	fp, r0, asr #1	@ ImgSlotLen, tmp210,
	cmp	r7, #0	@ ChanID,
	blt	.L319	@,
	mov	r0, r7	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r2, r0	@ ChanWidth,
	mov	r0, r7	@, ChanID
	str	r2, [sp, #12]	@,
	bl	VCTRL_GetChanHeight	@
	ldr	r3, [sp, #12]	@,
	cmn	r0, #1	@ ChanHeight,
	cmnne	r3, #1	@, ChanWidth,
	beq	.L313	@,
	ldr	r2, [sp, #72]	@, UserDec
	add	r1, r3, #15	@ tmp223, ChanWidth,
	add	r3, r0, #15	@ tmp221, ChanHeight,
	bic	lr, r1, #15	@ tmp225, tmp223,
	cmp	r2, #1	@,
	bic	r3, r3, #15	@ ChanImgHeightInPixAln, tmp221,
	add	ip, lr, #255	@ tmp226, tmp225,
	moveq	r1, #3	@ tmp228,
	bic	r2, ip, #255	@ ChanSlotWidth, tmp226,
	muleq	r3, r1, r3	@ tmp227, tmp228, ChanImgHeightInPixAln
	muleq	r3, r2, r3	@ ChanSlotLen, ChanSlotWidth, tmp227
	beq	.L321	@,
	adds	r1, r3, #31	@ tmp229, ChanImgHeightInPixAln,
	mov	ip, #96	@ tmp236,
	addmi	r0, r3, #62	@, tmp231, ChanImgHeightInPixAln,
	movpl	r0, r1	@, tmp231, tmp229
	mov	r3, r0, asr #5	@ tmp233, tmp231,
	mul	lr, r3, r2	@ tmp234, tmp233, ChanSlotWidth
	mul	r0, ip, lr	@ tmp235, tmp236, tmp234
	mov	r3, r0, asr #1	@ ChanSlotLen, tmp235,
.L321:
	cmp	fp, r3	@ ImgSlotLen, ChanSlotLen
	bgt	.L313	@,
.L319:
	add	lr, r9, #31	@ tmp241, ImgHeightInPixAln,
	mov	sl, sl, asl #9	@ tmp240, ImgWidthInMb,
	ldr	r0, [sp, #68]	@, FrameNum
	mov	ip, lr, asr #5	@ tmp242, tmp241,
	cmp	r0, #0	@,
	mul	r2, ip, sl	@ tmp243, tmp242, tmp240
	mvneq	r0, #0	@ D.34980,
	str	r2, [r6, #264]	@ tmp243, <variable>.ChromOffset
	ldreq	r1, [sp, #68]	@, FrameNum
	streq	r1, [r6, #276]	@, <variable>.ValidFrameNum
	beq	.L328	@,
	add	r9, r4, #1020	@ tmp244, MemAddr,
	mov	r1, fp	@, ImgSlotLen
	add	r2, r9, #3	@ tmp244, tmp244,
	mov	r9, r0	@ prephitmp.1510,
	bic	r3, r2, #1020	@ tmp246, tmp244,
	cmp	r9, #64	@ prephitmp.1510,
	movge	r9, #64	@ prephitmp.1510,
	bic	sl, r3, #3	@ tmp246, tmp246,
	rsb	sl, r4, sl	@ Offset, MemAddr, tmp246
	rsb	r0, sl, r5	@, Offset, MemSize
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ prephitmp.1510,
	movlt	r0, r9	@ prephitmp.1510, prephitmp.1510
	movge	r0, r0	@ prephitmp.1510,
	str	r0, [r6, #276]	@ prephitmp.1510, <variable>.ValidFrameNum
	cmp	r0, #0	@ prephitmp.1510,
	addne	r4, sl, r4	@ ivtmp.1497, Offset, MemAddr
	movne	r3, #1	@ ivtmp.1495,
	bne	.L323	@,
	b	.L313	@
.L324:
	ldr	r0, [r6, #276]	@ prephitmp.1510, <variable>.ValidFrameNum
	str	r2, [r6, r3, asl #2]	@ tmp254, <variable>.FrameAddr
.L323:
	sub	r1, r3, #1	@ i.1513, ivtmp.1495,
	add	r4, r4, fp	@ ivtmp.1497, ivtmp.1497, ImgSlotLen
	cmp	r0, r1	@ prephitmp.1510, i.1513
	add	r3, r3, #1	@ ivtmp.1495, ivtmp.1495,
	rsb	r2, fp, r4	@ tmp254, ImgSlotLen, ivtmp.1497
	bgt	.L324	@,
	cmp	r7, #0	@ ChanID,
	blt	.L325	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp271,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp271,
	ldr	r1, [r2, r7, asl #2]	@ D.35072, s_pstVfmwChan
	cmp	r1, #0	@ D.35072,
	bne	.L331	@,
.L325:
	mla	sl, fp, r0, sl	@ tmp266, ImgSlotLen, prephitmp.1510, Offset
	mov	r2, #1024	@ tmp267,
	str	fp, [r6, #408]	@ ImgSlotLen, <variable>.ImgSlotLen
	mov	r0, #0	@ D.34980,
	str	r2, [r6, #412]	@ tmp267, <variable>.u32StrideByte
	str	sl, [r6, #4]	@ tmp266, <variable>.TotalMemUsed
	b	.L328	@
.L331:
	ldr	r9, [r6, #404]	@ prephitmp.1470, <variable>.ValidPMVNum
	movw	r3, #:lower16:211824	@ tmp257,
	movt	r3, #:upper16:211824	@ tmp257,
	mul	ip, r9, r8	@ tmp256, prephitmp.1470, PmvSlotLen
	ldr	lr, [r1, r3]	@ <variable>.stChanMem_pmv.Length, <variable>.stChanMem_pmv.Length
	cmp	ip, lr	@ tmp256, <variable>.stChanMem_pmv.Length
	bgt	.L313	@,
	mov	r3, #0	@ ivtmp.1485,
	movw	r4, #:lower16:211820	@ tmp272,
	movt	r4, #:upper16:211820	@ tmp272,
	mov	ip, r6	@ ivtmp.1491, pVdmMemArrange
	mov	r1, r3	@ i, ivtmp.1485
	str	r0, [sp, #4]	@ prephitmp.1510, %sfp
.L326:
	cmp	r1, r9	@ i, prephitmp.1470
	add	r3, r3, r8	@ ivtmp.1485, ivtmp.1485, PmvSlotLen
	rsb	r0, r8, r3	@, PmvSlotLen, ivtmp.1485
	add	r1, r1, #1	@ i, i,
	add	ip, ip, #4	@ ivtmp.1491, ivtmp.1491,
	str	r0, [sp, #20]	@, %sfp
	bge	.L332	@,
	ldr	lr, [r2, r7, asl #2]	@ tmp260, s_pstVfmwChan
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r5, [lr, r4]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	r5, r5, r0	@ tmp264, <variable>.stChanMem_pmv.PhyAddr,
	str	r5, [ip, #276]	@ tmp264, <variable>.PMVAddr
	b	.L326	@
.L332:
	ldr	r0, [sp, #4]	@ prephitmp.1510, %sfp
	b	.L325	@
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem, .-VDMHAL_V200R004_ArrangeMem
	.align	2
	.global	VDMHAL_V200R004_OpenHAL
	.type	VDMHAL_V200R004_OpenHAL, %function
VDMHAL_V200R004_OpenHAL:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:440319	@ tmp159,
	movt	r3, #:upper16:440319	@ tmp159,
	cmp	r0, #0	@ MemBaseAddr,
	cmpne	r1, r3	@, Size, tmp159
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movgt	r3, #0	@, tmp165
	movle	r3, #1	@, tmp165
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ Size, Size
	mov	r4, r0	@ MemBaseAddr, MemBaseAddr
	bgt	.L342	@,
.L334:
	mvn	r0, #0	@ Ret,
.L337:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L342:
	cmp	r2, #0	@ VdhId,
	bgt	.L334	@,
	movw	r1, #1144	@ tmp167,
	movw	r7, #:lower16:g_HwMem	@ tmp286,
	mul	r8, r1, r2	@ tmp166, tmp167, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp286,
	str	r2, [sp, #4]	@,
	mov	r9, #143	@ tmp178,
	str	r3, [sp, #0]	@,
	add	r6, r7, r8	@ __p, tmp286, tmp166
	mov	r0, r6	@, __p
	bl	__memzero	@
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r7, r8]	@, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:269733888	@,
	movt	r0, #:upper16:269733888	@,
	add	r8, r5, r4	@ tmp195, Size, MemBaseAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [sp, #4]	@,
	add	r3, r4, #1020	@ tmp180, MemBaseAddr,
	add	sl, r3, #3	@ tmp180, tmp180,
	ldr	r3, [sp, #0]	@,
	mul	r1, r9, r2	@ tmp177, tmp178, VdhId
	bic	ip, sl, #1020	@ D.34887, tmp180,
	bic	ip, ip, #3	@ D.34887, D.34887,
	str	ip, [r6, #16]	@ D.34887, <variable>.HALMemBaseAddr
	rsb	r9, ip, r8	@ tmp196, D.34887, tmp195
	mov	r8, #1024	@ tmp203,
	add	sl, r1, #1	@ tmp179, tmp177,
	mov	r1, r6	@ ivtmp.1548, __p
	str	r9, [r6, #20]	@ tmp196, <variable>.HALMemSize
	str	r8, [r6, #24]	@ tmp203, <variable>.VahbStride
	str	r0, [r7, sl, asl #3]	@, <variable>.pBpdRegVirAddr
.L335:
	add	lr, r3, #1024	@ tmp287, ivtmp.1545,
	add	r9, r3, ip	@ tmp213, ivtmp.1545, D.34887
	add	r3, r3, #3072	@ ivtmp.1545, ivtmp.1545,
	add	r0, r1, #4	@ tmp288, ivtmp.1548,
	cmp	r3, #144384	@ ivtmp.1545,
	add	sl, lr, #1024	@ ivtmp.1545, tmp287,
	str	r9, [r1, #28]	@ tmp213, <variable>.MsgSlotAddr
	add	sl, sl, ip	@ tmp294, ivtmp.1545, D.34887
	add	r8, lr, ip	@ tmp291, tmp287, D.34887
	str	sl, [r0, #32]	@ tmp294, <variable>.MsgSlotAddr
	add	r1, r1, #12	@ ivtmp.1548, ivtmp.1548,
	str	r8, [r0, #28]	@ tmp291, <variable>.MsgSlotAddr
	bne	.L335	@,
	movw	r3, #1144	@ tmp217,
	add	ip, ip, #144384	@ PhyAddr.1549, D.34887,
	mla	r2, r3, r2, r7	@ tmp218, tmp217, VdhId, tmp286
	add	r0, ip, #261120	@ PhyAddr.1556, PhyAddr.1549,
	rsb	lr, r4, #32768	@ tmp283, MemBaseAddr,
	add	r1, ip, #83968	@ PhyAddr.1552, PhyAddr.1549,
	add	r7, lr, r0	@ tmp284, tmp283, PhyAddr.1556
	add	r3, ip, #199680	@ PhyAddr.1555, PhyAddr.1549,
	cmp	r5, r7	@ Size, tmp284
	add	r4, ip, #5120	@ PhyAddr.1550, PhyAddr.1549,
	mov	r5, #141	@ tmp220,
	add	r7, ip, #38912	@ PhyAddr.1551, PhyAddr.1549,
	str	r5, [r2, #1052]	@ tmp220, <variable>.ValidMsgSlotNum
	add	r5, ip, #129024	@ PhyAddr.1553, PhyAddr.1549,
	str	r4, [r2, #1080]	@ PhyAddr.1550, <variable>.SedTopAddr
	add	r4, ip, #196608	@ PhyAddr.1554, PhyAddr.1549,
	str	r7, [r2, #1084]	@ PhyAddr.1551, <variable>.PmvTopAddr
	str	r1, [r2, #1092]	@ PhyAddr.1552, <variable>.ItransTopAddr
	str	r5, [r2, #1096]	@ PhyAddr.1553, <variable>.DblkTopAddr
	str	r4, [r2, #1112]	@ PhyAddr.1554, <variable>.IntensityConvTabAddr
	str	r3, [r2, #1124]	@ PhyAddr.1555, <variable>.DnrTopAddr
	str	r0, [r2, #1116]	@ PhyAddr.1556, <variable>.VpTabAddr
	str	ip, [r2, #1076]	@ PhyAddr.1549, <variable>.H264MnAddr
	str	r1, [r2, #1088]	@ PhyAddr.1552, <variable>.RcnTopAddr
	str	r3, [r2, #1120]	@ PhyAddr.1555, <variable>.DnrMbInfoAddr
	blt	.L334	@,
	mov	r0, r6	@, __p
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@ D.34900
	mvnne	r0, #0	@, Ret,
	b	.L337	@
	.fnend
	.size	VDMHAL_V200R004_OpenHAL, .-VDMHAL_V200R004_OpenHAL
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BigTile1d_y\000"
.LC1:
	.ascii	"BigTile1d_uv\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
