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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	ldr	r7, [r0, ip]	@ D.33963, <variable>.pSyntaxInfNew
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
	ldr	r3, [r4, r6]	@ D.33957, <variable>.GopFrmCnt
	ldr	r2, [r4, r2]	@ D.33958, <variable>.GopFrmCnt
	ldr	r6, [r4, r5]	@ D.33959, <variable>.GopFldCnt
	ldr	r1, [r4, r1]	@ D.33960, <variable>.GopFldCnt
	ldr	r5, [r4, r0]	@ D.33962, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, ip]	@ D.33961, <variable>.GopFrmCntNoRpt
	ldr	r0, [r7, #72]	@ D.33964, <variable>.frame_rate
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	add	ip, r5, ip	@ FrmNumNoRpt, D.33962, D.33961
	cmp	r0, #0	@ D.33964,
	cmpgt	ip, #0	@, FrmNumNoRpt,
	ble	.L9	@,
	add	r1, r1, r6	@ FldNum, D.33960, D.33959
	cmp	r1, #0	@ FldNum,
	ble	.L9	@,
	mul	r0, ip, r0	@, FrmNumNoRpt, D.33964
	ldrb	lr, [r7, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	lr, #1	@ <variable>.progressive_sequence,
	addeq	r1, r2, r3	@, D.33958, D.33957
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
	sub	r3, r1, #1	@ D.35586, <variable>.aspect_ratio_information,
	cmp	r3, #2	@ D.35586,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp140,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp140,
	addls	r3, r2, r3, asl #2	@, tmp143, tmp140, D.35586,
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
	ldr	r2, [r0, #0]	@ D.34314, <variable>.pstExtraData
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
	sub	r4, ip, #1	@ D.35597, <variable>.aspect_ratio_information,
	mov	ip, #0	@ tmp152,
	cmp	r4, #2	@ D.35597,
	str	ip, [r2, #412]	@ tmp152, <variable>.stChanState.scan_type
	str	ip, [r2, #416]	@ tmp152, <variable>.stChanState.video_format
	movwls	r6, #:lower16:.LANCHOR0	@ tmp147,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp147,
	addls	r4, r6, r4, asl #2	@, tmp150, tmp147, D.35597,
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
	ldr	r1, [r0, r4]	@ D.34325, <variable>.numOutputFrame
	ldr	r3, [r0, r3]	@ temp.647, <variable>.numTotalFrame
	cmp	r3, r1	@ temp.647, D.34325
	rsbge	ip, r1, r3	@ iftmp.480, D.34325, temp.647
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
	ldr	r3, [r4, ip]	@ D.34289, <variable>.Bs.TotalPos
	movw	r2, #:lower16:71960	@ tmp148,
	ldr	r1, [r4, r5]	@ D.34288, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:71960	@ tmp148,
	cmp	r3, #0	@ D.34289,
	add	r5, r3, #7	@ tmp151, D.34289,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r3, r1, asl #3	@, tmp161, D.34289, D.34288,
	movge	r5, r3	@ D.34289, D.34289
	add	r3, r1, r3, lsr #3	@, tmp157, D.34288, D.34289,
	add	r1, lr, r5, asr #3	@, tmp155, <variable>.CodecInfo.BsOffset, D.34289,
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
	ldr	r1, [r5, r0]	@ D.33901, <variable>.pSyntaxInfNew
	ldr	r0, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r5, r3]	@ <variable>.s32Compress_en, <variable>.Mp2DecParam.Compress_en
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ D.33902, <variable>.picture_coding_type
	cmp	r3, #3	@ D.33902,
	beq	.L60	@,
	cmp	r3, #2	@ D.33902,
	movweq	r3, #:lower16:73708	@ tmp156,
	movteq	r3, #:upper16:73708	@ tmp156,
	moveq	r1, #1	@ tmp157,
	streq	r1, [r5, r3]	@ tmp157, <variable>.PPicFound
.L53:
	add	r1, r5, #8	@ D.33916, pCtx,
	str	r1, [r5, #4]	@ D.33916, <variable>.pMp2DecParam
	ldr	r3, [r2, #708]	@ D.33917, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.33917,
	beq	.L61	@,
	cmp	r3, #2	@ D.33917,
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
	cmp	r1, #0	@ D.33916,
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
	cmp	r1, #0	@ D.33916,
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r7, r2	@ SeTraceString, SeTraceString
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r5	@, LenInBits
	mov	r4, r0	@ D.35417,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r2, r7	@, SeTraceString
	mov	r3, r4	@, D.35417
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.35417
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
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
	add	r3, r4, r0, asl #3	@, tmp147, tmp144, D.35518,
	ldr	r5, [r3, #140]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r3, #144]	@ SkipBit, tab_for_first_4bit
	cmp	r5, #6	@ MbAddrInc,
	bls	.L71	@,
	cmp	r5, #9	@ MbAddrInc,
	beq	.L72	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC1	@,
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
	movw	r2, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC1	@,
	bl	MP2_u_v	@
	mov	r0, r5	@, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L72:
	mov	r0, r6	@, pBs
	movw	r2, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC1	@,
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
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	mov	r5, #0	@ macroblock_escape,
	ldr	r4, [r0, #52]	@ pBs, <variable>.pBs
	b	.L74	@
.L78:
	cmp	r0, #15	@ D.35441,
	beq	.L75	@,
	cmp	r0, #8	@ D.35441,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L84	@,
.L75:
	movw	r2, #:lower16:.LC3	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC3	@,
	mov	r1, #11	@,
	bl	MP2_u_v	@
.L74:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #23	@ D.35441,
	bls	.L78	@,
	mov	r0, r4	@, pBs
	bl	MP2_MbAddrInc	@
	ldr	r4, [r6, #16]	@ <variable>.FirstMbInSliceFlag, <variable>.FirstMbInSliceFlag
	cmp	r4, #0	@ <variable>.FirstMbInSliceFlag,
	beq	.L79	@,
	ldr	r1, [r6, #28]	@ D.35446, <variable>.previous_macroblock_address
	add	r2, r5, r0	@ tmp147, macroblock_escape, macroblock_address_increment
	ldr	r3, [r6, #12]	@ <variable>.pic_total_mb_num, <variable>.pic_total_mb_num
	cmp	r1, #0	@ D.35446,
	addne	r2, r2, r1	@ SlcStartMbNum, tmp147, D.35446
	subeq	r2, r2, #1	@ SlcStartMbNum, tmp148,
	sub	r3, r3, #1	@ D.35454, <variable>.pic_total_mb_num,
	str	r2, [r6, #44]	@ SlcStartMbNum, <variable>.slicen_start_mb_num
	cmp	r2, r3	@ SlcStartMbNum, D.35454
	movls	r0, #1	@ ret,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L84:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L79:
	mov	r2, r4	@, <variable>.FirstMbInSliceFlag
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ ret, <variable>.FirstMbInSliceFlag
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
	mov	r2, #1	@ tmp146,
	mov	r3, #0	@ tmp147,
	str	r2, [r5, #16]	@ tmp146, <variable>.FirstMbInSliceFlag
	cmp	r0, #175	@ <variable>.pic_height_in_mb,
	str	r3, [r5, #24]	@ tmp147, <variable>.slice_vertical_position_extension
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
	sub	r2, ip, #1	@ tmp151, <variable>.slice_vertical_position,
	add	r3, r2, r1	@ tmp153, tmp151, prephitmp.859
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	mul	lr, r0, r3	@ D.35390, <variable>.pic_width_in_mb, tmp153
	mov	r0, r4	@, pBs
	cmp	lr, #0	@ D.35390,
	subne	lr, lr, #1	@ iftmp.515, D.35390,
	str	lr, [r5, #28]	@ iftmp.515, <variable>.previous_macroblock_address
	bl	MP2_u_v	@
	mov	ip, #0	@ tmp156,
	mov	r1, #1	@,
	str	ip, [r5, #32]	@ tmp156, <variable>.intra_slice
	str	r0, [r5, #48]	@, <variable>.quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L96	@,
.L90:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r2, #:upper16:.LC11	@,
	bl	MP2_u_v	@
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, r0	@ tmpSyntax,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L96:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	bl	MP2_u_v	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r2, #:upper16:.LC9	@,
	bl	MP2_u_v	@
	mov	r1, #7	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	str	r0, [r5, #32]	@, <variable>.intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L91	@
.L92:
	bl	MP2_u_v	@
	movw	r2, #:lower16:.LC12	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC12	@,
	mov	r1, #8	@,
	bl	MP2_u_v	@
.L91:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC11	@,
	mov	r1, #1	@,
	movt	r2, #:upper16:.LC11	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L92	@,
	b	.L90	@
.L95:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC6	@,
	movt	r2, #:upper16:.LC6	@,
	bl	MP2_u_v	@
	mov	r1, r0, asl #7	@ prephitmp.859, D.35384,
	str	r0, [r5, #24]	@ D.35384, <variable>.slice_vertical_position_extension
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
	movw	r1, #45316	@ tmp141,
	movw	r2, #:lower16:72248	@ tmp154,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ D.35474, <variable>.Mp2DecParam.SlcNum
	mov	r5, #44	@ tmp144,
	movw	r3, #:lower16:72232	@ tmp147,
	movt	r3, #:upper16:72232	@ tmp147,
	movt	r2, #:upper16:72248	@ tmp154,
	movw	lr, #:lower16:72244	@ tmp161,
	mla	r5, r5, r0, r4	@ tmp145, tmp144, D.35474, pCtx
	ldr	ip, [r4, r3]	@ <variable>.SliceInfo.intra_slice, <variable>.SliceInfo.intra_slice
	movt	lr, #:upper16:72244	@ tmp161,
	add	r0, r5, #288	@ tmp146, tmp145,
	str	ip, [r0, #8]	@ <variable>.SliceInfo.intra_slice, <variable>.intra_slice
	ldr	r2, [r4, r2]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.SliceInfo.quantiser_scale_code
	str	r2, [r5, #300]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r3, [r4, lr]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.SliceInfo.slicen_start_mb_num
	str	r3, [r0, #4]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.slice_start_mbn
	ldr	r2, [r4, r1]	@ temp.1046, <variable>.Mp2DecParam.SlcNum
	cmp	r2, #1024	@ temp.1046,
	bcs	.L120	@,
	movw	r3, #:lower16:72280	@ tmp172,
	movt	r3, #:upper16:72280	@ tmp172,
	movw	r0, #:lower16:71976	@ tmp179,
	movt	r0, #:upper16:71976	@ tmp179,
	ldr	r1, [r4, r3]	@ D.35488, <variable>.Bs.TotalPos
	movw	r3, #:lower16:71992	@ tmp193,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r3, #:upper16:71992	@ tmp193,
	and	lr, r1, #7	@ tmp187, D.35488,
	str	lr, [r5, #276]	@ tmp187, <variable>.BsBitOffset
	add	ip, r2, r1, lsr #3	@, tmp181, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, D.35488,
	str	ip, [r5, #260]	@ tmp181, <variable>.BsPhyAddr
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	add	r0, r4, #71680	@, pCtx,
	add	r0, r0, #576	@,,
	str	lr, [r5, #284]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	bl	BsResidBits	@
	movw	r3, #:lower16:71964	@ tmp202,
	movt	r3, #:upper16:71964	@ tmp202,
	str	r0, [r5, #268]	@, <variable>.BsLenInBit
	ldrsh	r2, [r4, r3]	@ D.35493,
	cmp	r2, #1	@ D.35493,
	beq	.L121	@,
	cmp	r2, #256	@ D.35493,
	bne	.L118	@,
	movw	ip, #:lower16:71980	@ tmp234,
	movt	ip, #:upper16:71980	@ tmp234,
	add	r0, r5, #276	@ tmp240, tmp145,
	movw	lr, #:lower16:71996	@ tmp247,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71996	@ tmp247,
	mov	r3, #0	@ tmp241,
	str	r3, [r0, #4]	@ tmp241, <variable>.BsBitOffset
	movw	ip, #:lower16:71988	@ tmp254,
	movt	ip, #:upper16:71988	@ tmp254,
	str	r1, [r5, #264]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.BsPhyAddr
	movw	r1, #45316	@ tmp262,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	str	r2, [r5, #288]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, r3, asl #3	@ tmp256, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r0, [r5, #272]	@ tmp256, <variable>.BsLenInBit
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r0, #1	@ D.35485,
	add	r2, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L120:
	mov	r3, #1024	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:72012	@ tmp166,
	movt	r3, #:upper16:72012	@ tmp166,
	movw	r2, #:lower16:72068	@ tmp170,
	movt	r2, #:upper16:72068	@ tmp170,
	mov	r1, #0	@ tmp171,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r1	@ D.35485, tmp171
	str	r1, [r4, r2]	@ tmp171, <variable>.CodecInfo.HDRState
	bic	r1, ip, #5767168	@ tmp169, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r3]	@ tmp169, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L121:
	add	r1, r5, #260	@ tmp208, tmp145,
	add	lr, r5, #268	@ tmp226, tmp145,
	add	r2, r5, #276	@ tmp214, tmp145,
	add	r5, r5, #284	@ tmp220, tmp145,
	mov	ip, #0	@ tmp209,
	str	ip, [r1, #4]	@ tmp209, <variable>.BsPhyAddr
	movw	r1, #45316	@ tmp262,
	str	ip, [r2, #4]	@ tmp209, <variable>.BsBitOffset
	str	ip, [lr, #4]	@ tmp209, <variable>.BsLenInBit
	mov	r0, #1	@ D.35485,
	str	ip, [r5, #4]	@ tmp209, <variable>.BsID
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r3, r0	@ tmp265, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, r1]	@ tmp265, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L118:
	movw	lr, #:lower16:71965	@ tmp260,
	movt	lr, #:upper16:71965	@ tmp260,
	ldrsb	r2, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	ldrsb	r3, [r4, lr]	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35485,
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
	movw	r2, #:lower16:71984	@ tmp145,
	movw	r3, #:lower16:73336	@ tmp140,
	movt	r2, #:upper16:71984	@ tmp145,
	movt	r3, #:upper16:73336	@ tmp140,
	movw	lr, #:lower16:71968	@ tmp142,
	movt	lr, #:upper16:71968	@ tmp142,
	movw	r5, #:lower16:72048	@ tmp148,
	movt	r5, #:upper16:72048	@ tmp148,
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r0, lr]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	mov	r4, r0	@ pCtx, pCtx
	ldr	r7, [r0, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	ip, #:lower16:72236	@ tmp141,
	ldr	lr, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	ip, #:upper16:72236	@ tmp141,
	movw	r0, #:lower16:72240	@ tmp144,
	movw	r2, #:lower16:72200	@ tmp147,
	movt	r0, #:upper16:72240	@ tmp144,
	movt	r2, #:upper16:72200	@ tmp147,
	str	r6, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.SliceInfo.VirAddr
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	movne	r5, #0	@, tmp150
	moveq	r5, #1	@, tmp150
	str	r7, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.SliceInfo.ByteLen
	movw	r7, #:lower16:72204	@ tmp151,
	str	r5, [r4, r2]	@ tmp150, <variable>.SliceInfo.mpeg1_flag
	movt	r7, #:upper16:72204	@ tmp151,
	ldr	ip, [r3, #60]	@ <variable>.mb_height, <variable>.mb_height
	movw	r6, #:lower16:72208	@ tmp153,
	movt	r6, #:upper16:72208	@ tmp153,
	movw	r5, #:lower16:72220	@ tmp163,
	movt	r5, #:upper16:72220	@ tmp163,
	add	lr, r4, #71680	@ tmp167, pCtx,
	str	ip, [r4, r7]	@ <variable>.mb_height, <variable>.SliceInfo.pic_height_in_mb
	movw	r2, #:lower16:72212	@ tmp155,
	ldr	r7, [r3, #56]	@ <variable>.mb_width, <variable>.mb_width
	movt	r2, #:upper16:72212	@ tmp155,
	movw	ip, #:lower16:72252	@ tmp165,
	movt	ip, #:upper16:72252	@ tmp165,
	mov	r0, lr	@, tmp167
	add	lr, lr, #576	@ tmp167, tmp167,
	str	r7, [r4, r6]	@ <variable>.mb_width, <variable>.SliceInfo.pic_width_in_mb
	uxtb	r6, r1	@ tmp164, code
	ldr	r1, [r3, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	add	r0, r0, #520	@,,
	ldr	r3, [r3, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	add	r1, r1, #15	@ tmp159, <variable>.horizontal_size,
	str	r6, [r4, r5]	@ tmp164, <variable>.SliceInfo.slice_vertical_position
	add	r3, r3, #15	@ tmp156, <variable>.vertical_size,
	str	lr, [r4, ip]	@ tmp167, <variable>.SliceInfo.pBs
	mov	r1, r1, lsr #4	@ tmp161, tmp159,
	mov	r5, r3, lsr #4	@ tmp158, tmp156,
	mul	r3, r1, r5	@ tmp162, tmp161, tmp158
	str	r3, [r4, r2]	@ tmp162, <variable>.SliceInfo.pic_total_mb_num
	bl	MP2_GetFirstMbInSlice	@
	cmp	r0, #1	@ D.35352,
	mov	r5, r0	@ D.35352,
	beq	.L123	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L123:
	mov	r0, r4	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.35357,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	mov	r0, r5	@, D.35352
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ ret,
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
	beq	.L128	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L128:
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	mov	r1, r0	@ pMp2CodecInfo, pMp2CodecInfo
	beq	.L136	@,
	movw	ip, #26632	@ tmp141,
	mov	r5, #0	@ tmp142,
	str	r5, [r0, ip]	@ tmp142, <variable>.BsOffset
	movw	r3, #26676	@ tmp143,
	ldr	r0, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	ip, #26648	@ tmp145,
	str	r0, [r1, r3]	@ <variable>.LenInByte, <variable>.PacketTail
	movw	r3, #26640	@ tmp147,
	ldr	r0, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r1, ip]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r0, #26656	@ tmp149,
	ldr	ip, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	ip, [r1, r3]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r3, #26636	@ tmp151,
	ldr	ip, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r0]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	ip, #26664	@ tmp154,
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	r0, [r1, r3]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, ip]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L133	@,
	ldr	r0, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #26652	@ tmp157,
	movw	ip, #26644	@ tmp159,
	str	r0, [r1, r3]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r3, #26660	@ tmp161,
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r1, ip]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #26637	@ tmp163,
	ldr	ip, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r3]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r3, #26668	@ tmp166,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r1, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, r3]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	r1, r1, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35259, tmp142
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L133:
	movw	ip, #26668	@ tmp182,
	movw	r2, #26652	@ tmp173,
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.StreamID
	movw	r3, #26644	@ tmp175,
	str	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.BsPhyAddr
	movw	ip, #26660	@ tmp177,
	movw	r2, #26637	@ tmp179,
	str	r5, [r1, r3]	@ tmp142, <variable>.stMp2Packet.BsVirAddr
	str	r5, [r1, ip]	@ tmp142, <variable>.stMp2Packet.BsLength
	strb	r5, [r1, r2]	@ tmp142, <variable>.stMp2Packet.IsLastSeg
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L136:
	movw	r3, #26692	@ tmp139,
	mov	r0, #1	@,
	ldr	r2, [r1, r3]	@, <variable>.Frame_Cnt
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35259, pPacket
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	beq	.L138	@,
	movw	r2, #:lower16:72024	@ tmp140,
	movt	r2, #:upper16:72024	@ tmp140,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L139	@,
.L138:
	movw	r5, #:lower16:73696	@ tmp142,
	movt	r5, #:upper16:73696	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L139	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L140	@,
.L143:
	mov	r0, #0	@ D.35241,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L139:
	mov	r0, #1	@ D.35241,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L140:
	add	ip, r4, #72704	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L143	@
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
	beq	.L146	@,
	cmp	r3, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L164	@,
	movw	ip, #:lower16:72012	@ tmp168,
	movt	ip, #:upper16:72012	@ tmp168,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r2, r2, #63	@ prephitmp.1167, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r0, ip]	@ prephitmp.1167, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
.L154:
	tst	r2, #24	@ prephitmp.1167,
	beq	.L158	@,
	cmp	r3, #3	@ prephitmp.1171,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	lr, #:lower16:72012	@ tmp172,
	movw	r5, #:lower16:73696	@ tmp174,
	movt	lr, #:upper16:72012	@ tmp172,
	movt	r5, #:upper16:73696	@ tmp174,
	movw	r7, #:lower16:72092	@ tmp176,
	movt	r7, #:upper16:72092	@ tmp176,
	orr	r6, r2, #64	@ tmp173, prephitmp.1167,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, lr]	@ tmp173, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L160	@,
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
	bne	.L165	@,
.L160:
	movw	r3, #:lower16:72052	@ tmp212,
	movt	r3, #:upper16:72052	@ tmp212,
	mov	r1, #0	@ tmp213,
	str	r1, [r4, r3]	@ tmp213,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L158:
	cmp	r3, #1	@ prephitmp.1171,
	biceq	r2, r2, #192	@ tmp215, prephitmp.1167,
	movweq	r3, #:lower16:72012	@ tmp214,
	movteq	r3, #:upper16:72012	@ tmp214,
	streq	r2, [r4, r3]	@ tmp215,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L164:
	movw	r3, #:lower16:72012	@ tmp161,
	movt	r3, #:upper16:72012	@ tmp161,
	ldr	r2, [r0, r3]	@ prephitmp.1170, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #1048576	@ prephitmp.1170,
	orreq	r2, r2, #16	@ prephitmp.1170, prephitmp.1170,
	streq	r2, [r0, r3]	@ prephitmp.1170, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
	sub	ip, r3, #1	@ tmp164, prephitmp.1171,
	uxtb	r0, ip	@ tmp165, tmp164
	cmp	r0, #2	@ tmp165,
	bls	.L163	@,
.L157:
	movw	r0, #:lower16:72012	@ tmp167,
	movt	r0, #:upper16:72012	@ tmp167,
	orr	r2, r2, #8	@ prephitmp.1167, prephitmp.1170,
	str	r2, [r4, r0]	@ prephitmp.1167, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
	b	.L154	@
.L146:
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
	sub	r2, r3, #1	@ tmp146, prephitmp.1171,
	uxtb	r2, r2	@ tmp147, tmp146
	cmp	r2, #3	@ tmp147,
	movwhi	r3, #:lower16:72012	@ tmp149,
	movthi	r3, #:upper16:72012	@ tmp149,
	movwls	r2, #:lower16:72012	@ tmp148,
	movtls	r2, #:upper16:72012	@ tmp148,
	ldrhi	r2, [r0, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldrls	r2, [r0, r2]	@ prephitmp.1173, <variable>.CodecInfo.StreamIntegrality
	orrhi	r2, r2, #8	@ prephitmp.1173, <variable>.CodecInfo.StreamIntegrality,
	strhi	r2, [r0, r3]	@ prephitmp.1173, <variable>.CodecInfo.StreamIntegrality
	ldrhib	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
	sub	ip, r3, #2	@ tmp152, prephitmp.1171,
	uxtb	r0, ip	@ tmp153, tmp152
	cmp	r0, #1	@ tmp153,
	bls	.L166	@,
.L163:
	movw	r1, #:lower16:72012	@ tmp166,
	movt	r1, #:upper16:72012	@ tmp166,
	ldr	r2, [r4, r1]	@ prephitmp.1167, <variable>.CodecInfo.StreamIntegrality
	b	.L154	@
.L166:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	cmp	r0, #0	@ <variable>.forward_f_code,
	orreq	r2, r2, #8	@ prephitmp.1177, prephitmp.1173,
	movweq	r3, #:lower16:72012	@ tmp156,
	movteq	r3, #:upper16:72012	@ tmp156,
	movwne	r2, #:lower16:72012	@ tmp155,
	movtne	r2, #:upper16:72012	@ tmp155,
	streq	r2, [r4, r3]	@ prephitmp.1177, <variable>.CodecInfo.StreamIntegrality
	ldreqb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1171, <variable>.picture_coding_type
	ldrne	r2, [r4, r2]	@ prephitmp.1177, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #3	@ prephitmp.1171,
	bne	.L163	@,
	ldrb	ip, [r1, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	cmp	ip, #0	@ <variable>.backward_f_code,
	beq	.L157	@,
	b	.L163	@
.L165:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.34225, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.34225, <variable>.CodecInfo.FwdFsID
	b	.L160	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
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
	beq	.L168	@,
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
.L168:
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
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r6, #:lower16:73688	@ tmp139,
	movt	r6, #:upper16:73688	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ pstExtraData, pstExtraData
	add	sl, r4, #72704	@, pCtx,
	ldr	r8, [r0, r6]	@ D.34940, <variable>.ImageQue.ResetMagicWord
	movw	r1, #:lower16:73720	@,
	movt	r1, #:upper16:73720	@,
	mov	r5, #0	@ tmp151,
	bl	__memzero	@
	add	r0, sl, #640	@,,
	str	r8, [r4, r6]	@ D.34940, <variable>.ImageQue.ResetMagicWord
	add	r8, r4, #72704	@ tmp146, pCtx,
	movw	r6, #:lower16:73340	@ tmp144,
	movt	r6, #:upper16:73340	@ tmp144,
	bl	ResetVoQueue	@
	movw	sl, #:lower16:73708	@ tmp150,
	movw	ip, #:lower16:73336	@ tmp147,
	movt	sl, #:upper16:73708	@ tmp150,
	movt	ip, #:upper16:73336	@ tmp147,
	movw	r0, #:lower16:73714	@ tmp152,
	movw	r3, #:lower16:73715	@ tmp155,
	movt	r0, #:upper16:73714	@ tmp152,
	movt	r3, #:upper16:73715	@ tmp155,
	movw	r2, #:lower16:72024	@ tmp158,
	movw	r1, #:lower16:72068	@ tmp163,
	movt	r2, #:upper16:72024	@ tmp158,
	movt	r1, #:upper16:72068	@ tmp163,
	mov	lr, r8	@ tmp149, tmp146
	add	r8, r8, #256	@ tmp146, tmp146,
	str	r8, [r4, r6]	@ tmp146, <variable>.pSyntaxInfOld
	add	r6, lr, #444	@ tmp149, tmp149,
	movw	lr, #45329	@ tmp160,
	str	r6, [r4, ip]	@ tmp149, <variable>.pSyntaxInfNew
	mov	r6, #1	@ tmp153,
	strb	r5, [r4, r3]	@ tmp151, <variable>.DSDNeedFlushFrame
	mov	r3, #3	@ tmp161,
	strb	r6, [r4, r0]	@ tmp153, <variable>.DSDNeedClearQue
	movw	ip, #:lower16:72000	@ tmp165,
	strb	r3, [r4, lr]	@ tmp161, <variable>.CodecInfo.Last_FieldStruct
	movt	ip, #:upper16:72000	@ tmp165,
	str	r6, [r4, r2]	@ tmp153, <variable>.CodecInfo.Second_Field
	movw	r2, #:lower16:72060	@ tmp167,
	str	r5, [r4, sl]	@ tmp151, <variable>.PPicFound
	movt	r2, #:upper16:72060	@ tmp167,
	str	r5, [r4, r1]	@ tmp151, <variable>.CodecInfo.HDRState
	mov	r0, r4	@, pCtx
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r1, [r7, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r5, [r4, r2]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	r1, [r4, ip]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:73696	@ tmp169,
	movt	r3, #:upper16:73696	@ tmp169,
	cmn	r0, #1	@ D.34953,
	str	r0, [r4, r3]	@ D.34953, <variable>.ChanID
	movne	r0, r6	@ D.34958, tmp153
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r0, r5	@, tmp151
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34958,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
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
.L175:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L176	@,
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	bgt	.L175	@,
.L176:
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
	uxtb	r0, r0	@ temp.1324,
	strb	r0, [r5, #4]	@ temp.1324, <variable>.f_code
	sub	ip, r0, #10	@ tmp170, temp.1324,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r0, #0	@ temp.1324,
	cmpne	r1, #4	@, tmp172,
	mov	r0, r4	@, pBs
	ldrls	r1, [r6, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r1, r1, #16	@ tmp182, <variable>.CodecInfo.StreamIntegrality,
	strls	r1, [r6, r7]	@ tmp182, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #4	@,
	bl	BsGet	@
	mov	r1, #4	@,
	uxtb	r2, r0	@ temp.1332,
	strb	r2, [r5, #5]	@ temp.1332, <variable>.f_code
	sub	r3, r2, #10	@ tmp184, temp.1332,
	mov	r0, r4	@, pBs
	uxtb	ip, r3	@ tmp186, tmp184
	cmp	r2, #0	@ temp.1332,
	cmpne	ip, #4	@, tmp186,
	movwls	ip, #:lower16:72012	@ tmp193,
	movtls	ip, #:upper16:72012	@ tmp193,
	ldrls	r2, [r6, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r2, r2, #16	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	strls	r2, [r6, ip]	@ tmp196, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1317,
	strb	r0, [r5, #6]	@ temp.1317, <variable>.f_code
	sub	r1, r0, #10	@ tmp198, temp.1317,
	uxtb	r3, r1	@ tmp200, tmp198
	cmp	r0, #0	@ temp.1317,
	cmpne	r3, #4	@, tmp200,
	bhi	.L183	@,
	movw	r1, #:lower16:72012	@ tmp213,
	movt	r1, #:upper16:72012	@ tmp213,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp216, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp216, <variable>.CodecInfo.StreamIntegrality
.L183:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.34838,
	strb	r0, [r5, #7]	@ D.34838, <variable>.f_code
	sub	ip, r0, #10	@ tmp218, D.34838,
	uxtb	r3, ip	@ tmp220, tmp218
	cmp	r0, #0	@ D.34838,
	cmpne	r3, #4	@, tmp220,
	bhi	.L187	@,
	movw	r3, #:lower16:72012	@ tmp207,
	movt	r3, #:upper16:72012	@ tmp207,
	ldr	r0, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #16	@ tmp210, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r6, r3]	@ tmp210, <variable>.CodecInfo.StreamIntegrality
.L187:
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #8]	@, <variable>.intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.34850,
	strb	ip, [r5, #9]	@ D.34850, <variable>.picture_structure
	cmp	ip, #0	@ D.34850,
	bne	.L191	@,
	movw	r1, #:lower16:72012	@ tmp227,
	movt	r1, #:upper16:72012	@ tmp227,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp230, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp230, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L191:
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
	uxtb	r0, r0	@ D.34873,
	strb	r0, [r5, #3]	@ D.34873, <variable>.composite_display_flag
	cmp	r0, #0	@ D.34873,
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
	beq	.L193	@,
	ldrb	r8, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r8, #0	@ <variable>.repeat_first_field,
	bne	.L217	@,
.L194:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L197:
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
	beq	.L216	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L216	@,
	mov	r6, #1	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1366, pSyntaxInfNew,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp168,
	beq	.L201	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L216	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L216	@,
	mov	r6, #2	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1366, ivtmp.1366,
	bgt	.L201	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L198:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r7, #4	@ ivtmp.1366, tmp170,
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L216	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L216	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L216	@,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	ble	.L218	@,
.L201:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r6, r6, r1	@ tmp169, i,
	add	r7, r5, #4	@ tmp170, ivtmp.1366,
	add	r6, r6, r1	@ i, tmp169,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L198	@,
.L216:
	movw	r1, #:lower16:72012	@ tmp159,
	movt	r1, #:upper16:72012	@ tmp159,
	ldr	ip, [sl, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, ip, #32	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r1]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L193:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	bne	.L194	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r3, #0	@ <variable>.repeat_first_field,
	beq	.L196	@,
.L195:
	mov	r8, #3	@ number_of_frame_center_offsets,
	b	.L197	@
.L217:
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	cmp	ip, #0	@ <variable>.top_field_first,
	bne	.L195	@,
.L196:
	mov	r8, #2	@ number_of_frame_center_offsets,
	b	.L197	@
.L218:
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
	cmp	r0, #1	@ D.34748,
	str	r0, [sl, #76]	@ D.34748, <variable>.load_intra_quantizer_matrix
	beq	.L237	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34758,
	str	r0, [sl, #80]	@ D.34758, <variable>.load_non_intra_quantizer_matrix
	beq	.L238	@,
.L222:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L224	@,
	mov	r5, #0	@ i.1428,
.L225:
	mov	r1, #8	@,
	add	r5, r5, #1	@ tmp200, i.1428,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i.1428, tmp200,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1428,
	bne	.L225	@,
.L224:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r5, #0	@ i.1429,
.L227:
	add	lr, r5, #1	@ tmp199, i.1429,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	add	r5, lr, #1	@ i.1429, tmp199,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1429,
	bne	.L227	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L237:
	movw	r7, #:lower16:.LANCHOR1	@ tmp194,
	movt	r7, #:upper16:.LANCHOR1	@ tmp194,
	mov	r6, #0	@ i,
.L221:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ D.34755, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp202, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp181, D.34755,
	add	r6, r2, #1	@ i, tmp202,
	add	r3, r8, #150	@ tmp181, tmp181,
	add	ip, r5, r3, asl #2	@, tmp185, pCtx, tmp181,
	str	r0, [ip, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ D.34755, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i,
	add	r1, r8, #17920	@ tmp207, D.34755,
	add	r8, r1, #150	@ tmp207, tmp207,
	add	r8, r5, r8, asl #2	@, tmp209, pCtx, tmp207,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L221	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34758,
	str	r0, [sl, #80]	@ D.34758, <variable>.load_non_intra_quantizer_matrix
	bne	.L222	@,
.L238:
	movw	r7, #:lower16:.LANCHOR1	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp211,
	mov	r6, #0	@ i.1427,
.L223:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ temp.1426, zigzag
	bl	BsGet	@
	add	ip, r6, #1	@ tmp201, i.1427,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp188, temp.1426,
	add	r6, ip, #1	@ i.1427, tmp201,
	add	r2, r8, #214	@ tmp188, tmp188,
	add	r3, r5, r2, asl #2	@, tmp192, pCtx, tmp188,
	str	r0, [r3, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, ip]	@ zero_extendqisi2	@ temp.1426, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i.1427,
	add	r2, r8, #17920	@ tmp216, temp.1426,
	add	r1, r2, #214	@ tmp216, tmp216,
	add	r8, r5, r1, asl #2	@, tmp218, pCtx, tmp216,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L223	@,
	b	.L222	@
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
	cmp	r0, #0	@ D.34711,
	str	r0, [r6, #132]	@ D.34711, <variable>.color_description
	bne	.L244	@,
.L240:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #148]	@, <variable>.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L241	@,
	movw	lr, #:lower16:72012	@ tmp151,
	movt	lr, #:upper16:72012	@ tmp151,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, r3, #4	@ tmp154, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, lr]	@ tmp154, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L241:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r6, #152]	@, <variable>.display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L244:
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
	b	.L240	@
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
	movw	r7, #:lower16:72012	@ tmp159,
	movt	r7, #:upper16:72012	@ tmp159,
	add	r8, r0, #71680	@ pBs, pCtx,
	add	r8, r8, #576	@ pBs, pBs,
	movw	r2, #:lower16:72008	@ tmp163,
	ldr	r4, [r0, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	r2, #:upper16:72008	@ tmp163,
	mov	r5, r0	@ pCtx, pCtx
	movw	r3, #:lower16:73336	@ tmp158,
	movt	r3, #:upper16:73336	@ tmp158,
	orr	r1, r4, #131072	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r0, r7]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #8	@,
	mov	r0, #0	@ tmp164,
	str	r0, [r5, r2]	@ tmp164, <variable>.CodecInfo.NewSeqInited
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
	mov	r9, r0	@ D.34624,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	sl, r0	@ D.34625,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.34626,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L246	@,
	ldr	lr, [r5, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #2	@ tmp170, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, r7]	@ tmp170, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L246:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.34631,
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
	uxtb	r2, r0	@ D.34637,
	add	r0, ip, #1	@, <variable>.frame_rate_extension_n,
	add	r1, r2, #1	@, D.34637,
	strb	r2, [r4, #31]	@ D.34637, <variable>.frame_rate_extension_d
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #88]	@ <variable>.frame_rate_code, <variable>.frame_rate_code
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r2, [r4, #124]	@ D.34651, <variable>.profile_and_level_indication
	add	ip, r3, r1, asl #2	@, tmp185, tmp181, <variable>.frame_rate_code,
	tst	r2, #128	@ D.34651,
	ldr	r1, [ip, #1100]	@ tmp187, frame_rate_Table
	mul	r3, r1, r0	@ tmp188, tmp187,
	str	r3, [r4, #72]	@ tmp188, <variable>.frame_rate
	bne	.L258	@,
	and	ip, r2, #15	@ tmp196, D.34651,
	ubfx	r1, r2, #4, #3	@ tmp194, D.34651,,
	str	ip, [r4, #44]	@ tmp196, <variable>.level
	str	r1, [r4, #40]	@ tmp194, <variable>.profile
.L249:
	ldr	ip, [r4, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	ldr	r3, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	mov	r1, ip, asl #20	@ tmp198, <variable>.horizontal_size,
	mov	r0, r3, asl #20	@ tmp202, <variable>.vertical_size,
	mov	lr, r1, lsr #20	@ tmp198, tmp198,
	orr	r9, lr, r9, asl #12	@, prephitmp.1468, tmp198, D.34624,
	mov	r2, r0, lsr #20	@ tmp202, tmp202,
	cmp	r9, #0	@ prephitmp.1468,
	orr	sl, r2, sl, asl #12	@, D.34668, tmp202, D.34625,
	str	r9, [r4, #48]	@ prephitmp.1468, <variable>.horizontal_size
	str	sl, [r4, #52]	@ D.34668, <variable>.vertical_size
	beq	.L250	@,
	cmp	sl, #0	@ D.34668,
	bne	.L251	@,
.L250:
	movw	r0, #:lower16:72012	@ tmp205,
	movt	r0, #:upper16:72012	@ tmp205,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r9, r2, #1	@ tmp208, <variable>.CodecInfo.StreamIntegrality,
	str	r9, [r5, r0]	@ tmp208, <variable>.CodecInfo.StreamIntegrality
	ldr	r9, [r4, #48]	@ prephitmp.1468, <variable>.horizontal_size
.L251:
	cmp	r9, #8192	@ prephitmp.1468,
	bhi	.L252	@,
	ldr	lr, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	cmp	lr, #8192	@ <variable>.vertical_size,
	bls	.L253	@,
.L252:
	movw	r3, #:lower16:72012	@ tmp210,
	movt	r3, #:upper16:72012	@ tmp210,
	movw	ip, #:lower16:g_event_report	@ tmp214,
	movt	ip, #:upper16:g_event_report	@ tmp214,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #1	@ tmp213, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r5, r3]	@ tmp213, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.489, g_event_report
	cmp	r3, #0	@ g_event_report.489,
	beq	.L253	@,
	movw	lr, #:lower16:73696	@ tmp215,
	movt	lr, #:upper16:73696	@ tmp215,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.489
.L253:
	ldr	r0, [r4, #92]	@ <variable>.bit_rate_value, <variable>.bit_rate_value
	mov	r3, #400	@ tmp219,
	ldr	r2, [r4, #40]	@ prephitmp.1486, <variable>.profile
	add	r6, r0, r6, asl #18	@, D.34682, <variable>.bit_rate_value, D.34626,
	str	r6, [r4, #92]	@ D.34682, <variable>.bit_rate_value
	sub	r1, r2, #4	@ tmp224, prephitmp.1486,
	ldr	ip, [r4, #96]	@ <variable>.vbv_buffer_size, <variable>.vbv_buffer_size
	mul	r6, r3, r6	@ tmp220, tmp219, D.34682
	cmp	r1, #1	@ tmp224,
	add	r7, ip, r7, asl #10	@, tmp223, <variable>.vbv_buffer_size, D.34631,
	str	r7, [r4, #96]	@ tmp223, <variable>.vbv_buffer_size
	str	r6, [r4, #68]	@ tmp220, <variable>.bit_rate
	bls	.L254	@,
	movw	lr, #:lower16:g_event_report	@ tmp225,
	movt	lr, #:upper16:g_event_report	@ tmp225,
	ldr	r3, [lr, #0]	@ g_event_report.1487, g_event_report
	cmp	r3, #0	@ g_event_report.1487,
	beq	.L255	@,
	movw	ip, #:lower16:73696	@ tmp226,
	movt	ip, #:upper16:73696	@ tmp226,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1487
	ldr	r2, [r4, #40]	@ prephitmp.1486, <variable>.profile
.L255:
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
.L254:
	ldr	r2, [r4, #44]	@ prephitmp.1489, <variable>.level
	sub	r1, r2, #4	@ tmp229, prephitmp.1489,
	cmp	r1, #6	@ tmp229,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r3, #:lower16:g_event_report	@ tmp230,
	movt	r3, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r3, #0]	@ g_event_report.1490, g_event_report
	cmp	r3, #0	@ g_event_report.1490,
	beq	.L256	@,
	movw	r0, #:lower16:73696	@ tmp231,
	movt	r0, #:upper16:73696	@ tmp231,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1490
	ldr	r2, [r4, #44]	@ prephitmp.1489, <variable>.level
.L256:
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC22	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L258:
	and	r0, r2, #15	@ tmp190, D.34651,
	cmp	r0, #5	@ tmp190,
	moveq	r3, #133	@ tmp191,
	moveq	lr, #8	@ tmp192,
	streq	r3, [r4, #40]	@ tmp191, <variable>.profile
	streq	lr, [r4, #44]	@ tmp192, <variable>.level
	b	.L249	@
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
	b	.L260	@
.L270:
	.word	.L261
	.word	.L262
	.word	.L263
	.word	.L264
	.word	.L265
	.word	.L260
	.word	.L266
	.word	.L267
	.word	.L268
	.word	.L269
.L264:
	mov	r0, r4	@, pCtx
	bl	copyright_extension	@
.L260:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L269:
	mov	r0, r4	@, pCtx
	bl	picture_temporal_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L261:
	mov	r0, r4	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L262:
	mov	r0, r4	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L263:
	mov	r0, r4	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L265:
	mov	r0, r4	@, pCtx
	bl	sequence_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L266:
	mov	r0, r4	@, pCtx
	bl	picture_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L267:
	mov	r0, r4	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L268:
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
	bls	.L275	@,
.L273:
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L275:
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
	bne	.L273	@,
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
	cmp	r0, #1	@ D.34534,
	str	r0, [sl, #76]	@ D.34534, <variable>.load_intra_quantizer_matrix
	beq	.L297	@,
	add	lr, r4, #71680	@ ivtmp.1627, pCtx,
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	add	r1, lr, #604	@ ivtmp.1627, ivtmp.1627,
	add	ip, r6, #64	@ tmp197, tmp198,
	mov	r3, #0	@ i.1630,
.L283:
	ldrb	lr, [ip, r3]	@ zero_extendqisi2	@ tmp183, default_intra_quantizer_matrix
	add	r0, r3, #1	@ tmp206, i.1630,
	mov	r2, r1	@ tmp207, ivtmp.1627
	add	r3, r0, #1	@ i.1630, tmp206,
	cmp	r3, #64	@ i.1630,
	str	lr, [r2], #4	@ tmp183, <variable>.intra_quantizer_matrix
	ldrb	r0, [ip, r0]	@ zero_extendqisi2	@ tmp218, default_intra_quantizer_matrix
	str	r0, [r1, #4]	@ tmp218, <variable>.intra_quantizer_matrix
	add	r1, r2, #4	@ ivtmp.1627, tmp207,
	bne	.L283	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34547,
	str	r0, [sl, #80]	@ D.34547, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1611,
	movne	ip, #16	@ tmp201,
	beq	.L298	@,
.L287:
	add	r0, r3, #4	@ tmp204, ivtmp.1611,
	add	r3, r4, r3	@ tmp191, pCtx, ivtmp.1611
	add	lr, r4, r0	@ tmp228, pCtx, tmp204
	add	r1, r3, #71680	@ tmp192, tmp191,
	add	r2, lr, #71680	@ tmp230, tmp228,
	add	r3, r0, #4	@ ivtmp.1611, tmp204,
	add	lr, r1, #860	@ tmp192, tmp192,
	add	r0, r2, #860	@ tmp230, tmp230,
	cmp	r3, #256	@ ivtmp.1611,
	str	ip, [lr, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	str	ip, [r0, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	bne	.L287	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L297:
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	mov	r7, #0	@ i,
.L281:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ D.34541, zigzag
	bl	BsGet	@
	add	ip, r7, #1	@ tmp205, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp174, D.34541,
	add	r7, ip, #1	@ i, tmp205,
	add	r2, r8, #150	@ tmp174, tmp174,
	add	r3, r4, r2, asl #2	@, tmp178, pCtx, tmp174,
	str	r0, [r3, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ D.34541, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i,
	add	r1, r8, #17920	@ tmp212, D.34541,
	add	r8, r1, #150	@ tmp212, tmp212,
	add	r8, r4, r8, asl #2	@, tmp214, pCtx, tmp212,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L281	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.34547,
	str	r0, [sl, #80]	@ D.34547, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1611,
	movne	ip, #16	@ tmp201,
	bne	.L287	@,
.L298:
	mov	r7, #0	@ i.1633,
.L285:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ temp.1632, zigzag
	bl	BsGet	@
	add	r3, r7, #1	@ tmp203, i.1633,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp185, temp.1632,
	add	r7, r3, #1	@ i.1633, tmp203,
	add	ip, r8, #214	@ tmp185, tmp185,
	add	r2, r4, ip, asl #2	@, tmp189, pCtx, tmp185,
	str	r0, [r2, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r3]	@ zero_extendqisi2	@ temp.1632, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i.1633,
	add	ip, r8, #17920	@ tmp223, temp.1632,
	add	r1, ip, #214	@ tmp223, tmp223,
	add	r8, r4, r1, asl #2	@, tmp225, pCtx, tmp223,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L285	@,
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
	mov	r7, r0	@ D.34453,
	add	r2, r0, #7	@ tmp157, D.34453,
	cmp	r7, #0	@ D.34453,
	mov	r0, r6	@, pcode
	movlt	r7, r2	@ D.34453, tmp157
	mov	r1, r7, asr #3	@, D.34453,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp159,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp162, D.34459,
	cmp	r0, #0	@ D.34459,
	movlt	r0, r3	@ D.34459, tmp162
	mov	r3, r0, asr #3	@ tmp163, D.34459,
	sub	r7, r3, #3	@ remain_byte, tmp163,
	cmp	r7, #0	@ remain_byte,
	ble	.L300	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r3, #1	@ tmp233, tmp163,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L301	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #1	@ i,
	cmp	r7, r6	@ remain_byte, i
	ble	.L300	@,
	cmp	r8, #0	@ tmp233,
	beq	.L302	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@,
	beq	.L301	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #2	@ i,
	cmp	r7, r6	@ remain_byte, i
	bgt	.L302	@,
	b	.L300	@
.L327:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L301	@,
	bl	BsSkip	@
	cmp	r7, r6	@ remain_byte, i
	ble	.L300	@,
.L302:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r6, r6, #1	@ tmp234, i,
	mov	r1, #8	@,
	add	r6, r6, #1	@ i, tmp234,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L327	@,
.L301:
	mov	r0, #1	@ D.34464,
.L305:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L300:
	movw	r6, #:lower16:71964	@ tmp164,
	movt	r6, #:upper16:71964	@ tmp164,
	ldrsb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L303	@,
	movw	r7, #:lower16:71965	@ tmp166,
	movt	r7, #:upper16:71965	@ tmp166,
	ldrsb	r0, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r0, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L303	@,
	movw	sl, #:lower16:71988	@ tmp168,
	movt	sl, #:upper16:71988	@ tmp168,
	ldr	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	beq	.L303	@,
	mov	r0, #7	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	movw	lr, #:lower16:71984	@ tmp175,
	movt	lr, #:upper16:71984	@ tmp175,
	str	lr, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@,
	movw	r9, #:lower16:71972	@ tmp171,
	movw	fp, #:lower16:71968	@ tmp174,
	movt	r9, #:upper16:71972	@ tmp171,
	movt	fp, #:upper16:71968	@ tmp174,
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r3, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	ip, r1, #3	@ tmp176, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, ip, r3	@, tmp176, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	movw	r3, #:lower16:71980	@ tmp187,
	movt	r3, #:upper16:71980	@ tmp187,
	ldr	r0, [sp, #4]	@,
	ldr	r2, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	movw	lr, #:lower16:71976	@ tmp192,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71976	@ tmp192,
	ldr	r1, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r2, r2, #3	@, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r2, [r5, r0]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r0, ip, #3	@ D.34484, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	sub	r1, r1, #3	@ D.34485, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r0, [r5, lr]	@ D.34484, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r1, [r5, fp]	@ D.34485, <variable>.CodecInfo.stMp2Packet.BsVirAddr
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
	mov	r5, r0	@ pcode.1666,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r3, r0	@ D.34487,
	add	r2, r0, #7	@ tmp215, D.34487,
	cmp	r3, #0	@ D.34487,
	mov	r0, r5	@, pcode.1666
	movlt	r3, r2	@ D.34487, tmp215
	mov	r1, r3, asr #3	@, D.34487,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp217,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.34490,
	add	ip, r0, #7	@ tmp220, D.34490,
	movlt	r0, ip	@ D.34490, tmp220
	mov	r3, r0, asr #3	@ tmp221, D.34490,
	sub	r6, r3, #3	@ remain_byte.1670, tmp221,
	cmp	r6, #0	@ remain_byte.1670,
	ble	.L303	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp229, tmp221,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L301	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.1665,
	cmp	r6, r5	@ remain_byte.1670, i.1665
	ble	.L303	@,
	cmp	r7, #0	@ tmp229,
	beq	.L304	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@,
	beq	.L301	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.1665,
	cmp	r6, r5	@ remain_byte.1670, i.1665
	bgt	.L304	@,
	b	.L303	@
.L328:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L301	@,
	bl	BsSkip	@
	cmp	r6, r5	@ remain_byte.1670, i.1665
	ble	.L303	@,
.L304:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp230, i.1665,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i.1665, tmp230,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L328	@,
	b	.L301	@
.L303:
	mov	r0, #0	@ D.34464,
	b	.L305	@
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
	add	r9, r0, #7	@ tmp160, D.34352,
	cmp	r0, #0	@ D.34352,
	movlt	r0, r9	@ D.34352, tmp160
	mov	r9, r0, asr #3	@ RemainByte, D.34352,
	cmp	r9, #0	@ RemainByte,
	ble	.L330	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	sub	fp, r9, #1	@ tmp387, RemainByte,
	movw	sl, #:lower16:.LANCHOR2	@ tmp382,
	and	fp, fp, #1	@ tmp389, tmp387,
	movt	sl, #:upper16:.LANCHOR2	@ tmp382,
	mov	r4, #0	@ cnt,
	movw	r8, #1023	@ tmp380,
	bic	r0, r0, #-16777216	@ tmp162,,
	cmp	r0, #1	@ tmp162,
	beq	.L331	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r4, #1	@ cnt,
	cmp	r9, r4	@ RemainByte, cnt
	mov	r7, r4	@ i, cnt
	strb	r0, [sl, #0]	@, g_tmpusd
	ble	.L335	@,
	cmp	fp, #0	@ tmp389,
	beq	.L334	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r0, r0, #-16777216	@ tmp418,,
	cmp	r0, r4	@ tmp418,
	beq	.L331	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r7, r4, r4	@ i, i,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	mov	r4, r7	@ cnt, i
	bgt	.L334	@,
	b	.L335	@
.L388:
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L333:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp390, i,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp396,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp396,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp380
	ble	.L379	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	add	r7, r7, #1	@ i, tmp390,
	bl	BsGet	@
	cmp	r9, r7	@ RemainByte, i
	ble	.L335	@,
.L334:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp392,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp392,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp380
	ble	.L388	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L333	@
.L379:
	bl	BsGet	@
	add	r7, r7, #1	@ i, tmp390,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L334	@,
.L335:
	movw	r7, #:lower16:71964	@ tmp369,
	movt	r7, #:upper16:71964	@ tmp369,
	ldrsb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L336	@,
	movw	sl, #:lower16:71965	@ tmp166,
	movt	sl, #:upper16:71965	@ tmp166,
	ldrsb	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L336	@,
	movw	r9, #:lower16:71988	@ tmp168,
	movt	r9, #:upper16:71988	@ tmp168,
	ldr	ip, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	ip, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	bne	.L389	@,
.L336:
	mov	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
	b	.L340	@
.L331:
	mov	r6, #1	@,
	str	r6, [sp, #4]	@, %sfp
.L340:
	movw	r6, #:lower16:72044	@ tmp222,
	movt	r6, #:upper16:72044	@ tmp222,
	ldr	r3, [r5, r6]	@ D.34396, <variable>.CodecInfo.TotalUsrDatNum
	cmp	r3, #3	@ D.34396,
	ble	.L342	@,
	movw	r8, #:lower16:73696	@ tmp223,
	movw	sl, #:lower16:72028	@ tmp225,
	movt	r8, #:upper16:73696	@ tmp223,
	movt	sl, #:upper16:72028	@ tmp225,
	movw	fp, #:lower16:72032	@ tmp231,
	movt	fp, #:upper16:72032	@ tmp231,
	ldr	r1, [r5, sl]	@, <variable>.CodecInfo.pUsrDatArray
	mov	r7, #0	@ tmp228,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	movw	r9, #:lower16:72036	@ tmp237,
	bl	FreeUsdByDec	@
	movt	r9, #:upper16:72036	@ tmp237,
	str	r7, [r5, sl]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	movw	sl, #:lower16:72040	@ tmp243,
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	movt	sl, #:upper16:72040	@ tmp243,
	ldr	r1, [r5, fp]	@, <variable>.CodecInfo.pUsrDatArray
	str	r7, [sp, #0]	@ tmp12,
	bl	FreeUsdByDec	@
	str	r7, [r5, fp]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	ldr	r1, [r5, r9]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	str	r7, [r5, r9]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	ldr	r0, [r5, r8]	@, <variable>.ChanID
	ldr	r1, [r5, sl]	@, <variable>.CodecInfo.pUsrDatArray
	bl	FreeUsdByDec	@
	str	r7, [r5, sl]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r5, r6]	@ tmp228, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r3, [sp, #0]	@,
.L342:
	movw	r6, #:lower16:73696	@ tmp249,
	movt	r6, #:upper16:73696	@ tmp249,
	add	lr, r3, #17920	@ tmp373, prephitmp.1692,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r6, lr, #86	@ tmp373, tmp373,
	bl	GetUsd	@
	movw	r2, #:lower16:72044	@ tmp257,
	movt	r2, #:upper16:72044	@ tmp257,
	add	r3, r5, r6, asl #2	@, tmp255, pCtx, tmp373,
	ldr	r2, [r5, r2]	@ temp.1722, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #17920	@ tmp258, temp.1722,
	add	ip, r1, #86	@ tmp258, tmp258,
	add	r1, r5, ip, asl #2	@, tmp262, pCtx, tmp258,
	str	r0, [r3, #4]	@ D.34403, <variable>.CodecInfo.pUsrDatArray
	ldr	r1, [r1, #4]	@ tmp264, <variable>.CodecInfo.pUsrDatArray
	cmp	r1, #0	@ tmp264,
	beq	.L343	@,
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:72016	@ tmp275,
	movt	lr, #:upper16:72016	@ tmp275,
	movw	r2, #:lower16:73336	@ tmp292,
	movt	r2, #:upper16:73336	@ tmp292,
	movw	ip, #:lower16:73700	@ tmp302,
	ldrd	r8, [r7, #56]	@ <variable>.pts, <variable>.pstExtraData,
	mov	r7, #1056	@ tmp265,
	movt	ip, #:upper16:73700	@ tmp302,
	movw	r1, #:lower16:72012	@ tmp315,
	movt	r1, #:upper16:72012	@ tmp315,
	strd	r8, [r0, r7]	@ <variable>.pts, D.34403, tmp265
	ldr	r0, [r3, #4]	@ tmp270, <variable>.CodecInfo.pUsrDatArray
	ldr	lr, [r5, lr]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	str	lr, [r0, #1040]	@ <variable>.CodecInfo.SeqCnt, <variable>.seq_cnt
	ldr	r0, [r3, #4]	@ tmp279, <variable>.CodecInfo.pUsrDatArray
	str	r4, [r0, #1048]	@ cnt, <variable>.data_size
	ldr	lr, [r5, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r0, [r3, #4]	@ tmp286, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [lr, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	strb	lr, [r0, #1024]	@ <variable>.picture_coding_type, <variable>.pic_coding_type
	ldr	lr, [r5, ip]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	r0, [r3, #4]	@ tmp297, <variable>.CodecInfo.pUsrDatArray
	str	lr, [r0, #1028]	@ <variable>.numTotalFrame, <variable>.pic_num_count
	ldr	ip, [r5, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r2, [r3, #4]	@ tmp306, <variable>.CodecInfo.pUsrDatArray
	ldrb	lr, [ip, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	ip, r5, r6, asl #2	@, tmp338, pCtx, tmp373,
	strb	lr, [r2, #1025]	@ <variable>.top_field_first, <variable>.top_field_first
	ldr	r0, [r5, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r3, #4]	@ tmp320, <variable>.CodecInfo.pUsrDatArray
	tst	r0, #524288	@ <variable>.CodecInfo.StreamIntegrality,
	movne	r0, #3	@ tmp325,
	moveq	r0, #1	@ tmp333,
	str	r0, [r1, #1036]	@ tmp333, <variable>.from
	movw	r1, #:lower16:.LANCHOR2	@,
	ldr	r0, [ip, #4]	@ prephitmp.1694, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:.LANCHOR2	@,
	ldr	r2, [r0, #1048]	@ prephitmp.1696, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.1696,
	movgt	r2, #1024	@ tmp340,
	strgt	r2, [r0, #1048]	@ tmp340, <variable>.data_size
	ldrgt	r0, [ip, #4]	@ prephitmp.1694, <variable>.CodecInfo.pUsrDatArray
	ldrgt	r2, [r0, #1048]	@ prephitmp.1696, <variable>.data_size
	bl	memcpy	@
	movw	r3, #:lower16:g_event_report	@ tmp352,
	movt	r3, #:upper16:g_event_report	@ tmp352,
	ldr	ip, [r3, #0]	@ g_event_report.484, g_event_report
	cmp	ip, #0	@ g_event_report.484,
	beq	.L347	@,
	add	r6, r5, r6, asl #2	@, tmp357, pCtx, tmp373,
	movw	r0, #:lower16:73696	@ tmp360,
	add	r2, sp, #16	@ tmp362,,
	movt	r0, #:upper16:73696	@ tmp360,
	ldr	r3, [r6, #4]	@ tmp359, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #6	@,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	str	r3, [r2, #-4]!	@ tmp359, para
	blx	ip	@ g_event_report.484
.L347:
	movw	ip, #:lower16:72044	@ tmp363,
	movt	ip, #:upper16:72044	@ tmp363,
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #1	@ tmp366, <variable>.CodecInfo.TotalUsrDatNum,
	str	r1, [r5, ip]	@ tmp366, <variable>.CodecInfo.TotalUsrDatNum
.L348:
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L343:
	mov	r0, r1	@, tmp264
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	b	.L348	@
.L389:
	mov	r0, r8	@, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	movw	fp, #:lower16:71984	@,
	movw	lr, #:lower16:71968	@ tmp174,
	movt	fp, #:upper16:71984	@,
	movt	lr, #:upper16:71968	@ tmp174,
	str	fp, [sp, #4]	@, %sfp
	str	lr, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@, %sfp
	movw	fp, #:lower16:71972	@ tmp171,
	ldr	r3, [sp, #0]	@,
	movt	fp, #:upper16:71972	@ tmp171,
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r3, r1, #3	@ tmp176, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, r3, ip	@, tmp176, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [sp, #0]	@,
	ldr	r1, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movw	ip, #:lower16:71980	@ tmp187,
	movt	ip, #:upper16:71980	@ tmp187,
	ldr	r2, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r1, r1, #3	@ D.34385, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r5, r3]	@ D.34385, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [sp, #4]	@, %sfp
	movw	lr, #:lower16:71976	@ tmp193,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71976	@ tmp193,
	add	r2, r2, #3	@ D.34382, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r8, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	r2, [r5, r3]	@ D.34382, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	fp, r0, #3	@ D.34384, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, r6	@, pBs
	str	fp, [r5, lr]	@ D.34384, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
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
	add	r9, r0, #7	@ tmp216, D.34386,
	cmp	r0, #0	@ D.34386,
	movlt	r0, r9	@ D.34386, tmp216
	mov	fp, r0, asr #3	@ tmp217, D.34386,
	sub	r9, fp, #3	@ RemainByte.1717, tmp217,
	cmp	r9, #0	@ RemainByte.1717,
	ble	.L336	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	movw	sl, #:lower16:.LANCHOR2	@ tmp378,
	and	fp, fp, #1	@ tmp385, tmp217,
	movt	sl, #:upper16:.LANCHOR2	@ tmp378,
	movw	r8, #1023	@ tmp376,
	bic	ip, r0, #-16777216	@ tmp218,,
	cmp	ip, #1	@ tmp218,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp376
	ble	.L373	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L374:
	mov	r7, #1	@ i.1716,
	cmp	r9, r7	@ RemainByte.1717, i.1716
	ble	.L336	@,
	cmp	fp, #0	@ tmp385,
	beq	.L339	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r3, r0, #-16777216	@ tmp407,,
	cmp	r3, r7	@ tmp407,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp376
	bgt	.L387	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L378:
	add	r7, r7, #1	@ i.1716, tmp386,
	cmp	r9, r7	@ RemainByte.1717, i.1716
	ble	.L336	@,
.L339:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp398,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp398,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp376
	bgt	.L337	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L338:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp386, i.1716,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp402,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp402,
	beq	.L331	@,
	cmp	r4, r8	@ cnt, tmp376
	bgt	.L387	@,
	bl	BsGet	@
	add	r7, r7, #1	@ i.1716, tmp386,
	cmp	r9, r7	@ RemainByte.1717, i.1716
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L339	@,
	b	.L336	@
.L387:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L378	@
.L337:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L338	@
.L330:
	mov	r4, #0	@ cnt,
	b	.L335	@
.L373:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	b	.L374	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:73696	@ tmp145,
	movt	r5, #:upper16:73696	@ tmp145,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	movw	r6, #:lower16:72096	@ tmp147,
	bl	FSP_NewLogicFs	@
	movt	r6, #:upper16:72096	@ tmp147,
	cmp	r0, #0	@ D.34239,
	mov	r1, r0	@ D.34239,
	str	r0, [r4, r6]	@ D.34239, <variable>.CodecInfo.CurFsID
	blt	.L397	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L398	@,
	ldr	r2, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.34264, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.34264,
	beq	.L395	@,
	ldr	r3, [r5, #412]	@ D.34267, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.34267,
	beq	.L395	@,
	ldr	ip, [r5, #416]	@ D.34270, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.34270,
	beq	.L395	@,
	ldr	ip, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #18	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC28	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC28	@,
	str	ip, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34258,
.L393:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L395:
	mov	r0, #1	@ D.34258,
	b	.L393	@
.L397:
	movw	r7, #:lower16:72092	@ tmp151,
	movt	r7, #:upper16:72092	@ tmp151,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L392	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp175,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp175,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp165,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp165, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp165, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp165, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp165, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp165, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L399	@,
.L392:
	movw	r2, #:lower16:72052	@ tmp187,
	movw	r3, #:lower16:73696	@ tmp189,
	movt	r2, #:upper16:72052	@ tmp187,
	movt	r3, #:upper16:73696	@ tmp189,
	add	r1, r4, #72704	@, pCtx,
	mov	r5, #0	@ tmp188,
	add	r1, r1, #640	@,,
	str	r5, [r4, r2]	@ tmp188, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.34258, tmp188
	b	.L393	@
.L399:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.34256, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.34256, <variable>.CodecInfo.FwdFsID
	b	.L392	@
.L398:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #2011	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34258, pLf
	b	.L393	@
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
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ D.34020, <variable>.picture_coding_type
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ D.34026, <variable>.progressive_sequence
	cmp	ip, #4	@ D.34020,
	ldr	sl, [r5, #128]	@ vfmt, <variable>.video_format
	subne	ip, ip, #1	@ tmp166, D.34020,
	ldr	r3, [r4, #140]	@ D.34027, <variable>.format
	moveq	ip, #0	@ prephitmp.1798,
	andne	ip, ip, #3	@ prephitmp.1798, tmp166,
	cmp	lr, #0	@ D.34026,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ D.34029, <variable>.picture_structure
	movne	r0, #4096	@ prephitmp.1827,
	beq	.L421	@,
.L405:
	movw	r2, #:lower16:73336	@ tmp178,
	movt	r2, #:upper16:73336	@ tmp178,
	orr	r3, r8, r3, lsr #10	@, tmp193, D.34029, D.34027,
	and	sl, sl, #3	@ tmp190, vfmt,
	ldr	r2, [r6, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	and	r3, r3, #3	@ tmp194, tmp193,
	ldr	r2, [r2, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	str	ip, [r4, #136]	@ prephitmp.1798, <variable>.bottom_fld_type
	sub	r2, r2, #1	@ D.35611, <variable>.aspect_ratio_information,
	str	ip, [r4, #132]	@ prephitmp.1798, <variable>.top_fld_type
	cmp	r2, #2	@ D.35611,
	movwls	r1, #:lower16:.LANCHOR0	@ tmp180,
	movtls	r1, #:upper16:.LANCHOR0	@ tmp180,
	addls	r2, r1, r2, asl #2	@, tmp183, tmp180, D.35611,
	movhi	r1, #0	@ prephitmp.1828,
	movhi	r2, r1	@ prephitmp.1830, prephitmp.1828
	ldrls	r1, [r2, #128]	@ prephitmp.1828, CSWTCH.522
	andls	r2, r1, #7	@ pretmp.1829, prephitmp.1828,
	movls	r2, r2, asl #14	@ prephitmp.1830, pretmp.1829,
	cmp	lr, #0	@ D.34026,
	moveq	lr, #256	@ tmp189,
	movne	lr, #0	@ tmp189,
	orr	lr, lr, sl, asl #5	@, tmp192, tmp189, tmp190,
	orr	r3, lr, r3, asl #10	@, tmp196, tmp192, tmp194,
	orr	lr, r3, ip	@ tmp197, tmp196, prephitmp.1798
	orr	r3, lr, r0	@ tmp198, tmp197, prephitmp.1827
	mov	r0, r4	@, pImg
	orr	lr, r3, r2	@ tmp199, tmp198, prephitmp.1830
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
	ldr	r3, [r6, #4]	@ D.34067, <variable>.pMp2DecParam
	cmp	r3, #0	@ D.34067,
	streqb	r3, [r4, #295]	@ D.34067, <variable>.ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ prephitmp.1799, <variable>.EstmatedPicQp
	moveq	r2, #32	@ tmp209,
	moveq	r3, r2	@ prephitmp.1799, tmp209
	streq	r2, [r4, #304]	@ tmp209, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #293]	@ tmp210, <variable>.ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ prephitmp.1799, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #308]	@ prephitmp.1799, <variable>.ImageDnr.QP_U
	str	r3, [r4, #312]	@ prephitmp.1799, <variable>.ImageDnr.QP_V
	ldr	r0, [r5, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	str	r0, [r4, #168]	@ <variable>.frame_rate, <variable>.frame_rate
	ldr	ip, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L422	@,
.L414:
	ldr	r3, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r3, [r4, #144]	@ <variable>.horizontal_size, <variable>.image_width
	ldr	lr, [r5, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	lr, [r4, #148]	@ <variable>.vertical_size, <variable>.image_height
.L416:
	ldr	lr, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L423	@,
.L417:
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	lr, r2, lsr #1	@ tmp239, <variable>.image_width,
	str	lr, [r4, #160]	@ tmp239, <variable>.disp_center_x
	mov	r1, r3, lsr #1	@ tmp241, <variable>.image_height,
	str	r1, [r4, #164]	@ tmp241, <variable>.disp_center_y
	ldr	r1, [r5, #148]	@ D.34122, <variable>.display_horizontal_size
	cmp	r1, #0	@ D.34122,
	beq	.L418	@,
	ldr	ip, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	ip, #0	@ <variable>.display_vertical_size,
	beq	.L418	@,
	cmp	r2, r1	@ <variable>.image_width, D.34122
	strls	r2, [r4, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r1, [r4, #152]	@, D.34122, <variable>.disp_width
	ldr	r2, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	r3, r2	@ <variable>.image_height, <variable>.display_vertical_size
	strls	r3, [r4, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r2, [r4, #156]	@, <variable>.display_vertical_size, <variable>.disp_height
	b	.L419	@
.L418:
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
.L419:
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
.L421:
	cmp	r8, #3	@ D.34029,
	beq	.L424	@,
	movw	r2, #:lower16:72024	@ tmp169,
	movt	r2, #:upper16:72024	@ tmp169,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L407	@,
	cmp	r8, #1	@ D.34029,
	movne	r0, #0	@, tmp173
	moveq	r0, #1	@, tmp173
	mov	r0, r0, asl #12	@ prephitmp.1827, tmp173,
	b	.L405	@
.L407:
	subs	r2, r8, #1	@ tmp176, D.34029,
	movne	r2, #1	@ tmp176
	mov	r0, r2, asl #12	@ prephitmp.1827, tmp176,
	b	.L405	@
.L424:
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	and	r0, r2, #1	@ tmp168, <variable>.top_field_first,
	mov	r0, r0, asl #12	@ prephitmp.1827, tmp168,
	b	.L405	@
.L423:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.34095, <variable>.image_stride
	add	ip, r0, #15	@ tmp226, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp225, D.34095,
	mov	r1, ip, lsr #4	@ tmp228, tmp226,
	add	ip, r3, r2	@ tmp233, <variable>.luma_phy_addr, D.34095
	str	ip, [r4, #96]	@ tmp233, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.34101, tmp228, tmp225
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp230, D.34101, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp232, <variable>.luma_vir_addr, D.34101
	add	r2, ip, r2	@ tmp234, tmp230, D.34095
	str	r1, [r4, #36]	@ tmp232, <variable>.chrom_vir_addr
	str	r2, [r4, #100]	@ tmp234, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp230
	str	ip, [r4, #108]	@ tmp230, <variable>.chrom_phy_addr
	str	ip, [r4, #92]	@ tmp230, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L417	@
.L422:
	ldr	r3, [r7, #56]	@ D.34083, <variable>.mb_width
	cmp	r3, #0	@ D.34083,
	beq	.L414	@,
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r0, #0	@ <variable>.mb_height,
	beq	.L414	@,
	movw	ip, #:lower16:73715	@ tmp216,
	movt	ip, #:upper16:73715	@ tmp216,
	ldrb	r1, [r6, ip]	@ zero_extendqisi2	@ <variable>.DSDNeedFlushFrame, <variable>.DSDNeedFlushFrame
	cmp	r1, #0	@ <variable>.DSDNeedFlushFrame,
	beq	.L414	@,
	mov	r1, r3, asl #4	@ tmp220, D.34083,
	str	r1, [r4, #144]	@ tmp220, <variable>.image_width
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	mov	r2, r0, asl #4	@ tmp222, <variable>.mb_height,
	str	r2, [r4, #148]	@ tmp222, <variable>.image_height
	b	.L416	@
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
	mov	r4, r0	@ pCtx, pCtx
	ldrb	ip, [r4, #152]	@ zero_extendqisi2	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.Mp2DecParam.EstmatedPicQp
	movw	r0, #:lower16:72192	@ tmp161,
	movt	r0, #:upper16:72192	@ tmp161,
	movw	r8, #:lower16:73336	@ tmp160,
	movt	r8, #:upper16:73336	@ tmp160,
	.pad #12
	sub	sp, sp, #12	@,,
	strb	ip, [r4, r0]	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.CodecInfo.EstmatedPicQp
	mov	r2, r1	@, ErrRatio
	mov	r7, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	ldr	r5, [r4, r8]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r6, #:lower16:72096	@ tmp167,
	bl	dprint_vfmw	@
	movt	r6, #:upper16:72096	@ tmp167,
	mov	r0, r4	@, pCtx
	movw	r8, #:lower16:73696	@ tmp165,
	movt	r8, #:upper16:73696	@ tmp165,
	bl	MP2_RecordVFMWState	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:72092	@ tmp171,
	movt	r2, #:upper16:72092	@ tmp171,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pCurImg,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:72088	@ tmp175,
	movt	r3, #:upper16:72088	@ tmp175,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L452	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r7, #0	@ ErrRatio,
	movw	lr, #45328	@ tmp178,
	movlt	r7, #0	@ iftmp.508,
	strb	r1, [r4, lr]	@ <variable>.picture_coding_type, <variable>.CodecInfo.LastDecPicCodingType
	blt	.L429	@,
	cmp	r7, #100	@ ErrRatio,
	movge	r7, #100	@ iftmp.508,
.L429:
	str	r7, [r6, #180]	@ iftmp.508, <variable>.error_level
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L430	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r7, r2	@ iftmp.508, <variable>.s32RefErrThr
	bhi	.L453	@,
.L430:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #45320	@,
	bl	__memzero	@
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r3, #3	@ <variable>.picture_structure,
	beq	.L438	@,
	movw	r1, #:lower16:72024	@ tmp243,
	movt	r1, #:upper16:72024	@ tmp243,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	ip, #1	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #1	@ D.35122,
	beq	.L438	@,
.L427:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L438:
	movw	r0, #:lower16:72028	@ tmp227,
	movt	r0, #:upper16:72028	@ tmp227,
	movw	r3, #:lower16:72028	@ tmp230,
	movw	r1, #:lower16:72032	@ tmp232,
	ldr	lr, [r4, r0]	@ temp.1915, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:72032	@ tmp232,
	movt	r3, #:upper16:72028	@ tmp230,
	mov	ip, #0	@ tmp231,
	cmp	lr, #0	@ temp.1915,
	strne	lr, [r6, #192]	@ temp.1915, <variable>.p_usrdat
	movne	lr, #0	@ tmp229,
	strne	lr, [r4, r0]	@ tmp229, <variable>.CodecInfo.pUsrDatArray
	str	ip, [r4, r3]	@ tmp231, <variable>.CodecInfo.pUsrDatArray
	movw	r0, #:lower16:72032	@ tmp235,
	ldr	r2, [r4, r1]	@ temp.1917, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72032	@ tmp235,
	movw	r3, #:lower16:72036	@ tmp237,
	movt	r3, #:upper16:72036	@ tmp237,
	cmp	r2, ip	@ temp.1917,
	strne	r2, [r6, #196]	@ temp.1917, <variable>.p_usrdat
	strne	ip, [r4, r1]	@ tmp231, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #0	@ tmp236,
	str	r1, [r4, r0]	@ tmp236, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72036	@ tmp240,
	ldr	lr, [r4, r3]	@ temp.1918, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp240,
	movw	r0, #:lower16:72040	@ tmp242,
	movt	r0, #:upper16:72040	@ tmp242,
	cmp	lr, r1	@ temp.1918,
	strne	lr, [r6, #200]	@ temp.1918, <variable>.p_usrdat
	mov	lr, #0	@ tmp241,
	strne	r1, [r4, r3]	@ tmp236, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72044	@ tmp249,
	str	lr, [r4, ip]	@ tmp241, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72044	@ tmp249,
	ldr	r2, [r4, r0]	@ D.35166, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72040	@ tmp247,
	movt	ip, #:upper16:72040	@ tmp247,
	cmp	r2, lr	@ D.35166,
	strne	r2, [r6, #204]	@ D.35166, <variable>.p_usrdat
	strne	lr, [r4, r0]	@ tmp241, <variable>.CodecInfo.pUsrDatArray
	mov	r0, #0	@ tmp248,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	str	r0, [r4, ip]	@ tmp248, <variable>.CodecInfo.pUsrDatArray
	str	r0, [r4, r3]	@ tmp248, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r2, [lr, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L439	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r1, #3	@ <variable>.picture_coding_type,
	beq	.L439	@,
	movw	r2, #:lower16:72088	@ tmp254,
	movt	r2, #:upper16:72088	@ tmp254,
	movw	lr, #:lower16:72100	@ tmp255,
	movt	lr, #:upper16:72100	@ tmp255,
	ldr	r1, [r4, r2]	@ prephitmp.1853,
	str	r1, [r4, lr]	@ prephitmp.1853, <variable>.CodecInfo.ToQueFsID
.L441:
	cmn	r1, #1	@ prephitmp.1853,
	beq	.L442	@,
	movw	r6, #:lower16:73696	@ tmp260,
	movt	r6, #:upper16:73696	@ tmp260,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L443	@,
	movw	ip, #:lower16:72100	@ tmp264,
	movt	ip, #:upper16:72100	@ tmp264,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L443	@,
.L442:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L454	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L455	@,
	movw	r0, #:lower16:72176	@ tmp352,
	movt	r0, #:upper16:72176	@ tmp352,
	movw	lr, #:lower16:72172	@ tmp355,
	movt	lr, #:upper16:72172	@ tmp355,
	ldr	r2, [r4, r0]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.1914, <variable>.GopFrmCnt,
	str	r1, [r4, r0]	@ temp.1914, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp356, temp.1914,
	str	r3, [r4, lr]	@ tmp356, <variable>.GopFldCnt
.L449:
	movw	r2, #:lower16:72168	@ tmp357,
	movt	r2, #:upper16:72168	@ tmp357,
	movw	r3, #:lower16:72020	@ tmp361,
	movt	r3, #:upper16:72020	@ tmp361,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #1	@ D.35122,
	add	r1, ip, r0	@ tmp360, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp360, <variable>.GopFrmCntNoRpt
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, lr, r0	@ tmp364, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, r3]	@ tmp364,
	b	.L427	@
.L453:
	movw	r5, #:lower16:73696	@ tmp184,
	movw	r7, #:lower16:72092	@ tmp186,
	movt	r5, #:upper16:73696	@ tmp184,
	movt	r7, #:upper16:72092	@ tmp186,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L431	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:72088	@ tmp210,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:72088	@ tmp210,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp200,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp200, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp200, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp200, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp200, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp200, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp200, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	beq	.L431	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.35153, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.35153, <variable>.CodecInfo.FwdFsID
.L431:
	movw	r1, #:lower16:72052	@ tmp222,
	movt	r1, #:upper16:72052	@ tmp222,
	mov	ip, #0	@ tmp223,
	mov	r0, #1	@ D.35122,
	str	ip, [r4, r1]	@ tmp223,
	b	.L427	@
.L455:
	movw	r2, #:lower16:72176	@ tmp342,
	movt	r2, #:upper16:72176	@ tmp342,
	movw	r3, #:lower16:72172	@ tmp346,
	movt	r3, #:upper16:72172	@ tmp346,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	lr, [r4, r3]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	r0, ip, #1	@ tmp345, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ tmp345, <variable>.GopFrmCnt
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	ip, lr, #2	@ tmp348, <variable>.GopFldCnt,
	add	r0, ip, r1	@ tmp351, tmp348, <variable>.repeat_first_field
	str	r0, [r4, r3]	@ tmp351, <variable>.GopFldCnt
	b	.L449	@
.L443:
	movw	r7, #:lower16:73696	@ tmp266,
	movw	r8, #:lower16:72100	@ tmp268,
	movt	r7, #:upper16:73696	@ tmp266,
	movt	r8, #:upper16:72100	@ tmp268,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L456	@,
	ldr	r2, [r6, #180]	@ D.35191, <variable>.error_level
	cmp	r2, #0	@ D.35191,
	beq	.L445	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.35193, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.35191, D.35193
	bhi	.L446	@,
.L445:
	movw	r8, #:lower16:72100	@ tmp272,
	movt	r8, #:upper16:72100	@ tmp272,
	movw	r7, #:lower16:73696	@ tmp273,
	movt	r7, #:upper16:73696	@ tmp273,
	ldr	sl, [r4, r8]	@ temp.1901, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, sl	@, temp.1901
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.1901
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r3, r0	@ D.35196,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	add	r2, r4, #72704	@, pCtx,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #640	@,,
	mov	r1, #3	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.35198,
	beq	.L447	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r5, #0	@ tmp287,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r5, [r6, #192]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #196]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #200]	@ tmp287, <variable>.p_usrdat
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r6, #204]	@ tmp287, <variable>.p_usrdat
	mov	r2, r5	@, tmp287
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, r5	@ D.35122, tmp287
	b	.L427	@
.L439:
	movw	r3, #:lower16:72096	@ tmp258,
	movt	r3, #:upper16:72096	@ tmp258,
	movw	r0, #:lower16:72100	@ tmp259,
	movt	r0, #:upper16:72100	@ tmp259,
	ldr	r1, [r4, r3]	@ prephitmp.1853,
	str	r1, [r4, r0]	@ prephitmp.1853, <variable>.CodecInfo.ToQueFsID
	b	.L441	@
.L454:
	movw	r3, #:lower16:72176	@ tmp332,
	movt	r3, #:upper16:72176	@ tmp332,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:72172	@ tmp339,
	ldr	lr, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:72172	@ tmp339,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, lr, #1	@ tmp333, <variable>.GopFrmCnt,
	add	lr, r1, ip	@ tmp336, tmp333, <variable>.repeat_first_field
	add	r1, lr, r0	@ D.35215, tmp336, <variable>.top_field_first
	str	r1, [r4, r3]	@ D.35215, <variable>.GopFrmCnt
	mov	lr, r1, asl #1	@ tmp340, D.35215,
	str	lr, [r4, r2]	@ tmp340, <variable>.GopFldCnt
	b	.L449	@
.L446:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mov	sl, #0	@ tmp314,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp314, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp314, <variable>.p_usrdat
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #200]	@ tmp314, <variable>.p_usrdat
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #204]	@ tmp314, <variable>.p_usrdat
	mov	r2, sl	@, tmp314
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	b	.L442	@
.L452:
	mov	r3, sl	@, pBwdImg
	mov	r0, r6	@, pCurImg
	movw	r1, #:lower16:.LC30	@,
	mov	r2, r6	@, pCurImg
	movt	r1, #:upper16:.LC30	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35122, pCurImg
	b	.L427	@
.L447:
	movw	r3, #:lower16:73704	@ tmp304,
	movt	r3, #:upper16:73704	@ tmp304,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r4, r3]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, ip, #1	@ tmp307, <variable>.numOutputFrame,
	str	r1, [r4, r3]	@ tmp307, <variable>.numOutputFrame
	str	r0, [lr, #732]	@ D.35198, <variable>.s32firstIdecodedflag
	b	.L442	@
.L456:
	movw	r1, #:lower16:.LC26	@,
	movw	r2, #3592	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35122, pToQueImg
	b	.L427	@
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
	beq	.L458	@,
	movw	r7, #:lower16:73696	@ tmp146,
	movw	r6, #:lower16:72092	@ tmp148,
	movt	r7, #:upper16:73696	@ tmp146,
	movt	r6, #:upper16:72092	@ tmp148,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L458	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L469	@,
.L458:
	add	r1, r4, #72704	@, pCtx,
	add	r0, r1, #640	@,,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	GetVoLastImageID	@
.L469:
	mov	r0, r4	@, pCtx
	mov	r7, #0	@ tmp158,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp154,
	movt	r3, #:upper16:72028	@ tmp154,
	movw	r1, #:lower16:72028	@ tmp157,
	movw	r0, #:lower16:72032	@ tmp159,
	movt	r1, #:upper16:72028	@ tmp157,
	ldr	ip, [r4, r3]	@ temp.1962, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72032	@ tmp159,
	movw	r6, #:lower16:72032	@ tmp162,
	movt	r6, #:upper16:72032	@ tmp162,
	cmp	ip, #0	@ temp.1962,
	strne	ip, [r5, #192]	@ temp.1962, <variable>.p_usrdat
	movne	ip, #0	@ tmp156,
	strne	ip, [r4, r3]	@ tmp156, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r4, r1]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72036	@ tmp164,
	ldr	r2, [r4, r0]	@ temp.1967, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp164,
	mov	r1, #0	@ tmp163,
	cmp	r2, r7	@ temp.1967,
	strne	r2, [r5, #196]	@ temp.1967, <variable>.p_usrdat
	movw	r2, #:lower16:72036	@ tmp167,
	strne	r7, [r4, r0]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72036	@ tmp167,
	str	r1, [r4, r6]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:72040	@ tmp169,
	ldr	r3, [r4, ip]	@ temp.1968, <variable>.CodecInfo.pUsrDatArray
	movt	r7, #:upper16:72040	@ tmp169,
	mov	r6, #0	@ tmp168,
	cmp	r3, r1	@ temp.1968,
	strne	r3, [r5, #200]	@ temp.1968, <variable>.p_usrdat
	movw	r3, #:lower16:72040	@ tmp172,
	strne	r1, [r4, ip]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72040	@ tmp172,
	str	r6, [r4, r2]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72044	@ tmp174,
	ldr	r0, [r4, r7]	@ D.35062, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72044	@ tmp174,
	mov	r1, #1	@ tmp176,
	cmp	r0, r6	@ D.35062,
	mov	r2, r1	@, tmp176
	strne	r0, [r5, #204]	@ D.35062, <variable>.p_usrdat
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
	beq	.L463	@,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L458	@
.L463:
	ldr	lr, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	lr, #100	@ <variable>.error_level,
	bhi	.L458	@,
	ldr	r0, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #31	@ <variable>.image_width,
	bls	.L458	@,
	ldr	r2, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r2, #31	@ <variable>.image_height,
	bls	.L458	@,
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
	beq	.L480	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r7	@, FsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L481	@,
.L472:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L481:
	mov	r0, r4	@, pCtx
	movw	r7, #:lower16:72032	@ tmp153,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp148,
	movt	r3, #:upper16:72028	@ tmp148,
	movt	r7, #:upper16:72032	@ tmp153,
	movw	r0, #:lower16:72028	@ tmp151,
	movt	r0, #:upper16:72028	@ tmp151,
	ldr	r2, [r4, r3]	@ temp.2002, <variable>.CodecInfo.pUsrDatArray
	mov	r6, #0	@ tmp152,
	movw	r1, #:lower16:72032	@ tmp156,
	movt	r1, #:upper16:72032	@ tmp156,
	cmp	r2, #0	@ temp.2002,
	strne	r2, [r5, #192]	@ temp.2002, <variable>.p_usrdat
	movne	r2, #0	@ tmp150,
	strne	r2, [r4, r3]	@ tmp150, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, r0]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72036	@ tmp158,
	ldr	ip, [r4, r7]	@ temp.2003, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72036	@ tmp158,
	mov	r0, #0	@ tmp157,
	cmp	ip, r6	@ temp.2003,
	strne	ip, [r5, #196]	@ temp.2003, <variable>.p_usrdat
	movw	ip, #:lower16:72036	@ tmp161,
	strne	r6, [r4, r7]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp161,
	str	r0, [r4, r1]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movw	r6, #:lower16:72040	@ tmp163,
	ldr	r2, [r4, r3]	@ temp.2004, <variable>.CodecInfo.pUsrDatArray
	movt	r6, #:upper16:72040	@ tmp163,
	mov	r1, #0	@ tmp162,
	cmp	r2, r0	@ temp.2004,
	strne	r2, [r5, #200]	@ temp.2004, <variable>.p_usrdat
	movw	r2, #:lower16:72040	@ tmp166,
	strne	r0, [r4, r3]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72040	@ tmp166,
	str	r1, [r4, ip]	@ tmp162, <variable>.CodecInfo.pUsrDatArray
	movw	r0, #:lower16:72044	@ tmp168,
	ldr	r7, [r4, r6]	@ D.33735, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72044	@ tmp168,
	cmp	r7, r1	@ D.33735,
	strne	r7, [r5, #204]	@ D.33735, <variable>.p_usrdat
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
	beq	.L472	@,
	mov	r0, r4	@, pCtx
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
.L480:
	mvn	r0, #0	@ ret,
	b	.L472	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	movw	r5, #:lower16:72048	@ tmp165,
	movt	r5, #:upper16:72048	@ tmp165,
	movw	r2, #:lower16:73336	@ tmp163,
	movw	r3, #:lower16:73340	@ tmp164,
	movt	r2, #:upper16:73336	@ tmp163,
	ldr	r1, [r0, r5]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movt	r3, #:upper16:73340	@ tmp164,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pCtx, pCtx
	cmp	r1, #1	@ <variable>.CodecInfo.MpegFlag,
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r0, r3]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L520	@,
.L483:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L484	@,
	movw	r7, #:lower16:72024	@ tmp176,
	movt	r7, #:upper16:72024	@ tmp176,
	movw	r1, #:lower16:72056	@ tmp180,
	movt	r1, #:upper16:72056	@ tmp180,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.LastTempReference, <variable>.CodecInfo.LastTempReference
	rsbs	r8, r8, #1	@ tmp178, <variable>.CodecInfo.Second_Field
	movcc	r8, #0	@ tmp178
	str	r8, [r4, r7]	@ tmp178, <variable>.CodecInfo.Second_Field
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	cmp	r2, r3	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	beq	.L485	@,
	cmp	r8, #1	@ tmp178,
	beq	.L521	@,
.L485:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movw	r0, #45329	@ tmp216,
	movw	r3, #:lower16:72056	@ tmp219,
	movt	r3, #:upper16:72056	@ tmp219,
	strb	lr, [r4, r0]	@ <variable>.picture_structure, <variable>.CodecInfo.Last_FieldStruct
	movw	lr, #:lower16:72024	@ tmp236,
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	movt	lr, #:upper16:72024	@ tmp236,
	str	r2, [r4, r3]	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	movw	r3, #:lower16:72048	@ tmp243,
	ldrh	r1, [r5, #56]	@, <variable>.mb_width
	movt	r3, #:upper16:72048	@ tmp243,
	strh	r1, [r4, #160]	@ movhi	@, <variable>.Mp2DecParam.PicWidthInMb
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	ip, #3	@ <variable>.picture_structure,
	ldrne	ip, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldreq	ip, [r5, #64]	@ <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height_progressive_subtract1mb
	ldreq	r2, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	movne	ip, ip, lsr #1	@ tmp223, <variable>.mb_height,
	rsbeq	ip, ip, r2	@ tmp230, <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height
	strh	ip, [r4, #156]	@ movhi	@ tmp230, <variable>.Mp2DecParam.PicHeightInMb
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	strh	r6, [r4, #158]	@ movhi	@, <variable>.Mp2DecParam.FrameHeightInMb
	cmp	ip, #1	@ <variable>.CodecInfo.MpegFlag,
	ldrb	r0, [r5, #11]	@ zero_extendqisi2	@ <variable>.frame_pred_frame_dct, <variable>.frame_pred_frame_dct
	strb	r0, [r4, #13]	@ <variable>.frame_pred_frame_dct, <variable>.Mp2DecParam.FramePredFrameDct
	movne	r0, #0	@, tmp245
	moveq	r0, #1	@, tmp245
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	r1, [r4, #12]	@ <variable>.CodecInfo.Second_Field, <variable>.Mp2DecParam.SecondFieldFlag
	strb	r2, [r4, #11]	@ <variable>.picture_structure, <variable>.Mp2DecParam.PictureStructure
	ldrb	r6, [r5, #12]	@ zero_extendqisi2	@ <variable>.concealment_motion_vectors, <variable>.concealment_motion_vectors
	strb	r6, [r4, #15]	@ <variable>.concealment_motion_vectors, <variable>.Mp2DecParam.ConcealmentMotionVectors
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	str	r0, [r4, #188]	@ tmp245, <variable>.Mp2DecParam.Mpeg1Flag
	strb	lr, [r4, #8]	@ <variable>.picture_coding_type, <variable>.Mp2DecParam.PicCodingType
	ldreqb	lr, [r5, #25]	@ zero_extendqisi2	@ <variable>.full_pel_backward_vector, <variable>.full_pel_backward_vector
	streqb	lr, [r4, #9]	@ <variable>.full_pel_backward_vector, <variable>.Mp2DecParam.Mp1BwdmvFullPel
	ldreqb	lr, [r5, #23]	@ zero_extendqisi2	@ <variable>.full_pel_forward_vector, <variable>.full_pel_forward_vector
	streqb	lr, [r4, #10]	@ <variable>.full_pel_forward_vector, <variable>.Mp2DecParam.Mp1FwdmvFullPel
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r3, [r4, #20]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	ip, [r4, #21]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r2, [r5, #6]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r2, [r4, #22]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r1, [r4, #23]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	r6, [r4, #14]	@ <variable>.top_field_first, <variable>.Mp2DecParam.TopFieldFirst
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.intra_dc_precision, <variable>.intra_dc_precision
	strb	r0, [r4, #19]	@ <variable>.intra_dc_precision, <variable>.Mp2DecParam.IntraDcPrecision
	ldrb	lr, [r5, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	strb	lr, [r4, #18]	@ <variable>.q_scale_type, <variable>.Mp2DecParam.QuantType
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ <variable>.intra_vlc_format, <variable>.intra_vlc_format
	strb	r3, [r4, #17]	@ <variable>.intra_vlc_format, <variable>.Mp2DecParam.IntraVlcFormat
	ldrb	ip, [r5, #15]	@ zero_extendqisi2	@ <variable>.alternate_scan, <variable>.alternate_scan
	strb	ip, [r4, #16]	@ <variable>.alternate_scan, <variable>.Mp2DecParam.AlternateScan
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L490	@,
	movw	ip, #:lower16:72024	@ tmp271,
	movt	ip, #:upper16:72024	@ tmp271,
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L490	@,
.L491:
	movw	r7, #:lower16:73696	@ tmp329,
	movw	r3, #:lower16:72096	@ tmp331,
	movt	r7, #:upper16:73696	@ tmp329,
	movt	r3, #:upper16:72096	@ tmp331,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	ip, #:lower16:72088	@ tmp335,
	movt	ip, #:upper16:72088	@ tmp335,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:72092	@ tmp339,
	movt	r2, #:upper16:72092	@ tmp339,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pFwd,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r6, #0	@, pFwd,
	mov	r7, r0	@ pBwd,
	beq	.L498	@,
	cmp	r0, #0	@ pBwd,
	beq	.L498	@,
	ldr	r2, [r5, #408]	@ D.33658, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.33658,
	beq	.L500	@,
	ldr	r0, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r0, #0	@ <variable>.pstTfOutFs,
	beq	.L500	@,
	ldr	ip, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L500	@,
	ldr	lr, [r7, #408]	@ D.33665, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.33665,
	ldrne	ip, [lr, #12]	@ iftmp.450, <variable>.PhyAddr
	ldreq	ip, [r2, #12]	@ iftmp.450, <variable>.PhyAddr
	str	ip, [r4, #200]	@ iftmp.450, <variable>.Mp2DecParam.BwdRefPhyAddr
	ldr	r2, [r6, #408]	@ D.33672, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.33672,
	ldreq	r2, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r2, #12]	@ iftmp.451, <variable>.PhyAddr
	str	lr, [r4, #204]	@ iftmp.451, <variable>.Mp2DecParam.FwdRefPhyAddr
	ldr	r8, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r8, #12]	@ D.33677, <variable>.PhyAddr
	str	r2, [r4, #208]	@ D.33677, <variable>.Mp2DecParam.CurPicPhyAddr
	ldr	r8, [r5, #420]	@ D.33679, <variable>.PmvAddr
	str	r8, [r4, #248]	@ D.33679, <variable>.Mp2DecParam.PmvColmbPhyAddr
	ldr	r1, [r7, #416]	@ D.33681, <variable>.pstTfOutFs
	cmp	r1, #0	@ D.33681,
	ldreq	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r1, #12]	@ iftmp.452, <variable>.PhyAddr
	str	r3, [r4, #220]	@ iftmp.452, <variable>.Mp2DecParam.TfBwdPhyAddr
	ldr	r0, [r6, #416]	@ D.33688, <variable>.pstTfOutFs
	cmp	r0, #0	@ D.33688,
	ldreq	r0, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r1, [r0, #12]	@ iftmp.453, <variable>.PhyAddr
	mov	r0, #13	@,
	str	r1, [r4, #224]	@ iftmp.453, <variable>.Mp2DecParam.TfFwdPhyAddr
	movw	r1, #:lower16:.LC42	@,
	ldr	r3, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	movt	r1, #:upper16:.LC42	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #228]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.TfCurPhyAddr
	ldr	r3, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r3, [r3, #12]	@ D.33695, <variable>.PhyAddr
	str	r3, [r4, #232]	@ D.33695, <variable>.Mp2DecParam.DispFramePhyAddr
	ldr	r7, [r7, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r7, [r4, #212]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.BwdRefIsFldSave
	ldr	r6, [r6, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r6, [r4, #216]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.FwdRefIsFldSave
	ldr	r7, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r6, [r7, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [sp, #0]	@ iftmp.451,
	movw	lr, #45320	@ tmp378,
	str	ip, [sp, #4]	@ iftmp.450,
	str	r6, [r4, lr]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DnrMbInfoStAddr
	str	r8, [sp, #8]	@ D.33679,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r4, #71680	@ ivtmp.2037, pCtx,
	add	r3, r0, #604	@ ivtmp.2037, ivtmp.2037,
	mov	r2, r4	@ ivtmp.2041, pCtx
	mov	r0, #0	@ i,
	ldr	ip, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r4, #236]	@ <variable>.Stride, <variable>.Mp2DecParam.VahbStride
	ldr	r7, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r5, [r7, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r5, [r4, #240]	@ <variable>.ChromOffset, <variable>.Mp2DecParam.uv_offset
.L510:
	add	ip, r3, #4	@ tmp402, ivtmp.2037,
	ldr	r5, [r3, #4]	@ tmp407, <variable>.intra_quantizer_matrix
	ldr	r7, [r3, #0]	@ tmp387, <variable>.intra_quantizer_matrix
	add	r0, r0, #2	@ i, i,
	ldr	r6, [r3, #256]	@ tmp389, <variable>.non_intra_quantizer_matrix
	add	r1, r2, #1	@ tmp403, ivtmp.2041,
	ldr	lr, [ip, #256]	@ tmp408, <variable>.non_intra_quantizer_matrix
	cmp	r0, #64	@ i,
	strb	r7, [r2, #88]	@ tmp387, <variable>.Mp2DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.2037, tmp402,
	strb	r6, [r2, #24]	@ tmp389, <variable>.Mp2DecParam.NonIntraQuantTab
	add	r2, r1, #1	@ ivtmp.2041, tmp403,
	strb	r5, [r1, #88]	@ tmp407, <variable>.Mp2DecParam.IntraQuantTab
	strb	lr, [r1, #24]	@ tmp408, <variable>.Mp2DecParam.NonIntraQuantTab
	bne	.L510	@,
	mov	r0, r4	@, pCtx
	mov	r6, #1	@ D.33616,
	bl	MP2_EstimatePicQp	@
	strb	r0, [r4, #152]	@, <variable>.Mp2DecParam.EstmatedPicQp
	b	.L493	@
.L490:
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	MP2_GetImageBuffer	@
	subs	r6, r0, #0	@ D.33612,
	beq	.L522	@,
	movw	r2, #:lower16:73696	@ tmp276,
	movw	r7, #:lower16:72096	@ tmp278,
	movt	r2, #:upper16:73696	@ tmp276,
	movt	r7, #:upper16:72096	@ tmp278,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L494	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImg,
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r9, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r7, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r8, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r9, [r8, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r8, #0	@ tmp295,
	str	r9, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r9, #0	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r8, [lr, #56]	@ tmp295, <variable>.pstExtraData,
	ldrd	r8, [r6, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r6, #8]	@ <variable>.PTS, pImg,
	strd	r8, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	subs	r1, r0, #3	@ tmp300, <variable>.picture_structure,
	movne	r1, #1	@ tmp300
	str	r1, [r6, #128]	@ tmp300, <variable>.is_fld_save
.L494:
	ldrb	r6, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r6, #3	@ <variable>.picture_coding_type,
	beq	.L491	@,
	movw	ip, #:lower16:72052	@ tmp302,
	movt	ip, #:upper16:72052	@ tmp302,
	movw	r6, #:lower16:72088	@ tmp305,
	movw	r5, #:lower16:72092	@ tmp306,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r6, #:upper16:72088	@ tmp305,
	movt	r5, #:upper16:72092	@ tmp306,
	cmp	r0, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r6]	@ prephitmp.2020, <variable>.CodecInfo.FwdFsID
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	r0, #2	@ iftmp.446,
	moveq	r0, #1	@ iftmp.446,
	cmp	r2, r1	@ prephitmp.2020, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, ip]	@ iftmp.446, <variable>.CodecInfo.RefNum
	beq	.L497	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73696	@ tmp309,
	movt	r3, #:upper16:73696	@ tmp309,
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r5]	@ prephitmp.2020, <variable>.CodecInfo.BwdFsID
.L497:
	movw	r5, #:lower16:72096	@ tmp316,
	movt	r5, #:upper16:72096	@ tmp316,
	movw	r6, #:lower16:72088	@ tmp314,
	movw	lr, #:lower16:72092	@ tmp315,
	ldr	r1, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	lr, #:upper16:72092	@ tmp315,
	movt	r6, #:upper16:72088	@ tmp314,
	movw	r7, #:lower16:73696	@ tmp318,
	movt	r7, #:upper16:73696	@ tmp318,
	str	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r6]	@ prephitmp.2020, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #13	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	b	.L491	@
.L522:
	movw	r3, #:lower16:72020	@ tmp274,
	movt	r3, #:upper16:72020	@ tmp274,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.Frame_Cnt
	bl	dprint_vfmw	@
.L493:
	mov	r0, r6	@, D.33616
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L484:
	movw	r3, #45329	@ tmp198,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.33569, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ D.33569,
	beq	.L486	@,
	movw	r1, #:lower16:72024	@ tmp199,
	movt	r1, #:upper16:72024	@ tmp199,
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r3, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L523	@,
.L486:
	movw	r1, #:lower16:72024	@ tmp214,
	movt	r1, #:upper16:72024	@ tmp214,
	mov	r6, #1	@ tmp215,
	str	r6, [r4, r1]	@ tmp215,
	b	.L485	@
.L520:
	ldrb	ip, [r5, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	strb	ip, [r5, #6]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #4]	@ <variable>.forward_f_code, <variable>.f_code
	strb	ip, [r5, #7]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #5]	@ <variable>.forward_f_code, <variable>.f_code
	b	.L483	@
.L498:
	movw	r1, #:lower16:73696	@ tmp348,
	movw	lr, #:lower16:72096	@ tmp350,
	movt	r1, #:upper16:73696	@ tmp348,
	movt	lr, #:upper16:72096	@ tmp350,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, r5	@, pCur
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	movw	r2, #1230	@,
	movt	r1, #:upper16:.LC40	@,
	str	r6, [sp, #0]	@ pFwd,
	mov	r6, #0	@ D.33616,
	str	r7, [sp, #4]	@ pBwd,
	bl	dprint_vfmw	@
	b	.L493	@
.L521:
	movw	lr, #:lower16:72020	@ tmp184,
	movt	lr, #:upper16:72020	@ tmp184,
	mov	r0, r8	@, tmp178
	movw	r1, #:lower16:.LC34	@,
	ldr	r2, [r4, lr]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:73696	@ tmp188,
	movw	ip, #:lower16:72096	@ tmp190,
	movt	r1, #:upper16:73696	@ tmp188,
	movt	ip, #:upper16:72096	@ tmp190,
	mov	r3, #0	@ tmp187,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r8	@, tmp178
	str	r3, [r4, r7]	@ tmp187, <variable>.CodecInfo.Second_Field
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #1	@ <variable>.picture_coding_type,
	beq	.L485	@,
	ldrb	r2, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r2, #3	@ <variable>.picture_coding_type,
	beq	.L485	@,
	movw	r0, #:lower16:72012	@ tmp194,
	movt	r0, #:upper16:72012	@ tmp194,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r6, ip, #192	@ tmp197, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r0]	@ tmp197,
	b	.L485	@
.L523:
	movw	lr, #:lower16:72020	@ tmp202,
	movt	lr, #:upper16:72020	@ tmp202,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC35	@,
	str	ip, [sp, #0]	@ D.33569,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73696	@ tmp204,
	movw	ip, #:lower16:72096	@ tmp206,
	movt	r3, #:upper16:73696	@ tmp204,
	movt	ip, #:upper16:72096	@ tmp206,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r2, #1	@ <variable>.picture_coding_type,
	beq	.L486	@,
	ldrb	r0, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	movwne	r0, #:lower16:72012	@ tmp210,
	movtne	r0, #:upper16:72012	@ tmp210,
	ldrne	r2, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrne	r2, r2, #192	@ tmp213, <variable>.CodecInfo.StreamIntegrality,
	strne	r2, [r4, r0]	@ tmp213, <variable>.CodecInfo.StreamIntegrality
	b	.L486	@
.L500:
	movw	r3, #:lower16:73696	@ tmp355,
	movw	r6, #:lower16:72096	@ tmp357,
	movt	r3, #:upper16:73696	@ tmp355,
	movt	r6, #:upper16:72096	@ tmp357,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r1, #:lower16:72092	@ tmp364,
	movt	r1, #:upper16:72092	@ tmp364,
	movw	r2, #:lower16:72088	@ tmp360,
	movt	r2, #:upper16:72088	@ tmp360,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	mov	r0, #0	@,
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	str	ip, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	r6, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r6, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	r6, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
	mov	r6, #0	@ D.33616,
	b	.L493	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:72012	@ tmp167,
	movt	r3, #:upper16:72012	@ tmp167,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ prephitmp.2150, <variable>.CodecInfo.StreamIntegrality
	movw	r2, #:lower16:73336	@ tmp166,
	movt	r2, #:upper16:73336	@ tmp166,
	tst	r3, #8388608	@ prephitmp.2150,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	.pad #8
	sub	sp, sp, #8	@,,
	mvneq	r0, #0	@ D.33315,
	beq	.L526	@,
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L527	@,
	movw	r6, #:lower16:72024	@ tmp170,
	movt	r6, #:upper16:72024	@ tmp170,
	ldr	r1, [r4, r6]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	beq	.L527	@,
	ands	r6, r3, #255	@ tmp177, prephitmp.2150,
	beq	.L529	@,
.L579:
	movw	r0, #:lower16:g_event_report	@ tmp178,
	movt	r0, #:upper16:g_event_report	@ tmp178,
	ldr	ip, [r0, #0]	@ g_event_report.437, g_event_report
	cmp	ip, #0	@ g_event_report.437,
	beq	.L530	@,
	movw	lr, #:lower16:73696	@ tmp179,
	movt	lr, #:upper16:73696	@ tmp179,
	mov	r1, #103	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	ip	@ g_event_report.437
	movw	r1, #:lower16:72012	@ tmp181,
	movt	r1, #:upper16:72012	@ tmp181,
	ldr	r3, [r4, r1]	@ prephitmp.2150, <variable>.CodecInfo.StreamIntegrality
.L530:
	movw	ip, #:lower16:72020	@ tmp183,
	movt	ip, #:upper16:72020	@ tmp183,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC43	@,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33315,
.L526:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L527:
	movw	r3, #:lower16:72012	@ tmp176,
	movt	r3, #:upper16:72012	@ tmp176,
	movw	lr, #:lower16:73700	@ tmp172,
	movt	lr, #:upper16:73700	@ tmp172,
	ldr	r3, [r4, r3]	@ prephitmp.2150, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, lr]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ands	r6, r3, #255	@ tmp177, prephitmp.2150,
	add	ip, r2, #1	@ tmp175, <variable>.numTotalFrame,
	str	ip, [r4, lr]	@ tmp175, <variable>.numTotalFrame
	bne	.L579	@,
.L529:
	movw	r2, #:lower16:72060	@ tmp185,
	movt	r2, #:upper16:72060	@ tmp185,
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r7, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L580	@,
	movw	r0, #:lower16:72000	@ tmp190,
	movt	r0, #:upper16:72000	@ tmp190,
	ldr	sl, [r4, r0]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r9, sl, #2	@ tmp191, <variable>.CodecInfo.UsedDecMode,
	cmp	r9, #1	@ tmp191,
	bls	.L532	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r0, #8]	@ prephitmp.2156, <variable>.s32DecMode
.L533:
	movw	r3, #:lower16:72000	@ tmp248,
	movt	r3, #:upper16:72000	@ tmp248,
	sub	r2, r1, #1	@ tmp249, prephitmp.2156,
	str	r1, [r4, r3]	@ prephitmp.2156, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #4	@ tmp249,
	ldrls	pc, [pc, r2, asl #2]	@ tmp249
	b	.L535	@
.L541:
	.word	.L536
	.word	.L537
	.word	.L538
	.word	.L539
	.word	.L540
.L532:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #8]	@ D.33341, <variable>.s32DecMode
	cmp	r2, #4	@ D.33341,
	cmpne	r2, #1	@, D.33341,
	mov	r1, r2	@ prephitmp.2156, D.33341
	bhi	.L533	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	movw	r7, #:lower16:73696	@ tmp207,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:72012	@ tmp203,
	movt	r1, #:upper16:72012	@ tmp203,
	movt	r7, #:upper16:73696	@ tmp207,
	movw	sl, #:lower16:72092	@ tmp209,
	movt	sl, #:upper16:72092	@ tmp209,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	orr	r8, ip, #128	@ tmp206, <variable>.CodecInfo.StreamIntegrality,
	str	r8, [r4, r1]	@ tmp206, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L534	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #:lower16:72088	@ tmp233,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:72088	@ tmp233,
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
	str	r6, [r8, #204]	@ tmp177, <variable>.p_usrdat
	str	r6, [r8, #192]	@ tmp177, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #196]	@ tmp177, <variable>.p_usrdat
	str	r6, [r8, #200]	@ tmp177, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, sl]	@ tmp177, <variable>.CodecInfo.BwdFsID
	str	r6, [r4, r9]	@ tmp177, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L581	@,
.L534:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:72052	@ tmp245,
	movt	lr, #:upper16:72052	@ tmp245,
	mov	r6, #0	@ tmp246,
	str	r6, [r4, lr]	@ tmp246, <variable>.CodecInfo.RefNum
	ldr	r1, [r0, #8]	@ prephitmp.2156, <variable>.s32DecMode
	b	.L533	@
.L580:
	movw	r3, #:lower16:72020	@ tmp188,
	movt	r3, #:upper16:72020	@ tmp188,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC44	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.Frame_Cnt
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.33315, <variable>.CodecInfo.Imgbuf_allocated
	b	.L526	@
.L540:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	cmp	r9, #1	@ prephitmp.2158,
	beq	.L582	@,
.L548:
	cmp	r9, #2	@ prephitmp.2158,
	beq	.L583	@,
.L549:
	ldrb	r6, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r6, #3	@ <variable>.picture_structure,
	moveq	r8, #3	@ prephitmp.2229,
	moveq	r7, #0	@ ret,
	beq	.L542	@,
.L572:
	movw	r8, #:lower16:72024	@ tmp273,
	movt	r8, #:upper16:72024	@ tmp273,
	mov	r7, #0	@ ret,
	ldr	lr, [r4, r8]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	lr, r7	@ <variable>.CodecInfo.Second_Field,
	movne	r9, #0	@, tmp276
	moveq	r9, #1	@, tmp276
	str	r9, [r4, r8]	@ tmp276, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
.L542:
	movw	r3, #:lower16:71960	@ tmp289,
	movw	r2, #:lower16:72064	@ tmp290,
	movt	r3, #:upper16:71960	@ tmp289,
	movt	r2, #:upper16:72064	@ tmp290,
	movw	lr, #:lower16:72020	@ tmp288,
	add	r0, r4, #71680	@, pCtx,
	ldr	sl, [r4, r3]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	movt	lr, #:upper16:72020	@ tmp288,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r0, r0, #576	@,,
	add	r6, sl, r1	@ D.33410, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	ldr	sl, [r4, lr]	@ temp.2200, <variable>.CodecInfo.Frame_Cnt
	bl	BsPos	@
	mov	r3, r9	@, prephitmp.2158
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r2, sl	@, temp.2200
	str	r8, [sp, #0]	@ prephitmp.2229,
	add	ip, r6, r0, lsr #3	@, tmp297, D.33410,,
	mov	r0, #18	@,
	str	ip, [sp, #4]	@ tmp297,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:72012	@ tmp298,
	movt	r2, #:upper16:72012	@ tmp298,
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	r8, r3, #14155776	@ tmp301, <variable>.CodecInfo.StreamIntegrality,
	str	r8, [r4, r2]	@ tmp301, <variable>.CodecInfo.StreamIntegrality
	ldr	r0, [r6, #528]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	beq	.L584	@,
	movw	ip, #:lower16:72052	@ tmp308,
	movt	ip, #:upper16:72052	@ tmp308,
	ldr	r3, [r4, ip]	@ temp.2203, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ temp.2203,
	bne	.L557	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	lr, r1, #2	@ tmp311, <variable>.picture_coding_type,
	uxtb	r6, lr	@ tmp312, tmp311
	cmp	r6, #1	@ tmp312,
	bls	.L585	@,
.L555:
	movw	r6, #:lower16:73696	@ tmp316,
	movw	r3, #:lower16:72088	@ tmp318,
	movt	r6, #:upper16:73696	@ tmp316,
	movt	r3, #:upper16:72088	@ tmp318,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:72092	@ tmp322,
	movt	r2, #:upper16:72092	@ tmp322,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pFwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	movne	r6, #0	@, tmp330
	moveq	r6, #1	@, tmp330
	beq	.L586	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.2210, <variable>.picture_coding_type
	cmp	r3, #2	@ temp.2210,
	beq	.L587	@,
	cmp	r3, #3	@ temp.2210,
	beq	.L588	@,
.L560:
	cmp	r7, #0	@ ret,
	movne	r0, #1	@ D.33315,
	bne	.L526	@,
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r1, #3	@ <variable>.picture_structure,
	beq	.L563	@,
	movw	r3, #:lower16:72024	@ tmp341,
	movt	r3, #:upper16:72024	@ tmp341,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r2, #0	@ <variable>.CodecInfo.Second_Field,
	movne	r0, r7	@ D.33315, ret
	bne	.L526	@,
.L563:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L589	@,
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	lr, #1	@ <variable>.progressive_frame,
	beq	.L590	@,
	movw	r3, #:lower16:72176	@ tmp364,
	movt	r3, #:upper16:72176	@ tmp364,
	movw	lr, #:lower16:72172	@ tmp367,
	movt	lr, #:upper16:72172	@ tmp367,
	ldr	r2, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.2222, <variable>.GopFrmCnt,
	str	r1, [r4, r3]	@ temp.2222, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp368, temp.2222,
	str	ip, [r4, lr]	@ tmp368, <variable>.GopFldCnt
.L565:
	movw	r2, #:lower16:72168	@ tmp369,
	movt	r2, #:upper16:72168	@ tmp369,
	movw	lr, #:lower16:72020	@ tmp373,
	movt	lr, #:upper16:72020	@ tmp373,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #0	@ D.33315,
	add	r3, ip, #1	@ tmp372, <variable>.GopFrmCntNoRpt,
	str	r3, [r4, r2]	@ tmp372, <variable>.GopFrmCntNoRpt
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, r1, #1	@ tmp376, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, lr]	@ tmp376, <variable>.CodecInfo.Frame_Cnt
	b	.L526	@
.L539:
	ldrb	r8, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_coding_type
	cmp	r8, #1	@ prephitmp.2229,
	movweq	r3, #:lower16:73708	@ tmp277,
	movteq	r3, #:upper16:73708	@ tmp277,
	moveq	r2, #0	@ tmp278,
	streq	r2, [r4, r3]	@ tmp278, <variable>.PPicFound
	ldreqb	r8, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_coding_type
	cmp	r8, #3	@ prephitmp.2229,
	beq	.L591	@,
	cmp	r8, #2	@ prephitmp.2229,
	beq	.L553	@,
.L571:
	mov	r9, r8	@ prephitmp.2158, prephitmp.2229
	mov	r7, #1	@ ret,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L538:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	mov	r7, #0	@ ret,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L537:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	sub	r3, r9, #2	@ tmp255, prephitmp.2158,
	uxtb	r2, r3	@ tmp256, tmp255
	cmp	r2, #1	@ tmp256,
	bls	.L548	@,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	mov	r7, #1	@ ret,
	b	.L542	@
.L536:
	ldrb	r8, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_coding_type
	cmp	r8, #3	@ prephitmp.2229,
	bne	.L571	@,
	ldrb	r7, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r7, #3	@ <variable>.picture_structure,
	bne	.L572	@,
.L544:
	mov	r9, #3	@ prephitmp.2158,
	mov	r7, #0	@ ret,
	b	.L542	@
.L535:
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	mov	r7, #1	@ ret,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L557:
	cmp	r3, #1	@ temp.2203,
	bhi	.L555	@,
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	bne	.L555	@,
	movw	r1, #:lower16:.LC50	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC50	@,
	mov	r7, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L555	@
.L584:
	movw	r8, #:lower16:72052	@ tmp304,
	movt	r8, #:upper16:72052	@ tmp304,
	ldr	r3, [r4, r8]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L555	@,
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ D.33365, <variable>.picture_coding_type
	cmp	r2, #3	@ D.33365,
	beq	.L592	@,
	cmp	r2, #2	@ D.33365,
	bne	.L555	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	b	.L555	@
.L586:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	ldr	r2, .L594	@,
	movt	r1, #:upper16:.LC51	@,
	movw	r3, #923	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33315,
	b	.L526	@
.L587:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r8, #180]	@ D.33454, <variable>.error_level
	ldr	r3, [ip, #0]	@ D.33455, <variable>.s32RefErrThr
	cmp	r2, r3	@ D.33454, D.33455
	bls	.L560	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.33315, tmp330
	b	.L526	@
.L588:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r8, #180]	@ temp.2212, <variable>.error_level
	ldr	r3, [lr, #0]	@ temp.2214, <variable>.s32RefErrThr
	cmp	r2, r3	@ temp.2212, temp.2214
	bhi	.L593	@,
	ldr	r2, [r0, #180]	@ D.33471, <variable>.error_level
	cmp	r3, r2	@ temp.2214, D.33471
	bcs	.L560	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.33315, tmp330
	b	.L526	@
.L589:
	movw	r2, #:lower16:72176	@ tmp344,
	movt	r2, #:upper16:72176	@ tmp344,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	lr, #:lower16:72172	@ tmp351,
	ldr	r3, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	lr, #:upper16:72172	@ tmp351,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r3, #1	@ tmp345, <variable>.GopFrmCnt,
	add	r3, r1, ip	@ tmp348, tmp345, <variable>.repeat_first_field
	add	r1, r3, r0	@ D.33488, tmp348, <variable>.top_field_first
	str	r1, [r4, r2]	@ D.33488, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp352, D.33488,
	str	ip, [r4, lr]	@ tmp352, <variable>.GopFldCnt
	b	.L565	@
.L593:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.33315, tmp330
	b	.L526	@
.L583:
	movw	r1, #45329	@ tmp268,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r0, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L549	@,
	movw	ip, #45328	@ tmp270,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastDecPicCodingType, <variable>.CodecInfo.LastDecPicCodingType
	cmp	r7, #1	@ <variable>.CodecInfo.LastDecPicCodingType,
	bne	.L549	@,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L590:
	movw	r2, #:lower16:72176	@ tmp354,
	movt	r2, #:upper16:72176	@ tmp354,
	movw	ip, #:lower16:72172	@ tmp358,
	movt	ip, #:upper16:72172	@ tmp358,
	ldr	r0, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	r3, [r4, ip]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	lr, r0, #1	@ tmp357, <variable>.GopFrmCnt,
	str	lr, [r4, r2]	@ tmp357, <variable>.GopFrmCnt
	ldrb	r0, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r1, r3, #2	@ tmp360, <variable>.GopFldCnt,
	add	r2, r1, r0	@ tmp363, tmp360, <variable>.repeat_first_field
	str	r2, [r4, ip]	@ tmp363, <variable>.GopFldCnt
	b	.L565	@
.L585:
	movw	r1, #:lower16:.LC49	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC49	@,
	mov	r7, r3	@ ret, temp.2203
	bl	dprint_vfmw	@
	b	.L555	@
.L582:
	ldr	sl, [r0, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	sl, #0	@ <variable>.s32firstIdecodedflag,
	bne	.L549	@,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	mov	r7, r9	@ ret, prephitmp.2158
	b	.L542	@
.L591:
	movw	r2, #:lower16:73708	@ tmp279,
	movt	r2, #:upper16:73708	@ tmp279,
	ldr	r7, [r4, r2]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r7, #0	@ <variable>.PPicFound,
	bne	.L571	@,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r3, #3	@ <variable>.picture_structure,
	beq	.L544	@,
	movw	r0, #:lower16:72024	@ tmp282,
	movt	r0, #:upper16:72024	@ tmp282,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	sl, r1, #1	@ tmp285, <variable>.CodecInfo.Second_Field
	movcc	sl, #0	@ tmp285
	str	sl, [r4, r0]	@ tmp285, <variable>.CodecInfo.Second_Field
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L553:
	movw	ip, #:lower16:73708	@ tmp286,
	movt	ip, #:upper16:73708	@ tmp286,
	mov	r7, #1	@ tmp287,
	str	r7, [r4, ip]	@ tmp287, <variable>.PPicFound
	ldrb	r9, [r5, #22]	@ zero_extendqisi2	@ prephitmp.2158, <variable>.picture_coding_type
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ prephitmp.2229, <variable>.picture_structure
	b	.L542	@
.L592:
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	mov	r7, r3	@ ret, <variable>.CodecInfo.RefNum
	bl	dprint_vfmw	@
	b	.L555	@
.L581:
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.33363, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.33363, <variable>.CodecInfo.FwdFsID
	b	.L534	@
.L595:
	.align	2
.L594:
	.word	.LANCHOR0+1164
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73336	@ tmp155,
	movt	r3, #:upper16:73336	@ tmp155,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r2, [r3, #48]	@ D.33045, <variable>.horizontal_size
	cmp	r2, #31	@ D.33045,
	ldrls	r3, [r3, #52]	@ prephitmp.2245, <variable>.vertical_size
	bls	.L598	@,
	ldr	r3, [r3, #52]	@ prephitmp.2245, <variable>.vertical_size
	cmp	r3, #31	@ prephitmp.2245,
	bls	.L598	@,
	ldr	r1, [r0, #0]	@ D.33052, <variable>.pstExtraData
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L621	@,
	mov	r4, r2	@ PicWidth, D.33045
	mov	r5, r3	@ PicHeight, prephitmp.2245
	mov	r8, #5	@ prephitmp.2247,
	mov	r9, #2	@ PmvNum,
	mov	sl, #3	@ DecFsNum,
.L608:
	add	r7, sp, #8	@ tmp191,,
	mov	r1, #36	@,
	mov	r0, r7	@, tmp191
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r0, #0	@ tmp169,
	ldr	ip, [r3, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r4, [sp, #36]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r0, [sp, #10]	@ tmp169, FspInstCfg.s32RprEnable
	str	r4, [sp, #20]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r5, [sp, #40]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	ip, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r5, [sp, #24]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r5, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #15]	@ prephitmp.2247, FspInstCfg.s32ExpectedDispFsNum
	cmp	r5, #24	@ <variable>.eCapLevel,
	movw	r5, #:lower16:73696	@ tmp180,
	uxtbne	r0, sl	@ iftmp.430, DecFsNum
	strb	r0, [sp, #13]	@ iftmp.430, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r5, #:upper16:73696	@ tmp180,
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, r7	@, tmp191
	uxtbne	r9, r9	@ iftmp.431, PmvNum
	mov	r7, #0	@ tmp178,
	moveq	r9, #1	@ iftmp.431,
	strb	r9, [sp, #16]	@ iftmp.431, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	strb	r7, [sp, #12]	@ tmp178, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.33096,
	bne	.L618	@,
	ldr	lr, [r6, #0]	@ temp.2273, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r6, r5]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	moveq	r0, #1	@ D.33049,
	beq	.L600	@,
	mov	r0, r4	@, D.33096
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33049, D.33096
	b	.L600	@
.L598:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33049,
.L600:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L618:
	mov	r0, r7	@, tmp178
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.33049, tmp178
	b	.L600	@
.L621:
	ldr	ip, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L602	@,
	ldr	r4, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r4	@ D.33045, PicWidth
	ldrhi	r5, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L604	@,
	ldr	r5, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r5	@ prephitmp.2245, PicHeight
	bhi	.L604	@,
	ldr	r2, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L607	@,
	add	r9, sl, #1	@ PmvNum.2260, DecFsNum,
	cmp	r9, #17	@ PmvNum.2260,
	movge	r9, #17	@ PmvNum,
.L607:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2247, <variable>.stChanOption.s32DisplayFrameNum
	b	.L608	@
.L602:
	ldr	ip, [r1, #568]	@ D.33059, <variable>.stChanOption.s32MaxWidth
	cmp	r2, ip	@ D.33045, D.33059
	ldrhi	lr, [r1, #572]	@ prephitmp.2249, <variable>.stChanOption.s32MaxHeight
	bhi	.L610	@,
	ldr	lr, [r1, #572]	@ prephitmp.2249, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ prephitmp.2245, prephitmp.2249
	bhi	.L610	@,
	ldr	r4, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r4, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L613	@,
	add	r9, sl, #1	@ PmvNum.2264, DecFsNum,
	cmp	r9, #17	@ PmvNum.2264,
	movge	r9, #17	@ PmvNum,
.L613:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2247, <variable>.stChanOption.s32DisplayFrameNum
	mov	r4, r2	@ PicWidth, D.33045
	mov	r5, r3	@ PicHeight, prephitmp.2245
	b	.L608	@
.L610:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33049,
	b	.L600	@
.L604:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	stmia	sp, {r4, r5}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33049,
	b	.L600	@
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
	movw	r3, #:lower16:72048	@ tmp155,
	movt	r3, #:upper16:72048	@ tmp155,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	movw	r0, #:lower16:73336	@ tmp153,
	movw	r1, #:lower16:73340	@ tmp154,
	movt	r0, #:upper16:73336	@ tmp153,
	movt	r1, #:upper16:73340	@ tmp154,
	cmp	r2, #1	@ <variable>.CodecInfo.MpegFlag,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r5, [r4, r0]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r6, [r4, r1]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	beq	.L624	@,
	cmp	r2, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L659	@,
	movw	r2, #:lower16:72012	@ tmp168,
	movt	r2, #:upper16:72012	@ tmp168,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #3538944	@ <variable>.CodecInfo.StreamIntegrality,
	bne	.L660	@,
.L629:
	mov	r2, #1	@ tmp182,
	str	r2, [r4, r3]	@ tmp182, <variable>.CodecInfo.MpegFlag
.L627:
	mov	r0, #17	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:72048	@ tmp184,
	movt	r3, #:upper16:72048	@ tmp184,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L661	@,
.L632:
	ldr	r2, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	movw	ip, #:lower16:72048	@ tmp210,
	movt	ip, #:upper16:72048	@ tmp210,
	add	r3, r2, #15	@ tmp207, <variable>.horizontal_size,
	mov	lr, r3, lsr #4	@ tmp209, tmp207,
	str	lr, [r5, #56]	@ tmp209, <variable>.mb_width
	ldr	r8, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r8, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L662	@,
.L633:
	ldr	r2, [r5, #52]	@ temp.2317, <variable>.vertical_size
	add	ip, r2, #15	@ tmp216, temp.2317,
	mov	r1, ip, lsr #4	@ iftmp.458, tmp216,
.L634:
	movw	r3, #:lower16:72048	@ tmp219,
	movt	r3, #:upper16:72048	@ tmp219,
	str	r1, [r5, #60]	@ iftmp.458, <variable>.mb_height
	mov	r1, #0	@ tmp218,
	str	r1, [r5, #64]	@ tmp218, <variable>.mb_height_progressive_subtract1mb
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	lr, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L663	@,
.L635:
	movw	r3, #:lower16:72060	@ tmp228,
	movt	r3, #:upper16:72060	@ tmp228,
	ldr	r8, [r4, r3]	@ prephitmp.2293, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2293,
	beq	.L657	@,
	ldr	r0, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r2, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	r0, r2	@ <variable>.mb_width, <variable>.mb_width
	beq	.L638	@,
.L657:
	ldr	r3, [r4, #0]	@ prephitmp.2295, <variable>.pstExtraData
.L637:
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L664	@,
.L641:
	movw	r8, #:lower16:g_event_report	@ tmp286,
	movt	r8, #:upper16:g_event_report	@ tmp286,
	mov	r7, #0	@ tmp285,
	str	r7, [r3, #728]	@ tmp285, <variable>.s32DSDWaitFlag
	ldr	r3, [r8, #0]	@ g_event_report.464, g_event_report
	cmp	r3, r7	@ g_event_report.464,
	beq	.L648	@,
	ldrh	r0, [r6, #56]	@, <variable>.mb_width
	movw	r2, #:lower16:73696	@ tmp291,
	movt	r2, #:upper16:73696	@ tmp291,
	mov	r1, #2	@,
	strh	r0, [sp, #4]	@ movhi	@, para
	ldrh	lr, [r6, #60]	@, <variable>.mb_height
	strh	lr, [sp, #6]	@ movhi	@, para
	ldrh	ip, [r5, #56]	@, <variable>.mb_width
	strh	ip, [sp, #8]	@ movhi	@, para
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	strh	r6, [sp, #10]	@ movhi	@, para
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #4	@,,
	blx	r3	@ g_event_report.464
.L648:
	movw	r6, #:lower16:73696	@ tmp294,
	movw	r8, #:lower16:72092	@ tmp296,
	movt	r6, #:upper16:73696	@ tmp294,
	movt	r8, #:upper16:72092	@ tmp296,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L649	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	movw	r9, #:lower16:72088	@ tmp320,
	ldr	r1, [r7, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:72088	@ tmp320,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #196]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp310,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r7, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r7, #204]	@ tmp310, <variable>.p_usrdat
	str	sl, [r7, #192]	@ tmp310, <variable>.p_usrdat
	mov	r2, #1	@,
	str	sl, [r7, #196]	@ tmp310, <variable>.p_usrdat
	str	sl, [r7, #200]	@ tmp310, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	sl, [r4, r8]	@ tmp310, <variable>.CodecInfo.BwdFsID
	str	sl, [r4, r9]	@ tmp310, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, sl	@,
	bne	.L665	@,
.L649:
	add	r8, r4, #72704	@ D.33872, pCtx,
	movw	r7, #:lower16:72052	@ tmp332,
	add	r6, r8, #640	@ D.33872, D.33872,
	movt	r7, #:upper16:72052	@ tmp332,
	movw	r3, #:lower16:73696	@ tmp335,
	movt	r3, #:upper16:73696	@ tmp335,
	mov	r1, #0	@ tmp333,
	str	r1, [r4, r7]	@ tmp333, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r1, r6	@, D.33872
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2348, <variable>.pstExtraData
	ldr	r7, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r7, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L650	@,
	ldr	r2, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r2, #25	@ <variable>.eCapLevel,
	beq	.L666	@,
.L650:
	movw	lr, #:lower16:73696	@ tmp343,
	movt	lr, #:upper16:73696	@ tmp343,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L651	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L667	@,
.L652:
	mov	r0, r6	@, D.33872
	bl	ResetVoQueue	@
.L651:
	movw	r6, #:lower16:72060	@ tmp349,
	movw	r2, #:lower16:72076	@ tmp351,
	movt	r6, #:upper16:72060	@ tmp349,
	movt	r2, #:upper16:72076	@ tmp351,
	mov	r1, #0	@ tmp350,
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp350, <variable>.CodecInfo.QueueImageNum
	str	r1, [r4, r6]	@ tmp350, <variable>.CodecInfo.Imgbuf_allocated
	bl	MP2_ArrangeVHBMem	@
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	str	r0, [r4, r6]	@, <variable>.CodecInfo.Imgbuf_allocated
	mov	r0, #1	@,
	ldr	r3, [r5, #60]	@, <variable>.mb_height
	ldr	r2, [r5, #56]	@, <variable>.mb_width
	bl	dprint_vfmw	@
	ldr	r8, [r4, r6]	@ prephitmp.2293, <variable>.CodecInfo.Imgbuf_allocated
.L640:
	movw	ip, #:lower16:72008	@ tmp358,
	movt	ip, #:upper16:72008	@ tmp358,
	str	r8, [r4, ip]	@ prephitmp.2293, <variable>.CodecInfo.NewSeqInited
.L653:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L659:
	movw	ip, #:lower16:72012	@ tmp163,
	movt	ip, #:upper16:72012	@ tmp163,
	ldr	r8, [r4, ip]	@ tmp165,
	and	r0, r8, #1769472	@ tmp164, tmp165,
	cmp	r0, #589824	@ tmp164,
	bne	.L627	@,
	b	.L629	@
.L624:
	movw	r1, #:lower16:72012	@ tmp157,
	movt	r1, #:upper16:72012	@ tmp157,
	movw	ip, #:lower16:1179666	@ tmp158,
	movt	ip, #:upper16:1179666	@ tmp158,
	ldr	lr, [r4, r1]	@ tmp160,
	and	r8, lr, ip	@ tmp158, tmp160, tmp158
	cmp	r8, #1179648	@ tmp158,
	moveq	r2, #2	@ tmp162,
	streq	r2, [r4, r3]	@ tmp162, <variable>.CodecInfo.MpegFlag
	b	.L627	@
.L661:
	mov	r2, #0	@ tmp197,
	mov	r0, #3	@ tmp190,
	mov	r1, #5	@ tmp196,
	strb	r3, [r5, #28]	@ <variable>.CodecInfo.MpegFlag, <variable>.chroma_format
	strb	r2, [r5, #8]	@ tmp197, <variable>.intra_dc_precision
	strb	r0, [r5, #9]	@ tmp190, <variable>.picture_structure
	str	r1, [r5, #144]	@ tmp196, <variable>.matrix_coefficients
	strb	r3, [r5, #27]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_sequence
	strb	r3, [r5, #18]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_frame
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.MpegFlag, <variable>.frame_pred_frame_dct
	strb	r2, [r5, #12]	@ tmp197, <variable>.concealment_motion_vectors
	strb	r2, [r5, #13]	@ tmp197, <variable>.q_scale_type
	strb	r2, [r5, #14]	@ tmp197, <variable>.intra_vlc_format
	strb	r2, [r5, #15]	@ tmp197, <variable>.alternate_scan
	b	.L632	@
.L663:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, r1	@ <variable>.progressive_sequence,
	bne	.L635	@,
	add	lr, r2, #31	@ tmp222, temp.2317,
	add	ip, r2, #15	@ tmp225, temp.2317,
	mov	r8, lr, lsr #5	@ tmp223, tmp222,
	mov	r1, ip, lsr #4	@ tmp226, tmp225,
	rsb	r2, r1, r8, asl #1	@, tmp227, tmp226, tmp223,
	str	r2, [r5, #64]	@ tmp227, <variable>.mb_height_progressive_subtract1mb
	b	.L635	@
.L662:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r1, #0	@ <variable>.progressive_sequence,
	bne	.L633	@,
	ldr	r2, [r5, #52]	@ temp.2317, <variable>.vertical_size
	add	r8, r2, #31	@ tmp213, temp.2317,
	mov	r0, r8, lsr #5	@ tmp215, tmp213,
	mov	r1, r0, asl #1	@ iftmp.458, tmp215,
	b	.L634	@
.L660:
	tst	r1, #131072	@ prephitmp.2296,
	mov	lr, #2	@ tmp172,
	orreq	r1, r1, lr	@ prephitmp.2296, prephitmp.2296,
	streq	r1, [r4, r2]	@ prephitmp.2296, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #1048576	@ prephitmp.2296,
	str	lr, [r4, r3]	@ tmp172, <variable>.CodecInfo.MpegFlag
	orreq	r1, r1, #16	@ tmp179, prephitmp.2296,
	movweq	r2, #:lower16:72012	@ tmp178,
	movwne	r3, #:lower16:72048	@ tmp177,
	movteq	r2, #:upper16:72012	@ tmp178,
	movweq	r3, #:lower16:72048	@ tmp180,
	movtne	r3, #:upper16:72048	@ tmp177,
	movteq	r3, #:upper16:72048	@ tmp180,
	streq	r1, [r4, r2]	@ tmp179, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, r3]	@ prephitmp.2333, <variable>.CodecInfo.MpegFlag
	b	.L627	@
.L638:
	ldr	r1, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	ip, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r1, ip	@ <variable>.mb_height, <variable>.mb_height
	bne	.L657	@,
	ldr	r3, [r4, #0]	@ prephitmp.2295, <variable>.pstExtraData
	ldr	lr, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L640	@,
	b	.L637	@
.L665:
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r8]	@ D.33871, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.33871, <variable>.CodecInfo.FwdFsID
	b	.L649	@
.L666:
	movw	r5, #:lower16:72060	@ tmp339,
	movt	r5, #:upper16:72060	@ tmp339,
	ldr	r8, [r4, r5]	@ prephitmp.2293, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2293,
	bne	.L640	@,
	mov	r0, r6	@, D.33872
	bl	ResetVoQueue	@
	mov	r1, r8	@, prephitmp.2293
	mov	r0, r4	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	movw	ip, #:lower16:72076	@ tmp341,
	movt	ip, #:upper16:72076	@ tmp341,
	str	r7, [r4, ip]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.CodecInfo.QueueImageNum
	mov	r8, r0	@ prephitmp.2293,
	str	r0, [r4, r5]	@ prephitmp.2293, <variable>.CodecInfo.Imgbuf_allocated
	b	.L640	@
.L664:
	movw	r8, #:lower16:73715	@ tmp238,
	movw	sl, #:lower16:72088	@ tmp241,
	movt	r8, #:upper16:73715	@ tmp238,
	movt	sl, #:upper16:72088	@ tmp241,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, #0	@ tmp235,
	strb	r7, [r4, r8]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DSDNeedFlushFrame
	str	sl, [sp, #20]	@ tmp235, NewNum
	str	sl, [sp, #16]	@ tmp235, ReadNum
	str	sl, [sp, #12]	@ tmp235, RefNum
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L658	@,
	movw	r9, #:lower16:72092	@ tmp246,
	movt	r9, #:upper16:72092	@ tmp246,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L658	@,
	movw	lr, #:lower16:73696	@ tmp251,
	movt	lr, #:upper16:73696	@ tmp251,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:73715	@ tmp256,
	movw	r3, #:lower16:73696	@ tmp259,
	movt	r2, #:upper16:73715	@ tmp256,
	movt	r3, #:upper16:73696	@ tmp259,
	mov	ip, #0	@ tmp257,
	add	r1, sp, #12	@,,
	cmp	r0, #0	@ pImage
	strne	r7, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	strb	ip, [r4, r2]	@ tmp257, <variable>.DSDNeedFlushFrame
	add	r2, sp, #16	@,,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #20	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r1, [r2, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	mov	r3, r2	@ prephitmp.2295, <variable>.pstExtraData
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrWidth, <variable>.mb_width,
	bcc	.L646	@,
	ldr	r0, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	r1, [r2, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrHeight, <variable>.mb_height,
	bcc	.L646	@,
	ldr	lr, [sp, #16]	@ ReadNum, ReadNum
	ldr	r0, [sp, #20]	@ NewNum, NewNum
	add	ip, r0, lr	@ tmp270, NewNum, ReadNum
	cmp	ip, #0	@ tmp270,
	ble	.L641	@,
	movw	r3, #:lower16:73714	@ tmp273,
	movt	r3, #:upper16:73714	@ tmp273,
	mov	r1, #1	@ tmp274,
	strb	r1, [r4, r3]	@ tmp274, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp274, <variable>.s32DSDWaitFlag
	b	.L653	@
.L658:
	strb	sl, [r4, r8]	@ tmp235, <variable>.DSDNeedFlushFrame
	b	.L653	@
.L667:
	movw	r8, #:lower16:73714	@ tmp347,
	movt	r8, #:upper16:73714	@ tmp347,
	ldrb	r1, [r4, r8]	@ zero_extendqisi2	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r1, #1	@ <variable>.DSDNeedClearQue,
	bne	.L651	@,
	b	.L652	@
.L646:
	ldr	ip, [sp, #20]	@ NewNum, NewNum
	cmp	ip, #0	@ NewNum,
	ble	.L668	@,
.L647:
	movw	r3, #:lower16:73714	@ tmp280,
	movt	r3, #:upper16:73714	@ tmp280,
	mov	r1, #0	@ tmp281,
	mov	r0, #1	@ tmp284,
	strb	r1, [r4, r3]	@ tmp281, <variable>.DSDNeedClearQue
	str	r0, [r2, #728]	@ tmp284, <variable>.s32DSDWaitFlag
	b	.L653	@
.L668:
	ldr	lr, [sp, #16]	@ ReadNum, ReadNum
	cmp	lr, #4	@ ReadNum,
	ble	.L641	@,
	b	.L647	@
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
	b	.L670	@
.L675:
	bl	BsShow	@
	mov	r5, r0	@ D.33270,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	sub	r5, r5, #256	@ tmp146, D.33270,
	sub	r5, r5, #1	@ tmp146, tmp146,
	mov	r1, #32	@,
	cmp	r5, #174	@ tmp146,
	str	r0, [r4, r7]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r6	@, pBs
	bls	.L680	@,
	bl	BsSkip	@
.L670:
	mov	r0, r4	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r5, r0	@ ret.2379,
	cmp	r5, #1	@ ret.2379,
	mov	r0, r6	@, pBs
	beq	.L675	@,
	cmn	r5, #1	@ ret.2379,
	beq	.L676	@,
.L679:
	mov	r0, r5	@ prephitmp.2368, ret.2379
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L676:
	movw	lr, #:lower16:g_event_report	@ tmp154,
	movt	lr, #:upper16:g_event_report	@ tmp154,
	ldr	r3, [lr, #0]	@ g_event_report.436, g_event_report
	cmp	r3, #0	@ g_event_report.436,
	beq	.L679	@,
	movw	r0, #:lower16:73696	@ tmp155,
	movt	r0, #:upper16:73696	@ tmp155,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.436
	mov	r0, r5	@ prephitmp.2368, ret.2379
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L680:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mvnle	r5, #0	@ ret.2379,
	ble	.L676	@,
	movw	r0, #:lower16:72008	@ tmp150,
	movt	r0, #:upper16:72008	@ tmp150,
	mov	r2, #0	@ tmp149,
	movw	r3, #:lower16:72068	@ tmp148,
	ldr	r5, [r4, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	movt	r3, #:upper16:72068	@ tmp148,
	cmp	r5, r2	@ <variable>.CodecInfo.NewSeqInited,
	str	r2, [r4, r3]	@ tmp149, <variable>.CodecInfo.HDRState
	bne	.L673	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L679	@,
.L673:
	mov	r0, r4	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ prephitmp.2368,
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
	movw	r8, #:lower16:73712	@ tmp173,
	movt	r8, #:upper16:73712	@ tmp173,
	movw	fp, #:lower16:73336	@ tmp171,
	movw	r6, #:lower16:73340	@ tmp172,
	movt	fp, #:upper16:73336	@ tmp171,
	movt	r6, #:upper16:73340	@ tmp172,
	mov	r4, r0	@ pCtx, pCtx
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r1, #32	@,
	mov	sl, #0	@ tmp174,
	strb	sl, [r0, r8]	@ tmp174, <variable>.IsWaitToDecFlag
	mov	r0, r5	@, pBs
	ldr	r9, [r4, fp]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	fp, [r4, r6]	@ pSyntaxInfOld, <variable>.pSyntaxInfOld
	bl	BsShow	@
	movw	r7, #:lower16:72012	@ tmp176,
	movt	r7, #:upper16:72012	@ tmp176,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.StreamIntegrality
	str	r1, [sp, #16]	@, %sfp
	mov	r6, r0	@ code,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r2, #:lower16:72072	@ tmp177,
	movt	r2, #:upper16:72072	@ tmp177,
	mov	r1, #32	@,
	str	r0, [r4, r2]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #439	@ tmp178,
	cmp	r6, r3	@ code, tmp178
	beq	.L717	@,
	movw	lr, #435	@ tmp218,
	cmp	r6, lr	@ code, tmp218
	cmpne	r6, #440	@, code,
	bne	.L718	@,
.L683:
	movw	r3, #:lower16:72068	@ tmp231,
	movt	r3, #:upper16:72068	@ tmp231,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r7, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L719	@,
.L686:
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	beq	.L690	@,
.L722:
	bls	.L720	@,
	movw	r3, #437	@ tmp248,
	cmp	r6, r3	@ code, tmp248
	beq	.L692	@,
	bcs	.L721	@,
.L691:
	mov	r0, #0	@ prephitmp.2398,
.L685:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L718:
	cmp	r6, #256	@ code,
	beq	.L683	@,
	movw	r2, #435	@ tmp245,
	cmp	r6, r2	@ code, tmp245
	bne	.L722	@,
.L690:
	movw	r0, #:lower16:71960	@ tmp251,
	movw	r1, #:lower16:72064	@ tmp252,
	movt	r0, #:upper16:71960	@ tmp251,
	movt	r1, #:upper16:72064	@ tmp252,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, lr	@ D.33165, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	add	r2, r6, r0, lsr #3	@, tmp257, D.33165,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	sequence_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L723	@,
	movw	r5, #:lower16:72012	@ tmp267,
	movt	r5, #:upper16:72012	@ tmp267,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ands	r6, r6, #7	@ tmp268, <variable>.CodecInfo.StreamIntegrality,
	bne	.L697	@,
	mov	r1, r9	@, pSyntaxInfNew
	mov	lr, #1	@ tmp270,
	mov	r2, #188	@,
	mov	r0, fp	@, pSyntaxInfOld
	strb	lr, [r9, #0]	@ tmp270, <variable>.valid_flag
	bl	memcpy	@
	movw	ip, #:lower16:72016	@ tmp276,
	movt	ip, #:upper16:72016	@ tmp276,
	mov	r0, r6	@ prephitmp.2398, tmp268
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	add	r2, r1, #1	@ tmp279, <variable>.CodecInfo.SeqCnt,
	str	r2, [r4, ip]	@ tmp279, <variable>.CodecInfo.SeqCnt
	b	.L685	@
.L720:
	cmp	r6, #256	@ code,
	beq	.L688	@,
	bcc	.L687	@,
	cmp	r6, #432	@ code,
	bls	.L687	@,
	movw	r0, #:lower16:71960	@ tmp327,
	movw	ip, #:lower16:72064	@ tmp328,
	movt	r0, #:upper16:71960	@ tmp327,
	movt	ip, #:upper16:72064	@ tmp328,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r5, r6, r3	@ temp.2443, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	add	r2, r5, r0, lsr #3	@, tmp333, temp.2443,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r6, r0, #0	@ D.33221,
	beq	.L724	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ prephitmp.2398, D.33221
	b	.L685	@
.L721:
	movw	ip, #439	@ tmp250,
	cmp	r6, ip	@ code, tmp250
	beq	.L691	@,
	cmp	r6, #440	@ code,
	beq	.L725	@,
.L687:
	sub	r2, r6, #256	@ tmp357, code,
	sub	r0, r2, #1	@ tmp357, tmp357,
	cmp	r0, #174	@ tmp357,
	bhi	.L704	@,
	movw	ip, #:lower16:72008	@ tmp359,
	movt	ip, #:upper16:72008	@ tmp359,
	ldr	r7, [r4, ip]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	cmp	r7, #0	@ <variable>.CodecInfo.NewSeqInited,
	beq	.L726	@,
.L705:
	movw	r3, #:lower16:72012	@ tmp363,
	movt	r3, #:upper16:72012	@ tmp363,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #589824	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L691	@,
	movw	lr, #:lower16:72068	@ tmp366,
	movt	lr, #:upper16:72068	@ tmp366,
	orr	r5, r2, #4194304	@ tmp371, <variable>.CodecInfo.StreamIntegrality,
	mov	r0, r4	@, pCtx
	str	r5, [r4, r3]	@ tmp371, <variable>.CodecInfo.StreamIntegrality
	mov	r1, r6	@, code
	mov	r5, #1	@ tmp367,
	str	r5, [r4, lr]	@ tmp367, <variable>.CodecInfo.HDRState
	bl	MP2_DecSlice	@
	cmp	r0, r5	@ D.33252,
	beq	.L685	@,
	mov	r0, r5	@, tmp367
	mov	r2, r6	@, code
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L725:
	movw	r0, #:lower16:71960	@ tmp295,
	movw	lr, #:lower16:72064	@ tmp296,
	movt	r0, #:upper16:71960	@ tmp295,
	movt	lr, #:upper16:72064	@ tmp296,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, r1	@ temp.2427, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	add	r2, r6, r0, lsr #3	@, tmp301, temp.2427,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L691	@,
	ldr	ip, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp302,
	movw	r3, #:lower16:g_event_report	@ tmp303,
	movt	r2, #:upper16:72012	@ tmp302,
	movt	r3, #:upper16:g_event_report	@ tmp303,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2428, g_event_report
	cmp	r3, #0	@ g_event_report.2428,
	beq	.L699	@,
	movw	lr, #:lower16:73696	@ tmp304,
	movt	lr, #:upper16:73696	@ tmp304,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2428
.L699:
	movw	r3, #:lower16:73696	@ tmp306,
	movt	r3, #:upper16:73696	@ tmp306,
	add	r1, r4, #71680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC64	@,
	mov	r2, #440	@,
	movt	r1, #:upper16:.LC64	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L719:
	movw	r2, #:lower16:72012	@ tmp233,
	movt	r2, #:upper16:72012	@ tmp233,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L686	@,
	movw	r0, #:lower16:73712	@ tmp236,
	movt	r0, #:upper16:73712	@ tmp236,
	orr	r1, r1, #8388608	@ tmp242, <variable>.CodecInfo.StreamIntegrality,
	mov	ip, #0	@ tmp244,
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp242, <variable>.CodecInfo.StreamIntegrality
	str	ip, [r4, r3]	@ tmp244, <variable>.CodecInfo.HDRState
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r7	@ prephitmp.2398, <variable>.CodecInfo.HDRState
	b	.L685	@
.L717:
	mov	ip, r5	@, pBs
	add	lr, sp, #52	@,,
	ldmia	ip!, {r0, r1, r2, r3}	@,,,,
	str	lr, [sp, #4]	@, %sfp
	str	ip, [sp, #20]	@, %sfp
	add	ip, sp, #24	@ tmp180,,
	mov	lr, ip	@ tmp380, tmp180
	stmia	lr!, {r0, r1, r2, r3}	@ tmp380,,,,
	ldr	r3, [sp, #20]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	lr, {r0, r1, r2}	@ tmp380,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp381,,,,
	ldr	ip, [sp, #4]	@, %sfp
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp380,,,
	stmia	ip, {r0, r1, r2}	@ tmp382,,,
	mov	r1, #32	@,
	add	r0, sp, #52	@,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r2, r0	@ D.33135,
	add	r0, sp, #52	@,,
	str	r2, [sp, #12]	@,
	bl	BsGet	@
	ldr	ip, [sp, #12]	@,
	movw	r2, #:lower16:1128615492	@ tmp187,
	movw	r3, #:lower16:1213419593	@ tmp190,
	movt	r2, #:upper16:1128615492	@ tmp187,
	movt	r3, #:upper16:1213419593	@ tmp190,
	cmp	r0, r2	@, tmp187
	cmpeq	ip, r3	@, D.33135, tmp190
	bne	.L683	@,
	movw	r3, #:lower16:72068	@ tmp195,
	movt	r3, #:upper16:72068	@ tmp195,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r6, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L727	@,
.L684:
	movw	r3, #:lower16:73713	@ tmp212,
	movt	r3, #:upper16:73713	@ tmp212,
	mov	r2, #1	@ tmp213,
	mov	r0, #0	@ prephitmp.2398,
	strb	r2, [r4, r3]	@ tmp213, <variable>.IsStreamEndFlag
	b	.L685	@
.L688:
	movw	r0, #:lower16:71960	@ tmp311,
	movw	lr, #:lower16:72064	@ tmp312,
	movt	r0, #:upper16:71960	@ tmp311,
	movt	lr, #:upper16:72064	@ tmp312,
	ldr	r6, [r4, r0]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	mov	r0, r5	@, pBs
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r6, ip	@ temp.2435, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	add	r2, r6, r0, lsr #3	@, tmp317, temp.2435,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	picture_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L691	@,
	ldr	r3, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp318,
	movw	r1, #:lower16:g_event_report	@ tmp319,
	movt	r2, #:upper16:72012	@ tmp318,
	movt	r1, #:upper16:g_event_report	@ tmp319,
	str	r3, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2436, g_event_report
	cmp	r3, #0	@ g_event_report.2436,
	beq	.L700	@,
	movw	ip, #:lower16:73696	@ tmp320,
	movt	ip, #:upper16:73696	@ tmp320,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2436
.L700:
	movw	r1, #:lower16:73696	@ tmp322,
	movt	r1, #:upper16:73696	@ tmp322,
	add	lr, r4, #71680	@, pCtx,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC66	@,
	mov	r2, #256	@,
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L692:
	movw	ip, #:lower16:71960	@ tmp342,
	movw	r6, #:lower16:72064	@ tmp343,
	movt	ip, #:upper16:71960	@ tmp342,
	movt	r6, #:upper16:72064	@ tmp343,
	mov	r0, r5	@, pBs
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	add	r6, r1, r3	@ temp.2451, <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.Used_byte
	bl	BsPos	@
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	add	r2, r6, r0, lsr #3	@, tmp348, temp.2451,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	extension	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L691	@,
	ldr	lr, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp349,
	movw	r0, #:lower16:g_event_report	@ tmp350,
	movt	r2, #:upper16:72012	@ tmp349,
	movt	r0, #:upper16:g_event_report	@ tmp350,
	str	lr, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r0, #0]	@ g_event_report.2452, g_event_report
	cmp	r3, #0	@ g_event_report.2452,
	beq	.L703	@,
	movw	ip, #:lower16:73696	@ tmp351,
	movt	ip, #:upper16:73696	@ tmp351,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2452
.L703:
	movw	r3, #:lower16:73696	@ tmp353,
	movt	r3, #:upper16:73696	@ tmp353,
	add	r1, r4, #71680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
.L714:
	mvn	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L697:
	ldrb	r0, [fp, #0]	@ zero_extendqisi2	@ <variable>.valid_flag, <variable>.valid_flag
	cmp	r0, #1	@ <variable>.valid_flag,
	beq	.L728	@,
.L704:
	movw	r0, #:lower16:g_event_report	@ tmp373,
	movt	r0, #:upper16:g_event_report	@ tmp373,
	ldr	r3, [r0, #0]	@ g_event_report.2458, g_event_report
	cmp	r3, #0	@ g_event_report.2458,
	beq	.L691	@,
.L713:
	movw	ip, #:lower16:73696	@ tmp374,
	movt	ip, #:upper16:73696	@ tmp374,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2458
	mov	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L727:
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L684	@,
	movw	r1, #:lower16:73713	@ tmp200,
	movt	r1, #:upper16:73713	@ tmp200,
	orr	r0, r2, #8388608	@ tmp209, <variable>.CodecInfo.StreamIntegrality,
	str	sl, [r4, r3]	@ tmp174, <variable>.CodecInfo.HDRState
	str	r0, [r4, r7]	@ tmp209, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsStreamEndFlag
	strb	r6, [r4, r8]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r6	@ prephitmp.2398, <variable>.CodecInfo.HDRState
	b	.L685	@
.L726:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	moveq	r0, r7	@ prephitmp.2398, <variable>.CodecInfo.NewSeqInited
	bne	.L705	@,
	b	.L685	@
.L728:
	mov	r2, #188	@,
	mov	r0, r9	@, pSyntaxInfNew
	mov	r1, fp	@, pSyntaxInfOld
	bl	memcpy	@
	ldr	ip, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r3, #:lower16:g_event_report	@ tmp289,
	movt	r3, #:upper16:g_event_report	@ tmp289,
	bic	r2, ip, #7	@ tmp288, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r4, r5]	@ tmp288, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2420, g_event_report
	cmp	r3, #0	@ g_event_report.2420,
	bne	.L713	@,
	b	.L691	@
.L724:
	movw	r5, #:lower16:73696	@ tmp334,
	movt	r5, #:upper16:73696	@ tmp334,
	add	lr, r4, #71680	@, pCtx,
	add	r1, lr, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	movw	r2, #:lower16:g_event_report	@ tmp339,
	movt	r2, #:upper16:g_event_report	@ tmp339,
	ldr	r3, [r2, #0]	@ g_event_report.2446, g_event_report
	cmp	r3, #0	@ g_event_report.2446,
	beq	.L714	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.33221
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2446
	mvn	r0, #0	@ prephitmp.2398,
	b	.L685	@
.L723:
	ldr	ip, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp258,
	movw	r3, #:lower16:g_event_report	@ tmp259,
	movt	r2, #:upper16:72012	@ tmp258,
	movt	r3, #:upper16:g_event_report	@ tmp259,
	str	ip, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.434, g_event_report
	cmp	r3, #0	@ g_event_report.434,
	beq	.L696	@,
	movw	lr, #:lower16:73696	@ tmp260,
	movt	lr, #:upper16:73696	@ tmp260,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.434
.L696:
	movw	r3, #:lower16:73696	@ tmp262,
	movt	r3, #:upper16:73696	@ tmp262,
	add	r1, r4, #71680	@, pCtx,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC62	@,
	movw	r2, #435	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ prephitmp.2398,
	b	.L685	@
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
	add	r2, r0, #72704	@ D.34965, pCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r2, #96	@ D.34965, D.34965,
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, #160	@,
	mov	r0, r5	@, D.34965
	bl	memcpy	@
	movw	r3, #:lower16:73696	@ tmp155,
	movt	r3, #:upper16:73696	@ tmp155,
	add	r0, r4, #45312	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r1, r5	@, D.34965
	ldr	r2, [r4, r3]	@, <variable>.ChanID
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L730	@,
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC72	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
.L731:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L730:
	movw	r3, #:lower16:71968	@ tmp160,
	movw	ip, #:lower16:71984	@ tmp162,
	movt	r3, #:upper16:71968	@ tmp160,
	movt	ip, #:upper16:71984	@ tmp162,
	add	lr, r4, #71680	@, pCtx,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r0, lr, #576	@,,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	bl	BsInit	@
	ldr	r3, [r4, #0]	@ D.34977, <variable>.pstExtraData
	ldr	r1, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L745	@,
.L732:
	movw	r3, #:lower16:72012	@ tmp170,
	movt	r3, #:upper16:72012	@ tmp170,
	movw	lr, #:lower16:72196	@ tmp169,
	movt	lr, #:upper16:72196	@ tmp169,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, lr]	@ <variable>.CodecInfo.StreamIntegrality,
.L733:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r5, r0, #1	@ tmp172,,
	cmp	r5, #1	@ tmp172,
	bls	.L746	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r5, r0, #0	@ ret,
	beq	.L747	@,
	cmn	r5, #1	@ ret,
	beq	.L744	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r6, r0, #0	@ D.35003,
	bne	.L739	@,
	movw	r5, #:lower16:73696	@ tmp187,
	movt	r5, #:upper16:73696	@ tmp187,
	add	r1, r4, #71680	@, pCtx,
	add	r1, r1, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r0, #:lower16:g_event_report	@ tmp191,
	movt	r0, #:upper16:g_event_report	@ tmp191,
	ldr	r3, [r0, #0]	@ g_event_report.2493, g_event_report
	cmp	r3, #0	@ g_event_report.2493,
	beq	.L740	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.35003
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2493
.L740:
	movw	r1, #:lower16:.LC74	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC74	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L731	@
.L746:
	ldr	r3, [r4, #0]	@ temp.2484, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L735	@,
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L744	@,
.L735:
	movw	ip, #:lower16:73696	@ tmp175,
	movt	ip, #:upper16:73696	@ tmp175,
	add	r2, r4, #71680	@, pCtx,
	mov	r5, #0	@ ret,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L744:
	mov	r5, #0	@ ret,
	b	.L731	@
.L745:
	ldr	r5, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r5, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L732	@,
	movw	r2, #:lower16:72196	@ tmp167,
	movt	r2, #:upper16:72196	@ tmp167,
	movw	r1, #:lower16:72012	@ tmp166,
	movt	r1, #:upper16:72012	@ tmp166,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.LastStreamIntegrality,
	str	r0, [r4, r1]	@ <variable>.CodecInfo.LastStreamIntegrality,
	b	.L733	@
.L747:
	movw	r6, #:lower16:73696	@ tmp179,
	movt	r6, #:upper16:73696	@ tmp179,
	add	lr, r4, #71680	@, pCtx,
	add	r1, lr, #284	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:g_event_report	@ tmp183,
	movt	r3, #:upper16:g_event_report	@ tmp183,
	ldr	r3, [r3, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	beq	.L737	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r5	@, ret
	blx	r3	@ g_event_report.497
.L737:
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L731	@
.L739:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r6, r0, #0	@ D.35009,
	beq	.L748	@,
	movw	r3, #:lower16:71960	@ tmp213,
	movt	r3, #:upper16:71960	@ tmp213,
	movw	r0, #:lower16:72064	@ tmp207,
	movw	ip, #:lower16:71984	@ tmp208,
	movt	r0, #:upper16:72064	@ tmp207,
	movt	ip, #:upper16:71984	@ tmp208,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r5, r5, asl #3	@ ret, <variable>.CodecInfo.BsOffset,
	add	lr, r2, r1	@ tmp212, <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.Used_byte
	str	lr, [r4, r0]	@ tmp212, <variable>.CodecInfo.Used_byte
	b	.L731	@
.L748:
	movw	r5, #:lower16:73696	@ tmp195,
	movw	r3, #:lower16:72096	@ tmp197,
	movt	r5, #:upper16:73696	@ tmp195,
	movt	r3, #:upper16:72096	@ tmp197,
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
	movw	r2, #:lower16:g_event_report	@ tmp203,
	movt	r2, #:upper16:g_event_report	@ tmp203,
	ldr	r3, [r2, #0]	@ g_event_report.2498, g_event_report
	cmp	r3, #0	@ g_event_report.2498,
	beq	.L742	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.35009
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2498
.L742:
	movw	r1, #:lower16:.LC75	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC75	@,
	mov	r5, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L731	@
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.global	default_intra_quantizer_matrix
	.global	zigzag
	.global	g_tmpusd
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.441.33509, %object
	.size	C.441.33509, 128
C.441.33509:
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
	.type	__func__.33310, %object
	.size	__func__.33310, 19
__func__.33310:
	.ascii	"MP2_DecodingDecide\000"
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
	.ascii	"%-40s%20d\012\000"
	.space	1
.LC1:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC2:
	.ascii	"macroblock_escape ERROR\012\000"
	.space	3
.LC3:
	.ascii	"macroblock_escape\000"
	.space	2
.LC4:
	.ascii	"SlcStartMbNum = %d > PicEndMum = %d\012\000"
	.space	3
.LC5:
	.ascii	"FirstMbInSliceFlag = %d\012\000"
	.space	3
.LC6:
	.ascii	"slice_vertical_position\000"
.LC7:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC8:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC9:
	.ascii	"intra_slice\000"
.LC10:
	.ascii	"reserved_bits\000"
	.space	2
.LC11:
	.ascii	"extra_bit_slice\000"
.LC12:
	.ascii	"extra_infrmation_slice\000"
	.space	1
.LC13:
	.ascii	"tmpSyntax is %d\012\000"
	.space	3
.LC14:
	.ascii	"Slice num = %d >= %d\012\000"
	.space	2
.LC15:
	.ascii	"seg info is wrong! IsLastSeg[0] = %d, IsLastSeg[1] "
	.ascii	"= %d\012\000"
	.space	3
.LC16:
	.ascii	"MP2_GetFirstMbInSlice Failed!\012\000"
	.space	1
.LC17:
	.ascii	"MP2_WriteSliceInfo Failed!\012\000"
.LC18:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC19:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC20:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC21:
	.ascii	"ERROR: unsupported profile %d\012\000"
	.space	1
.LC22:
	.ascii	"ERROR: unsupported level %d\012\000"
	.space	3
.LC23:
	.ascii	"\012mpeg2 copy last 3 bytes of the first packet!\012"
	.ascii	"\012\000"
.LC24:
	.ascii	"pMp2CodecInfo->pUsrDatArray[%d] is null\012\000"
	.space	3
.LC25:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC26:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC27:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC28:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC29:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC30:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC31:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC32:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC33:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC34:
	.ascii	"ERROR: frm %d, lost one field\012\000"
	.space	1
.LC35:
	.ascii	"ERROR: frm %d, lost one field flg = %d, last_struct"
	.ascii	" = %d\012\000"
	.space	2
.LC36:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC37:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC38:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC39:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC40:
	.ascii	"line: %d(pCur, pFwd, pBwd)(%p, %p, %p)\012\000"
.LC41:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC42:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,pmv = %p,%p,%p,%p,%p\012"
	.ascii	"\000"
	.space	2
.LC43:
	.ascii	"ERROR: frm %d, integrality: %#x\012\000"
	.space	3
.LC44:
	.ascii	"ERROR: frm %d, No Img buffer is allocated\012\000"
	.space	1
.LC45:
	.ascii	"----------------- mp2 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC46:
	.ascii	"frm %d pic type %d struct is %d total pos %#x\012\000"
	.space	1
.LC47:
	.ascii	"NOTE: Drop non-I, cur is B\012\000"
.LC48:
	.ascii	"NOTE: Drop non-I, cur is P\012\000"
.LC49:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC50:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC51:
	.ascii	"%s %d pFwdImg = NULL,  pBwdImg = NULL!!\012\000"
	.space	3
.LC52:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC53:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC54:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC55:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC56:
	.ascii	"mp2 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC57:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC58:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC59:
	.ascii	"Protocol %d\012\000"
	.space	3
.LC60:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC61:
	.ascii	"found sh %#x\012\000"
	.space	2
.LC62:
	.ascii	"SEQUENCE_HEADER_CODE Bitstream is not enough!\012\000"
	.space	1
.LC63:
	.ascii	"found gh %#x\012\000"
	.space	2
.LC64:
	.ascii	"GROUP_START_CODE Bitstream is not enough!\012\000"
	.space	1
.LC65:
	.ascii	"found ph %#x\012\000"
	.space	2
.LC66:
	.ascii	"PICTURE_START_CODE Bitstream is not enough!\012\000"
	.space	3
.LC67:
	.ascii	"found ud %#x\012\000"
	.space	2
.LC68:
	.ascii	"get usd err\012\000"
	.space	3
.LC69:
	.ascii	"cann't get ud pointer\012\000"
	.space	1
.LC70:
	.ascii	"found ext %#x\012\000"
	.space	1
.LC71:
	.ascii	"MP2_DecSlice is wrong!\012\000"
.LC72:
	.ascii	"line %d, MP2_ReceivePacket receive packet failed!\012"
	.ascii	"\000"
	.space	1
.LC73:
	.ascii	"MP2 Decode Decide is wrong!\012\000"
	.space	3
.LC74:
	.ascii	"MP2 get picture info is wrong!\012\000"
.LC75:
	.ascii	"MP2 dec new pic failed!\012\000"
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
