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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.o
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
	.global	Real9_CB_SetDimensions
	.type	Real9_CB_SetDimensions, %function
Real9_CB_SetDimensions:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]	@ D.35177, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35177,
	beq	.L21	@,
	cmp	r3, #176	@ D.35177,
	beq	.L22	@,
	cmp	r3, #352	@ D.35177,
	bne	.L7	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35177,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35198, tmp154,
	mov	r2, r1, lsr #4	@ D.35200, tmp155,
	str	r3, [r0, #76]	@ D.35198, <variable>.Rv9ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35198, D.35200
	str	r2, [r0, #72]	@ D.35200, <variable>.Rv9ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.512, tmp157,
	cmp	r3, #47	@ prephitmp.512,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.512,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.512,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.512,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.512,
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
	cmp	r3, #704	@ D.35177,
	bne	.L24	@,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #76]	@ tmp149, <variable>.Rv9ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.512,
	str	r2, [r0, #72]	@ tmp150, <variable>.Rv9ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #72]	@ tmp147, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.512,
	str	r1, [r0, #76]	@ tmp146, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35177,
	ldr	r2, [r0, #12]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #72]	@ tmp153, <variable>.Rv9ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.512,
	str	r1, [r0, #76]	@ tmp152, <variable>.Rv9ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real9_CB_SetDimensions, .-Real9_CB_SetDimensions
	.align	2
	.global	RV9_RecordVFMWState
	.type	RV9_RecordVFMWState, %function
RV9_RecordVFMWState:
	.fnstart
.LFB1609:
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
.LFB1610:
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
.LFB1611:
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
.LFB1612:
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
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r3, [r0, #124]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.35625, <variable>.Rv9DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.35626, <variable>.Rv9DecParam.PicHeightInMb
	bne	.L35	@,
	mul	r1, r1, r3	@ tmp199, D.35625, D.35626
	ldr	r2, [r0, #40]	@ temp.739, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.739,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L36	@,
	sub	r4, r2, #1	@ prephitmp.641, temp.739,
	cmp	r4, #1	@ prephitmp.641,
	bls	.L41	@,
	ldr	r3, [r0, #168]	@ temp.712, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.712,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.712
	ble	.L35	@,
	tst	r2, #1	@ temp.739,
	mov	r3, r0	@ ivtmp.710, pCtx
	mov	ip, #1	@ i.711,
	bne	.L39	@,
	ldr	r3, [r0, #212]	@ D.35639, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.711,
	cmp	r3, #0	@ D.35639,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.35639
	add	r3, r0, #44	@ ivtmp.710, pCtx,
	bgt	.L39	@,
.L35:
	mov	r0, #0	@ D.35632,
.L57:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L36:
	moveq	r4, #1	@ prephitmp.641,
	bne	.L42	@,
.L41:
	tst	r4, #1	@ prephitmp.641,
	mov	r3, r0	@ ivtmp.703, pCtx
	mov	ip, #0	@ i,
	beq	.L38	@,
	cmp	r4, #0	@ prephitmp.641,
	bls	.L93	@,
	ldr	r6, [r0, #124]	@ temp.713, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #168]	@ D.35646, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.703, pCtx,
	cmp	r6, r5	@ temp.713, D.35646
	bge	.L35	@,
	cmp	r4, ip	@ prephitmp.641, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.703,
	bls	.L93	@,
.L45:
	ldr	r7, [r3, #124]	@ temp.713, <variable>.first_mb_in_slice
	ldr	r6, [r3, #168]	@ D.35646, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.703, ivtmp.703,
	cmp	r7, r6	@ temp.713, D.35646
	bge	.L35	@,
	ldr	r6, [r5, #168]	@ D.35646, <variable>.first_mb_in_slice
	ldr	r5, [r5, #124]	@ temp.713, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.713, D.35646
	bge	.L35	@,
.L38:
	cmp	r4, ip	@ prephitmp.641, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.703,
	bhi	.L45	@,
.L93:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.641, pCtx
	ldr	r3, [r4, #124]	@ D.35651, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.35651,
	ble	.L35	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.35651
	blt	.L35	@,
.L42:
	cmp	r2, #0	@ temp.739,
	beq	.L95	@,
	mov	r6, #0	@ i.738,
	mov	ip, r0	@ ivtmp.720, pCtx
	mov	r3, r0	@ ivtmp.696, pCtx
	mov	r4, r6	@ i.718, i.738
	b	.L48	@
.L97:
	cmp	r5, #0	@ temp.717,
	blt	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.717
	blt	.L35	@,
	cmp	r2, #0	@ TotalMbnMinus1.716,
	blt	.L35	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.716
	blt	.L35	@,
	ldr	r2, [r0, #40]	@ temp.739, <variable>.Rv9DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.739, i.718
	bls	.L96	@,
.L48:
	sub	r2, r2, #1	@ tmp205, temp.739,
	ldr	r5, [r3, #124]	@ temp.717, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.738, tmp205
	add	r4, r4, #1	@ i.718, i.718,
	streq	r1, [r3, #128]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #168]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.716, TotalMbnMinus1
	mov	r6, r4	@ i.738, i.718
	subne	r2, r2, #1	@ TotalMbnMinus1.716, <variable>.first_mb_in_slice,
	strne	r2, [r3, #128]	@ TotalMbnMinus1.716, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.717, TotalMbnMinus1.716
	add	r3, r3, #44	@ ivtmp.696, ivtmp.696,
	ble	.L97	@,
	b	.L35	@
.L40:
	ldr	r5, [r3, #212]	@ D.35639, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.710, ivtmp.710,
	cmp	r5, #0	@ D.35639,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.35639
	ble	.L35	@,
	ldr	r5, [r6, #212]	@ D.35639, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.35639,
	ble	.L35	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.35639
	ble	.L35	@,
.L39:
	add	ip, ip, #1	@ tmp261, i.711,
	add	r6, r3, #44	@ tmp260, ivtmp.710,
	cmp	r4, ip	@ prephitmp.641, tmp261
	add	ip, ip, #1	@ i.711, tmp261,
	bhi	.L40	@,
	b	.L41	@
.L96:
	cmp	r2, #0	@ temp.739,
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L49	@,
	tst	r2, #1	@ temp.739,
	mov	r5, r3	@ stream_base_addr.740, stream_base_addr
	mov	r4, #0	@ i.719,
	bne	.L52	@,
	mov	r1, r3	@ stream_base_addr.725, stream_base_addr
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.740
	bcs	.L67	@,
	ldr	r5, [r0, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L67	@,
.L68:
	add	ip, r0, #44	@ ivtmp.720, pCtx,
	mov	r4, #1	@ i.719,
	ldr	r5, [ip, #88]	@ stream_base_addr.740, <variable>.StreamPhyAddr
.L52:
	cmp	r5, r3	@ stream_base_addr.740, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.725, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.719,
	add	r1, ip, #44	@ tmp252, ivtmp.720,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.725
	bcs	.L50	@,
.L98:
	ldr	ip, [ip, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L50	@,
.L51:
	cmp	r4, r2	@ tmp251, temp.739
	beq	.L49	@,
	ldr	ip, [r1, #88]	@ stream_base_addr.740, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.740, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.725, stream_base_addr
	ldr	r3, [r1, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.725
	bcs	.L70	@,
	ldr	r5, [r1, #108]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L70	@,
	add	ip, r1, #44	@ ivtmp.720, tmp252,
	add	r4, r4, #1	@ i.719, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.740, <variable>.StreamPhyAddr
.L99:
	cmp	r5, r3	@ stream_base_addr.740, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.725, stream_base_addr
	ldr	r3, [ip, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.719,
	add	r1, ip, #44	@ tmp252, ivtmp.720,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.725
	bcc	.L98	@,
.L50:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.725
	b	.L51	@
.L70:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.725
	add	ip, r1, #44	@ ivtmp.720, tmp252,
	add	r4, r4, #1	@ i.719, tmp251,
	ldr	r5, [ip, #88]	@ stream_base_addr.740, <variable>.StreamPhyAddr
	b	.L99	@
.L67:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.725
	b	.L68	@
.L95:
	ldr	r3, [r0, #88]	@ stream_base_addr, <variable>.StreamPhyAddr
.L49:
	cmp	r2, #0	@ temp.739,
	bic	r4, r3, #15	@ prephitmp.645, stream_base_addr,
	str	r4, [r0, #48]	@ prephitmp.645, <variable>.Rv9DecParam.StreamBaseAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.739,
	mov	r3, r0	@ ivtmp.669, pCtx
	mov	r1, #0	@ i.714,
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
	rsb	r3, r4, r3	@ BytePos1, prephitmp.645, tmp287
	rsb	r4, r4, ip	@ BytePos0.728, prephitmp.645, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.728,
	bic	r4, r4, #15	@ tmp280, BytePos0.728,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #88]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #96]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #100]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #92]	@ tmp290, <variable>.StreamPhyAddr
.L90:
	mov	r1, #1	@ i.714,
	add	r3, r0, #44	@ ivtmp.669, pCtx,
	ldr	r4, [r0, #48]	@ prephitmp.645, <variable>.Rv9DecParam.StreamBaseAddr
	b	.L56	@
.L100:
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.645, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #88]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #96]	@ tmp218, <variable>.StreamBitOffset
.L55:
	add	r1, r1, #1	@ tmp246, i.714,
	add	r3, r3, #44	@ tmp247, ivtmp.669,
	cmp	r1, r2	@ tmp246, temp.739
	bcs	.L53	@,
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #48]	@ prephitmp.645, <variable>.Rv9DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L63	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.645, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #88]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #96]	@ tmp334, <variable>.StreamBitOffset
.L91:
	ldr	r4, [r0, #48]	@ prephitmp.645, <variable>.Rv9DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.714, tmp246,
	add	r3, r3, #44	@ ivtmp.669, tmp247,
.L56:
	ldr	ip, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L100	@,
	ldr	r6, [r3, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.728, prephitmp.645, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.728,
	bic	r4, r4, #15	@ tmp223, BytePos0.728,
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
	rsb	r4, r4, r6	@ BytePos0.728, prephitmp.645, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.728,
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r4, r4, #15	@ tmp310, BytePos0.728,
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
	mov	r0, #1	@ D.35632,
	b	.L57	@
.L89:
	ldr	r5, [r0, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.645, tmp298
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
.LFB1621:
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
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #39304	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36304,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36307,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36307,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	REAL9DEC_GetImageBuffer, .-REAL9DEC_GetImageBuffer
	.align	2
	.global	REAL9DEC_RecycleImage
	.type	REAL9DEC_RecycleImage, %function
REAL9DEC_RecycleImage:
	.fnstart
.LFB1617:
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
.LFB1614:
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
	cmn	r0, #1	@ D.35717,
	str	r0, [r4, r1]	@ D.35717, <variable>.ChanID
	movne	r0, r7	@ D.35722, tmp148
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, r7	@, tmp148
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35722,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	REAL9DEC_Init, .-REAL9DEC_Init
	.align	2
	.global	Real9_SetImgFormat
	.type	Real9_SetImgFormat, %function
Real9_SetImgFormat:
	.fnstart
.LFB1608:
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
	and	r3, r2, #3	@ D.35511, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #37576	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.35511,
	str	r3, [r4, #136]	@ D.35511, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.35511, <variable>.top_fld_type
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
	ldr	r2, [r4, #172]	@ D.35519, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.35519,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.35519
	mul	r1, r1, lr	@ D.35525, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.35525, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.35525
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.35519
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
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r6, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r0, #22	@,
	mov	r2, r1	@, ErrRatio
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #39304	@ tmp146,
	mov	r3, #38912	@ tmp148,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L121	@,
	movw	lr, #37568	@ tmp151,
	movw	r2, #11374	@ tmp150,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	ip, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp157, Mb0QpInCurrPic,
	movwne	ip, #37736	@ tmp156,
	strne	r6, [r4, ip]	@ tmp157, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.495,
	blt	.L124	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.495,
.L124:
	str	r5, [r0, #180]	@ iftmp.495, <variable>.error_level
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real9_SetImgFormat	@
	movw	r3, #11372	@ tmp159,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L127	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #1	@ <variable>.s32DecOrderOutput,
	beq	.L127	@,
	movw	r0, #37568	@ tmp165,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	lr, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L127	@,
	movw	ip, #11373	@ tmp167,
	movw	lr, #38916	@ tmp174,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r3, #38904	@ tmp169,
	mvnls	r1, #0	@ prephitmp.878,
	ldrhi	r1, [r4, r3]	@ prephitmp.878,
	cmn	r1, #1	@ prephitmp.878,
	str	r1, [r4, lr]	@ prephitmp.878, <variable>.CodecInfo.ToQueFsID
	beq	.L131	@,
.L135:
	movw	r5, #39304	@ tmp175,
	movw	r6, #38916	@ tmp177,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36286, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36286
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36286
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r0	@ D.36291,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
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
	movw	ip, #38804	@ tmp193,
	mov	r0, #1	@ D.36254,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp196, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp196, <variable>.CodecInfo.FrmCnt
.L121:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L127:
	mov	r2, #38912	@ tmp173,
	movw	lr, #38916	@ tmp174,
	ldr	r1, [r4, r2]	@ prephitmp.878,
	cmn	r1, #1	@ prephitmp.878,
	str	r1, [r4, lr]	@ prephitmp.878, <variable>.CodecInfo.ToQueFsID
	bne	.L135	@,
	b	.L131	@
.L134:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36254,
	b	.L121	@
	.fnend
	.size	REAL9DEC_VDMPostProc, .-REAL9DEC_VDMPostProc
	.align	2
	.global	REAL9DEC_GetRemainImg
	.type	REAL9DEC_GetRemainImg, %function
REAL9DEC_GetRemainImg:
	.fnstart
.LFB1618:
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
.LFB1615:
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
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r8, r0, #7	@ tmp142, D.35258,
	cmp	r0, #0	@ D.35258,
	movlt	r0, r8	@ D.35258, tmp142
	mov	r8, r0, asr #3	@ tmp143, D.35258,
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
	mov	r0, #1	@ D.35263,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L158:
	mov	r0, #0	@ D.35263,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_CB_FindNextSliceStartCode, .-Real9_CB_FindNextSliceStartCode
	.align	2
	.global	Real9_CB_GetVLCBits
	.type	Real9_CB_GetVLCBits, %function
Real9_CB_GetVLCBits:
	.fnstart
.LFB1599:
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
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #1	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r4, r0	@ D.35000,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.35000
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Real9_CB_Get1Bit, .-Real9_CB_Get1Bit
	.align	2
	.global	Real9_CB_GetBits
	.type	Real9_CB_GetBits, %function
Real9_CB_GetBits:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ nBits, nBits
	bl	BsShow	@
	mov	r1, r5	@, nBits
	mov	r4, r0	@ D.34994,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34994
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_GetBits, .-Real9_CB_GetBits
	.align	2
	.global	Real9_CB_GetPicSize
	.type	Real9_CB_GetPicSize, %function
Real9_CB_GetPicSize:
	.fnstart
.LFB1604:
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
	mov	r3, r0	@ code.1074,
	add	r0, ip, r0, asl #2	@, tmp167,, code.1074,
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
	cmp	r0, #255	@ code.1073,
	add	r5, r5, r0, asl #2	@, w, w, code.1073,
	bne	.L184	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1073,
	add	r5, r5, r0, asl #2	@, w, w, code.1073,
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
	mov	r6, r3, asl #1	@ code.1075, code.1074,
	bl	Real9_CB_Get1Bit	@
	add	r2, sp, #88	@,,
	orr	r6, r0, r6	@ code.1076,, code.1075
	and	r3, r6, #3	@ tmp169, code.1076,
	add	r1, r2, r3, asl #2	@, tmp172,, tmp169,
	ldr	r6, [r1, #-16]	@ h, code_height2
	cmp	r6, #0	@ h,
	bne	.L186	@,
.L189:
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1078,
	add	r6, r6, r0, asl #2	@, h, h, code.1078,
	bne	.L186	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ code.1078,
	add	r6, r6, r0, asl #2	@, h, h, code.1078,
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
.LFB1606:
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
	mov	r4, #1	@ D.35291,
.L212:
	mov	r0, r4	@, D.35291
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L223:
	cmp	r1, #0	@ bFirstSlice,
	ldrne	r0, [r4, #88]	@ prephitmp.1094, <variable>.Rv9ParsePicParam.mba
	bne	.L202	@,
	ldr	sl, [r4, #88]	@ D.35285, <variable>.Rv9ParsePicParam.mba
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L203	@,
	cmn	sl, #1	@ D.35285,
	movne	sl, #0	@, D.37019
	moveq	sl, #1	@, D.37019
	cmp	sl, #0	@ D.37019,
	beq	.L204	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #84]	@, <variable>.Rv9ParsePicParam.ptype
.L205:
	mov	r0, r6	@, pBs
	mov	r1, #5	@,
	bl	Real9_CB_GetBits	@
	uxtb	r0, r0	@ D.35301,
	strb	r0, [r4, #66]	@ D.35301, <variable>.Rv9ParsePicParam.pquant
	cmp	r0, #31	@ D.35301,
	bls	.L225	@,
.L203:
	mov	r4, #0	@ D.35291,
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
	cmp	r0, #31	@ D.35358,
	str	r0, [r8, #0]	@ D.35358,* iSQUANT
	bgt	.L203	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	Real9_CB_GetBits	@
	str	r0, [r4, #52]	@, <variable>.OSVQUANT
	mov	r0, r6	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.35364,
	mov	r4, r0	@ D.35364,
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
	subs	r9, r0, #0	@ D.35308,
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
	cmp	sl, #0	@ D.37019,
	strb	r2, [r4, #65]	@ tmp171, <variable>.Rv9ParsePicParam.deblocking_filter_passthrough
	beq	.L206	@,
	mov	r0, r6	@, pBs
	mov	r1, #13	@,
	bl	Real9_CB_GetBits	@
	ldr	r3, [r4, #84]	@ <variable>.Rv9ParsePicParam.ptype, <variable>.Rv9ParsePicParam.ptype
	cmp	r3, #1	@ <variable>.Rv9ParsePicParam.ptype,
	strls	r9, [r4, #120]	@ D.35308, <variable>.Rv9ParsePicParam.pheight_prev
	strls	r9, [r4, #116]	@ D.35308, <variable>.Rv9ParsePicParam.pwidth_prev
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
	str	r0, [r4, #88]	@ prephitmp.1094, <variable>.Rv9ParsePicParam.mba
.L202:
	str	r0, [r5, #0]	@ prephitmp.1094,* iSliceMBA
	mov	ip, #0	@ tmp184,
	ldrb	r3, [r4, #66]	@ zero_extendqisi2	@ <variable>.Rv9ParsePicParam.pquant, <variable>.Rv9ParsePicParam.pquant
	mov	r4, #1	@ D.35291,
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
	mov	r4, #0	@ D.35291,
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
	mov	r4, #0	@ D.35291,
	b	.L212	@
	.fnend
	.size	Real9_CB_GetSliceHeader, .-Real9_CB_GetSliceHeader
	.align	2
	.global	Real9_CB_GetCPFMT
	.type	Real9_CB_GetCPFMT, %function
Real9_CB_GetCPFMT:
	.fnstart
.LFB1602:
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
	cmp	r0, #1	@ D.35157,
	mov	r6, r0	@ D.35157,
	movne	r6, #0	@ D.35160,
	beq	.L230	@,
	mov	r0, r6	@, D.35160
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L230:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real9_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #12]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35160
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_GetCPFMT, .-Real9_CB_GetCPFMT
	.align	2
	.global	Real9_CB_GetPictureHeader
	.type	Real9_CB_GetPictureHeader, %function
Real9_CB_GetPictureHeader:
	.fnstart
.LFB1607:
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
	mov	r2, r0, lsr #4	@ D.35466, tmp197,
	str	r2, [r4, #24]	@ D.35466, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.35468, tmp199,
	str	lr, [r4, #20]	@ D.35468, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp201, D.35466, D.35468
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
	cmp	r0, r3	@ D.35421, tmp171
	mov	r5, r0	@ D.35421,
	beq	.L252	@,
.L242:
	mvn	r5, #1	@ Status,
	b	.L249	@
.L252:
	mov	r0, r6	@, pBs
	mov	r1, #16	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, r5	@, D.35421
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
	cmp	r0, #1	@ length.1170,
	streq	r0, [r4, #8]	@ length.1170, <variable>.PicCodType
	beq	.L246	@,
	cmp	r0, #3	@ length.1170,
	bne	.L247	@,
	ldr	r2, [sp, #8]	@ info, info
	cmp	r2, #1	@ info,
	moveq	r2, #0	@ tmp189,
	streq	r2, [r4, #8]	@ tmp189, <variable>.PicCodType
	bne	.L242	@,
.L246:
	ldr	r3, [r4, #16]	@ prephitmp.1157, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1157,
	beq	.L253	@,
.L248:
	sub	r1, r3, #48	@ tmp192, prephitmp.1157,
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
	cmp	r0, #5	@ length.1170,
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
	ldr	r3, [r4, #16]	@ prephitmp.1157, <variable>.pic_width_in_pixel
	b	.L248	@
	.fnend
	.size	Real9_CB_GetPictureHeader, .-Real9_CB_GetPictureHeader
	.align	2
	.global	Real9_ArrangeVHBMem
	.type	Real9_ArrangeVHBMem, %function
Real9_ArrangeVHBMem:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #24]	@ D.35082, <variable>.pic_width_in_mb
	.pad #48
	sub	sp, sp, #48	@,,
	cmp	r1, #1	@ D.35082,
	ldrls	r3, [r2, #20]	@ prephitmp.1192, <variable>.pic_height_in_mb
	bls	.L256	@,
	ldr	r3, [r2, #20]	@ prephitmp.1192, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1192,
	bls	.L256	@,
	ldr	r1, [r4, #0]	@ D.35089, <variable>.pstExtraData
	ldr	r3, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L259	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L281	@,
.L260:
	ldr	r6, [r2, #12]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1194,
	ldr	r5, [r2, #16]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L267:
	add	r7, sp, #8	@ tmp200,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp200
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp175,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #39304	@ tmp186,
	strb	r3, [sp, #10]	@ tmp175, FspInstCfg.s32RprEnable
	strb	r2, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #15]	@ prephitmp.1194, FspInstCfg.s32ExpectedDispFsNum
	cmp	r0, #24	@ <variable>.eCapLevel,
	uxtbne	r3, sl	@ iftmp.435, DecFsNum
	strb	r3, [sp, #13]	@ iftmp.435, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp200
	uxtbne	r9, r9	@ iftmp.436, PmvNum
	mov	r7, #0	@ tmp184,
	moveq	r9, #1	@ iftmp.436,
	strb	r7, [sp, #12]	@ tmp184, FspInstCfg.s32UserDec
	strb	r9, [sp, #16]	@ iftmp.436, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.35138,
	movne	r0, r7	@ D.35086, tmp184
	beq	.L282	@,
.L258:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L259:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L260	@,
	ldr	r5, [r2, #16]	@ temp.1216, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #568]	@ D.35097, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1216, D.35097
	bhi	.L283	@,
	ldr	r3, [r2, #12]	@ prephitmp.1198, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #572]	@ prephitmp.1196, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1198, prephitmp.1196
	bhi	.L270	@,
	ldr	r6, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L273	@,
	add	r9, sl, #1	@ PmvNum.1220, DecFsNum,
	cmp	r9, #17	@ PmvNum.1220,
	movge	r9, #17	@ PmvNum,
.L273:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1194, <variable>.stChanOption.s32DisplayFrameNum
	mov	r6, r3	@ PicHeight, prephitmp.1198
	b	.L267	@
.L256:
	mov	r2, r1	@, D.35082
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L258	@
.L282:
	ldr	lr, [r4, #0]	@ temp.1229, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L284	@,
	mov	ip, #1	@ tmp196,
	movw	r1, #11376	@ tmp195,
	mov	r0, ip	@ D.35086, tmp196
	strb	ip, [r4, r1]	@ tmp196, <variable>.CodecInfo.Imgbuf_allocated
	b	.L258	@
.L281:
	ldr	r0, [r2, #16]	@ D.35096, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35096, PicWidth
	bhi	.L285	@,
	ldr	r3, [r2, #12]	@ prephitmp.1202, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1202, PicHeight
	bhi	.L262	@,
	movw	r2, #11376	@ tmp163,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L258	@,
	ldr	r7, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L266	@,
	add	r9, sl, #1	@ PmvNum.1213, DecFsNum,
	cmp	r9, #17	@ PmvNum.1213,
	movge	r9, #17	@ PmvNum,
.L266:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1194, <variable>.stChanOption.s32DisplayFrameNum
	b	.L267	@
.L283:
	ldr	lr, [r1, #572]	@ prephitmp.1196, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1198, <variable>.pic_height_in_pixel
.L270:
	mov	r2, r5	@, temp.1216
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L258	@
.L285:
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ prephitmp.1202, <variable>.pic_height_in_pixel
.L262:
	mov	r2, r0	@, D.35096
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L258	@
.L284:
	mov	r0, r5	@, D.35138
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35086, D.35138
	b	.L258	@
	.fnend
	.size	Real9_ArrangeVHBMem, .-Real9_ArrangeVHBMem
	.align	2
	.global	Real9_GetImageBuffer
	.type	Real9_GetImageBuffer, %function
Real9_GetImageBuffer:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #39304	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	mov	r6, #38912	@ tmp144,
	cmp	r0, #0	@ D.35033,
	mov	r1, r0	@ D.35033,
	str	r0, [r4, r6]	@ D.35033, <variable>.CodecInfo.CurFsID
	blt	.L293	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L294	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.35048, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35048,
	beq	.L290	@,
	ldr	r3, [r5, #412]	@ D.35051, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35051,
	beq	.L290	@,
	ldr	r0, [r5, #416]	@ D.35054, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35054,
	beq	.L290	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC10	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L290:
	mov	lr, #38912	@ tmp179,
	mov	r0, #1	@ D.35042,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L288:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L293:
	movw	r7, #38908	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	movw	r8, #38904	@ tmp152,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, #0	@ tmp155,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, r8]	@ tmp155, <variable>.CodecInfo.FwdFsID
	str	r6, [r4, r7]	@ tmp155, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	movw	r3, #11373	@ tmp162,
	add	r1, r4, #38912	@, pCtx,
	strb	r6, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, r8]	@ D.35040, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35040, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r6	@ D.35042, tmp155
	b	.L288	@
.L294:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #554	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35042, pLf
	b	.L288	@
	.fnend
	.size	Real9_GetImageBuffer, .-Real9_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL9DEC_Decode
	.type	REAL9DEC_Decode, %function
REAL9DEC_Decode:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #228
	sub	sp, sp, #228	@,,
	add	r7, sp, #64	@ tmp764,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #128	@,
	mov	r1, #0	@,
	mov	r0, r7	@, tmp764
	bl	memset	@
	movw	r3, #37672	@ tmp244,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight
	movw	ip, #37668	@ tmp241,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth
	movw	r0, #37680	@ tmp243,
	movw	ip, #37564	@ tmp254,
	cmp	r5, #0	@ pPacket,
	movw	r1, #37676	@ tmp240,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight_prev
	add	r6, r4, #37376	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp255,
	str	r0, [r4, ip]	@ tmp255, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #37592	@ tmp256,
	str	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp257,
	str	r2, [sp, #172]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp257, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [sp, #176]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r1, [sp, #96]	@ tmp257, TmpPictureHeader.m_uTRWrap
	str	r2, [sp, #180]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pwidth, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r3, [sp, #184]	@ <variable>.CodecInfo.PictureHeader.Rv9ParsePicParam.pheight, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	str	r0, [sp, #68]	@ tmp255, TmpPictureHeader.Fid
	beq	.L392	@,
	add	r0, r4, #8	@, pCtx,
	movw	r1, #11348	@,
	str	r0, [sp, #36]	@, %sfp
	bl	__memzero	@
	movw	r0, #38768	@ tmp264,
	mov	r8, #0	@ tmp265,
	str	r8, [r4, r0]	@ tmp265, <variable>.CodecInfo.BsOffset
	movw	r2, #38788	@ tmp266,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #38772	@ tmp268,
	movw	r0, #11360	@ tmp270,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #38776	@ tmp272,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11364	@ tmp273,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ D.35824, <variable>.LenInByte
	str	r2, [r4, ip]	@ D.35824, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L298	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #38780	@ tmp277,
	movw	r1, #11368	@ tmp279,
	movw	r0, #38784	@ tmp281,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11365	@ tmp283,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L393	@,
	sub	r0, r2, #10	@ tmp302, D.35824,
	movw	r3, #:lower16:3145717	@ tmp303,
	movt	r3, #:upper16:3145717	@ tmp303,
	cmp	r0, r3	@ tmp302, tmp303
	bhi	.L300	@,
.L395:
	movw	lr, #11360	@ tmp304,
	ldr	r1, [r4, lr]	@ D.35847, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.35847,
	beq	.L300	@,
	add	fp, r4, #38912	@, pCtx,
	str	fp, [sp, #40]	@, %sfp
	add	r5, fp, #8	@ pBs,,
	movw	fp, #37740	@ tmp306,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real9_CB_GetBits	@
	cmp	r0, #255	@ D.35850,
	add	r0, r0, #1	@ D.35852, D.35850,
	str	r0, [r4, fp]	@ D.35852, <variable>.CodecInfo.TotalSliceNum
	bhi	.L300	@,
	cmp	r0, #0	@ D.35852,
	addeq	r8, r4, #37632	@, pCtx,
	streq	r8, [sp, #52]	@, %sfp
	beq	.L302	@,
	add	sl, r4, #37632	@, pCtx,
	movw	r9, #:lower16:3145727	@ tmp783,
	str	sl, [sp, #52]	@, %sfp
	add	r8, sl, #112	@ ivtmp.1336,,
	movt	r9, #:upper16:3145727	@ tmp783,
	mov	sl, #0	@ i.1347,
	b	.L303	@
.L394:
	ldr	r0, [r4, fp]	@ D.35853, <variable>.CodecInfo.TotalSliceNum
	cmp	r0, sl	@ D.35853, i.1347
	bls	.L302	@,
.L303:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	sl, sl, #1	@ i.1347, i.1347,
	bl	Real9_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp309, SliceByteOffset,
	and	r2, r0, #65280	@ tmp311, SliceByteOffset,
	orr	r3, r1, r0, lsr #24	@, tmp310, tmp309, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp314, SliceByteOffset,
	orr	ip, r3, r2, asl #8	@, tmp313, tmp310, tmp311,
	orr	r2, ip, r1, lsr #8	@, D.35869, tmp313, tmp314,
	str	r2, [r8, #0]	@ D.35869, <variable>.CodecInfo.SliceByteOffset
	cmp	r2, r9	@ D.35869, tmp783
	add	r8, r8, #4	@ ivtmp.1336, ivtmp.1336,
	ble	.L394	@,
.L300:
	mov	r0, #0	@ D.35807,
.L297:
	add	sp, sp, #228	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L393:
	movw	r6, #39304	@ tmp287,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@ D.35807, tmp265
	b	.L297	@
.L298:
	movw	r0, #38784	@ tmp297,
	movw	r3, #:lower16:3145717	@ tmp303,
	str	r8, [r4, r0]	@ tmp265, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145717	@ tmp303,
	sub	r0, r2, #10	@ tmp302, D.35824,
	movw	ip, #11365	@ tmp299,
	cmp	r0, r3	@ tmp302, tmp303
	movw	r1, #38780	@ tmp293,
	movw	lr, #11368	@ tmp295,
	strb	r8, [r4, ip]	@ tmp265, <variable>.CodecInfo.IsLastSeg1
	str	r8, [r4, r1]	@ tmp265, <variable>.CodecInfo.BsPhyAddr1
	str	r8, [r4, lr]	@ tmp265, <variable>.CodecInfo.BsVirAddr1
	bls	.L395	@,
	b	.L300	@
.L392:
	movw	lr, #38804	@ tmp262,
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35807, pPacket
	b	.L297	@
.L302:
	ldr	fp, [sp, #52]	@, %sfp
	sub	sl, r0, #1	@ pretmp.1301, D.35853,
	tst	sl, #1	@ pretmp.1301,
	mov	r2, #0	@ i,
	add	r9, fp, #116	@ ivtmp.1330,,
	mov	r3, r9	@ ivtmp.1424, ivtmp.1330
	beq	.L304	@,
	cmp	r2, sl	@ i, pretmp.1301
	bcs	.L382	@,
	ldr	r1, [r9, #0]	@ D.35875, <variable>.CodecInfo.SliceByteOffset
	mov	r2, #1	@ i,
	ldr	lr, [r9, #-4]	@ D.35870, <variable>.CodecInfo.SliceByteOffset
	ldr	fp, [sp, #52]	@, %sfp
	cmp	r1, lr	@ D.35875, D.35870
	add	r3, fp, #120	@ ivtmp.1424,,
	bgt	.L304	@,
	b	.L300	@
.L305:
	ldr	r8, [r3, #0]	@ D.35875, <variable>.CodecInfo.SliceByteOffset
	ldr	lr, [r3, #-4]	@ D.35870, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, lr	@ D.35875, D.35870
	ble	.L300	@,
	ldr	ip, [r3, #4]	@ D.35875, <variable>.CodecInfo.SliceByteOffset
	add	r3, r1, #4	@ ivtmp.1424, tmp788,
	ldr	lr, [r1, #-4]	@ D.35870, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.35875, D.35870
	ble	.L300	@,
.L304:
	cmp	r2, sl	@ i, pretmp.1301
	add	r8, r2, #1	@ tmp787, i,
	add	r2, r8, #1	@ i, tmp787,
	add	r1, r3, #4	@ tmp788, ivtmp.1424,
	bcc	.L305	@,
.L382:
	movw	r3, #37744	@ tmp320,
	mov	ip, r0, asl #3	@ tmp319, D.35853,
	ldr	sl, [r4, r3]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r0, ip, #1	@, tmp319,
	str	r0, [sp, #20]	@, %sfp
	add	sl, r0, sl	@,, <variable>.CodecInfo.SliceByteOffset
	str	sl, [sp, #60]	@, %sfp
	cmp	r0, #3145728	@,
	cmplt	sl, #3145728	@,,
	movlt	r8, #0	@, tmp330
	movge	r8, #1	@, tmp330
	bge	.L300	@,
	cmp	sl, #0	@,
	ble	.L300	@,
	movw	r1, #38776	@ tmp331,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, sl, r2	@ D.35890,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.35890,
	ble	.L300	@,
	movw	r0, #11360	@ tmp333,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, sl, lr	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, r7	@, tmp764
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L396	@,
	movw	r3, #11376	@ tmp338,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	ip, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L387	@,
	movw	lr, #37584	@ tmp340,
	ldr	r2, [sp, #88]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r2, r1	@ TmpPictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	beq	.L309	@,
.L387:
	ldr	r3, [r4, #0]	@ prephitmp.1305, <variable>.pstExtraData
.L308:
	ldr	r3, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L397	@,
.L312:
	movw	r3, #:lower16:g_event_report	@ tmp381,
	movt	r3, #:upper16:g_event_report	@ tmp381,
	ldr	r3, [r3, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L319	@,
	movw	lr, #37584	@ tmp383,
	movw	ip, #37580	@ tmp385,
	ldrh	sl, [r4, lr]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	movw	fp, #39304	@ tmp390,
	ldrh	r0, [sp, #88]	@, TmpPictureHeader.pic_width_in_mb
	mov	r1, #2	@,
	ldrh	r8, [sp, #84]	@, TmpPictureHeader.pic_height_in_mb
	strh	sl, [sp, #192]	@ movhi	@, para
	ldrh	r2, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r0, [sp, #196]	@ movhi	@, para
	strh	r8, [sp, #198]	@ movhi	@, para
	strh	r2, [sp, #194]	@ movhi	@, para
	add	r2, sp, #192	@,,
	ldr	r0, [r4, fp]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L319:
	movw	r8, #39304	@ tmp394,
	movw	sl, #38908	@ tmp396,
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	movw	fp, #38904	@ tmp400,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	str	sl, [sp, #24]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r4, fp]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [sp, #40]	@, %sfp
	mov	r3, #0	@ tmp403,
	str	r3, [r4, fp]	@ tmp403, <variable>.CodecInfo.FwdFsID
	ldr	ip, [sp, #24]	@,
	add	sl, r0, #40	@ D.35949,,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r3, [r4, ip]	@ tmp403, <variable>.CodecInfo.BwdFsID
	str	r3, [sp, #28]	@,
	str	ip, [sp, #24]	@,
	bl	FSP_GetNullLogicFs	@
	movw	r1, #11373	@ tmp410,
	str	r0, [r4, fp]	@ D.35948, <variable>.CodecInfo.FwdFsID
	ldr	r2, [sp, #28]	@,
	strb	r2, [r4, r1]	@ tmp403, <variable>.CodecInfo.RefNum
	mov	r1, sl	@, D.35949
	ldr	r3, [sp, #24]	@,
	str	r0, [r4, r3]	@ D.35948, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #88]	@ prephitmp.1370, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.1370,
	ldrhi	r3, [sp, #84]	@ prephitmp.1307, TmpPictureHeader.pic_height_in_mb
	bhi	.L321	@,
	ldr	r3, [sp, #84]	@ prephitmp.1307, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1307,
	bhi	.L321	@,
	ldr	r1, [r4, #0]	@ temp.1371, <variable>.pstExtraData
	ldr	r8, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r8, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L323	@,
	ldr	lr, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	beq	.L398	@,
.L323:
	movw	r2, #39304	@ tmp421,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L388	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L326	@,
	movw	lr, #39308	@ tmp425,
	ldr	r8, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r8, #1	@ <variable>.DSDNeedClearQue,
	beq	.L326	@,
.L388:
	ldr	r2, [sp, #88]	@ prephitmp.1370, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #84]	@ prephitmp.1307, TmpPictureHeader.pic_height_in_mb
.L324:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r7	@, tmp764
	bl	Real9_ArrangeVHBMem	@
	subs	r8, r0, #0	@ D.35971,
	beq	.L399	@,
.L311:
	mov	r1, r7	@, tmp764
	mov	r2, #128	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #11372	@ tmp434,
	mov	r0, r4	@, pCtx
	ldr	r7, [ip, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r7, [r4, r1]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real9_GetImageBuffer	@
	subs	r7, r0, #0	@ D.35977,
	beq	.L400	@,
	movw	r2, #39304	@ tmp440,
	mov	r8, #38912	@ tmp441,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	str	r2, [sp, #24]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [sp, #24]	@,
	subs	r7, r0, #0	@ pImg,
	beq	.L328	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r7, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r7, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r7, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp457,
	ldr	fp, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	sl, [fp, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	sl, [r7, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r7, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	fp, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	sl, [fp, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	sl, [r7, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r3, #0	@,
	str	lr, [r7, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	fp, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [fp, #56]	@ tmp457, <variable>.pstExtraData,
	ldrd	sl, [r7, #16]	@, pImg,
	strd	sl, [sp, #40]	@,,
	ldrd	sl, [sp, #40]	@,,
	ldrd	r2, [r7, #8]	@ <variable>.PTS, pImg,
	str	ip, [sp, #24]	@,
	strd	sl, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #37568	@ tmp461,
	ldr	ip, [sp, #24]	@,
	ldr	r3, [r4, r0]	@ D.35996, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.35996,
	beq	.L401	@,
	cmp	r3, #1	@ D.35996,
	beq	.L402	@,
	movw	r8, #11373	@ tmp466,
	ldrb	r3, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	addeq	r3, r3, #1	@ iftmp.474, iftmp.474,
	bne	.L332	@,
.L333:
	movw	r8, #38904	@ tmp470,
	movw	r7, #38908	@ tmp471,
	ldr	r2, [r4, r8]	@ prephitmp.1303, <variable>.CodecInfo.FwdFsID
	movw	r0, #11373	@ tmp468,
	ldr	lr, [r4, r7]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r3, [r4, r0]	@ iftmp.474, <variable>.CodecInfo.RefNum
	cmp	r2, lr	@ prephitmp.1303, <variable>.CodecInfo.BwdFsID
	beq	.L334	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	movw	r2, #39304	@ tmp474,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r7]	@ prephitmp.1303, <variable>.CodecInfo.BwdFsID
.L334:
	mov	r7, #38912	@ tmp479,
	movw	ip, #38904	@ tmp477,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movw	sl, #39304	@ tmp481,
	movw	r8, #38908	@ tmp478,
	str	r2, [r4, ip]	@ prephitmp.1303, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	r2, #1	@,
	str	r1, [r4, r8]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	ip, [sp, #24]	@,
	bl	FSP_SetRef	@
	ldr	r3, [sp, #24]	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L335:
	movw	r8, #39304	@ tmp491,
	mov	r0, #38912	@ tmp492,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #38904	@ tmp494,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	r7, r0	@ pCur,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #38908	@ tmp496,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	sl, r0	@ pFwd,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r7, #0	@ pCur,
	cmpne	sl, #0	@, pFwd,
	mov	r8, r0	@ pBwd,
	beq	.L336	@,
	cmp	r0, #0	@ pBwd,
	beq	.L336	@,
	ldr	r3, [r7, #408]	@ D.36027, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36027,
	beq	.L338	@,
	ldr	ip, [r7, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L338	@,
	ldr	r1, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L338	@,
	ldr	r2, [r0, #408]	@ D.36034, <variable>.pstDecodeFs
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	cmp	r2, #0	@ D.36034,
	ldrne	lr, [r2, #12]	@ iftmp.478, <variable>.PhyAddr
	ldreq	lr, [r3, #12]	@ iftmp.478, <variable>.PhyAddr
	str	lr, [r4, #52]	@ iftmp.478, <variable>.Rv9DecParam.BwdRefPhyAddr
	ldr	r0, [sl, #408]	@ D.36041, <variable>.pstDecodeFs
	cmp	r0, #0	@ D.36041,
	ldreq	r0, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	ip, [r0, #12]	@ iftmp.479, <variable>.PhyAddr
	mov	r0, #13	@,
	str	ip, [r4, #56]	@ iftmp.479, <variable>.Rv9DecParam.FwdRefPhyAddr
	ldr	r3, [r7, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36046, <variable>.PhyAddr
	str	r2, [r4, #60]	@ D.36046, <variable>.Rv9DecParam.CurPicPhyAddr
	ldr	fp, [r7, #420]	@, <variable>.PmvAddr
	str	fp, [sp, #56]	@, %sfp
	str	fp, [r4, #80]	@, <variable>.Rv9DecParam.CurrPmvPhyAddr
	ldr	fp, [r8, #420]	@ D.36050, <variable>.PmvAddr
	str	fp, [r4, #84]	@ D.36050, <variable>.Rv9DecParam.ColPmvPhyAddr
	ldr	r3, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36052, <variable>.PhyAddr
	stmia	sp, {ip, lr}	@ phole stm
	str	r3, [r4, #64]	@ D.36052, <variable>.Rv9DecParam.DispFramePhyAddr
	ldr	lr, [sp, #56]	@, %sfp
	str	fp, [sp, #12]	@ D.36050,
	str	lr, [sp, #8]	@,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r1, #37568	@ tmp524,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r1, #38876	@ tmp519,
	ldr	fp, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	fp, [r4, #68]	@ <variable>.Stride, <variable>.Rv9DecParam.DDRStride
	ldr	r3, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r3, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r4, r1]	@ <variable>.Stride, <variable>.CodecInfo.ddr_stride
	ldr	r2, [r7, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	fp, [r2, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	fp, [r4, #72]	@ <variable>.ChromOffset, <variable>.Rv9DecParam.uv_offset
	beq	.L403	@,
.L344:
	movw	sl, #37596	@ tmp546,
	movw	ip, #37608	@ tmp548,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r1, #37584	@ tmp551,
	movw	r2, #37568	@ tmp549,
	movw	r8, #38832	@ tmp557,
	movw	fp, #37736	@ tmp561,
	str	r3, [r7, #428]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	sub	r7, r1, #4	@ tmp553, tmp553,
	ldr	r0, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	add	lr, r7, #1248	@ tmp555, tmp555,
	ldr	sl, [r4, r2]	@ D.36357, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r3, #37732	@ tmp559,
	str	r0, [sp, #40]	@, %sfp
	cmp	sl, #2	@ D.36357,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r4, r7]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	ldr	r8, [r4, fp]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	str	ip, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv9DecParam.PicWidthInMb
	str	r0, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv9DecParam.PicHeightInMb
	mov	r0, r5	@, pBs
	str	r7, [r4, #24]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv9DecParam.Ratio1
	str	r1, [r4, #20]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv9DecParam.Ratio0
	str	lr, [r4, #32]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv9DecParam.PrevPicQP
	str	r8, [r4, #36]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv9DecParam.PrevPicMb0QP
	strb	sl, [r4, #9]	@ D.36357, <variable>.Rv9DecParam.PicCodingType
	ldr	fp, [sp, #40]	@, %sfp
	strne	fp, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	fp, [r4, #28]	@, <variable>.Rv9DecParam.PQUANT
	bl	BsPos	@
	movw	r2, #37708	@ tmp564,
	ands	ip, r0, #-2147483641	@ tmp565,,
	add	r0, r2, #32	@ tmp567, tmp567,
	submi	ip, ip, #1	@ tmp792, tmp565,
	ldr	r7, [r4, r0]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	mvnmi	ip, ip, asl #29	@ tmp793, tmp792,
	mvnmi	ip, ip, lsr #29	@ tmp793, tmp793,
	addmi	ip, ip, #1	@ tmp565, tmp793,
	cmp	r7, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	ip, [r4, r2]	@ tmp565, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L404	@,
	movw	ip, #37748	@ tmp577,
	sub	r1, ip, #4	@ tmp578, tmp578,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L390:
	rsb	lr, r3, r7	@ tmp579, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	sl, #37712	@ tmp582,
	movw	fp, #38772	@ tmp584,
	movw	r8, #37740	@ tmp613,
	mov	r7, lr, asl #3	@ D.36106, tmp579,
	bl	BsPos	@
	ldr	ip, [r4, fp]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r7	@ tmp583,, D.36106
	str	r0, [r4, sl]	@ tmp583, <variable>.CodecInfo.SliceHeader.bit_len_0
	ldr	r1, [sp, #60]	@, %sfp
	mov	r0, r5	@, pBs
	str	fp, [sp, #24]	@,
	movw	r7, #37612	@ tmp598,
	add	sl, r1, ip	@ D.36112,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	ldr	r2, [r4, r7]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r1, #37604	@ tmp600,
	ldr	ip, [r4, r8]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	add	r8, r1, #108	@ tmp606, tmp606,
	movw	fp, #37708	@ tmp604,
	str	r2, [r4, #116]	@, <variable>.osvquant
	movw	r2, #37688	@ tmp597,
	ldr	r7, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	add	r8, r2, #4	@ tmp599, tmp599,
	add	r3, r0, #7	@ tmp588, D.36113,
	cmp	r0, #0	@ D.36113,
	movlt	r0, r3	@ D.36113, tmp588
	ldr	r3, [r4, r1]	@ D.36118, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	str	r7, [r4, #104]	@, <variable>.StreamLength
	cmp	ip, #1	@ <variable>.CodecInfo.TotalSliceNum,
	ldr	ip, [sp, #40]	@, %sfp
	add	r7, sl, r0, asr #3	@, D.36116, D.36112, D.36113,
	movw	sl, #37696	@ tmp601,
	add	r0, sl, #28	@ tmp593, tmp593,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	add	ip, r0, #4	@ tmp595, tmp595,
	ldr	r1, [r4, #116]	@, <variable>.osvquant
	mov	r2, #0	@ tmp592,
	str	r3, [r4, sl]	@ D.36118, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r2, [r4, r0]	@ tmp592, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r1, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.osvquant
	sub	r1, ip, #28	@ tmp602, tmp602,
	str	r2, [r4, ip]	@ tmp592, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	mov	r8, #1	@ tmp612,
	str	r2, [r4, r1]	@ tmp592, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r7, [r4, #88]	@ D.36116, <variable>.StreamPhyAddr
	ldr	sl, [r4, fp]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	fp, #37720	@,
	str	r3, [r4, #112]	@ D.36118, <variable>.dblk_filter_passthrough
	str	r2, [r4, #124]	@ tmp592, <variable>.first_mb_in_slice
	str	sl, [r4, #96]	@, <variable>.StreamBitOffset
	movw	sl, #37716	@,
	str	r7, [r4, sl]	@ D.36116, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	str	r2, [r4, fp]	@ tmp592, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r2, [r4, #92]	@ tmp592, <variable>.StreamPhyAddr
	str	r2, [r4, #100]	@ tmp592, <variable>.StreamBitOffset
	str	r2, [r4, #108]	@ tmp592, <variable>.StreamLength
	ldr	r0, [sp, #40]	@, %sfp
	str	r8, [r4, #40]	@ tmp612, <variable>.Rv9DecParam.TotalSliceNum
	str	r0, [r4, #120]	@, <variable>.sliceqp
	bls	.L354	@,
	movw	ip, #37748	@ tmp615,
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r3, #:lower16:3145727	@ tmp617,
	movt	r3, #:upper16:3145727	@ tmp617,
	add	r7, r2, r1	@ PrevOffsetBytes.1393,, <variable>.CodecInfo.SliceByteOffset
	cmp	r7, r3	@ PrevOffsetBytes.1393, tmp617
	bgt	.L356	@,
	cmp	r7, #0	@ PrevOffsetBytes.1393,
	ble	.L356	@,
	movw	sl, #38776	@ tmp618,
	ldr	r0, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r7, r0	@ temp.1390, PrevOffsetBytes.1393, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1390,
	strgt	r8, [sp, #52]	@ i.1378, %sfp
	ldrgt	fp, [sp, #20]	@ PrevHeaderBytes, %sfp
	bgt	.L359	@,
	b	.L356	@
.L360:
	movw	r7, #37740	@,
	add	r8, r8, #1	@ i.1378, i.1378,
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	cmp	r2, r8	@ <variable>.CodecInfo.TotalSliceNum, i.1378
	bls	.L354	@,
	ldr	r7, [r9, #4]	@ tmp620, <variable>.CodecInfo.SliceByteOffset
	movw	lr, #:lower16:3145727	@,
	movt	lr, #:upper16:3145727	@,
	add	r7, fp, r7	@ PrevOffsetBytes.1393, PrevHeaderBytes, tmp620
	cmp	r7, lr	@ PrevOffsetBytes.1393,
	bgt	.L356	@,
	cmp	r7, #0	@ PrevOffsetBytes.1393,
	ble	.L356	@,
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	add	r9, r9, #4	@ ivtmp.1330, ivtmp.1330,
	rsb	r2, r7, r3	@ temp.1390, PrevOffsetBytes.1393, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1390,
	ble	.L356	@,
.L359:
	movw	lr, #11360	@,
	mov	r0, r5	@, pBs
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	add	r1, r7, r1	@, PrevOffsetBytes.1393, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	add	r2, sp, #220	@,,
	add	r3, sp, #216	@,,
	add	ip, sp, #212	@,,
	str	r6, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L360	@,
	movw	ip, #37584	@,
	ldr	r2, [sp, #220]	@, iSliceMBA
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [sp, #60]	@, %sfp
	beq	.L405	@,
	ldr	r3, [sp, #212]	@ iSQUANT.488, iSQUANT
	mov	r0, r5	@, pBs
	ldr	lr, [sp, #40]	@, %sfp
	cmp	r3, #0	@ iSQUANT.488,
	movge	lr, r3	@, iSQUANT.488
	str	lr, [sp, #40]	@, %sfp
	bl	BsPos	@
	movw	ip, #37740	@,
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	sub	r1, r3, #1	@ D.35879, <variable>.CodecInfo.TotalSliceNum,
	cmp	r1, r8	@ D.35879, i.1378
	mov	r2, r0, asr #31	@ tmp639, D.36134,
	mov	ip, r2, lsr #29	@ tmp640, tmp639,
	add	r1, r0, ip	@ tmp641, D.36134, tmp640
	and	r0, r1, #7	@ tmp642, tmp641,
	movw	r1, #37708	@,
	rsb	r2, ip, r0	@ tmp643, tmp640, tmp642
	str	r2, [r4, r1]	@ tmp643, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L406	@,
	cmp	r8, #254	@ i.1378,
	bhi	.L407	@,
	ldr	r2, [r9, #4]	@ tmp658, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r9, #0]	@ tmp659, <variable>.CodecInfo.SliceByteOffset
.L391:
	rsb	r3, r3, r2	@ tmp657, tmp659, tmp658
	mov	lr, r3, asl #3	@ D.36149, tmp657,
	str	lr, [sp, #28]	@,
	bl	BsPos	@
	ldr	ip, [sp, #28]	@,
	movw	r1, #37712	@ tmp660,
	rsb	r2, r0, ip	@ tmp661,, D.36149
	movw	r0, #38772	@,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	mov	r0, r5	@, pBs
	str	r2, [r4, r1]	@ tmp661, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r2, #0	@ tmp670,
	add	ip, r7, r3	@ temp.1449, PrevOffsetBytes.1393, <variable>.CodecInfo.BsPhyAddr
	str	r2, [sp, #24]	@,
	str	ip, [sp, #32]	@,
	bl	BsPos	@
	movw	ip, #37612	@ tmp676,
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r7, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r2, #37604	@ tmp678,
	mov	r3, #44	@ tmp683,
	mla	r3, r3, r1, r4	@ tmp684, tmp683,, pCtx
	str	r7, [sp, #56]	@, %sfp
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r7, #37724	@ tmp671,
	movw	r2, #37728	@ tmp673,
	str	r1, [sp, #20]	@, %sfp
	add	ip, r0, #7	@ tmp666, D.36153,
	cmp	r0, #0	@ D.36153,
	movlt	r0, ip	@ D.36153, tmp666
	ldr	ip, [sp, #24]	@,
	str	ip, [r4, r2]	@ tmp670, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	ip, [r4, r7]	@ tmp670, <variable>.CodecInfo.SliceHeader.bit_len_1
	ldr	r1, [sp, #32]	@,
	ldr	r7, [sp, #40]	@, %sfp
	add	r2, r1, r0, asr #3	@, D.36156, temp.1449, D.36153,
	movw	r0, #37688	@ tmp675,
	str	r7, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	r7, #37692	@,
	ldr	r1, [sp, #52]	@, %sfp
	add	r0, r1, #1	@ tmp738,,
	ldr	r1, [sp, #56]	@, %sfp
	str	r1, [r4, r7]	@, <variable>.CodecInfo.SliceHeader.osvquant
	movw	r1, #37696	@ tmp679,
	ldr	r7, [sp, #20]	@, %sfp
	str	r7, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	movw	r1, #37700	@,
	ldr	r7, [sp, #60]	@, %sfp
	str	r0, [sp, #52]	@ tmp738, %sfp
	str	r7, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	movw	r7, #37716	@,
	ldr	r1, [sp, #52]	@, %sfp
	str	r2, [r4, r7]	@ D.36156, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	movw	r7, #37708	@,
	cmp	r1, #131	@,
	movw	r1, #37720	@,
	str	ip, [r4, r1]	@ tmp670, <variable>.CodecInfo.SliceHeader.bit_offset_1
	movw	r1, #37712	@ tmp698,
	str	r2, [r3, #88]	@ D.36156, <variable>.StreamPhyAddr
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	str	r2, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r7, [sp, #60]	@, %sfp
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r7, [r3, #124]	@, <variable>.first_mb_in_slice
	ldr	r7, [sp, #20]	@, %sfp
	str	r2, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r7, [r3, #112]	@, <variable>.dblk_filter_passthrough
	ldr	r2, [sp, #56]	@, %sfp
	str	r2, [r3, #116]	@, <variable>.osvquant
	str	ip, [r3, #92]	@ tmp670, <variable>.StreamPhyAddr
	str	ip, [r3, #100]	@ tmp670, <variable>.StreamBitOffset
	str	ip, [r3, #108]	@ tmp670, <variable>.StreamLength
	ldr	r1, [sp, #40]	@, %sfp
	str	r1, [r3, #120]	@, <variable>.sliceqp
	str	r0, [r4, #40]	@ tmp738, <variable>.Rv9DecParam.TotalSliceNum
	bls	.L360	@,
	mov	r0, r4	@, pCtx
	str	ip, [sp, #24]	@,
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L408	@,
	ldr	r7, [sp, #36]	@, %sfp
	str	r7, [r4, #4]	@, <variable>.pRv9DecParam
	b	.L360	@
.L309:
	movw	r3, #37580	@ tmp343,
	ldr	r0, [sp, #84]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r0, ip	@ TmpPictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	bne	.L387	@,
	ldr	r3, [r4, #0]	@ prephitmp.1305, <variable>.pstExtraData
	ldr	r2, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r2, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L311	@,
	b	.L308	@
.L396:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35807, tmp330
	b	.L297	@
.L321:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L400:
	movw	r3, #38804	@ tmp439,
	movw	r1, #:lower16:.LC16	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35807, D.35977
	b	.L297	@
.L397:
	movw	ip, #38904	@ tmp351,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	lr, #0	@ tmp348,
	str	r3, [sp, #28]	@,
	str	lr, [sp, #200]	@ tmp348, RefNum
	str	lr, [sp, #208]	@ tmp348, NewNum
	str	lr, [sp, #204]	@ tmp348, ReadNum
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L300	@,
	movw	r8, #38908	@ tmp352,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L300	@,
	movw	lr, #39304	@ tmp353,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [sp, #28]	@,
	movw	r3, #39304	@ tmp356,
	add	r1, sp, #200	@,,
	add	r2, sp, #204	@,,
	cmp	r0, #0	@ pImage
	strne	ip, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #208	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r2, #37584	@ tmp360,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L314	@,
	movw	r2, #37580	@ tmp364,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L314	@,
	ldr	lr, [sp, #204]	@ ReadNum, ReadNum
	ldr	r1, [sp, #208]	@ NewNum, NewNum
	add	ip, r1, lr	@ tmp368, NewNum, ReadNum
	cmp	ip, #0	@ tmp368,
	ble	.L315	@,
.L317:
	mov	ip, #1	@ tmp376,
	mov	r0, #0	@ D.35807,
	str	ip, [r3, #728]	@ tmp376, <variable>.s32DSDWaitFlag
	b	.L297	@
.L398:
	movw	ip, #11376	@ tmp419,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r1, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L324	@,
.L326:
	mov	r0, sl	@, D.35949
	bl	ResetVoQueue	@
	b	.L388	@
.L399:
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35807, D.35971
	b	.L297	@
.L356:
	mov	r0, #38912	@ tmp627,
	add	ip, r0, #392	@ tmp626, tmp626,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L314:
	ldr	r0, [sp, #208]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	bgt	.L317	@,
	ldr	r2, [sp, #204]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L317	@,
	movw	lr, #39308	@ tmp377,
	mov	sl, #0	@ tmp378,
	str	sl, [r4, lr]	@ tmp378, <variable>.DSDNeedClearQue
.L316:
	mov	r1, #0	@ tmp380,
	str	r1, [r3, #728]	@ tmp380, <variable>.s32DSDWaitFlag
	b	.L312	@
.L406:
	add	r0, r3, #9408	@ tmp649, <variable>.CodecInfo.TotalSliceNum,
	ldr	r2, [r4, sl]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	add	r1, r0, #27	@ tmp649, tmp649,
	mov	r0, r5	@, pBs
	rsb	r2, fp, r2	@ tmp647, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r4, r1, asl #2]	@ tmp652, <variable>.CodecInfo.SliceByteOffset
	b	.L391	@
.L336:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, .L412	@,
	movt	r1, #:upper16:.LC20	@,
	movw	r3, #2044	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L402:
	movw	ip, #11373	@ tmp464,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L300	@,
.L332:
	mov	r3, #2	@ iftmp.474,
	b	.L333	@
.L401:
	movw	lr, #11373	@ tmp487,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L335	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L328:
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, r7	@ D.35807, pImg
	b	.L297	@
.L354:
	ldr	r5, [r4, #4]	@ <variable>.pRv9DecParam, <variable>.pRv9DecParam
	mov	r6, #1	@ tmp743,
	str	r6, [r4, #44]	@ tmp743, <variable>.Rv9DecParam.FstSlcGrp
	cmp	r5, #0	@ <variable>.pRv9DecParam,
	beq	.L409	@,
.L368:
	ldr	r3, [r4, #0]	@ temp.1458, <variable>.pstExtraData
	ldr	r2, [r3, #708]	@ D.36169, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36169,
	beq	.L410	@,
	cmp	r2, #2	@ D.36169,
	beq	.L411	@,
.L371:
	ldr	ip, [r3, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r3, #11352	@ tmp758,
	mov	r0, #1	@ D.35807,
	str	ip, [r4, r3]	@ <variable>.s32Compress_en, <variable>.Rv9DecParam.Compress_en
	b	.L297	@
.L338:
	mov	r3, #38912	@ tmp511,
	add	lr, r3, #392	@ tmp510, tmp510,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L404:
	movw	r7, #38776	@ tmp569,
	ldr	r8, [sp, #20]	@, %sfp
	ldr	fp, [r4, r7]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	movw	lr, #37744	@ tmp572,
	mov	r0, r5	@, pBs
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r7, r8, fp	@ tmp570,, <variable>.CodecInfo.BsLength
	b	.L390	@
.L403:
	movw	lr, #37596	@ tmp526,
	ldr	r2, [sl, #428]	@ D.36069, <variable>.TR
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	sl, [r8, #428]	@ <variable>.TR, <variable>.TR
	subs	r3, r1, r2	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36069
	rsb	r8, r2, sl	@ trd, D.36069, <variable>.TR
	movwmi	r2, #37592	@ tmp529,
	ldrmi	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r3, r3, r2	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r8, #0	@ trd,
	movwlt	r2, #37592	@ tmp531,
	ldrlt	r2, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r8, r8, r2	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, r8	@ trb, trd
	movgt	r3, #0	@ trb,
	cmp	r8, #0	@ trd,
	movle	r0, #0	@ prephitmp.1472,
	movle	r2, r0	@ prephitmp.1471, prephitmp.1472
	ble	.L349	@,
	mov	r1, r8	@, trd
	mov	r0, r3, asl #14	@, trb,
	str	r3, [sp, #28]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #28]	@,
	mov	r1, r8	@, trd
	rsb	fp, r3, r8	@ tmp537, trb, trd
	mov	ip, r0	@ prephitmp.1471,
	mov	r0, fp, asl #14	@, tmp537,
	str	ip, [sp, #32]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #28]	@,
	ldr	r2, [sp, #32]	@,
.L349:
	movw	r1, #38824	@ tmp543,
	add	sl, r1, #4	@ tmp544, tmp544,
	str	r8, [r4, r1]	@ trd, <variable>.CodecInfo.trd
	add	r8, sl, #4	@ tmp545, tmp545,
	movw	lr, #38820	@ tmp542,
	str	r2, [r4, sl]	@ prephitmp.1471, <variable>.CodecInfo.Ratio0
	str	r3, [r4, lr]	@ trb, <variable>.CodecInfo.trb
	str	r0, [r4, r8]	@ prephitmp.1472, <variable>.CodecInfo.Ratio1
	b	.L344	@
.L315:
	movw	r8, #39308	@ tmp372,
	mov	fp, #1	@ tmp373,
	str	fp, [r4, r8]	@ tmp373, <variable>.DSDNeedClearQue
	b	.L316	@
.L408:
	mov	r0, #38912	@ tmp740,
	add	ip, r0, #392	@ tmp739, tmp739,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	r1, [sp, #24]	@,
	mov	r0, r1	@ D.35807, tmp670
	b	.L297	@
.L407:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #2200	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35807,
	b	.L297	@
.L405:
	mov	lr, #38912	@ tmp637,
	mov	r2, r0	@, found_ssc
	movw	r0, #39304	@ tmp636,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	str	r3, [sp, #28]	@,
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #28]	@,
	mov	r0, r3	@ D.35807, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L297	@
.L411:
	ldr	r0, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L371	@,
	ldr	r2, [r4, #4]	@ temp.1461, <variable>.pRv9DecParam
	cmp	r2, #0	@ temp.1461,
	beq	.L371	@,
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	lr, #2	@ <variable>.PicCodingType,
	bne	.L371	@,
	movw	r1, #39304	@ tmp754,
	sub	lr, r1, #392	@ tmp755, tmp755,
	mov	r5, #0	@ tmp753,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, tmp753
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r5, [r4, #4]	@ tmp753, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1465, <variable>.pstExtraData
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	ldr	r2, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp757, <variable>.stDisParams.s32DisNums,
	str	ip, [r3, #712]	@ tmp757, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r5	@ D.35807, tmp753
	b	.L297	@
.L410:
	ldr	r2, [r4, #4]	@ temp.1459, <variable>.pRv9DecParam
	cmp	r2, #0	@ temp.1459,
	beq	.L371	@,
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r1, #2	@ <variable>.PicCodingType,
	bne	.L371	@,
	movw	r2, #39304	@ tmp749,
	sub	ip, r2, #392	@ tmp750, tmp750,
	mov	r5, #0	@ tmp748,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r5	@, tmp748
	str	r5, [r4, #4]	@ tmp748, <variable>.pRv9DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #9	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r5	@ D.35807, tmp748
	b	.L297	@
.L409:
	mov	r0, r4	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, r6	@,
	ldreq	r8, [sp, #36]	@, %sfp
	streq	r8, [r4, #4]	@, <variable>.pRv9DecParam
	beq	.L368	@,
	mov	r3, #38912	@ tmp746,
	add	lr, r3, #392	@ tmp745, tmp745,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r6	@, tmp743
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r5	@ D.35807, <variable>.pRv9DecParam
	b	.L297	@
.L413:
	.align	2
.L412:
	.word	.LANCHOR0+360
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
	.type	C.439.35224, %object
	.size	C.439.35224, 32
C.439.35224:
	.word	160
	.word	176
	.word	240
	.word	320
	.word	352
	.word	640
	.word	704
	.word	0
	.type	C.440.35225, %object
	.size	C.440.35225, 32
C.440.35225:
	.word	120
	.word	132
	.word	144
	.word	240
	.word	288
	.word	480
	.word	0
	.word	0
	.type	C.441.35226, %object
	.size	C.441.35226, 16
C.441.35226:
	.word	180
	.word	360
	.word	576
	.word	0
	.type	__func__.35794, %object
	.size	__func__.35794, 16
__func__.35794:
	.ascii	"REAL9DEC_Decode\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC1:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC2:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC3:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC4:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC5:
	.ascii	"real9 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC6:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC7:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC8:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC9:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC10:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC11:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC12:
	.ascii	"Real9_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC13:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC14:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC15:
	.ascii	"Real9_ArrangeVHBMem err\012\000"
	.space	3
.LC16:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC17:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC18:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC19:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC20:
	.ascii	"CurFsID abnormal!,%s %d (NULL == pCur) || (NULL == "
	.ascii	"pFwd) || (NULL == pBwd)!!\012\000"
	.space	2
.LC21:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC22:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC23:
	.ascii	"line:%d! i > (RV9_MAX_SLC_PARAM_NUM - 2)\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
