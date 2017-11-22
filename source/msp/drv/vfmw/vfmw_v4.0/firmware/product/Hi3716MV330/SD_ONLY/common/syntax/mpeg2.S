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
	.file	"mpeg2.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o
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
	.global	MP2_EstimatePicQp
	.type	MP2_EstimatePicQp, %function
MP2_EstimatePicQp:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #128
	sub	sp, sp, #128	@,,
	mov	r4, r0	@ pCtx, pCtx
	movw	r1, #:lower16:.LANCHOR0	@,
	mov	r0, sp	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	mov	r2, #128	@,
	bl	memcpy	@
	movw	r1, #:lower16:72048	@ tmp142,
	movt	r1, #:upper16:72048	@ tmp142,
	ldr	r0, [r4, #300]	@ QuantScaleCode, <variable>.quantiser_scale_code
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L3	@,
	movw	lr, #:lower16:73336	@ tmp145,
	movt	lr, #:upper16:73336	@ tmp145,
	ldr	ip, [r4, lr]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r2, [ip, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	cmp	r2, #0	@ <variable>.q_scale_type,
	addne	r2, sp, #128	@,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScaleCode,
	addne	r0, r2, r0, asl #2	@, tmp149,, QuantScaleCode,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L3:
	add	sp, sp, #128	@,,
	ldmfd	sp!, {r4, pc}
	.fnend
	.size	MP2_EstimatePicQp, .-MP2_EstimatePicQp
	.global	__aeabi_idiv
	.align	2
	.global	MP2_CalcRealEncFrameRate
	.type	MP2_CalcRealEncFrameRate, %function
MP2_CalcRealEncFrameRate:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:73336	@ tmp152,
	movt	ip, #:upper16:73336	@ tmp152,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r7, [r0, ip]	@ D.33429, <variable>.pSyntaxInfNew
	mov	r4, r0	@ pCtx, pCtx
	movw	r6, #:lower16:72152	@ tmp146,
	movw	r2, #:lower16:72164	@ tmp147,
	movt	r6, #:upper16:72152	@ tmp146,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	movt	r2, #:upper16:72164	@ tmp147,
	movw	r5, #:lower16:72148	@ tmp148,
	movw	r1, #:lower16:72160	@ tmp149,
	movt	r5, #:upper16:72148	@ tmp148,
	movt	r1, #:upper16:72160	@ tmp149,
	movw	ip, #:lower16:72144	@ tmp150,
	cmp	r3, #1	@ <variable>.picture_coding_type,
	movt	ip, #:upper16:72144	@ tmp150,
	movw	r0, #:lower16:72156	@ tmp151,
	movt	r0, #:upper16:72156	@ tmp151,
	ldr	r3, [r4, r6]	@ D.33423, <variable>.GopFrmCnt
	ldr	r2, [r4, r2]	@ D.33424, <variable>.GopFrmCnt
	ldr	r6, [r4, r5]	@ D.33425, <variable>.GopFldCnt
	ldr	r1, [r4, r1]	@ D.33426, <variable>.GopFldCnt
	ldr	r5, [r4, r0]	@ D.33428, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, ip]	@ D.33427, <variable>.GopFrmCntNoRpt
	ldr	r0, [r7, #72]	@ D.33430, <variable>.frame_rate
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	add	ip, r5, ip	@ FrmNumNoRpt, D.33428, D.33427
	cmp	r0, #0	@ D.33430,
	cmpgt	ip, #0	@, FrmNumNoRpt,
	ble	.L9	@,
	add	r1, r1, r6	@ FldNum, D.33426, D.33425
	cmp	r1, #0	@ FldNum,
	ble	.L9	@,
	mul	r0, ip, r0	@, FrmNumNoRpt, D.33430
	ldrb	lr, [r7, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	lr, #1	@ <variable>.progressive_sequence,
	addeq	r1, r2, r3	@, D.33424, D.33423
	movne	r0, r0, asl #1	@, tmp168,
	bl	__aeabi_idiv	@
	mov	r2, #100	@ tmp176,
	movw	r1, #:lower16:72180	@ tmp173,
	movt	r1, #:upper16:72180	@ tmp173,
	mul	r3, r2, r0	@ tmp175, tmp176, prephitmp.561
	str	r0, [r4, r1]	@ prephitmp.561, <variable>.CodecInfo.RealFrmRate
	movw	r1, #:lower16:72180	@ tmp174,
	movt	r1, #:upper16:72180	@ tmp174,
	add	ip, r3, #1020	@ tmp178, tmp175,
	cmp	r3, #0	@ tmp175,
	add	r2, ip, #3	@ tmp178, tmp178,
	movlt	r3, r2	@ tmp177, tmp178
	mov	r0, r3, asr #10	@ tmp180, tmp177,
	str	r0, [r4, r1]	@ tmp180, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L9:
	movw	r3, #:lower16:72180	@ tmp181,
	movt	r3, #:upper16:72180	@ tmp181,
	mov	r0, #0	@ tmp182,
	str	r0, [r4, r3]	@ tmp182, <variable>.CodecInfo.RealFrmRate
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MP2_CalcRealEncFrameRate, .-MP2_CalcRealEncFrameRate
	.align	2
	.global	MP2_CalcDar
	.type	MP2_CalcDar, %function
MP2_CalcDar:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:73336	@ tmp138,
	movt	r3, #:upper16:73336	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r1, [ip, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	sub	r3, r1, #1	@ D.35009, <variable>.aspect_ratio_information,
	cmp	r3, #2	@ D.35009,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp140,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp140,
	addls	r3, r2, r3, asl #2	@, tmp143, tmp140, D.35009,
	movhi	r0, #0	@ prephitmp.586,
	ldrls	r0, [r3, #128]	@ prephitmp.586, CSWTCH.522
	bx	lr	@
	.fnend
	.size	MP2_CalcDar, .-MP2_CalcDar
	.align	2
	.global	MP2_SearchStartCode
	.type	MP2_SearchStartCode, %function
MP2_SearchStartCode:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #4	@ CodeLen,
	movle	r0, #0	@ ofst,
	bxle	lr	@
	add	ip, r0, r1	@ pEnd, pCode, CodeLen
	add	r3, r0, #2	@ ptr, pCode,
.L31:
	cmp	ip, r3	@ pEnd, ptr
	bls	.L20	@,
.L32:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ byte,* ptr
	cmp	r2, #1	@ byte,
	bls	.L21	@,
.L26:
	add	r3, r3, #3	@ ptr, ptr,
	cmp	ip, r3	@ pEnd, ptr
	bhi	.L32	@,
.L20:
	sub	r0, r1, #3	@ ofst, CodeLen,
	bx	lr	@
.L21:
	cmp	r2, #0	@ byte,
	beq	.L33	@,
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2	@ tmp142,
	cmp	r2, #0	@ tmp142,
	bne	.L26	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp143,
	cmp	r2, #0	@ tmp143,
	bne	.L26	@,
	movw	ip, #:lower16:-2	@ tmp144,
	movt	ip, #:upper16:-2	@ tmp144,
	rsb	r1, r0, ip	@ tmp144, pCode, tmp144
	add	r0, r1, r3	@ ofst, tmp144, ptr
	bx	lr	@
.L33:
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ tmp140,
	cmp	r2, #0	@ tmp140,
	addeq	r3, r3, #1	@ ptr, ptr,
	beq	.L31	@,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ tmp141,
	cmp	r2, #0	@ tmp141,
	addeq	r3, r3, #2	@ ptr, ptr,
	addne	r3, r3, #4	@ ptr, ptr,
	b	.L31	@
	.fnend
	.size	MP2_SearchStartCode, .-MP2_SearchStartCode
	.align	2
	.global	MP2_RecordVFMWState
	.type	MP2_RecordVFMWState, %function
MP2_RecordVFMWState:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	movw	r5, #:lower16:73336	@ tmp141,
	movt	r5, #:upper16:73336	@ tmp141,
	ldr	r2, [r0, #0]	@ D.33773, <variable>.pstExtraData
	ldr	r1, [r0, r5]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r4, [r1, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r4, [r2, #400]	@ <variable>.horizontal_size, <variable>.stChanState.image_width
	ldr	r6, [r1, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	r6, [r2, #404]	@ <variable>.vertical_size, <variable>.stChanState.image_height
	ldr	r3, [r0, r5]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r5, #:lower16:72048	@ tmp156,
	movt	r5, #:upper16:72048	@ tmp156,
	ldr	ip, [r3, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	movw	r3, #:lower16:73700	@ tmp161,
	movt	r3, #:upper16:73700	@ tmp161,
	sub	r4, ip, #1	@ D.35020, <variable>.aspect_ratio_information,
	mov	ip, #0	@ tmp152,
	cmp	r4, #2	@ D.35020,
	str	ip, [r2, #412]	@ tmp152, <variable>.stChanState.scan_type
	str	ip, [r2, #416]	@ tmp152, <variable>.stChanState.video_format
	movwls	r6, #:lower16:.LANCHOR0	@ tmp147,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp147,
	addls	r4, r6, r4, asl #2	@, tmp150, tmp147, D.35020,
	movhi	r4, #0	@ prephitmp.636,
	ldrls	r4, [r4, #128]	@ prephitmp.636, CSWTCH.522
	str	r4, [r2, #408]	@ prephitmp.636, <variable>.stChanState.aspect_ratio
	movw	r4, #:lower16:73704	@ tmp164,
	ldr	r6, [r1, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	movt	r4, #:upper16:73704	@ tmp164,
	str	ip, [r2, #424]	@ tmp152, <variable>.stChanState.bit_rate
	str	r6, [r2, #420]	@ <variable>.frame_rate, <variable>.stChanState.frame_rate
	ldr	r5, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r5, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp158
	moveq	r5, #1	@, tmp158
	str	r5, [r2, #428]	@ tmp158, <variable>.stChanState.sub_video_standard
	ldr	r5, [r1, #40]	@ <variable>.profile, <variable>.profile
	str	r5, [r2, #432]	@ <variable>.profile, <variable>.stChanState.profile
	ldr	r1, [r1, #44]	@ <variable>.level, <variable>.level
	str	r1, [r2, #436]	@ <variable>.level, <variable>.stChanState.level
	ldr	r1, [r0, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	str	r1, [r2, #440]	@ <variable>.numTotalFrame, <variable>.stChanState.total_frame_num
	ldr	r1, [r0, r4]	@ D.33784, <variable>.numOutputFrame
	ldr	r3, [r0, r3]	@ temp.647, <variable>.numTotalFrame
	cmp	r3, r1	@ temp.647, D.33784
	rsbge	ip, r1, r3	@ iftmp.480, D.33784, temp.647
	str	ip, [r2, #444]	@ iftmp.480, <variable>.stChanState.error_frame_num
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	MP2_RecordVFMWState, .-MP2_RecordVFMWState
	.align	2
	.global	MP2_ExitMb
	.type	MP2_ExitMb, %function
MP2_ExitMb:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0	@ tmp134,
	str	r3, [r0, #16]	@ tmp134, <variable>.FirstMbInSliceFlag
	bx	lr	@
	.fnend
	.size	MP2_ExitMb, .-MP2_ExitMb
	.align	2
	.global	MP2_GetPacketState
	.type	MP2_GetPacketState, %function
MP2_GetPacketState:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:73712	@ tmp136,
	movt	r3, #:upper16:73712	@ tmp136,
	ldrb	r0, [r0, r3]	@ zero_extendqisi2	@ <variable>.IsWaitToDecFlag, <variable>.IsWaitToDecFlag
	cmp	r0, #1	@ <variable>.IsWaitToDecFlag,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	MP2_GetPacketState, .-MP2_GetPacketState
	.align	2
	.global	MP2_SetVDMInf
	.type	MP2_SetVDMInf, %function
MP2_SetVDMInf:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:71964	@ tmp144,
	movt	r1, #:upper16:71964	@ tmp144,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldrsb	r3, [r4, r1]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	add	r0, r0, #71680	@ pBs, pCtx,
	add	r0, r0, #576	@ pBs, pBs,
	cmp	r3, #1	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L50	@,
	movw	r5, #:lower16:72280	@ tmp168,
	movt	r5, #:upper16:72280	@ tmp168,
	movw	r7, #:lower16:71976	@ tmp169,
	movt	r7, #:upper16:71976	@ tmp169,
	ldr	r3, [r4, r5]	@ temp.718, <variable>.Bs.TotalPos
	movw	r2, #:lower16:71960	@ tmp173,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:71960	@ tmp173,
	cmp	r3, #0	@ temp.718,
	add	r7, r3, #7	@ tmp176, temp.718,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r1, r3, lsr #3	@, tmp185, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, temp.718,
	movge	r7, r3	@ temp.718, temp.718
	movw	r5, #:lower16:71980	@ tmp166,
	add	r3, r3, r1, asl #3	@, bs_offset.723, temp.718, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	movt	r5, #:upper16:71980	@ tmp166,
	add	r1, lr, r7, asr #3	@, tmp180, <variable>.CodecInfo.BsOffset, temp.718,
	and	lr, r3, #31	@ tmp188, bs_offset.723,
	str	r1, [r4, r2]	@ tmp180, <variable>.CodecInfo.BsOffset
	bic	r1, ip, #3	@ tmp187, tmp185,
	str	lr, [r4, #172]	@ tmp188, <variable>.Mp2DecParam.StreamBitOffset
	str	r1, [r4, #164]	@ tmp187, <variable>.Mp2DecParam.StreamPhyAddr
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bl	BsResidBits	@
	movw	r3, #:lower16:71988	@ tmp193,
	movt	r3, #:upper16:71988	@ tmp193,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bic	r6, r6, #3	@ stream_base_addr.717, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	and	ip, r2, #3	@ tmp190, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r6, [r4, #168]	@ stream_base_addr.717, <variable>.Mp2DecParam.StreamPhyAddr
	mov	r1, ip, asl #3	@ tmp192, tmp190,
	mov	r2, r3, asl #3	@ tmp195, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r1, [r4, #176]	@ tmp192, <variable>.Mp2DecParam.StreamBitOffset
	str	r2, [r4, #184]	@ tmp195, <variable>.Mp2DecParam.StreamLength
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L50:
	movw	ip, #:lower16:72280	@ tmp147,
	movt	ip, #:upper16:72280	@ tmp147,
	movw	r5, #:lower16:71976	@ tmp146,
	movt	r5, #:upper16:71976	@ tmp146,
	ldr	r3, [r4, ip]	@ D.33748, <variable>.Bs.TotalPos
	movw	r2, #:lower16:71960	@ tmp148,
	ldr	r1, [r4, r5]	@ D.33747, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:71960	@ tmp148,
	cmp	r3, #0	@ D.33748,
	add	r5, r3, #7	@ tmp151, D.33748,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r3, r1, asl #3	@, tmp161, D.33748, D.33747,
	movge	r5, r3	@ D.33748, D.33748
	add	r3, r1, r3, lsr #3	@, tmp157, D.33747, D.33748,
	add	r1, lr, r5, asr #3	@, tmp155, <variable>.CodecInfo.BsOffset, D.33748,
	bic	r3, r3, #3	@ tmp158, tmp157,
	str	r1, [r4, r2]	@ tmp155, <variable>.CodecInfo.BsOffset
	and	lr, ip, #31	@ tmp162, tmp161,
	str	r3, [r4, #164]	@ tmp158, <variable>.Mp2DecParam.StreamPhyAddr
	str	lr, [r4, #172]	@ tmp162, <variable>.Mp2DecParam.StreamBitOffset
	bl	BsResidBits	@
	mov	r2, #0	@ tmp163,
	str	r2, [r4, #184]	@ tmp163, <variable>.Mp2DecParam.StreamLength
	str	r2, [r4, #168]	@ tmp163, <variable>.Mp2DecParam.StreamPhyAddr
	str	r2, [r4, #176]	@ tmp163, <variable>.Mp2DecParam.StreamBitOffset
	str	r0, [r4, #180]	@, <variable>.Mp2DecParam.StreamLength
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MP2_SetVDMInf, .-MP2_SetVDMInf
	.align	2
	.global	MP2_DecNewPic
	.type	MP2_DecNewPic, %function
MP2_DecNewPic:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r5, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	bl	MP2_SetVDMInf	@
	ldr	r2, [r5, #0]	@ temp.761, <variable>.pstExtraData
	movw	r0, #:lower16:73336	@ tmp146,
	movt	r0, #:upper16:73336	@ tmp146,
	movw	r3, #45324	@ tmp143,
	ldr	r1, [r5, r0]	@ D.33367, <variable>.pSyntaxInfNew
	ldr	r0, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r5, r3]	@ <variable>.s32Compress_en, <variable>.Mp2DecParam.Compress_en
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ D.33368, <variable>.picture_coding_type
	cmp	r3, #3	@ D.33368,
	beq	.L60	@,
	cmp	r3, #2	@ D.33368,
	movweq	r3, #:lower16:73708	@ tmp156,
	movteq	r3, #:upper16:73708	@ tmp156,
	moveq	r1, #1	@ tmp157,
	streq	r1, [r5, r3]	@ tmp157, <variable>.PPicFound
.L53:
	add	r1, r5, #8	@ D.33382, pCtx,
	str	r1, [r5, #4]	@ D.33382, <variable>.pMp2DecParam
	ldr	r3, [r2, #708]	@ D.33383, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.33383,
	beq	.L61	@,
	cmp	r3, #2	@ D.33383,
	beq	.L62	@,
.L57:
	movw	r3, #:lower16:73336	@ tmp174,
	movt	r3, #:upper16:73336	@ tmp174,
	movw	r0, #:lower16:72012	@ tmp169,
	movt	r0, #:upper16:72012	@ tmp169,
	ldr	r2, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	lr, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r4, lr, #16252928	@ tmp172, <variable>.CodecInfo.StreamIntegrality,
	str	r4, [r5, r0]	@ tmp172, <variable>.CodecInfo.StreamIntegrality
	ldrb	r4, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r4, #1	@ <variable>.picture_coding_type,
	beq	.L63	@,
.L58:
	mov	r0, #1	@ Ret,
.L55:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L63:
	movw	r1, #:lower16:g_event_report	@ tmp176,
	movt	r1, #:upper16:g_event_report	@ tmp176,
	ldr	r3, [r1, #0]	@ g_event_report.467, g_event_report
	cmp	r3, #0	@ g_event_report.467,
	beq	.L58	@,
	ldr	lr, [r5, #184]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	add	r2, sp, #8	@ tmp185,,
	ldr	ip, [r5, #180]	@ <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	movw	r0, #:lower16:73696	@ tmp183,
	movt	r0, #:upper16:73696	@ tmp183,
	mov	r1, #20	@,
	add	ip, lr, ip	@ tmp177, <variable>.Mp2DecParam.StreamLength, <variable>.Mp2DecParam.StreamLength
	add	lr, ip, #7	@ tmp181, tmp177,
	cmp	ip, #0	@ tmp177,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	movlt	ip, lr	@ tmp180, tmp181
	mov	ip, ip, asr #3	@ tmp182, tmp180,
	str	ip, [r2, #-4]!	@ tmp182, para
	blx	r3	@ g_event_report.467
	mov	r0, r4	@ Ret, <variable>.picture_coding_type
	b	.L55	@
.L60:
	movw	ip, #:lower16:73708	@ tmp147,
	movt	ip, #:upper16:73708	@ tmp147,
	ldr	r0, [r5, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r0, #0	@ <variable>.PPicFound,
	bne	.L53	@,
	movw	r3, #:lower16:72052	@ tmp149,
	movt	r3, #:upper16:72052	@ tmp149,
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	lr, #2	@ <variable>.CodecInfo.RefNum,
	beq	.L53	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L55	@,
	movw	ip, #:lower16:72024	@ tmp152,
	movt	ip, #:upper16:72024	@ tmp152,
	ldr	lr, [r5, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r1, lr, #1	@ tmp155, <variable>.CodecInfo.Second_Field
	movcc	r1, #0	@ tmp155
	str	r1, [r5, ip]	@ tmp155, <variable>.CodecInfo.Second_Field
	b	.L55	@
.L61:
	cmp	r1, #0	@ D.33382,
	beq	.L57	@,
	movw	r1, #:lower16:73336	@ tmp159,
	movt	r1, #:upper16:73336	@ tmp159,
	ldr	r2, [r5, r1]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	r3, [r2, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	moveq	r0, #0	@ tmp161,
	streq	r0, [r5, #4]	@ tmp161, <variable>.pMp2DecParam
	bne	.L57	@,
	b	.L55	@
.L62:
	ldr	r0, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L57	@,
	cmp	r1, #0	@ D.33382,
	beq	.L57	@,
	movw	r3, #:lower16:73336	@ tmp164,
	movt	r3, #:upper16:73336	@ tmp164,
	ldr	lr, [r5, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldrb	ip, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	bne	.L57	@,
	mov	r0, #0	@ tmp166,
	str	r0, [r5, #4]	@ tmp166, <variable>.pMp2DecParam
	ldr	ip, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, ip, #1	@ tmp168, <variable>.stDisParams.s32DisNums,
	str	r1, [r2, #712]	@ tmp168, <variable>.stDisParams.s32DisNums
	b	.L55	@
	.fnend
	.size	MP2_DecNewPic, .-MP2_DecNewPic
	.align	2
	.global	MP2_u_v
	.type	MP2_u_v, %function
MP2_u_v:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r5	@, LenInBits
	mov	r4, r0	@ D.34850,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34850
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_u_v, .-MP2_u_v
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	add	r3, r4, r0, asl #3	@, tmp147, tmp144, D.34941,
	ldr	r5, [r3, #140]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r3, #144]	@ SkipBit, tab_for_first_4bit
	cmp	r5, #6	@ MbAddrInc,
	bls	.L71	@,
	cmp	r5, #9	@ MbAddrInc,
	beq	.L72	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	and	ip, r0, #127	@ code.818,,
	mov	r0, r6	@, pBs
	sub	r5, ip, #24	@ code.819, code.818,
	add	r1, r4, r5, asl #3	@, tmp167, tmp144, code.819,
	mov	r4, r1	@ tmp161, tmp167
	ldr	r1, [r1, #272]	@, tab_for_last_7bit
	ldr	r5, [r4, #268]	@ MbAddrInc, tab_for_last_7bit
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L71:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L72:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	MP2_u_v	@
	rsb	r5, r0, #9	@ MbAddrInc,,
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_MbAddrInc, .-MP2_MbAddrInc
	.align	2
	.global	MP2_InitMb
	.type	MP2_InitMb, %function
MP2_InitMb:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #52]	@ pBs, <variable>.pBs
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	mov	r5, #0	@ macroblock_escape,
.L74:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC1	@,
	mov	r1, #11	@,
	movt	r2, #:upper16:.LC1	@,
	mov	r3, r0	@ D.34872,
	cmp	r3, #23	@ D.34872,
	mov	r0, r4	@, pBs
	bhi	.L83	@,
	cmp	r3, #15	@ D.34872,
	beq	.L75	@,
	cmp	r3, #8	@ D.34872,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L84	@,
.L75:
	bl	MP2_u_v	@
	b	.L74	@
.L83:
	bl	MP2_MbAddrInc	@
	ldr	r3, [r6, #16]	@ <variable>.FirstMbInSliceFlag, <variable>.FirstMbInSliceFlag
	cmp	r3, #0	@ <variable>.FirstMbInSliceFlag,
	moveq	r0, r3	@ ret, <variable>.FirstMbInSliceFlag
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, [r6, #28]	@ D.34877, <variable>.previous_macroblock_address
	ldr	r2, [r6, #12]	@ <variable>.pic_total_mb_num, <variable>.pic_total_mb_num
	cmp	r1, #0	@ D.34877,
	addeq	r1, r5, r0	@ tmp146, macroblock_escape, macroblock_address_increment
	addne	r0, r5, r0	@ tmp145, macroblock_escape, macroblock_address_increment
	addne	r1, r0, r1	@ SlcStartMbNum, tmp145, D.34877
	subeq	r1, r1, #1	@ SlcStartMbNum, tmp146,
	sub	r0, r2, #1	@ tmp147, <variable>.pic_total_mb_num,
	str	r1, [r6, #44]	@ SlcStartMbNum, <variable>.slicen_start_mb_num
	cmp	r1, r0	@ SlcStartMbNum, tmp147
	movhi	r0, #0	@, ret
	movls	r0, #1	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L84:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_InitMb, .-MP2_InitMb
	.align	2
	.global	MP2_DecSliceHeader
	.type	MP2_DecSliceHeader, %function
MP2_DecSliceHeader:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r0	@ pSlcInfo, pSlcInfo
	ldr	r0, [r0, #4]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	r2, #1	@ tmp145,
	mov	r3, #0	@ tmp146,
	str	r2, [r5, #16]	@ tmp145, <variable>.FirstMbInSliceFlag
	cmp	r0, #175	@ <variable>.pic_height_in_mb,
	str	r3, [r5, #24]	@ tmp146, <variable>.slice_vertical_position_extension
	ldr	r4, [r5, #52]	@ pBs, <variable>.pBs
	bls	.L86	@,
	ldr	r1, [r5, #0]	@ <variable>.mpeg1_flag, <variable>.mpeg1_flag
	cmp	r1, #0	@ <variable>.mpeg1_flag,
	beq	.L95	@,
.L86:
	mov	r1, #0	@ prephitmp.859,
.L87:
	ldr	ip, [r5, #20]	@ <variable>.slice_vertical_position, <variable>.slice_vertical_position
	ldr	r0, [r5, #8]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	sub	r2, ip, #1	@ tmp150, <variable>.slice_vertical_position,
	add	r3, r2, r1	@ tmp152, tmp150, prephitmp.859
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r2, #:upper16:.LC3	@,
	mul	lr, r0, r3	@ D.34824, <variable>.pic_width_in_mb, tmp152
	mov	r0, r4	@, pBs
	cmp	lr, #0	@ D.34824,
	subne	lr, lr, #1	@ iftmp.515, D.34824,
	str	lr, [r5, #28]	@ iftmp.515, <variable>.previous_macroblock_address
	bl	MP2_u_v	@
	mov	ip, #0	@ tmp155,
	mov	r1, #1	@,
	str	ip, [r5, #32]	@ tmp155, <variable>.intra_slice
	str	r0, [r5, #48]	@, <variable>.quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L96	@,
.L90:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	bl	MP2_u_v	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L96:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC4	@,
	movt	r2, #:upper16:.LC4	@,
	bl	MP2_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r2, #:upper16:.LC5	@,
	bl	MP2_u_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r2, #:upper16:.LC6	@,
	str	r0, [r5, #32]	@, <variable>.intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L91	@
.L92:
	bl	MP2_u_v	@
	movw	r2, #:lower16:.LC8	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC8	@,
	mov	r1, #8	@,
	bl	MP2_u_v	@
.L91:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC7	@,
	mov	r1, #1	@,
	movt	r2, #:upper16:.LC7	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L92	@,
	b	.L90	@
.L95:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	mov	r1, r0, asl #7	@ prephitmp.859, D.34818,
	str	r0, [r5, #24]	@ D.34818, <variable>.slice_vertical_position_extension
	b	.L87	@
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
	.align	2
	.global	MP2_GetFirstMbInSlice
	.type	MP2_GetFirstMbInSlice, %function
MP2_GetFirstMbInSlice:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSlcInfo, pSlcInfo
	bl	MP2_DecSliceHeader	@
	mov	r0, r4	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp136,
	str	r3, [r4, #16]	@ tmp136, <variable>.FirstMbInSliceFlag
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP2_GetFirstMbInSlice, .-MP2_GetFirstMbInSlice
	.align	2
	.global	copyright_extension
	.type	copyright_extension, %function
copyright_extension:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	copyright_extension, .-copyright_extension
	.align	2
	.global	picture_temporal_scalable_extension
	.type	picture_temporal_scalable_extension, %function
picture_temporal_scalable_extension:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	picture_temporal_scalable_extension, .-picture_temporal_scalable_extension
	.align	2
	.global	picture_spatial_scalable_extension
	.type	picture_spatial_scalable_extension, %function
picture_spatial_scalable_extension:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	picture_spatial_scalable_extension, .-picture_spatial_scalable_extension
	.align	2
	.global	sequence_scalable_extension
	.type	sequence_scalable_extension, %function
sequence_scalable_extension:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	sequence_scalable_extension, .-sequence_scalable_extension
	.align	2
	.global	MP2_ClearCurPic
	.type	MP2_ClearCurPic, %function
MP2_ClearCurPic:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r8, #45316	@ tmp166,
	ldr	r3, [r0, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r6, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.Mp2DecParam.SlcNum,
	beq	.L108	@,
	movw	r7, #:lower16:73696	@ tmp181,
	mov	r4, r0	@ ivtmp.1015, pCtx
	movt	r7, #:upper16:73696	@ tmp181,
	mov	r5, #0	@ i,
	b	.L110	@
.L109:
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r4, r4, #44	@ ivtmp.1015, ivtmp.1015,
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bls	.L108	@,
.L110:
	ldr	r1, [r4, #284]	@, <variable>.BsID
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, #264]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	beq	.L109	@,
	ldr	r1, [r4, #272]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	beq	.L109	@,
	ldr	r1, [r4, #288]	@, <variable>.BsID
	add	r4, r4, #44	@ ivtmp.1015, ivtmp.1015,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bhi	.L110	@,
.L108:
	movw	r3, #45316	@ tmp178,
	mov	ip, #0	@ tmp179,
	str	ip, [r6, r3]	@ tmp179, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MP2_ClearCurPic, .-MP2_ClearCurPic
	.align	2
	.global	MP2_WriteSliceInfo
	.type	MP2_WriteSliceInfo, %function
MP2_WriteSliceInfo:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #45316	@ tmp140,
	movw	r2, #:lower16:72248	@ tmp153,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [r0, r1]	@ D.34903, <variable>.Mp2DecParam.SlcNum
	mov	r5, #44	@ tmp143,
	movw	r3, #:lower16:72232	@ tmp146,
	movt	r3, #:upper16:72232	@ tmp146,
	movt	r2, #:upper16:72248	@ tmp153,
	mla	r5, r5, ip, r0	@ tmp144, tmp143, D.34903, pCtx
	ldr	lr, [r0, r3]	@ <variable>.SliceInfo.intra_slice, <variable>.SliceInfo.intra_slice
	movw	r3, #:lower16:72244	@ tmp160,
	movt	r3, #:upper16:72244	@ tmp160,
	mov	r4, r0	@ pCtx, pCtx
	add	ip, r5, #288	@ tmp145, tmp144,
	str	lr, [ip, #8]	@ <variable>.SliceInfo.intra_slice, <variable>.intra_slice
	ldr	lr, [r0, r2]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.SliceInfo.quantiser_scale_code
	str	lr, [r5, #300]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r0, r3]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.SliceInfo.slicen_start_mb_num
	str	r2, [ip, #4]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.slice_start_mbn
	ldr	r3, [r0, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r3, #1024	@ <variable>.Mp2DecParam.SlcNum,
	bcs	.L120	@,
	movw	ip, #:lower16:72280	@ tmp171,
	movt	ip, #:upper16:72280	@ tmp171,
	movw	r0, #:lower16:71976	@ tmp178,
	movt	r0, #:upper16:71976	@ tmp178,
	ldr	lr, [r4, ip]	@ D.34916, <variable>.Bs.TotalPos
	movw	ip, #:lower16:71992	@ tmp192,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	ip, #:upper16:71992	@ tmp192,
	and	r3, lr, #7	@ tmp186, D.34916,
	str	r3, [r5, #276]	@ tmp186, <variable>.BsBitOffset
	add	r1, r2, lr, lsr #3	@, tmp180, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, D.34916,
	str	r1, [r5, #260]	@ tmp180, <variable>.BsPhyAddr
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	add	r0, r4, #71680	@, pCtx,
	add	r0, r0, #576	@,,
	str	lr, [r5, #284]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	bl	BsResidBits	@
	movw	r3, #:lower16:71964	@ tmp201,
	movt	r3, #:upper16:71964	@ tmp201,
	str	r0, [r5, #268]	@, <variable>.BsLenInBit
	ldrsh	r3, [r4, r3]	@ D.34921,
	cmp	r3, #1	@ D.34921,
	beq	.L121	@,
	cmp	r3, #256	@ D.34921,
	movne	r0, #0	@ D.34913,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	movw	lr, #:lower16:71980	@ tmp233,
	movt	lr, #:upper16:71980	@ tmp233,
	add	r0, r5, #276	@ tmp239, tmp144,
	movw	ip, #:lower16:71996	@ tmp246,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	ip, #:upper16:71996	@ tmp246,
	mov	r3, #0	@ tmp240,
	str	r3, [r0, #4]	@ tmp240, <variable>.BsBitOffset
	movw	lr, #:lower16:71988	@ tmp253,
	movt	lr, #:upper16:71988	@ tmp253,
	str	r1, [r5, #264]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.BsPhyAddr
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	str	r2, [r5, #288]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, ip, asl #3	@ tmp255, <variable>.CodecInfo.stMp2Packet.BsLength,
	movw	ip, #45316	@ tmp256,
	str	r0, [r5, #272]	@ tmp255, <variable>.BsLenInBit
	mov	r0, #1	@ D.34913,
	ldr	r1, [r4, ip]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r1, r0	@ tmp259, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, ip]	@ tmp259, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L120:
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:72012	@ tmp165,
	movt	r3, #:upper16:72012	@ tmp165,
	movw	r2, #:lower16:72068	@ tmp169,
	movt	r2, #:upper16:72068	@ tmp169,
	mov	r1, #0	@ tmp170,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r1	@ D.34913, tmp170
	str	r1, [r4, r2]	@ tmp170, <variable>.CodecInfo.HDRState
	bic	r1, ip, #5767168	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r3]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L121:
	add	r3, r5, #268	@ tmp225, tmp144,
	add	r1, r5, #260	@ tmp207, tmp144,
	add	r2, r5, #276	@ tmp213, tmp144,
	add	r5, r5, #284	@ tmp219, tmp144,
	movw	ip, #45316	@ tmp256,
	mov	lr, #0	@ tmp208,
	str	lr, [r2, #4]	@ tmp208, <variable>.BsBitOffset
	mov	r0, #1	@ D.34913,
	str	lr, [r3, #4]	@ tmp208, <variable>.BsLenInBit
	str	lr, [r1, #4]	@ tmp208, <variable>.BsPhyAddr
	str	lr, [r5, #4]	@ tmp208, <variable>.BsID
	ldr	r1, [r4, ip]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r1, r0	@ tmp259, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, ip]	@ tmp259, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_DecSlice
	.type	MP2_DecSlice, %function
MP2_DecSlice:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	ip, #:lower16:71968	@ tmp142,
	movw	r3, #:lower16:73336	@ tmp140,
	movt	ip, #:upper16:71968	@ tmp142,
	movt	r3, #:upper16:73336	@ tmp140,
	movw	r2, #:lower16:71984	@ tmp145,
	movt	r2, #:upper16:71984	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #:lower16:72048	@ tmp148,
	movt	r0, #:upper16:72048	@ tmp148,
	ldr	r3, [r4, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r7, #:lower16:72236	@ tmp141,
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movt	r7, #:upper16:72236	@ tmp141,
	ldr	r5, [r4, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	r2, #:lower16:72200	@ tmp147,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r2, #:upper16:72200	@ tmp147,
	movw	r0, #:lower16:72240	@ tmp144,
	movt	r0, #:upper16:72240	@ tmp144,
	str	r6, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.SliceInfo.VirAddr
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	ip, #0	@, tmp150
	moveq	ip, #1	@, tmp150
	str	r5, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.SliceInfo.ByteLen
	movw	r5, #:lower16:72204	@ tmp151,
	str	ip, [r4, r2]	@ tmp150, <variable>.SliceInfo.mpeg1_flag
	movt	r5, #:upper16:72204	@ tmp151,
	ldr	r7, [r3, #60]	@ <variable>.mb_height, <variable>.mb_height
	movw	r6, #:lower16:72208	@ tmp153,
	movt	r6, #:upper16:72208	@ tmp153,
	add	lr, r4, #71680	@ tmp167, pCtx,
	movw	ip, #:lower16:72252	@ tmp165,
	movt	ip, #:upper16:72252	@ tmp165,
	str	r7, [r4, r5]	@ <variable>.mb_height, <variable>.SliceInfo.pic_height_in_mb
	mov	r0, lr	@, tmp167
	ldr	r7, [r3, #56]	@ <variable>.mb_width, <variable>.mb_width
	add	lr, lr, #576	@ tmp167, tmp167,
	movw	r2, #:lower16:72212	@ tmp155,
	movw	r5, #:lower16:72220	@ tmp163,
	movt	r2, #:upper16:72212	@ tmp155,
	movt	r5, #:upper16:72220	@ tmp163,
	str	r7, [r4, r6]	@ <variable>.mb_width, <variable>.SliceInfo.pic_width_in_mb
	uxtb	r6, r1	@ tmp164, code
	ldr	r1, [r3, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	add	r0, r0, #520	@,,
	ldr	r3, [r3, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	add	r1, r1, #15	@ tmp159, <variable>.horizontal_size,
	str	lr, [r4, ip]	@ tmp167, <variable>.SliceInfo.pBs
	add	r3, r3, #15	@ tmp156, <variable>.vertical_size,
	str	r6, [r4, r5]	@ tmp164, <variable>.SliceInfo.slice_vertical_position
	mov	r1, r1, lsr #4	@ tmp161, tmp159,
	mov	ip, r3, lsr #4	@ tmp158, tmp156,
	mul	r3, r1, ip	@ tmp162, tmp161, tmp158
	str	r3, [r4, r2]	@ tmp162, <variable>.SliceInfo.pic_total_mb_num
	bl	MP2_GetFirstMbInSlice	@
	cmp	r0, #1	@,
	movne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, r4	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@,
	movne	r0, #0	@, ret
	moveq	r0, #1	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MP2_DecSlice, .-MP2_DecSlice
	.align	2
	.global	MP2_ClearCurPacket
	.type	MP2_ClearCurPacket, %function
MP2_ClearCurPacket:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pMp2Packet, pMp2Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #0]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L127	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L127:
	mov	r0, r4	@, pMp2Packet
	mov	r1, #36	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
	.fnend
	.size	MP2_ClearCurPacket, .-MP2_ClearCurPacket
	.align	2
	.global	MP2_ReceivePacket
	.type	MP2_ReceivePacket, %function
MP2_ReceivePacket:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pPacket
	mov	r3, r0	@ pMp2CodecInfo, pMp2CodecInfo
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r0, r1	@ D.34699, pPacket
	ldmeqfd	sp!, {r4, pc}	@
	movw	r0, #26632	@ tmp138,
	mov	r4, #0	@ tmp139,
	str	r4, [r3, r0]	@ tmp139, <variable>.BsOffset
	movw	r0, #26676	@ tmp140,
	ldr	ip, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r3, r0]	@ <variable>.LenInByte, <variable>.PacketTail
	movw	r0, #26648	@ tmp142,
	ldr	ip, [r1, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r3, r0]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r0, #26640	@ tmp144,
	ldr	ip, [r1, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	ip, [r3, r0]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #26656	@ tmp146,
	ldr	ip, [r1, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r3, r0]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r0, #26636	@ tmp148,
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r3, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	movw	r0, #26664	@ tmp151,
	ldr	ip, [r1, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	ip, [r3, r0]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r1, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L132	@,
	ldr	ip, [r1, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r0, #26652	@ tmp154,
	str	ip, [r3, r0]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r0, #26644	@ tmp156,
	ldr	ip, [r1, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	ip, [r3, r0]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #26660	@ tmp158,
	ldr	ip, [r1, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r3, r0]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r0, #26637	@ tmp160,
	ldrb	ip, [r1, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r3, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	movw	r0, #26668	@ tmp163,
	ldr	ip, [r1, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	ip, [r3, r0]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r1, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	ldmeqfd	sp!, {r4, pc}	@
	add	r1, r3, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@ D.34699, tmp139
	ldmfd	sp!, {r4, pc}	@
.L132:
	movw	ip, #26668	@ tmp177,
	movw	r2, #26652	@ tmp168,
	str	r4, [r3, ip]	@ tmp139, <variable>.stMp2Packet.StreamID
	movw	r1, #26644	@ tmp170,
	str	r4, [r3, r2]	@ tmp139, <variable>.stMp2Packet.BsPhyAddr
	movw	ip, #26660	@ tmp172,
	movw	r2, #26637	@ tmp174,
	str	r4, [r3, r1]	@ tmp139, <variable>.stMp2Packet.BsVirAddr
	str	r4, [r3, ip]	@ tmp139, <variable>.stMp2Packet.BsLength
	strb	r4, [r3, r2]	@ tmp139, <variable>.stMp2Packet.IsLastSeg
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP2_ReceivePacket, .-MP2_ReceivePacket
	.align	2
	.global	MPEG2DEC_GetImageBuffer
	.type	MPEG2DEC_GetImageBuffer, %function
MPEG2DEC_GetImageBuffer:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #45329	@ tmp138,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r3, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L136	@,
	movw	r2, #:lower16:72024	@ tmp140,
	movt	r2, #:upper16:72024	@ tmp140,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L137	@,
.L136:
	movw	r5, #:lower16:73696	@ tmp142,
	movt	r5, #:upper16:73696	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L137	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L138	@,
.L141:
	mov	r0, #0	@ D.34683,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L137:
	mov	r0, #1	@ D.34683,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L138:
	add	ip, r4, #72704	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L141	@
	.fnend
	.size	MPEG2DEC_GetImageBuffer, .-MPEG2DEC_GetImageBuffer
	.align	2
	.global	MP2_ProtocolPPSCheck
	.type	MP2_ProtocolPPSCheck, %function
MP2_ProtocolPPSCheck:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #:lower16:72048	@ tmp144,
	movt	r3, #:upper16:72048	@ tmp144,
	movw	r2, #:lower16:73336	@ tmp143,
	movt	r2, #:upper16:73336	@ tmp143,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r0, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	ldr	r1, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L144	@,
	cmp	r3, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L162	@,
	movw	ip, #:lower16:72012	@ tmp168,
	movt	ip, #:upper16:72012	@ tmp168,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r2, r2, #63	@ prephitmp.1166, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r0, ip]	@ prephitmp.1166, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
.L152:
	tst	r2, #24	@ prephitmp.1166,
	beq	.L156	@,
	cmp	r3, #3	@ prephitmp.1170,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	lr, #:lower16:72012	@ tmp172,
	movw	r5, #:lower16:73696	@ tmp174,
	movt	lr, #:upper16:72012	@ tmp172,
	movt	r5, #:upper16:73696	@ tmp174,
	movw	r7, #:lower16:72092	@ tmp176,
	movt	r7, #:upper16:72092	@ tmp176,
	orr	r6, r2, #64	@ tmp173, prephitmp.1166,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, lr]	@ tmp173, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L158	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp200,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp200,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp190,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp190, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp190, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp190, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp190, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp190, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L163	@,
.L158:
	movw	r3, #:lower16:72052	@ tmp212,
	movt	r3, #:upper16:72052	@ tmp212,
	mov	r1, #0	@ tmp213,
	str	r1, [r4, r3]	@ tmp213,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L156:
	cmp	r3, #1	@ prephitmp.1170,
	biceq	r2, r2, #192	@ tmp215, prephitmp.1166,
	movweq	r3, #:lower16:72012	@ tmp214,
	movteq	r3, #:upper16:72012	@ tmp214,
	streq	r2, [r4, r3]	@ tmp215,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L162:
	movw	r3, #:lower16:72012	@ tmp161,
	movt	r3, #:upper16:72012	@ tmp161,
	ldr	r2, [r0, r3]	@ prephitmp.1169, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #1048576	@ prephitmp.1169,
	orreq	r2, r2, #16	@ prephitmp.1169, prephitmp.1169,
	streq	r2, [r0, r3]	@ prephitmp.1169, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
	sub	ip, r3, #1	@ tmp164, prephitmp.1170,
	uxtb	r0, ip	@ tmp165, tmp164
	cmp	r0, #2	@ tmp165,
	bls	.L161	@,
.L155:
	movw	r0, #:lower16:72012	@ tmp167,
	movt	r0, #:upper16:72012	@ tmp167,
	orr	r2, r2, #8	@ prephitmp.1166, prephitmp.1169,
	str	r2, [r4, r0]	@ prephitmp.1166, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
	b	.L152	@
.L144:
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
	sub	r2, r3, #1	@ tmp146, prephitmp.1170,
	uxtb	r2, r2	@ tmp147, tmp146
	cmp	r2, #3	@ tmp147,
	movwhi	r3, #:lower16:72012	@ tmp149,
	movthi	r3, #:upper16:72012	@ tmp149,
	movwls	r2, #:lower16:72012	@ tmp148,
	movtls	r2, #:upper16:72012	@ tmp148,
	ldrhi	r2, [r0, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldrls	r2, [r0, r2]	@ prephitmp.1172, <variable>.CodecInfo.StreamIntegrality
	orrhi	r2, r2, #8	@ prephitmp.1172, <variable>.CodecInfo.StreamIntegrality,
	strhi	r2, [r0, r3]	@ prephitmp.1172, <variable>.CodecInfo.StreamIntegrality
	ldrhib	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
	sub	ip, r3, #2	@ tmp152, prephitmp.1170,
	uxtb	r0, ip	@ tmp153, tmp152
	cmp	r0, #1	@ tmp153,
	bls	.L164	@,
.L161:
	movw	r1, #:lower16:72012	@ tmp166,
	movt	r1, #:upper16:72012	@ tmp166,
	ldr	r2, [r4, r1]	@ prephitmp.1166, <variable>.CodecInfo.StreamIntegrality
	b	.L152	@
.L164:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	cmp	r0, #0	@ <variable>.forward_f_code,
	orreq	r2, r2, #8	@ prephitmp.1176, prephitmp.1172,
	movweq	r3, #:lower16:72012	@ tmp156,
	movteq	r3, #:upper16:72012	@ tmp156,
	movwne	r2, #:lower16:72012	@ tmp155,
	movtne	r2, #:upper16:72012	@ tmp155,
	streq	r2, [r4, r3]	@ prephitmp.1176, <variable>.CodecInfo.StreamIntegrality
	ldreqb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1170, <variable>.picture_coding_type
	ldrne	r2, [r4, r2]	@ prephitmp.1176, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #3	@ prephitmp.1170,
	bne	.L161	@,
	ldrb	ip, [r1, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	cmp	ip, #0	@ <variable>.backward_f_code,
	beq	.L155	@,
	b	.L161	@
.L163:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.33691, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.33691, <variable>.CodecInfo.FwdFsID
	b	.L158	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:72012	@ tmp156,
	movt	r3, #:upper16:72012	@ tmp156,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ prephitmp.1224, <variable>.CodecInfo.StreamIntegrality
	movw	r2, #:lower16:73336	@ tmp155,
	movt	r2, #:upper16:73336	@ tmp155,
	tst	r3, #8388608	@ prephitmp.1224,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	mvneq	r0, #0	@ D.32823,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L168	@,
	movw	r6, #:lower16:72024	@ tmp159,
	movt	r6, #:upper16:72024	@ tmp159,
	ldr	r1, [r4, r6]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	beq	.L168	@,
	ands	r6, r3, #255	@ tmp166, prephitmp.1224,
	beq	.L170	@,
.L212:
	movw	r1, #:lower16:g_event_report	@ tmp167,
	movt	r1, #:upper16:g_event_report	@ tmp167,
	ldr	r3, [r1, #0]	@ g_event_report.437, g_event_report
	cmp	r3, #0	@ g_event_report.437,
	beq	.L171	@,
	movw	lr, #:lower16:73696	@ tmp168,
	movt	lr, #:upper16:73696	@ tmp168,
	mov	r1, #103	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.437
	mov	r0, #0	@ D.32823,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L168:
	movw	r3, #:lower16:72012	@ tmp165,
	movt	r3, #:upper16:72012	@ tmp165,
	movw	r2, #:lower16:73700	@ tmp161,
	movt	r2, #:upper16:73700	@ tmp161,
	ldr	r3, [r4, r3]	@ prephitmp.1224, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r4, r2]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ands	r6, r3, #255	@ tmp166, prephitmp.1224,
	add	ip, r0, #1	@ tmp164, <variable>.numTotalFrame,
	str	ip, [r4, r2]	@ tmp164, <variable>.numTotalFrame
	bne	.L212	@,
.L170:
	movw	r2, #:lower16:72060	@ tmp170,
	movt	r2, #:upper16:72060	@ tmp170,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	ip, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L171	@,
	movw	r0, #:lower16:72000	@ tmp172,
	movt	r0, #:upper16:72000	@ tmp172,
	ldr	r8, [r4, r0]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r7, r8, #2	@ tmp173, <variable>.CodecInfo.UsedDecMode,
	cmp	r7, #1	@ tmp173,
	bls	.L172	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #8]	@ prephitmp.1230, <variable>.s32DecMode
.L173:
	movw	r7, #:lower16:72000	@ tmp227,
	movt	r7, #:upper16:72000	@ tmp227,
	sub	ip, r2, #1	@ tmp228, prephitmp.1230,
	str	r2, [r4, r7]	@ prephitmp.1230, <variable>.CodecInfo.UsedDecMode
	cmp	ip, #4	@ tmp228,
	ldrls	pc, [pc, ip, asl #2]	@ tmp228
	b	.L175	@
.L181:
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L179
	.word	.L180
.L215:
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [r2, #0]	@ temp.1287, <variable>.s32RefErrThr
	cmp	ip, r3	@ <variable>.error_level, temp.1287
	bhi	.L171	@,
	ldr	r1, [r0, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r1	@ temp.1287, <variable>.error_level
	bcs	.L193	@,
.L171:
	mov	r0, #0	@ D.32823,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L176:
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r2, #3	@ <variable>.picture_coding_type,
	beq	.L185	@,
.L175:
	mov	r8, #1	@ ret,
.L182:
	movw	ip, #:lower16:72012	@ tmp268,
	movt	ip, #:upper16:72012	@ tmp268,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	lr, r7, #14155776	@ tmp271, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r4, ip]	@ tmp271, <variable>.CodecInfo.StreamIntegrality
	ldr	r6, [r1, #528]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r6, #1	@ <variable>.s32SupportAllP,
	beq	.L213	@,
	movw	r2, #:lower16:72052	@ tmp277,
	movt	r2, #:upper16:72052	@ tmp277,
	ldr	r3, [r4, r2]	@ temp.1275, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ temp.1275,
	bne	.L191	@,
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	r6, lr, #2	@ tmp280, <variable>.picture_coding_type,
	uxtb	r3, r6	@ tmp281, tmp280
	cmp	r3, #1	@ tmp281,
	bls	.L190	@,
.L189:
	movw	r6, #:lower16:73696	@ tmp283,
	movw	r7, #:lower16:72088	@ tmp285,
	movt	r6, #:upper16:73696	@ tmp283,
	movt	r7, #:upper16:72088	@ tmp285,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:72092	@ tmp289,
	movt	r2, #:upper16:72092	@ tmp289,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	beq	.L171	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1282, <variable>.picture_coding_type
	cmp	r3, #2	@ temp.1282,
	beq	.L214	@,
	cmp	r3, #3	@ temp.1282,
	beq	.L215	@,
.L193:
	cmp	r8, #0	@ ret,
	movne	r0, #1	@ D.32823,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L195	@,
	movw	lr, #:lower16:72024	@ tmp305,
	movt	lr, #:upper16:72024	@ tmp305,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L171	@,
.L195:
	ldrb	ip, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	ip, #1	@ <variable>.progressive_sequence,
	beq	.L216	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L217	@,
	movw	r0, #:lower16:72176	@ tmp328,
	movt	r0, #:upper16:72176	@ tmp328,
	movw	lr, #:lower16:72172	@ tmp331,
	movt	lr, #:upper16:72172	@ tmp331,
	ldr	r2, [r4, r0]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.1294, <variable>.GopFrmCnt,
	str	r1, [r4, r0]	@ temp.1294, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp332, temp.1294,
	str	r3, [r4, lr]	@ tmp332, <variable>.GopFldCnt
.L197:
	movw	r2, #:lower16:72168	@ tmp333,
	movt	r2, #:upper16:72168	@ tmp333,
	movw	r3, #:lower16:72020	@ tmp337,
	movt	r3, #:upper16:72020	@ tmp337,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #0	@ D.32823,
	add	r1, ip, #1	@ tmp336, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp336, <variable>.GopFrmCntNoRpt
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, lr, #1	@ tmp340, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp340, <variable>.CodecInfo.Frame_Cnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L213:
	movw	r0, #:lower16:72052	@ tmp274,
	movt	r0, #:upper16:72052	@ tmp274,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L189	@,
.L204:
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	bne	.L189	@,
.L190:
	mov	r8, #0	@ ret,
	b	.L189	@
.L191:
	cmp	r3, #1	@ temp.1275,
	bhi	.L189	@,
	b	.L204	@
.L172:
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #8]	@ prephitmp.1230, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.1230,
	cmpne	r2, #1	@, prephitmp.1230,
	bhi	.L173	@,
	movw	r1, #:lower16:72012	@ tmp184,
	movw	r7, #:lower16:73696	@ tmp186,
	movt	r1, #:upper16:72012	@ tmp184,
	movt	r7, #:upper16:73696	@ tmp186,
	movw	sl, #:lower16:72092	@ tmp188,
	movt	sl, #:upper16:72092	@ tmp188,
	orr	r3, r3, #128	@ tmp185, prephitmp.1224,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	str	r3, [r4, r1]	@ tmp185, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L174	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #:lower16:72088	@ tmp212,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:72088	@ tmp212,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r8, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r8, #204]	@ tmp166, <variable>.p_usrdat
	str	r6, [r8, #192]	@ tmp166, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #196]	@ tmp166, <variable>.p_usrdat
	str	r6, [r8, #200]	@ tmp166, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, sl]	@ tmp166, <variable>.CodecInfo.BwdFsID
	str	r6, [r4, r9]	@ tmp166, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L218	@,
.L174:
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:72052	@ tmp224,
	movt	lr, #:upper16:72052	@ tmp224,
	mov	r6, #0	@ tmp225,
	str	r6, [r4, lr]	@ tmp225, <variable>.CodecInfo.RefNum
	ldr	r2, [r1, #8]	@ prephitmp.1230, <variable>.s32DecMode
	b	.L173	@
.L178:
	mov	r8, #0	@ ret,
	b	.L182	@
.L179:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ prephitmp.1232, <variable>.picture_coding_type
	cmp	r3, #1	@ prephitmp.1232,
	movweq	r3, #:lower16:73708	@ tmp257,
	movteq	r3, #:upper16:73708	@ tmp257,
	moveq	r2, #0	@ tmp258,
	streq	r2, [r4, r3]	@ tmp258, <variable>.PPicFound
	ldreqb	r3, [r5, #22]	@ zero_extendqisi2	@ prephitmp.1232, <variable>.picture_coding_type
	cmp	r3, #3	@ prephitmp.1232,
	beq	.L219	@,
	cmp	r3, #2	@ prephitmp.1232,
	bne	.L175	@,
	movw	r3, #:lower16:73708	@ tmp266,
	movt	r3, #:upper16:73708	@ tmp266,
	mov	r8, #1	@ tmp267,
	str	r8, [r4, r3]	@ tmp267, <variable>.PPicFound
	b	.L182	@
.L177:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1259, <variable>.picture_coding_type
	sub	r0, r3, #2	@ tmp235, temp.1259,
	uxtb	r8, r0	@ tmp236, tmp235
	cmp	r8, #1	@ tmp236,
	bhi	.L175	@,
.L184:
	cmp	r3, #2	@ temp.1263,
	beq	.L220	@,
.L185:
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L178	@,
	movw	r3, #:lower16:72024	@ tmp253,
	movt	r3, #:upper16:72024	@ tmp253,
	mov	r8, #0	@ ret,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, r8	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #0	@, tmp256
	moveq	r0, #1	@, tmp256
	str	r0, [r4, r3]	@ tmp256, <variable>.CodecInfo.Second_Field
	b	.L182	@
.L180:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1263, <variable>.picture_coding_type
	cmp	r3, #1	@ temp.1263,
	bne	.L184	@,
	ldr	r3, [r1, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	r3, #0	@ <variable>.s32firstIdecodedflag,
	beq	.L175	@,
	b	.L185	@
.L214:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [lr, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r1, r3	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L193	@,
	b	.L171	@
.L216:
	movw	r3, #:lower16:72176	@ tmp308,
	movt	r3, #:upper16:72176	@ tmp308,
	ldrb	lr, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:72172	@ tmp315,
	ldr	r0, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:72172	@ tmp315,
	ldrb	r1, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	ip, r0, #1	@ tmp309, <variable>.GopFrmCnt,
	add	r0, ip, lr	@ tmp312, tmp309, <variable>.repeat_first_field
	add	lr, r0, r1	@ D.32973, tmp312, <variable>.top_field_first
	str	lr, [r4, r3]	@ D.32973, <variable>.GopFrmCnt
	mov	r1, lr, asl #1	@ tmp316, D.32973,
	str	r1, [r4, r2]	@ tmp316, <variable>.GopFldCnt
	b	.L197	@
.L220:
	movw	lr, #45329	@ tmp248,
	ldrb	r6, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r6, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L185	@,
	movw	r7, #45328	@ tmp250,
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastDecPicCodingType, <variable>.CodecInfo.LastDecPicCodingType
	cmp	ip, #1	@ <variable>.CodecInfo.LastDecPicCodingType,
	bne	.L185	@,
	b	.L175	@
.L219:
	movw	lr, #:lower16:73708	@ tmp259,
	movt	lr, #:upper16:73708	@ tmp259,
	ldr	r8, [r4, lr]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r8, #0	@ <variable>.PPicFound,
	bne	.L175	@,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	ip, #3	@ <variable>.picture_structure,
	beq	.L178	@,
	movw	r0, #:lower16:72024	@ tmp262,
	movt	r0, #:upper16:72024	@ tmp262,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r7, r2, #1	@ tmp265, <variable>.CodecInfo.Second_Field
	movcc	r7, #0	@ tmp265
	str	r7, [r4, r0]	@ tmp265, <variable>.CodecInfo.Second_Field
	b	.L182	@
.L217:
	movw	r2, #:lower16:72176	@ tmp318,
	movt	r2, #:upper16:72176	@ tmp318,
	movw	r3, #:lower16:72172	@ tmp322,
	movt	r3, #:upper16:72172	@ tmp322,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	lr, [r4, r3]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	r0, ip, #1	@ tmp321, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ tmp321, <variable>.GopFrmCnt
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r1, lr, #2	@ tmp324, <variable>.GopFldCnt,
	add	lr, r1, ip	@ tmp327, tmp324, <variable>.repeat_first_field
	str	lr, [r4, r3]	@ tmp327, <variable>.GopFldCnt
	b	.L197	@
.L218:
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.32866, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.32866, <variable>.CodecInfo.FwdFsID
	b	.L174	@
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MPEG2DEC_RecycleImage
	.type	MPEG2DEC_RecycleImage, %function
MPEG2DEC_RecycleImage:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:73696	@ tmp138,
	movt	r4, #:upper16:73696	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L222	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #200]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #204]	@ tmp145, <variable>.p_usrdat
.L222:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MPEG2DEC_RecycleImage, .-MPEG2DEC_RecycleImage
	.align	2
	.global	MPEG2DEC_Init
	.type	MPEG2DEC_Init, %function
MPEG2DEC_Init:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:73688	@ tmp139,
	movt	r5, #:upper16:73688	@ tmp139,
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:73720	@,
	movt	r1, #:upper16:73720	@,
	ldr	r7, [r0, r5]	@ D.34394, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #72704	@, pCtx,
	add	r0, r0, #640	@,,
	add	r8, r4, #72704	@ tmp146, pCtx,
	str	r7, [r4, r5]	@ D.34394, <variable>.ImageQue.ResetMagicWord
	movw	r7, #:lower16:73340	@ tmp144,
	bl	ResetVoQueue	@
	movw	r3, #:lower16:73336	@ tmp147,
	movw	lr, #:lower16:73708	@ tmp150,
	movt	r3, #:upper16:73336	@ tmp147,
	movt	lr, #:upper16:73708	@ tmp150,
	movw	r2, #:lower16:72024	@ tmp158,
	movt	r2, #:upper16:72024	@ tmp158,
	movt	r7, #:upper16:73340	@ tmp144,
	movw	ip, #:lower16:73714	@ tmp152,
	movw	r1, #:lower16:73715	@ tmp155,
	movt	ip, #:upper16:73714	@ tmp152,
	movt	r1, #:upper16:73715	@ tmp155,
	movw	r0, #:lower16:72068	@ tmp163,
	movt	r0, #:upper16:72068	@ tmp163,
	mov	r5, r8	@ tmp149, tmp146
	add	r5, r5, #444	@ tmp149, tmp149,
	str	r5, [r4, r3]	@ tmp149, <variable>.pSyntaxInfNew
	mov	r3, #0	@ tmp151,
	str	r3, [r4, lr]	@ tmp151, <variable>.PPicFound
	mov	lr, #1	@ tmp153,
	str	lr, [r4, r2]	@ tmp153, <variable>.CodecInfo.Second_Field
	movw	r2, #45329	@ tmp160,
	strb	r3, [r4, r1]	@ tmp151, <variable>.DSDNeedFlushFrame
	add	r8, r8, #256	@ tmp146, tmp146,
	str	r3, [r4, r0]	@ tmp151, <variable>.CodecInfo.HDRState
	mov	r5, #3	@ tmp161,
	str	r6, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:72060	@ tmp167,
	strb	r5, [r4, r2]	@ tmp161, <variable>.CodecInfo.Last_FieldStruct
	movt	r1, #:upper16:72060	@ tmp167,
	str	r8, [r4, r7]	@ tmp146, <variable>.pSyntaxInfOld
	movw	r2, #:lower16:72000	@ tmp165,
	strb	lr, [r4, ip]	@ tmp153, <variable>.DSDNeedClearQue
	movt	r2, #:upper16:72000	@ tmp165,
	ldr	ip, [r6, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, r4	@, pCtx
	str	r3, [r4, r1]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	ip, [r4, r2]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:73696	@ tmp169,
	movt	r3, #:upper16:73696	@ tmp169,
	cmn	r0, #1	@ D.34407,
	mov	r2, r0	@ D.34407,
	str	r2, [r4, r3]	@ D.34407, <variable>.ChanID
	mvneq	r0, #19	@,,
	movne	r0, #1	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MPEG2DEC_Init, .-MPEG2DEC_Init
	.align	2
	.global	extra_bit_information
	.type	extra_bit_information, %function
extra_bit_information:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	mov	r5, #0	@ Byte_Count,
.L229:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L230	@,
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	bgt	.L229	@,
.L230:
	mov	r0, r5	@, Byte_Count
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	extra_bit_information, .-extra_bit_information
	.align	2
	.global	picture_coding_extension
	.type	picture_coding_extension, %function
picture_coding_extension:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r7, #:lower16:72012	@ tmp165,
	movt	r7, #:upper16:72012	@ tmp165,
	add	r4, r0, #71680	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	movw	lr, #:lower16:73336	@ tmp164,
	ldr	r2, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	lr, #:upper16:73336	@ tmp164,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #4	@,
	orr	r5, r2, #1048576	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	r5, [r0, r7]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pBs
	ldr	r5, [r6, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1419,
	strb	r0, [r5, #4]	@ temp.1419, <variable>.f_code
	sub	ip, r0, #10	@ tmp170, temp.1419,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r0, #0	@ temp.1419,
	cmpne	r1, #4	@, tmp172,
	mov	r0, r4	@, pBs
	ldrls	r1, [r6, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r1, r1, #16	@ tmp182, <variable>.CodecInfo.StreamIntegrality,
	strls	r1, [r6, r7]	@ tmp182, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #4	@,
	bl	BsGet	@
	mov	r1, #4	@,
	uxtb	r2, r0	@ temp.1427,
	strb	r2, [r5, #5]	@ temp.1427, <variable>.f_code
	sub	r3, r2, #10	@ tmp184, temp.1427,
	mov	r0, r4	@, pBs
	uxtb	ip, r3	@ tmp186, tmp184
	cmp	r2, #0	@ temp.1427,
	cmpne	ip, #4	@, tmp186,
	movwls	ip, #:lower16:72012	@ tmp193,
	movtls	ip, #:upper16:72012	@ tmp193,
	ldrls	r2, [r6, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r2, r2, #16	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	strls	r2, [r6, ip]	@ tmp196, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1412,
	strb	r0, [r5, #6]	@ temp.1412, <variable>.f_code
	sub	r1, r0, #10	@ tmp198, temp.1412,
	uxtb	r3, r1	@ tmp200, tmp198
	cmp	r0, #0	@ temp.1412,
	cmpne	r3, #4	@, tmp200,
	bhi	.L237	@,
	movw	r1, #:lower16:72012	@ tmp213,
	movt	r1, #:upper16:72012	@ tmp213,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp216, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp216, <variable>.CodecInfo.StreamIntegrality
.L237:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34292,
	strb	r0, [r5, #7]	@ D.34292, <variable>.f_code
	sub	ip, r0, #10	@ tmp218, D.34292,
	uxtb	r3, ip	@ tmp220, tmp218
	cmp	r0, #0	@ D.34292,
	cmpne	r3, #4	@, tmp220,
	bhi	.L241	@,
	movw	r3, #:lower16:72012	@ tmp207,
	movt	r3, #:upper16:72012	@ tmp207,
	ldr	r0, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #16	@ tmp210, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r6, r3]	@ tmp210, <variable>.CodecInfo.StreamIntegrality
.L241:
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #8]	@, <variable>.intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.34304,
	strb	ip, [r5, #9]	@ D.34304, <variable>.picture_structure
	cmp	ip, #0	@ D.34304,
	bne	.L245	@,
	movw	r1, #:lower16:72012	@ tmp227,
	movt	r1, #:upper16:72012	@ tmp227,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp230, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp230, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L245:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #10]	@, <variable>.top_field_first
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.frame_pred_frame_dct
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.concealment_motion_vectors
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.q_scale_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.intra_vlc_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #15]	@, <variable>.alternate_scan
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #16]	@, <variable>.repeat_first_field
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.chroma_420_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.progressive_frame
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.34327,
	strb	r0, [r5, #3]	@ D.34327, <variable>.composite_display_flag
	cmp	r0, #0	@ D.34327,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #19]	@, <variable>.v_axis
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #20]	@, <variable>.field_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #7	@,
	strb	r0, [r5, #21]	@, <variable>.sub_carrier
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #32]	@, <variable>.burst_amplitude
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r5, #36]	@, <variable>.sub_carrier_phase
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	picture_coding_extension, .-picture_coding_extension
	.align	2
	.global	picture_display_extension
	.type	picture_display_extension, %function
picture_display_extension:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r7, #:lower16:73336	@ tmp145,
	movt	r7, #:upper16:73336	@ tmp145,
	movw	r2, #:lower16:72012	@ tmp146,
	movt	r2, #:upper16:72012	@ tmp146,
	mov	sl, r0	@ pCtx, pCtx
	ldr	r5, [r0, r7]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r4, r0, #71680	@ pBs, pCtx,
	ldr	r1, [r0, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	add	r4, r4, #576	@ pBs, pBs,
	orr	r0, r1, #2097152	@ tmp149, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r2]	@ tmp149, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r3, #0	@ <variable>.progressive_sequence,
	beq	.L247	@,
	ldrb	r8, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r8, #0	@ <variable>.repeat_first_field,
	bne	.L271	@,
.L248:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L251:
	sub	r2, r8, #1	@ tmp166, number_of_frame_center_offsets,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	and	r7, r2, #1	@ tmp168, tmp166,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L270	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L270	@,
	mov	r6, #1	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1461, pSyntaxInfNew,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp168,
	beq	.L255	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L270	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L270	@,
	mov	r6, #2	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1461, ivtmp.1461,
	bgt	.L255	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L252:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r7, #4	@ ivtmp.1461, tmp170,
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L270	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L270	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L270	@,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	ble	.L272	@,
.L255:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r6, r6, r1	@ tmp169, i,
	add	r7, r5, #4	@ tmp170, ivtmp.1461,
	add	r6, r6, r1	@ i, tmp169,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L252	@,
.L270:
	movw	r1, #:lower16:72012	@ tmp159,
	movt	r1, #:upper16:72012	@ tmp159,
	ldr	ip, [sl, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, ip, #32	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r1]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L247:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	bne	.L248	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r3, #0	@ <variable>.repeat_first_field,
	beq	.L250	@,
.L249:
	mov	r8, #3	@ number_of_frame_center_offsets,
	b	.L251	@
.L271:
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	cmp	ip, #0	@ <variable>.top_field_first,
	bne	.L249	@,
.L250:
	mov	r8, #2	@ number_of_frame_center_offsets,
	b	.L251	@
.L272:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	picture_display_extension, .-picture_display_extension
	.align	2
	.global	quant_matrix_extension
	.type	quant_matrix_extension, %function
quant_matrix_extension:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	movw	r3, #:lower16:73336	@ tmp179,
	movt	r3, #:upper16:73336	@ tmp179,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	ldr	sl, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	cmp	r0, #1	@ D.34202,
	str	r0, [sl, #76]	@ D.34202, <variable>.load_intra_quantizer_matrix
	beq	.L291	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34212,
	str	r0, [sl, #80]	@ D.34212, <variable>.load_non_intra_quantizer_matrix
	beq	.L292	@,
.L276:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L278	@,
	mov	r5, #0	@ i.1523,
.L279:
	mov	r1, #8	@,
	add	r5, r5, #1	@ tmp200, i.1523,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i.1523, tmp200,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1523,
	bne	.L279	@,
.L278:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r5, #0	@ i.1524,
.L281:
	add	lr, r5, #1	@ tmp199, i.1524,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	add	r5, lr, #1	@ i.1524, tmp199,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1524,
	bne	.L281	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L291:
	movw	r7, #:lower16:.LANCHOR1	@ tmp194,
	movt	r7, #:upper16:.LANCHOR1	@ tmp194,
	mov	r6, #0	@ i,
.L275:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ D.34209, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp202, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp181, D.34209,
	add	r6, r2, #1	@ i, tmp202,
	add	r3, r8, #150	@ tmp181, tmp181,
	add	ip, r5, r3, asl #2	@, tmp185, pCtx, tmp181,
	str	r0, [ip, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ D.34209, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i,
	add	r1, r8, #17920	@ tmp207, D.34209,
	add	r8, r1, #150	@ tmp207, tmp207,
	add	r8, r5, r8, asl #2	@, tmp209, pCtx, tmp207,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L275	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34212,
	str	r0, [sl, #80]	@ D.34212, <variable>.load_non_intra_quantizer_matrix
	bne	.L276	@,
.L292:
	movw	r7, #:lower16:.LANCHOR1	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp211,
	mov	r6, #0	@ i.1522,
.L277:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ temp.1521, zigzag
	bl	BsGet	@
	add	ip, r6, #1	@ tmp201, i.1522,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp188, temp.1521,
	add	r6, ip, #1	@ i.1522, tmp201,
	add	r2, r8, #214	@ tmp188, tmp188,
	add	r3, r5, r2, asl #2	@, tmp192, pCtx, tmp188,
	str	r0, [r3, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, ip]	@ zero_extendqisi2	@ temp.1521, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i.1522,
	add	r2, r8, #17920	@ tmp216, temp.1521,
	add	r1, r2, #214	@ tmp216, tmp216,
	add	r8, r5, r1, asl #2	@, tmp218, pCtx, tmp216,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L277	@,
	b	.L276	@
	.fnend
	.size	quant_matrix_extension, .-quant_matrix_extension
	.align	2
	.global	sequence_display_extension
	.type	sequence_display_extension, %function
sequence_display_extension:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:72012	@ tmp147,
	movt	r2, #:upper16:72012	@ tmp147,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r0, [r0, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r3, #:lower16:73336	@ tmp146,
	movt	r3, #:upper16:73336	@ tmp146,
	orr	r1, r0, #262144	@ tmp150, <variable>.CodecInfo.StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r1, [r5, r2]	@ tmp150, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #3	@,
	ldr	r6, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #128]	@, <variable>.video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.34165,
	str	r0, [r6, #132]	@ D.34165, <variable>.color_description
	bne	.L298	@,
.L294:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #148]	@, <variable>.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L295	@,
	movw	lr, #:lower16:72012	@ tmp151,
	movt	lr, #:upper16:72012	@ tmp151,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, r3, #4	@ tmp154, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, lr]	@ tmp154, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L295:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r6, #152]	@, <variable>.display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L298:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r6, #136]	@, <variable>.color_primaries
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r6, #140]	@, <variable>.transfer_characteristics
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r6, #144]	@, <variable>.matrix_coefficients
	b	.L294	@
	.fnend
	.size	sequence_display_extension, .-sequence_display_extension
	.align	2
	.global	sequence_extension
	.type	sequence_extension, %function
sequence_extension:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r7, #:lower16:72012	@ tmp157,
	movt	r7, #:upper16:72012	@ tmp157,
	add	r8, r0, #71680	@ pBs, pCtx,
	add	r8, r8, #576	@ pBs, pBs,
	movw	r2, #:lower16:72008	@ tmp161,
	ldr	r4, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	r2, #:upper16:72008	@ tmp161,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #:lower16:73336	@ tmp156,
	movt	r3, #:upper16:73336	@ tmp156,
	orr	r1, r4, #131072	@ tmp160, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r0, r7]	@ tmp160, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #8	@,
	mov	r0, #0	@ tmp162,
	str	r0, [r5, r2]	@ tmp162, <variable>.CodecInfo.NewSeqInited
	mov	r0, r8	@, pBs
	ldr	r4, [r5, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #124]	@, <variable>.profile_and_level_indication
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #27]	@, <variable>.progressive_sequence
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #28]	@, <variable>.chroma_format
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	mov	r9, r0	@ D.34080,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	sl, r0	@ D.34081,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.34082,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L300	@,
	ldr	lr, [r5, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #2	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, r7]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L300:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.34087,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #29]	@, <variable>.low_delay
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #30]	@, <variable>.frame_rate_extension_n
	mov	r0, r8	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.frame_rate_extension_n, <variable>.frame_rate_extension_n
	uxtb	r2, r0	@ D.34093,
	add	r0, ip, #1	@, <variable>.frame_rate_extension_n,
	add	r1, r2, #1	@, D.34093,
	strb	r2, [r4, #31]	@ D.34093, <variable>.frame_rate_extension_d
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #88]	@ <variable>.frame_rate_code, <variable>.frame_rate_code
	movw	r3, #:lower16:.LANCHOR0	@ tmp179,
	movt	r3, #:upper16:.LANCHOR0	@ tmp179,
	ldr	r2, [r4, #124]	@ D.34107, <variable>.profile_and_level_indication
	add	ip, r3, r1, asl #2	@, tmp183, tmp179, <variable>.frame_rate_code,
	tst	r2, #128	@ D.34107,
	ldr	r1, [ip, #1100]	@ tmp185, frame_rate_Table
	mul	r3, r1, r0	@ tmp186, tmp185,
	str	r3, [r4, #72]	@ tmp186, <variable>.frame_rate
	bne	.L310	@,
	and	ip, r2, #15	@ tmp194, D.34107,
	ubfx	r1, r2, #4, #3	@ tmp192, D.34107,,
	str	ip, [r4, #44]	@ tmp194, <variable>.level
	str	r1, [r4, #40]	@ tmp192, <variable>.profile
.L303:
	ldr	ip, [r4, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	ldr	r3, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	mov	r1, ip, asl #20	@ tmp196, <variable>.horizontal_size,
	mov	r0, r3, asl #20	@ tmp200, <variable>.vertical_size,
	mov	lr, r1, lsr #20	@ tmp196, tmp196,
	orr	r9, lr, r9, asl #12	@, prephitmp.1563, tmp196, D.34080,
	mov	r2, r0, lsr #20	@ tmp200, tmp200,
	cmp	r9, #0	@ prephitmp.1563,
	orr	sl, r2, sl, asl #12	@, D.34124, tmp200, D.34081,
	str	r9, [r4, #48]	@ prephitmp.1563, <variable>.horizontal_size
	str	sl, [r4, #52]	@ D.34124, <variable>.vertical_size
	beq	.L304	@,
	cmp	sl, #0	@ D.34124,
	bne	.L305	@,
.L304:
	movw	r0, #:lower16:72012	@ tmp203,
	movt	r0, #:upper16:72012	@ tmp203,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r9, r2, #1	@ tmp206, <variable>.CodecInfo.StreamIntegrality,
	str	r9, [r5, r0]	@ tmp206, <variable>.CodecInfo.StreamIntegrality
	ldr	r9, [r4, #48]	@ prephitmp.1563, <variable>.horizontal_size
.L305:
	cmp	r9, #8192	@ prephitmp.1563,
	bhi	.L306	@,
	ldr	lr, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	cmp	lr, #8192	@ <variable>.vertical_size,
	bls	.L307	@,
.L306:
	movw	r3, #:lower16:72012	@ tmp208,
	movt	r3, #:upper16:72012	@ tmp208,
	movw	ip, #:lower16:g_event_report	@ tmp212,
	movt	ip, #:upper16:g_event_report	@ tmp212,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #1	@ tmp211, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r5, r3]	@ tmp211, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.489, g_event_report
	cmp	r3, #0	@ g_event_report.489,
	beq	.L307	@,
	movw	lr, #:lower16:73696	@ tmp213,
	movt	lr, #:upper16:73696	@ tmp213,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.489
.L307:
	ldr	r3, [r4, #92]	@ <variable>.bit_rate_value, <variable>.bit_rate_value
	mov	r1, #400	@ tmp217,
	ldr	r0, [r4, #40]	@ <variable>.profile, <variable>.profile
	add	r6, r3, r6, asl #18	@, D.34138, <variable>.bit_rate_value, D.34082,
	str	r6, [r4, #92]	@ D.34138, <variable>.bit_rate_value
	sub	r2, r0, #4	@ tmp222, <variable>.profile,
	ldr	ip, [r4, #96]	@ <variable>.vbv_buffer_size, <variable>.vbv_buffer_size
	mul	r6, r1, r6	@ tmp218, tmp217, D.34138
	cmp	r2, #1	@ tmp222,
	add	r7, ip, r7, asl #10	@, tmp221, <variable>.vbv_buffer_size, D.34087,
	str	r7, [r4, #96]	@ tmp221, <variable>.vbv_buffer_size
	str	r6, [r4, #68]	@ tmp218, <variable>.bit_rate
	bls	.L308	@,
	movw	lr, #:lower16:g_event_report	@ tmp224,
	movt	lr, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [lr, #0]	@ g_event_report.1581, g_event_report
	cmp	r3, #0	@ g_event_report.1581,
	beq	.L308	@,
	movw	ip, #:lower16:73696	@ tmp225,
	movt	ip, #:upper16:73696	@ tmp225,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1581
.L308:
	ldr	r1, [r4, #44]	@ <variable>.level, <variable>.level
	sub	r2, r1, #4	@ tmp227, <variable>.level,
	cmp	r2, #6	@ tmp227,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp229,
	movt	r0, #:upper16:g_event_report	@ tmp229,
	ldr	r3, [r0, #0]	@ g_event_report.1583, g_event_report
	cmp	r3, #0	@ g_event_report.1583,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	lr, #:lower16:73696	@ tmp230,
	movt	lr, #:upper16:73696	@ tmp230,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1583
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L310:
	and	r0, r2, #15	@ tmp188, D.34107,
	cmp	r0, #5	@ tmp188,
	moveq	r3, #133	@ tmp189,
	moveq	lr, #8	@ tmp190,
	streq	r3, [r4, #40]	@ tmp189, <variable>.profile
	streq	lr, [r4, #44]	@ tmp190, <variable>.level
	b	.L303	@
	.fnend
	.size	sequence_extension, .-sequence_extension
	.align	2
	.global	extension
	.type	extension, %function
extension:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:73336	@ tmp137,
	movt	ip, #:upper16:73336	@ tmp137,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, ip]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	add	r1, r0, #71680	@, pCtx,
	mov	r2, #0	@ tmp138,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r1, #576	@,,
	str	r2, [r3, #152]	@ tmp138, <variable>.display_vertical_size
	mov	r1, #4	@,
	str	r2, [r3, #128]	@ tmp138, <variable>.video_format
	str	r2, [r3, #132]	@ tmp138, <variable>.color_description
	str	r2, [r3, #136]	@ tmp138, <variable>.color_primaries
	str	r2, [r3, #140]	@ tmp138, <variable>.transfer_characteristics
	str	r2, [r3, #144]	@ tmp138, <variable>.matrix_coefficients
	str	r2, [r3, #148]	@ tmp138, <variable>.display_horizontal_size
	bl	BsGet	@
	sub	r0, r0, #1	@ tmp147,,
	cmp	r0, #9	@ tmp147,
	ldrls	pc, [pc, r0, asl #2]	@ tmp147
	b	.L312	@
.L322:
	.word	.L313
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L317
	.word	.L312
	.word	.L318
	.word	.L319
	.word	.L320
	.word	.L321
.L316:
	mov	r0, r4	@, pCtx
	bl	copyright_extension	@
.L312:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L321:
	mov	r0, r4	@, pCtx
	bl	picture_temporal_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L313:
	mov	r0, r4	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L314:
	mov	r0, r4	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L315:
	mov	r0, r4	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L317:
	mov	r0, r4	@, pCtx
	bl	sequence_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L318:
	mov	r0, r4	@, pCtx
	bl	picture_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L319:
	mov	r0, r4	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L320:
	mov	r0, r4	@, pCtx
	bl	picture_spatial_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	extension, .-extension
	.align	2
	.global	picture_header
	.type	picture_header, %function
picture_header:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r6, #:lower16:72012	@ tmp146,
	movt	r6, #:upper16:72012	@ tmp146,
	add	r4, r0, #71680	@ pBs, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r1, [r0, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	lr, #:lower16:73336	@ tmp145,
	movt	lr, #:upper16:73336	@ tmp145,
	bic	r0, r1, #3145728	@ tmp148, <variable>.CodecInfo.StreamIntegrality,
	mov	r1, #10	@,
	bic	r3, r0, #56	@ tmp148, tmp148,
	mov	r0, r4	@, pBs
	orr	ip, r3, #524288	@ tmp151, tmp148,
	str	ip, [r5, r6]	@ tmp151, <variable>.CodecInfo.StreamIntegrality
	ldr	r6, [r5, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r6, #156]	@, <variable>.temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r6, #22]	@, <variable>.picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	r1, r2, #2	@ tmp155, <variable>.picture_coding_type,
	uxtb	r3, r1	@ tmp156, tmp155
	cmp	r3, #1	@ tmp156,
	str	r0, [r6, #160]	@, <variable>.vbv_delay
	bls	.L327	@,
.L325:
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L327:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r6, #23]	@, <variable>.full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r7, #3	@ <variable>.picture_coding_type,
	strb	r0, [r6, #24]	@, <variable>.forward_f_code
	bne	.L325	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, <variable>.picture_coding_type
	strb	r0, [r6, #25]	@, <variable>.full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r6, #26]	@, <variable>.backward_f_code
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	picture_header, .-picture_header
	.align	2
	.global	group_of_pictures_header
	.type	group_of_pictures_header, %function
group_of_pictures_header:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #71680	@ pBs, pCtx,
	movw	r7, #:lower16:73336	@ tmp165,
	add	r6, r0, #576	@ pBs, pBs,
	movt	r7, #:upper16:73336	@ tmp165,
	mov	r1, #1	@,
	add	r5, r4, #71680	@ tmp148, pCtx,
	mov	r0, r6	@, pBs
	ldr	sl, [r4, r7]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #5	@,
	movw	r9, #:lower16:72176	@ tmp170,
	movw	r7, #:lower16:72172	@ tmp171,
	movt	r9, #:upper16:72176	@ tmp170,
	movt	r7, #:upper16:72172	@ tmp171,
	mov	r8, #0	@ tmp159,
	strb	r0, [sl, #2]	@, <variable>.drop_flag
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [sl, #100]	@, <variable>.hour
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #104]	@, <variable>.minute
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r6	@, pBs
	mov	r1, #6	@,
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [sl, #108]	@, <variable>.sec
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #112]	@, <variable>.frame
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #116]	@, <variable>.closed_gop
	mov	r0, r6	@, pBs
	bl	BsGet	@
	add	r2, r4, #71680	@ tmp149, pCtx,
	add	ip, r2, #464	@ tmp149, tmp149,
	mov	r1, r5	@ tmp153, tmp148
	add	r3, r1, #476	@ tmp153, tmp153,
	add	r5, r5, #452	@ tmp148, tmp148,
	movw	r6, #:lower16:72168	@ tmp169,
	movt	r6, #:upper16:72168	@ tmp169,
	add	fp, r4, r6	@ tmp157, pCtx, tmp169
	str	r0, [sl, #120]	@, <variable>.broken_link
	ldmia	ip, {r0, r1, r2}	@ tmp149,,,
	stmia	r5, {r0, r1, r2}	@ tmp148,,,
	ldmia	r3, {r0, r1, r2}	@ tmp153,,,
	stmia	ip, {r0, r1, r2}	@ tmp149,,,
	ldmia	fp, {r0, r1, r2}	@ tmp157,,,
	stmia	r3, {r0, r1, r2}	@ tmp153,,,
	str	r8, [r4, r7]	@ tmp159, <variable>.GopFldCnt
	str	r8, [r4, r6]	@ tmp159, <variable>.GopFrmCntNoRpt
	str	r8, [r4, r9]	@ tmp159, <variable>.GopFrmCnt
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	group_of_pictures_header, .-group_of_pictures_header
	.align	2
	.global	sequence_header
	.type	sequence_header, %function
sequence_header:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	movw	r6, #:lower16:72012	@ tmp164,
	movw	r2, #:lower16:72008	@ tmp166,
	movt	r6, #:upper16:72012	@ tmp164,
	movt	r2, #:upper16:72008	@ tmp166,
	mov	r4, r0	@ pCtx, pCtx
	movw	r3, #:lower16:73336	@ tmp163,
	movt	r3, #:upper16:73336	@ tmp163,
	mov	r1, #12	@,
	mov	sl, #65536	@ tmp165,
	str	sl, [r0, r6]	@ tmp165, <variable>.CodecInfo.StreamIntegrality
	mov	r0, #0	@ tmp167,
	str	r0, [r4, r2]	@ tmp167, <variable>.CodecInfo.NewSeqInited
	mov	r0, r5	@, pBs
	ldr	sl, [r4, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #12	@,
	str	r0, [sl, #48]	@, <variable>.horizontal_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #52]	@, <variable>.vertical_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [sl, #84]	@, <variable>.aspect_ratio_information
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	str	r0, [sl, #88]	@, <variable>.frame_rate_code
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #92]	@, <variable>.bit_rate_value
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #10	@,
	cmp	r0, #0	@,
	mov	r0, r5	@, pBs
	ldreq	r3, [r4, r6]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orreq	r3, r3, #1	@ tmp171, <variable>.CodecInfo.StreamIntegrality,
	streq	r3, [r4, r6]	@ tmp171, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [sl, #96]	@, <variable>.vbv_buffer_size
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [sl, #1]	@, <variable>.constrained_parameters_flag
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33990,
	str	r0, [sl, #76]	@ D.33990, <variable>.load_intra_quantizer_matrix
	beq	.L349	@,
	add	lr, r4, #71680	@ ivtmp.1720, pCtx,
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	add	r1, lr, #604	@ ivtmp.1720, ivtmp.1720,
	add	ip, r6, #64	@ tmp197, tmp198,
	mov	r3, #0	@ i.1723,
.L335:
	ldrb	lr, [ip, r3]	@ zero_extendqisi2	@ tmp183, default_intra_quantizer_matrix
	add	r0, r3, #1	@ tmp206, i.1723,
	mov	r2, r1	@ tmp207, ivtmp.1720
	add	r3, r0, #1	@ i.1723, tmp206,
	cmp	r3, #64	@ i.1723,
	str	lr, [r2], #4	@ tmp183, <variable>.intra_quantizer_matrix
	ldrb	r0, [ip, r0]	@ zero_extendqisi2	@ tmp218, default_intra_quantizer_matrix
	str	r0, [r1, #4]	@ tmp218, <variable>.intra_quantizer_matrix
	add	r1, r2, #4	@ ivtmp.1720, tmp207,
	bne	.L335	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34003,
	str	r0, [sl, #80]	@ D.34003, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1704,
	movne	ip, #16	@ tmp201,
	beq	.L350	@,
.L339:
	add	r0, r3, #4	@ tmp204, ivtmp.1704,
	add	r3, r4, r3	@ tmp191, pCtx, ivtmp.1704
	add	lr, r4, r0	@ tmp228, pCtx, tmp204
	add	r1, r3, #71680	@ tmp192, tmp191,
	add	r2, lr, #71680	@ tmp230, tmp228,
	add	r3, r0, #4	@ ivtmp.1704, tmp204,
	add	lr, r1, #860	@ tmp192, tmp192,
	add	r0, r2, #860	@ tmp230, tmp230,
	cmp	r3, #256	@ ivtmp.1704,
	str	ip, [lr, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	str	ip, [r0, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	bne	.L339	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L349:
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	mov	r7, #0	@ i,
.L333:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ D.33997, zigzag
	bl	BsGet	@
	add	ip, r7, #1	@ tmp205, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp174, D.33997,
	add	r7, ip, #1	@ i, tmp205,
	add	r2, r8, #150	@ tmp174, tmp174,
	add	r3, r4, r2, asl #2	@, tmp178, pCtx, tmp174,
	str	r0, [r3, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ D.33997, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i,
	add	r1, r8, #17920	@ tmp212, D.33997,
	add	r8, r1, #150	@ tmp212, tmp212,
	add	r8, r4, r8, asl #2	@, tmp214, pCtx, tmp212,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L333	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34003,
	str	r0, [sl, #80]	@ D.34003, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1704,
	movne	ip, #16	@ tmp201,
	bne	.L339	@,
.L350:
	mov	r7, #0	@ i.1726,
.L337:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ temp.1725, zigzag
	bl	BsGet	@
	add	r3, r7, #1	@ tmp203, i.1726,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp185, temp.1725,
	add	r7, r3, #1	@ i.1726, tmp203,
	add	ip, r8, #214	@ tmp185, tmp185,
	add	r2, r4, ip, asl #2	@, tmp189, pCtx, tmp185,
	str	r0, [r2, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r3]	@ zero_extendqisi2	@ temp.1725, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i.1726,
	add	ip, r8, #17920	@ tmp223, temp.1725,
	add	r1, ip, #214	@ tmp223, tmp223,
	add	r8, r4, r1, asl #2	@, tmp225, pCtx, tmp223,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L337	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	sequence_header, .-sequence_header
	.align	2
	.global	next_start_code
	.type	next_start_code, %function
next_start_code:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r4	@, pBs
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r6, r0	@ pcode,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r7, r0	@ D.33910,
	add	r2, r0, #7	@ tmp157, D.33910,
	cmp	r7, #0	@ D.33910,
	mov	r0, r6	@, pcode
	movlt	r7, r2	@ D.33910, tmp157
	mov	r1, r7, asr #3	@, D.33910,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp159,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp162, D.33916,
	cmp	r0, #0	@ D.33916,
	movlt	r0, r3	@ D.33916, tmp162
	mov	r3, r0, asr #3	@ tmp163, D.33916,
	sub	r7, r3, #3	@ remain_byte, tmp163,
	cmp	r7, #0	@ remain_byte,
	ble	.L352	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r3, #1	@ tmp232, tmp163,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L353	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #1	@ i,
	cmp	r7, r6	@ remain_byte, i
	ble	.L352	@,
	cmp	r8, #0	@ tmp232,
	beq	.L354	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@,
	beq	.L353	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #2	@ i,
	cmp	r7, r6	@ remain_byte, i
	bgt	.L354	@,
	b	.L352	@
.L379:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L353	@,
	bl	BsSkip	@
	cmp	r7, r6	@ remain_byte, i
	ble	.L352	@,
.L354:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r6, r6, #1	@ tmp233, i,
	mov	r1, #8	@,
	add	r6, r6, #1	@ i, tmp233,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L379	@,
.L353:
	mov	r0, #1	@ D.33921,
.L357:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L352:
	movw	r6, #:lower16:71964	@ tmp164,
	movt	r6, #:upper16:71964	@ tmp164,
	ldrsb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L355	@,
	movw	r7, #:lower16:71965	@ tmp166,
	movt	r7, #:upper16:71965	@ tmp166,
	ldrsb	r0, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r0, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L355	@,
	movw	sl, #:lower16:71988	@ tmp168,
	movt	sl, #:upper16:71988	@ tmp168,
	ldr	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	beq	.L355	@,
	movw	lr, #:lower16:71984	@ tmp174,
	movt	lr, #:upper16:71984	@ tmp174,
	movw	r9, #:lower16:71972	@ tmp170,
	movw	fp, #:lower16:71968	@ tmp173,
	movt	r9, #:upper16:71972	@ tmp170,
	movt	fp, #:upper16:71968	@ tmp173,
	ldr	r1, [r5, lr]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r3, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	ip, r1, #3	@ tmp175, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, ip, r3	@, tmp175, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	lr, [sp, #4]	@,
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	movw	r3, #:lower16:71980	@ tmp186,
	movt	r3, #:upper16:71980	@ tmp186,
	ldr	r0, [sp, #4]	@,
	ldr	r2, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	lr, #:lower16:71976	@ tmp191,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71976	@ tmp191,
	ldr	r1, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r2, r2, #3	@, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r2, [r5, r0]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r0, ip, #3	@ D.33940, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	sub	r1, r1, #3	@ D.33941, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r0, [r5, lr]	@ D.33940, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r1, [r5, fp]	@ D.33941, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	mov	r0, r4	@, pBs
	str	r8, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	fp, #1	@,
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	strb	fp, [r5, r6]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	fp, #1	@,
	str	r8, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	strb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r4	@, pBs
	strb	fp, [r5, r7]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsToNextByte	@
	mov	r0, r4	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r5, r0	@ pcode.1759,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r3, r0	@ D.33943,
	add	r2, r0, #7	@ tmp214, D.33943,
	cmp	r3, #0	@ D.33943,
	mov	r0, r5	@, pcode.1759
	movlt	r3, r2	@ D.33943, tmp214
	mov	r1, r3, asr #3	@, D.33943,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp216,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.33946,
	add	ip, r0, #7	@ tmp219, D.33946,
	movlt	r0, ip	@ D.33946, tmp219
	mov	r3, r0, asr #3	@ tmp220, D.33946,
	sub	r6, r3, #3	@ remain_byte.1763, tmp220,
	cmp	r6, #0	@ remain_byte.1763,
	ble	.L355	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp228, tmp220,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L353	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.1758,
	cmp	r6, r5	@ remain_byte.1763, i.1758
	ble	.L355	@,
	cmp	r7, #0	@ tmp228,
	beq	.L356	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@,
	beq	.L353	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.1758,
	cmp	r6, r5	@ remain_byte.1763, i.1758
	bgt	.L356	@,
	b	.L355	@
.L380:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L353	@,
	bl	BsSkip	@
	cmp	r6, r5	@ remain_byte.1763, i.1758
	ble	.L355	@,
.L356:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp229, i.1758,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i.1758, tmp229,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L380	@,
	b	.L353	@
.L355:
	mov	r0, #0	@ D.33921,
	b	.L357	@
	.fnend
	.size	next_start_code, .-next_start_code
	.align	2
	.global	MP2_GetUsrData
	.type	MP2_GetUsrData, %function
MP2_GetUsrData:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r6, r0, #71680	@ pBs, pCtx,
	add	r6, r6, #576	@ pBs, pBs,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r6	@, pBs
	bl	BsToNextByte	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	add	r9, r0, #7	@ tmp159, D.33811,
	cmp	r0, #0	@ D.33811,
	movlt	r0, r9	@ D.33811, tmp159
	mov	r9, r0, asr #3	@ RemainByte, D.33811,
	cmp	r9, #0	@ RemainByte,
	ble	.L382	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	sub	fp, r9, #1	@ tmp385, RemainByte,
	movw	sl, #:lower16:.LANCHOR2	@ tmp380,
	and	fp, fp, #1	@ tmp387, tmp385,
	movt	sl, #:upper16:.LANCHOR2	@ tmp380,
	mov	r4, #0	@ cnt,
	movw	r8, #1023	@ tmp378,
	bic	r0, r0, #-16777216	@ tmp161,,
	cmp	r0, #1	@ tmp161,
	beq	.L383	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r4, #1	@ cnt,
	cmp	r9, r4	@ RemainByte, cnt
	mov	r7, r4	@ i, cnt
	strb	r0, [sl, #0]	@, g_tmpusd
	ble	.L387	@,
	cmp	fp, #0	@ tmp387,
	beq	.L386	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r0, r0, #-16777216	@ tmp416,,
	cmp	r0, r4	@ tmp416,
	beq	.L383	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r7, r4, r4	@ i, i,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	mov	r4, r7	@ cnt, i
	bgt	.L386	@,
	b	.L387	@
.L439:
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L385:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp388, i,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp394,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp394,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp378
	ble	.L430	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	add	r7, r7, #1	@ i, tmp388,
	bl	BsGet	@
	cmp	r9, r7	@ RemainByte, i
	ble	.L387	@,
.L386:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp390,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp390,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp378
	ble	.L439	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L385	@
.L430:
	bl	BsGet	@
	add	r7, r7, #1	@ i, tmp388,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L386	@,
.L387:
	movw	r7, #:lower16:71964	@ tmp367,
	movt	r7, #:upper16:71964	@ tmp367,
	ldrsb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L388	@,
	movw	sl, #:lower16:71965	@ tmp165,
	movt	sl, #:upper16:71965	@ tmp165,
	ldrsb	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L388	@,
	movw	r9, #:lower16:71988	@ tmp167,
	movt	r9, #:upper16:71988	@ tmp167,
	ldr	ip, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	ip, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	bne	.L440	@,
.L388:
	mov	lr, #0	@,
	str	lr, [sp, #4]	@, %sfp
	b	.L392	@
.L383:
	mov	r6, #1	@,
	str	r6, [sp, #4]	@, %sfp
.L392:
	movw	r6, #:lower16:72044	@ tmp220,
	movt	r6, #:upper16:72044	@ tmp220,
	ldr	r3, [r5, r6]	@ D.33854, <variable>.CodecInfo.TotalUsrDatNum
	cmp	r3, #3	@ D.33854,
	ble	.L394	@,
	movw	r8, #:lower16:73696	@ tmp221,
	movw	sl, #:lower16:72028	@ tmp223,
	movt	r8, #:upper16:73696	@ tmp221,
	movt	sl, #:upper16:72028	@ tmp223,
	movw	fp, #:lower16:72032	@ tmp229,
	movt	fp, #:upper16:72032	@ tmp229,
	ldr	r1, [r5, sl]	@, <variable>.CodecInfo.pUsrDatArray
	mov	r7, #0	@ tmp226,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	movw	r9, #:lower16:72036	@ tmp235,
	bl	FreeUsdByDec	@
	movt	r9, #:upper16:72036	@ tmp235,
	str	r7, [r5, sl]	@ tmp226, <variable>.CodecInfo.pUsrDatArray
	movw	sl, #:lower16:72040	@ tmp241,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	movt	sl, #:upper16:72040	@ tmp241,
	ldr	r1, [r5, fp]	@, <variable>.CodecInfo.pUsrDatArray
	str	r7, [sp, #0]	@ tmp3,
	bl	FreeUsdByDec	@
	str	r7, [r5, fp]	@ tmp226, <variable>.CodecInfo.pUsrDatArray
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	ldr	r1, [r5, r9]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	str	r7, [r5, r9]	@ tmp226, <variable>.CodecInfo.pUsrDatArray
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	ldr	r1, [r5, sl]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	str	r7, [r5, sl]	@ tmp226, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r5, r6]	@ tmp226, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r3, [sp, #0]	@,
.L394:
	movw	lr, #:lower16:73696	@ tmp247,
	movt	lr, #:upper16:73696	@ tmp247,
	add	r6, r3, #17920	@ tmp371, prephitmp.1785,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	add	r6, r6, #86	@ tmp371, tmp371,
	bl	GetUsd	@
	movw	r2, #:lower16:72044	@ tmp257,
	movt	r2, #:upper16:72044	@ tmp257,
	add	r3, r5, r6, asl #2	@, tmp253, pCtx, tmp371,
	ldr	ip, [r5, r2]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, ip, #17920	@ tmp255, <variable>.CodecInfo.TotalUsrDatNum,
	add	r2, r1, #86	@ tmp255, tmp255,
	add	ip, r5, r2, asl #2	@, tmp261, pCtx, tmp255,
	str	r0, [r3, #4]	@ D.33861, <variable>.CodecInfo.pUsrDatArray
	ldr	r1, [ip, #4]	@ tmp263, <variable>.CodecInfo.pUsrDatArray
	cmp	r1, #0	@ tmp263,
	beq	.L395	@,
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:72016	@ tmp274,
	movt	lr, #:upper16:72016	@ tmp274,
	movw	r2, #:lower16:73336	@ tmp291,
	movt	r2, #:upper16:73336	@ tmp291,
	movw	ip, #:lower16:73700	@ tmp301,
	ldrd	r8, [r7, #56]	@ <variable>.pts, <variable>.pstExtraData,
	mov	r7, #1056	@ tmp264,
	movt	ip, #:upper16:73700	@ tmp301,
	movw	r1, #:lower16:72012	@ tmp314,
	movt	r1, #:upper16:72012	@ tmp314,
	strd	r8, [r0, r7]	@ <variable>.pts, D.33861, tmp264
	ldr	r0, [r3, #4]	@ tmp269, <variable>.CodecInfo.pUsrDatArray
	ldr	lr, [r5, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	str	lr, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	ldr	r0, [r3, #4]	@ tmp278, <variable>.CodecInfo.pUsrDatArray
	str	r4, [r0, #1048]	@ cnt, <variable>.data_size
	ldr	lr, [r5, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r0, [r3, #4]	@ tmp285, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	strb	lr, [r0, #1024]	@ <variable>.picture_coding_type, <variable>.pic_coding_type
	ldr	lr, [r3, #4]	@ tmp296, <variable>.CodecInfo.pUsrDatArray
	ldr	ip, [r5, ip]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	str	ip, [lr, #1028]	@ <variable>.numTotalFrame, <variable>.pic_num_count
	ldr	r0, [r5, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r2, [r3, #4]	@ tmp305, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	lr, [r2, #1025]	@ <variable>.top_field_first, <variable>.top_field_first
	ldr	ip, [r5, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r3, #4]	@ tmp319, <variable>.CodecInfo.pUsrDatArray
	add	r3, r5, r6, asl #2	@, tmp337, pCtx, tmp371,
	tst	ip, #524288	@ <variable>.CodecInfo.StreamIntegrality,
	movne	ip, #3	@ tmp324,
	moveq	ip, #1	@ tmp332,
	str	ip, [r1, #1036]	@ tmp332, <variable>.from
	movw	r1, #:lower16:.LANCHOR2	@,
	ldr	r0, [r3, #4]	@ prephitmp.1787, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:.LANCHOR2	@,
	ldr	r2, [r0, #1048]	@ prephitmp.1789, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.1789,
	movgt	r2, #1024	@ tmp339,
	strgt	r2, [r0, #1048]	@ tmp339, <variable>.data_size
	ldrgt	r0, [r3, #4]	@ prephitmp.1787, <variable>.CodecInfo.pUsrDatArray
	ldrgt	r2, [r0, #1048]	@ prephitmp.1789, <variable>.data_size
	bl	memcpy	@
	movw	r0, #:lower16:g_event_report	@ tmp351,
	movt	r0, #:upper16:g_event_report	@ tmp351,
	ldr	ip, [r0, #0]	@ g_event_report.484, g_event_report
	cmp	ip, #0	@ g_event_report.484,
	beq	.L399	@,
	add	r6, r5, r6, asl #2	@, tmp356, pCtx, tmp371,
	movw	r0, #:lower16:73696	@ tmp359,
	add	r2, sp, #16	@ tmp361,,
	movt	r0, #:upper16:73696	@ tmp359,
	ldr	r3, [r6, #4]	@ tmp358, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #6	@,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	str	r3, [r2, #-4]!	@ tmp358, para
	blx	ip	@ g_event_report.484
.L399:
	movw	ip, #:lower16:72044	@ tmp362,
	movt	ip, #:upper16:72044	@ tmp362,
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #1	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum,
	str	r1, [r5, ip]	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum
.L395:
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L440:
	movw	r2, #:lower16:71984	@,
	movt	r2, #:upper16:71984	@,
	movw	fp, #:lower16:71972	@ tmp169,
	movw	lr, #:lower16:71968	@ tmp172,
	movt	fp, #:upper16:71972	@ tmp169,
	movt	lr, #:upper16:71968	@ tmp172,
	str	r2, [sp, #4]	@, %sfp
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	ip, [r5, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r3, r1, #3	@ tmp174, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, r3, ip	@, tmp174, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	lr, [sp, #0]	@,
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [sp, #0]	@,
	ldr	r1, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movw	ip, #:lower16:71980	@ tmp185,
	movt	ip, #:upper16:71980	@ tmp185,
	ldr	r2, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r1, r1, #3	@ D.33843, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r5, r3]	@ D.33843, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [sp, #4]	@, %sfp
	movw	lr, #:lower16:71976	@ tmp191,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71976	@ tmp191,
	add	r2, r2, #3	@ D.33840, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r8, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	r2, [r5, r3]	@ D.33840, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	fp, r0, #3	@ D.33842, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, r6	@, pBs
	str	fp, [r5, lr]	@ D.33842, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	mov	lr, #1	@,
	str	r8, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	strb	lr, [r5, r7]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	strb	r8, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	strb	r0, [r5, sl]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, r6	@, pBs
	bl	BsToNextByte	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	add	r9, r0, #7	@ tmp214, D.33844,
	cmp	r0, #0	@ D.33844,
	movlt	r0, r9	@ D.33844, tmp214
	mov	fp, r0, asr #3	@ tmp215, D.33844,
	sub	r9, fp, #3	@ RemainByte.1810, tmp215,
	cmp	r9, #0	@ RemainByte.1810,
	ble	.L388	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	movw	sl, #:lower16:.LANCHOR2	@ tmp376,
	and	fp, fp, #1	@ tmp383, tmp215,
	movt	sl, #:upper16:.LANCHOR2	@ tmp376,
	movw	r8, #1023	@ tmp374,
	bic	r3, r0, #-16777216	@ tmp216,,
	cmp	r3, #1	@ tmp216,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp374
	ble	.L424	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L425:
	mov	r7, #1	@ i.1809,
	cmp	r9, r7	@ RemainByte.1810, i.1809
	ble	.L388	@,
	cmp	fp, #0	@ tmp383,
	beq	.L391	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r3, r0, #-16777216	@ tmp405,,
	cmp	r3, r7	@ tmp405,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L438	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L429:
	add	r7, r7, #1	@ i.1809, tmp384,
	cmp	r9, r7	@ RemainByte.1810, i.1809
	ble	.L388	@,
.L391:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	ip, r0, #-16777216	@ tmp396,,
	mov	r0, r6	@, pBs
	cmp	ip, #1	@ tmp396,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L389	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L390:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp384, i.1809,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp400,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp400,
	beq	.L383	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L438	@,
	bl	BsGet	@
	add	r7, r7, #1	@ i.1809, tmp384,
	cmp	r9, r7	@ RemainByte.1810, i.1809
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L391	@,
	b	.L388	@
.L438:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L429	@
.L389:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L390	@
.L382:
	mov	r4, #0	@ cnt,
	b	.L387	@
.L424:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	b	.L425	@
	.fnend
	.size	MP2_GetUsrData, .-MP2_GetUsrData
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:73696	@ tmp142,
	movt	r5, #:upper16:73696	@ tmp142,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #:lower16:72096	@ tmp144,
	movt	r3, #:upper16:72096	@ tmp144,
	cmp	r0, #0	@ D.33705,
	mov	r1, r0	@ D.33705,
	str	r0, [r4, r3]	@ D.33705, <variable>.CodecInfo.CurFsID
	blt	.L446	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r0, r0, #0	@ D.33723,,
	movne	r0, #1	@ D.33723
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L446:
	movw	r7, #:lower16:72092	@ tmp147,
	movt	r7, #:upper16:72092	@ tmp147,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L443	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp171,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp171,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp161,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp161, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp161, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp161, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp161, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp161, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp161, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L447	@,
.L443:
	movw	r2, #:lower16:72052	@ tmp183,
	movw	ip, #:lower16:73696	@ tmp185,
	movt	r2, #:upper16:72052	@ tmp183,
	movt	ip, #:upper16:73696	@ tmp185,
	add	r1, r4, #72704	@, pCtx,
	mov	r5, #0	@ tmp184,
	add	r1, r1, #640	@,,
	str	r5, [r4, r2]	@ tmp184, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.33723, tmp184
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L447:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.33721, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.33721, <variable>.CodecInfo.FwdFsID
	b	.L443	@
	.fnend
	.size	MP2_GetImageBuffer, .-MP2_GetImageBuffer
	.align	2
	.global	MP2_SetImgFormat
	.type	MP2_SetImgFormat, %function
MP2_SetImgFormat:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:73696	@ tmp162,
	movw	r1, #:lower16:72096	@ tmp164,
	movt	ip, #:upper16:73696	@ tmp162,
	movt	r1, #:upper16:72096	@ tmp164,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r2, #:lower16:73336	@ tmp160,
	mov	r6, r0	@ pCtx, pCtx
	movt	r2, #:upper16:73336	@ tmp160,
	movw	r3, #:lower16:73340	@ tmp161,
	movt	r3, #:upper16:73340	@ tmp161,
	ldr	r0, [r0, ip]	@, <variable>.ChanID
	ldr	r1, [r6, r1]	@, <variable>.CodecInfo.CurFsID
	ldr	r5, [r6, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r7, [r6, r3]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ D.33486, <variable>.picture_coding_type
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ D.33492, <variable>.progressive_sequence
	cmp	ip, #4	@ D.33486,
	ldr	sl, [r5, #128]	@ vfmt, <variable>.video_format
	subne	ip, ip, #1	@ tmp166, D.33486,
	ldr	r3, [r4, #140]	@ D.33493, <variable>.format
	moveq	ip, #0	@ prephitmp.1891,
	andne	ip, ip, #3	@ prephitmp.1891, tmp166,
	cmp	lr, #0	@ D.33492,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ D.33495, <variable>.picture_structure
	movne	r0, #4096	@ prephitmp.1920,
	beq	.L469	@,
.L453:
	movw	r2, #:lower16:73336	@ tmp178,
	movt	r2, #:upper16:73336	@ tmp178,
	orr	r3, r8, r3, lsr #10	@, tmp193, D.33495, D.33493,
	and	sl, sl, #3	@ tmp190, vfmt,
	ldr	r2, [r6, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	and	r3, r3, #3	@ tmp194, tmp193,
	ldr	r2, [r2, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	str	ip, [r4, #136]	@ prephitmp.1891, <variable>.bottom_fld_type
	sub	r2, r2, #1	@ D.35034, <variable>.aspect_ratio_information,
	str	ip, [r4, #132]	@ prephitmp.1891, <variable>.top_fld_type
	cmp	r2, #2	@ D.35034,
	movwls	r1, #:lower16:.LANCHOR0	@ tmp180,
	movtls	r1, #:upper16:.LANCHOR0	@ tmp180,
	addls	r2, r1, r2, asl #2	@, tmp183, tmp180, D.35034,
	movhi	r1, #0	@ prephitmp.1921,
	movhi	r2, r1	@ prephitmp.1923, prephitmp.1921
	ldrls	r1, [r2, #128]	@ prephitmp.1921, CSWTCH.522
	andls	r2, r1, #7	@ pretmp.1922, prephitmp.1921,
	movls	r2, r2, asl #14	@ prephitmp.1923, pretmp.1922,
	cmp	lr, #0	@ D.33492,
	moveq	lr, #256	@ tmp189,
	movne	lr, #0	@ tmp189,
	orr	lr, lr, sl, asl #5	@, tmp192, tmp189, tmp190,
	orr	r3, lr, r3, asl #10	@, tmp196, tmp192, tmp194,
	orr	lr, r3, ip	@ tmp197, tmp196, prephitmp.1891
	orr	r3, lr, r0	@ tmp198, tmp197, prephitmp.1920
	mov	r0, r4	@, pImg
	orr	lr, r3, r2	@ tmp199, tmp198, prephitmp.1923
	str	lr, [r4, #140]	@ tmp199, <variable>.format
	bl	SetAspectRatio	@
	mov	ip, #3	@ tmp200,
	str	ip, [r4, #300]	@ tmp200, <variable>.ImageDnr.video_standard
	mov	r1, #1	@ tmp203,
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	r1, [r4, #295]	@ tmp203, <variable>.ImageDnr.use_pic_qp_en
	cmp	r2, #3	@ <variable>.picture_structure,
	movne	r1, #4	@ iftmp.470,
	moveq	r1, #0	@ iftmp.470,
	strb	r1, [r4, #288]	@ iftmp.470, <variable>.ImageDnr.pic_structure
	mov	r1, #1	@ tmp210,
	ldr	r3, [r6, #4]	@ D.33533, <variable>.pMp2DecParam
	cmp	r3, #0	@ D.33533,
	streqb	r3, [r4, #295]	@ D.33533, <variable>.ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ prephitmp.1892, <variable>.EstmatedPicQp
	moveq	r2, #32	@ tmp209,
	moveq	r3, r2	@ prephitmp.1892, tmp209
	streq	r2, [r4, #304]	@ tmp209, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #293]	@ tmp210, <variable>.ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ prephitmp.1892, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #308]	@ prephitmp.1892, <variable>.ImageDnr.QP_U
	str	r3, [r4, #312]	@ prephitmp.1892, <variable>.ImageDnr.QP_V
	ldr	r0, [r5, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	str	r0, [r4, #168]	@ <variable>.frame_rate, <variable>.frame_rate
	ldr	ip, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L470	@,
.L462:
	ldr	r3, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r3, [r4, #144]	@ <variable>.horizontal_size, <variable>.image_width
	ldr	lr, [r5, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	lr, [r4, #148]	@ <variable>.vertical_size, <variable>.image_height
.L464:
	ldr	lr, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L471	@,
.L465:
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	lr, r2, lsr #1	@ tmp239, <variable>.image_width,
	str	lr, [r4, #160]	@ tmp239, <variable>.disp_center_x
	mov	r1, r3, lsr #1	@ tmp241, <variable>.image_height,
	str	r1, [r4, #164]	@ tmp241, <variable>.disp_center_y
	ldr	r1, [r5, #148]	@ D.33588, <variable>.display_horizontal_size
	cmp	r1, #0	@ D.33588,
	beq	.L466	@,
	ldr	ip, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	ip, #0	@ <variable>.display_vertical_size,
	beq	.L466	@,
	cmp	r2, r1	@ <variable>.image_width, D.33588
	strls	r2, [r4, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r1, [r4, #152]	@, D.33588, <variable>.disp_width
	ldr	r2, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	r3, r2	@ <variable>.image_height, <variable>.display_vertical_size
	strls	r3, [r4, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r2, [r4, #156]	@, <variable>.display_vertical_size, <variable>.disp_height
	b	.L467	@
.L466:
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
.L467:
	ldrb	ip, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	mov	r0, r6	@, pCtx
	str	ip, [r4, #340]	@ <variable>.progressive_sequence, <variable>.optm_inf.IsProgressiveSeq
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	str	lr, [r4, #344]	@ <variable>.progressive_frame, <variable>.optm_inf.IsProgressiveFrm
	ldr	r1, [r5, #144]	@ <variable>.matrix_coefficients, <variable>.matrix_coefficients
	str	r1, [r4, #352]	@ <variable>.matrix_coefficients, <variable>.optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	movw	r0, #:lower16:72180	@ tmp253,
	movt	r0, #:upper16:72180	@ tmp253,
	ldr	r3, [r6, r0]	@ <variable>.CodecInfo.RealFrmRate, <variable>.CodecInfo.RealFrmRate
	str	r3, [r4, #348]	@ <variable>.CodecInfo.RealFrmRate, <variable>.optm_inf.RealFrmRate
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L469:
	cmp	r8, #3	@ D.33495,
	beq	.L472	@,
	movw	r2, #:lower16:72024	@ tmp169,
	movt	r2, #:upper16:72024	@ tmp169,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L455	@,
	cmp	r8, #1	@ D.33495,
	movne	r0, #0	@, tmp173
	moveq	r0, #1	@, tmp173
	mov	r0, r0, asl #12	@ prephitmp.1920, tmp173,
	b	.L453	@
.L455:
	subs	r2, r8, #1	@ tmp176, D.33495,
	movne	r2, #1	@ tmp176
	mov	r0, r2, asl #12	@ prephitmp.1920, tmp176,
	b	.L453	@
.L472:
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	and	r0, r2, #1	@ tmp168, <variable>.top_field_first,
	mov	r0, r0, asl #12	@ prephitmp.1920, tmp168,
	b	.L453	@
.L471:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.33561, <variable>.image_stride
	add	ip, r0, #15	@ tmp226, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp225, D.33561,
	mov	r1, ip, lsr #4	@ tmp228, tmp226,
	add	ip, r3, r2	@ tmp233, <variable>.luma_phy_addr, D.33561
	str	ip, [r4, #96]	@ tmp233, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.33567, tmp228, tmp225
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp230, D.33567, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp232, <variable>.luma_vir_addr, D.33567
	add	r2, ip, r2	@ tmp234, tmp230, D.33561
	str	r1, [r4, #36]	@ tmp232, <variable>.chrom_vir_addr
	str	r2, [r4, #100]	@ tmp234, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp230
	str	ip, [r4, #108]	@ tmp230, <variable>.chrom_phy_addr
	str	ip, [r4, #92]	@ tmp230, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L465	@
.L470:
	ldr	r3, [r7, #56]	@ D.33549, <variable>.mb_width
	cmp	r3, #0	@ D.33549,
	beq	.L462	@,
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r0, #0	@ <variable>.mb_height,
	beq	.L462	@,
	movw	ip, #:lower16:73715	@ tmp216,
	movt	ip, #:upper16:73715	@ tmp216,
	ldrb	r1, [r6, ip]	@ zero_extendqisi2	@ <variable>.DSDNeedFlushFrame, <variable>.DSDNeedFlushFrame
	cmp	r1, #0	@ <variable>.DSDNeedFlushFrame,
	beq	.L462	@,
	mov	r1, r3, asl #4	@ tmp220, D.33549,
	str	r1, [r4, #144]	@ tmp220, <variable>.image_width
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	mov	r2, r0, asl #4	@ tmp222, <variable>.mb_height,
	str	r2, [r4, #148]	@ tmp222, <variable>.image_height
	b	.L464	@
	.fnend
	.size	MP2_SetImgFormat, .-MP2_SetImgFormat
	.align	2
	.global	MPEG2DEC_VDMPostProc
	.type	MPEG2DEC_VDMPostProc, %function
MPEG2DEC_VDMPostProc:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldrb	ip, [r0, #152]	@ zero_extendqisi2	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.Mp2DecParam.EstmatedPicQp
	movw	r5, #:lower16:72192	@ tmp156,
	movt	r5, #:upper16:72192	@ tmp156,
	movw	lr, #:lower16:73336	@ tmp155,
	movt	lr, #:upper16:73336	@ tmp155,
	mov	r4, r0	@ pCtx, pCtx
	strb	ip, [r0, r5]	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.CodecInfo.EstmatedPicQp
	.pad #12
	sub	sp, sp, #12	@,,
	movw	r6, #:lower16:73696	@ tmp159,
	movw	r7, #:lower16:72096	@ tmp161,
	movt	r6, #:upper16:73696	@ tmp159,
	movt	r7, #:upper16:72096	@ tmp161,
	ldr	r5, [r0, lr]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	mov	r8, r1	@ ErrRatio, ErrRatio
	bl	MP2_RecordVFMWState	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:72092	@ tmp165,
	movt	r2, #:upper16:72092	@ tmp165,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:72088	@ tmp169,
	movt	r3, #:upper16:72088	@ tmp169,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	beq	.L474	@,
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r8, #0	@ ErrRatio,
	movw	r1, #45328	@ tmp171,
	movlt	r8, #0	@ iftmp.508,
	strb	r0, [r4, r1]	@ <variable>.picture_coding_type, <variable>.CodecInfo.LastDecPicCodingType
	blt	.L476	@,
	cmp	r8, #100	@ ErrRatio,
	movge	r8, #100	@ iftmp.508,
.L476:
	str	r8, [r7, #180]	@ iftmp.508, <variable>.error_level
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L477	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [lr, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r8, r2	@ iftmp.508, <variable>.s32RefErrThr
	bhi	.L499	@,
.L477:
	mov	r0, r4	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #45320	@,
	bl	__memzero	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L486	@,
	movw	r1, #:lower16:72024	@ tmp235,
	movt	r1, #:upper16:72024	@ tmp235,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	ip, #1	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #1	@ D.34569,
	beq	.L486	@,
.L479:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L486:
	movw	r3, #:lower16:72028	@ tmp219,
	movt	r3, #:upper16:72028	@ tmp219,
	movw	r0, #:lower16:72028	@ tmp222,
	movw	r1, #:lower16:72032	@ tmp224,
	ldr	lr, [r4, r3]	@ D.34612, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:72032	@ tmp224,
	movt	r0, #:upper16:72028	@ tmp222,
	mov	ip, #0	@ tmp223,
	cmp	lr, #0	@ D.34612,
	strne	lr, [r7, #192]	@ D.34612, <variable>.p_usrdat
	movne	lr, #0	@ tmp221,
	strne	lr, [r4, r3]	@ tmp221, <variable>.CodecInfo.pUsrDatArray
	str	ip, [r4, r0]	@ tmp223, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72032	@ tmp227,
	ldr	r2, [r4, r1]	@ temp.2008, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72032	@ tmp227,
	movw	r0, #:lower16:72036	@ tmp229,
	movt	r0, #:upper16:72036	@ tmp229,
	cmp	r2, ip	@ temp.2008,
	strne	r2, [r7, #196]	@ temp.2008, <variable>.p_usrdat
	strne	ip, [r4, r1]	@ tmp223, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #0	@ tmp228,
	str	r1, [r4, r3]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72036	@ tmp232,
	ldr	lr, [r4, r0]	@ temp.2009, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp232,
	movw	r3, #:lower16:72040	@ tmp234,
	movt	r3, #:upper16:72040	@ tmp234,
	cmp	lr, r1	@ temp.2009,
	strne	lr, [r7, #200]	@ temp.2009, <variable>.p_usrdat
	mov	lr, #0	@ tmp233,
	strne	r1, [r4, r0]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	str	lr, [r4, ip]	@ tmp233, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72040	@ tmp239,
	ldr	r2, [r4, r3]	@ temp.1983, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72040	@ tmp239,
	cmp	r2, lr	@ temp.1983,
	strne	r2, [r7, #204]	@ temp.1983, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strne	lr, [r4, r3]	@ tmp233, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72044	@ tmp241,
	movt	r3, #:upper16:72044	@ tmp241,
	mov	lr, #0	@ tmp240,
	str	lr, [r4, ip]	@ tmp240, <variable>.CodecInfo.pUsrDatArray
	str	lr, [r4, r3]	@ tmp240, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r2, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L487	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r1, #3	@ <variable>.picture_coding_type,
	beq	.L487	@,
	movw	r2, #:lower16:72088	@ tmp246,
	movt	r2, #:upper16:72088	@ tmp246,
	movw	r0, #:lower16:72100	@ tmp247,
	movt	r0, #:upper16:72100	@ tmp247,
	ldr	r1, [r4, r2]	@ prephitmp.1946,
	str	r1, [r4, r0]	@ prephitmp.1946, <variable>.CodecInfo.ToQueFsID
.L489:
	cmn	r1, #1	@ prephitmp.1946,
	beq	.L490	@,
	movw	r6, #:lower16:73696	@ tmp252,
	movt	r6, #:upper16:73696	@ tmp252,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L491	@,
	movw	ip, #:lower16:72100	@ tmp256,
	movt	ip, #:upper16:72100	@ tmp256,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L491	@,
.L490:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L500	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L501	@,
	movw	r2, #:lower16:72176	@ tmp339,
	movt	r2, #:upper16:72176	@ tmp339,
	movw	ip, #:lower16:72172	@ tmp342,
	movt	ip, #:upper16:72172	@ tmp342,
	ldr	r1, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r0, r1, #1	@ temp.2006, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ temp.2006, <variable>.GopFrmCnt
	mov	r3, r0, asl #1	@ tmp343, temp.2006,
	str	r3, [r4, ip]	@ tmp343, <variable>.GopFldCnt
.L496:
	movw	r2, #:lower16:72168	@ tmp344,
	movt	r2, #:upper16:72168	@ tmp344,
	movw	r3, #:lower16:72020	@ tmp348,
	movt	r3, #:upper16:72020	@ tmp348,
	ldr	lr, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #1	@ D.34569,
	add	r1, lr, r0	@ tmp347, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp347, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	lr, ip, r0	@ tmp351, <variable>.CodecInfo.Frame_Cnt,
	str	lr, [r4, r3]	@ tmp351,
	b	.L479	@
.L499:
	movw	r5, #:lower16:73696	@ tmp177,
	movw	r7, #:lower16:72092	@ tmp179,
	movt	r5, #:upper16:73696	@ tmp177,
	movt	r7, #:upper16:72092	@ tmp179,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L478	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp203,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp203,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp193,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp193, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp193, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp193, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp193, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp193, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp193, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	beq	.L478	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.34600, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.34600, <variable>.CodecInfo.FwdFsID
.L478:
	movw	r1, #:lower16:72052	@ tmp215,
	movt	r1, #:upper16:72052	@ tmp215,
	mov	ip, #0	@ tmp216,
	mov	r0, #1	@ D.34569,
	str	ip, [r4, r1]	@ tmp216,
	b	.L479	@
.L487:
	movw	r3, #:lower16:72096	@ tmp250,
	movt	r3, #:upper16:72096	@ tmp250,
	movw	lr, #:lower16:72100	@ tmp251,
	movt	lr, #:upper16:72100	@ tmp251,
	ldr	r1, [r4, r3]	@ prephitmp.1946,
	str	r1, [r4, lr]	@ prephitmp.1946, <variable>.CodecInfo.ToQueFsID
	b	.L489	@
.L474:
	mov	r0, #0	@ D.34569,
	b	.L479	@
.L491:
	movw	r7, #:lower16:73696	@ tmp258,
	movw	r8, #:lower16:72100	@ tmp260,
	movt	r7, #:upper16:73696	@ tmp258,
	movt	r8, #:upper16:72100	@ tmp260,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L474	@,
	ldr	r3, [r6, #180]	@ D.34636, <variable>.error_level
	cmp	r3, #0	@ D.34636,
	beq	.L492	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r0, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r1	@ D.34636, <variable>.s32OutErrThr
	bhi	.L493	@,
.L492:
	movw	r7, #:lower16:73696	@ tmp264,
	movw	r8, #:lower16:72100	@ tmp266,
	movt	r7, #:upper16:73696	@ tmp264,
	movt	r8, #:upper16:72100	@ tmp266,
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	add	r2, r4, #72704	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #640	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.34641,
	beq	.L494	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r5, #0	@ tmp275,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r5, [r6, #192]	@ tmp275, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #196]	@ tmp275, <variable>.p_usrdat
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #200]	@ tmp275, <variable>.p_usrdat
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #204]	@ tmp275, <variable>.p_usrdat
	mov	r2, r5	@, tmp275
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.34569, tmp275
	b	.L479	@
.L500:
	movw	r3, #:lower16:72176	@ tmp319,
	movt	r3, #:upper16:72176	@ tmp319,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:72172	@ tmp326,
	ldr	r1, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:72172	@ tmp326,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	lr, r1, #1	@ tmp320, <variable>.GopFrmCnt,
	add	r1, lr, ip	@ tmp323, tmp320, <variable>.repeat_first_field
	add	ip, r1, r0	@ D.34657, tmp323, <variable>.top_field_first
	str	ip, [r4, r3]	@ D.34657, <variable>.GopFrmCnt
	mov	lr, ip, asl #1	@ tmp327, D.34657,
	str	lr, [r4, r2]	@ tmp327, <variable>.GopFldCnt
	b	.L496	@
.L501:
	movw	r2, #:lower16:72176	@ tmp329,
	movt	r2, #:upper16:72176	@ tmp329,
	movw	r3, #:lower16:72172	@ tmp333,
	movt	r3, #:upper16:72172	@ tmp333,
	ldr	lr, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	r0, [r4, r3]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	r1, lr, #1	@ tmp332, <variable>.GopFrmCnt,
	str	r1, [r4, r2]	@ tmp332, <variable>.GopFrmCnt
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	lr, r0, #2	@ tmp335, <variable>.GopFldCnt,
	add	r0, lr, ip	@ tmp338, tmp335, <variable>.repeat_first_field
	str	r0, [r4, r3]	@ tmp338, <variable>.GopFldCnt
	b	.L496	@
.L493:
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	sl, #0	@ tmp301,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp301, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp301, <variable>.p_usrdat
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #200]	@ tmp301, <variable>.p_usrdat
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #204]	@ tmp301, <variable>.p_usrdat
	mov	r2, sl	@, tmp301
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L490	@
.L494:
	movw	r3, #:lower16:73704	@ tmp292,
	movt	r3, #:upper16:73704	@ tmp292,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r4, r3]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	ip, r1, #1	@ tmp295, <variable>.numOutputFrame,
	str	ip, [r4, r3]	@ tmp295, <variable>.numOutputFrame
	str	r0, [lr, #732]	@ D.34641, <variable>.s32firstIdecodedflag
	b	.L490	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MPEG2DEC_GetRemainImg
	.type	MPEG2DEC_GetRemainImg, %function
MPEG2DEC_GetRemainImg:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	beq	.L503	@,
	movw	r7, #:lower16:73696	@ tmp146,
	movw	r6, #:lower16:72092	@ tmp148,
	movt	r7, #:upper16:73696	@ tmp146,
	movt	r6, #:upper16:72092	@ tmp148,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L503	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L514	@,
.L503:
	add	r1, r4, #72704	@, pCtx,
	add	r0, r1, #640	@,,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	GetVoLastImageID	@
.L514:
	mov	r0, r4	@, pCtx
	mov	r7, #0	@ tmp158,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp154,
	movt	r3, #:upper16:72028	@ tmp154,
	movw	r1, #:lower16:72028	@ tmp157,
	movw	r0, #:lower16:72032	@ tmp159,
	movt	r1, #:upper16:72028	@ tmp157,
	ldr	ip, [r4, r3]	@ temp.2053, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72032	@ tmp159,
	movw	r6, #:lower16:72032	@ tmp162,
	movt	r6, #:upper16:72032	@ tmp162,
	cmp	ip, #0	@ temp.2053,
	strne	ip, [r5, #192]	@ temp.2053, <variable>.p_usrdat
	movne	ip, #0	@ tmp156,
	strne	ip, [r4, r3]	@ tmp156, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r4, r1]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72036	@ tmp164,
	ldr	r2, [r4, r0]	@ temp.2058, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp164,
	mov	r1, #0	@ tmp163,
	cmp	r2, r7	@ temp.2058,
	strne	r2, [r5, #196]	@ temp.2058, <variable>.p_usrdat
	movw	r2, #:lower16:72036	@ tmp167,
	strne	r7, [r4, r0]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72036	@ tmp167,
	str	r1, [r4, r6]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:72040	@ tmp169,
	ldr	r3, [r4, ip]	@ temp.2059, <variable>.CodecInfo.pUsrDatArray
	movt	r7, #:upper16:72040	@ tmp169,
	mov	r6, #0	@ tmp168,
	cmp	r3, r1	@ temp.2059,
	strne	r3, [r5, #200]	@ temp.2059, <variable>.p_usrdat
	movw	r3, #:lower16:72040	@ tmp172,
	strne	r1, [r4, ip]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72040	@ tmp172,
	str	r6, [r4, r2]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72044	@ tmp174,
	ldr	r0, [r4, r7]	@ D.34511, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72044	@ tmp174,
	mov	r1, #1	@ tmp176,
	cmp	r0, r6	@ D.34511,
	mov	r2, r1	@, tmp176
	strne	r0, [r5, #204]	@ D.34511, <variable>.p_usrdat
	strne	r6, [r4, r7]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:73696	@ tmp177,
	movt	r7, #:upper16:73696	@ tmp177,
	mov	r6, #0	@ tmp173,
	str	r6, [r4, r3]	@ tmp173, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, ip]	@ tmp173, <variable>.CodecInfo.TotalUsrDatNum
	str	r1, [r5, #224]	@ tmp176, <variable>.last_frame
	ldr	r1, [r5, #176]	@, <variable>.image_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	add	r2, r4, #72704	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #640	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L508	@,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L503	@
.L508:
	ldr	lr, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	lr, #100	@ <variable>.error_level,
	bhi	.L503	@,
	ldr	r0, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #31	@ <variable>.image_width,
	bls	.L503	@,
	ldr	r2, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r2, #31	@ <variable>.image_height,
	bls	.L503	@,
	mov	r0, r6	@, tmp173
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	MPEG2DEC_GetRemainImg, .-MPEG2DEC_GetRemainImg
	.align	2
	.type	MP2_FlushFrameToVo, %function
MP2_FlushFrameToVo:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r6, #:lower16:73696	@ tmp144,
	movt	r6, #:upper16:73696	@ tmp144,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ FsID, FsID
	ldr	r0, [r0, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L525	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r7	@, FsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L526	@,
.L517:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L526:
	mov	r0, r4	@, pCtx
	movw	r7, #:lower16:72032	@ tmp153,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp148,
	movt	r3, #:upper16:72028	@ tmp148,
	movt	r7, #:upper16:72032	@ tmp153,
	movw	r0, #:lower16:72028	@ tmp151,
	movt	r0, #:upper16:72028	@ tmp151,
	ldr	r2, [r4, r3]	@ temp.2093, <variable>.CodecInfo.pUsrDatArray
	mov	r6, #0	@ tmp152,
	movw	r1, #:lower16:72032	@ tmp156,
	movt	r1, #:upper16:72032	@ tmp156,
	cmp	r2, #0	@ temp.2093,
	strne	r2, [r5, #192]	@ temp.2093, <variable>.p_usrdat
	movne	r2, #0	@ tmp150,
	strne	r2, [r4, r3]	@ tmp150, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, r0]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72036	@ tmp158,
	ldr	ip, [r4, r7]	@ temp.2094, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72036	@ tmp158,
	mov	r0, #0	@ tmp157,
	cmp	ip, r6	@ temp.2094,
	strne	ip, [r5, #196]	@ temp.2094, <variable>.p_usrdat
	movw	ip, #:lower16:72036	@ tmp161,
	strne	r6, [r4, r7]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp161,
	str	r0, [r4, r1]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movw	r6, #:lower16:72040	@ tmp163,
	ldr	r2, [r4, r3]	@ temp.2095, <variable>.CodecInfo.pUsrDatArray
	movt	r6, #:upper16:72040	@ tmp163,
	mov	r1, #0	@ tmp162,
	cmp	r2, r0	@ temp.2095,
	strne	r2, [r5, #200]	@ temp.2095, <variable>.p_usrdat
	movw	r2, #:lower16:72040	@ tmp166,
	strne	r0, [r4, r3]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72040	@ tmp166,
	str	r1, [r4, ip]	@ tmp162, <variable>.CodecInfo.pUsrDatArray
	movw	r0, #:lower16:72044	@ tmp168,
	ldr	r7, [r4, r6]	@ D.33203, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72044	@ tmp168,
	cmp	r7, r1	@ D.33203,
	strne	r7, [r5, #204]	@ D.33203, <variable>.p_usrdat
	movw	r7, #:lower16:73696	@ tmp170,
	movt	r7, #:upper16:73696	@ tmp170,
	strne	r1, [r4, r6]	@ tmp162, <variable>.CodecInfo.pUsrDatArray
	mov	r6, #0	@ tmp167,
	str	r6, [r4, r2]	@ tmp167, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, r0]	@ tmp167, <variable>.CodecInfo.TotalUsrDatNum
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	FSP_SetDisplay	@
	add	r3, r4, #72704	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #3	@,
	add	r3, r3, #640	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r6	@ ret, tmp167
	beq	.L517	@,
	mov	r0, r4	@, pCtx
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
.L525:
	mvn	r0, #0	@ ret,
	b	.L517	@
	.fnend
	.size	MP2_FlushFrameToVo, .-MP2_FlushFrameToVo
	.align	2
	.global	MP2_GetPictureInfo
	.type	MP2_GetPictureInfo, %function
MP2_GetPictureInfo:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #:lower16:72048	@ tmp161,
	movt	r5, #:upper16:72048	@ tmp161,
	movw	r2, #:lower16:73336	@ tmp159,
	movw	r3, #:lower16:73340	@ tmp160,
	movt	r2, #:upper16:73336	@ tmp159,
	ldr	r1, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r3, #:upper16:73340	@ tmp160,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	cmp	r1, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r6, [r0, r3]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L565	@,
.L528:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L529	@,
	movw	r3, #:lower16:72024	@ tmp172,
	movt	r3, #:upper16:72024	@ tmp172,
	movw	ip, #:lower16:72056	@ tmp176,
	movt	ip, #:upper16:72056	@ tmp176,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.LastTempReference, <variable>.CodecInfo.LastTempReference
	rsbs	r2, r2, #1	@ tmp174, <variable>.CodecInfo.Second_Field
	movcc	r2, #0	@ tmp174
	str	r2, [r4, r3]	@ tmp174, <variable>.CodecInfo.Second_Field
	ldr	r0, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	cmp	r0, r1	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	beq	.L530	@,
	cmp	r2, #1	@ tmp174,
	beq	.L566	@,
.L530:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movw	r2, #45329	@ tmp207,
	movw	r3, #:lower16:72056	@ tmp210,
	movt	r3, #:upper16:72056	@ tmp210,
	strb	lr, [r4, r2]	@ <variable>.picture_structure, <variable>.CodecInfo.Last_FieldStruct
	movw	r2, #:lower16:72024	@ tmp227,
	ldr	r1, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	movt	r2, #:upper16:72024	@ tmp227,
	str	r1, [r4, r3]	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	ldrh	ip, [r5, #56]	@, <variable>.mb_width
	strh	ip, [r4, #160]	@ movhi	@, <variable>.Mp2DecParam.PicWidthInMb
	movw	ip, #:lower16:72048	@ tmp234,
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movt	ip, #:upper16:72048	@ tmp234,
	cmp	r0, #3	@ <variable>.picture_structure,
	ldrne	r0, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldreq	r0, [r5, #64]	@ <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height_progressive_subtract1mb
	ldreq	r1, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	movne	r0, r0, lsr #1	@ tmp214, <variable>.mb_height,
	rsbeq	r0, r0, r1	@ tmp221, <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height
	strh	r0, [r4, #156]	@ movhi	@ tmp221, <variable>.Mp2DecParam.PicHeightInMb
	ldrh	lr, [r5, #60]	@, <variable>.mb_height
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	strh	lr, [r4, #158]	@ movhi	@, <variable>.Mp2DecParam.FrameHeightInMb
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ <variable>.frame_pred_frame_dct, <variable>.frame_pred_frame_dct
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	strb	r3, [r4, #13]	@ <variable>.frame_pred_frame_dct, <variable>.Mp2DecParam.FramePredFrameDct
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	r1, [r4, #12]	@ <variable>.CodecInfo.Second_Field, <variable>.Mp2DecParam.SecondFieldFlag
	movne	r2, #0	@, tmp236
	moveq	r2, #1	@, tmp236
	strb	r0, [r4, #11]	@ <variable>.picture_structure, <variable>.Mp2DecParam.PictureStructure
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ <variable>.concealment_motion_vectors, <variable>.concealment_motion_vectors
	strb	r3, [r4, #15]	@ <variable>.concealment_motion_vectors, <variable>.Mp2DecParam.ConcealmentMotionVectors
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	str	r2, [r4, #188]	@ tmp236, <variable>.Mp2DecParam.Mpeg1Flag
	strb	ip, [r4, #8]	@ <variable>.picture_coding_type, <variable>.Mp2DecParam.PicCodingType
	ldreqb	ip, [r5, #25]	@ zero_extendqisi2	@ <variable>.full_pel_backward_vector, <variable>.full_pel_backward_vector
	streqb	ip, [r4, #9]	@ <variable>.full_pel_backward_vector, <variable>.Mp2DecParam.Mp1BwdmvFullPel
	ldreqb	ip, [r5, #23]	@ zero_extendqisi2	@ <variable>.full_pel_forward_vector, <variable>.full_pel_forward_vector
	streqb	ip, [r4, #10]	@ <variable>.full_pel_forward_vector, <variable>.Mp2DecParam.Mp1FwdmvFullPel
	ldrb	r0, [r5, #4]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r0, [r4, #20]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r1, [r4, #21]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	lr, [r5, #6]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	lr, [r4, #22]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r3, [r4, #23]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	ip, [r4, #14]	@ <variable>.top_field_first, <variable>.Mp2DecParam.TopFieldFirst
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.intra_dc_precision, <variable>.intra_dc_precision
	strb	r2, [r4, #19]	@ <variable>.intra_dc_precision, <variable>.Mp2DecParam.IntraDcPrecision
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	strb	r0, [r4, #18]	@ <variable>.q_scale_type, <variable>.Mp2DecParam.QuantType
	ldrb	r1, [r5, #14]	@ zero_extendqisi2	@ <variable>.intra_vlc_format, <variable>.intra_vlc_format
	strb	r1, [r4, #17]	@ <variable>.intra_vlc_format, <variable>.Mp2DecParam.IntraVlcFormat
	ldrb	lr, [r5, #15]	@ zero_extendqisi2	@ <variable>.alternate_scan, <variable>.alternate_scan
	strb	lr, [r4, #16]	@ <variable>.alternate_scan, <variable>.Mp2DecParam.AlternateScan
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r3, #3	@ <variable>.picture_structure,
	beq	.L535	@,
	movw	r1, #:lower16:72024	@ tmp262,
	movt	r1, #:upper16:72024	@ tmp262,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L535	@,
.L536:
	movw	r6, #:lower16:73696	@ tmp308,
	movw	r3, #:lower16:72096	@ tmp310,
	movt	r6, #:upper16:73696	@ tmp308,
	movt	r3, #:upper16:72096	@ tmp310,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	ip, #:lower16:72088	@ tmp314,
	movt	ip, #:upper16:72088	@ tmp314,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:72092	@ tmp318,
	movt	r2, #:upper16:72092	@ tmp318,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r7, #0	@, pFwd,
	beq	.L545	@,
	cmp	r0, #0	@ pBwd,
	beq	.L545	@,
	ldr	r2, [r5, #408]	@ D.33133, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.33133,
	beq	.L545	@,
	ldr	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L545	@,
	ldr	lr, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	lr, #0	@ <variable>.pstDispOutFs,
	beq	.L545	@,
	ldr	lr, [r0, #408]	@ D.33139, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.33139,
	ldreq	lr, [r2, #12]	@ iftmp.450, <variable>.PhyAddr
	ldrne	lr, [lr, #12]	@ iftmp.450, <variable>.PhyAddr
	str	lr, [r4, #200]	@ iftmp.450, <variable>.Mp2DecParam.BwdRefPhyAddr
	ldr	r6, [r7, #408]	@ D.33146, <variable>.pstDecodeFs
	cmp	r6, #0	@ D.33146,
	ldreq	r6, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r6, #12]	@ iftmp.451, <variable>.PhyAddr
	str	r2, [r4, #204]	@ iftmp.451, <variable>.Mp2DecParam.FwdRefPhyAddr
	ldr	ip, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #208]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.CurPicPhyAddr
	add	r3, r4, #71680	@ ivtmp.2128, pCtx,
	ldr	r1, [r5, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	add	r3, r3, #604	@ ivtmp.2128, ivtmp.2128,
	str	r1, [r4, #248]	@ <variable>.PmvAddr, <variable>.Mp2DecParam.PmvColmbPhyAddr
	ldr	lr, [r0, #416]	@ D.33155, <variable>.pstTfOutFs
	cmp	lr, #0	@ D.33155,
	ldreq	lr, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r6, [lr, #12]	@ iftmp.452, <variable>.PhyAddr
	str	r6, [r4, #220]	@ iftmp.452, <variable>.Mp2DecParam.TfBwdPhyAddr
	ldr	r2, [r7, #416]	@ D.33162, <variable>.pstTfOutFs
	cmp	r2, #0	@ D.33162,
	ldreq	r2, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	ip, [r2, #12]	@ iftmp.453, <variable>.PhyAddr
	mov	r2, r4	@ ivtmp.2132, pCtx
	str	ip, [r4, #224]	@ iftmp.453, <variable>.Mp2DecParam.TfFwdPhyAddr
	mov	ip, #0	@ i,
	ldr	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	lr, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, #228]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.TfCurPhyAddr
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #232]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DispFramePhyAddr
	movw	r1, #45320	@ tmp349,
	ldr	lr, [r0, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	lr, [r4, #212]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.BwdRefIsFldSave
	ldr	r0, [r7, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r0, [r4, #216]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.FwdRefIsFldSave
	ldr	r6, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	lr, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, r1]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DnrMbInfoStAddr
	ldr	r0, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r7, [r0, #20]	@ <variable>.Stride, <variable>.Stride
	str	r7, [r4, #236]	@ <variable>.Stride, <variable>.Mp2DecParam.VahbStride
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r5, [r4, #240]	@ <variable>.ChromOffset, <variable>.Mp2DecParam.uv_offset
.L555:
	add	r0, r3, #4	@ tmp372, ivtmp.2128,
	ldr	r5, [r3, #4]	@ tmp377, <variable>.intra_quantizer_matrix
	ldr	r7, [r3, #0]	@ tmp357, <variable>.intra_quantizer_matrix
	add	ip, ip, #2	@ i, i,
	ldr	r6, [r3, #256]	@ tmp359, <variable>.non_intra_quantizer_matrix
	add	r1, r2, #1	@ tmp373, ivtmp.2132,
	ldr	lr, [r0, #256]	@ tmp378, <variable>.non_intra_quantizer_matrix
	cmp	ip, #64	@ i,
	strb	r7, [r2, #88]	@ tmp357, <variable>.Mp2DecParam.IntraQuantTab
	add	r3, r0, #4	@ ivtmp.2128, tmp372,
	strb	r6, [r2, #24]	@ tmp359, <variable>.Mp2DecParam.NonIntraQuantTab
	add	r2, r1, #1	@ ivtmp.2132, tmp373,
	strb	r5, [r1, #88]	@ tmp377, <variable>.Mp2DecParam.IntraQuantTab
	strb	lr, [r1, #24]	@ tmp378, <variable>.Mp2DecParam.NonIntraQuantTab
	bne	.L555	@,
	mov	r0, r4	@, pCtx
	bl	MP2_EstimatePicQp	@
	mov	r3, #1	@ D.33097,
	strb	r0, [r4, #152]	@, <variable>.Mp2DecParam.EstmatedPicQp
.L538:
	mov	r0, r3	@, D.33097
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L535:
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	MP2_GetImageBuffer	@
	subs	r3, r0, #0	@ D.33094,
	beq	.L538	@,
	movw	r7, #:lower16:73696	@ tmp264,
	movw	r6, #:lower16:72096	@ tmp266,
	movt	r7, #:upper16:73696	@ tmp264,
	movt	r6, #:upper16:72096	@ tmp266,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L539	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r0, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r0, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r0, #24]	@ <variable>.DispTime, pImg,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r6, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r1, [r0, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r0, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r7, [r0, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	mvn	r7, #0	@,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r6, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r6, #0	@ tmp283,
	str	r1, [r0, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r6, [lr, #56]	@ tmp283, <variable>.pstExtraData,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	subs	ip, r3, #3	@ tmp285, <variable>.picture_structure,
	movne	ip, #1	@ tmp285
	str	ip, [r0, #128]	@ tmp285, <variable>.is_fld_save
.L539:
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r2, #3	@ <variable>.picture_coding_type,
	beq	.L536	@,
	movw	ip, #:lower16:72052	@ tmp287,
	movt	ip, #:upper16:72052	@ tmp287,
	movw	r3, #:lower16:72088	@ tmp290,
	movw	r5, #:lower16:72092	@ tmp291,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r3, #:upper16:72088	@ tmp290,
	movt	r5, #:upper16:72092	@ tmp291,
	cmp	r0, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r3]	@ prephitmp.2111, <variable>.CodecInfo.FwdFsID
	ldr	r7, [r4, r5]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	r0, #2	@ iftmp.446,
	moveq	r0, #1	@ iftmp.446,
	cmp	r2, r7	@ prephitmp.2111, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, ip]	@ iftmp.446, <variable>.CodecInfo.RefNum
	beq	.L542	@,
	movw	lr, #:lower16:73696	@ tmp293,
	movt	lr, #:upper16:73696	@ tmp293,
	mov	r1, r2	@, prephitmp.2111
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r5]	@ prephitmp.2111, <variable>.CodecInfo.BwdFsID
.L542:
	movw	r0, #:lower16:72096	@ tmp298,
	movt	r0, #:upper16:72096	@ tmp298,
	movw	r5, #:lower16:72088	@ tmp296,
	movw	r7, #:lower16:72092	@ tmp297,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r5, #:upper16:72088	@ tmp296,
	movt	r7, #:upper16:72092	@ tmp297,
	movw	r6, #:lower16:73696	@ tmp300,
	movt	r6, #:upper16:73696	@ tmp300,
	str	r2, [r4, r5]	@ prephitmp.2111, <variable>.CodecInfo.FwdFsID
	str	r1, [r4, r7]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	b	.L536	@
.L545:
	movw	r2, #:lower16:73696	@ tmp333,
	movw	ip, #:lower16:72096	@ tmp335,
	movt	r2, #:upper16:73696	@ tmp333,
	movt	ip, #:upper16:72096	@ tmp335,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, #0	@ D.33097,
	mov	r0, r3	@, D.33097
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L529:
	movw	r0, #45329	@ tmp191,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r1, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L531	@,
	movw	ip, #:lower16:72024	@ tmp193,
	movt	ip, #:upper16:72024	@ tmp193,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r2, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L567	@,
.L531:
	movw	ip, #:lower16:72024	@ tmp205,
	movt	ip, #:upper16:72024	@ tmp205,
	mov	r2, #1	@ tmp206,
	str	r2, [r4, ip]	@ tmp206,
	b	.L530	@
.L565:
	ldrb	ip, [r5, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	strb	ip, [r5, #6]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #4]	@ <variable>.forward_f_code, <variable>.f_code
	strb	ip, [r5, #7]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #5]	@ <variable>.forward_f_code, <variable>.f_code
	b	.L528	@
.L566:
	movw	r0, #:lower16:73696	@ tmp181,
	movw	r1, #:lower16:72096	@ tmp183,
	movt	r0, #:upper16:73696	@ tmp181,
	movt	r1, #:upper16:72096	@ tmp183,
	mov	lr, #0	@ tmp180,
	str	lr, [r4, r3]	@ tmp180, <variable>.CodecInfo.Second_Field
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	ldr	r1, [r4, r1]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #1	@ <variable>.picture_coding_type,
	beq	.L530	@,
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r2, #3	@ <variable>.picture_coding_type,
	beq	.L530	@,
	movw	r3, #:lower16:72012	@ tmp187,
	movt	r3, #:upper16:72012	@ tmp187,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #192	@ tmp190, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, r3]	@ tmp190,
	b	.L530	@
.L567:
	movw	r1, #:lower16:73696	@ tmp195,
	movw	lr, #:lower16:72096	@ tmp197,
	movt	r1, #:upper16:73696	@ tmp195,
	movt	lr, #:upper16:72096	@ tmp197,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #1	@ <variable>.picture_coding_type,
	beq	.L531	@,
	ldrb	r0, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	movwne	r0, #:lower16:72012	@ tmp201,
	movtne	r0, #:upper16:72012	@ tmp201,
	ldrne	r2, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrne	r2, r2, #192	@ tmp204, <variable>.CodecInfo.StreamIntegrality,
	strne	r2, [r4, r0]	@ tmp204, <variable>.CodecInfo.StreamIntegrality
	b	.L531	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73336	@ tmp153,
	movt	r3, #:upper16:73336	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r2, [r3, #48]	@ D.32593, <variable>.horizontal_size
	cmp	r2, #31	@ D.32593,
	bls	.L569	@,
	ldr	r3, [r3, #52]	@ D.32595, <variable>.vertical_size
	cmp	r3, #31	@ D.32595,
	bls	.L569	@,
	ldr	r1, [r0, #0]	@ D.32599, <variable>.pstExtraData
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L583	@,
	mov	r5, r2	@ PicWidth, D.32593
	mov	r6, r3	@ PicHeight, D.32595
	mov	r8, #5	@ prephitmp.2214,
	mov	r9, #2	@ PmvNum,
	mov	sl, #3	@ DecFsNum,
.L574:
	mov	r1, #36	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp166,
	mov	r7, sp	@ tmp188,
	ldr	r3, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #28]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #2]	@ tmp166, FspInstCfg.s32RprEnable
	strb	r3, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r3, #0	@ tmp175,
	str	r5, [sp, #12]	@ PicWidth, FspInstCfg.s32DecFsWidth
	movw	r5, #:lower16:73696	@ tmp177,
	str	r6, [sp, #32]	@ PicHeight, FspInstCfg.s32DispFsHeight
	movt	r5, #:upper16:73696	@ tmp177,
	str	r6, [sp, #16]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	ip, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #7]	@ prephitmp.2214, FspInstCfg.s32ExpectedDispFsNum
	cmp	ip, #24	@ <variable>.eCapLevel,
	uxtbne	r2, sl	@ iftmp.430, DecFsNum
	strb	r2, [sp, #5]	@ iftmp.430, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, sp	@,
	uxtbne	r9, r9	@ iftmp.431, PmvNum
	moveq	r9, #1	@ iftmp.431,
	strb	r9, [sp, #8]	@ iftmp.431, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	strb	r3, [sp, #4]	@ tmp175, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	beq	.L584	@,
.L569:
	mov	r0, #0	@ D.32596,
.L581:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L584:
	ldr	lr, [r4, #0]	@ temp.2237, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	rsbs	r0, r0, #1	@ D.32596,
	movcc	r0, #0	@ D.32596
	b	.L581	@
.L583:
	ldr	ip, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L571	@,
	ldr	r5, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r5	@ D.32593, PicWidth
	bhi	.L569	@,
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.32595, PicHeight
	bhi	.L569	@,
	ldr	r2, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L573	@,
	add	r9, sl, #1	@ PmvNum.2225, DecFsNum,
	cmp	r9, #17	@ PmvNum.2225,
	movge	r9, #17	@ PmvNum,
.L573:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2214, <variable>.stChanOption.s32DisplayFrameNum
	b	.L574	@
.L571:
	ldr	r0, [r1, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r0	@ D.32593, <variable>.stChanOption.s32MaxWidth
	bhi	.L569	@,
	ldr	ip, [r1, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, ip	@ D.32595, <variable>.stChanOption.s32MaxHeight
	bhi	.L569	@,
	ldr	r5, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r5, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L576	@,
	add	r9, sl, #1	@ PmvNum.2229, DecFsNum,
	cmp	r9, #17	@ PmvNum.2229,
	movge	r9, #17	@ PmvNum,
.L576:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2214, <variable>.stChanOption.s32DisplayFrameNum
	mov	r5, r2	@ PicWidth, D.32593
	mov	r6, r3	@ PicHeight, D.32595
	b	.L574	@
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:72048	@ tmp154,
	movt	r3, #:upper16:72048	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movw	r1, #:lower16:73336	@ tmp152,
	movw	r2, #:lower16:73340	@ tmp153,
	movt	r1, #:upper16:73336	@ tmp152,
	movt	r2, #:upper16:73340	@ tmp153,
	cmp	r0, #1	@ <variable>.CodecInfo.MpegFlag,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r5, [r4, r1]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r4, r2]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L587	@,
	cmp	r0, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L621	@,
	movw	r2, #:lower16:72012	@ tmp167,
	movt	r2, #:upper16:72012	@ tmp167,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #3538944	@ <variable>.CodecInfo.StreamIntegrality,
	bne	.L622	@,
.L591:
	mov	r2, #1	@ tmp181,
	str	r2, [r4, r3]	@ tmp181, <variable>.CodecInfo.MpegFlag
.L589:
	mov	r3, #0	@ tmp193,
	mov	r0, #1	@ tmp182,
	mov	r8, #3	@ tmp186,
	mov	r1, #5	@ tmp192,
	strb	r3, [r5, #8]	@ tmp193, <variable>.intra_dc_precision
	strb	r3, [r5, #12]	@ tmp193, <variable>.concealment_motion_vectors
	strb	r0, [r5, #28]	@ tmp182, <variable>.chroma_format
	strb	r8, [r5, #9]	@ tmp186, <variable>.picture_structure
	str	r1, [r5, #144]	@ tmp192, <variable>.matrix_coefficients
	strb	r0, [r5, #27]	@ tmp182, <variable>.progressive_sequence
	strb	r0, [r5, #18]	@ tmp182, <variable>.progressive_frame
	strb	r0, [r5, #11]	@ tmp182, <variable>.frame_pred_frame_dct
	strb	r3, [r5, #13]	@ tmp193, <variable>.q_scale_type
	strb	r3, [r5, #14]	@ tmp193, <variable>.intra_vlc_format
	strb	r3, [r5, #15]	@ tmp193, <variable>.alternate_scan
.L590:
	ldr	r1, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	movw	r3, #:lower16:72048	@ tmp206,
	movt	r3, #:upper16:72048	@ tmp206,
	add	r0, r1, #15	@ tmp203, <variable>.horizontal_size,
	mov	r2, r0, lsr #4	@ tmp205, tmp203,
	str	r2, [r5, #56]	@ tmp205, <variable>.mb_width
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	ip, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L623	@,
.L595:
	ldr	r2, [r5, #52]	@ temp.2281, <variable>.vertical_size
	add	r0, r2, #15	@ tmp212, temp.2281,
	mov	r1, r0, lsr #4	@ iftmp.458, tmp212,
.L596:
	movw	ip, #:lower16:72048	@ tmp215,
	movt	ip, #:upper16:72048	@ tmp215,
	str	r1, [r5, #60]	@ iftmp.458, <variable>.mb_height
	mov	r1, #0	@ tmp214,
	str	r1, [r5, #64]	@ tmp214, <variable>.mb_height_progressive_subtract1mb
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r8, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L624	@,
.L597:
	movw	r3, #:lower16:72060	@ tmp224,
	movt	r3, #:upper16:72060	@ tmp224,
	ldr	r8, [r4, r3]	@ prephitmp.2257, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2257,
	beq	.L619	@,
	ldr	r2, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r1, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	r2, r1	@ <variable>.mb_width, <variable>.mb_width
	beq	.L600	@,
.L619:
	ldr	r3, [r4, #0]	@ prephitmp.2259, <variable>.pstExtraData
.L599:
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L625	@,
.L603:
	movw	r8, #:lower16:g_event_report	@ tmp282,
	movt	r8, #:upper16:g_event_report	@ tmp282,
	mov	r7, #0	@ tmp281,
	str	r7, [r3, #728]	@ tmp281, <variable>.s32DSDWaitFlag
	ldr	r3, [r8, #0]	@ g_event_report.464, g_event_report
	cmp	r3, r7	@ g_event_report.464,
	beq	.L610	@,
	ldrh	lr, [r6, #56]	@, <variable>.mb_width
	movw	r2, #:lower16:73696	@ tmp287,
	movt	r2, #:upper16:73696	@ tmp287,
	mov	r1, #2	@,
	strh	lr, [sp, #4]	@ movhi	@, para
	ldrh	ip, [r6, #60]	@, <variable>.mb_height
	strh	ip, [sp, #6]	@ movhi	@, para
	ldrh	r6, [r5, #56]	@, <variable>.mb_width
	strh	r6, [sp, #8]	@ movhi	@, para
	ldrh	r5, [r5, #60]	@, <variable>.mb_height
	strh	r5, [sp, #10]	@ movhi	@, para
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #4	@,,
	blx	r3	@ g_event_report.464
.L610:
	movw	r5, #:lower16:73696	@ tmp290,
	movw	r7, #:lower16:72092	@ tmp292,
	movt	r5, #:upper16:73696	@ tmp290,
	movt	r7, #:upper16:72092	@ tmp292,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L611	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp316,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp316,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp306,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp306, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp306, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp306, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp306, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp306, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp306, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L626	@,
.L611:
	add	r2, r4, #72704	@ D.33339, pCtx,
	movw	r1, #:lower16:72052	@ tmp328,
	add	r5, r2, #640	@ D.33339, D.33339,
	movt	r1, #:upper16:72052	@ tmp328,
	movw	r3, #:lower16:73696	@ tmp331,
	movt	r3, #:upper16:73696	@ tmp331,
	mov	r0, #0	@ tmp329,
	str	r0, [r4, r1]	@ tmp329, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r1, r5	@, D.33339
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2311, <variable>.pstExtraData
	ldr	r6, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r6, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L612	@,
	ldr	ip, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L627	@,
.L612:
	movw	lr, #:lower16:73696	@ tmp339,
	movt	lr, #:upper16:73696	@ tmp339,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L613	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r8, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L628	@,
.L614:
	mov	r0, r5	@, D.33339
	bl	ResetVoQueue	@
.L613:
	movw	r5, #:lower16:72060	@ tmp345,
	movw	ip, #:lower16:72076	@ tmp347,
	movt	r5, #:upper16:72060	@ tmp345,
	movt	ip, #:upper16:72076	@ tmp347,
	mov	r1, #0	@ tmp346,
	mov	r0, r4	@, pCtx
	str	r1, [r4, r5]	@ tmp346, <variable>.CodecInfo.Imgbuf_allocated
	str	r1, [r4, ip]	@ tmp346, <variable>.CodecInfo.QueueImageNum
	bl	MP2_ArrangeVHBMem	@
	mov	r8, r0	@ prephitmp.2257,
	str	r0, [r4, r5]	@ prephitmp.2257, <variable>.CodecInfo.Imgbuf_allocated
.L602:
	movw	r3, #:lower16:72008	@ tmp350,
	movt	r3, #:upper16:72008	@ tmp350,
	str	r8, [r4, r3]	@ prephitmp.2257, <variable>.CodecInfo.NewSeqInited
.L615:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L621:
	movw	r8, #:lower16:72012	@ tmp162,
	movt	r8, #:upper16:72012	@ tmp162,
	ldr	r0, [r4, r8]	@ tmp164,
	and	r1, r0, #1769472	@ tmp163, tmp164,
	cmp	r1, #589824	@ tmp163,
	bne	.L590	@,
	b	.L591	@
.L587:
	movw	r2, #:lower16:72012	@ tmp156,
	movt	r2, #:upper16:72012	@ tmp156,
	movw	r8, #:lower16:1179666	@ tmp157,
	movt	r8, #:upper16:1179666	@ tmp157,
	ldr	ip, [r4, r2]	@ tmp159,
	and	r0, ip, r8	@ tmp157, tmp159, tmp157
	cmp	r0, #1179648	@ tmp157,
	moveq	r0, #2	@ tmp161,
	streq	r0, [r4, r3]	@ tmp161, <variable>.CodecInfo.MpegFlag
	bne	.L589	@,
	b	.L590	@
.L624:
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r3, r1	@ <variable>.progressive_sequence,
	bne	.L597	@,
	add	ip, r2, #31	@ tmp218, temp.2281,
	add	r8, r2, #15	@ tmp221, temp.2281,
	mov	r0, ip, lsr #5	@ tmp219, tmp218,
	mov	r1, r8, lsr #4	@ tmp222, tmp221,
	rsb	r2, r1, r0, asl #1	@, tmp223, tmp222, tmp219,
	str	r2, [r5, #64]	@ tmp223, <variable>.mb_height_progressive_subtract1mb
	b	.L597	@
.L623:
	ldrb	r8, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r8, #0	@ <variable>.progressive_sequence,
	bne	.L595	@,
	ldr	r2, [r5, #52]	@ temp.2281, <variable>.vertical_size
	add	r3, r2, #31	@ tmp209, temp.2281,
	mov	ip, r3, lsr #5	@ tmp211, tmp209,
	mov	r1, ip, asl #1	@ iftmp.458, tmp211,
	b	.L596	@
.L622:
	tst	r1, #131072	@ prephitmp.2261,
	mov	ip, #2	@ tmp171,
	orreq	r1, r1, ip	@ prephitmp.2261, prephitmp.2261,
	streq	r1, [r4, r2]	@ prephitmp.2261, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #1048576	@ prephitmp.2261,
	str	ip, [r4, r3]	@ tmp171, <variable>.CodecInfo.MpegFlag
	orreq	r1, r1, #16	@ tmp178, prephitmp.2261,
	movwne	r3, #:lower16:72048	@ tmp176,
	movweq	r3, #:lower16:72048	@ tmp179,
	movtne	r3, #:upper16:72048	@ tmp176,
	movteq	r3, #:upper16:72048	@ tmp179,
	movweq	r2, #:lower16:72012	@ tmp177,
	movteq	r2, #:upper16:72012	@ tmp177,
	ldr	r3, [r4, r3]	@ prephitmp.2315, <variable>.CodecInfo.MpegFlag
	streq	r1, [r4, r2]	@ tmp178, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #1	@ prephitmp.2315,
	bne	.L590	@,
	b	.L589	@
.L600:
	ldr	r0, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	ip, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r0, ip	@ <variable>.mb_height, <variable>.mb_height
	bne	.L619	@,
	ldr	r3, [r4, #0]	@ prephitmp.2259, <variable>.pstExtraData
	ldr	r2, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r2, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L602	@,
	b	.L599	@
.L626:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.33338, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.33338, <variable>.CodecInfo.FwdFsID
	b	.L611	@
.L627:
	movw	r7, #:lower16:72060	@ tmp335,
	movt	r7, #:upper16:72060	@ tmp335,
	ldr	r8, [r4, r7]	@ prephitmp.2257, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2257,
	bne	.L602	@,
	mov	r0, r5	@, D.33339
	bl	ResetVoQueue	@
	mov	r1, r8	@, prephitmp.2257
	mov	r0, r4	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	movw	r3, #:lower16:72076	@ tmp337,
	movt	r3, #:upper16:72076	@ tmp337,
	str	r6, [r4, r3]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.CodecInfo.QueueImageNum
	mov	r8, r0	@ prephitmp.2257,
	str	r0, [r4, r7]	@ prephitmp.2257, <variable>.CodecInfo.Imgbuf_allocated
	b	.L602	@
.L625:
	movw	r8, #:lower16:73715	@ tmp234,
	movw	sl, #:lower16:72088	@ tmp237,
	movt	r8, #:upper16:73715	@ tmp234,
	movt	sl, #:upper16:72088	@ tmp237,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, #0	@ tmp231,
	strb	r7, [r4, r8]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedFlushFrame
	str	sl, [sp, #20]	@ tmp231, NewNum
	str	sl, [sp, #16]	@ tmp231, ReadNum
	str	sl, [sp, #12]	@ tmp231, RefNum
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L620	@,
	movw	r9, #:lower16:72092	@ tmp242,
	movt	r9, #:upper16:72092	@ tmp242,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L620	@,
	movw	lr, #:lower16:73696	@ tmp247,
	movt	lr, #:upper16:73696	@ tmp247,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:73715	@ tmp252,
	movw	r3, #:lower16:73696	@ tmp255,
	movt	r2, #:upper16:73715	@ tmp252,
	movt	r3, #:upper16:73696	@ tmp255,
	mov	ip, #0	@ tmp253,
	add	r1, sp, #12	@,,
	cmp	r0, #0	@ pImage
	strne	r7, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	strb	ip, [r4, r2]	@ tmp253, <variable>.DSDNeedFlushFrame
	add	r2, sp, #16	@,,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #20	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r1, [r2, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	mov	r3, r2	@ prephitmp.2259, <variable>.pstExtraData
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrWidth, <variable>.mb_width,
	bcc	.L608	@,
	ldr	r0, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	r1, [r2, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrHeight, <variable>.mb_height,
	bcc	.L608	@,
	ldr	lr, [sp, #16]	@ ReadNum, ReadNum
	ldr	r0, [sp, #20]	@ NewNum, NewNum
	add	ip, r0, lr	@ tmp266, NewNum, ReadNum
	cmp	ip, #0	@ tmp266,
	ble	.L603	@,
	movw	r3, #:lower16:73714	@ tmp269,
	movt	r3, #:upper16:73714	@ tmp269,
	mov	r1, #1	@ tmp270,
	strb	r1, [r4, r3]	@ tmp270, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp270, <variable>.s32DSDWaitFlag
	b	.L615	@
.L620:
	strb	sl, [r4, r8]	@ tmp231, <variable>.DSDNeedFlushFrame
	b	.L615	@
.L628:
	movw	r2, #:lower16:73714	@ tmp343,
	movt	r2, #:upper16:73714	@ tmp343,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r1, #1	@ <variable>.DSDNeedClearQue,
	bne	.L613	@,
	b	.L614	@
.L608:
	ldr	ip, [sp, #20]	@ NewNum, NewNum
	cmp	ip, #0	@ NewNum,
	ble	.L629	@,
.L609:
	movw	r3, #:lower16:73714	@ tmp276,
	movt	r3, #:upper16:73714	@ tmp276,
	mov	r1, #0	@ tmp277,
	mov	r0, #1	@ tmp280,
	strb	r1, [r4, r3]	@ tmp277, <variable>.DSDNeedClearQue
	str	r0, [r2, #728]	@ tmp280, <variable>.s32DSDWaitFlag
	b	.L615	@
.L629:
	ldr	lr, [sp, #16]	@ ReadNum, ReadNum
	cmp	lr, #4	@ ReadNum,
	ble	.L603	@,
	b	.L609	@
	.fnend
	.size	MP2_GetSequenceInfo, .-MP2_GetSequenceInfo
	.align	2
	.global	GetSliceHdr
	.type	GetSliceHdr, %function
GetSliceHdr:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r6, r0, #71680	@ pBs, pCtx,
	movw	r7, #:lower16:72072	@ tmp159,
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #576	@ pBs, pBs,
	movt	r7, #:upper16:72072	@ tmp159,
	b	.L631	@
.L636:
	bl	BsShow	@
	mov	r5, r0	@ D.32779,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	sub	r5, r5, #256	@ tmp146, D.32779,
	sub	r5, r5, #1	@ tmp146, tmp146,
	mov	r1, #32	@,
	cmp	r5, #174	@ tmp146,
	str	r0, [r4, r7]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r6	@, pBs
	bls	.L641	@,
	bl	BsSkip	@
.L631:
	mov	r0, r4	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r5, r0	@ ret.2341,
	cmp	r5, #1	@ ret.2341,
	mov	r0, r6	@, pBs
	beq	.L636	@,
	cmn	r5, #1	@ ret.2341,
	beq	.L637	@,
.L640:
	mov	r0, r5	@ prephitmp.2330, ret.2341
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L637:
	movw	lr, #:lower16:g_event_report	@ tmp154,
	movt	lr, #:upper16:g_event_report	@ tmp154,
	ldr	r3, [lr, #0]	@ g_event_report.436, g_event_report
	cmp	r3, #0	@ g_event_report.436,
	beq	.L640	@,
	movw	r0, #:lower16:73696	@ tmp155,
	movt	r0, #:upper16:73696	@ tmp155,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.436
	mov	r0, r5	@ prephitmp.2330, ret.2341
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L641:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mvnle	r5, #0	@ ret.2341,
	ble	.L637	@,
	movw	r0, #:lower16:72008	@ tmp150,
	movt	r0, #:upper16:72008	@ tmp150,
	mov	r2, #0	@ tmp149,
	movw	r3, #:lower16:72068	@ tmp148,
	ldr	r5, [r4, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	movt	r3, #:upper16:72068	@ tmp148,
	cmp	r5, r2	@ <variable>.CodecInfo.NewSeqInited,
	str	r2, [r4, r3]	@ tmp149, <variable>.CodecInfo.HDRState
	bne	.L634	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L640	@,
.L634:
	mov	r0, r4	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ prephitmp.2330,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	GetSliceHdr, .-GetSliceHdr
	.align	2
	.global	MP2_GetHDR
	.type	MP2_GetHDR, %function
MP2_GetHDR:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	movw	r8, #:lower16:73712	@ tmp163,
	movt	r8, #:upper16:73712	@ tmp163,
	movw	fp, #:lower16:73336	@ tmp161,
	movw	r6, #:lower16:73340	@ tmp162,
	movt	fp, #:upper16:73336	@ tmp161,
	movt	r6, #:upper16:73340	@ tmp162,
	mov	r4, r0	@ pCtx, pCtx
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r1, #32	@,
	mov	sl, #0	@ tmp164,
	strb	sl, [r0, r8]	@ tmp164, <variable>.IsWaitToDecFlag
	mov	r0, r5	@, pBs
	ldr	r9, [r4, fp]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	fp, [r4, r6]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	bl	BsShow	@
	movw	r7, #:lower16:72012	@ tmp166,
	movt	r7, #:upper16:72012	@ tmp166,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.StreamIntegrality
	str	r1, [sp, #16]	@, %sfp
	mov	r6, r0	@ code,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r2, #:lower16:72072	@ tmp167,
	movt	r2, #:upper16:72072	@ tmp167,
	mov	r1, #32	@,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #439	@ tmp168,
	cmp	r6, r3	@ code, tmp168
	beq	.L680	@,
	movw	lr, #435	@ tmp208,
	cmp	r6, lr	@ code, tmp208
	cmpne	r6, #440	@, code,
	bne	.L681	@,
.L644:
	movw	r3, #:lower16:72068	@ tmp221,
	movt	r3, #:upper16:72068	@ tmp221,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r7, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L682	@,
.L647:
	movw	r2, #435	@ tmp235,
	cmp	r6, r2	@ code, tmp235
	beq	.L651	@,
.L685:
	bls	.L683	@,
	movw	r3, #437	@ tmp238,
	cmp	r6, r3	@ code, tmp238
	beq	.L653	@,
	bcs	.L684	@,
.L652:
	mov	r0, #0	@ prephitmp.2360,
.L646:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L681:
	cmp	r6, #256	@ code,
	beq	.L644	@,
	movw	r2, #435	@ tmp235,
	cmp	r6, r2	@ code, tmp235
	bne	.L685	@,
.L651:
	mov	r0, r4	@, pCtx
	bl	sequence_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L678	@,
	movw	r5, #:lower16:72012	@ tmp249,
	movt	r5, #:upper16:72012	@ tmp249,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ands	r6, r6, #7	@ tmp250, <variable>.CodecInfo.StreamIntegrality,
	bne	.L658	@,
	mov	r1, r9	@, pSyntaxInfNew
	mov	lr, #1	@ tmp252,
	mov	r2, #188	@,
	mov	r0, fp	@, pSyntaxInfOld
	strb	lr, [r9, #0]	@ tmp252, <variable>.valid_flag
	bl	memcpy	@
	movw	r3, #:lower16:72016	@ tmp258,
	movt	r3, #:upper16:72016	@ tmp258,
	mov	r0, r6	@ prephitmp.2360, tmp250
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	add	r1, r2, #1	@ tmp261, <variable>.CodecInfo.SeqCnt,
	str	r1, [r4, r3]	@ tmp261, <variable>.CodecInfo.SeqCnt
	b	.L646	@
.L683:
	cmp	r6, #256	@ code,
	beq	.L649	@,
	bcs	.L686	@,
.L648:
	sub	r2, r6, #256	@ tmp307, code,
	sub	r0, r2, #1	@ tmp307, tmp307,
	cmp	r0, #174	@ tmp307,
	bhi	.L665	@,
	movw	r3, #:lower16:72008	@ tmp309,
	movt	r3, #:upper16:72008	@ tmp309,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	cmp	r7, #0	@ <variable>.CodecInfo.NewSeqInited,
	beq	.L687	@,
.L666:
	movw	r2, #:lower16:72012	@ tmp313,
	movt	r2, #:upper16:72012	@ tmp313,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #589824	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L652	@,
	movw	r3, #:lower16:72068	@ tmp316,
	movt	r3, #:upper16:72068	@ tmp316,
	orr	r0, r1, #4194304	@ tmp321, <variable>.CodecInfo.StreamIntegrality,
	mov	lr, #1	@ tmp317,
	str	r0, [r4, r2]	@ tmp321, <variable>.CodecInfo.StreamIntegrality
	mov	r1, r6	@, code
	mov	r0, r4	@, pCtx
	str	lr, [r4, r3]	@ tmp317, <variable>.CodecInfo.HDRState
	bl	MP2_DecSlice	@
	cmp	r0, #1	@,
	movne	r0, #0	@, prephitmp.2360
	moveq	r0, #1	@, prephitmp.2360
	b	.L646	@
.L684:
	movw	ip, #439	@ tmp240,
	cmp	r6, ip	@ code, tmp240
	beq	.L652	@,
	cmp	r6, #440	@ code,
	bne	.L648	@,
	mov	r0, r4	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L652	@,
	ldr	r0, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp277,
	movw	lr, #:lower16:g_event_report	@ tmp278,
	movt	r2, #:upper16:72012	@ tmp277,
	movt	lr, #:upper16:g_event_report	@ tmp278,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [lr, #0]	@ g_event_report.2386, g_event_report
	cmp	r3, #0	@ g_event_report.2386,
	bne	.L675	@,
	b	.L664	@
.L686:
	cmp	r6, #432	@ code,
	bls	.L648	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r6, r0, #0	@ D.32738,
	movne	r0, r6	@ prephitmp.2360, D.32738
	bne	.L646	@,
	movw	r5, #:lower16:73696	@ tmp293,
	movt	r5, #:upper16:73696	@ tmp293,
	add	lr, r4, #71680	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	bl	MP2_ClearCurPacket	@
	movw	r0, #:lower16:g_event_report	@ tmp297,
	movt	r0, #:upper16:g_event_report	@ tmp297,
	ldr	r3, [r0, #0]	@ g_event_report.2396, g_event_report
	cmp	r3, #0	@ g_event_report.2396,
	bne	.L663	@,
	mvn	r0, #0	@ prephitmp.2360,
	b	.L646	@
.L682:
	movw	r2, #:lower16:72012	@ tmp223,
	movt	r2, #:upper16:72012	@ tmp223,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L647	@,
	movw	r0, #:lower16:73712	@ tmp226,
	movt	r0, #:upper16:73712	@ tmp226,
	orr	r1, r1, #8388608	@ tmp232, <variable>.CodecInfo.StreamIntegrality,
	mov	ip, #0	@ tmp234,
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp232, <variable>.CodecInfo.StreamIntegrality
	str	ip, [r4, r3]	@ tmp234, <variable>.CodecInfo.HDRState
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r7	@ prephitmp.2360, <variable>.CodecInfo.HDRState
	b	.L646	@
.L680:
	mov	ip, r5	@, pBs
	add	lr, sp, #52	@,,
	ldmia	ip!, {r0, r1, r2, r3}	@,,,,
	str	lr, [sp, #4]	@, %sfp
	str	ip, [sp, #20]	@, %sfp
	add	ip, sp, #24	@ tmp170,,
	mov	lr, ip	@ tmp330, tmp170
	stmia	lr!, {r0, r1, r2, r3}	@ tmp330,,,,
	ldr	r3, [sp, #20]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	lr, {r0, r1, r2}	@ tmp330,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	ldr	ip, [sp, #4]	@, %sfp
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp330,,,
	stmia	ip, {r0, r1, r2}	@ tmp332,,,
	mov	r1, #32	@,
	add	r0, sp, #52	@,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r2, r0	@ D.32679,
	add	r0, sp, #52	@,,
	str	r2, [sp, #12]	@,
	bl	BsGet	@
	ldr	ip, [sp, #12]	@,
	movw	r2, #:lower16:1128615492	@ tmp177,
	movw	r3, #:lower16:1213419593	@ tmp180,
	movt	r2, #:upper16:1128615492	@ tmp177,
	movt	r3, #:upper16:1213419593	@ tmp180,
	cmp	r0, r2	@, tmp177
	cmpeq	ip, r3	@, D.32679, tmp180
	bne	.L644	@,
	movw	r3, #:lower16:72068	@ tmp185,
	movt	r3, #:upper16:72068	@ tmp185,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r6, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L688	@,
.L645:
	movw	r3, #:lower16:73713	@ tmp202,
	movt	r3, #:upper16:73713	@ tmp202,
	mov	r2, #1	@ tmp203,
	mov	r0, #0	@ prephitmp.2360,
	strb	r2, [r4, r3]	@ tmp203, <variable>.IsStreamEndFlag
	b	.L646	@
.L649:
	mov	r0, r4	@, pCtx
	bl	picture_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L652	@,
	ldr	ip, [sp, #16]	@, %sfp
	movw	r3, #:lower16:72012	@ tmp285,
	movw	r1, #:lower16:g_event_report	@ tmp286,
	movt	r3, #:upper16:72012	@ tmp285,
	movt	r1, #:upper16:g_event_report	@ tmp286,
	str	ip, [r4, r3]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2390, g_event_report
	cmp	r3, #0	@ g_event_report.2390,
	bne	.L675	@,
	b	.L664	@
.L653:
	mov	r0, r4	@, pCtx
	bl	extension	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L652	@,
.L678:
	ldr	r3, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp299,
	movw	r1, #:lower16:g_event_report	@ tmp300,
	movt	r2, #:upper16:72012	@ tmp299,
	movt	r1, #:upper16:g_event_report	@ tmp300,
	str	r3, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2398, g_event_report
	cmp	r3, #0	@ g_event_report.2398,
	beq	.L664	@,
.L675:
	movw	ip, #:lower16:73696	@ tmp301,
	movt	ip, #:upper16:73696	@ tmp301,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2398
.L664:
	movw	r1, #:lower16:73696	@ tmp303,
	movt	r1, #:upper16:73696	@ tmp303,
	add	lr, r4, #71680	@, pCtx,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	bl	MP2_ClearCurPacket	@
	mvn	r0, #0	@ prephitmp.2360,
	b	.L646	@
.L658:
	ldrb	r0, [fp, #0]	@ zero_extendqisi2	@ <variable>.valid_flag, <variable>.valid_flag
	cmp	r0, #1	@ <variable>.valid_flag,
	beq	.L689	@,
.L665:
	movw	r2, #:lower16:g_event_report	@ tmp323,
	movt	r2, #:upper16:g_event_report	@ tmp323,
	ldr	r3, [r2, #0]	@ g_event_report.2404, g_event_report
	cmp	r3, #0	@ g_event_report.2404,
	beq	.L652	@,
.L673:
	movw	ip, #:lower16:73696	@ tmp324,
	movt	ip, #:upper16:73696	@ tmp324,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2404
	mov	r0, #0	@ prephitmp.2360,
	b	.L646	@
.L688:
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L645	@,
	movw	r1, #:lower16:73713	@ tmp190,
	movt	r1, #:upper16:73713	@ tmp190,
	orr	r0, r2, #8388608	@ tmp199, <variable>.CodecInfo.StreamIntegrality,
	str	sl, [r4, r3]	@ tmp164, <variable>.CodecInfo.HDRState
	str	r0, [r4, r7]	@ tmp199, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsStreamEndFlag
	strb	r6, [r4, r8]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r6	@ prephitmp.2360, <variable>.CodecInfo.HDRState
	b	.L646	@
.L687:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r1, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	ip, #1	@ <variable>.s32DSDWaitFlag,
	moveq	r0, r7	@ prephitmp.2360, <variable>.CodecInfo.NewSeqInited
	bne	.L666	@,
	b	.L646	@
.L689:
	mov	r1, fp	@, pSyntaxInfOld
	mov	r0, r9	@, pSyntaxInfNew
	mov	r2, #188	@,
	bl	memcpy	@
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	ip, #:lower16:g_event_report	@ tmp271,
	movt	ip, #:upper16:g_event_report	@ tmp271,
	bic	r1, r3, #7	@ tmp270, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r5]	@ tmp270, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.2382, g_event_report
	cmp	r3, #0	@ g_event_report.2382,
	bne	.L673	@,
	b	.L652	@
.L663:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.32738
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2396
	mvn	r0, #0	@ prephitmp.2360,
	b	.L646	@
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #72704	@ D.34418, pCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r2, #96	@ D.34418, D.34418,
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, #160	@,
	mov	r0, r5	@, D.34418
	bl	memcpy	@
	movw	r3, #:lower16:73696	@ tmp155,
	movt	r3, #:upper16:73696	@ tmp155,
	add	r0, r4, #45312	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r1, r5	@, D.34418
	ldr	r2, [r4, r3]	@, <variable>.ChanID
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L703	@,
.L696:
	mov	r5, #0	@ ret,
.L697:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L703:
	movw	r3, #:lower16:71968	@ tmp159,
	movw	ip, #:lower16:71984	@ tmp161,
	movt	r3, #:upper16:71968	@ tmp159,
	movt	ip, #:upper16:71984	@ tmp161,
	add	lr, r4, #71680	@, pCtx,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r0, lr, #576	@,,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	bl	BsInit	@
	ldr	r3, [r4, #0]	@ D.34429, <variable>.pstExtraData
	ldr	r1, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L704	@,
.L692:
	movw	r3, #:lower16:72012	@ tmp169,
	movt	r3, #:upper16:72012	@ tmp169,
	movw	lr, #:lower16:72196	@ tmp168,
	movt	lr, #:upper16:72196	@ tmp168,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, lr]	@ <variable>.CodecInfo.StreamIntegrality,
.L693:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r5, r0, #1	@ tmp171,,
	cmp	r5, #1	@ tmp171,
	bls	.L705	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r5, r0, #0	@ ret,
	beq	.L706	@,
	cmn	r5, #1	@ ret,
	beq	.L696	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r5, r0, #0	@ D.34454,
	bne	.L699	@,
	movw	r6, #:lower16:73696	@ tmp185,
	movt	r6, #:upper16:73696	@ tmp185,
	add	r1, r4, #71680	@, pCtx,
	add	r1, r1, #284	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r0, #:lower16:g_event_report	@ tmp189,
	movt	r0, #:upper16:g_event_report	@ tmp189,
	ldr	r3, [r0, #0]	@ g_event_report.2439, g_event_report
	cmp	r3, #0	@ g_event_report.2439,
	beq	.L696	@,
.L702:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r5	@, D.34454
	blx	r3	@ g_event_report.2439
	b	.L697	@
.L705:
	ldr	r3, [r4, #0]	@ temp.2430, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L695	@,
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L696	@,
.L695:
	movw	ip, #:lower16:73696	@ tmp174,
	movt	ip, #:upper16:73696	@ tmp174,
	add	r2, r4, #71680	@, pCtx,
	mov	r5, #0	@ ret,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	b	.L697	@
.L704:
	ldr	r5, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r5, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L692	@,
	movw	r2, #:lower16:72196	@ tmp166,
	movt	r2, #:upper16:72196	@ tmp166,
	movw	r1, #:lower16:72012	@ tmp165,
	movt	r1, #:upper16:72012	@ tmp165,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.LastStreamIntegrality,
	str	r0, [r4, r1]	@ <variable>.CodecInfo.LastStreamIntegrality,
	b	.L693	@
.L706:
	movw	r6, #:lower16:73696	@ tmp178,
	movt	r6, #:upper16:73696	@ tmp178,
	add	lr, r4, #71680	@, pCtx,
	add	r1, lr, #284	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:g_event_report	@ tmp182,
	movt	r3, #:upper16:g_event_report	@ tmp182,
	ldr	r3, [r3, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	bne	.L702	@,
	b	.L697	@
.L699:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r6, r0, #0	@ D.34459,
	beq	.L707	@,
	movw	r3, #:lower16:71960	@ tmp209,
	movt	r3, #:upper16:71960	@ tmp209,
	movw	r0, #:lower16:72064	@ tmp203,
	movw	ip, #:lower16:71984	@ tmp204,
	movt	r0, #:upper16:72064	@ tmp203,
	movt	ip, #:upper16:71984	@ tmp204,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r5, r5, asl #3	@ ret, <variable>.CodecInfo.BsOffset,
	add	lr, r1, r2	@ tmp208, <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.Used_byte
	str	lr, [r4, r0]	@ tmp208, <variable>.CodecInfo.Used_byte
	b	.L697	@
.L707:
	movw	r5, #:lower16:73696	@ tmp192,
	movw	r3, #:lower16:72096	@ tmp194,
	movt	r5, #:upper16:73696	@ tmp192,
	movt	r3, #:upper16:72096	@ tmp194,
	mov	r2, #1	@,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	add	ip, r4, #71680	@, pCtx,
	add	r1, ip, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp200,
	movt	r2, #:upper16:g_event_report	@ tmp200,
	ldr	r3, [r2, #0]	@ g_event_report.2444, g_event_report
	cmp	r3, #0	@ g_event_report.2444,
	beq	.L696	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r6	@, D.34459
	mov	r5, r6	@ ret, D.34459
	blx	r3	@ g_event_report.2444
	b	.L697	@
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.global	default_intra_quantizer_matrix
	.global	zigzag
	.global	g_tmpusd
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.441.32995, %object
	.size	C.441.32995, 128
C.441.32995:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	32
	.word	36
	.word	40
	.word	44
	.word	48
	.word	52
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.word	112
	.type	CSWTCH.522, %object
	.size	CSWTCH.522, 12
CSWTCH.522:
	.word	5
	.word	1
	.word	2
	.type	tab_for_first_4bit, %object
	.size	tab_for_first_4bit, 128
tab_for_first_4bit:
	.word	8
	.word	4
	.word	9
	.word	5
	.word	5
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	3
	.word	2
	.word	3
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.type	tab_for_last_7bit, %object
	.size	tab_for_last_7bit, 832
tab_for_last_7bit:
	.word	33
	.word	11
	.word	32
	.word	11
	.word	31
	.word	11
	.word	30
	.word	11
	.word	29
	.word	11
	.word	28
	.word	11
	.word	27
	.word	11
	.word	26
	.word	11
	.word	25
	.word	11
	.word	24
	.word	11
	.word	23
	.word	11
	.word	22
	.word	11
	.word	21
	.word	10
	.word	21
	.word	10
	.word	20
	.word	10
	.word	20
	.word	10
	.word	19
	.word	10
	.word	19
	.word	10
	.word	18
	.word	10
	.word	18
	.word	10
	.word	17
	.word	10
	.word	17
	.word	10
	.word	16
	.word	10
	.word	16
	.word	10
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.type	frame_rate_Table, %object
	.size	frame_rate_Table, 64
frame_rate_Table:
	.word	0
	.word	24551
	.word	24576
	.word	25600
	.word	30689
	.word	30720
	.word	51200
	.word	61378
	.word	61440
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.data
	.align	2
.LANCHOR1 = . + 0
	.type	zigzag, %object
	.size	zigzag, 64
zigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.type	default_intra_quantizer_matrix, %object
	.size	default_intra_quantizer_matrix, 64
default_intra_quantizer_matrix:
	.byte	8
	.byte	16
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	16
	.byte	16
	.byte	22
	.byte	24
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	34
	.byte	38
	.byte	22
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	40
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	58
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	27
	.byte	29
	.byte	35
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	83
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC1:
	.ascii	"macroblock_escape\000"
	.space	2
.LC2:
	.ascii	"slice_vertical_position\000"
.LC3:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC4:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC5:
	.ascii	"intra_slice\000"
.LC6:
	.ascii	"reserved_bits\000"
	.space	2
.LC7:
	.ascii	"extra_bit_slice\000"
.LC8:
	.ascii	"extra_infrmation_slice\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
