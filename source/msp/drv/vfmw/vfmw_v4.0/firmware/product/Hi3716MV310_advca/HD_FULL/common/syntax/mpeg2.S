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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(mpeg2)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o
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
	.global	MP2_EstimatePicQp
	.type	MP2_EstimatePicQp, %function
MP2_EstimatePicQp:
	.fnstart
.LFB1921:
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
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:73336	@ tmp152,
	movt	ip, #:upper16:73336	@ tmp152,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r7, [r0, ip]	@ D.38844, <variable>.pSyntaxInfNew
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
	ldr	r3, [r4, r6]	@ D.38838, <variable>.GopFrmCnt
	ldr	r2, [r4, r2]	@ D.38839, <variable>.GopFrmCnt
	ldr	r6, [r4, r5]	@ D.38840, <variable>.GopFldCnt
	ldr	r1, [r4, r1]	@ D.38841, <variable>.GopFldCnt
	ldr	r5, [r4, r0]	@ D.38843, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, ip]	@ D.38842, <variable>.GopFrmCntNoRpt
	ldr	r0, [r7, #72]	@ D.38845, <variable>.frame_rate
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	add	ip, r5, ip	@ FrmNumNoRpt, D.38843, D.38842
	cmp	r0, #0	@ D.38845,
	cmpgt	ip, #0	@, FrmNumNoRpt,
	ble	.L9	@,
	add	r1, r1, r6	@ FldNum, D.38841, D.38840
	cmp	r1, #0	@ FldNum,
	ble	.L9	@,
	mul	r0, ip, r0	@, FrmNumNoRpt, D.38845
	ldrb	lr, [r7, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	lr, #1	@ <variable>.progressive_sequence,
	addeq	r1, r2, r3	@, D.38839, D.38838
	movne	r0, r0, asl #1	@, tmp168,
	bl	__aeabi_idiv	@
	mov	r2, #100	@ tmp176,
	movw	r1, #:lower16:72180	@ tmp173,
	movt	r1, #:upper16:72180	@ tmp173,
	mul	r3, r2, r0	@ tmp175, tmp176, prephitmp.628
	str	r0, [r4, r1]	@ prephitmp.628, <variable>.CodecInfo.RealFrmRate
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
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:73336	@ tmp138,
	movt	r3, #:upper16:73336	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	ldr	r1, [ip, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	sub	r3, r1, #1	@ D.40426, <variable>.aspect_ratio_information,
	cmp	r3, #2	@ D.40426,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp140,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp140,
	addls	r3, r2, r3, asl #2	@, tmp143, tmp140, D.40426,
	movhi	r0, #0	@ prephitmp.653,
	ldrls	r0, [r3, #128]	@ prephitmp.653, CSWTCH.589
	bx	lr	@
	.fnend
	.size	MP2_CalcDar, .-MP2_CalcDar
	.align	2
	.global	MP2_SearchStartCode
	.type	MP2_SearchStartCode, %function
MP2_SearchStartCode:
	.fnstart
.LFB1929:
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
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	movw	r5, #:lower16:73336	@ tmp141,
	movt	r5, #:upper16:73336	@ tmp141,
	ldr	r2, [r0, #0]	@ D.39188, <variable>.pstExtraData
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
	sub	r4, ip, #1	@ D.40437, <variable>.aspect_ratio_information,
	mov	ip, #0	@ tmp152,
	cmp	r4, #2	@ D.40437,
	str	ip, [r2, #412]	@ tmp152, <variable>.stChanState.scan_type
	str	ip, [r2, #416]	@ tmp152, <variable>.stChanState.video_format
	movwls	r6, #:lower16:.LANCHOR0	@ tmp147,
	movtls	r6, #:upper16:.LANCHOR0	@ tmp147,
	addls	r4, r6, r4, asl #2	@, tmp150, tmp147, D.40437,
	movhi	r4, #0	@ prephitmp.703,
	ldrls	r4, [r4, #128]	@ prephitmp.703, CSWTCH.589
	str	r4, [r2, #408]	@ prephitmp.703, <variable>.stChanState.aspect_ratio
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
	ldr	r1, [r0, r4]	@ D.39199, <variable>.numOutputFrame
	ldr	r3, [r0, r3]	@ temp.714, <variable>.numTotalFrame
	cmp	r3, r1	@ temp.714, D.39199
	rsbge	ip, r1, r3	@ iftmp.547, D.39199, temp.714
	str	ip, [r2, #444]	@ iftmp.547, <variable>.stChanState.error_frame_num
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	MP2_RecordVFMWState, .-MP2_RecordVFMWState
	.align	2
	.global	MP2_ExitMb
	.type	MP2_ExitMb, %function
MP2_ExitMb:
	.fnstart
.LFB1964:
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
.LFB1967:
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
.LFB1932:
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
	ldr	r3, [r4, r5]	@ temp.785, <variable>.Bs.TotalPos
	movw	r2, #:lower16:71960	@ tmp173,
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:71960	@ tmp173,
	cmp	r3, #0	@ temp.785,
	add	r7, r3, #7	@ tmp176, temp.785,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r1, r3, lsr #3	@, tmp185, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, temp.785,
	movge	r7, r3	@ temp.785, temp.785
	movw	r5, #:lower16:71980	@ tmp166,
	add	r3, r3, r1, asl #3	@, bs_offset.790, temp.785, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	movt	r5, #:upper16:71980	@ tmp166,
	add	r1, lr, r7, asr #3	@, tmp180, <variable>.CodecInfo.BsOffset, temp.785,
	and	lr, r3, #31	@ tmp188, bs_offset.790,
	str	r1, [r4, r2]	@ tmp180, <variable>.CodecInfo.BsOffset
	bic	r1, ip, #3	@ tmp187, tmp185,
	str	lr, [r4, #172]	@ tmp188, <variable>.Mp2DecParam.StreamBitOffset
	str	r1, [r4, #164]	@ tmp187, <variable>.Mp2DecParam.StreamPhyAddr
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bl	BsResidBits	@
	movw	r3, #:lower16:71988	@ tmp193,
	movt	r3, #:upper16:71988	@ tmp193,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	bic	r6, r6, #3	@ stream_base_addr.784, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	and	ip, r2, #3	@ tmp190, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r6, [r4, #168]	@ stream_base_addr.784, <variable>.Mp2DecParam.StreamPhyAddr
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
	ldr	r3, [r4, ip]	@ D.39163, <variable>.Bs.TotalPos
	movw	r2, #:lower16:71960	@ tmp148,
	ldr	r1, [r4, r5]	@ D.39162, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	r2, #:upper16:71960	@ tmp148,
	cmp	r3, #0	@ D.39163,
	add	r5, r3, #7	@ tmp151, D.39163,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	add	ip, r3, r1, asl #3	@, tmp161, D.39163, D.39162,
	movge	r5, r3	@ D.39163, D.39163
	add	r3, r1, r3, lsr #3	@, tmp157, D.39162, D.39163,
	add	r1, lr, r5, asr #3	@, tmp155, <variable>.CodecInfo.BsOffset, D.39163,
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
.LFB1925:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r5, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	bl	MP2_SetVDMInf	@
	ldr	r2, [r5, #0]	@ temp.828, <variable>.pstExtraData
	movw	r0, #:lower16:73336	@ tmp146,
	movt	r0, #:upper16:73336	@ tmp146,
	movw	r3, #45324	@ tmp143,
	ldr	r1, [r5, r0]	@ D.38782, <variable>.pSyntaxInfNew
	ldr	r0, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	str	r0, [r5, r3]	@ <variable>.s32Compress_en, <variable>.Mp2DecParam.Compress_en
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ D.38783, <variable>.picture_coding_type
	cmp	r3, #3	@ D.38783,
	beq	.L60	@,
	cmp	r3, #2	@ D.38783,
	movweq	r3, #:lower16:73708	@ tmp156,
	movteq	r3, #:upper16:73708	@ tmp156,
	moveq	r1, #1	@ tmp157,
	streq	r1, [r5, r3]	@ tmp157, <variable>.PPicFound
.L53:
	add	r1, r5, #8	@ D.38797, pCtx,
	str	r1, [r5, #4]	@ D.38797, <variable>.pMp2DecParam
	ldr	r3, [r2, #708]	@ D.38798, <variable>.stDisParams.s32Mode
	cmp	r3, #1	@ D.38798,
	beq	.L61	@,
	cmp	r3, #2	@ D.38798,
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
	ldr	r3, [r1, #0]	@ g_event_report.534, g_event_report
	cmp	r3, #0	@ g_event_report.534,
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
	blx	r3	@ g_event_report.534
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
	cmp	r1, #0	@ D.38797,
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
	cmp	r1, #0	@ D.38797,
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
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r5	@, LenInBits
	mov	r4, r0	@ D.40267,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40267
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_u_v, .-MP2_u_v
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
.LFB1966:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	add	r3, r4, r0, asl #3	@, tmp147, tmp144, D.40358,
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
	and	ip, r0, #127	@ code.885,,
	mov	r0, r6	@, pBs
	sub	r5, ip, #24	@ code.886, code.885,
	add	r1, r4, r5, asl #3	@, tmp167, tmp144, code.886,
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
.LFB1963:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	mov	r5, #0	@ macroblock_escape,
	ldr	r4, [r0, #52]	@ pBs, <variable>.pBs
	b	.L74	@
.L78:
	cmp	r0, #15	@ D.40289,
	beq	.L75	@,
	cmp	r0, #8	@ D.40289,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L82	@,
.L75:
	movw	r2, #:lower16:.LC1	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC1	@,
	mov	r1, #11	@,
	bl	MP2_u_v	@
.L74:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #23	@ D.40289,
	bls	.L78	@,
	mov	r0, r4	@, pBs
	bl	MP2_MbAddrInc	@
	ldr	r4, [r6, #16]	@ <variable>.FirstMbInSliceFlag, <variable>.FirstMbInSliceFlag
	cmp	r4, #0	@ <variable>.FirstMbInSliceFlag,
	beq	.L79	@,
	ldr	r2, [r6, #28]	@ D.40294, <variable>.previous_macroblock_address
	add	r5, r5, r0	@ tmp145, macroblock_escape, macroblock_address_increment
	ldr	r1, [r6, #12]	@ <variable>.pic_total_mb_num, <variable>.pic_total_mb_num
	cmp	r2, #0	@ D.40294,
	addne	r5, r5, r2	@ SlcStartMbNum, tmp145, D.40294
	subeq	r5, r5, #1	@ SlcStartMbNum, tmp146,
	sub	r3, r1, #1	@ tmp147, <variable>.pic_total_mb_num,
	str	r5, [r6, #44]	@ SlcStartMbNum, <variable>.slicen_start_mb_num
	cmp	r5, r3	@ SlcStartMbNum, tmp147
	movls	r0, #1	@ ret,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
.L82:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L79:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ ret, <variable>.FirstMbInSliceFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_InitMb, .-MP2_InitMb
	.align	2
	.global	MP2_DecSliceHeader
	.type	MP2_DecSliceHeader, %function
MP2_DecSliceHeader:
	.fnstart
.LFB1961:
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
	bls	.L85	@,
	ldr	r1, [r5, #0]	@ <variable>.mpeg1_flag, <variable>.mpeg1_flag
	cmp	r1, #0	@ <variable>.mpeg1_flag,
	beq	.L94	@,
.L85:
	mov	r1, #0	@ prephitmp.926,
.L86:
	ldr	ip, [r5, #20]	@ <variable>.slice_vertical_position, <variable>.slice_vertical_position
	ldr	r0, [r5, #8]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	sub	r2, ip, #1	@ tmp150, <variable>.slice_vertical_position,
	add	r3, r2, r1	@ tmp152, tmp150, prephitmp.926
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC3	@,
	movt	r2, #:upper16:.LC3	@,
	mul	lr, r0, r3	@ D.40241, <variable>.pic_width_in_mb, tmp152
	mov	r0, r4	@, pBs
	cmp	lr, #0	@ D.40241,
	subne	lr, lr, #1	@ iftmp.582, D.40241,
	str	lr, [r5, #28]	@ iftmp.582, <variable>.previous_macroblock_address
	bl	MP2_u_v	@
	mov	ip, #0	@ tmp155,
	mov	r1, #1	@,
	str	ip, [r5, #32]	@ tmp155, <variable>.intra_slice
	str	r0, [r5, #48]	@, <variable>.quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L95	@,
.L89:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	bl	MP2_u_v	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L95:
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
	b	.L90	@
.L91:
	bl	MP2_u_v	@
	movw	r2, #:lower16:.LC8	@,
	mov	r0, r4	@, pBs
	movt	r2, #:upper16:.LC8	@,
	mov	r1, #8	@,
	bl	MP2_u_v	@
.L90:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	movw	r2, #:lower16:.LC7	@,
	mov	r1, #1	@,
	movt	r2, #:upper16:.LC7	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L91	@,
	b	.L89	@
.L94:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	MP2_u_v	@
	mov	r1, r0, asl #7	@ prephitmp.926, D.40235,
	str	r0, [r5, #24]	@ D.40235, <variable>.slice_vertical_position_extension
	b	.L86	@
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
	.align	2
	.global	MP2_GetFirstMbInSlice
	.type	MP2_GetFirstMbInSlice, %function
MP2_GetFirstMbInSlice:
	.fnstart
.LFB1960:
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
.LFB1948:
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
.LFB1946:
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
.LFB1945:
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
.LFB1942:
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
.LFB1958:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r8, #45316	@ tmp166,
	ldr	r3, [r0, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	mov	r6, r0	@ pCtx, pCtx
	cmp	r3, #0	@ <variable>.Mp2DecParam.SlcNum,
	beq	.L107	@,
	movw	r7, #:lower16:73696	@ tmp181,
	mov	r4, r0	@ ivtmp.1082, pCtx
	movt	r7, #:upper16:73696	@ tmp181,
	mov	r5, #0	@ i,
	b	.L109	@
.L108:
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r4, r4, #44	@ ivtmp.1082, ivtmp.1082,
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bls	.L107	@,
.L109:
	ldr	r1, [r4, #284]	@, <variable>.BsID
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, #264]	@ <variable>.BsPhyAddr, <variable>.BsPhyAddr
	cmp	r0, #0	@ <variable>.BsPhyAddr,
	beq	.L108	@,
	ldr	r1, [r4, #272]	@ <variable>.BsLenInBit, <variable>.BsLenInBit
	cmp	r1, #0	@ <variable>.BsLenInBit,
	beq	.L108	@,
	ldr	r1, [r4, #288]	@, <variable>.BsID
	add	r4, r4, #44	@ ivtmp.1082, ivtmp.1082,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r6, r8]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r2, r5	@ <variable>.Mp2DecParam.SlcNum, i
	bhi	.L109	@,
.L107:
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
.LFB1965:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #45316	@ tmp140,
	movw	r2, #:lower16:72248	@ tmp153,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, r1]	@ D.40320, <variable>.Mp2DecParam.SlcNum
	mov	r5, #44	@ tmp143,
	movw	r3, #:lower16:72232	@ tmp146,
	movt	r3, #:upper16:72232	@ tmp146,
	movt	r2, #:upper16:72248	@ tmp153,
	movw	lr, #:lower16:72244	@ tmp160,
	mla	r5, r5, r0, r4	@ tmp144, tmp143, D.40320, pCtx
	ldr	ip, [r4, r3]	@ <variable>.SliceInfo.intra_slice, <variable>.SliceInfo.intra_slice
	movt	lr, #:upper16:72244	@ tmp160,
	add	r0, r5, #288	@ tmp145, tmp144,
	str	ip, [r0, #8]	@ <variable>.SliceInfo.intra_slice, <variable>.intra_slice
	ldr	ip, [r4, r2]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.SliceInfo.quantiser_scale_code
	str	ip, [r5, #300]	@ <variable>.SliceInfo.quantiser_scale_code, <variable>.quantiser_scale_code
	ldr	r2, [r4, lr]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.SliceInfo.slicen_start_mb_num
	str	r2, [r0, #4]	@ <variable>.SliceInfo.slicen_start_mb_num, <variable>.slice_start_mbn
	ldr	r3, [r4, r1]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	cmp	r3, #1024	@ <variable>.Mp2DecParam.SlcNum,
	bcs	.L119	@,
	movw	ip, #:lower16:72280	@ tmp171,
	movt	ip, #:upper16:72280	@ tmp171,
	movw	r0, #:lower16:71976	@ tmp178,
	movt	r0, #:upper16:71976	@ tmp178,
	ldr	lr, [r4, ip]	@ D.40333, <variable>.Bs.TotalPos
	movw	ip, #:lower16:71992	@ tmp192,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	ip, #:upper16:71992	@ tmp192,
	and	r3, lr, #7	@ tmp186, D.40333,
	str	r3, [r5, #276]	@ tmp186, <variable>.BsBitOffset
	add	r1, r2, lr, lsr #3	@, tmp180, <variable>.CodecInfo.stMp2Packet.BsPhyAddr, D.40333,
	str	r1, [r5, #260]	@ tmp180, <variable>.BsPhyAddr
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.CodecInfo.stMp2Packet.StreamID
	add	r0, r4, #71680	@, pCtx,
	add	r0, r0, #576	@,,
	str	lr, [r5, #284]	@ <variable>.CodecInfo.stMp2Packet.StreamID, <variable>.BsID
	bl	BsResidBits	@
	movw	r3, #:lower16:71964	@ tmp201,
	movt	r3, #:upper16:71964	@ tmp201,
	str	r0, [r5, #268]	@, <variable>.BsLenInBit
	ldrsh	r3, [r4, r3]	@ D.40338,
	cmp	r3, #1	@ D.40338,
	beq	.L120	@,
	cmp	r3, #256	@ D.40338,
	bne	.L117	@,
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
	mov	r0, #1	@ D.40330,
	ldr	r1, [r4, ip]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r1, r0	@ tmp259, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, ip]	@ tmp259, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L119:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r3, #:lower16:72012	@ tmp165,
	movt	r3, #:upper16:72012	@ tmp165,
	movw	r2, #:lower16:72068	@ tmp169,
	movt	r2, #:upper16:72068	@ tmp169,
	mov	r1, #0	@ tmp170,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r1	@ D.40330, tmp170
	str	r1, [r4, r2]	@ tmp170, <variable>.CodecInfo.HDRState
	bic	r1, ip, #5767168	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r4, r3]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L120:
	add	r3, r5, #268	@ tmp225, tmp144,
	add	r1, r5, #260	@ tmp207, tmp144,
	add	r2, r5, #276	@ tmp213, tmp144,
	add	r5, r5, #284	@ tmp219, tmp144,
	movw	ip, #45316	@ tmp256,
	mov	lr, #0	@ tmp208,
	str	lr, [r2, #4]	@ tmp208, <variable>.BsBitOffset
	mov	r0, #1	@ D.40330,
	str	lr, [r3, #4]	@ tmp208, <variable>.BsLenInBit
	str	lr, [r1, #4]	@ tmp208, <variable>.BsPhyAddr
	str	lr, [r5, #4]	@ tmp208, <variable>.BsID
	ldr	r1, [r4, ip]	@ <variable>.Mp2DecParam.SlcNum, <variable>.Mp2DecParam.SlcNum
	add	r2, r1, r0	@ tmp259, <variable>.Mp2DecParam.SlcNum,
	str	r2, [r4, ip]	@ tmp259, <variable>.Mp2DecParam.SlcNum
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L117:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40330,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_DecSlice
	.type	MP2_DecSlice, %function
MP2_DecSlice:
	.fnstart
.LFB1959:
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
	beq	.L122	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L122:
	mov	r0, r4	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.40209,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MP2_DecSlice, .-MP2_DecSlice
	.align	2
	.global	MP2_ClearCurPacket
	.type	MP2_ClearCurPacket, %function
MP2_ClearCurPacket:
	.fnstart
.LFB1957:
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
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	mov	r1, r0	@ pMp2CodecInfo, pMp2CodecInfo
	beq	.L135	@,
	movw	r3, #26632	@ tmp138,
	mov	r5, #0	@ tmp139,
	str	r5, [r0, r3]	@ tmp139, <variable>.BsOffset
	movw	r0, #26676	@ tmp140,
	ldr	ip, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r3, #26648	@ tmp142,
	str	ip, [r1, r0]	@ <variable>.LenInByte, <variable>.PacketTail
	movw	ip, #26640	@ tmp144,
	ldr	r0, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r1, r3]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	r3, #26656	@ tmp146,
	ldr	r0, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r1, ip]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r0, #26636	@ tmp148,
	ldr	ip, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	ip, [r1, r3]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r3, #26664	@ tmp151,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r1, r0]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	r0, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r0, [r1, r3]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L132	@,
	ldr	ip, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r0, #26652	@ tmp154,
	movw	r3, #26644	@ tmp156,
	str	ip, [r1, r0]	@ <variable>.PhyAddr, <variable>.stMp2Packet.BsPhyAddr
	movw	ip, #26660	@ tmp158,
	ldr	r0, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r0, [r1, r3]	@ <variable>.VirAddr, <variable>.stMp2Packet.BsVirAddr
	movw	r3, #26637	@ tmp160,
	ldr	r0, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r0, [r1, ip]	@ <variable>.LenInByte, <variable>.stMp2Packet.BsLength
	movw	r0, #26668	@ tmp163,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r1, r3]	@ <variable>.IsLastSeg, <variable>.stMp2Packet.IsLastSeg
	ldr	ip, [r4, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	ip, [r1, r0]	@ <variable>.StreamID, <variable>.stMp2Packet.StreamID
	ldrb	r0, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	r1, r1, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40114, tmp139
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L132:
	movw	r3, #26668	@ tmp177,
	movw	r2, #26652	@ tmp168,
	str	r5, [r1, r3]	@ tmp139, <variable>.stMp2Packet.StreamID
	movw	ip, #26644	@ tmp170,
	str	r5, [r1, r2]	@ tmp139, <variable>.stMp2Packet.BsPhyAddr
	movw	r3, #26660	@ tmp172,
	movw	r2, #26637	@ tmp174,
	str	r5, [r1, ip]	@ tmp139, <variable>.stMp2Packet.BsVirAddr
	str	r5, [r1, r3]	@ tmp139, <variable>.stMp2Packet.BsLength
	strb	r5, [r1, r2]	@ tmp139, <variable>.stMp2Packet.IsLastSeg
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L135:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40114, pPacket
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MP2_ReceivePacket, .-MP2_ReceivePacket
	.align	2
	.global	MPEG2DEC_GetImageBuffer
	.type	MPEG2DEC_GetImageBuffer, %function
MPEG2DEC_GetImageBuffer:
	.fnstart
.LFB1955:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pCtx, pCtx
	movw	r0, #45329	@ tmp138,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	r3, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L137	@,
	movw	r2, #:lower16:72024	@ tmp140,
	movt	r2, #:upper16:72024	@ tmp140,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L138	@,
.L137:
	movw	r5, #:lower16:73696	@ tmp142,
	movt	r5, #:upper16:73696	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L138	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L139	@,
.L142:
	mov	r0, #0	@ D.40098,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L138:
	mov	r0, #1	@ D.40098,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L139:
	add	ip, r4, #72704	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L142	@
	.fnend
	.size	MPEG2DEC_GetImageBuffer, .-MPEG2DEC_GetImageBuffer
	.align	2
	.global	MP2_ProtocolPPSCheck
	.type	MP2_ProtocolPPSCheck, %function
MP2_ProtocolPPSCheck:
	.fnstart
.LFB1930:
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
	beq	.L145	@,
	cmp	r3, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L163	@,
	movw	ip, #:lower16:72012	@ tmp168,
	movt	ip, #:upper16:72012	@ tmp168,
	ldr	r2, [r0, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r2, r2, #63	@ prephitmp.1233, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r0, ip]	@ prephitmp.1233, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
.L153:
	tst	r2, #24	@ prephitmp.1233,
	beq	.L157	@,
	cmp	r3, #3	@ prephitmp.1237,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	lr, #:lower16:72012	@ tmp172,
	movw	r5, #:lower16:73696	@ tmp174,
	movt	lr, #:upper16:72012	@ tmp172,
	movt	r5, #:upper16:73696	@ tmp174,
	movw	r7, #:lower16:72092	@ tmp176,
	movt	r7, #:upper16:72092	@ tmp176,
	orr	r6, r2, #64	@ tmp173, prephitmp.1233,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, lr]	@ tmp173, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L159	@,
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
	bne	.L164	@,
.L159:
	movw	r3, #:lower16:72052	@ tmp212,
	movt	r3, #:upper16:72052	@ tmp212,
	mov	r1, #0	@ tmp213,
	str	r1, [r4, r3]	@ tmp213,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L157:
	cmp	r3, #1	@ prephitmp.1237,
	biceq	r2, r2, #192	@ tmp215, prephitmp.1233,
	movweq	r3, #:lower16:72012	@ tmp214,
	movteq	r3, #:upper16:72012	@ tmp214,
	streq	r2, [r4, r3]	@ tmp215,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L163:
	movw	r3, #:lower16:72012	@ tmp161,
	movt	r3, #:upper16:72012	@ tmp161,
	ldr	r2, [r0, r3]	@ prephitmp.1236, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #1048576	@ prephitmp.1236,
	orreq	r2, r2, #16	@ prephitmp.1236, prephitmp.1236,
	streq	r2, [r0, r3]	@ prephitmp.1236, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
	sub	ip, r3, #1	@ tmp164, prephitmp.1237,
	uxtb	r0, ip	@ tmp165, tmp164
	cmp	r0, #2	@ tmp165,
	bls	.L162	@,
.L156:
	movw	r0, #:lower16:72012	@ tmp167,
	movt	r0, #:upper16:72012	@ tmp167,
	orr	r2, r2, #8	@ prephitmp.1233, prephitmp.1236,
	str	r2, [r4, r0]	@ prephitmp.1233, <variable>.CodecInfo.StreamIntegrality
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
	b	.L153	@
.L145:
	ldrb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
	sub	r2, r3, #1	@ tmp146, prephitmp.1237,
	uxtb	r2, r2	@ tmp147, tmp146
	cmp	r2, #3	@ tmp147,
	movwhi	r3, #:lower16:72012	@ tmp149,
	movthi	r3, #:upper16:72012	@ tmp149,
	movwls	r2, #:lower16:72012	@ tmp148,
	movtls	r2, #:upper16:72012	@ tmp148,
	ldrhi	r2, [r0, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ldrls	r2, [r0, r2]	@ prephitmp.1239, <variable>.CodecInfo.StreamIntegrality
	orrhi	r2, r2, #8	@ prephitmp.1239, <variable>.CodecInfo.StreamIntegrality,
	strhi	r2, [r0, r3]	@ prephitmp.1239, <variable>.CodecInfo.StreamIntegrality
	ldrhib	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
	sub	ip, r3, #2	@ tmp152, prephitmp.1237,
	uxtb	r0, ip	@ tmp153, tmp152
	cmp	r0, #1	@ tmp153,
	bls	.L165	@,
.L162:
	movw	r1, #:lower16:72012	@ tmp166,
	movt	r1, #:upper16:72012	@ tmp166,
	ldr	r2, [r4, r1]	@ prephitmp.1233, <variable>.CodecInfo.StreamIntegrality
	b	.L153	@
.L165:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	cmp	r0, #0	@ <variable>.forward_f_code,
	orreq	r2, r2, #8	@ prephitmp.1243, prephitmp.1239,
	movweq	r3, #:lower16:72012	@ tmp156,
	movteq	r3, #:upper16:72012	@ tmp156,
	movwne	r2, #:lower16:72012	@ tmp155,
	movtne	r2, #:upper16:72012	@ tmp155,
	streq	r2, [r4, r3]	@ prephitmp.1243, <variable>.CodecInfo.StreamIntegrality
	ldreqb	r3, [r1, #22]	@ zero_extendqisi2	@ prephitmp.1237, <variable>.picture_coding_type
	ldrne	r2, [r4, r2]	@ prephitmp.1243, <variable>.CodecInfo.StreamIntegrality
	cmp	r3, #3	@ prephitmp.1237,
	bne	.L162	@,
	ldrb	ip, [r1, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	cmp	ip, #0	@ <variable>.backward_f_code,
	beq	.L156	@,
	b	.L162	@
.L164:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.39106, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.39106, <variable>.CodecInfo.FwdFsID
	b	.L159	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:72012	@ tmp157,
	movt	r3, #:upper16:72012	@ tmp157,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r6, [r0, r3]	@ prephitmp.1290, <variable>.CodecInfo.StreamIntegrality
	movw	r2, #:lower16:73336	@ tmp156,
	movt	r2, #:upper16:73336	@ tmp156,
	tst	r6, #8388608	@ prephitmp.1290,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r5, [r0, r2]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	mvneq	r0, #0	@ D.38239,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L169	@,
	movw	ip, #:lower16:72024	@ tmp160,
	movt	ip, #:upper16:72024	@ tmp160,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	beq	.L169	@,
	ands	r6, r6, #255	@ tmp167, prephitmp.1290,
	beq	.L171	@,
.L217:
	movw	r1, #:lower16:g_event_report	@ tmp168,
	movt	r1, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [r1, #0]	@ g_event_report.504, g_event_report
	cmp	r3, #0	@ g_event_report.504,
	beq	.L209	@,
	movw	ip, #:lower16:73696	@ tmp169,
	movt	ip, #:upper16:73696	@ tmp169,
	mov	r1, #103	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.504
.L209:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38239,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L169:
	movw	r0, #:lower16:72012	@ tmp166,
	movt	r0, #:upper16:72012	@ tmp166,
	movw	r3, #:lower16:73700	@ tmp162,
	movt	r3, #:upper16:73700	@ tmp162,
	ldr	r6, [r4, r0]	@ prephitmp.1290, <variable>.CodecInfo.StreamIntegrality
	ldr	r2, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ands	r6, r6, #255	@ tmp167, prephitmp.1290,
	add	lr, r2, #1	@ tmp165, <variable>.numTotalFrame,
	str	lr, [r4, r3]	@ tmp165, <variable>.numTotalFrame
	bne	.L217	@,
.L171:
	movw	lr, #:lower16:72060	@ tmp171,
	movt	lr, #:upper16:72060	@ tmp171,
	ldr	r8, [r4, lr]	@ <variable>.CodecInfo.Imgbuf_allocated, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ <variable>.CodecInfo.Imgbuf_allocated,
	beq	.L218	@,
	movw	r3, #:lower16:72000	@ tmp173,
	movt	r3, #:upper16:72000	@ tmp173,
	ldr	r8, [r4, r3]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r7, r8, #2	@ tmp174, <variable>.CodecInfo.UsedDecMode,
	cmp	r7, #1	@ tmp174,
	bls	.L174	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #8]	@ prephitmp.1296, <variable>.s32DecMode
.L175:
	movw	r8, #:lower16:72000	@ tmp230,
	movt	r8, #:upper16:72000	@ tmp230,
	sub	r7, r2, #1	@ tmp231, prephitmp.1296,
	str	r2, [r4, r8]	@ prephitmp.1296, <variable>.CodecInfo.UsedDecMode
	cmp	r7, #4	@ tmp231,
	ldrls	pc, [pc, r7, asl #2]	@ tmp231
	b	.L177	@
.L183:
	.word	.L178
	.word	.L179
	.word	.L180
	.word	.L181
	.word	.L182
.L174:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #8]	@ prephitmp.1296, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.1296,
	cmpne	r2, #1	@, prephitmp.1296,
	bhi	.L175	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:72012	@ tmp185,
	movt	r1, #:upper16:72012	@ tmp185,
	movw	r7, #:lower16:73696	@ tmp189,
	movw	sl, #:lower16:72092	@ tmp191,
	movt	r7, #:upper16:73696	@ tmp189,
	ldr	ip, [r4, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movt	sl, #:upper16:72092	@ tmp191,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	orr	r2, ip, #128	@ tmp188, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r4, r1]	@ tmp188, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L176	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	movw	r9, #:lower16:72088	@ tmp215,
	ldr	r1, [r8, #192]	@, <variable>.p_usrdat
	movt	r9, #:upper16:72088	@ tmp215,
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
	str	r6, [r8, #204]	@ tmp167, <variable>.p_usrdat
	str	r6, [r8, #192]	@ tmp167, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #196]	@ tmp167, <variable>.p_usrdat
	str	r6, [r8, #200]	@ tmp167, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, sl]	@ tmp167, <variable>.CodecInfo.BwdFsID
	str	r6, [r4, r9]	@ tmp167, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L219	@,
.L176:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	lr, #:lower16:72052	@ tmp227,
	movt	lr, #:upper16:72052	@ tmp227,
	mov	r6, #0	@ tmp228,
	str	r6, [r4, lr]	@ tmp228, <variable>.CodecInfo.RefNum
	ldr	r2, [r0, #8]	@ prephitmp.1296, <variable>.s32DecMode
	b	.L175	@
.L179:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1325, <variable>.picture_coding_type
	sub	r1, r3, #2	@ tmp238, temp.1325,
	uxtb	r2, r1	@ tmp239, tmp238
	cmp	r2, #1	@ tmp239,
	bls	.L186	@,
.L177:
	mov	r8, #1	@ ret,
.L184:
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:72012	@ tmp271,
	movt	r3, #:upper16:72012	@ tmp271,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	bic	ip, r6, #14155776	@ tmp274, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, r3]	@ tmp274, <variable>.CodecInfo.StreamIntegrality
	ldr	r1, [r2, #528]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r1, #1	@ <variable>.s32SupportAllP,
	beq	.L220	@,
	movw	r7, #:lower16:72052	@ tmp279,
	movt	r7, #:upper16:72052	@ tmp279,
	ldr	r3, [r4, r7]	@ temp.1344, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ temp.1344,
	bne	.L193	@,
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	sub	r1, r2, #2	@ tmp282, <variable>.picture_coding_type,
	uxtb	r0, r1	@ tmp283, tmp282
	cmp	r0, #1	@ tmp283,
	bls	.L221	@,
.L191:
	movw	r6, #:lower16:73696	@ tmp285,
	movw	lr, #:lower16:72088	@ tmp287,
	movt	r6, #:upper16:73696	@ tmp285,
	movt	lr, #:upper16:72088	@ tmp287,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:72092	@ tmp291,
	movt	r3, #:upper16:72092	@ tmp291,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pFwdImg,
	cmpne	r0, #0	@, pBwdImg,
	movne	r6, #0	@, tmp299
	moveq	r6, #1	@, tmp299
	beq	.L209	@,
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1351, <variable>.picture_coding_type
	cmp	r3, #2	@ temp.1351,
	beq	.L222	@,
	cmp	r3, #3	@ temp.1351,
	beq	.L223	@,
.L196:
	cmp	r8, #0	@ ret,
	movne	r0, #1	@ D.38239,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r2, #3	@ <variable>.picture_structure,
	beq	.L199	@,
	movw	lr, #:lower16:72024	@ tmp307,
	movt	lr, #:upper16:72024	@ tmp307,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	ip, #0	@ <variable>.CodecInfo.Second_Field,
	movne	r0, r8	@ D.38239, ret
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L199:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L224	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L225	@,
	movw	r3, #:lower16:72176	@ tmp330,
	movt	r3, #:upper16:72176	@ tmp330,
	movw	lr, #:lower16:72172	@ tmp333,
	movt	lr, #:upper16:72172	@ tmp333,
	ldr	r2, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r1, r2, #1	@ temp.1363, <variable>.GopFrmCnt,
	str	r1, [r4, r3]	@ temp.1363, <variable>.GopFrmCnt
	mov	ip, r1, asl #1	@ tmp334, temp.1363,
	str	ip, [r4, lr]	@ tmp334, <variable>.GopFldCnt
.L201:
	movw	r2, #:lower16:72168	@ tmp335,
	movt	r2, #:upper16:72168	@ tmp335,
	movw	lr, #:lower16:72020	@ tmp339,
	movt	lr, #:upper16:72020	@ tmp339,
	ldr	ip, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #0	@ D.38239,
	add	r3, ip, #1	@ tmp338, <variable>.GopFrmCntNoRpt,
	str	r3, [r4, r2]	@ tmp338, <variable>.GopFrmCntNoRpt
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	ip, r1, #1	@ tmp342, <variable>.CodecInfo.Frame_Cnt,
	str	ip, [r4, lr]	@ tmp342, <variable>.CodecInfo.Frame_Cnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L180:
	mov	r8, #0	@ ret,
	b	.L184	@
.L193:
	cmp	r3, #1	@ temp.1344,
	bhi	.L191	@,
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	ip, #3	@ <variable>.picture_coding_type,
	bne	.L191	@,
	bl	vfmw_dprint_nothing	@
	mov	r8, #0	@ ret,
	b	.L191	@
.L220:
	movw	lr, #:lower16:72052	@ tmp277,
	movt	lr, #:upper16:72052	@ tmp277,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ <variable>.CodecInfo.RefNum,
	bne	.L191	@,
	ldrb	r2, [r5, #22]	@ zero_extendqisi2	@ temp.1342, <variable>.picture_coding_type
	cmp	r2, #3	@ temp.1342,
	beq	.L226	@,
	cmp	r2, #2	@ temp.1342,
	bne	.L191	@,
	bl	vfmw_dprint_nothing	@
	b	.L191	@
.L218:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.38239, <variable>.CodecInfo.Imgbuf_allocated
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L182:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ temp.1330, <variable>.picture_coding_type
	cmp	r3, #1	@ temp.1330,
	beq	.L227	@,
.L186:
	cmp	r3, #2	@ temp.1330,
	beq	.L228	@,
.L187:
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r8, #3	@ <variable>.picture_structure,
	beq	.L180	@,
	movw	r1, #:lower16:72024	@ tmp256,
	movt	r1, #:upper16:72024	@ tmp256,
	mov	r8, #0	@ ret,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r2, r8	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #0	@, tmp259
	moveq	r0, #1	@, tmp259
	str	r0, [r4, r1]	@ tmp259, <variable>.CodecInfo.Second_Field
	b	.L184	@
.L178:
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #3	@ <variable>.picture_coding_type,
	bne	.L177	@,
	b	.L187	@
.L181:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ prephitmp.1298, <variable>.picture_coding_type
	cmp	r3, #1	@ prephitmp.1298,
	movweq	r3, #:lower16:73708	@ tmp260,
	movteq	r3, #:upper16:73708	@ tmp260,
	moveq	r2, #0	@ tmp261,
	streq	r2, [r4, r3]	@ tmp261, <variable>.PPicFound
	ldreqb	r3, [r5, #22]	@ zero_extendqisi2	@ prephitmp.1298, <variable>.picture_coding_type
	cmp	r3, #3	@ prephitmp.1298,
	beq	.L229	@,
	cmp	r3, #2	@ prephitmp.1298,
	bne	.L177	@,
	movw	r0, #:lower16:73708	@ tmp269,
	movt	r0, #:upper16:73708	@ tmp269,
	mov	r8, #1	@ tmp270,
	str	r8, [r4, r0]	@ tmp270, <variable>.PPicFound
	b	.L184	@
.L224:
	movw	lr, #:lower16:72176	@ tmp310,
	movt	lr, #:upper16:72176	@ tmp310,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:72172	@ tmp317,
	ldr	r3, [r4, lr]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:72172	@ tmp317,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	r1, r3, #1	@ tmp311, <variable>.GopFrmCnt,
	add	r3, r1, ip	@ tmp314, tmp311, <variable>.repeat_first_field
	add	r1, r3, r0	@ D.38388, tmp314, <variable>.top_field_first
	str	r1, [r4, lr]	@ D.38388, <variable>.GopFrmCnt
	mov	r3, r1, asl #1	@ tmp318, D.38388,
	str	r3, [r4, r2]	@ tmp318, <variable>.GopFldCnt
	b	.L201	@
.L222:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r2, [ip, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r1, r2	@ <variable>.error_level, <variable>.s32RefErrThr
	bls	.L196	@,
.L208:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.38239, tmp299
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L223:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r7, #180]	@ <variable>.error_level, <variable>.error_level
	ldr	r3, [r3, #0]	@ temp.1356, <variable>.s32RefErrThr
	cmp	lr, r3	@ <variable>.error_level, temp.1356
	bhi	.L208	@,
	ldr	r1, [r0, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r3, r1	@ temp.1356, <variable>.error_level
	bcs	.L196	@,
	b	.L208	@
.L228:
	movw	r6, #45329	@ tmp251,
	ldrb	ip, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L187	@,
	movw	r7, #45328	@ tmp253,
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastDecPicCodingType, <variable>.CodecInfo.LastDecPicCodingType
	cmp	lr, #1	@ <variable>.CodecInfo.LastDecPicCodingType,
	bne	.L187	@,
	b	.L177	@
.L225:
	movw	r2, #:lower16:72176	@ tmp320,
	movt	r2, #:upper16:72176	@ tmp320,
	movw	ip, #:lower16:72172	@ tmp324,
	movt	ip, #:upper16:72172	@ tmp324,
	ldr	r0, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	ldr	r3, [r4, ip]	@ <variable>.GopFldCnt, <variable>.GopFldCnt
	add	lr, r0, #1	@ tmp323, <variable>.GopFrmCnt,
	str	lr, [r4, r2]	@ tmp323, <variable>.GopFrmCnt
	ldrb	r0, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	add	r1, r3, #2	@ tmp326, <variable>.GopFldCnt,
	add	lr, r1, r0	@ tmp329, tmp326, <variable>.repeat_first_field
	str	lr, [r4, ip]	@ tmp329, <variable>.GopFldCnt
	b	.L201	@
.L221:
	mov	r8, r3	@ ret, temp.1344
	bl	vfmw_dprint_nothing	@
	b	.L191	@
.L229:
	movw	r3, #:lower16:73708	@ tmp262,
	movt	r3, #:upper16:73708	@ tmp262,
	ldr	r8, [r4, r3]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r8, #0	@ <variable>.PPicFound,
	bne	.L177	@,
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	ip, #3	@ <variable>.picture_structure,
	beq	.L180	@,
	movw	lr, #:lower16:72024	@ tmp265,
	movt	lr, #:upper16:72024	@ tmp265,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	rsbs	r6, r7, #1	@ tmp268, <variable>.CodecInfo.Second_Field
	movcc	r6, #0	@ tmp268
	str	r6, [r4, lr]	@ tmp268, <variable>.CodecInfo.Second_Field
	b	.L184	@
.L227:
	ldr	r3, [r0, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	r3, #0	@ <variable>.s32firstIdecodedflag,
	beq	.L177	@,
	b	.L187	@
.L226:
	mov	r8, r3	@ ret, <variable>.CodecInfo.RefNum
	bl	vfmw_dprint_nothing	@
	b	.L191	@
.L219:
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.38282, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, r9]	@ D.38282, <variable>.CodecInfo.FwdFsID
	b	.L176	@
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MPEG2DEC_RecycleImage
	.type	MPEG2DEC_RecycleImage, %function
MPEG2DEC_RecycleImage:
	.fnstart
.LFB1952:
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
	beq	.L231	@,
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
.L231:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	MPEG2DEC_RecycleImage, .-MPEG2DEC_RecycleImage
	.align	2
	.global	MPEG2DEC_Init
	.type	MPEG2DEC_Init, %function
MPEG2DEC_Init:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:73688	@ tmp139,
	movt	r5, #:upper16:73688	@ tmp139,
	mov	r4, r0	@ pCtx, pCtx
	mov	r7, r1	@ pstExtraData, pstExtraData
	add	sl, r4, #72704	@, pCtx,
	ldr	r8, [r0, r5]	@ D.39809, <variable>.ImageQue.ResetMagicWord
	movw	r1, #:lower16:73720	@,
	movt	r1, #:upper16:73720	@,
	mov	r6, #1	@ tmp153,
	bl	__memzero	@
	add	r0, sl, #640	@,,
	str	r8, [r4, r5]	@ D.39809, <variable>.ImageQue.ResetMagicWord
	movw	sl, #:lower16:73714	@ tmp152,
	bl	ResetVoQueue	@
	movw	r2, #:lower16:72024	@ tmp158,
	movt	r2, #:upper16:72024	@ tmp158,
	add	r8, r4, #72704	@ tmp146, pCtx,
	movw	r5, #:lower16:73340	@ tmp144,
	movw	r3, #:lower16:73336	@ tmp147,
	movt	r5, #:upper16:73340	@ tmp144,
	movt	r3, #:upper16:73336	@ tmp147,
	movw	ip, #:lower16:73708	@ tmp150,
	movt	sl, #:upper16:73714	@ tmp152,
	movt	ip, #:upper16:73708	@ tmp150,
	movw	r1, #:lower16:73715	@ tmp155,
	movw	r0, #:lower16:72068	@ tmp163,
	movt	r1, #:upper16:73715	@ tmp155,
	movt	r0, #:upper16:72068	@ tmp163,
	str	r6, [r4, r2]	@ tmp153, <variable>.CodecInfo.Second_Field
	movw	r2, #45329	@ tmp160,
	mov	lr, r8	@ tmp149, tmp146
	strb	r6, [r4, sl]	@ tmp153, <variable>.DSDNeedClearQue
	add	lr, lr, #444	@ tmp149, tmp149,
	str	r7, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	add	r8, r8, #256	@ tmp146, tmp146,
	str	lr, [r4, r3]	@ tmp149, <variable>.pSyntaxInfNew
	mov	r3, #0	@ tmp151,
	str	r8, [r4, r5]	@ tmp146, <variable>.pSyntaxInfOld
	mov	lr, #3	@ tmp161,
	strb	r3, [r4, r1]	@ tmp151, <variable>.DSDNeedFlushFrame
	movw	r1, #:lower16:72060	@ tmp167,
	str	r3, [r4, r0]	@ tmp151, <variable>.CodecInfo.HDRState
	movt	r1, #:upper16:72060	@ tmp167,
	strb	lr, [r4, r2]	@ tmp161, <variable>.CodecInfo.Last_FieldStruct
	movw	r2, #:lower16:72000	@ tmp165,
	str	r3, [r4, ip]	@ tmp151, <variable>.PPicFound
	movt	r2, #:upper16:72000	@ tmp165,
	ldr	ip, [r7, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	mov	r0, r4	@, pCtx
	str	r3, [r4, r1]	@ tmp151, <variable>.CodecInfo.Imgbuf_allocated
	str	ip, [r4, r2]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:73696	@ tmp169,
	movt	r3, #:upper16:73696	@ tmp169,
	cmn	r0, #1	@ D.39822,
	str	r0, [r4, r3]	@ D.39822, <variable>.ChanID
	movne	r0, r6	@ D.39826, tmp153
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.39826,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	MPEG2DEC_Init, .-MPEG2DEC_Init
	.align	2
	.global	extra_bit_information
	.type	extra_bit_information, %function
extra_bit_information:
	.fnstart
.LFB1947:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	add	r4, r4, #576	@ pBs, pBs,
	mov	r5, #0	@ Byte_Count,
.L238:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L239	@,
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	bgt	.L238	@,
.L239:
	mov	r0, r5	@, Byte_Count
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	extra_bit_information, .-extra_bit_information
	.align	2
	.global	picture_coding_extension
	.type	picture_coding_extension, %function
picture_coding_extension:
	.fnstart
.LFB1944:
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
	uxtb	r0, r0	@ temp.1486,
	strb	r0, [r5, #4]	@ temp.1486, <variable>.f_code
	sub	ip, r0, #10	@ tmp170, temp.1486,
	uxtb	r1, ip	@ tmp172, tmp170
	cmp	r0, #0	@ temp.1486,
	cmpne	r1, #4	@, tmp172,
	mov	r0, r4	@, pBs
	ldrls	r1, [r6, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r1, r1, #16	@ tmp182, <variable>.CodecInfo.StreamIntegrality,
	strls	r1, [r6, r7]	@ tmp182, <variable>.CodecInfo.StreamIntegrality
	mov	r1, #4	@,
	bl	BsGet	@
	mov	r1, #4	@,
	uxtb	r2, r0	@ temp.1494,
	strb	r2, [r5, #5]	@ temp.1494, <variable>.f_code
	sub	r3, r2, #10	@ tmp184, temp.1494,
	mov	r0, r4	@, pBs
	uxtb	ip, r3	@ tmp186, tmp184
	cmp	r2, #0	@ temp.1494,
	cmpne	ip, #4	@, tmp186,
	movwls	ip, #:lower16:72012	@ tmp193,
	movtls	ip, #:upper16:72012	@ tmp193,
	ldrls	r2, [r6, ip]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrls	r2, r2, #16	@ tmp196, <variable>.CodecInfo.StreamIntegrality,
	strls	r2, [r6, ip]	@ tmp196, <variable>.CodecInfo.StreamIntegrality
	bl	BsGet	@
	uxtb	r0, r0	@ temp.1479,
	strb	r0, [r5, #6]	@ temp.1479, <variable>.f_code
	sub	r1, r0, #10	@ tmp198, temp.1479,
	uxtb	r3, r1	@ tmp200, tmp198
	cmp	r0, #0	@ temp.1479,
	cmpne	r3, #4	@, tmp200,
	bhi	.L246	@,
	movw	r1, #:lower16:72012	@ tmp213,
	movt	r1, #:upper16:72012	@ tmp213,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp216, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp216, <variable>.CodecInfo.StreamIntegrality
.L246:
	mov	r0, r4	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.39707,
	strb	r0, [r5, #7]	@ D.39707, <variable>.f_code
	sub	ip, r0, #10	@ tmp218, D.39707,
	uxtb	r3, ip	@ tmp220, tmp218
	cmp	r0, #0	@ D.39707,
	cmpne	r3, #4	@, tmp220,
	bhi	.L250	@,
	movw	r3, #:lower16:72012	@ tmp207,
	movt	r3, #:upper16:72012	@ tmp207,
	ldr	r0, [r6, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #16	@ tmp210, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r6, r3]	@ tmp210, <variable>.CodecInfo.StreamIntegrality
.L250:
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #8]	@, <variable>.intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.39719,
	strb	ip, [r5, #9]	@ D.39719, <variable>.picture_structure
	cmp	ip, #0	@ D.39719,
	bne	.L254	@,
	movw	r1, #:lower16:72012	@ tmp227,
	movt	r1, #:upper16:72012	@ tmp227,
	ldr	r2, [r6, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	lr, r2, #16	@ tmp230, <variable>.CodecInfo.StreamIntegrality,
	str	lr, [r6, r1]	@ tmp230, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L254:
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
	uxtb	r0, r0	@ D.39742,
	strb	r0, [r5, #3]	@ D.39742, <variable>.composite_display_flag
	cmp	r0, #0	@ D.39742,
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
.LFB1943:
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
	beq	.L256	@,
	ldrb	r8, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r8, #0	@ <variable>.repeat_first_field,
	bne	.L280	@,
.L257:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L260:
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
	beq	.L279	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L279	@,
	mov	r6, #1	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1528, pSyntaxInfNew,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp168,
	beq	.L264	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L279	@,
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, i
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L279	@,
	mov	r6, #2	@ i,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	add	r5, r5, #4	@ ivtmp.1528, ivtmp.1528,
	bgt	.L264	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L261:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r7, #4	@ ivtmp.1528, tmp170,
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L279	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	beq	.L279	@,
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r7, #176]	@, <variable>.frame_center_vertical_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L279	@,
	cmp	r8, r6	@ number_of_frame_center_offsets, i
	ble	.L281	@,
.L264:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r6, r6, r1	@ tmp169, i,
	add	r7, r5, #4	@ tmp170, ivtmp.1528,
	add	r6, r6, r1	@ i, tmp169,
	str	r0, [r5, #164]	@, <variable>.frame_center_horizontal_offset
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L261	@,
.L279:
	movw	r1, #:lower16:72012	@ tmp159,
	movt	r1, #:upper16:72012	@ tmp159,
	ldr	ip, [sl, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r0, ip, #32	@ tmp162, <variable>.CodecInfo.StreamIntegrality,
	str	r0, [sl, r1]	@ tmp162, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L256:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	bne	.L257	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	cmp	r3, #0	@ <variable>.repeat_first_field,
	beq	.L259	@,
.L258:
	mov	r8, #3	@ number_of_frame_center_offsets,
	b	.L260	@
.L280:
	ldrb	ip, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	cmp	ip, #0	@ <variable>.top_field_first,
	bne	.L258	@,
.L259:
	mov	r8, #2	@ number_of_frame_center_offsets,
	b	.L260	@
.L281:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	picture_display_extension, .-picture_display_extension
	.align	2
	.global	quant_matrix_extension
	.type	quant_matrix_extension, %function
quant_matrix_extension:
	.fnstart
.LFB1941:
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
	cmp	r0, #1	@ D.39617,
	str	r0, [sl, #76]	@ D.39617, <variable>.load_intra_quantizer_matrix
	beq	.L300	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.39627,
	str	r0, [sl, #80]	@ D.39627, <variable>.load_non_intra_quantizer_matrix
	beq	.L301	@,
.L285:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L287	@,
	mov	r5, #0	@ i.1590,
.L288:
	mov	r1, #8	@,
	add	r5, r5, #1	@ tmp200, i.1590,
	mov	r0, r4	@, pBs
	add	r5, r5, #1	@ i.1590, tmp200,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1590,
	bne	.L288	@,
.L287:
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r5, #0	@ i.1591,
.L290:
	add	lr, r5, #1	@ tmp199, i.1591,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	add	r5, lr, #1	@ i.1591, tmp199,
	bl	BsGet	@
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	cmp	r5, #64	@ i.1591,
	bne	.L290	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L300:
	movw	r7, #:lower16:.LANCHOR1	@ tmp194,
	movt	r7, #:upper16:.LANCHOR1	@ tmp194,
	mov	r6, #0	@ i,
.L284:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ D.39624, zigzag
	bl	BsGet	@
	add	r2, r6, #1	@ tmp202, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp181, D.39624,
	add	r6, r2, #1	@ i, tmp202,
	add	r3, r8, #150	@ tmp181, tmp181,
	add	ip, r5, r3, asl #2	@, tmp185, pCtx, tmp181,
	str	r0, [ip, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r2]	@ zero_extendqisi2	@ D.39624, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i,
	add	r1, r8, #17920	@ tmp207, D.39624,
	add	r8, r1, #150	@ tmp207, tmp207,
	add	r8, r5, r8, asl #2	@, tmp209, pCtx, tmp207,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L284	@,
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.39627,
	str	r0, [sl, #80]	@ D.39627, <variable>.load_non_intra_quantizer_matrix
	bne	.L285	@,
.L301:
	movw	r7, #:lower16:.LANCHOR1	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp211,
	mov	r6, #0	@ i.1589,
.L286:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, r6]	@ zero_extendqisi2	@ temp.1588, zigzag
	bl	BsGet	@
	add	ip, r6, #1	@ tmp201, i.1589,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp188, temp.1588,
	add	r6, ip, #1	@ i.1589, tmp201,
	add	r2, r8, #214	@ tmp188, tmp188,
	add	r3, r5, r2, asl #2	@, tmp192, pCtx, tmp188,
	str	r0, [r3, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r4	@, pBs
	ldrb	r8, [r7, ip]	@ zero_extendqisi2	@ temp.1588, zigzag
	bl	BsGet	@
	cmp	r6, #64	@ i.1589,
	add	r2, r8, #17920	@ tmp216, temp.1588,
	add	r1, r2, #214	@ tmp216, tmp216,
	add	r8, r5, r1, asl #2	@, tmp218, pCtx, tmp216,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L286	@,
	b	.L285	@
	.fnend
	.size	quant_matrix_extension, .-quant_matrix_extension
	.align	2
	.global	sequence_display_extension
	.type	sequence_display_extension, %function
sequence_display_extension:
	.fnstart
.LFB1940:
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
	cmp	r0, #0	@ D.39580,
	str	r0, [r6, #132]	@ D.39580, <variable>.color_description
	bne	.L307	@,
.L303:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #148]	@, <variable>.display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L304	@,
	movw	lr, #:lower16:72012	@ tmp151,
	movt	lr, #:upper16:72012	@ tmp151,
	ldr	r3, [r5, lr]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, r3, #4	@ tmp154, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, lr]	@ tmp154, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L304:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r6, #152]	@, <variable>.display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L307:
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
	b	.L303	@
	.fnend
	.size	sequence_display_extension, .-sequence_display_extension
	.align	2
	.global	sequence_extension
	.type	sequence_extension, %function
sequence_extension:
	.fnstart
.LFB1939:
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
	mov	r9, r0	@ D.39495,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	sl, r0	@ D.39496,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.39497,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L309	@,
	ldr	lr, [r5, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	ip, lr, #2	@ tmp168, <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r5, r7]	@ tmp168, <variable>.CodecInfo.StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L309:
	mov	r1, #8	@,
	mov	r0, r8	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.39502,
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
	uxtb	r2, r0	@ D.39508,
	add	r0, ip, #1	@, <variable>.frame_rate_extension_n,
	add	r1, r2, #1	@, D.39508,
	strb	r2, [r4, #31]	@ D.39508, <variable>.frame_rate_extension_d
	bl	__aeabi_idiv	@
	ldr	r1, [r4, #88]	@ <variable>.frame_rate_code, <variable>.frame_rate_code
	movw	r3, #:lower16:.LANCHOR0	@ tmp179,
	movt	r3, #:upper16:.LANCHOR0	@ tmp179,
	ldr	r2, [r4, #124]	@ D.39522, <variable>.profile_and_level_indication
	add	ip, r3, r1, asl #2	@, tmp183, tmp179, <variable>.frame_rate_code,
	tst	r2, #128	@ D.39522,
	ldr	r1, [ip, #1100]	@ tmp185, frame_rate_Table
	mul	r3, r1, r0	@ tmp186, tmp185,
	str	r3, [r4, #72]	@ tmp186, <variable>.frame_rate
	bne	.L321	@,
	and	ip, r2, #15	@ tmp194, D.39522,
	ubfx	r1, r2, #4, #3	@ tmp192, D.39522,,
	str	ip, [r4, #44]	@ tmp194, <variable>.level
	str	r1, [r4, #40]	@ tmp192, <variable>.profile
.L312:
	ldr	ip, [r4, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	ldr	r3, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	mov	r1, ip, asl #20	@ tmp196, <variable>.horizontal_size,
	mov	r0, r3, asl #20	@ tmp200, <variable>.vertical_size,
	mov	lr, r1, lsr #20	@ tmp196, tmp196,
	orr	r9, lr, r9, asl #12	@, prephitmp.1630, tmp196, D.39495,
	mov	r2, r0, lsr #20	@ tmp200, tmp200,
	cmp	r9, #0	@ prephitmp.1630,
	orr	sl, r2, sl, asl #12	@, D.39539, tmp200, D.39496,
	str	r9, [r4, #48]	@ prephitmp.1630, <variable>.horizontal_size
	str	sl, [r4, #52]	@ D.39539, <variable>.vertical_size
	beq	.L313	@,
	cmp	sl, #0	@ D.39539,
	bne	.L314	@,
.L313:
	movw	r0, #:lower16:72012	@ tmp203,
	movt	r0, #:upper16:72012	@ tmp203,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r9, r2, #1	@ tmp206, <variable>.CodecInfo.StreamIntegrality,
	str	r9, [r5, r0]	@ tmp206, <variable>.CodecInfo.StreamIntegrality
	ldr	r9, [r4, #48]	@ prephitmp.1630, <variable>.horizontal_size
.L314:
	cmp	r9, #8192	@ prephitmp.1630,
	bhi	.L315	@,
	ldr	lr, [r4, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	cmp	lr, #8192	@ <variable>.vertical_size,
	bls	.L316	@,
.L315:
	movw	r3, #:lower16:72012	@ tmp208,
	movt	r3, #:upper16:72012	@ tmp208,
	movw	ip, #:lower16:g_event_report	@ tmp212,
	movt	ip, #:upper16:g_event_report	@ tmp212,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r1, r0, #1	@ tmp211, <variable>.CodecInfo.StreamIntegrality,
	str	r1, [r5, r3]	@ tmp211, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.556, g_event_report
	cmp	r3, #0	@ g_event_report.556,
	beq	.L316	@,
	movw	lr, #:lower16:73696	@ tmp213,
	movt	lr, #:upper16:73696	@ tmp213,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.556
.L316:
	ldr	r3, [r4, #92]	@ <variable>.bit_rate_value, <variable>.bit_rate_value
	mov	r1, #400	@ tmp217,
	ldr	r0, [r4, #40]	@ <variable>.profile, <variable>.profile
	add	r6, r3, r6, asl #18	@, D.39553, <variable>.bit_rate_value, D.39497,
	str	r6, [r4, #92]	@ D.39553, <variable>.bit_rate_value
	sub	r2, r0, #4	@ tmp222, <variable>.profile,
	ldr	ip, [r4, #96]	@ <variable>.vbv_buffer_size, <variable>.vbv_buffer_size
	mul	r6, r1, r6	@ tmp218, tmp217, D.39553
	cmp	r2, #1	@ tmp222,
	add	r7, ip, r7, asl #10	@, tmp221, <variable>.vbv_buffer_size, D.39502,
	str	r7, [r4, #96]	@ tmp221, <variable>.vbv_buffer_size
	str	r6, [r4, #68]	@ tmp218, <variable>.bit_rate
	bls	.L317	@,
	movw	lr, #:lower16:g_event_report	@ tmp224,
	movt	lr, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [lr, #0]	@ g_event_report.1648, g_event_report
	cmp	r3, #0	@ g_event_report.1648,
	beq	.L318	@,
	movw	ip, #:lower16:73696	@ tmp225,
	movt	ip, #:upper16:73696	@ tmp225,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1648
.L318:
	bl	vfmw_dprint_nothing	@
.L317:
	ldr	r1, [r4, #44]	@ <variable>.level, <variable>.level
	sub	r2, r1, #4	@ tmp227, <variable>.level,
	cmp	r2, #6	@ tmp227,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp229,
	movt	r0, #:upper16:g_event_report	@ tmp229,
	ldr	r3, [r0, #0]	@ g_event_report.1650, g_event_report
	cmp	r3, #0	@ g_event_report.1650,
	beq	.L319	@,
	movw	lr, #:lower16:73696	@ tmp230,
	movt	lr, #:upper16:73696	@ tmp230,
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.1650
.L319:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	vfmw_dprint_nothing	@
.L321:
	and	r0, r2, #15	@ tmp188, D.39522,
	cmp	r0, #5	@ tmp188,
	moveq	r3, #133	@ tmp189,
	moveq	lr, #8	@ tmp190,
	streq	r3, [r4, #40]	@ tmp189, <variable>.profile
	streq	lr, [r4, #44]	@ tmp190, <variable>.level
	b	.L312	@
	.fnend
	.size	sequence_extension, .-sequence_extension
	.align	2
	.global	extension
	.type	extension, %function
extension:
	.fnstart
.LFB1949:
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
	b	.L323	@
.L333:
	.word	.L324
	.word	.L325
	.word	.L326
	.word	.L327
	.word	.L328
	.word	.L323
	.word	.L329
	.word	.L330
	.word	.L331
	.word	.L332
.L327:
	mov	r0, r4	@, pCtx
	bl	copyright_extension	@
.L323:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L332:
	mov	r0, r4	@, pCtx
	bl	picture_temporal_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L324:
	mov	r0, r4	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L325:
	mov	r0, r4	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L326:
	mov	r0, r4	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L328:
	mov	r0, r4	@, pCtx
	bl	sequence_scalable_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L329:
	mov	r0, r4	@, pCtx
	bl	picture_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L330:
	mov	r0, r4	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L331:
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
.LFB1938:
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
	bls	.L338	@,
.L336:
	mov	r0, r5	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L338:
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
	bne	.L336	@,
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
.LFB1937:
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
.LFB1936:
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
	cmp	r0, #1	@ D.39405,
	str	r0, [sl, #76]	@ D.39405, <variable>.load_intra_quantizer_matrix
	beq	.L360	@,
	add	lr, r4, #71680	@ ivtmp.1787, pCtx,
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	add	r1, lr, #604	@ ivtmp.1787, ivtmp.1787,
	add	ip, r6, #64	@ tmp197, tmp198,
	mov	r3, #0	@ i.1790,
.L346:
	ldrb	lr, [ip, r3]	@ zero_extendqisi2	@ tmp183, default_intra_quantizer_matrix
	add	r0, r3, #1	@ tmp206, i.1790,
	mov	r2, r1	@ tmp207, ivtmp.1787
	add	r3, r0, #1	@ i.1790, tmp206,
	cmp	r3, #64	@ i.1790,
	str	lr, [r2], #4	@ tmp183, <variable>.intra_quantizer_matrix
	ldrb	r0, [ip, r0]	@ zero_extendqisi2	@ tmp218, default_intra_quantizer_matrix
	str	r0, [r1, #4]	@ tmp218, <variable>.intra_quantizer_matrix
	add	r1, r2, #4	@ ivtmp.1787, tmp207,
	bne	.L346	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.39418,
	str	r0, [sl, #80]	@ D.39418, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1771,
	movne	ip, #16	@ tmp201,
	beq	.L361	@,
.L350:
	add	r0, r3, #4	@ tmp204, ivtmp.1771,
	add	r3, r4, r3	@ tmp191, pCtx, ivtmp.1771
	add	lr, r4, r0	@ tmp228, pCtx, tmp204
	add	r1, r3, #71680	@ tmp192, tmp191,
	add	r2, lr, #71680	@ tmp230, tmp228,
	add	r3, r0, #4	@ ivtmp.1771, tmp204,
	add	lr, r1, #860	@ tmp192, tmp192,
	add	r0, r2, #860	@ tmp230, tmp230,
	cmp	r3, #256	@ ivtmp.1771,
	str	ip, [lr, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	str	ip, [r0, #0]	@ tmp201, <variable>.non_intra_quantizer_matrix
	bne	.L350	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L360:
	movw	r6, #:lower16:.LANCHOR1	@ tmp198,
	movt	r6, #:upper16:.LANCHOR1	@ tmp198,
	mov	r7, #0	@ i,
.L344:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ D.39412, zigzag
	bl	BsGet	@
	add	ip, r7, #1	@ tmp205, i,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp174, D.39412,
	add	r7, ip, #1	@ i, tmp205,
	add	r2, r8, #150	@ tmp174, tmp174,
	add	r3, r4, r2, asl #2	@, tmp178, pCtx, tmp174,
	str	r0, [r3, #4]	@, <variable>.intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, ip]	@ zero_extendqisi2	@ D.39412, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i,
	add	r1, r8, #17920	@ tmp212, D.39412,
	add	r8, r1, #150	@ tmp212, tmp212,
	add	r8, r4, r8, asl #2	@, tmp214, pCtx, tmp212,
	str	r0, [r8, #4]	@, <variable>.intra_quantizer_matrix
	bne	.L344	@,
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.39418,
	str	r0, [sl, #80]	@ D.39418, <variable>.load_non_intra_quantizer_matrix
	movne	r3, #0	@ ivtmp.1771,
	movne	ip, #16	@ tmp201,
	bne	.L350	@,
.L361:
	mov	r7, #0	@ i.1793,
.L348:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r7]	@ zero_extendqisi2	@ temp.1792, zigzag
	bl	BsGet	@
	add	r3, r7, #1	@ tmp203, i.1793,
	mov	r1, #8	@,
	add	r8, r8, #17920	@ tmp185, temp.1792,
	add	r7, r3, #1	@ i.1793, tmp203,
	add	ip, r8, #214	@ tmp185, tmp185,
	add	r2, r4, ip, asl #2	@, tmp189, pCtx, tmp185,
	str	r0, [r2, #4]	@, <variable>.non_intra_quantizer_matrix
	mov	r0, r5	@, pBs
	ldrb	r8, [r6, r3]	@ zero_extendqisi2	@ temp.1792, zigzag
	bl	BsGet	@
	cmp	r7, #64	@ i.1793,
	add	ip, r8, #17920	@ tmp223, temp.1792,
	add	r1, ip, #214	@ tmp223, tmp223,
	add	r8, r4, r1, asl #2	@, tmp225, pCtx, tmp223,
	str	r0, [r8, #4]	@, <variable>.non_intra_quantizer_matrix
	bne	.L348	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	sequence_header, .-sequence_header
	.align	2
	.global	next_start_code
	.type	next_start_code, %function
next_start_code:
	.fnstart
.LFB1935:
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
	mov	r7, r0	@ D.39325,
	add	r2, r0, #7	@ tmp157, D.39325,
	cmp	r7, #0	@ D.39325,
	mov	r0, r6	@, pcode
	movlt	r7, r2	@ D.39325, tmp157
	mov	r1, r7, asr #3	@, D.39325,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp159,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r3, r0, #7	@ tmp162, D.39331,
	cmp	r0, #0	@ D.39331,
	movlt	r0, r3	@ D.39331, tmp162
	mov	r3, r0, asr #3	@ tmp163, D.39331,
	sub	r7, r3, #3	@ remain_byte, tmp163,
	cmp	r7, #0	@ remain_byte,
	ble	.L363	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r8, r3, #1	@ tmp232, tmp163,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L364	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #1	@ i,
	cmp	r7, r6	@ remain_byte, i
	ble	.L363	@,
	cmp	r8, #0	@ tmp232,
	beq	.L365	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r6	@,
	beq	.L364	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r6, #2	@ i,
	cmp	r7, r6	@ remain_byte, i
	bgt	.L365	@,
	b	.L363	@
.L390:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L364	@,
	bl	BsSkip	@
	cmp	r7, r6	@ remain_byte, i
	ble	.L363	@,
.L365:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r6, r6, #1	@ tmp233, i,
	mov	r1, #8	@,
	add	r6, r6, #1	@ i, tmp233,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L390	@,
.L364:
	mov	r0, #1	@ D.39336,
.L368:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L363:
	movw	r6, #:lower16:71964	@ tmp164,
	movt	r6, #:upper16:71964	@ tmp164,
	ldrsb	r8, [r5, r6]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L366	@,
	movw	r7, #:lower16:71965	@ tmp166,
	movt	r7, #:upper16:71965	@ tmp166,
	ldrsb	r0, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r0, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L366	@,
	movw	sl, #:lower16:71988	@ tmp168,
	movt	sl, #:upper16:71988	@ tmp168,
	ldr	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	beq	.L366	@,
	movw	lr, #:lower16:71984	@ tmp174,
	movt	lr, #:upper16:71984	@ tmp174,
	str	lr, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #4]	@,
	movw	r9, #:lower16:71972	@ tmp170,
	movw	fp, #:lower16:71968	@ tmp173,
	movt	r9, #:upper16:71972	@ tmp170,
	movt	fp, #:upper16:71968	@ tmp173,
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r3, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r0, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	ip, r1, #3	@ tmp175, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, ip, r3	@, tmp175, <variable>.CodecInfo.stMp2Packet.BsVirAddr
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
	sub	r0, ip, #3	@ D.39355, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	sub	r1, r1, #3	@ D.39356, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r0, [r5, lr]	@ D.39355, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	str	r1, [r5, fp]	@ D.39356, <variable>.CodecInfo.stMp2Packet.BsVirAddr
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
	mov	r5, r0	@ pcode.1826,
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	mov	r3, r0	@ D.39358,
	add	r2, r0, #7	@ tmp214, D.39358,
	cmp	r3, #0	@ D.39358,
	mov	r0, r5	@, pcode.1826
	movlt	r3, r2	@ D.39358, tmp214
	mov	r1, r3, asr #3	@, D.39358,
	bl	MP2_SearchStartCode	@
	mov	r1, r0, asl #3	@ tmp216,,
	mov	r0, r4	@, pBs
	bl	BsLongSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.39361,
	add	ip, r0, #7	@ tmp219, D.39361,
	movlt	r0, ip	@ D.39361, tmp219
	mov	r3, r0, asr #3	@ tmp220, D.39361,
	sub	r6, r3, #3	@ remain_byte.1830, tmp220,
	cmp	r6, #0	@ remain_byte.1830,
	ble	.L366	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	and	r7, r3, #1	@ tmp228, tmp220,
	bl	BsShow	@
	cmp	r0, #1	@,
	beq	.L364	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.1825,
	cmp	r6, r5	@ remain_byte.1830, i.1825
	ble	.L366	@,
	cmp	r7, #0	@ tmp228,
	beq	.L367	@,
	mov	r0, r4	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	cmp	r0, r5	@,
	beq	.L364	@,
	mov	r0, r4	@, pBs
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.1825,
	cmp	r6, r5	@ remain_byte.1830, i.1825
	bgt	.L367	@,
	b	.L366	@
.L391:
	bl	BsSkip	@
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	beq	.L364	@,
	bl	BsSkip	@
	cmp	r6, r5	@ remain_byte.1830, i.1825
	ble	.L366	@,
.L367:
	mov	r1, #24	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r5, r5, #1	@ tmp229, i.1825,
	mov	r1, #8	@,
	add	r5, r5, #1	@ i.1825, tmp229,
	cmp	r0, #1	@,
	mov	r0, r4	@, pBs
	bne	.L391	@,
	b	.L364	@
.L366:
	mov	r0, #0	@ D.39336,
	b	.L368	@
	.fnend
	.size	next_start_code, .-next_start_code
	.align	2
	.global	MP2_GetUsrData
	.type	MP2_GetUsrData, %function
MP2_GetUsrData:
	.fnstart
.LFB1934:
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
	add	r9, r0, #7	@ tmp159, D.39226,
	cmp	r0, #0	@ D.39226,
	movlt	r0, r9	@ D.39226, tmp159
	mov	r9, r0, asr #3	@ RemainByte, D.39226,
	cmp	r9, #0	@ RemainByte,
	ble	.L393	@,
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
	beq	.L394	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r4, #1	@ cnt,
	cmp	r9, r4	@ RemainByte, cnt
	mov	r7, r4	@ i, cnt
	strb	r0, [sl, #0]	@, g_tmpusd
	ble	.L398	@,
	cmp	fp, #0	@ tmp387,
	beq	.L397	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r0, r0, #-16777216	@ tmp416,,
	cmp	r0, r4	@ tmp416,
	beq	.L394	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	add	r7, r4, r4	@ i, i,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	mov	r4, r7	@ cnt, i
	bgt	.L397	@,
	b	.L398	@
.L451:
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L396:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp388, i,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp394,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp394,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp378
	ble	.L442	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	add	r7, r7, #1	@ i, tmp388,
	bl	BsGet	@
	cmp	r9, r7	@ RemainByte, i
	ble	.L398	@,
.L397:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp390,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp390,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp378
	ble	.L451	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L396	@
.L442:
	bl	BsGet	@
	add	r7, r7, #1	@ i, tmp388,
	cmp	r9, r7	@ RemainByte, i
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L397	@,
.L398:
	movw	r7, #:lower16:71964	@ tmp367,
	movt	r7, #:upper16:71964	@ tmp367,
	ldrsb	r8, [r5, r7]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r8, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	bne	.L399	@,
	movw	sl, #:lower16:71965	@ tmp165,
	movt	sl, #:upper16:71965	@ tmp165,
	ldrsb	r1, [r5, sl]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.IsLastSeg
	cmp	r1, #0	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg,
	beq	.L399	@,
	movw	r9, #:lower16:71988	@ tmp167,
	movt	r9, #:upper16:71988	@ tmp167,
	ldr	ip, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	cmp	ip, #0	@ <variable>.CodecInfo.stMp2Packet.BsLength,
	bne	.L452	@,
.L399:
	mov	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
	b	.L403	@
.L394:
	mov	r6, #1	@,
	str	r6, [sp, #4]	@, %sfp
.L403:
	movw	r6, #:lower16:72044	@ tmp220,
	movt	r6, #:upper16:72044	@ tmp220,
	ldr	r3, [r5, r6]	@ D.39269, <variable>.CodecInfo.TotalUsrDatNum
	cmp	r3, #3	@ D.39269,
	ble	.L405	@,
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
	str	r7, [sp, #0]	@ tmp12,
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
.L405:
	movw	r6, #:lower16:73696	@ tmp247,
	movt	r6, #:upper16:73696	@ tmp247,
	add	lr, r3, #17920	@ tmp371, prephitmp.1852,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	add	r6, lr, #86	@ tmp371, tmp371,
	bl	GetUsd	@
	movw	ip, #:lower16:72044	@ tmp257,
	movt	ip, #:upper16:72044	@ tmp257,
	add	r3, r5, r6, asl #2	@, tmp253, pCtx, tmp371,
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #17920	@ tmp255, <variable>.CodecInfo.TotalUsrDatNum,
	add	ip, r1, #86	@ tmp255, tmp255,
	add	r2, r5, ip, asl #2	@, tmp261, pCtx, tmp255,
	str	r0, [r3, #4]	@ D.39276, <variable>.CodecInfo.pUsrDatArray
	ldr	r1, [r2, #4]	@ tmp263, <variable>.CodecInfo.pUsrDatArray
	cmp	r1, #0	@ tmp263,
	beq	.L406	@,
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
	strd	r8, [r0, r7]	@ <variable>.pts, D.39276, tmp264
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
	ldr	lr, [r3, #4]	@ tmp305, <variable>.CodecInfo.pUsrDatArray
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	ip, [lr, #1025]	@ <variable>.top_field_first, <variable>.top_field_first
	ldr	r0, [r5, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	add	r1, r5, r6, asl #2	@, tmp337, pCtx, tmp371,
	ldr	r2, [r3, #4]	@ tmp319, <variable>.CodecInfo.pUsrDatArray
	tst	r0, #524288	@ <variable>.CodecInfo.StreamIntegrality,
	movne	r0, #3	@ tmp324,
	moveq	r0, #1	@ tmp332,
	str	r0, [r2, #1036]	@ tmp332, <variable>.from
	ldr	r0, [r1, #4]	@ prephitmp.1854, <variable>.CodecInfo.pUsrDatArray
	ldr	r2, [r0, #1048]	@ prephitmp.1856, <variable>.data_size
	cmp	r2, #1024	@ prephitmp.1856,
	movgt	r2, #1024	@ tmp339,
	strgt	r2, [r0, #1048]	@ tmp339, <variable>.data_size
	ldrgt	r0, [r1, #4]	@ prephitmp.1854, <variable>.CodecInfo.pUsrDatArray
	movw	r1, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	ldrgt	r2, [r0, #1048]	@ prephitmp.1856, <variable>.data_size
	bl	memcpy	@
	movw	r3, #:lower16:g_event_report	@ tmp351,
	movt	r3, #:upper16:g_event_report	@ tmp351,
	ldr	ip, [r3, #0]	@ g_event_report.551, g_event_report
	cmp	ip, #0	@ g_event_report.551,
	beq	.L410	@,
	add	r6, r5, r6, asl #2	@, tmp356, pCtx, tmp371,
	movw	r0, #:lower16:73696	@ tmp359,
	add	r2, sp, #16	@ tmp361,,
	movt	r0, #:upper16:73696	@ tmp359,
	ldr	r3, [r6, #4]	@ tmp358, <variable>.CodecInfo.pUsrDatArray
	mov	r1, #6	@,
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	str	r3, [r2, #-4]!	@ tmp358, para
	blx	ip	@ g_event_report.551
.L410:
	movw	ip, #:lower16:72044	@ tmp362,
	movt	ip, #:upper16:72044	@ tmp362,
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.TotalUsrDatNum, <variable>.CodecInfo.TotalUsrDatNum
	add	r1, r2, #1	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum,
	str	r1, [r5, ip]	@ tmp365, <variable>.CodecInfo.TotalUsrDatNum
.L411:
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L406:
	bl	vfmw_dprint_nothing	@
	b	.L411	@
.L452:
	movw	fp, #:lower16:71984	@,
	movw	lr, #:lower16:71968	@ tmp172,
	movt	fp, #:upper16:71984	@,
	movt	lr, #:upper16:71968	@ tmp172,
	str	fp, [sp, #4]	@, %sfp
	movw	fp, #:lower16:71972	@ tmp169,
	str	lr, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #4]	@, %sfp
	movt	fp, #:upper16:71972	@ tmp169,
	ldr	r3, [sp, #0]	@,
	ldr	r0, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r1, [r5, r2]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	ip, [r5, r3]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	sub	r0, r0, #3	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	sub	r3, r1, #3	@ tmp174, <variable>.CodecInfo.stMp2Packet.BsLength,
	add	r1, r3, ip	@, tmp174, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	bl	memcpy	@
	ldr	r3, [sp, #0]	@,
	ldr	r1, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.BsVirAddr, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	movw	ip, #:lower16:71980	@ tmp185,
	movt	ip, #:upper16:71980	@ tmp185,
	ldr	r2, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	r1, r1, #3	@ D.39258, <variable>.CodecInfo.stMp2Packet.BsVirAddr,
	str	r1, [r5, r3]	@ D.39258, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	ldr	r3, [sp, #4]	@, %sfp
	movw	lr, #:lower16:71976	@ tmp191,
	ldr	r0, [r5, ip]	@ <variable>.CodecInfo.stMp2Packet.BsPhyAddr, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
	movt	lr, #:upper16:71976	@ tmp191,
	add	r2, r2, #3	@ D.39255, <variable>.CodecInfo.stMp2Packet.BsLength,
	str	r8, [r5, fp]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	str	r2, [r5, r3]	@ D.39255, <variable>.CodecInfo.stMp2Packet.BsLength
	sub	fp, r0, #3	@ D.39257, <variable>.CodecInfo.stMp2Packet.BsPhyAddr,
	str	r8, [r5, r9]	@ <variable>.CodecInfo.stMp2Packet.IsLastSeg, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r0, r6	@, pBs
	str	fp, [r5, lr]	@ D.39257, <variable>.CodecInfo.stMp2Packet.BsPhyAddr
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
	add	r9, r0, #7	@ tmp214, D.39259,
	cmp	r0, #0	@ D.39259,
	movlt	r0, r9	@ D.39259, tmp214
	mov	fp, r0, asr #3	@ tmp215, D.39259,
	sub	r9, fp, #3	@ RemainByte.1877, tmp215,
	cmp	r9, #0	@ RemainByte.1877,
	ble	.L399	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	movw	sl, #:lower16:.LANCHOR2	@ tmp376,
	and	fp, fp, #1	@ tmp383, tmp215,
	movt	sl, #:upper16:.LANCHOR2	@ tmp376,
	movw	r8, #1023	@ tmp374,
	bic	ip, r0, #-16777216	@ tmp216,,
	cmp	ip, #1	@ tmp216,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp374
	ble	.L436	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
.L437:
	mov	r7, #1	@ i.1876,
	cmp	r9, r7	@ RemainByte.1877, i.1876
	ble	.L399	@,
	cmp	fp, #0	@ tmp383,
	beq	.L402	@,
	mov	r0, r6	@, pBs
	mov	r1, #24	@,
	bl	BsShow	@
	bic	r3, r0, #-16777216	@ tmp405,,
	cmp	r3, r7	@ tmp405,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L450	@,
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L441:
	add	r7, r7, #1	@ i.1876, tmp384,
	cmp	r9, r7	@ RemainByte.1877, i.1876
	ble	.L399	@,
.L402:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ tmp396,,
	mov	r0, r6	@, pBs
	cmp	r3, #1	@ tmp396,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L400	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
.L401:
	mov	r1, #24	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	add	r7, r7, #1	@ tmp384, i.1876,
	mov	r1, #8	@,
	bic	r2, r0, #-16777216	@ tmp400,,
	mov	r0, r6	@, pBs
	cmp	r2, #1	@ tmp400,
	beq	.L394	@,
	cmp	r4, r8	@ cnt, tmp374
	bgt	.L450	@,
	bl	BsGet	@
	add	r7, r7, #1	@ i.1876, tmp384,
	cmp	r9, r7	@ RemainByte.1877, i.1876
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	bgt	.L402	@,
	b	.L399	@
.L450:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L441	@
.L400:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	b	.L401	@
.L393:
	mov	r4, #0	@ cnt,
	b	.L398	@
.L436:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	strb	r0, [sl, r4]	@, g_tmpusd
	add	r4, r4, #1	@ cnt, cnt,
	b	.L437	@
	.fnend
	.size	MP2_GetUsrData, .-MP2_GetUsrData
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
.LFB1931:
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
	cmp	r0, #0	@ D.39120,
	mov	r1, r0	@ D.39120,
	str	r0, [r4, r3]	@ D.39120, <variable>.CodecInfo.CurFsID
	blt	.L460	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L461	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r0, #0	@ <variable>.pstDecodeFs,
	beq	.L458	@,
	ldr	lr, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	lr, #0	@ <variable>.pstDispOutFs,
	beq	.L458	@,
	ldr	r3, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r3, #0	@ <variable>.pstTfOutFs,
	beq	.L458	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.39138,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L458:
	mov	r0, #1	@ D.39138,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L460:
	movw	r7, #:lower16:72092	@ tmp147,
	movt	r7, #:upper16:72092	@ tmp147,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L455	@,
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
	bne	.L462	@,
.L455:
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
	mov	r0, r5	@ D.39138, tmp184
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L462:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.39136, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.39136, <variable>.CodecInfo.FwdFsID
	b	.L455	@
.L461:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.39138, pLf
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	MP2_GetImageBuffer, .-MP2_GetImageBuffer
	.align	2
	.global	MP2_SetImgFormat
	.type	MP2_SetImgFormat, %function
MP2_SetImgFormat:
	.fnstart
.LFB1928:
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
	ldrb	ip, [r5, #22]	@ zero_extendqisi2	@ D.38901, <variable>.picture_coding_type
	ldrb	lr, [r5, #27]	@ zero_extendqisi2	@ D.38907, <variable>.progressive_sequence
	cmp	ip, #4	@ D.38901,
	ldr	sl, [r5, #128]	@ vfmt, <variable>.video_format
	subne	ip, ip, #1	@ tmp166, D.38901,
	ldr	r3, [r4, #140]	@ D.38908, <variable>.format
	moveq	ip, #0	@ prephitmp.1958,
	andne	ip, ip, #3	@ prephitmp.1958, tmp166,
	cmp	lr, #0	@ D.38907,
	ldrb	r8, [r5, #9]	@ zero_extendqisi2	@ D.38910, <variable>.picture_structure
	movne	r0, #4096	@ prephitmp.1987,
	beq	.L484	@,
.L468:
	movw	r2, #:lower16:73336	@ tmp178,
	movt	r2, #:upper16:73336	@ tmp178,
	orr	r3, r8, r3, lsr #10	@, tmp193, D.38910, D.38908,
	and	sl, sl, #3	@ tmp190, vfmt,
	ldr	r2, [r6, r2]	@ <variable>.pSyntaxInfNew, <variable>.pSyntaxInfNew
	and	r3, r3, #3	@ tmp194, tmp193,
	ldr	r2, [r2, #84]	@ <variable>.aspect_ratio_information, <variable>.aspect_ratio_information
	str	ip, [r4, #136]	@ prephitmp.1958, <variable>.bottom_fld_type
	sub	r2, r2, #1	@ D.40451, <variable>.aspect_ratio_information,
	str	ip, [r4, #132]	@ prephitmp.1958, <variable>.top_fld_type
	cmp	r2, #2	@ D.40451,
	movwls	r1, #:lower16:.LANCHOR0	@ tmp180,
	movtls	r1, #:upper16:.LANCHOR0	@ tmp180,
	addls	r2, r1, r2, asl #2	@, tmp183, tmp180, D.40451,
	movhi	r1, #0	@ prephitmp.1988,
	movhi	r2, r1	@ prephitmp.1990, prephitmp.1988
	ldrls	r1, [r2, #128]	@ prephitmp.1988, CSWTCH.589
	andls	r2, r1, #7	@ pretmp.1989, prephitmp.1988,
	movls	r2, r2, asl #14	@ prephitmp.1990, pretmp.1989,
	cmp	lr, #0	@ D.38907,
	moveq	lr, #256	@ tmp189,
	movne	lr, #0	@ tmp189,
	orr	lr, lr, sl, asl #5	@, tmp192, tmp189, tmp190,
	orr	r3, lr, r3, asl #10	@, tmp196, tmp192, tmp194,
	orr	lr, r3, ip	@ tmp197, tmp196, prephitmp.1958
	orr	r3, lr, r0	@ tmp198, tmp197, prephitmp.1987
	mov	r0, r4	@, pImg
	orr	lr, r3, r2	@ tmp199, tmp198, prephitmp.1990
	str	lr, [r4, #140]	@ tmp199, <variable>.format
	bl	SetAspectRatio	@
	mov	ip, #3	@ tmp200,
	str	ip, [r4, #300]	@ tmp200, <variable>.ImageDnr.video_standard
	mov	r1, #1	@ tmp203,
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	r1, [r4, #295]	@ tmp203, <variable>.ImageDnr.use_pic_qp_en
	cmp	r2, #3	@ <variable>.picture_structure,
	movne	r1, #4	@ iftmp.537,
	moveq	r1, #0	@ iftmp.537,
	strb	r1, [r4, #288]	@ iftmp.537, <variable>.ImageDnr.pic_structure
	mov	r1, #1	@ tmp210,
	ldr	r3, [r6, #4]	@ D.38948, <variable>.pMp2DecParam
	cmp	r3, #0	@ D.38948,
	streqb	r3, [r4, #295]	@ D.38948, <variable>.ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ prephitmp.1959, <variable>.EstmatedPicQp
	moveq	r2, #32	@ tmp209,
	moveq	r3, r2	@ prephitmp.1959, tmp209
	streq	r2, [r4, #304]	@ tmp209, <variable>.ImageDnr.QP_Y
	strb	r1, [r4, #293]	@ tmp210, <variable>.ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ prephitmp.1959, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #308]	@ prephitmp.1959, <variable>.ImageDnr.QP_U
	str	r3, [r4, #312]	@ prephitmp.1959, <variable>.ImageDnr.QP_V
	ldr	r0, [r5, #72]	@ <variable>.frame_rate, <variable>.frame_rate
	str	r0, [r4, #168]	@ <variable>.frame_rate, <variable>.frame_rate
	ldr	ip, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [ip, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L485	@,
.L477:
	ldr	r3, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	str	r3, [r4, #144]	@ <variable>.horizontal_size, <variable>.image_width
	ldr	lr, [r5, #52]	@ <variable>.vertical_size, <variable>.vertical_size
	str	lr, [r4, #148]	@ <variable>.vertical_size, <variable>.image_height
.L479:
	ldr	lr, [r6, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	ip, #25	@ <variable>.eCapLevel,
	beq	.L486	@,
.L480:
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	lr, r2, lsr #1	@ tmp239, <variable>.image_width,
	str	lr, [r4, #160]	@ tmp239, <variable>.disp_center_x
	mov	r1, r3, lsr #1	@ tmp241, <variable>.image_height,
	str	r1, [r4, #164]	@ tmp241, <variable>.disp_center_y
	ldr	r1, [r5, #148]	@ D.39003, <variable>.display_horizontal_size
	cmp	r1, #0	@ D.39003,
	beq	.L481	@,
	ldr	ip, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	ip, #0	@ <variable>.display_vertical_size,
	beq	.L481	@,
	cmp	r2, r1	@ <variable>.image_width, D.39003
	strls	r2, [r4, #152]	@, <variable>.image_width, <variable>.disp_width
	strhi	r1, [r4, #152]	@, D.39003, <variable>.disp_width
	ldr	r2, [r5, #152]	@ <variable>.display_vertical_size, <variable>.display_vertical_size
	cmp	r3, r2	@ <variable>.image_height, <variable>.display_vertical_size
	strls	r3, [r4, #156]	@, <variable>.image_height, <variable>.disp_height
	strhi	r2, [r4, #156]	@, <variable>.display_vertical_size, <variable>.disp_height
	b	.L482	@
.L481:
	str	r2, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	str	r3, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
.L482:
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
.L484:
	cmp	r8, #3	@ D.38910,
	beq	.L487	@,
	movw	r2, #:lower16:72024	@ tmp169,
	movt	r2, #:upper16:72024	@ tmp169,
	ldr	r0, [r6, r2]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r0, #0	@ <variable>.CodecInfo.Second_Field,
	bne	.L470	@,
	cmp	r8, #1	@ D.38910,
	movne	r0, #0	@, tmp173
	moveq	r0, #1	@, tmp173
	mov	r0, r0, asl #12	@ prephitmp.1987, tmp173,
	b	.L468	@
.L470:
	subs	r2, r8, #1	@ tmp176, D.38910,
	movne	r2, #1	@ tmp176
	mov	r0, r2, asl #12	@ prephitmp.1987, tmp176,
	b	.L468	@
.L487:
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	and	r0, r2, #1	@ tmp168, <variable>.top_field_first,
	mov	r0, r0, asl #12	@ prephitmp.1987, tmp168,
	b	.L468	@
.L486:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.38976, <variable>.image_stride
	add	ip, r0, #15	@ tmp226, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, r2, asl #4	@ tmp225, D.38976,
	mov	r1, ip, lsr #4	@ tmp228, tmp226,
	add	ip, r3, r2	@ tmp233, <variable>.luma_phy_addr, D.38976
	str	ip, [r4, #96]	@ tmp233, <variable>.btm_luma_phy_addr
	mul	r1, r1, lr	@ D.38982, tmp228, tmp225
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp230, D.38982, <variable>.luma_phy_addr
	add	r1, r0, r1	@ tmp232, <variable>.luma_vir_addr, D.38982
	add	r2, ip, r2	@ tmp234, tmp230, D.38976
	str	r1, [r4, #36]	@ tmp232, <variable>.chrom_vir_addr
	str	r2, [r4, #100]	@ tmp234, <variable>.btm_chrom_phy_addr
	mov	r0, ip	@, tmp230
	str	ip, [r4, #108]	@ tmp230, <variable>.chrom_phy_addr
	str	ip, [r4, #92]	@ tmp230, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r3, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L480	@
.L485:
	ldr	r3, [r7, #56]	@ D.38964, <variable>.mb_width
	cmp	r3, #0	@ D.38964,
	beq	.L477	@,
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	r0, #0	@ <variable>.mb_height,
	beq	.L477	@,
	movw	ip, #:lower16:73715	@ tmp216,
	movt	ip, #:upper16:73715	@ tmp216,
	ldrb	r1, [r6, ip]	@ zero_extendqisi2	@ <variable>.DSDNeedFlushFrame, <variable>.DSDNeedFlushFrame
	cmp	r1, #0	@ <variable>.DSDNeedFlushFrame,
	beq	.L477	@,
	mov	r1, r3, asl #4	@ tmp220, D.38964,
	str	r1, [r4, #144]	@ tmp220, <variable>.image_width
	ldr	r0, [r7, #60]	@ <variable>.mb_height, <variable>.mb_height
	mov	r2, r0, asl #4	@ tmp222, <variable>.mb_height,
	str	r2, [r4, #148]	@ tmp222, <variable>.image_height
	b	.L479	@
	.fnend
	.size	MP2_SetImgFormat, .-MP2_SetImgFormat
	.align	2
	.global	MPEG2DEC_VDMPostProc
	.type	MPEG2DEC_VDMPostProc, %function
MPEG2DEC_VDMPostProc:
	.fnstart
.LFB1954:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldrb	r0, [r0, #152]	@ zero_extendqisi2	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.Mp2DecParam.EstmatedPicQp
	movw	r5, #:lower16:72192	@ tmp156,
	movt	r5, #:upper16:72192	@ tmp156,
	movw	ip, #:lower16:73336	@ tmp155,
	movt	ip, #:upper16:73336	@ tmp155,
	.pad #12
	sub	sp, sp, #12	@,,
	strb	r0, [r4, r5]	@ <variable>.Mp2DecParam.EstmatedPicQp, <variable>.CodecInfo.EstmatedPicQp
	mov	r8, r1	@ ErrRatio, ErrRatio
	ldr	r5, [r4, ip]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	movw	r7, #:lower16:73696	@ tmp159,
	bl	vfmw_dprint_nothing	@
	movt	r7, #:upper16:73696	@ tmp159,
	mov	r0, r4	@, pCtx
	movw	r6, #:lower16:72096	@ tmp161,
	movt	r6, #:upper16:72096	@ tmp161,
	bl	MP2_RecordVFMWState	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:72092	@ tmp165,
	movt	r2, #:upper16:72092	@ tmp165,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r6, r0	@ pCurImg,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:72088	@ tmp169,
	movt	r3, #:upper16:72088	@ tmp169,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pCurImg,
	beq	.L515	@,
	ldrb	r1, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r8, #0	@ ErrRatio,
	movw	lr, #45328	@ tmp171,
	movlt	r8, #0	@ iftmp.575,
	strb	r1, [r4, lr]	@ <variable>.picture_coding_type, <variable>.CodecInfo.LastDecPicCodingType
	blt	.L492	@,
	cmp	r8, #100	@ ErrRatio,
	movge	r8, #100	@ iftmp.575,
.L492:
	str	r8, [r6, #180]	@ iftmp.575, <variable>.error_level
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r3, #3	@ <variable>.picture_coding_type,
	beq	.L493	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	cmp	r8, r2	@ iftmp.575, <variable>.s32RefErrThr
	bhi	.L516	@,
.L493:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r4, #8	@, pCtx,
	movw	r1, #45320	@,
	bl	__memzero	@
	ldrb	r0, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	r0, #3	@ <variable>.picture_structure,
	beq	.L501	@,
	movw	lr, #:lower16:72024	@ tmp235,
	movt	lr, #:upper16:72024	@ tmp235,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #1	@ <variable>.CodecInfo.Second_Field,
	movne	r0, #1	@ D.39984,
	beq	.L501	@,
.L490:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L501:
	movw	r3, #:lower16:72028	@ tmp219,
	movt	r3, #:upper16:72028	@ tmp219,
	movw	r0, #:lower16:72028	@ tmp222,
	movw	lr, #:lower16:72032	@ tmp224,
	ldr	ip, [r4, r3]	@ temp.2073, <variable>.CodecInfo.pUsrDatArray
	movt	lr, #:upper16:72032	@ tmp224,
	movt	r0, #:upper16:72028	@ tmp222,
	mov	r1, #0	@ tmp223,
	cmp	ip, #0	@ temp.2073,
	strne	ip, [r6, #192]	@ temp.2073, <variable>.p_usrdat
	movne	ip, #0	@ tmp221,
	strne	ip, [r4, r3]	@ tmp221, <variable>.CodecInfo.pUsrDatArray
	str	r1, [r4, r0]	@ tmp223, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72032	@ tmp227,
	ldr	r2, [r4, lr]	@ temp.2075, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72032	@ tmp227,
	movw	r0, #:lower16:72036	@ tmp229,
	movt	r0, #:upper16:72036	@ tmp229,
	cmp	r2, r1	@ temp.2075,
	strne	r2, [r6, #196]	@ temp.2075, <variable>.p_usrdat
	strne	r1, [r4, lr]	@ tmp223, <variable>.CodecInfo.pUsrDatArray
	mov	lr, #0	@ tmp228,
	str	lr, [r4, r3]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	movw	r1, #:lower16:72036	@ tmp232,
	ldr	ip, [r4, r0]	@ temp.2076, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:72036	@ tmp232,
	movw	r3, #:lower16:72040	@ tmp234,
	movt	r3, #:upper16:72040	@ tmp234,
	cmp	ip, lr	@ temp.2076,
	strne	ip, [r6, #200]	@ temp.2076, <variable>.p_usrdat
	mov	ip, #0	@ tmp233,
	strne	lr, [r4, r0]	@ tmp228, <variable>.CodecInfo.pUsrDatArray
	str	ip, [r4, r1]	@ tmp233, <variable>.CodecInfo.pUsrDatArray
	movw	r1, #:lower16:72040	@ tmp239,
	ldr	r2, [r4, r3]	@ D.40027, <variable>.CodecInfo.pUsrDatArray
	movt	r1, #:upper16:72040	@ tmp239,
	cmp	r2, ip	@ D.40027,
	strne	r2, [r6, #204]	@ D.40027, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strne	ip, [r4, r3]	@ tmp233, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72044	@ tmp241,
	movt	r3, #:upper16:72044	@ tmp241,
	mov	ip, #0	@ tmp240,
	str	ip, [r4, r1]	@ tmp240, <variable>.CodecInfo.pUsrDatArray
	str	ip, [r4, r3]	@ tmp240, <variable>.CodecInfo.TotalUsrDatNum
	ldr	r2, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L502	@,
	ldrb	lr, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	lr, #3	@ <variable>.picture_coding_type,
	beq	.L502	@,
	movw	r2, #:lower16:72088	@ tmp246,
	movt	r2, #:upper16:72088	@ tmp246,
	movw	r0, #:lower16:72100	@ tmp247,
	movt	r0, #:upper16:72100	@ tmp247,
	ldr	r1, [r4, r2]	@ prephitmp.2013,
	str	r1, [r4, r0]	@ prephitmp.2013, <variable>.CodecInfo.ToQueFsID
.L504:
	cmn	r1, #1	@ prephitmp.2013,
	beq	.L505	@,
	movw	r6, #:lower16:73696	@ tmp252,
	movt	r6, #:upper16:73696	@ tmp252,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L506	@,
	movw	lr, #:lower16:72100	@ tmp256,
	movt	lr, #:upper16:72100	@ tmp256,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L506	@,
.L505:
	ldrb	r0, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r0, #1	@ <variable>.progressive_sequence,
	beq	.L517	@,
	ldrb	r2, [r5, #18]	@ zero_extendqisi2	@ <variable>.progressive_frame, <variable>.progressive_frame
	cmp	r2, #1	@ <variable>.progressive_frame,
	beq	.L518	@,
	movw	r2, #:lower16:72176	@ tmp339,
	movt	r2, #:upper16:72176	@ tmp339,
	movw	ip, #:lower16:72172	@ tmp342,
	movt	ip, #:upper16:72172	@ tmp342,
	ldr	r1, [r4, r2]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	add	r0, r1, #1	@ temp.2072, <variable>.GopFrmCnt,
	str	r0, [r4, r2]	@ temp.2072, <variable>.GopFrmCnt
	mov	r3, r0, asl #1	@ tmp343, temp.2072,
	str	r3, [r4, ip]	@ tmp343, <variable>.GopFldCnt
.L512:
	movw	r2, #:lower16:72168	@ tmp344,
	movt	r2, #:upper16:72168	@ tmp344,
	movw	r3, #:lower16:72020	@ tmp348,
	movt	r3, #:upper16:72020	@ tmp348,
	ldr	lr, [r4, r2]	@ <variable>.GopFrmCntNoRpt, <variable>.GopFrmCntNoRpt
	mov	r0, #1	@ D.39984,
	add	r1, lr, r0	@ tmp347, <variable>.GopFrmCntNoRpt,
	str	r1, [r4, r2]	@ tmp347, <variable>.GopFrmCntNoRpt
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.Frame_Cnt, <variable>.CodecInfo.Frame_Cnt
	add	lr, ip, r0	@ tmp351, <variable>.CodecInfo.Frame_Cnt,
	str	lr, [r4, r3]	@ tmp351,
	b	.L490	@
.L516:
	movw	r5, #:lower16:73696	@ tmp177,
	movw	r7, #:lower16:72092	@ tmp179,
	movt	r5, #:upper16:73696	@ tmp177,
	movt	r7, #:upper16:72092	@ tmp179,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L494	@,
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
	beq	.L494	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.40015, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.40015, <variable>.CodecInfo.FwdFsID
.L494:
	movw	lr, #:lower16:72052	@ tmp215,
	movt	lr, #:upper16:72052	@ tmp215,
	mov	r1, #0	@ tmp216,
	mov	r0, #1	@ D.39984,
	str	r1, [r4, lr]	@ tmp216,
	b	.L490	@
.L518:
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
	b	.L512	@
.L506:
	movw	r7, #:lower16:73696	@ tmp258,
	movw	r8, #:lower16:72100	@ tmp260,
	movt	r7, #:upper16:73696	@ tmp258,
	movt	r8, #:upper16:72100	@ tmp260,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L515	@,
	ldr	r3, [r6, #180]	@ D.40051, <variable>.error_level
	cmp	r3, #0	@ D.40051,
	beq	.L508	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r0, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r1	@ D.40051, <variable>.s32OutErrThr
	bhi	.L509	@,
.L508:
	movw	r7, #:lower16:73696	@ tmp264,
	movw	r8, #:lower16:72100	@ tmp266,
	movt	r7, #:upper16:73696	@ tmp264,
	movt	r8, #:upper16:72100	@ tmp266,
	bl	vfmw_dprint_nothing	@
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
	cmp	r0, #1	@ D.40056,
	beq	.L510	@,
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
	mov	r0, r5	@ D.39984, tmp275
	b	.L490	@
.L502:
	movw	r3, #:lower16:72096	@ tmp250,
	movt	r3, #:upper16:72096	@ tmp250,
	movw	ip, #:lower16:72100	@ tmp251,
	movt	ip, #:upper16:72100	@ tmp251,
	ldr	r1, [r4, r3]	@ prephitmp.2013,
	str	r1, [r4, ip]	@ prephitmp.2013, <variable>.CodecInfo.ToQueFsID
	b	.L504	@
.L517:
	movw	r3, #:lower16:72176	@ tmp319,
	movt	r3, #:upper16:72176	@ tmp319,
	ldrb	ip, [r5, #16]	@ zero_extendqisi2	@ <variable>.repeat_first_field, <variable>.repeat_first_field
	movw	r2, #:lower16:72172	@ tmp326,
	ldr	r1, [r4, r3]	@ <variable>.GopFrmCnt, <variable>.GopFrmCnt
	movt	r2, #:upper16:72172	@ tmp326,
	ldrb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	add	lr, r1, #1	@ tmp320, <variable>.GopFrmCnt,
	add	r1, lr, ip	@ tmp323, tmp320, <variable>.repeat_first_field
	add	lr, r1, r0	@ D.40072, tmp323, <variable>.top_field_first
	str	lr, [r4, r3]	@ D.40072, <variable>.GopFrmCnt
	mov	ip, lr, asl #1	@ tmp327, D.40072,
	str	ip, [r4, r2]	@ tmp327, <variable>.GopFldCnt
	b	.L512	@
.L509:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	mov	sl, #0	@ tmp301,
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
	b	.L505	@
.L515:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.39984, pToQueImg
	b	.L490	@
.L510:
	movw	r3, #:lower16:73704	@ tmp292,
	movt	r3, #:upper16:73704	@ tmp292,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r4, r3]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	lr, r1, #1	@ tmp295, <variable>.numOutputFrame,
	str	lr, [r4, r3]	@ tmp295, <variable>.numOutputFrame
	str	r0, [ip, #732]	@ D.40056, <variable>.s32firstIdecodedflag
	b	.L505	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MPEG2DEC_GetRemainImg
	.type	MPEG2DEC_GetRemainImg, %function
MPEG2DEC_GetRemainImg:
	.fnstart
.LFB1953:
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
	beq	.L520	@,
	movw	r7, #:lower16:73696	@ tmp146,
	movw	r6, #:lower16:72092	@ tmp148,
	movt	r7, #:upper16:73696	@ tmp146,
	movt	r6, #:upper16:72092	@ tmp148,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L520	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L531	@,
.L520:
	add	r1, r4, #72704	@, pCtx,
	add	r0, r1, #640	@,,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	GetVoLastImageID	@
.L531:
	mov	r0, r4	@, pCtx
	mov	r7, #0	@ tmp158,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp154,
	movt	r3, #:upper16:72028	@ tmp154,
	movw	r1, #:lower16:72028	@ tmp157,
	movw	r0, #:lower16:72032	@ tmp159,
	movt	r1, #:upper16:72028	@ tmp157,
	ldr	ip, [r4, r3]	@ temp.2120, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72032	@ tmp159,
	movw	r6, #:lower16:72032	@ tmp162,
	movt	r6, #:upper16:72032	@ tmp162,
	cmp	ip, #0	@ temp.2120,
	strne	ip, [r5, #192]	@ temp.2120, <variable>.p_usrdat
	movne	ip, #0	@ tmp156,
	strne	ip, [r4, r3]	@ tmp156, <variable>.CodecInfo.pUsrDatArray
	str	r7, [r4, r1]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72036	@ tmp164,
	ldr	r2, [r4, r0]	@ temp.2125, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp164,
	mov	r1, #0	@ tmp163,
	cmp	r2, r7	@ temp.2125,
	strne	r2, [r5, #196]	@ temp.2125, <variable>.p_usrdat
	movw	r2, #:lower16:72036	@ tmp167,
	strne	r7, [r4, r0]	@ tmp158, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72036	@ tmp167,
	str	r1, [r4, r6]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movw	r7, #:lower16:72040	@ tmp169,
	ldr	r3, [r4, ip]	@ temp.2126, <variable>.CodecInfo.pUsrDatArray
	movt	r7, #:upper16:72040	@ tmp169,
	mov	r6, #0	@ tmp168,
	cmp	r3, r1	@ temp.2126,
	strne	r3, [r5, #200]	@ temp.2126, <variable>.p_usrdat
	movw	r3, #:lower16:72040	@ tmp172,
	strne	r1, [r4, ip]	@ tmp163, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72040	@ tmp172,
	str	r6, [r4, r2]	@ tmp168, <variable>.CodecInfo.pUsrDatArray
	movw	ip, #:lower16:72044	@ tmp174,
	ldr	r0, [r4, r7]	@ D.39926, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72044	@ tmp174,
	mov	r1, #1	@ tmp176,
	cmp	r0, r6	@ D.39926,
	mov	r2, r1	@, tmp176
	strne	r0, [r5, #204]	@ D.39926, <variable>.p_usrdat
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
	beq	.L525	@,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L520	@
.L525:
	ldr	lr, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	lr, #100	@ <variable>.error_level,
	bhi	.L520	@,
	ldr	r0, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #31	@ <variable>.image_width,
	bls	.L520	@,
	ldr	r2, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r2, #31	@ <variable>.image_height,
	bls	.L520	@,
	mov	r0, r6	@, tmp173
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	MPEG2DEC_GetRemainImg, .-MPEG2DEC_GetRemainImg
	.align	2
	.type	MP2_FlushFrameToVo, %function
MP2_FlushFrameToVo:
	.fnstart
.LFB1923:
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
	beq	.L542	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, r7	@, FsID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L543	@,
.L534:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L543:
	mov	r0, r4	@, pCtx
	movw	r7, #:lower16:72032	@ tmp153,
	bl	MP2_SetImgFormat	@
	movw	r3, #:lower16:72028	@ tmp148,
	movt	r3, #:upper16:72028	@ tmp148,
	movt	r7, #:upper16:72032	@ tmp153,
	movw	r0, #:lower16:72028	@ tmp151,
	movt	r0, #:upper16:72028	@ tmp151,
	ldr	r2, [r4, r3]	@ temp.2160, <variable>.CodecInfo.pUsrDatArray
	mov	r6, #0	@ tmp152,
	movw	r1, #:lower16:72032	@ tmp156,
	movt	r1, #:upper16:72032	@ tmp156,
	cmp	r2, #0	@ temp.2160,
	strne	r2, [r5, #192]	@ temp.2160, <variable>.p_usrdat
	movne	r2, #0	@ tmp150,
	strne	r2, [r4, r3]	@ tmp150, <variable>.CodecInfo.pUsrDatArray
	str	r6, [r4, r0]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movw	r3, #:lower16:72036	@ tmp158,
	ldr	ip, [r4, r7]	@ temp.2161, <variable>.CodecInfo.pUsrDatArray
	movt	r3, #:upper16:72036	@ tmp158,
	mov	r0, #0	@ tmp157,
	cmp	ip, r6	@ temp.2161,
	strne	ip, [r5, #196]	@ temp.2161, <variable>.p_usrdat
	movw	ip, #:lower16:72036	@ tmp161,
	strne	r6, [r4, r7]	@ tmp152, <variable>.CodecInfo.pUsrDatArray
	movt	ip, #:upper16:72036	@ tmp161,
	str	r0, [r4, r1]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movw	r6, #:lower16:72040	@ tmp163,
	ldr	r2, [r4, r3]	@ temp.2162, <variable>.CodecInfo.pUsrDatArray
	movt	r6, #:upper16:72040	@ tmp163,
	mov	r1, #0	@ tmp162,
	cmp	r2, r0	@ temp.2162,
	strne	r2, [r5, #200]	@ temp.2162, <variable>.p_usrdat
	movw	r2, #:lower16:72040	@ tmp166,
	strne	r0, [r4, r3]	@ tmp157, <variable>.CodecInfo.pUsrDatArray
	movt	r2, #:upper16:72040	@ tmp166,
	str	r1, [r4, ip]	@ tmp162, <variable>.CodecInfo.pUsrDatArray
	movw	r0, #:lower16:72044	@ tmp168,
	ldr	r7, [r4, r6]	@ D.38618, <variable>.CodecInfo.pUsrDatArray
	movt	r0, #:upper16:72044	@ tmp168,
	cmp	r7, r1	@ D.38618,
	strne	r7, [r5, #204]	@ D.38618, <variable>.p_usrdat
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
	beq	.L534	@,
	mov	r0, r4	@, pCtx
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
.L542:
	mvn	r0, #0	@ ret,
	b	.L534	@
	.fnend
	.size	MP2_FlushFrameToVo, .-MP2_FlushFrameToVo
	.align	2
	.global	MP2_GetPictureInfo
	.type	MP2_GetPictureInfo, %function
MP2_GetPictureInfo:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
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
	beq	.L582	@,
.L545:
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L546	@,
	movw	r7, #:lower16:72024	@ tmp172,
	movt	r7, #:upper16:72024	@ tmp172,
	movw	r1, #:lower16:72056	@ tmp176,
	movt	r1, #:upper16:72056	@ tmp176,
	ldr	r8, [r4, r7]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.LastTempReference, <variable>.CodecInfo.LastTempReference
	rsbs	r8, r8, #1	@ tmp174, <variable>.CodecInfo.Second_Field
	movcc	r8, #0	@ tmp174
	str	r8, [r4, r7]	@ tmp174, <variable>.CodecInfo.Second_Field
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	cmp	r2, r3	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	beq	.L547	@,
	cmp	r8, #1	@ tmp174,
	beq	.L583	@,
.L547:
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	movw	r1, #45329	@ tmp207,
	movw	ip, #:lower16:72056	@ tmp210,
	movt	ip, #:upper16:72056	@ tmp210,
	strb	r3, [r4, r1]	@ <variable>.picture_structure, <variable>.CodecInfo.Last_FieldStruct
	movw	r3, #:lower16:72024	@ tmp227,
	ldr	r2, [r5, #156]	@ <variable>.temporal_reference, <variable>.temporal_reference
	movt	r3, #:upper16:72024	@ tmp227,
	str	r2, [r4, ip]	@ <variable>.temporal_reference, <variable>.CodecInfo.LastTempReference
	movw	ip, #:lower16:72048	@ tmp234,
	ldrh	r0, [r5, #56]	@, <variable>.mb_width
	movt	ip, #:upper16:72048	@ tmp234,
	strh	r0, [r4, #160]	@ movhi	@, <variable>.Mp2DecParam.PicWidthInMb
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	lr, #3	@ <variable>.picture_structure,
	ldrne	lr, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldreq	lr, [r5, #64]	@ <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height_progressive_subtract1mb
	ldreq	r2, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	movne	lr, lr, lsr #1	@ tmp214, <variable>.mb_height,
	rsbeq	lr, lr, r2	@ tmp221, <variable>.mb_height_progressive_subtract1mb, <variable>.mb_height
	strh	lr, [r4, #156]	@ movhi	@ tmp221, <variable>.Mp2DecParam.PicHeightInMb
	ldrh	r6, [r5, #60]	@, <variable>.mb_height
	ldr	lr, [r4, ip]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	strh	r6, [r4, #158]	@ movhi	@, <variable>.Mp2DecParam.FrameHeightInMb
	cmp	lr, #1	@ <variable>.CodecInfo.MpegFlag,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ <variable>.frame_pred_frame_dct, <variable>.frame_pred_frame_dct
	strb	r1, [r4, #13]	@ <variable>.frame_pred_frame_dct, <variable>.Mp2DecParam.FramePredFrameDct
	movne	r1, #0	@, tmp236
	moveq	r1, #1	@, tmp236
	ldrb	r2, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	strb	r0, [r4, #12]	@ <variable>.CodecInfo.Second_Field, <variable>.Mp2DecParam.SecondFieldFlag
	strb	r2, [r4, #11]	@ <variable>.picture_structure, <variable>.Mp2DecParam.PictureStructure
	ldrb	r6, [r5, #12]	@ zero_extendqisi2	@ <variable>.concealment_motion_vectors, <variable>.concealment_motion_vectors
	strb	r6, [r4, #15]	@ <variable>.concealment_motion_vectors, <variable>.Mp2DecParam.ConcealmentMotionVectors
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	str	r1, [r4, #188]	@ tmp236, <variable>.Mp2DecParam.Mpeg1Flag
	strb	r3, [r4, #8]	@ <variable>.picture_coding_type, <variable>.Mp2DecParam.PicCodingType
	ldreqb	r3, [r5, #25]	@ zero_extendqisi2	@ <variable>.full_pel_backward_vector, <variable>.full_pel_backward_vector
	streqb	r3, [r4, #9]	@ <variable>.full_pel_backward_vector, <variable>.Mp2DecParam.Mp1BwdmvFullPel
	ldreqb	r3, [r5, #23]	@ zero_extendqisi2	@ <variable>.full_pel_forward_vector, <variable>.full_pel_forward_vector
	streqb	r3, [r4, #10]	@ <variable>.full_pel_forward_vector, <variable>.Mp2DecParam.Mp1FwdmvFullPel
	ldrb	ip, [r5, #4]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	ip, [r4, #20]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r0, [r5, #5]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r0, [r4, #21]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	lr, [r5, #6]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	lr, [r4, #22]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r2, [r5, #7]	@ zero_extendqisi2	@ <variable>.f_code, <variable>.f_code
	strb	r2, [r4, #23]	@ <variable>.f_code, <variable>.Mp2DecParam.Fcode
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	strb	r6, [r4, #14]	@ <variable>.top_field_first, <variable>.Mp2DecParam.TopFieldFirst
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.intra_dc_precision, <variable>.intra_dc_precision
	strb	r1, [r4, #19]	@ <variable>.intra_dc_precision, <variable>.Mp2DecParam.IntraDcPrecision
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ <variable>.q_scale_type, <variable>.q_scale_type
	strb	r3, [r4, #18]	@ <variable>.q_scale_type, <variable>.Mp2DecParam.QuantType
	ldrb	ip, [r5, #14]	@ zero_extendqisi2	@ <variable>.intra_vlc_format, <variable>.intra_vlc_format
	strb	ip, [r4, #17]	@ <variable>.intra_vlc_format, <variable>.Mp2DecParam.IntraVlcFormat
	ldrb	r0, [r5, #15]	@ zero_extendqisi2	@ <variable>.alternate_scan, <variable>.alternate_scan
	strb	r0, [r4, #16]	@ <variable>.alternate_scan, <variable>.Mp2DecParam.AlternateScan
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	cmp	lr, #3	@ <variable>.picture_structure,
	beq	.L552	@,
	movw	lr, #:lower16:72024	@ tmp262,
	movt	lr, #:upper16:72024	@ tmp262,
	ldr	r6, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r6, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L552	@,
.L553:
	movw	r6, #:lower16:73696	@ tmp310,
	movw	r3, #:lower16:72096	@ tmp312,
	movt	r6, #:upper16:73696	@ tmp310,
	movt	r3, #:upper16:72096	@ tmp312,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	movw	ip, #:lower16:72088	@ tmp316,
	movt	ip, #:upper16:72088	@ tmp316,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r2, #:lower16:72092	@ tmp320,
	movt	r2, #:upper16:72092	@ tmp320,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwd,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r7, #0	@, pFwd,
	beq	.L562	@,
	cmp	r0, #0	@ pBwd,
	beq	.L562	@,
	ldr	r2, [r5, #408]	@ D.38548, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38548,
	beq	.L562	@,
	ldr	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r1, #0	@ <variable>.pstTfOutFs,
	beq	.L562	@,
	ldr	lr, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	lr, #0	@ <variable>.pstDispOutFs,
	beq	.L562	@,
	ldr	lr, [r0, #408]	@ D.38554, <variable>.pstDecodeFs
	cmp	lr, #0	@ D.38554,
	ldreq	lr, [r2, #12]	@ iftmp.517, <variable>.PhyAddr
	ldrne	lr, [lr, #12]	@ iftmp.517, <variable>.PhyAddr
	str	lr, [r4, #200]	@ iftmp.517, <variable>.Mp2DecParam.BwdRefPhyAddr
	ldr	ip, [r7, #408]	@ D.38561, <variable>.pstDecodeFs
	cmp	ip, #0	@ D.38561,
	ldreq	ip, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r1, [ip, #12]	@ iftmp.518, <variable>.PhyAddr
	str	r1, [r4, #204]	@ iftmp.518, <variable>.Mp2DecParam.FwdRefPhyAddr
	ldr	r6, [r5, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r6, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, #208]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.CurPicPhyAddr
	ldr	r3, [r5, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r3, [r4, #248]	@ <variable>.PmvAddr, <variable>.Mp2DecParam.PmvColmbPhyAddr
	ldr	lr, [r0, #416]	@ D.38570, <variable>.pstTfOutFs
	cmp	lr, #0	@ D.38570,
	ldreq	lr, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	ip, [lr, #12]	@ iftmp.519, <variable>.PhyAddr
	str	ip, [r4, #220]	@ iftmp.519, <variable>.Mp2DecParam.TfBwdPhyAddr
	ldr	r1, [r7, #416]	@ D.38577, <variable>.pstTfOutFs
	cmp	r1, #0	@ D.38577,
	ldreq	r1, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r6, [r1, #12]	@ iftmp.520, <variable>.PhyAddr
	str	r6, [r4, #224]	@ iftmp.520, <variable>.Mp2DecParam.TfFwdPhyAddr
	ldr	r2, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	r3, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r3, [r4, #228]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.TfCurPhyAddr
	movw	r3, #45320	@ tmp351,
	ldr	lr, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [lr, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, #232]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DispFramePhyAddr
	ldr	r1, [r0, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r1, [r4, #212]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.BwdRefIsFldSave
	ldr	r6, [r7, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	str	r6, [r4, #216]	@ <variable>.stDispImg.is_fld_save, <variable>.Mp2DecParam.FwdRefIsFldSave
	ldr	r2, [r5, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	ldr	lr, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [r4, r3]	@ <variable>.PhyAddr, <variable>.Mp2DecParam.DnrMbInfoStAddr
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r4, #71680	@ ivtmp.2195, pCtx,
	add	r3, r0, #604	@ ivtmp.2195, ivtmp.2195,
	mov	r2, r4	@ ivtmp.2199, pCtx
	mov	r0, #0	@ i,
	ldr	r1, [ip, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r4, #236]	@ <variable>.Stride, <variable>.Mp2DecParam.VahbStride
	ldr	r6, [r5, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r7, [r6, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r7, [r4, #240]	@ <variable>.ChromOffset, <variable>.Mp2DecParam.uv_offset
.L572:
	add	ip, r3, #4	@ tmp374, ivtmp.2195,
	ldr	r5, [r3, #4]	@ tmp379, <variable>.intra_quantizer_matrix
	ldr	r7, [r3, #0]	@ tmp359, <variable>.intra_quantizer_matrix
	add	r0, r0, #2	@ i, i,
	ldr	r6, [r3, #256]	@ tmp361, <variable>.non_intra_quantizer_matrix
	add	r1, r2, #1	@ tmp375, ivtmp.2199,
	ldr	lr, [ip, #256]	@ tmp380, <variable>.non_intra_quantizer_matrix
	cmp	r0, #64	@ i,
	strb	r7, [r2, #88]	@ tmp359, <variable>.Mp2DecParam.IntraQuantTab
	add	r3, ip, #4	@ ivtmp.2195, tmp374,
	strb	r6, [r2, #24]	@ tmp361, <variable>.Mp2DecParam.NonIntraQuantTab
	add	r2, r1, #1	@ ivtmp.2199, tmp375,
	strb	r5, [r1, #88]	@ tmp379, <variable>.Mp2DecParam.IntraQuantTab
	strb	lr, [r1, #24]	@ tmp380, <variable>.Mp2DecParam.NonIntraQuantTab
	bne	.L572	@,
	mov	r0, r4	@, pCtx
	bl	MP2_EstimatePicQp	@
	mov	r3, #1	@ D.38512,
	strb	r0, [r4, #152]	@, <variable>.Mp2DecParam.EstmatedPicQp
	mov	r0, r3	@, D.38512
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L552:
	mov	r0, r4	@, pCtx
	mov	r1, #0	@,
	bl	MP2_GetImageBuffer	@
	subs	r6, r0, #0	@ D.38509,
	beq	.L584	@,
	movw	r2, #:lower16:73696	@ tmp264,
	movw	r7, #:lower16:72096	@ tmp266,
	movt	r2, #:upper16:73696	@ tmp264,
	movt	r7, #:upper16:72096	@ tmp266,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L556	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r6, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r6, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r6, #24]	@ <variable>.DispTime, pImg,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r0, [r6, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r7, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r7, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r1, #0	@,
	str	r0, [r6, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r0, #0	@ tmp283,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [lr, #56]	@ tmp283, <variable>.pstExtraData,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ <variable>.picture_structure, <variable>.picture_structure
	subs	ip, r3, #3	@ tmp285, <variable>.picture_structure,
	movne	ip, #1	@ tmp285
	str	ip, [r6, #128]	@ tmp285, <variable>.is_fld_save
.L556:
	ldrb	r6, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r6, #3	@ <variable>.picture_coding_type,
	beq	.L553	@,
	movw	r3, #:lower16:72052	@ tmp287,
	movt	r3, #:upper16:72052	@ tmp287,
	movw	r6, #:lower16:72088	@ tmp290,
	movw	r5, #:lower16:72092	@ tmp291,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r6, #:upper16:72088	@ tmp290,
	movt	r5, #:upper16:72092	@ tmp291,
	cmp	ip, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r6]	@ prephitmp.2178, <variable>.CodecInfo.FwdFsID
	ldr	r7, [r4, r5]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	ip, #2	@ iftmp.513,
	moveq	ip, #1	@ iftmp.513,
	cmp	r2, r7	@ prephitmp.2178, <variable>.CodecInfo.BwdFsID
	str	ip, [r4, r3]	@ iftmp.513, <variable>.CodecInfo.RefNum
	beq	.L559	@,
	movw	r7, #:lower16:73696	@ tmp293,
	movt	r7, #:upper16:73696	@ tmp293,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r5]	@ prephitmp.2178, <variable>.CodecInfo.BwdFsID
.L559:
	movw	r0, #:lower16:72096	@ tmp300,
	movt	r0, #:upper16:72096	@ tmp300,
	movw	r5, #:lower16:72088	@ tmp298,
	movw	lr, #:lower16:72092	@ tmp299,
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	lr, #:upper16:72092	@ tmp299,
	movt	r5, #:upper16:72088	@ tmp298,
	movw	r6, #:lower16:73696	@ tmp302,
	movt	r6, #:upper16:73696	@ tmp302,
	str	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r5]	@ prephitmp.2178, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
	b	.L553	@
.L584:
	bl	vfmw_dprint_nothing	@
	mov	r3, r6	@ D.38512, D.38509
	mov	r0, r3	@, D.38512
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L562:
	movw	r2, #:lower16:73696	@ tmp335,
	movw	ip, #:lower16:72096	@ tmp337,
	movt	r2, #:upper16:73696	@ tmp335,
	movt	ip, #:upper16:72096	@ tmp337,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ D.38512,
	mov	r0, r3	@, D.38512
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L546:
	movw	r3, #45329	@ tmp191,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Last_FieldStruct, <variable>.CodecInfo.Last_FieldStruct
	cmp	ip, #3	@ <variable>.CodecInfo.Last_FieldStruct,
	beq	.L548	@,
	movw	lr, #:lower16:72024	@ tmp193,
	movt	lr, #:upper16:72024	@ tmp193,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.Second_Field, <variable>.CodecInfo.Second_Field
	cmp	r1, #0	@ <variable>.CodecInfo.Second_Field,
	beq	.L585	@,
.L548:
	movw	r2, #:lower16:72024	@ tmp205,
	movt	r2, #:upper16:72024	@ tmp205,
	mov	r6, #1	@ tmp206,
	str	r6, [r4, r2]	@ tmp206,
	b	.L547	@
.L582:
	ldrb	ip, [r5, #26]	@ zero_extendqisi2	@ <variable>.backward_f_code, <variable>.backward_f_code
	ldrb	r0, [r5, #24]	@ zero_extendqisi2	@ <variable>.forward_f_code, <variable>.forward_f_code
	strb	ip, [r5, #6]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #4]	@ <variable>.forward_f_code, <variable>.f_code
	strb	ip, [r5, #7]	@ <variable>.backward_f_code, <variable>.f_code
	strb	r0, [r5, #5]	@ <variable>.forward_f_code, <variable>.f_code
	b	.L545	@
.L583:
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:73696	@ tmp181,
	movw	ip, #:lower16:72096	@ tmp183,
	movt	r1, #:upper16:73696	@ tmp181,
	movt	ip, #:upper16:72096	@ tmp183,
	mov	r3, #0	@ tmp180,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r8	@, tmp174
	str	r3, [r4, r7]	@ tmp180, <variable>.CodecInfo.Second_Field
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #1	@ <variable>.picture_coding_type,
	beq	.L547	@,
	ldrb	lr, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	lr, #3	@ <variable>.picture_coding_type,
	beq	.L547	@,
	movw	r0, #:lower16:72012	@ tmp187,
	movt	r0, #:upper16:72012	@ tmp187,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orr	r6, r2, #192	@ tmp190, <variable>.CodecInfo.StreamIntegrality,
	str	r6, [r4, r0]	@ tmp190,
	b	.L547	@
.L585:
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:73696	@ tmp195,
	movw	ip, #:lower16:72096	@ tmp197,
	movt	r3, #:upper16:73696	@ tmp195,
	movt	ip, #:upper16:72096	@ tmp197,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	ldrb	r0, [r5, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r0, #1	@ <variable>.picture_coding_type,
	beq	.L548	@,
	ldrb	r1, [r6, #22]	@ zero_extendqisi2	@ <variable>.picture_coding_type, <variable>.picture_coding_type
	cmp	r1, #3	@ <variable>.picture_coding_type,
	movwne	r1, #:lower16:72012	@ tmp201,
	movtne	r1, #:upper16:72012	@ tmp201,
	ldrne	r2, [r4, r1]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	orrne	r2, r2, #192	@ tmp204, <variable>.CodecInfo.StreamIntegrality,
	strne	r2, [r4, r1]	@ tmp204, <variable>.CodecInfo.StreamIntegrality
	b	.L548	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73336	@ tmp153,
	movt	r3, #:upper16:73336	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ pSyntaxInfNew, <variable>.pSyntaxInfNew
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r2, [r3, #48]	@ D.38009, <variable>.horizontal_size
	cmp	r2, #31	@ D.38009,
	bls	.L597	@,
	ldr	r3, [r3, #52]	@ D.38011, <variable>.vertical_size
	cmp	r3, #31	@ D.38011,
	bls	.L597	@,
	ldr	r1, [r0, #0]	@ D.38015, <variable>.pstExtraData
	ldr	r0, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L608	@,
	mov	r4, r2	@ PicWidth, D.38009
	mov	r6, r3	@ PicHeight, D.38011
	mov	r8, #5	@ prephitmp.2282,
	mov	r9, #2	@ PmvNum,
	mov	sl, #3	@ DecFsNum,
.L596:
	mov	r1, #36	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	r7, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp166,
	ldr	ip, [r7, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r4, [sp, #28]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #2]	@ tmp166, FspInstCfg.s32RprEnable
	str	r4, [sp, #12]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #32]	@ PicHeight, FspInstCfg.s32DispFsHeight
	strb	ip, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r6, [sp, #16]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r6, [r7, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #7]	@ prephitmp.2282, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #:lower16:73696	@ tmp177,
	uxtbne	r3, sl	@ iftmp.497, DecFsNum
	strb	r3, [sp, #5]	@ iftmp.497, FspInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r7, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r6, #:upper16:73696	@ tmp177,
	mov	r7, #0	@ tmp175,
	cmp	r1, #24	@ <variable>.eCapLevel,
	mov	r1, sp	@,
	uxtbne	r9, r9	@ iftmp.498, PmvNum
	moveq	r9, #1	@ iftmp.498,
	strb	r9, [sp, #8]	@ iftmp.498, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	strb	r7, [sp, #4]	@ tmp175, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r4, r0, #0	@ D.38058,
	bne	.L605	@,
	ldr	lr, [r5, #0]	@ temp.2305, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	moveq	r0, #1	@ D.38012,
	beq	.L589	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38012, D.38058
	b	.L589	@
.L608:
	ldr	ip, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	ip, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L591	@,
	ldr	r4, [r1, #568]	@ PicWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, r4	@ D.38009, PicWidth
	bhi	.L597	@,
	ldr	r6, [r1, #572]	@ PicHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.38011, PicHeight
	bls	.L593	@,
.L597:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38012,
.L589:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L605:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38012, tmp175
	b	.L589	@
.L591:
	ldr	lr, [r1, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r2, lr	@ D.38009, <variable>.stChanOption.s32MaxWidth
	bhi	.L597	@,
	ldr	r0, [r1, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r0	@ D.38011, <variable>.stChanOption.s32MaxHeight
	bhi	.L597	@,
	ldr	r4, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r4, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L600	@,
	add	r9, sl, #1	@ PmvNum.2297, DecFsNum,
	cmp	r9, #17	@ PmvNum.2297,
	movge	r9, #17	@ PmvNum,
.L600:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2282, <variable>.stChanOption.s32DisplayFrameNum
	mov	r4, r2	@ PicWidth, D.38009
	mov	r6, r3	@ PicHeight, D.38011
	b	.L596	@
.L593:
	ldr	r2, [r1, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	sl, [r1, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	r9, #1	@ PmvNum,
	beq	.L595	@,
	add	r9, sl, #1	@ PmvNum.2293, DecFsNum,
	cmp	r9, #17	@ PmvNum.2293,
	movge	r9, #17	@ PmvNum,
.L595:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ prephitmp.2282, <variable>.stChanOption.s32DisplayFrameNum
	b	.L596	@
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
.LFB1924:
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
	beq	.L611	@,
	cmp	r0, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L644	@,
	movw	r2, #:lower16:72012	@ tmp167,
	movt	r2, #:upper16:72012	@ tmp167,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #3538944	@ <variable>.CodecInfo.StreamIntegrality,
	bne	.L645	@,
.L614:
	mov	lr, #1	@ tmp179,
	str	lr, [r4, r3]	@ tmp179, <variable>.CodecInfo.MpegFlag
.L613:
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:72048	@ tmp180,
	movt	r2, #:upper16:72048	@ tmp180,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	beq	.L646	@,
.L616:
	ldr	r0, [r5, #48]	@ <variable>.horizontal_size, <variable>.horizontal_size
	movw	r3, #:lower16:72048	@ tmp206,
	movt	r3, #:upper16:72048	@ tmp206,
	add	r2, r0, #15	@ tmp203, <variable>.horizontal_size,
	mov	lr, r2, lsr #4	@ tmp205, tmp203,
	str	lr, [r5, #56]	@ tmp205, <variable>.mb_width
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	ip, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L647	@,
.L617:
	ldr	r2, [r5, #52]	@ temp.2349, <variable>.vertical_size
	add	r3, r2, #15	@ tmp212, temp.2349,
	mov	r1, r3, lsr #4	@ iftmp.525, tmp212,
.L618:
	movw	r0, #:lower16:72048	@ tmp215,
	movt	r0, #:upper16:72048	@ tmp215,
	str	r1, [r5, #60]	@ iftmp.525, <variable>.mb_height
	mov	r1, #0	@ tmp214,
	str	r1, [r5, #64]	@ tmp214, <variable>.mb_height_progressive_subtract1mb
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	lr, #2	@ <variable>.CodecInfo.MpegFlag,
	beq	.L648	@,
.L619:
	movw	r0, #:lower16:72060	@ tmp224,
	movt	r0, #:upper16:72060	@ tmp224,
	ldr	r8, [r4, r0]	@ prephitmp.2325, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2325,
	beq	.L641	@,
	ldr	r2, [r5, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r1, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	cmp	r2, r1	@ <variable>.mb_width, <variable>.mb_width
	beq	.L622	@,
.L641:
	ldr	r3, [r4, #0]	@ prephitmp.2327, <variable>.pstExtraData
.L621:
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L649	@,
.L625:
	movw	r8, #:lower16:g_event_report	@ tmp282,
	movt	r8, #:upper16:g_event_report	@ tmp282,
	mov	r7, #0	@ tmp281,
	str	r7, [r3, #728]	@ tmp281, <variable>.s32DSDWaitFlag
	ldr	r3, [r8, #0]	@ g_event_report.531, g_event_report
	cmp	r3, r7	@ g_event_report.531,
	beq	.L632	@,
	ldrh	ip, [r6, #56]	@, <variable>.mb_width
	movw	r2, #:lower16:73696	@ tmp287,
	movt	r2, #:upper16:73696	@ tmp287,
	mov	r1, #2	@,
	strh	ip, [sp, #4]	@ movhi	@, para
	ldrh	lr, [r6, #60]	@, <variable>.mb_height
	strh	lr, [sp, #6]	@ movhi	@, para
	ldrh	r6, [r5, #56]	@, <variable>.mb_width
	strh	r6, [sp, #8]	@ movhi	@, para
	ldrh	r5, [r5, #60]	@, <variable>.mb_height
	strh	r5, [sp, #10]	@ movhi	@, para
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r2, sp, #4	@,,
	blx	r3	@ g_event_report.531
.L632:
	movw	r5, #:lower16:73696	@ tmp290,
	movw	r7, #:lower16:72092	@ tmp292,
	movt	r5, #:upper16:73696	@ tmp290,
	movt	r7, #:upper16:72092	@ tmp292,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L633	@,
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
	bne	.L650	@,
.L633:
	add	r2, r4, #72704	@ D.38754, pCtx,
	movw	r1, #:lower16:72052	@ tmp328,
	add	r5, r2, #640	@ D.38754, D.38754,
	movt	r1, #:upper16:72052	@ tmp328,
	movw	r3, #:lower16:73696	@ tmp331,
	movt	r3, #:upper16:73696	@ tmp331,
	mov	r0, #0	@ tmp329,
	str	r0, [r4, r1]	@ tmp329, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r1, r5	@, D.38754
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2379, <variable>.pstExtraData
	ldr	r6, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r6, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L634	@,
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	beq	.L651	@,
.L634:
	movw	r8, #:lower16:73696	@ tmp339,
	movt	r8, #:upper16:73696	@ tmp339,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L635	@,
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L652	@,
.L636:
	mov	r0, r5	@, D.38754
	bl	ResetVoQueue	@
.L635:
	movw	r5, #:lower16:72060	@ tmp345,
	movw	lr, #:lower16:72076	@ tmp347,
	movt	r5, #:upper16:72060	@ tmp345,
	movt	lr, #:upper16:72076	@ tmp347,
	mov	r1, #0	@ tmp346,
	mov	r0, r4	@, pCtx
	str	r1, [r4, r5]	@ tmp346, <variable>.CodecInfo.Imgbuf_allocated
	str	r1, [r4, lr]	@ tmp346, <variable>.CodecInfo.QueueImageNum
	bl	MP2_ArrangeVHBMem	@
	str	r0, [r4, r5]	@, <variable>.CodecInfo.Imgbuf_allocated
	bl	vfmw_dprint_nothing	@
	ldr	r8, [r4, r5]	@ prephitmp.2325, <variable>.CodecInfo.Imgbuf_allocated
.L624:
	movw	ip, #:lower16:72008	@ tmp351,
	movt	ip, #:upper16:72008	@ tmp351,
	str	r8, [r4, ip]	@ prephitmp.2325, <variable>.CodecInfo.NewSeqInited
.L637:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L644:
	movw	r0, #:lower16:72012	@ tmp162,
	movt	r0, #:upper16:72012	@ tmp162,
	ldr	r1, [r4, r0]	@ tmp164,
	and	r2, r1, #1769472	@ tmp163, tmp164,
	cmp	r2, #589824	@ tmp163,
	beq	.L614	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:72048	@ tmp180,
	movt	r2, #:upper16:72048	@ tmp180,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.MpegFlag, <variable>.CodecInfo.MpegFlag
	cmp	r3, #1	@ <variable>.CodecInfo.MpegFlag,
	bne	.L616	@,
.L646:
	mov	r0, #0	@ tmp193,
	mov	r8, #3	@ tmp186,
	mov	r1, #5	@ tmp192,
	strb	r3, [r5, #28]	@ <variable>.CodecInfo.MpegFlag, <variable>.chroma_format
	strb	r0, [r5, #8]	@ tmp193, <variable>.intra_dc_precision
	strb	r8, [r5, #9]	@ tmp186, <variable>.picture_structure
	str	r1, [r5, #144]	@ tmp192, <variable>.matrix_coefficients
	strb	r3, [r5, #27]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_sequence
	strb	r3, [r5, #18]	@ <variable>.CodecInfo.MpegFlag, <variable>.progressive_frame
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.MpegFlag, <variable>.frame_pred_frame_dct
	strb	r0, [r5, #12]	@ tmp193, <variable>.concealment_motion_vectors
	strb	r0, [r5, #13]	@ tmp193, <variable>.q_scale_type
	strb	r0, [r5, #14]	@ tmp193, <variable>.intra_vlc_format
	strb	r0, [r5, #15]	@ tmp193, <variable>.alternate_scan
	b	.L616	@
.L611:
	movw	lr, #:lower16:72012	@ tmp156,
	movt	lr, #:upper16:72012	@ tmp156,
	movw	r8, #:lower16:1179666	@ tmp157,
	movt	r8, #:upper16:1179666	@ tmp157,
	ldr	ip, [r4, lr]	@ tmp159,
	and	r0, ip, r8	@ tmp157, tmp159, tmp157
	cmp	r0, #1179648	@ tmp157,
	moveq	r0, #2	@ tmp161,
	streq	r0, [r4, r3]	@ tmp161, <variable>.CodecInfo.MpegFlag
	b	.L613	@
.L648:
	ldrb	r8, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r8, r1	@ <variable>.progressive_sequence,
	bne	.L619	@,
	add	r3, r2, #31	@ tmp218, temp.2349,
	add	lr, r2, #15	@ tmp221, temp.2349,
	mov	ip, r3, lsr #5	@ tmp219, tmp218,
	mov	r1, lr, lsr #4	@ tmp222, tmp221,
	rsb	r2, r1, ip, asl #1	@, tmp223, tmp222, tmp219,
	str	r2, [r5, #64]	@ tmp223, <variable>.mb_height_progressive_subtract1mb
	b	.L619	@
.L647:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ <variable>.progressive_sequence, <variable>.progressive_sequence
	cmp	r1, #0	@ <variable>.progressive_sequence,
	bne	.L617	@,
	ldr	r2, [r5, #52]	@ temp.2349, <variable>.vertical_size
	add	ip, r2, #31	@ tmp209, temp.2349,
	mov	r8, ip, lsr #5	@ tmp211, tmp209,
	mov	r1, r8, asl #1	@ iftmp.525, tmp211,
	b	.L618	@
.L645:
	tst	r1, #131072	@ prephitmp.2328,
	mov	r8, #2	@ tmp171,
	orreq	r1, r1, r8	@ prephitmp.2328, prephitmp.2328,
	streq	r1, [r4, r2]	@ prephitmp.2328, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #1048576	@ prephitmp.2328,
	str	r8, [r4, r3]	@ tmp171, <variable>.CodecInfo.MpegFlag
	movweq	r3, #:lower16:72012	@ tmp176,
	movteq	r3, #:upper16:72012	@ tmp176,
	orreq	ip, r1, #16	@ tmp177, prephitmp.2328,
	streq	ip, [r4, r3]	@ tmp177, <variable>.CodecInfo.StreamIntegrality
	b	.L613	@
.L622:
	ldr	ip, [r5, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	lr, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	cmp	ip, lr	@ <variable>.mb_height, <variable>.mb_height
	bne	.L641	@,
	ldr	r3, [r4, #0]	@ prephitmp.2327, <variable>.pstExtraData
	ldr	r0, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r0, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L624	@,
	b	.L621	@
.L650:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, r7]	@ D.38753, <variable>.CodecInfo.BwdFsID
	str	r0, [r4, sl]	@ D.38753, <variable>.CodecInfo.FwdFsID
	b	.L633	@
.L651:
	movw	r7, #:lower16:72060	@ tmp335,
	movt	r7, #:upper16:72060	@ tmp335,
	ldr	r8, [r4, r7]	@ prephitmp.2325, <variable>.CodecInfo.Imgbuf_allocated
	cmp	r8, #0	@ prephitmp.2325,
	bne	.L624	@,
	mov	r0, r5	@, D.38754
	bl	ResetVoQueue	@
	mov	r1, r8	@, prephitmp.2325
	mov	r0, r4	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	movw	ip, #:lower16:72076	@ tmp337,
	movt	ip, #:upper16:72076	@ tmp337,
	str	r6, [r4, ip]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.CodecInfo.QueueImageNum
	mov	r8, r0	@ prephitmp.2325,
	str	r0, [r4, r7]	@ prephitmp.2325, <variable>.CodecInfo.Imgbuf_allocated
	b	.L624	@
.L649:
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
	beq	.L642	@,
	movw	r9, #:lower16:72092	@ tmp242,
	movt	r9, #:upper16:72092	@ tmp242,
	mov	r0, r4	@, pCtx
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L642	@,
	movw	lr, #:lower16:73696	@ tmp247,
	movt	lr, #:upper16:73696	@ tmp247,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:73715	@ tmp252,
	movw	r3, #:lower16:73696	@ tmp255,
	movt	r2, #:upper16:73715	@ tmp252,
	movt	r3, #:upper16:73696	@ tmp255,
	add	r1, sp, #12	@,,
	cmp	r0, #0	@ pImage
	strne	r7, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	mov	r0, #0	@ tmp253,
	strb	r0, [r4, r2]	@ tmp253, <variable>.DSDNeedFlushFrame
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r2, sp, #16	@,,
	add	r3, sp, #20	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r6, #56]	@ <variable>.mb_width, <variable>.mb_width
	ldr	r1, [r2, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	mov	r3, r2	@ prephitmp.2327, <variable>.pstExtraData
	cmp	r1, ip, asl #4	@ <variable>.s32DSDThrWidth, <variable>.mb_width,
	bcc	.L630	@,
	ldr	ip, [r6, #60]	@ <variable>.mb_height, <variable>.mb_height
	ldr	r1, [r2, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	cmp	r1, ip, asl #4	@ <variable>.s32DSDThrHeight, <variable>.mb_height,
	bcc	.L630	@,
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	ldr	r0, [sp, #20]	@ NewNum, NewNum
	add	lr, r0, ip	@ tmp266, NewNum, ReadNum
	cmp	lr, #0	@ tmp266,
	ble	.L625	@,
	movw	r3, #:lower16:73714	@ tmp269,
	movt	r3, #:upper16:73714	@ tmp269,
	mov	r1, #1	@ tmp270,
	strb	r1, [r4, r3]	@ tmp270, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp270, <variable>.s32DSDWaitFlag
	b	.L637	@
.L642:
	strb	sl, [r4, r8]	@ tmp231, <variable>.DSDNeedFlushFrame
	b	.L637	@
.L652:
	movw	r2, #:lower16:73714	@ tmp343,
	movt	r2, #:upper16:73714	@ tmp343,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r1, #1	@ <variable>.DSDNeedClearQue,
	bne	.L635	@,
	b	.L636	@
.L630:
	ldr	lr, [sp, #20]	@ NewNum, NewNum
	cmp	lr, #0	@ NewNum,
	ble	.L653	@,
.L631:
	movw	r3, #:lower16:73714	@ tmp276,
	movt	r3, #:upper16:73714	@ tmp276,
	mov	r1, #0	@ tmp277,
	mov	r0, #1	@ tmp280,
	strb	r1, [r4, r3]	@ tmp277, <variable>.DSDNeedClearQue
	str	r0, [r2, #728]	@ tmp280, <variable>.s32DSDWaitFlag
	b	.L637	@
.L653:
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	ble	.L625	@,
	b	.L631	@
	.fnend
	.size	MP2_GetSequenceInfo, .-MP2_GetSequenceInfo
	.align	2
	.global	GetSliceHdr
	.type	GetSliceHdr, %function
GetSliceHdr:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r6, r0, #71680	@ pBs, pCtx,
	movw	r7, #:lower16:72072	@ tmp159,
	mov	r4, r0	@ pCtx, pCtx
	add	r6, r6, #576	@ pBs, pBs,
	movt	r7, #:upper16:72072	@ tmp159,
	b	.L655	@
.L660:
	bl	BsShow	@
	mov	r5, r0	@ D.38195,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	sub	r5, r5, #256	@ tmp146, D.38195,
	sub	r5, r5, #1	@ tmp146, tmp146,
	mov	r1, #32	@,
	cmp	r5, #174	@ tmp146,
	str	r0, [r4, r7]	@, <variable>.CodecInfo.HDRUsedBits
	mov	r0, r6	@, pBs
	bls	.L665	@,
	bl	BsSkip	@
.L655:
	mov	r0, r4	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r5, r0	@ ret.2408,
	cmp	r5, #1	@ ret.2408,
	mov	r0, r6	@, pBs
	beq	.L660	@,
	cmn	r5, #1	@ ret.2408,
	beq	.L661	@,
.L664:
	mov	r0, r5	@ prephitmp.2397, ret.2408
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L661:
	movw	lr, #:lower16:g_event_report	@ tmp154,
	movt	lr, #:upper16:g_event_report	@ tmp154,
	ldr	r3, [lr, #0]	@ g_event_report.503, g_event_report
	cmp	r3, #0	@ g_event_report.503,
	beq	.L664	@,
	movw	r0, #:lower16:73696	@ tmp155,
	movt	r0, #:upper16:73696	@ tmp155,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.503
	mov	r0, r5	@ prephitmp.2397, ret.2408
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L665:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	mvnle	r5, #0	@ ret.2408,
	ble	.L661	@,
	movw	r0, #:lower16:72008	@ tmp150,
	movt	r0, #:upper16:72008	@ tmp150,
	mov	r2, #0	@ tmp149,
	movw	r3, #:lower16:72068	@ tmp148,
	ldr	r5, [r4, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	movt	r3, #:upper16:72068	@ tmp148,
	cmp	r5, r2	@ <variable>.CodecInfo.NewSeqInited,
	str	r2, [r4, r3]	@ tmp149, <variable>.CodecInfo.HDRState
	bne	.L658	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L664	@,
.L658:
	mov	r0, r4	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ prephitmp.2397,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	GetSliceHdr, .-GetSliceHdr
	.align	2
	.global	MP2_GetHDR
	.type	MP2_GetHDR, %function
MP2_GetHDR:
	.fnstart
.LFB1918:
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
	beq	.L703	@,
	movw	lr, #435	@ tmp208,
	cmp	r6, lr	@ code, tmp208
	cmpne	r6, #440	@, code,
	bne	.L704	@,
.L668:
	movw	r3, #:lower16:72068	@ tmp221,
	movt	r3, #:upper16:72068	@ tmp221,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r7, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L705	@,
.L671:
	movw	r2, #435	@ tmp235,
	cmp	r6, r2	@ code, tmp235
	beq	.L675	@,
.L708:
	bls	.L706	@,
	movw	r3, #437	@ tmp238,
	cmp	r6, r3	@ code, tmp238
	beq	.L677	@,
	bcs	.L707	@,
.L676:
	mov	r0, #0	@ prephitmp.2427,
.L670:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L704:
	cmp	r6, #256	@ code,
	beq	.L668	@,
	movw	r2, #435	@ tmp235,
	cmp	r6, r2	@ code, tmp235
	bne	.L708	@,
.L675:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	sequence_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L709	@,
	movw	r5, #:lower16:72012	@ tmp249,
	movt	r5, #:upper16:72012	@ tmp249,
	ldr	r6, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	ands	r6, r6, #7	@ tmp250, <variable>.CodecInfo.StreamIntegrality,
	bne	.L682	@,
	mov	lr, #1	@ tmp252,
	mov	r2, #188	@,
	mov	r0, fp	@, pSyntaxInfOld
	mov	r1, r9	@, pSyntaxInfNew
	strb	lr, [r9, #0]	@ tmp252, <variable>.valid_flag
	bl	memcpy	@
	movw	r3, #:lower16:72016	@ tmp258,
	movt	r3, #:upper16:72016	@ tmp258,
	mov	r0, r6	@ prephitmp.2427, tmp250
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.SeqCnt, <variable>.CodecInfo.SeqCnt
	add	r2, ip, #1	@ tmp261, <variable>.CodecInfo.SeqCnt,
	str	r2, [r4, r3]	@ tmp261, <variable>.CodecInfo.SeqCnt
	b	.L670	@
.L706:
	cmp	r6, #256	@ code,
	beq	.L673	@,
	bcc	.L672	@,
	cmp	r6, #432	@ code,
	bls	.L672	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r6, r0, #0	@ D.38154,
	beq	.L710	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ prephitmp.2427, D.38154
	b	.L670	@
.L707:
	movw	ip, #439	@ tmp240,
	cmp	r6, ip	@ code, tmp240
	beq	.L676	@,
	cmp	r6, #440	@ code,
	beq	.L711	@,
.L672:
	sub	ip, r6, #256	@ tmp307, code,
	sub	r3, ip, #1	@ tmp307, tmp307,
	cmp	r3, #174	@ tmp307,
	bhi	.L689	@,
	movw	r0, #:lower16:72008	@ tmp309,
	movt	r0, #:upper16:72008	@ tmp309,
	ldr	r7, [r4, r0]	@ <variable>.CodecInfo.NewSeqInited, <variable>.CodecInfo.NewSeqInited
	cmp	r7, #0	@ <variable>.CodecInfo.NewSeqInited,
	beq	.L712	@,
.L690:
	movw	r2, #:lower16:72012	@ tmp313,
	movt	r2, #:upper16:72012	@ tmp313,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #589824	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L676	@,
	movw	r3, #:lower16:72068	@ tmp316,
	movt	r3, #:upper16:72068	@ tmp316,
	orr	ip, r1, #4194304	@ tmp321, <variable>.CodecInfo.StreamIntegrality,
	mov	lr, #1	@ tmp317,
	str	ip, [r4, r2]	@ tmp321, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	mov	r1, r6	@, code
	str	lr, [r4, r3]	@ tmp317, <variable>.CodecInfo.HDRState
	bl	MP2_DecSlice	@
	cmp	r0, #1	@ D.38178,
	beq	.L670	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ prephitmp.2427,
	b	.L670	@
.L711:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L676	@,
	ldr	lr, [sp, #16]	@, %sfp
	movw	r0, #:lower16:72012	@ tmp277,
	movw	ip, #:lower16:g_event_report	@ tmp278,
	movt	r0, #:upper16:72012	@ tmp277,
	movt	ip, #:upper16:g_event_report	@ tmp278,
	str	lr, [r4, r0]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [ip, #0]	@ g_event_report.2453, g_event_report
	cmp	r3, #0	@ g_event_report.2453,
	beq	.L685	@,
.L700:
	movw	ip, #:lower16:73696	@ tmp287,
	movt	ip, #:upper16:73696	@ tmp287,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2457
.L685:
	movw	r1, #:lower16:73696	@ tmp289,
	movt	r1, #:upper16:73696	@ tmp289,
	add	lr, r4, #71680	@, pCtx,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	add	r1, lr, #284	@,,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ prephitmp.2427,
	b	.L670	@
.L705:
	movw	r2, #:lower16:72012	@ tmp223,
	movt	r2, #:upper16:72012	@ tmp223,
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r1, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L671	@,
	movw	r0, #:lower16:73712	@ tmp226,
	movt	r0, #:upper16:73712	@ tmp226,
	orr	r1, r1, #8388608	@ tmp232, <variable>.CodecInfo.StreamIntegrality,
	mov	ip, #0	@ tmp234,
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	mov	r0, r4	@, pCtx
	str	r1, [r4, r2]	@ tmp232, <variable>.CodecInfo.StreamIntegrality
	str	ip, [r4, r3]	@ tmp234, <variable>.CodecInfo.HDRState
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r7	@ prephitmp.2427, <variable>.CodecInfo.HDRState
	b	.L670	@
.L703:
	mov	ip, r5	@, pBs
	add	lr, sp, #52	@,,
	ldmia	ip!, {r0, r1, r2, r3}	@,,,,
	str	lr, [sp, #4]	@, %sfp
	str	ip, [sp, #20]	@, %sfp
	add	ip, sp, #24	@ tmp170,,
	mov	lr, ip	@ tmp329, tmp170
	stmia	lr!, {r0, r1, r2, r3}	@ tmp329,,,,
	ldr	r3, [sp, #20]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	lr, {r0, r1, r2}	@ tmp329,,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp330,,,,
	ldr	ip, [sp, #4]	@, %sfp
	stmia	ip!, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2}	@ tmp329,,,
	stmia	ip, {r0, r1, r2}	@ tmp331,,,
	mov	r1, #32	@,
	add	r0, sp, #52	@,,
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r2, r0	@ D.38095,
	add	r0, sp, #52	@,,
	str	r2, [sp, #12]	@,
	bl	BsGet	@
	ldr	ip, [sp, #12]	@,
	movw	r2, #:lower16:1128615492	@ tmp177,
	movw	r3, #:lower16:1213419593	@ tmp180,
	movt	r2, #:upper16:1128615492	@ tmp177,
	movt	r3, #:upper16:1213419593	@ tmp180,
	cmp	r0, r2	@, tmp177
	cmpeq	ip, r3	@, D.38095, tmp180
	bne	.L668	@,
	movw	r3, #:lower16:72068	@ tmp185,
	movt	r3, #:upper16:72068	@ tmp185,
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.HDRState, <variable>.CodecInfo.HDRState
	cmp	r6, #1	@ <variable>.CodecInfo.HDRState,
	beq	.L713	@,
.L669:
	movw	r3, #:lower16:73713	@ tmp202,
	movt	r3, #:upper16:73713	@ tmp202,
	mov	r2, #1	@ tmp203,
	mov	r0, #0	@ prephitmp.2427,
	strb	r2, [r4, r3]	@ tmp203, <variable>.IsStreamEndFlag
	b	.L670	@
.L673:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	picture_header	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L676	@,
	ldr	r3, [sp, #16]	@, %sfp
	movw	r2, #:lower16:72012	@ tmp285,
	movw	r1, #:lower16:g_event_report	@ tmp286,
	movt	r2, #:upper16:72012	@ tmp285,
	movt	r1, #:upper16:g_event_report	@ tmp286,
	str	r3, [r4, r2]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2457, g_event_report
	cmp	r3, #0	@ g_event_report.2457,
	bne	.L700	@,
	b	.L685	@
.L677:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	extension	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L676	@,
	ldr	lr, [sp, #16]	@, %sfp
	movw	ip, #:lower16:72012	@ tmp299,
	movw	r3, #:lower16:g_event_report	@ tmp300,
	movt	ip, #:upper16:72012	@ tmp299,
	movt	r3, #:upper16:g_event_report	@ tmp300,
	str	lr, [r4, ip]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r3, #0]	@ g_event_report.2465, g_event_report
	cmp	r3, #0	@ g_event_report.2465,
	beq	.L688	@,
	movw	r0, #:lower16:73696	@ tmp301,
	movt	r0, #:upper16:73696	@ tmp301,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2465
.L688:
	movw	r2, #:lower16:73696	@ tmp303,
	movt	r2, #:upper16:73696	@ tmp303,
	add	r1, r4, #71680	@, pCtx,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	mvn	r0, #0	@ prephitmp.2427,
	b	.L670	@
.L682:
	ldrb	r0, [fp, #0]	@ zero_extendqisi2	@ <variable>.valid_flag, <variable>.valid_flag
	cmp	r0, #1	@ <variable>.valid_flag,
	beq	.L714	@,
.L689:
	movw	r0, #:lower16:g_event_report	@ tmp322,
	movt	r0, #:upper16:g_event_report	@ tmp322,
	ldr	r3, [r0, #0]	@ g_event_report.2471, g_event_report
	cmp	r3, #0	@ g_event_report.2471,
	beq	.L676	@,
.L698:
	movw	lr, #:lower16:73696	@ tmp323,
	movt	lr, #:upper16:73696	@ tmp323,
	mov	r1, #113	@,
	mov	r2, #0	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2471
	mov	r0, #0	@ prephitmp.2427,
	b	.L670	@
.L713:
	ldr	r2, [r4, r7]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	tst	r2, #4194304	@ <variable>.CodecInfo.StreamIntegrality,
	beq	.L669	@,
	movw	r1, #:lower16:73713	@ tmp190,
	movt	r1, #:upper16:73713	@ tmp190,
	orr	r0, r2, #8388608	@ tmp199, <variable>.CodecInfo.StreamIntegrality,
	str	sl, [r4, r3]	@ tmp164, <variable>.CodecInfo.HDRState
	str	r0, [r4, r7]	@ tmp199, <variable>.CodecInfo.StreamIntegrality
	mov	r0, r4	@, pCtx
	strb	r6, [r4, r1]	@ <variable>.CodecInfo.HDRState, <variable>.IsStreamEndFlag
	strb	r6, [r4, r8]	@ <variable>.CodecInfo.HDRState, <variable>.IsWaitToDecFlag
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, r6	@ prephitmp.2427, <variable>.CodecInfo.HDRState
	b	.L670	@
.L712:
	mov	r0, r4	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	moveq	r0, r7	@ prephitmp.2427, <variable>.CodecInfo.NewSeqInited
	bne	.L690	@,
	b	.L670	@
.L714:
	mov	r1, fp	@, pSyntaxInfOld
	mov	r2, #188	@,
	mov	r0, r9	@, pSyntaxInfNew
	bl	memcpy	@
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.StreamIntegrality, <variable>.CodecInfo.StreamIntegrality
	movw	r1, #:lower16:g_event_report	@ tmp271,
	movt	r1, #:upper16:g_event_report	@ tmp271,
	bic	r2, r3, #7	@ tmp270, <variable>.CodecInfo.StreamIntegrality,
	str	r2, [r4, r5]	@ tmp270, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r1, #0]	@ g_event_report.2449, g_event_report
	cmp	r3, #0	@ g_event_report.2449,
	bne	.L698	@,
	b	.L676	@
.L710:
	movw	r5, #:lower16:73696	@ tmp293,
	movt	r5, #:upper16:73696	@ tmp293,
	add	r2, r4, #71680	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_event_report	@ tmp297,
	movt	r0, #:upper16:g_event_report	@ tmp297,
	ldr	r3, [r0, #0]	@ g_event_report.2463, g_event_report
	cmp	r3, #0	@ g_event_report.2463,
	mvneq	r0, #0	@ prephitmp.2427,
	beq	.L670	@
.L687:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.38154
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2463
	mvn	r0, #0	@ prephitmp.2427,
	b	.L670	@
.L709:
	ldr	lr, [sp, #16]	@, %sfp
	movw	r1, #:lower16:72012	@ tmp241,
	movw	r0, #:lower16:g_event_report	@ tmp242,
	movt	r1, #:upper16:72012	@ tmp241,
	movt	r0, #:upper16:g_event_report	@ tmp242,
	str	lr, [r4, r1]	@, <variable>.CodecInfo.StreamIntegrality
	ldr	r3, [r0, #0]	@ g_event_report.501, g_event_report
	cmp	r3, #0	@ g_event_report.501,
	bne	.L700	@,
	b	.L685	@
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #72704	@ D.39833, pCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r2, #96	@ D.39833, D.39833,
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, #160	@,
	mov	r0, r5	@, D.39833
	bl	memcpy	@
	movw	r3, #:lower16:73696	@ tmp155,
	movt	r3, #:upper16:73696	@ tmp155,
	add	r0, r4, #45312	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r1, r5	@, D.39833
	ldr	r2, [r4, r3]	@, <variable>.ChanID
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L716	@,
.L728:
	bl	vfmw_dprint_nothing	@
.L731:
	mov	r5, #0	@ ret,
.L717:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L716:
	movw	r3, #:lower16:71968	@ tmp159,
	movw	ip, #:lower16:71984	@ tmp161,
	movt	r3, #:upper16:71968	@ tmp159,
	movt	ip, #:upper16:71984	@ tmp161,
	add	lr, r4, #71680	@, pCtx,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.stMp2Packet.BsVirAddr
	add	r0, lr, #576	@,,
	ldr	r2, [r4, ip]	@, <variable>.CodecInfo.stMp2Packet.BsLength
	bl	BsInit	@
	ldr	r3, [r4, #0]	@ D.39844, <variable>.pstExtraData
	ldr	r1, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L732	@,
.L718:
	movw	r3, #:lower16:72012	@ tmp169,
	movt	r3, #:upper16:72012	@ tmp169,
	movw	lr, #:lower16:72196	@ tmp168,
	movt	lr, #:upper16:72196	@ tmp168,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.StreamIntegrality,
	str	ip, [r4, lr]	@ <variable>.CodecInfo.StreamIntegrality,
.L719:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r5, r0, #1	@ tmp171,,
	cmp	r5, #1	@ tmp171,
	bls	.L733	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r5, r0, #0	@ ret,
	beq	.L734	@,
	cmn	r5, #1	@ ret,
	beq	.L731	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r6, r0, #0	@ D.39869,
	bne	.L725	@,
	movw	r5, #:lower16:73696	@ tmp185,
	movt	r5, #:upper16:73696	@ tmp185,
	add	r1, r4, #71680	@, pCtx,
	add	r1, r1, #284	@,,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	movw	r0, #:lower16:g_event_report	@ tmp189,
	movt	r0, #:upper16:g_event_report	@ tmp189,
	ldr	r3, [r0, #0]	@ g_event_report.2506, g_event_report
	cmp	r3, #0	@ g_event_report.2506,
	beq	.L726	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, r6	@, D.39869
	mov	r1, #113	@,
	blx	r3	@ g_event_report.2506
.L726:
	bl	vfmw_dprint_nothing	@
	mov	r5, #0	@ ret,
	b	.L717	@
.L733:
	ldr	r3, [r4, #0]	@ temp.2497, <variable>.pstExtraData
	ldr	r0, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L721	@,
	ldr	r1, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r1, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L731	@,
.L721:
	movw	ip, #:lower16:73696	@ tmp174,
	movt	ip, #:upper16:73696	@ tmp174,
	add	r2, r4, #71680	@, pCtx,
	mov	r5, #0	@ ret,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r2, #284	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L732:
	ldr	r5, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r5, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L718	@,
	movw	r2, #:lower16:72196	@ tmp166,
	movt	r2, #:upper16:72196	@ tmp166,
	movw	r1, #:lower16:72012	@ tmp165,
	movt	r1, #:upper16:72012	@ tmp165,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.LastStreamIntegrality,
	str	r0, [r4, r1]	@ <variable>.CodecInfo.LastStreamIntegrality,
	b	.L719	@
.L734:
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
	ldr	r3, [r3, #0]	@ g_event_report.564, g_event_report
	cmp	r3, #0	@ g_event_report.564,
	beq	.L723	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r5	@, ret
	blx	r3	@ g_event_report.564
.L723:
	bl	vfmw_dprint_nothing	@
	b	.L717	@
.L725:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r6, r0, #0	@ D.39874,
	beq	.L735	@,
	movw	r3, #:lower16:71960	@ tmp209,
	movt	r3, #:upper16:71960	@ tmp209,
	movw	r0, #:lower16:72064	@ tmp203,
	movw	ip, #:lower16:71984	@ tmp204,
	movt	r0, #:upper16:72064	@ tmp203,
	movt	ip, #:upper16:71984	@ tmp204,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.BsOffset, <variable>.CodecInfo.BsOffset
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.Used_byte, <variable>.CodecInfo.Used_byte
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.stMp2Packet.BsLength
	mov	r5, r5, asl #3	@ ret, <variable>.CodecInfo.BsOffset,
	add	lr, r2, r1	@ tmp208, <variable>.CodecInfo.stMp2Packet.BsLength, <variable>.CodecInfo.Used_byte
	str	lr, [r4, r0]	@ tmp208, <variable>.CodecInfo.Used_byte
	b	.L717	@
.L735:
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
	ldr	r3, [r2, #0]	@ g_event_report.2511, g_event_report
	cmp	r3, #0	@ g_event_report.2511,
	beq	.L728	@,
	mov	r2, r6	@, D.39874
	mov	r1, #113	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	blx	r3	@ g_event_report.2511
	bl	vfmw_dprint_nothing	@
	b	.L731	@
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.global	default_intra_quantizer_matrix
	.global	zigzag
	.global	g_tmpusd
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.508.38410, %object
	.size	C.508.38410, 128
C.508.38410:
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
	.type	CSWTCH.589, %object
	.size	CSWTCH.589, 12
CSWTCH.589:
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
