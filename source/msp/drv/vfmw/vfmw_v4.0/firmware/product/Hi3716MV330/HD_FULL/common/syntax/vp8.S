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
	.file	"vp8.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vp8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vp8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp8.o
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
	.global	VP8_setup_version
	.type	VP8_setup_version, %function
VP8_setup_version:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #64]	@ <variable>.version, <variable>.version
	cmp	r3, #3	@ <variable>.version,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.version
	b	.L2	@
.L7:
	.word	.L2
	.word	.L4
	.word	.L5
	.word	.L6
.L2:
	mov	ip, #0	@ tmp151,
	mov	r2, #0	@ tmp155,
	str	ip, [r0, #88]	@ tmp151, <variable>.full_pixel
	str	ip, [r0, #76]	@ tmp151, <variable>.no_lpf
	str	ip, [r0, #80]	@ tmp151, <variable>.simpler_lpf
	str	ip, [r0, #84]	@ tmp151, <variable>.use_bilinear_mc_filter
	str	r2, [r0, #92]	@ tmp155, <variable>.mcomp_filter_type
	bx	lr	@
.L5:
	mov	r3, #1	@ tmp143,
	mov	ip, #0	@ tmp144,
	str	r3, [r0, #84]	@ tmp143, <variable>.use_bilinear_mc_filter
	str	r3, [r0, #76]	@ tmp143, <variable>.no_lpf
	mov	r3, #1	@ tmp156,
	str	ip, [r0, #88]	@ tmp144, <variable>.full_pixel
	str	ip, [r0, #80]	@ tmp144, <variable>.simpler_lpf
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	bx	lr	@
.L4:
	mov	r2, #0	@ tmp139,
	mov	r1, #1	@ tmp140,
	mov	r3, #1	@ tmp156,
	str	r2, [r0, #88]	@ tmp139, <variable>.full_pixel
	str	r2, [r0, #76]	@ tmp139, <variable>.no_lpf
	str	r1, [r0, #84]	@ tmp140, <variable>.use_bilinear_mc_filter
	str	r1, [r0, #80]	@ tmp140, <variable>.simpler_lpf
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	bx	lr	@
.L6:
	mov	r1, #1	@ tmp147,
	mov	r3, #1	@ tmp156,
	str	r1, [r0, #88]	@ tmp147, <variable>.full_pixel
	str	r1, [r0, #76]	@ tmp147, <variable>.no_lpf
	str	r1, [r0, #80]	@ tmp147, <variable>.simpler_lpf
	str	r1, [r0, #84]	@ tmp147, <variable>.use_bilinear_mc_filter
	str	r3, [r0, #92]	@ tmp156, <variable>.mcomp_filter_type
	bx	lr	@
	.fnend
	.size	VP8_setup_version, .-VP8_setup_version
	.align	2
	.global	VP8DEC_GetImageBuffer
	.type	VP8DEC_GetImageBuffer, %function
VP8DEC_GetImageBuffer:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #8520	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.35883,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.35886,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #8128	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.35886,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VP8DEC_GetImageBuffer, .-VP8DEC_GetImageBuffer
	.align	2
	.global	VP8DEC_GetRemainImg
	.type	VP8DEC_GetRemainImg, %function
VP8DEC_GetRemainImg:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	b	GetVoLastImageID	@
	.fnend
	.size	VP8DEC_GetRemainImg, .-VP8DEC_GetRemainImg
	.align	2
	.global	VP8DEC_RecycleImage
	.type	VP8DEC_RecycleImage, %function
VP8DEC_RecycleImage:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #8520	@ tmp138,
	mov	r6, r1	@ ImgID, ImgID
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, ImgID
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L21	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L21:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VP8DEC_RecycleImage, .-VP8DEC_RecycleImage
	.align	2
	.global	VP8_DecodeDecide
	.type	VP8_DecodeDecide, %function
VP8_DecodeDecide:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #8124	@ tmp143,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r0, r3]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	mov	r5, r0	@ pCtx, pCtx
	cmp	r4, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	beq	.L40	@,
	movw	r2, #8116	@ tmp146,
	ldr	r1, [r0, r2]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	sub	r0, r1, #2	@ tmp147, <variable>.Vp8CodecInfo.UsedDecMode,
	cmp	r0, #1	@ tmp147,
	bls	.L26	@,
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.606, <variable>.s32DecMode
.L27:
	movw	r0, #8116	@ tmp185,
	str	r2, [r5, r0]	@ prephitmp.606, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #4	@ prephitmp.606,
	ldrls	pc, [pc, r2, asl #2]	@ prephitmp.606
	b	.L28	@
.L32:
	.word	.L29
	.word	.L29
	.word	.L30
	.word	.L39
	.word	.L29
.L30:
	movw	lr, #8160	@ tmp186,
	ldr	r2, [r5, lr]	@ D.35243, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ D.35243,
	bne	.L41	@,
.L33:
	movw	ip, #8520	@ tmp202,
	movw	r4, #8148	@ tmp204,
	ldr	r1, [r5, r4]	@, <variable>.Vp8CodecInfo.LastFsID
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pFwdImg,
	beq	.L42	@,
	movw	r0, #8160	@ tmp197,
	ldr	r2, [r5, r0]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L34	@,
	ldr	lr, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r4, #180]	@ D.35269, <variable>.error_level
	ldr	r3, [lr, #0]	@ D.35270, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.35269, D.35270
	bls	.L34	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
.L39:
	mov	r0, #0	@ D.35222,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L26:
	ldr	r3, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.606, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.606,
	cmpne	r2, #1	@, prephitmp.606,
	bhi	.L27	@,
	movw	r4, #8520	@ tmp159,
	movw	r8, #8140	@ tmp161,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r6, #8144	@ tmp165,
	bl	dprint_vfmw	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r8]	@, <variable>.Vp8CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	movw	r7, #8148	@ tmp169,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, r6]	@, <variable>.Vp8CodecInfo.AltFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	ldr	r1, [r5, r7]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r4, #0	@ tmp172,
	str	r4, [r5, r8]	@ tmp172, <variable>.Vp8CodecInfo.GoldenFsID
	str	r4, [r5, r6]	@ tmp172, <variable>.Vp8CodecInfo.AltFsID
	str	r4, [r5, r7]	@ tmp172, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #8120	@ tmp182,
	str	r4, [r5, r2]	@ tmp172, <variable>.Vp8CodecInfo.RefNum
	str	r0, [r5, r8]	@ D.35241, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r5, r7]	@ D.35241, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r5, r6]	@ D.35241, <variable>.Vp8CodecInfo.AltFsID
	ldr	r2, [r1, #8]	@ prephitmp.606, <variable>.s32DecMode
	b	.L27	@
.L40:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35222, <variable>.Vp8CodecInfo.Imgbuf_allocated
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L28:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35222,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L29:
	movw	r3, #8160	@ tmp188,
	ldr	ip, [r5, r3]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L33	@,
	movw	r1, #8120	@ tmp190,
	ldr	r4, [r5, r1]	@ <variable>.Vp8CodecInfo.RefNum, <variable>.Vp8CodecInfo.RefNum
	cmp	r4, #0	@ <variable>.Vp8CodecInfo.RefNum,
	bne	.L33	@,
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r2, #:upper16:.LC4	@,
	mov	r3, r4	@, <variable>.Vp8CodecInfo.RefNum
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35222, <variable>.Vp8CodecInfo.RefNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L34:
	mov	r0, #1	@ D.35222,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L41:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35222,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L42:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC6	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC6	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	movw	r3, #1473	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35222, pFwdImg
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP8_DecodeDecide, .-VP8_DecodeDecide
	.align	2
	.global	VP8_Update_PictHeader
	.type	VP8_Update_PictHeader, %function
VP8_Update_PictHeader:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r0, #2505]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_entropy_probs, <variable>.NewHeaderInfo.refresh_entropy_probs
	mov	r4, r0	@ pVp8CodecInfo, pVp8CodecInfo
	cmp	r3, #0	@ <variable>.NewHeaderInfo.refresh_entropy_probs,
	bne	.L44	@,
	add	r0, r0, #3760	@, pVp8CodecInfo,
	add	r1, r4, #2608	@, pVp8CodecInfo,
	add	r0, r0, #1	@,,
	add	r1, r1, #4	@,,
	movw	r2, #1149	@,
	bl	memcpy	@
.L44:
	add	lr, r4, #2448	@, pVp8CodecInfo,
	movw	r2, #2452	@,
	add	r1, lr, #12	@,,
	add	r0, r4, #8	@, pVp8CodecInfo,
	bl	memcpy	@
	ldr	ip, [r4, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	ldr	r0, [r4, #2596]	@ <variable>.NewHeaderInfo.filter_type, <variable>.NewHeaderInfo.filter_type
	movw	r2, #4964	@ tmp150,
	ldrb	r1, [r4, #2471]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.sharpness_level, <variable>.NewHeaderInfo.sharpness_level
	ldrb	r3, [r4, #2500]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_last_frame, <variable>.NewHeaderInfo.refresh_last_frame
	str	ip, [r4, r2]	@ <variable>.NewHeaderInfo.frame_type, <variable>.LastFrameType
	mov	ip, #4928	@ tmp152,
	movw	r2, #4932	@ tmp154,
	str	r0, [r4, ip]	@ <variable>.NewHeaderInfo.filter_type, <variable>.LastFilterType
	str	r1, [r4, r2]	@ <variable>.NewHeaderInfo.sharpness_level, <variable>.LastSharpnessLevel
	strb	r3, [r4, #0]	@ <variable>.NewHeaderInfo.refresh_last_frame, <variable>.refresh_last_frame
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VP8_Update_PictHeader, .-VP8_Update_PictHeader
	.align	2
	.global	VP8_init_frame
	.type	VP8_init_frame, %function
VP8_init_frame:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, #56]	@ <variable>.frame_type, <variable>.frame_type
	mov	r4, r0	@ VP8_PictureHeader_S, VP8_PictureHeader_S
	cmp	r5, #0	@ <variable>.frame_type,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	add	r2, r0, #2368	@, VP8_PictureHeader_S,
	ldr	r1, .L49	@,
	add	r0, r2, #6	@,,
	add	r6, r4, #1312	@ tmp144, VP8_PictureHeader_S,
	mov	r2, #38	@,
	bl	memcpy	@
	ldr	r1, .L49+4	@,
	mov	r2, #1056	@,
	add	r0, r6, #6	@, tmp144,
	bl	memcpy	@
	add	r0, r4, #1296	@, VP8_PictureHeader_S,
	mov	r2, #4	@,
	add	r0, r0, #14	@,,
	movw	r1, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LANCHOR1	@,
	bl	memcpy	@
	mov	r2, #3	@,
	ldr	r1, .L49+8	@,
	add	r0, r6, #2	@, tmp144,
	bl	memcpy	@
	add	r0, r4, #22	@, VP8_PictureHeader_S,
	mov	r1, #8	@,
	bl	__memzero	@
	add	r0, r4, #32	@, VP8_PictureHeader_S,
	mov	r1, #4	@,
	strb	r5, [r4, #17]	@ <variable>.frame_type, <variable>.mb_segement_abs_delta
	bl	__memzero	@
	add	r0, r4, #36	@, VP8_PictureHeader_S,
	mov	r1, #4	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp171,
	strb	r5, [r4, #49]	@ <variable>.frame_type, <variable>.ref_frame_sign_bias
	strb	r5, [r4, #43]	@ <variable>.frame_type, <variable>.copy_buffer_to_gf
	strb	r3, [r4, #42]	@ tmp171, <variable>.refresh_alt_ref_frame
	strb	r3, [r4, #41]	@ tmp171, <variable>.refresh_golden_frame
	strb	r5, [r4, #44]	@ <variable>.frame_type, <variable>.copy_buffer_to_arf
	strb	r5, [r4, #48]	@ <variable>.frame_type, <variable>.ref_frame_sign_bias
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L50:
	.align	2
.L49:
	.word	.LANCHOR0+20
	.word	.LANCHOR0+60
	.word	.LANCHOR1+4
	.fnend
	.size	VP8_init_frame, .-VP8_init_frame
	.align	2
	.global	VP8_Set_DecParam
	.type	VP8_Set_DecParam, %function
VP8_Set_DecParam:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #108
	sub	sp, sp, #108	@,,
	add	r5, r0, #8	@, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	str	r5, [sp, #12]	@, %sfp
	movw	r1, #3148	@,
	ldr	lr, [r0, #3168]	@, <variable>.pVp8StreamParam
	movw	fp, #5716	@ tmp274,
	mov	r0, r5	@,
	movw	r6, #5748	@ tmp284,
	movw	r9, #8164	@ tmp276,
	movw	sl, #5756	@ tmp278,
	str	lr, [sp, #20]	@, %sfp
	mov	r8, #5760	@ tmp280,
	bl	__memzero	@
	movw	r7, #5744	@ tmp282,
	ldr	ip, [r4, fp]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type
	movw	lr, #5713	@ tmp286,
	ldr	fp, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.full_pixel
	movw	r6, #5675	@ tmp298,
	ldr	r0, [r4, r9]	@, <variable>.Vp8CodecInfo.LastFrameType
	movw	r5, #8520	@ tmp384,
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	movw	sl, #5732	@ tmp289,
	ldr	r2, [r4, r8]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	movw	r8, #5673	@ tmp292,
	ldr	r3, [r4, r7]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.use_bilinear_mc_filter
	movw	r7, #5674	@ tmp295,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false
	movw	lr, #5662	@ tmp304,
	str	fp, [r4, #2816]	@, <variable>.Vp8DecParam.full_pixel
	movw	fp, #5677	@ tmp301,
	str	ip, [r4, #2804]	@, <variable>.Vp8DecParam.frame_type
	movw	ip, #5665	@ tmp325,
	str	r0, [r4, #2808]	@, <variable>.Vp8DecParam.last_frame_type
	movw	r0, #5666	@ tmp333,
	str	r1, [r4, #2792]	@, <variable>.Vp8DecParam.pic_width_in_mb
	movw	r1, #5667	@ tmp341,
	str	r2, [r4, #2796]	@, <variable>.Vp8DecParam.pic_height_in_mb
	movw	r2, #5668	@ tmp349,
	str	r3, [r4, #2812]	@, <variable>.Vp8DecParam.use_bilinear_mc_filter
	movw	r3, #5669	@ tmp357,
	str	r9, [sp, #0]	@, %sfp
	ldr	r9, [r4, sl]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled, <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map, <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map
	ldrb	r6, [r4, fp]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segement_abs_delta, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segement_abs_delta
	ldrb	fp, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_ref_lf_delta_enabled
	movw	lr, #5796	@ tmp307,
	str	fp, [sp, #24]	@, %sfp
	ldr	fp, [r4, lr]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.filter_type
	movw	lr, #5670	@ tmp310,
	str	fp, [sp, #28]	@, %sfp
	ldrb	fp, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.filter_level
	movw	lr, #5671	@ tmp313,
	str	fp, [sp, #32]	@, %sfp
	ldrb	fp, [r4, lr]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.sharpness_level
	mov	lr, #8128	@ tmp316,
	str	fp, [sp, #36]	@, %sfp
	ldr	fp, [sp, #0]	@, %sfp
	ldr	lr, [r4, lr]	@ <variable>.Vp8CodecInfo.LastFilterType, <variable>.Vp8CodecInfo.LastFilterType
	strb	r9, [r4, #2761]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_no_coeff_skip, <variable>.Vp8DecParam.mb_no_coeff_skip
	strb	fp, [r4, #2760]	@, <variable>.Vp8DecParam.prob_skip_false
	strb	sl, [r4, #2762]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8DecParam.multi_token_partition
	strb	r8, [r4, #2763]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segmentation_enabled, <variable>.Vp8DecParam.segmentation_enable
	movw	r8, #8132	@ tmp319,
	strb	r7, [r4, #2764]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.update_mb_segmentation_map, <variable>.Vp8DecParam.update_mb_segmentation_map
	movw	r7, #5663	@ tmp322,
	strb	r6, [r4, #2765]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segement_abs_delta, <variable>.Vp8DecParam.mb_segmentation_abs_delta
	ldr	r6, [sp, #24]	@, %sfp
	strb	r6, [r4, #2766]	@, <variable>.Vp8DecParam.mode_ref_lf_delta_enabled
	movw	r6, #5710	@ tmp365,
	ldr	fp, [sp, #28]	@, %sfp
	strb	fp, [r4, #2768]	@, <variable>.Vp8DecParam.filter_type
	movw	fp, #5711	@ tmp368,
	ldr	r9, [sp, #32]	@, %sfp
	strb	r9, [r4, #2770]	@, <variable>.Vp8DecParam.filter_level
	ldr	sl, [sp, #36]	@, %sfp
	strb	lr, [r4, #2769]	@ <variable>.Vp8CodecInfo.LastFilterType, <variable>.Vp8DecParam.last_filter_type
	ldrb	lr, [r4, r6]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra
	strb	sl, [r4, #2771]	@, <variable>.Vp8DecParam.sharpness_level
	ldr	sl, [r4, r8]	@ <variable>.Vp8CodecInfo.LastSharpnessLevel, <variable>.Vp8CodecInfo.LastSharpnessLevel
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.base_qindex, <variable>.Vp8CodecInfo.NewHeaderInfo.base_qindex
	movw	r7, #5712	@ tmp371,
	str	lr, [sp, #0]	@, %sfp
	movw	lr, #5804	@ tmp374,
	ldrb	r9, [r4, fp]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last
	str	r9, [sp, #4]	@, %sfp
	movw	r9, #5800	@ tmp376,
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf
	str	r6, [sp, #8]	@, %sfp
	ldr	fp, [r4, lr]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.value
	ldr	r7, [r4, r9]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.range
	str	fp, [r4, #2788]	@, <variable>.Vp8DecParam.value
	str	r7, [sp, #16]	@, %sfp
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	ldrsb	ip, [r4, ip]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	ldrsb	r0, [r4, r0]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q,
	ldrb	fp, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	rsblt	ip, ip, #0	@ tmp331, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q
	ldrsb	r1, [r4, r1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	cmp	r0, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q,
	ldrb	r9, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	mov	r7, r6, lsr #7	@ tmp327, <variable>.Vp8CodecInfo.NewHeaderInfo.y1dc_delta_q,
	ldrsb	r2, [r4, r2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	rsblt	r0, r0, #0	@ tmp339, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q,
	ldrsb	r3, [r4, r3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	rsblt	r1, r1, #0	@ tmp347, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q,
	mov	lr, lr, lsr #7	@ tmp335, <variable>.Vp8CodecInfo.NewHeaderInfo.y2dc_delta_q,
	rsblt	r2, r2, #0	@ tmp355, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q
	cmp	r3, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q,
	rsblt	r3, r3, #0	@ tmp363, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q
	mov	r6, r6, lsr #7	@ tmp359, <variable>.Vp8CodecInfo.NewHeaderInfo.uvac_delta_q,
	mov	fp, fp, lsr #7	@ tmp343, <variable>.Vp8CodecInfo.NewHeaderInfo.y2ac_delta_q,
	mov	r9, r9, lsr #7	@ tmp351, <variable>.Vp8CodecInfo.NewHeaderInfo.uvdc_delta_q,
	strb	sl, [r4, #2772]	@ <variable>.Vp8CodecInfo.LastSharpnessLevel, <variable>.Vp8DecParam.last_sharpness_level
	strb	r8, [r4, #2767]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.base_qindex, <variable>.Vp8DecParam.base_qindex
	movw	r8, #8136	@ tmp382,
	strb	ip, [r4, #2774]	@ tmp331, <variable>.Vp8DecParam.y1dc_absdelta_q
	movw	ip, #5808	@ tmp379,
	strb	r0, [r4, #2776]	@ tmp339, <variable>.Vp8DecParam.y2dc_absdelta_q
	strb	r1, [r4, #2778]	@ tmp347, <variable>.Vp8DecParam.y2ac_absdelta_q
	movw	r1, #8152	@ tmp386,
	strb	r6, [r4, #2781]	@ tmp359, <variable>.Vp8DecParam.uvac_sign
	strb	r7, [r4, #2773]	@ tmp327, <variable>.Vp8DecParam.y1dc_sign
	strb	lr, [r4, #2775]	@ tmp335, <variable>.Vp8DecParam.y2dc_sign
	strb	fp, [r4, #2777]	@, <variable>.Vp8DecParam.y2ac_sign
	strb	r9, [r4, #2779]	@ tmp351, <variable>.Vp8DecParam.uvdc_sign
	strb	r2, [r4, #2780]	@ tmp355, <variable>.Vp8DecParam.uvdc_absdelta_q
	strb	r3, [r4, #2782]	@ tmp363, <variable>.Vp8DecParam.uvac_absdelta_q
	ldr	r7, [sp, #0]	@, %sfp
	ldr	r6, [r4, ip]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count, <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count
	ldr	r0, [r4, r8]	@ <variable>.Vp8CodecInfo.SegIdAddr, <variable>.Vp8CodecInfo.SegIdAddr
	strb	r7, [r4, #2783]	@, <variable>.Vp8DecParam.prob_intra
	movw	r7, #8140	@ tmp390,
	ldr	r2, [sp, #4]	@, %sfp
	ldr	r1, [r4, r1]	@, <variable>.Vp8CodecInfo.CurFsID
	strb	r2, [r4, #2784]	@, <variable>.Vp8DecParam.prob_last
	ldr	r3, [sp, #8]	@, %sfp
	strb	r3, [r4, #2785]	@, <variable>.Vp8DecParam.prob_gf
	ldr	lr, [sp, #16]	@, %sfp
	strb	r6, [r4, #2787]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.bc.count, <variable>.Vp8DecParam.count
	str	r0, [r4, #3144]	@ <variable>.Vp8CodecInfo.SegIdAddr, <variable>.Vp8DecParam.SegIdAddr
	strb	lr, [r4, #2786]	@, <variable>.Vp8DecParam.range
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #8144	@ tmp394,
	ldr	r1, [r4, r2]	@, <variable>.Vp8CodecInfo.AltFsID
	mov	r7, r0	@ pGolden,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #8148	@ tmp398,
	ldr	r1, [r4, r3]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r8, r0	@ pAlt,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r7, #0	@, pGolden,
	beq	.L52	@,
	cmp	r8, #0	@ pAlt,
	cmpne	r0, #0	@, pLast,
	beq	.L52	@,
	ldr	r5, [r6, #408]	@ D.35468, <variable>.pstDecodeFs
	cmp	r5, #0	@ D.35468,
	beq	.L104	@,
	ldr	r1, [r5, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	lr, #5682	@ tmp425,
	str	r1, [r4, #3124]	@ <variable>.PhyAddr, <variable>.Vp8DecParam.image_curr_rcn_addr
	movw	r1, #5686	@ tmp427,
	ldr	fp, [r6, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	fp, [r4, #3140]	@ <variable>.PmvAddr, <variable>.Vp8DecParam.CurrPmvAddr
	ldr	ip, [r7, #408]	@ D.35477, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.35477,
	ldreq	ip, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [ip, #12]	@ iftmp.466, <variable>.PhyAddr
	str	r2, [r4, #3132]	@ iftmp.466, <variable>.Vp8DecParam.image_gld_ref_addr
	movw	r2, #5692	@ tmp429,
	ldr	r7, [r8, #408]	@ D.35483, <variable>.pstDecodeFs
	cmp	r7, #0	@ D.35483,
	ldreq	r7, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r7, #12]	@ iftmp.467, <variable>.PhyAddr
	mov	r7, #5696	@ tmp431,
	str	r3, [r4, #3128]	@ iftmp.467, <variable>.Vp8DecParam.image_alt_ref_addr
	movw	r3, #5706	@ tmp433,
	ldr	sl, [r0, #408]	@ D.35489, <variable>.pstDecodeFs
	movw	r0, #8112	@ tmp422,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	cmp	sl, #0	@ D.35489,
	ldreq	sl, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r9, [sl, #12]	@ iftmp.468, <variable>.PhyAddr
	movw	sl, #5683	@ tmp435,
	str	r9, [r4, #3136]	@ iftmp.468, <variable>.Vp8DecParam.image_last_ref_addr
	ldr	r8, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldrsb	r9, [r4, sl]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	sl, #5707	@ tmp443,
	ldr	r5, [r8, #20]	@ D.35496, <variable>.Stride
	movw	r8, #5687	@ tmp437,
	str	r5, [r4, r0]	@ D.35496, <variable>.Vp8CodecInfo.ddr_stride
	str	r5, [r4, #2800]	@ D.35496, <variable>.Vp8DecParam.ddr_stride
	ldr	fp, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r6, #5693	@ tmp439,
	ldrsb	r0, [r4, r8]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r8, #5684	@ tmp445,
	ldrsb	r5, [r4, lr]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldr	ip, [fp, #32]	@, <variable>.ChromOffset
	movw	fp, #5697	@ tmp441,
	ldrsb	lr, [r4, r1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	str	ip, [r4, #3152]	@, <variable>.Vp8DecParam.uv_offset
	str	r9, [r4, #3048]	@, <variable>.Vp8DecParam.segment_feature_dat0
	str	r0, [r4, #3064]	@, <variable>.Vp8DecParam.segment_feature_dat1
	ldrsb	ip, [r4, r2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	ldr	r0, [sp, #12]	@, %sfp
	ldrsb	r2, [r4, r7]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	str	r1, [r4, #3080]	@, <variable>.Vp8DecParam.ref_lf_delta
	mov	r1, #16	@,
	ldrsb	r7, [r4, fp]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	movw	fp, #5688	@ tmp447,
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	ldrsb	r6, [r4, r8]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r8, #5694	@ tmp449,
	ldrsb	sl, [r4, fp]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	str	r7, [r4, #3096]	@, <variable>.Vp8DecParam.mode_lf_delta
	add	r7, r4, #24	@ _ptr_msg_bank, pCtx,
	ldrsb	fp, [r4, r8]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	add	r8, r4, #744	@ _ptr_msg_bank.881, pCtx,
	str	r9, [r4, #3112]	@, <variable>.Vp8DecParam.ref_frame_sign_bias
	add	r9, r4, #712	@ _ptr_msg_bank.864, pCtx,
	str	r6, [r4, #3052]	@, <variable>.Vp8DecParam.segment_feature_dat0
	add	r6, r4, #6976	@ ivtmp.789, pCtx,
	str	sl, [r4, #3068]	@, <variable>.Vp8DecParam.segment_feature_dat1
	add	sl, r4, #728	@ _ptr_msg_bank.871, pCtx,
	str	r5, [r4, #3044]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat0
	add	r5, r4, #760	@, pCtx,
	str	r5, [sp, #0]	@, %sfp
	mov	r5, #0	@,
	str	r2, [r4, #3092]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8DecParam.mode_lf_delta
	movw	r2, #5698	@ tmp451,
	str	lr, [r4, #3060]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat1
	movw	lr, #5708	@ tmp453,
	str	ip, [r4, #3076]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8DecParam.ref_lf_delta
	add	r6, r6, #2	@ ivtmp.789, ivtmp.789,
	str	r5, [sp, #4]	@, %sfp
	movw	r5, #5689	@ tmp457,
	ldrsb	ip, [r4, r2]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	str	r3, [r4, #3108]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8DecParam.ref_frame_sign_bias
	movw	r3, #5695	@ tmp459,
	ldrsb	r2, [r4, r3]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas
	movw	r3, #5709	@ tmp463,
	str	fp, [r4, #3084]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_lf_deltas, <variable>.Vp8DecParam.ref_lf_delta
	movw	fp, #5685	@ tmp455,
	str	ip, [r4, #3100]	@, <variable>.Vp8DecParam.mode_lf_delta
	ldrb	ip, [r4, lr]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	ldrsb	lr, [r4, fp]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	ldrsb	fp, [r4, r5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data
	movw	r5, #5699	@ tmp461,
	str	r2, [r4, #3088]	@, <variable>.Vp8DecParam.ref_lf_delta
	ldrsb	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias
	str	ip, [r4, #3116]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8DecParam.ref_frame_sign_bias
	str	lr, [r4, #3056]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat0
	str	fp, [r4, #3072]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.segment_feature_data, <variable>.Vp8DecParam.segment_feature_dat1
	movw	fp, #5678	@ tmp468,
	str	r2, [r4, #3104]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mode_lf_deltas, <variable>.Vp8DecParam.mode_lf_delta
	str	r5, [r4, #3120]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.ref_frame_sign_bias, <variable>.Vp8DecParam.ref_frame_sign_bias
	movw	r5, #5680	@ tmp474,
	bl	__memzero	@
	movw	r2, #5713	@ tmp465,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false
	movw	r1, #5679	@ tmp471,
	ldrb	r0, [r4, fp]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	movw	fp, #5710	@ tmp477,
	strb	ip, [r4, #8]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_skip_false, <variable>.Vp8DecParam.table
	ldr	lr, [sp, #12]	@, %sfp
	strb	r0, [lr, #1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	mov	r0, r7	@, _ptr_msg_bank
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	mov	r1, #16	@,
	strb	r3, [lr, #2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	movw	r3, #5711	@ tmp480,
	ldrb	r2, [r4, r5]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs, <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs
	strb	r2, [lr, #3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.mb_segment_tree_probs,
	movw	r2, #5712	@ tmp483,
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra
	strb	ip, [lr, #4]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_intra,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last
	strb	r5, [lr, #5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_last,
	ldrb	fp, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf, <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf
	strb	fp, [lr, #6]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.prob_gf,
	movw	fp, #6973	@ tmp495,
	bl	__memzero	@
	movw	ip, #6970	@ tmp486,
	movw	r3, #6971	@ tmp489,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	movw	r1, #6972	@ tmp492,
	strb	r5, [r4, #24]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	movw	r5, #6974	@ tmp498,
	strb	r0, [r7, #1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	add	r0, r4, #40	@, pCtx,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	mov	r1, #16	@,
	strb	r2, [r7, #2]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	movw	r2, #6975	@ tmp501,
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob
	strb	ip, [r7, #3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.ymode_prob,
	mov	ip, #6976	@ tmp504,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	strb	r3, [r7, #4]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	ldrb	fp, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	strb	fp, [r7, #5]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	movw	fp, #8038	@ tmp521,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob, <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob
	strb	r5, [r7, #6]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.fc.uv_mode_prob,
	movw	r7, #8037	@ tmp518,
	bl	__memzero	@
	add	r0, r4, #56	@, pCtx,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r9	@, _ptr_msg_bank.864
	mov	r1, #16	@,
	bl	__memzero	@
	movw	r3, #8034	@ tmp512,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8036	@ tmp515,
	ldrb	r3, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	fp, #8035	@,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8039	@ tmp524,
	ldrb	r5, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r7, #8040	@ tmp527,
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r0, [r4, #713]	@ <variable>.prob,
	mov	r0, sl	@, _ptr_msg_bank.871
	strb	r1, [r4, #714]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	r5, [r4, #715]	@ <variable>.prob,
	movw	r5, #8041	@ tmp530,
	strb	ip, [r4, #712]	@ <variable>.prob,
	strb	r3, [r9, #4]	@ <variable>.prob,
	movw	r3, #8042	@ tmp533,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r2, [r4, r5]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r5, #8043	@ tmp539,
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	lr, [r4, #717]	@ <variable>.prob,
	strb	ip, [r4, #718]	@ <variable>.prob,
	strb	r2, [r4, #719]	@ <variable>.prob,
	strb	r7, [r9, #8]	@ <variable>.prob,
	bl	__memzero	@
	ldrb	r7, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	ip, #8045	@ tmp545,
	movw	fp, #8044	@ tmp542,
	movw	r3, #8046	@ tmp548,
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r1, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	fp, #8047	@ tmp551,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	ip, #8048	@ tmp554,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8050	@ tmp560,
	strb	r7, [r4, #728]	@ <variable>.prob,
	movw	r7, #8049	@ tmp557,
	strb	r0, [r4, #729]	@ <variable>.prob,
	mov	r0, r8	@, _ptr_msg_bank.881
	strb	r1, [r4, #730]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	r2, [r4, #731]	@ <variable>.prob,
	strb	r5, [sl, #4]	@ <variable>.prob,
	ldrb	lr, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	ip, #8051	@ tmp563,
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r7, #8052	@ tmp566,
	ldrb	fp, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	lr, [r4, #733]	@ <variable>.prob,
	strb	r2, [r4, #735]	@ <variable>.prob,
	strb	r5, [r4, #734]	@ <variable>.prob,
	strb	fp, [sl, #8]	@ <variable>.prob,
	movw	sl, #8053	@ tmp572,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	fp, #8057	@ tmp581,
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r5, [r4, #737]	@ <variable>.prob,
	strb	lr, [r4, #738]	@ <variable>.prob,
	bl	__memzero	@
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8056	@ tmp578,
	ldrb	r5, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8055	@ tmp575,
	movw	fp, #8054	@,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8059	@ tmp587,
	strb	r0, [r4, #745]	@ <variable>.prob,
	movw	r3, #8061	@ tmp593,
	ldr	r0, [sp, #0]	@, %sfp
	movw	sl, #8058	@ tmp584,
	strb	r7, [r4, #747]	@ <variable>.prob,
	movw	r7, #8060	@ tmp590,
	strb	r1, [r4, #746]	@ <variable>.prob,
	mov	r1, #16	@,
	strb	ip, [r4, #744]	@ <variable>.prob,
	strb	r5, [r8, #4]	@ <variable>.prob,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r5, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	mov	r7, #8064	@ tmp605,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	sl, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	ip, [r4, #750]	@ <variable>.prob,
	strb	r5, [r4, #751]	@ <variable>.prob,
	strb	lr, [r4, #749]	@ <variable>.prob,
	strb	sl, [r8, #8]	@ <variable>.prob,
	movw	r8, #8062	@ tmp599,
	bl	__memzero	@
	movw	r2, #8063	@ tmp602,
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8065	@ tmp608,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r8, #8066	@ tmp611,
	ldrb	r5, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8067	@ tmp614,
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r7, #8068	@ tmp617,
	ldrb	sl, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r3, #8069	@ tmp620,
	strb	r0, [r4, #761]	@ <variable>.prob,
	strb	ip, [r4, #760]	@ <variable>.prob,
	strb	r1, [r4, #762]	@ <variable>.prob,
	strb	r5, [r4, #763]	@ <variable>.prob,
	ldr	ip, [sp, #0]	@, %sfp
	strb	sl, [ip, #4]	@ <variable>.prob,
	ldrb	r5, [r4, r7]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r8, #8070	@ tmp623,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	movw	r2, #8071	@ tmp626,
	ldrb	sl, [r4, r3]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r0, [r4, #765]	@ <variable>.prob,
	strb	r1, [r4, #766]	@ <variable>.prob,
	strb	r5, [r4, #767]	@ <variable>.prob,
	strb	sl, [ip, #8]	@ <variable>.prob,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.prob, <variable>.prob
	strb	r7, [r4, #769]	@ <variable>.prob,
	strb	r3, [r4, #770]	@ <variable>.prob,
	ldr	r5, [sp, #4]	@ ivtmp.788, %sfp
.L62:
	add	lr, r5, #776	@ tmp630, ivtmp.788,
	mov	r1, #16	@,
	add	r7, r4, lr	@ _ptr_msg_bank.902, pCtx, tmp630
	mov	r0, r7	@, _ptr_msg_bank.902
	bl	__memzero	@
	mov	r1, r6	@, ivtmp.789
	mov	r0, r7	@, _ptr_msg_bank.902
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #792	@ tmp635, ivtmp.788,
	add	sl, r4, r2	@ _ptr_msg_bank.946, pCtx, tmp635
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.946
	bl	__memzero	@
	add	r1, r6, #11	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.946
	bl	memcpy	@
	add	r3, r5, #808	@ tmp641, ivtmp.788,
	add	r8, r4, r3	@ _ptr_msg_bank.947, pCtx, tmp641
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.947
	bl	__memzero	@
	add	r1, r6, #22	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r8	@, _ptr_msg_bank.947
	bl	memcpy	@
	add	r0, r5, #824	@ tmp647, ivtmp.788,
	add	r7, r4, r0	@ _ptr_msg_bank.950, pCtx, tmp647
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.950
	bl	__memzero	@
	add	r1, r6, #33	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.950
	bl	memcpy	@
	add	r1, r5, #840	@ tmp653, ivtmp.788,
	add	sl, r4, r1	@ _ptr_msg_bank.951, pCtx, tmp653
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.951
	bl	__memzero	@
	add	r1, r6, #44	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.951
	bl	memcpy	@
	add	ip, r5, #856	@ tmp659, ivtmp.788,
	add	r8, r4, ip	@ _ptr_msg_bank.952, pCtx, tmp659
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.952
	bl	__memzero	@
	add	r1, r6, #55	@, ivtmp.789,
	mov	r0, r8	@, _ptr_msg_bank.952
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #872	@ tmp665, ivtmp.788,
	add	r7, r4, r2	@ _ptr_msg_bank.954, pCtx, tmp665
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.954
	bl	__memzero	@
	add	r1, r6, #66	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.954
	bl	memcpy	@
	add	r3, r5, #888	@ tmp671, ivtmp.788,
	add	sl, r4, r3	@ _ptr_msg_bank.955, pCtx, tmp671
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.955
	bl	__memzero	@
	add	r1, r6, #77	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.955
	bl	memcpy	@
	add	r0, r5, #904	@ tmp677, ivtmp.788,
	add	r8, r4, r0	@ _ptr_msg_bank.956, pCtx, tmp677
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.956
	bl	__memzero	@
	add	r1, r6, #88	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r8	@, _ptr_msg_bank.956
	bl	memcpy	@
	add	r1, r5, #920	@ tmp683, ivtmp.788,
	add	r7, r4, r1	@ _ptr_msg_bank.957, pCtx, tmp683
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.957
	bl	__memzero	@
	add	r1, r6, #99	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.957
	bl	memcpy	@
	add	ip, r5, #936	@ tmp689, ivtmp.788,
	add	sl, r4, ip	@ _ptr_msg_bank.958, pCtx, tmp689
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.958
	bl	__memzero	@
	add	r1, r6, #110	@, ivtmp.789,
	mov	r0, sl	@, _ptr_msg_bank.958
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #952	@ tmp695, ivtmp.788,
	add	r8, r4, r2	@ _ptr_msg_bank.959, pCtx, tmp695
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.959
	bl	__memzero	@
	add	r1, r6, #121	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r8	@, _ptr_msg_bank.959
	bl	memcpy	@
	add	r3, r5, #968	@ tmp701, ivtmp.788,
	add	r7, r4, r3	@ _ptr_msg_bank.960, pCtx, tmp701
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.960
	bl	__memzero	@
	add	r1, r6, #132	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.960
	bl	memcpy	@
	add	r0, r5, #984	@ tmp707, ivtmp.788,
	add	sl, r4, r0	@ _ptr_msg_bank.961, pCtx, tmp707
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.961
	bl	__memzero	@
	add	r1, r6, #143	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.961
	bl	memcpy	@
	add	r1, r5, #1000	@ tmp713, ivtmp.788,
	add	r8, r4, r1	@ _ptr_msg_bank.962, pCtx, tmp713
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.962
	bl	__memzero	@
	add	r1, r6, #154	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r8	@, _ptr_msg_bank.962
	bl	memcpy	@
	add	ip, r5, #1016	@ tmp719, ivtmp.788,
	add	r7, r4, ip	@ _ptr_msg_bank.963, pCtx, tmp719
	mov	r1, #16	@,
	add	r8, r5, #1040	@ tmp732, ivtmp.788,
	mov	r0, r7	@, _ptr_msg_bank.963
	bl	__memzero	@
	add	r1, r6, #165	@, ivtmp.789,
	mov	r0, r7	@, _ptr_msg_bank.963
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #1024	@ tmp725, ivtmp.788,
	add	r3, r2, #8	@ tmp725, tmp725,
	mov	r1, #16	@,
	add	sl, r4, r3	@ _ptr_msg_bank.964, pCtx, tmp725
	mov	r0, sl	@, _ptr_msg_bank.964
	bl	__memzero	@
	add	r1, r6, #176	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.964
	bl	memcpy	@
	add	r0, r8, #8	@ tmp732, tmp732,
	add	r7, r4, r0	@ _ptr_msg_bank.965, pCtx, tmp732
	mov	r1, #16	@,
	mov	r0, r7	@, _ptr_msg_bank.965
	bl	__memzero	@
	add	r1, r6, #187	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.965
	bl	memcpy	@
	add	r1, r5, #1056	@ tmp739, ivtmp.788,
	add	ip, r1, #8	@ tmp739, tmp739,
	mov	r1, #16	@,
	add	sl, r4, ip	@ _ptr_msg_bank.966, pCtx, tmp739
	add	r7, r5, #1088	@ tmp753, ivtmp.788,
	mov	r0, sl	@, _ptr_msg_bank.966
	bl	__memzero	@
	add	r1, r6, #198	@, ivtmp.789,
	mov	r0, sl	@, _ptr_msg_bank.966
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #1072	@ tmp746, ivtmp.788,
	add	r3, r2, #8	@ tmp746, tmp746,
	mov	r1, #16	@,
	add	r8, r4, r3	@ _ptr_msg_bank.967, pCtx, tmp746
	mov	r0, r8	@, _ptr_msg_bank.967
	bl	__memzero	@
	add	r1, r6, #209	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r8	@, _ptr_msg_bank.967
	bl	memcpy	@
	add	r0, r7, #8	@ tmp753, tmp753,
	add	sl, r4, r0	@ _ptr_msg_bank.968, pCtx, tmp753
	mov	r1, #16	@,
	mov	r0, sl	@, _ptr_msg_bank.968
	bl	__memzero	@
	add	r1, r6, #220	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, sl	@, _ptr_msg_bank.968
	bl	memcpy	@
	add	r1, r5, #1104	@ tmp760, ivtmp.788,
	add	ip, r1, #8	@ tmp760, tmp760,
	mov	r1, #16	@,
	add	r8, r4, ip	@ _ptr_msg_bank.944, pCtx, tmp760
	add	sl, r5, #1136	@ tmp774, ivtmp.788,
	mov	r0, r8	@, _ptr_msg_bank.944
	bl	__memzero	@
	add	r1, r6, #231	@, ivtmp.789,
	mov	r0, r8	@, _ptr_msg_bank.944
	mov	r2, #11	@,
	bl	memcpy	@
	add	r2, r5, #1120	@ tmp767, ivtmp.788,
	add	r3, r2, #8	@ tmp767, tmp767,
	mov	r1, #16	@,
	add	r7, r4, r3	@ _ptr_msg_bank.945, pCtx, tmp767
	add	r5, r5, #384	@ ivtmp.788, ivtmp.788,
	mov	r0, r7	@, _ptr_msg_bank.945
	bl	__memzero	@
	add	r1, r6, #242	@, ivtmp.789,
	mov	r2, #11	@,
	mov	r0, r7	@, _ptr_msg_bank.945
	bl	memcpy	@
	add	r0, sl, #8	@ tmp774, tmp774,
	add	r8, r4, r0	@ _ptr_msg_bank.907, pCtx, tmp774
	mov	r1, #16	@,
	mov	r0, r8	@, _ptr_msg_bank.907
	bl	__memzero	@
	add	r1, r6, #253	@, ivtmp.789,
	mov	r0, r8	@, _ptr_msg_bank.907
	mov	r2, #11	@,
	bl	memcpy	@
	cmp	r5, #1536	@ ivtmp.788,
	add	r6, r6, #264	@ ivtmp.789, ivtmp.789,
	bne	.L62	@,
	ldr	r0, [sp, #20]	@, %sfp
	movw	r1, #5716	@ tmp781,
	ldr	r5, [r4, r1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type, <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type
	movw	r8, #5728	@ tmp787,
	ldr	sl, [r4, r8]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	add	r6, r4, #3168	@ pBs, pCtx,
	ldr	ip, [r0, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ <variable>.Vp8CodecInfo.NewHeaderInfo.frame_type,
	add	r6, r6, #4	@ pBs, pBs,
	moveq	r5, #10	@ offset,
	movne	r5, #3	@ offset,
	bic	r2, ip, #15	@ tmp784, <variable>.PhyAddr,
	add	lr, r5, sl	@ tmp788, offset, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	sub	r3, r2, #16	@ tmp786, tmp784,
	mov	r0, r6	@, pBs
	str	r3, [r4, #2820]	@ tmp786, <variable>.Vp8DecParam.stream_base_addr
	mov	r7, lr, asl #3	@ D.35639, tmp788,
	bl	BsPos	@
	rsb	r1, r0, r7	@ tmp790,, D.35639
	str	r1, [r4, #2824]	@ tmp790, <variable>.Vp8DecParam.bit_len_0
	ldr	r0, [sp, #20]	@, %sfp
	ldr	ip, [r0, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r6	@, pBs
	and	sl, ip, #15	@ D.35643, <variable>.PhyAddr,
	bl	BsPos	@
	add	sl, sl, #16	@ tmp792, D.35643,
	cmp	r0, #0	@ D.35644,
	add	r7, r0, #7	@ tmp795, D.35644,
	movge	r7, r0	@ D.35644, D.35644
	mov	r0, r6	@, pBs
	bl	BsPos	@
	add	r7, sl, r7, asr #3	@, ByteA, tmp792, D.35644,
	movw	r2, #5673	@ tmp815,
	mov	r6, #1	@ tmp818,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition, <variable>.Vp8CodecInfo.NewHeaderInfo.multi_token_partition
	and	r2, r7, #15	@ tmp797, ByteA,
	bic	r7, r7, #15	@ tmp806, ByteA,
	str	r7, [r4, #2832]	@ tmp806, <variable>.Vp8DecParam.bit_byte_offset_0
	mov	r6, r6, asl r1	@ tmp817, tmp818,
	ldr	r1, [r4, r8]	@ temp.910, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	uxtb	r6, r6	@ num_part, tmp817
	cmp	r6, #1	@ num_part,
	subhi	r8, r6, #1	@ pretmp.726, num_part,
	addhi	r7, r8, r8, asl #1	@, tmp822, pretmp.726, pretmp.726,
	mov	r3, r0, asr #31	@ tmp800, D.35650,
	mov	r3, r3, lsr #29	@ tmp801, tmp800,
	add	ip, r0, r3	@ tmp802, D.35650, tmp801
	and	r0, ip, #7	@ tmp803, tmp802,
	rsb	ip, r3, r0	@ tmp804, tmp801, tmp803
	mov	r3, #0	@ tmp807,
	add	r0, ip, r2, asl #3	@, tmp805, tmp804, tmp797,
	str	r3, [r4, #2844]	@ tmp807, <variable>.Vp8DecParam.bit_byte_offset_1
	str	r0, [r4, #2828]	@ tmp805, <variable>.Vp8DecParam.bit_offset_0
	add	r2, r5, r1	@ tmp811, offset, temp.910
	str	r3, [r4, #2836]	@ tmp807, <variable>.Vp8DecParam.bit_len_1
	str	r3, [r4, #2840]	@ tmp807, <variable>.Vp8DecParam.bit_offset_1
	ldr	ip, [sp, #20]	@, %sfp
	ldr	r0, [ip, #8]	@ <variable>.Length, <variable>.Length
	ldr	r3, [ip, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	rsb	ip, r5, r0	@ tmp813, offset, <variable>.Length
	str	r6, [r4, #2848]	@ num_part, <variable>.Vp8DecParam.stream_num_part
	add	r2, r2, r3	@ VirAddr_1, tmp811, <variable>.VirAddr
	rsb	r0, r1, ip	@ ByteLen_1, temp.910, tmp813
	addhi	r7, r2, r7	@ source_start, VirAddr_1, tmp822
	bls	.L105	@,
.L67:
	rsb	fp, r6, #1	@ tmp823, num_part,
	tst	r6, #1	@ num_part,
	mov	r3, r2	@ source, VirAddr_1
	mov	r1, #0	@ i.912,
	add	r9, fp, fp, asl #1	@, tmp826, tmp823, tmp823,
	add	ip, sp, #40	@ tmp863,,
	add	sl, r0, r9	@ D.35688, ByteLen_1, tmp826
	bne	.L71	@,
	cmp	r1, r8	@ i.912, pretmp.726
	rsbge	r0, r7, r2	@ tmp920, source_start, VirAddr_1
	ldrltb	r3, [r2, #2]	@ zero_extendqisi2	@ tmp924,
	addge	r0, r0, sl	@ length, tmp920, D.35688
	ldrltb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp922,
	ldrltb	r0, [r2, #0]	@ zero_extendqisi2	@ tmp927,* VirAddr_1
	movlt	r3, r3, asl #16	@ tmp925, tmp924,
	addlt	r3, r3, r1, asl #8	@, tmp926, tmp925, tmp922,
	mov	r1, #1	@ i.912,
	addlt	r0, r3, r0	@ length, tmp926, tmp927
	add	r3, r2, #3	@ source, VirAddr_1,
	add	r7, r7, r0	@ source_start, source_start, length
	str	r0, [ip, #0]	@ length, BsLen
	b	.L71	@
.L106:
	cmp	r2, r8	@ tmp877, pretmp.726
	add	r1, r9, sl	@ length, tmp929, D.35688
	bge	.L98	@,
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ tmp933,
	ldrb	r9, [r0, #1]	@ zero_extendqisi2	@ tmp931,
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ tmp936,
	mov	fp, r1, asl #16	@ tmp934, tmp933,
	add	r1, fp, r9, asl #8	@, tmp935, tmp934, tmp931,
	add	r1, r1, r3	@ length, tmp935, tmp936
.L98:
	add	r7, r7, r1	@ source_start, source_start, length
	str	r1, [ip, r2, asl #2]	@ length, BsLen
	add	r3, r0, #3	@ source, tmp878,
	add	r1, r2, #1	@ i.912, tmp877,
.L71:
	cmp	r1, r8	@ i.912, pretmp.726
	rsb	r2, r7, r3	@ tmp833, source_start, source
	add	r0, r2, sl	@ length, tmp833, D.35688
	bge	.L69	@,
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp829,
	ldrb	r9, [r3, #1]	@ zero_extendqisi2	@ tmp827,
	ldrb	fp, [r3, #0]	@ zero_extendqisi2	@ tmp832,* source
	mov	r2, r0, asl #16	@ tmp830, tmp829,
	add	r0, r2, r9, asl #8	@, tmp831, tmp830, tmp827,
	add	r0, r0, fp	@ length, tmp831, tmp832
.L69:
	add	r2, r1, #1	@ tmp877, i.912,
	add	r7, r7, r0	@ source_start, source_start, length
	cmp	r2, r6	@ tmp877, num_part
	str	r0, [ip, r1, asl #2]	@ length, BsLen
	add	r0, r3, #3	@ tmp878, source,
	rsb	r9, r7, r0	@ tmp929, source_start, tmp878
	bne	.L106	@,
	ldr	fp, [sp, #20]	@, %sfp
	movw	r7, #5728	@ tmp838,
	ldr	r3, [r4, r7]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	add	r8, r8, r8, asl #1	@, tmp844, pretmp.726, pretmp.726,
	ldr	r0, [fp, #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	and	r2, r0, #15	@ tmp836, <variable>.PhyAddr,
	add	r7, r2, r3	@ tmp839, tmp836, <variable>.Vp8CodecInfo.NewHeaderInfo.first_partition_length_in_bytes
	ldr	r3, [ip], #4	@ tmp893, BsLen
	add	r0, r7, r5	@ tmp841, tmp839, offset
	add	r2, r4, #2848	@ ivtmp.750, pCtx,
	add	r7, r0, r8	@ D.35695, tmp841, tmp844
	mov	r0, #1	@ i,
	and	r5, r7, #15	@ tmp895, prephitmp.730,
	cmp	r0, r6	@ i, num_part
	mov	r8, r3, asl #3	@ tmp894, tmp893,
	bic	r3, r7, #15	@ tmp897, prephitmp.730,
	str	r8, [r2, #4]!	@ tmp894, <variable>.Vp8DecParam.bitn_len_0
	mov	r8, r5, asl #3	@ tmp896, tmp895,
	add	r5, r3, #16	@ tmp898, tmp897,
	str	r8, [r2, #32]	@ tmp896, <variable>.Vp8DecParam.bitn_offset_0
	str	r5, [r2, #64]	@ tmp898, <variable>.Vp8DecParam.bitn_byte_offset_0
	and	r8, r1, r0	@ tmp869, i.912,
	str	r7, [sp, #72]	@ D.35695, Byte
	mov	r1, #0	@ tmp864,
	add	r3, r2, #4	@ ivtmp.750, ivtmp.750,
	str	r1, [r2, #96]	@ tmp864, <variable>.Vp8DecParam.bitn_len_1
	add	r5, sp, #72	@ ivtmp.759,,
	str	r1, [r2, #128]	@ tmp864, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r2, #160]	@ tmp864, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L66	@,
	cmp	r8, #0	@ tmp869,
	beq	.L74	@,
	ldr	r8, [ip, #-4]	@ tmp900, BsLen
	add	r0, r0, #1	@ i, i,
	ldr	r2, [r5, #0]	@ tmp901, Byte
	cmp	r0, r6	@ i, num_part
	ldr	sl, [ip], #4	@ tmp903, BsLen
	add	r2, r8, r2	@ prephitmp.730, tmp900, tmp901
	str	r2, [r5, #4]!	@ prephitmp.730, Byte
	and	r8, r2, #15	@ tmp905, prephitmp.730,
	bic	r2, r2, #15	@ tmp907, prephitmp.730,
	mov	sl, sl, asl #3	@ tmp904, tmp903,
	add	r2, r2, #16	@ tmp908, tmp907,
	str	sl, [r3, #0]	@ tmp904, <variable>.Vp8DecParam.bitn_len_0
	mov	r8, r8, asl #3	@ tmp906, tmp905,
	str	r2, [r3, #64]	@ tmp908, <variable>.Vp8DecParam.bitn_byte_offset_0
	str	r8, [r3, #32]	@ tmp906, <variable>.Vp8DecParam.bitn_offset_0
	str	r1, [r3, #96]	@ tmp864, <variable>.Vp8DecParam.bitn_len_1
	str	r1, [r3, #128]	@ tmp864, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r3, #160]	@ tmp864, <variable>.Vp8DecParam.bitn_byte_offset_1
	add	r3, r3, #4	@ ivtmp.750, ivtmp.750,
	bne	.L74	@,
	b	.L66	@
.L107:
	str	r7, [sp, #72]	@ D.35695, Byte
	ldr	r5, [r8, #4]	@ prephitmp.730, Byte
.L95:
	ldr	sl, [ip], #4	@ tmp913, BsLen
	add	r0, r0, #1	@ i, tmp870,
	and	r9, r5, #15	@ tmp915, prephitmp.730,
	cmp	r0, r6	@ i, num_part
	bic	r5, r5, #15	@ tmp917, prephitmp.730,
	add	r3, r2, #4	@ ivtmp.750, tmp872,
	add	r5, r5, #16	@ tmp918, tmp917,
	mov	r9, r9, asl #3	@ tmp916, tmp915,
	mov	sl, sl, asl #3	@ tmp914, tmp913,
	str	r5, [r2, #64]	@ tmp918, <variable>.Vp8DecParam.bitn_byte_offset_0
	str	r1, [r2, #96]	@ tmp864, <variable>.Vp8DecParam.bitn_len_1
	add	r5, r8, #4	@ ivtmp.759, tmp873,
	str	r9, [r2, #32]	@ tmp916, <variable>.Vp8DecParam.bitn_offset_0
	str	sl, [r2, #0]	@ tmp914, <variable>.Vp8DecParam.bitn_len_0
	str	r1, [r2, #128]	@ tmp864, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r2, #160]	@ tmp864, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L66	@,
.L74:
	cmp	r0, #0	@ i,
	streq	r7, [sp, #72]	@ D.35695, Byte
	ldrne	r2, [r5, #0]	@ tmp848, Byte
	ldrne	r8, [ip, #-4]	@ tmp847, BsLen
	ldreq	r2, [r5, #4]	@ prephitmp.730, Byte
	ldr	r9, [ip], #4	@ tmp849, BsLen
	addne	r2, r8, r2	@ prephitmp.730, tmp847, tmp848
	and	r8, r2, #15	@ tmp851, prephitmp.730,
	strne	r2, [r5, #4]	@ prephitmp.730, Byte
	adds	r0, r0, #1	@ tmp870, i,
	bic	r2, r2, #15	@ tmp853, prephitmp.730,
	mov	sl, r8, asl #3	@ tmp852, tmp851,
	str	r1, [r3, #96]	@ tmp864, <variable>.Vp8DecParam.bitn_len_1
	add	r8, r2, #16	@ tmp854, tmp853,
	str	sl, [r3, #32]	@ tmp852, <variable>.Vp8DecParam.bitn_offset_0
	str	r8, [r3, #64]	@ tmp854, <variable>.Vp8DecParam.bitn_byte_offset_0
	mov	sl, r9, asl #3	@ tmp850, tmp849,
	add	r2, r3, #4	@ tmp872, ivtmp.750,
	str	sl, [r3, #0]	@ tmp850, <variable>.Vp8DecParam.bitn_len_0
	add	r8, r5, #4	@ tmp873, ivtmp.759,
	str	r1, [r3, #128]	@ tmp864, <variable>.Vp8DecParam.bitn_offset_1
	str	r1, [r3, #160]	@ tmp864, <variable>.Vp8DecParam.bitn_byte_offset_1
	beq	.L107	@,
	ldr	r9, [r5, #4]	@ tmp911, Byte
	ldr	r3, [ip, #-4]	@ tmp910, BsLen
	add	r5, r3, r9	@ prephitmp.730, tmp910, tmp911
	str	r5, [r8, #4]	@ prephitmp.730, Byte
	b	.L95	@
.L52:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35467,
.L54:
	add	sp, sp, #108	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L105:
	cmp	r6, #0	@ num_part,
	subne	r8, r6, #1	@ pretmp.726, num_part,
	movne	r7, r2	@ source_start, VirAddr_1
	bne	.L67	@,
.L66:
	ldr	r3, [sp, #12]	@, %sfp
	mov	r0, #1	@ D.35467,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	str	r3, [r4, #4]	@, <variable>.pVp8DecParam
	ldr	ip, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	ip, [r4, #3148]	@ <variable>.s32Compress_en, <variable>.Vp8DecParam.Compress_en
	b	.L54	@
.L104:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35467, D.35468
	b	.L54	@
	.fnend
	.size	VP8_Set_DecParam, .-VP8_Set_DecParam
	.align	2
	.global	VP8_GetImageBuffer
	.type	VP8_GetImageBuffer, %function
VP8_GetImageBuffer:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #8520	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r6, #8152	@ tmp144,
	cmp	r0, #0	@ D.35279,
	mov	r1, r0	@ D.35279,
	str	r0, [r4, r6]	@ D.35279, <variable>.Vp8CodecInfo.CurFsID
	blt	.L114	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L115	@,
	ldr	r2, [r4, r6]	@, <variable>.Vp8CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.35297, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35297,
	beq	.L112	@,
	ldr	r3, [r5, #412]	@ D.35299, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35299,
	beq	.L112	@,
	ldr	ip, [r5, #416]	@ D.35301, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.35301,
	beq	.L112	@,
	ldr	ip, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC13	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC13	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.35289,
.L110:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L112:
	mov	r0, #0	@ D.35289,
	b	.L110	@
.L114:
	movw	r8, #8140	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	movw	r6, #8144	@ tmp152,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp8CodecInfo.GoldenFsID
	movw	r7, #8148	@ tmp156,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	sl, #0	@ tmp159,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	sl, [r4, r8]	@ tmp159, <variable>.Vp8CodecInfo.GoldenFsID
	str	sl, [r4, r6]	@ tmp159, <variable>.Vp8CodecInfo.AltFsID
	str	sl, [r4, r7]	@ tmp159, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #8120	@ tmp169,
	add	r1, r4, #8128	@, pCtx,
	str	sl, [r4, r3]	@ tmp159, <variable>.Vp8CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.35287, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r4, r7]	@ D.35287, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r6]	@ D.35287, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, sl	@ D.35289, tmp159
	b	.L110	@
.L115:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC11	@,
	movw	r2, #1529	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35289, pLf
	b	.L110	@
	.fnend
	.size	VP8_GetImageBuffer, .-VP8_GetImageBuffer
	.align	2
	.global	VP8_ArrangeVHBMem
	.type	VP8_ArrangeVHBMem, %function
VP8_ArrangeVHBMem:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #5768	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ D.35139, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_pix
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #31	@ D.35139,
	bls	.L143	@,
	movw	r0, #5764	@ tmp155,
	ldr	r2, [r4, r0]	@ prephitmp.1055, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
	cmp	r2, #31	@ prephitmp.1055,
	bls	.L118	@,
	ldr	r1, [r4, #0]	@ D.35146, <variable>.pstExtraData
	ldr	ip, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L121	@,
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	beq	.L144	@,
.L122:
	mov	r8, #4	@ PmvNum,
	mov	r5, r2	@ PicWidth, prephitmp.1055
	mov	r6, r3	@ PicHeight, D.35139
	mov	sl, #5	@ prephitmp.1057,
	mov	r9, r8	@ DecFsNum, PmvNum
.L129:
	add	r7, sp, #8	@ tmp197,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp197
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp172,
	ldr	r3, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r6, [sp, #40]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	r2, [sp, #10]	@ tmp172, FspInstCfg.s32RprEnable
	str	r6, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #8520	@ tmp183,
	str	r5, [sp, #36]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	ldr	r5, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	sl, [sp, #15]	@ prephitmp.1057, FspInstCfg.s32ExpectedDispFsNum
	cmp	r5, #24	@ <variable>.eCapLevel,
	uxtbne	r2, r9	@ iftmp.456, DecFsNum
	strb	r2, [sp, #13]	@ iftmp.456, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp197
	uxtbne	r8, r8	@ iftmp.457, PmvNum
	mov	r7, #0	@ tmp181,
	moveq	r8, #1	@ iftmp.457,
	strb	r7, [sp, #12]	@ tmp181, FspInstCfg.s32UserDec
	strb	r8, [sp, #16]	@ iftmp.457, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35193,
	bne	.L140	@,
	ldr	lr, [r4, #0]	@ temp.1084, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L145	@,
	mov	ip, #1	@ tmp194,
	movw	r1, #8124	@ tmp193,
	mov	r0, ip	@ D.35143, tmp194
	str	ip, [r4, r1]	@ tmp194, <variable>.Vp8CodecInfo.Imgbuf_allocated
	b	.L120	@
.L143:
	movw	r2, #5764	@ tmp154,
	ldr	r2, [r0, r2]	@ prephitmp.1055, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
.L118:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35143,
.L120:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L121:
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L122	@,
	ldr	ip, [r1, #568]	@ D.35153, <variable>.stChanOption.s32MaxWidth
	cmp	r2, ip	@ prephitmp.1055, D.35153
	ldrhi	lr, [r1, #572]	@ prephitmp.1059, <variable>.stChanOption.s32MaxHeight
	bhi	.L132	@,
	ldr	lr, [r1, #572]	@ prephitmp.1059, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ D.35139, prephitmp.1059
	bhi	.L132	@,
	ldr	r6, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L135	@,
	add	r8, r9, #1	@ PmvNum.1075, DecFsNum,
	cmp	r8, #17	@ PmvNum.1075,
	movge	r8, #17	@ PmvNum,
.L135:
	ldrb	sl, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1057, <variable>.stChanOption.s32DisplayFrameNum
	mov	r5, r2	@ PicWidth, prephitmp.1055
	mov	r6, r3	@ PicHeight, D.35139
	b	.L129	@
.L144:
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r5	@ prephitmp.1055, PicWidth
	ldrhi	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L124	@,
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.35139, PicHeight
	bhi	.L124	@,
	movw	r3, #8124	@ tmp160,
	ldr	r0, [r4, r3]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	beq	.L120	@,
	ldr	r7, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r8, #1	@ PmvNum,
	beq	.L128	@,
	add	r8, r9, #1	@ PmvNum.1070, DecFsNum,
	cmp	r8, #17	@ PmvNum.1070,
	movge	r8, #17	@ PmvNum,
.L128:
	ldrb	sl, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1057, <variable>.stChanOption.s32DisplayFrameNum
	b	.L129	@
.L140:
	mov	r0, r7	@, tmp181
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35143, tmp181
	b	.L120	@
.L132:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35143,
	b	.L120	@
.L145:
	mov	r0, r5	@, D.35193
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35143, D.35193
	b	.L120	@
.L124:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35143,
	b	.L120	@
	.fnend
	.size	VP8_ArrangeVHBMem, .-VP8_ArrangeVHBMem
	.align	2
	.global	Vp8_Vfmw_DecodeBool
	.type	Vp8_Vfmw_DecodeBool, %function
Vp8_Vfmw_DecodeBool:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	sl, [r0, #0]	@ range.1121, <variable>.range
	mov	r5, r1	@ pBs, pBs
	ldr	r6, [r0, #4]	@ value, <variable>.value
	sub	r1, sl, #1	@ tmp153, range.1121,
	ldr	r9, [r0, #8]	@ D.34434, <variable>.count
	mov	r4, r0	@ pBc, pBc
	movw	r0, #:lower16:.LANCHOR0	@ tmp156,
	mul	ip, r1, r2	@ tmp154, tmp153, probability
	movt	r0, #:upper16:.LANCHOR0	@ tmp156,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	fp, ip, lsr #8	@ tmp155, tmp154,
	add	fp, fp, #1	@ split, tmp155,
	mov	r2, fp, asl #16	@ bigsplit, split,
	cmp	r6, r2	@ value, bigsplit
	rsbcs	fp, fp, sl	@ range, split, range.1121
	rsbcs	r6, r2, r6	@ value, bigsplit, value
	add	r3, fp, r0	@ tmp158, range, tmp156
	movcs	sl, #1	@,
	strcs	sl, [sp, #4]	@, %sfp
	movcc	r2, #0	@,
	ldrb	sl, [r3, #1116]	@ zero_extendqisi2	@ shift, VP8_VFMWBITREADER_NORM
	strcc	r2, [sp, #4]	@, %sfp
	subs	r9, r9, sl	@ count, D.34434, shift
	mov	r6, r6, asl sl	@ value.1119, value,
	bmi	.L159	@,
.L149:
	str	r6, [r4, #4]	@ value.1119, <variable>.value
	mov	sl, fp, asl sl	@ tmp163, range,
	str	r9, [r4, #8]	@ count, <variable>.count
	ldr	r0, [sp, #4]	@, %sfp
	str	sl, [r4, #0]	@ tmp163, <variable>.range
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L159:
	rsbs	r3, r9, #8	@, count,
	str	r3, [sp, #0]	@, %sfp
	bmi	.L149	@,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	ldr	ip, [sp, #0]	@, %sfp
	ldr	r2, [sp, #0]	@, %sfp
	subs	r7, ip, #8	@ shift.1124,,
	ubfx	r3, ip, #3, #1	@ tmp167,,,
	orr	r6, r6, r0, asl r2	@, value.1119, value.1119,,
	bmi	.L158	@,
	cmp	r3, #0	@ tmp167,
	beq	.L150	@,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	orr	r6, r6, r0, asl r7	@, value.1119, value.1119,,
	subs	r7, r7, #8	@ shift.1124, shift.1124,
	bmi	.L158	@,
.L150:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	sub	r8, r7, #8	@ tmp168, shift.1124,
	orr	r6, r6, r0, asl r7	@, value.1119, value.1119,,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r7, r8, #8	@ shift.1124, tmp168,
	orr	r6, r6, r0, asl r8	@, value.1119, value.1119,,
	bpl	.L150	@,
.L158:
	ldr	r1, [sp, #0]	@, %sfp
	add	lr, r9, #8	@ D.36664, count,
	bic	r0, r1, #7	@ tmp162,,
	add	r9, lr, r0	@ count, D.36664, tmp162
	b	.L149	@
	.fnend
	.size	Vp8_Vfmw_DecodeBool, .-Vp8_Vfmw_DecodeBool
	.align	2
	.global	Vp8_Vfmw_DecodeValue
	.type	Vp8_Vfmw_DecodeValue, %function
Vp8_Vfmw_DecodeValue:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r2, #1	@ i, nBits,
	mov	r8, r0	@ pBc, pBc
	mov	r7, r1	@ pBs, pBs
	movmi	r6, #0	@ value,
	bmi	.L162	@,
	mov	r2, #128	@,
	and	r5, r6, #1	@ tmp145, i,
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r4, r6, #1	@ i, i,
	mov	r6, r0, asl r6	@ value,,
	bmi	.L162	@,
	cmp	r5, #0	@ tmp145,
	beq	.L163	@,
	mov	r0, r8	@, pBc
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	orr	r6, r6, r0, asl r4	@, value, value,,
	subs	r4, r4, #1	@ i, i,
	bmi	.L162	@,
.L163:
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	mov	r0, r8	@, pBc
	sub	r5, r4, #1	@ tmp146, i,
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	orr	r6, r6, r0, asl r4	@, value, value,,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r4, r5, #1	@ i, tmp146,
	orr	r6, r6, r0, asl r5	@, value, value,,
	bpl	.L163	@,
.L162:
	mov	r0, r6	@, value
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Vp8_Vfmw_DecodeValue, .-Vp8_Vfmw_DecodeValue
	.align	2
	.global	get_delta_q
	.type	get_delta_q, %function
get_delta_q:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r2	@ prev, prev
	mov	r2, #128	@,
	mov	r6, r3	@ q_update, q_update
	mov	r8, r0	@ pBc, pBc
	mov	r7, r1	@ pBs, pBs
	bl	Vp8_Vfmw_DecodeBool	@
	subs	r5, r0, #0	@ D.34770,
	bne	.L176	@,
	cmp	r5, r4	@ ret_val, prev
	mov	r0, r5	@, ret_val
	movne	r3, #1	@ tmp141,
	strne	r3, [r6, #0]	@ tmp141,* q_update
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L176:
	mov	r1, r7	@, pBs
	mov	r2, #4	@,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r7	@, pBs
	mov	r2, #128	@,
	mov	r5, r0	@ ret_val,
	mov	r0, r8	@, pBc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	rsbne	r5, r5, #0	@ ret_val, ret_val
	cmp	r5, r4	@ ret_val, prev
	mov	r0, r5	@, ret_val
	movne	r3, #1	@ tmp141,
	strne	r3, [r6, #0]	@ tmp141,* q_update
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	get_delta_q, .-get_delta_q
	.align	2
	.global	read_mvcontexts
	.type	read_mvcontexts, %function
read_mvcontexts:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r9, .L212	@ tmp164,
	mov	r6, r0	@ bc, bc
	mov	r5, r1	@ pBs, pBs
	mov	fp, r2	@ pretmp.1191, mvc
	mov	sl, #0	@ i,
.L183:
	mov	r1, sl, asl #3	@ tmp151, i,
	mov	r0, r6	@, bc
	add	r4, r1, sl	@ tmp152, tmp151, i
	mov	r1, r5	@, pBs
	add	r4, sl, r4, asl #1	@, tmp154, i, tmp152,
	add	r7, r9, r4	@ up, tmp164, tmp154
	add	r8, fp, r4	@ p, pretmp.1191, tmp154
	ldrb	r2, [r9, r4]	@ zero_extendqisi2	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L206	@,
.L186:
	mov	r3, #0	@ tmp173,
	cmp	r3, r3	@ tmp173,
	mov	r4, #1	@ ivtmp.1203,
	beq	.L181	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,* ivtmp.1203
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L207	@,
.L193:
	add	r4, r4, #1	@ ivtmp.1203, tmp174,
	cmp	r4, #19	@ ivtmp.1203,
	beq	.L208	@,
.L181:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,* ivtmp.1203
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	bne	.L209	@,
.L178:
	add	r4, r4, #1	@ tmp174, ivtmp.1203,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	ldrb	r2, [r7, r4]	@ zero_extendqisi2	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L193	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r0, r0	@ x,
	cmp	r0, #0	@ x,
	movne	r0, r0, asl #1	@ tmp194, x,
	uxtbne	r0, r0	@ iftmp.445, tmp194
	moveq	r0, #1	@ iftmp.445,
.L205:
	strb	r0, [r8, r4]	@ iftmp.445,
	add	r4, r4, #1	@ ivtmp.1203, tmp174,
	cmp	r4, #19	@ ivtmp.1203,
	bne	.L181	@,
.L208:
	cmp	sl, #0	@ i,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	mov	sl, #1	@ i,
	b	.L183	@
.L209:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r0, r0	@ x,
	cmp	r0, #0	@ x,
	movne	r0, r0, asl #1	@ tmp161, x,
	moveq	r0, #1	@ iftmp.445,
	uxtbne	r0, r0	@ iftmp.445, tmp161
	strb	r0, [r8, r4]	@ iftmp.445,* ivtmp.1203
	b	.L178	@
.L206:
	mov	r2, #7	@,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	r2, r0	@ x,
	cmp	r2, #0	@ x,
	movne	r3, r2, asl #1	@ tmp184, x,
	uxtbne	r3, r3	@ iftmp.445, tmp184
	beq	.L210	@,
	strb	r3, [fp, r4]	@ iftmp.445,
	b	.L186	@
.L207:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #7	@,
	bl	Vp8_Vfmw_DecodeValue	@
	uxtb	ip, r0	@ x,
	cmp	ip, #0	@ x,
	movne	r3, ip, asl #1	@ tmp190, x,
	uxtbne	r3, r3	@ iftmp.445, tmp190
	beq	.L211	@,
	strb	r3, [r8, r4]	@ iftmp.445,* ivtmp.1203
	b	.L193	@
.L210:
	mov	r3, #1	@ iftmp.445,
	strb	r3, [fp, r4]	@ iftmp.445,
	b	.L186	@
.L211:
	mov	r3, r4	@ iftmp.445, ivtmp.1203
	strb	r3, [r8, r4]	@ iftmp.445,* ivtmp.1203
	b	.L193	@
.L213:
	.align	2
.L212:
	.word	.LANCHOR0+1372
	.fnend
	.size	read_mvcontexts, .-read_mvcontexts
	.align	2
	.global	VP8_mb_mode_mv_init
	.type	VP8_mb_mode_mv_init, %function
VP8_mb_mode_mv_init:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r0, #56]	@ <variable>.frame_type, <variable>.frame_type
	mov	r4, r0	@ pPictureHeader, pPictureHeader
	mov	r6, r1	@ bc, bc
	cmp	r3, #0	@ <variable>.frame_type,
	mov	r5, r2	@ pBs, pBs
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r2	@, pBs
	mov	r0, r6	@, bc
	mov	r2, #8	@,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #50]	@, <variable>.prob_intra
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #51]	@, <variable>.prob_last
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #128	@,
	strb	r0, [r4, #52]	@, <variable>.prob_gf
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L219	@,
.L216:
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L217	@,
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1314]	@, <variable>.fc.uv_mode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1315]	@, <variable>.fc.uv_mode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r4, #1316]	@, <variable>.fc.uv_mode_prob
.L217:
	add	r2, r4, #2368	@, pPictureHeader,
	mov	r0, r6	@, bc
	mov	r1, r5	@, pBs
	add	r2, r2, #6	@,,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	read_mvcontexts	@
.L219:
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1310]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1311]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r5	@, pBs
	mov	r2, #8	@,
	strb	r0, [r4, #1312]	@, <variable>.fc.ymode_prob
	mov	r0, r6	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r4, #1313]	@, <variable>.fc.ymode_prob
	b	.L216	@
	.fnend
	.size	VP8_mb_mode_mv_init, .-VP8_mb_mode_mv_init
	.align	2
	.global	Vp8_Vfmw_StartBoolDecode
	.type	Vp8_Vfmw_StartBoolDecode, %function
Vp8_Vfmw_StartBoolDecode:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pBc, pBc
	mov	r3, #16	@ tmp137,
	mov	r0, r1	@, pBs
	str	r3, [r4, #8]	@ tmp137, <variable>.count
	mov	r1, #255	@ tmp136,
	str	r1, [r4, #0]	@ tmp136, <variable>.range
	mov	r1, #24	@,
	bl	BsGet	@
	str	r0, [r4, #4]	@, <variable>.value
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Vp8_Vfmw_StartBoolDecode, .-Vp8_Vfmw_StartBoolDecode
	.align	2
	.global	VP8_GetPictureHeader
	.type	VP8_GetPictureHeader, %function
VP8_GetPictureHeader:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, .L342	@ tmp310,
	mov	r6, r1	@ pVp8CodecInfo, pVp8CodecInfo
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pBs, pBs
	add	r9, sp, #20	@ tmp542,,
	ldmia	r5, {r0, r1}	@ tmp310,,
	mov	r7, r2	@ strlen, strlen
	stmia	r9, {r0, r1}	@ tmp542,,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data0,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.34872,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	movw	ip, #4960	@ tmp312,
	and	r3, r5, #1	@ D.34876, data0,
	str	r3, [r6, ip]	@ D.34876, <variable>.FrameType
	uxtb	r8, r8	@ D.34872, D.34872
	ubfx	r2, r5, #1, #3	@ tmp315, data0,,
	str	r2, [r6, #2524]	@ tmp315, <variable>.NewHeaderInfo.version
	ubfx	r1, r5, #4, #1	@ tmp318, data0,,
	str	r1, [r6, #2520]	@ tmp318, <variable>.NewHeaderInfo.show_frame
	str	r3, [r6, #2516]	@ D.34876, <variable>.NewHeaderInfo.frame_type
	uxtb	ip, r0	@ D.34873,
	mov	r2, ip, asl #16	@ tmp322, D.34873,
	orr	r1, r2, r8, asl #8	@, tmp323, tmp322, D.34872,
	orr	r0, r1, r5	@ tmp324, tmp323, data0
	mov	r3, r0, asr #5	@ D.34891, tmp324,
	str	r3, [r6, #2528]	@ D.34891, <variable>.NewHeaderInfo.first_partition_length_in_bytes
	cmp	r3, r7	@ D.34891, strlen
	bhi	.L300	@,
	add	r0, r6, #2448	@, pVp8CodecInfo,
	add	lr, r0, #12	@,,
	str	lr, [sp, #8]	@, %sfp
	mov	r0, lr	@,
	bl	VP8_setup_version	@
	ldr	r7, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r7, #0	@ <variable>.NewHeaderInfo.frame_type,
	bne	.L225	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r7, r0	@ data0.1436,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data1.1437,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r7, #157	@ data0.1436,
	cmpeq	r5, #1	@, data1.1437,
	uxtb	ip, r0	@ data2.1438,
	bne	.L226	@,
	cmp	ip, #42	@ data2.1438,
	beq	.L227	@,
.L226:
	mov	r2, r7	@, data0.1436
	mov	r3, r5	@, data1.1437
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	str	ip, [sp, #0]	@ data2.1438,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34896,
.L224:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L227:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r8, r0	@ D.34909,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	uxtb	r5, r0	@ data1.1440,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ D.34911,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r3, r8	@ D.34909, D.34909
	orr	ip, r3, r5, asl #8	@, tmp338, D.34909, data1.1440,
	uxtb	r7, r7	@ D.34911, D.34911
	mov	r5, r5, lsr #6	@ tmp342, data1.1440,
	str	r5, [r6, #2572]	@ tmp342, <variable>.NewHeaderInfo.horiz_scale
	mov	r2, ip, asl #18	@ D.34914, tmp338,
	mov	r2, r2, lsr #18	@ D.34914, D.34914,
	str	r2, [r6, #2564]	@ D.34914, <variable>.NewHeaderInfo.pic_width_in_pix
	add	r1, r2, #15	@ tmp340, D.34914,
	cmp	r2, #32	@ D.34914,
	mov	r1, r1, lsr #4	@ D.34917, tmp340,
	str	r1, [r6, #2556]	@ D.34917, <variable>.NewHeaderInfo.pic_width_in_mb
	uxtb	r3, r0	@ data3,
	orr	ip, r7, r3, asl #8	@, tmp345, D.34911, data3,
	mov	r0, r3, lsr #6	@ tmp349, data3,
	str	r0, [r6, #2576]	@ tmp349, <variable>.NewHeaderInfo.vert_scale
	mov	r3, ip, asl #18	@ D.34924, tmp345,
	mov	r3, r3, lsr #18	@ D.34924, D.34924,
	str	r3, [r6, #2568]	@ D.34924, <variable>.NewHeaderInfo.pic_height_in_pix
	add	r0, r3, #15	@ tmp347, D.34924,
	mov	r0, r0, lsr #4	@ D.34927, tmp347,
	str	r0, [r6, #2560]	@ D.34927, <variable>.NewHeaderInfo.pic_height_in_mb
	mul	ip, r1, r0	@ tmp350, D.34917, D.34927
	str	ip, [r6, #2580]	@ tmp350, <variable>.NewHeaderInfo.total_mbs
	bls	.L228	@,
	cmp	r3, #32	@ D.34924,
	bls	.L228	@,
	cmp	r1, #512	@ D.34917,
	bhi	.L228	@,
	cmp	r0, #512	@ D.34927,
	bhi	.L228	@,
	ldr	r5, [r6, #116]	@ old_height, <variable>.OldHeaderInfo.pic_height_in_pix
	ldr	r7, [r6, #112]	@ old_width, <variable>.OldHeaderInfo.pic_width_in_pix
	cmp	r3, r5	@ D.34924, old_height
	bne	.L230	@,
	cmp	r2, r7	@ D.34914, old_width
	beq	.L225	@,
.L230:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	ldr	fp, [r6, #2556]	@ <variable>.NewHeaderInfo.pic_width_in_mb, <variable>.NewHeaderInfo.pic_width_in_mb
	ldr	sl, [r6, #2560]	@ <variable>.NewHeaderInfo.pic_height_in_mb, <variable>.NewHeaderInfo.pic_height_in_mb
	movw	r1, #:lower16:.LC22	@,
	mov	r2, r7	@, old_width
	mov	r3, r5	@, old_height
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #22	@,
	str	fp, [sp, #0]	@ <variable>.NewHeaderInfo.pic_width_in_mb,
	str	sl, [sp, #4]	@ <variable>.NewHeaderInfo.pic_height_in_mb,
	bl	dprint_vfmw	@
.L225:
	add	lr, r6, #2592	@ bc, pVp8CodecInfo,
	ldr	r0, [sp, #8]	@, %sfp
	add	r5, lr, #8	@ bc, bc,
	bl	VP8_init_frame	@
	mov	r1, r4	@, pBs
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_StartBoolDecode	@
	ldr	r8, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r8, #0	@ <variable>.NewHeaderInfo.frame_type,
	bne	.L231	@,
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	str	r0, [r6, #2588]	@, <variable>.NewHeaderInfo.clr_type
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	str	r0, [r6, #2592]	@, <variable>.NewHeaderInfo.clamping_type
.L231:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.34949,
	strb	r0, [r6, #2474]	@ D.34949, <variable>.NewHeaderInfo.segmentation_enabled
	cmp	r0, #0	@ D.34949,
	bne	.L301	@,
.L232:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	str	r0, [r6, #2596]	@, <variable>.NewHeaderInfo.filter_type
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #3	@,
	strb	r0, [r6, #2470]	@, <variable>.NewHeaderInfo.filter_level
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r3, #0	@ tmp385,
	mov	r1, r4	@, pBs
	strb	r3, [r6, #2461]	@ tmp385, <variable>.NewHeaderInfo.mode_ref_lf_delta_update
	mov	r2, #128	@,
	strb	r0, [r6, #2471]	@, <variable>.NewHeaderInfo.sharpness_level
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r7, r0	@ D.35001,
	strb	r7, [r6, #2462]	@ D.35001, <variable>.NewHeaderInfo.mode_ref_lf_delta_enabled
	cmp	r7, #0	@ D.35001,
	bne	.L302	@,
.L240:
	mov	r1, r4	@, pBs
	mov	r2, #2	@,
	mov	r0, r5	@, bc
	add	r7, sp, #32	@ tmp410,,
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #7	@,
	mov	r8, #0	@ tmp406,
	strb	r0, [r6, #2473]	@, <variable>.NewHeaderInfo.multi_token_partition
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	ldrb	r2, [r6, #2465]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y1dc_delta_q
	mov	r1, r4	@, pBs
	str	r8, [r7, #-4]!	@ tmp406, q_update
	mov	r3, r7	@, tmp410
	sxtb	r2, r2	@, <variable>.NewHeaderInfo.y1dc_delta_q
	strb	r0, [r6, #2463]	@, <variable>.NewHeaderInfo.base_qindex
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	r9, [r6, #2466]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y2dc_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r7	@, tmp410
	sxtb	r2, r9	@, <variable>.NewHeaderInfo.y2dc_delta_q
	strb	r0, [r6, #2465]	@, <variable>.NewHeaderInfo.y1dc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	fp, [r6, #2467]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.y2ac_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r7	@, tmp410
	sxtb	r2, fp	@, <variable>.NewHeaderInfo.y2ac_delta_q
	strb	r0, [r6, #2466]	@, <variable>.NewHeaderInfo.y2dc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	sl, [r6, #2468]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.uvdc_delta_q
	mov	r1, r4	@, pBs
	mov	r3, r7	@, tmp410
	sxtb	r2, sl	@, <variable>.NewHeaderInfo.uvdc_delta_q
	strb	r0, [r6, #2467]	@, <variable>.NewHeaderInfo.y2ac_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldrb	ip, [r6, #2469]	@ zero_extendqisi2	@, <variable>.NewHeaderInfo.uvac_delta_q
	mov	r3, r7	@, tmp410
	mov	r1, r4	@, pBs
	sxtb	r2, ip	@, <variable>.NewHeaderInfo.uvac_delta_q
	strb	r0, [r6, #2468]	@, <variable>.NewHeaderInfo.uvdc_delta_q
	mov	r0, r5	@, bc
	bl	get_delta_q	@
	ldr	r2, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r2, r8	@ <variable>.NewHeaderInfo.frame_type,
	strb	r0, [r6, #2469]	@, <variable>.NewHeaderInfo.uvac_delta_q
	bne	.L303	@,
.L245:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.35081,
	strb	r0, [r6, #2505]	@ D.35081, <variable>.NewHeaderInfo.refresh_entropy_probs
	cmp	r0, #0	@ D.35081,
	bne	.L248	@,
	add	r1, r6, #2608	@, pVp8CodecInfo,
	add	lr, r6, #3760	@, pVp8CodecInfo,
	add	r0, r1, #4	@,,
	movw	r2, #1149	@,
	add	r1, lr, #1	@,,
	bl	memcpy	@
.L248:
	ldr	ip, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	ip, #0	@ <variable>.NewHeaderInfo.frame_type,
	addeq	ip, ip, #1	@ tmp455, tmp455,
	streqb	ip, [r6, #2500]	@ tmp455, <variable>.NewHeaderInfo.refresh_last_frame
	beq	.L250	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [r6, #2500]	@, <variable>.NewHeaderInfo.refresh_last_frame
.L250:
	add	r7, r6, #3776	@ ivtmp.1583, pVp8CodecInfo,
	mov	r9, #0	@ i.1454,
	add	fp, r7, #2	@ ivtmp.1583, ivtmp.1583,
.L251:
	add	r2, r9, r9, asl #5	@, tmp530, i.1454, i.1454,
	ldr	r3, .L342+4	@,
	mov	r8, fp	@ ivtmp.1328, ivtmp.1583
	mov	sl, #0	@ j,
	add	r7, r3, r2, asl #3	@, ivtmp.1325,, tmp530,
	b	.L252	@
.L265:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L304	@,
.L266:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L305	@,
.L267:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L306	@,
.L268:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L307	@,
.L269:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L308	@,
.L270:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L309	@,
.L271:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L310	@,
.L272:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L311	@,
.L273:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L312	@,
.L274:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L313	@,
.L275:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #11]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L314	@,
.L276:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #12]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L315	@,
.L277:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #13]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L316	@,
.L278:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #14]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L317	@,
.L279:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L318	@,
.L280:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L319	@,
.L281:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #17]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L320	@,
.L282:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #18]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L321	@,
.L283:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #19]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L322	@,
.L284:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #20]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L323	@,
.L285:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #21]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L324	@,
.L286:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L325	@,
.L288:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #23]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L326	@,
.L254:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #24]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L327	@,
.L255:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #25]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L328	@,
.L256:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #26]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L329	@,
.L257:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #27]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L330	@,
.L258:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #28]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L331	@,
.L259:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #29]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L332	@,
.L260:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #30]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L333	@,
.L261:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #31]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L334	@,
.L262:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #32]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	beq	.L335	@,
.L264:
	add	sl, sl, #1	@ j, j,
	add	r7, r7, #33	@ ivtmp.1325, ivtmp.1325,
	cmp	sl, #8	@ j,
	add	r8, r8, #33	@ ivtmp.1328, ivtmp.1328,
	beq	.L336	@,
.L252:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #0]	@ zero_extendqisi2	@, vp8_coef_update_probs
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L265	@,
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #1]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #0]	@,* ivtmp.1328
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L266	@,
.L304:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #2]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #1]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L267	@,
.L305:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #3]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #2]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L268	@,
.L306:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #4]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #3]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L269	@,
.L307:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #5]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #4]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L270	@,
.L308:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #5]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L271	@,
.L309:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #6]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L272	@,
.L310:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #8]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #7]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L273	@,
.L311:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #8]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L274	@,
.L312:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #10]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #9]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L275	@,
.L313:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #11]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #10]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L276	@,
.L314:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #12]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #11]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L277	@,
.L315:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #13]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #12]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L278	@,
.L316:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #14]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #13]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L279	@,
.L317:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #14]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L280	@,
.L318:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #15]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L281	@,
.L319:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #17]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #16]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L282	@,
.L320:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #18]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #17]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L283	@,
.L321:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #19]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #18]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L284	@,
.L322:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #20]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #19]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L285	@,
.L323:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #21]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #20]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L286	@,
.L324:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #21]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L288	@,
.L325:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #23]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #22]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L254	@,
.L326:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #24]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #23]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L255	@,
.L327:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #25]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #24]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L256	@,
.L328:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #26]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #25]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L257	@,
.L329:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #27]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #26]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L258	@,
.L330:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #28]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #27]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L259	@,
.L331:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #29]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #28]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L260	@,
.L332:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #30]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #29]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L261	@,
.L333:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #31]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #30]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L262	@,
.L334:
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	ldrb	r2, [r7, #32]	@ zero_extendqisi2	@, vp8_coef_update_probs
	strb	r0, [r8, #31]	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #1	@,
	bne	.L264	@,
.L335:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	add	sl, sl, #1	@ j, j,
	bl	Vp8_Vfmw_DecodeValue	@
	cmp	sl, #8	@ j,
	add	r7, r7, #33	@ ivtmp.1325, ivtmp.1325,
	strb	r0, [r8, #32]	@,
	add	r8, r8, #33	@ ivtmp.1328, ivtmp.1328,
	bne	.L252	@,
.L336:
	add	r9, r9, #1	@ i.1454, i.1454,
	add	fp, fp, #264	@ ivtmp.1583, ivtmp.1583,
	cmp	r9, #4	@ i.1454,
	bne	.L251	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.35108,
	str	r0, [r6, #2532]	@ D.35108, <variable>.NewHeaderInfo.mb_no_coeff_skip
	streqb	r0, [r6, #2513]	@ D.35108, <variable>.NewHeaderInfo.prob_skip_false
	beq	.L291	@,
	mov	r2, sl	@, j
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2513]	@, <variable>.NewHeaderInfo.prob_skip_false
.L291:
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, r5	@, bc
	mov	r2, r4	@, pBs
	bl	VP8_mb_mode_mv_init	@
	ldr	r0, [r6, #2516]	@ <variable>.NewHeaderInfo.frame_type, <variable>.NewHeaderInfo.frame_type
	cmp	r0, #0	@ <variable>.NewHeaderInfo.frame_type,
	beq	.L292	@,
	ldr	ip, [r6, #2500]	@ tmp538,
	bic	r1, ip, #-16777216	@ tmp536, tmp538,
	bic	lr, r1, #255	@ tmp536, tmp536,
	cmp	lr, #0	@ tmp536,
	moveq	r0, #1	@ D.34896,
	beq	.L224	@,
.L292:
	ldrb	r2, [r6, #2463]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.base_qindex, <variable>.NewHeaderInfo.base_qindex
	mov	r0, #1	@ D.34896,
	strb	r2, [r6, #2464]	@ <variable>.NewHeaderInfo.base_qindex, <variable>.NewHeaderInfo.last_kf_gf_q
	b	.L224	@
.L300:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34896,
	b	.L224	@
.L303:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2501]	@, <variable>.NewHeaderInfo.refresh_golden_frame
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	ldrb	r3, [r6, #2501]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_golden_frame, <variable>.NewHeaderInfo.refresh_golden_frame
	strb	r8, [r6, #2503]	@ tmp406, <variable>.NewHeaderInfo.copy_buffer_to_gf
	cmp	r3, r8	@ <variable>.NewHeaderInfo.refresh_golden_frame,
	strb	r0, [r6, #2502]	@, <variable>.NewHeaderInfo.refresh_alt_ref_frame
	bne	.L246	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #2	@,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2503]	@, <variable>.NewHeaderInfo.copy_buffer_to_gf
.L246:
	ldrb	r8, [r6, #2502]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.refresh_alt_ref_frame, <variable>.NewHeaderInfo.refresh_alt_ref_frame
	mov	r2, #0	@ tmp439,
	strb	r2, [r6, #2504]	@ tmp439, <variable>.NewHeaderInfo.copy_buffer_to_arf
	cmp	r8, r2	@ <variable>.NewHeaderInfo.refresh_alt_ref_frame,
	bne	.L247	@,
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	add	r2, r2, #2	@,,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r6, #2504]	@, <variable>.NewHeaderInfo.copy_buffer_to_arf
.L247:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2508]	@, <variable>.NewHeaderInfo.ref_frame_sign_bias
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	strb	r0, [r6, #2509]	@, <variable>.NewHeaderInfo.ref_frame_sign_bias
	b	.L245	@
.L302:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	sl, r0	@ D.35006,
	strb	sl, [r6, #2461]	@ D.35006, <variable>.NewHeaderInfo.mode_ref_lf_delta_update
	cmp	sl, #0	@ D.35006,
	beq	.L240	@,
	add	lr, r6, #2480	@ ivtmp.1410, pVp8CodecInfo,
	add	r8, r6, #2496	@ ivtmp.1403, pVp8CodecInfo,
	add	r7, lr, #12	@ ivtmp.1410, ivtmp.1410,
.L242:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	fp, r0	@ D.35011,
	strb	fp, [r6, #2490]	@ D.35011, <variable>.NewHeaderInfo.ref_frame_delta_update_flag
	cmp	fp, #1	@ D.35011,
	beq	.L337	@,
.L241:
	add	r7, r7, #1	@ ivtmp.1410, ivtmp.1410,
	cmp	r7, r8	@ ivtmp.1410, ivtmp.1403
	bne	.L242	@,
	add	r1, r6, #2496	@ D.36967, pVp8CodecInfo,
	add	r8, r1, #4	@ D.36967, D.36967,
.L244:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r9, r0	@ D.35025,
	strb	r9, [r6, #2491]	@ D.35025, <variable>.NewHeaderInfo.mb_mode_delta_update_flag
	cmp	r9, #1	@ D.35025,
	beq	.L338	@,
.L243:
	add	r7, r7, #1	@ ivtmp.1403, ivtmp.1403,
	cmp	r7, r8	@ ivtmp.1403, D.36967
	bne	.L244	@,
	b	.L240	@
.L301:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r6, #2475]	@, <variable>.NewHeaderInfo.update_mb_segmentation_map
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r1, r0	@ D.34956,
	strb	r1, [r6, #2476]	@ D.34956, <variable>.NewHeaderInfo.update_mb_segmentation_data
	cmp	r1, #0	@ D.34956,
	bne	.L339	@,
.L233:
	ldrb	r9, [r6, #2475]	@ zero_extendqisi2	@ <variable>.NewHeaderInfo.update_mb_segmentation_map, <variable>.NewHeaderInfo.update_mb_segmentation_map
	cmp	r9, #0	@ <variable>.NewHeaderInfo.update_mb_segmentation_map,
	beq	.L232	@,
	add	r2, r6, #2464	@ tmp376, pVp8CodecInfo,
	add	r8, r6, #2480	@ D.36987, pVp8CodecInfo,
	add	r7, r2, #14	@ tmp376, tmp376,
	mov	r1, #255	@,
	mov	r2, #3	@,
	add	r8, r8, #1	@ D.36987, D.36987,
	mov	r0, r7	@, tmp376
	bl	memset	@
.L239:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	ip, r0	@ D.34989,
	strb	ip, [r6, #2481]	@ D.34989, <variable>.NewHeaderInfo.segment_prob_update
	cmp	ip, #1	@ D.34989,
	beq	.L340	@,
.L238:
	add	r7, r7, #1	@ ivtmp.1417, ivtmp.1417,
	cmp	r7, r8	@ ivtmp.1417, D.36987
	bne	.L239	@,
	b	.L232	@
.L343:
	.align	2
.L342:
	.word	.LANCHOR0+1412
	.word	.LANCHOR0+1420
.L337:
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.ref_lf_deltas
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	r0, r0	@ D.35018,
	strb	r0, [r6, #2472]	@ D.35018, <variable>.NewHeaderInfo.delta_sign
	cmp	r0, #1	@ D.35018,
	ldreqb	r3, [r7, #0]	@ zero_extendqisi2	@ tmp394, <variable>.NewHeaderInfo.ref_lf_deltas
	rsbeq	r3, r3, #0	@ tmp395, tmp394
	streqb	r3, [r7, #0]	@ tmp395, <variable>.NewHeaderInfo.ref_lf_deltas
	b	.L241	@
.L339:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	add	r7, r6, #2480	@ ivtmp.1431, pVp8CodecInfo,
	bl	Vp8_Vfmw_DecodeBool	@
	add	r2, r6, #2480	@, pVp8CodecInfo,
	mov	r1, #8	@,
	add	r8, r7, #6	@ ivtmp.1431, ivtmp.1431,
	mov	r7, #0	@ i,
	strb	r0, [r6, #2477]	@, <variable>.NewHeaderInfo.mb_segement_abs_delta
	add	r0, r2, #2	@,,
	bl	__memzero	@
.L234:
	add	r0, r7, #616	@ tmp371, i,
	mov	r1, r7, asl #2	@, i,
	add	fp, r0, #2	@ tmp371, tmp371,
	str	r1, [sp, #12]	@, %sfp
	add	lr, r6, fp, asl #2	@, tmp374, pVp8CodecInfo, tmp371,
	add	fp, lr, #10	@ ivtmp.1424, tmp374,
	b	.L237	@
.L236:
	strb	sl, [fp], #1	@ tmp, <variable>.NewHeaderInfo.segment_feature_data
	cmp	fp, r8	@ ivtmp.1424, ivtmp.1431
	beq	.L341	@,
.L237:
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	mov	r0, r5	@, bc
	mov	sl, #0	@ tmp,
	bl	Vp8_Vfmw_DecodeBool	@
	uxtb	ip, r0	@ D.34968,
	strb	ip, [r6, #2460]	@ D.34968, <variable>.NewHeaderInfo.quantizer_update
	cmp	ip, #1	@ D.34968,
	bne	.L236	@,
	ldr	sl, [sp, #12]	@, %sfp
	mov	r1, r4	@, pBs
	mov	r0, r5	@, bc
	ldr	r2, [r9, sl]	@, mb_feature_data_bits
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	uxtb	sl, r0	@ tmp,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	rsb	r3, sl, #0	@ tmp369, tmp
	cmp	r0, #0	@,
	uxtbne	sl, r3	@ tmp, tmp369
	b	.L236	@
.L341:
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.1431, ivtmp.1431,
	cmp	r7, #2	@ i,
	beq	.L233	@,
	b	.L234	@
.L338:
	mov	r1, r4	@, pBs
	mov	r2, #6	@,
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeValue	@
	mov	r1, r4	@, pBs
	mov	r2, #128	@,
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.mode_lf_deltas
	mov	r0, r5	@, bc
	bl	Vp8_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	ldrneb	r3, [r7, #0]	@ zero_extendqisi2	@ tmp401, <variable>.NewHeaderInfo.mode_lf_deltas
	rsbne	r3, r3, #0	@ tmp402, tmp401
	strneb	r3, [r7, #0]	@ tmp402, <variable>.NewHeaderInfo.mode_lf_deltas
	b	.L243	@
.L228:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34896,
	b	.L224	@
.L340:
	mov	r0, r5	@, bc
	mov	r1, r4	@, pBs
	mov	r2, #8	@,
	bl	Vp8_Vfmw_DecodeValue	@
	strb	r0, [r7, #0]	@, <variable>.NewHeaderInfo.mb_segment_tree_probs
	b	.L238	@
	.fnend
	.size	VP8_GetPictureHeader, .-VP8_GetPictureHeader
	.align	2
	.global	VP8DEC_Decode
	.type	VP8DEC_Decode, %function
VP8DEC_Decode:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r1, #0]	@ D.35741, <variable>.VirAddr
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ pCtx, pCtx
	str	r3, [r0, #3156]	@ D.35741, <variable>.StreamParam.VirAddr
	ldr	r2, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r0, #3160]	@ <variable>.PhyAddr, <variable>.StreamParam.PhyAddr
	ldr	r2, [r1, #12]	@ D.35744, <variable>.LenInByte
	cmp	r2, #2	@ D.35744,
	str	r2, [r0, #3164]	@ D.35744, <variable>.StreamParam.Length
	ble	.L376	@,
	add	r5, r0, #3168	@ pBs, pCtx,
	mov	r1, r3	@, D.35741
	add	r5, r5, #4	@ pBs, pBs,
	add	r9, r0, #3200	@ pVp8CodecInfo, pCtx,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	add	r0, r4, #3152	@ tmp160, pCtx,
	add	r3, r0, #4	@ tmp160, tmp160,
	mov	r1, r9	@, pVp8CodecInfo
	str	r3, [r4, #3168]	@ tmp160, <variable>.pVp8StreamParam
	mov	r0, r5	@, pBs
	ldr	r2, [r4, #3164]	@, <variable>.StreamParam.Length
	bl	VP8_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L377	@,
	movw	ip, #8124	@ tmp164,
	ldr	r1, [r4, ip]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	bne	.L348	@,
.L375:
	ldr	r3, [r4, #0]	@ prephitmp.1601, <variable>.pstExtraData
.L349:
	ldr	r5, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r5, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L378	@,
.L353:
	movw	r7, #:lower16:g_event_report	@ tmp201,
	movt	r7, #:upper16:g_event_report	@ tmp201,
	ldr	r3, [r7, #0]	@ g_event_report.479, g_event_report
	cmp	r3, #0	@ g_event_report.479,
	beq	.L359	@,
	movw	lr, #5756	@ tmp204,
	ldr	r2, [r4, #3304]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldrh	r1, [r4, lr]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	mov	r5, #5760	@ tmp206,
	ldr	sl, [r4, #3308]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb
	movw	r8, #8520	@ tmp208,
	strh	r2, [sp, #12]	@ movhi	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, para
	add	r2, sp, #12	@,,
	strh	r1, [sp, #16]	@ movhi	@, para
	mov	r1, #2	@,
	ldrh	fp, [r4, r5]	@, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	strh	sl, [sp, #14]	@ movhi	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, para
	strh	fp, [sp, #18]	@ movhi	@, para
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report.479
.L359:
	movw	r5, #8520	@ tmp211,
	movw	sl, #8140	@ tmp213,
	movw	r7, #8144	@ tmp217,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	r8, #8148	@ tmp221,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.AltFsID
	mov	fp, #0	@ tmp224,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.Vp8CodecInfo.LastFsID
	add	r6, r4, #8128	@ D.35802, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r6, r6, #40	@ D.35802, D.35802,
	bl	FSP_ClearLogicFs	@
	str	fp, [r4, sl]	@ tmp224, <variable>.Vp8CodecInfo.GoldenFsID
	str	fp, [r4, r7]	@ tmp224, <variable>.Vp8CodecInfo.AltFsID
	str	fp, [r4, r8]	@ tmp224, <variable>.Vp8CodecInfo.LastFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	ip, #8120	@ tmp234,
	str	fp, [r4, ip]	@ tmp224, <variable>.Vp8CodecInfo.RefNum
	mov	r1, r6	@, D.35802
	str	r0, [r4, sl]	@ D.35801, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r4, r8]	@ D.35801, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r7]	@ D.35801, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	movw	r3, #5756	@ tmp239,
	ldr	r2, [r4, r3]	@ temp.1629, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	r2, #512	@ temp.1629,
	bhi	.L379	@,
	mov	r1, #5760	@ tmp241,
	ldr	r3, [r4, r1]	@ prephitmp.1603, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1603,
	bhi	.L361	@,
	ldr	r3, [r4, #0]	@ temp.1630, <variable>.pstExtraData
	ldr	r2, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r2, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L363	@,
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	beq	.L380	@,
.L363:
	movw	r1, #8520	@ tmp247,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L364	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L381	@,
.L365:
	mov	r0, r6	@, D.35802
	bl	ResetVoQueue	@
.L364:
	mov	r0, r4	@, pCtx
	bl	VP8_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L382	@,
.L352:
	mov	r0, r4	@, pCtx
	bl	VP8_DecodeDecide	@
	cmp	r0, #1	@ ret.1635,
	mov	r5, r0	@ ret.1635,
	beq	.L366	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	b	.L346	@
.L377:
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
.L346:
	mov	r0, #0	@,
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L376:
	movw	r1, #:lower16:.LC23	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L346	@
.L348:
	movw	r3, #5756	@ tmp166,
	ldr	lr, [r4, #3304]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r2, [r4, r3]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	cmp	lr, r2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_mb
	bne	.L375	@,
	mov	r1, #5760	@ tmp169,
	ldr	r0, [r4, #3308]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	r5, [r4, r1]	@ <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	cmp	r0, r5	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
	bne	.L375	@,
	ldr	r3, [r4, #0]	@ prephitmp.1601, <variable>.pstExtraData
	ldr	ip, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	ip, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L352	@,
	b	.L349	@
.L379:
	mov	r0, #5760	@ tmp240,
	ldr	r3, [r4, r0]	@ prephitmp.1603, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_mb
.L361:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #18	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	b	.L346	@
.L382:
	movw	r1, #:lower16:.LC26	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	b	.L346	@
.L381:
	movw	r3, #8524	@ tmp251,
	ldr	lr, [r4, r3]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	lr, #1	@ <variable>.DSDNeedClearQue,
	bne	.L364	@,
	b	.L365	@
.L378:
	add	r1, sp, #32	@ tmp179,,
	movw	r3, #8520	@ tmp177,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	lr, #0	@ tmp174,
	add	r2, sp, #24	@,,
	str	lr, [r1, #-12]!	@ tmp174, RefNum
	add	r3, sp, #28	@,,
	str	lr, [sp, #28]	@ tmp174, NewNum
	str	lr, [sp, #24]	@ tmp174, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r4, #3304]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb
	ldr	r2, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r2, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_width_in_mb,
	bcc	.L354	@,
	ldr	r1, [r4, #3308]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrHeight, <variable>.Vp8CodecInfo.OldHeaderInfo.pic_height_in_mb,
	bcc	.L354	@,
	ldr	r2, [sp, #24]	@ ReadNum, ReadNum
	ldr	r1, [sp, #28]	@ NewNum, NewNum
	add	ip, r1, r2	@ tmp188, NewNum, ReadNum
	cmp	ip, #0	@ tmp188,
	strgt	r5, [r3, #728]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.s32DSDWaitFlag
	movwle	ip, #8524	@ tmp192,
	strle	r5, [r4, ip]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedClearQue
	bgt	.L346	@,
.L356:
	mov	r6, #0	@ tmp200,
	str	r6, [r3, #728]	@ tmp200, <variable>.s32DSDWaitFlag
	b	.L353	@
.L366:
	mov	r0, r4	@, pCtx
	bl	VP8_GetImageBuffer	@
	cmp	r0, #1	@,
	beq	.L367	@,
	mov	r0, r5	@, ret.1635
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	b	.L346	@
.L354:
	ldr	lr, [sp, #28]	@ NewNum, NewNum
	cmp	lr, #0	@ NewNum,
	ble	.L383	@,
.L357:
	mov	ip, #1	@ tmp196,
	str	ip, [r3, #728]	@ tmp196, <variable>.s32DSDWaitFlag
	b	.L346	@
.L380:
	movw	ip, #8124	@ tmp245,
	ldr	r3, [r4, ip]	@ <variable>.Vp8CodecInfo.Imgbuf_allocated, <variable>.Vp8CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ <variable>.Vp8CodecInfo.Imgbuf_allocated,
	bne	.L364	@,
	b	.L365	@
.L367:
	movw	r6, #8520	@ tmp256,
	movw	r5, #8152	@ tmp258,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.Vp8CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImage,
	beq	.L384	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldrd	sl, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	sl, [r3, #8]	@ <variable>.pts, pImage,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	sl, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	sl, [r3, #16]	@ <variable>.Usertag, pImage,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	sl, [lr, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	sl, [r3, #24]	@ <variable>.DispTime, pImage,
	mvn	sl, #0	@ tmp277,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	fp, #0	@,
	ldr	ip, [r2, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r3, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r3, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	mov	ip, #0	@ tmp275,
	str	lr, [r3, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r3, #128]	@ tmp275, <variable>.is_fld_save
	str	lr, [r3, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	sl, [r2, #56]	@ tmp277, <variable>.pstExtraData,
	ldrd	sl, [r3, #16]	@ <variable>.Usertag, pImage,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImage,
	strd	sl, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	movw	ip, #8160	@ tmp281,
	ldr	r2, [r4, ip]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r2, #0	@ <variable>.Vp8CodecInfo.FrameType,
	bne	.L369	@,
	movw	r0, #8144	@ tmp283,
	ldr	r1, [r4, r5]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	ldr	r3, [r4, r0]	@ prephitmp.1599, <variable>.Vp8CodecInfo.AltFsID
	cmp	r3, r1	@ prephitmp.1599, <variable>.Vp8CodecInfo.CurFsID
	beq	.L370	@,
	mov	r1, r3	@, prephitmp.1599
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r5]	@ prephitmp.1599, <variable>.Vp8CodecInfo.CurFsID
.L370:
	movw	lr, #8148	@ tmp289,
	ldr	r1, [r4, lr]	@ prephitmp.1647, <variable>.Vp8CodecInfo.LastFsID
	cmp	r3, r1	@ prephitmp.1599, prephitmp.1647
	beq	.L371	@,
	movw	ip, #8520	@ tmp290,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	movw	r3, #8152	@ tmp292,
	ldr	r3, [r4, r3]	@ prephitmp.1599, <variable>.Vp8CodecInfo.CurFsID
.L371:
	movw	r2, #8140	@ tmp293,
	ldr	r1, [r4, r2]	@ temp.1649, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r3, r1	@ prephitmp.1599, temp.1649
	beq	.L372	@,
	movw	lr, #8520	@ tmp294,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L372:
	movw	r0, #8120	@ tmp296,
	mov	r1, #0	@ tmp297,
	str	r1, [r4, r0]	@ tmp297, <variable>.Vp8CodecInfo.RefNum
.L369:
	mov	r0, r4	@, pCtx
	bl	VP8_Set_DecParam	@
	mov	r0, r9	@, pVp8CodecInfo
	bl	VP8_Update_PictHeader	@
	b	.L346	@
.L383:
	ldr	r0, [sp, #24]	@ ReadNum, ReadNum
	cmp	r0, #4	@ ReadNum,
	movwle	r0, #8524	@ tmp197,
	movle	r1, #0	@ tmp198,
	strle	r1, [r4, r0]	@ tmp198, <variable>.DSDNeedClearQue
	ble	.L356	@,
	b	.L357	@
.L384:
	movw	r1, #:lower16:.LC11	@,
	mov	r2, #1984	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L346	@
	.fnend
	.size	VP8DEC_Decode, .-VP8DEC_Decode
	.align	2
	.global	VP8DEC_Init
	.type	VP8DEC_Init, %function
VP8DEC_Init:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, #8512	@ tmp139,
	ldr	r7, [r0, r5]	@ D.34669, <variable>.ImageQue.ResetMagicWord
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #8528	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #8128	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, r5]	@ D.34669, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	mov	r0, r4	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #8520	@ tmp143,
	cmn	r0, #1	@ D.34677,
	str	r0, [r4, r3]	@ D.34677, <variable>.ChanID
	beq	.L389	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #8124	@ tmp145,
	movw	ip, #8112	@ tmp147,
	mov	r3, #0	@ tmp146,
	mov	r0, #1024	@ tmp148,
	str	r3, [r4, lr]	@ tmp146, <variable>.Vp8CodecInfo.Imgbuf_allocated
	str	r0, [r4, ip]	@ tmp148, <variable>.Vp8CodecInfo.ddr_stride
	movw	r1, #8132	@ tmp156,
	ldr	ip, [r2, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	lr, #8116	@ tmp149,
	str	r3, [r4, r1]	@ tmp146, <variable>.Vp8CodecInfo.LastSharpnessLevel
	mov	r0, #8128	@ tmp154,
	movw	r3, #8164	@ tmp152,
	mov	r1, #3	@ tmp153,
	str	ip, [r4, lr]	@ <variable>.s32DecMode, <variable>.Vp8CodecInfo.UsedDecMode
	mov	lr, #1	@ tmp162,
	str	r1, [r4, r0]	@ tmp153, <variable>.Vp8CodecInfo.LastFilterType
	movw	ip, #8524	@ tmp161,
	str	r1, [r4, r3]	@ tmp153, <variable>.Vp8CodecInfo.LastFrameType
	movw	r1, #8136	@ tmp158,
	ldr	r2, [r2, #44]	@ <variable>.s32Vp8SegIdMemAddr, <variable>.s32Vp8SegIdMemAddr
	mov	r0, lr	@ D.34682, tmp162
	str	lr, [r4, ip]	@ tmp162, <variable>.DSDNeedClearQue
	str	r2, [r4, r1]	@ <variable>.s32Vp8SegIdMemAddr, <variable>.Vp8CodecInfo.SegIdAddr
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L389:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34682,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VP8DEC_Init, .-VP8DEC_Init
	.align	2
	.global	VP8_SetImgFormat
	.type	VP8_SetImgFormat, %function
VP8_SetImgFormat:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #8520	@ tmp144,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #8152	@ tmp146,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.Vp8CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #8160	@ tmp148,
	mov	lr, #0	@ tmp153,
	ldr	r2, [r5, r1]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	mov	r1, lr	@, tmp153
	strb	lr, [r4, #288]	@ tmp153, <variable>.ImageDnr.pic_structure
	mov	lr, #8	@ tmp157,
	and	r3, r2, #3	@ D.34502, <variable>.Vp8CodecInfo.FrameType,
	str	lr, [r4, #308]	@ tmp157, <variable>.ImageDnr.QP_U
	orr	ip, r3, #7168	@ tmp150, D.34502,
	mov	r2, #1	@ tmp155,
	str	r3, [r4, #136]	@ D.34502, <variable>.bottom_fld_type
	orr	ip, ip, #32	@ tmp150, tmp150,
	str	r3, [r4, #132]	@ D.34502, <variable>.top_fld_type
	str	ip, [r4, #140]	@ tmp150, <variable>.format
	mov	ip, #13	@ tmp152,
	strb	r2, [r4, #293]	@ tmp155, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #300]	@ tmp152, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #295]	@ tmp155, <variable>.ImageDnr.use_pic_qp_en
	str	lr, [r4, #304]	@ tmp157, <variable>.ImageDnr.QP_Y
	str	lr, [r4, #312]	@ tmp157, <variable>.ImageDnr.QP_V
	bl	SetAspectRatio	@
	movw	r3, #5764	@ tmp162,
	ldr	r3, [r5, r3]	@ prephitmp.1689, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_width_in_pix
	movw	r2, #5768	@ tmp163,
	str	r3, [r4, #144]	@ prephitmp.1689, <variable>.image_width
	ldr	r2, [r5, r2]	@ D.34507, <variable>.Vp8CodecInfo.NewHeaderInfo.pic_height_in_pix
	str	r2, [r4, #148]	@ D.34507, <variable>.image_height
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	movne	r2, r3	@ <variable>.image_width, prephitmp.1689
	beq	.L396	@,
.L392:
	ldr	ip, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r3, r3, lsr #1	@ tmp178, prephitmp.1689,
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #160]	@ tmp178, <variable>.disp_center_x
	mov	r1, ip, lsr #1	@ tmp180, <variable>.image_height,
	str	ip, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #164]	@ tmp180, <variable>.disp_center_y
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L396:
	ldr	r1, [r4, #172]	@ D.34512, <variable>.image_stride
	add	r0, r2, #15	@ tmp167, D.34507,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	mov	r2, r0, lsr #4	@ tmp168, tmp167,
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r1, asl #4	@ tmp166, D.34512,
	add	ip, r3, r1	@ tmp173, <variable>.luma_phy_addr, D.34512
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	r2, r2, lr	@ D.34518, tmp168, tmp166
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	str	ip, [r4, #96]	@ tmp173, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	add	r3, r2, r3	@ tmp170, D.34518, <variable>.luma_phy_addr
	add	r2, r0, r2	@ tmp172, <variable>.luma_vir_addr, D.34518
	str	r3, [r4, #108]	@ tmp170, <variable>.chrom_phy_addr
	add	r0, r3, r1	@ tmp174, tmp170, D.34512
	str	r2, [r4, #36]	@ tmp172, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp174, <variable>.btm_chrom_phy_addr
	mov	r0, r3	@, tmp170
	str	r3, [r4, #92]	@ tmp170, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	mov	r3, r2	@ prephitmp.1689, <variable>.image_width
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L392	@
	.fnend
	.size	VP8_SetImgFormat, .-VP8_SetImgFormat
	.align	2
	.global	VP8DEC_VDMPostProc
	.type	VP8DEC_VDMPostProc, %function
VP8DEC_VDMPostProc:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r0, #13	@,
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r5, #8520	@ tmp154,
	movw	r3, #8152	@ tmp156,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.Vp8CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L438	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L400	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ iftmp.438,
	str	r6, [r3, #180]	@ iftmp.438, <variable>.error_level
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #0]	@ D.34562, <variable>.s32RefErrThr
	cmp	r6, r3	@ iftmp.438, D.34562
	bhi	.L439	@,
	mov	r0, r4	@, pCtx
	movw	r5, #8116	@ tmp186,
	bl	VP8_SetImgFormat	@
	ldr	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #2	@ <variable>.Vp8CodecInfo.UsedDecMode,
	beq	.L440	@,
.L402:
	ldr	lr, [r4, #3268]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame
	cmp	lr, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.show_frame,
	bne	.L404	@,
.L403:
	movw	r5, #8156	@ tmp191,
	movw	r1, #8520	@ tmp193,
	movw	r2, #8152	@ tmp195,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	r3, #0	@ tmp192,
	ldr	r1, [r4, r2]	@, <variable>.Vp8CodecInfo.CurFsID
	str	r3, [r4, r5]	@ tmp192, <variable>.Vp8CodecInfo.ToQueFsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, r5]	@ prephitmp.1721, <variable>.Vp8CodecInfo.ToQueFsID
.L405:
	cmn	r1, #1	@ prephitmp.1721,
	beq	.L406	@,
	movw	r5, #8520	@ tmp200,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L441	@,
	movw	r7, #8156	@ tmp205,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	ip, r4, #8128	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #13	@,
	add	r3, ip, #40	@,,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r8, r0	@ ret,
	bne	.L442	@,
.L406:
	movw	r0, #8160	@ tmp229,
	movw	r3, #8120	@ tmp224,
	ldr	r5, [r4, r0]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	movw	r1, #8148	@ tmp228,
	ldr	r2, [r4, r3]	@ <variable>.Vp8CodecInfo.RefNum, <variable>.Vp8CodecInfo.RefNum
	cmp	r5, #0	@ <variable>.Vp8CodecInfo.FrameType,
	ldr	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.LastFsID
	add	lr, r2, #1	@ tmp227, <variable>.Vp8CodecInfo.RefNum,
	str	lr, [r4, r3]	@ tmp227, <variable>.Vp8CodecInfo.RefNum
	bne	.L443	@,
	movw	ip, #8140	@ tmp232,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r5, r8	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L435	@,
.L410:
	movw	r3, #8144	@ tmp235,
	ldr	lr, [r4, r3]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r5, lr	@ LastFsId, <variable>.Vp8CodecInfo.AltFsID
	beq	.L435	@,
	movw	r0, #8152	@ tmp238,
	ldr	r1, [r4, r0]	@ prephitmp.1759, <variable>.Vp8CodecInfo.CurFsID
	subs	r8, r5, r1	@ flag_last_0, LastFsId, prephitmp.1759
	movne	r8, #1	@ flag_last_0
.L411:
	movw	lr, #8148	@ tmp240,
	movw	ip, #8520	@ tmp241,
	str	r1, [r4, lr]	@ prephitmp.1759, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L409:
	ldrb	r3, [r4, #3252]	@ zero_extendqisi2	@ D.34605, <variable>.Vp8CodecInfo.OldHeaderInfo.copy_buffer_to_arf
	cmp	r3, #1	@ D.34605,
	beq	.L444	@,
	cmp	r3, #2	@ D.34605,
	beq	.L445	@,
.L415:
	ldrb	r3, [r4, #3251]	@ zero_extendqisi2	@ D.34621, <variable>.Vp8CodecInfo.OldHeaderInfo.copy_buffer_to_gf
	cmp	r3, #1	@ D.34621,
	beq	.L446	@,
	cmp	r3, #2	@ D.34621,
	beq	.L447	@,
.L420:
	movw	r2, #8160	@ tmp287,
	ldr	r1, [r4, r2]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.FrameType,
	beq	.L423	@,
	ldrb	ip, [r4, #3249]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame
	cmp	ip, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_golden_frame,
	beq	.L424	@,
.L423:
	movw	r0, #8140	@ tmp290,
	movw	r3, #8148	@ tmp291,
	ldr	r1, [r4, r0]	@ prephitmp.1750, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	lr, [r4, r3]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, lr	@ prephitmp.1750, <variable>.Vp8CodecInfo.LastFsID
	beq	.L436	@,
	movw	ip, #8144	@ tmp294,
	ldr	r2, [r4, ip]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, r2	@ prephitmp.1750, <variable>.Vp8CodecInfo.AltFsID
	beq	.L436	@,
	movw	r6, #8152	@ tmp297,
	ldr	r3, [r4, r6]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	cmp	r1, r3	@ prephitmp.1750, <variable>.Vp8CodecInfo.CurFsID
	beq	.L426	@,
	movw	r2, #8520	@ tmp299,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1750, <variable>.Vp8CodecInfo.CurFsID
.L426:
	movw	r0, #8140	@ tmp302,
	movw	ip, #8520	@ tmp303,
	str	r1, [r4, r0]	@ prephitmp.1750, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L424:
	ldr	r1, [r4, #3264]	@ <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type, <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type
	cmp	r1, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.frame_type,
	beq	.L428	@,
	ldrb	lr, [r4, #3250]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame
	cmp	lr, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_alt_ref_frame,
	beq	.L429	@,
.L428:
	movw	ip, #8144	@ tmp307,
	movw	r2, #8148	@ tmp308,
	ldr	r1, [r4, ip]	@ prephitmp.1741, <variable>.Vp8CodecInfo.AltFsID
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r3	@ prephitmp.1741, <variable>.Vp8CodecInfo.LastFsID
	beq	.L437	@,
	movw	lr, #8140	@ tmp311,
	ldr	r0, [r4, lr]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, r0	@ prephitmp.1741, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L437	@,
	movw	r6, #8152	@ tmp314,
	ldr	r2, [r4, r6]	@ <variable>.Vp8CodecInfo.CurFsID, <variable>.Vp8CodecInfo.CurFsID
	cmp	r1, r2	@ prephitmp.1741, <variable>.Vp8CodecInfo.CurFsID
	beq	.L431	@,
	movw	ip, #8520	@ tmp316,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1741, <variable>.Vp8CodecInfo.CurFsID
.L431:
	movw	r0, #8144	@ tmp319,
	movw	lr, #8520	@ tmp320,
	str	r1, [r4, r0]	@ prephitmp.1741, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L429:
	cmp	r8, #1	@ flag_last_0,
	movne	r8, #1	@ ret,
	beq	.L448	@,
.L399:
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L404:
	movw	r8, #8152	@ tmp198,
	movw	r0, #8156	@ tmp199,
	ldr	r1, [r4, r8]	@ prephitmp.1721, <variable>.Vp8CodecInfo.CurFsID
	str	r1, [r4, r0]	@ prephitmp.1721, <variable>.Vp8CodecInfo.ToQueFsID
	b	.L405	@
.L443:
	ldrb	r8, [r4, #3248]	@ zero_extendqisi2	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame, <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame
	cmp	r8, #0	@ <variable>.Vp8CodecInfo.OldHeaderInfo.refresh_last_frame,
	beq	.L409	@,
	movw	ip, #8140	@ tmp232,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r5, r8	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	bne	.L410	@,
.L435:
	movw	r2, #8152	@ tmp237,
	mov	r8, #0	@ flag_last_0,
	ldr	r1, [r4, r2]	@ prephitmp.1759, <variable>.Vp8CodecInfo.CurFsID
	b	.L411	@
.L437:
	movw	r3, #8152	@ tmp313,
	movw	r0, #8144	@ tmp319,
	ldr	r1, [r4, r3]	@ prephitmp.1741, <variable>.Vp8CodecInfo.CurFsID
	movw	lr, #8520	@ tmp320,
	mov	r2, #1	@,
	str	r1, [r4, r0]	@ prephitmp.1741, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L429	@
.L436:
	movw	lr, #8152	@ tmp296,
	movw	r0, #8140	@ tmp302,
	ldr	r1, [r4, lr]	@ prephitmp.1750, <variable>.Vp8CodecInfo.CurFsID
	movw	ip, #8520	@ tmp303,
	mov	r2, #1	@,
	str	r1, [r4, r0]	@ prephitmp.1750, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L424	@
.L400:
	mov	r5, #0	@ tmp325,
	mov	r0, r4	@, pCtx
	str	r5, [r3, #180]	@ tmp325, <variable>.error_level
	movw	r5, #8116	@ tmp186,
	bl	VP8_SetImgFormat	@
	ldr	r2, [r4, r5]	@ <variable>.Vp8CodecInfo.UsedDecMode, <variable>.Vp8CodecInfo.UsedDecMode
	cmp	r2, #2	@ <variable>.Vp8CodecInfo.UsedDecMode,
	bne	.L402	@,
.L440:
	movw	ip, #8160	@ tmp188,
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.FrameType, <variable>.Vp8CodecInfo.FrameType
	cmp	r8, #0	@ <variable>.Vp8CodecInfo.FrameType,
	bne	.L403	@,
	b	.L402	@
.L446:
	movw	lr, #8140	@ tmp265,
	movw	ip, #8148	@ tmp266,
	ldr	r1, [r4, lr]	@ temp.1765, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r8, [r4, ip]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r8	@ temp.1765, <variable>.Vp8CodecInfo.LastFsID
	beq	.L419	@,
	movw	r2, #8144	@ tmp268,
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, r3	@ temp.1765, <variable>.Vp8CodecInfo.AltFsID
	beq	.L419	@,
	cmp	r5, r1	@ LastFsId, temp.1765
	beq	.L419	@,
	movw	r8, #8520	@ tmp270,
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L419:
	movw	r1, #8140	@ tmp272,
	movw	ip, #8520	@ tmp273,
	str	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	mov	r1, r5	@, LastFsId
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	mov	r8, #0	@ flag_last_0,
	b	.L420	@
.L444:
	movw	r2, #8144	@ tmp243,
	movw	r3, #8148	@ tmp244,
	ldr	r1, [r4, r2]	@ temp.1753, <variable>.Vp8CodecInfo.AltFsID
	ldr	r8, [r4, r3]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r8	@ temp.1753, <variable>.Vp8CodecInfo.LastFsID
	beq	.L414	@,
	movw	ip, #8140	@ tmp246,
	ldr	r0, [r4, ip]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, r0	@ temp.1753, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L414	@,
	cmp	r5, r1	@ LastFsId, temp.1753
	beq	.L414	@,
	movw	lr, #8520	@ tmp248,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
.L414:
	movw	r1, #8144	@ tmp250,
	movw	r8, #8520	@ tmp251,
	str	r5, [r4, r1]	@ LastFsId, <variable>.Vp8CodecInfo.AltFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r1, r5	@, LastFsId
	bl	FSP_SetRef	@
	mov	r8, #0	@ flag_last_0,
	b	.L415	@
.L442:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	sl, #0	@ tmp214,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp214, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp214, <variable>.p_usrdat
	mov	r2, sl	@, tmp214
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.ToQueFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, sl	@, tmp214
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L399	@
.L447:
	movw	r3, #8140	@ tmp275,
	movw	lr, #8148	@ tmp276,
	ldr	r1, [r4, r3]	@ prephitmp.1757, <variable>.Vp8CodecInfo.GoldenFsID
	ldr	r0, [r4, lr]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r0	@ prephitmp.1757, <variable>.Vp8CodecInfo.LastFsID
	beq	.L449	@,
	movw	r6, #8144	@ tmp279,
	ldr	ip, [r4, r6]	@ <variable>.Vp8CodecInfo.AltFsID, <variable>.Vp8CodecInfo.AltFsID
	cmp	r1, ip	@ prephitmp.1757, <variable>.Vp8CodecInfo.AltFsID
	beq	.L422	@,
	movw	lr, #8520	@ tmp281,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1757, <variable>.Vp8CodecInfo.AltFsID
.L422:
	movw	r0, #8140	@ tmp284,
	movw	r3, #8520	@ tmp285,
	str	r1, [r4, r0]	@ prephitmp.1757, <variable>.Vp8CodecInfo.GoldenFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	b	.L420	@
.L445:
	movw	r0, #8144	@ tmp253,
	movw	r2, #8148	@ tmp254,
	ldr	r1, [r4, r0]	@ prephitmp.1761, <variable>.Vp8CodecInfo.AltFsID
	ldr	r3, [r4, r2]	@ <variable>.Vp8CodecInfo.LastFsID, <variable>.Vp8CodecInfo.LastFsID
	cmp	r1, r3	@ prephitmp.1761, <variable>.Vp8CodecInfo.LastFsID
	beq	.L450	@,
	movw	r6, #8140	@ tmp257,
	ldr	lr, [r4, r6]	@ <variable>.Vp8CodecInfo.GoldenFsID, <variable>.Vp8CodecInfo.GoldenFsID
	cmp	r1, lr	@ prephitmp.1761, <variable>.Vp8CodecInfo.GoldenFsID
	beq	.L417	@,
	movw	r3, #8520	@ tmp259,
	mov	r2, #0	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, r6]	@ prephitmp.1761, <variable>.Vp8CodecInfo.GoldenFsID
.L417:
	movw	r0, #8144	@ tmp262,
	movw	r2, #8520	@ tmp263,
	str	r1, [r4, r0]	@ prephitmp.1761, <variable>.Vp8CodecInfo.AltFsID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetRef	@
	b	.L415	@
.L448:
	movw	r3, #8520	@ tmp322,
	mov	r1, r5	@, LastFsId
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	b	.L399	@
.L449:
	movw	r2, #8144	@ tmp278,
	ldr	r1, [r4, r2]	@ prephitmp.1757, <variable>.Vp8CodecInfo.AltFsID
	b	.L422	@
.L450:
	movw	ip, #8140	@ tmp256,
	ldr	r1, [r4, ip]	@ prephitmp.1761, <variable>.Vp8CodecInfo.GoldenFsID
	b	.L417	@
.L439:
	mov	r2, r6	@, iftmp.438
	mov	r0, #1	@,
	movw	r6, #8140	@ tmp163,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	movw	r7, #8144	@ tmp167,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.Vp8CodecInfo.GoldenFsID
	bl	FSP_ClearLogicFs	@
	movw	sl, #8148	@ tmp171,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.Vp8CodecInfo.AltFsID
	mvn	r8, #0	@ ret,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.Vp8CodecInfo.LastFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r5, #0	@ tmp174,
	str	r5, [r4, r6]	@ tmp174, <variable>.Vp8CodecInfo.GoldenFsID
	str	r5, [r4, r7]	@ tmp174, <variable>.Vp8CodecInfo.AltFsID
	str	r5, [r4, sl]	@ tmp174, <variable>.Vp8CodecInfo.LastFsID
	bl	FSP_GetNullLogicFs	@
	movw	r1, #8120	@ tmp184,
	str	r5, [r4, r1]	@ tmp174, <variable>.Vp8CodecInfo.RefNum
	str	r0, [r4, r6]	@ D.34570, <variable>.Vp8CodecInfo.GoldenFsID
	str	r0, [r4, sl]	@ D.34570, <variable>.Vp8CodecInfo.LastFsID
	str	r0, [r4, r7]	@ D.34570, <variable>.Vp8CodecInfo.AltFsID
	b	.L399	@
.L441:
	movw	r1, #:lower16:.LC33	@,
	mov	r2, #636	@,
	movt	r1, #:upper16:.LC33	@,
	mvn	r8, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L399	@
.L438:
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mvn	r8, #0	@ ret,
	b	.L399	@
	.fnend
	.size	VP8DEC_VDMPostProc, .-VP8DEC_VDMPostProc
	.global	default_coef_probs
	.global	vp8_coef_update_probs
	.global	vp8_default_mv_context
	.global	vp8_mv_update_probs
	.global	VP8_VFMWBITREADER_NORM
	.global	default_ymode_prob
	.global	default_uv_mode_prob
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.35217, %object
	.size	__func__.35217, 17
__func__.35217:
	.ascii	"VP8_DecodeDecide\000"
	.space	3
	.type	vp8_default_mv_context, %object
	.size	vp8_default_mv_context, 38
vp8_default_mv_context:
@ prob:
	.byte	-94
	.byte	-128
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-128
	.byte	-127
	.byte	-124
	.byte	75
	.byte	-111
	.byte	-78
	.byte	-50
	.byte	-17
	.byte	-2
	.byte	-2
@ prob:
	.byte	-92
	.byte	-128
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.byte	-128
	.byte	-126
	.byte	-126
	.byte	74
	.byte	-108
	.byte	-76
	.byte	-53
	.byte	-20
	.byte	-2
	.byte	-2
	.space	2
	.type	default_coef_probs, %object
	.size	default_coef_probs, 1056
default_coef_probs:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	-120
	.byte	-2
	.byte	-1
	.byte	-28
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-67
	.byte	-127
	.byte	-14
	.byte	-1
	.byte	-29
	.byte	-43
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	106
	.byte	126
	.byte	-29
	.byte	-4
	.byte	-42
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	98
	.byte	-8
	.byte	-1
	.byte	-20
	.byte	-30
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-75
	.byte	-123
	.byte	-18
	.byte	-2
	.byte	-35
	.byte	-22
	.byte	-1
	.byte	-102
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	78
	.byte	-122
	.byte	-54
	.byte	-9
	.byte	-58
	.byte	-76
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-71
	.byte	-7
	.byte	-1
	.byte	-13
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-106
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	77
	.byte	110
	.byte	-40
	.byte	-1
	.byte	-20
	.byte	-26
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	101
	.byte	-5
	.byte	-1
	.byte	-15
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-86
	.byte	-117
	.byte	-15
	.byte	-4
	.byte	-20
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	37
	.byte	116
	.byte	-60
	.byte	-13
	.byte	-28
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-52
	.byte	-2
	.byte	-1
	.byte	-11
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-49
	.byte	-96
	.byte	-6
	.byte	-1
	.byte	-18
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	102
	.byte	103
	.byte	-25
	.byte	-1
	.byte	-45
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-104
	.byte	-4
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-79
	.byte	-121
	.byte	-13
	.byte	-1
	.byte	-22
	.byte	-31
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	80
	.byte	-127
	.byte	-45
	.byte	-1
	.byte	-62
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-10
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-58
	.byte	35
	.byte	-19
	.byte	-33
	.byte	-63
	.byte	-69
	.byte	-94
	.byte	-96
	.byte	-111
	.byte	-101
	.byte	62
	.byte	-125
	.byte	45
	.byte	-58
	.byte	-35
	.byte	-84
	.byte	-80
	.byte	-36
	.byte	-99
	.byte	-4
	.byte	-35
	.byte	1
	.byte	68
	.byte	47
	.byte	-110
	.byte	-48
	.byte	-107
	.byte	-89
	.byte	-35
	.byte	-94
	.byte	-1
	.byte	-33
	.byte	-128
	.byte	1
	.byte	-107
	.byte	-15
	.byte	-1
	.byte	-35
	.byte	-32
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-72
	.byte	-115
	.byte	-22
	.byte	-3
	.byte	-34
	.byte	-36
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	81
	.byte	99
	.byte	-75
	.byte	-14
	.byte	-80
	.byte	-66
	.byte	-7
	.byte	-54
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-127
	.byte	-24
	.byte	-3
	.byte	-42
	.byte	-59
	.byte	-14
	.byte	-60
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	99
	.byte	121
	.byte	-46
	.byte	-6
	.byte	-55
	.byte	-58
	.byte	-1
	.byte	-54
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	23
	.byte	91
	.byte	-93
	.byte	-14
	.byte	-86
	.byte	-69
	.byte	-9
	.byte	-46
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-56
	.byte	-10
	.byte	-1
	.byte	-22
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	109
	.byte	-78
	.byte	-15
	.byte	-1
	.byte	-25
	.byte	-11
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	44
	.byte	-126
	.byte	-55
	.byte	-3
	.byte	-51
	.byte	-64
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-124
	.byte	-17
	.byte	-5
	.byte	-37
	.byte	-47
	.byte	-1
	.byte	-91
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	94
	.byte	-120
	.byte	-31
	.byte	-5
	.byte	-38
	.byte	-66
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	22
	.byte	100
	.byte	-82
	.byte	-11
	.byte	-70
	.byte	-95
	.byte	-1
	.byte	-57
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-7
	.byte	-1
	.byte	-24
	.byte	-21
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	124
	.byte	-113
	.byte	-15
	.byte	-1
	.byte	-29
	.byte	-22
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	35
	.byte	77
	.byte	-75
	.byte	-5
	.byte	-63
	.byte	-45
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-99
	.byte	-9
	.byte	-1
	.byte	-20
	.byte	-25
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	121
	.byte	-115
	.byte	-21
	.byte	-1
	.byte	-31
	.byte	-29
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	45
	.byte	99
	.byte	-68
	.byte	-5
	.byte	-61
	.byte	-39
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-5
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-53
	.byte	1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-119
	.byte	1
	.byte	-79
	.byte	-1
	.byte	-32
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-3
	.byte	9
	.byte	-8
	.byte	-5
	.byte	-49
	.byte	-48
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-81
	.byte	13
	.byte	-32
	.byte	-13
	.byte	-63
	.byte	-71
	.byte	-7
	.byte	-58
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	73
	.byte	17
	.byte	-85
	.byte	-35
	.byte	-95
	.byte	-77
	.byte	-20
	.byte	-89
	.byte	-1
	.byte	-22
	.byte	-128
	.byte	1
	.byte	95
	.byte	-9
	.byte	-3
	.byte	-44
	.byte	-73
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-17
	.byte	90
	.byte	-12
	.byte	-6
	.byte	-45
	.byte	-47
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-101
	.byte	77
	.byte	-61
	.byte	-8
	.byte	-68
	.byte	-61
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	24
	.byte	-17
	.byte	-5
	.byte	-38
	.byte	-37
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-55
	.byte	51
	.byte	-37
	.byte	-1
	.byte	-60
	.byte	-70
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	69
	.byte	46
	.byte	-66
	.byte	-17
	.byte	-55
	.byte	-38
	.byte	-1
	.byte	-28
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-65
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-33
	.byte	-91
	.byte	-7
	.byte	-1
	.byte	-43
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	124
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-66
	.byte	36
	.byte	-26
	.byte	-1
	.byte	-20
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-30
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-9
	.byte	-64
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-16
	.byte	-128
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-122
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-43
	.byte	62
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	55
	.byte	93
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-54
	.byte	24
	.byte	-43
	.byte	-21
	.byte	-70
	.byte	-65
	.byte	-36
	.byte	-96
	.byte	-16
	.byte	-81
	.byte	-1
	.byte	126
	.byte	38
	.byte	-74
	.byte	-24
	.byte	-87
	.byte	-72
	.byte	-28
	.byte	-82
	.byte	-1
	.byte	-69
	.byte	-128
	.byte	61
	.byte	46
	.byte	-118
	.byte	-37
	.byte	-105
	.byte	-78
	.byte	-16
	.byte	-86
	.byte	-1
	.byte	-40
	.byte	-128
	.byte	1
	.byte	112
	.byte	-26
	.byte	-6
	.byte	-57
	.byte	-65
	.byte	-9
	.byte	-97
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-90
	.byte	109
	.byte	-28
	.byte	-4
	.byte	-45
	.byte	-41
	.byte	-1
	.byte	-82
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	39
	.byte	77
	.byte	-94
	.byte	-24
	.byte	-84
	.byte	-76
	.byte	-11
	.byte	-78
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	52
	.byte	-36
	.byte	-10
	.byte	-58
	.byte	-57
	.byte	-7
	.byte	-36
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	124
	.byte	74
	.byte	-65
	.byte	-13
	.byte	-73
	.byte	-63
	.byte	-6
	.byte	-35
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	24
	.byte	71
	.byte	-126
	.byte	-37
	.byte	-102
	.byte	-86
	.byte	-13
	.byte	-74
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	-74
	.byte	-31
	.byte	-7
	.byte	-37
	.byte	-16
	.byte	-1
	.byte	-32
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-107
	.byte	-106
	.byte	-30
	.byte	-4
	.byte	-40
	.byte	-51
	.byte	-1
	.byte	-85
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	28
	.byte	108
	.byte	-86
	.byte	-14
	.byte	-73
	.byte	-62
	.byte	-2
	.byte	-33
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	1
	.byte	81
	.byte	-26
	.byte	-4
	.byte	-52
	.byte	-53
	.byte	-1
	.byte	-64
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	123
	.byte	102
	.byte	-47
	.byte	-9
	.byte	-68
	.byte	-60
	.byte	-1
	.byte	-23
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	20
	.byte	95
	.byte	-103
	.byte	-13
	.byte	-92
	.byte	-83
	.byte	-1
	.byte	-53
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	-34
	.byte	-8
	.byte	-1
	.byte	-40
	.byte	-43
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-88
	.byte	-81
	.byte	-10
	.byte	-4
	.byte	-21
	.byte	-51
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	47
	.byte	116
	.byte	-41
	.byte	-1
	.byte	-45
	.byte	-44
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	121
	.byte	-20
	.byte	-3
	.byte	-44
	.byte	-42
	.byte	-1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-115
	.byte	84
	.byte	-43
	.byte	-4
	.byte	-55
	.byte	-54
	.byte	-1
	.byte	-37
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	42
	.byte	80
	.byte	-96
	.byte	-16
	.byte	-94
	.byte	-71
	.byte	-1
	.byte	-51
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	1
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-12
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-18
	.byte	1
	.byte	-1
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.type	VP8_VFMWBITREADER_NORM, %object
	.size	VP8_VFMWBITREADER_NORM, 256
VP8_VFMWBITREADER_NORM:
	.byte	0
	.byte	7
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	vp8_mv_update_probs, %object
	.size	vp8_mv_update_probs, 38
vp8_mv_update_probs:
@ prob:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-2
	.byte	-2
@ prob:
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-2
	.space	2
	.type	C.449.34870, %object
	.size	C.449.34870, 8
C.449.34870:
	.word	7
	.word	6
	.type	vp8_coef_update_probs, %object
	.size	vp8_coef_update_probs, 1056
vp8_coef_update_probs:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-80
	.byte	-10
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-15
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-12
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-17
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-4
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-6
	.byte	-15
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-33
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-9
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-70
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-22
	.byte	-5
	.byte	-12
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-5
	.byte	-13
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-2
	.byte	-4
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-2
	.byte	-5
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-2
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-2
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-11
	.byte	-5
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	default_ymode_prob, %object
	.size	default_ymode_prob, 4
default_ymode_prob:
	.byte	112
	.byte	86
	.byte	-116
	.byte	37
	.type	default_uv_mode_prob, %object
	.size	default_uv_mode_prob, 3
default_uv_mode_prob:
	.byte	-94
	.byte	101
	.byte	-52
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC1:
	.ascii	"----------------- vp8 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
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
	.ascii	"%s %d NULL == pFwdImg!!\012\000"
	.space	3
.LC7:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC8:
	.ascii	"VP8_Set_DecParam but logic fs is null!\012\000"
.LC9:
	.ascii	"VP8_Set_DecParam but cur logic pstDecodeFs is null!"
	.ascii	"\012\000"
	.space	3
.LC10:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC11:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC12:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC13:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC14:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC15:
	.ascii	"vp8 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC16:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC17:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC18:
	.ascii	"Error!partition 0 length > streamlength!\012\000"
	.space	2
.LC19:
	.ascii	"Invalid frame sync code,data[0-1]:%02x,%02x,%02x\012"
	.ascii	"\000"
	.space	2
.LC20:
	.ascii	"Invalid frame width %d and Height %d!\012\000"
	.space	1
.LC21:
	.ascii	"We have a new size image!\012\000"
	.space	1
.LC22:
	.ascii	"The old size is %d x %d,the new is %d x %d\012\000"
.LC23:
	.ascii	"Error!Truncated packet\012\000"
.LC24:
	.ascii	"VP8_CB_GetPictureHeader Error!\012\000"
.LC25:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC26:
	.ascii	"VP8_ArrangeVHBMem error\012\000"
	.space	3
.LC27:
	.ascii	"VP8_DecodeDecide err\012\000"
	.space	2
.LC28:
	.ascii	"VP8_GetBufFromQueue err\012\000"
	.space	3
.LC29:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC30:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC31:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC32:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC33:
	.ascii	"line: %d pToQueImg is null\012\000"
.LC34:
	.ascii	"insert img to Voqueue failed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
