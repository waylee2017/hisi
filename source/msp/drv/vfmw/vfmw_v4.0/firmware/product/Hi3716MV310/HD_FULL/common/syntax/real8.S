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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(real8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.o
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
	.global	Real8_CB_SetDimensions
	.type	Real8_CB_SetDimensions, %function
Real8_CB_SetDimensions:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #88]	@ D.35177, <variable>.pic_width_in_pixel
	cmp	r3, #128	@ D.35177,
	beq	.L21	@,
	cmp	r3, #176	@ D.35177,
	beq	.L22	@,
	cmp	r3, #352	@ D.35177,
	bne	.L7	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #288	@ <variable>.pic_height_in_pixel,
	beq	.L23	@,
.L8:
	add	ip, r3, #15	@ tmp154, D.35177,
	add	r1, r2, #15	@ tmp155, <variable>.pic_height_in_pixel,
	mov	r3, ip, lsr #4	@ D.35198, tmp154,
	mov	r2, r1, lsr #4	@ D.35200, tmp155,
	str	r3, [r0, #28]	@ D.35198, <variable>.Rv8ParsePicParam.m_nMBs
	mul	ip, r3, r2	@ tmp157, D.35198, D.35200
	str	r2, [r0, #24]	@ D.35200, <variable>.Rv8ParsePicParam.m_nGOBs
	sub	r3, ip, #1	@ prephitmp.508, tmp157,
	cmp	r3, #47	@ prephitmp.508,
	movls	r3, #0	@ i,
	bls	.L4	@,
	cmp	r3, #98	@ prephitmp.508,
	bls	.L17	@,
.L9:
	cmp	r3, #396	@ prephitmp.508,
	movcc	r3, #2	@ i,
	bcc	.L4	@,
	cmp	r3, #1584	@ prephitmp.508,
	movcc	r3, #3	@ i,
	bcc	.L4	@,
	cmp	r3, #6336	@ prephitmp.508,
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
	cmp	r3, #704	@ D.35177,
	bne	.L24	@,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	cmp	r2, #576	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	ip, #44	@ tmp149,
	mov	r2, #36	@ tmp150,
	str	ip, [r0, #28]	@ tmp149, <variable>.Rv8ParsePicParam.m_nMBs
	movw	r3, #1583	@ prephitmp.508,
	str	r2, [r0, #24]	@ tmp150, <variable>.Rv8ParsePicParam.m_nGOBs
	b	.L9	@
.L23:
	mov	r3, #18	@ tmp147,
	mov	r1, #22	@ tmp146,
	str	r3, [r0, #24]	@ tmp147, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #395	@ prephitmp.508,
	str	r1, [r0, #28]	@ tmp146, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
.L24:
	cmp	r3, #1408	@ D.35177,
	ldr	r2, [r0, #84]	@ <variable>.pic_height_in_pixel, <variable>.pic_height_in_pixel
	bne	.L8	@,
	cmp	r2, #1152	@ <variable>.pic_height_in_pixel,
	bne	.L8	@,
	mov	r3, #72	@ tmp153,
	mov	r1, #88	@ tmp152,
	str	r3, [r0, #24]	@ tmp153, <variable>.Rv8ParsePicParam.m_nGOBs
	movw	r3, #6335	@ prephitmp.508,
	str	r1, [r0, #28]	@ tmp152, <variable>.Rv8ParsePicParam.m_nMBs
	b	.L9	@
	.fnend
	.size	Real8_CB_SetDimensions, .-Real8_CB_SetDimensions
	.align	2
	.global	Real8_CB_SetRPRSizes
	.type	Real8_CB_SetRPRSizes, %function
Real8_CB_SetRPRSizes:
	.fnstart
.LFB1606:
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
	ldr	r6, [r8, #0]	@ C.441, C.441
	stmia	r4!, {r0, r1, r2, r3}	@ tmp146,,,,
	str	r6, [r4, #0]	@ C.441, size
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
.LFB1611:
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
.LFB1612:
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
.LFB1613:
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
.LFB1614:
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
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r3, [r0, #128]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r1, [r0, #12]	@ D.35638, <variable>.Rv8DecParam.PicWidthInMb
	cmp	r3, #0	@ <variable>.first_mb_in_slice,
	ldr	r3, [r0, #16]	@ D.35639, <variable>.Rv8DecParam.PicHeightInMb
	bne	.L39	@,
	mul	r1, r1, r3	@ tmp199, D.35638, D.35639
	ldr	r2, [r0, #44]	@ temp.758, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, #2	@ temp.758,
	sub	r1, r1, #1	@ TotalMbnMinus1, tmp199,
	bls	.L40	@,
	sub	r4, r2, #1	@ prephitmp.660, temp.758,
	cmp	r4, #1	@ prephitmp.660,
	bls	.L45	@,
	ldr	r3, [r0, #172]	@ temp.731, <variable>.first_mb_in_slice
	cmp	r3, #0	@ temp.731,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, temp.731
	ble	.L39	@,
	tst	r2, #1	@ temp.758,
	mov	r3, r0	@ ivtmp.729, pCtx
	mov	ip, #1	@ i.730,
	bne	.L43	@,
	ldr	r3, [r0, #216]	@ D.35652, <variable>.first_mb_in_slice
	mov	ip, #2	@ i.730,
	cmp	r3, #0	@ D.35652,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.35652
	add	r3, r0, #44	@ ivtmp.729, pCtx,
	bgt	.L43	@,
.L39:
	mov	r0, #0	@ D.35645,
.L61:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L40:
	moveq	r4, #1	@ prephitmp.660,
	bne	.L46	@,
.L45:
	tst	r4, #1	@ prephitmp.660,
	mov	r3, r0	@ ivtmp.722, pCtx
	mov	ip, #0	@ i,
	beq	.L42	@,
	cmp	r4, #0	@ prephitmp.660,
	bls	.L97	@,
	ldr	r6, [r0, #128]	@ temp.732, <variable>.first_mb_in_slice
	mov	ip, #1	@ i,
	ldr	r5, [r0, #172]	@ D.35659, <variable>.first_mb_in_slice
	add	r3, r0, #44	@ ivtmp.722, pCtx,
	cmp	r6, r5	@ temp.732, D.35659
	bge	.L39	@,
	cmp	r4, ip	@ prephitmp.660, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.722,
	bls	.L97	@,
.L49:
	ldr	r7, [r3, #128]	@ temp.732, <variable>.first_mb_in_slice
	ldr	r6, [r3, #172]	@ D.35659, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.722, ivtmp.722,
	cmp	r7, r6	@ temp.732, D.35659
	bge	.L39	@,
	ldr	r6, [r5, #172]	@ D.35659, <variable>.first_mb_in_slice
	ldr	r5, [r5, #128]	@ temp.732, <variable>.first_mb_in_slice
	cmp	r5, r6	@ temp.732, D.35659
	bge	.L39	@,
.L42:
	cmp	r4, ip	@ prephitmp.660, i
	add	r5, ip, #1	@ tmp255, i,
	add	ip, r5, #1	@ i, tmp255,
	add	r5, r3, #44	@ tmp256, ivtmp.722,
	bhi	.L49	@,
.L97:
	mov	r3, #44	@ tmp202,
	mla	r4, r3, r4, r0	@ tmp203, tmp202, prephitmp.660, pCtx
	ldr	r3, [r4, #128]	@ D.35664, <variable>.first_mb_in_slice
	cmp	r3, #0	@ D.35664,
	ble	.L39	@,
	cmp	r1, r3	@ TotalMbnMinus1, D.35664
	blt	.L39	@,
.L46:
	cmp	r2, #0	@ temp.758,
	beq	.L99	@,
	mov	r6, #0	@ i.757,
	mov	ip, r0	@ ivtmp.739, pCtx
	mov	r3, r0	@ ivtmp.715, pCtx
	mov	r4, r6	@ i.737, i.757
	b	.L52	@
.L101:
	cmp	r5, #0	@ temp.736,
	blt	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, temp.736
	blt	.L39	@,
	cmp	r2, #0	@ TotalMbnMinus1.735,
	blt	.L39	@,
	cmp	r1, r2	@ TotalMbnMinus1, TotalMbnMinus1.735
	blt	.L39	@,
	ldr	r2, [r0, #44]	@ temp.758, <variable>.Rv8DecParam.TotalSliceNum
	cmp	r2, r4	@ temp.758, i.737
	bls	.L100	@,
.L52:
	sub	r2, r2, #1	@ tmp205, temp.758,
	ldr	r5, [r3, #128]	@ temp.736, <variable>.first_mb_in_slice
	cmp	r6, r2	@ i.757, tmp205
	add	r4, r4, #1	@ i.737, i.737,
	streq	r1, [r3, #132]	@ TotalMbnMinus1, <variable>.last_mb_in_slice
	ldrne	r2, [r3, #172]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	moveq	r2, r1	@ TotalMbnMinus1.735, TotalMbnMinus1
	mov	r6, r4	@ i.757, i.737
	subne	r2, r2, #1	@ TotalMbnMinus1.735, <variable>.first_mb_in_slice,
	strne	r2, [r3, #132]	@ TotalMbnMinus1.735, <variable>.last_mb_in_slice
	cmp	r5, r2	@ temp.736, TotalMbnMinus1.735
	add	r3, r3, #44	@ ivtmp.715, ivtmp.715,
	ble	.L101	@,
	b	.L39	@
.L44:
	ldr	r5, [r3, #216]	@ D.35652, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.729, ivtmp.729,
	cmp	r5, #0	@ D.35652,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.35652
	ble	.L39	@,
	ldr	r5, [r6, #216]	@ D.35652, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.35652,
	ble	.L39	@,
	cmp	r1, r5	@ TotalMbnMinus1, D.35652
	ble	.L39	@,
.L43:
	add	ip, ip, #1	@ tmp261, i.730,
	add	r6, r3, #44	@ tmp260, ivtmp.729,
	cmp	r4, ip	@ prephitmp.660, tmp261
	add	ip, ip, #1	@ i.730, tmp261,
	bhi	.L44	@,
	b	.L45	@
.L100:
	cmp	r2, #0	@ temp.758,
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
	beq	.L53	@,
	tst	r2, #1	@ temp.758,
	mov	r5, r3	@ stream_base_addr.759, stream_base_addr
	mov	r4, #0	@ i.738,
	bne	.L56	@,
	mov	r1, r3	@ stream_base_addr.744, stream_base_addr
	ldr	r3, [r0, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.759
	bcs	.L71	@,
	ldr	r5, [r0, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L71	@,
.L72:
	add	ip, r0, #44	@ ivtmp.739, pCtx,
	mov	r4, #1	@ i.738,
	ldr	r5, [ip, #92]	@ stream_base_addr.759, <variable>.StreamPhyAddr
.L56:
	cmp	r5, r3	@ stream_base_addr.759, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.744, stream_base_addr
	ldr	r3, [ip, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.738,
	add	r1, ip, #44	@ tmp252, ivtmp.739,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.744
	bcs	.L54	@,
.L102:
	ldr	ip, [ip, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	ip, #0	@ <variable>.StreamLength,
	beq	.L54	@,
.L55:
	cmp	r4, r2	@ tmp251, temp.758
	beq	.L53	@,
	ldr	ip, [r1, #92]	@ stream_base_addr.759, <variable>.StreamPhyAddr
	cmp	ip, r3	@ stream_base_addr.759, stream_base_addr
	movcs	ip, r3	@ stream_base_addr.744, stream_base_addr
	ldr	r3, [r1, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	cmp	r3, ip	@ stream_base_addr, stream_base_addr.744
	bcs	.L74	@,
	ldr	r5, [r1, #112]	@ <variable>.StreamLength, <variable>.StreamLength
	cmp	r5, #0	@ <variable>.StreamLength,
	beq	.L74	@,
	add	ip, r1, #44	@ ivtmp.739, tmp252,
	add	r4, r4, #1	@ i.738, tmp251,
	ldr	r5, [ip, #92]	@ stream_base_addr.759, <variable>.StreamPhyAddr
.L103:
	cmp	r5, r3	@ stream_base_addr.759, stream_base_addr
	movcs	r5, r3	@ stream_base_addr.744, stream_base_addr
	ldr	r3, [ip, #96]	@ stream_base_addr, <variable>.StreamPhyAddr
	add	r4, r4, #1	@ tmp251, i.738,
	add	r1, ip, #44	@ tmp252, ivtmp.739,
	cmp	r3, r5	@ stream_base_addr, stream_base_addr.744
	bcc	.L102	@,
.L54:
	mov	r3, r5	@ stream_base_addr, stream_base_addr.744
	b	.L55	@
.L74:
	mov	r3, ip	@ stream_base_addr, stream_base_addr.744
	add	ip, r1, #44	@ ivtmp.739, tmp252,
	add	r4, r4, #1	@ i.738, tmp251,
	ldr	r5, [ip, #92]	@ stream_base_addr.759, <variable>.StreamPhyAddr
	b	.L103	@
.L71:
	mov	r3, r1	@ stream_base_addr, stream_base_addr.744
	b	.L72	@
.L99:
	ldr	r3, [r0, #92]	@ stream_base_addr, <variable>.StreamPhyAddr
.L53:
	cmp	r2, #0	@ temp.758,
	bic	r4, r3, #15	@ prephitmp.664, stream_base_addr,
	str	r4, [r0, #52]	@ prephitmp.664, <variable>.Rv8DecParam.StreamBaseAddr
	beq	.L57	@,
	tst	r2, #1	@ temp.758,
	mov	r3, r0	@ ivtmp.688, pCtx
	mov	r1, #0	@ i.733,
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
	rsb	r3, r4, r3	@ BytePos1, prephitmp.664, tmp287
	rsb	r4, r4, ip	@ BytePos0.747, prephitmp.664, tmp278
	and	r1, r3, #15	@ tmp291, BytePos1,
	and	ip, r4, #15	@ tmp281, BytePos0.747,
	bic	r4, r4, #15	@ tmp280, BytePos0.747,
	add	r1, r5, r1, asl #3	@, tmp294, tmp293, tmp291,
	str	r4, [r0, #92]	@ tmp280, <variable>.StreamPhyAddr
	add	ip, r6, ip, asl #3	@, tmp284, tmp283, tmp281,
	bic	r5, r3, #15	@ tmp290, BytePos1,
	str	ip, [r0, #100]	@ tmp284, <variable>.StreamBitOffset
	str	r1, [r0, #104]	@ tmp294, <variable>.StreamBitOffset
	str	r5, [r0, #96]	@ tmp290, <variable>.StreamPhyAddr
.L94:
	mov	r1, #1	@ i.733,
	add	r3, r0, #44	@ ivtmp.688, pCtx,
	ldr	r4, [r0, #52]	@ prephitmp.664, <variable>.Rv8DecParam.StreamBaseAddr
	b	.L60	@
.L104:
	ldr	ip, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp216, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp211, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.664, tmp211
	and	ip, r4, #15	@ tmp214, BytePos0,
	bic	r4, r4, #15	@ tmp213, BytePos0,
	str	r4, [r3, #92]	@ tmp213, <variable>.StreamPhyAddr
	add	ip, r5, ip, asl #3	@, tmp218, tmp216, tmp214,
	str	ip, [r3, #100]	@ tmp218, <variable>.StreamBitOffset
.L59:
	add	r1, r1, #1	@ tmp246, i.733,
	add	r3, r3, #44	@ tmp247, ivtmp.688,
	cmp	r1, r2	@ tmp246, temp.758
	bcs	.L57	@,
	ldr	ip, [r3, #96]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	ldr	r4, [r0, #52]	@ prephitmp.664, <variable>.Rv8DecParam.StreamBaseAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	bne	.L67	@,
	ldr	ip, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r5, ip, #7	@ tmp333, <variable>.StreamBitOffset,
	add	ip, r6, ip, lsr #3	@, tmp328, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, ip	@ BytePos0, prephitmp.664, tmp328
	and	r6, r4, #15	@ tmp331, BytePos0,
	bic	r4, r4, #15	@ tmp330, BytePos0,
	str	r4, [r3, #92]	@ tmp330, <variable>.StreamPhyAddr
	add	ip, r5, r6, asl #3	@, tmp334, tmp333, tmp331,
	str	ip, [r3, #100]	@ tmp334, <variable>.StreamBitOffset
.L95:
	ldr	r4, [r0, #52]	@ prephitmp.664, <variable>.Rv8DecParam.StreamBaseAddr
	add	r1, r1, #1	@ i.733, tmp246,
	add	r3, r3, #44	@ ivtmp.688, tmp247,
.L60:
	ldr	ip, [r3, #96]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	cmp	ip, #0	@ <variable>.StreamPhyAddr,
	beq	.L104	@,
	ldr	r6, [r3, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r8, [r3, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r7, r6, #7	@ tmp226, <variable>.StreamBitOffset,
	ldr	r5, [r3, #104]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	add	r6, r8, r6, lsr #3	@, tmp221, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	r4, r4, r6	@ BytePos0.747, prephitmp.664, tmp221
	and	r6, r5, #7	@ tmp237, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp224, BytePos0.747,
	bic	r4, r4, #15	@ tmp223, BytePos0.747,
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
	rsb	r4, r4, r6	@ BytePos0.747, prephitmp.664, tmp308
	and	r6, r5, #7	@ tmp323, <variable>.StreamBitOffset,
	and	r8, r4, #15	@ tmp311, BytePos0.747,
	add	ip, ip, r5, lsr #3	@, tmp317, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	bic	r4, r4, #15	@ tmp310, BytePos0.747,
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
	mov	r0, #1	@ D.35645,
	b	.L61	@
.L93:
	ldr	r5, [r0, #100]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	ldr	r6, [r0, #92]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	and	r1, r5, #7	@ tmp303, <variable>.StreamBitOffset,
	add	r3, r6, r5, lsr #3	@, tmp298, <variable>.StreamPhyAddr, <variable>.StreamBitOffset,
	rsb	ip, r4, r3	@ BytePos0, prephitmp.664, tmp298
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
.LFB1623:
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
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #39320	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36337,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.36340,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	add	r1, r4, #38912	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.36340,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	REAL8DEC_GetImageBuffer, .-REAL8DEC_GetImageBuffer
	.align	2
	.global	REAL8DEC_RecycleImage
	.type	REAL8DEC_RecycleImage, %function
REAL8DEC_RecycleImage:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pCtx, pCtx
	mov	r6, r1	@ ImgID, ImgID
	moveq	r0, r4	@ D.36229, pCtx
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r5, #39320	@ tmp138,
	mov	r2, #0	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r6	@, ImgID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.36229,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL8DEC_RecycleImage, .-REAL8DEC_RecycleImage
	.align	2
	.global	REAL8DEC_Init
	.type	REAL8DEC_Init, %function
REAL8DEC_Init:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #39312	@ tmp139,
	ldr	r8, [r0, r6]	@ D.35719, <variable>.ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #39328	@,
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	ip, r4, #38912	@, pCtx,
	add	r0, ip, #56	@,,
	str	r8, [r4, r6]	@ D.35719, <variable>.ImageQue.ResetMagicWord
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
	cmn	r0, #1	@ D.35730,
	str	r0, [r4, r3]	@ D.35730, <variable>.ChanID
	movne	r0, r7	@ D.35735, tmp151
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r7	@, tmp151
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35735,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	REAL8DEC_Init, .-REAL8DEC_Init
	.align	2
	.global	Real8_SetImgFormat
	.type	Real8_SetImgFormat, %function
Real8_SetImgFormat:
	.fnstart
.LFB1610:
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
	and	r3, r2, #3	@ D.35524, <variable>.CodecInfo.PictureHeader.PicCodType,
	movw	r2, #37648	@ tmp151,
	orr	lr, r3, #7168	@ tmp148, D.35524,
	str	r3, [r4, #136]	@ D.35524, <variable>.bottom_fld_type
	str	r3, [r4, #132]	@ D.35524, <variable>.top_fld_type
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
	ldr	r2, [r4, #172]	@ D.35532, <variable>.image_stride
	add	ip, r0, #15	@ tmp158, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp157, D.35532,
	mov	r1, ip, lsr #4	@ tmp160, tmp158,
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r3, r2	@ tmp165, <variable>.luma_phy_addr, D.35532
	mul	r1, r1, lr	@ D.35538, tmp160, tmp157
	str	ip, [r4, #96]	@ tmp165, <variable>.btm_luma_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	lr, r1, r3	@ tmp162, D.35538, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp164, <variable>.luma_vir_addr, D.35538
	str	lr, [r4, #108]	@ tmp162, <variable>.chrom_phy_addr
	add	r0, lr, r2	@ tmp166, tmp162, D.35532
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
.LFB1621:
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
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	movw	r1, #39320	@ tmp146,
	movw	r3, #38924	@ tmp148,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L127	@,
	movw	lr, #37640	@ tmp151,
	movw	r2, #11373	@ tmp150,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	ip, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	strb	ip, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.LastDecPicCodingType
	andne	r6, r6, #31	@ tmp157, Mb0QpInCurrPic,
	movwne	ip, #37748	@ tmp156,
	strne	r6, [r4, ip]	@ tmp157, <variable>.CodecInfo.PrevPicMb0QP
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.491,
	blt	.L130	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.491,
.L130:
	str	r5, [r0, #180]	@ iftmp.491, <variable>.error_level
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	Real8_SetImgFormat	@
	movw	r3, #11370	@ tmp159,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #2	@ <variable>.CodecInfo.UsedDecMode,
	beq	.L133	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #1	@ <variable>.s32DecOrderOutput,
	beq	.L133	@,
	movw	r0, #37640	@ tmp165,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	lr, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	beq	.L133	@,
	movw	ip, #11375	@ tmp167,
	movw	lr, #38928	@ tmp174,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #1	@ <variable>.CodecInfo.RefNum,
	movwhi	r3, #38916	@ tmp169,
	mvnls	r1, #0	@ prephitmp.897,
	ldrhi	r1, [r4, r3]	@ prephitmp.897,
	cmn	r1, #1	@ prephitmp.897,
	str	r1, [r4, lr]	@ prephitmp.897, <variable>.CodecInfo.ToQueFsID
	beq	.L137	@,
.L141:
	movw	r5, #39320	@ tmp175,
	movw	r6, #38928	@ tmp177,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r8, [r4, r6]	@ D.36319, <variable>.CodecInfo.ToQueFsID
	mov	r1, r8	@, D.36319
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.36319
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r3, r0	@ D.36324,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
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
	movw	ip, #38816	@ tmp193,
	mov	r0, #1	@ D.36287,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.FrmCnt, <variable>.CodecInfo.FrmCnt
	add	r1, r2, r0	@ tmp196, <variable>.CodecInfo.FrmCnt,
	str	r1, [r4, ip]	@ tmp196, <variable>.CodecInfo.FrmCnt
.L127:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L133:
	movw	r2, #38924	@ tmp173,
	movw	lr, #38928	@ tmp174,
	ldr	r1, [r4, r2]	@ prephitmp.897,
	cmn	r1, #1	@ prephitmp.897,
	str	r1, [r4, lr]	@ prephitmp.897, <variable>.CodecInfo.ToQueFsID
	bne	.L141	@,
	b	.L137	@
.L140:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.36287,
	b	.L127	@
	.fnend
	.size	REAL8DEC_VDMPostProc, .-REAL8DEC_VDMPostProc
	.align	2
	.global	REAL8DEC_GetRemainImg
	.type	REAL8DEC_GetRemainImg, %function
REAL8DEC_GetRemainImg:
	.fnstart
.LFB1620:
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
.LFB1617:
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
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r7, r0, #7	@ tmp142, D.35217,
	cmp	r0, #0	@ D.35217,
	movlt	r0, r7	@ D.35217, tmp142
	mov	r7, r0, asr #3	@ tmp143, D.35217,
	sub	r6, r7, #2	@ RemainByte, tmp143,
	cmp	r6, #0	@ RemainByte,
	ble	.L164	@,
	sub	r2, r7, #3	@ tmp147, tmp143,
	mov	r0, r4	@, pBs
	mov	r1, #17	@,
	and	r7, r2, #1	@ tmp149, tmp147,
	bl	BsShow	@
	cmp	r0, #1	@ D.35219,
	mov	r3, r0	@ D.35219,
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
	cmp	r0, r5	@ D.35219,
	mov	r3, r0	@ D.35219,
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
	mov	r3, r0	@ D.35219,
	cmp	r3, #1	@ D.35219,
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
	mov	r3, r0	@ D.35219,
	cmp	r3, #1	@ D.35219,
	mov	r0, r4	@, pBs
	bne	.L165	@,
.L178:
	mov	r0, r3	@ D.35222, D.35219
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L164:
	mov	r0, #0	@ D.35222,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	Real8_CB_FindNextSliceStartCode, .-Real8_CB_FindNextSliceStartCode
	.align	2
	.global	Real8_CB_GetSSC
	.type	Real8_CB_GetSSC, %function
Real8_CB_GetSSC:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #76]	@ <variable>.Fid, <variable>.Fid
	cmp	r3, #1	@ <variable>.Fid,
	moveq	r0, #0	@ D.35272,
	ldmeqfd	sp!, {r3, pc}	@
	bl	Real8_CB_FindNextSliceStartCode	@
	subs	r0, r0, #0	@ D.35272,,
	movne	r0, #1	@ D.35272
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Real8_CB_GetSSC, .-Real8_CB_GetSSC
	.align	2
	.global	Real8_CB_GetVLCBits
	.type	Real8_CB_GetVLCBits, %function
Real8_CB_GetVLCBits:
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
	.size	Real8_CB_Get1Bit, .-Real8_CB_Get1Bit
	.align	2
	.global	Real8_CB_GetBits
	.type	Real8_CB_GetBits, %function
Real8_CB_GetBits:
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
	.size	Real8_CB_GetBits, .-Real8_CB_GetBits
	.align	2
	.global	Real8_CB_GetSliceHeader
	.type	Real8_CB_GetSliceHeader, %function
Real8_CB_GetSliceHeader:
	.fnstart
.LFB1608:
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
	mov	r3, #1	@ D.35299,
	mov	r0, #0	@ tmp195,
	str	r0, [r2, #0]	@ tmp195,* iSliceMBA
	mvn	r2, #0	@ tmp196,
	str	r2, [r6, #0]	@ tmp196,* iSQUANT
.L204:
	mov	r0, r3	@, D.35299
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L211:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L193	@,
	mov	r1, #3	@,
	ldr	sl, [r4, #40]	@ D.35290, <variable>.Rv8ParsePicParam.mba
	bl	Real8_CB_GetBits	@
	cmp	r0, #7	@ versionEncoding,
	bhi	.L194	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	add	r0, r2, r0, asl #2	@, tmp174, tmp171, versionEncoding,
	ldr	r1, [r0, #316]	@ tmp176, s_RVVersionEncodingToMinorVersion
	cmp	r1, #2	@ tmp176,
	bhi	.L194	@,
	cmn	sl, #1	@ D.35290,
	movne	sl, #0	@, D.37073
	moveq	sl, #1	@, D.37073
	cmp	sl, #0	@ D.37073,
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
	uxtb	r3, r0	@ D.35312,
	strb	r3, [r4, #6]	@ D.35312, <variable>.Rv8ParsePicParam.pquant
	cmp	r3, #31	@ D.35312,
	bhi	.L194	@,
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	subs	r1, r0, #0	@ tmp180,,
	movne	r1, #1	@ tmp180
	cmp	sl, #0	@ D.37073,
	strb	r1, [r4, #5]	@ tmp180, <variable>.Rv8ParsePicParam.deblocking_filter_passthrough
	beq	.L197	@,
	mov	r0, r7	@, pBs
	mov	r1, #13	@,
	bl	Real8_CB_GetBits	@
	str	r0, [r4, #44]	@, <variable>.Rv8ParsePicParam.tr
.L198:
	ldr	r1, [r4, #8]	@ D.35326, <variable>.Rv8ParsePicParam.m_pctszSize
	cmp	r1, #0	@ D.35326,
	beq	.L199	@,
	cmp	sl, #0	@ D.37073,
	beq	.L200	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_GetBits	@
	ldr	r3, [r4, #12]	@ D.35332, <variable>.Rv8ParsePicParam.m_pSizes
	cmp	r3, #0	@ D.35332,
	str	r0, [r4, #56]	@ D.35331, <variable>.Rv8ParsePicParam.pctsz
	beq	.L194	@,
	add	r1, r3, r0, asl #3	@, tmp184, D.35332, D.35331,
	ldr	ip, [r3, r0, asl #3]	@ width,* D.35332
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
	mov	r3, #1	@ D.35299,
	mov	r0, #0	@ tmp192,
	str	r1, [r5, #0]	@ <variable>.Rv8ParsePicParam.mba,* iSliceMBA
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ <variable>.Rv8ParsePicParam.pquant, <variable>.Rv8ParsePicParam.pquant
	str	ip, [r6, #0]	@ <variable>.Rv8ParsePicParam.pquant,* iSQUANT
	str	r0, [r8, #0]	@ tmp192,* iSliceGFID
	mov	r0, r3	@, D.35299
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L212:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L214	@,
.L194:
	mov	r3, #0	@ D.35299,
.L215:
	mov	r0, r3	@, D.35299
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
	cmp	r0, #31	@ D.35374,
	str	r0, [r6, #0]	@ D.35374,* iSQUANT
	bgt	.L194	@,
	mov	r0, r7	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.35379,
	mov	r4, r0	@ D.35379,
	bne	.L194	@,
	mov	r0, r7	@, pBs
	mov	r1, #2	@,
	bl	Real8_CB_GetBits	@
	mov	r3, r4	@ D.35299, D.35379
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
	mov	r3, #0	@ D.35299,
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
	mov	r3, #0	@ D.35299,
	b	.L215	@
.L199:
	mov	r0, r7	@, pBs
	ldr	r1, [r4, #32]	@, <variable>.Rv8ParsePicParam.m_mbaSize
	bl	Real8_CB_GetBits	@
	cmp	sl, #0	@ D.37073,
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
.LFB1605:
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
	ldr	r9, [r7, #348]	@ pretmp.1138, GetBitsMask
	b	.L219	@
.L220:
	tst	r3, sl	@ w, msb
	bne	.L218	@,
.L219:
	mov	r0, r6	@, pBs
	and	r7, r9, r3, asl #1	@, D.35244, pretmp.1138, w,
	bl	Real8_CB_Get1Bit	@
	add	r8, r8, #1	@ n, n,
	orr	r3, r7, r0	@ w, D.35244,
	cmp	r4, r3	@ code, w
	cmpne	r5, r8	@, lookahead, n
	bhi	.L220	@,
.L217:
	cmp	r4, r3	@ code, w
	movne	r0, #0	@, D.35251
	moveq	r0, #1	@, D.35251
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L218:
	mov	r0, #0	@ D.35251,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	Real8_CB_SearchBits_IgnoreOnly0, .-Real8_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real8_CB_GetCPFMT
	.type	Real8_CB_GetCPFMT, %function
Real8_CB_GetCPFMT:
	.fnstart
.LFB1602:
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
	cmp	r0, #1	@ D.35157,
	mov	r6, r0	@ D.35157,
	movne	r6, #0	@ D.35160,
	beq	.L227	@,
	mov	r0, r6	@, D.35160
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L227:
	mov	r0, r5	@, pBs
	mov	r1, #9	@,
	bl	Real8_CB_GetBits	@
	mov	r0, r0, asl #2	@ tmp144,,
	str	r0, [r4, #84]	@ tmp144, <variable>.pic_height_in_pixel
	mov	r0, r6	@, D.35160
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real8_CB_GetCPFMT, .-Real8_CB_GetCPFMT
	.align	2
	.global	Real8_CB_GetPictureHeader
	.type	Real8_CB_GetPictureHeader, %function
Real8_CB_GetPictureHeader:
	.fnstart
.LFB1609:
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
	mov	r2, ip, lsr #4	@ D.35479, tmp194,
	str	r2, [r4, #96]	@ D.35479, <variable>.pic_width_in_mb
	mov	lr, r1, lsr #4	@ D.35481, tmp196,
	str	lr, [r4, #92]	@ D.35481, <variable>.pic_height_in_mb
	mul	ip, r2, lr	@ tmp198, D.35479, D.35481
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
	cmp	r0, #1	@ length.1213,
	streq	r0, [r4, #80]	@ length.1213, <variable>.PicCodType
	beq	.L242	@,
	cmp	r0, #3	@ length.1213,
	bne	.L243	@,
	ldr	ip, [sp, #8]	@ info, info
	cmp	ip, #1	@ info,
	moveq	ip, #0	@ tmp186,
	streq	ip, [r4, #80]	@ tmp186, <variable>.PicCodType
	bne	.L238	@,
.L242:
	ldr	r3, [r4, #88]	@ prephitmp.1200, <variable>.pic_width_in_pixel
	cmp	r3, #0	@ prephitmp.1200,
	beq	.L251	@,
.L244:
	sub	r1, r3, #48	@ tmp189, prephitmp.1200,
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
	cmp	r0, #5	@ length.1213,
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
	ldr	r3, [r4, #88]	@ prephitmp.1200, <variable>.pic_width_in_pixel
	b	.L244	@
	.fnend
	.size	Real8_CB_GetPictureHeader, .-Real8_CB_GetPictureHeader
	.align	2
	.global	Real8_ArrangeVHBMem
	.type	Real8_ArrangeVHBMem, %function
Real8_ArrangeVHBMem:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #96]	@ D.35082, <variable>.pic_width_in_mb
	.pad #48
	sub	sp, sp, #48	@,,
	cmp	r1, #1	@ D.35082,
	ldrls	r3, [r2, #92]	@ prephitmp.1235, <variable>.pic_height_in_mb
	bls	.L254	@,
	ldr	r3, [r2, #92]	@ prephitmp.1235, <variable>.pic_height_in_mb
	cmp	r3, #1	@ prephitmp.1235,
	bls	.L254	@,
	ldr	r1, [r4, #0]	@ D.35089, <variable>.pstExtraData
	ldr	r3, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L257	@,
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L279	@,
.L258:
	ldr	r6, [r2, #84]	@ PicHeight, <variable>.pic_height_in_pixel
	mov	r8, #5	@ prephitmp.1237,
	ldr	r5, [r2, #88]	@ PicWidth, <variable>.pic_width_in_pixel
	mov	r9, #2	@ PmvNum,
	mov	sl, #4	@ DecFsNum,
.L265:
	add	r7, sp, #8	@ tmp200,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp200
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp175,
	ldr	r2, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	movw	r6, #39320	@ tmp186,
	strb	r3, [sp, #10]	@ tmp175, FspInstCfg.s32RprEnable
	strb	r2, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	ldr	r0, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #15]	@ prephitmp.1237, FspInstCfg.s32ExpectedDispFsNum
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
	beq	.L280	@,
.L256:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L257:
	ldr	r5, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r5, #25	@ <variable>.eCapLevel,
	bne	.L258	@,
	ldr	r5, [r2, #88]	@ temp.1259, <variable>.pic_width_in_pixel
	ldr	ip, [r1, #568]	@ D.35097, <variable>.stChanOption.s32MaxWidth
	cmp	r5, ip	@ temp.1259, D.35097
	bhi	.L281	@,
	ldr	r3, [r2, #84]	@ prephitmp.1241, <variable>.pic_height_in_pixel
	ldr	lr, [r1, #572]	@ prephitmp.1239, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.1241, prephitmp.1239
	bhi	.L268	@,
	ldr	r6, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r6, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L271	@,
	add	r9, sl, #1	@ PmvNum.1263, DecFsNum,
	cmp	r9, #17	@ PmvNum.1263,
	movge	r9, #17	@ PmvNum,
.L271:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.stChanOption.s32DisplayFrameNum
	mov	r6, r3	@ PicHeight, prephitmp.1241
	b	.L265	@
.L254:
	mov	r2, r1	@, D.35082
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L256	@
.L280:
	ldr	lr, [r4, #0]	@ temp.1272, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L282	@,
	mov	ip, #1	@ tmp196,
	movw	r1, #11372	@ tmp195,
	mov	r0, ip	@ D.35086, tmp196
	strb	ip, [r4, r1]	@ tmp196, <variable>.CodecInfo.Imgbuf_allocated
	b	.L256	@
.L279:
	ldr	r0, [r2, #88]	@ D.35096, <variable>.pic_width_in_pixel
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r0, r5	@ D.35096, PicWidth
	bhi	.L283	@,
	ldr	r3, [r2, #84]	@ prephitmp.1245, <variable>.pic_height_in_pixel
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ prephitmp.1245, PicHeight
	bhi	.L260	@,
	movw	r2, #11372	@ tmp163,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r0, #1	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L256	@,
	ldr	r7, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L264	@,
	add	r9, sl, #1	@ PmvNum.1256, DecFsNum,
	cmp	r9, #17	@ PmvNum.1256,
	movge	r9, #17	@ PmvNum,
.L264:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.stChanOption.s32DisplayFrameNum
	b	.L265	@
.L281:
	ldr	lr, [r1, #572]	@ prephitmp.1239, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1241, <variable>.pic_height_in_pixel
.L268:
	mov	r2, r5	@, temp.1259
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L256	@
.L283:
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ prephitmp.1245, <variable>.pic_height_in_pixel
.L260:
	mov	r2, r0	@, D.35096
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	stmia	sp, {r5, r6}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35086,
	b	.L256	@
.L282:
	mov	r0, r5	@, D.35138
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35086, D.35138
	b	.L256	@
	.fnend
	.size	Real8_ArrangeVHBMem, .-Real8_ArrangeVHBMem
	.align	2
	.global	Real8_GetImageBuffer
	.type	Real8_GetImageBuffer, %function
Real8_GetImageBuffer:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #39320	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r6, #38924	@ tmp144,
	cmp	r0, #0	@ D.35033,
	mov	r1, r0	@ D.35033,
	str	r0, [r4, r6]	@ D.35033, <variable>.CodecInfo.CurFsID
	blt	.L291	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L292	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.35048, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.35048,
	beq	.L288	@,
	ldr	r3, [r5, #412]	@ D.35051, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.35051,
	beq	.L288	@,
	ldr	r0, [r5, #416]	@ D.35054, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.35054,
	beq	.L288	@,
	ldr	ip, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC10	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
.L288:
	movw	lr, #38924	@ tmp179,
	mov	r0, #1	@ D.35042,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	cmp	r2, #2	@ <variable>.CodecInfo.CurFsID,
	streq	r2, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
.L286:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L291:
	movw	r7, #38920	@ tmp148,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	movw	r8, #38916	@ tmp152,
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
	movw	r3, #11375	@ tmp162,
	add	r1, r4, #38912	@, pCtx,
	strb	r6, [r4, r3]	@ tmp155, <variable>.CodecInfo.RefNum
	add	r1, r1, #56	@,,
	str	r0, [r4, r8]	@ D.35040, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35040, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r6	@ D.35042, tmp155
	b	.L286	@
.L292:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #555	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35042, pLf
	b	.L286	@
	.fnend
	.size	Real8_GetImageBuffer, .-Real8_GetImageBuffer
	.global	__aeabi_idiv
	.align	2
	.global	REAL8DEC_Decode
	.type	REAL8DEC_Decode, %function
REAL8DEC_Decode:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 328
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #348
	sub	sp, sp, #348	@,,
	add	r8, sp, #220	@ tmp925,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #140	@,
	mov	r1, #0	@,
	add	r0, sp, #80	@,,
	bl	memset	@
	mov	r1, #0	@,
	mov	r2, #64	@,
	mov	r0, r8	@, tmp925
	bl	memset	@
	movw	r3, #37624	@ tmp264,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight
	movw	ip, #37620	@ tmp261,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth
	mov	r0, #37632	@ tmp263,
	movw	ip, #37636	@ tmp274,
	cmp	r5, #0	@ pPacket,
	movw	r1, #37628	@ tmp260,
	str	r3, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight_prev
	add	r6, r4, #37376	@ pPictureHeader, pCtx,
	mov	r0, #1	@ tmp275,
	str	r0, [r4, ip]	@ tmp275, <variable>.CodecInfo.PictureHeader.Fid
	movw	ip, #37664	@ tmp276,
	str	r2, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth_prev
	add	r6, r6, #184	@ pPictureHeader, pPictureHeader,
	mov	r1, #8192	@ tmp277,
	str	r2, [sp, #140]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r1, [r4, ip]	@ tmp277, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	str	r3, [sp, #144]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r1, [sp, #184]	@ tmp277, TmpPictureHeader.m_uTRWrap
	str	r2, [sp, #148]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pwidth, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r3, [sp, #152]	@ <variable>.CodecInfo.PictureHeader.Rv8ParsePicParam.pheight, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	str	r0, [sp, #156]	@ tmp275, TmpPictureHeader.Fid
	beq	.L387	@,
	add	r7, r4, #8	@ pRv8DecParam, pCtx,
	movw	r1, #11352	@,
	mov	r9, #0	@ tmp285,
	mov	r0, r7	@, pRv8DecParam
	bl	__memzero	@
	movw	r0, #38780	@ tmp284,
	str	r9, [r4, r0]	@ tmp285, <variable>.CodecInfo.BsOffset
	movw	r2, #38800	@ tmp286,
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #38784	@ tmp288,
	movw	r0, #11360	@ tmp290,
	str	ip, [r4, r2]	@ <variable>.LenInByte, <variable>.CodecInfo.PacketTail
	movw	ip, #38788	@ tmp292,
	ldr	r1, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr
	movw	r3, #11368	@ tmp293,
	ldr	r2, [r5, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r2, [r4, r0]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr
	ldr	r2, [r5, #12]	@ D.35842, <variable>.LenInByte
	str	r2, [r4, ip]	@ D.35842, <variable>.CodecInfo.BsLength
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L296	@,
	ldr	ip, [r5, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #38792	@ tmp297,
	movw	r1, #11364	@ tmp299,
	movw	r0, #38796	@ tmp301,
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.BsPhyAddr1
	movw	r3, #11369	@ tmp303,
	ldr	lr, [r5, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [r4, r1]	@ <variable>.VirAddr, <variable>.CodecInfo.BsVirAddr1
	ldr	ip, [r5, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r4, r0]	@ <variable>.LenInByte, <variable>.CodecInfo.BsLength1
	ldrb	r1, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r1, [r4, r3]	@ <variable>.IsLastSeg, <variable>.CodecInfo.IsLastSeg1
	ldrb	lr, [r5, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	lr, #1	@ <variable>.IsLastSeg,
	bne	.L388	@,
	sub	r0, r2, #75	@ tmp322, D.35842,
	movw	r3, #:lower16:3145652	@ tmp323,
	movt	r3, #:upper16:3145652	@ tmp323,
	cmp	r0, r3	@ tmp322, tmp323
	bhi	.L298	@,
.L390:
	movw	lr, #11360	@ tmp324,
	ldr	r1, [r4, lr]	@ D.35865, <variable>.CodecInfo.BsVirAddr
	cmp	r1, #0	@ D.35865,
	beq	.L298	@,
	add	r5, r4, #38912	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	bl	Real8_CB_GetBits	@
	cmp	r0, #8	@,
	str	r0, [sp, #48]	@, %sfp
	bhi	.L298	@,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	Real8_CB_GetBits	@
	mov	ip, r0, lsr #24	@ tmp327, temp.1478,
	and	r1, r0, #16711680	@ tmp329, temp.1478,
	and	r2, r0, #65280	@ tmp332, temp.1478,
	orr	r3, ip, r0, asl #24	@, tmp328, tmp327, temp.1478,
	orr	ip, r3, r1, lsr #8	@, tmp331, tmp328, tmp329,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, asl #8	@, tmp334, tmp331, tmp332,
	str	r3, [sp, #220]	@ tmp334, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #16711680	@ tmp338, temp.1403,
	mov	r1, r0, lsr #24	@ tmp336, temp.1403,
	and	r2, r0, #65280	@ tmp341, temp.1403,
	orr	r0, r1, r0, asl #24	@, tmp337, tmp336, temp.1403,
	orr	r3, r0, ip, lsr #8	@, tmp340, tmp337, tmp338,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, asl #8	@, tmp343, tmp340, tmp341,
	str	ip, [sp, #224]	@ tmp343, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp345, D.35872,
	and	r1, r0, #65280	@ tmp347, D.35872,
	and	r2, r0, #16711680	@ tmp350, D.35872,
	orr	ip, r3, r0, lsr #24	@, tmp346, tmp345, D.35872,
	orr	r3, ip, r1, asl #8	@, tmp349, tmp346, tmp347,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp352, tmp349, tmp350,
	str	ip, [sp, #228]	@ tmp352, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp356, temp.1541,
	mov	r1, r0, asl #24	@ tmp354, temp.1541,
	and	r2, r0, #16711680	@ tmp359, temp.1541,
	orr	r0, r1, r0, lsr #24	@, tmp355, tmp354, temp.1541,
	orr	ip, r0, r3, asl #8	@, tmp358, tmp355, tmp356,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp361, tmp358, tmp359,
	str	r3, [sp, #232]	@ tmp361, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp363, temp.1551,
	and	r1, r0, #65280	@ tmp365, temp.1551,
	and	r2, r0, #16711680	@ tmp368, temp.1551,
	orr	r3, ip, r0, lsr #24	@, tmp364, tmp363, temp.1551,
	orr	ip, r3, r1, asl #8	@, tmp367, tmp364, tmp365,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp370, tmp367, tmp368,
	str	r3, [sp, #236]	@ tmp370, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp374, temp.1561,
	mov	r1, r0, asl #24	@ tmp372, temp.1561,
	and	r2, r0, #16711680	@ tmp377, temp.1561,
	orr	r0, r1, r0, lsr #24	@, tmp373, tmp372, temp.1561,
	orr	r3, r0, ip, asl #8	@, tmp376, tmp373, tmp374,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp379, tmp376, tmp377,
	str	ip, [sp, #240]	@ tmp379, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp381, temp.1571,
	and	r1, r0, #65280	@ tmp383, temp.1571,
	and	r2, r0, #16711680	@ tmp386, temp.1571,
	orr	ip, r3, r0, lsr #24	@, tmp382, tmp381, temp.1571,
	orr	r3, ip, r1, asl #8	@, tmp385, tmp382, tmp383,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp388, tmp385, tmp386,
	str	ip, [sp, #244]	@ tmp388, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp392, temp.1581,
	mov	r1, r0, asl #24	@ tmp390, temp.1581,
	and	r2, r0, #16711680	@ tmp395, temp.1581,
	orr	r0, r1, r0, lsr #24	@, tmp391, tmp390, temp.1581,
	orr	ip, r0, r3, asl #8	@, tmp394, tmp391, tmp392,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp397, tmp394, tmp395,
	str	r3, [sp, #248]	@ tmp397, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp399, temp.1591,
	and	r1, r0, #65280	@ tmp401, temp.1591,
	and	r2, r0, #16711680	@ tmp404, temp.1591,
	orr	r3, ip, r0, lsr #24	@, tmp400, tmp399, temp.1591,
	orr	ip, r3, r1, asl #8	@, tmp403, tmp400, tmp401,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp406, tmp403, tmp404,
	str	r3, [sp, #252]	@ tmp406, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp410, temp.1601,
	mov	r1, r0, asl #24	@ tmp408, temp.1601,
	and	r2, r0, #16711680	@ tmp413, temp.1601,
	orr	r0, r1, r0, lsr #24	@, tmp409, tmp408, temp.1601,
	orr	r3, r0, ip, asl #8	@, tmp412, tmp409, tmp410,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp415, tmp412, tmp413,
	str	ip, [sp, #256]	@ tmp415, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp417, temp.1611,
	and	r1, r0, #65280	@ tmp419, temp.1611,
	and	r2, r0, #16711680	@ tmp422, temp.1611,
	orr	ip, r3, r0, lsr #24	@, tmp418, tmp417, temp.1611,
	orr	r3, ip, r1, asl #8	@, tmp421, tmp418, tmp419,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp424, tmp421, tmp422,
	str	ip, [sp, #260]	@ tmp424, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r3, r0, #65280	@ tmp428, temp.1621,
	mov	r1, r0, asl #24	@ tmp426, temp.1621,
	and	r2, r0, #16711680	@ tmp431, temp.1621,
	orr	r0, r1, r0, lsr #24	@, tmp427, tmp426, temp.1621,
	orr	ip, r0, r3, asl #8	@, tmp430, tmp427, tmp428,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	r3, ip, r2, lsr #8	@, tmp433, tmp430, tmp431,
	str	r3, [sp, #264]	@ tmp433, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	ip, r0, asl #24	@ tmp435, temp.1631,
	and	r1, r0, #65280	@ tmp437, temp.1631,
	and	r2, r0, #16711680	@ tmp440, temp.1631,
	orr	r3, ip, r0, lsr #24	@, tmp436, tmp435, temp.1631,
	orr	ip, r3, r1, asl #8	@, tmp439, tmp436, tmp437,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	r3, ip, r2, lsr #8	@, tmp442, tmp439, tmp440,
	str	r3, [sp, #268]	@ tmp442, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	ip, r0, #65280	@ tmp446, temp.1641,
	mov	r1, r0, asl #24	@ tmp444, temp.1641,
	and	r2, r0, #16711680	@ tmp449, temp.1641,
	orr	r0, r1, r0, lsr #24	@, tmp445, tmp444, temp.1641,
	orr	r3, r0, ip, asl #8	@, tmp448, tmp445, tmp446,
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	orr	ip, r3, r2, lsr #8	@, tmp451, tmp448, tmp449,
	str	ip, [sp, #272]	@ tmp451, RPR_Sizes
	bl	Real8_CB_GetBits	@
	mov	r3, r0, asl #24	@ tmp453, temp.1651,
	and	r1, r0, #65280	@ tmp455, temp.1651,
	and	r2, r0, #16711680	@ tmp458, temp.1651,
	orr	ip, r3, r0, lsr #24	@, tmp454, tmp453, temp.1651,
	orr	r3, ip, r1, asl #8	@, tmp457, tmp454, tmp455,
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	orr	ip, r3, r2, lsr #8	@, tmp460, tmp457, tmp458,
	str	ip, [sp, #276]	@ tmp460, RPR_Sizes
	bl	Real8_CB_GetBits	@
	and	r1, r0, #65280	@ tmp464, temp.1392,
	mov	r3, r0, asl #24	@ tmp462, temp.1392,
	and	r2, r0, #16711680	@ tmp467, temp.1392,
	orr	ip, r3, r0, lsr #24	@, tmp463, tmp462, temp.1392,
	orr	r3, ip, r1, asl #8	@, tmp466, tmp463, tmp464,
	mov	r0, r5	@, pBs
	mov	r1, #8	@,
	orr	ip, r3, r2, lsr r1	@, tmp469, tmp466, tmp467,
	str	ip, [sp, #280]	@ tmp469, RPR_Sizes
	bl	Real8_CB_GetBits	@
	movw	r3, #37752	@ tmp470,
	cmp	r0, #255	@ D.35883,
	add	r0, r0, #1	@ D.35885, D.35883,
	str	r0, [r4, r3]	@ D.35885, <variable>.CodecInfo.TotalSliceNum
	bhi	.L298	@,
	cmp	r0, #0	@ D.35885,
	moveq	r3, r0	@ D.35886, D.35885
	addeq	r0, r4, #37632	@, pCtx,
	streq	r0, [sp, #56]	@, %sfp
	beq	.L300	@,
	add	r9, r4, #37632	@, pCtx,
	movw	fp, #:lower16:3145727	@ tmp948,
	str	r9, [sp, #56]	@, %sfp
	add	sl, r9, #124	@ ivtmp.1381,,
	movt	fp, #:upper16:3145727	@ tmp948,
	mov	r9, #0	@ i.1402,
	b	.L301	@
.L389:
	movw	lr, #37752	@,
	ldr	r3, [r4, lr]	@ D.35886, <variable>.CodecInfo.TotalSliceNum
	cmp	r3, r9	@ D.35886, i.1402
	bls	.L300	@,
.L301:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r9, r9, #1	@ i.1402, i.1402,
	bl	Real8_CB_GetBits	@
	mov	r1, r0, asl #24	@ tmp473, SliceByteOffset,
	and	r2, r0, #65280	@ tmp475, SliceByteOffset,
	orr	ip, r1, r0, lsr #24	@, tmp474, tmp473, SliceByteOffset,
	and	r1, r0, #16711680	@ tmp478, SliceByteOffset,
	orr	r3, ip, r2, asl #8	@, tmp477, tmp474, tmp475,
	orr	r0, r3, r1, lsr #8	@, D.35901, tmp477, tmp478,
	str	r0, [sl, #0]	@ D.35901, <variable>.CodecInfo.SliceByteOffset
	cmp	r0, fp	@ D.35901, tmp948
	add	sl, sl, #4	@ ivtmp.1381, ivtmp.1381,
	ble	.L389	@,
.L298:
	mov	r0, #0	@ D.35825,
.L295:
	add	sp, sp, #348	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L388:
	movw	r6, #39320	@ tmp307,
	ldr	r1, [r5, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #96]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@ D.35825, tmp285
	b	.L295	@
.L296:
	movw	r0, #38796	@ tmp317,
	movw	r3, #:lower16:3145652	@ tmp323,
	str	r9, [r4, r0]	@ tmp285, <variable>.CodecInfo.BsLength1
	movt	r3, #:upper16:3145652	@ tmp323,
	sub	r0, r2, #75	@ tmp322, D.35842,
	movw	ip, #11369	@ tmp319,
	cmp	r0, r3	@ tmp322, tmp323
	movw	r1, #38792	@ tmp313,
	movw	lr, #11364	@ tmp315,
	strb	r9, [r4, ip]	@ tmp285, <variable>.CodecInfo.IsLastSeg1
	str	r9, [r4, r1]	@ tmp285, <variable>.CodecInfo.BsPhyAddr1
	str	r9, [r4, lr]	@ tmp285, <variable>.CodecInfo.BsVirAddr1
	bls	.L390	@,
	b	.L298	@
.L387:
	movw	lr, #38816	@ tmp282,
	movw	r1, #:lower16:.LC11	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35825, pPacket
	b	.L295	@
.L300:
	ldr	r9, [sp, #56]	@, %sfp
	sub	sl, r3, #1	@ pretmp.1345, D.35886,
	tst	sl, #1	@ pretmp.1345,
	mov	r1, #0	@ i,
	add	fp, r9, #128	@ ivtmp.1531,,
	mov	r2, fp	@ ivtmp.1375, ivtmp.1531
	beq	.L302	@,
	cmp	r1, sl	@ i, pretmp.1345
	bcs	.L379	@,
	ldr	ip, [fp, #0]	@ D.35907, <variable>.CodecInfo.SliceByteOffset
	mov	r1, #1	@ i,
	ldr	r0, [fp, #-4]	@ D.35902, <variable>.CodecInfo.SliceByteOffset
	ldr	r9, [sp, #56]	@, %sfp
	cmp	ip, r0	@ D.35907, D.35902
	add	r2, r9, #132	@ ivtmp.1375,,
	bgt	.L302	@,
	b	.L298	@
.L303:
	ldr	r9, [r2, #0]	@ D.35907, <variable>.CodecInfo.SliceByteOffset
	ldr	ip, [r2, #-4]	@ D.35902, <variable>.CodecInfo.SliceByteOffset
	cmp	r9, ip	@ D.35907, D.35902
	ble	.L298	@,
	ldr	ip, [r2, #4]	@ D.35907, <variable>.CodecInfo.SliceByteOffset
	add	r2, r0, #4	@ ivtmp.1375, tmp953,
	ldr	lr, [r0, #-4]	@ D.35902, <variable>.CodecInfo.SliceByteOffset
	cmp	ip, lr	@ D.35907, D.35902
	ble	.L298	@,
.L302:
	cmp	r1, sl	@ i, pretmp.1345
	add	r0, r1, #1	@ tmp952, i,
	add	r1, r0, #1	@ i, tmp952,
	add	r0, r2, #4	@ tmp953, ivtmp.1375,
	bcc	.L303	@,
.L379:
	movw	sl, #37756	@ tmp484,
	mov	lr, r3, asl #3	@ tmp483, D.35886,
	ldr	r1, [r4, sl]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	sl, lr, #66	@ PrevHeaderBytes, tmp483,
	add	r3, sl, r1	@, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	str	r3, [sp, #68]	@, %sfp
	cmp	sl, #3145728	@ PrevHeaderBytes,
	cmplt	r3, #3145728	@,,
	movlt	r9, #0	@, tmp494
	movge	r9, #1	@, tmp494
	bge	.L298	@,
	ldr	ip, [sp, #68]	@, %sfp
	cmp	ip, #73	@,
	ble	.L298	@,
	movw	r0, #38788	@ tmp495,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, ip, r2	@ D.35922,, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ D.35922,
	ble	.L298	@,
	movw	r0, #11360	@ tmp497,
	add	lr, sp, #284	@,,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	mov	r0, r5	@, pBs
	str	lr, [sp, #28]	@, %sfp
	add	r1, ip, r1	@,, <variable>.CodecInfo.BsVirAddr
	bl	BsInit	@
	ldr	r1, [sp, #48]	@, %sfp
	ldr	ip, .L406	@ tmp502,
	add	r2, sp, #344	@,,
	str	r8, [sp, #92]	@ tmp925, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	lr, r2, r1, asl #2	@, tmp506,,,
	str	r1, [sp, #96]	@, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp956,,,,
	ldr	r8, [sp, #28]	@ tmp501, %sfp
	stmia	r8!, {r0, r1, r2, r3}	@ tmp501,,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp957,,,,
	ldr	ip, [ip, #0]	@ C.441, C.441
	stmia	r8!, {r0, r1, r2, r3}	@ tmp501,,,,
	mov	r0, r5	@, pBs
	str	ip, [r8, #0]	@ C.441, size
	add	r1, sp, #80	@,,
	ldr	ip, [lr, #-60]	@ tmp508, size
	str	ip, [sp, #88]	@ tmp508, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L391	@,
	movw	r3, #11372	@ tmp513,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r3, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	ldreq	r3, [r4, #0]	@ prephitmp.1349, <variable>.pstExtraData
	beq	.L306	@,
	ldr	r3, [r4, #0]	@ prephitmp.1349, <variable>.pstExtraData
	ldr	r2, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r2, #1	@ <variable>.s32DSDWaitFlag,
	addne	ip, sp, #80	@ tmp932,,
	beq	.L306	@,
.L307:
	mov	r1, ip	@, tmp932
	mov	r2, #140	@,
	mov	r0, r6	@, pPictureHeader
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #11370	@ tmp594,
	mov	r0, r4	@, pCtx
	ldr	r2, [r1, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	strb	r2, [r4, r3]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	Real8_GetImageBuffer	@
	subs	r8, r0, #0	@ D.36007,
	beq	.L392	@,
	movw	r9, #38924	@ tmp601,
	movw	r8, #39320	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.CurFsID
	str	r9, [sp, #36]	@,
	bl	FSP_GetFsImagePtr	@
	ldr	ip, [sp, #36]	@,
	subs	r8, r0, #0	@ pImg,
	beq	.L323	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r8, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r8, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r8, #24]	@ <variable>.DispTime, pImg,
	mvn	r2, #0	@ tmp617,
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r3, [r8, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r9, [r8, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r8, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r9, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r9, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r8, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r3, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r2, [lr, #56]	@ tmp617, <variable>.pstExtraData,
	ldrd	r2, [r8, #16]	@, pImg,
	strd	r2, [sp, #48]	@,,
	ldrd	r2, [r8, #8]	@ <variable>.PTS, pImg,
	ldrd	r8, [sp, #48]	@,,
	str	ip, [sp, #36]	@,
	strd	r8, [sp]	@,
	bl	dprint_vfmw	@
	movw	r0, #37640	@ tmp621,
	ldr	ip, [sp, #36]	@,
	ldr	r3, [r4, r0]	@ D.36026, <variable>.CodecInfo.PictureHeader.PicCodType
	cmp	r3, #2	@ D.36026,
	beq	.L393	@,
	cmp	r3, #1	@ D.36026,
	beq	.L394	@,
	movw	r0, #11375	@ tmp626,
	ldrb	r8, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r8, #0	@ <variable>.CodecInfo.RefNum,
	moveq	r1, #1	@ iftmp.471,
	bne	.L327	@,
.L328:
	movw	r3, #38916	@ tmp630,
	movw	r8, #38920	@ tmp631,
	ldr	r2, [r4, r3]	@ prephitmp.1347, <variable>.CodecInfo.FwdFsID
	movw	ip, #11375	@ tmp628,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	strb	r1, [r4, ip]	@ iftmp.471, <variable>.CodecInfo.RefNum
	cmp	r2, lr	@ prephitmp.1347, <variable>.CodecInfo.BwdFsID
	beq	.L329	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	str	r3, [sp, #40]	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #40]	@,
	movw	r2, #39320	@ tmp634,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r8]	@ prephitmp.1347, <variable>.CodecInfo.BwdFsID
.L329:
	movw	r8, #38924	@ tmp639,
	movw	ip, #38916	@ tmp637,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movw	r3, #39320	@ tmp641,
	movw	r1, #38920	@ tmp638,
	str	r2, [r4, ip]	@ prephitmp.1347, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	str	lr, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r1, lr	@, <variable>.CodecInfo.CurFsID
	str	r3, [sp, #40]	@,
	str	ip, [sp, #36]	@,
	bl	FSP_SetRef	@
	ldr	r1, [sp, #40]	@,
	ldr	ip, [sp, #36]	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r1, #:lower16:.LC19	@,
	ldr	r2, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	movt	r1, #:upper16:.LC19	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L330:
	movw	lr, #38924	@ tmp652,
	movw	r8, #39320	@ tmp651,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r8, [sp, #40]	@,
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #40]	@,
	movw	ip, #38916	@ tmp654,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r8, r0	@ pCur,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [sp, #40]	@,
	movw	r2, #38920	@ tmp656,
	str	r0, [sp, #48]	@, %sfp
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #48]	@, %sfp
	cmp	r8, #0	@ pCur,
	cmpne	r3, #0	@,,
	mov	ip, r0	@ pBwd,
	beq	.L331	@,
	cmp	r0, #0	@ pBwd,
	beq	.L331	@,
	ldr	r3, [r8, #408]	@ D.36057, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36057,
	beq	.L333	@,
	ldr	r0, [r8, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L333	@,
	ldr	r2, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L333	@,
	ldr	r2, [ip, #408]	@ D.36064, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36064,
	ldrne	r9, [r2, #12]	@ iftmp.475, <variable>.PhyAddr
	ldreq	r9, [r3, #12]	@ iftmp.475, <variable>.PhyAddr
	str	r9, [r4, #56]	@ iftmp.475, <variable>.Rv8DecParam.BwdRefPhyAddr
	ldr	r0, [sp, #48]	@, %sfp
	ldr	r1, [r0, #408]	@ D.36071, <variable>.pstDecodeFs
	mov	r0, #13	@,
	cmp	r1, #0	@ D.36071,
	ldreq	r1, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r1, #12]	@ iftmp.476, <variable>.PhyAddr
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	str	lr, [r4, #60]	@ iftmp.476, <variable>.Rv8DecParam.FwdRefPhyAddr
	ldr	r3, [r8, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r3, #12]	@ D.36076, <variable>.PhyAddr
	str	r2, [r4, #64]	@ D.36076, <variable>.Rv8DecParam.CurPicPhyAddr
	ldr	r3, [r8, #420]	@, <variable>.PmvAddr
	str	r3, [sp, #64]	@, %sfp
	str	r3, [r4, #84]	@, <variable>.Rv8DecParam.CurrPmvPhyAddr
	ldr	r3, [ip, #420]	@, <variable>.PmvAddr
	str	r3, [sp, #60]	@, %sfp
	str	r3, [r4, #88]	@, <variable>.Rv8DecParam.ColPmvPhyAddr
	ldr	r3, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.36082, <variable>.PhyAddr
	str	lr, [sp, #0]	@ iftmp.476,
	str	r9, [sp, #4]	@ iftmp.475,
	str	r3, [r4, #68]	@ D.36082, <variable>.Rv8DecParam.DispFramePhyAddr
	ldr	r9, [sp, #64]	@, %sfp
	ldr	lr, [sp, #60]	@, %sfp
	str	ip, [sp, #36]	@,
	str	r9, [sp, #8]	@,
	str	lr, [sp, #12]	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r3, #37640	@ tmp681,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.PictureHeader.PicCodType, <variable>.CodecInfo.PictureHeader.PicCodType
	ldr	r0, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	cmp	r2, #2	@ <variable>.CodecInfo.PictureHeader.PicCodType,
	str	r0, [r4, #72]	@ <variable>.Stride, <variable>.Rv8DecParam.DDRStride
	ldr	r1, [r8, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r9, [r1, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r9, [r4, #76]	@ <variable>.ChromOffset, <variable>.Rv8DecParam.uv_offset
	ldr	ip, [sp, #36]	@,
	beq	.L395	@,
.L339:
	movw	r9, #37668	@ tmp703,
	movw	lr, #37680	@ tmp705,
	ldr	r3, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	movw	r0, #37656	@ tmp708,
	sub	r1, r0, #4	@ tmp710, tmp710,
	movw	r9, #38844	@ tmp714,
	movw	r2, #37640	@ tmp706,
	str	r3, [r8, #428]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.TR
	movw	r3, #37744	@ tmp716,
	ldr	ip, [r4, lr]	@, <variable>.CodecInfo.PictureHeader.PQUANT
	movw	r8, #38840	@ tmp712,
	movw	lr, #37748	@ tmp718,
	ldr	r2, [r4, r2]	@ D.36395, <variable>.CodecInfo.PictureHeader.PicCodType
	str	ip, [sp, #56]	@, %sfp
	cmp	r2, #2	@ D.36395,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	ldr	r1, [r4, r8]	@ <variable>.CodecInfo.Ratio0, <variable>.CodecInfo.Ratio0
	ldr	r8, [r4, r9]	@ <variable>.CodecInfo.Ratio1, <variable>.CodecInfo.Ratio1
	ldr	r9, [r4, lr]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.CodecInfo.PrevPicMb0QP
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.PrevPicQP, <variable>.CodecInfo.PrevPicQP
	str	ip, [r4, #12]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.Rv8DecParam.PicWidthInMb
	str	r0, [r4, #16]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.Rv8DecParam.PicHeightInMb
	mov	r0, r5	@, pBs
	str	r8, [r4, #28]	@ <variable>.CodecInfo.Ratio1, <variable>.Rv8DecParam.Ratio1
	strb	r2, [r4, #20]	@ D.36395, <variable>.Rv8DecParam.PicCodingType
	str	r1, [r4, #24]	@ <variable>.CodecInfo.Ratio0, <variable>.Rv8DecParam.Ratio0
	str	lr, [r4, #36]	@ <variable>.CodecInfo.PrevPicQP, <variable>.Rv8DecParam.PrevPicQP
	str	r9, [r4, #40]	@ <variable>.CodecInfo.PrevPicMb0QP, <variable>.Rv8DecParam.PrevPicMb0QP
	ldr	lr, [sp, #56]	@, %sfp
	strne	lr, [r4, r3]	@, <variable>.CodecInfo.PrevPicQP
	str	lr, [r4, #32]	@, <variable>.Rv8DecParam.PQUANT
	bl	BsPos	@
	movw	r2, #37720	@ tmp721,
	add	ip, r2, #32	@ tmp724, tmp724,
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r0, r0, #-2147483641	@ tmp722,,
	submi	r0, r0, #1	@ tmp960, tmp722,
	mvnmi	r0, r0, asl #29	@ tmp961, tmp960,
	mvnmi	r0, r0, lsr #29	@ tmp961, tmp961,
	addmi	r0, r0, #1	@ tmp722, tmp961,
	cmp	r8, #1	@ <variable>.CodecInfo.TotalSliceNum,
	str	r0, [r4, r2]	@ tmp722, <variable>.CodecInfo.SliceHeader.bit_offset_0
	beq	.L396	@,
	movw	lr, #37760	@ tmp734,
	sub	ip, lr, #4	@ tmp735, tmp735,
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
.L385:
	rsb	lr, r3, r8	@ tmp736, <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	movw	r9, #37724	@ tmp739,
	mov	r8, lr, asl #3	@ D.36136, tmp736,
	bl	BsPos	@
	movw	ip, #38784	@ tmp741,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	rsb	r0, r0, r8	@ tmp740,, D.36136
	str	r0, [r4, r9]	@ tmp740, <variable>.CodecInfo.SliceHeader.bit_len_0
	ldr	r3, [sp, #68]	@, %sfp
	mov	r0, r5	@, pBs
	str	ip, [sp, #40]	@,
	movw	r8, #37684	@ tmp755,
	add	r9, r3, r1	@ D.36142,, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	ldr	r2, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.OSVQUANT
	movw	r8, #37676	@ tmp757,
	movw	r1, #37752	@ tmp770,
	movw	ip, #37720	@ tmp761,
	str	r2, [r4, #120]	@, <variable>.osvquant
	add	r3, r0, #7	@ tmp745, D.36143,
	cmp	r0, #0	@ D.36143,
	movlt	r0, r3	@ D.36143, tmp745
	ldr	r3, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	movw	r8, #37724	@ tmp763,
	str	r3, [r4, #116]	@, <variable>.dblk_filter_passthrough
	ldr	r3, [r4, r8]	@, <variable>.CodecInfo.SliceHeader.bit_len_0
	movw	r8, #37712	@ tmp759,
	ldr	r2, [r4, r1]	@, <variable>.CodecInfo.TotalSliceNum
	ldr	r1, [r4, #120]	@, <variable>.osvquant
	str	r3, [r4, #108]	@, <variable>.StreamLength
	add	r3, r9, r0, asr #3	@, D.36146, D.36142, D.36143,
	movw	r0, #37704	@ tmp756,
	cmp	r2, #1	@,
	str	r1, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.osvquant
	add	r2, r0, #4	@ tmp758, tmp758,
	ldr	r9, [r4, #116]	@, <variable>.dblk_filter_passthrough
	movw	r0, #37728	@,
	str	r9, [r4, r2]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	mov	r2, #0	@ tmp749,
	str	r3, [r4, #92]	@ D.36146, <variable>.StreamPhyAddr
	mov	r9, #1	@ tmp769,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #37732	@,
	str	r2, [r4, r8]	@ tmp749, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	add	r8, ip, #8	@,,
	str	r2, [r4, #128]	@ tmp749, <variable>.first_mb_in_slice
	str	r1, [r4, #100]	@, <variable>.StreamBitOffset
	add	r1, r0, #8	@,,
	str	r3, [r4, r0]	@ D.36146, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	sub	r3, r1, #36	@,,
	str	r2, [r4, ip]	@ tmp749, <variable>.CodecInfo.SliceHeader.bit_offset_1
	str	r2, [r4, r1]	@ tmp749, <variable>.CodecInfo.SliceHeader.bit_len_1
	str	r2, [r4, r8]	@ tmp749, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	ldr	r8, [sp, #56]	@, %sfp
	str	r9, [r4, #44]	@ tmp769, <variable>.Rv8DecParam.TotalSliceNum
	str	r8, [r4, r3]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	str	r2, [r4, #96]	@ tmp749, <variable>.StreamPhyAddr
	str	r2, [r4, #104]	@ tmp749, <variable>.StreamBitOffset
	str	r2, [r4, #112]	@ tmp749, <variable>.StreamLength
	str	r8, [r4, #124]	@, <variable>.sliceqp
	bls	.L349	@,
	movw	r2, #37760	@ tmp772,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, ip	@ PrevOffsetBytes.1432, PrevHeaderBytes, <variable>.CodecInfo.SliceByteOffset
	cmp	r8, #3145728	@ PrevOffsetBytes.1432,
	bge	.L351	@,
	cmp	r8, #73	@ PrevOffsetBytes.1432,
	ble	.L351	@,
	movw	r3, #38788	@ tmp775,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, r1	@ temp.1529, PrevOffsetBytes.1432, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1529,
	strgt	r9, [sp, #48]	@ tmp769, %sfp
	strgt	r9, [sp, #60]	@ tmp769, %sfp
	strgt	r6, [sp, #20]	@ pPictureHeader, %sfp
	bgt	.L354	@,
	b	.L351	@
.L355:
	ldr	r8, [sp, #48]	@, %sfp
	movw	r6, #37752	@,
	ldr	r0, [r4, r6]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	add	r8, r8, #1	@,,
	str	r8, [sp, #48]	@, %sfp
	cmp	r0, r8	@ <variable>.CodecInfo.TotalSliceNum,
	bls	.L349	@,
	ldr	r0, [fp, #4]	@ tmp777, <variable>.CodecInfo.SliceByteOffset
	add	r8, sl, r0	@ PrevOffsetBytes.1432, PrevHeaderBytes, tmp777
	cmp	r8, #3145728	@ PrevOffsetBytes.1432,
	bge	.L351	@,
	cmp	r8, #73	@ PrevOffsetBytes.1432,
	ble	.L351	@,
	movw	ip, #38788	@ tmp781,
	add	fp, fp, #4	@ ivtmp.1531, ivtmp.1531,
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	rsb	r2, r8, lr	@ temp.1529, PrevOffsetBytes.1432, <variable>.CodecInfo.BsLength
	cmp	r2, #0	@ temp.1529,
	ble	.L351	@,
.L354:
	movw	r1, #11360	@ tmp785,
	mov	r0, r5	@, pBs
	ldr	r9, [r4, r1]	@ <variable>.CodecInfo.BsVirAddr, <variable>.CodecInfo.BsVirAddr
	add	r1, r8, r9	@, PrevOffsetBytes.1432, <variable>.CodecInfo.BsVirAddr
	add	r9, sp, #332	@,,
	bl	BsInit	@
	ldr	ip, [sp, #20]	@, %sfp
	mov	r0, r5	@, pBs
	mov	r1, #0	@,
	add	r2, sp, #340	@,,
	add	r3, sp, #336	@,,
	stmia	sp, {r9, ip}	@ phole stm
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L355	@,
	movw	lr, #37656	@,
	ldr	r2, [sp, #340]	@, iSliceMBA
	ldr	r9, [r4, lr]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	cmp	r9, #0	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	str	r2, [sp, #64]	@, %sfp
	beq	.L397	@,
	ldr	r9, [sp, #332]	@ iSQUANT.484, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r6, [sp, #56]	@, %sfp
	cmp	r9, #0	@ iSQUANT.484,
	movge	r6, r9	@, iSQUANT.484
	str	r6, [sp, #56]	@, %sfp
	bl	BsPos	@
	movw	r6, #37752	@,
	movw	r9, #37720	@,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.TotalSliceNum, <variable>.CodecInfo.TotalSliceNum
	ands	r2, r0, #-2147483641	@ tmp796,,
	sub	r0, r3, #1	@ D.35911, <variable>.CodecInfo.TotalSliceNum,
	submi	r2, r2, #1	@ tmp962, tmp796,
	mvnmi	r2, r2, asl #29	@ tmp963, tmp962,
	mvnmi	r2, r2, lsr #29	@ tmp963, tmp963,
	addmi	r2, r2, #1	@ tmp796, tmp963,
	str	r2, [r4, r9]	@ tmp796, <variable>.CodecInfo.SliceHeader.bit_offset_0
	ldr	r1, [sp, #48]	@, %sfp
	cmp	r0, r1	@ D.35911,
	beq	.L398	@,
	ldr	r2, [sp, #48]	@, %sfp
	cmp	r2, #254	@,
	bhi	.L399	@,
	ldr	r2, [fp, #4]	@ tmp816, <variable>.CodecInfo.SliceByteOffset
	mov	r0, r5	@, pBs
	ldr	r3, [fp, #0]	@ tmp817, <variable>.CodecInfo.SliceByteOffset
.L386:
	rsb	lr, r3, r2	@ tmp815, tmp817, tmp816
	movw	r9, #38784	@,
	mov	r6, lr, asl #3	@ D.36178, tmp815,
	bl	BsPos	@
	movw	r1, #37724	@ tmp818,
	rsb	r0, r0, r6	@ tmp819,, D.36178
	str	r0, [r4, r1]	@ tmp819, <variable>.CodecInfo.SliceHeader.bit_len_0
	mov	r0, r5	@, pBs
	ldr	r6, [r4, r9]	@ <variable>.CodecInfo.BsPhyAddr, <variable>.CodecInfo.BsPhyAddr
	bl	BsPos	@
	movw	r1, #37676	@ tmp836,
	movw	r2, #37684	@ tmp834,
	ldr	ip, [sp, #60]	@, %sfp
	ldr	r2, [r4, r2]	@ temp.1505, <variable>.CodecInfo.PictureHeader.OSVQUANT
	add	r8, r8, r6	@ temp.1504, PrevOffsetBytes.1432, <variable>.CodecInfo.BsPhyAddr
	ldr	r6, [r4, r1]	@, <variable>.CodecInfo.PictureHeader.Deblocking_Filter_Passthrough
	mov	r3, #44	@ tmp841,
	movw	r1, #37704	@ tmp835,
	mov	r9, #0	@ tmp828,
	mla	r3, r3, ip, r4	@ tmp842, tmp841,, pCtx
	str	r6, [sp, #24]	@, %sfp
	str	r2, [r4, r1]	@ temp.1505, <variable>.CodecInfo.SliceHeader.osvquant
	ldr	r6, [sp, #24]	@, %sfp
	add	ip, r0, #7	@ tmp824, D.36182,
	cmp	r0, r9	@ D.36182,
	movlt	r0, ip	@ D.36182, tmp824
	add	r1, r8, r0, asr #3	@, D.36185, temp.1504, D.36182,
	movw	r0, #37708	@ tmp837,
	str	r6, [r4, r0]	@, <variable>.CodecInfo.SliceHeader.dblk_filter_passthrough
	add	r6, r0, #4	@ tmp838, tmp838,
	ldr	r8, [sp, #64]	@, %sfp
	movw	r0, #37736	@,
	str	r8, [r4, r6]	@, <variable>.CodecInfo.SliceHeader.first_mb_in_slice
	add	r8, r6, #16	@,,
	ldr	ip, [sp, #60]	@, %sfp
	movw	r6, #37732	@,
	add	ip, ip, #1	@,,
	str	ip, [sp, #60]	@, %sfp
	str	r9, [r4, r6]	@ tmp828, <variable>.CodecInfo.SliceHeader.bit_offset_1
	add	r6, r6, #8	@,,
	str	r1, [r4, r8]	@ D.36185, <variable>.CodecInfo.SliceHeader.bit_stream_addr_0
	cmp	ip, #131	@,
	str	r9, [r4, r0]	@ tmp828, <variable>.CodecInfo.SliceHeader.bit_len_1
	add	ip, r3, #92	@, tmp842,
	str	r9, [r4, r6]	@ tmp828, <variable>.CodecInfo.SliceHeader.bit_stream_addr_1
	sub	r6, r6, #40	@,,
	str	ip, [sp, #68]	@, %sfp
	add	r0, r3, #112	@ tmp880, tmp842,
	ldr	ip, [sp, #56]	@, %sfp
	add	r8, r3, #120	@ tmp890, tmp842,
	str	ip, [r4, r6]	@, <variable>.CodecInfo.SliceHeader.SliceQP
	movw	ip, #37720	@,
	add	r6, r3, #100	@, tmp842,
	str	r6, [sp, #72]	@, %sfp
	str	r1, [r3, #92]	@ D.36185, <variable>.StreamPhyAddr
	add	r6, r3, #108	@ tmp874, tmp842,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.CodecInfo.SliceHeader.bit_offset_0
	movw	ip, #37724	@ tmp856,
	str	r1, [r3, #100]	@ <variable>.CodecInfo.SliceHeader.bit_offset_0, <variable>.StreamBitOffset
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.CodecInfo.SliceHeader.bit_len_0
	str	r2, [r0, #8]	@ temp.1505, <variable>.osvquant
	ldr	r2, [sp, #64]	@, %sfp
	str	r1, [r3, #108]	@ <variable>.CodecInfo.SliceHeader.bit_len_0, <variable>.StreamLength
	str	r2, [r8, #8]	@, <variable>.first_mb_in_slice
	ldr	ip, [sp, #68]	@, %sfp
	str	r9, [ip, #4]	@ tmp828, <variable>.StreamPhyAddr
	ldr	r2, [sp, #72]	@, %sfp
	str	r9, [r6, #4]	@ tmp828, <variable>.StreamLength
	str	r9, [r2, #4]	@ tmp828, <variable>.StreamBitOffset
	ldr	r1, [sp, #24]	@, %sfp
	str	r1, [r0, #4]	@, <variable>.dblk_filter_passthrough
	ldr	r3, [sp, #56]	@, %sfp
	str	r3, [r8, #4]	@, <variable>.sliceqp
	ldr	ip, [sp, #60]	@, %sfp
	str	ip, [r4, #44]	@, <variable>.Rv8DecParam.TotalSliceNum
	ble	.L355	@,
	mov	r0, r4	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L400	@,
	cmp	r7, #0	@ pRv8DecParam,
	str	r7, [r4, #4]	@ pRv8DecParam, <variable>.pRv8DecParam
	beq	.L401	@,
	ldr	r3, [r4, #0]	@ temp.1509, <variable>.pstExtraData
	ldr	r2, [r3, #708]	@ D.36198, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.36198,
	beq	.L402	@,
	cmp	r2, #2	@ D.36198,
	bne	.L355	@,
	ldr	r0, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L355	@,
	ldrb	r3, [r7, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r3, #2	@ <variable>.PicCodingType,
	bne	.L355	@,
	movw	r1, #39320	@ tmp909,
	sub	lr, r1, #396	@ tmp910, tmp910,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r9	@, tmp828
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r9, [r4, #4]	@ tmp828, <variable>.pRv8DecParam
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, #0]	@ temp.1515, <variable>.pstExtraData
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	ldr	r2, [r3, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	ip, r2, #1	@ tmp912, <variable>.stDisParams.s32DisNums,
	str	ip, [r3, #712]	@ tmp912, <variable>.stDisParams.s32DisNums
	bl	ReleasePacket	@
	mov	r0, r9	@ D.35825, tmp828
	b	.L295	@
.L391:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@ D.35825, tmp494
	b	.L295	@
.L306:
	ldr	r9, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r9, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L403	@,
.L308:
	movw	r8, #:lower16:g_event_report	@ tmp549,
	movt	r8, #:upper16:g_event_report	@ tmp549,
	mov	r1, #0	@ tmp548,
	str	r1, [r3, #728]	@ tmp548, <variable>.s32DSDWaitFlag
	ldr	r3, [r8, #0]	@ g_event_report, g_event_report
	cmp	r3, r1	@ g_event_report,
	beq	.L314	@,
	movw	r0, #37656	@ tmp551,
	movw	r8, #37652	@ tmp553,
	ldrh	r9, [r4, r0]	@, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	add	r0, sp, #256	@,,
	ldrh	r2, [sp, #172]	@, TmpPictureHeader.pic_height_in_mb
	add	r1, r1, #2	@,,
	ldrh	ip, [sp, #176]	@, TmpPictureHeader.pic_width_in_mb
	strh	r9, [r0, #28]	@ movhi	@, para
	movw	r9, #39320	@ tmp558,
	ldrh	lr, [r4, r8]	@, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	strh	r2, [r0, #34]	@ movhi	@, para
	add	r2, sp, #284	@,,
	strh	ip, [r0, #32]	@ movhi	@, para
	strh	lr, [r0, #30]	@ movhi	@, para
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	blx	r3	@ g_event_report
.L314:
	movw	ip, #38920	@ tmp562,
	movw	r9, #39320	@ tmp561,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	add	r8, r4, #38912	@ D.35979, pCtx,
	str	ip, [sp, #36]	@,
	bl	FSP_ClearLogicFs	@
	movw	lr, #38916	@,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	add	r8, r8, #56	@ D.35979, D.35979,
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	movw	r0, #38916	@,
	mov	r3, #0	@ tmp566,
	str	r3, [r4, r0]	@ tmp566, <variable>.CodecInfo.FwdFsID
	ldr	r1, [sp, #36]	@,
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	str	r3, [r4, r1]	@ tmp566, <variable>.CodecInfo.BwdFsID
	str	r3, [sp, #40]	@,
	str	r1, [sp, #36]	@,
	bl	FSP_GetNullLogicFs	@
	movw	ip, #38916	@,
	movw	r1, #11375	@ tmp572,
	str	r0, [r4, ip]	@ D.35978, <variable>.CodecInfo.FwdFsID
	ldr	r2, [sp, #40]	@,
	strb	r2, [r4, r1]	@ tmp566, <variable>.CodecInfo.RefNum
	mov	r1, r8	@, D.35979
	ldr	r3, [sp, #36]	@,
	str	r0, [r4, r3]	@ D.35978, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #176]	@ prephitmp.1351, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ prephitmp.1351,
	ldrhi	r3, [sp, #172]	@ prephitmp.1426, TmpPictureHeader.pic_height_in_mb
	bhi	.L316	@,
	ldr	r3, [sp, #172]	@ prephitmp.1426, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ prephitmp.1426,
	bhi	.L316	@,
	ldr	r1, [r4, #0]	@ temp.1427, <variable>.pstExtraData
	ldr	r0, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L318	@,
	ldr	r1, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L404	@,
.L318:
	movw	r2, #39320	@ tmp582,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L383	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L321	@,
	movw	lr, #39324	@ tmp585,
	ldr	r1, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r1, #1	@ <variable>.DSDNeedClearQue,
	beq	.L321	@,
.L383:
	ldr	r2, [sp, #176]	@ prephitmp.1351, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #172]	@ prephitmp.1426, TmpPictureHeader.pic_height_in_mb
.L319:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	add	ip, sp, #80	@ tmp932,,
	str	ip, [sp, #36]	@,
	bl	dprint_vfmw	@
	ldr	r8, [sp, #36]	@,
	mov	r0, #6	@,
	mov	r1, r4	@, pCtx
	mov	r2, r8	@, tmp932
	bl	Real8_ArrangeVHBMem	@
	ldr	ip, [sp, #36]	@,
	subs	r8, r0, #0	@ D.36001,
	bne	.L307	@,
	add	r0, r0, #1	@,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35825, D.36001
	b	.L295	@
.L316:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L392:
	movw	lr, #38816	@ tmp599,
	movw	r1, #:lower16:.LC16	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.FrmCnt
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.35825, D.36007
	b	.L295	@
.L404:
	movw	ip, #11372	@ tmp580,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	lr, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	bne	.L319	@,
.L321:
	mov	r0, r8	@, D.35979
	bl	ResetVoQueue	@
	b	.L383	@
.L403:
	movw	lr, #38916	@ tmp520,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	mov	ip, #0	@ tmp517,
	str	ip, [sp, #320]	@ tmp517, RefNum
	str	ip, [sp, #328]	@ tmp517, NewNum
	str	ip, [sp, #324]	@ tmp517, ReadNum
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L298	@,
	movw	r8, #38920	@ tmp521,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L298	@,
	movw	ip, #39320	@ tmp522,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #39320	@ tmp525,
	add	r1, sp, #320	@,,
	add	r2, sp, #324	@,,
	cmp	r0, #0	@ pImage
	strne	r9, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #328	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ prephitmp.1349, <variable>.pstExtraData
	movw	r2, #37656	@ tmp529,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.PictureHeader.pic_width_in_mb, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	ldr	r0, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r0, r1, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.PictureHeader.pic_width_in_mb,
	bcc	.L310	@,
	movw	r1, #37652	@ tmp533,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.pic_height_in_mb, <variable>.CodecInfo.PictureHeader.pic_height_in_mb
	cmp	r0, lr, asl #4	@ <variable>.s32DSDThrHeight, <variable>.CodecInfo.PictureHeader.pic_height_in_mb,
	bcc	.L310	@,
	ldr	ip, [sp, #324]	@ ReadNum, ReadNum
	ldr	lr, [sp, #328]	@ NewNum, NewNum
	add	r2, lr, ip	@ tmp537, NewNum, ReadNum
	cmp	r2, #0	@ tmp537,
	ble	.L311	@,
.L312:
	mov	r2, #1	@ tmp545,
	mov	r0, #0	@ D.35825,
	str	r2, [r3, #728]	@ tmp545, <variable>.s32DSDWaitFlag
	b	.L295	@
.L351:
	movw	r0, #38924	@ tmp784,
	add	r3, r0, #396	@ tmp783, tmp783,
	ldr	r1, [r4, r0]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L396:
	movw	r0, #38788	@ tmp726,
	movw	r1, #37756	@ tmp729,
	ldr	r8, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.SliceByteOffset, <variable>.CodecInfo.SliceByteOffset
	rsb	r8, sl, r8	@ tmp727, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	b	.L385	@
.L395:
	ldr	r0, [sp, #48]	@, %sfp
	movw	r1, #37668	@ tmp683,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.PictureHeader.TR, <variable>.CodecInfo.PictureHeader.TR
	ldr	r9, [ip, #428]	@ <variable>.TR, <variable>.TR
	ldr	lr, [r0, #428]	@ D.36099, <variable>.TR
	subs	r2, r3, lr	@ trb, <variable>.CodecInfo.PictureHeader.TR, D.36099
	rsb	r3, lr, r9	@ trd, D.36099, <variable>.TR
	movwmi	r9, #37664	@ tmp686,
	ldrmi	r9, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addmi	r2, r2, r9	@ trb, trb, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r3, #0	@ trd,
	movwlt	r9, #37664	@ tmp688,
	ldrlt	r9, [r4, r9]	@ <variable>.CodecInfo.PictureHeader.m_uTRWrap, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	addlt	r3, r3, r9	@ trd, trd, <variable>.CodecInfo.PictureHeader.m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	movle	r0, #0	@ prephitmp.1527,
	movle	ip, r0	@ prephitmp.1526, prephitmp.1527
	ble	.L344	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r3, [sp, #40]	@,
	str	r2, [sp, #44]	@,
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #44]	@,
	ldr	r9, [sp, #40]	@,
	mov	r1, r9	@, trd
	mov	ip, r0	@ prephitmp.1526,
	rsb	r0, r2, r9	@ tmp694, trb, trd
	str	ip, [sp, #36]	@,
	mov	r0, r0, asl #14	@, tmp694,
	bl	__aeabi_idiv	@
	ldr	ip, [sp, #36]	@,
	ldr	r3, [sp, #40]	@,
	ldr	r2, [sp, #44]	@,
.L344:
	movw	r1, #38836	@ tmp700,
	movw	r9, #38832	@ tmp699,
	str	r3, [r4, r1]	@ trd, <variable>.CodecInfo.trd
	movw	r3, #38840	@ tmp701,
	add	lr, r3, #4	@ tmp702, tmp702,
	str	r2, [r4, r9]	@ trb, <variable>.CodecInfo.trb
	str	ip, [r4, r3]	@ prephitmp.1526, <variable>.CodecInfo.Ratio0
	str	r0, [r4, lr]	@ prephitmp.1527, <variable>.CodecInfo.Ratio1
	b	.L339	@
.L333:
	movw	r3, #38924	@ tmp671,
	add	ip, r3, #396	@ tmp670, tmp670,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L331:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC20	@,
	ldr	r2, .L406+4	@,
	movt	r1, #:upper16:.LC20	@,
	movw	r3, #2076	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L394:
	movw	r1, #11375	@ tmp624,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	ip, #0	@ <variable>.CodecInfo.RefNum,
	beq	.L298	@,
.L327:
	mov	r1, #2	@ iftmp.471,
	b	.L328	@
.L393:
	movw	r2, #11375	@ tmp647,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r0, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L330	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	movw	ip, #39320	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L398:
	add	r1, r3, #9408	@ tmp803, <variable>.CodecInfo.TotalSliceNum,
	movw	r0, #38788	@ tmp800,
	add	r3, r1, #29	@ tmp803, tmp803,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.BsLength, <variable>.CodecInfo.BsLength
	mov	r0, r5	@, pBs
	add	lr, r4, r3, asl #2	@, tmp807, pCtx, tmp803,
	rsb	r2, sl, ip	@ tmp801, PrevHeaderBytes, <variable>.CodecInfo.BsLength
	ldr	r3, [lr, #4]	@ tmp810, <variable>.CodecInfo.SliceByteOffset
	b	.L386	@
.L397:
	movw	ip, #38924	@ tmp794,
	add	r3, ip, #396	@ tmp793, tmp793,
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r9	@ D.35825, <variable>.CodecInfo.PictureHeader.pic_width_in_mb
	b	.L295	@
.L323:
	movw	r9, #39320	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r9]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, r8	@ D.35825, pImg
	b	.L295	@
.L349:
	ldr	r5, [r4, #4]	@ <variable>.pRv8DecParam, <variable>.pRv8DecParam
	mov	r6, #1	@ tmp915,
	str	r6, [r4, #48]	@ tmp915, <variable>.Rv8DecParam.FstSlcGrp
	cmp	r5, #0	@ <variable>.pRv8DecParam,
	beq	.L405	@,
.L366:
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #11356	@ tmp919,
	mov	r0, #1	@ D.35825,
	ldr	r2, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r2, [r4, lr]	@ <variable>.s32Compress_en, <variable>.Rv8DecParam.Compress_en
	b	.L295	@
.L400:
	movw	ip, #38924	@ tmp897,
	add	r3, ip, #396	@ tmp896, tmp896,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r9	@ D.35825, tmp828
	b	.L295	@
.L399:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #2230	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35825,
	b	.L295	@
.L405:
	mov	r0, r4	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, r6	@,
	streq	r7, [r4, #4]	@ pRv8DecParam, <variable>.pRv8DecParam
	beq	.L366	@,
	movw	r3, #38924	@ tmp918,
	add	ip, r3, #396	@ tmp917, tmp917,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	mov	r2, r6	@, tmp915
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, r5	@ D.35825, <variable>.pRv8DecParam
	b	.L295	@
.L402:
	ldrb	r2, [r7, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r2, #2	@ <variable>.PicCodingType,
	bne	.L355	@,
	movw	r1, #39320	@ tmp904,
	sub	lr, r1, #396	@ tmp905, tmp905,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r9	@, tmp828
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	str	r9, [r4, #4]	@ tmp828, <variable>.pRv8DecParam
	bl	FSP_SetDisplay	@
	mov	r0, #8	@,
	mov	r1, r4	@, pCtx
	bl	ReleasePacket	@
	mov	r0, r9	@ D.35825, tmp828
	b	.L295	@
.L401:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC24	@,
	ldr	r2, .L406+4	@,
	movt	r1, #:upper16:.LC24	@,
	movw	r3, #2263	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.35825, pRv8DecParam
	b	.L295	@
.L311:
	movw	r9, #39324	@ tmp541,
	mov	r8, #1	@ tmp542,
	str	r8, [r4, r9]	@ tmp542, <variable>.DSDNeedClearQue
	b	.L308	@
.L310:
	ldr	r0, [sp, #328]	@ NewNum, NewNum
	cmp	r0, #0	@ NewNum,
	bgt	.L312	@,
	ldr	r1, [sp, #324]	@ ReadNum, ReadNum
	cmp	r1, #4	@ ReadNum,
	bgt	.L312	@,
	movw	lr, #39324	@ tmp546,
	mov	ip, #0	@ tmp547,
	str	ip, [r4, lr]	@ tmp547, <variable>.DSDNeedClearQue
	b	.L308	@
.L407:
	.align	2
.L406:
	.word	.LANCHOR0+24
	.word	.LANCHOR0+448
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
	.type	C.441.35258, %object
	.size	C.441.35258, 36
C.441.35258:
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
	.type	__func__.35812, %object
	.size	__func__.35812, 16
__func__.35812:
	.ascii	"REAL8DEC_Decode\000"
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
	.ascii	"real8 actual frame size(%dx%d) exeed max config(%dx"
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
	.ascii	"Real8_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC13:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC14:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC15:
	.ascii	"Real8_ArrangeVHBMem err\012\000"
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
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC21:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC22:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC23:
	.ascii	"line:%d! i > (RV8_MAX_SLC_PARAM_NUM - 2)\012\000"
	.space	2
.LC24:
	.ascii	"%s %d NULL == pCtx->pRv8DecParam!!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
