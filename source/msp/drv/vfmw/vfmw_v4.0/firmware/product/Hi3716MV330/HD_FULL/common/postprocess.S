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
	.file	"postprocess.c"
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
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_CopyYuv
	.type	PostPro_CopyYuv, %function
PostPro_CopyYuv:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	movw	r2, #14600	@ tmp145,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp165,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	ldr	r6, [r0, r2]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r5, #14588	@ tmp147,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp165,
	mov	r2, #0	@ tmp154,
	mov	r3, r1	@ VdhId, VdhId
	mov	r1, #1	@ tmp153,
	str	r6, [r4, #12]	@ <variable>.VahbStride, <variable>.VahbStride
	ldr	r6, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	ldr	ip, [ip, #84]	@ D.30205, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r6, [r4, #4]	@ <variable>.DispFramePhyAddr, <variable>.ImageAddr
	cmp	ip, r2	@ D.30205,
	ldr	r5, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r5, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r6, [r0, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r6, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r5, [r0, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r5, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	ldrh	r6, [r0, #164]	@ D.30191, <variable>.PicWidthInMb
	str	r6, [r4, #24]	@ D.30191, <variable>.ImageWidth
	ldrh	r5, [r0, #166]	@ D.30193, <variable>.PicHeightInMb
	str	r1, [r4, #32]	@ tmp153, <variable>.IsFrame
	str	r2, [r4, #36]	@ tmp154, <variable>.ImageCSP
	mul	r6, r6, r5	@ tmp158, D.30191, D.30193
	str	r5, [r4, #28]	@ D.30193, <variable>.ImageHeight
	movw	r5, #14660	@ tmp161,
	str	r1, [r4, #552]	@ tmp153, <variable>.ValidGroupNum
	strh	r2, [r4, #40]	@ movhi	@ tmp154, <variable>.StartMbn
	sub	r6, r6, #1	@ tmp160, tmp158,
	strh	r6, [r4, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r5, [r0, r5]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r1	@ D.30208, tmp153
	str	r1, [r4, #568]	@ tmp153, <variable>.FullRepair
	str	r2, [r4, #564]	@ tmp154, <variable>.Pic_type
	str	r5, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	ip	@ D.30205
	subs	r0, r0, #0	@ D.30208,,
	movne	r0, #1	@ D.30208
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldr	r8, [r0, #8]	@ n, <variable>.DecSliceNum
	mov	r6, r0	@ pDecReport, pDecReport
	cmp	r8, #1	@ n,
	movhi	r7, #1	@ i,
	bls	.L14	@,
.L10:
	rsb	r4, r7, r8	@ pretmp.516, i, n
	mov	r5, #0	@ flag,
	tst	r4, #1	@ pretmp.516,
	mov	r3, r6	@ ivtmp.531, pDecReport
	mov	r1, r5	@ j, flag
	beq	.L13	@,
	cmp	r4, #0	@ pretmp.516,
	bls	.L14	@,
	ldrh	r3, [r6, #12]	@ D.31159, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r6, #16]	@ D.31161, <variable>.SliceMbRange
	cmp	r3, r2	@ D.31159, D.31161
	bls	.L16	@,
	ldrh	ip, [r6, #14]	@ D.31164, <variable>.SliceMbRange
	mov	r5, r1	@ flag, j
	strh	r2, [r6, #12]	@ movhi	@ D.31161, <variable>.SliceMbRange
	ldrh	r2, [r6, #18]	@, <variable>.SliceMbRange
	strh	r3, [r6, #16]	@ movhi	@ D.31159, <variable>.SliceMbRange
	strh	ip, [r6, #18]	@ movhi	@ D.31164, <variable>.SliceMbRange
	strh	r2, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
.L16:
	add	r3, r6, #4	@ ivtmp.531, pDecReport,
.L13:
	cmp	r4, r1	@ pretmp.516, j
	add	r2, r3, #4	@ tmp194, ivtmp.531,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L22	@,
.L12:
	ldrh	ip, [r3, #12]	@ D.31159, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r0, [r3, #16]	@ D.31161, <variable>.SliceMbRange
	cmp	ip, r0	@ D.31159, D.31161
	bls	.L11	@,
	ldrh	sl, [r3, #14]	@ D.31164, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	r0, [r3, #12]	@ movhi	@ D.31161, <variable>.SliceMbRange
	ldrh	r0, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.31159, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.31164, <variable>.SliceMbRange
	strh	r0, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L11:
	ldrh	r3, [r2, #12]	@ D.31159, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.31161, <variable>.SliceMbRange
	cmp	r3, ip	@ D.31159, D.31161
	bls	.L19	@,
	ldrh	r0, [r2, #14]	@ D.31164, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.31161, <variable>.SliceMbRange
	ldrh	ip, [r2, #18]	@, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.31159, <variable>.SliceMbRange
	strh	r0, [r2, #18]	@ movhi	@ D.31164, <variable>.SliceMbRange
	strh	ip, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
.L19:
	cmp	r4, r1	@ pretmp.516, j
	add	r3, r2, #4	@ ivtmp.531, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.531,
	add	r1, r1, #1	@ tmp195, j,
	bhi	.L12	@,
.L22:
	cmp	r5, #0	@ flag,
	beq	.L14	@,
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	bhi	.L10	@,
.L14:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ D.31087, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp156, D.31087,
	cmp	r3, #3	@ tmp156,
	bhi	.L40	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp158
	str	r7, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.565, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp163, pDecReport, prephitmp.565,
	mov	r3, r1	@ ivtmp.580, pDecReport
	mov	r6, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	r8, r5, sl	@, total_mbn,
	str	r8, [sp, #12]	@, %sfp
	mov	r8, sl	@ old_slice_start_mbn, old_slice_end_mbn
	mov	fp, r5, asr #1	@, total_mbn,
	str	fp, [sp, #8]	@, %sfp
	uxth	fp, r5	@, total_mbn
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [sp, #8]	@, %sfp
	add	fp, fp, sl	@,, tmp8
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #4]	@, %sfp
	strh	fp, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	fp, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	fp, r0	@ pRepairParam, pRepairParam
.L32:
	ldrh	r2, [r3, #12]	@ D.31098, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31098, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L28	@,
	cmp	r2, r0	@ D.31098, curr_slice_end_mbn
	bgt	.L28	@,
	cmp	r2, sl	@ D.31098, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, sl	@ D.31098, tmp177
	ble	.L30	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31115, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31098,
	rsb	r7, r4, r7	@ tmp188, D.31115, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31115, tmp195
	add	sl, r6, sl, asl #2	@, tmp180, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp188, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp193, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp197, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp199, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp199, <variable>.ValidGroupNum
	bne	.L39	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.31098,
	bge	.L38	@,
.L39:
	ldr	r7, [r1, #8]	@ prephitmp.565, <variable>.DecSliceNum
.L30:
	sub	r4, r7, #1	@ temp.586, prephitmp.565,
	cmp	r4, ip	@ temp.586, i
	beq	.L41	@,
.L31:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.31098
.L28:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.580, ivtmp.580,
	cmp	ip, r7	@ i, prephitmp.565
	bls	.L32	@,
	mov	r3, #0	@ D.31092,
.L25:
	mov	r0, r3	@, D.31092
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L41:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.31132, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.31132,
	bge	.L31	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.31092,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp216,,
	strh	r8, [r2, #40]	@ movhi	@ D.31132, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L25	@
.L38:
	ldr	r7, [r1, #8]	@ prephitmp.565, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L30	@
.L40:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31092,
	b	.L25	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ D.31015, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp156, D.31015,
	cmp	r3, #127	@ tmp156,
	bhi	.L59	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp158,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp158
	str	r7, [r0, #568]	@ tmp158, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.610, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp163, pDecReport, prephitmp.610,
	mov	r3, r1	@ ivtmp.625, pDecReport
	mov	r6, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	r8, r5, sl	@, total_mbn,
	str	r8, [sp, #12]	@, %sfp
	mov	r8, sl	@ old_slice_start_mbn, old_slice_end_mbn
	mov	fp, r5, asr #1	@, total_mbn,
	str	fp, [sp, #8]	@, %sfp
	uxth	fp, r5	@, total_mbn
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [sp, #8]	@, %sfp
	add	fp, fp, sl	@,, tmp8
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #4]	@, %sfp
	strh	fp, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	fp, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	fp, r0	@ pRepairParam, pRepairParam
.L51:
	ldrh	r2, [r3, #12]	@ D.31026, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.31026, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L47	@,
	cmp	r2, r0	@ D.31026, curr_slice_end_mbn
	bgt	.L47	@,
	cmp	r2, sl	@ D.31026, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp177, old_slice_end_mbn,
	cmp	r2, sl	@ D.31026, tmp177
	ble	.L49	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp186, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.31043, dectopfldmbs
	sub	r8, r2, #1	@ tmp195, D.31026,
	rsb	r7, r4, r7	@ tmp188, D.31043, tmp186
	rsb	r4, r4, r8	@ tmp197, D.31043, tmp195
	add	sl, r6, sl, asl #2	@, tmp180, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp188, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp193, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp197, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp199, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp199, <variable>.ValidGroupNum
	bne	.L58	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.31026,
	bge	.L57	@,
.L58:
	ldr	r7, [r1, #8]	@ prephitmp.610, <variable>.DecSliceNum
.L49:
	sub	r4, r7, #1	@ temp.631, prephitmp.610,
	cmp	r4, ip	@ temp.631, i
	beq	.L60	@,
.L50:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.31026
.L47:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.625, ivtmp.625,
	cmp	ip, r7	@ i, prephitmp.610
	bls	.L51	@,
	mov	r3, #0	@ D.31020,
.L44:
	mov	r0, r3	@, D.31020
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L60:
	add	r4, r1, ip, asl #2	@, tmp203, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.31060, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.31060,
	bge	.L50	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.31020,
	add	r2, r0, ip, asl #2	@, tmp208, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp216,,
	strh	r8, [r2, #40]	@ movhi	@ D.31060, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp214, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp218, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp218, <variable>.ValidGroupNum
	b	.L44	@
.L57:
	ldr	r7, [r1, #8]	@ prephitmp.610, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L49	@
.L59:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.31020,
	b	.L44	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L75	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp155,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp155, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp155
	str	r7, [r0, #568]	@ tmp155, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.670, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.655, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp161, pDecReport, prephitmp.655,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30953, total_mbn
	mov	r2, r4	@ tmp166, tmp161
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L72	@
.L66:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.655
	bhi	.L76	@,
.L72:
	ldrh	r2, [r3, #12]	@ D.30956, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.670, ivtmp.670,
	cmp	r2, r5	@ D.30956, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L66	@,
	cmp	r2, r4	@ D.30956, curr_slice_end_mbn
	bgt	.L66	@,
	cmp	r2, r8	@ D.30956, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp217, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp216, D.30956,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp175, old_slice_end_mbn,
	cmp	r8, r2	@ tmp175, D.30956
	mov	r7, r2	@ old_slice_start_mbn, D.30956
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L68	@,
	cmp	r9, sl	@ tmp217, tmp216
	bge	.L68	@,
	ldr	r2, [r0, #552]	@ D.30974, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30974,
	add	r2, r0, r2, asl #2	@, tmp181, pRepairParam, D.30974,
	bgt	.L77	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp217, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp192, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp216, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp196, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp196, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.655, <variable>.DecSliceNum
.L68:
	sub	r2, r6, #1	@ temp.675, prephitmp.655,
	cmp	r2, ip	@ temp.675, i
	bne	.L66	@,
	add	r4, r1, ip, asl #2	@, tmp199, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30988, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30988,
	bge	.L66	@,
	ldr	r3, [r0, #552]	@ temp.676, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.676,
	bgt	.L78	@,
	add	ip, r0, r3, asl #2	@, tmp204, pRepairParam, temp.676,
	sub	fp, fp, #1	@ tmp212, D.30953,
	mov	r3, #0	@ D.30950,
	strh	r2, [ip, #40]	@ movhi	@ D.30988, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp214, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp214, <variable>.ValidGroupNum
	b	.L63	@
.L76:
	mov	r3, #0	@ D.30950,
.L63:
	mov	r0, r3	@, D.30950
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L75:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30950,
	b	.L63	@
.L77:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1276	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30950,
	b	.L63	@
.L78:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #1296	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30950,
	b	.L63	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L93	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp155,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp155, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp155
	str	r7, [r0, #568]	@ tmp155, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.717, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.702, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp161, pDecReport, prephitmp.702,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30885, total_mbn
	mov	r2, r4	@ tmp166, tmp161
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L90	@
.L84:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.702
	bhi	.L94	@,
.L90:
	ldrh	r2, [r3, #12]	@ D.30888, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.717, ivtmp.717,
	cmp	r2, r5	@ D.30888, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L84	@,
	cmp	r2, r4	@ D.30888, curr_slice_end_mbn
	bgt	.L84	@,
	cmp	r2, r8	@ D.30888, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp218, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp217, D.30888,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp175, old_slice_end_mbn,
	cmp	r8, r2	@ tmp175, D.30888
	mov	r7, r2	@ old_slice_start_mbn, D.30888
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L86	@,
	cmp	r9, sl	@ tmp218, tmp217
	bge	.L86	@,
	ldr	r2, [r0, #552]	@ D.30906, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30906,
	add	r2, r0, r2, asl #2	@, tmp181, pRepairParam, D.30906,
	bgt	.L95	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp218, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp192, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp217, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp196, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp196, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.702, <variable>.DecSliceNum
.L86:
	sub	r2, r6, #1	@ temp.722, prephitmp.702,
	cmp	r2, ip	@ temp.722, i
	bne	.L84	@,
	add	r4, r1, ip, asl #2	@, tmp199, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30920, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30920,
	bge	.L84	@,
	ldr	r3, [r0, #552]	@ temp.723, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.723,
	bgt	.L96	@,
	add	ip, r0, r3, asl #2	@, tmp205, pRepairParam, temp.723,
	sub	fp, fp, #1	@ tmp213, D.30885,
	mov	r3, #0	@ D.30882,
	strh	r2, [ip, #40]	@ movhi	@ D.30920, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp211, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp215, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp215, <variable>.ValidGroupNum
	b	.L81	@
.L94:
	mov	r3, #0	@ D.30882,
.L81:
	mov	r0, r3	@, D.30882
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L93:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30882,
	b	.L81	@
.L95:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1192	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30882,
	b	.L81	@
.L96:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1212	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30882,
	b	.L81	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L111	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp155,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp155, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp155
	str	r7, [r0, #568]	@ tmp155, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.764, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.749, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp161, pDecReport, prephitmp.749,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30817, total_mbn
	mov	r2, r4	@ tmp166, tmp161
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L108	@
.L102:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.749
	bhi	.L112	@,
.L108:
	ldrh	r2, [r3, #12]	@ D.30820, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.764, ivtmp.764,
	cmp	r2, r5	@ D.30820, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L102	@,
	cmp	r2, r4	@ D.30820, curr_slice_end_mbn
	bgt	.L102	@,
	cmp	r2, r8	@ D.30820, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp218, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp217, D.30820,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp175, old_slice_end_mbn,
	cmp	r8, r2	@ tmp175, D.30820
	mov	r7, r2	@ old_slice_start_mbn, D.30820
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L104	@,
	cmp	r9, sl	@ tmp218, tmp217
	bge	.L104	@,
	ldr	r2, [r0, #552]	@ D.30838, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30838,
	add	r2, r0, r2, asl #2	@, tmp181, pRepairParam, D.30838,
	bgt	.L113	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp218, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp192, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp217, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp196, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp196, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.749, <variable>.DecSliceNum
.L104:
	sub	r2, r6, #1	@ temp.769, prephitmp.749,
	cmp	r2, ip	@ temp.769, i
	bne	.L102	@,
	add	r4, r1, ip, asl #2	@, tmp199, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30852, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30852,
	bge	.L102	@,
	ldr	r3, [r0, #552]	@ temp.770, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.770,
	bgt	.L114	@,
	add	ip, r0, r3, asl #2	@, tmp205, pRepairParam, temp.770,
	sub	fp, fp, #1	@ tmp213, D.30817,
	mov	r3, #0	@ D.30814,
	strh	r2, [ip, #40]	@ movhi	@ D.30852, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp211, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp215, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp215, <variable>.ValidGroupNum
	b	.L99	@
.L112:
	mov	r3, #0	@ D.30814,
.L99:
	mov	r0, r3	@, D.30814
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L111:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30814,
	b	.L99	@
.L113:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1107	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30814,
	b	.L99	@
.L114:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1127	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30814,
	b	.L99	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ D.30724, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp155, D.30724,
	cmp	r3, #127	@ tmp155,
	bhi	.L131	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r4, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r4, [r0, #568]	@ tmp157, <variable>.FullRepair
	str	r4, [r0, #552]	@ tmp157, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.804, <variable>.DecSliceNum
	cmp	r6, r4	@ prephitmp.804,
	add	r2, r1, r6, asl #2	@, tmp163, pDecReport, prephitmp.804,
	uxth	r9, r5	@ D.30732, total_mbn
	strh	r9, [r2, #14]	@ movhi	@ D.30732, <variable>.SliceMbRange
	strh	r9, [r2, #12]	@ movhi	@ D.30732, <variable>.SliceMbRange
	bne	.L132	@,
.L118:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.821, pDecReport
	add	fp, r5, sl	@ tmp250, total_mbn,
	mov	ip, #0	@ i,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	b	.L128	@
.L126:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.30743
.L121:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.821, ivtmp.821,
	cmp	ip, r6	@ i, prephitmp.804
	bhi	.L133	@,
.L128:
	ldrh	r2, [r3, #12]	@ D.30743, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.30743, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L121	@,
	cmp	r2, r4	@ D.30743, curr_slice_end_mbn
	movle	r8, #0	@, tmp191
	movgt	r8, #1	@, tmp191
	cmp	r2, r7	@ D.30743, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp194, tmp191
	cmp	r8, #0	@ tmp194,
	bne	.L121	@,
	cmp	r2, sl	@ D.30743, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp195, old_slice_end_mbn,
	cmp	r8, r2	@ tmp195, D.30743
	beq	.L123	@,
	add	r7, r7, r7, lsr #31	@, tmp247, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp246, D.30743,
	cmp	r7, r8	@ tmp247, tmp246
	bge	.L123	@,
	ldr	r6, [r0, #552]	@ D.30764, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.30764,
	bgt	.L134	@,
	add	r6, r0, r6, asl #2	@, tmp201, pRepairParam, D.30764,
	sub	sl, sl, #100	@ tmp248, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp247, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp212, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp246, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.806, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp216, prephitmp.806,
	mov	r7, r8, asl #2	@ tmp217, tmp216,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp248, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp248, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.806, <variable>.ValidGroupNum
	add	r6, r6, #1	@ tmp225, prephitmp.806,
	str	r6, [r0, #552]	@ tmp225, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.804, <variable>.DecSliceNum
.L123:
	sub	r7, r6, #1	@ temp.826, prephitmp.804,
	cmp	r7, ip	@ temp.826, i
	bne	.L126	@,
	add	r7, r1, ip, asl #2	@, tmp228, pDecReport, i,
	ldrh	r7, [r7, #14]	@ temp.827, <variable>.SliceMbRange
	cmp	r7, fp	@ temp.827, tmp250
	bge	.L126	@,
	ldr	r3, [r0, #552]	@ temp.829, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.829,
	bgt	.L135	@,
	add	r2, r0, r3, asl #2	@, tmp234, pRepairParam, temp.829,
	sub	r9, r9, #1	@ tmp242, D.30732,
	mov	r3, #0	@ D.30729,
	strh	r7, [r2, #40]	@ movhi	@ temp.827, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp240, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp242, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp244, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp244, <variable>.ValidGroupNum
	b	.L117	@
.L133:
	mov	r3, #0	@ D.30729,
.L117:
	mov	r0, r3	@, D.30729
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L132:
	add	sl, r2, #6	@ tmp173, tmp172,
	sub	r7, r5, #10	@ tmp175, total_mbn,
	ldrh	ip, [sl, #4]	@ tmp174, <variable>.SliceMbRange
	cmp	ip, r7	@ tmp174, tmp175
	subge	r7, r9, #1	@ tmp180, D.30732,
	strgeh	r7, [sl, #4]	@ movhi	@ tmp180, <variable>.SliceMbRange
	b	.L118	@
.L131:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30729,
	mov	r0, r3	@, D.30729
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L134:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #1012	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30729,
	b	.L117	@
.L135:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #1043	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.30729,
	b	.L117	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #8]	@, <variable>.DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	mov	r5, r1	@ pDecReport, pDecReport
	sub	r3, r0, #1	@ tmp194,,
	cmp	r3, #127	@ tmp194,
	str	r0, [sp, #8]	@, %sfp
	bhi	.L181	@,
	ldr	sl, [r4, #24]	@ D.30591, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.30591
	uxtheq	fp, r6	@ prephitmp.864, total_mbn
	bne	.L182	@,
.L140:
	mov	r1, #0	@ tmp392,
	str	r1, [r4, #552]	@ tmp392, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp392, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.859, <variable>.DecSliceNum
	add	r9, r6, r8	@ tmp472, total_mbn,
	mov	r3, r5	@ ivtmp.884, pDecReport
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	sl, fp	@ movhi	@,
	add	r0, r5, ip, asl #2	@, tmp396, pDecReport, prephitmp.859,
	mov	r2, r0	@ tmp401, tmp396
	strh	fp, [r0, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L160	@
.L158:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.960
.L153:
	add	r1, r1, #1	@ i.909, i.909,
	add	r3, r3, #4	@ ivtmp.884, ivtmp.884,
	cmp	ip, r1	@ prephitmp.859, i.909
	bcc	.L183	@,
.L160:
	ldrh	r2, [r3, #12]	@ temp.960, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.960, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L153	@,
	cmp	r2, r0	@ temp.960, curr_slice_end_mbn
	bgt	.L153	@,
	cmp	r2, r8	@ temp.960, old_slice_end_mbn
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp410, old_slice_end_mbn,
	cmp	r2, sl	@ temp.960, tmp410
	ble	.L155	@,
	ldr	sl, [r4, #552]	@ D.30677, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.30677,
	bgt	.L184	@,
	add	sl, r4, sl, asl #2	@, tmp413, pRepairParam, D.30677,
	add	r7, r7, r7, lsr #31	@, tmp419, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp426, temp.960,
	sub	r8, r8, #100	@ tmp471, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp419, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp424, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp426, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.861, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp428, prephitmp.861,
	mov	r7, sl, asl #2	@ tmp429, tmp428,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp471, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp471, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.861, <variable>.ValidGroupNum
	add	r7, ip, #1	@ tmp437, prephitmp.861,
	str	r7, [r4, #552]	@ tmp437, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.859, <variable>.DecSliceNum
.L155:
	sub	r7, ip, #1	@ temp.963, prephitmp.859,
	cmp	r7, r1	@ temp.963, i.909
	bne	.L158	@,
	add	r7, r5, r1, asl #2	@, tmp440, pDecReport, i.909,
	ldrh	r7, [r7, #14]	@ D.30699, <variable>.SliceMbRange
	cmp	r7, r9	@ D.30699, tmp472
	bge	.L158	@,
	ldr	r3, [r4, #552]	@ temp.964, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.964,
	bgt	.L185	@,
	add	r1, r4, r3, asl #2	@, tmp446, pRepairParam, temp.964,
	sub	fp, fp, #1	@ tmp454, prephitmp.864,
	mov	r0, #0	@ D.30590,
	strh	r7, [r1, #40]	@ movhi	@ D.30699, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp452, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp456, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp456, <variable>.ValidGroupNum
	b	.L138	@
.L183:
	mov	r0, #0	@ D.30590,
.L138:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L182:
	ldrh	ip, [r5, #12]	@, <variable>.SliceMbRange
	add	r2, sp, #24	@ ivtmp.903,,
	ldr	r9, [sp, #8]	@, %sfp
	add	r3, r2, #4	@ ivtmp.903, ivtmp.903,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.30591,
	strh	ip, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.31668, ivtmp.903,,
	ldrh	lr, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp475, ivtmp.903, D.31668
	cmp	r3, r0	@ ivtmp.903, D.31668
	sub	r1, r8, #4	@ tmp476, tmp475,
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp477, tmp476,,
	add	r2, r5, #4	@ ivtmp.902, pDecReport,
	beq	.L171	@,
	cmp	r1, #0	@ tmp477,
	beq	.L141	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.902, ivtmp.902,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.903, ivtmp.903,
	cmp	r3, r0	@ ivtmp.903, D.31668
	beq	.L171	@,
.L141:
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	add	fp, r2, #4	@ tmp479, ivtmp.902,
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp478, ivtmp.903,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r1, [fp, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.903, tmp478,
	ldrh	lr, [fp, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.903, D.31668
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, fp, #4	@ ivtmp.902, tmp479,
	bne	.L141	@,
.L171:
	add	r0, sp, #536	@,,
	movw	r2, #:lower16:-512	@ tmp205,
	movw	r3, #:lower16:-510	@ tmp209,
	movt	r2, #:upper16:-512	@ tmp205,
	movt	r3, #:upper16:-510	@ tmp209,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r1, [r0, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	fp, #:lower16:65534	@ prephitmp.866,
	ldrh	r9, [r0, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	fp, #:upper16:65534	@ prephitmp.866,
	and	fp, r1, fp	@ prephitmp.866, SliceMbRange_Tmp, prephitmp.866
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r9, #1	@ D.30602, SliceMbRange_Tmp,
	strh	fp, [r0, r2]	@ movhi	@ tmp14, SliceMbRange_Tmp
	strh	r9, [r0, r3]	@ movhi	@ D.30602, SliceMbRange_Tmp
	beq	.L143	@,
	mov	r0, #0	@ i,
	uxth	r7, sl	@, DoubleImageWidth
	sub	ip, sl, #2	@, DoubleImageWidth,
	str	r7, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ total_mbn, %sfp
	add	r8, sp, #28	@ ivtmp.890,,
	str	ip, [sp, #12]	@, %sfp
	mov	r7, r0	@ j, i
	mov	r6, r0	@ i, i
	b	.L162	@
.L187:
	mov	r0, fp	@, prephitmp.866
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	fp, r0	@ tmp229,
	mov	r0, r9	@, D.30602
	bl	__aeabi_uidiv	@
	ldmia	sp, {r3, r9}	@ phole ldm
	mov	r1, r9, lsr #1	@ mbsurplus0,,
	mov	r3, r3, lsr #1	@ mbsurplus1, tmp225,
	cmp	r0, fp	@ tmp232, tmp229
	beq	.L146	@,
	ldr	r2, [sp, #16]	@, %sfp
	add	r9, r5, r7, asl #2	@, tmp240, pDecReport, j,
	mov	ip, r9	@ tmp244, tmp240
	mul	fp, fp, r2	@ tmp234, tmp229,
	add	r2, r7, #1	@ j.911, j,
	cmp	r2, #127	@ j.911,
	uxth	fp, fp	@ D.30618,
	add	r1, fp, r1	@ tmp236, D.30618, mbsurplus0
	uxth	r1, r1	@ D.30620, tmp236
	strh	r1, [r9, #12]	@ movhi	@ D.30620, <variable>.SliceMbRange
	ldr	lr, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, lr, #1	@ tmp248, <variable>.ImageWidth,
	add	lr, fp, r9	@ tmp250, D.30618, tmp248
	strh	lr, [ip, #14]	@ movhi	@ tmp250, <variable>.SliceMbRange
	bhi	.L177	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r5, r7, asl #2	@, tmp254, pDecReport, j,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	fp, r5, r2, asl #2	@, tmp263, pDecReport, j.911,
	uxth	r3, r3	@ D.30629, mbsurplus1
	mul	r0, r0, ip	@ tmp260, tmp232,
	add	ip, r2, #1	@ j.914, j.911,
	cmp	ip, #128	@ j.914,
	add	r1, r1, r9	@ tmp258, D.30620, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp258, <variable>.SliceMbRange
	uxth	r0, r0	@ D.30628, tmp260
	add	r7, r3, r0	@ tmp265, D.30629, D.30628
	strh	r7, [fp, #14]	@ movhi	@ tmp265, <variable>.SliceMbRange
	beq	.L177	@,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.914,
	mov	r2, lr	@ tmp272, tmp254
	cmp	r7, #128	@ j,
	add	r1, r0, r9	@ tmp268, D.30628, <variable>.ImageWidth
	add	lr, r5, ip, asl #2	@, tmp276, pDecReport, j.914,
	uxth	fp, r1	@ D.30633, tmp268
	strh	fp, [r2, #20]	@ movhi	@ D.30633, <variable>.SliceMbRange
	add	r3, fp, r3	@ tmp278, D.30633, D.30629
	strh	r3, [lr, #14]	@ movhi	@ tmp278, <variable>.SliceMbRange
	beq	.L177	@,
.L148:
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.890, ivtmp.890,
	cmp	fp, r6	@, i
	bls	.L186	@,
.L150:
	ldrh	fp, [r8, #-4]	@ tmp463, SliceMbRange_Tmp
	ldrh	r0, [r8, #-2]	@ tmp466, SliceMbRange_Tmp
	bic	fp, fp, #1	@ tmp464, tmp463,
	strh	fp, [r8, #-4]	@ movhi	@ tmp3, SliceMbRange_Tmp
	orr	r9, r0, #1	@ D.30602, tmp466,
	strh	r9, [r8, #-2]	@ movhi	@ D.30602, SliceMbRange_Tmp
.L162:
	mov	r0, fp	@, prephitmp.866
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [sp, #4]	@, %sfp
	bls	.L144	@,
	mov	r0, r9	@, D.30602
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r1	@, tmp225
	mov	r3, r1	@ tmp225,
	bhi	.L187	@,
	mov	r0, fp	@, prephitmp.866
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	fp, r5, r7, asl #2	@, tmp323, pDecReport, j,
	add	r3, r7, #1	@ j.940, j,
	ldr	lr, [sp, #4]	@, %sfp
	cmp	r3, #127	@ j.940,
	mov	r2, fp	@ tmp327, tmp323
	mul	r7, sl, r0	@ tmp316, DoubleImageWidth,
	uxth	r0, r7	@ temp.933, tmp316
	add	ip, r0, lr, lsr #1	@, tmp319, temp.933,,
	uxth	ip, ip	@ temp.935, tmp319
	strh	ip, [fp, #12]	@ movhi	@ temp.935, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	fp, r1, #1	@ tmp331, <variable>.ImageWidth,
	add	r7, r0, fp	@ tmp333, temp.933, tmp331
	strh	r7, [r2, #14]	@ movhi	@ tmp333, <variable>.SliceMbRange
	bhi	.L177	@,
	add	r7, r3, #1	@ j, j.940,
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp344, pDecReport, j.940,
	cmp	r7, #128	@ j,
	add	r0, ip, r1	@ tmp341, temp.935, <variable>.ImageWidth
	strh	r0, [r2, #16]	@ movhi	@ tmp341, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.30602, <variable>.SliceMbRange
	bne	.L148	@,
.L177:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
	mov	lr, #0	@ movhi	@,
	mov	r9, #1	@ tmp458,
	strh	lr, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r5, #8]	@ tmp458, <variable>.DecSliceNum
	uxth	fp, r6	@ prephitmp.864, total_mbn
	sub	r8, fp, #1	@ tmp461, prephitmp.864,
	strh	r8, [r5, #14]	@ movhi	@ tmp461, <variable>.SliceMbRange
.L161:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L140	@
.L144:
	mov	r0, r9	@, D.30602
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [sp, #12]	@, %sfp
	cmp	ip, r1	@, tmp350
	mov	r2, r1	@ tmp350,
	bls	.L149	@,
	add	lr, r5, r7, asl #2	@, tmp355, pDecReport, j,
	mov	r0, r9	@, D.30602
	mov	r1, sl	@, DoubleImageWidth
	strh	fp, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #0]	@,
	add	r3, r7, #1	@ j.954, j,
	add	r1, r5, r7, asl #2	@, tmp367, pDecReport, j,
	cmp	r3, #127	@ j.954,
	ubfx	r2, r2, #1, #16	@ temp.952, tmp350,,
	mul	fp, sl, r0	@ tmp363, DoubleImageWidth,
	uxth	r0, fp	@ temp.951, tmp363
	add	r9, r2, r0	@ tmp369, temp.952, temp.951
	strh	r9, [r1, #14]	@ movhi	@ tmp369, <variable>.SliceMbRange
	bhi	.L177	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.954,
	cmp	r7, #128	@ j,
	add	r3, r5, r3, asl #2	@, tmp380, pDecReport, j.954,
	add	r9, r0, ip	@ tmp372, temp.951, <variable>.ImageWidth
	uxth	r0, r9	@ temp.957, tmp372
	strh	r0, [r1, #16]	@ movhi	@ temp.957, <variable>.SliceMbRange
	add	r1, r0, r2	@ tmp382, temp.957, temp.952
	strh	r1, [r3, #14]	@ movhi	@ tmp382, <variable>.SliceMbRange
	beq	.L177	@,
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.890, ivtmp.890,
	cmp	fp, r6	@, i
	bhi	.L150	@,
.L186:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
.L143:
	uxth	fp, r6	@ prephitmp.864, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L161	@
.L149:
	add	r2, r5, r7, asl #2	@, tmp386, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	fp, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.30602, <variable>.SliceMbRange
	bls	.L148	@,
	b	.L177	@
.L146:
	mul	fp, sl, r0	@ tmp281, DoubleImageWidth, tmp232
	add	r2, r7, #1	@ j.923, j,
	add	lr, r5, r7, asl #2	@, tmp287, pDecReport, j,
	cmp	r2, #127	@ j.923,
	mov	ip, lr	@ tmp293, tmp287
	uxth	r0, fp	@ temp.919, tmp281
	add	r3, r0, r3	@ tmp290, temp.919, mbsurplus1
	add	r7, r0, r1	@ tmp283, temp.919, mbsurplus0
	uxth	r3, r3	@ D.30639, tmp290
	uxth	r1, r7	@ temp.921, tmp283
	strh	r3, [lr, #14]	@ movhi	@ D.30639, <variable>.SliceMbRange
	strh	r1, [lr, #12]	@ movhi	@ temp.921, <variable>.SliceMbRange
	bhi	.L177	@,
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.923,
	cmp	r7, #128	@ j,
	add	r2, r5, r2, asl #2	@, tmp305, pDecReport, j.923,
	add	lr, r1, r0	@ tmp302, temp.921, <variable>.ImageWidth
	strh	lr, [ip, #16]	@ movhi	@ tmp302, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	ip, r3, r1	@ tmp309, D.30639, <variable>.ImageWidth
	strh	ip, [r2, #14]	@ movhi	@ tmp309, <variable>.SliceMbRange
	bne	.L148	@,
	b	.L177	@
.L181:
	mov	r2, r0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30590,
	b	.L138	@
.L184:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #904	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30590,
	b	.L138	@
.L185:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #933	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30590,
	b	.L138	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r9, r3	@ pDecReport, pDecReport
	mov	r7, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp202,
	mov	r4, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #1124]	@ tmp202, <variable>.ValidGroupNum
	add	r8, r1, #572	@ D.30328, pRepairParam,
	str	r3, [r1, #552]	@ tmp202, <variable>.ValidGroupNum
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L189	@
.L198:
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L189
	.word	.L194
	.word	.L195
	.word	.L189
	.word	.L189
	.word	.L189
	.word	.L196
	.word	.L196
	.word	.L196
	.word	.L197
.L197:
	ldr	r2, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r3, #0	@ tmp359,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #4]	@ <variable>.image_curr_rcn_addr, <variable>.ImageAddr
	ldr	ip, [r4, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	str	ip, [r7, #8]	@ <variable>.image_curr_rcn_addr, <variable>.Image2DAddr
	mov	ip, #1	@ tmp358,
	ldr	sl, [r4, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	sl, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	lr, [r4, #3132]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	str	lr, [r7, #20]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	ldr	r2, [r4, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r2, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	sl, [r4, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	ip, [r7, #32]	@ tmp358, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp359, <variable>.Pic_type
	str	sl, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp359, <variable>.ImageCSP
	ldr	lr, [r4, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	str	lr, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetVp8MbGroup	@
.L217:
	ldr	r3, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r1, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	sl, r0, r1	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L227	@,
	mov	r5, #0	@ err_mbs,
	mov	r4, r7	@ ivtmp.1018, pRepairParam
	mov	r6, r5	@ i.1034, err_mbs
.L228:
	ldrsh	r2, [r4, #42]	@, <variable>.EndMbn
	mov	r0, #22	@,
	ldrsh	r3, [r4, #40]	@, <variable>.StartMbn
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	r6, r6, #1	@ i.1034, i.1034,
	bl	dprint_vfmw	@
	ldrsh	r3, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r1, [r7, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldrsh	r2, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r0, r3, #1	@ tmp370, <variable>.EndMbn,
	cmp	r1, r6	@ <variable>.ValidGroupNum, i.1034
	add	r4, r4, #4	@ ivtmp.1018, ivtmp.1018,
	rsb	ip, r2, r0	@ tmp372, <variable>.StartMbn, tmp370
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp372
	bgt	.L228	@,
.L227:
	ldr	lr, [r7, #1124]	@ D.30543, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.30543,
	ble	.L229	@,
	ldrsh	ip, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1051,
	ldrsh	r1, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1051, D.30543
	add	r0, ip, r2	@ tmp375, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp390, D.30543,
	rsb	ip, r1, r0	@ tmp377, <variable>.StartMbn, tmp375
	and	r3, r3, r2	@ tmp392, tmp390,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp377
	add	r8, r8, #4	@ ivtmp.1012, D.30328,
	beq	.L229	@,
	cmp	r3, #0	@ tmp392,
	beq	.L230	@,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1051,
	ldrsh	ip, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1051, D.30543
	add	r1, r0, #1	@ tmp422, <variable>.EndMbn,
	add	r8, r8, #4	@ ivtmp.1012, ivtmp.1012,
	rsb	r3, ip, r1	@ tmp424, <variable>.StartMbn, tmp422
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp424
	beq	.L229	@,
.L230:
	add	r3, r8, #4	@ tmp394, ivtmp.1012,
	ldrsh	r0, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1051, i.1051,
	ldrsh	r8, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp411, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp413, <variable>.StartMbn, tmp411
	cmp	r2, lr	@ i.1051, D.30543
	add	r1, r8, #1	@ tmp418, <variable>.EndMbn,
	rsb	r1, r0, r1	@ tmp420, <variable>.StartMbn, tmp418
	add	r8, r5, ip	@ err_mbs, err_mbs, tmp413
	add	r5, r8, r1	@ err_mbs, err_mbs, tmp420
	add	r8, r3, #4	@ ivtmp.1012, tmp394,
	bne	.L230	@,
.L229:
	cmp	sl, #0	@ total_mbs,
	moveq	r4, sl	@ err_ratio, total_mbs
	beq	.L232	@,
	mov	r4, #100	@ tmp379,
	mov	r1, sl	@, total_mbs
	mul	r0, r4, r5	@, tmp379, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1052,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio.1052
.L232:
	mov	lr, #0	@ tmp383,
	mov	r2, sl	@, total_mbs
	mov	r3, r5	@, err_mbs
	str	lr, [r9, #8]	@ tmp383, <variable>.DecSliceNum
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L189:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r3, #648	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L217	@
.L190:
	ldr	sl, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r2, r2, sl, asl #2	@, tmp208, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r1, [r2, #308]	@ tmp210, <variable>.ImgPhyAddr
	str	r1, [r7, #4]	@ tmp210, <variable>.ImageAddr
	ldr	r0, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r0, [r7, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r0, [r3, #1640]	@ ref_img_idc, <variable>.img_idc
	add	lr, r4, r0, asl #2	@, tmp216, pDecParam, ref_img_idc,
	ldr	ip, [lr, #308]	@ tmp218, <variable>.ImgPhyAddr
	str	ip, [r7, #16]	@ tmp218, <variable>.RefImageAddr
	ldr	sl, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	r2, sl, #206	@ tmp219, <variable>.CurrPicPmvIdc,
	ldr	r1, [r4, r2, asl #2]	@ tmp221, <variable>.PmvPhyAddr
	str	r1, [r7, #20]	@ tmp221, <variable>.CurrPmvAddr
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r7, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	lr, [r7, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	sl, ip, #1	@ tmp225, <variable>.pic_structure
	movcc	sl, #0	@ tmp225
	str	sl, [r7, #32]	@ tmp225, <variable>.IsFrame
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r1, r2, #1	@ tmp227, <variable>.chroma_format_idc
	movcc	r1, #0	@ tmp227
	str	r1, [r7, #36]	@ tmp227, <variable>.ImageCSP
	ldr	lr, [r4, #1116]	@ D.30356, <variable>.ApcSize
	cmp	lr, #0	@ D.30356,
	beq	.L199	@,
	ldr	r3, [r4, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r0	@ <variable>.RefPicFsId, ref_img_idc
	moveq	r3, #0	@ i,
	beq	.L201	@,
	tst	lr, #1	@ D.30356,
	mov	r2, r4	@ ivtmp.1029, pDecParam
	mov	r3, #0	@ i,
	bne	.L202	@,
	ldr	sl, [r4, #1324]	@ D.30350, <variable>.RefPicFsId
	mov	r3, #1	@ i,
	add	r2, r4, #4	@ ivtmp.1029, pDecParam,
	cmp	sl, r0	@ D.30350, ref_img_idc
	bne	.L202	@,
	b	.L201	@
.L203:
	ldr	ip, [r2, #1324]	@ D.30350, <variable>.RefPicFsId
	add	r2, r1, #4	@ ivtmp.1029, tmp403,
	cmp	ip, r0	@ D.30350, ref_img_idc
	beq	.L201	@,
	ldr	ip, [r1, #1324]	@ D.30350, <variable>.RefPicFsId
	add	r3, r3, #1	@ i, i,
	cmp	ip, r0	@ D.30350, ref_img_idc
	beq	.L201	@,
.L202:
	add	r3, r3, #1	@ i, i,
	add	r1, r2, #4	@ tmp403, ivtmp.1029,
	cmp	lr, r3	@ D.30356, i
	bhi	.L203	@,
.L199:
	ldr	r2, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	beq	.L205	@,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r1, #1	@ prephitmp.994, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.994
.L205:
	ldrsb	sl, [r4, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	sl, #0	@ <variable>.NewPicFlag,
	streq	sl, [r9, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L261	@,
.L207:
	ldr	r2, [r7, #4]	@ D.30367, <variable>.ImageAddr
	ldr	ip, [r7, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, ip	@ D.30367, <variable>.RefImageAddr
	beq	.L262	@,
.L208:
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ temp.1032, <variable>.pic_structure
	cmp	r3, #0	@ temp.1032,
	beq	.L258	@,
	cmp	r3, #1	@ temp.1032,
	beq	.L258	@,
	cmp	r3, #2	@ temp.1032,
	beq	.L258	@,
	cmp	r3, #3	@ temp.1032,
	bne	.L214	@,
	mov	r3, #0	@ tmp242,
.L258:
	str	r3, [r7, #564]	@ tmp242, <variable>.Pic_type
.L214:
	ldr	r2, [r4, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L217	@
.L191:
	movw	r5, #:lower16:78040	@ tmp314,
	movt	r5, #:upper16:78040	@ tmp314,
	movw	sl, #12384	@ tmp316,
	movw	r3, #12388	@ tmp318,
	ldr	r2, [r2, r5]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	mov	r5, #0	@ tmp331,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	movw	r2, #12396	@ tmp320,
	ldr	ip, [r4, sl]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	ip, [r7, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	ldr	lr, [r4, r3]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	lr, [r7, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	sl, [r4, r2]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	sl, [r7, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	ip, [r4, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	r3, ip, #1	@ tmp323, <variable>.mbwidth,
	str	r3, [r7, #24]	@ tmp323, <variable>.ImageWidth
	ldrh	lr, [r4, #80]	@ <variable>.mbheight, <variable>.mbheight
	add	r2, lr, #1	@ tmp325, <variable>.mbheight,
	str	r2, [r7, #28]	@ tmp325, <variable>.ImageHeight
	ldrb	sl, [r4, #5]	@ zero_extendqisi2	@ D.30485, <variable>.fcm
	str	r5, [r7, #36]	@ tmp331, <variable>.ImageCSP
	cmp	sl, r5	@ D.30485,
	cmpne	sl, #2	@, D.30485,
	movne	ip, #0	@, tmp330
	moveq	ip, #1	@, tmp330
	str	ip, [r7, #32]	@ tmp330, <variable>.IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	r3, [r7, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldrb	r1, [r4, #68]	@ zero_extendqisi2	@ <variable>.ref_pic_type, <variable>.ref_pic_type
	cmp	r3, #1	@ <variable>.IsFrame,
	streq	r5, [r7, #564]	@ tmp331, <variable>.Pic_type
	and	r0, r1, #3	@ tmp333, <variable>.ref_pic_type,
	str	r0, [r7, #556]	@ tmp333, <variable>.rpr_ref_pic_type
	beq	.L224	@,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	cmp	r0, #3	@ <variable>.fcm,
	beq	.L263	@,
.L224:
	movw	r3, #:lower16:78096	@ tmp339,
	movt	r3, #:upper16:78096	@ tmp339,
	ldr	lr, [r4, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	str	lr, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L217	@
.L192:
	ldr	r1, [r2, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	movw	sl, #14588	@ tmp259,
	mov	r3, #0	@ tmp266,
	mov	r0, r7	@, pRepairParam
	str	r1, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r1, r9	@, pDecReport
	ldr	r2, [r2, sl]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r2, [r7, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	mov	r2, #1	@ tmp265,
	ldr	lr, [r4, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	lr, [r7, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	ip, [r7, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	movw	ip, #14660	@ tmp268,
	ldrh	sl, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	sl, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	lr, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r7, #32]	@ tmp265, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp266, <variable>.Pic_type
	str	lr, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp266, <variable>.ImageCSP
	ldr	sl, [r4, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	str	sl, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L217	@
.L193:
	ldr	r0, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r2, #0	@ tmp252,
	str	r0, [r1, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	lr, [r4, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	lr, [r1, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r3, [r4, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r3, [r1, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r4, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	ip, [r1, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	sl, [r4, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	sl, [r1, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r1, [r4, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r1, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r0, [r4, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r2, [r7, #36]	@ tmp252, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PictureStructure,
	movne	lr, #0	@, tmp251
	moveq	lr, #1	@, tmp251
	str	lr, [r7, #32]	@ tmp251, <variable>.IsFrame
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ temp.1033, <variable>.PictureStructure
	cmp	r3, #1	@ temp.1033,
	beq	.L259	@,
	cmp	r3, #2	@ temp.1033,
	beq	.L259	@,
	cmp	r3, #3	@ temp.1033,
	streq	r2, [r7, #564]	@ tmp252, <variable>.Pic_type
.L219:
	movw	r1, #45316	@ tmp256,
	mov	r0, r7	@, pRepairParam
	ldr	r2, [r4, r1]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L217	@
.L194:
	ldr	lr, [r2, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r3, #0	@ tmp311,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	lr, [r7, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	lr, #1	@ tmp310,
	ldr	r2, [r2, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r7, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	sl, [r4, #148]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	sl, [r7, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	ldr	ip, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	lr, [r7, #32]	@ tmp310, <variable>.IsFrame
	str	r3, [r7, #564]	@ tmp311, <variable>.Pic_type
	str	r2, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r7, #36]	@ tmp311, <variable>.ImageCSP
	ldr	sl, [r4, #156]	@ <variable>.Compress_en, <variable>.Compress_en
	str	sl, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L217	@
.L195:
	movw	r2, #14440	@ tmp270,
	movw	r3, #14452	@ tmp271,
	ldr	ip, [r4, r2]	@ D.30425, <variable>.CurPicAddr
	movw	r6, #14444	@ tmp275,
	mov	r2, #0	@ tmp281,
	str	ip, [r1, #4]	@ D.30425, <variable>.ImageAddr
	ldr	r5, [r4, r3]	@ <variable>.rcn_address, <variable>.rcn_address
	str	r5, [r1, #8]	@ <variable>.rcn_address, <variable>.Image2DAddr
	movw	r1, #14432	@ tmp273,
	ldr	r5, [r4, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	str	r5, [r7, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	ldr	r1, [r4, r6]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r1, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r4, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r4, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	r6, r3, lsr #1	@ tmp293, <variable>.PicHeightInMb,
	ldrb	r0, [r4, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	str	r2, [r7, #36]	@ tmp281, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp280
	moveq	r0, #1	@, tmp280
	str	r0, [r7, #32]	@ tmp280, <variable>.IsFrame
	ldr	sl, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r5, [r8, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	add	ip, sl, ip	@ tmp283, <variable>.ImgStride, D.30425
	str	ip, [r8, #4]	@ tmp283, <variable>.ImageAddr
	ldr	ip, [r9, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r3, [r8, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r0, [r8, #32]	@ tmp280, <variable>.IsFrame
	add	r3, ip, ip, asl #3	@, tmp288, <variable>.ImgStride, <variable>.ImgStride,
	str	lr, [r8, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	str	r2, [r8, #36]	@ tmp281, <variable>.ImageCSP
	mla	r0, r6, r3, r1	@ tmp296, tmp293, tmp288, <variable>.CurPmvAddr
	str	r0, [r8, #20]	@ tmp296, <variable>.CurrPmvAddr
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ temp.1038, <variable>.PicStruct
	cmp	r3, #3	@ temp.1038,
	streq	r2, [r7, #564]	@ tmp281, <variable>.Pic_type
	beq	.L222	@,
	cmp	r3, #1	@ temp.1038,
	streq	r3, [r7, #564]	@ temp.1038, <variable>.Pic_type
.L222:
	movw	ip, #14868	@ tmp303,
	mov	r0, r7	@, pRepairParam
	ldr	lr, [r4, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r9	@, pDecReport
	str	lr, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L217	@
.L196:
	ldr	r2, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r5, #0	@ tmp348,
	mov	r0, r1	@, pRepairParam
	mov	r1, r9	@, pDecReport
	str	r2, [r7, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	mov	r2, #1	@ tmp347,
	ldr	sl, [r4, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	sl, [r7, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	ip, [r4, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	ip, [r7, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r3, [r4, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r3, [r7, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r4, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r7, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	sl, [r4, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r7, #32]	@ tmp347, <variable>.IsFrame
	str	r5, [r7, #36]	@ tmp348, <variable>.ImageCSP
	str	sl, [r7, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r5, [r7, #564]	@ tmp348, <variable>.Pic_type
	str	r5, [r7, #556]	@ tmp348, <variable>.rpr_ref_pic_type
	ldr	ip, [r4, #196]	@ <variable>.Compress_en, <variable>.Compress_en
	str	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L217	@
.L259:
	str	r3, [r7, #564]	@ temp.1033, <variable>.Pic_type
	b	.L219	@
.L201:
	add	r0, r3, #312	@ tmp229, i,
	add	r3, r0, #2	@ tmp229, tmp229,
	ldr	lr, [r4, r3, asl #2]	@ tmp231, <variable>.RefPicType
	str	lr, [r7, #556]	@ tmp231, <variable>.rpr_ref_pic_type
	b	.L199	@
.L262:
	ldr	ip, [r4, #820]	@ D.30376, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.30376,
	beq	.L208	@,
	ldr	r3, [r4, #308]	@ D.30372, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.30367, D.30372
	bne	.L209	@,
	tst	ip, #1	@ D.30376,
	mov	r1, r4	@ ivtmp.1024, pDecParam
	mov	r0, #0	@ i.1031,
	bne	.L211	@,
	ldr	r3, [r4, #312]	@ D.30372, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1031,
	add	r1, r4, #4	@ ivtmp.1024, pDecParam,
	cmp	r3, r2	@ D.30372, D.30367
	beq	.L211	@,
	b	.L209	@
.L253:
	ldr	r3, [lr, #312]	@ D.30372, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.30372, D.30367
	bne	.L209	@,
.L211:
	add	r3, r0, #1	@ tmp399, i.1031,
	add	lr, r1, #4	@ tmp398, ivtmp.1024,
	cmp	ip, r3	@ D.30376, tmp399
	add	r0, r3, #1	@ i.1031, tmp399,
	bls	.L208	@,
	ldr	r3, [r1, #312]	@ D.30372, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1024, tmp398,
	cmp	r3, r2	@ D.30372, D.30367
	beq	.L253	@,
.L209:
	str	r3, [r7, #16]	@ D.30372, <variable>.RefImageAddr
	b	.L208	@
.L261:
	mov	r0, r7	@, pRepairParam
	mov	r1, r9	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L207	@
.L263:
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ D.30499, <variable>.curparity
	cmp	r3, #0	@ D.30499,
	beq	.L260	@,
	cmp	r3, #1	@ D.30499,
	bne	.L224	@,
.L260:
	add	r1, r3, #1	@ tmp338, tmp338,
	str	r1, [r7, #564]	@ tmp338, <variable>.Pic_type
	b	.L224	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	add	r5, r2, r2, asl #5	@, tmp142, VdhId, VdhId,
	movw	ip, #:lower16:g_DecReport	@ tmp144,
	movt	ip, #:upper16:g_DecReport	@ tmp144,
	add	r4, ip, r5, asl #4	@, pDecReport, tmp144, tmp142,
	movw	r3, #:lower16:g_RepairParam	@ tmp150,
	movt	r3, #:upper16:g_RepairParam	@ tmp150,
	mov	r6, r2	@ VdhId, VdhId
	mov	r2, r1	@ pDecParam, pDecParam
	movw	r1, #1144	@ tmp148,
	mla	r1, r1, r6, r3	@, tmp148, VdhId, tmp150
	mov	r6, #1	@ tmp145,
	mov	r3, r4	@, pDecReport
	str	r6, [ip, r5, asl #4]	@ tmp145, <variable>.RetType
	mov	ip, #0	@ tmp146,
	str	ip, [r4, #8]	@ tmp146, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6}
	b	PostPro_GetRepairParam	@
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.align	2
	.global	PostPro_CopyYuv_Vp6
	.type	PostPro_CopyYuv_Vp6, %function
PostPro_CopyYuv_Vp6:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	ldr	lr, [r0, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r6, #0	@ tmp150,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r7, #1	@ tmp149,
	mov	r8, r1	@ VdhId, VdhId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	lr, [r4, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	ldr	ip, [r5, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	ip, [r4, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r5, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r4, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r5, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r2, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #52]	@ D.30265, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ D.30265, <variable>.ImageWidth
	ldrh	lr, [r5, #54]	@ D.30267, <variable>.PicHeightInMb
	str	r7, [r4, #32]	@ tmp149, <variable>.IsFrame
	str	r6, [r4, #36]	@ tmp150, <variable>.ImageCSP
	mov	r3, lr	@, D.30267
	str	lr, [r4, #28]	@ D.30267, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp167,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp167,
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	str	r7, [r4, #552]	@ tmp149, <variable>.ValidGroupNum
	mul	r2, r1, ip	@ tmp159, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r3, #84]	@ D.30279, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r6, [r4, #40]	@ movhi	@ tmp150, <variable>.StartMbn
	cmp	ip, r6	@ D.30279,
	sub	r1, r2, #1	@ tmp161, tmp159,
	strh	r1, [r4, #42]	@ movhi	@ tmp161, <variable>.EndMbn
	ldr	r3, [r5, #196]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30282, tmp149
	str	r7, [r4, #568]	@ tmp149, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp150, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, r5	@, pVp6DecParam
	mov	r2, r6	@, tmp150
	mov	r3, r8	@, VdhId
	mov	r0, #10	@,
	blx	ip	@ D.30279
	subs	r0, r0, #0	@ D.30282,,
	movne	r0, #1	@ D.30282
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vp6, .-PostPro_CopyYuv_Vp6
	.align	2
	.global	PostPro_CopyYuv_Vc1
	.type	PostPro_CopyYuv_Vc1, %function
PostPro_CopyYuv_Vc1:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:g_RepairParam	@ tmp144,
	movt	r5, #:upper16:g_RepairParam	@ tmp144,
	movw	r4, #1144	@ tmp143,
	mov	r8, r1	@ VdhId, VdhId
	movw	r6, #12384	@ tmp147,
	mla	r4, r4, r1, r5	@ pRepairParam, tmp143, VdhId, tmp144
	movw	r1, #:lower16:78040	@ tmp145,
	movt	r1, #:upper16:78040	@ tmp145,
	mov	r5, r0	@ pVc1DecParam, pVc1DecParam
	movw	ip, #12388	@ tmp149,
	movw	lr, #:lower16:16382	@ D.30234,
	ldr	r7, [r0, r1]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	movt	lr, #:upper16:16382	@ D.30234,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	r7, [r4, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	mov	r7, #1	@ tmp159,
	ldr	r3, [r5, r6]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	mov	r6, #0	@ tmp160,
	str	r3, [r4, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	movw	r3, #12396	@ tmp151,
	ldr	r2, [r5, ip]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	ip, [r5, r3]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	ip, [r4, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	r2, r2, r7	@ D.30227, <variable>.mbwidth,
	str	r2, [r4, #24]	@ D.30227, <variable>.ImageWidth
	ldrh	r3, [r5, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	str	r7, [r4, #32]	@ tmp159, <variable>.IsFrame
	add	ip, r3, #15	@ tmp155, <variable>.DispPicHeight,
	str	r6, [r4, #36]	@ tmp160, <variable>.ImageCSP
	mov	r3, ip, asr #4	@ tmp156, tmp155,
	add	ip, r3, r7	@ tmp157, tmp156,
	and	r3, ip, lr	@ D.30234, tmp157, D.30234
	str	r3, [r4, #28]	@ D.30234, <variable>.ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp178,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp178,
	movw	r3, #:lower16:78096	@ tmp173,
	movt	r3, #:upper16:78096	@ tmp173,
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	mul	r1, r0, ip	@ tmp169, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r2, #84]	@ D.30246, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r7, [r4, #552]	@ tmp159, <variable>.ValidGroupNum
	strh	r6, [r4, #40]	@ movhi	@ tmp160, <variable>.StartMbn
	cmp	ip, r6	@ D.30246,
	sub	r2, r1, #1	@ tmp171, tmp169,
	strh	r2, [r4, #42]	@ movhi	@ tmp171, <variable>.EndMbn
	ldr	r3, [r5, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r7	@ D.30249, tmp159
	str	r7, [r4, #568]	@ tmp159, <variable>.FullRepair
	str	r6, [r4, #564]	@ tmp160, <variable>.Pic_type
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r4, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r7	@, tmp159
	mov	r1, r5	@, pVc1DecParam
	mov	r2, r6	@, tmp160
	mov	r3, r8	@, VdhId
	blx	ip	@ D.30246
	subs	r0, r0, #0	@ D.30249,,
	movne	r0, #1	@ D.30249
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vc1, .-PostPro_CopyYuv_Vc1
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	ip, [ip, #88]	@ D.30162, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	add	r6, r2, r2, asl #5	@, tmp143, VdhId.431, VdhId.431,
	movw	r3, #:lower16:g_DecReport	@ tmp145,
	cmp	ip, #0	@ D.30162,
	movt	r3, #:upper16:g_DecReport	@ tmp145,
	mov	r5, r2	@ VdhId.431, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, r3, r6, asl #4	@, pDecReport, tmp145, tmp143,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L275	@,
	mov	r1, r6	@, pDecReport
	blx	ip	@ D.30162
.L276:
	movw	r0, #:lower16:g_RepairParam	@ tmp151,
	movt	r0, #:upper16:g_RepairParam	@ tmp151,
	movw	r1, #1144	@ tmp149,
	mov	r2, r7	@, pDecParam
	mla	r1, r1, r5, r0	@, tmp149, VdhId.431, tmp151
	mov	r3, r6	@, pDecReport
	mov	r0, r4	@, VidStd
	bl	PostPro_GetRepairParam	@
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r4, r0	@ err_ratio,
	mov	r0, #22	@,
	mov	r2, r4	@, err_ratio
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L275:
	mov	r0, ip	@, D.30162
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #54	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	b	.L276	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.30321, %object
	.size	__func__.30321, 23
__func__.30321:
	.ascii	"PostPro_GetRepairParam\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"DecSliceNum(=%d) out of range!\012\000"
.LC1:
	.ascii	"DecSliceNum out of range!\012\000"
	.space	1
.LC2:
	.ascii	"line:%d! pRepairParam->ValidGroupNum > (MAX_UP_MSG_"
	.ascii	"SLICE_NUM - 1)\012\000"
	.space	1
.LC3:
	.ascii	"%s %d VidStd Err!\012\000"
	.space	1
.LC4:
	.ascii	"pRepairParam[0].MbGroup[i].EndMbn=%d,pRepairParam[0"
	.ascii	"].MbGroup[i].StartMbn=%d\012\000"
	.space	3
.LC5:
	.ascii	"total_mbs=%d,err_mbs=%d\012\000"
	.space	3
.LC6:
	.ascii	"pRepairParam->ImageWidth=%d,pRepairParam->ImageHeig"
	.ascii	"ht=%d\012\000"
	.space	2
.LC7:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC8:
	.ascii	"err_ratio=%d\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
