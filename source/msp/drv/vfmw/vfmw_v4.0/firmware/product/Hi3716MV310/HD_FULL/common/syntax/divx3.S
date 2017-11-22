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
	.file	"divx3.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o
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
	.global	Divx3_WritePicMsg
	.type	Divx3_WritePicMsg, %function
Divx3_WritePicMsg:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	movw	ip, #26400	@ tmp144,
	movw	sl, #26384	@ tmp134,
	movw	r7, #26432	@ tmp136,
	movw	r6, #26436	@ tmp138,
	movw	r5, #26388	@ tmp140,
	movw	r4, #26392	@ tmp142,
	movw	r1, #26408	@ tmp146,
	movw	r2, #26412	@ tmp148,
	movw	r3, #26416	@ tmp150,
	movw	fp, #26420	@ tmp152,
	movw	r8, #26424	@ tmp154,
	ldr	r9, [r0, sl]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	sl, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r7, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.CodecInfo.PictureHeader.quantizer
	ldr	r5, [r0, r4]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.CodecInfo.PictureHeader.has_skips
	ldr	ip, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	ldr	r3, [r0, fp]	@ <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	ldr	fp, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	movw	r8, #26428	@ tmp156,
	ldr	r8, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	r9, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	sl, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r8, [r0, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	str	r7, [r0, #20]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Divx3DecParam.PicHeightInMb
	str	r6, [r0, #24]	@ <variable>.CodecInfo.PictureHeader.quantizer, <variable>.Divx3DecParam.quantizer
	str	r5, [r0, #28]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.Divx3DecParam.rounding_type
	str	r4, [r0, #32]	@ <variable>.CodecInfo.PictureHeader.has_skips, <variable>.Divx3DecParam.has_skips
	str	ip, [r0, #36]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	str	r1, [r0, #40]	@ <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	str	r2, [r0, #44]	@ <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT, <variable>.Divx3DecParam.alternative_I_DC_DCT
	str	r3, [r0, #48]	@ <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT, <variable>.Divx3DecParam.alternative_P_AC_DCT
	str	fp, [r0, #52]	@ <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT, <variable>.Divx3DecParam.alternative_P_DC_DCT
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	Divx3_WritePicMsg, .-Divx3_WritePicMsg
	.align	2
	.global	DIVX3DEC_GetImageBuffer
	.type	DIVX3DEC_GetImageBuffer, %function
DIVX3DEC_GetImageBuffer:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #26992	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.35760,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.35763,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #26624	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.35763,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.align	2
	.global	DIVX3DEC_RecycleImage
	.type	DIVX3DEC_RecycleImage, %function
DIVX3DEC_RecycleImage:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r4	@ D.35643, pCtx
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r5, #26992	@ tmp138,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.35643,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DIVX3DEC_RecycleImage, .-DIVX3DEC_RecycleImage
	.align	2
	.global	Divx3_DecodeDecide
	.type	Divx3_DecodeDecide, %function
Divx3_DecodeDecide:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldrb	r4, [r0, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	movw	r3, #26384	@ tmp143,
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldr	r6, [r0, r3]	@ FrameType, <variable>.CodecInfo.PictureHeader.prediction_type
	beq	.L32	@,
	ldrb	r2, [r0, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r1, r2, #2	@ tmp148, <variable>.CodecInfo.UsedDecMode,
	uxtb	r0, r1	@ tmp149, tmp148
	cmp	r0, #1	@ tmp149,
	bls	.L16	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.549, <variable>.s32DecMode
.L17:
	uxtb	r0, r2	@ D.35190, prephitmp.549
	strb	r0, [r5, #179]	@ D.35190, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #4	@ D.35190,
	ldrls	pc, [pc, r0, asl #2]	@ D.35190
	b	.L18	@
.L22:
	.word	.L19
	.word	.L19
	.word	.L20
	.word	.L30
	.word	.L19
.L33:
	movw	r1, #:lower16:.LC2	@,
	mov	r2, r6	@, FrameType
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
.L30:
	mov	r0, #0	@ D.35172,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L16:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.549, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.549,
	cmpne	r2, #1	@, prephitmp.549,
	bhi	.L17	@,
	movw	r4, #26592	@ tmp162,
	movw	r7, #26992	@ tmp160,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	ldr	r1, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	mov	r7, #0	@ tmp165,
	str	r7, [r5, r4]	@ tmp165, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #26508	@ tmp169,
	str	r7, [r5, r2]	@ tmp165, <variable>.CodecInfo.RefNum
	str	r0, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [r1, #8]	@ prephitmp.549, <variable>.s32DecMode
	b	.L17	@
.L32:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35172, <variable>.CodecInfo.Imgbuf_allocated
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L20:
	cmp	r6, #0	@ FrameType,
	bne	.L33	@,
.L23:
	movw	r2, #26592	@ tmp186,
	movw	r3, #26992	@ tmp184,
	ldr	r1, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
.L31:
	mov	r0, #1	@ D.35172,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L18:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35172,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L19:
	cmp	r6, #0	@ FrameType,
	beq	.L23	@,
	movw	lr, #26508	@ tmp174,
	ldr	r4, [r5, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L34	@,
	movw	r1, #26992	@ tmp188,
	movw	r4, #26592	@ tmp190,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r4]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L35	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #180]	@ D.35214, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.35215, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.35214, D.35215
	bls	.L31	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35172,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L34:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r2, #:upper16:.LC4	@,
	mov	r3, r4	@, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35172, <variable>.CodecInfo.RefNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L35:
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #433	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35172, pFwdImg
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #26984	@ tmp139,
	ldr	r8, [r0, r6]	@ D.35297, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #27000	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r3, r4, #26624	@, pCtx,
	add	r0, r3, #16	@,,
	str	r8, [r4, r6]	@ D.35297, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r0, #26480	@ tmp143,
	mov	ip, #1	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	ip, [r4, r0]	@ tmp144, <variable>.CodecInfo.PrevSwitchRounding
	movw	r1, #26996	@ tmp149,
	ldr	r2, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r7, #0	@ tmp147,
	mov	r0, r4	@, pCtx
	str	ip, [r4, r1]	@ tmp144, <variable>.DSDNeedClearQue
	strb	r7, [r4, #178]	@ tmp147, <variable>.CodecInfo.Imgbuf_allocated
	strb	r2, [r4, #179]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #26992	@ tmp151,
	cmn	r0, #1	@ D.35308,
	str	r0, [r4, r3]	@ D.35308, <variable>.ChanID
	movne	r0, r7	@ D.35313, tmp147
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r7	@, tmp147
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35313,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #2	@,
	mov	r6, r2	@ PrevSwitchRounding, PrevSwitchRounding
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.35241,
	str	r0, [r4, #0]	@ D.35241, <variable>.prediction_type
	bls	.L62	@,
.L41:
	mov	r3, #0	@ D.35246,
.L53:
	mov	r0, r3	@, D.35246
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L62:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, [r4, #0]	@ <variable>.prediction_type, <variable>.prediction_type
	cmp	r3, #0	@ <variable>.prediction_type,
	str	r0, [r4, #4]	@, <variable>.quantizer
	beq	.L63	@,
	cmp	r6, #0	@ PrevSwitchRounding,
	mov	r1, #1	@,
	streq	r6, [r4, #8]	@ PrevSwitchRounding, <variable>.rounding_type
	mov	r0, r5	@, pBs
	ldrne	r3, [r4, #8]	@ <variable>.rounding_type, <variable>.rounding_type
	str	r6, [r4, #20]	@ PrevSwitchRounding, <variable>.switch_rounding
	rsbne	r3, r3, #1	@ tmp164, <variable>.rounding_type,
	strne	r3, [r4, #8]	@ tmp164, <variable>.rounding_type
	bl	BsGet	@
	mov	r1, #2	@,
	str	r0, [r4, #16]	@, <variable>.has_skips
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #36]	@ D.35279, <variable>.alternative_P_AC_DCT
	cmp	r0, #3	@ D.35279,
	ldrls	pc, [pc, r0, asl #2]	@ D.35279
	b	.L56	@
.L60:
	.word	.L57
	.word	.L57
	.word	.L59
	.word	.L59
.L59:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L56:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, <variable>.alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.35246,
	str	r0, [r4, #44]	@, <variable>.alternative_MV
	mov	r0, r3	@, D.35246
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L63:
	mov	r0, #1	@ tmp154,
	mov	r1, #5	@,
	str	r0, [r4, #8]	@ tmp154, <variable>.rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ tmp155, D.35251,
	str	r0, [r4, #12]	@ D.35251, <variable>.vol_mode
	cmp	r0, #26	@ D.35251,
	cmpne	r3, #1	@, tmp155,
	bhi	.L41	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.35260, <variable>.alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.35260,
	ldrls	pc, [pc, r0, asl #2]	@ D.35260
	b	.L43	@
.L47:
	.word	.L44
	.word	.L44
	.word	.L46
	.word	.L46
.L57:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L56	@
.L46:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L43:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.35264, <variable>.alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.35264,
	ldrls	pc, [pc, r0, asl #2]	@ D.35264
	b	.L48	@
.L52:
	.word	.L49
	.word	.L49
	.word	.L51
	.word	.L51
.L51:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L48:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.35246,
	str	r0, [r4, #32]	@, <variable>.alternative_I_DC_DCT
	b	.L53	@
.L49:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L48	@
.L44:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L43	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #26992	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #26596	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #26384	@ tmp146,
	ldr	lr, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r2, lr, #3	@ D.35102, <variable>.CodecInfo.PictureHeader.prediction_type,
	movw	lr, #26432	@ tmp151,
	orr	ip, r2, #7168	@ tmp148, D.35102,
	str	r2, [r4, #136]	@ D.35102, <variable>.bottom_fld_type
	str	r2, [r4, #132]	@ D.35102, <variable>.top_fld_type
	orr	r3, ip, #32	@ tmp148, tmp148,
	str	r3, [r4, #140]	@ tmp148, <variable>.format
	movw	r3, #26436	@ tmp154,
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r2, ip, asl #4	@ tmp153, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [r4, #144]	@ tmp153, <variable>.image_width
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, lr, asl #4	@ tmp156, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	str	ip, [r4, #148]	@ tmp156, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L68	@,
.L66:
	mov	r3, #8	@ tmp177,
	mov	r2, #1	@ tmp175,
	mov	ip, #5	@ tmp172,
	mov	r1, #0	@ tmp173,
	str	r3, [r4, #308]	@ tmp177, <variable>.ImageDnr.QP_U
	str	r3, [r4, #304]	@ tmp177, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #293]	@ tmp175, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #300]	@ tmp172, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #288]	@ tmp173, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #295]	@ tmp175, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #312]	@ tmp177, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L68:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.35112, <variable>.image_stride
	add	ip, r0, #15	@ tmp160, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp159, D.35112,
	mov	r1, ip, lsr #4	@ tmp162, tmp160,
	add	ip, r3, r2	@ tmp167, <variable>.luma_phy_addr, D.35112
	str	ip, [r4, #96]	@ tmp167, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.35118, tmp162, tmp159
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp164, D.35118, <variable>.luma_phy_addr
	add	lr, r0, r1	@ tmp166, <variable>.luma_vir_addr, D.35118
	str	ip, [r4, #108]	@ tmp164, <variable>.chrom_phy_addr
	add	r0, ip, r2	@ tmp168, tmp164, D.35112
	str	lr, [r4, #36]	@ tmp166, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp168, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp164
	str	ip, [r4, #92]	@ tmp164, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L66	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ SwitchRounding, SwitchRounding
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, #5	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #26992	@ tmp147,
	movw	r3, #26596	@ tmp149,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L70	@,
	movw	ip, #26384	@ tmp151,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	cmp	r2, #0	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	andeq	r6, r6, #1	@ tmp154, SwitchRounding,
	movweq	r2, #26480	@ tmp153,
	streq	r6, [r4, r2]	@ tmp154, <variable>.CodecInfo.PrevSwitchRounding
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.456,
	blt	.L73	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.456,
.L73:
	str	r5, [r0, #180]	@ iftmp.456, <variable>.error_level
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r0, [r4, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L76	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L76	@,
	movw	ip, #26508	@ tmp161,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	movwne	r2, #26592	@ tmp163,
	mvneq	r1, #0	@ prephitmp.653,
	ldrne	r1, [r4, r2]	@ prephitmp.653,
.L84:
	cmn	r1, #1	@ prephitmp.653,
	movw	lr, #26600	@ tmp166,
	str	r1, [r4, lr]	@ prephitmp.653, <variable>.CodecInfo.ToQueFsID
	beq	.L79	@,
	movw	r5, #26992	@ tmp167,
	movw	r6, #26600	@ tmp169,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.35732, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.35732
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.35732
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r3, r0	@ D.35737,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #26624	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L85	@,
.L79:
	movw	lr, #26384	@ tmp189,
	movw	ip, #26504	@ tmp185,
	ldr	r0, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	cmp	r0, #1	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	add	r1, r2, #1	@ tmp188, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp188, <variable>.CodecInfo.FrmCnt
	beq	.L86	@,
.L81:
	movw	r5, #26592	@ tmp195,
	movw	r6, #26596	@ tmp196,
	ldr	r1, [r4, r5]	@ prephitmp.666, <variable>.CodecInfo.FwdFsID
	movw	r2, #26508	@ tmp193,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	mov	r0, #1	@ tmp194,
	str	r0, [r4, r2]	@ tmp194, <variable>.CodecInfo.RefNum
	cmp	r1, ip	@ prephitmp.666, <variable>.CodecInfo.CurFsID
	beq	.L82	@,
	mov	r2, r1	@, prephitmp.666
	movw	r7, #26992	@ tmp199,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_RemovePmv	@
	ldr	r1, [r4, r6]	@ prephitmp.666, <variable>.CodecInfo.CurFsID
.L82:
	movw	ip, #26592	@ tmp208,
	movw	lr, #26992	@ tmp209,
	str	r1, [r4, ip]	@ prephitmp.666, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #26596	@ tmp212,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.35704,
.L80:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L76:
	movw	r0, #26596	@ tmp165,
	ldr	r1, [r4, r0]	@ prephitmp.653,
	b	.L84	@
.L86:
	movw	r1, #26508	@ tmp191,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L81	@,
.L70:
	mov	r0, #0	@ D.35704,
	b	.L80	@
.L85:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.35704,
	b	.L80	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L99	@,
	movw	r6, #26992	@ tmp142,
	movw	r7, #26596	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L99	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L97	@,
.L99:
	add	r5, r4, #26624	@ tmp177, pCtx,
	add	r5, r5, #16	@ tmp177, tmp177,
.L88:
	mov	r0, r5	@, tmp177
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L97:
	mov	r0, r4	@, pCtx
	add	r5, r4, #26624	@ tmp177, pCtx,
	bl	Divx3_SetImgFormat	@
	add	r5, r5, #16	@ tmp177, tmp177,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #224]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp177
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L89	@,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r7, r2	@ tmp166,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r8, #192]	@ tmp166, <variable>.p_usrdat
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r8, #196]	@ tmp166, <variable>.p_usrdat
	b	.L88	@
.L89:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L88	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L88	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	bls	.L88	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	DIVX3DEC_GetRemainImg, .-DIVX3DEC_GetRemainImg
	.align	2
	.global	Divx3_ArrangeVHBMem
	.type	Divx3_ArrangeVHBMem, %function
Divx3_ArrangeVHBMem:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #48]	@ D.34997, <variable>.pic_width_in_mb
	.pad #48
	sub	sp, sp, #48	@,,
	cmp	r1, #1	@ D.34997,
	ldrls	r3, [r2, #52]	@ prephitmp.731, <variable>.pic_height_in_mb
	bls	.L102	@,
	ldr	r3, [r2, #52]	@ prephitmp.731, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.731,
	bls	.L102	@,
	ldr	r1, [r4, #0]	@ D.35004, <variable>.pstExtraData
	ldr	r3, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L105	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L127	@,
.L106:
	ldr	r6, [r2, #60]	@ PicHeight, <variable>.pic_height_in_pix
	mov	r8, #5	@ prephitmp.733,
	ldr	r5, [r2, #56]	@ PicWidth, <variable>.pic_width_in_pix
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L113:
	add	r7, sp, #8	@ tmp198,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp198
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp174,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #26992	@ tmp185,
	strb	r3, [sp, #10]	@ tmp174, FspInstCfg.s32RprEnable
	strb	r2, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #15]	@ prephitmp.733, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, sl	@ iftmp.431, DecFsNum
	strb	r3, [sp, #13]	@ iftmp.431, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp198
	uxtbne	r9, r9	@ iftmp.432, PmvNum
	mov	r7, #0	@ tmp183,
	moveq	r9, #1	@ iftmp.432,
	strb	r7, [sp, #12]	@ tmp183, FspInstCfg.s32UserDec
	strb	r9, [sp, #16]	@ iftmp.432, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35053,
	movne	r0, r7	@ D.35001, tmp183
	beq	.L128	@,
.L104:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L105:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L106	@,
	ldr	r5, [r2, #56]	@ temp.755, <variable>.pic_width_in_pix
	ldr	ip, [r1, #568]	@ D.35012, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.755, D.35012
	bhi	.L129	@,
	ldr	r3, [r2, #60]	@ prephitmp.737, <variable>.pic_height_in_pix
	ldr	lr, [r1, #572]	@ prephitmp.735, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.737, prephitmp.735
	bhi	.L116	@,
	ldr	r6, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L119	@,
	add	r9, sl, #1	@ PmvNum.759, DecFsNum,
	cmp	r9, #17	@ PmvNum.759,
	movge	r9, #17	@ PmvNum,
.L119:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.733, <variable>.stChanOption.s32DisplayFrameNum
	mov	r6, r3	@ PicHeight, prephitmp.737
	b	.L113	@
.L102:
	mov	r2, r1	@, D.34997
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35001,
	b	.L104	@
.L128:
	ldr	lr, [r4, #0]	@ temp.768, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp194,
	streqb	r0, [r4, #178]	@ tmp194, <variable>.CodecInfo.Imgbuf_allocated
	beq	.L104	@,
	mov	r0, r5	@, D.35053
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35001, D.35053
	b	.L104	@
.L127:
	ldr	r0, [r2, #56]	@ D.35011, <variable>.pic_width_in_pix
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35011, PicWidth
	bhi	.L130	@,
	ldr	r3, [r2, #60]	@ prephitmp.741, <variable>.pic_height_in_pix
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.741, PicHeight
	bhi	.L108	@,
	ldrb	r0, [r4, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L104	@,
	ldr	r2, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L112	@,
	add	r9, sl, #1	@ PmvNum.752, DecFsNum,
	cmp	r9, #17	@ PmvNum.752,
	movge	r9, #17	@ PmvNum,
.L112:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.733, <variable>.stChanOption.s32DisplayFrameNum
	b	.L113	@
.L129:
	ldr	lr, [r1, #572]	@ prephitmp.735, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.737, <variable>.pic_height_in_pix
.L116:
	mov	r2, r5	@, temp.755
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35001,
	b	.L104	@
.L130:
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ prephitmp.741, <variable>.pic_height_in_pix
.L108:
	mov	r2, r0	@, D.35011
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35001,
	b	.L104	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #26992	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r6, #26596	@ tmp144,
	cmp	r0, #0	@ D.34949,
	mov	r1, r0	@ D.34949,
	str	r0, [r4, r6]	@ D.34949, <variable>.CodecInfo.CurFsID
	blt	.L138	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L139	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.34963, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.34963,
	beq	.L135	@,
	ldr	r3, [r5, #412]	@ D.34966, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.34966,
	beq	.L135	@,
	ldr	r0, [r5, #416]	@ D.34969, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.34969,
	beq	.L135	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC20	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L135:
	movw	r0, #26596	@ tmp171,
	mov	r5, #1	@ D.34957,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L133:
	mov	r0, r5	@, D.34957
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L138:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	movw	r6, #26592	@ tmp152,
	bl	dprint_vfmw	@
	add	r1, r4, #26624	@, pCtx,
	add	r1, r1, #16	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp155,
	str	r5, [r4, r6]	@ tmp155, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #26508	@ tmp159,
	str	r5, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	b	.L133	@
.L139:
	movw	r1, #:lower16:.LC18	@,
	mov	r2, #114	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	b	.L133	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #204
	sub	sp, sp, #204	@,,
	add	r6, sp, #44	@ tmp519,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pPacket, pPacket
	mov	r2, #96	@,
	mov	r0, r6	@, tmp519
	mov	r1, #0	@,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	add	sl, r5, #26368	@ tmp520, pCtx,
	add	r7, sl, #16	@ pPictureHeader, tmp520,
	beq	.L203	@,
	ldr	r8, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r8, #0	@ <variable>.PhyAddr,
	beq	.L204	@,
	ldr	r8, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r8, #0	@ <variable>.VirAddr,
	beq	.L205	@,
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, #9	@ <variable>.LenInByte,
	bls	.L206	@,
	add	r8, r5, #8	@ pDivx3DecParam, pCtx,
	mov	r1, #160	@,
	mov	r9, #0	@ tmp231,
	mov	r0, r8	@, pDivx3DecParam
	bl	__memzero	@
	str	r9, [r5, #244]	@ tmp231, <variable>.CodecInfo.BsOffset
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #26488	@ tmp232,
	str	r0, [r5, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, #248]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	ldr	r2, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r5, #168]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r4, #12]	@ D.35387, <variable>.LenInByte
	str	r2, [r5, #252]	@ D.35387, <variable>.CodecInfo.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #256]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L146	@,
	ldr	r1, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r5, #260]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r5, #172]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	r3, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r3, [r5, #264]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	ip, [r5, #268]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L207	@,
	sub	lr, r2, #10	@ tmp253, D.35387,
	movw	ip, #:lower16:3145717	@ tmp254,
	movt	ip, #:upper16:3145717	@ tmp254,
	cmp	lr, ip	@ tmp253, tmp254
	bhi	.L148	@,
.L208:
	ldr	r1, [r5, #168]	@ D.35410, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.35410,
	beq	.L148	@,
	add	sl, sl, #240	@ pBs, tmp520,
	mov	r0, sl	@, pBs
	bl	BsInit	@
	mov	r0, sl	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	mov	r9, r0	@ D.35413,
	mov	r0, sl	@, pBs
	bl	BsGet	@
	mov	r2, r0, asl #24	@ tmp257, D.35414,
	and	ip, r0, #65280	@ tmp259, D.35414,
	orr	r3, r2, r0, lsr #24	@, tmp258, tmp257, D.35414,
	and	r1, r0, #16711680	@ tmp262, D.35414,
	orr	fp, r3, ip, asl #8	@, tmp261, tmp258, tmp259,
	mov	r0, sl	@, pBs
	orr	fp, fp, r1, lsr #8	@, width, tmp261, tmp262,
	mov	r1, #32	@,
	add	r2, fp, #15	@ tmp264, width,
	str	fp, [sp, #100]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	ip, r2, lsr #4	@ tmp265, tmp264,
	str	ip, [sp, #92]	@ tmp265, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	mov	r3, r0, asl #24	@ tmp267, D.35425,
	and	r2, r0, #65280	@ tmp269, D.35425,
	orr	ip, r3, r0, lsr #24	@, tmp268, tmp267, D.35425,
	and	r1, r0, #16711680	@ tmp272, D.35425,
	orr	r3, ip, r2, asl #8	@, tmp271, tmp268, tmp269,
	orr	r3, r3, r1, lsr #8	@, height, tmp271, tmp272,
	str	r3, [sp, #104]	@ height, TmpPictureHeader.pic_height_in_pix
	add	r0, r3, #15	@ tmp274, height,
	cmp	fp, #31	@ width,
	cmphi	r3, #31	@, height,
	mov	r2, r0, lsr #4	@ tmp275, tmp274,
	str	r2, [sp, #96]	@ tmp275, TmpPictureHeader.pic_height_in_mb
	bls	.L149	@,
	cmp	fp, #1920	@ width,
	cmpls	r3, #1088	@, height,
	movls	ip, #0	@, tmp289
	movhi	ip, #1	@, tmp289
	bls	.L150	@,
.L149:
	mov	r2, fp	@, width
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L206:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
.L142:
	add	sp, sp, #204	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L207:
	movw	r6, #26992	@ tmp243,
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.35359, tmp231
	b	.L142	@
.L148:
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L204:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35359, <variable>.PhyAddr
	b	.L142	@
.L146:
	sub	lr, r2, #10	@ tmp253, D.35387,
	movw	ip, #:lower16:3145717	@ tmp254,
	movt	ip, #:upper16:3145717	@ tmp254,
	str	r9, [r5, #268]	@ tmp231, <variable>.CodecInfo.IsLastSeg1
	cmp	lr, ip	@ tmp253, tmp254
	str	r9, [r5, #260]	@ tmp231, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r5, #172]	@ tmp231, <variable>.CodecInfo.BsVirAddr1
	str	r9, [r5, #264]	@ tmp231, <variable>.CodecInfo.BsLength1
	bls	.L208	@,
	b	.L148	@
.L150:
	movw	r0, #26392	@ tmp291,
	movw	r1, #26480	@ tmp294,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	mov	r0, sl	@, pBs
	ldr	r2, [r5, r1]	@, <variable>.CodecInfo.PrevSwitchRounding
	mov	r1, r6	@, tmp519
	str	ip, [sp, #16]	@,
	str	lr, [sp, #52]	@ <variable>.CodecInfo.PictureHeader.rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L209	@,
	movw	ip, #26508	@ tmp297,
	ldr	fp, [r5, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	fp, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L152	@,
	ldr	r2, [sp, #44]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	bne	.L210	@,
.L152:
	ldr	r2, [sp, #96]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r3, [sp, #92]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldrb	r1, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	mul	lr, r3, r2	@ tmp303, TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	str	lr, [sp, #108]	@ tmp303, TmpPictureHeader.total_mbs
	beq	.L201	@,
	movw	ip, #26432	@ tmp305,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, r0	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L155	@,
.L201:
	ldr	r3, [r5, #0]	@ prephitmp.828, <variable>.pstExtraData
.L154:
	ldr	fp, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L211	@,
.L158:
	movw	r3, #:lower16:g_event_report	@ tmp342,
	movt	r3, #:upper16:g_event_report	@ tmp342,
	ldr	r3, [r3, #0]	@ g_event_report.443, g_event_report
	cmp	r3, #0	@ g_event_report.443,
	beq	.L164	@,
	movw	ip, #26432	@ tmp343,
	movw	lr, #26436	@ tmp345,
	ldrh	r1, [r5, ip]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	ip, #26992	@ tmp349,
	ldrh	r2, [sp, #92]	@, TmpPictureHeader.pic_width_in_mb
	ldrh	r0, [sp, #96]	@, TmpPictureHeader.pic_height_in_mb
	strh	r1, [sp, #180]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	fp, [r5, lr]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [sp, #184]	@ movhi	@, para
	add	r2, sp, #180	@,,
	strh	r0, [sp, #186]	@ movhi	@, para
	strh	fp, [sp, #182]	@ movhi	@, para
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.443
.L164:
	movw	ip, #26992	@ tmp352,
	movw	fp, #26592	@ tmp354,
	ldr	r1, [r5, fp]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	str	ip, [sp, #16]	@,
	str	fp, [sp, #20]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #20]	@,
	mov	r0, #0	@,
	add	fp, r5, #26624	@ D.35502, pCtx,
	add	fp, fp, #16	@ D.35502, D.35502,
	str	r0, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	ldr	lr, [sp, #16]	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	str	r3, [sp, #20]	@,
	bl	FSP_GetNullLogicFs	@
	movw	ip, #26508	@ tmp361,
	mov	r1, #0	@,
	str	r1, [r5, ip]	@, <variable>.CodecInfo.RefNum
	mov	r1, fp	@, D.35502
	ldr	r2, [sp, #20]	@,
	str	r0, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	r3, [sp, #16]	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #92]	@ prephitmp.830, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.830,
	ldrhi	r3, [sp, #96]	@ prephitmp.929, TmpPictureHeader.pic_height_in_mb
	bhi	.L166	@,
	ldr	r3, [sp, #96]	@ prephitmp.929, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.929,
	bhi	.L166	@,
	ldr	r1, [r5, #0]	@ temp.886, <variable>.pstExtraData
	ldr	lr, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	lr, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L168	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L212	@,
.L168:
	movw	r2, #26992	@ tmp370,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L202	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L171	@,
	movw	r1, #26996	@ tmp374,
	ldr	lr, [r5, r1]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	lr, #1	@ <variable>.DSDNeedClearQue,
	beq	.L171	@,
.L202:
	ldr	r2, [sp, #92]	@ prephitmp.830, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #96]	@ prephitmp.929, TmpPictureHeader.pic_height_in_mb
.L169:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r5	@, pCtx
	mov	r2, r6	@, tmp519
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L213	@,
.L157:
	ldr	r2, [sp, #44]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r1, r6	@, tmp519
	mov	r0, r7	@, pPictureHeader
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	movwne	r2, #26396	@ tmp380,
	moveq	fp, #23	@ lastpic_vol_mode,
	ldrne	fp, [r5, r2]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r0, [sp, #44]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r0, #0	@ TmpPictureHeader.prediction_type,
	movwne	r0, #26396	@ tmp386,
	strne	fp, [r5, r0]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	mov	r0, r5	@, pCtx
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	fp, r0	@ ret,
	beq	.L175	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L155:
	movw	lr, #26436	@ tmp308,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L201	@,
	ldr	r3, [r5, #0]	@ prephitmp.828, <variable>.pstExtraData
	ldr	r2, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r2, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L157	@,
	b	.L154	@
.L203:
	movw	r3, #26504	@ tmp223,
	mov	r0, #1	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.FrmCnt
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35359, pPacket
	b	.L142	@
.L205:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35359, <variable>.VirAddr
	b	.L142	@
.L209:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #16]	@,
	mov	r0, r3	@ D.35359, tmp289
	b	.L142	@
.L166:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L213:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L211:
	add	r1, sp, #200	@ tmp318,,
	movw	r3, #26992	@ tmp316,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	mov	lr, #0	@ tmp313,
	add	r3, sp, #196	@,,
	str	lr, [r1, #-12]!	@ tmp313, RefNum
	add	r2, sp, #192	@,,
	str	lr, [sp, #196]	@ tmp313, NewNum
	str	lr, [sp, #192]	@ tmp313, ReadNum
	str	lr, [sp, #16]	@,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	ip, #26432	@ tmp321,
	ldr	r1, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	ip, [sp, #16]	@,
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L159	@,
	movw	lr, #26436	@ tmp325,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r1, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r2, r1, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L159	@,
	ldr	lr, [sp, #192]	@ ReadNum, ReadNum
	ldr	r1, [sp, #196]	@ NewNum, NewNum
	add	r2, r1, lr	@ tmp329, NewNum, ReadNum
	cmp	r2, #0	@ tmp329,
	strgt	fp, [r3, #728]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.s32DSDWaitFlag
	movwle	r2, #26996	@ tmp333,
	movgt	r0, ip	@ D.35359, tmp313
	strle	fp, [r5, r2]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedClearQue
	bgt	.L142	@,
.L161:
	mov	r1, #0	@ tmp341,
	str	r1, [r3, #728]	@ tmp341, <variable>.s32DSDWaitFlag
	b	.L158	@
.L212:
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L169	@,
.L171:
	mov	r0, fp	@, D.35502
	bl	ResetVoQueue	@
	b	.L202	@
.L210:
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r0, fp	@ D.35359, <variable>.CodecInfo.RefNum
	b	.L142	@
.L175:
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r6, r0, #0	@ D.35536,
	beq	.L214	@,
	movw	ip, #26992	@,
	movw	r6, #26596	@,
	ldr	r1, [r5, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L177	@,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp410,
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r7, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	lr, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r7, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r3, #0	@,
	str	ip, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [r7, #56]	@ tmp410, <variable>.pstExtraData,
	ldrd	r2, [r6, #16]	@, pImg,
	strd	r2, [sp, #24]	@,,
	ldrd	r2, [r6, #8]	@ <variable>.PTS, pImg,
	ldrd	r6, [sp, #24]	@,,
	strd	r6, [sp]	@,
	bl	dprint_vfmw	@
	movw	r7, #26596	@,
	movw	lr, #26992	@,
	ldr	r1, [r5, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r1, #26992	@,
	movw	r3, #26592	@ tmp420,
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L178	@,
	ldr	r3, [r6, #408]	@ D.35564, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.35564,
	beq	.L178	@,
	ldr	r1, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L178	@,
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L178	@,
	ldr	fp, [r0, #408]	@ D.35571, <variable>.pstDecodeFs
	mov	r1, #0	@,
	mov	r2, #20	@,
	mov	r7, r1	@ tmp457,
	cmp	fp, #0	@ D.35571,
	add	lr, sp, #140	@ tmp522,,
	ldrne	fp, [fp, #12]	@, <variable>.PhyAddr
	ldreq	r3, [r3, #12]	@, <variable>.PhyAddr
	str	lr, [sp, #16]	@,
	strne	fp, [sp, #24]	@, %sfp
	add	fp, sp, #160	@ tmp523,,
	streq	r3, [sp, #24]	@, %sfp
	mov	r0, fp	@, tmp523
	bl	memset	@
	ldr	ip, [sp, #16]	@,
	mov	r1, r7	@, tmp457
	mov	r2, #20	@,
	mov	r0, ip	@, tmp522
	bl	memset	@
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [r5, #160]	@, <variable>.Divx3DecParam.ColPmvPhyAddr
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	str	r0, [r5, #132]	@, <variable>.Divx3DecParam.FwdRefPhyAddr
	mov	r0, #13	@,
	ldr	r3, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [sp, #36]	@, %sfp
	ldr	r2, [r3, #12]	@ D.35577, <variable>.PhyAddr
	str	r2, [r5, #136]	@ D.35577, <variable>.Divx3DecParam.CurPicPhyAddr
	ldr	ip, [r6, #420]	@, <variable>.PmvAddr
	str	ip, [sp, #32]	@, %sfp
	str	ip, [r5, #156]	@, <variable>.Divx3DecParam.CurrPmvPhyAddr
	ldr	r3, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [sp, #24]	@, %sfp
	ldr	ip, [r3, #12]	@ D.35581, <variable>.PhyAddr
	ldr	r3, [sp, #32]	@, %sfp
	str	lr, [sp, #0]	@,
	str	r3, [sp, #4]	@,
	mov	r3, ip	@, D.35581
	str	ip, [r5, #140]	@ D.35581, <variable>.Divx3DecParam.DispFramePhyAddr
	ldr	lr, [sp, #36]	@, %sfp
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	mov	r0, sl	@, pBs
	ldr	r1, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r5, #144]	@ <variable>.Stride, <variable>.Divx3DecParam.DDRStride
	ldr	ip, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r2, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r2, [r5, #148]	@ <variable>.ChromOffset, <variable>.Divx3DecParam.uv_offset
	bl	BsResidBits	@
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	bic	r1, r3, #15	@ tmp450, <variable>.PhyAddr,
	str	r1, [r5, #104]	@ tmp450, <variable>.Divx3DecParam.StreamBaseAddr
	ldr	ip, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	r2, ip, #15	@ tmp451, <variable>.PhyAddr,
	add	r3, r9, r2, asl #3	@, CurrPicBitOffset, D.35413, tmp451,
	rsb	ip, r0, r3	@ CurrPicBitOffset.914,, CurrPicBitOffset
	mov	r0, sl	@, pBs
	and	r1, ip, #127	@ tmp456, CurrPicBitOffset.914,
	str	r1, [r5, #116]	@ tmp456, <variable>.Divx3DecParam.StreamBitOffset
	mov	r2, ip, lsr #7	@ tmp454, CurrPicBitOffset.914,
	mov	r1, r2, asl #4	@ tmp455, tmp454,
	str	r1, [r5, #108]	@ tmp455, <variable>.Divx3DecParam.StreamPhyAddr
	bl	BsResidBits	@
	movw	r3, #26396	@ tmp460,
	ldr	r3, [r5, r3]	@ <variable>.CodecInfo.PictureHeader.vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	str	r7, [r5, #112]	@ tmp457, <variable>.Divx3DecParam.StreamPhyAddr
	cmp	r3, #24	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	str	r7, [r5, #120]	@ tmp457, <variable>.Divx3DecParam.StreamBitOffset
	str	r7, [r5, #128]	@ tmp457, <variable>.Divx3DecParam.StreamLength
	str	r0, [r5, #124]	@, <variable>.Divx3DecParam.StreamLength
	ldr	ip, [sp, #16]	@,
	beq	.L185	@,
	cmp	r3, #26	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L186	@,
	cmp	r3, #23	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L215	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35359, tmp457
	b	.L142	@
.L159:
	ldr	r0, [sp, #196]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	ble	.L216	@,
.L162:
	mov	r2, #1	@ tmp337,
	mov	r0, #0	@ D.35359,
	str	r2, [r3, #728]	@ tmp337, <variable>.s32DSDWaitFlag
	b	.L142	@
.L214:
	movw	r3, #26504	@ tmp389,
	movw	r1, #:lower16:.LC32	@,
	ldr	r2, [r5, r3]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35359, D.35536
	b	.L142	@
.L216:
	ldr	ip, [sp, #192]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	bgt	.L162	@,
	movw	lr, #26996	@ tmp338,
	mov	fp, #0	@ tmp339,
	str	fp, [r5, lr]	@ tmp339, <variable>.DSDNeedClearQue
	b	.L161	@
.L178:
	movw	r0, #26596	@ tmp433,
	add	ip, r0, #396	@ tmp432, tmp432,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35359,
	b	.L142	@
.L177:
	mov	r0, fp	@, ret
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35359, pImg
	b	.L142	@
.L185:
	movw	r3, #26436	@ tmp465,
	movw	r2, #26432	@ tmp468,
	ldr	r1, [r5, r3]	@ temp.915, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	str	r7, [sp, #160]	@ tmp457, slice_start_mbn
	tst	r1, #1	@ temp.915,
	mov	r7, r1, lsr #1	@ tmp467, temp.915,
	mul	sl, r6, r7	@ D.35605, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp467
	sub	r3, sl, #1	@ prephitmp.825, D.35605,
	str	r3, [sp, #140]	@ prephitmp.825, slice_end_mbn
	mov	r1, sl, asl #1	@ D.35609, D.35605,
	str	sl, [sp, #164]	@ D.35605, slice_start_mbn
	sub	r2, r1, #1	@ tmp470, D.35609,
	str	r2, [sp, #144]	@ tmp470, slice_end_mbn
	moveq	r2, #2	@ total_slice_num,
	beq	.L187	@,
	movw	r9, #26448	@ tmp472,
	str	r1, [sp, #168]	@ D.35609, slice_start_mbn
	ldr	r4, [r5, r9]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #3	@ total_slice_num,
	sub	r0, r4, #1	@ tmp474, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r0, [sp, #148]	@ tmp474, slice_end_mbn
.L187:
	movw	sl, #26388	@ tmp495,
	movw	r1, #26384	@ tmp489,
	ldr	r4, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.quantizer
	movw	sl, #26392	@ tmp497,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.rounding_type
	add	r9, r1, #48	@ tmp491, tmp491,
	movw	r0, #26436	@ tmp493,
	ldr	r7, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r6, [r5, r9]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	r2, #1	@ total_slice_num,
	str	sl, [r5, #28]	@, <variable>.Divx3DecParam.rounding_type
	movw	sl, #26400	@ tmp499,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.has_skips
	mov	r1, #0	@ ivtmp.848,
	ldr	r9, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r0, r5	@ ivtmp.854, pCtx
	str	r4, [r5, #24]	@, <variable>.Divx3DecParam.quantizer
	mov	r4, r1	@ slice_num, ivtmp.848
	str	sl, [r5, #32]	@, <variable>.Divx3DecParam.has_skips
	movw	sl, #26408	@ tmp501,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	str	r7, [r5, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	r6, [r5, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	sl, [r5, #36]	@, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	movw	sl, #26412	@ tmp503,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	str	r9, [r5, #20]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Divx3DecParam.PicHeightInMb
	str	r2, [r5, #60]	@ total_slice_num, <variable>.Divx3DecParam.TotalSliceNum
	str	sl, [r5, #40]	@, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	movw	sl, #26416	@ tmp505,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	str	sl, [r5, #44]	@, <variable>.Divx3DecParam.alternative_I_DC_DCT
	movw	sl, #26420	@ tmp507,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	str	sl, [r5, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	movw	sl, #26424	@ tmp509,
	ldr	sl, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	str	sl, [r5, #52]	@, <variable>.Divx3DecParam.alternative_P_DC_DCT
	movw	sl, #26428	@ tmp511,
	ldr	sl, [r5, sl]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	sl, [r5, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	bne	.L191	@,
	ldr	r6, [fp, #0]	@ tmp535, slice_start_mbn
	cmp	r2, #1	@ total_slice_num,
	mov	r1, #4	@ ivtmp.848,
	str	r3, [r5, #84]	@ prephitmp.825, <variable>.Divx3DecParam.slice_end_mbn
	mov	r4, #1	@ slice_num,
	add	r0, r5, r1	@ ivtmp.854, pCtx,
	str	r6, [r5, #64]	@ tmp535, <variable>.Divx3DecParam.slice_start_mbn
	ldrhi	r3, [ip, r1]	@ prephitmp.825, slice_end_mbn
	bhi	.L191	@,
	b	.L190	@
.L217:
	ldr	r7, [ip, r6]	@ prephitmp.825, slice_end_mbn
	add	r0, r3, #4	@ ivtmp.854, tmp529,
	ldr	r6, [fp, r6]	@ tmp534, slice_start_mbn
	str	r7, [r3, #84]	@ prephitmp.825, <variable>.Divx3DecParam.slice_end_mbn
	str	r6, [r3, #64]	@ tmp534, <variable>.Divx3DecParam.slice_start_mbn
	ldr	r3, [ip, r1]	@ prephitmp.825, slice_end_mbn
.L191:
	add	r6, r4, #1	@ tmp527, slice_num,
	ldr	r7, [fp, r1]	@ tmp514, slice_start_mbn
	cmp	r2, r6	@ total_slice_num, tmp527
	add	r4, r6, #1	@ slice_num, tmp527,
	add	r6, r1, #4	@ tmp528, ivtmp.848,
	str	r3, [r0, #84]	@ prephitmp.825, <variable>.Divx3DecParam.slice_end_mbn
	add	r1, r6, #4	@ ivtmp.848, tmp528,
	str	r7, [r0, #64]	@ tmp514, <variable>.Divx3DecParam.slice_start_mbn
	add	r3, r0, #4	@ tmp529, ivtmp.854,
	bhi	.L217	@,
.L190:
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@ D.35359,
	str	r8, [r5, #4]	@ pDivx3DecParam, <variable>.pDivx3DecParam
	ldr	ip, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r5, #164]	@ <variable>.s32Compress_en, <variable>.Divx3DecParam.Compress_en
	b	.L142	@
.L215:
	movw	r9, #26448	@ tmp463,
	str	r7, [sp, #160]	@ tmp457, slice_start_mbn
	ldr	r4, [r5, r9]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r2, #1	@ total_slice_num,
	sub	r3, r4, #1	@ prephitmp.825, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r3, [sp, #140]	@ prephitmp.825, slice_end_mbn
	b	.L187	@
.L186:
	movw	r1, #26436	@ tmp475,
	movw	r6, #26432	@ tmp478,
	ldr	sl, [r5, r1]	@ temp.918, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	r0, #3	@ tmp481,
	ldr	r9, [r5, r6]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	sl, #3	@ temp.918,
	str	r7, [sp, #160]	@ tmp457, slice_start_mbn
	mov	r3, sl, lsr #2	@ tmp477, temp.918,
	mul	r2, r9, r3	@ temp.921, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp477
	sub	r3, r2, #1	@ prephitmp.825, temp.921,
	str	r3, [sp, #140]	@ prephitmp.825, slice_end_mbn
	mul	r6, r0, r2	@ D.35618, tmp481, temp.921
	mov	sl, r2, asl #2	@ D.35622, temp.921,
	mov	r4, r2, asl #1	@ temp.922, temp.921,
	str	r2, [sp, #164]	@ temp.921, slice_start_mbn
	sub	r2, sl, #1	@ tmp483, D.35622,
	str	r2, [sp, #152]	@ tmp483, slice_end_mbn
	movwne	r2, #26448	@ tmp485,
	strne	sl, [sp, #176]	@ D.35622, slice_start_mbn
	str	r4, [sp, #168]	@ temp.922, slice_start_mbn
	sub	r1, r4, #1	@ tmp480, temp.922,
	sub	r7, r6, #1	@ tmp482, D.35618,
	str	r1, [sp, #144]	@ tmp480, slice_end_mbn
	str	r7, [sp, #148]	@ tmp482, slice_end_mbn
	moveq	r2, #4	@ total_slice_num,
	str	r6, [sp, #172]	@ D.35618, slice_start_mbn
	ldrne	sl, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	movne	r2, #5	@ total_slice_num,
	subne	sl, sl, #1	@ tmp487, <variable>.CodecInfo.PictureHeader.total_mbs,
	strne	sl, [sp, #156]	@ tmp487, slice_end_mbn
	b	.L187	@
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.35167, %object
	.size	__func__.35167, 19
__func__.35167:
	.ascii	"Divx3_DecodeDecide\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC1:
	.ascii	"----------------- divx3 Imode -> %d ---------------"
	.ascii	"---\012\000"
.LC2:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC3:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC4:
	.ascii	"P-frm\000"
	.space	2
.LC5:
	.ascii	"error: DecMode illegal\012\000"
.LC6:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC7:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC8:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC9:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC10:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC11:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC12:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC13:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC14:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC15:
	.ascii	"divx3 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC16:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC17:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC18:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC19:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC20:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC21:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC22:
	.ascii	"ERROR: frm %d, Invalid packet PhyAddr!\012\000"
.LC23:
	.ascii	"ERROR: frm %d, Invalid packet VirAddr!\012\000"
.LC24:
	.ascii	"ERROR: frm %d, Invalid packet len!\012\000"
.LC25:
	.ascii	"ERROR: frm %d, Invalid WxH: %dx%d!\012\000"
.LC26:
	.ascii	"Divx3_GetPictureHeader Error!\012\000"
	.space	1
.LC27:
	.ascii	"Can't decode from P frame!\012\000"
.LC28:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC29:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC30:
	.ascii	"Divx3_ArrangeVHBMem err\012\000"
	.space	3
.LC31:
	.ascii	"Divx3_DecodeDecide err\012\000"
.LC32:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC33:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC34:
	.ascii	"FSP_GetFsImagePtr Error!\012\000"
	.space	2
.LC35:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC36:
	.ascii	"dec addr: cur,cur2d,fwd,currpmv,colpmv = %p,%p,%p,%"
	.ascii	"p,%p,%p\012\000"
.LC37:
	.ascii	"vol_mode Error!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
