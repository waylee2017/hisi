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
	.file	"real8.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.o
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
	.global	Real8_CB_SetDimensions
	.type	Real8_CB_SetDimensions, %function
Real8_CB_SetDimensions:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #88]	@ D.38056, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.38056,
	beq	.L21	@,
	cmp	r3, #176	@ D.38056,
	beq	.L22	@,
	cmp	r3, #352	@ D.38056,
	bne	.L7	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.38056,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.38077, tmp154,
	mov	r2, r1, lsr #4	@ D.38079, tmp155,
	str	r3, [r0, #28]	@ D.38077, <variable>.Rv8ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.38077, D.38079
	str	r2, [r0, #24]	@ D.38079, <variable>.Rv8ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.575, tmp157,
	cmp	r3, #47	@ prephitmp.575,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.575,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.575,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.575,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.575,
	movcc	r3, #4	@ i,
	movcs	r3, #5	@ i,
.L4:
	movw	r2, #:lower16:.LANCHOR0	@ tmp161,
	movt	r2, #:upper16:.LANCHOR0	@ tmp161,
	ldr	r3, [r2, r3, asl #2]	@ tmp162, MBA_FieldWidth
	str	r3, [r0, #32]	@ tmp162, <variable>.Rv8ParsePicParam.m_mbaSize
	bx	lr	@
.L22:
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #144	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #11	@ tmp143,
	mov	r2, #9	@ tmp144,
	str	ip, [r0, #28]	@ tmp143, <variable>.Rv8ParsePicParam.m_nMBs
	str	r2, [r0, #24]	@ tmp144, <variable>.Rv8ParsePicParam.m_nGOBs
.L17:
	mov	r3, #1	@ i,
	b	.L4	@
.L21:
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #96	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #6	@ tmp141,
	mov	r1, #8	@ tmp140,
	str	r3, [r0, #24]	@ tmp141, <variable>.Rv8ParsePicParam.m_nGOBs
	mov	r3, #0	@ i,
	str	r1, [r0, #28]	@ tmp140, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L4	@
.L7:
	cmp	r3, #704	@ D.38056,
	bne	.L24	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #28]	@ tmp149, <variable>.Rv8ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.575,
	str	r2, [r0, #24]	@ tmp150, <variable>.Rv8ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #24]	@ tmp147, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.575,
	str	r1, [r0, #28]	@ tmp146, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.38056,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #24]	@ tmp153, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.575,
	str	r1, [r0, #28]	@ tmp152, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real8_CB_SetDimensions, .-Real8_CB_SetDimensions
	.align	2
	.global	Real8_CB_SetRPRSizes
	.type	Real8_CB_SetRPRSizes, %function
Real8_CB_SetRPRSizes:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r8, .L27	@ tmp138,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r1	@ num_sizes, num_sizes
	add	r1, sp, #40	@,,
	mov	ip, r0	@ pPictureHeader, pPictureHeader
	mov	r6, r2	@ sizes, sizes
	add	r5, r1, r4, asl #2	@, tmp142,, num_sizes,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp145,,,,
	add	r7, sp, #4	@ tmp137,,
	str	r4, [ip, #16]	@ num_sizes, <variable>.Rv8ParsePicParam.m_numSizes
	mov	r4, r7	@ tmp146, tmp137
	str	r6, [ip, #12]	@ sizes, <variable>.Rv8ParsePicParam.m_pSizes
	stmia	r4!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldmia	r8!, {r0, r1, r2, r3}	@ tmp147,,,,
	ldr	r6, [r8, #0]	@ C.508, C.508
	stmia	r4!, {r0, r1, r2, r3}	@ tmp146,,,,
	str	r6, [r4, #0]	@ C.508, size
	ldr	r3, [r5, #-36]	@ tmp144, size
	str	r3, [ip, #8]	@ tmp144, <variable>.Rv8ParsePicParam.m_pctszSize
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0+24
	.fnend
	.size	Real8_CB_SetRPRSizes, .-Real8_CB_SetRPRSizes
	.align	2
	.global	RV8_RecordVFMWState
	.type	RV8_RecordVFMWState, %function
RV8_RecordVFMWState:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	RV8_RecordVFMWState, .-RV8_RecordVFMWState
	.align	2
	.global	Real8_WriteSliceMsg
	.type	Real8_WriteSliceMsg, %function
Real8_WriteSliceMsg:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #44	@ tmp138,
	movw	ip, #37728	@ tmp141,
	mla	r3, r3, r1, r0	@ tmp139, tmp138, HoldSliceNum, pCtx
	movw	r2, #37720	@ tmp148,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r4, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	add	ip, r3, #112	@ tmp182, tmp139,
	add	r1, r1, #1	@ tmp206, HoldSliceNum,
	str	r4, [r3, #92]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_0, <variable>.StreamPhyAddr
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	add	r2, r3, #120	@ tmp196, tmp139,
	str	r4, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	movw	r4, #37724	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r4, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	movw	r4, #37740	@ tmp162,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	str	r4, [r3, #96]	@ <variable>.CodecInfo.SliceHeader.bit_stream_addr_1, <variable>.StreamPhyAddr
	movw	r4, #37732	@ tmp169,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r4, [r3, #104]	@ <variable>.CodecInfo.SliceHeader.bit_offset_1, <variable>.StreamBitOffset
	movw	r4, #37736	@ tmp176,
	ldr	r4, [r0, r4]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r4, [r3, #112]	@ <variable>.CodecInfo.SliceHeader.bit_len_1, <variable>.StreamLength
	movw	r3, #37708	@ tmp183,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	str	r3, [ip, #4]	@ <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	movw	r3, #37704	@ tmp190,
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.CodecInfo.SliceHeader.osvquant
	str	r3, [ip, #8]	@ <variable>.CodecInfo.SliceHeader.osvquant, <variable>.osvquant
	movw	ip, #37700	@ tmp197,
	ldr	r3, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #37712	@ tmp204,
	str	r3, [r2, #4]	@ <variable>.CodecInfo.SliceHeader.SliceQP, <variable>.sliceqp
	ldr	r3, [r0, ip]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	str	r3, [r2, #8]	@ <variable>.CodecInfo.SliceHeader.first_mb_in_slice, <variable>.first_mb_in_slice
	str	r1, [r0, #44]	@ tmp206, <variable>.Rv8DecParam.TotalSliceNum
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	Real8_WriteSliceMsg, .-Real8_WriteSliceMsg
	.align	2
	.global	Real8_WritePicMsg
	.type	Real8_WritePicMsg, %function
Real8_WritePicMsg:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	movw	r2, #37744	@ tmp147,
	movw	r8, #37640	@ tmp134,
	movw	r7, #37656	@ tmp137,
	movw	r6, #37652	@ tmp139,
	movw	r5, #38840	@ tmp141,
	movw	ip, #38844	@ tmp143,
	movw	r4, #37748	@ tmp149,
	movw	r1, #37680	@ tmp145,
	ldr	r3, [r0, r8]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r1, [r0, r1]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PictureHeader.PQUANT
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r3, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	ldr	r7, [r0, r6]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r6, [r0, r5]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r5, [r0, ip]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	ip, [r0, r4]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	r4, [r0, r2]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r8, [r0, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	str	r7, [r0, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	str	r6, [r0, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	r5, [r0, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	str	r4, [r0, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	str	ip, [r0, #40]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv8DecParam.PrevPicMb0QP
	strb	r3, [r0, #20]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.Rv8DecParam.PicCodingType
	str	r1, [r0, #32]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.Rv8DecParam.PQUANT
	strne	r1, [r0, r2]	@ <variable>.CodecInfo.PictureHeader.PQUANT, <variable>.CodecInfo.PrevPicQP
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
	.fnend
	.size	Real8_WritePicMsg, .-Real8_WritePicMsg
	.align	2
	.global	Real8_WriteReg
	.type	Real8_WriteReg, %function
Real8_WriteReg:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #48]	@ fst_slc_grp, <variable>.Rv8DecParam.FstSlcGrp
	bx	lr	@
	.fnend
	.size	Real8_WriteReg, .-Real8_WriteReg
	.align	2
	.global	Real8_ModifySliceMsg
	.type	Real8_ModifySliceMsg, %function
Real8_ModifySliceMsg:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r3, [r0, #128]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.38517, <variable>.Rv8DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.38518, <variable>.Rv8DecParam.PicHeightInMb
	bne	.L39	@,
	mul	r1, r1, r3	@ tmp199, D.38517, D.38518
	ldr	r2, [r0, #44]	@ temp.825, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.825,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L40	@,
	sub	r4, r2, #1	@ prephitmp.727, temp.825,
	cmp	r4, #1	@ prephitmp.727,
	bls	.L45	@,
	ldr	r3, [r0, #172]	@ temp.798, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.798,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.798
	ble	.L39	@,
	tst	r2, #1	@ temp.825,
	mov	r3, r0	@ ivtmp.796, pCtx
	mov	ip, #1	@ i.797,
	bne	.L43	@,
	ldr	r3, [r0, #216]	@ D.38531, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.797,
	cmp	r3, #0	@ D.38531,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.38531
	add	r3, r0, #44	@ ivtmp.796, pCtx,
	bgt	.L43	@,
.L39:
	mov	r0, #0	@ D.38524,
.L61:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L40:
	moveq	r4, #1	@ prephitmp.727,
	bne	.L46	@,
.L45:
	tst	r4, #1	@ prephitmp.727,
	mov	r3, r0	@ ivtmp.789, pCtx
	mov	ip, #0	@ i,
	beq	.L42	@,
	cmp	r4, #0	@ prephitmp.727,
	bls	.L97	@,
	ldr	r6, [r0, #128]	@ temp.799, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #172]	@ D.38538, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.789, pCtx,
	cmp	r6, r5	@ temp.799, D.38538
	bge	.L39	@,
	cmp	r4, ip	@ prephitmp.727, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.789,
	bls	.L97	@,
.L49:
	ldr	r7, [r3, #128]	@ temp.799, <variable>.first_mb_in_slice
	ldr	r6, [r3, #172]	@ D.38538, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.789, ivtmp.789,
	cmp	r7, r6	@ temp.799, D.38538
	bge	.L39	@,
	ldr	r6, [r5, #172]	@ D.38538, <variable>.first_mb_in_slice
	ldr	r5, [r5, #128]	@ temp.799, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.799, D.38538
	bge	.L39	@,
.L42:
	cmp	r4, ip	@ prephitmp.727, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.789,
	bhi	.L49	@,
.L97:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.727, pCtx
	ldr	r3, [r4, #128]	@ D.38543, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.38543,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.38543
	blt	.L39	@,
.L46:
	cmp	r2, #0	@ temp.825,
	beq	.L99	@,
	mov	r6, #0	@ i.824,
	mov	ip, r0	@ ivtmp.806, pCtx
	mov	r3, r0	@ ivtmp.782, pCtx
	mov	r4, r6	@ i.804, i.824
	b	.L52	@
.L101:
	cmp	r5, #0	@ temp.803,
	blt	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.803
	blt	.L39	@,
	cmp	r2, #0	@ TotalMbnMinus1.802,
	blt	.L39	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.802
	blt	.L39	@,
	ldr	r2, [r0, #44]	@ temp.825, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.825, i.804
	bls	.L100	@,
.L52:
	sub	r2, r2, #1	@ tmp205, temp.825,
	ldr	r5, [r3, #128]	@ temp.803, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.824, tmp205
	add	r4, r4, #1	@ i.804, i.804,
	streq	r1, [r3, #132]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #172]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.802, TotalMbnMinus1
	mov	r6, r4	@ i.824, i.804
	subne	r2, r2, #1	@ TotalMbnMinus1.802, <variable>.first_mb_in_slice,
	strne	r2, [r3, #132]	@ TotalMbnMinus1.802, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.803, TotalMbnMinus1.802
	add	r3, r3, #44	@ ivtmp.782, ivtmp.782,
	ble	.L101	@,
	b	.L39	@
.L44:
	ldr	r5, [r3, #216]	@ D.38531, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.796, ivtmp.796,
	cmp	r5, #0	@ D.38531,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.38531
	ble	.L39	@,
	ldr	r5, [r6, #216]	@ D.38531, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.38531,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.38531
	ble	.L39	@,
.L43:
	add	ip, ip, #1	@ tmp261, i.797,
	add	r6, r3, #44	@ tmp260, ivtmp.796,
	cmp	r4, ip	@ prephitmp.727, tmp261
	add	ip, ip, #1	@ i.797, tmp261,
	bhi	.L44	@,
	b	.L45	@
.L100:
	cmp	r2, #0	@ temp.825,
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.825,
	mov	r5, r3	@ stream_base_addr.826, stream_base_addr
	mov	r4, #0	@ i.805,
	bne	.L56	@,
	mov	r1, r3	@ stream_base_addr.811, stream_base_addr
	ldr	r3, [r0, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.826
	bcs	.L71	@,
	ldr	r5, [r0, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L71	@,
.L72:
	add	ip, r0, #44	@ ivtmp.806, pCtx,
	mov	r4, #1	@ i.805,
	ldr	r5, [ip, #92]	@ stream_base_addr.826, <variable>.StreamPhyAddr
.L56:
	cmp	r5, r3	@ stream_base_addr.826, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.811, stream_base_addr
	ldr	r3, [ip, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.805,
	add	r1, ip, #44	@ tmp252, ivtmp.806,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.811
	bcs	.L54	@,
.L102:
	ldr	ip, [ip, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L54	@,
.L55:
	cmp	r4, r2	@ tmp251, temp.825
	beq	.L53	@,
	ldr	ip, [r1, #92]	@ stream_base_addr.826, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.826, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.811, stream_base_addr
	ldr	r3, [r1, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.811
	bcs	.L74	@,
	ldr	r5, [r1, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L74	@,
	add	ip, r1, #44	@ ivtmp.806, tmp252,
	add	r4, r4, #1	@ i.805, tmp251,
	ldr	r5, [ip, #92]	@ stream_base_addr.826, <variable>.StreamPhyAddr
.L103:
	cmp	r5, r3	@ stream_base_addr.826, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.811, stream_base_addr
	ldr	r3, [ip, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.805,
	add	r1, ip, #44	@ tmp252, ivtmp.806,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.811
	bcc	.L102	@,
.L54:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.811
	b	.L55	@
.L74:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.811
	add	ip, r1, #44	@ ivtmp.806, tmp252,
	add	r4, r4, #1	@ i.805, tmp251,
	ldr	r5, [ip, #92]	@ stream_base_addr.826, <variable>.StreamPhyAddr
	b	.L103	@
.L71:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.811
	b	.L72	@
.L99:
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
.L53:
	cmp	r2, #0	@ temp.825,
	bic	r4, r3, #15	@ prephitmp.731, stream_base_addr,
	str	r4, [r0, #52]	@ prephitmp.731, <variable>.Rv8DecParam.StreamBaseAddr
	beq	.L57	@,
	tst	r2, #1	@ temp.825,
	mov	r3, r0	@ ivtmp.755, pCtx
	mov	r1, #0	@ i.800,
	bne	.L60	@,
	ldr	r3, [r0, #96]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	r3, #0	@ <variable>.StreamPhyAddr,
	beq	.L93	@,
	ldr	r1, [r0, #104]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	ip, [r0, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r7, [r0, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, r1, #7	@ tmp293, <variable>.StreamBitOffset,
	and	r6, ip, #7	@ tmp283, <variable>.StreamBitOffset,
	add	r3, r3, r1, lsr #3	@, tmp287, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	ip, r7, ip, lsr #3	@, tmp278, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r3, r4, r3	@ BytePos1, prephitmp.731, tmp287
	rsb	r4, r4, ip	@ BytePos0.814, prephitmp.731, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.814,
	bic	r4, r4, #15	@ tmp280, BytePos0.814,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #92]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #100]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #104]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #96]	@ tmp290, <variable>.StreamPhyAddr
.L94:
	mov	r1, #1	@ i.800,
	add	r3, r0, #44	@ ivtmp.755, pCtx,
	ldr	r4, [r0, #52]	@ prephitmp.731, <variable>.Rv8DecParam.StreamBaseAddr
	b	.L60	@
.L104:
	ldr	ip, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.731, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #92]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #100]	@ tmp218, <variable>.StreamBitOffset
.L59:
	add	r1, r1, #1	@ tmp246, i.800,
	add	r3, r3, #44	@ tmp247, ivtmp.755,
	cmp	r1, r2	@ tmp246, temp.825
	bcs	.L57	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #52]	@ prephitmp.731, <variable>.Rv8DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L67	@,
	ldr	ip, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.731, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #92]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #100]	@ tmp334, <variable>.StreamBitOffset
.L95:
	ldr	r4, [r0, #52]	@ prephitmp.731, <variable>.Rv8DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.800, tmp246,
	add	r3, r3, #44	@ ivtmp.755, tmp247,
.L60:
	ldr	ip, [r3, #96]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L104	@,
	ldr	r6, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #104]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.814, prephitmp.731, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.814,
	bic	r4, r4, #15	@ tmp223, BytePos0.814,
	str	r4, [r3, #92]	@ tmp223, <variable>.StreamPhyAddr
	add	ip, ip, r5, lsr #3	@, tmp231, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	add	r4, r7, r8, asl #3	@, tmp228, tmp226, tmp224,
	str	r4, [r3, #100]	@ tmp228, <variable>.StreamBitOffset
	ldr	r4, [r0, #52]	@ <variable>.Rv8DecParam.StreamBaseAddr, <variable>.Rv8DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv8DecParam.StreamBaseAddr, tmp231
	and	r4, ip, #15	@ tmp235, BytePos1,
	bic	ip, ip, #15	@ tmp234, BytePos1,
	str	ip, [r3, #96]	@ tmp234, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp239, tmp237, tmp235,
	str	ip, [r3, #104]	@ tmp239, <variable>.StreamBitOffset
	b	.L59	@
.L67:
	ldr	r6, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp313, <variable>.StreamBitOffset,
	ldr	r5, [r3, #104]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp308, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.814, prephitmp.731, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.814,
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r4, r4, #15	@ tmp310, BytePos0.814,
	str	r4, [r3, #92]	@ tmp310, <variable>.StreamPhyAddr
	add	r5, r7, r8, asl #3	@, tmp314, tmp313, tmp311,
	str	r5, [r3, #100]	@ tmp314, <variable>.StreamBitOffset
	ldr	r4, [r0, #52]	@ <variable>.Rv8DecParam.StreamBaseAddr, <variable>.Rv8DecParam.StreamBaseAddr
	rsb	ip, r4, ip	@ BytePos1, <variable>.Rv8DecParam.StreamBaseAddr, tmp317
	and	r4, ip, #15	@ tmp321, BytePos1,
	bic	r5, ip, #15	@ tmp320, BytePos1,
	str	r5, [r3, #96]	@ tmp320, <variable>.StreamPhyAddr
	add	ip, r6, r4, asl #3	@, tmp324, tmp323, tmp321,
	str	ip, [r3, #104]	@ tmp324, <variable>.StreamBitOffset
	b	.L95	@
.L57:
	mov	r0, #1	@ D.38524,
	b	.L61	@
.L93:
	ldr	r5, [r0, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.731, tmp298
	and	r6, ip, #15	@ tmp301, BytePos0,
	bic	r4, ip, #15	@ tmp300, BytePos0,
	str	r4, [r0, #92]	@ tmp300, <variable>.StreamPhyAddr
	add	r5, r1, r6, asl #3	@, tmp304, tmp303, tmp301,
	str	r5, [r0, #100]	@ tmp304, <variable>.StreamBitOffset
	b	.L94	@
	.fnend
	.size	Real8_ModifySliceMsg, .-Real8_ModifySliceMsg
	.align	2
	.global	REAL8DEC_Support
	.type	REAL8DEC_Support, %function
REAL8DEC_Support:
	.fnstart
.LFB1943:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp134,
	str	r3, [r0, #0]	@ tmp134,* flag
	bx	lr	@
	.fnend
	.size	REAL8DEC_Support, .-REAL8DEC_Support
	.align	2
	.global	REAL8DEC_GetImageBuffer
	.type	REAL8DEC_GetImageBuffer, %function
REAL8DEC_GetImageBuffer:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #39320	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39187,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.39190,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.39190,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	REAL8DEC_GetImageBuffer, .-REAL8DEC_GetImageBuffer
	.align	2
	.global	REAL8DEC_RecycleImage
	.type	REAL8DEC_RecycleImage, %function
REAL8DEC_RecycleImage:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r4	@ D.39083, pCtx
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r5, #39320	@ tmp138,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.39083,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL8DEC_RecycleImage, .-REAL8DEC_RecycleImage
	.align	2
	.global	REAL8DEC_Init
	.type	REAL8DEC_Init, %function
REAL8DEC_Init:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #39312	@ tmp139,
	ldr	r8, [r0, r6]	@ D.38598, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #39328	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	ip, r4, #38912	@, pCtx,
	add	r0, ip, #56	@,,
	str	r8, [r4, r6]	@ D.38598, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r2, #37748	@ tmp145,
	movw	r0, #37744	@ tmp143,
	mov	r1, #15	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movw	r3, #11370	@ tmp147,
	str	r1, [r4, r2]	@ tmp144, <variable>.CodecInfo.PrevPicMb0QP
	movw	r2, #37664	@ tmp155,
	str	r1, [r4, r0]	@ tmp144, <variable>.CodecInfo.PrevPicQP
	movw	r1, #37560	@ tmp159,
	ldr	ip, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, #8192	@ tmp156,
	str	r0, [r4, r2]	@ tmp156, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	movw	r2, #39324	@ tmp157,
	mov	r7, #0	@ tmp151,
	mov	r0, r4	@, pCtx
	strb	ip, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	mov	ip, #1	@ tmp154,
	movw	r3, #11372	@ tmp150,
	strb	ip, [r4, r1]	@ tmp154, <variable>.CodecInfo.PictureHeader.pixel_aspect_ratio
	movw	r1, #37636	@ tmp153,
	strb	r7, [r4, r3]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	ip, [r4, r1]	@ tmp154, <variable>.CodecInfo.PictureHeader.Fid
	str	ip, [r4, r2]	@ tmp154, <variable>.DSDNeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #39320	@ tmp162,
	cmn	r0, #1	@ D.38609,
	str	r0, [r4, r3]	@ D.38609, <variable>.ChanID
	movne	r0, r7	@ D.38613, tmp151
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38613,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	REAL8DEC_Init, .-REAL8DEC_Init
	.align	2
	.global	Real8_SetImgFormat
	.type	Real8_SetImgFormat, %function
Real8_SetImgFormat:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #39320	@ tmp142,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #38924	@ tmp144,
	ldr	r0, [r0, r1]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r1, #37640	@ tmp146,
	ldr	r2, [r5, r1]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	mov	r1, #0	@ tmp150,
	str	r1, [r4, #128]	@ tmp150, <variable>.is_fld_save
	and	r3, r2, #3	@ D.38403, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #37648	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.38403,
	str	r3, [r4, #136]	@ D.38403, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.38403, <variable>.top_fld_type
	orr	ip, lr, #32	@ tmp148, tmp148,
	str	ip, [r4, #140]	@ tmp148, <variable>.format
	movw	lr, #37644	@ tmp153,
	ldr	r3, [r5, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.CodecInfo.PictureHeader.pic_width_in_pixel
	str	r3, [r4, #144]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_pixel, <variable>.image_width
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.CodecInfo.PictureHeader.pic_height_in_pixel
	str	ip, [r4, #148]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_pixel, <variable>.image_height
	bl	SetAspectRatio	@
	ldr	r2, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L124	@,
.L122:
	mov	r3, #8	@ tmp170,
	mov	r2, #1	@ tmp173,
	mov	r1, #0	@ tmp171,
	str	r3, [r4, #308]	@ tmp170, <variable>.ImageDnr.QP_U
	str	r3, [r4, #300]	@ tmp170, <variable>.ImageDnr.video_standard
	strb	r2, [r4, #293]	@ tmp173, <variable>.ImageDnr.chroma_format_idc
	strb	r1, [r4, #288]	@ tmp171, <variable>.ImageDnr.pic_structure
	strb	r2, [r4, #295]	@ tmp173, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #304]	@ tmp170, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp170, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L124:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.38411, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.38411,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.38411
	mul	r1, r1, lr	@ D.38417, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.38417, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.38417
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.38411
	str	r1, [r4, #36]	@ tmp164, <variable>.chrom_vir_addr
	str	r0, [r4, #100]	@ tmp166, <variable>.btm_chrom_phy_addr
	mov	r0, lr	@, tmp162
	str	lr, [r4, #92]	@ tmp162, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	ip, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L122	@
	.fnend
	.size	Real8_SetImgFormat, .-Real8_SetImgFormat
	.align	2
	.global	REAL8DEC_VDMPostProc
	.type	REAL8DEC_VDMPostProc, %function
REAL8DEC_VDMPostProc:
	.fnstart
.LFB1941:
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
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #39320	@ tmp143,
	movw	r3, #38924	@ tmp145,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L127	@,
	movw	lr, #37640	@ tmp148,
	movw	r2, #11373	@ tmp147,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	ip, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp154, Mb0QpInCurrPic,
	movwne	ip, #37748	@ tmp153,
	strne	r6, [r4, ip]	@ tmp154, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.558,
	blt	.L130	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.558,
.L130:
	str	r5, [r0, #180]	@ iftmp.558, <variable>.error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	Real8_SetImgFormat	@
	movw	r3, #11370	@ tmp155,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L133	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #1	@ <variable>.s32DecOrderOutput,
	beq	.L133	@,
	movw	lr, #37640	@ tmp161,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L133	@,
	movw	r3, #11375	@ tmp163,
	movw	r2, #38928	@ tmp170,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r0, #38916	@ tmp165,
	mvnls	r1, #0	@ prephitmp.964,
	ldrhi	r1, [r4, r0]	@ prephitmp.964,
	cmn	r1, #1	@ prephitmp.964,
	str	r1, [r4, r2]	@ prephitmp.964, <variable>.CodecInfo.ToQueFsID
	beq	.L137	@,
.L141:
	movw	r5, #39320	@ tmp171,
	movw	r6, #38928	@ tmp175,
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
	mov	r1, #8	@,
	add	r3, r3, #56	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L140	@,
.L137:
	movw	lr, #38816	@ tmp185,
	mov	r0, #1	@ D.39140,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, ip, r0	@ tmp188, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, lr]	@ tmp188, <variable>.CodecInfo.FrmCnt
.L127:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L133:
	movw	ip, #38924	@ tmp169,
	movw	r2, #38928	@ tmp170,
	ldr	r1, [r4, ip]	@ prephitmp.964,
	cmn	r1, #1	@ prephitmp.964,
	str	r1, [r4, r2]	@ prephitmp.964, <variable>.CodecInfo.ToQueFsID
	bne	.L141	@,
	b	.L137	@
.L140:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.39140,
	b	.L127	@
	.fnend
	.size	REAL8DEC_VDMPostProc, .-REAL8DEC_VDMPostProc
	.align	2
	.global	REAL8DEC_GetRemainImg
	.type	REAL8DEC_GetRemainImg, %function
REAL8DEC_GetRemainImg:
	.fnstart
.LFB1940:
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
	beq	.L154	@,
	movw	r6, #39320	@ tmp142,
	movw	r7, #38920	@ tmp144,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L154	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L152	@,
.L154:
	add	r5, r4, #38912	@ tmp170, pCtx,
	add	r5, r5, #56	@ tmp170, tmp170,
.L143:
	mov	r0, r5	@, tmp170
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L152:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ tmp170, pCtx,
	bl	Real8_SetImgFormat	@
	add	r5, r5, #56	@ tmp170, tmp170,
	mov	r1, #1	@ tmp150,
	str	r1, [r8, #224]	@ tmp150, <variable>.last_frame
	mov	r2, r1	@, tmp150
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #8	@,
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, tmp170
	str	r8, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L144	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	b	.L143	@
.L144:
	ldr	r2, [r8, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r2, #100	@ <variable>.error_level,
	bhi	.L143	@,
	ldr	ip, [r8, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #31	@ <variable>.image_width,
	bls	.L143	@,
	ldr	lr, [r8, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	bls	.L143	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	REAL8DEC_GetRemainImg, .-REAL8DEC_GetRemainImg
	.align	2
	.type	Real8_FlushFrameToVo, %function
Real8_FlushFrameToVo:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r5, #39320	@ tmp140,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L161	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L162	@,
.L157:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L162:
	mov	r0, r4	@, pCtx
	bl	Real8_SetImgFormat	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r3, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #8	@,
	add	r3, r3, #56	@,,
	mov	r2, r4	@, pCtx
	str	r7, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L157	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
.L161:
	mvn	r0, #0	@ ret,
	b	.L157	@
	.fnend
	.size	Real8_FlushFrameToVo, .-Real8_FlushFrameToVo
	.align	2
	.global	Real8_CB_FindNextSliceStartCode
	.type	Real8_CB_FindNextSliceStartCode, %function
Real8_CB_FindNextSliceStartCode:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r7, r0, #7	@ tmp142, D.38096,
	cmp	r0, #0	@ D.38096,
	movlt	r0, r7	@ D.38096, tmp142
	mov	r7, r0, asr #3	@ tmp143, D.38096,
	sub	r6, r7, #2	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L164	@,
	sub	r2, r7, #3	@ tmp147, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	and	r7, r2, #1	@ tmp149, tmp147,
	bl	BsShow	@
	cmp	r0, #1	@ D.38098,
	mov	r3, r0	@ D.38098,
	beq	.L178	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i,
	cmp	r6, r5	@ RemainByte, i
	ble	.L164	@,
	cmp	r7, #0	@ tmp149,
	beq	.L167	@,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	bl	BsShow	@
	cmp	r0, r5	@ D.38098,
	mov	r3, r0	@ D.38098,
	beq	.L178	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i,
	cmp	r6, r5	@ RemainByte, i
	bgt	.L167	@,
	b	.L164	@
.L165:
	bl	BsSkip	@
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r3, r0	@ D.38098,
	cmp	r3, #1	@ D.38098,
	mov	r0, r4	@, pBs
	beq	.L178	@,
	bl	BsSkip	@
	cmp	r6, r5	@ RemainByte, i
	ble	.L164	@,
.L167:
	mov	r1, #17	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp150, i,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i, tmp150,
	mov	r3, r0	@ D.38098,
	cmp	r3, #1	@ D.38098,
	mov	r0, r4	@, pBs
	bne	.L165	@,
.L178:
	mov	r0, r3	@ D.38101, D.38098
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L164:
	mov	r0, #0	@ D.38101,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	Real8_CB_FindNextSliceStartCode, .-Real8_CB_FindNextSliceStartCode
	.align	2
	.global	Real8_CB_GetSSC
	.type	Real8_CB_GetSSC, %function
Real8_CB_GetSSC:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.38151,
	ldmeqfd	sp!, {r3, pc}	@
	bl	Real8_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.38151,,
	movne	r0, #1	@ D.38151
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Real8_CB_GetSSC, .-Real8_CB_GetSSC
	.align	2
	.global	Real8_CB_GetVLCBits
	.type	Real8_CB_GetVLCBits, %function
Real8_CB_GetVLCBits:
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
.L184:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r1, r0, r7	@ tmp144,, tmp150
	mov	r0, r6	@, pBs
	ldrb	ip, [r1, #60]	@ zero_extendqisi2	@ lengthAndInfo, gs_VLCDecodeTable
	and	r2, ip, #15	@ tmp147, lengthAndInfo,
	mov	r1, ip, lsr #4	@ thisChunksLength, lengthAndInfo,
	mov	r3, ip, lsr #5	@ tmp146, lengthAndInfo,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@, info, tmp147, info,
	bl	BsSkip	@
	tst	r4, #1	@ length,
	beq	.L184	@,
	str	r5, [r8, #0]	@ info,* pInfo
	mov	r0, r4	@, length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real8_CB_GetVLCBits, .-Real8_CB_GetVLCBits
	.align	2
	.global	Real8_CB_Get1Bit
	.type	Real8_CB_Get1Bit, %function
Real8_CB_Get1Bit:
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
	.size	Real8_CB_Get1Bit, .-Real8_CB_Get1Bit
	.align	2
	.global	Real8_CB_GetBits
	.type	Real8_CB_GetBits, %function
Real8_CB_GetBits:
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
	.size	Real8_CB_GetBits, .-Real8_CB_GetBits
	.align	2
	.global	Real8_CB_GetSliceHeader
	.type	Real8_CB_GetSliceHeader, %function
Real8_CB_GetSliceHeader:
	.fnstart
.LFB1928:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	ldr	r4, [sp, #36]	@ pPictureHeader, pPictureHeader
	mov	r8, r3	@ iSliceGFID, iSliceGFID
	mov	r5, r2	@ iSliceMBA, iSliceMBA
	mov	r7, r0	@ pBs, pBs
	ldr	r6, [sp, #32]	@ iSQUANT, iSQUANT
	ldr	r3, [r4, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	beq	.L211	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L212	@,
	mov	r3, #1	@ D.38178,
	mov	r0, #0	@ tmp195,
	str	r0, [r2, #0]	@ tmp195,* iSliceMBA
	mvn	r2, #0	@ tmp196,
	str	r2, [r6, #0]	@ tmp196,* iSQUANT
.L204:
	mov	r0, r3	@, D.38178
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L211:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L193	@,
	mov	r1, #3	@,
	ldr	sl, [r4, #40]	@ D.38169, <variable>.Rv8ParsePicParam.mba
	bl	Real8_CB_GetBits	@
	cmp	r0, #7	@ versionEncoding,
	bhi	.L194	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	add	r0, r2, r0, asl #2	@, tmp174, tmp171, versionEncoding,
	ldr	r1, [r0, #316]	@ tmp176, s_RVVersionEncodingToMinorVersion
	cmp	r1, #2	@ tmp176,
	bhi	.L194	@,
	cmn	sl, #1	@ D.38169,
	movne	sl, #0	@, D.39921
	moveq	sl, #1	@, D.39921
	cmp	sl, #0	@ D.39921,
	bne	.L213	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	ldr	ip, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, ip	@, <variable>.Rv8ParsePicParam.ptype
	bne	.L194	@,
.L196:
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L194	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	uxtb	r3, r0	@ D.38191,
	strb	r3, [r4, #6]	@ D.38191, <variable>.Rv8ParsePicParam.pquant
	cmp	r3, #31	@ D.38191,
	bhi	.L194	@,
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	subs	r1, r0, #0	@ tmp180,,
	movne	r1, #1	@ tmp180
	cmp	sl, #0	@ D.39921,
	strb	r1, [r4, #5]	@ tmp180, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	beq	.L197	@,
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #44]	@, <variable>.Rv8ParsePicParam.tr
.L198:
	ldr	r1, [r4, #8]	@ D.38205, <variable>.Rv8ParsePicParam.m_pctszSize
	cmp	r1, #0	@ D.38205,
	beq	.L199	@,
	cmp	sl, #0	@ D.39921,
	beq	.L200	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #12]	@ D.38211, <variable>.Rv8ParsePicParam.m_pSizes
	cmp	r3, #0	@ D.38211,
	str	r0, [r4, #56]	@ D.38210, <variable>.Rv8ParsePicParam.pctsz
	beq	.L194	@,
	add	r1, r3, r0, asl #3	@, tmp184, D.38211, D.38210,
	ldr	ip, [r3, r0, asl #3]	@ width,* D.38211
	mov	r0, r4	@, pPictureHeader
	ldr	lr, [r1, #4]	@ height,
	str	ip, [r4, #88]	@ width, <variable>.pic_width_in_pixel
	str	ip, [r4, #60]	@ width, <variable>.Rv8ParsePicParam.pwidth
	str	lr, [r4, #84]	@ height, <variable>.pic_height_in_pixel
	str	lr, [r4, #64]	@ height, <variable>.Rv8ParsePicParam.pheight
	bl	Real8_CB_SetDimensions	@
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
.L201:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	strb	r0, [r4, #4]	@, <variable>.Rv8ParsePicParam.rtype
.L193:
	ldr	r1, [r4, #40]	@ <variable>.Rv8ParsePicParam.mba, <variable>.Rv8ParsePicParam.mba
	mov	r3, #1	@ D.38178,
	mov	r0, #0	@ tmp192,
	str	r1, [r5, #0]	@ <variable>.Rv8ParsePicParam.mba,* iSliceMBA
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	str	ip, [r6, #0]	@ <variable>.Rv8ParsePicParam.pquant,* iSQUANT
	str	r0, [r8, #0]	@ tmp192,* iSliceGFID
	mov	r0, r3	@, D.38178
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L212:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L214	@,
.L194:
	mov	r3, #0	@ D.38178,
.L215:
	mov	r0, r3	@, D.38178
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L214:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r5, #0]	@,* iSliceMBA
	ldr	r3, [r4, #32]	@ <variable>.Rv8ParsePicParam.m_mbaSize, <variable>.Rv8ParsePicParam.m_mbaSize
	cmp	r3, #11	@ <variable>.Rv8ParsePicParam.m_mbaSize,
	bls	.L206	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L194	@,
.L206:
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #31	@ D.38253,
	str	r0, [r6, #0]	@ D.38253,* iSQUANT
	bgt	.L194	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.38258,
	mov	r4, r0	@ D.38258,
	bne	.L194	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	mov	r3, r4	@ D.38178, D.38258
	str	r0, [r8, #0]	@,* iSliceGFID
	b	.L204	@
.L213:
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #36]	@, <variable>.Rv8ParsePicParam.ptype
	b	.L196	@
.L197:
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	ldr	r2, [r4, #44]	@ <variable>.Rv8ParsePicParam.tr, <variable>.Rv8ParsePicParam.tr
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.tr
	beq	.L198	@,
	mov	r3, #0	@ D.38178,
	b	.L215	@
.L200:
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #56]	@ <variable>.Rv8ParsePicParam.pctsz, <variable>.Rv8ParsePicParam.pctsz
	cmp	r0, r3	@, <variable>.Rv8ParsePicParam.pctsz
	bne	.L194	@,
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
.L203:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	Real8_CB_GetBits	@
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	cmp	r0, r2	@, <variable>.Rv8ParsePicParam.rtype
	beq	.L193	@,
	mov	r3, #0	@ D.38178,
	b	.L215	@
.L199:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	cmp	sl, #0	@ D.39921,
	str	r0, [r4, #40]	@, <variable>.Rv8ParsePicParam.mba
	beq	.L203	@,
	b	.L201	@
	.fnend
	.size	Real8_CB_GetSliceHeader, .-Real8_CB_GetSliceHeader
	.align	2
	.global	Real8_CB_SearchBits_IgnoreOnly0
	.type	Real8_CB_SearchBits_IgnoreOnly0, %function
Real8_CB_SearchBits_IgnoreOnly0:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, r3	@ lookahead, lookahead
	mov	r4, r2	@ code, code
	mov	r6, r0	@ pBs, pBs
	mov	r7, r1	@ nbits, nbits
	bl	Real8_CB_GetBits	@
	cmp	r0, r4	@ w, code
	cmpne	r5, #0	@, lookahead,
	mov	r3, r0	@ w,
	beq	.L217	@,
	sub	r2, r7, #1	@ tmp152, nbits,
	mov	sl, #1	@ tmp153,
	mov	sl, sl, asl r2	@ msb, tmp153,
	ands	r8, r0, sl	@ tmp154, w, msb
	bne	.L218	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp155,
	movt	r0, #:upper16:.LANCHOR0	@ tmp155,
	add	r7, r0, r7, asl #2	@, tmp158, tmp155, nbits,
	ldr	r9, [r7, #348]	@ pretmp.1203, GetBitsMask
	b	.L219	@
.L220:
	tst	r3, sl	@ w, msb
	bne	.L218	@,
.L219:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.38123, pretmp.1203, w,
	bl	Real8_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.38123,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L220	@,
.L217:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.38130
	moveq	r0, #1	@, D.38130
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L218:
	mov	r0, #0	@ D.38130,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	Real8_CB_SearchBits_IgnoreOnly0, .-Real8_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real8_CB_GetCPFMT
	.type	Real8_CB_GetCPFMT, %function
Real8_CB_GetCPFMT:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #4	@,
	mov	r5, r0	@ pBs, pBs
	bl	Real8_CB_GetBits	@
	mov	r1, #9	@,
	strb	r0, [r4, #0]	@, <variable>.pixel_aspect_ratio
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	add	r1, r0, #1	@ tmp142,,
	mov	r0, r5	@, pBs
	mov	r3, r1, asl #2	@ tmp143, tmp142,
	str	r3, [r4, #88]	@ tmp143, <variable>.pic_width_in_pixel
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.38036,
	mov	r6, r0	@ D.38036,
	movne	r6, #0	@ D.38039,
	beq	.L227	@,
	mov	r0, r6	@, D.38039
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L227:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real8_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #84]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.38039
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real8_CB_GetCPFMT, .-Real8_CB_GetCPFMT
	.align	2
	.global	Real8_CB_GetPictureHeader
	.type	Real8_CB_GetPictureHeader, %function
Real8_CB_GetPictureHeader:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	cmp	r3, #1	@ <variable>.Fid,
	mov	r5, r0	@ pBs, pBs
	bne	.L229	@,
	mvn	r1, #0	@ tmp147,
	add	r2, sp, #16	@,,
	str	r1, [r4, #40]	@ tmp147, <variable>.Rv8ParsePicParam.mba
	add	r3, sp, #20	@,,
	mov	r1, #0	@,
	add	ip, sp, #12	@ tmp150,,
	str	r4, [sp, #4]	@ pPictureHeader,
	str	ip, [sp, #0]	@ tmp150,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r0, #1	@ Status,
	beq	.L249	@,
.L231:
	ldr	lr, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	ldr	r3, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	add	ip, lr, #15	@ tmp194, <variable>.pic_width_in_pixel,
	add	r1, r3, #15	@ tmp196, <variable>.pic_height_in_pixel,
	mov	r2, ip, lsr #4	@ D.38358, tmp194,
	str	r2, [r4, #96]	@ D.38358, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.38360, tmp196,
	str	lr, [r4, #92]	@ D.38360, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp198, D.38358, D.38360
	str	ip, [r4, #100]	@ tmp198, <variable>.total_mbs
.L245:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L229:
	mov	r1, #140	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r0, r5	@, pBs
	mov	r1, #24	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #1	@,
	beq	.L250	@,
.L238:
	mvn	r0, #1	@ Status,
	b	.L245	@
.L250:
	add	r6, sp, #8	@ tmp200,,
	mov	r0, r5	@, pBs
	mov	r1, r6	@, tmp200
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L238	@,
	ldr	r3, [sp, #8]	@ info, info
	ands	r2, r3, #1	@ tmp171, info,
	bne	.L238	@,
	tst	r3, #2	@ info,
	ubfx	r0, r3, #7, #8	@ tmp182, info,,
	strne	r2, [r4, #84]	@ tmp171, <variable>.pic_height_in_pixel
	ubfx	r3, r3, #2, #5	@ tmp179, info,,
	moveq	r2, #176	@ tmp173,
	strne	r2, [r4, #88]	@ tmp171, <variable>.pic_width_in_pixel
	streq	r2, [r4, #88]	@ tmp173, <variable>.pic_width_in_pixel
	mov	r1, r6	@, tmp200
	moveq	r2, #144	@ tmp174,
	str	r0, [r4, #108]	@ tmp182, <variable>.TR
	streq	r2, [r4, #84]	@ tmp174, <variable>.pic_height_in_pixel
	mov	r0, r5	@, pBs
	str	r3, [r4, #120]	@ tmp179, <variable>.PQUANT
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #1	@ length.1278,
	streq	r0, [r4, #80]	@ length.1278, <variable>.PicCodType
	beq	.L242	@,
	cmp	r0, #3	@ length.1278,
	bne	.L243	@,
	ldr	ip, [sp, #8]	@ info, info
	cmp	ip, #1	@ info,
	moveq	ip, #0	@ tmp186,
	streq	ip, [r4, #80]	@ tmp186, <variable>.PicCodType
	bne	.L238	@,
.L242:
	ldr	r3, [r4, #88]	@ prephitmp.1265, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1265,
	beq	.L251	@,
.L244:
	sub	r1, r3, #48	@ tmp189, prephitmp.1265,
	movw	r2, #8144	@ tmp190,
	cmp	r1, r2	@ tmp189, tmp190
	bhi	.L238	@,
	ldr	r0, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r3, r0, #48	@ tmp191, <variable>.pic_height_in_pixel,
	cmp	r3, r2	@ tmp191, tmp190
	bhi	.L238	@,
.L247:
	mov	r0, r4	@, pPictureHeader
	bl	Real8_CB_SetDimensions	@
	mov	r0, #1	@ Status,
	b	.L231	@
.L249:
	ldr	r0, [r4, #36]	@ <variable>.Rv8ParsePicParam.ptype, <variable>.Rv8ParsePicParam.ptype
	cmp	r0, #3	@ <variable>.Rv8ParsePicParam.ptype,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.Rv8ParsePicParam.ptype
	b	.L232	@
.L237:
	.word	.L233
	.word	.L234
	.word	.L235
	.word	.L236
.L236:
	mov	r3, #2	@ tmp157,
	str	r3, [r4, #80]	@ tmp157, <variable>.PicCodType
.L232:
	ldr	r5, [r4, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	movw	r3, #8144	@ tmp166,
	ldrb	r6, [r4, #4]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rv8ParsePicParam.rtype
	sub	lr, r5, #48	@ tmp164, <variable>.pic_width_in_pixel,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	ldrb	r5, [r4, #5]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	cmp	lr, r3	@ tmp164, tmp166
	add	r0, r4, #44
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	str	r6, [r4, #112]	@ <variable>.Rv8ParsePicParam.rtype, <variable>.Rounding
	str	r5, [r4, #116]	@ <variable>.Rv8ParsePicParam.deblocking_filter_passthrough, <variable>.Deblocking_Filter_Passthrough
	str	ip, [r4, #120]	@ <variable>.Rv8ParsePicParam.pquant, <variable>.PQUANT
	str	r0, [r4, #108]	@ <variable>.Rv8ParsePicParam.tr, <variable>.TR
	str	r1, [r4, #128]	@ <variable>.Rv8ParsePicParam.trb, <variable>.TRB
	str	r2, [r4, #132]	@ <variable>.Rv8ParsePicParam.dbq, <variable>.DBQUANT
	bhi	.L238	@,
	ldr	r1, [r4, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	sub	r2, r1, #48	@ tmp167, <variable>.pic_height_in_pixel,
	cmp	r2, r3	@ tmp167, tmp166
	bls	.L247	@,
	mvn	r0, #1	@ Status,
	b	.L245	@
.L235:
	mov	lr, #1	@ tmp156,
	str	lr, [r4, #80]	@ tmp156, <variable>.PicCodType
	b	.L232	@
.L234:
	mov	r6, #0	@ tmp154,
	str	r6, [r4, #20]	@ tmp154, <variable>.Rv8ParsePicParam.m_isForcedKey
	str	r6, [r4, #80]	@ tmp154, <variable>.PicCodType
	b	.L232	@
.L233:
	mov	r5, #0	@ tmp152,
	mov	r2, #1	@ tmp153,
	str	r5, [r4, #80]	@ tmp152, <variable>.PicCodType
	str	r2, [r4, #20]	@ tmp153, <variable>.Rv8ParsePicParam.m_isForcedKey
	b	.L232	@
.L243:
	cmp	r0, #5	@ length.1278,
	bne	.L238	@,
	ldr	r3, [sp, #8]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L238	@,
	add	lr, r3, #2	@ tmp188, tmp188,
	str	lr, [r4, #80]	@ tmp188, <variable>.PicCodType
	b	.L242	@
.L251:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real8_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L238	@,
	ldr	r3, [r4, #88]	@ prephitmp.1265, <variable>.pic_width_in_pixel
	b	.L244	@
	.fnend
	.size	Real8_CB_GetPictureHeader, .-Real8_CB_GetPictureHeader
	.align	2
	.global	Real8_ArrangeVHBMem
	.type	Real8_ArrangeVHBMem, %function
Real8_ArrangeVHBMem:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r2, #96]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ pCtx, pCtx
	cmp	r3, #1	@ <variable>.pic_width_in_mb,
	bls	.L265	@,
	ldr	r0, [r2, #92]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #1	@ <variable>.pic_height_in_mb,
	bls	.L265	@,
	ldr	r3, [r1, #0]	@ D.37970, <variable>.pstExtraData
	ldr	r1, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r1, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L256	@,
	ldr	r6, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L278	@,
.L257:
	ldr	r7, [r2, #84]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1300,
	ldr	r6, [r2, #88]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L263:
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
	strb	r8, [sp, #7]	@ prephitmp.1300, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #39320	@ tmp183,
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
	beq	.L279	@,
.L255:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L256:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L257	@,
	ldr	r6, [r2, #88]	@ temp.1315, <variable>.pic_width_in_pixel
	ldr	r0, [r3, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r6, r0	@ temp.1315, <variable>.stChanOption.s32MaxWidth
	bhi	.L265	@,
	ldr	r7, [r2, #84]	@ temp.1317, <variable>.pic_height_in_pixel
	ldr	ip, [r3, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r7, ip	@ temp.1317, <variable>.stChanOption.s32MaxHeight
	bhi	.L265	@,
.L266:
	ldr	r5, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L268	@,
	add	r9, sl, #1	@ PmvNum.1320, DecFsNum,
	cmp	r9, #17	@ PmvNum.1320,
	movge	r9, #17	@ PmvNum,
.L268:
	ldrb	r8, [r3, #616]	@ zero_extendqisi2	@ prephitmp.1300, <variable>.stChanOption.s32DisplayFrameNum
	b	.L263	@
.L265:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.37967,
	b	.L255	@
.L279:
	ldr	lr, [r4, #0]	@ temp.1328, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L280	@,
	mov	r3, #1	@ tmp192,
	movw	ip, #11372	@ tmp191,
	mov	r0, r3	@ D.37967, tmp192
	strb	r3, [r4, ip]	@ tmp192, <variable>.CodecInfo.Imgbuf_allocated
	b	.L255	@
.L278:
	ldr	r6, [r3, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	ldr	ip, [r2, #88]	@ <variable>.pic_width_in_pixel, <variable>.pic_width_in_pixel
	cmp	ip, r6	@ <variable>.pic_width_in_pixel, PicWidth
	bhi	.L265	@,
	ldr	r2, [r2, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	ldr	r7, [r3, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r7	@ <variable>.pic_height_in_pixel, PicHeight
	bhi	.L265	@,
	movw	r1, #11372	@ tmp159,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L266	@,
	b	.L255	@
.L280:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.37967, D.38018
	b	.L255	@
	.fnend
	.size	Real8_ArrangeVHBMem, .-Real8_ArrangeVHBMem
	.align	2
	.global	Real8_GetImageBuffer
	.type	Real8_GetImageBuffer, %function
Real8_GetImageBuffer:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #39320	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #38924	@ tmp141,
	cmp	r0, #0	@ D.37922,
	mov	r1, r0	@ D.37922,
	str	r0, [r4, r3]	@ D.37922, <variable>.CodecInfo.CurFsID
	blt	.L288	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r8, r0, #0	@ pLf,
	beq	.L289	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L285	@,
	ldr	ip, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L285	@,
	ldr	lr, [r8, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L285	@,
	bl	vfmw_dprint_nothing	@
.L285:
	movw	r3, #38924	@ tmp170,
	mov	r0, #1	@ D.37930,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r1, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L288:
	movw	r6, #38920	@ tmp144,
	bl	vfmw_dprint_nothing	@
	movw	r7, #38916	@ tmp148,
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
	add	r1, r1, #56	@,,
	str	r0, [r4, r7]	@ D.37928, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r6]	@ D.37928, <variable>.CodecInfo.BwdFsID
	movw	r0, #11375	@ tmp158,
	strb	r8, [r4, r0]	@ tmp151, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r8	@ D.37930, tmp151
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L289:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.37930, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real8_GetImageBuffer, .-Real8_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL8DEC_Decode
	.type	REAL8DEC_Decode, %function
REAL8DEC_Decode:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 320
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #332
	sub	sp, sp, #332	@,,
	add	r8, sp, #204	@ tmp900,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #140	@,
	mov	r1, #0	@,
	add	r0, sp, #64	@,,
	bl	memset	@
	mov	r1, #0	@,
	mov	r2, #64	@,
	mov	r0, r8	@, tmp900
	bl	memset	@
	movw	ip, #37620	@ tmp255,
	ldr	r2, [r4, ip]	@ D.38694, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth
	movw	r3, #37624	@ tmp258,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight
	movw	r0, #37628	@ tmp256,
	movw	ip, #37636	@ tmp266,
	cmp	r5, #0	@ pPacket,
	str	r2, [r4, r0]	@ D.38694, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth_prev
	mov	r1, #37632	@ tmp257,
	mov	r0, #1	@ tmp267,
	add	r6, r4, #37376	@ pPictureHeader, pCtx,
	str	r0, [r4, ip]	@ tmp267, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #37664	@ tmp268,
	str	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp269,
	str	r2, [sp, #124]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp269, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [sp, #128]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r0, [sp, #140]	@ tmp267, TmpPictureHeader.Fid
	str	r1, [sp, #168]	@ tmp269, TmpPictureHeader.m_uTRWrap
	str	r2, [sp, #132]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r3, [sp, #136]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	beq	.L382	@,
	add	r7, r4, #8	@ pRv8DecParam, pCtx,
	movw	r1, #11352	@,
	mov	r9, #0	@ tmp274,
	mov	r0, r7	@, pRv8DecParam
	bl	__memzero	@
	movw	r1, #38780	@ tmp273,
	str	r9, [r4, r1]	@ tmp274, <variable>.CodecInfo.BsOffset
	movw	r2, #38800	@ tmp275,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #38784	@ tmp277,
	movw	r1, #11360	@ tmp279,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #38788	@ tmp281,
	ldr	r0, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11368	@ tmp282,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ D.38717, <variable>.LenInByte
	str	r2, [r4, ip]	@ D.38717, <variable>.CodecInfo.BsLength
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L293	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #38792	@ tmp286,
	movw	r0, #11364	@ tmp288,
	movw	r1, #38796	@ tmp290,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11369	@ tmp292,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r1]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r0, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L383	@,
	sub	r1, r2, #75	@ tmp311, D.38717,
	movw	r3, #:lower16:3145652	@ tmp312,
	movt	r3, #:upper16:3145652	@ tmp312,
	cmp	r1, r3	@ tmp311, tmp312
	bhi	.L295	@,
.L385:
	movw	lr, #11360	@ tmp313,
	ldr	r1, [r4, lr]	@ D.38740, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.38740,
	beq	.L295	@,
	add	r5, r4, #38912	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #8	@,
	str	r0, [sp, #36]	@, %sfp
	bhi	.L295	@,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp316, temp.1530,
	and	r1, r0, #65280	@ tmp318, temp.1530,
	and	r2, r0, #16711680	@ tmp321, temp.1530,
	orr	r3, ip, r0, lsr #24	@, tmp317, tmp316, temp.1530,
	orr	ip, r3, r1, asl #8	@, tmp320, tmp317, tmp318,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp323, tmp320, tmp321,
	str	r3, [sp, #204]	@ tmp323, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp327, temp.1584,
	mov	r1, r0, lsr #24	@ tmp325, temp.1584,
	and	r2, r0, #16711680	@ tmp330, temp.1584,
	orr	r0, r1, r0, asl #24	@, tmp326, tmp325, temp.1584,
	orr	r3, r0, ip, asl #8	@, tmp329, tmp326, tmp327,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp332, tmp329, tmp330,
	str	ip, [sp, #208]	@ tmp332, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp334, D.38747,
	and	r1, r0, #65280	@ tmp336, D.38747,
	and	r2, r0, #16711680	@ tmp339, D.38747,
	orr	ip, r3, r0, lsr #24	@, tmp335, tmp334, D.38747,
	orr	r3, ip, r1, asl #8	@, tmp338, tmp335, tmp336,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp341, tmp338, tmp339,
	str	ip, [sp, #212]	@ tmp341, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp345, temp.1591,
	mov	r1, r0, asl #24	@ tmp343, temp.1591,
	and	r2, r0, #16711680	@ tmp348, temp.1591,
	orr	r0, r1, r0, lsr #24	@, tmp344, tmp343, temp.1591,
	orr	ip, r0, r3, asl #8	@, tmp347, tmp344, tmp345,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp350, tmp347, tmp348,
	str	r3, [sp, #216]	@ tmp350, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp352, temp.1601,
	and	r1, r0, #65280	@ tmp354, temp.1601,
	and	r2, r0, #16711680	@ tmp357, temp.1601,
	orr	r3, ip, r0, lsr #24	@, tmp353, tmp352, temp.1601,
	orr	ip, r3, r1, asl #8	@, tmp356, tmp353, tmp354,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp359, tmp356, tmp357,
	str	r3, [sp, #220]	@ tmp359, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp363, temp.1611,
	mov	r1, r0, asl #24	@ tmp361, temp.1611,
	and	r2, r0, #16711680	@ tmp366, temp.1611,
	orr	r0, r1, r0, lsr #24	@, tmp362, tmp361, temp.1611,
	orr	r3, r0, ip, asl #8	@, tmp365, tmp362, tmp363,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp368, tmp365, tmp366,
	str	ip, [sp, #224]	@ tmp368, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp370, temp.1621,
	and	r1, r0, #65280	@ tmp372, temp.1621,
	and	r2, r0, #16711680	@ tmp375, temp.1621,
	orr	ip, r3, r0, lsr #24	@, tmp371, tmp370, temp.1621,
	orr	r3, ip, r1, asl #8	@, tmp374, tmp371, tmp372,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp377, tmp374, tmp375,
	str	ip, [sp, #228]	@ tmp377, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp381, temp.1631,
	mov	r1, r0, asl #24	@ tmp379, temp.1631,
	and	r2, r0, #16711680	@ tmp384, temp.1631,
	orr	r0, r1, r0, lsr #24	@, tmp380, tmp379, temp.1631,
	orr	ip, r0, r3, asl #8	@, tmp383, tmp380, tmp381,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp386, tmp383, tmp384,
	str	r3, [sp, #232]	@ tmp386, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp388, temp.1641,
	and	r1, r0, #65280	@ tmp390, temp.1641,
	and	r2, r0, #16711680	@ tmp393, temp.1641,
	orr	r3, ip, r0, lsr #24	@, tmp389, tmp388, temp.1641,
	orr	ip, r3, r1, asl #8	@, tmp392, tmp389, tmp390,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp395, tmp392, tmp393,
	str	r3, [sp, #236]	@ tmp395, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp399, temp.1651,
	mov	r1, r0, asl #24	@ tmp397, temp.1651,
	and	r2, r0, #16711680	@ tmp402, temp.1651,
	orr	r0, r1, r0, lsr #24	@, tmp398, tmp397, temp.1651,
	orr	r3, r0, ip, asl #8	@, tmp401, tmp398, tmp399,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp404, tmp401, tmp402,
	str	ip, [sp, #240]	@ tmp404, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp406, temp.1661,
	and	r1, r0, #65280	@ tmp408, temp.1661,
	and	r2, r0, #16711680	@ tmp411, temp.1661,
	orr	ip, r3, r0, lsr #24	@, tmp407, tmp406, temp.1661,
	orr	r3, ip, r1, asl #8	@, tmp410, tmp407, tmp408,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp413, tmp410, tmp411,
	str	ip, [sp, #244]	@ tmp413, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp417, temp.1671,
	mov	r1, r0, asl #24	@ tmp415, temp.1671,
	and	r2, r0, #16711680	@ tmp420, temp.1671,
	orr	r0, r1, r0, lsr #24	@, tmp416, tmp415, temp.1671,
	orr	ip, r0, r3, asl #8	@, tmp419, tmp416, tmp417,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp422, tmp419, tmp420,
	str	r3, [sp, #248]	@ tmp422, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp424, temp.1681,
	and	r1, r0, #65280	@ tmp426, temp.1681,
	and	r2, r0, #16711680	@ tmp429, temp.1681,
	orr	r3, ip, r0, lsr #24	@, tmp425, tmp424, temp.1681,
	orr	ip, r3, r1, asl #8	@, tmp428, tmp425, tmp426,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp431, tmp428, tmp429,
	str	r3, [sp, #252]	@ tmp431, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp435, temp.1691,
	mov	r1, r0, asl #24	@ tmp433, temp.1691,
	and	r2, r0, #16711680	@ tmp438, temp.1691,
	orr	r0, r1, r0, lsr #24	@, tmp434, tmp433, temp.1691,
	orr	r3, r0, ip, asl #8	@, tmp437, tmp434, tmp435,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp440, tmp437, tmp438,
	str	ip, [sp, #256]	@ tmp440, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp442, temp.1701,
	and	r1, r0, #65280	@ tmp444, temp.1701,
	and	r2, r0, #16711680	@ tmp447, temp.1701,
	orr	ip, r3, r0, lsr #24	@, tmp443, tmp442, temp.1701,
	orr	r3, ip, r1, asl #8	@, tmp446, tmp443, tmp444,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp449, tmp446, tmp447,
	str	ip, [sp, #260]	@ tmp449, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r1, r0, #65280	@ tmp453, temp.1444,
	mov	r3, r0, asl #24	@ tmp451, temp.1444,
	and	r2, r0, #16711680	@ tmp456, temp.1444,
	orr	ip, r3, r0, lsr #24	@, tmp452, tmp451, temp.1444,
	orr	r3, ip, r1, asl #8	@, tmp455, tmp452, tmp453,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	orr	ip, r3, r2, lsr r1	@, tmp458, tmp455, tmp456,
	str	ip, [sp, #264]	@ tmp458, RPR_Sizes
	bl	Real8_CB_GetBits	@
	movw	r3, #37752	@ tmp459,
	cmp	r0, #255	@ D.38758,
	add	r0, r0, #1	@ D.38760, D.38758,
	str	r0, [r4, r3]	@ D.38760, <variable>.CodecInfo.TotalSliceNum
	bhi	.L295	@,
	cmp	r0, #0	@ D.38760,
	moveq	r3, r0	@ D.38761, D.38760
	addeq	r0, r4, #37632	@, pCtx,
	streq	r0, [sp, #40]	@, %sfp
	beq	.L297	@,
	add	r9, r4, #37632	@, pCtx,
	movw	fp, #:lower16:3145727	@ tmp918,
	str	r9, [sp, #40]	@, %sfp
	add	sl, r9, #124	@ ivtmp.1433,,
	movt	fp, #:upper16:3145727	@ tmp918,
	mov	r9, #0	@ i.1456,
	b	.L298	@
.L384:
	movw	lr, #37752	@,
	ldr	r3, [r4, lr]	@ D.38761, <variable>.CodecInfo.TotalSliceNum
	cmp	r3, r9	@ D.38761, i.1456
	bls	.L297	@,
.L298:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r9, r9, #1	@ i.1456, i.1456,
	bl	Real8_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp462, SliceByteOffset,
	and	r2, r0, #65280	@ tmp464, SliceByteOffset,
	orr	ip, r1, r0, lsr #24	@, tmp463, tmp462, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp467, SliceByteOffset,
	orr	r3, ip, r2, asl #8	@, tmp466, tmp463, tmp464,
	orr	r0, r3, r1, lsr #8	@, D.38776, tmp466, tmp467,
	str	r0, [sl, #0]	@ D.38776, <variable>.CodecInfo.SliceByteOffset
	cmp	r0, fp	@ D.38776, tmp918
	add	sl, sl, #4	@ ivtmp.1433, ivtmp.1433,
	ble	.L384	@,
.L295:
	mov	r0, #0	@ D.38700,
.L292:
	add	sp, sp, #332	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L383:
	movw	r6, #39320	@ tmp296,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.38700, tmp274
	b	.L292	@
.L293:
	movw	r1, #38796	@ tmp306,
	movw	r3, #:lower16:3145652	@ tmp312,
	str	r9, [r4, r1]	@ tmp274, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145652	@ tmp312,
	sub	r1, r2, #75	@ tmp311, D.38717,
	movw	ip, #11369	@ tmp308,
	cmp	r1, r3	@ tmp311, tmp312
	movw	r0, #38792	@ tmp302,
	movw	lr, #11364	@ tmp304,
	strb	r9, [r4, ip]	@ tmp274, <variable>.CodecInfo.IsLastSeg1
	str	r9, [r4, r0]	@ tmp274, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r4, lr]	@ tmp274, <variable>.CodecInfo.BsVirAddr1
	bls	.L385	@,
	b	.L295	@
.L382:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38700, pPacket
	b	.L292	@
.L297:
	ldr	r0, [sp, #40]	@, %sfp
	sub	sl, r3, #1	@ pretmp.1399, D.38761,
	tst	sl, #1	@ pretmp.1399,
	mov	r1, #0	@ i,
	add	fp, r0, #128	@ ivtmp.1587,,
	mov	r2, fp	@ ivtmp.1427, ivtmp.1587
	beq	.L299	@,
	cmp	r1, sl	@ i, pretmp.1399
	bcs	.L374	@,
	ldr	ip, [fp, #0]	@ D.38782, <variable>.CodecInfo.SliceByteOffset
	mov	r1, #1	@ i,
	ldr	r0, [fp, #-4]	@ D.38777, <variable>.CodecInfo.SliceByteOffset
	ldr	lr, [sp, #40]	@, %sfp
	cmp	ip, r0	@ D.38782, D.38777
	add	r2, lr, #132	@ ivtmp.1427,,
	bgt	.L299	@,
	b	.L295	@
.L300:
	ldr	r9, [r2, #0]	@ D.38782, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r2, #-4]	@ D.38777, <variable>.CodecInfo.SliceByteOffset
	cmp	r9, ip	@ D.38782, D.38777
	ble	.L295	@,
	ldr	ip, [r2, #4]	@ D.38782, <variable>.CodecInfo.SliceByteOffset
	add	r2, r0, #4	@ ivtmp.1427, tmp923,
	ldr	r0, [r0, #-4]	@ D.38777, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, r0	@ D.38782, D.38777
	ble	.L295	@,
.L299:
	cmp	r1, sl	@ i, pretmp.1399
	add	r9, r1, #1	@ tmp922, i,
	add	r1, r9, #1	@ i, tmp922,
	add	r0, r2, #4	@ tmp923, ivtmp.1427,
	bcc	.L300	@,
.L374:
	movw	sl, #37756	@ tmp473,
	mov	lr, r3, asl #3	@ tmp472, D.38761,
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	sl, lr, #66	@ PrevHeaderBytes, tmp472,
	add	r9, sl, r1	@ PrevOffsetBytes, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	sl, #3145728	@ PrevHeaderBytes,
	cmplt	r9, #3145728	@, PrevOffsetBytes,
	movlt	r3, #0	@,
	movge	r3, #1	@,
	str	r3, [sp, #40]	@, %sfp
	bge	.L295	@,
	cmp	r9, #73	@ PrevOffsetBytes,
	ble	.L295	@,
	movw	r0, #38788	@ tmp484,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r9, r2	@ D.38797, PrevOffsetBytes, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.38797,
	ble	.L295	@,
	movw	r0, #11360	@ tmp486,
	add	r3, sp, #268	@,,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	str	r3, [sp, #20]	@, %sfp
	add	r1, r9, lr	@, PrevOffsetBytes, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	ldr	r1, [sp, #36]	@, %sfp
	ldr	ip, .L400	@ tmp491,
	add	r2, sp, #328	@,,
	str	r8, [sp, #76]	@ tmp900, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	lr, r2, r1, asl #2	@, tmp495,,,
	str	r1, [sp, #80]	@, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp926,,,,
	ldr	r8, [sp, #20]	@ tmp490, %sfp
	stmia	r8!, {r0, r1, r2, r3}	@ tmp490,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp927,,,,
	ldr	ip, [ip, #0]	@ C.508, C.508
	stmia	r8!, {r0, r1, r2, r3}	@ tmp490,,,,
	mov	r0, r5	@, pBs
	str	ip, [r8, #0]	@ C.508, size
	add	r1, sp, #64	@,,
	ldr	ip, [lr, #-60]	@ tmp497, size
	str	ip, [sp, #72]	@ tmp497, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L386	@,
	movw	ip, #11372	@ tmp501,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldreq	r3, [r4, #0]	@ prephitmp.1403, <variable>.pstExtraData
	beq	.L303	@,
	ldr	r3, [r4, #0]	@ prephitmp.1403, <variable>.pstExtraData
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	addne	r8, sp, #64	@ tmp897,,
	beq	.L303	@,
.L304:
	mov	r1, r8	@, tmp897
	mov	r2, #140	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11370	@ tmp581,
	mov	r0, r4	@, pCtx
	ldr	r8, [r1, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r8, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real8_GetImageBuffer	@
	subs	r8, r0, #0	@ D.38878,
	beq	.L387	@,
	movw	ip, #38924	@ tmp586,
	movw	lr, #39320	@ tmp585,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	str	ip, [sp, #24]	@,
	str	lr, [sp, #32]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	r3, [sp, #24]	@,
	ldr	ip, [sp, #32]	@,
	subs	r8, r0, #0	@ pImg,
	beq	.L318	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r0, [r8, #8]	@ <variable>.pts, pImg,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [lr, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r0, [r8, #16]	@ <variable>.Usertag, pImg,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r0, [r2, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r0, [r8, #24]	@ <variable>.DispTime, pImg,
	mvn	r0, #0	@ tmp602,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r1, #0	@,
	ldr	r2, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r8, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r8, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r2, [r8, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r8, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [lr, #56]	@ tmp602, <variable>.pstExtraData,
	str	r3, [sp, #24]	@,
	str	ip, [sp, #32]	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #37640	@ tmp603,
	ldr	r3, [sp, #24]	@,
	ldr	r2, [r4, r2]	@ D.38893, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	ip, [sp, #32]	@,
	cmp	r2, #2	@ D.38893,
	beq	.L388	@,
	cmp	r2, #1	@ D.38893,
	beq	.L389	@,
	movw	ip, #11375	@ tmp608,
	ldrb	r8, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r8, #0	@ <variable>.CodecInfo.RefNum,
	moveq	r1, #1	@ iftmp.538,
	bne	.L322	@,
.L323:
	movw	r3, #38916	@ tmp612,
	movw	r8, #38920	@ tmp613,
	ldr	r2, [r4, r3]	@ prephitmp.1401, <variable>.CodecInfo.FwdFsID
	movw	lr, #11375	@ tmp610,
	ldr	r0, [r4, r8]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r1, [r4, lr]	@ iftmp.538, <variable>.CodecInfo.RefNum
	cmp	r2, r0	@ prephitmp.1401, <variable>.CodecInfo.BwdFsID
	beq	.L324	@,
	str	r3, [sp, #24]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #24]	@,
	movw	r2, #39320	@ tmp615,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r8]	@ prephitmp.1401, <variable>.CodecInfo.BwdFsID
.L324:
	movw	r3, #38924	@ tmp620,
	sub	lr, r3, #4	@ tmp619, tmp619,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movw	ip, #38916	@ tmp618,
	movw	r8, #39320	@ tmp622,
	str	r2, [r4, ip]	@ prephitmp.1401, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r2, #1	@,
	str	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	ip, [sp, #32]	@,
	bl	FSP_SetRef	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r8, [sp, #32]	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
.L325:
	movw	lr, #38924	@ tmp631,
	movw	r8, #39320	@ tmp630,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r8, [sp, #24]	@,
	bl	FSP_GetLogicFs	@
	ldr	r1, [sp, #24]	@,
	movw	r2, #38916	@ tmp633,
	mov	r8, r0	@ pCur,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #24]	@,
	movw	ip, #38920	@ tmp635,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, r0	@ pFwd,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	str	r2, [sp, #28]	@,
	bl	FSP_GetLogicFs	@
	ldr	r2, [sp, #28]	@,
	cmp	r8, #0	@ pCur,
	cmpne	r2, #0	@, pFwd,
	beq	.L381	@,
	cmp	r0, #0	@ pBwd,
	beq	.L381	@,
	ldr	r3, [r8, #408]	@ D.38921, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.38921,
	beq	.L328	@,
	ldr	ip, [r8, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	ip, #0	@ <variable>.pstTfOutFs,
	beq	.L328	@,
	ldr	r1, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r1, #0	@ <variable>.pstDispOutFs,
	beq	.L328	@,
	ldr	lr, [r0, #408]	@ D.38927, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.38927,
	ldrne	r3, [lr, #12]	@ iftmp.542, <variable>.PhyAddr
	ldreq	r3, [r3, #12]	@ iftmp.542, <variable>.PhyAddr
	str	r3, [r4, #56]	@ iftmp.542, <variable>.Rv8DecParam.BwdRefPhyAddr
	ldr	r1, [r2, #408]	@ D.38934, <variable>.pstDecodeFs
	cmp	r1, #0	@ D.38934,
	ldreq	r1, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r1, #12]	@ iftmp.543, <variable>.PhyAddr
	str	r3, [r4, #60]	@ iftmp.543, <variable>.Rv8DecParam.FwdRefPhyAddr
	ldr	ip, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, #64]	@ <variable>.PhyAddr, <variable>.Rv8DecParam.CurPicPhyAddr
	ldr	r1, [r8, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r1, [r4, #84]	@ <variable>.PmvAddr, <variable>.Rv8DecParam.CurrPmvPhyAddr
	ldr	r3, [r0, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r3, [r4, #88]	@ <variable>.PmvAddr, <variable>.Rv8DecParam.ColPmvPhyAddr
	ldr	ip, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, #68]	@ <variable>.PhyAddr, <variable>.Rv8DecParam.DispFramePhyAddr
	str	r0, [sp, #32]	@,
	str	r2, [sp, #28]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r2, #37640	@ tmp658,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r3, [r0, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r1, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	r3, [r4, #72]	@ <variable>.Stride, <variable>.Rv8DecParam.DDRStride
	ldr	ip, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r2, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r2, [r4, #76]	@ <variable>.ChromOffset, <variable>.Rv8DecParam.uv_offset
	ldr	r0, [sp, #32]	@,
	ldr	r2, [sp, #28]	@,
	beq	.L390	@,
.L334:
	movw	r1, #37668	@ tmp680,
	movw	lr, #37680	@ tmp682,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r0, #37656	@ tmp685,
	sub	r1, r0, #4	@ tmp687, tmp687,
	movw	r2, #37640	@ tmp683,
	str	r3, [r8, #428]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	movw	r8, #38840	@ tmp689,
	ldr	ip, [r4, lr]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	movw	lr, #38844	@ tmp691,
	ldr	r2, [r4, r2]	@ D.39245, <variable>.CodecInfo.PictureHeader.PicCodType
	movw	r3, #37744	@ tmp693,
	str	ip, [sp, #40]	@, %sfp
	cmp	r2, #2	@ D.39245,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r1, [r4, r8]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	movw	lr, #37748	@ tmp695,
	ldr	lr, [r4, lr]	@, <variable>.CodecInfo.PrevPicMb0QP
	str	ip, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	str	r0, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	mov	r0, r5	@, pBs
	str	lr, [r4, #40]	@, <variable>.Rv8DecParam.PrevPicMb0QP
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	r8, [r4, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	str	r1, [r4, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	lr, [r4, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	strb	r2, [r4, #20]	@ D.39245, <variable>.Rv8DecParam.PicCodingType
	ldr	r1, [sp, #40]	@, %sfp
	strne	r1, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	r1, [r4, #32]	@, <variable>.Rv8DecParam.PQUANT
	bl	BsPos	@
	movw	r3, #37720	@ tmp698,
	add	ip, r3, #32	@ tmp701, tmp701,
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r0, r0, #-2147483641	@ tmp699,,
	submi	r0, r0, #1	@ tmp930, tmp699,
	mvnmi	r0, r0, asl #29	@ tmp931, tmp930,
	mvnmi	r0, r0, lsr #29	@ tmp931, tmp931,
	addmi	r0, r0, #1	@ tmp699, tmp931,
	cmp	r8, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r0, [r4, r3]	@ tmp699, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L391	@,
	movw	r2, #37760	@ tmp711,
	sub	lr, r2, #4	@ tmp712, tmp712,
	ldr	r8, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L379:
	rsb	lr, r3, r8	@ tmp713, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r8, lr, asl #3	@ D.38992, tmp713,
	bl	BsPos	@
	movw	ip, #38784	@ tmp718,
	movw	r3, #37724	@ tmp716,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	add	r9, r9, r1	@ D.38998, PrevOffsetBytes, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r8	@ tmp717,, D.38992
	str	r0, [r4, r3]	@ tmp717, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	str	ip, [sp, #24]	@,
	bl	BsPos	@
	movw	r2, #37684	@ tmp732,
	ldr	r8, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r2, #37676	@ tmp734,
	movw	r1, #37752	@ tmp747,
	movw	ip, #37720	@ tmp738,
	str	r8, [r4, #120]	@, <variable>.osvquant
	ldr	r8, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r2, #37724	@ tmp740,
	str	r8, [r4, #116]	@, <variable>.dblk_filter_passthrough
	movw	r8, #37704	@ tmp733,
	add	r3, r0, #7	@ tmp722, D.38999,
	cmp	r0, #0	@ D.38999,
	movlt	r0, r3	@ D.38999, tmp722
	ldr	r3, [r4, r1]	@, <variable>.CodecInfo.TotalSliceNum
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	r2, #37712	@ tmp736,
	cmp	r3, #1	@,
	add	r3, r8, #4	@ tmp735, tmp735,
	str	r1, [r4, #108]	@, <variable>.StreamLength
	add	r1, r9, r0, asr #3	@, D.39002, D.38998, D.38999,
	ldr	r0, [r4, #120]	@, <variable>.osvquant
	str	r0, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.osvquant
	movw	r0, #37728	@,
	ldr	r9, [r4, #116]	@, <variable>.dblk_filter_passthrough
	str	r9, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	mov	r3, #0	@ tmp726,
	str	r1, [r4, #92]	@ D.39002, <variable>.StreamPhyAddr
	mov	r9, #1	@ tmp746,
	ldr	r8, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	add	ip, r0, #8	@,,
	str	r3, [r4, r2]	@ tmp726, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	movw	r2, #37732	@,
	str	r3, [r4, #128]	@ tmp726, <variable>.first_mb_in_slice
	str	r8, [r4, #100]	@, <variable>.StreamBitOffset
	add	r8, r2, #8	@,,
	str	r1, [r4, r0]	@ D.39002, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	sub	r1, ip, #36	@,,
	str	r3, [r4, r2]	@ tmp726, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r3, [r4, ip]	@ tmp726, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r3, [r4, r8]	@ tmp726, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	ldr	r8, [sp, #40]	@, %sfp
	str	r9, [r4, #44]	@ tmp746, <variable>.Rv8DecParam.TotalSliceNum
	str	r8, [r4, r1]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	str	r3, [r4, #96]	@ tmp726, <variable>.StreamPhyAddr
	str	r3, [r4, #104]	@ tmp726, <variable>.StreamBitOffset
	str	r3, [r4, #112]	@ tmp726, <variable>.StreamLength
	str	r8, [r4, #124]	@, <variable>.sliceqp
	bls	.L344	@,
	movw	r2, #37760	@ tmp749,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, ip	@ PrevOffsetBytes.1468, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, #3145728	@ PrevOffsetBytes.1468,
	bge	.L346	@,
	cmp	r8, #73	@ PrevOffsetBytes.1468,
	ble	.L346	@,
	movw	r0, #38788	@ tmp752,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, r1	@ temp.1487, PrevOffsetBytes.1468, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1487,
	strgt	r9, [sp, #36]	@ tmp746, %sfp
	strgt	r9, [sp, #44]	@ tmp746, %sfp
	strgt	r6, [sp, #12]	@ pPictureHeader, %sfp
	bgt	.L349	@,
	b	.L346	@
.L350:
	ldr	r8, [sp, #36]	@, %sfp
	movw	r6, #37752	@,
	ldr	r0, [r4, r6]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	add	r8, r8, #1	@,,
	str	r8, [sp, #36]	@, %sfp
	cmp	r0, r8	@ <variable>.CodecInfo.TotalSliceNum,
	bls	.L344	@,
	ldr	r3, [fp, #4]	@ tmp754, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, r3	@ PrevOffsetBytes.1468, PrevHeaderBytes, tmp754
	cmp	r8, #3145728	@ PrevOffsetBytes.1468,
	bge	.L346	@,
	cmp	r8, #73	@ PrevOffsetBytes.1468,
	ble	.L346	@,
	movw	ip, #38788	@ tmp758,
	add	fp, fp, #4	@ ivtmp.1587, ivtmp.1587,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, lr	@ temp.1487, PrevOffsetBytes.1468, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1487,
	ble	.L346	@,
.L349:
	movw	lr, #11360	@ tmp762,
	mov	r0, r5	@, pBs
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	add	r6, sp, #316	@,,
	add	r1, r8, r1	@, PrevOffsetBytes.1468, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	str	r6, [sp, #0]	@,
	ldr	r6, [sp, #12]	@, %sfp
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	add	r2, sp, #324	@,,
	add	r3, sp, #320	@,,
	str	r6, [sp, #4]	@,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L350	@,
	movw	ip, #37656	@,
	ldr	r2, [sp, #324]	@, iSliceMBA
	ldr	r9, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r9, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [sp, #48]	@, %sfp
	beq	.L392	@,
	ldr	r3, [sp, #316]	@ iSQUANT.551, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r6, [sp, #40]	@, %sfp
	cmp	r3, #0	@ iSQUANT.551,
	movge	r6, r3	@, iSQUANT.551
	str	r6, [sp, #40]	@, %sfp
	bl	BsPos	@
	movw	r6, #37752	@,
	movw	ip, #37720	@,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	sub	r1, r3, #1	@ D.38786, <variable>.CodecInfo.TotalSliceNum,
	ands	r2, r0, #-2147483641	@ tmp773,,
	submi	r2, r2, #1	@ tmp932, tmp773,
	mvnmi	r2, r2, asl #29	@ tmp933, tmp932,
	mvnmi	r2, r2, lsr #29	@ tmp933, tmp933,
	addmi	r2, r2, #1	@ tmp773, tmp933,
	str	r2, [r4, ip]	@ tmp773, <variable>.CodecInfo.SliceHeader.bit_offset_0
	ldr	r0, [sp, #36]	@, %sfp
	cmp	r1, r0	@ D.38786,
	beq	.L393	@,
	ldr	ip, [sp, #36]	@, %sfp
	cmp	ip, #254	@,
	bhi	.L381	@,
	ldr	r2, [fp, #4]	@ tmp791, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [fp, #0]	@ tmp792, <variable>.CodecInfo.SliceByteOffset
.L380:
	rsb	lr, r3, r2	@ tmp790, tmp792, tmp791
	movw	r9, #38784	@,
	mov	r6, lr, asl #3	@ D.39033, tmp790,
	bl	BsPos	@
	movw	r1, #37724	@ tmp793,
	rsb	r0, r0, r6	@ tmp794,, D.39033
	str	r0, [r4, r1]	@ tmp794, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	ldr	r6, [r4, r9]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	ip, #37676	@ tmp811,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r2, #37684	@ tmp809,
	ldr	r2, [r4, r2]	@ temp.1561, <variable>.CodecInfo.PictureHeader.OSVQUANT
	mov	r9, #0	@ tmp803,
	add	r8, r8, r6	@ temp.1560, PrevOffsetBytes.1468, <variable>.CodecInfo.BsPhyAddr
	ldr	r6, [sp, #44]	@, %sfp
	str	r1, [sp, #16]	@, %sfp
	movw	r1, #37704	@ tmp810,
	str	r2, [r4, r1]	@ temp.1561, <variable>.CodecInfo.SliceHeader.osvquant
	mov	r3, #44	@ tmp816,
	mla	r3, r3, r6, r4	@ tmp817, tmp816,, pCtx
	add	r6, r6, #1	@,,
	add	ip, r0, #7	@ tmp799, D.39037,
	cmp	r0, r9	@ D.39037,
	movlt	r0, ip	@ D.39037, tmp799
	add	r1, r8, r0, asr #3	@, D.39040, temp.1560, D.39037,
	ldr	r8, [sp, #16]	@, %sfp
	movw	r0, #37708	@ tmp812,
	str	r8, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	r8, r0, #4	@ tmp813, tmp813,
	ldr	ip, [sp, #48]	@, %sfp
	add	r0, r8, #16	@,,
	str	ip, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	add	r8, r3, #120	@ tmp865, tmp817,
	str	r6, [sp, #44]	@, %sfp
	movw	r6, #37732	@,
	str	r1, [r4, r0]	@ D.39040, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	add	r0, r0, #8	@,,
	str	r9, [r4, r6]	@ tmp803, <variable>.CodecInfo.SliceHeader.bit_offset_1
	add	r6, r6, #8	@,,
	ldr	ip, [sp, #44]	@, %sfp
	str	r9, [r4, r0]	@ tmp803, <variable>.CodecInfo.SliceHeader.bit_len_1
	add	r0, r3, #112	@ tmp855, tmp817,
	str	r9, [r4, r6]	@ tmp803, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	cmp	ip, #131	@,
	add	ip, r3, #92	@, tmp817,
	str	ip, [sp, #52]	@, %sfp
	ldr	ip, [sp, #40]	@, %sfp
	sub	r6, r6, #40	@,,
	str	ip, [r4, r6]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #37720	@,
	add	r6, r3, #100	@, tmp817,
	str	r6, [sp, #56]	@, %sfp
	str	r1, [r3, #92]	@ D.39040, <variable>.StreamPhyAddr
	add	r6, r3, #108	@ tmp849, tmp817,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #37724	@ tmp831,
	str	r1, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r2, [r0, #8]	@ temp.1561, <variable>.osvquant
	ldr	r2, [sp, #48]	@, %sfp
	str	r1, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r2, [r8, #8]	@, <variable>.first_mb_in_slice
	ldr	r3, [sp, #52]	@, %sfp
	str	r9, [r3, #4]	@ tmp803, <variable>.StreamPhyAddr
	ldr	ip, [sp, #56]	@, %sfp
	str	r9, [r6, #4]	@ tmp803, <variable>.StreamLength
	str	r9, [ip, #4]	@ tmp803, <variable>.StreamBitOffset
	ldr	r2, [sp, #16]	@, %sfp
	str	r2, [r0, #4]	@, <variable>.dblk_filter_passthrough
	ldr	r1, [sp, #40]	@, %sfp
	str	r1, [r8, #4]	@, <variable>.sliceqp
	ldr	r3, [sp, #44]	@, %sfp
	str	r3, [r4, #44]	@, <variable>.Rv8DecParam.TotalSliceNum
	ble	.L350	@,
	mov	r0, r4	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L394	@,
	cmp	r7, #0	@ pRv8DecParam,
	str	r7, [r4, #4]	@ pRv8DecParam, <variable>.pRv8DecParam
	beq	.L395	@,
	ldr	r3, [r4, #0]	@ temp.1566, <variable>.pstExtraData
	ldr	r2, [r3, #708]	@ D.39052, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.39052,
	beq	.L396	@,
	cmp	r2, #2	@ D.39052,
	bne	.L350	@,
	ldr	r0, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L350	@,
	ldrb	ip, [r7, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	ip, #2	@ <variable>.PicCodingType,
	bne	.L350	@,
	movw	r1, #39320	@ tmp880,
	sub	lr, r1, #396	@ tmp881, tmp881,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r9	@, tmp803
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r9, [r4, #4]	@ tmp803, <variable>.pRv8DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1571, <variable>.pstExtraData
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	ldr	ip, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, ip, #1	@ tmp883, <variable>.stDisParams.s32DisNums,
	str	r2, [r3, #712]	@ tmp883, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r9	@ D.38700, tmp803
	b	.L292	@
.L386:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #40]	@ D.38700, %sfp
	b	.L292	@
.L303:
	ldr	r2, [r3, #692]	@, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@,
	str	r2, [sp, #36]	@, %sfp
	beq	.L397	@,
.L305:
	movw	ip, #:lower16:g_event_report	@ tmp537,
	movt	ip, #:upper16:g_event_report	@ tmp537,
	mov	r1, #0	@ tmp536,
	str	r1, [r3, #728]	@ tmp536, <variable>.s32DSDWaitFlag
	ldr	r3, [ip, #0]	@ g_event_report, g_event_report
	cmp	r3, r1	@ g_event_report,
	beq	.L311	@,
	movw	r0, #37656	@ tmp539,
	movw	r2, #37652	@ tmp541,
	ldrh	lr, [r4, r0]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	add	r0, sp, #256	@,,
	ldrh	r8, [sp, #160]	@, TmpPictureHeader.pic_width_in_mb
	add	r1, r1, #2	@,,
	strh	lr, [r0, #12]	@ movhi	@, para
	ldrh	lr, [sp, #156]	@, TmpPictureHeader.pic_height_in_mb
	ldrh	ip, [r4, r2]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	movw	r2, #39320	@ tmp546,
	strh	r8, [r0, #16]	@ movhi	@, para
	strh	lr, [r0, #18]	@ movhi	@, para
	strh	ip, [r0, #14]	@ movhi	@, para
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #268	@,,
	blx	r3	@ g_event_report
.L311:
	movw	lr, #38920	@ tmp550,
	movw	r3, #39320	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r8, r4, #38912	@ D.38853, pCtx,
	str	lr, [sp, #32]	@,
	bl	FSP_ClearLogicFs	@
	movw	ip, #39320	@,
	movw	r2, #38916	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r8, r8, #56	@ D.38853, D.38853,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	r0, #38916	@,
	mov	r3, #0	@ tmp554,
	str	r3, [r4, r0]	@ tmp554, <variable>.CodecInfo.FwdFsID
	ldr	r2, [sp, #32]	@,
	movw	r1, #39320	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	str	r3, [r4, r2]	@ tmp554, <variable>.CodecInfo.BwdFsID
	str	r3, [sp, #24]	@,
	str	r2, [sp, #32]	@,
	bl	FSP_GetNullLogicFs	@
	movw	ip, #38916	@,
	movw	r1, #11375	@ tmp560,
	str	r0, [r4, ip]	@ D.38852, <variable>.CodecInfo.FwdFsID
	movw	ip, #39320	@,
	ldr	r3, [sp, #24]	@,
	strb	r3, [r4, r1]	@ tmp554, <variable>.CodecInfo.RefNum
	mov	r1, r8	@, D.38853
	ldr	r2, [sp, #32]	@,
	str	r0, [r4, r2]	@ D.38852, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #160]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L381	@,
	ldr	r1, [sp, #156]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r1, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L381	@,
	ldr	r3, [r4, #0]	@ temp.1484, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L314	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L398	@,
.L314:
	movw	r3, #39320	@ tmp571,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L315	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L316	@,
	movw	r2, #39324	@ tmp574,
	ldr	ip, [r4, r2]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	ip, #1	@ <variable>.DSDNeedClearQue,
	beq	.L316	@,
.L315:
	add	r8, sp, #64	@ tmp897,,
	bl	vfmw_dprint_nothing	@
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r8	@, tmp897
	bl	Real8_ArrangeVHBMem	@
	cmp	r0, #0	@ D.38873
	bne	.L304	@,
	str	r0, [sp, #32]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #32]	@,
	b	.L292	@
.L381:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38700,
	b	.L292	@
.L387:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.38700, D.38878
	b	.L292	@
.L397:
	movw	r3, #38916	@ tmp508,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	lr, #0	@ tmp505,
	str	lr, [sp, #304]	@ tmp505, RefNum
	str	lr, [sp, #312]	@ tmp505, NewNum
	str	lr, [sp, #308]	@ tmp505, ReadNum
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L295	@,
	movw	r8, #38920	@ tmp509,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L295	@,
	movw	lr, #39320	@ tmp510,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #39320	@ tmp513,
	add	r1, sp, #304	@,,
	cmp	r0, #0	@ pImage
	ldrne	r3, [sp, #36]	@, %sfp
	strne	r3, [r0, #376]	@, <variable>.u32IsLastFrame
	add	r3, sp, #312	@,,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #308	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ prephitmp.1403, <variable>.pstExtraData
	movw	r1, #37656	@ tmp517,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	ip, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	ip, r0, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L307	@,
	movw	r1, #37652	@ tmp521,
	ldr	ip, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	ip, r0, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L307	@,
	ldr	lr, [sp, #308]	@ ReadNum, ReadNum
	ldr	r0, [sp, #312]	@ NewNum, NewNum
	add	r2, r0, lr	@ tmp525, NewNum, ReadNum
	cmp	r2, #0	@ tmp525,
	ble	.L308	@,
.L309:
	mov	lr, #1	@ tmp533,
	mov	r0, #0	@ D.38700,
	str	lr, [r3, #728]	@ tmp533, <variable>.s32DSDWaitFlag
	b	.L292	@
.L398:
	movw	lr, #11372	@ tmp569,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r2, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L315	@,
.L316:
	mov	r0, r8	@, D.38853
	bl	ResetVoQueue	@
	b	.L315	@
.L389:
	movw	r1, #11375	@ tmp606,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L295	@,
.L322:
	mov	r1, #2	@ iftmp.538,
	b	.L323	@
.L388:
	movw	r0, #11375	@ tmp626,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L325	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38700,
	b	.L292	@
.L391:
	movw	r0, #38788	@ tmp703,
	movw	ip, #37756	@ tmp706,
	ldr	r8, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r8, sl, r8	@ tmp704, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	b	.L379	@
.L390:
	movw	r1, #37668	@ tmp660,
	ldr	r3, [r2, #428]	@ D.38955, <variable>.TR
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	ip, [r0, #428]	@ <variable>.TR, <variable>.TR
	subs	r2, r2, r3	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.38955
	rsb	r3, r3, ip	@ trd, D.38955, <variable>.TR
	movwmi	ip, #37664	@ tmp663,
	ldrmi	ip, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r2, r2, ip	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, #0	@ trd,
	movwlt	ip, #37664	@ tmp665,
	ldrlt	ip, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r3, r3, ip	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	movle	r0, #0	@ prephitmp.1585,
	movle	ip, r0	@ prephitmp.1583, prephitmp.1585
	ble	.L339	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r2, [sp, #28]	@,
	str	r3, [sp, #24]	@,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #24]	@,
	ldr	r2, [sp, #28]	@,
	mov	r1, r3	@, trd
	mov	ip, r0	@ prephitmp.1583,
	rsb	r0, r2, r3	@ tmp671, trb, trd
	str	ip, [sp, #32]	@,
	mov	r0, r0, asl #14	@, tmp671,
	bl	__aeabi_idiv	@
	ldr	ip, [sp, #32]	@,
	ldr	r3, [sp, #24]	@,
	ldr	r2, [sp, #28]	@,
.L339:
	movw	lr, #38832	@ tmp676,
	movw	r1, #38840	@ tmp678,
	str	r2, [r4, lr]	@ trb, <variable>.CodecInfo.trb
	add	lr, r1, #4	@ tmp679, tmp679,
	movw	r2, #38836	@ tmp677,
	str	ip, [r4, r1]	@ prephitmp.1583, <variable>.CodecInfo.Ratio0
	str	r3, [r4, r2]	@ trd, <variable>.CodecInfo.trd
	str	r0, [r4, lr]	@ prephitmp.1585, <variable>.CodecInfo.Ratio1
	b	.L334	@
.L328:
	movw	r0, #38924	@ tmp646,
	add	r3, r0, #396	@ tmp645, tmp645,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38700,
	b	.L292	@
.L393:
	add	r2, r3, #9408	@ tmp780, <variable>.CodecInfo.TotalSliceNum,
	movw	r0, #38788	@ tmp777,
	add	r1, r2, #29	@ tmp780, tmp780,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	add	r9, r4, r1, asl #2	@, tmp784, pCtx, tmp780,
	rsb	r2, sl, lr	@ tmp778, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [r9, #4]	@ tmp787, <variable>.CodecInfo.SliceByteOffset
	b	.L380	@
.L346:
	movw	r0, #38924	@ tmp761,
	add	r3, r0, #396	@ tmp760, tmp760,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38700,
	b	.L292	@
.L392:
	movw	lr, #38924	@ tmp771,
	add	r3, lr, #396	@ tmp770, tmp770,
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r9	@ D.38700, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L292	@
.L396:
	ldrb	r2, [r7, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r2, #2	@ <variable>.PicCodingType,
	bne	.L350	@,
	movw	r1, #39320	@ tmp875,
	sub	lr, r1, #396	@ tmp876, tmp876,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r9	@, tmp803
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r9, [r4, #4]	@ tmp803, <variable>.pRv8DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r9	@ D.38700, tmp803
	b	.L292	@
.L308:
	movw	ip, #39324	@ tmp529,
	mov	r8, #1	@ tmp530,
	str	r8, [r4, ip]	@ tmp530, <variable>.DSDNeedClearQue
	b	.L305	@
.L307:
	ldr	r1, [sp, #312]	@ NewNum, NewNum
	cmp	r1, #0	@ NewNum,
	bgt	.L309	@,
	ldr	r2, [sp, #308]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L309	@,
	movw	r8, #39324	@ tmp534,
	mov	r0, #0	@ tmp535,
	str	r0, [r4, r8]	@ tmp535, <variable>.DSDNeedClearQue
	b	.L305	@
.L318:
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r0, r8	@ D.38700, pImg
	b	.L292	@
.L344:
	ldr	r5, [r4, #4]	@ <variable>.pRv8DecParam, <variable>.pRv8DecParam
	mov	r6, #1	@ tmp886,
	str	r6, [r4, #48]	@ tmp886, <variable>.Rv8DecParam.FstSlcGrp
	cmp	r5, #0	@ <variable>.pRv8DecParam,
	beq	.L399	@,
.L361:
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #11356	@ tmp890,
	mov	r0, #1	@ D.38700,
	ldr	r2, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r2, [r4, lr]	@ <variable>.s32Compress_en, <variable>.Rv8DecParam.Compress_en
	b	.L292	@
.L395:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38700, pRv8DecParam
	b	.L292	@
.L394:
	movw	r3, #38924	@ tmp872,
	add	ip, r3, #396	@ tmp871, tmp871,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r9	@ D.38700, tmp803
	b	.L292	@
.L399:
	mov	r0, r4	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, r6	@,
	streq	r7, [r4, #4]	@ pRv8DecParam, <variable>.pRv8DecParam
	beq	.L361	@,
	movw	ip, #38924	@ tmp889,
	add	r3, ip, #396	@ tmp888, tmp888,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r6	@, tmp886
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r5	@ D.38700, <variable>.pRv8DecParam
	b	.L292	@
.L401:
	.align	2
.L400:
	.word	.LANCHOR0+24
	.fnend
	.size	REAL8DEC_Decode, .-REAL8DEC_Decode
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
	.type	C.508.38137, %object
	.size	C.508.38137, 36
C.508.38137:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
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
	.type	s_RVVersionEncodingToMinorVersion, %object
	.size	s_RVVersionEncodingToMinorVersion, 32
s_RVVersionEncodingToMinorVersion:
	.word	2
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.type	GetBitsMask, %object
	.size	GetBitsMask, 100
GetBitsMask:
	.word	0
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	65535
	.word	131071
	.word	262143
	.word	524287
	.word	1048575
	.word	2097151
	.word	4194303
	.word	8388607
	.word	16777215
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
