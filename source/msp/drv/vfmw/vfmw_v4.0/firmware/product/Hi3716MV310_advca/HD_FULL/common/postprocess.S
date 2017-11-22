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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
.LFB1914:
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
.LFB1915:
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
	ldr	ip, [ip, #84]	@ D.33270, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r6, [r4, #4]	@ <variable>.DispFramePhyAddr, <variable>.ImageAddr
	cmp	ip, r2	@ D.33270,
	ldr	r5, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r5, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r6, [r0, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r6, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r5, [r0, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r5, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	ldrh	r6, [r0, #164]	@ D.33256, <variable>.PicWidthInMb
	str	r6, [r4, #24]	@ D.33256, <variable>.ImageWidth
	ldrh	r5, [r0, #166]	@ D.33258, <variable>.PicHeightInMb
	str	r1, [r4, #32]	@ tmp153, <variable>.IsFrame
	str	r2, [r4, #36]	@ tmp154, <variable>.ImageCSP
	mul	r6, r6, r5	@ tmp158, D.33256, D.33258
	str	r5, [r4, #28]	@ D.33258, <variable>.ImageHeight
	movw	r5, #14660	@ tmp161,
	str	r1, [r4, #552]	@ tmp153, <variable>.ValidGroupNum
	strh	r2, [r4, #40]	@ movhi	@ tmp154, <variable>.StartMbn
	sub	r6, r6, #1	@ tmp160, tmp158,
	strh	r6, [r4, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r5, [r0, r5]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r1	@ D.33273, tmp153
	str	r1, [r4, #568]	@ tmp153, <variable>.FullRepair
	str	r2, [r4, #564]	@ tmp154, <variable>.Pic_type
	str	r5, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	ip	@ D.33270
	subs	r0, r0, #0	@ D.33273,,
	movne	r0, #1	@ D.33273
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1926:
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
	rsb	r4, r7, r8	@ pretmp.583, i, n
	mov	r5, #0	@ flag,
	tst	r4, #1	@ pretmp.583,
	mov	r3, r6	@ ivtmp.598, pDecReport
	mov	r1, r5	@ j, flag
	beq	.L13	@,
	cmp	r4, #0	@ pretmp.583,
	bls	.L14	@,
	ldrh	r3, [r6, #12]	@ D.34232, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r6, #16]	@ D.34234, <variable>.SliceMbRange
	cmp	r3, r2	@ D.34232, D.34234
	bls	.L16	@,
	ldrh	ip, [r6, #14]	@ D.34237, <variable>.SliceMbRange
	mov	r5, r1	@ flag, j
	strh	r2, [r6, #12]	@ movhi	@ D.34234, <variable>.SliceMbRange
	ldrh	r2, [r6, #18]	@, <variable>.SliceMbRange
	strh	r3, [r6, #16]	@ movhi	@ D.34232, <variable>.SliceMbRange
	strh	ip, [r6, #18]	@ movhi	@ D.34237, <variable>.SliceMbRange
	strh	r2, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
.L16:
	add	r3, r6, #4	@ ivtmp.598, pDecReport,
.L13:
	cmp	r4, r1	@ pretmp.583, j
	add	r2, r3, #4	@ tmp194, ivtmp.598,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L22	@,
.L12:
	ldrh	ip, [r3, #12]	@ D.34232, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r0, [r3, #16]	@ D.34234, <variable>.SliceMbRange
	cmp	ip, r0	@ D.34232, D.34234
	bls	.L11	@,
	ldrh	sl, [r3, #14]	@ D.34237, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	r0, [r3, #12]	@ movhi	@ D.34234, <variable>.SliceMbRange
	ldrh	r0, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.34232, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.34237, <variable>.SliceMbRange
	strh	r0, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L11:
	ldrh	r3, [r2, #12]	@ D.34232, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.34234, <variable>.SliceMbRange
	cmp	r3, ip	@ D.34232, D.34234
	bls	.L19	@,
	ldrh	r0, [r2, #14]	@ D.34237, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.34234, <variable>.SliceMbRange
	ldrh	ip, [r2, #18]	@, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.34232, <variable>.SliceMbRange
	strh	r0, [r2, #18]	@ movhi	@ D.34237, <variable>.SliceMbRange
	strh	ip, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
.L19:
	cmp	r4, r1	@ pretmp.583, j
	add	r3, r2, #4	@ ivtmp.598, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.598,
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
.LFB1925:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #3	@ tmp155,
	bhi	.L40	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.632, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.632,
	mov	r3, r1	@ ivtmp.647, pDecReport
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
	ldrh	r2, [r3, #12]	@ D.34171, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.34171, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L28	@,
	cmp	r2, r0	@ D.34171, curr_slice_end_mbn
	bgt	.L28	@,
	cmp	r2, sl	@ D.34171, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.34171, tmp176
	ble	.L30	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.34188, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.34171,
	rsb	r7, r4, r7	@ tmp187, D.34188, tmp185
	rsb	r4, r4, r8	@ tmp196, D.34188, tmp194
	add	sl, r6, sl, asl #2	@, tmp179, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp187, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp192, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp196, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp198, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp198, <variable>.ValidGroupNum
	bne	.L39	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.34171,
	bge	.L38	@,
.L39:
	ldr	r7, [r1, #8]	@ prephitmp.632, <variable>.DecSliceNum
.L30:
	sub	r4, r7, #1	@ temp.653, prephitmp.632,
	cmp	r4, ip	@ temp.653, i
	beq	.L41	@,
.L31:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.34171
.L28:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.647, ivtmp.647,
	cmp	ip, r7	@ i, prephitmp.632
	bls	.L32	@,
	mov	r3, #0	@ D.34165,
.L25:
	mov	r0, r3	@, D.34165
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L41:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.34205, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.34205,
	bge	.L31	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.34165,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.34205, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L25	@
.L38:
	ldr	r7, [r1, #8]	@ prephitmp.632, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L30	@
.L40:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.34165,
	b	.L25	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp155,
	bhi	.L59	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.677, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.677,
	mov	r3, r1	@ ivtmp.692, pDecReport
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
	ldrh	r2, [r3, #12]	@ D.34100, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.34100, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L47	@,
	cmp	r2, r0	@ D.34100, curr_slice_end_mbn
	bgt	.L47	@,
	cmp	r2, sl	@ D.34100, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.34100, tmp176
	ble	.L49	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.34117, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.34100,
	rsb	r7, r4, r7	@ tmp187, D.34117, tmp185
	rsb	r4, r4, r8	@ tmp196, D.34117, tmp194
	add	sl, r6, sl, asl #2	@, tmp179, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp187, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp192, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp196, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp198, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp198, <variable>.ValidGroupNum
	bne	.L58	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.34100,
	bge	.L57	@,
.L58:
	ldr	r7, [r1, #8]	@ prephitmp.677, <variable>.DecSliceNum
.L49:
	sub	r4, r7, #1	@ temp.698, prephitmp.677,
	cmp	r4, ip	@ temp.698, i
	beq	.L60	@,
.L50:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.34100
.L47:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.692, ivtmp.692,
	cmp	ip, r7	@ i, prephitmp.677
	bls	.L51	@,
	mov	r3, #0	@ D.34094,
.L44:
	mov	r0, r3	@, D.34094
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L60:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.34134, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.34134,
	bge	.L50	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.34094,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.34134, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L44	@
.L57:
	ldr	r7, [r1, #8]	@ prephitmp.677, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L49	@
.L59:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.34094,
	b	.L44	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L76	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.737, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.722, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.722,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.34029, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L72	@
.L66:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.722
	bhi	.L77	@,
.L72:
	ldrh	r2, [r3, #12]	@ D.34032, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.737, ivtmp.737,
	cmp	r2, r5	@ D.34032, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L66	@,
	cmp	r2, r4	@ D.34032, curr_slice_end_mbn
	bgt	.L66	@,
	cmp	r2, r8	@ D.34032, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.34032,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.34032
	mov	r7, r2	@ old_slice_start_mbn, D.34032
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L68	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L68	@,
	ldr	r2, [r0, #552]	@ D.34050, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.34050,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.34050,
	bgt	.L76	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.722, <variable>.DecSliceNum
.L68:
	sub	r2, r6, #1	@ temp.742, prephitmp.722,
	cmp	r2, ip	@ temp.742, i
	bne	.L66	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.34063, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.34063,
	bge	.L66	@,
	ldr	r3, [r0, #552]	@ temp.743, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.743,
	bgt	.L76	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.743,
	sub	fp, fp, #1	@ tmp209, D.34029,
	mov	r3, #0	@ D.34026,
	strh	r2, [ip, #40]	@ movhi	@ D.34063, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L63	@
.L77:
	mov	r3, #0	@ D.34026,
.L63:
	mov	r0, r3	@, D.34026
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L76:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.34026,
	b	.L63	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1922:
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
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.783, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.768, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.768,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33963, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L89	@
.L83:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.768
	bhi	.L94	@,
.L89:
	ldrh	r2, [r3, #12]	@ D.33966, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.783, ivtmp.783,
	cmp	r2, r5	@ D.33966, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L83	@,
	cmp	r2, r4	@ D.33966, curr_slice_end_mbn
	bgt	.L83	@,
	cmp	r2, r8	@ D.33966, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33966,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33966
	mov	r7, r2	@ old_slice_start_mbn, D.33966
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L85	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L85	@,
	ldr	r2, [r0, #552]	@ D.33984, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33984,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33984,
	bgt	.L93	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.768, <variable>.DecSliceNum
.L85:
	sub	r2, r6, #1	@ temp.788, prephitmp.768,
	cmp	r2, ip	@ temp.788, i
	bne	.L83	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33997, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33997,
	bge	.L83	@,
	ldr	r3, [r0, #552]	@ temp.789, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.789,
	bgt	.L93	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.789,
	sub	fp, fp, #1	@ tmp209, D.33963,
	mov	r3, #0	@ D.33960,
	strh	r2, [ip, #40]	@ movhi	@ D.33997, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L80	@
.L94:
	mov	r3, #0	@ D.33960,
.L80:
	mov	r0, r3	@, D.33960
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L93:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33960,
	b	.L80	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L110	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.829, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.814, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.814,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33897, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L106	@
.L100:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.814
	bhi	.L111	@,
.L106:
	ldrh	r2, [r3, #12]	@ D.33900, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.829, ivtmp.829,
	cmp	r2, r5	@ D.33900, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L100	@,
	cmp	r2, r4	@ D.33900, curr_slice_end_mbn
	bgt	.L100	@,
	cmp	r2, r8	@ D.33900, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33900,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33900
	mov	r7, r2	@ old_slice_start_mbn, D.33900
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L102	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L102	@,
	ldr	r2, [r0, #552]	@ D.33918, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33918,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33918,
	bgt	.L110	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.814, <variable>.DecSliceNum
.L102:
	sub	r2, r6, #1	@ temp.834, prephitmp.814,
	cmp	r2, ip	@ temp.834, i
	bne	.L100	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33931, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33931,
	bge	.L100	@,
	ldr	r3, [r0, #552]	@ temp.835, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.835,
	bgt	.L110	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.835,
	sub	fp, fp, #1	@ tmp209, D.33897,
	mov	r3, #0	@ D.33894,
	strh	r2, [ip, #40]	@ movhi	@ D.33931, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L97	@
.L111:
	mov	r3, #0	@ D.33894,
.L97:
	mov	r0, r3	@, D.33894
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L110:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33894,
	b	.L97	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp154, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp154,
	bhi	.L129	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp156,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r7, [r0, #568]	@ tmp156, <variable>.FullRepair
	str	r7, [r0, #552]	@ tmp156, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.868, <variable>.DecSliceNum
	cmp	r6, r7	@ prephitmp.868,
	add	r4, r1, r6, asl #2	@, tmp162, pDecReport, prephitmp.868,
	uxth	r9, r5	@ D.33814, total_mbn
	strh	r9, [r4, #14]	@ movhi	@ D.33814, <variable>.SliceMbRange
	strh	r9, [r4, #12]	@ movhi	@ D.33814, <variable>.SliceMbRange
	bne	.L130	@,
.L115:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.885, pDecReport
	add	fp, r5, sl	@ tmp246, total_mbn,
	mov	ip, #0	@ i,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	b	.L125	@
.L123:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.33825
.L118:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.885, ivtmp.885,
	cmp	ip, r6	@ i, prephitmp.868
	bhi	.L131	@,
.L125:
	ldrh	r2, [r3, #12]	@ D.33825, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33825, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L118	@,
	cmp	r2, r4	@ D.33825, curr_slice_end_mbn
	movle	r8, #0	@, tmp190
	movgt	r8, #1	@, tmp190
	cmp	r2, r7	@ D.33825, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp193, tmp190
	cmp	r8, #0	@ tmp193,
	bne	.L118	@,
	cmp	r2, sl	@ D.33825, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp194, old_slice_end_mbn,
	cmp	r8, r2	@ tmp194, D.33825
	beq	.L120	@,
	add	r7, r7, r7, lsr #31	@, tmp245, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp242, D.33825,
	cmp	r7, r8	@ tmp245, tmp242
	bge	.L120	@,
	ldr	r6, [r0, #552]	@ D.33846, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.33846,
	bgt	.L129	@,
	add	r6, r0, r6, asl #2	@, tmp199, pRepairParam, D.33846,
	sub	sl, sl, #100	@ tmp243, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp245, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp242, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.870, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp214, prephitmp.870,
	mov	r7, r8, asl #2	@ tmp215, tmp214,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp243, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp243, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.870, <variable>.ValidGroupNum
	add	r7, r6, #1	@ tmp223, prephitmp.870,
	str	r7, [r0, #552]	@ tmp223, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.868, <variable>.DecSliceNum
.L120:
	sub	r7, r6, #1	@ temp.890, prephitmp.868,
	cmp	r7, ip	@ temp.890, i
	bne	.L123	@,
	add	r7, r1, ip, asl #2	@, tmp226, pDecReport, i,
	ldrh	r7, [r7, #14]	@ temp.891, <variable>.SliceMbRange
	cmp	r7, fp	@ temp.891, tmp246
	bge	.L123	@,
	ldr	r3, [r0, #552]	@ temp.893, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.893,
	bgt	.L129	@,
	add	r2, r0, r3, asl #2	@, tmp230, pRepairParam, temp.893,
	sub	r9, r9, #1	@ tmp238, D.33814,
	mov	r3, #0	@ D.33811,
	strh	r7, [r2, #40]	@ movhi	@ temp.891, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp236, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp238, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp240, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp240, <variable>.ValidGroupNum
	b	.L114	@
.L131:
	mov	r3, #0	@ D.33811,
.L114:
	mov	r0, r3	@, D.33811
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L130:
	add	fp, r4, #6	@ tmp172, tmp171,
	sub	sl, r5, #10	@ tmp174, total_mbn,
	ldrh	ip, [fp, #4]	@ tmp173, <variable>.SliceMbRange
	cmp	ip, sl	@ tmp173, tmp174
	subge	sl, r9, #1	@ tmp179, D.33814,
	strgeh	sl, [fp, #4]	@ movhi	@ tmp179, <variable>.SliceMbRange
	b	.L115	@
.L129:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33811,
	mov	r0, r3	@, D.33811
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1919:
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
	bhi	.L177	@,
	ldr	sl, [r4, #24]	@ D.33675, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.33675
	uxtheq	fp, r6	@ prephitmp.927, total_mbn
	bne	.L179	@,
.L136:
	mov	r1, #0	@ tmp391,
	str	r1, [r4, #552]	@ tmp391, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp391, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.922, <variable>.DecSliceNum
	add	r9, r6, r8	@ tmp468, total_mbn,
	mov	r3, r5	@ ivtmp.947, pDecReport
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	sl, fp	@ movhi	@,
	add	r0, r5, ip, asl #2	@, tmp395, pDecReport, prephitmp.922,
	mov	r2, r0	@ tmp400, tmp395
	strh	fp, [r0, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L156	@
.L154:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.1022
.L149:
	add	r1, r1, #1	@ i.1025, i.1025,
	add	r3, r3, #4	@ ivtmp.947, ivtmp.947,
	cmp	ip, r1	@ prephitmp.922, i.1025
	bcc	.L180	@,
.L156:
	ldrh	r2, [r3, #12]	@ temp.1022, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.1022, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L149	@,
	cmp	r2, r0	@ temp.1022, curr_slice_end_mbn
	bgt	.L149	@,
	cmp	r8, r2	@ old_slice_end_mbn, temp.1022
	movgt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp409, old_slice_end_mbn,
	cmp	r2, sl	@ temp.1022, tmp409
	ble	.L151	@,
	ldr	sl, [r4, #552]	@ D.33761, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.33761,
	bgt	.L177	@,
	add	sl, r4, sl, asl #2	@, tmp411, pRepairParam, D.33761,
	add	r7, r7, r7, lsr #31	@, tmp417, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp424, temp.1022,
	sub	r8, r8, #100	@ tmp467, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp417, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp422, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp424, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.924, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp426, prephitmp.924,
	mov	r7, sl, asl #2	@ tmp427, tmp426,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp467, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp467, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.924, <variable>.ValidGroupNum
	add	r7, ip, #1	@ tmp435, prephitmp.924,
	str	r7, [r4, #552]	@ tmp435, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.922, <variable>.DecSliceNum
.L151:
	sub	r7, ip, #1	@ temp.1026, prephitmp.922,
	cmp	r7, r1	@ temp.1026, i.1025
	bne	.L154	@,
	add	r7, r5, r1, asl #2	@, tmp438, pDecReport, i.1025,
	ldrh	r7, [r7, #14]	@ D.33782, <variable>.SliceMbRange
	cmp	r7, r9	@ D.33782, tmp468
	bge	.L154	@,
	ldr	r3, [r4, #552]	@ temp.1027, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.1027,
	bgt	.L177	@,
	add	r1, r4, r3, asl #2	@, tmp442, pRepairParam, temp.1027,
	sub	fp, fp, #1	@ tmp450, prephitmp.927,
	mov	r0, #0	@ D.33674,
	strh	r7, [r1, #40]	@ movhi	@ D.33782, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp448, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp452, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp452, <variable>.ValidGroupNum
	b	.L134	@
.L180:
	mov	r0, #0	@ D.33674,
.L134:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L179:
	ldrh	ip, [r5, #12]	@, <variable>.SliceMbRange
	add	r2, sp, #24	@ ivtmp.966,,
	ldr	r9, [sp, #8]	@, %sfp
	add	r3, r2, #4	@ ivtmp.966, ivtmp.966,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.33675,
	strh	ip, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.34737, ivtmp.966,,
	ldrh	lr, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp471, ivtmp.966, D.34737
	cmp	r3, r0	@ ivtmp.966, D.34737
	sub	r1, r8, #4	@ tmp472, tmp471,
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp473, tmp472,,
	add	r2, r5, #4	@ ivtmp.965, pDecReport,
	beq	.L167	@,
	cmp	r1, #0	@ tmp473,
	beq	.L137	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.965, ivtmp.965,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.966, ivtmp.966,
	cmp	r3, r0	@ ivtmp.966, D.34737
	beq	.L167	@,
.L137:
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	add	fp, r2, #4	@ tmp474, ivtmp.965,
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp475, ivtmp.966,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r1, [fp, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.966, tmp475,
	ldrh	lr, [fp, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.966, D.34737
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, fp, #4	@ ivtmp.965, tmp474,
	bne	.L137	@,
.L167:
	add	r0, sp, #536	@,,
	movw	r2, #:lower16:-512	@ tmp204,
	movw	r3, #:lower16:-510	@ tmp208,
	movt	r2, #:upper16:-512	@ tmp204,
	movt	r3, #:upper16:-510	@ tmp208,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r1, [r0, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	fp, #:lower16:65534	@ prephitmp.929,
	ldrh	r9, [r0, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	fp, #:upper16:65534	@ prephitmp.929,
	and	fp, r1, fp	@ prephitmp.929, SliceMbRange_Tmp, prephitmp.929
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r9, #1	@ D.33686, SliceMbRange_Tmp,
	strh	fp, [r0, r2]	@ movhi	@ tmp14, SliceMbRange_Tmp
	strh	r9, [r0, r3]	@ movhi	@ D.33686, SliceMbRange_Tmp
	beq	.L139	@,
	mov	r0, #0	@ i,
	uxth	r7, sl	@, DoubleImageWidth
	sub	ip, sl, #2	@, DoubleImageWidth,
	str	r7, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ total_mbn, %sfp
	add	r8, sp, #28	@ ivtmp.953,,
	str	ip, [sp, #12]	@, %sfp
	mov	r7, r0	@ j, i
	mov	r6, r0	@ i, i
	b	.L158	@
.L182:
	mov	r0, fp	@, prephitmp.929
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	fp, r0	@ tmp228,
	mov	r0, r9	@, D.33686
	bl	__aeabi_uidiv	@
	ldmia	sp, {r3, r9}	@ phole ldm
	mov	r1, r9, lsr #1	@ mbsurplus0,,
	mov	r3, r3, lsr #1	@ mbsurplus1, tmp224,
	cmp	r0, fp	@ tmp231, tmp228
	beq	.L142	@,
	ldr	r2, [sp, #16]	@, %sfp
	add	r9, r5, r7, asl #2	@, tmp239, pDecReport, j,
	mov	ip, r9	@ tmp243, tmp239
	mul	fp, fp, r2	@ tmp233, tmp228,
	add	r2, r7, #1	@ j.973, j,
	cmp	r2, #127	@ j.973,
	uxth	fp, fp	@ D.33702,
	add	r1, fp, r1	@ tmp235, D.33702, mbsurplus0
	uxth	r1, r1	@ D.33704, tmp235
	strh	r1, [r9, #12]	@ movhi	@ D.33704, <variable>.SliceMbRange
	ldr	lr, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, lr, #1	@ tmp247, <variable>.ImageWidth,
	add	lr, fp, r9	@ tmp249, D.33702, tmp247
	strh	lr, [ip, #14]	@ movhi	@ tmp249, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r5, r7, asl #2	@, tmp253, pDecReport, j,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	fp, r5, r2, asl #2	@, tmp262, pDecReport, j.973,
	uxth	r3, r3	@ D.33713, mbsurplus1
	mul	r0, r0, ip	@ tmp259, tmp231,
	add	ip, r2, #1	@ j.976, j.973,
	cmp	ip, #128	@ j.976,
	add	r1, r1, r9	@ tmp257, D.33704, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp257, <variable>.SliceMbRange
	uxth	r0, r0	@ D.33712, tmp259
	add	r7, r3, r0	@ tmp264, D.33713, D.33712
	strh	r7, [fp, #14]	@ movhi	@ tmp264, <variable>.SliceMbRange
	beq	.L173	@,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.976,
	mov	r2, lr	@ tmp271, tmp253
	cmp	r7, #128	@ j,
	add	r1, r0, r9	@ tmp267, D.33712, <variable>.ImageWidth
	add	lr, r5, ip, asl #2	@, tmp275, pDecReport, j.976,
	uxth	fp, r1	@ D.33717, tmp267
	strh	fp, [r2, #20]	@ movhi	@ D.33717, <variable>.SliceMbRange
	add	r3, fp, r3	@ tmp277, D.33717, D.33713
	strh	r3, [lr, #14]	@ movhi	@ tmp277, <variable>.SliceMbRange
	beq	.L173	@,
.L144:
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.953, ivtmp.953,
	cmp	fp, r6	@, i
	bls	.L181	@,
.L146:
	ldrh	fp, [r8, #-4]	@ tmp459, SliceMbRange_Tmp
	ldrh	r0, [r8, #-2]	@ tmp462, SliceMbRange_Tmp
	bic	fp, fp, #1	@ tmp460, tmp459,
	strh	fp, [r8, #-4]	@ movhi	@ tmp3, SliceMbRange_Tmp
	orr	r9, r0, #1	@ D.33686, tmp462,
	strh	r9, [r8, #-2]	@ movhi	@ D.33686, SliceMbRange_Tmp
.L158:
	mov	r0, fp	@, prephitmp.929
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [sp, #4]	@, %sfp
	bls	.L140	@,
	mov	r0, r9	@, D.33686
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r1	@, tmp224
	mov	r3, r1	@ tmp224,
	bhi	.L182	@,
	mov	r0, fp	@, prephitmp.929
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	fp, r5, r7, asl #2	@, tmp322, pDecReport, j,
	add	r3, r7, #1	@ j.1002, j,
	ldr	lr, [sp, #4]	@, %sfp
	cmp	r3, #127	@ j.1002,
	mov	r2, fp	@ tmp326, tmp322
	mul	r7, sl, r0	@ tmp315, DoubleImageWidth,
	uxth	r0, r7	@ temp.995, tmp315
	add	ip, r0, lr, lsr #1	@, tmp318, temp.995,,
	uxth	ip, ip	@ temp.997, tmp318
	strh	ip, [fp, #12]	@ movhi	@ temp.997, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	fp, r1, #1	@ tmp330, <variable>.ImageWidth,
	add	r7, r0, fp	@ tmp332, temp.995, tmp330
	strh	r7, [r2, #14]	@ movhi	@ tmp332, <variable>.SliceMbRange
	bhi	.L173	@,
	add	r7, r3, #1	@ j, j.1002,
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp343, pDecReport, j.1002,
	cmp	r7, #128	@ j,
	add	r0, ip, r1	@ tmp340, temp.997, <variable>.ImageWidth
	strh	r0, [r2, #16]	@ movhi	@ tmp340, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.33686, <variable>.SliceMbRange
	bne	.L144	@,
.L173:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
	mov	lr, #0	@ movhi	@,
	mov	r9, #1	@ tmp454,
	strh	lr, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r5, #8]	@ tmp454, <variable>.DecSliceNum
	uxth	fp, r6	@ prephitmp.927, total_mbn
	sub	r8, fp, #1	@ tmp457, prephitmp.927,
	strh	r8, [r5, #14]	@ movhi	@ tmp457, <variable>.SliceMbRange
.L157:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L136	@
.L140:
	mov	r0, r9	@, D.33686
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [sp, #12]	@, %sfp
	cmp	ip, r1	@, tmp349
	mov	r2, r1	@ tmp349,
	bls	.L145	@,
	add	lr, r5, r7, asl #2	@, tmp354, pDecReport, j,
	mov	r0, r9	@, D.33686
	mov	r1, sl	@, DoubleImageWidth
	strh	fp, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #0]	@,
	add	r3, r7, #1	@ j.1016, j,
	add	r1, r5, r7, asl #2	@, tmp366, pDecReport, j,
	cmp	r3, #127	@ j.1016,
	ubfx	r2, r2, #1, #16	@ temp.1014, tmp349,,
	mul	fp, sl, r0	@ tmp362, DoubleImageWidth,
	uxth	r0, fp	@ temp.1013, tmp362
	add	r9, r2, r0	@ tmp368, temp.1014, temp.1013
	strh	r9, [r1, #14]	@ movhi	@ tmp368, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.1016,
	cmp	r7, #128	@ j,
	add	r3, r5, r3, asl #2	@, tmp379, pDecReport, j.1016,
	add	r9, r0, ip	@ tmp371, temp.1013, <variable>.ImageWidth
	uxth	r0, r9	@ temp.1019, tmp371
	strh	r0, [r1, #16]	@ movhi	@ temp.1019, <variable>.SliceMbRange
	add	r1, r0, r2	@ tmp381, temp.1019, temp.1014
	strh	r1, [r3, #14]	@ movhi	@ tmp381, <variable>.SliceMbRange
	beq	.L173	@,
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.953, ivtmp.953,
	cmp	fp, r6	@, i
	bhi	.L146	@,
.L181:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
.L139:
	uxth	fp, r6	@ prephitmp.927, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L157	@
.L145:
	add	r2, r5, r7, asl #2	@, tmp385, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	fp, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.33686, <variable>.SliceMbRange
	bls	.L144	@,
	b	.L173	@
.L142:
	mul	fp, sl, r0	@ tmp280, DoubleImageWidth, tmp231
	add	r2, r7, #1	@ j.985, j,
	add	lr, r5, r7, asl #2	@, tmp286, pDecReport, j,
	cmp	r2, #127	@ j.985,
	mov	ip, lr	@ tmp292, tmp286
	uxth	r0, fp	@ temp.981, tmp280
	add	r3, r0, r3	@ tmp289, temp.981, mbsurplus1
	add	r7, r0, r1	@ tmp282, temp.981, mbsurplus0
	uxth	r3, r3	@ D.33723, tmp289
	uxth	r1, r7	@ temp.983, tmp282
	strh	r3, [lr, #14]	@ movhi	@ D.33723, <variable>.SliceMbRange
	strh	r1, [lr, #12]	@ movhi	@ temp.983, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.985,
	cmp	r7, #128	@ j,
	add	r2, r5, r2, asl #2	@, tmp304, pDecReport, j.985,
	add	lr, r1, r0	@ tmp301, temp.983, <variable>.ImageWidth
	strh	lr, [ip, #16]	@ movhi	@ tmp301, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	ip, r3, r1	@ tmp308, D.33723, <variable>.ImageWidth
	strh	ip, [r2, #14]	@ movhi	@ tmp308, <variable>.SliceMbRange
	bne	.L144	@,
	b	.L173	@
.L177:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.33674,
	b	.L134	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp203,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #1124]	@ tmp203, <variable>.ValidGroupNum
	add	r6, r1, #572	@ D.33394, pRepairParam,
	str	r3, [r1, #552]	@ tmp203, <variable>.ValidGroupNum
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L184	@
.L195:
	.word	.L185
	.word	.L186
	.word	.L187
	.word	.L188
	.word	.L184
	.word	.L189
	.word	.L190
	.word	.L184
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L194
.L194:
	ldr	r9, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	mov	r3, #0	@ tmp379,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	r9, [r4, #4]	@ <variable>.image_curr_rcn_addr, <variable>.ImageAddr
	ldr	ip, [r2, #3116]	@ <variable>.image_curr_rcn_addr, <variable>.image_curr_rcn_addr
	str	ip, [r4, #8]	@ <variable>.image_curr_rcn_addr, <variable>.Image2DAddr
	mov	ip, #1	@ tmp378,
	ldr	lr, [r2, #3128]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	lr, [r4, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r2, [r2, #3132]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	str	r2, [r4, #20]	@ <variable>.CurrPmvAddr, <variable>.CurrPmvAddr
	ldr	r9, [r5, #2784]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r9, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r5, #2788]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	ip, [r4, #32]	@ tmp378, <variable>.IsFrame
	str	r3, [r4, #564]	@ tmp379, <variable>.Pic_type
	str	lr, [r4, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	str	r3, [r4, #36]	@ tmp379, <variable>.ImageCSP
	ldr	r2, [r5, #3140]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetVp8MbGroup	@
.L214:
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r1, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r3, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	r9, r0, r1	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L224	@,
	mov	r5, #0	@ err_mbs,
	mov	r8, r4	@ ivtmp.1077, pRepairParam
	mov	sl, r5	@ i.1097, err_mbs
.L225:
	bl	vfmw_dprint_nothing	@
	ldrsh	r3, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r1, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	sl, sl, #1	@ i.1097, i.1097,
	ldrsh	r2, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r0, r3, #1	@ tmp386, <variable>.EndMbn,
	cmp	r1, sl	@ <variable>.ValidGroupNum, i.1097
	add	r8, r8, #4	@ ivtmp.1077, ivtmp.1077,
	rsb	ip, r2, r0	@ tmp388, <variable>.StartMbn, tmp386
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp388
	bgt	.L225	@,
.L224:
	ldr	lr, [r4, #1124]	@ D.33629, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.33629,
	ble	.L226	@,
	ldrsh	ip, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1106,
	ldrsh	r1, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1106, D.33629
	add	r0, ip, r2	@ tmp391, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp403, D.33629,
	rsb	ip, r1, r0	@ tmp393, <variable>.StartMbn, tmp391
	and	r3, r3, r2	@ tmp405, tmp403,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp393
	add	r6, r6, #4	@ ivtmp.1071, D.33394,
	beq	.L226	@,
	cmp	r3, #0	@ tmp405,
	beq	.L227	@,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1106,
	ldrsh	ip, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1106, D.33629
	add	r1, r0, #1	@ tmp435, <variable>.EndMbn,
	add	r6, r6, #4	@ ivtmp.1071, ivtmp.1071,
	rsb	r3, ip, r1	@ tmp437, <variable>.StartMbn, tmp435
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp437
	beq	.L226	@,
.L227:
	add	r3, r6, #4	@ tmp407, ivtmp.1071,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1106, i.1106,
	ldrsh	r6, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp424, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp426, <variable>.StartMbn, tmp424
	cmp	r2, lr	@ i.1106, D.33629
	add	r1, r6, #1	@ tmp431, <variable>.EndMbn,
	rsb	r6, r0, r1	@ tmp433, <variable>.StartMbn, tmp431
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp426
	add	r5, r5, r6	@ err_mbs, err_mbs, tmp433
	add	r6, r3, #4	@ ivtmp.1071, tmp407,
	bne	.L227	@,
.L226:
	cmp	r9, #0	@ total_mbs,
	beq	.L229	@,
	mov	lr, #100	@ tmp395,
	mov	r1, r9	@, total_mbs
	mul	r0, lr, r5	@, tmp395, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1107,
	bic	r9, r0, r0, asr #31	@ err_ratio, err_ratio.1107
.L229:
	mov	r2, #0	@ tmp399,
	str	r2, [r7, #8]	@ tmp399, <variable>.DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r9	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L184:
	bl	vfmw_dprint_nothing	@
	b	.L214	@
.L185:
	ldr	r9, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r2, r2, r9, asl #2	@, tmp209, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r0, [r2, #308]	@ tmp211, <variable>.ImgPhyAddr
	str	r0, [r1, #4]	@ tmp211, <variable>.ImageAddr
	ldr	r1, [r5, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r4, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r3, [r5, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, <variable>.img_idc
	add	lr, r5, r1, asl #2	@, tmp217, pDecParam, ref_img_idc,
	ldr	ip, [lr, #308]	@ tmp219, <variable>.ImgPhyAddr
	str	ip, [r4, #16]	@ tmp219, <variable>.RefImageAddr
	ldr	r9, [r5, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	r2, r9, #206	@ tmp220, <variable>.CurrPicPmvIdc,
	ldr	r0, [r5, r2, asl #2]	@ tmp222, <variable>.PmvPhyAddr
	str	r0, [r4, #20]	@ tmp222, <variable>.CurrPmvAddr
	ldr	r3, [r5, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r3, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	lr, [r5, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	lr, [r4, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	ip, [r5, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r9, ip, #1	@ tmp226, <variable>.pic_structure
	movcc	r9, #0	@ tmp226
	str	r9, [r4, #32]	@ tmp226, <variable>.IsFrame
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r0, r2, #1	@ tmp228, <variable>.chroma_format_idc
	movcc	r0, #0	@ tmp228
	str	r0, [r4, #36]	@ tmp228, <variable>.ImageCSP
	ldr	lr, [r5, #1116]	@ D.33422, <variable>.ApcSize
	cmp	lr, #0	@ D.33422,
	beq	.L196	@,
	ldr	r3, [r5, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, ref_img_idc
	moveq	r3, #0	@ i,
	beq	.L198	@,
	tst	lr, #1	@ D.33422,
	mov	r2, r5	@ ivtmp.1088, pDecParam
	mov	r3, #0	@ i,
	bne	.L199	@,
	ldr	r9, [r5, #1324]	@ D.33416, <variable>.RefPicFsId
	mov	r3, #1	@ i,
	add	r2, r5, #4	@ ivtmp.1088, pDecParam,
	cmp	r9, r1	@ D.33416, ref_img_idc
	bne	.L199	@,
	b	.L198	@
.L200:
	ldr	ip, [r2, #1324]	@ D.33416, <variable>.RefPicFsId
	add	r2, r0, #4	@ ivtmp.1088, tmp416,
	cmp	ip, r1	@ D.33416, ref_img_idc
	beq	.L198	@,
	ldr	ip, [r0, #1324]	@ D.33416, <variable>.RefPicFsId
	add	r3, r3, #1	@ i, i,
	cmp	ip, r1	@ D.33416, ref_img_idc
	beq	.L198	@,
.L199:
	add	r3, r3, #1	@ i, i,
	add	r0, r2, #4	@ tmp416, ivtmp.1088,
	cmp	lr, r3	@ D.33422, i
	bhi	.L200	@,
.L196:
	ldr	r2, [r5, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r2, #0	@ <variable>.mb_adaptive_frame_field_flag,
	beq	.L202	@,
	ldrb	r0, [r5, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	r2, r0, #1	@ prephitmp.1053, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1053
.L202:
	ldrsb	r9, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r9, #0	@ <variable>.NewPicFlag,
	streq	r9, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	beq	.L204	@,
	mov	r0, r4	@, pRepairParam
	mov	r1, r7	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
.L204:
	ldr	r2, [r4, #4]	@ D.33433, <variable>.ImageAddr
	ldr	ip, [r4, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, ip	@ D.33433, <variable>.RefImageAddr
	beq	.L258	@,
.L205:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.1091, <variable>.pic_structure
	cmp	r3, #0	@ temp.1091,
	beq	.L255	@,
	cmp	r3, #1	@ temp.1091,
	beq	.L255	@,
	cmp	r3, #2	@ temp.1091,
	beq	.L255	@,
	cmp	r3, #3	@ temp.1091,
	bne	.L211	@,
	mov	r3, #0	@ tmp243,
.L255:
	str	r3, [r4, #564]	@ tmp243, <variable>.Pic_type
.L211:
	ldr	r2, [r5, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L214	@
.L186:
	movw	r8, #:lower16:78040	@ tmp334,
	movt	r8, #:upper16:78040	@ tmp334,
	movw	r3, #12384	@ tmp336,
	movw	ip, #12388	@ tmp338,
	ldr	r9, [r2, r8]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	mov	r8, #0	@ tmp351,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	r9, [r4, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	movw	r9, #12396	@ tmp340,
	ldr	lr, [r2, r3]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	str	lr, [r4, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	ldr	r2, [r2, ip]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	r3, [r5, r9]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r3, [r4, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r5, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	ip, lr, #1	@ tmp343, <variable>.mbwidth,
	str	ip, [r4, #24]	@ tmp343, <variable>.ImageWidth
	ldrh	r2, [r5, #80]	@ <variable>.mbheight, <variable>.mbheight
	add	r9, r2, #1	@ tmp345, <variable>.mbheight,
	str	r9, [r4, #28]	@ tmp345, <variable>.ImageHeight
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ D.33573, <variable>.fcm
	str	r8, [r4, #36]	@ tmp351, <variable>.ImageCSP
	cmp	r3, r8	@ D.33573,
	cmpne	r3, #2	@, D.33573,
	movne	lr, #0	@, tmp350
	moveq	lr, #1	@, tmp350
	str	lr, [r4, #32]	@ tmp350, <variable>.IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	ip, [r4, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldrb	r1, [r5, #68]	@ zero_extendqisi2	@ <variable>.ref_pic_type, <variable>.ref_pic_type
	cmp	ip, #1	@ <variable>.IsFrame,
	streq	r8, [r4, #564]	@ tmp351, <variable>.Pic_type
	and	r0, r1, #3	@ tmp353, <variable>.ref_pic_type,
	str	r0, [r4, #556]	@ tmp353, <variable>.rpr_ref_pic_type
	beq	.L221	@,
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.fcm, <variable>.fcm
	cmp	r0, #3	@ <variable>.fcm,
	beq	.L259	@,
.L221:
	movw	ip, #:lower16:78096	@ tmp359,
	movt	ip, #:upper16:78096	@ tmp359,
	ldr	r2, [r5, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L214	@
.L187:
	ldr	r1, [r2, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	movw	ip, #14588	@ tmp260,
	mov	lr, #0	@ tmp267,
	mov	r0, r4	@, pRepairParam
	str	r1, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r1, r7	@, pDecReport
	ldr	r9, [r2, ip]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r9, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	mov	r9, #1	@ tmp266,
	ldr	r2, [r2, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r5, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r3, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	movw	r3, #14660	@ tmp269,
	ldrh	ip, [r5, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r2, [r5, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r9, [r4, #32]	@ tmp266, <variable>.IsFrame
	str	lr, [r4, #564]	@ tmp267, <variable>.Pic_type
	str	r2, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r4, #36]	@ tmp267, <variable>.ImageCSP
	ldr	ip, [r5, r3]	@ <variable>.Compress_en,
	str	ip, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L214	@
.L188:
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r2, #0	@ tmp253,
	str	r1, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	lr, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	lr, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r3, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r3, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r5, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	ip, [r4, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	r9, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r9, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r0, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r0, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r2, [r4, #36]	@ tmp253, <variable>.ImageCSP
	cmp	r1, #3	@ <variable>.PictureStructure,
	movne	lr, #0	@, tmp252
	moveq	lr, #1	@, tmp252
	str	lr, [r4, #32]	@ tmp252, <variable>.IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.1092, <variable>.PictureStructure
	cmp	r3, #1	@ temp.1092,
	beq	.L256	@,
	cmp	r3, #2	@ temp.1092,
	beq	.L256	@,
	cmp	r3, #3	@ temp.1092,
	streq	r2, [r4, #564]	@ tmp253, <variable>.Pic_type
.L216:
	movw	r9, #45316	@ tmp257,
	mov	r0, r4	@, pRepairParam
	ldr	r2, [r5, r9]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L214	@
.L189:
	ldr	r2, [r2, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp331,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	r2, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r2, #1	@ tmp330,
	ldr	r9, [r5, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r9, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r5, #148]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r4, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	ldr	ip, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r9, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r2, [r4, #32]	@ tmp330, <variable>.IsFrame
	str	lr, [r4, #564]	@ tmp331, <variable>.Pic_type
	str	r9, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r4, #36]	@ tmp331, <variable>.ImageCSP
	ldr	r3, [r5, #156]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L214	@
.L190:
	movw	ip, #14440	@ tmp271,
	add	r3, ip, #12	@ tmp272, tmp272,
	ldr	lr, [r2, ip]	@ D.33491, <variable>.CurPicAddr
	mov	r2, #0	@ tmp282,
	str	lr, [r1, #4]	@ D.33491, <variable>.ImageAddr
	ldr	r8, [r5, r3]	@ <variable>.rcn_address, <variable>.rcn_address
	str	r8, [r1, #8]	@ <variable>.rcn_address, <variable>.Image2DAddr
	movw	r1, #14432	@ tmp274,
	ldr	r8, [r5, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	add	sl, r1, #12	@ tmp276, tmp276,
	str	r8, [r4, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	ldr	r1, [r5, sl]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r1, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	ip, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	ip, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	sl, r3, lsr #1	@ tmp293, <variable>.PicHeightInMb,
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	str	r2, [r4, #36]	@ tmp282, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp281
	moveq	r0, #1	@, tmp281
	str	r0, [r4, #32]	@ tmp281, <variable>.IsFrame
	ldr	r9, [r7, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r8, [r6, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	add	lr, r9, lr	@ tmp284, <variable>.ImgStride, D.33491
	str	lr, [r6, #4]	@ tmp284, <variable>.ImageAddr
	ldr	lr, [r7, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	mov	r9, #9	@ tmp288,
	str	r3, [r6, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r0, [r6, #32]	@ tmp281, <variable>.IsFrame
	mul	r3, r9, lr	@ tmp286, tmp288, <variable>.ImgStride
	str	ip, [r6, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	str	r2, [r6, #36]	@ tmp282, <variable>.ImageCSP
	mla	r0, sl, r3, r1	@ tmp296, tmp293, tmp286, <variable>.CurPmvAddr
	str	r0, [r6, #20]	@ tmp296, <variable>.CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.1096, <variable>.PicStruct
	cmp	r3, #3	@ temp.1096,
	streq	r2, [r4, #564]	@ tmp282, <variable>.Pic_type
	beq	.L219	@,
	cmp	r3, #1	@ temp.1096,
	streq	r3, [r4, #564]	@ temp.1096, <variable>.Pic_type
.L219:
	movw	lr, #14868	@ tmp303,
	mov	r0, r4	@, pRepairParam
	ldr	r2, [r5, lr]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L214	@
.L191:
	ldr	ip, [r2, #56]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	lr, #0	@ tmp311,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	ip, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp310,
	ldr	r2, [r2, #52]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r3, [r5, #76]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r3, [r4, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	r3, #11348	@ tmp313,
	ldr	r9, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r9, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r5, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r4, #32]	@ tmp310, <variable>.IsFrame
	str	lr, [r4, #564]	@ tmp311, <variable>.Pic_type
	str	r2, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r4, #36]	@ tmp311, <variable>.ImageCSP
	ldr	r9, [r5, r3]	@ <variable>.Compress_en,
	str	r9, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L214	@
.L192:
	ldr	ip, [r2, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r3, #0	@ tmp321,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	ip, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	ip, #1	@ tmp320,
	ldr	r2, [r2, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r9, [r5, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	str	r9, [r4, #20]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvAddr
	movw	r9, #11344	@ tmp323,
	ldr	lr, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldr	r2, [r5, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r4, #32]	@ tmp320, <variable>.IsFrame
	str	r3, [r4, #564]	@ tmp321, <variable>.Pic_type
	str	r2, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r3, [r4, #36]	@ tmp321, <variable>.ImageCSP
	ldr	lr, [r5, r9]	@ <variable>.Compress_en,
	str	lr, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L214	@
.L193:
	ldr	r9, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mov	r8, #0	@ tmp368,
	mov	r0, r1	@, pRepairParam
	mov	r1, r7	@, pDecReport
	str	r9, [r4, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	mov	r9, #1	@ tmp367,
	ldr	lr, [r2, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	lr, [r4, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r3, [r2, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r3, [r4, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	ip, [r2, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	ip, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r2, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	lr, [r5, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r9, [r4, #32]	@ tmp367, <variable>.IsFrame
	str	r8, [r4, #36]	@ tmp368, <variable>.ImageCSP
	str	lr, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r8, [r4, #564]	@ tmp368, <variable>.Pic_type
	str	r8, [r4, #556]	@ tmp368, <variable>.rpr_ref_pic_type
	ldr	r3, [r5, #196]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L214	@
.L256:
	str	r3, [r4, #564]	@ temp.1092, <variable>.Pic_type
	b	.L216	@
.L198:
	add	r1, r3, #312	@ tmp230, i,
	add	r3, r1, #2	@ tmp230, tmp230,
	ldr	lr, [r5, r3, asl #2]	@ tmp232, <variable>.RefPicType
	str	lr, [r4, #556]	@ tmp232, <variable>.rpr_ref_pic_type
	b	.L196	@
.L258:
	ldr	ip, [r5, #820]	@ D.33442, <variable>.ImgSlotNum
	cmp	ip, #0	@ D.33442,
	beq	.L205	@,
	ldr	r3, [r5, #308]	@ D.33438, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.33433, D.33438
	bne	.L206	@,
	tst	ip, #1	@ D.33442,
	mov	r1, r5	@ ivtmp.1083, pDecParam
	mov	r0, #0	@ i.1090,
	bne	.L208	@,
	ldr	r3, [r5, #312]	@ D.33438, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1090,
	add	r1, r5, #4	@ ivtmp.1083, pDecParam,
	cmp	r3, r2	@ D.33438, D.33433
	beq	.L208	@,
	b	.L206	@
.L250:
	ldr	r3, [lr, #312]	@ D.33438, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.33438, D.33433
	bne	.L206	@,
.L208:
	add	r3, r0, #1	@ tmp412, i.1090,
	add	lr, r1, #4	@ tmp411, ivtmp.1083,
	cmp	ip, r3	@ D.33442, tmp412
	add	r0, r3, #1	@ i.1090, tmp412,
	bls	.L205	@,
	ldr	r3, [r1, #312]	@ D.33438, <variable>.ImgPhyAddr
	add	r1, lr, #4	@ ivtmp.1083, tmp411,
	cmp	r3, r2	@ D.33438, D.33433
	beq	.L250	@,
.L206:
	str	r3, [r4, #16]	@ D.33438, <variable>.RefImageAddr
	b	.L205	@
.L259:
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.33587, <variable>.curparity
	cmp	r3, #0	@ D.33587,
	bne	.L222	@,
.L257:
	add	r1, r3, #1	@ tmp358, tmp358,
	str	r1, [r4, #564]	@ tmp358, <variable>.Pic_type
	b	.L221	@
.L222:
	cmp	r3, #1	@ D.33587,
	bne	.L221	@,
	b	.L257	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1927:
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
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #:lower16:g_RepairParam	@ tmp142,
	movt	r6, #:upper16:g_RepairParam	@ tmp142,
	movw	r5, #1144	@ tmp141,
	mov	r7, r0	@ pVp6DecParam, pVp6DecParam
	ldr	r0, [r0, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	mla	r5, r5, r1, r6	@ pRepairParam, tmp141, VdhId, tmp142
	mov	r4, r1	@ VdhId, VdhId
	mov	r6, #0	@ tmp150,
	mov	r8, #1	@ tmp149,
	str	r0, [r5, #4]	@ <variable>.image_curr_recon_addr, <variable>.ImageAddr
	ldr	r2, [r7, #172]	@ <variable>.image_curr_recon_addr, <variable>.image_curr_recon_addr
	str	r2, [r5, #8]	@ <variable>.image_curr_recon_addr, <variable>.Image2DAddr
	ldr	r1, [r7, #180]	@ <variable>.image_last_ref_addr, <variable>.image_last_ref_addr
	str	r1, [r5, #16]	@ <variable>.image_last_ref_addr, <variable>.RefImageAddr
	ldr	r3, [r7, #184]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r3, [r5, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r7, #52]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r5, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	ip, [r7, #54]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r8, [r5, #32]	@ tmp149, <variable>.IsFrame
	str	r6, [r5, #36]	@ tmp150, <variable>.ImageCSP
	str	ip, [r5, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r1, [r5, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp166,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp166,
	str	r6, [r5, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	mul	r3, r1, r2	@ tmp158, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r0, #84]	@ D.33342, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r8, [r5, #552]	@ tmp149, <variable>.ValidGroupNum
	strh	r6, [r5, #40]	@ movhi	@ tmp150, <variable>.StartMbn
	cmp	ip, r6	@ D.33342,
	sub	r0, r3, #1	@ tmp160, tmp158,
	strh	r0, [r5, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r3, [r7, #196]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r8	@ D.33345, tmp149
	str	r8, [r5, #568]	@ tmp149, <variable>.FullRepair
	str	r6, [r5, #564]	@ tmp150, <variable>.Pic_type
	str	r3, [r5, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r6, [r5, #556]	@ tmp150, <variable>.rpr_ref_pic_type
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, r7	@, pVp6DecParam
	mov	r2, r6	@, tmp150
	mov	r3, r4	@, VdhId
	mov	r0, #10	@,
	blx	ip	@ D.33342
	subs	r0, r0, #0	@ D.33345,,
	movne	r0, #1	@ D.33345
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vp6, .-PostPro_CopyYuv_Vp6
	.align	2
	.global	PostPro_CopyYuv_Vc1
	.type	PostPro_CopyYuv_Vc1, %function
PostPro_CopyYuv_Vc1:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r7, #:lower16:g_RepairParam	@ tmp142,
	movt	r7, #:upper16:g_RepairParam	@ tmp142,
	movw	r6, #1144	@ tmp141,
	movw	r5, #:lower16:78040	@ tmp143,
	movt	r5, #:upper16:78040	@ tmp143,
	mla	r6, r6, r1, r7	@ pRepairParam, tmp141, VdhId, tmp142
	ldr	r2, [r0, r5]	@ <variable>.ystaddr_1d, <variable>.ystaddr_1d
	mov	r4, r1	@ VdhId, VdhId
	movw	r1, #12384	@ tmp145,
	mov	r7, r0	@ pVc1DecParam, pVc1DecParam
	mov	r8, #1	@ tmp159,
	movw	lr, #:lower16:16382	@ tmp158,
	movt	lr, #:upper16:16382	@ tmp158,
	mov	r5, #0	@ tmp160,
	str	r2, [r6, #4]	@ <variable>.ystaddr_1d, <variable>.ImageAddr
	movw	r2, #12396	@ tmp149,
	ldr	r3, [r0, r1]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.CurFrmImgLuma2dPhyAddr
	movw	r0, #12388	@ tmp147,
	str	r3, [r6, #8]	@ <variable>.CurFrmImgLuma2dPhyAddr, <variable>.Image2DAddr
	ldr	ip, [r7, r0]	@ <variable>.FwdRefAddr, <variable>.FwdRefAddr
	str	ip, [r6, #16]	@ <variable>.FwdRefAddr, <variable>.RefImageAddr
	ldr	r1, [r7, r2]	@ <variable>.CurrColmbAddr, <variable>.CurrColmbAddr
	str	r1, [r6, #20]	@ <variable>.CurrColmbAddr, <variable>.CurrPmvAddr
	ldrh	r3, [r7, #78]	@ <variable>.mbwidth, <variable>.mbwidth
	add	r0, r3, r8	@ tmp152, <variable>.mbwidth,
	str	r0, [r6, #24]	@ tmp152, <variable>.ImageWidth
	ldrh	ip, [r7, #76]	@ <variable>.DispPicHeight, <variable>.DispPicHeight
	str	r8, [r6, #32]	@ tmp159, <variable>.IsFrame
	add	r2, ip, #15	@ tmp154, <variable>.DispPicHeight,
	str	r5, [r6, #36]	@ tmp160, <variable>.ImageCSP
	mov	r1, r2, asr #4	@ tmp155, tmp154,
	add	r3, r1, r8	@ tmp156, tmp155,
	and	r0, r3, lr	@ tmp158, tmp156, tmp158
	str	r0, [r6, #28]	@ tmp158, <variable>.ImageHeight
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r6, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r0, [r6, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp177,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp177,
	movw	r3, #:lower16:78096	@ tmp172,
	movt	r3, #:upper16:78096	@ tmp172,
	str	r5, [r6, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	mul	r1, r0, ip	@ tmp168, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	ip, [r2, #84]	@ D.33310, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r8, [r6, #552]	@ tmp159, <variable>.ValidGroupNum
	strh	r5, [r6, #40]	@ movhi	@ tmp160, <variable>.StartMbn
	cmp	ip, r5	@ D.33310,
	sub	r2, r1, #1	@ tmp170, tmp168,
	strh	r2, [r6, #42]	@ movhi	@ tmp170, <variable>.EndMbn
	ldr	r3, [r7, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r8	@ D.33313, tmp159
	str	r8, [r6, #568]	@ tmp159, <variable>.FullRepair
	str	r5, [r6, #564]	@ tmp160, <variable>.Pic_type
	str	r3, [r6, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r5, [r6, #556]	@ tmp160, <variable>.rpr_ref_pic_type
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r8	@, tmp159
	mov	r1, r7	@, pVc1DecParam
	mov	r2, r5	@, tmp160
	mov	r3, r4	@, VdhId
	blx	ip	@ D.33310
	subs	r0, r0, #0	@ D.33313,,
	movne	r0, #1	@ D.33313
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_CopyYuv_Vc1, .-PostPro_CopyYuv_Vc1
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	add	r6, r2, r2, asl #5	@, tmp143, VdhId.498, VdhId.498,
	movw	ip, #:lower16:g_DecReport	@ tmp145,
	movt	ip, #:upper16:g_DecReport	@ tmp145,
	ldr	r3, [r3, #88]	@ D.33229, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r5, r2	@ VdhId.498, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, ip, r6, asl #4	@, pDecReport, tmp145, tmp143,
	cmp	r3, #0	@ D.33229,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L271	@,
	mov	r1, r6	@, pDecReport
	blx	r3	@ D.33229
.L272:
	movw	r0, #:lower16:g_RepairParam	@ tmp150,
	movt	r0, #:upper16:g_RepairParam	@ tmp150,
	movw	r1, #1144	@ tmp148,
	mov	r2, r7	@, pDecParam
	mla	r1, r1, r5, r0	@, tmp148, VdhId.498, tmp150
	mov	r3, r6	@, pDecReport
	mov	r0, r4	@, VidStd
	bl	PostPro_GetRepairParam	@
	mov	r4, r0	@ err_ratio,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L271:
	bl	vfmw_dprint_nothing	@
	b	.L272	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
