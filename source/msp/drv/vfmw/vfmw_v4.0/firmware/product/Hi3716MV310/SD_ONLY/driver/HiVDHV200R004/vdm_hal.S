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
	movw	r0, #:lower16:481280	@,
	movt	r0, #:upper16:481280	@,
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
	movw	ip, #1140	@ tmp142,
	movw	r1, #:lower16:g_HwMem	@ tmp140,
	mul	r2, ip, r0	@ tmp141, tmp142, VdhId
	movt	r1, #:upper16:g_HwMem	@ tmp140,
	ldr	r3, [r2, r1]	@ D.35559, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ D.35559,
	ldrne	r0, [r3, #28]	@ Data32.573,
	mvneq	r0, #0	@ Data32,
	ubfxne	r0, r0, #17, #1	@ Data32, Data32.573,,
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
	movw	r1, #1140	@ tmp141,
	movw	r3, #:lower16:g_HwMem	@ tmp139,
	mul	r2, r1, r0	@ tmp140, tmp141, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp139,
	ldr	r0, [r2, r3]	@ D.35572, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ D.35572,
	bxeq	lr	@
	ldr	r0, [r0, #40]	@ Data32,
	subs	r0, r0, #1	@ D.35575, Data32,
	movne	r0, #1	@ D.35575
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
	mvn	r0, #0	@ D.35729,
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
	mov	r0, r4	@ D.35729, tmp151
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
	mvn	r0, #0	@ D.35713,
	ldmfd	sp!, {r4, pc}	@
.L32:
	cmp	r2, #512	@ upmsg_size,
	bhi	.L29	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.35713, tmp144
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
	ubfx	r9, r3, #29, #2	@ PicStructure.843, Height,,
	.pad #84
	sub	sp, sp, #84	@,,
	cmp	r9, #1	@ PicStructure.843,
	mov	r6, r3	@ Height, Height
	mov	r4, r1	@ Yaddress, Yaddress
	str	r0, [sp, #12]	@ fpYuv, %sfp
	mov	r5, r2	@ Width, Width
	moveq	r9, #0	@ PicStructure,
	beq	.L35	@,
	cmp	r9, #2	@ PicStructure.843,
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
	subs	ip, r0, #0	@ D.36391,
	beq	.L145	@,
.L71:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L145:
	mov	r1, ip	@, D.36391
	movw	r0, #:lower16:.LC1	@,
	mov	r2, #4194304	@,
	movt	r0, #:upper16:.LC1	@,
	add	r3, sp, #48	@,,
	str	ip, [sp, #0]	@ D.36391,
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
	ldr	fp, [sp, #16]	@ ivtmp.803, %sfp
	str	r8, [sp, #44]	@ Caddress, %sfp
.L41:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L44	@,
	and	r8, r9, #15	@ pretmp.868, i,
	ldr	r6, [sp, #8]	@, %sfp
	mov	lr, r9, lsr #4	@ pretmp.874, i,
	cmp	fp, #0	@ ivtmp.803,
	mov	r7, r8, asl #8	@ tmp280, pretmp.868,
	sub	sl, r5, #1	@ tmp371, ImgWidthInPixAln,
	ubfx	sl, sl, #8, #1	@ tmp372, tmp371,,
	mla	r8, r6, lr, r7	@ pretmp.758,, pretmp.874, tmp280
	beq	.L89	@,
	mov	r0, fp	@, ivtmp.803
	add	r1, r4, r8	@, Yaddress, pretmp.758
	mov	r2, #256	@,
	bl	memcpy	@
.L89:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, fp, r7	@ ivtmp.853, ivtmp.803,
	bls	.L44	@,
	cmp	sl, #0	@ tmp372,
	beq	.L43	@,
	cmp	r6, #0	@ ivtmp.853,
	beq	.L94	@,
	add	r2, r8, #4096	@ tmp459, pretmp.758,
	mov	r0, r6	@, ivtmp.853
	add	r1, r4, r2	@, Yaddress, tmp459
	mov	r2, r7	@, j
	bl	memcpy	@
.L94:
	add	r7, r7, #256	@ j, tmp373,
	add	r6, r6, #256	@ ivtmp.853, tmp374,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L44	@,
.L43:
	mov	ip, r7, lsr #8	@ tmp271, j,
	cmp	r6, #0	@ ivtmp.853,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.853
	add	r3, r8, ip, asl #12	@, tmp273, pretmp.758, tmp271,
	add	r7, r7, r2	@ tmp373, j,
	add	r1, r4, r3	@, Yaddress, tmp273
	beq	.L42	@,
	bl	memcpy	@
.L42:
	mov	r1, r7, lsr #8	@ tmp461, tmp373,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp374, ivtmp.853,
	add	r0, r8, r1, asl #12	@, tmp463, pretmp.758, tmp461,
	add	r1, r4, r0	@, Yaddress, tmp463
	mov	r0, r6	@, tmp374
	beq	.L94	@,
	add	r7, r7, #256	@ j, tmp373,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.853, tmp374,
	bhi	.L43	@,
.L44:
	ldr	r2, [sp, #24]	@, %sfp
	add	r9, r9, #1	@ i, i,
	add	fp, fp, r5	@ ivtmp.803, ivtmp.803, ImgWidthInPixAln
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
	mov	sl, #0	@ i.852,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #16]	@ ivtmp.795, %sfp
.L46:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L49	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r4, sl, lsr #3	@ tmp294, i.852,
	and	r6, sl, #7	@ pretmp.865, i.852,
	cmp	r9, #0	@ ivtmp.795,
	sub	fp, r5, #1	@ tmp365, ImgWidthInPixAln,
	mul	r7, ip, r4	@ tmp295,, tmp294
	ubfx	fp, fp, #8, #1	@ tmp366, tmp365,,
	add	r7, r7, r6, asl #8	@, pretmp.756, tmp295, pretmp.865,
	beq	.L82	@,
	mov	r0, r9	@, ivtmp.795
	add	r1, r8, r7	@, Caddress, pretmp.756
	mov	r2, #256	@,
	bl	memcpy	@
.L82:
	mov	r6, #256	@ j.851,
	cmp	r5, r6	@ ImgWidthInPixAln, j.851
	add	r4, r9, r6	@ ivtmp.848, ivtmp.795,
	bls	.L49	@,
	cmp	fp, #0	@ tmp366,
	beq	.L48	@,
	cmp	r4, #0	@ ivtmp.848,
	beq	.L87	@,
	add	r3, r7, #2048	@ tmp447, pretmp.756,
	mov	r0, r4	@, ivtmp.848
	add	r1, r8, r3	@, Caddress, tmp447
	mov	r2, r6	@, j.851
	bl	memcpy	@
.L87:
	add	r6, r6, #256	@ j.851, tmp367,
	add	r4, r4, #256	@ ivtmp.848, tmp368,
	cmp	r5, r6	@ ImgWidthInPixAln, j.851
	bls	.L49	@,
.L48:
	mov	lr, r6, lsr #8	@ tmp285, j.851,
	cmp	r4, #0	@ ivtmp.848,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.848
	add	r1, r7, lr, asl #11	@, tmp287, pretmp.756, tmp285,
	add	r6, r6, r2	@ tmp367, j.851,
	add	r1, r8, r1	@, Caddress, tmp287
	beq	.L47	@,
	bl	memcpy	@
.L47:
	mov	r3, r6, lsr #8	@ tmp449, tmp367,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp368, ivtmp.848,
	add	r0, r7, r3, asl #11	@, tmp451, pretmp.756, tmp449,
	add	r1, r8, r0	@, Caddress, tmp451
	mov	r0, r4	@, tmp368
	beq	.L87	@,
	add	r6, r6, #256	@ j.851, tmp367,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.851
	add	r4, r4, #256	@ ivtmp.848, tmp368,
	bhi	.L48	@,
.L49:
	ldr	r2, [sp, #20]	@, %sfp
	add	sl, sl, #1	@ i.852, i.852,
	add	r9, r9, r5	@ ivtmp.795, ivtmp.795, ImgWidthInPixAln
	cmp	r2, sl	@, i.852
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
	mul	r4, r2, lr	@ D.36688,,
.L144:
	ldr	r2, [sp, #12]	@, %sfp
	mov	r1, r4	@, D.36744
	ldr	r0, [sp, #28]	@, %sfp
	bl	klib_fwrite	@
	mov	r1, r4	@, D.36744
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
	and	lr, r9, #15	@ pretmp.878, i.857,
	ldr	r7, [sp, #8]	@, %sfp
	mov	r2, r9, lsr #4	@ pretmp.749, i.857,
	sub	sl, r5, #1	@ tmp389, ImgWidthInPixAln,
	mov	r8, lr, asl #8	@ tmp311, pretmp.878,
	mov	r6, r9, lsr #1	@ pretmp.869, i.857,
	ldr	r3, [sp, #16]	@, %sfp
	ubfx	sl, sl, #8, #1	@ tmp390, tmp389,,
	mlas	r6, r5, r6, r3	@ ivtmp.838, ImgWidthInPixAln, pretmp.869,
	mla	r8, r7, r2, r8	@ pretmp.750,, pretmp.749, tmp311
	beq	.L107	@,
	mov	r0, r6	@, ivtmp.838
	add	r1, r4, r8	@, Yaddress, pretmp.750
	mov	r2, #256	@,
	bl	memcpy	@
.L107:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, r7	@ ivtmp.838, ivtmp.838,
	bls	.L60	@,
	cmp	sl, #0	@ tmp390,
	beq	.L59	@,
	cmp	r6, #0	@ ivtmp.838,
	beq	.L112	@,
	add	r3, r8, #4096	@ tmp486, pretmp.750,
	mov	r0, r6	@, ivtmp.838
	add	r1, r4, r3	@, Yaddress, tmp486
	mov	r2, r7	@, j
	bl	memcpy	@
.L112:
	add	r7, r7, #256	@ j, tmp391,
	add	r6, r6, #256	@ ivtmp.838, tmp392,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L60	@,
.L59:
	mov	r1, r7, lsr #8	@ tmp302, j,
	cmp	r6, #0	@ ivtmp.838,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.838
	add	lr, r8, r1, asl #12	@, tmp304, pretmp.750, tmp302,
	add	r7, r7, r2	@ tmp391, j,
	add	r1, r4, lr	@, Yaddress, tmp304
	beq	.L58	@,
	bl	memcpy	@
.L58:
	mov	ip, r7, lsr #8	@ tmp488, tmp391,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp392, ivtmp.838,
	add	r0, r8, ip, asl #12	@, tmp490, pretmp.750, tmp488,
	add	r1, r4, r0	@, Yaddress, tmp490
	mov	r0, r6	@, tmp392
	beq	.L112	@,
	add	r7, r7, #256	@ j, tmp391,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.838, tmp392,
	bhi	.L59	@,
.L60:
	add	r9, r9, #2	@ i.857, i.857,
	cmp	fp, r9	@ ImgHeightInPixAln, i.857
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
	mov	sl, #0	@ i.861,
	mov	r9, ip, asr #1	@,,
	str	r9, [sp, #8]	@, %sfp
	ldr	r9, [sp, #16]	@ ivtmp.830, %sfp
.L62:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L65	@,
	and	r7, sl, #7	@ pretmp.881, i.861,
	ldr	r4, [sp, #8]	@, %sfp
	mov	ip, sl, lsr #3	@ pretmp.883, i.861,
	cmp	r9, #0	@ ivtmp.830,
	mov	r6, r7, asl #8	@ tmp327, pretmp.881,
	sub	fp, r5, #1	@ tmp383, ImgWidthInPixAln,
	ubfx	fp, fp, #8, #1	@ tmp384, tmp383,,
	mla	r7, r4, ip, r6	@ pretmp.748,, pretmp.883, tmp327
	beq	.L100	@,
	mov	r0, r9	@, ivtmp.830
	add	r1, r8, r7	@, Caddress, pretmp.748
	mov	r2, #256	@,
	bl	memcpy	@
.L100:
	mov	r6, #256	@ j.860,
	cmp	r5, r6	@ ImgWidthInPixAln, j.860
	add	r4, r9, r6	@ ivtmp.862, ivtmp.830,
	bls	.L65	@,
	cmp	fp, #0	@ tmp384,
	beq	.L64	@,
	cmp	r4, #0	@ ivtmp.862,
	beq	.L105	@,
	add	r1, r7, #2048	@ tmp474, pretmp.748,
	mov	r0, r4	@, ivtmp.862
	add	r1, r8, r1	@, Caddress, tmp474
	mov	r2, r6	@, j.860
	bl	memcpy	@
.L105:
	add	r6, r6, #256	@ j.860, tmp385,
	add	r4, r4, #256	@ ivtmp.862, tmp386,
	cmp	r5, r6	@ ImgWidthInPixAln, j.860
	bls	.L65	@,
.L64:
	mov	lr, r6, lsr #8	@ tmp318, j.860,
	cmp	r4, #0	@ ivtmp.862,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.862
	add	r3, r7, lr, asl #11	@, tmp320, pretmp.748, tmp318,
	add	r6, r6, r2	@ tmp385, j.860,
	add	r1, r8, r3	@, Caddress, tmp320
	beq	.L63	@,
	bl	memcpy	@
.L63:
	mov	r0, r6, lsr #8	@ tmp476, tmp385,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp386, ivtmp.862,
	add	r1, r7, r0, asl #11	@, tmp478, pretmp.748, tmp476,
	add	r1, r8, r1	@, Caddress, tmp478
	mov	r0, r4	@, tmp386
	beq	.L105	@,
	add	r6, r6, #256	@ j.860, tmp385,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.860
	add	r4, r4, #256	@ ivtmp.862, tmp386,
	bhi	.L64	@,
.L65:
	ldr	r2, [sp, #20]	@, %sfp
	add	sl, sl, #1	@ i.861, i.861,
	add	r9, r9, r5	@ ivtmp.830, ivtmp.830, ImgWidthInPixAln
	cmp	r2, sl	@, i.861
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
	mul	r4, r3, r2	@ D.36744,,
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
	mov	r7, r5, asl #1	@ D.36746, ImgWidthInPixAln,
	ldr	sl, [sp, #16]	@, %sfp
	mov	r9, r3	@ chrom_height,
	mla	r6, r5, r8, sl	@ tmp, ImgWidthInPixAln,,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	ldr	sl, [sp, #28]	@ ul, %sfp
	mov	r5, #0	@ i.864,
.L68:
	cmp	r8, #0	@ chrom_width,
	beq	.L70	@,
	mov	r1, r5, lsr #1	@ pretmp.870, i.864,
	ldrb	r4, [r6, #0]	@ zero_extendqisi2	@ tmp436,* tmp
	mov	r0, #1	@ j.863,
	cmp	r8, r0	@ chrom_width, j.863
	mul	ip, r8, r1	@ tmp334, chrom_width, pretmp.870
	add	r3, r6, #2	@ ivtmp.810, tmp,
	add	r2, sl, ip	@ ivtmp.813, ul, tmp334
	add	lr, r2, #2097152	@ tmp435, ivtmp.813,
	add	r1, r2, r0	@ ivtmp.813, ivtmp.813,
	strb	r4, [lr, #0]	@ tmp436,
	ldrb	r4, [r6, #1]	@ zero_extendqisi2	@ tmp437,
	strb	r4, [sl, ip]	@ tmp437,
	bls	.L70	@,
	mov	ip, #1	@ tmp377,
	cmp	ip, #0	@ tmp377,
	beq	.L69	@,
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ tmp466,* ivtmp.810
	add	ip, r1, #2097152	@ tmp465, ivtmp.813,
	mov	r0, #2	@ j.863,
	cmp	r8, r0	@ chrom_width, j.863
	add	r1, r1, #1	@ ivtmp.813, ivtmp.813,
	strb	lr, [ip, #0]	@ tmp466,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp467,
	add	r3, r3, r0	@ ivtmp.810, ivtmp.810,
	strb	r4, [r2, #1]	@ tmp467,
	bls	.L70	@,
.L69:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp330,* ivtmp.810
	add	lr, r1, #2097152	@ tmp329, ivtmp.813,
	mov	r2, r1	@ tmp378, ivtmp.813
	add	ip, r3, #2	@ tmp380, ivtmp.810,
	add	r0, r0, #2	@ j.863, j.863,
	strb	r4, [lr, #0]	@ tmp330,
	cmp	r8, r0	@ chrom_width, j.863
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp332,
	strb	r4, [r2], #1	@ tmp332,
	add	lr, r2, #2097152	@ tmp429, tmp378,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp430,
	add	r3, ip, #2	@ ivtmp.810, tmp380,
	strb	r4, [lr, #0]	@ tmp430,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp431,
	strb	lr, [r1, #1]	@ tmp431,
	add	r1, r2, #1	@ ivtmp.813, tmp378,
	bhi	.L69	@,
.L70:
	add	r5, r5, #2	@ i.864, i.864,
	cmp	r9, r5	@ chrom_height, i.864
	bls	.L67	@,
	add	r6, r6, r7	@ tmp, tmp, D.36746
	b	.L68	@
.L146:
	ldr	r3, [sp, #20]	@, %sfp
	cmp	r3, #0	@,
	beq	.L51	@,
	ldr	r6, [sp, #28]	@ ivtmp.854, %sfp
	mov	r7, #0	@ i.856,
	ldr	r8, [sp, #40]	@ chrom_width, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	sl, [sp, #32]	@ YUV, %sfp
.L52:
	cmp	r8, #0	@ chrom_width,
	beq	.L54	@,
	ldrb	ip, [sl, #0]	@ zero_extendqisi2	@ tmp416,* YUV
	add	r3, r6, #2097152	@ tmp415, ivtmp.854,
	mov	r0, #1	@ j.855,
	cmp	r8, r0	@ chrom_width, j.855
	mov	r2, r6	@ ivtmp.775, ivtmp.854
	strb	ip, [r3, #0]	@ tmp416,
	add	r3, sl, #2	@ ivtmp.772, YUV,
	ldrb	r1, [sl, #1]	@ zero_extendqisi2	@ tmp417,
	strb	r1, [r2], #1	@ tmp417,
	bls	.L54	@,
	mov	ip, #1	@ tmp359,
	cmp	ip, #0	@ tmp359,
	beq	.L53	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp439,* ivtmp.772
	add	lr, r2, #2097152	@ tmp438, ivtmp.775,
	mov	r0, #2	@ j.855,
	cmp	r8, r0	@ chrom_width, j.855
	strb	r1, [lr, #0]	@ tmp439,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp440,
	add	r3, r3, r0	@ ivtmp.772, ivtmp.772,
	strb	r4, [r2], #1	@ tmp440,
	bls	.L54	@,
.L53:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp297,* ivtmp.772
	add	lr, r2, #2097152	@ tmp296, ivtmp.775,
	mov	r1, r2	@ tmp361, ivtmp.775
	add	ip, r3, #2	@ tmp360, ivtmp.772,
	add	r0, r0, #2	@ j.855, j.855,
	strb	r4, [lr, #0]	@ tmp297,
	cmp	r8, r0	@ chrom_width, j.855
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp299,
	strb	r4, [r1], #1	@ tmp299,
	add	lr, r1, #2097152	@ tmp409, tmp361,
	ldrb	r4, [r3, #2]	@ zero_extendqisi2	@ tmp410,
	add	r3, ip, #2	@ ivtmp.772, tmp360,
	strb	r4, [lr, #0]	@ tmp410,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ tmp411,
	strb	lr, [r2, #1]	@ tmp411,
	add	r2, r1, #1	@ ivtmp.775, tmp361,
	bhi	.L53	@,
.L54:
	add	r7, r7, #1	@ i.856, i.856,
	add	r6, r6, r8	@ ivtmp.854, ivtmp.854, chrom_width
	cmp	r9, r7	@ chrom_height, i.856
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
	movw	r1, #:lower16:outer_cache	@ tmp141,
	movt	r1, #:upper16:outer_cache	@ tmp141,
	ldr	r3, [r1, #24]	@ D.36448, outer_cache.sync
	cmp	r3, #0	@ D.36448,
	beq	.L153	@,
	blx	r3	@ D.36448
.L153:
	cmp	r4, #0	@ VdhId,
	ldmgtfd	sp!, {r4, pc}	@
	movw	r2, #1140	@ tmp144,
	movw	r3, #:lower16:g_HwMem	@ tmp142,
	mul	r4, r2, r4	@ tmp143, tmp144, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp142,
	mov	r2, #0	@ tmp146,
	mov	r0, #1	@ tmp151,
	ldr	ip, [r4, r3]	@ D.36134, <variable>.pVdmRegVirAddr
	str	r2, [ip, #0]	@ tmp146,* D.36134
	ldr	r1, [r4, r3]	@ temp.909, <variable>.pVdmRegVirAddr
	str	r0, [r1, #0]	@ tmp151,* temp.909
	ldr	ip, [r4, r3]	@ temp.911, <variable>.pVdmRegVirAddr
	str	r2, [ip, #0]	@ tmp146,* temp.911
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r6, #1140	@ tmp145,
	mul	r6, r6, r0	@ tmp144, tmp145, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp175,
	movt	r4, #:upper16:g_HwMem	@ tmp175,
	mov	r5, r0	@ VdhId, VdhId
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r7, [ip, #8]	@ dat,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r1, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	orr	r7, r7, #67108864	@ dat.936, dat,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp152,
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r0, #8]	@ dat.936,
#APP
@ 1608 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	movw	r3, #:lower16:outer_cache	@ tmp159,
	movt	r3, #:upper16:outer_cache	@ tmp159,
	ldr	r3, [r3, #24]	@ D.36449, outer_cache.sync
	cmp	r3, #0	@ D.36449,
	beq	.L157	@,
	blx	r3	@ D.36449
.L157:
	movw	ip, #1140	@ tmp162,
	mov	r3, #0	@ tmp164,
	mul	r5, ip, r5	@ tmp161, tmp162, VdhId
	mov	r0, #1	@ tmp169,
	ldr	r1, [r5, r4]	@ D.36121, <variable>.pVdmRegVirAddr
	str	r3, [r1, #0]	@ tmp164,* D.36121
	ldr	r2, [r5, r4]	@ temp.944, <variable>.pVdmRegVirAddr
	str	r0, [r2, #0]	@ tmp169,* temp.944
	ldr	lr, [r5, r4]	@ temp.946, <variable>.pVdmRegVirAddr
	str	r3, [lr, #0]	@ tmp164,* temp.946
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
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
	ble	.L164	@,
.L160:
	mvn	r0, #0	@ D.35938,
.L162:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L164:
	ldr	r2, [r1, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #0	@ tmp152,
	str	r0, [sp, #12]	@ tmp152, D32
	cmp	r2, r0	@ <variable>.pVdmRegVirAddr,
	beq	.L165	@,
.L161:
	movw	ip, #1140	@ tmp161,
	movw	r2, #:lower16:g_HwMem	@ tmp159,
	mul	r3, ip, r3	@ tmp160, tmp161, VdhId
	movt	r2, #:upper16:g_HwMem	@ tmp159,
	ldr	r0, [r1, #36]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	ip, #:lower16:536920579	@ tmp171,
	movt	ip, #:upper16:536920579	@ tmp171,
	movw	r1, #:lower16:3148803	@ tmp178,
	bic	r5, r0, #15	@ tmp158, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:3148803	@ tmp178,
	mov	r0, #0	@ D.35938,
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
	b	.L162	@
.L165:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	ldr	r3, [sp, #0]	@,
	cmp	r0, #0	@ D.35942
	beq	.L160	@,
	str	r0, [r1, #0]	@ D.35942, <variable>.pVdmRegVirAddr
	b	.L161	@
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
	bne	.L203	@,
.L167:
	mvn	r0, #0	@ D.35807,
.L186:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L203:
	ldr	r0, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	sub	r3, r0, #1	@ tmp222, <variable>.ValidGroupNum,
	cmp	r3, #127	@ tmp222,
	bhi	.L167	@,
	ldr	ip, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	sl, #0	@ tmp235,
	ldr	r2, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r1, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r3, ip, asl #4	@ tmp227, <variable>.ImageHeight,
	adds	r0, r3, #31	@ tmp229, tmp227,
	mov	lr, r2, asl #4	@ tmp224, <variable>.ImageWidth,
	addmi	ip, r3, #62	@, tmp231, tmp227,
	movpl	ip, r0	@, tmp231, tmp229
	add	r0, lr, #255	@ tmp226, tmp224,
	bic	r2, r0, #255	@ SlotWidth, tmp226,
	str	r1, [r7, #0]	@ <variable>.RefImageAddr,* pMsgBase
	mov	lr, ip, asr #5	@ tmp233, tmp231,
	ldr	r0, [r6, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	mov	r1, r2, asl #4	@ tmp251, SlotWidth,
	mul	r3, lr, r2	@ tmp234, tmp233, SlotWidth
	mov	lr, r3, asl #5	@ ChromaOffset, tmp234,
	add	ip, lr, r0	@ tmp241, ChromaOffset, <variable>.RefImageAddr
	str	ip, [r7, #4]	@ tmp241,
	ldr	r0, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	str	r0, [r7, #8]	@ <variable>.ImageAddr,
	ldr	r2, [r6, #4]	@ <variable>.ImageAddr, <variable>.ImageAddr
	add	ip, lr, r2	@ tmp248, ChromaOffset, <variable>.ImageAddr
	str	ip, [r7, #12]	@ tmp248,
	str	r1, [r7, #16]	@ tmp251,
	str	sl, [r7, #20]	@ tmp235,
	ldr	r3, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	r0, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	lr, r3, #1	@ tmp258, <variable>.ImageWidth,
	sub	r2, r0, #1	@ tmp262, <variable>.ImageHeight,
	mov	ip, lr, asl #23	@ tmp263, tmp258,
	mov	r1, ip, lsr #23	@ tmp263, tmp263,
	bfi	r1, r2, #16, #9	@ tmp263, tmp262,,
	str	r1, [sp, #4]	@ tmp263,
	str	r1, [r7, #24]	@ tmp263,
	ldr	r3, [r6, #568]	@ prephitmp.1027, <variable>.FullRepair
	cmp	r3, sl	@ prephitmp.1027,
	bne	.L169	@,
	ldr	ip, [r6, #552]	@ temp.1105, <variable>.ValidGroupNum
	cmp	ip, sl	@ temp.1105,
	movle	sl, r3	@ actual_repairTime, prephitmp.1027
	ble	.L171	@,
	mov	r8, r3	@ actual_repairTime.1106, i.1103
	mov	fp, r7	@ pMsgBase, pMsgBase
	b	.L173	@
.L204:
	add	r1, r6, r3, asl #2	@, tmp283, pRepairParam, i.1103,
	sxth	lr, r5	@ prephitmp.1029, prephitmp.1029
	adds	r4, lr, #7	@ tmp274, prephitmp.1029,
	ldrsh	r1, [r1, #38]	@ <variable>.EndMbn, <variable>.EndMbn
	addmi	r0, lr, #14	@, tmp276, prephitmp.1029,
	movpl	r0, r4	@, tmp276, tmp274
	bic	lr, r0, #7	@ tmp279, tmp276,
	adds	r4, r1, #7	@ tmp286, <variable>.EndMbn,
	addmi	r1, r1, #14	@, tmp288, <variable>.EndMbn,
	movpl	r1, r4	@, tmp288, tmp286
	bic	r1, r1, #7	@ tmp291, tmp288,
	cmp	lr, r1	@ tmp279, tmp291
	addle	r4, r3, #1	@ i.1104, i.1103,
	movle	sl, r8	@ actual_repairTime, actual_repairTime.1106
	bgt	.L174	@,
.L175:
	cmp	ip, r4	@ temp.1105, i.1104
	ble	.L201	@,
	add	r7, r4, #1	@ tmp264, i.1104,
	cmp	r7, #127	@ tmp264,
	bgt	.L201	@,
	mov	r3, r4	@ i.1103, i.1104
	mov	r8, sl	@ actual_repairTime.1106, actual_repairTime
.L173:
	add	r2, r3, #10	@ tmp410, i.1103,
	cmp	r3, #0	@ i.1103,
	mov	r5, r2, asl #2	@ tmp266, tmp410,
	add	r4, r5, r6	@ tmp267, tmp266, pRepairParam
	ldrh	r7, [r5, r6]	@ D.35858, <variable>.StartMbn
	ldrh	r5, [r4, #2]	@ prephitmp.1029, <variable>.EndMbn
	bne	.L204	@,
.L174:
	tst	r3, #1	@ i.1103,
	add	r2, r6, r2, asl #2	@, ivtmp.1054, pRepairParam, tmp410,
	movne	r9, r8	@ actual_repairTime.1106, actual_repairTime.1106
	bne	.L176	@,
	add	r4, r3, #1	@ i.1104, i.1103,
	cmp	r3, #0	@ i.1103,
	cmpgt	ip, r4	@, temp.1105, i.1104
	ble	.L197	@,
	cmp	r4, #127	@ i.1104,
	bgt	.L197	@,
	ldrsh	sl, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	sxth	lr, r5	@ prephitmp.1029, prephitmp.1029
	adds	r0, lr, #7	@ tmp431, prephitmp.1029,
	addmi	r5, lr, #14	@, tmp433, prephitmp.1029,
	movpl	r5, r0	@, tmp433, tmp431
	add	r1, sl, #7	@ tmp436, <variable>.StartMbn,
	cmp	sl, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp433,
	movlt	sl, r1	@ <variable>.StartMbn, tmp436
	bic	r3, sl, #7	@ D.37113, <variable>.StartMbn,
	cmp	r5, r3	@ end_Mb, D.37113
	bgt	.L190	@,
	add	r3, r3, #1	@ tmp441, D.37113,
	cmp	r5, r3	@ end_Mb, tmp441
	beq	.L190	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r1, r0, #7	@ tmp443, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp445, <variable>.EndMbn,
	movpl	lr, r1	@, tmp445, tmp443
	bic	sl, lr, #7	@ tmp447, tmp445,
	cmp	r5, sl	@ end_Mb, tmp447
	bgt	.L178	@,
.L190:
	ldrh	r5, [r2, #6]	@ prephitmp.1029, <variable>.EndMbn
	add	r2, r2, #4	@ ivtmp.1054, ivtmp.1054,
	mov	r3, r4	@ i.1103, i.1104
	mov	r9, r8	@ actual_repairTime.1106, actual_repairTime.1106
.L176:
	add	r4, r3, #1	@ i.1104, i.1103,
	sxth	r5, r5	@ prephitmp.1029, prephitmp.1029
	cmp	r3, #0	@ i.1103,
	cmpgt	ip, r4	@, temp.1105, i.1104
	add	r1, r2, #4	@ tmp416, ivtmp.1054,
	mov	r8, r4	@ i.1104, i.1104
	ble	.L202	@,
	cmp	r4, #127	@ i.1104,
	bgt	.L202	@,
	ldrsh	lr, [r2, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp326, prephitmp.1029,
	addmi	r5, r5, #14	@, tmp328, prephitmp.1029,
	movpl	r5, r3	@, tmp328, tmp326
	mov	r3, r4	@ i.1103, i.1104
	add	sl, lr, #7	@ tmp334, <variable>.StartMbn,
	cmp	lr, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp328,
	movlt	lr, sl	@ <variable>.StartMbn, tmp334
	bic	r0, lr, #7	@ D.37113, <variable>.StartMbn,
	cmp	r5, r0	@ end_Mb, D.37113
	add	sl, r0, #1	@ tmp337, D.37113,
	bgt	.L180	@,
	cmp	r5, sl	@ end_Mb, tmp337
	beq	.L180	@,
	ldrsh	r0, [r2, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	sl, r0, #7	@ tmp339, <variable>.EndMbn,
	addmi	lr, r0, #14	@, tmp341, <variable>.EndMbn,
	movpl	lr, sl	@, tmp341, tmp339
	bic	r0, lr, #7	@ tmp344, tmp341,
	cmp	r5, r0	@ end_Mb, tmp344
	bgt	.L199	@,
.L180:
	ldrh	sl, [r2, #6]	@ prephitmp.1029, <variable>.EndMbn
	add	r4, r4, #1	@ i.1104, i.1104,
	cmp	r8, #0	@ i.1104,
	cmpgt	ip, r4	@, temp.1105, i.1104
	add	r2, r1, #4	@ ivtmp.1054, tmp416,
	sxth	r5, sl	@ prephitmp.1029, prephitmp.1029
	ble	.L202	@,
	ldrsh	lr, [r1, #4]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r3, r5, #7	@ tmp449, prephitmp.1029,
	addmi	r5, r5, #14	@, tmp451, prephitmp.1029,
	movpl	r5, r3	@, tmp451, tmp449
	add	r3, r8, #1	@ i.1103, i.1104,
	cmp	lr, #0	@ <variable>.StartMbn,
	add	r8, lr, #7	@ tmp454, <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp451,
	movlt	lr, r8	@ <variable>.StartMbn, tmp454
	bic	sl, lr, #7	@ D.37113, <variable>.StartMbn,
	cmp	r5, sl	@ end_Mb, D.37113
	add	r8, sl, #1	@ tmp459, D.37113,
	bgt	.L194	@,
	cmp	r5, r8	@ end_Mb, tmp459
	beq	.L194	@,
	ldrsh	lr, [r1, #-2]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r8, lr, #7	@ tmp461, <variable>.EndMbn,
	addmi	sl, lr, #14	@, tmp463, <variable>.EndMbn,
	movpl	sl, r8	@, tmp463, tmp461
	bic	r0, sl, #7	@ tmp465, tmp463,
	cmp	r5, r0	@ end_Mb, tmp465
	bgt	.L199	@,
.L194:
	ldrh	r5, [r1, #6]	@ prephitmp.1029, <variable>.EndMbn
	b	.L176	@
.L199:
	mov	r8, r9	@ actual_repairTime.1106, actual_repairTime.1106
.L178:
	ldr	ip, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	sl, r8, #1	@ actual_repairTime, actual_repairTime.1106,
	ldr	r2, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r1, r2, ip	@ D.37103, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r1, r5	@ D.37103, end_Mb
	suble	r5, r1, #1	@ end_Mb, D.37103,
	cmp	sl, #252	@ actual_repairTime,
	bgt	.L205	@,
	sxth	lr, r7	@ D.35858, D.35858
	mov	r0, #0	@,
	add	r9, lr, #7	@ tmp351, D.35858,
	cmp	lr, r0	@ D.35858,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	movlt	lr, r9	@ D.35858, tmp351
	bic	r9, lr, #7	@ cur_StartMb, D.35858,
	str	r0, [sp, #4]	@, D32
	mov	r0, r9	@, cur_StartMb
	bl	__aeabi_idivmod	@
	ldr	r7, [sp, #4]	@ tmp361,
	mov	r0, r9	@, cur_StartMb
	bfi	r7, r1, #0, #9	@ tmp361,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	add	r1, r8, #4	@ tmp367, actual_repairTime.1106,
	mov	ip, #0	@,
	mov	r8, r8, asl #3	@ tmp382, actual_repairTime.1106,
	add	r8, r8, #36	@ tmp383, tmp382,
	bfi	r7, r0, #16, #9	@ tmp366,,,
	mov	r0, r5	@, end_Mb
	str	r7, [fp, r1, asl #3]	@ D32.1079,* pMsgBase
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	str	ip, [sp, #4]	@, D32
	bl	__aeabi_idivmod	@
	ldr	r7, [sp, #4]	@ tmp376,
	mov	r0, r5	@, end_Mb
	bfi	r7, r1, #0, #9	@ tmp376,,,
	ldr	r1, [r6, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	bfi	r7, r0, #16, #9	@ tmp381,,,
	str	r7, [sp, #4]	@ tmp381,
	str	r7, [fp, r8]	@ D32.1083,
	ldr	ip, [r6, #552]	@ temp.1105, <variable>.ValidGroupNum
	b	.L175	@
.L202:
	mov	r8, r9	@ actual_repairTime.1106, actual_repairTime.1106
.L197:
	add	r5, r6, r3, asl #2	@, tmp319, pRepairParam, i.1103,
	ldrsh	r2, [r5, #42]	@ pretmp.1075, <variable>.EndMbn
	adds	ip, r2, #7	@ pretmp.1035, pretmp.1075,
	addmi	r3, r2, #14	@, pretmp.1035, pretmp.1075,
	movpl	r3, ip	@, pretmp.1035, pretmp.1035
	bic	r5, r3, #7	@ end_Mb, pretmp.1035,
	b	.L178	@
.L201:
	ldr	r3, [r6, #568]	@ prephitmp.1027, <variable>.FullRepair
	mov	r7, fp	@ pMsgBase, pMsgBase
.L169:
	cmp	r3, #1	@ prephitmp.1027,
	beq	.L183	@,
.L171:
	sub	sl, sl, #1	@ tmp385, actual_repairTime,
	uxth	sl, sl	@ prephitmp.1025, tmp385
.L185:
	mov	r0, #0	@ tmp399,
	str	r0, [sp, #4]	@ tmp399, D32
	ldr	r2, [r6, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r3, [sp, #6]	@ zero_extendqisi2	@,
	ldr	lr, [r6, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r3, r2, #0, #1	@ tmp401, <variable>.Compress_en,,
	strh	sl, [sp, #4]	@ movhi	@ prephitmp.1025, <variable>.total_grp_num_minus1
	uxtb	r1, r3	@ tmp404, tmp401
	bfi	r1, lr, #4, #2	@ tmp404, <variable>.Pic_type,,
	bfi	r1, lr, #6, #2	@ tmp407, <variable>.Pic_type,,
	strb	r1, [sp, #6]	@ tmp407,
	ldr	ip, [sp, #4]	@ D32.1102, D32
	str	ip, [r7, #28]	@ D32.1102,
	b	.L186	@
.L205:
	mov	r7, fp	@ pMsgBase, pMsgBase
	mov	r3, #1	@ tmp347,
	str	r3, [r6, #568]	@ tmp347, <variable>.FullRepair
.L183:
	mov	sl, #0	@ tmp387,
	mov	r2, #1	@ tmp386,
	mov	r3, sl	@ tmp389, tmp387
	str	r2, [r6, #552]	@ tmp386, <variable>.ValidGroupNum
	bfi	r3, sl, #16, #9	@ tmp389, tmp387,,
	str	r3, [r7, #32]	@ tmp389,
	ldr	r0, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	ldr	lr, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	sub	r1, r0, #1	@ tmp393, <variable>.ImageWidth,
	sub	r2, lr, #1	@ tmp397, <variable>.ImageHeight,
	mov	ip, r1, asl #23	@ tmp398, tmp393,
	mov	r3, ip, lsr #23	@ tmp398, tmp398,
	bfi	r3, r2, #16, #9	@ tmp398, tmp397,,
	str	r3, [r7, #36]	@ tmp398,
	b	.L185	@
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
	subs	r4, r3, #0	@ VdhId, VdhId
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ VidStd, VidStd
	mov	r5, r2	@ RepairTime, RepairTime
	ble	.L212	@,
.L207:
	mvn	r0, #0	@ D.36091,
.L210:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L212:
	movw	sl, #1140	@ tmp145,
	movw	r7, #:lower16:g_HwMem	@ tmp146,
	mul	sl, sl, r4	@ tmp144, tmp145, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp146,
	add	r6, r7, sl	@ pHwMem, tmp146, tmp144
	ldr	r3, [r7, sl]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L213	@,
.L208:
	cmp	r5, #0	@ RepairTime,
	bne	.L209	@,
	movw	r2, #:lower16:g_RepairParam	@ tmp151,
	movt	r2, #:upper16:g_RepairParam	@ tmp151,
	movw	r7, #1144	@ tmp150,
	mla	r7, r7, r4, r2	@ pRepairParam, tmp150, VdhId, tmp151
	ldr	r0, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r0, #0	@ <variable>.ValidGroupNum,
	ble	.L207	@,
	mov	r2, r1	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r1, r6	@, pHwMem
	mov	r0, r8	@, VidStd
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r0, r7	@, pRepairParam
	mov	r1, r6	@, pHwMem
	mov	r2, r4	@, VdhId
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, r5	@ D.36091, RepairTime
	b	.L210	@
.L209:
	cmp	r5, #1	@ RepairTime,
	movne	r0, #0	@ D.36091,
	bne	.L210	@,
	b	.L207	@
.L213:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	str	r1, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ D.36095
	beq	.L207	@,
	str	r0, [r7, sl]	@ D.36095, <variable>.pVdmRegVirAddr
	b	.L208	@
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
	ble	.L227	@,
.L215:
	mvn	r0, #0	@ D.35602,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L227:
	movw	r4, #1140	@ tmp219,
	movw	r6, #:lower16:g_HwMem	@ tmp351,
	mul	r4, r4, r5	@ tmp218, tmp219, VdhId
	movt	r6, #:upper16:g_HwMem	@ tmp351,
	movw	r3, #:lower16:g_DSPState	@ tmp216,
	movt	r3, #:upper16:g_DSPState	@ tmp216,
	ldr	r7, [r3, #0]	@ D.35604, g_DSPState
	ldr	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L228	@,
.L216:
	mov	r2, #180	@ tmp229,
	ldr	r0, [r3, #12]	@ D.35618,
	mul	r1, r2, r5	@ tmp228, tmp229, VdhId
	movw	r4, #:lower16:g_BackUp	@ tmp352,
	movt	r4, #:upper16:g_BackUp	@ tmp352,
	cmp	r7, #1	@ D.35604,
	movne	r7, #0	@, D.37281
	moveq	r7, #1	@, D.37281
	cmp	r7, #1	@ D.37281,
	add	r2, r1, r4	@ tmp230, tmp228, tmp352
	str	r0, [r1, r4]	@ D.35618, <variable>.BasicCfg1
	ldr	r8, [r3, #28]	@ D.35622,
	str	r8, [r2, #4]	@ D.35622, <variable>.VdmState
	beq	.L229	@,
	add	r8, r3, #4096	@ D.35649, D.35615,
	ldr	r1, [r8, #0]	@ D.35650,* D.35649
	str	r1, [r2, #16]	@ D.35650, <variable>.SedSta
	ldr	ip, [r8, #20]	@ D.35654,
	str	ip, [r2, #20]	@ D.35654, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ temp.1180,
	str	r0, [r2, #8]	@ temp.1180, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ temp.1184,
	str	r6, [r2, #12]	@ temp.1184, <variable>.SwitchRounding
	ldr	r1, [r3, #176]	@ D.35668,
	str	r1, [r2, #24]	@ D.35668, <variable>.DecCyclePerPic
	ldr	r8, [r3, #180]	@ D.35672,
	str	r8, [r2, #28]	@ D.35672, <variable>.RdBdwidthPerPic
	ldr	ip, [r3, #184]	@ D.35676,
	str	ip, [r2, #32]	@ D.35676, <variable>.WrBdWidthPerPic
	ldr	r0, [r3, #188]	@ D.35680,
	str	r0, [r2, #36]	@ D.35680, <variable>.RdReqPerPic
	ldr	r6, [r3, #192]	@ D.35684,
	str	r6, [r2, #40]	@ D.35684, <variable>.WrReqPerPic
.L220:
	add	r8, r3, #33024	@ tmp350, D.35615,
	mov	r3, #180	@ tmp332,
	add	r6, r8, #128	@ D.37322, tmp350,
	mla	r1, r3, r5, r4	@ ivtmp.1179, tmp332, VdhId, tmp352
	mov	r3, r8	@ ivtmp.1175, tmp350
.L221:
	mov	r2, r3	@ tmp353, ivtmp.1175
	add	r0, r1, #4	@ tmp354, ivtmp.1179,
	ldr	ip, [r2], #4	@ D.35690,
	str	ip, [r1, #52]	@ D.35690, <variable>.LumaHistorgam
	add	r1, r0, #4	@ ivtmp.1179, tmp354,
	ldr	ip, [r3, #4]	@ D.35690,
	add	r3, r2, #4	@ ivtmp.1175, tmp353,
	cmp	r3, r6	@ ivtmp.1175, D.37322
	str	ip, [r0, #52]	@ D.35690, <variable>.LumaHistorgam
	bne	.L221	@,
	cmp	r7, #0	@ D.37281,
	moveq	r2, #180	@ tmp339,
	ldreq	r3, [r8, #128]	@ D.35696,
	mlaeq	r4, r2, r5, r4	@ tmp340, tmp339, VdhId, tmp352
	movne	r0, #0	@ D.35602,
	moveq	r0, r7	@ D.35602, D.37281
	streq	r3, [r4, #48]	@ D.35696, <variable>.LumaSumLow
	ldreq	r3, [r8, #132]	@ D.35700,
	streq	r3, [r4, #44]	@ D.35700, <variable>.LumaSumHigh
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L229:
	movw	lr, #1140	@ tmp238,
	mla	ip, lr, r5, r6	@ tmp239, tmp238, VdhId, tmp351
	ldr	r0, [ip, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L215	@,
	bic	r1, r8, #-16777216	@ DecSliceNum, D.35622,
	mov	r2, #180	@ tmp249,
	bic	r8, r1, #16646144	@ DecSliceNum, DecSliceNum,
	movw	ip, #1140	@ tmp262,
	sub	r3, r8, #1	@ tmp242, DecSliceNum,
	cmp	r3, #127	@ tmp242,
	subls	r1, r8, #-1073741823	@ tmp243, DecSliceNum,
	movls	r3, r8, asl #4	@ tmp245, DecSliceNum,
	mul	ip, ip, r5	@ tmp261, tmp262, VdhId
	movls	r1, r1, asl #4	@ prephitmp.1156, tmp243,
	mla	r8, r2, r5, r4	@ tmp250, tmp249, VdhId, tmp352
	movhi	r1, #0	@ prephitmp.1156,
	ldr	lr, [r0, r1]	@ tmp252,* prephitmp.1156
	subls	r3, r3, #8	@ prephitmp.1158, tmp245,
	movhi	r3, #8	@ prephitmp.1158,
	str	lr, [r8, #16]	@ tmp252, <variable>.SedSta
	ldr	r1, [r0, r3]	@ tmp259,* prephitmp.1158
	ldr	r3, [ip, r6]	@ D.35615, <variable>.pVdmRegVirAddr
	str	r1, [r8, #20]	@ tmp259, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ D.35658,
	str	r0, [r8, #8]	@ D.35658, <variable>.Mb0QpInCurrPic
	ldr	r6, [r3, #212]	@ D.35662,
	str	r6, [r8, #12]	@ D.35662, <variable>.SwitchRounding
	b	.L220	@
.L228:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L215	@,
	str	r3, [r4, r6]	@ p32, <variable>.pVdmRegVirAddr
	b	.L216	@
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
	movw	r7, #1140	@ tmp143,
	movw	r4, #:lower16:g_HwMem	@ tmp158,
	mul	r7, r7, r5	@ tmp142, tmp143, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp158,
	ldr	r3, [r7, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L242	@,
.L233:
	sub	r6, r6, #1	@ tmp151, reg_id,
	cmp	r6, #3	@ tmp151,
	ldrls	pc, [pc, r6, asl #2]	@ tmp151
	b	.L234	@
.L239:
	.word	.L235
	.word	.L236
	.word	.L237
	.word	.L238
.L234:
	mov	r0, #0	@ dat,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L238:
	mov	r2, #40	@ reg_type,
.L240:
	movw	r0, #1140	@ tmp154,
	mul	r5, r0, r5	@ tmp153, tmp154, VdhId
	ldr	r1, [r5, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L237:
	mov	r2, #36	@ reg_type,
	b	.L240	@
.L236:
	mov	r2, #32	@ reg_type,
	b	.L240	@
.L235:
	mov	r2, #28	@ reg_type,
	b	.L240	@
.L242:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.35525
	beq	.L234	@,
	str	r0, [r7, r4]	@ D.35525, <variable>.pVdmRegVirAddr
	b	.L233	@
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
	movw	r5, #1140	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L247	@,
.L245:
	mvn	r3, #1	@ tmp146,
	str	r3, [r0, #36]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L247:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L245	@
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
	movw	r5, #1140	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L252	@,
.L250:
	mvn	r3, #0	@ tmp146,
	str	r3, [r0, #36]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L252:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L250	@
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
	movw	r5, #1140	@ tmp139,
	movw	r4, #:lower16:g_HwMem	@ tmp137,
	mul	r5, r5, r0	@ tmp138, tmp139, VdhId
	movt	r4, #:upper16:g_HwMem	@ tmp137,
	ldr	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L257	@,
.L255:
	mvn	r3, #0	@ tmp146,
	str	r3, [r0, #32]	@ tmp146,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L257:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	str	r0, [r5, r4]	@ p32, <variable>.pVdmRegVirAddr
	b	.L255	@
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
	beq	.L262	@,
	movw	r2, #:lower16:g_pstRegCrg	@ tmp143,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp143,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp152,
	ldr	r1, [r2, #0]	@ g_pstRegCrg.445, g_pstRegCrg
	ldr	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	ip, ip, #16	@ u32TmpValue, u32TmpValue,
	str	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r2, #0]	@ pretmp.1303, g_pstRegCrg
	b	.L261	@
.L266:
	ldr	r2, [r1, #372]	@ D.35444, <variable>.PERI_CRG93.u32
	tst	r2, #1	@ D.35444,
	str	r2, [sp, #4]	@ D.35444, u32TmpValue_93.u32
	bne	.L260	@,
	cmp	r3, r0	@ i, tmp152
	beq	.L260	@,
.L261:
	ldr	lr, [r1, #372]	@ D.35444, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp153, i,
	add	r3, r3, #1	@ i, tmp153,
	tst	lr, #1	@ D.35444,
	str	lr, [sp, #4]	@ D.35444, u32TmpValue_93.u32
	beq	.L266	@,
.L260:
	bfc	ip, #4, #1	@ u32TmpValue,,
	str	ip, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
.L262:
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
	ble	.L275	@,
.L271:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L275:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L271	@,
	movw	r0, #1140	@ tmp149,
	movw	ip, #:lower16:g_HwMem	@ tmp166,
	mul	r6, r0, r4	@ tmp148, tmp149, VdhId
	movt	ip, #:upper16:g_HwMem	@ tmp166,
	movw	r2, #:lower16:g_pstRegCrg	@ tmp152,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp152,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp167,
	ldr	r1, [r2, #0]	@ g_pstRegCrg.444, g_pstRegCrg
	ldr	lr, [r6, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r6, [lr, #36]	@ tmp,
	ldr	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #64	@ u32TmpValue, u32TmpValue,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r2, #0]	@ pretmp.1335, g_pstRegCrg
	b	.L270	@
.L276:
	ldr	lr, [r1, #372]	@ D.35422, <variable>.PERI_CRG93.u32
	tst	lr, #4	@ D.35422,
	str	lr, [sp, #4]	@ D.35422, u32TmpValue_93.u32
	bne	.L269	@,
	cmp	r3, r0	@ i, tmp167
	beq	.L269	@,
.L270:
	ldr	r2, [r1, #372]	@ D.35422, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp168, i,
	add	r3, r3, #1	@ i, tmp168,
	tst	r2, #4	@ D.35422,
	str	r2, [sp, #4]	@ D.35422, u32TmpValue_93.u32
	beq	.L276	@,
.L269:
	movw	r0, #1140	@ tmp163,
	bfc	r5, #6, #1	@ u32TmpValue,,
	mul	r4, r0, r4	@ tmp162, tmp163, VdhId
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, ip]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r6, [r1, #36]	@ tmp,
	b	.L271	@
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
	ldr	r3, [r3, #40]	@ D.35230, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35230,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35230
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
	bne	.L305	@,
.L281:
	mvn	r0, #0	@ D.36002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L305:
	movw	r1, #1140	@ tmp155,
	movw	r0, #:lower16:g_HwMem	@ tmp156,
	mul	r2, r1, r2	@ tmp154, tmp155, VdhId
	movt	r0, #:upper16:g_HwMem	@ tmp156,
	add	r7, r0, r2	@ pHwMem, tmp156, tmp154
	ldr	r3, [r0, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L281	@,
	movw	lr, #:lower16:g_DSPState	@ tmp158,
	movt	lr, #:upper16:g_DSPState	@ tmp158,
	mov	r0, r4	@, pDecReport
	mov	r1, #528	@,
	ldr	r8, [lr, #0]	@ D.36007, g_DSPState
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp236,
	movt	r3, #:upper16:g_BackUp	@ tmp236,
	mov	ip, #180	@ tmp163,
	ldr	r1, [r7, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	r2, ip, r6, r3	@ tmp164, tmp163, VdhId, tmp236
	str	r1, [r4, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r0, [r2, #4]	@ D.36021, <variable>.VdmState
	mov	r2, r0, lsr #17	@ tmp166, D.36021,
	and	ip, r2, #3	@ tmp167, tmp166,
	cmp	ip, #1	@ tmp167,
	moveq	r2, #0	@ prephitmp.1398,
	beq	.L283	@,
	eor	r0, r2, #1	@ tmp171, tmp166,
	and	r2, r0, #1	@ tmp173, tmp171,
	cmp	r5, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1398, tmp173
.L283:
	mov	ip, #180	@ tmp179,
	str	r2, [r4, #0]	@ prephitmp.1398, <variable>.RetType
	mla	r3, ip, r6, r3	@ tmp180, tmp179, VdhId, tmp236
	cmp	r5, #0	@ VidStd,
	cmpne	r5, #15	@, VidStd,
	ldr	r1, [r3, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r2, r1, #-16777216	@ D.36031, <variable>.VdmState,
	bic	r2, r2, #16646144	@ D.36031, D.36031,
	str	r2, [r4, #8]	@ D.36031, <variable>.DecSliceNum
	bne	.L284	@,
	cmp	r8, #1	@ D.36007,
	beq	.L306	@,
	movw	r0, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp205,
	movt	r0, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp205,
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L284	@,
	ldrb	ip, [r3, #19]	@ zero_extendqisi2	@ tmp213, <variable>.SedSta
	and	r3, ip, #3	@ tmp215, tmp213,
	cmp	r3, #2	@ tmp215,
	bne	.L284	@,
	mov	r2, #1	@ tmp216,
	strh	r1, [r4, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.36002, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r4, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r2, [r4, #8]	@ tmp216, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L306:
	ldr	r3, [r3, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r3, r3, #21, #2	@ tmp199, <variable>.SedSta,,
	cmp	r3, #2	@ tmp199,
	bne	.L284	@,
	mov	lr, #0	@ movhi	@,
	str	r8, [r4, #8]	@ D.36007, <variable>.DecSliceNum
	strh	lr, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.36002,
	strh	lr, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L284:
	cmp	r2, #128	@ D.36031,
	movhi	r3, #0	@ tmp221,
	strhi	r3, [r4, #8]	@ tmp221, <variable>.DecSliceNum
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.36057,
	beq	.L281	@,
	ldr	r3, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	movw	r5, #:lower16:g_UpMsg	@ tmp225,
	movt	r5, #:upper16:g_UpMsg	@ tmp225,
	add	r5, r5, r6, asl #11	@, tmp224, tmp225, VdhId,
	mov	r2, r3, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp224
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r4, #8]	@ temp.1426, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1426,
	beq	.L288	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1426
	sub	lr, ip, #1	@ tmp242, temp.1426,
	add	r3, r4, #4	@ ivtmp.1419, pDecReport,
	strh	r2, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	and	r2, lr, r0	@ tmp244, tmp242,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1416, tmp224,
	strh	r1, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L288	@,
	cmp	r2, #0	@ tmp244,
	beq	.L289	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1426
	strh	r2, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1416, ivtmp.1416,
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1419, ivtmp.1419,
	bcs	.L288	@,
.L289:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r1, r5, #16	@ tmp246, ivtmp.1416,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1426
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp247, ivtmp.1419,
	ldrh	r2, [r5, #8]	@, g_UpMsg
	strh	r2, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	ldrh	r5, [r1, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r1, #16	@ ivtmp.1416, tmp246,
	ldrh	r3, [r1, #8]	@, g_UpMsg
	strh	r3, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1419, tmp247,
	bcc	.L289	@,
.L288:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@,
	beq	.L290	@,
	ldr	r0, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	r3, r0, asl #2	@ tmp232, <variable>.DecSliceNum,
	subs	r2, r3, #3	@ D.36074, tmp232,
	beq	.L290	@,
	cmp	r2, #4	@ D.36074,
	sub	ip, r3, #4	@ tmp239, tmp232,
	ubfx	r1, ip, #2, #1	@ tmp240, tmp239,,
	mov	r3, #4	@ i_cnt,
	bls	.L290	@,
	cmp	r1, #0	@ tmp240,
	beq	.L291	@,
	mov	r3, #8	@ i_cnt,
	cmp	r2, r3	@ D.36074, i_cnt
	bls	.L290	@,
.L291:
	add	r3, r3, #8	@ i_cnt, i_cnt,
	cmp	r2, r3	@ D.36074, i_cnt
	bhi	.L291	@,
.L290:
	mov	r0, #0	@ D.36002,
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
	bne	.L312	@,
.L308:
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L312:
	cmp	r2, #0	@ VdhId,
	bgt	.L308	@,
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
	bne	.L313	@,
	mov	r0, r5	@, pDecParam
	mov	r1, r2	@, VdhId
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, lr}
	b	H264HAL_V200R004_StartDec	@
.L313:
	cmp	r4, #3	@ VidStd,
	bne	.L308	@,
	mov	r0, r5	@, pDecParam
	mov	r1, r2	@, VdhId
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, lr}
	b	MP2HAL_V200R004_StartDec	@
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
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
	ldr	r9, [sp, #68]	@ FrameNum, FrameNum
	ldr	r7, [sp, #76]	@ ChanID, ChanID
	ldr	r6, [sp, #80]	@ pVdmMemArrange, pVdmMemArrange
	bne	.L332	@,
.L315:
	mvn	r0, #0	@ D.35299,
.L330:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L332:
	cmp	r3, #31	@ Height,
	movgt	r0, #0	@, tmp175
	movle	r0, #1	@, tmp175
	sub	ip, r2, #32	@ tmp170, Width,
	movw	r1, #8160	@ tmp172,
	cmp	ip, r1	@ tmp170, tmp172
	movls	r1, r0	@, tmp178, tmp175
	orrhi	r1, r0, #1	@,, tmp178, tmp175
	cmp	r1, #0	@ tmp178,
	bne	.L315	@,
	cmp	r3, #8192	@ Height,
	bgt	.L315	@,
	cmp	r6, #0	@ pVdmMemArrange,
	beq	.L315	@,
	mov	r0, r6	@, pVdmMemArrange
	add	r1, r1, #416	@,,
	ldr	r8, [sp, #64]	@ PmvNum, PmvNum
	str	r2, [sp, #16]	@,
	str	r3, [sp, #12]	@,
	bl	__memzero	@
	ldr	r1, [sp, #16]	@,
	movw	r0, #:lower16:g_not_direct_8x8_inference_flag	@ tmp188,
	ldr	ip, [sp, #12]	@,
	movt	r0, #:upper16:g_not_direct_8x8_inference_flag	@ tmp188,
	add	r2, r1, #15	@ tmp179, Width,
	cmp	r8, #20	@ PmvNum,
	movge	r8, #20	@ PmvNum.1506,
	add	r3, ip, #15	@ tmp180, Height,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mov	r2, r2, asr #4	@ ImgWidthInMb, tmp179,
	mov	r3, r3, asr #4	@ ImgHeightInMb, tmp180,
	cmp	r3, #36	@ ImgHeightInMb,
	cmple	r2, #45	@, ImgWidthInMb,
	mul	r1, r2, r3	@ tmp190, ImgWidthInMb, ImgHeightInMb
	movle	sl, #64	@, ColMbSize,
	movgt	sl, #32	@, ColMbSize,
	cmp	ip, #1	@ g_not_direct_8x8_inference_flag,
	movne	ip, sl	@ ColMbSize, ColMbSize
	moveq	ip, #64	@ ColMbSize,
	mul	r0, ip, r1	@ tmp191, ColMbSize, tmp190
	add	sl, r0, #127	@ tmp192, tmp191,
	bic	sl, sl, #127	@ PmvSlotLen, tmp192,
	mul	r1, r8, sl	@ tmp193, PmvNum.1506, PmvSlotLen
	cmp	r1, r5	@ tmp193, MemSize
	bge	.L315	@,
	mov	ip, r2, asl #4	@ tmp197, ImgWidthInMb,
	ldr	r0, [sp, #72]	@, UserDec
	add	fp, ip, #255	@ tmp198, tmp197,
	mov	r3, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	bic	fp, fp, #255	@ SlotWidth, tmp198,
	cmp	r0, #1	@,
	str	r8, [r6, #404]	@ PmvNum.1506, <variable>.ValidPMVNum
	addne	r8, r3, #31	@ tmp204, ImgHeightInPixAln,
	mov	lr, fp, asl #4	@ tmp199, SlotWidth,
	str	lr, [r6, #0]	@ tmp199, <variable>.VahbStride
	movne	lr, #96	@ tmp203,
	movne	r8, r8, asr #5	@ tmp205, tmp204,
	mulne	lr, lr, fp	@ tmp202, tmp203, SlotWidth
	moveq	r8, #3	@ tmp201,
	muleq	r8, r8, r3	@ tmp200, tmp201, ImgHeightInPixAln
	mov	r2, sl, asr #1	@ tmp196, PmvSlotLen,
	str	r2, [r6, #400]	@ tmp196, <variable>.HafPmvOffset
	mulne	r8, r8, lr	@ tmp206, tmp205, tmp202
	muleq	r8, fp, r8	@ ImgSlotLen, SlotWidth, tmp200
	movne	r8, r8, asr #1	@ ImgSlotLen, tmp206,
	cmp	r7, #0	@ ChanID,
	blt	.L321	@,
	mov	r0, r7	@, ChanID
	str	r3, [sp, #12]	@,
	bl	VCTRL_GetChanWidth	@
	mov	r3, r0	@ ChanWidth,
	mov	r0, r7	@, ChanID
	str	r3, [sp, #16]	@,
	bl	VCTRL_GetChanHeight	@
	ldr	r2, [sp, #16]	@,
	ldr	r3, [sp, #12]	@,
	cmn	r0, #1	@ ChanHeight,
	cmnne	r2, #1	@, ChanWidth,
	beq	.L315	@,
	ldr	r1, [sp, #72]	@, UserDec
	add	r2, r2, #15	@ tmp219, ChanWidth,
	add	lr, r0, #15	@ tmp217, ChanHeight,
	bic	ip, r2, #15	@ tmp221, tmp219,
	cmp	r1, #1	@,
	bic	r2, lr, #15	@ ChanImgHeightInPixAln, tmp217,
	add	r1, ip, #255	@ tmp222, tmp221,
	moveq	r0, #3	@ tmp224,
	bic	r1, r1, #255	@ ChanSlotWidth, tmp222,
	muleq	r2, r0, r2	@ tmp223, tmp224, ChanImgHeightInPixAln
	muleq	r2, r1, r2	@ ChanSlotLen, ChanSlotWidth, tmp223
	beq	.L323	@,
	adds	r0, r2, #31	@ tmp225, ChanImgHeightInPixAln,
	mov	ip, #96	@ tmp232,
	addmi	lr, r2, #62	@, tmp227, ChanImgHeightInPixAln,
	movpl	lr, r0	@, tmp227, tmp225
	mov	r2, lr, asr #5	@ tmp229, tmp227,
	mul	r1, r2, r1	@ tmp230, tmp229, ChanSlotWidth
	mul	lr, ip, r1	@ tmp231, tmp232, tmp230
	mov	r2, lr, asr #1	@ ChanSlotLen, tmp231,
.L323:
	cmp	r8, r2	@ ImgSlotLen, ChanSlotLen
	bgt	.L315	@,
.L321:
	add	r1, r3, #31	@ tmp237, ImgHeightInPixAln,
	mov	fp, fp, asl #5	@ tmp236, SlotWidth,
	cmp	r9, #0	@ FrameNum,
	streq	r9, [r6, #276]	@ FrameNum, <variable>.ValidFrameNum
	mov	ip, r1, asr #5	@ tmp238, tmp237,
	mvneq	r0, #0	@ D.35299,
	mul	r3, ip, fp	@ tmp239, tmp238, tmp236
	str	r3, [r6, #264]	@ tmp239, <variable>.ChromOffset
	beq	.L330	@,
	add	fp, r4, #1020	@ tmp240, MemAddr,
	mov	r1, r8	@, ImgSlotLen
	add	r2, fp, #3	@ tmp240, tmp240,
	cmp	r9, #64	@ FrameNum,
	movlt	fp, r9	@ prephitmp.1510, FrameNum
	movge	fp, #64	@ prephitmp.1510,
	bic	r0, r2, #1020	@ tmp242, tmp240,
	bic	r9, r0, #3	@ tmp242, tmp242,
	rsb	r9, r4, r9	@ Offset, MemAddr, tmp242
	rsb	r0, r9, r5	@, Offset, MemSize
	bl	__aeabi_idiv	@
	cmp	fp, r0	@ prephitmp.1510,
	movlt	r0, fp	@ prephitmp.1510, prephitmp.1510
	movge	r0, r0	@ prephitmp.1510,
	str	r0, [r6, #276]	@ prephitmp.1510, <variable>.ValidFrameNum
	cmp	r0, #0	@ prephitmp.1510,
	addne	r4, r9, r4	@ ivtmp.1496, Offset, MemAddr
	movne	r3, #1	@ ivtmp.1494,
	bne	.L325	@,
	b	.L315	@
.L326:
	ldr	r0, [r6, #276]	@ prephitmp.1510, <variable>.ValidFrameNum
	str	r2, [r6, r3, asl #2]	@ tmp250, <variable>.FrameAddr
.L325:
	sub	lr, r3, #1	@ i.1513, ivtmp.1494,
	add	r4, r4, r8	@ ivtmp.1496, ivtmp.1496, ImgSlotLen
	cmp	r0, lr	@ prephitmp.1510, i.1513
	add	r3, r3, #1	@ ivtmp.1494, ivtmp.1494,
	rsb	r2, r8, r4	@ tmp250, ImgSlotLen, ivtmp.1496
	bgt	.L326	@,
	cmp	r7, #0	@ ChanID,
	blt	.L327	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp267,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp267,
	ldr	r1, [r2, r7, asl #2]	@ D.35387, s_pstVfmwChan
	cmp	r1, #0	@ D.35387,
	bne	.L333	@,
.L327:
	mla	r9, r8, r0, r9	@ tmp262, ImgSlotLen, prephitmp.1510, Offset
	mov	r1, #1024	@ tmp263,
	str	r8, [r6, #408]	@ ImgSlotLen, <variable>.ImgSlotLen
	mov	r0, #0	@ D.35299,
	str	r1, [r6, #412]	@ tmp263, <variable>.u32StrideByte
	str	r9, [r6, #4]	@ tmp262, <variable>.TotalMemUsed
	b	.L330	@
.L333:
	ldr	fp, [r6, #404]	@ prephitmp.1469, <variable>.ValidPMVNum
	movw	lr, #:lower16:217504	@ tmp253,
	movt	lr, #:upper16:217504	@ tmp253,
	mul	ip, fp, sl	@ tmp252, prephitmp.1469, PmvSlotLen
	ldr	r3, [r1, lr]	@ <variable>.stChanMem_pmv.Length, <variable>.stChanMem_pmv.Length
	cmp	ip, r3	@ tmp252, <variable>.stChanMem_pmv.Length
	bgt	.L315	@,
	mov	r3, #0	@ ivtmp.1484,
	movw	r4, #:lower16:217500	@ tmp268,
	movt	r4, #:upper16:217500	@ tmp268,
	mov	ip, r6	@ ivtmp.1490, pVdmMemArrange
	mov	r1, r3	@ i, ivtmp.1484
	str	r0, [sp, #4]	@ prephitmp.1510, %sfp
.L328:
	cmp	r1, fp	@ i, prephitmp.1469
	add	r3, r3, sl	@ ivtmp.1484, ivtmp.1484, PmvSlotLen
	rsb	r0, sl, r3	@, PmvSlotLen, ivtmp.1484
	add	r1, r1, #1	@ i, i,
	add	ip, ip, #4	@ ivtmp.1490, ivtmp.1490,
	str	r0, [sp, #20]	@, %sfp
	bge	.L334	@,
	ldr	lr, [r2, r7, asl #2]	@ tmp256, s_pstVfmwChan
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r5, [lr, r4]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	r5, r5, r0	@ tmp260, <variable>.stChanMem_pmv.PhyAddr,
	str	r5, [ip, #276]	@ tmp260, <variable>.PMVAddr
	b	.L328	@
.L334:
	ldr	r0, [sp, #4]	@ prephitmp.1510, %sfp
	b	.L327	@
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
	movw	r3, #:lower16:481279	@ tmp159,
	movt	r3, #:upper16:481279	@ tmp159,
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
	bgt	.L344	@,
.L336:
	mvn	r0, #0	@ Ret,
.L339:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L344:
	cmp	r2, #0	@ VdhId,
	bgt	.L336	@,
	movw	r1, #1140	@ tmp167,
	movw	r7, #:lower16:g_HwMem	@ tmp295,
	mul	r8, r1, r2	@ tmp166, tmp167, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp295,
	str	r2, [sp, #4]	@,
	add	sl, r4, #1020	@ tmp182, MemBaseAddr,
	str	r3, [sp, #0]	@,
	add	r9, r5, r4	@ tmp197, Size, MemBaseAddr
	add	r6, r7, r8	@ __p, tmp295, tmp166
	mov	r0, r6	@, __p
	bl	__memzero	@
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r7, r8]	@, <variable>.pVdmRegVirAddr
	movw	r0, #:lower16:269746176	@,
	movt	r0, #:upper16:269746176	@,
	mov	r8, #1024	@ tmp205,
	bl	MEM_Phy2Vir	@
	add	r1, sl, #3	@ tmp182, tmp182,
	bic	ip, r1, #1020	@ D.35206, tmp182,
	ldr	r3, [sp, #0]	@,
	bic	ip, ip, #3	@ D.35206, D.35206,
	str	r8, [r6, #24]	@ tmp205, <variable>.VahbStride
	rsb	r2, ip, r9	@ tmp198, D.35206, tmp197
	str	ip, [r6, #16]	@ D.35206, <variable>.HALMemBaseAddr
	str	r2, [r6, #20]	@ tmp198, <variable>.HALMemSize
	mov	r1, r6	@ ivtmp.1548, __p
	str	r0, [r6, #8]	@, <variable>.pBpdRegVirAddr
	ldr	r2, [sp, #4]	@,
.L337:
	add	lr, r3, #1024	@ tmp296, ivtmp.1545,
	add	r9, r3, ip	@ tmp215, ivtmp.1545, D.35206
	add	r3, r3, #3072	@ ivtmp.1545, ivtmp.1545,
	add	r0, r1, #4	@ tmp297, ivtmp.1548,
	cmp	r3, #144384	@ ivtmp.1545,
	add	sl, lr, #1024	@ ivtmp.1545, tmp296,
	str	r9, [r1, #28]	@ tmp215, <variable>.MsgSlotAddr
	add	sl, sl, ip	@ tmp303, ivtmp.1545, D.35206
	add	r8, lr, ip	@ tmp300, tmp296, D.35206
	str	sl, [r0, #32]	@ tmp303, <variable>.MsgSlotAddr
	add	r1, r1, #12	@ ivtmp.1548, ivtmp.1548,
	str	r8, [r0, #28]	@ tmp300, <variable>.MsgSlotAddr
	bne	.L337	@,
	movw	r3, #1140	@ tmp219,
	add	ip, ip, #144384	@ PhyAddr.1549, D.35206,
	mla	r2, r3, r2, r7	@ tmp220, tmp219, VdhId, tmp295
	add	r1, ip, #299008	@ PhyAddr.1555, PhyAddr.1549,
	add	r3, r1, #3072	@ PhyAddr.1556, PhyAddr.1555,
	rsb	r0, r4, #32768	@ tmp292, MemBaseAddr,
	add	r7, r0, r3	@ tmp293, tmp292, PhyAddr.1556
	add	r4, ip, #196608	@ PhyAddr.1554, PhyAddr.1549,
	cmp	r5, r7	@ Size, tmp293
	add	r0, ip, #83968	@ PhyAddr.1552, PhyAddr.1549,
	mov	r5, #141	@ tmp222,
	add	lr, ip, #5120	@ PhyAddr.1550, PhyAddr.1549,
	add	r7, ip, #38912	@ PhyAddr.1551, PhyAddr.1549,
	str	r5, [r2, #1052]	@ tmp222, <variable>.ValidMsgSlotNum
	str	r4, [r2, #1100]	@ PhyAddr.1554, <variable>.PpfdBufAddr
	add	r5, ip, #129024	@ PhyAddr.1553, PhyAddr.1549,
	movw	r4, #799	@ tmp273,
	str	lr, [r2, #1080]	@ PhyAddr.1550, <variable>.SedTopAddr
	str	r7, [r2, #1084]	@ PhyAddr.1551, <variable>.PmvTopAddr
	str	r0, [r2, #1092]	@ PhyAddr.1552, <variable>.ItransTopAddr
	str	r5, [r2, #1096]	@ PhyAddr.1553, <variable>.DblkTopAddr
	str	r4, [r2, #1104]	@ tmp273, <variable>.PpfdBufLen
	str	r3, [r2, #1116]	@ PhyAddr.1556, <variable>.VpTabAddr
	str	ip, [r2, #1076]	@ PhyAddr.1549, <variable>.H264MnAddr
	str	r0, [r2, #1088]	@ PhyAddr.1552, <variable>.RcnTopAddr
	str	r1, [r2, #1112]	@ PhyAddr.1555, <variable>.IntensityConvTabAddr
	str	r3, [r2, #1120]	@ PhyAddr.1556, <variable>.DnrMbInfoAddr
	blt	.L336	@,
	mov	r0, r6	@, __p
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@ D.35219
	mvnne	r0, #0	@, Ret,
	b	.L339	@
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
