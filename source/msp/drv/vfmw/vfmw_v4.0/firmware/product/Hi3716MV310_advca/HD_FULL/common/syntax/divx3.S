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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o
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
	.global	Divx3_WritePicMsg
	.type	Divx3_WritePicMsg, %function
Divx3_WritePicMsg:
	.fnstart
.LFB1920:
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
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #26992	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38595,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.38598,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #26624	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38598,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.align	2
	.global	DIVX3DEC_RecycleImage
	.type	DIVX3DEC_RecycleImage, %function
DIVX3DEC_RecycleImage:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r4	@ D.38484, pCtx
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r5, #26992	@ tmp138,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.38484,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DIVX3DEC_RecycleImage, .-DIVX3DEC_RecycleImage
	.align	2
	.global	Divx3_DecodeDecide
	.type	Divx3_DecodeDecide, %function
Divx3_DecodeDecide:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldrb	r6, [r0, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	movw	r3, #26384	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	cmp	r6, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldr	r5, [r0, r3]	@ FrameType, <variable>.CodecInfo.PictureHeader.prediction_type
	beq	.L26	@,
	ldrb	r2, [r0, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r1, r2, #2	@ tmp145, <variable>.CodecInfo.UsedDecMode,
	uxtb	r0, r1	@ tmp146, tmp145
	cmp	r0, #1	@ tmp146,
	bls	.L16	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #8]	@ prephitmp.615, <variable>.s32DecMode
.L17:
	uxtb	r0, r3	@ D.38066, prephitmp.615
	strb	r0, [r4, #179]	@ D.38066, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #4	@ D.38066,
	ldrls	pc, [pc, r0, asl #2]	@ D.38066
	b	.L18	@
.L22:
	.word	.L19
	.word	.L19
	.word	.L20
	.word	.L31
	.word	.L19
.L18:
	bl	vfmw_dprint_nothing	@
.L31:
	mov	r0, #0	@ D.38049,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L26:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.38049, pFwdImg
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L16:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #8]	@ prephitmp.615, <variable>.s32DecMode
	cmp	r3, #4	@ prephitmp.615,
	cmpne	r3, #1	@, prephitmp.615,
	bhi	.L17	@,
	movw	r6, #26592	@ tmp158,
	movw	r7, #26992	@ tmp156,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r7, #0	@ tmp161,
	str	r7, [r4, r6]	@ tmp161, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #26508	@ tmp165,
	str	r7, [r4, r2]	@ tmp161, <variable>.CodecInfo.RefNum
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r3, [r1, #8]	@ prephitmp.615, <variable>.s32DecMode
	b	.L17	@
.L20:
	cmp	r5, #0	@ FrameType,
	bne	.L18	@,
.L23:
	movw	r0, #26592	@ tmp177,
	movw	r2, #26992	@ tmp175,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
.L30:
	mov	r0, #1	@ D.38049,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L19:
	cmp	r5, #0	@ FrameType,
	beq	.L23	@,
	movw	lr, #26508	@ tmp169,
	ldr	r6, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r6, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L26	@,
	movw	lr, #26992	@ tmp179,
	movw	r6, #26592	@ tmp181,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pFwdImg,
	beq	.L26	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r6, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [r1, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	ip, r3	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L30	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38049,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #26984	@ tmp139,
	ldr	r8, [r0, r6]	@ D.38164, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #27000	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r3, r4, #26624	@, pCtx,
	add	r0, r3, #16	@,,
	str	r8, [r4, r6]	@ D.38164, <variable>.ImageQue.ResetMagicWord
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
	cmn	r0, #1	@ D.38175,
	str	r0, [r4, r3]	@ D.38175, <variable>.ChanID
	movne	r0, r7	@ D.38179, tmp147
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38179,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #2	@,
	mov	r6, r2	@ PrevSwitchRounding, PrevSwitchRounding
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.38108,
	str	r0, [r4, #0]	@ D.38108, <variable>.prediction_type
	bls	.L58	@,
.L37:
	mov	r3, #0	@ D.38113,
.L49:
	mov	r0, r3	@, D.38113
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L58:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	ldr	r3, [r4, #0]	@ <variable>.prediction_type, <variable>.prediction_type
	cmp	r3, #0	@ <variable>.prediction_type,
	str	r0, [r4, #4]	@, <variable>.quantizer
	beq	.L59	@,
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
	str	r0, [r4, #36]	@ D.38146, <variable>.alternative_P_AC_DCT
	cmp	r0, #3	@ D.38146,
	ldrls	pc, [pc, r0, asl #2]	@ D.38146
	b	.L52	@
.L56:
	.word	.L53
	.word	.L53
	.word	.L55
	.word	.L55
.L55:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L52:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, <variable>.alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.38113,
	str	r0, [r4, #44]	@, <variable>.alternative_MV
	mov	r0, r3	@, D.38113
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L59:
	mov	r0, #1	@ tmp154,
	mov	r1, #5	@,
	str	r0, [r4, #8]	@ tmp154, <variable>.rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ tmp155, D.38118,
	str	r0, [r4, #12]	@ D.38118, <variable>.vol_mode
	cmp	r0, #26	@ D.38118,
	cmpne	r3, #1	@, tmp155,
	bhi	.L37	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.38127, <variable>.alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.38127,
	ldrls	pc, [pc, r0, asl #2]	@ D.38127
	b	.L39	@
.L43:
	.word	.L40
	.word	.L40
	.word	.L42
	.word	.L42
.L53:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L52	@
.L42:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L39:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.38131, <variable>.alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.38131,
	ldrls	pc, [pc, r0, asl #2]	@ D.38131
	b	.L44	@
.L48:
	.word	.L45
	.word	.L45
	.word	.L47
	.word	.L47
.L47:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
.L44:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.38113,
	str	r0, [r4, #32]	@, <variable>.alternative_I_DC_DCT
	b	.L49	@
.L45:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L44	@
.L40:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	b	.L39	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
.LFB1919:
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
	and	r2, lr, #3	@ D.37981, <variable>.CodecInfo.PictureHeader.prediction_type,
	movw	lr, #26432	@ tmp151,
	orr	ip, r2, #7168	@ tmp148, D.37981,
	str	r2, [r4, #136]	@ D.37981, <variable>.bottom_fld_type
	str	r2, [r4, #132]	@ D.37981, <variable>.top_fld_type
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
	beq	.L64	@,
.L62:
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
.L64:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.37991, <variable>.image_stride
	add	ip, r0, #15	@ tmp160, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp159, D.37991,
	mov	r1, ip, lsr #4	@ tmp162, tmp160,
	add	ip, r3, r2	@ tmp167, <variable>.luma_phy_addr, D.37991
	str	ip, [r4, #96]	@ tmp167, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.37997, tmp162, tmp159
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp164, D.37997, <variable>.luma_phy_addr
	add	lr, r0, r1	@ tmp166, <variable>.luma_vir_addr, D.37997
	str	ip, [r4, #108]	@ tmp164, <variable>.chrom_phy_addr
	add	r0, ip, r2	@ tmp168, tmp164, D.37991
	str	lr, [r4, #36]	@ tmp166, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp168, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp164
	str	ip, [r4, #92]	@ tmp164, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L62	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r2	@ SwitchRounding, SwitchRounding
	mov	r5, r1	@ ErrRatio, ErrRatio
	bl	vfmw_dprint_nothing	@
	mov	r0, #5	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #26992	@ tmp144,
	movw	r3, #26596	@ tmp146,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L66	@,
	movw	ip, #26384	@ tmp148,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	cmp	r2, #0	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	andeq	r6, r6, #1	@ tmp151, SwitchRounding,
	movweq	r2, #26480	@ tmp150,
	streq	r6, [r4, r2]	@ tmp151, <variable>.CodecInfo.PrevSwitchRounding
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.522,
	blt	.L69	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.522,
.L69:
	str	r5, [r0, #180]	@ iftmp.522, <variable>.error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r0, [r4, #179]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L72	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	lr, #1	@ <variable>.s32DecOrderOutput,
	beq	.L72	@,
	movw	r1, #26508	@ tmp157,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #0	@ <variable>.CodecInfo.RefNum,
	movwne	r2, #26592	@ tmp159,
	mvneq	r1, #0	@ prephitmp.720,
	ldrne	r1, [r4, r2]	@ prephitmp.720,
.L80:
	cmn	r1, #1	@ prephitmp.720,
	movw	r0, #26600	@ tmp162,
	str	r1, [r4, r0]	@ prephitmp.720, <variable>.CodecInfo.ToQueFsID
	beq	.L75	@,
	movw	r5, #26992	@ tmp163,
	movw	r6, #26600	@ tmp167,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r7, r0	@ pToQueImg,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	add	r3, r4, #26624	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #5	@,
	add	r3, r3, #16	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L81	@,
.L75:
	movw	r0, #26384	@ tmp181,
	movw	ip, #26504	@ tmp177,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	cmp	r1, #1	@ <variable>.CodecInfo.PictureHeader.prediction_type,
	add	lr, r2, #1	@ tmp180, <variable>.CodecInfo.FrmCnt,
	str	lr, [r4, ip]	@ tmp180, <variable>.CodecInfo.FrmCnt
	beq	.L82	@,
.L77:
	movw	r5, #26592	@ tmp187,
	movw	r6, #26596	@ tmp188,
	ldr	r3, [r4, r5]	@ prephitmp.733, <variable>.CodecInfo.FwdFsID
	movw	r1, #26508	@ tmp185,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@ tmp186,
	str	r2, [r4, r1]	@ tmp186, <variable>.CodecInfo.RefNum
	cmp	r3, ip	@ prephitmp.733, <variable>.CodecInfo.CurFsID
	beq	.L78	@,
	movw	r7, #26992	@ tmp190,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r3, [r4, r6]	@ prephitmp.733, <variable>.CodecInfo.CurFsID
.L78:
	movw	ip, #26992	@ tmp200,
	movw	lr, #26592	@ tmp199,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, r3	@, prephitmp.733
	str	r3, [r4, lr]	@ prephitmp.733, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_SetRef	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.38544,
.L76:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L72:
	movw	ip, #26596	@ tmp161,
	ldr	r1, [r4, ip]	@ prephitmp.720,
	b	.L80	@
.L82:
	movw	lr, #26508	@ tmp183,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L77	@,
.L66:
	mov	r0, #0	@ D.38544,
	b	.L76	@
.L81:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.38544,
	b	.L76	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
	.fnstart
.LFB1926:
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
	beq	.L95	@,
	movw	r6, #26992	@ tmp142,
	movw	r7, #26596	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L95	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L93	@,
.L95:
	add	r5, r4, #26624	@ tmp177, pCtx,
	add	r5, r5, #16	@ tmp177, tmp177,
.L84:
	mov	r0, r5	@, tmp177
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L93:
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
	beq	.L85	@,
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
	b	.L84	@
.L85:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L84	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L84	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	bls	.L84	@,
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
.LFB1918:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r2, #48]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ pCtx, pCtx
	cmp	r3, #1	@ <variable>.pic_width_in_mb,
	bls	.L109	@,
	ldr	r0, [r2, #52]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #1	@ <variable>.pic_height_in_mb,
	bls	.L109	@,
	ldr	r3, [r1, #0]	@ D.37885, <variable>.pstExtraData
	ldr	r1, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r1, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L100	@,
	ldr	r6, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L122	@,
.L101:
	ldr	r7, [r2, #60]	@ PicHeight, <variable>.pic_height_in_pix
	mov	r8, #5	@ prephitmp.795,
	ldr	r6, [r2, #56]	@ PicWidth, <variable>.pic_width_in_pix
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L107:
	mov	r1, #36	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #0	@ tmp171,
	mov	r1, sp	@,
	ldr	r2, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	ip, [sp, #2]	@ tmp171, FspInstCfg.s32RprEnable
	str	r6, [sp, #12]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #16]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r2, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r6, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #7]	@ prephitmp.795, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #26992	@ tmp182,
	uxtbne	ip, sl	@ iftmp.498, DecFsNum
	strb	ip, [sp, #5]	@ iftmp.498, FspInstCfg.s32ExpectedDecFsNum
	ldr	r7, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r7, #24	@ <variable>.eCapLevel,
	mov	r7, #0	@ tmp180,
	uxtbne	r9, r9	@ iftmp.499, PmvNum
	strb	r7, [sp, #4]	@ tmp180, FspInstCfg.s32UserDec
	moveq	r9, #1	@ iftmp.499,
	strb	r9, [sp, #8]	@ iftmp.499, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.37933,
	movne	r0, r7	@ D.37882, tmp180
	beq	.L123	@,
.L99:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L100:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L101	@,
	ldr	r6, [r2, #56]	@ temp.810, <variable>.pic_width_in_pix
	ldr	r0, [r3, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, r0	@ temp.810, <variable>.stChanOption.s32MaxWidth
	bhi	.L109	@,
	ldr	r7, [r2, #60]	@ temp.812, <variable>.pic_height_in_pix
	ldr	r1, [r3, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r7, r1	@ temp.812, <variable>.stChanOption.s32MaxHeight
	bhi	.L109	@,
.L110:
	ldr	r5, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L112	@,
	add	r9, sl, #1	@ PmvNum.815, DecFsNum,
	cmp	r9, #17	@ PmvNum.815,
	movge	r9, #17	@ PmvNum,
.L112:
	ldrb	r8, [r3, #616]	@ zero_extendqisi2	@ prephitmp.795, <variable>.stChanOption.s32DisplayFrameNum
	b	.L107	@
.L109:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.37882,
	b	.L99	@
.L123:
	ldr	lr, [r4, #0]	@ temp.823, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp190,
	streqb	r0, [r4, #178]	@ tmp190, <variable>.CodecInfo.Imgbuf_allocated
	beq	.L99	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.37882, D.37933
	b	.L99	@
.L122:
	ldr	r6, [r3, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	ldr	ip, [r2, #56]	@ <variable>.pic_width_in_pix, <variable>.pic_width_in_pix
	cmp	ip, r6	@ <variable>.pic_width_in_pix, PicWidth
	bhi	.L109	@,
	ldr	r2, [r2, #60]	@ <variable>.pic_height_in_pix, <variable>.pic_height_in_pix
	ldr	r7, [r3, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r7	@ <variable>.pic_height_in_pix, PicHeight
	bhi	.L109	@,
	ldrb	r0, [r4, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L110	@,
	b	.L99	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #26992	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #26596	@ tmp141,
	cmp	r0, #0	@ D.37838,
	mov	r1, r0	@ D.37838,
	str	r0, [r4, r3]	@ D.37838, <variable>.CodecInfo.CurFsID
	blt	.L131	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r7, r0, #0	@ pLf,
	beq	.L132	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L128	@,
	ldr	ip, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L128	@,
	ldr	lr, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L128	@,
	bl	vfmw_dprint_nothing	@
.L128:
	movw	r3, #26596	@ tmp162,
	mov	r7, #1	@ D.37845,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r1, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L126:
	mov	r0, r7	@, D.37845
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L131:
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #26624	@, pCtx,
	movw	r6, #26592	@ tmp148,
	add	r1, r0, #16	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r7, #0	@ tmp151,
	bl	FSP_ClearNotInVoQueue	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, r6]	@ tmp151, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #26508	@ tmp155,
	str	r7, [r4, r1]	@ tmp151, <variable>.CodecInfo.RefNum
	str	r0, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	mov	r0, r7	@, D.37845
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L132:
	bl	vfmw_dprint_nothing	@
	b	.L126	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #172
	sub	sp, sp, #172	@,,
	add	r6, sp, #12	@ tmp498,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r4, r1	@ pPacket, pPacket
	mov	r2, #96	@,
	mov	r0, r6	@, tmp498
	mov	r1, #0	@,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	add	sl, r5, #26368	@ tmp497, pCtx,
	add	r7, sl, #16	@ pPictureHeader, tmp497,
	beq	.L194	@,
	ldr	fp, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	fp, #0	@ <variable>.PhyAddr,
	beq	.L168	@,
	ldr	fp, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	fp, #0	@ <variable>.VirAddr,
	beq	.L168	@,
	ldr	r3, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #9	@ <variable>.LenInByte,
	bls	.L193	@,
	add	r8, r5, #8	@ pDivx3DecParam, pCtx,
	mov	r1, #160	@,
	mov	fp, #0	@ tmp220,
	mov	r0, r8	@, pDivx3DecParam
	bl	__memzero	@
	str	fp, [r5, #244]	@ tmp220, <variable>.CodecInfo.BsOffset
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #26488	@ tmp221,
	str	r0, [r5, r3]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	ldr	ip, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r5, #248]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	ldr	r2, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r5, #168]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r4, #12]	@ D.38248, <variable>.LenInByte
	str	r2, [r5, #252]	@ D.38248, <variable>.CodecInfo.BsLength
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	r1, [r5, #256]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L139	@,
	ldr	r3, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r5, #260]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r5, #172]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r5, #264]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	str	r1, [r5, #268]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L195	@,
	sub	lr, r2, #10	@ tmp242, D.38248,
	movw	r1, #:lower16:3145717	@ tmp243,
	movt	r1, #:upper16:3145717	@ tmp243,
	cmp	lr, r1	@ tmp242, tmp243
	bhi	.L141	@,
.L196:
	ldr	r1, [r5, #168]	@ D.38271, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.38271,
	beq	.L141	@,
	add	sl, sl, #240	@ pBs, tmp497,
	mov	r0, sl	@, pBs
	bl	BsInit	@
	mov	r0, sl	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	mov	r9, r0	@ D.38274,
	mov	r0, sl	@, pBs
	bl	BsGet	@
	mov	r2, r0, asl #24	@ tmp246, D.38275,
	and	r3, r0, #65280	@ tmp248, D.38275,
	orr	ip, r2, r0, lsr #24	@, tmp247, tmp246, D.38275,
	and	r1, r0, #16711680	@ tmp251, D.38275,
	orr	fp, ip, r3, asl #8	@, tmp250, tmp247, tmp248,
	mov	r0, sl	@, pBs
	orr	fp, fp, r1, lsr #8	@, width, tmp250, tmp251,
	mov	r1, #32	@,
	add	r2, fp, #15	@ tmp253, width,
	str	fp, [sp, #68]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	r3, r2, lsr #4	@ tmp254, tmp253,
	str	r3, [sp, #60]	@ tmp254, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	mov	ip, r0, asl #24	@ tmp256, D.38286,
	and	r2, r0, #65280	@ tmp258, D.38286,
	orr	r1, ip, r0, lsr #24	@, tmp257, tmp256, D.38286,
	and	r0, r0, #16711680	@ tmp261, D.38286,
	orr	r3, r1, r2, asl #8	@, tmp260, tmp257, tmp258,
	orr	r3, r3, r0, lsr #8	@, height, tmp260, tmp261,
	str	r3, [sp, #72]	@ height, TmpPictureHeader.pic_height_in_pix
	add	ip, r3, #15	@ tmp263, height,
	cmp	fp, #31	@ width,
	cmphi	r3, #31	@, height,
	mov	r2, ip, lsr #4	@ tmp264, tmp263,
	str	r2, [sp, #64]	@ tmp264, TmpPictureHeader.pic_height_in_mb
	bls	.L193	@,
	cmp	fp, #1920	@ width,
	cmpls	r3, #1088	@, height,
	movls	fp, #0	@, tmp278
	movhi	fp, #1	@, tmp278
	bls	.L143	@,
.L193:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38223,
.L135:
	add	sp, sp, #172	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L168:
	bl	vfmw_dprint_nothing	@
	mov	r0, fp	@ D.38223, pImg
	b	.L135	@
.L195:
	movw	r6, #26992	@ tmp232,
	ldr	r1, [r4, #16]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, fp	@ D.38223, tmp220
	b	.L135	@
.L141:
	mov	r0, #0	@ D.38223,
	b	.L135	@
.L139:
	sub	lr, r2, #10	@ tmp242, D.38248,
	movw	r1, #:lower16:3145717	@ tmp243,
	movt	r1, #:upper16:3145717	@ tmp243,
	str	fp, [r5, #268]	@ tmp220, <variable>.CodecInfo.IsLastSeg1
	cmp	lr, r1	@ tmp242, tmp243
	str	fp, [r5, #260]	@ tmp220, <variable>.CodecInfo.BsPhyAddr1
	str	fp, [r5, #172]	@ tmp220, <variable>.CodecInfo.BsVirAddr1
	str	fp, [r5, #264]	@ tmp220, <variable>.CodecInfo.BsLength1
	bls	.L196	@,
	b	.L141	@
.L143:
	movw	r0, #26392	@ tmp279,
	movw	r1, #26480	@ tmp282,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.rounding_type, <variable>.CodecInfo.PictureHeader.rounding_type
	mov	r0, sl	@, pBs
	ldr	r2, [r5, r1]	@, <variable>.CodecInfo.PrevSwitchRounding
	mov	r1, r6	@, tmp498
	str	lr, [sp, #20]	@ <variable>.CodecInfo.PictureHeader.rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L168	@,
	movw	ip, #26508	@ tmp284,
	ldr	fp, [r5, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	fp, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L145	@,
	ldr	r3, [sp, #12]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r3, #0	@ TmpPictureHeader.prediction_type,
	bne	.L168	@,
.L145:
	ldr	r2, [sp, #64]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r3, [sp, #60]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldrb	r1, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	mul	lr, r3, r2	@ tmp289, TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	str	lr, [sp, #76]	@ tmp289, TmpPictureHeader.total_mbs
	beq	.L192	@,
	movw	ip, #26432	@ tmp291,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, r0	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L148	@,
.L192:
	ldr	r3, [r5, #0]	@ prephitmp.881, <variable>.pstExtraData
.L147:
	ldr	fp, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L197	@,
.L151:
	movw	r3, #:lower16:g_event_report	@ tmp328,
	movt	r3, #:upper16:g_event_report	@ tmp328,
	ldr	r3, [r3, #0]	@ g_event_report.509, g_event_report
	cmp	r3, #0	@ g_event_report.509,
	beq	.L157	@,
	movw	ip, #26432	@ tmp329,
	movw	lr, #26436	@ tmp331,
	ldrh	r1, [r5, ip]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	ip, #26992	@ tmp335,
	ldrh	r2, [sp, #60]	@, TmpPictureHeader.pic_width_in_mb
	ldrh	r0, [sp, #64]	@, TmpPictureHeader.pic_height_in_mb
	strh	r1, [sp, #148]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	fp, [r5, lr]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [sp, #152]	@ movhi	@, para
	add	r2, sp, #148	@,,
	strh	r0, [sp, #154]	@ movhi	@, para
	strh	fp, [sp, #150]	@ movhi	@, para
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.509
.L157:
	movw	lr, #26992	@ tmp338,
	movw	r3, #26592	@ tmp340,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	add	fp, r5, #26624	@ D.38360, pCtx,
	str	r3, [sp, #0]	@,
	add	fp, fp, #16	@ D.38360, D.38360,
	str	lr, [sp, #4]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r2, [sp, #0]	@,
	mov	r0, #0	@,
	str	r0, [r5, r2]	@, <variable>.CodecInfo.FwdFsID
	ldr	ip, [sp, #4]	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	str	r2, [sp, #0]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r3, #26508	@ tmp347,
	mov	r1, #0	@,
	str	r1, [r5, r3]	@, <variable>.CodecInfo.RefNum
	mov	r1, fp	@, D.38360
	ldr	ip, [sp, #0]	@,
	str	r0, [r5, ip]	@, <variable>.CodecInfo.FwdFsID
	ldr	r2, [sp, #4]	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #60]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L193	@,
	ldr	r1, [sp, #64]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r1, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L193	@,
	ldr	r3, [r5, #0]	@ temp.939, <variable>.pstExtraData
	ldr	r2, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L160	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L198	@,
.L160:
	movw	lr, #26992	@ tmp357,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L161	@,
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L162	@,
	movw	ip, #26996	@ tmp361,
	ldr	r2, [r5, ip]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r2, #1	@ <variable>.DSDNeedClearQue,
	beq	.L162	@,
.L161:
	bl	vfmw_dprint_nothing	@
	mov	r0, #6	@,
	mov	r1, r5	@, pCtx
	mov	r2, r6	@, tmp498
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L193	@,
.L150:
	ldr	lr, [sp, #12]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	mov	r1, r6	@, tmp498
	mov	r2, #96	@,
	mov	r0, r7	@, pPictureHeader
	cmp	lr, #0	@ TmpPictureHeader.prediction_type,
	movwne	lr, #26396	@ tmp365,
	moveq	fp, #23	@ lastpic_vol_mode,
	ldrne	fp, [r5, lr]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	bl	memcpy	@
	ldr	r0, [sp, #12]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r0, #0	@ TmpPictureHeader.prediction_type,
	movwne	r0, #26396	@ tmp371,
	strne	fp, [r5, r0]	@ lastpic_vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	mov	r0, r5	@, pCtx
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@,
	bne	.L193	@,
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r6, r0, #0	@ D.38390,
	beq	.L199	@,
	movw	r7, #26992	@ tmp372,
	movw	r6, #26596	@ tmp374,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	ldr	r1, [r5, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	fp, r0, #0	@ pImg,
	beq	.L168	@,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [fp, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [fp, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [fp, #24]	@ <variable>.DispTime, pImg,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r0, [fp, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r1, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [fp, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [fp, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r0, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r0, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r0, #0	@ tmp391,
	str	r1, [fp, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r1, #0	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [ip, #56]	@ tmp391, <variable>.pstExtraData,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #26592	@ tmp398,
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L169	@,
	ldr	r3, [r6, #408]	@ D.38413, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.38413,
	beq	.L169	@,
	ldr	r2, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L169	@,
	ldr	ip, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L169	@,
	ldr	r7, [r0, #408]	@ D.38419, <variable>.pstDecodeFs
	add	fp, sp, #128	@ tmp496,,
	mov	r1, #0	@,
	mov	r2, #20	@,
	cmp	r7, #0	@ D.38419,
	mov	r0, fp	@, tmp496
	add	lr, sp, #108	@ tmp495,,
	ldrne	ip, [r7, #12]	@ iftmp.514, <variable>.PhyAddr
	mov	r7, r1	@ tmp434,
	ldreq	ip, [r3, #12]	@ iftmp.514, <variable>.PhyAddr
	str	lr, [sp, #0]	@,
	str	ip, [sp, #4]	@,
	bl	memset	@
	ldr	ip, [sp, #0]	@,
	mov	r1, r7	@, tmp434
	mov	r2, #20	@,
	mov	r0, ip	@, tmp495
	bl	memset	@
	ldr	r0, [sp, #4]	@,
	str	r0, [r5, #132]	@ iftmp.514, <variable>.Divx3DecParam.FwdRefPhyAddr
	ldr	r2, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r5, #136]	@ <variable>.PhyAddr, <variable>.Divx3DecParam.CurPicPhyAddr
	ldr	r3, [r6, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r3, [r5, #156]	@ <variable>.PmvAddr, <variable>.Divx3DecParam.CurrPmvPhyAddr
	ldr	ip, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r5, #140]	@ <variable>.PhyAddr, <variable>.Divx3DecParam.DispFramePhyAddr
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	mov	r0, sl	@, pBs
	ldr	r1, [r2, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r5, #144]	@ <variable>.Stride, <variable>.Divx3DecParam.DDRStride
	ldr	r3, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r3, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	ip, [r5, #148]	@ <variable>.ChromOffset, <variable>.Divx3DecParam.uv_offset
	bl	BsResidBits	@
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	bic	r1, r2, #15	@ tmp427, <variable>.PhyAddr,
	str	r1, [r5, #104]	@ tmp427, <variable>.Divx3DecParam.StreamBaseAddr
	ldr	r3, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	ip, r3, #15	@ tmp428, <variable>.PhyAddr,
	add	r2, r9, ip, asl #3	@, CurrPicBitOffset, D.38274, tmp428,
	rsb	r3, r0, r2	@ CurrPicBitOffset.966,, CurrPicBitOffset
	mov	r0, sl	@, pBs
	and	r1, r3, #127	@ tmp433, CurrPicBitOffset.966,
	str	r1, [r5, #116]	@ tmp433, <variable>.Divx3DecParam.StreamBitOffset
	mov	ip, r3, lsr #7	@ tmp431, CurrPicBitOffset.966,
	mov	r2, ip, asl #4	@ tmp432, tmp431,
	str	r2, [r5, #108]	@ tmp432, <variable>.Divx3DecParam.StreamPhyAddr
	bl	BsResidBits	@
	movw	r1, #26396	@ tmp437,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.vol_mode, <variable>.CodecInfo.PictureHeader.vol_mode
	str	r7, [r5, #112]	@ tmp434, <variable>.Divx3DecParam.StreamPhyAddr
	cmp	r2, #24	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	str	r7, [r5, #120]	@ tmp434, <variable>.Divx3DecParam.StreamBitOffset
	str	r7, [r5, #128]	@ tmp434, <variable>.Divx3DecParam.StreamLength
	str	r0, [r5, #124]	@, <variable>.Divx3DecParam.StreamLength
	ldr	r3, [sp, #0]	@,
	beq	.L176	@,
	cmp	r2, #26	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L177	@,
	cmp	r2, #23	@ <variable>.CodecInfo.PictureHeader.vol_mode,
	beq	.L200	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38223, tmp434
	b	.L135	@
.L148:
	movw	lr, #26436	@ tmp294,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L192	@,
	ldr	r3, [r5, #0]	@ prephitmp.881, <variable>.pstExtraData
	ldr	r2, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r2, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L150	@,
	b	.L147	@
.L194:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38223, pPacket
	b	.L135	@
.L197:
	add	r1, sp, #168	@ tmp304,,
	movw	r3, #26992	@ tmp302,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	mov	lr, #0	@ tmp299,
	add	r3, sp, #164	@,,
	str	lr, [r1, #-12]!	@ tmp299, RefNum
	add	r2, sp, #160	@,,
	str	lr, [sp, #164]	@ tmp299, NewNum
	str	lr, [sp, #160]	@ tmp299, ReadNum
	str	lr, [sp, #4]	@,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	ip, #26432	@ tmp307,
	ldr	r1, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	ip, [sp, #4]	@,
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L152	@,
	movw	lr, #26436	@ tmp311,
	ldr	r2, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r1, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r2, r1, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L152	@,
	ldr	lr, [sp, #160]	@ ReadNum, ReadNum
	ldr	r1, [sp, #164]	@ NewNum, NewNum
	add	r2, r1, lr	@ tmp315, NewNum, ReadNum
	cmp	r2, #0	@ tmp315,
	strgt	fp, [r3, #728]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.s32DSDWaitFlag
	movwle	r2, #26996	@ tmp319,
	movgt	r0, ip	@ D.38223, tmp299
	strle	fp, [r5, r2]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedClearQue
	bgt	.L135	@,
.L154:
	mov	r1, #0	@ tmp327,
	str	r1, [r3, #728]	@ tmp327, <variable>.s32DSDWaitFlag
	b	.L151	@
.L198:
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L161	@,
.L162:
	mov	r0, fp	@, D.38360
	bl	ResetVoQueue	@
	b	.L161	@
.L152:
	ldr	r0, [sp, #164]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	ble	.L201	@,
.L155:
	mov	r2, #1	@ tmp323,
	mov	r0, #0	@ D.38223,
	str	r2, [r3, #728]	@ tmp323, <variable>.s32DSDWaitFlag
	b	.L135	@
.L199:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.38223, D.38390
	b	.L135	@
.L201:
	ldr	ip, [sp, #160]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	bgt	.L155	@,
	movw	lr, #26996	@ tmp324,
	mov	fp, #0	@ tmp325,
	str	fp, [r5, lr]	@ tmp325, <variable>.DSDNeedClearQue
	b	.L154	@
.L169:
	movw	r0, #26596	@ tmp410,
	add	r3, r0, #396	@ tmp409, tmp409,
	ldr	r1, [r5, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	b	.L193	@
.L200:
	movw	r6, #26448	@ tmp440,
	str	r7, [sp, #128]	@ tmp434, slice_start_mbn
	ldr	r4, [r5, r6]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r1, #1	@ total_slice_num,
	sub	r2, r4, #1	@ prephitmp.878, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	r2, [sp, #108]	@ prephitmp.878, slice_end_mbn
.L178:
	movw	sl, #26388	@ tmp471,
	movw	r6, #26392	@ tmp473,
	ldr	r4, [r5, sl]	@, <variable>.CodecInfo.PictureHeader.quantizer
	movw	r9, #26384	@ tmp465,
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.rounding_type
	movw	r6, #26400	@ tmp475,
	add	r0, r9, #48	@ tmp467, tmp467,
	movw	ip, #26436	@ tmp469,
	ldr	r7, [r5, r9]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.CodecInfo.PictureHeader.prediction_type
	tst	r1, #1	@ total_slice_num,
	str	sl, [r5, #28]	@, <variable>.Divx3DecParam.rounding_type
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.has_skips
	movw	r6, #26408	@ tmp477,
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	mov	r0, #0	@ ivtmp.899,
	ldr	r9, [r5, ip]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, r5	@ ivtmp.905, pCtx
	str	sl, [r5, #32]	@, <variable>.Divx3DecParam.has_skips
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_chrom_DCT
	movw	r6, #26412	@ tmp479,
	str	r4, [r5, #24]	@, <variable>.Divx3DecParam.quantizer
	mov	r4, r0	@ slice_num, ivtmp.899
	str	r7, [r5, #12]	@ <variable>.CodecInfo.PictureHeader.prediction_type, <variable>.Divx3DecParam.prediction_type
	str	sl, [r5, #36]	@, <variable>.Divx3DecParam.alternative_I_AC_chrom_DCT
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.alternative_I_AC_lum_DCT
	movw	r6, #26416	@ tmp481,
	str	lr, [r5, #16]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Divx3DecParam.PicWidthInMb
	str	r9, [r5, #20]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Divx3DecParam.PicHeightInMb
	str	sl, [r5, #40]	@, <variable>.Divx3DecParam.alternative_I_AC_lum_DCT
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.alternative_I_DC_DCT
	movw	r6, #26420	@ tmp483,
	str	r1, [r5, #60]	@ total_slice_num, <variable>.Divx3DecParam.TotalSliceNum
	str	sl, [r5, #44]	@, <variable>.Divx3DecParam.alternative_I_DC_DCT
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.alternative_P_AC_DCT
	movw	r6, #26424	@ tmp485,
	str	sl, [r5, #48]	@, <variable>.Divx3DecParam.alternative_P_AC_DCT
	ldr	sl, [r5, r6]	@, <variable>.CodecInfo.PictureHeader.alternative_P_DC_DCT
	movw	r6, #26428	@ tmp487,
	str	sl, [r5, #52]	@, <variable>.Divx3DecParam.alternative_P_DC_DCT
	ldr	sl, [r5, r6]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.CodecInfo.PictureHeader.alternative_MV
	str	sl, [r5, #56]	@ <variable>.CodecInfo.PictureHeader.alternative_MV, <variable>.Divx3DecParam.alternative_MV
	bne	.L182	@,
	ldr	r6, [fp, #0]	@ tmp511, slice_start_mbn
	cmp	r1, #1	@ total_slice_num,
	mov	r0, #4	@ ivtmp.899,
	str	r2, [r5, #84]	@ prephitmp.878, <variable>.Divx3DecParam.slice_end_mbn
	mov	r4, #1	@ slice_num,
	add	ip, r5, r0	@ ivtmp.905, pCtx,
	str	r6, [r5, #64]	@ tmp511, <variable>.Divx3DecParam.slice_start_mbn
	ldrhi	r2, [r3, r0]	@ prephitmp.878, slice_end_mbn
	bhi	.L182	@,
	b	.L181	@
.L202:
	ldr	r7, [r3, r6]	@ prephitmp.878, slice_end_mbn
	add	ip, r2, #4	@ ivtmp.905, tmp505,
	ldr	r6, [fp, r6]	@ tmp510, slice_start_mbn
	str	r7, [r2, #84]	@ prephitmp.878, <variable>.Divx3DecParam.slice_end_mbn
	str	r6, [r2, #64]	@ tmp510, <variable>.Divx3DecParam.slice_start_mbn
	ldr	r2, [r3, r0]	@ prephitmp.878, slice_end_mbn
.L182:
	ldr	r7, [fp, r0]	@ tmp490, slice_start_mbn
	add	lr, r4, #1	@ tmp503, slice_num,
	cmp	r1, lr	@ total_slice_num, tmp503
	add	r6, r0, #4	@ tmp504, ivtmp.899,
	str	r2, [ip, #84]	@ prephitmp.878, <variable>.Divx3DecParam.slice_end_mbn
	add	r4, lr, #1	@ slice_num, tmp503,
	add	r0, r6, #4	@ ivtmp.899, tmp504,
	str	r7, [ip, #64]	@ tmp490, <variable>.Divx3DecParam.slice_start_mbn
	add	r2, ip, #4	@ tmp505, ivtmp.905,
	bhi	.L202	@,
.L181:
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #1	@ D.38223,
	str	r8, [r5, #4]	@ pDivx3DecParam, <variable>.pDivx3DecParam
	ldr	r3, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r3, [r5, #164]	@ <variable>.s32Compress_en, <variable>.Divx3DecParam.Compress_en
	b	.L135	@
.L177:
	movw	sl, #26436	@ tmp452,
	movw	r9, #26432	@ tmp455,
	ldr	r6, [r5, sl]	@ temp.970, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	mov	ip, #3	@ tmp458,
	ldr	r4, [r5, r9]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	r6, #3	@ temp.970,
	str	r7, [sp, #128]	@ tmp434, slice_start_mbn
	mov	r2, r6, lsr #2	@ tmp454, temp.970,
	mul	r1, r4, r2	@ temp.973, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp454
	sub	r2, r1, #1	@ prephitmp.878, temp.973,
	str	r2, [sp, #108]	@ prephitmp.878, slice_end_mbn
	mul	r9, ip, r1	@ D.38460, tmp458, temp.973
	mov	r6, r1, asl #2	@ D.38464, temp.973,
	mov	lr, r1, asl #1	@ temp.974, temp.973,
	str	r1, [sp, #132]	@ temp.973, slice_start_mbn
	sub	r1, r6, #1	@ tmp460, D.38464,
	str	r1, [sp, #120]	@ tmp460, slice_end_mbn
	movwne	r1, #26448	@ tmp462,
	strne	r6, [sp, #144]	@ D.38464, slice_start_mbn
	str	lr, [sp, #136]	@ temp.974, slice_start_mbn
	sub	r0, lr, #1	@ tmp457, temp.974,
	sub	sl, r9, #1	@ tmp459, D.38460,
	str	r0, [sp, #112]	@ tmp457, slice_end_mbn
	str	sl, [sp, #116]	@ tmp459, slice_end_mbn
	moveq	r1, #4	@ total_slice_num,
	str	r9, [sp, #140]	@ D.38460, slice_start_mbn
	ldrne	r6, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	movne	r1, #5	@ total_slice_num,
	subne	r6, r6, #1	@ tmp464, <variable>.CodecInfo.PictureHeader.total_mbs,
	strne	r6, [sp, #124]	@ tmp464, slice_end_mbn
	b	.L178	@
.L176:
	movw	ip, #26436	@ tmp442,
	movw	r1, #26432	@ tmp445,
	ldr	r0, [r5, ip]	@ temp.967, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	sl, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	tst	r0, #1	@ temp.967,
	str	r7, [sp, #128]	@ tmp434, slice_start_mbn
	mov	r2, r0, lsr #1	@ tmp444, temp.967,
	mul	r9, sl, r2	@ D.38447, <variable>.CodecInfo.PictureHeader.pic_width_in_mb, tmp444
	sub	r2, r9, #1	@ prephitmp.878, D.38447,
	str	r2, [sp, #108]	@ prephitmp.878, slice_end_mbn
	mov	r0, r9, asl #1	@ D.38451, D.38447,
	str	r9, [sp, #132]	@ D.38447, slice_start_mbn
	sub	r1, r0, #1	@ tmp447, D.38451,
	str	r1, [sp, #112]	@ tmp447, slice_end_mbn
	moveq	r1, #2	@ total_slice_num,
	beq	.L178	@,
	movw	r4, #26448	@ tmp449,
	str	r0, [sp, #136]	@ D.38451, slice_start_mbn
	ldr	r7, [r5, r4]	@ <variable>.CodecInfo.PictureHeader.total_mbs, <variable>.CodecInfo.PictureHeader.total_mbs
	mov	r1, #3	@ total_slice_num,
	sub	lr, r7, #1	@ tmp451, <variable>.CodecInfo.PictureHeader.total_mbs,
	str	lr, [sp, #116]	@ tmp451, slice_end_mbn
	b	.L178	@
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
