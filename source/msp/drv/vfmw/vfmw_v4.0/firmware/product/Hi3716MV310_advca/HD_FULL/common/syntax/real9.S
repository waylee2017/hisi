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
	.file	"real9.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.o
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
	.global	Real9_CB_SetDimensions
	.type	Real9_CB_SetDimensions, %function
Real9_CB_SetDimensions:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]	@ D.38056, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.38056,
	beq	.L21	@,
	cmp	r3, #176	@ D.38056,
	beq	.L22	@,
	cmp	r3, #352	@ D.38056,
	bne	.L7	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.38056,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.38077, tmp154,
	mov	r2, r1, lsr #4	@ D.38079, tmp155,
	str	r3, [r0, #76]	@ D.38077, <variable>.Rv9ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.38077, D.38079
	str	r2, [r0, #72]	@ D.38079, <variable>.Rv9ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.579, tmp157,
	cmp	r3, #47	@ prephitmp.579,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.579,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.579,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.579,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.579,
	movcc	r3, #4	@ i,
	movcs	r3, #5	@ i,
.L4:
	movw	r2, #:lower16:.LANCHOR0	@ tmp161,
	movt	r2, #:upper16:.LANCHOR0	@ tmp161,
	ldr	r3, [r2, r3, asl #2]	@ tmp162, MBA_FieldWidth
	str	r3, [r0, #80]	@ tmp162, <variable>.Rv9ParsePicParam.m_mbaSize
	bx	lr	@
.L22:
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #144	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #11	@ tmp143,
	mov	r2, #9	@ tmp144,
	str	ip, [r0, #76]	@ tmp143, <variable>.Rv9ParsePicParam.m_nMBs
	str	r2, [r0, #72]	@ tmp144, <variable>.Rv9ParsePicParam.m_nGOBs
.L17:
	mov	r3, #1	@ i,
	b	.L4	@
.L21:
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #96	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #6	@ tmp141,
	mov	r1, #8	@ tmp140,
	str	r3, [r0, #72]	@ tmp141, <variable>.Rv9ParsePicParam.m_nGOBs
	mov	r3, #0	@ i,
	str	r1, [r0, #76]	@ tmp140, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L4	@
.L7:
	cmp	r3, #704	@ D.38056,
	bne	.L24	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #76]	@ tmp149, <variable>.Rv9ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.579,
	str	r2, [r0, #72]	@ tmp150, <variable>.Rv9ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #72]	@ tmp147, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.579,
	str	r1, [r0, #76]	@ tmp146, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.38056,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #72]	@ tmp153, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.579,
	str	r1, [r0, #76]	@ tmp152, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real9_CB_SetDimensions, .-Real9_CB_SetDimensions
	.align	2
	.global	RV9_RecordVFMWState
	.type	RV9_RecordVFMWState, %function
RV9_RecordVFMWState:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	RV9_RecordVFMWState, .-RV9_RecordVFMWState
	.align	2
	.global	Real9_WriteSliceMsg
	.type	Real9_WriteSliceMsg, %function
Real9_WriteSliceMsg:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #44	@ tmp138,
	movw	ip, #37716	@ tmp141,
	mla	r3, r3, r1, r0	@ tmp139, tmp138, HoldSliceNum, pCtx
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	ip, #37708	@ tmp148,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	str	r2, [r3, #88]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #37712	@ tmp155,
	str	r2, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	ip, #37728	@ tmp162,
	str	r2, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	movw	ip, #37720	@ tmp169,
	str	r2, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	ip, #37724	@ tmp176,
	str	r2, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	movw	ip, #37696	@ tmp183,
	str	r2, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	movw	ip, #37692	@ tmp190,
	str	r2, [r3, #112]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	movw	ip, #37688	@ tmp197,
	str	r2, [r3, #116]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #37700	@ tmp204,
	str	r2, [r3, #120]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.sliceqp
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r2, [r3, #124]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.first_mb_in_slice
	str	r1, [r0, #40]	@ tmp206, <variable>.Rv9DecParam.TotalSliceNum
	bx	lr	@
	.fnend
	.size	Real9_WriteSliceMsg, .-Real9_WriteSliceMsg
	.align	2
	.global	Real9_WritePicMsg
	.type	Real9_WritePicMsg, %function
Real9_WritePicMsg:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	movw	r2, #37732	@ tmp147,
	movw	r8, #37568	@ tmp134,
	movw	r7, #37584	@ tmp137,
	movw	r6, #37580	@ tmp139,
	movw	r5, #38828	@ tmp141,
	movw	ip, #38832	@ tmp143,
	movw	r4, #37736	@ tmp149,
	movw	r1, #37608	@ tmp145,
	ldr	r3, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r1, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	r7, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r5, [r0, ip]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	ip, [r0, r4]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r8, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	str	r7, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	str	r6, [r0, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	r5, [r0, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	str	r4, [r0, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	ip, [r0, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	strb	r3, [r0, #9]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv9DecParam.PicCodingType
	str	r1, [r0, #28]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv9DecParam.PQUANT
	strne	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
	.fnend
	.size	Real9_WritePicMsg, .-Real9_WritePicMsg
	.align	2
	.global	Real9_WriteReg
	.type	Real9_WriteReg, %function
Real9_WriteReg:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #44]	@ fst_slc_grp, <variable>.Rv9DecParam.FstSlcGrp
	bx	lr	@
	.fnend
	.size	Real9_WriteReg, .-Real9_WriteReg
	.align	2
	.global	Real9_ModifySliceMsg
	.type	Real9_ModifySliceMsg, %function
Real9_ModifySliceMsg:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r3, [r0, #124]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.38504, <variable>.Rv9DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.38505, <variable>.Rv9DecParam.PicHeightInMb
	bne	.L35	@,
	mul	r1, r1, r3	@ tmp199, D.38504, D.38505
	ldr	r2, [r0, #40]	@ temp.806, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.806,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L36	@,
	sub	r4, r2, #1	@ prephitmp.708, temp.806,
	cmp	r4, #1	@ prephitmp.708,
	bls	.L41	@,
	ldr	r3, [r0, #168]	@ temp.779, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.779,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.779
	ble	.L35	@,
	tst	r2, #1	@ temp.806,
	mov	r3, r0	@ ivtmp.777, pCtx
	mov	ip, #1	@ i.778,
	bne	.L39	@,
	ldr	r3, [r0, #212]	@ D.38518, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.778,
	cmp	r3, #0	@ D.38518,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.38518
	add	r3, r0, #44	@ ivtmp.777, pCtx,
	bgt	.L39	@,
.L35:
	mov	r0, #0	@ D.38511,
.L57:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L36:
	moveq	r4, #1	@ prephitmp.708,
	bne	.L42	@,
.L41:
	tst	r4, #1	@ prephitmp.708,
	mov	r3, r0	@ ivtmp.770, pCtx
	mov	ip, #0	@ i,
	beq	.L38	@,
	cmp	r4, #0	@ prephitmp.708,
	bls	.L93	@,
	ldr	r6, [r0, #124]	@ temp.780, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #168]	@ D.38525, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.770, pCtx,
	cmp	r6, r5	@ temp.780, D.38525
	bge	.L35	@,
	cmp	r4, ip	@ prephitmp.708, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.770,
	bls	.L93	@,
.L45:
	ldr	r7, [r3, #124]	@ temp.780, <variable>.first_mb_in_slice
	ldr	r6, [r3, #168]	@ D.38525, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.770, ivtmp.770,
	cmp	r7, r6	@ temp.780, D.38525
	bge	.L35	@,
	ldr	r6, [r5, #168]	@ D.38525, <variable>.first_mb_in_slice
	ldr	r5, [r5, #124]	@ temp.780, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.780, D.38525
	bge	.L35	@,
.L38:
	cmp	r4, ip	@ prephitmp.708, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.770,
	bhi	.L45	@,
.L93:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.708, pCtx
	ldr	r3, [r4, #124]	@ D.38530, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.38530,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.38530
	blt	.L35	@,
.L42:
	cmp	r2, #0	@ temp.806,
	beq	.L95	@,
	mov	r6, #0	@ i.805,
	mov	ip, r0	@ ivtmp.787, pCtx
	mov	r3, r0	@ ivtmp.763, pCtx
	mov	r4, r6	@ i.785, i.805
	b	.L48	@
.L97:
	cmp	r5, #0	@ temp.784,
	blt	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.784
	blt	.L35	@,
	cmp	r2, #0	@ TotalMbnMinus1.783,
	blt	.L35	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.783
	blt	.L35	@,
	ldr	r2, [r0, #40]	@ temp.806, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.806, i.785
	bls	.L96	@,
.L48:
	sub	r2, r2, #1	@ tmp205, temp.806,
	ldr	r5, [r3, #124]	@ temp.784, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.805, tmp205
	add	r4, r4, #1	@ i.785, i.785,
	streq	r1, [r3, #128]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #168]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.783, TotalMbnMinus1
	mov	r6, r4	@ i.805, i.785
	subne	r2, r2, #1	@ TotalMbnMinus1.783, <variable>.first_mb_in_slice,
	strne	r2, [r3, #128]	@ TotalMbnMinus1.783, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.784, TotalMbnMinus1.783
	add	r3, r3, #44	@ ivtmp.763, ivtmp.763,
	ble	.L97	@,
	b	.L35	@
.L40:
	ldr	r5, [r3, #212]	@ D.38518, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.777, ivtmp.777,
	cmp	r5, #0	@ D.38518,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.38518
	ble	.L35	@,
	ldr	r5, [r6, #212]	@ D.38518, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.38518,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.38518
	ble	.L35	@,
.L39:
	add	ip, ip, #1	@ tmp261, i.778,
	add	r6, r3, #44	@ tmp260, ivtmp.777,
	cmp	r4, ip	@ prephitmp.708, tmp261
	add	ip, ip, #1	@ i.778, tmp261,
	bhi	.L40	@,
	b	.L41	@
.L96:
	cmp	r2, #0	@ temp.806,
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L49	@,
	tst	r2, #1	@ temp.806,
	mov	r5, r3	@ stream_base_addr.807, stream_base_addr
	mov	r4, #0	@ i.786,
	bne	.L52	@,
	mov	r1, r3	@ stream_base_addr.792, stream_base_addr
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.807
	bcs	.L67	@,
	ldr	r5, [r0, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L67	@,
.L68:
	add	ip, r0, #44	@ ivtmp.787, pCtx,
	mov	r4, #1	@ i.786,
	ldr	r5, [ip, #88]	@ stream_base_addr.807, <variable>.StreamPhyAddr
.L52:
	cmp	r5, r3	@ stream_base_addr.807, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.792, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.786,
	add	r1, ip, #44	@ tmp252, ivtmp.787,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.792
	bcs	.L50	@,
.L98:
	ldr	ip, [ip, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L50	@,
.L51:
	cmp	r4, r2	@ tmp251, temp.806
	beq	.L49	@,
	ldr	ip, [r1, #88]	@ stream_base_addr.807, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.807, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.792, stream_base_addr
	ldr	r3, [r1, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.792
	bcs	.L70	@,
	ldr	r5, [r1, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L70	@,
	add	ip, r1, #44	@ ivtmp.787, tmp252,
	add	r4, r4, #1	@ i.786, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.807, <variable>.StreamPhyAddr
.L99:
	cmp	r5, r3	@ stream_base_addr.807, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.792, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.786,
	add	r1, ip, #44	@ tmp252, ivtmp.787,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.792
	bcc	.L98	@,
.L50:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.792
	b	.L51	@
.L70:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.792
	add	ip, r1, #44	@ ivtmp.787, tmp252,
	add	r4, r4, #1	@ i.786, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.807, <variable>.StreamPhyAddr
	b	.L99	@
.L67:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.792
	b	.L68	@
.L95:
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
.L49:
	cmp	r2, #0	@ temp.806,
	bic	r4, r3, #15	@ prephitmp.712, stream_base_addr,
	str	r4, [r0, #48]	@ prephitmp.712, <variable>.Rv9DecParam.StreamBaseAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.806,
	mov	r3, r0	@ ivtmp.736, pCtx
	mov	r1, #0	@ i.781,
	bne	.L56	@,
	ldr	r3, [r0, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	r3, #0	@ <variable>.StreamPhyAddr,
	beq	.L89	@,
	ldr	r1, [r0, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r7, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, r1, #7	@ tmp293, <variable>.StreamBitOffset,
	and	r6, ip, #7	@ tmp283, <variable>.StreamBitOffset,
	add	r3, r3, r1, lsr #3	@, tmp287, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	ip, r7, ip, lsr #3	@, tmp278, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r3, r4, r3	@ BytePos1, prephitmp.712, tmp287
	rsb	r4, r4, ip	@ BytePos0.795, prephitmp.712, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.795,
	bic	r4, r4, #15	@ tmp280, BytePos0.795,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #88]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #96]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #100]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #92]	@ tmp290, <variable>.StreamPhyAddr
.L90:
	mov	r1, #1	@ i.781,
	add	r3, r0, #44	@ ivtmp.736, pCtx,
	ldr	r4, [r0, #48]	@ prephitmp.712, <variable>.Rv9DecParam.StreamBaseAddr
	b	.L56	@
.L100:
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.712, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #88]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #96]	@ tmp218, <variable>.StreamBitOffset
.L55:
	add	r1, r1, #1	@ tmp246, i.781,
	add	r3, r3, #44	@ tmp247, ivtmp.736,
	cmp	r1, r2	@ tmp246, temp.806
	bcs	.L53	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #48]	@ prephitmp.712, <variable>.Rv9DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L63	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.712, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #88]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #96]	@ tmp334, <variable>.StreamBitOffset
.L91:
	ldr	r4, [r0, #48]	@ prephitmp.712, <variable>.Rv9DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.781, tmp246,
	add	r3, r3, #44	@ ivtmp.736, tmp247,
.L56:
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L100	@,
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.795, prephitmp.712, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.795,
	bic	r4, r4, #15	@ tmp223, BytePos0.795,
	str	r4, [r3, #88]	@ tmp223, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp231, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r4, r7, r8, asl #3	@, tmp228, tmp226, tmp224,
	str	r4, [r3, #96]	@ tmp228, <variable>.StreamBitOffset
	ldr	r4, [r0, #48]	@ <variable>.Rv9DecParam.StreamBaseAddr, <variable>.Rv9DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv9DecParam.StreamBaseAddr, tmp231
	and	r4, ip, #15	@ tmp235, BytePos1,
	bic	ip, ip, #15	@ tmp234, BytePos1,
	str	ip, [r3, #92]	@ tmp234, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp239, tmp237, tmp235,
	str	ip, [r3, #100]	@ tmp239, <variable>.StreamBitOffset
	b	.L55	@
.L63:
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp313, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp308, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.795, prephitmp.712, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.795,
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r4, r4, #15	@ tmp310, BytePos0.795,
	str	r4, [r3, #88]	@ tmp310, <variable>.StreamPhyAddr
	add	r5, r7, r8, asl #3	@, tmp314, tmp313, tmp311,
	str	r5, [r3, #96]	@ tmp314, <variable>.StreamBitOffset
	ldr	r4, [r0, #48]	@ <variable>.Rv9DecParam.StreamBaseAddr, <variable>.Rv9DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv9DecParam.StreamBaseAddr, tmp317
	and	r4, ip, #15	@ tmp321, BytePos1,
	bic	r5, ip, #15	@ tmp320, BytePos1,
	str	r5, [r3, #92]	@ tmp320, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp324, tmp323, tmp321,
	str	ip, [r3, #100]	@ tmp324, <variable>.StreamBitOffset
	b	.L91	@
.L53:
	mov	r0, #1	@ D.38511,
	b	.L57	@
.L89:
	ldr	r5, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.712, tmp298
	and	r6, ip, #15	@ tmp301, BytePos0,
	bic	r4, ip, #15	@ tmp300, BytePos0,
	str	r4, [r0, #88]	@ tmp300, <variable>.StreamPhyAddr
	add	r5, r1, r6, asl #3	@, tmp304, tmp303, tmp301,
	str	r5, [r0, #96]	@ tmp304, <variable>.StreamBitOffset
	b	.L90	@
	.fnend
	.size	Real9_ModifySliceMsg, .-Real9_ModifySliceMsg
	.align	2
	.global	REAL9DEC_Support
	.type	REAL9DEC_Support, %function
REAL9DEC_Support:
	.fnstart
.LFB1941:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp134,
	str	r3, [r0, #0]	@ tmp134,* flag
	bx	lr	@
	.fnend
	.size	REAL9DEC_Support, .-REAL9DEC_Support
	.align	2
	.global	REAL9DEC_GetImageBuffer
	.type	REAL9DEC_GetImageBuffer, %function
REAL9DEC_GetImageBuffer:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #39304	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39155,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.39158,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.39158,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	REAL9DEC_GetImageBuffer, .-REAL9DEC_GetImageBuffer
	.align	2
	.global	REAL9DEC_RecycleImage
	.type	REAL9DEC_RecycleImage, %function
REAL9DEC_RecycleImage:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #39304	@ tmp137,
	mov	r5, r0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL9DEC_RecycleImage, .-REAL9DEC_RecycleImage
	.align	2
	.global	REAL9DEC_Init
	.type	REAL9DEC_Init, %function
REAL9DEC_Init:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	add	r7, r4, #38912	@, pCtx,
	movw	r1, #39312	@,
	mov	r6, #1	@ tmp151,
	bl	__memzero	@
	add	r0, r7, #40	@,,
	bl	ResetVoQueue	@
	movw	r1, #37736	@ tmp142,
	movw	r0, #37732	@ tmp140,
	mov	r3, #15	@ tmp141,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movw	ip, #11376	@ tmp147,
	str	r3, [r4, r0]	@ tmp141, <variable>.CodecInfo.PrevPicQP
	movw	r2, #11372	@ tmp144,
	str	r3, [r4, r1]	@ tmp141, <variable>.CodecInfo.PrevPicMb0QP
	mov	r7, #0	@ tmp148,
	ldr	r1, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r3, #37592	@ tmp152,
	strb	r7, [r4, ip]	@ tmp148, <variable>.CodecInfo.Imgbuf_allocated
	movw	ip, #37564	@ tmp150,
	mov	r0, #8192	@ tmp153,
	str	r6, [r4, ip]	@ tmp151, <variable>.CodecInfo.PictureHeader.Fid
	strb	r1, [r4, r2]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movw	r2, #37560	@ tmp154,
	str	r0, [r4, r3]	@ tmp153, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r2]	@ tmp151, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	bl	VCTRL_GetChanIDByCtx	@
	movw	r1, #39304	@ tmp157,
	movw	r3, #39308	@ tmp158,
	str	r6, [r4, r3]	@ tmp151, <variable>.DSDNeedClearQue
	cmn	r0, #1	@ D.38596,
	str	r0, [r4, r1]	@ D.38596, <variable>.ChanID
	movne	r0, r7	@ D.38600, tmp148
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38600,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	REAL9DEC_Init, .-REAL9DEC_Init
	.align	2
	.global	Real9_SetImgFormat
	.type	Real9_SetImgFormat, %function
Real9_SetImgFormat:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #39304	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	mov	r3, #38912	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #37568	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.38390, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #37576	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.38390,
	str	r3, [r4, #136]	@ D.38390, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.38390, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #140]	@ tmp148, <variable>.format
	movw	lr, #37572	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #144]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #148]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L118	@,
.L116:
	mov	r3, #8	@ tmp175,
	mov	r2, #1	@ tmp173,
	mov	ip, #9	@ tmp170,
	mov	r1, #0	@ tmp171,
	str	r3, [r4, #308]	@ tmp175, <variable>.ImageDnr.QP_U
	str	r3, [r4, #304]	@ tmp175, <variable>.ImageDnr.QP_Y
	strb	r2, [r4, #293]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r4, #300]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r1, [r4, #288]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #295]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #312]	@ tmp175, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L118:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.38398, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.38398,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.38398
	mul	r1, r1, lr	@ D.38404, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.38404, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.38404
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.38398
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #92]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L116	@
	.fnend
	.size	Real9_SetImgFormat, .-Real9_SetImgFormat
	.align	2
	.global	REAL9DEC_VDMPostProc
	.type	REAL9DEC_VDMPostProc, %function
REAL9DEC_VDMPostProc:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r5, r1	@ ErrRatio, ErrRatio
	bl	vfmw_dprint_nothing	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #39304	@ tmp143,
	mov	r3, #38912	@ tmp145,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L121	@,
	movw	lr, #37568	@ tmp148,
	movw	r2, #11374	@ tmp147,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	ip, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp154, Mb0QpInCurrPic,
	movwne	ip, #37736	@ tmp153,
	strne	r6, [r4, ip]	@ tmp154, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.562,
	blt	.L124	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.562,
.L124:
	str	r5, [r0, #180]	@ iftmp.562, <variable>.error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	Real9_SetImgFormat	@
	movw	r3, #11372	@ tmp155,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L127	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #1	@ <variable>.s32DecOrderOutput,
	beq	.L127	@,
	movw	lr, #37568	@ tmp161,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L127	@,
	movw	r3, #11373	@ tmp163,
	movw	r2, #38916	@ tmp170,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r0, #38904	@ tmp165,
	mvnls	r1, #0	@ prephitmp.945,
	ldrhi	r1, [r4, r0]	@ prephitmp.945,
	cmn	r1, #1	@ prephitmp.945,
	str	r1, [r4, r2]	@ prephitmp.945, <variable>.CodecInfo.ToQueFsID
	beq	.L131	@,
.L135:
	movw	r5, #39304	@ tmp171,
	movw	r6, #38916	@ tmp175,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r7, r0	@ pToQueImg,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	add	r3, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	add	r3, r3, #40	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L134	@,
.L131:
	movw	lr, #38804	@ tmp185,
	mov	r0, #1	@ D.39108,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, ip, r0	@ tmp188, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, lr]	@ tmp188, <variable>.CodecInfo.FrmCnt
.L121:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L127:
	mov	ip, #38912	@ tmp169,
	movw	r2, #38916	@ tmp170,
	ldr	r1, [r4, ip]	@ prephitmp.945,
	cmn	r1, #1	@ prephitmp.945,
	str	r1, [r4, r2]	@ prephitmp.945, <variable>.CodecInfo.ToQueFsID
	bne	.L135	@,
	b	.L131	@
.L134:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.39108,
	b	.L121	@
	.fnend
	.size	REAL9DEC_VDMPostProc, .-REAL9DEC_VDMPostProc
	.align	2
	.global	REAL9DEC_GetRemainImg
	.type	REAL9DEC_GetRemainImg, %function
REAL9DEC_GetRemainImg:
	.fnstart
.LFB1938:
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
	beq	.L148	@,
	movw	r6, #39304	@ tmp142,
	movw	r7, #38908	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L148	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L146	@,
.L148:
	add	r5, r4, #38912	@ tmp170, pCtx,
	add	r5, r5, #40	@ tmp170, tmp170,
.L137:
	mov	r0, r5	@, tmp170
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L146:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ tmp170, pCtx,
	bl	Real9_SetImgFormat	@
	add	r5, r5, #40	@ tmp170, tmp170,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #224]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp170
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L138	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	b	.L137	@
.L138:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L137	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L137	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	bls	.L137	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	REAL9DEC_GetRemainImg, .-REAL9DEC_GetRemainImg
	.align	2
	.type	Real9_FlushFrameToVo, %function
Real9_FlushFrameToVo:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r5, #39304	@ tmp140,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L155	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L156	@,
.L151:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L156:
	mov	r0, r4	@, pCtx
	bl	Real9_SetImgFormat	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #9	@,
	add	r3, r3, #40	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L151	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
.L155:
	mvn	r0, #0	@ ret,
	b	.L151	@
	.fnend
	.size	Real9_FlushFrameToVo, .-Real9_FlushFrameToVo
	.align	2
	.global	Real9_CB_FindNextSliceStartCode
	.type	Real9_CB_FindNextSliceStartCode, %function
Real9_CB_FindNextSliceStartCode:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r8, r0, #7	@ tmp142, D.38137,
	cmp	r0, #0	@ D.38137,
	movlt	r0, r8	@ D.38137, tmp142
	mov	r8, r0, asr #3	@ tmp143, D.38137,
	sub	r7, r8, #2	@ RemainByte, tmp143,
	cmp	r7, #0	@ RemainByte,
	ble	.L158	@,
	sub	r2, r8, #3	@ tmp150, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r2, #1	@ tmp152, tmp150,
	bl	BsShow	@
	movw	r6, #:lower16:1907728	@ tmp148,
	movt	r6, #:upper16:1907728	@ tmp148,
	cmp	r0, r6	@, tmp148
	beq	.L172	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r7, r5	@ RemainByte, i
	ble	.L158	@,
	cmp	r8, #0	@ tmp152,
	beq	.L161	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@, tmp148
	beq	.L172	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r7, r5	@ RemainByte, i
	bgt	.L161	@,
	b	.L158	@
.L159:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	beq	.L172	@,
	bl	BsSkip	@
	cmp	r7, r5	@ RemainByte, i
	ble	.L158	@,
.L161:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp153, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp153,
	cmp	r0, r6	@, tmp148
	mov	r0, r4	@, pBs
	bne	.L159	@,
.L172:
	mov	r0, #1	@ D.38142,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L158:
	mov	r0, #0	@ D.38142,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_CB_FindNextSliceStartCode, .-Real9_CB_FindNextSliceStartCode
	.align	2
	.global	Real9_CB_GetVLCBits
	.type	Real9_CB_GetVLCBits, %function
Real9_CB_GetVLCBits:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, #0	@ length,
	movw	r7, #:lower16:.LANCHOR0	@ tmp150,
	movt	r7, #:upper16:.LANCHOR0	@ tmp150,
	mov	r6, r0	@ pBs, pBs
	mov	r8, r1	@ pInfo, pInfo
	mov	r5, r4	@ info, length
.L174:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r1, r0, r7	@ tmp144,, tmp150
	mov	r0, r6	@, pBs
	ldrb	ip, [r1, #24]	@ zero_extendqisi2	@ lengthAndInfo, gs_VLCDecodeTable
	and	r2, ip, #15	@ tmp147, lengthAndInfo,
	mov	r1, ip, lsr #4	@ thisChunksLength, lengthAndInfo,
	mov	r3, ip, lsr #5	@ tmp146, lengthAndInfo,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@, info, tmp147, info,
	bl	BsSkip	@
	tst	r4, #1	@ length,
	beq	.L174	@,
	str	r5, [r8, #0]	@ info,* pInfo
	mov	r0, r4	@, length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_CB_GetVLCBits, .-Real9_CB_GetVLCBits
	.align	2
	.global	Real9_CB_Get1Bit
	.type	Real9_CB_Get1Bit, %function
Real9_CB_Get1Bit:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #1	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r4, r0	@ D.37889,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.37889
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Real9_CB_Get1Bit, .-Real9_CB_Get1Bit
	.align	2
	.global	Real9_CB_GetBits
	.type	Real9_CB_GetBits, %function
Real9_CB_GetBits:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ nBits, nBits
	bl	BsShow	@
	mov	r1, r5	@, nBits
	mov	r4, r0	@ D.37883,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.37883
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_GetBits, .-Real9_CB_GetBits
	.align	2
	.global	Real9_CB_GetPicSize
	.type	Real9_CB_GetPicSize, %function
Real9_CB_GetPicSize:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	sl, .L197	@ tmp149,
	.pad #92
	sub	sp, sp, #92	@,,
	mov	r5, r1	@ pRv9ParsePicParam, pRv9ParsePicParam
	mov	r4, r0	@ pBs, pBs
	mov	fp, r2	@ width, width
	mov	lr, sl	@ tmp177, tmp149
	str	r3, [sp, #4]	@ height, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp177,,,,
	add	r6, sp, #40	@ tmp148,,
	add	r8, sp, #8	@ tmp151,,
	add	sl, sl, #64	@ tmp155, tmp149,
	mov	r7, r6	@ tmp178, tmp148
	add	r9, sp, #72	@ tmp154,,
	add	ip, lr, #16	@ tmp152, tmp177,
	stmia	r7!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp177,,,,
	mov	lr, r8	@ tmp180, tmp151
	stmia	r7, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp180,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp180,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp155,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp154,,,,
	ldr	r0, [r5, #20]	@ <variable>.ptype, <variable>.ptype
	sub	r3, r0, #2	@ tmp156, <variable>.ptype,
	cmp	r3, #1	@ tmp156,
	bls	.L195	@,
.L182:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	add	r5, sp, #88	@,,
	add	r6, r5, r0, asl #2	@, tmp162,,,
	ldr	r5, [r6, #-48]	@ w, code_width
	cmp	r5, #0	@ w,
	beq	.L190	@,
.L184:
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	Real9_CB_GetBits	@
	add	ip, sp, #88	@,,
	mov	r3, r0	@ code.1139,
	add	r0, ip, r0, asl #2	@, tmp167,, code.1139,
	ldr	r6, [r0, #-80]	@ h, code_height1
	cmp	r6, #0	@ h,
	beq	.L196	@,
.L186:
	str	r5, [fp, #0]	@ w,* width
	ldr	lr, [sp, #4]	@, %sfp
	str	r6, [lr, #0]	@ h,
.L188:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L190:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1138,
	add	r5, r5, r0, asl #2	@, w, w, code.1138,
	bne	.L184	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1138,
	add	r5, r5, r0, asl #2	@, w, w, code.1138,
	beq	.L190	@,
	b	.L184	@
.L195:
	mov	r0, r4	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L182	@,
	ldr	r3, [r5, #52]	@ <variable>.pwidth_prev, <variable>.pwidth_prev
	str	r3, [fp, #0]	@ <variable>.pwidth_prev,* width
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r2, [r5, #56]	@ <variable>.pheight_prev, <variable>.pheight_prev
	str	r2, [r1, #0]	@ <variable>.pheight_prev,
	b	.L188	@
.L196:
	mov	r0, r4	@, pBs
	mov	r6, r3, asl #1	@ code.1140, code.1139,
	bl	Real9_CB_Get1Bit	@
	add	r2, sp, #88	@,,
	orr	r6, r0, r6	@ code.1141,, code.1140
	and	r3, r6, #3	@ tmp169, code.1141,
	add	r1, r2, r3, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L186	@,
.L189:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1143,
	add	r6, r6, r0, asl #2	@, h, h, code.1143,
	bne	.L186	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1143,
	add	r6, r6, r0, asl #2	@, h, h, code.1143,
	beq	.L189	@,
	b	.L186	@
.L198:
	.align	2
.L197:
	.word	.LANCHOR0+280
	.fnend
	.size	Real9_CB_GetPicSize, .-Real9_CB_GetPicSize
	.align	2
	.global	Real9_CB_GetSliceHeader
	.type	Real9_CB_GetSliceHeader, %function
Real9_CB_GetSliceHeader:
	.fnstart
.LFB1926:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r3	@ iSliceGFID, iSliceGFID
	mov	r5, r2	@ iSliceMBA, iSliceMBA
	ldr	r4, [sp, #52]	@ pPictureHeader, pPictureHeader
	mov	r6, r0	@ pBs, pBs
	ldr	r8, [sp, #48]	@ iSQUANT, iSQUANT
	ldr	r3, [r4, #4]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	beq	.L223	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L224	@,
	mvn	r4, #0	@ tmp188,
	mov	r1, #0	@ tmp187,
	str	r1, [r2, #0]	@ tmp187,* iSliceMBA
	str	r4, [r8, #0]	@ tmp188,* iSQUANT
	mov	r4, #1	@ D.38170,
.L212:
	mov	r0, r4	@, D.38170
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L223:
	cmp	r1, #0	@ bFirstSlice,
	ldrne	r0, [r4, #88]	@ prephitmp.1159, <variable>.Rv9ParsePicParam.mba
	bne	.L202	@,
	ldr	sl, [r4, #88]	@ D.38164, <variable>.Rv9ParsePicParam.mba
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L203	@,
	cmn	sl, #1	@ D.38164,
	movne	sl, #0	@, D.39868
	moveq	sl, #1	@, D.39868
	cmp	sl, #0	@ D.39868,
	beq	.L204	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #84]	@, <variable>.Rv9ParsePicParam.ptype
.L205:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	uxtb	r0, r0	@ D.38180,
	strb	r0, [r4, #66]	@ D.38180, <variable>.Rv9ParsePicParam.pquant
	cmp	r0, #31	@ D.38180,
	bls	.L225	@,
.L203:
	mov	r4, #0	@ D.38170,
	b	.L212	@
.L224:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L203	@,
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r0, [r4, #80]	@ <variable>.Rv9ParsePicParam.m_mbaSize, <variable>.Rv9ParsePicParam.m_mbaSize
	cmp	r0, #11	@ <variable>.Rv9ParsePicParam.m_mbaSize,
	bls	.L214	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L203	@,
.L214:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #31	@ D.38237,
	str	r0, [r8, #0]	@ D.38237,* iSQUANT
	bgt	.L203	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.38243,
	mov	r4, r0	@ D.38243,
	bne	.L203	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r7, #0]	@,* iSliceGFID
	b	.L212	@
.L225:
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L203	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	subs	r9, r0, #0	@ D.38187,
	bne	.L203	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	mov	r1, #1	@,
	add	fp, r4, #64	@ pRv9ParsePicParam, pPictureHeader,
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	subs	r2, r0, #0	@ tmp171,,
	movne	r2, #1	@ tmp171
	cmp	sl, #0	@ D.39868,
	strb	r2, [r4, #65]	@ tmp171, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	beq	.L206	@,
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r3, #1	@ <variable>.Rv9ParsePicParam.ptype,
	strls	r9, [r4, #120]	@ D.38187, <variable>.Rv9ParsePicParam.pheight_prev
	strls	r9, [r4, #116]	@ D.38187, <variable>.Rv9ParsePicParam.pwidth_prev
	str	r0, [r4, #92]	@, <variable>.Rv9ParsePicParam.tr
	bls	.L207	@,
	cmp	r3, #2	@ <variable>.Rv9ParsePicParam.ptype,
	ldreq	r3, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldreq	lr, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	streq	r3, [r4, #116]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth_prev
	streq	lr, [r4, #120]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight_prev
.L207:
	mov	r1, fp	@, pRv9ParsePicParam
	mov	r0, r6	@, pBs
	add	r2, sp, #4	@,,
	mov	r3, sp	@,
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [sp, #4]	@ width, width
	ldr	r3, [sp, #0]	@ height, height
	movw	r1, #8144	@ tmp199,
	sub	r0, r2, #48	@ tmp198, width,
	cmp	r0, r1	@ tmp198, tmp199
	str	r2, [r4, #108]	@ width, <variable>.Rv9ParsePicParam.pwidth
	str	r3, [r4, #112]	@ height, <variable>.Rv9ParsePicParam.pheight
	str	r2, [r4, #16]	@ width, <variable>.pic_width_in_pixel
	str	r3, [r4, #12]	@ height, <variable>.pic_height_in_pixel
	bhi	.L203	@,
	sub	r0, r3, #48	@ tmp179, height,
	cmp	r0, r1	@ tmp179, tmp199
	bhi	.L203	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
.L211:
	mov	r0, r6	@, pBs
	ldr	r1, [r4, #80]	@, <variable>.Rv9ParsePicParam.m_mbaSize
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #88]	@ prephitmp.1159, <variable>.Rv9ParsePicParam.mba
.L202:
	str	r0, [r5, #0]	@ prephitmp.1159,* iSliceMBA
	mov	ip, #0	@ tmp184,
	ldrb	r3, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	mov	r4, #1	@ D.38170,
	str	r3, [r8, #0]	@ <variable>.Rv9ParsePicParam.pquant,* iSQUANT
	str	ip, [r7, #0]	@ tmp184,* iSliceGFID
	b	.L212	@
.L204:
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	ldr	r1, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, r1	@, <variable>.Rv9ParsePicParam.ptype
	beq	.L205	@,
	mov	r4, #0	@ D.38170,
	b	.L212	@
.L206:
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	ip, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	r0, ip	@, <variable>.Rv9ParsePicParam.tr
	bne	.L203	@,
	add	r2, sp, #4	@,,
	mov	r1, fp	@, pRv9ParsePicParam
	mov	r0, r6	@, pBs
	mov	r3, sp	@,
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [r4, #108]	@ <variable>.Rv9ParsePicParam.pwidth, <variable>.Rv9ParsePicParam.pwidth
	ldr	ip, [sp, #4]	@ width, width
	cmp	r2, ip	@ <variable>.Rv9ParsePicParam.pwidth, width
	bne	.L203	@,
	ldr	r1, [r4, #112]	@ <variable>.Rv9ParsePicParam.pheight, <variable>.Rv9ParsePicParam.pheight
	ldr	r2, [sp, #0]	@ height, height
	cmp	r1, r2	@ <variable>.Rv9ParsePicParam.pheight, height
	beq	.L211	@,
	mov	r4, #0	@ D.38170,
	b	.L212	@
	.fnend
	.size	Real9_CB_GetSliceHeader, .-Real9_CB_GetSliceHeader
	.align	2
	.global	Real9_CB_GetCPFMT
	.type	Real9_CB_GetCPFMT, %function
Real9_CB_GetCPFMT:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #4	@,
	mov	r5, r0	@ pBs, pBs
	bl	Real9_CB_GetBits	@
	mov	r1, #9	@,
	strb	r0, [r4, #0]	@, <variable>.pixel_aspect_ratio
	mov	r0, r5	@, pBs
	bl	Real9_CB_GetBits	@
	add	r1, r0, #1	@ tmp142,,
	mov	r0, r5	@, pBs
	mov	r3, r1, asl #2	@ tmp143, tmp142,
	str	r3, [r4, #16]	@ tmp143, <variable>.pic_width_in_pixel
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.38036,
	mov	r6, r0	@ D.38036,
	movne	r6, #0	@ D.38039,
	beq	.L230	@,
	mov	r0, r6	@, D.38039
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L230:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real9_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #12]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.38039
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_GetCPFMT, .-Real9_CB_GetCPFMT
	.align	2
	.global	Real9_CB_GetPictureHeader
	.type	Real9_CB_GetPictureHeader, %function
Real9_CB_GetPictureHeader:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r1, #4]	@ <variable>.Fid, <variable>.Fid
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	cmp	r3, #1	@ <variable>.Fid,
	mov	r6, r0	@ pBs, pBs
	bne	.L232	@,
	mvn	r1, #0	@ tmp149,
	add	r2, sp, #16	@,,
	str	r1, [r4, #88]	@ tmp149, <variable>.Rv9ParsePicParam.mba
	add	r3, sp, #20	@,,
	mov	r1, #0	@,
	add	ip, sp, #12	@ tmp152,,
	str	r4, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@ tmp152,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r5, #1	@ Status,
	beq	.L251	@,
.L234:
	ldr	ip, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	r3, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	r0, ip, #15	@ tmp197, <variable>.pic_width_in_pixel,
	add	r1, r3, #15	@ tmp199, <variable>.pic_height_in_pixel,
	mov	r2, r0, lsr #4	@ D.38345, tmp197,
	str	r2, [r4, #24]	@ D.38345, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.38347, tmp199,
	str	lr, [r4, #20]	@ D.38347, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp201, D.38345, D.38347
	str	ip, [r4, #28]	@ tmp201, <variable>.total_mbs
.L249:
	mov	r0, r5	@, Status
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L232:
	mov	r1, #128	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	movw	r3, #21845	@ tmp171,
	cmp	r0, r3	@ D.38300, tmp171
	mov	r5, r0	@ D.38300,
	beq	.L252	@,
.L242:
	mvn	r5, #1	@ Status,
	b	.L249	@
.L252:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, r5	@, D.38300
	bne	.L242	@,
	add	r5, sp, #8	@ tmp203,,
	mov	r0, r6	@, pBs
	mov	r1, r5	@, tmp203
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L242	@,
	ldr	r3, [sp, #8]	@ info, info
	ands	r2, r3, #1	@ tmp174, info,
	bne	.L242	@,
	tst	r3, #2	@ info,
	ubfx	ip, r3, #7, #8	@ tmp185, info,,
	strne	r2, [r4, #12]	@ tmp174, <variable>.pic_height_in_pixel
	mov	r1, r5	@, tmp203
	moveq	r2, #176	@ tmp176,
	strne	r2, [r4, #16]	@ tmp174, <variable>.pic_width_in_pixel
	streq	r2, [r4, #16]	@ tmp176, <variable>.pic_width_in_pixel
	ubfx	r5, r3, #2, #5	@ tmp182, info,,
	moveq	r2, #144	@ tmp177,
	str	ip, [r4, #36]	@ tmp185, <variable>.TR
	streq	r2, [r4, #12]	@ tmp177, <variable>.pic_height_in_pixel
	mov	r0, r6	@, pBs
	str	r5, [r4, #48]	@ tmp182, <variable>.PQUANT
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1235,
	streq	r0, [r4, #8]	@ length.1235, <variable>.PicCodType
	beq	.L246	@,
	cmp	r0, #3	@ length.1235,
	bne	.L247	@,
	ldr	r2, [sp, #8]	@ info, info
	cmp	r2, #1	@ info,
	moveq	r2, #0	@ tmp189,
	streq	r2, [r4, #8]	@ tmp189, <variable>.PicCodType
	bne	.L242	@,
.L246:
	ldr	r3, [r4, #16]	@ prephitmp.1222, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1222,
	beq	.L253	@,
.L248:
	sub	r1, r3, #48	@ tmp192, prephitmp.1222,
	movw	r2, #8144	@ tmp193,
	cmp	r1, r2	@ tmp192, tmp193
	bhi	.L242	@,
	ldr	r3, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r0, r3, #48	@ tmp194, <variable>.pic_height_in_pixel,
	cmp	r0, r2	@ tmp194, tmp193
	bhi	.L242	@,
	mov	r0, r4	@, pPictureHeader
	mov	r5, #1	@ Status,
	bl	Real9_CB_SetDimensions	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	b	.L234	@
.L251:
	ldr	r0, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv9ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv9ParsePicParam.ptype
	b	.L235	@
.L240:
	.word	.L236
	.word	.L237
	.word	.L238
	.word	.L239
.L239:
	mov	r5, #1	@ Status,
	mov	r6, #2	@ tmp159,
	str	r6, [r4, #8]	@ tmp159, <variable>.PicCodType
.L241:
	ldr	lr, [r4, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #8144	@ tmp167,
	ldrb	r6, [r4, #65]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	sub	r2, lr, #48	@ tmp165, <variable>.pic_width_in_pixel,
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	ldr	r0, [r4, #92]	@ <variable>.Rv9ParsePicParam.tr, <variable>.Rv9ParsePicParam.tr
	cmp	r2, r3	@ tmp165, tmp167
	ldr	r1, [r4, #96]	@ <variable>.Rv9ParsePicParam.trb, <variable>.Rv9ParsePicParam.trb
	ldr	lr, [r4, #100]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.Rv9ParsePicParam.dbq
	str	r6, [r4, #44]	@ <variable>.Rv9ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	ip, [r4, #48]	@ <variable>.Rv9ParsePicParam.pquant, <variable>.PQUANT
	str	r0, [r4, #36]	@ <variable>.Rv9ParsePicParam.tr, <variable>.TR
	str	r1, [r4, #56]	@ <variable>.Rv9ParsePicParam.trb, <variable>.TRB
	str	lr, [r4, #60]	@ <variable>.Rv9ParsePicParam.dbq, <variable>.DBQUANT
	bhi	.L242	@,
	ldr	r0, [r4, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r1, r0, #48	@ tmp168, <variable>.pic_height_in_pixel,
	cmp	r1, r3	@ tmp168, tmp167
	bhi	.L242	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
	b	.L234	@
.L238:
	mov	r5, #1	@ tmp158,
	str	r5, [r4, #8]	@ tmp158, <variable>.PicCodType
	b	.L241	@
.L237:
	mov	r5, #0	@ tmp156,
	str	r5, [r4, #68]	@ tmp156, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r5, [r4, #8]	@ tmp156, <variable>.PicCodType
	mov	r5, #1	@ Status,
	b	.L241	@
.L236:
	mov	r5, #1	@ tmp155,
	mov	r2, #0	@ tmp154,
	str	r5, [r4, #68]	@ tmp155, <variable>.Rv9ParsePicParam.m_isForcedKey
	str	r2, [r4, #8]	@ tmp154, <variable>.PicCodType
	b	.L241	@
.L235:
	mvn	r5, #1	@ Status,
	b	.L241	@
.L247:
	cmp	r0, #5	@ length.1235,
	bne	.L242	@,
	ldr	r3, [sp, #8]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L242	@,
	add	lr, r3, #2	@ tmp191, tmp191,
	str	lr, [r4, #8]	@ tmp191, <variable>.PicCodType
	b	.L246	@
.L253:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real9_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L242	@,
	ldr	r3, [r4, #16]	@ prephitmp.1222, <variable>.pic_width_in_pixel
	b	.L248	@
	.fnend
	.size	Real9_CB_GetPictureHeader, .-Real9_CB_GetPictureHeader
	.align	2
	.global	Real9_ArrangeVHBMem
	.type	Real9_ArrangeVHBMem, %function
Real9_ArrangeVHBMem:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r2, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ pCtx, pCtx
	cmp	r3, #1	@ <variable>.pic_width_in_mb,
	bls	.L267	@,
	ldr	r0, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #1	@ <variable>.pic_height_in_mb,
	bls	.L267	@,
	ldr	r3, [r1, #0]	@ D.37970, <variable>.pstExtraData
	ldr	r1, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r1, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L258	@,
	ldr	r6, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L280	@,
.L259:
	ldr	r7, [r2, #12]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1257,
	ldr	r6, [r2, #16]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L265:
	mov	r1, #36	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp172,
	ldr	r1, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	r2, [sp, #2]	@ tmp172, FspInstCfg.s32RprEnable
	str	r6, [sp, #12]	@ PicWidth, FspInstCfg.s32DecFsWidth
	strb	r1, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, sp	@,
	str	r7, [sp, #16]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r6, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #7]	@ prephitmp.1257, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #39304	@ tmp183,
	uxtbne	r2, sl	@ iftmp.502, DecFsNum
	strb	r2, [sp, #5]	@ iftmp.502, FspInstCfg.s32ExpectedDecFsNum
	ldr	r7, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r7, #24	@ <variable>.eCapLevel,
	mov	r7, #0	@ tmp181,
	uxtbne	r9, r9	@ iftmp.503, PmvNum
	strb	r7, [sp, #4]	@ tmp181, FspInstCfg.s32UserDec
	moveq	r9, #1	@ iftmp.503,
	strb	r9, [sp, #8]	@ iftmp.503, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.38018,
	movne	r0, r7	@ D.37967, tmp181
	beq	.L281	@,
.L257:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L258:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L259	@,
	ldr	r6, [r2, #16]	@ temp.1272, <variable>.pic_width_in_pixel
	ldr	r0, [r3, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, r0	@ temp.1272, <variable>.stChanOption.s32MaxWidth
	bhi	.L267	@,
	ldr	r7, [r2, #12]	@ temp.1274, <variable>.pic_height_in_pixel
	ldr	ip, [r3, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r7, ip	@ temp.1274, <variable>.stChanOption.s32MaxHeight
	bhi	.L267	@,
.L268:
	ldr	r5, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L270	@,
	add	r9, sl, #1	@ PmvNum.1277, DecFsNum,
	cmp	r9, #17	@ PmvNum.1277,
	movge	r9, #17	@ PmvNum,
.L270:
	ldrb	r8, [r3, #616]	@ zero_extendqisi2	@ prephitmp.1257, <variable>.stChanOption.s32DisplayFrameNum
	b	.L265	@
.L267:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.37967,
	b	.L257	@
.L281:
	ldr	lr, [r4, #0]	@ temp.1285, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L282	@,
	mov	r3, #1	@ tmp192,
	movw	ip, #11376	@ tmp191,
	mov	r0, r3	@ D.37967, tmp192
	strb	r3, [r4, ip]	@ tmp192, <variable>.CodecInfo.Imgbuf_allocated
	b	.L257	@
.L280:
	ldr	r6, [r3, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	ldr	ip, [r2, #16]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	cmp	ip, r6	@ <variable>.pic_width_in_pixel, PicWidth
	bhi	.L267	@,
	ldr	r2, [r2, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	ldr	r7, [r3, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r7	@ <variable>.pic_height_in_pixel, PicHeight
	bhi	.L267	@,
	movw	r1, #11376	@ tmp159,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L268	@,
	b	.L257	@
.L282:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.37967, D.38018
	b	.L257	@
	.fnend
	.size	Real9_ArrangeVHBMem, .-Real9_ArrangeVHBMem
	.align	2
	.global	Real9_GetImageBuffer
	.type	Real9_GetImageBuffer, %function
Real9_GetImageBuffer:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #39304	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	mov	r3, #38912	@ tmp141,
	cmp	r0, #0	@ D.37922,
	mov	r1, r0	@ D.37922,
	str	r0, [r4, r3]	@ D.37922, <variable>.CodecInfo.CurFsID
	blt	.L290	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r8, r0, #0	@ pLf,
	beq	.L291	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L287	@,
	ldr	ip, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L287	@,
	ldr	lr, [r8, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L287	@,
	bl	vfmw_dprint_nothing	@
.L287:
	mov	r3, #38912	@ tmp170,
	mov	r0, #1	@ D.37930,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r1, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L290:
	movw	r6, #38908	@ tmp144,
	bl	vfmw_dprint_nothing	@
	movw	r7, #38904	@ tmp148,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r8, #0	@ tmp151,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r8, [r4, r7]	@ tmp151, <variable>.CodecInfo.FwdFsID
	str	r8, [r4, r6]	@ tmp151, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetNullLogicFs	@
	add	r1, r4, #38912	@, pCtx,
	add	r1, r1, #40	@,,
	str	r0, [r4, r7]	@ D.37928, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r6]	@ D.37928, <variable>.CodecInfo.BwdFsID
	movw	r0, #11373	@ tmp158,
	strb	r8, [r4, r0]	@ tmp151, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r8	@ D.37930, tmp151
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L291:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.37930, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_GetImageBuffer, .-Real9_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL9DEC_Decode
	.type	REAL9DEC_Decode, %function
REAL9DEC_Decode:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #212
	sub	sp, sp, #212	@,,
	add	r7, sp, #48	@ tmp736,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #128	@,
	mov	r1, #0	@,
	mov	r0, r7	@, tmp736
	bl	memset	@
	movw	ip, #37668	@ tmp235,
	ldr	r2, [r4, ip]	@ D.38676, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth
	movw	r3, #37672	@ tmp238,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight
	movw	r0, #37676	@ tmp236,
	movw	ip, #37564	@ tmp246,
	cmp	r5, #0	@ pPacket,
	str	r2, [r4, r0]	@ D.38676, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth_prev
	movw	r1, #37680	@ tmp237,
	mov	r0, #1	@ tmp247,
	add	r6, r4, #37376	@ pPictureHeader, pCtx,
	str	r0, [r4, ip]	@ tmp247, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #37592	@ tmp248,
	str	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp249,
	str	r2, [sp, #156]	@ D.38676, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp249, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [sp, #160]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r0, [sp, #52]	@ tmp247, TmpPictureHeader.Fid
	str	r1, [sp, #80]	@ tmp249, TmpPictureHeader.m_uTRWrap
	str	r2, [sp, #164]	@ D.38676, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r3, [sp, #168]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	beq	.L388	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11348	@,
	str	r0, [sp, #28]	@, %sfp
	bl	__memzero	@
	movw	r1, #38768	@ tmp253,
	mov	r8, #0	@ tmp254,
	str	r8, [r4, r1]	@ tmp254, <variable>.CodecInfo.BsOffset
	movw	r2, #38788	@ tmp255,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #38772	@ tmp257,
	movw	r1, #11360	@ tmp259,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #38776	@ tmp261,
	ldr	r0, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11364	@ tmp262,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ D.38699, <variable>.LenInByte
	str	r2, [r4, ip]	@ D.38699, <variable>.CodecInfo.BsLength
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L295	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #38780	@ tmp266,
	movw	r0, #11368	@ tmp268,
	movw	r1, #38784	@ tmp270,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11365	@ tmp272,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r0, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L389	@,
	sub	r1, r2, #10	@ tmp291, D.38699,
	movw	r3, #:lower16:3145717	@ tmp292,
	movt	r3, #:upper16:3145717	@ tmp292,
	cmp	r1, r3	@ tmp291, tmp292
	bhi	.L297	@,
.L391:
	movw	lr, #11360	@ tmp293,
	ldr	r1, [r4, lr]	@ D.38722, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.38722,
	beq	.L297	@,
	add	fp, r4, #38912	@, pCtx,
	str	fp, [sp, #32]	@, %sfp
	add	r5, fp, #8	@ pBs,,
	movw	fp, #37740	@ tmp295,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ D.38725,
	add	r0, r0, #1	@ D.38727, D.38725,
	str	r0, [r4, fp]	@ D.38727, <variable>.CodecInfo.TotalSliceNum
	bhi	.L297	@,
	cmp	r0, #0	@ D.38727,
	addeq	r8, r4, #37632	@, pCtx,
	streq	r8, [sp, #36]	@, %sfp
	beq	.L299	@,
	add	sl, r4, #37632	@, pCtx,
	movw	r9, #:lower16:3145727	@ tmp758,
	str	sl, [sp, #36]	@, %sfp
	add	r8, sl, #112	@ ivtmp.1388,,
	movt	r9, #:upper16:3145727	@ tmp758,
	mov	sl, #0	@ i.1398,
	b	.L300	@
.L390:
	ldr	r0, [r4, fp]	@ D.38728, <variable>.CodecInfo.TotalSliceNum
	cmp	r0, sl	@ D.38728, i.1398
	bls	.L299	@,
.L300:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	sl, sl, #1	@ i.1398, i.1398,
	bl	Real9_CB_GetBits	@
	and	r2, r0, #65280	@ tmp300, SliceByteOffset,
	mov	r3, r0, asl #24	@ tmp298, SliceByteOffset,
	orr	r1, r3, r0, lsr #24	@, tmp299, tmp298, SliceByteOffset,
	and	r0, r0, #16711680	@ tmp303, SliceByteOffset,
	orr	ip, r1, r2, asl #8	@, tmp302, tmp299, tmp300,
	orr	r2, ip, r0, lsr #8	@, D.38744, tmp302, tmp303,
	str	r2, [r8, #0]	@ D.38744, <variable>.CodecInfo.SliceByteOffset
	cmp	r2, r9	@ D.38744, tmp758
	add	r8, r8, #4	@ ivtmp.1388, ivtmp.1388,
	ble	.L390	@,
.L297:
	mov	r0, #0	@ D.38682,
.L294:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L389:
	movw	r6, #39304	@ tmp276,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@ D.38682, tmp254
	b	.L294	@
.L295:
	movw	r1, #38784	@ tmp286,
	movw	r3, #:lower16:3145717	@ tmp292,
	str	r8, [r4, r1]	@ tmp254, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145717	@ tmp292,
	sub	r1, r2, #10	@ tmp291, D.38699,
	movw	ip, #11365	@ tmp288,
	cmp	r1, r3	@ tmp291, tmp292
	movw	r0, #38780	@ tmp282,
	movw	lr, #11368	@ tmp284,
	strb	r8, [r4, ip]	@ tmp254, <variable>.CodecInfo.IsLastSeg1
	str	r8, [r4, r0]	@ tmp254, <variable>.CodecInfo.BsPhyAddr1
	str	r8, [r4, lr]	@ tmp254, <variable>.CodecInfo.BsVirAddr1
	bls	.L391	@,
	b	.L297	@
.L388:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38682, pPacket
	b	.L294	@
.L299:
	ldr	lr, [sp, #36]	@, %sfp
	sub	sl, r0, #1	@ pretmp.1355, D.38728,
	tst	sl, #1	@ pretmp.1355,
	mov	r2, #0	@ i,
	add	r9, lr, #116	@ ivtmp.1382,,
	mov	r3, r9	@ ivtmp.1474, ivtmp.1382
	beq	.L301	@,
	cmp	r2, sl	@ i, pretmp.1355
	bcs	.L377	@,
	ldr	ip, [r9, #0]	@ D.38750, <variable>.CodecInfo.SliceByteOffset
	ldr	lr, [r9, #-4]	@ D.38745, <variable>.CodecInfo.SliceByteOffset
	ldr	r2, [sp, #36]	@, %sfp
	cmp	ip, lr	@ D.38750, D.38745
	add	r3, r2, #120	@ ivtmp.1474,,
	mov	r2, #1	@ i,
	bgt	.L301	@,
	b	.L297	@
.L302:
	ldr	r8, [r3, #0]	@ D.38750, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r3, #-4]	@ D.38745, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, ip	@ D.38750, D.38745
	ble	.L297	@,
	ldr	lr, [r3, #4]	@ D.38750, <variable>.CodecInfo.SliceByteOffset
	add	r3, r1, #4	@ ivtmp.1474, tmp763,
	ldr	r1, [r1, #-4]	@ D.38745, <variable>.CodecInfo.SliceByteOffset
	cmp	lr, r1	@ D.38750, D.38745
	ble	.L297	@,
.L301:
	cmp	r2, sl	@ i, pretmp.1355
	add	r8, r2, #1	@ tmp762, i,
	add	r2, r8, #1	@ i, tmp762,
	add	r1, r3, #4	@ tmp763, ivtmp.1474,
	bcc	.L302	@,
.L377:
	movw	fp, #37744	@ tmp309,
	mov	r0, r0, asl #3	@ tmp308, D.38728,
	ldr	sl, [r4, fp]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	fp, r0, #1	@ PrevHeaderBytes, tmp308,
	add	sl, fp, sl	@ PrevOffsetBytes, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	fp, #3145728	@ PrevHeaderBytes,
	cmplt	sl, #3145728	@, PrevOffsetBytes,
	movlt	r8, #0	@, tmp319
	movge	r8, #1	@, tmp319
	bge	.L297	@,
	cmp	sl, #0	@ PrevOffsetBytes,
	ble	.L297	@,
	movw	r2, #38776	@ tmp320,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, sl, r1	@ D.38765, PrevOffsetBytes, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.38765,
	ble	.L297	@,
	movw	r3, #11360	@ tmp322,
	mov	r0, r5	@, pBs
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	add	r1, sl, lr	@, PrevOffsetBytes, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, r7	@, tmp736
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L386	@,
	movw	r0, #11376	@ tmp326,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	ip, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L382	@,
	movw	lr, #37584	@ tmp328,
	ldr	r1, [sp, #72]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r1, r2	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L306	@,
.L382:
	ldr	r3, [r4, #0]	@ prephitmp.1359, <variable>.pstExtraData
.L305:
	ldr	r3, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L392	@,
.L309:
	movw	r3, #:lower16:g_event_report	@ tmp369,
	movt	r3, #:upper16:g_event_report	@ tmp369,
	ldr	r3, [r3, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L316	@,
	movw	r1, #37584	@ tmp371,
	movw	r8, #37580	@ tmp373,
	ldrh	r0, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	r1, #39304	@ tmp378,
	ldrh	r2, [sp, #68]	@, TmpPictureHeader.pic_height_in_mb
	ldrh	lr, [sp, #72]	@, TmpPictureHeader.pic_width_in_mb
	strh	r0, [sp, #176]	@ movhi	@, para
	ldrh	ip, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [sp, #182]	@ movhi	@, para
	add	r2, sp, #176	@,,
	strh	lr, [sp, #180]	@ movhi	@, para
	strh	ip, [sp, #178]	@ movhi	@, para
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #2	@,
	blx	r3	@ g_event_report
.L316:
	movw	lr, #38908	@ tmp384,
	movw	r8, #39304	@ tmp382,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	lr, [sp, #20]	@,
	bl	FSP_ClearLogicFs	@
	movw	r2, #38904	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #32]	@, %sfp
	movw	r0, #38904	@,
	mov	ip, #0	@ tmp391,
	add	r1, r3, #40	@,,
	str	r1, [sp, #32]	@, %sfp
	str	ip, [r4, r0]	@ tmp391, <variable>.CodecInfo.FwdFsID
	ldr	r2, [sp, #20]	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	ip, [r4, r2]	@ tmp391, <variable>.CodecInfo.BwdFsID
	str	ip, [sp, #16]	@,
	str	r2, [sp, #20]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r3, #38904	@,
	movw	ip, #11373	@ tmp398,
	str	r0, [r4, r3]	@ D.38822, <variable>.CodecInfo.FwdFsID
	ldr	r1, [sp, #16]	@,
	strb	r1, [r4, ip]	@ tmp391, <variable>.CodecInfo.RefNum
	ldr	r2, [sp, #20]	@,
	ldr	r1, [sp, #32]	@, %sfp
	str	r0, [r4, r2]	@ D.38822, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #72]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L387	@,
	ldr	ip, [sp, #68]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	ip, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L387	@,
	ldr	r3, [r4, #0]	@ temp.1426, <variable>.pstExtraData
	ldr	r8, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r8, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L319	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L393	@,
.L319:
	movw	r2, #39304	@ tmp410,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L320	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L321	@,
	movw	r0, #39308	@ tmp414,
	ldr	r8, [r4, r0]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r8, #1	@ <variable>.DSDNeedClearQue,
	beq	.L321	@,
.L320:
	bl	vfmw_dprint_nothing	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r7	@, tmp736
	bl	Real9_ArrangeVHBMem	@
	subs	r8, r0, #0	@ D.38843,
	beq	.L386	@,
.L308:
	mov	r1, r7	@, tmp736
	mov	r2, #128	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #11372	@ tmp421,
	mov	r0, r4	@, pCtx
	ldr	r7, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r7, [r4, r1]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real9_GetImageBuffer	@
	subs	r7, r0, #0	@ D.38848,
	beq	.L394	@,
	movw	r2, #39304	@ tmp425,
	mov	r8, #38912	@ tmp426,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	str	r2, [sp, #16]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [sp, #16]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L323	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r0, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [r2, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r0, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [lr, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r0, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r0, #0	@ tmp442,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r1, #0	@,
	ldr	r2, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [lr, #56]	@ tmp442, <variable>.pstExtraData,
	str	r3, [sp, #16]	@,
	bl	vfmw_dprint_nothing	@
	movw	ip, #37568	@ tmp443,
	ldr	r3, [sp, #16]	@,
	ldr	r2, [r4, ip]	@ D.38863, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r2, #2	@ D.38863,
	beq	.L395	@,
	cmp	r2, #1	@ D.38863,
	beq	.L396	@,
	movw	r7, #11373	@ tmp448,
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r8, #0	@ <variable>.CodecInfo.RefNum,
	moveq	r2, #1	@ iftmp.541,
	bne	.L327	@,
.L328:
	movw	r8, #38904	@ tmp452,
	movw	r7, #38908	@ tmp453,
	ldr	r3, [r4, r8]	@ prephitmp.1357, <variable>.CodecInfo.FwdFsID
	movw	r0, #11373	@ tmp450,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r2, [r4, r0]	@ iftmp.541, <variable>.CodecInfo.RefNum
	cmp	r3, lr	@ prephitmp.1357, <variable>.CodecInfo.BwdFsID
	beq	.L329	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #39304	@ tmp455,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r7]	@ prephitmp.1357, <variable>.CodecInfo.BwdFsID
.L329:
	mov	lr, #38912	@ tmp460,
	movw	ip, #38908	@ tmp459,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movw	r8, #38904	@ tmp458,
	movw	r7, #39304	@ tmp462,
	str	r3, [r4, r8]	@ prephitmp.1357, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	str	r1, [r4, ip]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
.L330:
	movw	r8, #39304	@ tmp470,
	mov	r7, #38912	@ tmp471,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	ip, #38904	@ tmp473,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #38908	@ tmp475,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r3, r0	@ pFwd,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r3, [sp, #16]	@,
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #16]	@,
	cmp	r7, #0	@ pCur,
	cmpne	r3, #0	@, pFwd,
	mov	r8, r0	@ pBwd,
	beq	.L387	@,
	cmp	r0, #0	@ pBwd,
	beq	.L387	@,
	ldr	r2, [r7, #408]	@ D.38891, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38891,
	beq	.L333	@,
	ldr	lr, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L333	@,
	ldr	r1, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L333	@,
	ldr	ip, [r0, #408]	@ D.38897, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.38897,
	ldrne	r2, [ip, #12]	@ iftmp.545, <variable>.PhyAddr
	ldreq	r2, [r2, #12]	@ iftmp.545, <variable>.PhyAddr
	str	r2, [r4, #52]	@ iftmp.545, <variable>.Rv9DecParam.BwdRefPhyAddr
	ldr	r2, [r3, #408]	@ D.38904, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38904,
	ldreq	r2, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [r2, #12]	@ iftmp.546, <variable>.PhyAddr
	str	r0, [r4, #56]	@ iftmp.546, <variable>.Rv9DecParam.FwdRefPhyAddr
	ldr	lr, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #60]	@ <variable>.PhyAddr, <variable>.Rv9DecParam.CurPicPhyAddr
	ldr	ip, [r7, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	ip, [r4, #80]	@ <variable>.PmvAddr, <variable>.Rv9DecParam.CurrPmvPhyAddr
	ldr	r2, [r8, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [r4, #84]	@ <variable>.PmvAddr, <variable>.Rv9DecParam.ColPmvPhyAddr
	ldr	r0, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, #64]	@ <variable>.PhyAddr, <variable>.Rv9DecParam.DispFramePhyAddr
	str	r3, [sp, #16]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #37568	@ tmp501,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r2, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	movw	r3, #38876	@ tmp496,
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	r2, [r4, #68]	@ <variable>.Stride, <variable>.Rv9DecParam.DDRStride
	ldr	r0, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [r0, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r4, r3]	@ <variable>.Stride, <variable>.CodecInfo.ddr_stride
	ldr	ip, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r2, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r2, [r4, #72]	@ <variable>.ChromOffset, <variable>.Rv9DecParam.uv_offset
	ldr	r3, [sp, #16]	@,
	beq	.L397	@,
.L339:
	movw	r8, #37596	@ tmp523,
	movw	lr, #37608	@ tmp525,
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r0, #37584	@ tmp528,
	sub	r1, r0, #4	@ tmp530, tmp530,
	movw	r8, #38832	@ tmp534,
	movw	r2, #37568	@ tmp526,
	str	r3, [r7, #428]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	add	r7, r1, #1248	@ tmp532, tmp532,
	ldr	ip, [r4, lr]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	movw	r3, #37732	@ tmp536,
	movw	lr, #37736	@ tmp538,
	ldr	r2, [r4, r2]	@ D.39208, <variable>.CodecInfo.PictureHeader.PicCodType
	str	ip, [sp, #32]	@, %sfp
	cmp	r2, #2	@ D.39208,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	ip, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	str	r0, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	mov	r0, r5	@, pBs
	str	r7, [r4, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	strb	r2, [r4, #9]	@ D.39208, <variable>.Rv9DecParam.PicCodingType
	str	r1, [r4, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	lr, [r4, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	r8, [r4, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	ldr	lr, [sp, #32]	@, %sfp
	strne	lr, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	lr, [r4, #28]	@, <variable>.Rv9DecParam.PQUANT
	bl	BsPos	@
	movw	ip, #37708	@ tmp541,
	add	r2, ip, #32	@ tmp544, tmp544,
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r0, r0, #-2147483641	@ tmp542,,
	submi	r0, r0, #1	@ tmp767, tmp542,
	mvnmi	r0, r0, asl #29	@ tmp768, tmp767,
	mvnmi	r0, r0, lsr #29	@ tmp768, tmp768,
	addmi	r0, r0, #1	@ tmp542, tmp768,
	cmp	r7, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r0, [r4, ip]	@ tmp542, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L398	@,
	movw	lr, #37748	@ tmp554,
	sub	ip, lr, #4	@ tmp555, tmp555,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L384:
	rsb	lr, r3, r7	@ tmp556, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r7, #37712	@ tmp559,
	mov	r8, lr, asl #3	@ D.38962, tmp556,
	bl	BsPos	@
	movw	ip, #38772	@ tmp561,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	add	sl, sl, r1	@ D.38968, PrevOffsetBytes, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r8	@ tmp560,, D.38962
	str	r0, [r4, r7]	@ tmp560, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	str	ip, [sp, #20]	@,
	bl	BsPos	@
	movw	r3, #37612	@ tmp575,
	ldr	r8, [r4, r3]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r2, #37740	@ tmp590,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	movw	r2, #37604	@ tmp577,
	movw	ip, #37708	@ tmp581,
	str	r8, [r4, #116]	@, <variable>.osvquant
	movw	r8, #37712	@ tmp583,
	ldr	r3, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	str	r3, [r4, #112]	@, <variable>.dblk_filter_passthrough
	add	r7, r0, #7	@ tmp565, D.38969,
	cmp	r0, #0	@ D.38969,
	movlt	r0, r7	@ D.38969, tmp565
	ldr	r7, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	cmp	r1, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r7, [r4, #104]	@, <variable>.StreamLength
	add	r7, sl, r0, asr #3	@, D.38972, D.38968, D.38969,
	ldr	r2, [sp, #32]	@, %sfp
	movw	r0, #37688	@ tmp574,
	add	r1, r0, #4	@ tmp576, tmp576,
	str	r2, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r2, #37696	@ tmp578,
	ldr	r3, [r4, #116]	@, <variable>.osvquant
	add	r0, r2, #28	@ tmp570, tmp570,
	str	r3, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.osvquant
	add	r1, r0, #4	@ tmp572, tmp572,
	ldr	r8, [r4, #112]	@, <variable>.dblk_filter_passthrough
	mov	r3, #0	@ tmp569,
	str	r3, [r4, r0]	@ tmp569, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r3, [r4, r1]	@ tmp569, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r8, [r4, r2]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	sub	r2, r1, #28	@ tmp579, tmp579,
	movw	r1, #37716	@,
	mov	r8, #1	@ tmp589,
	str	r3, [r4, r2]	@ tmp569, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r7, [r4, #88]	@ D.38972, <variable>.StreamPhyAddr
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r3, [r4, #124]	@ tmp569, <variable>.first_mb_in_slice
	str	r0, [r4, #96]	@, <variable>.StreamBitOffset
	str	r7, [r4, r1]	@ D.38972, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	r7, #37720	@,
	str	r3, [r4, r7]	@ tmp569, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r3, [r4, #92]	@ tmp569, <variable>.StreamPhyAddr
	str	r3, [r4, #100]	@ tmp569, <variable>.StreamBitOffset
	str	r3, [r4, #108]	@ tmp569, <variable>.StreamLength
	ldr	r2, [sp, #32]	@, %sfp
	str	r8, [r4, #40]	@ tmp589, <variable>.Rv9DecParam.TotalSliceNum
	str	r2, [r4, #120]	@, <variable>.sliceqp
	bls	.L349	@,
	movw	r2, #37748	@ tmp592,
	movw	r3, #:lower16:3145727	@ tmp594,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movt	r3, #:upper16:3145727	@ tmp594,
	add	r7, fp, ip	@ PrevOffsetBytes.1409, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	r7, r3	@ PrevOffsetBytes.1409, tmp594
	bgt	.L351	@,
	cmp	r7, #0	@ PrevOffsetBytes.1409,
	ble	.L351	@,
	movw	sl, #38776	@ tmp595,
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r1	@ temp.1432, PrevOffsetBytes.1409, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1432,
	strgt	r8, [sp, #36]	@ i.1427, %sfp
	bgt	.L354	@,
	b	.L351	@
.L355:
	movw	r7, #37740	@,
	add	r8, r8, #1	@ i.1427, i.1427,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	r2, r8	@ <variable>.CodecInfo.TotalSliceNum, i.1427
	bls	.L349	@,
	ldr	r7, [r9, #4]	@ tmp597, <variable>.CodecInfo.SliceByteOffset
	movw	r0, #:lower16:3145727	@,
	movt	r0, #:upper16:3145727	@,
	add	r7, fp, r7	@ PrevOffsetBytes.1409, PrevHeaderBytes, tmp597
	cmp	r7, r0	@ PrevOffsetBytes.1409,
	bgt	.L351	@,
	cmp	r7, #0	@ PrevOffsetBytes.1409,
	ble	.L351	@,
	ldr	lr, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	add	r9, r9, #4	@ ivtmp.1382, ivtmp.1382,
	rsb	r2, r7, lr	@ temp.1432, PrevOffsetBytes.1409, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1432,
	ble	.L351	@,
.L354:
	movw	r0, #11360	@,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r7, r1	@, PrevOffsetBytes.1409, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	add	r2, sp, #204	@,,
	add	r3, sp, #200	@,,
	add	ip, sp, #196	@,,
	str	r6, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L355	@,
	movw	lr, #37584	@,
	ldr	r2, [sp, #204]	@, iSliceMBA
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [sp, #44]	@, %sfp
	beq	.L399	@,
	ldr	r3, [sp, #196]	@ iSQUANT.555, iSQUANT
	mov	r0, r5	@, pBs
	ldr	lr, [sp, #32]	@, %sfp
	cmp	r3, #0	@ iSQUANT.555,
	movge	lr, r3	@, iSQUANT.555
	str	lr, [sp, #32]	@, %sfp
	bl	BsPos	@
	movw	ip, #37740	@,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	sub	r1, r3, #1	@ D.38754, <variable>.CodecInfo.TotalSliceNum,
	cmp	r1, r8	@ D.38754, i.1427
	mov	r2, r0, asr #31	@ tmp616, D.38990,
	mov	ip, r2, lsr #29	@ tmp617, tmp616,
	add	r1, r0, ip	@ tmp618, D.38990, tmp617
	and	r1, r1, #7	@ tmp619, tmp618,
	rsb	r0, ip, r1	@ tmp620, tmp617, tmp619
	movw	r1, #37708	@,
	str	r0, [r4, r1]	@ tmp620, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L400	@,
	cmp	r8, #254	@ i.1427,
	bhi	.L387	@,
	ldr	r2, [r9, #4]	@ tmp633, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r9, #0]	@ tmp634, <variable>.CodecInfo.SliceByteOffset
.L385:
	rsb	r3, r3, r2	@ tmp632, tmp634, tmp633
	mov	lr, r3, asl #3	@ D.39004, tmp632,
	str	lr, [sp, #16]	@,
	bl	BsPos	@
	ldr	ip, [sp, #16]	@,
	movw	r1, #37712	@ tmp635,
	rsb	r2, r0, ip	@ tmp636,, D.39004
	movw	r0, #38772	@,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, pBs
	str	r2, [r4, r1]	@ tmp636, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r2, #0	@ tmp645,
	add	ip, r7, r3	@ temp.1500, PrevOffsetBytes.1409, <variable>.CodecInfo.BsPhyAddr
	str	r2, [sp, #20]	@,
	str	ip, [sp, #24]	@,
	bl	BsPos	@
	movw	ip, #37612	@ tmp651,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r7, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r2, #37604	@ tmp653,
	mov	r3, #44	@ tmp658,
	mla	r3, r3, r1, r4	@ tmp659, tmp658,, pCtx
	str	r7, [sp, #40]	@, %sfp
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r7, #37724	@ tmp646,
	movw	r2, #37728	@ tmp648,
	str	r1, [sp, #12]	@, %sfp
	add	ip, r0, #7	@ tmp641, D.39008,
	cmp	r0, #0	@ D.39008,
	movlt	r0, ip	@ D.39008, tmp641
	ldr	ip, [sp, #20]	@,
	str	ip, [r4, r2]	@ tmp645, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	ip, [r4, r7]	@ tmp645, <variable>.CodecInfo.SliceHeader.bit_len_1
	ldr	r1, [sp, #24]	@,
	ldr	r7, [sp, #32]	@, %sfp
	add	r2, r1, r0, asr #3	@, D.39011, temp.1500, D.39008,
	movw	r0, #37688	@ tmp650,
	str	r7, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r7, #37692	@,
	ldr	r1, [sp, #36]	@, %sfp
	add	r0, r1, #1	@ tmp713,,
	ldr	r1, [sp, #40]	@, %sfp
	str	r1, [r4, r7]	@, <variable>.CodecInfo.SliceHeader.osvquant
	movw	r1, #37696	@ tmp654,
	ldr	r7, [sp, #12]	@, %sfp
	str	r7, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	movw	r1, #37700	@,
	ldr	r7, [sp, #44]	@, %sfp
	str	r0, [sp, #36]	@ tmp713, %sfp
	str	r7, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	movw	r7, #37716	@,
	ldr	r1, [sp, #36]	@, %sfp
	str	r2, [r4, r7]	@ D.39011, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	r7, #37708	@,
	cmp	r1, #131	@,
	movw	r1, #37720	@,
	str	ip, [r4, r1]	@ tmp645, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	r1, #37712	@ tmp673,
	str	r2, [r3, #88]	@ D.39011, <variable>.StreamPhyAddr
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r2, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r7, [sp, #44]	@, %sfp
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r7, [r3, #124]	@, <variable>.first_mb_in_slice
	ldr	r7, [sp, #12]	@, %sfp
	str	r2, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r7, [r3, #112]	@, <variable>.dblk_filter_passthrough
	ldr	r2, [sp, #40]	@, %sfp
	str	r2, [r3, #116]	@, <variable>.osvquant
	str	ip, [r3, #92]	@ tmp645, <variable>.StreamPhyAddr
	str	ip, [r3, #100]	@ tmp645, <variable>.StreamBitOffset
	str	ip, [r3, #108]	@ tmp645, <variable>.StreamLength
	ldr	r1, [sp, #32]	@, %sfp
	str	r1, [r3, #120]	@, <variable>.sliceqp
	str	r0, [r4, #40]	@ tmp713, <variable>.Rv9DecParam.TotalSliceNum
	bls	.L355	@,
	mov	r0, r4	@, pCtx
	str	ip, [sp, #20]	@,
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L401	@,
	ldr	r7, [sp, #28]	@, %sfp
	str	r7, [r4, #4]	@, <variable>.pRv9DecParam
	b	.L355	@
.L306:
	movw	r0, #37580	@ tmp331,
	ldr	ip, [sp, #68]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	ip, r3	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L382	@,
	ldr	r3, [r4, #0]	@ prephitmp.1359, <variable>.pstExtraData
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L308	@,
	b	.L305	@
.L386:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.38682, D.38843
	b	.L294	@
.L387:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38682,
	b	.L294	@
.L394:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38682, D.38848
	b	.L294	@
.L392:
	movw	lr, #38904	@ tmp339,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #0	@ tmp336,
	str	r3, [sp, #16]	@,
	str	r2, [sp, #184]	@ tmp336, RefNum
	str	r2, [sp, #192]	@ tmp336, NewNum
	str	r2, [sp, #188]	@ tmp336, ReadNum
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L297	@,
	movw	r8, #38908	@ tmp340,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L297	@,
	movw	lr, #39304	@ tmp341,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r2, [sp, #16]	@,
	movw	r3, #39304	@ tmp344,
	add	r1, sp, #184	@,,
	cmp	r0, #0	@ pImage
	strne	r2, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	add	r2, sp, #188	@,,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #192	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #37584	@ tmp348,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, ip, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L311	@,
	movw	r1, #37580	@ tmp352,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r0, ip, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L311	@,
	ldr	lr, [sp, #188]	@ ReadNum, ReadNum
	ldr	ip, [sp, #192]	@ NewNum, NewNum
	add	r2, ip, lr	@ tmp356, NewNum, ReadNum
	cmp	r2, #0	@ tmp356,
	ble	.L312	@,
.L314:
	mov	lr, #1	@ tmp364,
	mov	r0, #0	@ D.38682,
	str	lr, [r3, #728]	@ tmp364, <variable>.s32DSDWaitFlag
	b	.L294	@
.L393:
	movw	r3, #11376	@ tmp408,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L320	@,
.L321:
	ldr	r0, [sp, #32]	@, %sfp
	bl	ResetVoQueue	@
	b	.L320	@
.L351:
	mov	ip, #38912	@ tmp604,
	add	r3, ip, #392	@ tmp603, tmp603,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38682,
	b	.L294	@
.L400:
	add	r0, r3, #9408	@ tmp626, <variable>.CodecInfo.TotalSliceNum,
	ldr	r2, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	add	r1, r0, #27	@ tmp626, tmp626,
	mov	r0, r5	@, pBs
	rsb	r2, fp, r2	@ tmp624, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r4, r1, asl #2]	@ tmp629, <variable>.CodecInfo.SliceByteOffset
	b	.L385	@
.L311:
	ldr	r1, [sp, #192]	@ NewNum, NewNum
	cmp	r1, #0	@ NewNum,
	bgt	.L314	@,
	ldr	r2, [sp, #188]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L314	@,
	movw	r8, #39308	@ tmp365,
	mov	ip, #0	@ tmp366,
	str	ip, [r4, r8]	@ tmp366, <variable>.DSDNeedClearQue
.L313:
	mov	r0, #0	@ tmp368,
	str	r0, [r3, #728]	@ tmp368, <variable>.s32DSDWaitFlag
	b	.L309	@
.L396:
	movw	r3, #11373	@ tmp446,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L297	@,
.L327:
	mov	r2, #2	@ iftmp.541,
	b	.L328	@
.L395:
	movw	r0, #11373	@ tmp466,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L330	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38682,
	b	.L294	@
.L398:
	movw	r0, #38776	@ tmp546,
	movw	r1, #37744	@ tmp549,
	ldr	r7, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, fp, r7	@ tmp547, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	b	.L384	@
.L397:
	movw	r1, #37596	@ tmp503,
	ldr	r2, [r3, #428]	@ D.38925, <variable>.TR
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	r8, [r8, #428]	@ <variable>.TR, <variable>.TR
	subs	r3, r3, r2	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.38925
	rsb	r8, r2, r8	@ trd, D.38925, <variable>.TR
	movwmi	r2, #37592	@ tmp506,
	ldrmi	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r3, r3, r2	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r8, #0	@ trd,
	movwlt	r2, #37592	@ tmp508,
	ldrlt	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r8, r8, r2	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, r8	@ trb, trd
	movgt	r3, #0	@ trb,
	cmp	r8, #0	@ trd,
	movle	r0, #0	@ prephitmp.1523,
	movle	r2, r0	@ prephitmp.1522, prephitmp.1523
	ble	.L344	@,
	mov	r0, r3, asl #14	@, trb,
	mov	r1, r8	@, trd
	str	r3, [sp, #16]	@,
	bl	__aeabi_idiv	@
	ldr	ip, [sp, #16]	@,
	mov	r1, r8	@, trd
	mov	r2, r0	@ prephitmp.1522,
	rsb	r0, ip, r8	@ tmp514, trb, trd
	str	r2, [sp, #24]	@,
	mov	r0, r0, asl #14	@, tmp514,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #16]	@,
	ldr	r2, [sp, #24]	@,
.L344:
	movw	r1, #38820	@ tmp519,
	str	r3, [r4, r1]	@ trb, <variable>.CodecInfo.trb
	movw	r3, #38824	@ tmp520,
	str	r8, [r4, r3]	@ trd, <variable>.CodecInfo.trd
	add	r8, r3, #4	@ tmp521, tmp521,
	add	lr, r8, #4	@ tmp522, tmp522,
	str	r2, [r4, r8]	@ prephitmp.1522, <variable>.CodecInfo.Ratio0
	str	r0, [r4, lr]	@ prephitmp.1523, <variable>.CodecInfo.Ratio1
	b	.L339	@
.L333:
	mov	r0, #38912	@ tmp486,
	add	r3, r0, #392	@ tmp485, tmp485,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38682,
	b	.L294	@
.L349:
	ldr	r5, [r4, #4]	@ <variable>.pRv9DecParam, <variable>.pRv9DecParam
	mov	r6, #1	@ tmp718,
	str	r6, [r4, #44]	@ tmp718, <variable>.Rv9DecParam.FstSlcGrp
	cmp	r5, #0	@ <variable>.pRv9DecParam,
	beq	.L402	@,
.L363:
	ldr	r3, [r4, #0]	@ temp.1509, <variable>.pstExtraData
	ldr	r2, [r3, #708]	@ D.39024, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.39024,
	beq	.L403	@,
	cmp	r2, #2	@ D.39024,
	beq	.L404	@,
.L366:
	ldr	ip, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r3, #11352	@ tmp733,
	mov	r0, #1	@ D.38682,
	str	ip, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Rv9DecParam.Compress_en
	b	.L294	@
.L323:
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.38682, pImg
	b	.L294	@
.L312:
	movw	r0, #39308	@ tmp360,
	mov	r8, #1	@ tmp361,
	str	r8, [r4, r0]	@ tmp361, <variable>.DSDNeedClearQue
	b	.L313	@
.L399:
	mov	r2, #38912	@ tmp614,
	movw	ip, #39304	@ tmp613,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r0	@, found_ssc
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r3, [sp, #16]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #16]	@,
	mov	r0, r3	@ D.38682, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L294	@
.L401:
	mov	r0, #38912	@ tmp715,
	add	ip, r0, #392	@ tmp714, tmp714,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [sp, #20]	@,
	mov	r0, r1	@ D.38682, tmp645
	b	.L294	@
.L404:
	ldr	r0, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L366	@,
	ldr	r2, [r4, #4]	@ temp.1512, <variable>.pRv9DecParam
	cmp	r2, #0	@ temp.1512,
	beq	.L366	@,
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	lr, #2	@ <variable>.PicCodingType,
	bne	.L366	@,
	movw	r1, #39304	@ tmp729,
	sub	lr, r1, #392	@ tmp730, tmp730,
	mov	r5, #0	@ tmp728,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, tmp728
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp728, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1516, <variable>.pstExtraData
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	ldr	r2, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp732, <variable>.stDisParams.s32DisNums,
	str	ip, [r3, #712]	@ tmp732, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r5	@ D.38682, tmp728
	b	.L294	@
.L403:
	ldr	r2, [r4, #4]	@ temp.1510, <variable>.pRv9DecParam
	cmp	r2, #0	@ temp.1510,
	beq	.L366	@,
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r1, #2	@ <variable>.PicCodingType,
	bne	.L366	@,
	movw	r2, #39304	@ tmp724,
	sub	ip, r2, #392	@ tmp725, tmp725,
	mov	r5, #0	@ tmp723,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r5	@, tmp723
	str	r5, [r4, #4]	@ tmp723, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r5	@ D.38682, tmp723
	b	.L294	@
.L402:
	mov	r0, r4	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, r6	@,
	ldreq	r8, [sp, #28]	@, %sfp
	streq	r8, [r4, #4]	@, <variable>.pRv9DecParam
	beq	.L363	@,
	mov	r3, #38912	@ tmp721,
	add	lr, r3, #392	@ tmp720, tmp720,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r6	@, tmp718
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r5	@ D.38682, <variable>.pRv9DecParam
	b	.L294	@
	.fnend
	.size	REAL9DEC_Decode, .-REAL9DEC_Decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	MBA_FieldWidth, %object
	.size	MBA_FieldWidth, 24
MBA_FieldWidth:
	.word	6
	.word	7
	.word	9
	.word	11
	.word	13
	.word	14
	.type	gs_VLCDecodeTable, %object
	.size	gs_VLCDecodeTable, 256
gs_VLCDecodeTable:
	.byte	-128
	.byte	-127
	.byte	112
	.byte	112
	.byte	-126
	.byte	-125
	.byte	113
	.byte	113
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	-124
	.byte	-123
	.byte	114
	.byte	114
	.byte	-122
	.byte	-121
	.byte	115
	.byte	115
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	-120
	.byte	-119
	.byte	116
	.byte	116
	.byte	-118
	.byte	-117
	.byte	117
	.byte	117
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	-116
	.byte	-115
	.byte	118
	.byte	118
	.byte	-114
	.byte	-113
	.byte	119
	.byte	119
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.type	C.506.38103, %object
	.size	C.506.38103, 32
C.506.38103:
	.word	160
	.word	176
	.word	240
	.word	320
	.word	352
	.word	640
	.word	704
	.word	0
	.type	C.507.38104, %object
	.size	C.507.38104, 32
C.507.38104:
	.word	120
	.word	132
	.word	144
	.word	240
	.word	288
	.word	480
	.word	0
	.word	0
	.type	C.508.38105, %object
	.size	C.508.38105, 16
C.508.38105:
	.word	180
	.word	360
	.word	576
	.word	0
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
