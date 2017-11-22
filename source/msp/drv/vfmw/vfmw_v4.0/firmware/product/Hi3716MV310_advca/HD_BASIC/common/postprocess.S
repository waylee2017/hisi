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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
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
	ldr	ip, [ip, #84]	@ D.32904, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r6, [r4, #4]	@ <variable>.DispFramePhyAddr, <variable>.ImageAddr
	cmp	ip, r2	@ D.32904,
	ldr	r5, [r0, r5]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r5, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r6, [r0, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r6, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	r5, [r0, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	r5, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	ldrh	r6, [r0, #164]	@ D.32890, <variable>.PicWidthInMb
	str	r6, [r4, #24]	@ D.32890, <variable>.ImageWidth
	ldrh	r5, [r0, #166]	@ D.32892, <variable>.PicHeightInMb
	str	r1, [r4, #32]	@ tmp153, <variable>.IsFrame
	str	r2, [r4, #36]	@ tmp154, <variable>.ImageCSP
	mul	r6, r6, r5	@ tmp158, D.32890, D.32892
	str	r5, [r4, #28]	@ D.32892, <variable>.ImageHeight
	movw	r5, #14660	@ tmp161,
	str	r1, [r4, #552]	@ tmp153, <variable>.ValidGroupNum
	strh	r2, [r4, #40]	@ movhi	@ tmp154, <variable>.StartMbn
	sub	r6, r6, #1	@ tmp160, tmp158,
	strh	r6, [r4, #42]	@ movhi	@ tmp160, <variable>.EndMbn
	ldr	r5, [r0, r5]	@ <variable>.Compress_en, <variable>.Compress_en
	moveq	r0, r1	@ D.32907, tmp153
	str	r1, [r4, #568]	@ tmp153, <variable>.FullRepair
	str	r2, [r4, #564]	@ tmp154, <variable>.Pic_type
	str	r5, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	ip	@ D.32904
	subs	r0, r0, #0	@ D.32907,,
	movne	r0, #1	@ D.32907
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1924:
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
	rsb	r4, r7, r8	@ pretmp.579, i, n
	mov	r5, #0	@ flag,
	tst	r4, #1	@ pretmp.579,
	mov	r3, r6	@ ivtmp.594, pDecReport
	mov	r1, r5	@ j, flag
	beq	.L13	@,
	cmp	r4, #0	@ pretmp.579,
	bls	.L14	@,
	ldrh	r3, [r6, #12]	@ D.33690, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r6, #16]	@ D.33692, <variable>.SliceMbRange
	cmp	r3, r2	@ D.33690, D.33692
	bls	.L16	@,
	ldrh	ip, [r6, #14]	@ D.33695, <variable>.SliceMbRange
	mov	r5, r1	@ flag, j
	strh	r2, [r6, #12]	@ movhi	@ D.33692, <variable>.SliceMbRange
	ldrh	r2, [r6, #18]	@, <variable>.SliceMbRange
	strh	r3, [r6, #16]	@ movhi	@ D.33690, <variable>.SliceMbRange
	strh	ip, [r6, #18]	@ movhi	@ D.33695, <variable>.SliceMbRange
	strh	r2, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
.L16:
	add	r3, r6, #4	@ ivtmp.594, pDecReport,
.L13:
	cmp	r4, r1	@ pretmp.579, j
	add	r2, r3, #4	@ tmp194, ivtmp.594,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L22	@,
.L12:
	ldrh	ip, [r3, #12]	@ D.33690, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r0, [r3, #16]	@ D.33692, <variable>.SliceMbRange
	cmp	ip, r0	@ D.33690, D.33692
	bls	.L11	@,
	ldrh	sl, [r3, #14]	@ D.33695, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	r0, [r3, #12]	@ movhi	@ D.33692, <variable>.SliceMbRange
	ldrh	r0, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.33690, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.33695, <variable>.SliceMbRange
	strh	r0, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L11:
	ldrh	r3, [r2, #12]	@ D.33690, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.33692, <variable>.SliceMbRange
	cmp	r3, ip	@ D.33690, D.33692
	bls	.L19	@,
	ldrh	r0, [r2, #14]	@ D.33695, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.33692, <variable>.SliceMbRange
	ldrh	ip, [r2, #18]	@, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.33690, <variable>.SliceMbRange
	strh	r0, [r2, #18]	@ movhi	@ D.33695, <variable>.SliceMbRange
	strh	ip, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
.L19:
	cmp	r4, r1	@ pretmp.579, j
	add	r3, r2, #4	@ ivtmp.594, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.594,
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
.LFB1923:
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
	ldr	r7, [r1, #8]	@ prephitmp.628, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.628,
	mov	r3, r1	@ ivtmp.643, pDecReport
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
	ldrh	r2, [r3, #12]	@ D.33629, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33629, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L28	@,
	cmp	r2, r0	@ D.33629, curr_slice_end_mbn
	bgt	.L28	@,
	cmp	r2, sl	@ D.33629, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.33629, tmp176
	ble	.L30	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.33646, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.33629,
	rsb	r7, r4, r7	@ tmp187, D.33646, tmp185
	rsb	r4, r4, r8	@ tmp196, D.33646, tmp194
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
	cmp	r2, r4	@ D.33629,
	bge	.L38	@,
.L39:
	ldr	r7, [r1, #8]	@ prephitmp.628, <variable>.DecSliceNum
.L30:
	sub	r4, r7, #1	@ temp.649, prephitmp.628,
	cmp	r4, ip	@ temp.649, i
	beq	.L41	@,
.L31:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.33629
.L28:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.643, ivtmp.643,
	cmp	ip, r7	@ i, prephitmp.628
	bls	.L32	@,
	mov	r3, #0	@ D.33623,
.L25:
	mov	r0, r3	@, D.33623
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L41:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.33663, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.33663,
	bge	.L31	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.33623,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.33663, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L25	@
.L38:
	ldr	r7, [r1, #8]	@ prephitmp.628, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L30	@
.L40:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33623,
	b	.L25	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1922:
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
	ldr	r7, [r1, #8]	@ prephitmp.673, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.673,
	mov	r3, r1	@ ivtmp.688, pDecReport
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
	ldrh	r2, [r3, #12]	@ D.33558, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33558, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L47	@,
	cmp	r2, r0	@ D.33558, curr_slice_end_mbn
	bgt	.L47	@,
	cmp	r2, sl	@ D.33558, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.33558, tmp176
	ble	.L49	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.33575, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.33558,
	rsb	r7, r4, r7	@ tmp187, D.33575, tmp185
	rsb	r4, r4, r8	@ tmp196, D.33575, tmp194
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
	cmp	r2, r4	@ D.33558,
	bge	.L57	@,
.L58:
	ldr	r7, [r1, #8]	@ prephitmp.673, <variable>.DecSliceNum
.L49:
	sub	r4, r7, #1	@ temp.694, prephitmp.673,
	cmp	r4, ip	@ temp.694, i
	beq	.L60	@,
.L50:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.33558
.L47:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.688, ivtmp.688,
	cmp	ip, r7	@ i, prephitmp.673
	bls	.L51	@,
	mov	r3, #0	@ D.33552,
.L44:
	mov	r0, r3	@, D.33552
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L60:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.33592, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.33592,
	bge	.L50	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.33552,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.33592, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L44	@
.L57:
	ldr	r7, [r1, #8]	@ prephitmp.673, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L49	@
.L59:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33552,
	b	.L44	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
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
	bhi	.L76	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.733, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.718, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.718,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33487, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L72	@
.L66:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.718
	bhi	.L77	@,
.L72:
	ldrh	r2, [r3, #12]	@ D.33490, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.733, ivtmp.733,
	cmp	r2, r5	@ D.33490, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L66	@,
	cmp	r2, r4	@ D.33490, curr_slice_end_mbn
	bgt	.L66	@,
	cmp	r2, r8	@ D.33490, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33490,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33490
	mov	r7, r2	@ old_slice_start_mbn, D.33490
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L68	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L68	@,
	ldr	r2, [r0, #552]	@ D.33508, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33508,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33508,
	bgt	.L76	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.718, <variable>.DecSliceNum
.L68:
	sub	r2, r6, #1	@ temp.738, prephitmp.718,
	cmp	r2, ip	@ temp.738, i
	bne	.L66	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33521, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33521,
	bge	.L66	@,
	ldr	r3, [r0, #552]	@ temp.739, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.739,
	bgt	.L76	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.739,
	sub	fp, fp, #1	@ tmp209, D.33487,
	mov	r3, #0	@ D.33484,
	strh	r2, [ip, #40]	@ movhi	@ D.33521, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L63	@
.L77:
	mov	r3, #0	@ D.33484,
.L63:
	mov	r0, r3	@, D.33484
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L76:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33484,
	b	.L63	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1920:
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
	mov	r3, r1	@ ivtmp.779, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.764, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.764,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33421, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L89	@
.L83:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.764
	bhi	.L94	@,
.L89:
	ldrh	r2, [r3, #12]	@ D.33424, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.779, ivtmp.779,
	cmp	r2, r5	@ D.33424, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L83	@,
	cmp	r2, r4	@ D.33424, curr_slice_end_mbn
	bgt	.L83	@,
	cmp	r2, r8	@ D.33424, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33424,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33424
	mov	r7, r2	@ old_slice_start_mbn, D.33424
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L85	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L85	@,
	ldr	r2, [r0, #552]	@ D.33442, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33442,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33442,
	bgt	.L93	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.764, <variable>.DecSliceNum
.L85:
	sub	r2, r6, #1	@ temp.784, prephitmp.764,
	cmp	r2, ip	@ temp.784, i
	bne	.L83	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33455, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33455,
	bge	.L83	@,
	ldr	r3, [r0, #552]	@ temp.785, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.785,
	bgt	.L93	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.785,
	sub	fp, fp, #1	@ tmp209, D.33421,
	mov	r3, #0	@ D.33418,
	strh	r2, [ip, #40]	@ movhi	@ D.33455, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L80	@
.L94:
	mov	r3, #0	@ D.33418,
.L80:
	mov	r0, r3	@, D.33418
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L93:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33418,
	b	.L80	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1919:
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
	mov	r3, r1	@ ivtmp.825, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.810, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.810,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33355, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L106	@
.L100:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.810
	bhi	.L111	@,
.L106:
	ldrh	r2, [r3, #12]	@ D.33358, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.825, ivtmp.825,
	cmp	r2, r5	@ D.33358, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L100	@,
	cmp	r2, r4	@ D.33358, curr_slice_end_mbn
	bgt	.L100	@,
	cmp	r2, r8	@ D.33358, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33358,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33358
	mov	r7, r2	@ old_slice_start_mbn, D.33358
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L102	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L102	@,
	ldr	r2, [r0, #552]	@ D.33376, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33376,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33376,
	bgt	.L110	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.810, <variable>.DecSliceNum
.L102:
	sub	r2, r6, #1	@ temp.830, prephitmp.810,
	cmp	r2, ip	@ temp.830, i
	bne	.L100	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33389, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33389,
	bge	.L100	@,
	ldr	r3, [r0, #552]	@ temp.831, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.831,
	bgt	.L110	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.831,
	sub	fp, fp, #1	@ tmp209, D.33355,
	mov	r3, #0	@ D.33352,
	strh	r2, [ip, #40]	@ movhi	@ D.33389, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L97	@
.L111:
	mov	r3, #0	@ D.33352,
.L97:
	mov	r0, r3	@, D.33352
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L110:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33352,
	b	.L97	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1918:
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
	ldr	r6, [r1, #8]	@ prephitmp.864, <variable>.DecSliceNum
	cmp	r6, r7	@ prephitmp.864,
	add	r4, r1, r6, asl #2	@, tmp162, pDecReport, prephitmp.864,
	uxth	r9, r5	@ D.33272, total_mbn
	strh	r9, [r4, #14]	@ movhi	@ D.33272, <variable>.SliceMbRange
	strh	r9, [r4, #12]	@ movhi	@ D.33272, <variable>.SliceMbRange
	bne	.L130	@,
.L115:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.881, pDecReport
	add	fp, r5, sl	@ tmp246, total_mbn,
	mov	ip, #0	@ i,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	b	.L125	@
.L123:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.33283
.L118:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.881, ivtmp.881,
	cmp	ip, r6	@ i, prephitmp.864
	bhi	.L131	@,
.L125:
	ldrh	r2, [r3, #12]	@ D.33283, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33283, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L118	@,
	cmp	r2, r4	@ D.33283, curr_slice_end_mbn
	movle	r8, #0	@, tmp190
	movgt	r8, #1	@, tmp190
	cmp	r2, r7	@ D.33283, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp193, tmp190
	cmp	r8, #0	@ tmp193,
	bne	.L118	@,
	cmp	r2, sl	@ D.33283, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp194, old_slice_end_mbn,
	cmp	r8, r2	@ tmp194, D.33283
	beq	.L120	@,
	add	r7, r7, r7, lsr #31	@, tmp245, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp242, D.33283,
	cmp	r7, r8	@ tmp245, tmp242
	bge	.L120	@,
	ldr	r6, [r0, #552]	@ D.33304, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.33304,
	bgt	.L129	@,
	add	r6, r0, r6, asl #2	@, tmp199, pRepairParam, D.33304,
	sub	sl, sl, #100	@ tmp243, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp245, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp242, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.866, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp214, prephitmp.866,
	mov	r7, r8, asl #2	@ tmp215, tmp214,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp243, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp243, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.866, <variable>.ValidGroupNum
	add	r7, r6, #1	@ tmp223, prephitmp.866,
	str	r7, [r0, #552]	@ tmp223, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.864, <variable>.DecSliceNum
.L120:
	sub	r7, r6, #1	@ temp.886, prephitmp.864,
	cmp	r7, ip	@ temp.886, i
	bne	.L123	@,
	add	r7, r1, ip, asl #2	@, tmp226, pDecReport, i,
	ldrh	r7, [r7, #14]	@ temp.887, <variable>.SliceMbRange
	cmp	r7, fp	@ temp.887, tmp246
	bge	.L123	@,
	ldr	r3, [r0, #552]	@ temp.889, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.889,
	bgt	.L129	@,
	add	r2, r0, r3, asl #2	@, tmp230, pRepairParam, temp.889,
	sub	r9, r9, #1	@ tmp238, D.33272,
	mov	r3, #0	@ D.33269,
	strh	r7, [r2, #40]	@ movhi	@ temp.887, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp236, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp238, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp240, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp240, <variable>.ValidGroupNum
	b	.L114	@
.L131:
	mov	r3, #0	@ D.33269,
.L114:
	mov	r0, r3	@, D.33269
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L130:
	add	fp, r4, #6	@ tmp172, tmp171,
	sub	sl, r5, #10	@ tmp174, total_mbn,
	ldrh	ip, [fp, #4]	@ tmp173, <variable>.SliceMbRange
	cmp	ip, sl	@ tmp173, tmp174
	subge	sl, r9, #1	@ tmp179, D.33272,
	strgeh	sl, [fp, #4]	@ movhi	@ tmp179, <variable>.SliceMbRange
	b	.L115	@
.L129:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33269,
	mov	r0, r3	@, D.33269
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
.LFB1917:
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
	ldr	sl, [r4, #24]	@ D.33133, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.33133
	uxtheq	fp, r6	@ prephitmp.923, total_mbn
	bne	.L179	@,
.L136:
	mov	r1, #0	@ tmp391,
	str	r1, [r4, #552]	@ tmp391, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp391, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.918, <variable>.DecSliceNum
	add	r9, r6, r8	@ tmp468, total_mbn,
	mov	r3, r5	@ ivtmp.943, pDecReport
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	sl, fp	@ movhi	@,
	add	r0, r5, ip, asl #2	@, tmp395, pDecReport, prephitmp.918,
	mov	r2, r0	@ tmp400, tmp395
	strh	fp, [r0, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L156	@
.L154:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.1019
.L149:
	add	r1, r1, #1	@ i.968, i.968,
	add	r3, r3, #4	@ ivtmp.943, ivtmp.943,
	cmp	ip, r1	@ prephitmp.918, i.968
	bcc	.L180	@,
.L156:
	ldrh	r2, [r3, #12]	@ temp.1019, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.1019, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L149	@,
	cmp	r2, r0	@ temp.1019, curr_slice_end_mbn
	bgt	.L149	@,
	cmp	r2, r8	@ temp.1019, old_slice_end_mbn
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp409, old_slice_end_mbn,
	cmp	r2, sl	@ temp.1019, tmp409
	ble	.L151	@,
	ldr	sl, [r4, #552]	@ D.33219, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.33219,
	bgt	.L177	@,
	add	sl, r4, sl, asl #2	@, tmp411, pRepairParam, D.33219,
	add	r7, r7, r7, lsr #31	@, tmp417, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp424, temp.1019,
	sub	r8, r8, #100	@ tmp467, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp417, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp422, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp424, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.920, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp426, prephitmp.920,
	mov	r7, sl, asl #2	@ tmp427, tmp426,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp467, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp467, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.920, <variable>.ValidGroupNum
	add	r7, ip, #1	@ tmp435, prephitmp.920,
	str	r7, [r4, #552]	@ tmp435, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.918, <variable>.DecSliceNum
.L151:
	sub	r7, ip, #1	@ temp.1022, prephitmp.918,
	cmp	r7, r1	@ temp.1022, i.968
	bne	.L154	@,
	add	r7, r5, r1, asl #2	@, tmp438, pDecReport, i.968,
	ldrh	r7, [r7, #14]	@ D.33240, <variable>.SliceMbRange
	cmp	r7, r9	@ D.33240, tmp468
	bge	.L154	@,
	ldr	r3, [r4, #552]	@ temp.1023, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.1023,
	bgt	.L177	@,
	add	r1, r4, r3, asl #2	@, tmp442, pRepairParam, temp.1023,
	sub	fp, fp, #1	@ tmp450, prephitmp.923,
	mov	r0, #0	@ D.33132,
	strh	r7, [r1, #40]	@ movhi	@ D.33240, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp448, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp452, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp452, <variable>.ValidGroupNum
	b	.L134	@
.L180:
	mov	r0, #0	@ D.33132,
.L134:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L179:
	ldrh	ip, [r5, #12]	@, <variable>.SliceMbRange
	add	r2, sp, #24	@ ivtmp.962,,
	ldr	r9, [sp, #8]	@, %sfp
	add	r3, r2, #4	@ ivtmp.962, ivtmp.962,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.33133,
	strh	ip, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.34193, ivtmp.962,,
	ldrh	lr, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp471, ivtmp.962, D.34193
	cmp	r3, r0	@ ivtmp.962, D.34193
	sub	r1, r8, #4	@ tmp472, tmp471,
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp473, tmp472,,
	add	r2, r5, #4	@ ivtmp.961, pDecReport,
	beq	.L167	@,
	cmp	r1, #0	@ tmp473,
	beq	.L137	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.961, ivtmp.961,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.962, ivtmp.962,
	cmp	r3, r0	@ ivtmp.962, D.34193
	beq	.L167	@,
.L137:
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	add	fp, r2, #4	@ tmp474, ivtmp.961,
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp475, ivtmp.962,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r1, [fp, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.962, tmp475,
	ldrh	lr, [fp, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.962, D.34193
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, fp, #4	@ ivtmp.961, tmp474,
	bne	.L137	@,
.L167:
	add	r0, sp, #536	@,,
	movw	r2, #:lower16:-512	@ tmp204,
	movw	r3, #:lower16:-510	@ tmp208,
	movt	r2, #:upper16:-512	@ tmp204,
	movt	r3, #:upper16:-510	@ tmp208,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r1, [r0, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	fp, #:lower16:65534	@ prephitmp.925,
	ldrh	r9, [r0, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	fp, #:upper16:65534	@ prephitmp.925,
	and	fp, r1, fp	@ prephitmp.925, SliceMbRange_Tmp, prephitmp.925
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r9, #1	@ D.33144, SliceMbRange_Tmp,
	strh	fp, [r0, r2]	@ movhi	@ tmp14, SliceMbRange_Tmp
	strh	r9, [r0, r3]	@ movhi	@ D.33144, SliceMbRange_Tmp
	beq	.L139	@,
	mov	r0, #0	@ i,
	uxth	r7, sl	@, DoubleImageWidth
	sub	ip, sl, #2	@, DoubleImageWidth,
	str	r7, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ total_mbn, %sfp
	add	r8, sp, #28	@ ivtmp.949,,
	str	ip, [sp, #12]	@, %sfp
	mov	r7, r0	@ j, i
	mov	r6, r0	@ i, i
	b	.L158	@
.L182:
	mov	r0, fp	@, prephitmp.925
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	fp, r0	@ tmp228,
	mov	r0, r9	@, D.33144
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
	add	r2, r7, #1	@ j.970, j,
	cmp	r2, #127	@ j.970,
	uxth	fp, fp	@ D.33160,
	add	r1, fp, r1	@ tmp235, D.33160, mbsurplus0
	uxth	r1, r1	@ D.33162, tmp235
	strh	r1, [r9, #12]	@ movhi	@ D.33162, <variable>.SliceMbRange
	ldr	lr, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, lr, #1	@ tmp247, <variable>.ImageWidth,
	add	lr, fp, r9	@ tmp249, D.33160, tmp247
	strh	lr, [ip, #14]	@ movhi	@ tmp249, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r5, r7, asl #2	@, tmp253, pDecReport, j,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	fp, r5, r2, asl #2	@, tmp262, pDecReport, j.970,
	uxth	r3, r3	@ D.33171, mbsurplus1
	mul	r0, r0, ip	@ tmp259, tmp231,
	add	ip, r2, #1	@ j.973, j.970,
	cmp	ip, #128	@ j.973,
	add	r1, r1, r9	@ tmp257, D.33162, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp257, <variable>.SliceMbRange
	uxth	r0, r0	@ D.33170, tmp259
	add	r7, r3, r0	@ tmp264, D.33171, D.33170
	strh	r7, [fp, #14]	@ movhi	@ tmp264, <variable>.SliceMbRange
	beq	.L173	@,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.973,
	mov	r2, lr	@ tmp271, tmp253
	cmp	r7, #128	@ j,
	add	r1, r0, r9	@ tmp267, D.33170, <variable>.ImageWidth
	add	lr, r5, ip, asl #2	@, tmp275, pDecReport, j.973,
	uxth	fp, r1	@ D.33175, tmp267
	strh	fp, [r2, #20]	@ movhi	@ D.33175, <variable>.SliceMbRange
	add	r3, fp, r3	@ tmp277, D.33175, D.33171
	strh	r3, [lr, #14]	@ movhi	@ tmp277, <variable>.SliceMbRange
	beq	.L173	@,
.L144:
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.949, ivtmp.949,
	cmp	fp, r6	@, i
	bls	.L181	@,
.L146:
	ldrh	fp, [r8, #-4]	@ tmp459, SliceMbRange_Tmp
	ldrh	r0, [r8, #-2]	@ tmp462, SliceMbRange_Tmp
	bic	fp, fp, #1	@ tmp460, tmp459,
	strh	fp, [r8, #-4]	@ movhi	@ tmp3, SliceMbRange_Tmp
	orr	r9, r0, #1	@ D.33144, tmp462,
	strh	r9, [r8, #-2]	@ movhi	@ D.33144, SliceMbRange_Tmp
.L158:
	mov	r0, fp	@, prephitmp.925
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [sp, #4]	@, %sfp
	bls	.L140	@,
	mov	r0, r9	@, D.33144
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r1	@, tmp224
	mov	r3, r1	@ tmp224,
	bhi	.L182	@,
	mov	r0, fp	@, prephitmp.925
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	fp, r5, r7, asl #2	@, tmp322, pDecReport, j,
	add	r3, r7, #1	@ j.999, j,
	ldr	lr, [sp, #4]	@, %sfp
	cmp	r3, #127	@ j.999,
	mov	r2, fp	@ tmp326, tmp322
	mul	r7, sl, r0	@ tmp315, DoubleImageWidth,
	uxth	r0, r7	@ temp.992, tmp315
	add	ip, r0, lr, lsr #1	@, tmp318, temp.992,,
	uxth	ip, ip	@ temp.994, tmp318
	strh	ip, [fp, #12]	@ movhi	@ temp.994, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	fp, r1, #1	@ tmp330, <variable>.ImageWidth,
	add	r7, r0, fp	@ tmp332, temp.992, tmp330
	strh	r7, [r2, #14]	@ movhi	@ tmp332, <variable>.SliceMbRange
	bhi	.L173	@,
	add	r7, r3, #1	@ j, j.999,
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp343, pDecReport, j.999,
	cmp	r7, #128	@ j,
	add	r0, ip, r1	@ tmp340, temp.994, <variable>.ImageWidth
	strh	r0, [r2, #16]	@ movhi	@ tmp340, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.33144, <variable>.SliceMbRange
	bne	.L144	@,
.L173:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
	mov	lr, #0	@ movhi	@,
	mov	r9, #1	@ tmp454,
	strh	lr, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r5, #8]	@ tmp454, <variable>.DecSliceNum
	uxth	fp, r6	@ prephitmp.923, total_mbn
	sub	r8, fp, #1	@ tmp457, prephitmp.923,
	strh	r8, [r5, #14]	@ movhi	@ tmp457, <variable>.SliceMbRange
.L157:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L136	@
.L140:
	mov	r0, r9	@, D.33144
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [sp, #12]	@, %sfp
	cmp	ip, r1	@, tmp349
	mov	r2, r1	@ tmp349,
	bls	.L145	@,
	add	lr, r5, r7, asl #2	@, tmp354, pDecReport, j,
	mov	r0, r9	@, D.33144
	mov	r1, sl	@, DoubleImageWidth
	strh	fp, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #0]	@,
	add	r3, r7, #1	@ j.1013, j,
	add	r1, r5, r7, asl #2	@, tmp366, pDecReport, j,
	cmp	r3, #127	@ j.1013,
	ubfx	r2, r2, #1, #16	@ temp.1011, tmp349,,
	mul	fp, sl, r0	@ tmp362, DoubleImageWidth,
	uxth	r0, fp	@ temp.1010, tmp362
	add	r9, r2, r0	@ tmp368, temp.1011, temp.1010
	strh	r9, [r1, #14]	@ movhi	@ tmp368, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.1013,
	cmp	r7, #128	@ j,
	add	r3, r5, r3, asl #2	@, tmp379, pDecReport, j.1013,
	add	r9, r0, ip	@ tmp371, temp.1010, <variable>.ImageWidth
	uxth	r0, r9	@ temp.1016, tmp371
	strh	r0, [r1, #16]	@ movhi	@ temp.1016, <variable>.SliceMbRange
	add	r1, r0, r2	@ tmp381, temp.1016, temp.1011
	strh	r1, [r3, #14]	@ movhi	@ tmp381, <variable>.SliceMbRange
	beq	.L173	@,
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.949, ivtmp.949,
	cmp	fp, r6	@, i
	bhi	.L146	@,
.L181:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
.L139:
	uxth	fp, r6	@ prephitmp.923, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L157	@
.L145:
	add	r2, r5, r7, asl #2	@, tmp385, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	fp, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.33144, <variable>.SliceMbRange
	bls	.L144	@,
	b	.L173	@
.L142:
	mul	fp, sl, r0	@ tmp280, DoubleImageWidth, tmp231
	add	r2, r7, #1	@ j.982, j,
	add	lr, r5, r7, asl #2	@, tmp286, pDecReport, j,
	cmp	r2, #127	@ j.982,
	mov	ip, lr	@ tmp292, tmp286
	uxth	r0, fp	@ temp.978, tmp280
	add	r3, r0, r3	@ tmp289, temp.978, mbsurplus1
	add	r7, r0, r1	@ tmp282, temp.978, mbsurplus0
	uxth	r3, r3	@ D.33181, tmp289
	uxth	r1, r7	@ temp.980, tmp282
	strh	r3, [lr, #14]	@ movhi	@ D.33181, <variable>.SliceMbRange
	strh	r1, [lr, #12]	@ movhi	@ temp.980, <variable>.SliceMbRange
	bhi	.L173	@,
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.982,
	cmp	r7, #128	@ j,
	add	r2, r5, r2, asl #2	@, tmp304, pDecReport, j.982,
	add	lr, r1, r0	@ tmp301, temp.980, <variable>.ImageWidth
	strh	lr, [ip, #16]	@ movhi	@ tmp301, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	ip, r3, r1	@ tmp308, D.33181, <variable>.ImageWidth
	strh	ip, [r2, #14]	@ movhi	@ tmp308, <variable>.SliceMbRange
	bne	.L144	@,
	b	.L173	@
.L177:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.33132,
	b	.L134	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp195,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #1124]	@ tmp195, <variable>.ValidGroupNum
	add	r6, r1, #572	@ D.32942, pRepairParam,
	str	r3, [r1, #552]	@ tmp195, <variable>.ValidGroupNum
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L184	@
.L189:
	.word	.L185
	.word	.L184
	.word	.L186
	.word	.L187
	.word	.L184
	.word	.L184
	.word	.L188
.L188:
	movw	r2, #14440	@ tmp263,
	movw	r3, #14452	@ tmp264,
	ldr	ip, [r5, r2]	@ D.33039, <variable>.CurPicAddr
	movw	sl, #14444	@ tmp268,
	mov	r2, #0	@ tmp274,
	str	ip, [r1, #4]	@ D.33039, <variable>.ImageAddr
	ldr	r8, [r5, r3]	@ <variable>.rcn_address, <variable>.rcn_address
	str	r8, [r1, #8]	@ <variable>.rcn_address, <variable>.Image2DAddr
	movw	r1, #14432	@ tmp266,
	ldr	r8, [r5, r1]	@ <variable>.FwdRefPic0Addr, <variable>.FwdRefPic0Addr
	str	r8, [r4, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	ldr	r1, [r5, sl]	@ <variable>.CurPmvAddr, <variable>.CurPmvAddr
	str	r1, [r4, #20]	@ <variable>.CurPmvAddr, <variable>.CurrPmvAddr
	ldrh	lr, [r5, #48]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	lr, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r5, #50]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	mov	sl, r3, lsr #1	@ tmp286, <variable>.PicHeightInMb,
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	str	r2, [r4, #36]	@ tmp274, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PicStruct,
	movne	r0, #0	@, tmp273
	moveq	r0, #1	@, tmp273
	str	r0, [r4, #32]	@ tmp273, <variable>.IsFrame
	ldr	r9, [r7, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	r8, [r6, #16]	@ <variable>.FwdRefPic0Addr, <variable>.RefImageAddr
	add	ip, r9, ip	@ tmp276, <variable>.ImgStride, D.33039
	str	ip, [r6, #4]	@ tmp276, <variable>.ImageAddr
	ldr	ip, [r7, #4]	@ <variable>.ImgStride, <variable>.ImgStride
	str	lr, [r6, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	str	r0, [r6, #32]	@ tmp273, <variable>.IsFrame
	add	lr, ip, ip, asl #3	@, tmp281, <variable>.ImgStride, <variable>.ImgStride,
	str	r3, [r6, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	r2, [r6, #36]	@ tmp274, <variable>.ImageCSP
	mla	r0, sl, lr, r1	@ tmp289, tmp286, tmp281, <variable>.CurPmvAddr
	str	r0, [r6, #20]	@ tmp289, <variable>.CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.1093, <variable>.PicStruct
	cmp	r3, #3	@ temp.1093,
	streq	r2, [r4, #564]	@ tmp274, <variable>.Pic_type
	beq	.L213	@,
	cmp	r3, #1	@ temp.1093,
	streq	r3, [r4, #564]	@ temp.1093, <variable>.Pic_type
.L213:
	movw	ip, #14868	@ tmp296,
	mov	r0, r4	@, pRepairParam
	ldr	lr, [r5, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	lr, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L208	@
.L187:
	ldr	lr, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r2, #0	@ tmp245,
	str	lr, [r1, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	ip, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	ip, [r1, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r1, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r1, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r0, [r5, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	r0, [r4, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	r9, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r9, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r3, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	lr, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r2, [r4, #36]	@ tmp245, <variable>.ImageCSP
	cmp	lr, #3	@ <variable>.PictureStructure,
	movne	ip, #0	@, tmp244
	moveq	ip, #1	@, tmp244
	str	ip, [r4, #32]	@ tmp244, <variable>.IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.1088, <variable>.PictureStructure
	cmp	r3, #1	@ temp.1088,
	beq	.L247	@,
	cmp	r3, #2	@ temp.1088,
	beq	.L247	@,
	cmp	r3, #3	@ temp.1088,
	streq	r2, [r4, #564]	@ tmp245, <variable>.Pic_type
.L210:
	movw	r3, #45316	@ tmp249,
	mov	r0, r4	@, pRepairParam
	ldr	r2, [r5, r3]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	r2, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L208	@
.L185:
	ldr	r3, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	lr, r2, r3, asl #2	@, tmp201, pDecParam, <variable>.CurrPicImgIdc,
	ldr	ip, [lr, #308]	@ tmp203, <variable>.ImgPhyAddr
	str	ip, [r1, #4]	@ tmp203, <variable>.ImageAddr
	ldr	r0, [r2, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r0, [r1, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	r9, [r2, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r0, [r9, #1640]	@ ref_img_idc, <variable>.img_idc
	add	r1, r2, r0, asl #2	@, tmp209, pDecParam, ref_img_idc,
	ldr	r3, [r1, #308]	@ tmp211, <variable>.ImgPhyAddr
	str	r3, [r4, #16]	@ tmp211, <variable>.RefImageAddr
	ldr	lr, [r2, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	ip, lr, #206	@ tmp212, <variable>.CurrPicPmvIdc,
	ldr	r9, [r2, ip, asl #2]	@ tmp214, <variable>.PmvPhyAddr
	str	r9, [r4, #20]	@ tmp214, <variable>.CurrPmvAddr
	ldr	r1, [r2, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r1, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	r3, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	r3, [r4, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	ip, lr, #1	@ tmp218, <variable>.pic_structure
	movcc	ip, #0	@ tmp218
	str	ip, [r4, #32]	@ tmp218, <variable>.IsFrame
	ldrb	r9, [r2, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r1, r9, #1	@ tmp220, <variable>.chroma_format_idc
	movcc	r1, #0	@ tmp220
	str	r1, [r4, #36]	@ tmp220, <variable>.ImageCSP
	ldr	lr, [r2, #1116]	@ D.32970, <variable>.ApcSize
	cmp	lr, #0	@ D.32970,
	beq	.L190	@,
	ldr	r3, [r2, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r0	@ <variable>.RefPicFsId, ref_img_idc
	moveq	r3, #0	@ i,
	beq	.L192	@,
	tst	lr, #1	@ D.32970,
	mov	r3, #0	@ i,
	bne	.L193	@,
	ldr	r9, [r5, #1324]	@ D.32964, <variable>.RefPicFsId
	mov	r3, #1	@ i,
	add	r2, r5, #4	@ ivtmp.1084, pDecParam,
	cmp	r9, r0	@ D.32964, ref_img_idc
	bne	.L193	@,
	b	.L192	@
.L194:
	ldr	r9, [r2, #1324]	@ D.32964, <variable>.RefPicFsId
	add	r2, r1, #4	@ ivtmp.1084, tmp332,
	cmp	r9, r0	@ D.32964, ref_img_idc
	beq	.L192	@,
	ldr	ip, [r1, #1324]	@ D.32964, <variable>.RefPicFsId
	add	r3, r3, #1	@ i, i,
	cmp	ip, r0	@ D.32964, ref_img_idc
	beq	.L192	@,
.L193:
	add	r3, r3, #1	@ i, i,
	add	r1, r2, #4	@ tmp332, ivtmp.1084,
	cmp	lr, r3	@ D.32970, i
	bhi	.L194	@,
.L190:
	ldr	lr, [r5, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #0	@ <variable>.mb_adaptive_frame_field_flag,
	moveq	r2, lr	@ prephitmp.1049, <variable>.mb_adaptive_frame_field_flag
	bne	.L248	@,
.L196:
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L249	@,
.L198:
	ldr	r2, [r4, #4]	@ D.32981, <variable>.ImageAddr
	ldr	r9, [r4, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, r9	@ D.32981, <variable>.RefImageAddr
	beq	.L250	@,
.L199:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.1087, <variable>.pic_structure
	cmp	r3, #0	@ temp.1087,
	beq	.L246	@,
	cmp	r3, #1	@ temp.1087,
	beq	.L246	@,
	cmp	r3, #2	@ temp.1087,
	beq	.L246	@,
	cmp	r3, #3	@ temp.1087,
	bne	.L205	@,
	mov	r3, #0	@ tmp235,
.L246:
	str	r3, [r4, #564]	@ tmp235, <variable>.Pic_type
.L205:
	ldr	r1, [r5, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r1, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L208	@
.L184:
	bl	vfmw_dprint_nothing	@
.L208:
	ldr	r1, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	r0, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r1, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	r9, r9, r0	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L215	@,
	mov	r5, #0	@ err_mbs,
	mov	r8, r4	@ ivtmp.1073, pRepairParam
	mov	sl, r5	@ i.1089, err_mbs
.L216:
	bl	vfmw_dprint_nothing	@
	ldrsh	r1, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r0, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	sl, sl, #1	@ i.1089, i.1089,
	ldrsh	r2, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	ip, r1, #1	@ tmp302, <variable>.EndMbn,
	cmp	r0, sl	@ <variable>.ValidGroupNum, i.1089
	add	r8, r8, #4	@ ivtmp.1073, ivtmp.1073,
	rsb	r3, r2, ip	@ tmp304, <variable>.StartMbn, tmp302
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp304
	bgt	.L216	@,
.L215:
	ldr	lr, [r4, #1124]	@ D.33087, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.33087,
	ble	.L217	@,
	ldrsh	ip, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1097,
	ldrsh	r1, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1097, D.33087
	add	r0, ip, r2	@ tmp307, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp319, D.33087,
	rsb	ip, r1, r0	@ tmp309, <variable>.StartMbn, tmp307
	and	r3, r3, r2	@ tmp321, tmp319,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp309
	add	r6, r6, #4	@ ivtmp.1067, D.32942,
	beq	.L217	@,
	cmp	r3, #0	@ tmp321,
	beq	.L218	@,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1097,
	ldrsh	ip, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1097, D.33087
	add	r1, r0, #1	@ tmp351, <variable>.EndMbn,
	add	r6, r6, #4	@ ivtmp.1067, ivtmp.1067,
	rsb	r3, ip, r1	@ tmp353, <variable>.StartMbn, tmp351
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp353
	beq	.L217	@,
.L218:
	add	r3, r6, #4	@ tmp323, ivtmp.1067,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1097, i.1097,
	ldrsh	r6, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp340, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp342, <variable>.StartMbn, tmp340
	cmp	r2, lr	@ i.1097, D.33087
	add	r1, r6, #1	@ tmp347, <variable>.EndMbn,
	rsb	r6, r0, r1	@ tmp349, <variable>.StartMbn, tmp347
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp342
	add	r5, r5, r6	@ err_mbs, err_mbs, tmp349
	add	r6, r3, #4	@ ivtmp.1067, tmp323,
	bne	.L218	@,
.L217:
	cmp	r9, #0	@ total_mbs,
	beq	.L220	@,
	mov	lr, #100	@ tmp311,
	mov	r1, r9	@, total_mbs
	mul	r0, lr, r5	@, tmp311, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1098,
	bic	r9, r0, r0, asr #31	@ err_ratio, err_ratio.1098
.L220:
	mov	r2, #0	@ tmp315,
	str	r2, [r7, #8]	@ tmp315, <variable>.DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r9	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L186:
	ldr	r1, [r2, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	movw	r9, #14588	@ tmp252,
	mov	lr, #0	@ tmp259,
	mov	r0, r4	@, pRepairParam
	str	r1, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	mov	r1, r7	@, pDecReport
	ldr	r3, [r2, r9]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r3, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	mov	r3, #1	@ tmp258,
	ldr	r2, [r2, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	str	r2, [r4, #16]	@ <variable>.FwdRefPicPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r5, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	str	ip, [r4, #20]	@ <variable>.CurPmvPhyAddr, <variable>.CurrPmvAddr
	movw	ip, #14660	@ tmp261,
	ldrh	r9, [r5, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r9, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r2, [r5, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r3, [r4, #32]	@ tmp258, <variable>.IsFrame
	str	lr, [r4, #564]	@ tmp259, <variable>.Pic_type
	str	r2, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	str	lr, [r4, #36]	@ tmp259, <variable>.ImageCSP
	ldr	r9, [r5, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	str	r9, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L208	@
.L248:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	r2, r2, #1	@ prephitmp.1049, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1049
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	beq	.L198	@,
	b	.L249	@
.L247:
	str	r3, [r4, #564]	@ temp.1088, <variable>.Pic_type
	b	.L210	@
.L250:
	ldr	lr, [r5, #820]	@ D.32990, <variable>.ImgSlotNum
	cmp	lr, #0	@ D.32990,
	beq	.L199	@,
	ldr	r3, [r5, #308]	@ D.32986, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.32981, D.32986
	bne	.L200	@,
	tst	lr, #1	@ D.32990,
	mov	r1, r5	@ ivtmp.1079, pDecParam
	mov	r0, #0	@ i.1086,
	bne	.L202	@,
	ldr	r3, [r5, #312]	@ D.32986, <variable>.ImgPhyAddr
	mov	r0, #1	@ i.1086,
	add	r1, r5, #4	@ ivtmp.1079, pDecParam,
	cmp	r3, r2	@ D.32986, D.32981
	beq	.L202	@,
.L200:
	str	r3, [r4, #16]	@ D.32986, <variable>.RefImageAddr
	b	.L199	@
.L203:
	ldr	r3, [r1, #312]	@ D.32986, <variable>.ImgPhyAddr
	add	r1, ip, #4	@ ivtmp.1079, tmp327,
	cmp	r3, r2	@ D.32986, D.32981
	bne	.L200	@,
	ldr	r3, [ip, #312]	@ D.32986, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.32986, D.32981
	bne	.L200	@,
.L202:
	add	r0, r0, #1	@ tmp328, i.1086,
	add	ip, r1, #4	@ tmp327, ivtmp.1079,
	cmp	lr, r0	@ D.32990, tmp328
	add	r0, r0, #1	@ i.1086, tmp328,
	bhi	.L203	@,
	b	.L199	@
.L249:
	mov	r0, r4	@, pRepairParam
	mov	r1, r7	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L198	@
.L192:
	add	ip, r3, #312	@ tmp222, i,
	add	r0, ip, #2	@ tmp222, tmp222,
	ldr	r1, [r5, r0, asl #2]	@ tmp224, <variable>.RefPicType
	str	r1, [r4, #556]	@ tmp224, <variable>.rpr_ref_pic_type
	ldr	lr, [r5, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	lr, #0	@ <variable>.mb_adaptive_frame_field_flag,
	moveq	r2, lr	@ prephitmp.1049, <variable>.mb_adaptive_frame_field_flag
	beq	.L196	@,
	b	.L248	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1925:
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
	ldr	r3, [r3, #88]	@ D.32863, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r5, r2	@ VdhId.498, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, ip, r6, asl #4	@, pDecReport, tmp145, tmp143,
	cmp	r3, #0	@ D.32863,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L254	@,
	mov	r1, r6	@, pDecReport
	blx	r3	@ D.32863
.L255:
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
.L254:
	bl	vfmw_dprint_nothing	@
	b	.L255	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
