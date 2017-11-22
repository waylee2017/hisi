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
	.file	"vc1.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o
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
	.global	emp_print
	.type	emp_print, %function
emp_print:
	.fnstart
.LFB1597:
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	stmfd	sp!, {r1, r2, r3}	@,
	.save {r1, r2, r3}
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	bx	lr
	.fnend
	.size	emp_print, .-emp_print
	.align	2
	.global	VC1_CfgVDH
	.type	VC1_CfgVDH, %function
VC1_CfgVDH:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L4	@,
	movw	r4, #10744	@ tmp138,
	ldr	r2, [r0, r4]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #3	@ <variable>.AdvPicSyntax.FCM,
	beq	.L8	@,
.L4:
	movw	ip, #35008	@ tmp153,
	movw	r4, #:lower16:77988	@ tmp152,
	ldr	r2, [r0, ip]	@ <variable>.CurPicMbNum, <variable>.CurPicMbNum
	movt	r4, #:upper16:77988	@ tmp152,
	sub	r5, r2, #1	@ tmp155, <variable>.CurPicMbNum,
	str	r5, [r1, r4]	@ tmp155, <variable>.basic_cfg0
.L5:
	movw	ip, #22584	@ tmp157,
	movw	r2, #:lower16:78096	@ tmp166,
	ldr	r3, [r0, ip]	@ <variable>.DDR_Stride, <variable>.DDR_Stride
	movt	r2, #:upper16:78096	@ tmp166,
	movw	ip, #:lower16:77992	@ tmp156,
	movt	ip, #:upper16:77992	@ tmp156,
	add	r4, r3, #63	@ tmp161, <variable>.DDR_Stride,
	cmp	r3, #0	@ <variable>.DDR_Stride,
	ldr	r5, [r1, r2]	@ <variable>.Compress_en, <variable>.Compress_en
	movw	r2, #:lower16:78044	@ tmp171,
	movlt	r3, r4	@ <variable>.DDR_Stride, tmp161
	movt	r2, #:upper16:78044	@ tmp171,
	mov	r4, r3, asr #6	@ tmp162, <variable>.DDR_Stride,
	and	r5, r5, #1	@ tmp167, <variable>.Compress_en,
	movw	r3, #:lower16:78048	@ tmp180,
	movt	r3, #:upper16:78048	@ tmp180,
	mov	r4, r4, asl #4	@ tmp163, tmp162,
	add	r4, r4, #536870913	@ tmp164, tmp163,
	add	r4, r4, #81920	@ tmp164, tmp164,
	orr	r4, r4, r5, asl #30	@, tmp170, tmp164, tmp167,
	str	r4, [r1, ip]	@ tmp170, <variable>.basic_cfg1
	movw	r4, #35004	@ tmp172,
	movw	ip, #15112	@ tmp195,
	ldr	r5, [r0, r4]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	movw	r4, #1432	@ tmp197,
	add	r5, r5, #1	@ tmp173, <variable>.CurPicMbHeight,
	add	r5, r5, r5, lsr #31	@, tmp177, tmp173, tmp173,
	mov	r5, r5, asr #1	@ tmp178, tmp177,
	mov	r5, r5, asl #5	@ tmp179, tmp178,
	str	r5, [r1, r2]	@ tmp179, <variable>.ystride_1d
	movw	r2, #22564	@ tmp181,
	movw	r5, #22560	@ tmp189,
	ldr	r2, [r0, r2]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r5, [r0, r5]	@ <variable>.MbWidth, <variable>.MbWidth
	add	r2, r2, #1	@ tmp182, <variable>.MbHeight,
	add	r2, r2, r2, lsr #31	@, tmp186, tmp182, tmp182,
	bic	r2, r2, #1	@ tmp188, tmp186,
	mul	r2, r5, r2	@ tmp190, <variable>.MbWidth, tmp188
	movw	r5, #22616	@ tmp194,
	mov	r2, r2, asl #8	@ tmp192, tmp190,
	str	r2, [r1, r3]	@ tmp192, <variable>.uvoffset_1d
	ldr	r2, [r0, r5]	@ <variable>.RefList1.ImgObj, <variable>.RefList1.ImgObj
	movw	r3, #22600	@ tmp216,
	ldr	r5, [r0, r3]	@ <variable>.RefList0.ImgObj, <variable>.RefList0.ImgObj
	movw	r3, #22544	@ tmp206,
	ldr	r3, [r0, r3]	@ <variable>.pCurFrm, <variable>.pCurFrm
	mla	r2, r4, r2, r0	@ tmp198, tmp197, <variable>.RefList1.ImgObj, pCodecInf
	mla	r0, r4, r5, r0	@ tmp220, tmp197, <variable>.RefList0.ImgObj, pCodecInf
	ldr	r5, [r3, #1160]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	and	r5, r5, #3	@ tmp209, <variable>.img.is_fld_save,
	ldr	r3, [r2, ip]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	mov	r5, r5, asl #4	@ tmp211, tmp209,
	ldr	r2, [r0, ip]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	and	ip, r3, #3	@ tmp202, <variable>.img.is_fld_save,
	mov	r0, #0	@ tmp229,
	strb	r0, [r1, #69]	@ tmp229, <variable>.ff_apt_en
	orr	r3, r5, ip, asl #2	@, tmp214, tmp211, tmp202,
	and	r2, r2, #3	@ tmp224, <variable>.img.is_fld_save,
	orr	r0, r3, r2	@ tmp227, tmp214, tmp224
	strb	r0, [r1, #68]	@ tmp227, <variable>.ref_pic_type
	ldmfd	sp!, {r4, r5}
	bx	lr
.L8:
	movw	r3, #35004	@ tmp141,
	movw	ip, #35000	@ tmp148,
	ldr	r4, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	movw	r3, #:lower16:77988	@ tmp140,
	ldr	ip, [r0, ip]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movt	r3, #:upper16:77988	@ tmp140,
	add	r2, r4, #1	@ tmp142, <variable>.CurPicMbHeight,
	add	r5, r2, r2, lsr #31	@, tmp146, tmp142, tmp142,
	mov	r4, r5, asr #1	@ tmp147, tmp146,
	mul	r2, ip, r4	@ tmp149, <variable>.CurPicMbWidth, tmp147
	sub	r5, r2, #1	@ tmp151, tmp149,
	str	r5, [r1, r3]	@ tmp151, <variable>.basic_cfg0
	b	.L5	@
	.fnend
	.size	VC1_CfgVDH, .-VC1_CfgVDH
	.align	2
	.type	VC1_Vfmw_GenerateIntensityMap, %function
VC1_Vfmw_GenerateIntensityMap:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #31	@ LUMSHIFT,
	subgt	r2, r2, #64	@ LUMSHIFT, LUMSHIFT,
	cmp	r1, #0	@ LUMSCALE,
	addne	r1, r1, #32	@ iScale, LUMSCALE,
	rsbeq	r2, r2, r2, asl #25	@, tmp184, LUMSHIFT, LUMSHIFT,
	mvneq	r1, #63	@ iScale,
	movne	r2, r2, asl #6	@ iShift, LUMSHIFT,
	moveq	r2, r2, asl #7	@ tmp185, tmp184,
	addeq	r2, r2, #16320	@ iShift, tmp185,
	cmp	r3, #0	@ YcFlg,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	bne	.L13	@,
	add	r2, r2, #32	@ ivtmp.697, iShift,
.L14:
	add	ip, r2, r1	@ ivtmp.697, ivtmp.697, iScale
	mov	r5, r2, asr #6	@ j.712, ivtmp.697,
	add	r4, r3, #1	@ tmp195, i,
	bic	r5, r5, r5, asr #31	@ j.716, j.712
	mov	r2, ip, asr #6	@ j.712, ivtmp.697,
	cmp	r5, #255	@ j.716,
	movge	r5, #255	@ tmp186,
	bic	r2, r2, r2, asr #31	@ j.716, j.712
	strb	r5, [r0, r3]	@ tmp186,* i
	add	r3, r4, #1	@ i, tmp195,
	cmp	r2, #255	@ j.716,
	movge	r2, #255	@ tmp201,
	cmp	r3, #256	@ i,
	strb	r2, [r0, r4]	@ tmp201,
	add	r2, ip, r1	@ ivtmp.697, ivtmp.697, iScale
	bne	.L14	@,
.L17:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L13:
	rsb	r2, r1, r1, asl #25	@, tmp190, iScale, iScale,
	mov	r3, #0	@ i.715,
	mov	ip, r2, asl #7	@ tmp191, tmp190,
	add	r4, ip, #8192	@ ivtmp.707, tmp191,
	add	r2, r4, #32	@ ivtmp.707, ivtmp.707,
.L16:
	add	ip, r2, r1	@ ivtmp.707, ivtmp.707, iScale
	mov	r5, r2, asr #6	@ j.713, ivtmp.707,
	add	r4, r3, #1	@ tmp196, i.715,
	bic	r5, r5, r5, asr #31	@ j.717, j.713
	mov	r2, ip, asr #6	@ j.713, ivtmp.707,
	cmp	r5, #255	@ j.717,
	movge	r5, #255	@ tmp193,
	bic	r2, r2, r2, asr #31	@ j.717, j.713
	strb	r5, [r0, r3]	@ tmp193,* i.715
	add	r3, r4, #1	@ i.715, tmp196,
	cmp	r2, #255	@ j.717,
	movge	r2, #255	@ tmp206,
	cmp	r3, #256	@ i.715,
	strb	r2, [r0, r4]	@ tmp206,
	add	r2, ip, r1	@ ivtmp.707, ivtmp.707, iScale
	bne	.L16	@,
	b	.L17	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.global	VC1_SetCurPicResolutionInfo
	.type	VC1_SetCurPicResolutionInfo, %function
VC1_SetCurPicResolutionInfo:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1	@ RESPIC,
	beq	.L25	@,
	cmp	r1, #2	@ RESPIC,
	beq	.L26	@,
	cmp	r1, #0	@ RESPIC,
	beq	.L31	@,
	movw	r2, #22560	@ tmp160,
	movw	r3, #22564	@ tmp168,
	ldr	ip, [r0, r2]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	add	r2, ip, #1	@ tmp161, <variable>.MbWidth,
	add	r3, r1, #1	@ tmp169, <variable>.MbHeight,
	add	ip, r2, r2, lsr #31	@, tmp164, tmp161, tmp161,
	add	r3, r3, r3, lsr #31	@, tmp172, tmp169, tmp169,
	mov	r2, ip, asr #1	@ prephitmp.731, tmp164,
.L30:
	movw	r1, #35000	@ tmp166,
	mov	ip, r3, asr #1	@ tmp173, tmp172,
	str	r2, [r0, r1]	@ prephitmp.731, <variable>.CurPicMbWidth
	movw	r1, #35004	@ tmp167,
	str	ip, [r0, r1]	@ tmp173, <variable>.CurPicMbHeight
.L27:
	movw	r1, #35000	@ tmp182,
	movw	r3, #35004	@ tmp177,
	ldr	ip, [r0, r1]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movw	r1, #34992	@ tmp174,
	ldr	r3, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asl #4	@ tmp175, prephitmp.731,
	str	r2, [r0, r1]	@ tmp175, <variable>.CurPicWidth
	movw	r2, #35008	@ tmp180,
	mov	r1, r3, asl #4	@ tmp179, <variable>.CurPicMbHeight,
	mul	r3, ip, r3	@ tmp185, <variable>.CurPicMbWidth, <variable>.CurPicMbHeight
	movw	ip, #34996	@ tmp176,
	str	r1, [r0, ip]	@ tmp179, <variable>.CurPicHeight
	str	r3, [r0, r2]	@ tmp185, <variable>.CurPicMbNum
	bx	lr	@
.L31:
	movw	r1, #22560	@ tmp136,
	movw	r3, #22564	@ tmp139,
	ldr	r2, [r0, r1]	@ prephitmp.731, <variable>.MbWidth
	movw	ip, #35000	@ tmp137,
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #35004	@ tmp138,
	str	r2, [r0, ip]	@ prephitmp.731, <variable>.CurPicMbWidth
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	b	.L27	@
.L26:
	movw	r1, #22564	@ tmp154,
	movw	r2, #22560	@ tmp151,
	ldr	r3, [r0, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r2, [r0, r2]	@ prephitmp.731, <variable>.MbWidth
	add	ip, r3, #1	@ tmp155, <variable>.MbHeight,
	add	r3, ip, ip, lsr #31	@, tmp158, tmp155, tmp155,
	b	.L30	@
.L25:
	movw	r1, #22560	@ tmp141,
	movw	r3, #22564	@ tmp149,
	ldr	r2, [r0, r1]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #35004	@ tmp148,
	add	ip, r2, #1	@ tmp142, <variable>.MbWidth,
	add	r2, ip, ip, lsr #31	@, tmp145, tmp142, tmp142,
	movw	ip, #35000	@ tmp147,
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asr #1	@ prephitmp.731, tmp145,
	str	r2, [r0, ip]	@ prephitmp.731, <variable>.CurPicMbWidth
	b	.L27	@
	.fnend
	.size	VC1_SetCurPicResolutionInfo, .-VC1_SetCurPicResolutionInfo
	.align	2
	.global	VC1_Vfmw_UserData
	.type	VC1_Vfmw_UserData, %function
VC1_Vfmw_UserData:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VC1_Vfmw_UserData, .-VC1_Vfmw_UserData
	.align	2
	.global	VC1_Vfmw_UpdateAdvSPS
	.type	VC1_Vfmw_UpdateAdvSPS, %function
VC1_Vfmw_UpdateAdvSPS:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	r0, #10590	@ tmp140,
	ldrh	r3, [r1, #238]	@ D.37989, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	mov	r6, r1	@ pSyntax, pSyntax
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_WIDTH, D.37989
	moveq	r1, #0	@ Ret,
	beq	.L36	@,
	adds	r1, r3, #15	@ tmp143, D.37989,
	movw	r2, #22560	@ tmp142,
	addmi	ip, r3, #30	@, tmp144, D.37989,
	movpl	ip, r1	@, tmp144, tmp143
	movw	r3, #22576	@ tmp147,
	mov	r1, #1	@ Ret,
	mov	r0, ip, asr #4	@ tmp146, tmp144,
	str	r0, [r4, r2]	@ tmp146, <variable>.MbWidth
	ldrh	ip, [r6, #238]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	str	ip, [r4, r3]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.DispPicWidth
.L36:
	movw	r0, #10592	@ tmp149,
	ldrh	r3, [r6, #240]	@ D.37997, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_HEIGHT, D.37997
	beq	.L37	@,
	adds	r2, r3, #15	@ tmp152, D.37997,
	movw	ip, #22564	@ tmp151,
	addmi	r1, r3, #30	@, tmp153, D.37997,
	movpl	r1, r2	@, tmp153, tmp152
	movw	lr, #22580	@ tmp156,
	mov	r3, r1, asr #4	@ tmp155, tmp153,
	str	r3, [r4, ip]	@ tmp155, <variable>.MbHeight
	ldrh	r5, [r6, #240]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	str	r5, [r4, lr]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.DispPicHeight
.L38:
	add	r1, r6, #16	@, pSyntax,
	add	r6, r6, #188	@ tmp165, pSyntax,
	mov	r2, #172	@,
	add	r0, r4, #10368	@, pCodecInf,
	bl	memcpy	@
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp167,,,,
	add	ip, r4, #10496	@ tmp164, pCodecInf,
	add	ip, ip, #44	@ tmp164, tmp164,
	mov	r5, #1	@ Ret.801,
	mov	r4, ip	@ tmp168, tmp164
	stmia	r4!, {r0, r1, r2, r3}	@ tmp168,,,,
	mov	ip, r4	@ tmp170, tmp168
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp169,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp171,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r6, {r0, r1, r2}	@ tmp171,,,
	stmia	ip, {r0, r1, r2}	@ tmp172,,,
	mov	r0, r5	@, Ret.801
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L37:
	cmp	r1, #1	@ Ret,
	movne	r5, #0	@ Ret.801,
	beq	.L38	@,
	mov	r0, r5	@, Ret.801
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1_Vfmw_UpdateAdvSPS, .-VC1_Vfmw_UpdateAdvSPS
	.align	2
	.global	VC1_Vfmw_UpdataLastPicRNDCTRL
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL, %function
VC1_Vfmw_UpdataLastPicRNDCTRL:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L43	@,
	movw	r1, #10603	@ tmp143,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ D.38159, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.38159,
	cmpne	r3, #4	@, D.38159,
	moveq	r3, #1	@ prephitmp.818,
	moveq	r2, r3	@ prephitmp.816, prephitmp.818
	beq	.L45	@,
	cmp	r3, #1	@ D.38159,
	beq	.L48	@,
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ prephitmp.816, <variable>.LastPicRNDCTRL
	mov	r3, r2	@ prephitmp.818, prephitmp.816
.L45:
	movw	ip, #10622	@ tmp154,
	strb	r2, [r0, #10]	@ prephitmp.816, <variable>.LastPicRNDCTRL
	strb	r3, [r0, ip]	@ prephitmp.818, <variable>.SMPPicSyntax.RNDCTRL
.L43:
	mov	r0, #1	@,
	bx	lr	@
.L48:
	ldrsb	r2, [r0, #10]	@ <variable>.LastPicRNDCTRL, <variable>.LastPicRNDCTRL
	rsbs	r2, r2, #1	@ prephitmp.816, <variable>.LastPicRNDCTRL
	movcc	r2, #0	@ prephitmp.816
	mov	r3, r2	@ prephitmp.818, prephitmp.816
	b	.L45	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL, .-VC1_Vfmw_UpdataLastPicRNDCTRL
	.align	2
	.global	VC1_Vfmw_DecPQUANT
	.type	VC1_Vfmw_DecPQUANT, %function
VC1_Vfmw_DecPQUANT:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #132
	sub	sp, sp, #132	@,,
	mov	r4, r1	@ PqIndex, PqIndex
	mov	r5, r0	@ Quantizer, Quantizer
	mov	r2, #128	@,
	mov	r0, sp	@,
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	bl	memcpy	@
	cmp	r5, #0	@ Quantizer,
	addeq	r3, sp, #128	@,,
	addeq	r4, r3, r4, asl #2	@, tmp143,, PqIndex,
	ldreq	r4, [r4, #-128]	@ PqIndex, PQuantIdex
	mov	r0, r4	@, PqIndex
	add	sp, sp, #132	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VC1_Vfmw_DecPQUANT, .-VC1_Vfmw_DecPQUANT
	.align	2
	.global	VC1_GetPacketState
	.type	VC1_GetPacketState, %function
VC1_GetPacketState:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:78278	@ tmp136,
	movt	r3, #:upper16:78278	@ tmp136,
	ldrsb	r0, [r0, r3]	@ <variable>.CodecInfo.IsWaitToDec, <variable>.CodecInfo.IsWaitToDec
	cmp	r0, #1	@ <variable>.CodecInfo.IsWaitToDec,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VC1_GetPacketState, .-VC1_GetPacketState
	.align	2
	.global	VC1_SetCodeInfo
	.type	VC1_SetCodeInfo, %function
VC1_SetCodeInfo:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:81370	@ tmp138,
	movt	r3, #:upper16:81370	@ tmp138,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	movw	r2, #:lower16:81400	@ tmp137,
	movt	r2, #:upper16:81400	@ tmp137,
	cmp	r3, #8	@ <variable>.CodecInfo.PreParseInfo.CodecVersion,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #80896	@ D.38263, pCtx,
	add	r0, r0, #508	@ D.38263, D.38263,
	str	r0, [r4, r2]	@ D.38263, <variable>.CodecInfo.pBs
	beq	.L62	@,
	movw	ip, #:lower16:78284	@ tmp146,
	movw	r2, #:lower16:78283	@ tmp149,
	movt	ip, #:upper16:78284	@ tmp146,
	movt	r2, #:upper16:78283	@ tmp149,
	mov	r5, #0	@ tmp147,
	strb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	r5, [r4, ip]	@ tmp147, <variable>.CodecInfo.PostCresent
.L58:
	movw	r2, #:lower16:81368	@ tmp153,
	movt	r2, #:upper16:81368	@ tmp153,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L63	@,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	BsInit	@
.L63:
	movw	r6, #:lower16:81392	@ tmp158,
	movt	r6, #:upper16:81392	@ tmp158,
	ldr	r2, [r1, #20]	@, <variable>.BsLength
	movw	r5, #:lower16:81396	@ tmp165,
	ldr	r1, [r1, #0]	@, <variable>.BsVirAddr
	movt	r5, #:upper16:81396	@ tmp165,
	bl	BsInit	@
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.PreParseInfo.FrmWidth
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.PreParseInfo.FrmHeight
	movw	lr, #:lower16:100832	@ tmp157,
	adds	r8, r2, #15	@ tmp159, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	movt	lr, #:upper16:100832	@ tmp157,
	addmi	r8, r2, #30	@, tmp161, <variable>.CodecInfo.PreParseInfo.FrmWidth,
	adds	r7, r3, #15	@ tmp166, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	addmi	r7, r3, #30	@, tmp168, <variable>.CodecInfo.PreParseInfo.FrmHeight,
	movw	ip, #:lower16:100836	@ tmp164,
	movw	r6, #:lower16:100848	@ tmp171,
	movt	ip, #:upper16:100836	@ tmp164,
	movt	r6, #:upper16:100848	@ tmp171,
	movw	r5, #:lower16:100852	@ tmp174,
	movt	r5, #:upper16:100852	@ tmp174,
	add	r0, r4, #80896	@, pCtx,
	movw	r1, #:lower16:81371	@,
	movt	r1, #:upper16:81371	@,
	str	r2, [r4, r6]	@ <variable>.CodecInfo.PreParseInfo.FrmWidth, <variable>.CodecInfo.DispPicWidth
	add	r1, r4, r1	@, pCtx,
	str	r3, [r4, r5]	@ <variable>.CodecInfo.PreParseInfo.FrmHeight, <variable>.CodecInfo.DispPicHeight
	mov	r2, #16	@,
	mov	r3, r8, asr #4	@ tmp163, tmp161,
	add	r0, r0, #536	@,,
	str	r3, [r4, lr]	@ tmp163, <variable>.CodecInfo.MbWidth
	mov	lr, r7, asr #4	@ tmp170, tmp168,
	str	lr, [r4, ip]	@ tmp170, <variable>.CodecInfo.MbHeight
	bl	memcpy	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L62:
	movw	r2, #:lower16:78284	@ tmp140,
	movw	r3, #:lower16:78283	@ tmp143,
	movt	r2, #:upper16:78284	@ tmp140,
	movt	r3, #:upper16:78283	@ tmp143,
	mov	ip, #1	@ tmp141,
	strb	ip, [r4, r2]	@ tmp141, <variable>.CodecInfo.PostCresent
	mov	ip, #6	@ tmp144,
	strb	ip, [r4, r3]	@ tmp144, <variable>.CodecInfo.CodecVersion
	b	.L58	@
	.fnend
	.size	VC1_SetCodeInfo, .-VC1_SetCodeInfo
	.align	2
	.global	VC1_ClearCurPacket
	.type	VC1_ClearCurPacket, %function
VC1_ClearCurPacket:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pVc1Packet, pVc1Packet
	ldr	r1, [r1, #28]	@, <variable>.StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4, #8]	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L65	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L65:
	mov	r0, r4	@, pVc1Packet
	mov	r1, #36	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
	.fnend
	.size	VC1_ClearCurPacket, .-VC1_ClearCurPacket
	.align	2
	.global	VC1_ClearCurPic
	.type	VC1_ClearCurPic, %function
VC1_ClearCurPic:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r7, r0	@ pCodeInfo, pCodeInfo
	mov	r6, r1	@ ChanID, ChanID
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	beq	.L68	@,
	movw	r8, #22644	@ tmp171,
	ldr	r0, [r0, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r7, #22528	@ ivtmp.959, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #124	@ ivtmp.959, ivtmp.959,
	b	.L72	@
.L71:
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.959, ivtmp.959,
	cmp	lr, r5	@ <variable>.SlcNum, i
	ble	.L75	@,
.L72:
	ldr	r1, [r4, #36]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #0]	@ <variable>.pStream2, <variable>.pStream2
	add	r5, r5, #1	@ i, i,
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L71	@,
	ldr	ip, [r4, #24]	@ <variable>.Phy_addr2, <variable>.Phy_addr2
	cmp	ip, #0	@ <variable>.Phy_addr2,
	beq	.L71	@,
	ldr	r1, [r4, #40]	@, <variable>.StreamID2
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.959, ivtmp.959,
	cmp	lr, r5	@ <variable>.SlcNum, i
	bgt	.L72	@,
.L75:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L68:
	add	r1, r0, #34816	@, pCodeInfo,
	mov	r0, r6	@, ChanID
	add	r1, r1, #124	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_ClearCurPacket	@
	.fnend
	.size	VC1_ClearCurPic, .-VC1_ClearCurPic
	.align	2
	.global	VC1_Vfmw_BuildRefList
	.type	VC1_Vfmw_BuildRefList, %function
VC1_Vfmw_BuildRefList:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r5, r0, #22528	@ tmp200, pCodecInf,
	.pad #516
	sub	sp, sp, #516	@,,
	mov	r4, r0	@ pCodecInf, pCodecInf
	mov	r7, r1	@ PicType, PicType
	add	r0, r5, #64	@, tmp200,
	mov	r1, #16	@,
	mov	sl, r3	@ IsTop, IsTop
	mov	r8, r2	@ SndFld, SndFld
	bl	__memzero	@
	add	r0, r5, #80	@, tmp200,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrsb	r3, [r4, #4]	@ D.36062, <variable>.PicStructure
	cmp	r3, #0	@ D.36062,
	cmpne	r3, #2	@, D.36062,
	bne	.L77	@,
	cmp	r7, #1	@ PicType,
	beq	.L139	@,
	cmp	r7, #2	@ PicType,
	beq	.L140	@,
.L110:
	movw	r0, #22596	@ tmp600,
	mov	ip, #0	@ tmp599,
	movw	r1, #22612	@ tmp598,
	str	ip, [r4, r0]	@ tmp599, <variable>.RefList0.ListLen
	mov	r0, #1	@ D.36210,
	str	ip, [r4, r1]	@ tmp599, <variable>.RefList1.ListLen
.L93:
	add	sp, sp, #516	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L77:
	movw	r5, #10704	@ tmp390,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r6, #1	@ <variable>.AdvPicSyntax.TFF,
	beq	.L141	@,
	movw	r5, #10741	@ tmp400,
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r6, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L142	@,
.L97:
	movw	r0, #22552	@ tmp407,
	ldr	lr, [r4, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [lr, #1208]	@ TopRefIdx, <variable>.img.image_id
	mov	r6, r5	@ BotRefIdx, TopRefIdx
.L96:
	cmp	r7, #1	@ PicType,
	beq	.L143	@,
.L98:
	cmp	r7, #2	@ PicType,
	bne	.L110	@,
	cmp	r8, #0	@ SndFld,
	movw	lr, #22596	@ tmp520,
	movw	r3, #22612	@ tmp518,
	movw	r0, #22592	@ tmp522,
	movw	r2, #22593	@ tmp525,
	mov	r1, #0	@ tmp523,
	mov	r5, #1	@ tmp526,
	strb	r1, [r4, r0]	@ tmp523, <variable>.RefList0.FldFlag
	str	r7, [r4, lr]	@ PicType, <variable>.RefList0.ListLen
	str	r7, [r4, r3]	@ PicType, <variable>.RefList1.ListLen
	strb	r5, [r4, r2]	@ tmp526, <variable>.RefList0.FldFlag
	beq	.L111	@,
	cmp	sl, #0	@ IsTop,
	beq	.L112	@,
.L111:
	movw	r2, #22552	@ tmp535,
	ldr	r1, [r4, r2]	@ <variable>.pRef,
	ldr	r2, [r1, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
.L137:
	movw	lr, #22600	@ tmp533,
	movw	r5, #22548	@ tmp544,
	str	r2, [r4, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	ip, #22609	@ tmp540,
	ldr	lr, [r4, r5]	@ <variable>.pRef, <variable>.pRef
	movw	r2, #22608	@ tmp537,
	mov	r0, #0	@ tmp538,
	mov	r1, #1	@ tmp541,
	strb	r0, [r4, r2]	@ tmp538, <variable>.RefList1.FldFlag
	movw	r3, #10828	@ tmp553,
	strb	r1, [r4, ip]	@ tmp541, <variable>.RefList1.FldFlag
	movw	r5, #22616	@ tmp545,
	ldr	r1, [lr, #1208]	@ temp.1239, <variable>.img.image_id
	movw	r2, #22544	@ tmp552,
	ldr	r3, [r4, r3]	@ D.36152, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	ip, #22620	@ tmp546,
	movw	r0, #22600	@ tmp550,
	str	r1, [r4, r5]	@ temp.1239, <variable>.RefList1.ImgObj
	cmp	r3, #1	@ D.36152,
	ldr	r5, [lr, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
	ldr	lr, [r4, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r0, [r4, r0]	@ FwdRefIdx.1243, <variable>.RefList0.ImgObj
	str	r5, [r4, ip]	@ <variable>.img.image_id, <variable>.RefList1.ImgObj
	ldr	ip, [lr, #1208]	@ CurRefIdx.1246, <variable>.img.image_id
	bls	.L144	@,
.L115:
	cmp	r3, #0	@ D.36152,
	cmpne	r3, #2	@, D.36152,
	beq	.L117	@,
.L119:
	movw	r7, #1432	@ tmp564,
	mov	r3, r4	@ ivtmp.1131, pCodecInf
	mla	sl, r7, ip, r4	@ ivtmp.1148, tmp564, CurRefIdx.1246, pCodecInf
	mov	fp, #0	@ i.1262,
	mla	r8, r7, r0, r4	@ ivtmp.1129, tmp564, FwdRefIdx.1243, pCodecInf
	mla	r9, r7, r1, r4	@ ivtmp.1139, tmp564, temp.1239, pCodecInf
	add	ip, sl, #13952	@ ivtmp.1148, ivtmp.1148,
	add	r0, r8, #13952	@ ivtmp.1129, ivtmp.1129,
	add	r1, r9, #13952	@ ivtmp.1139, ivtmp.1139,
.L118:
	ldrb	r8, [r0, #3]	@ zero_extendqisi2	@ tmp574, <variable>.IntensityConvertTab
	add	sl, r4, fp	@ D.39082, pCodecInf, i.1262
	add	r2, r0, #1	@ tmp626, ivtmp.1129,
	add	lr, r3, #1	@ tmp627, ivtmp.1131,
	add	r6, r1, #1	@ tmp628, ivtmp.1139,
	add	r5, ip, #1	@ tmp629, ivtmp.1148,
	strb	r8, [r3, #13]	@ tmp574, <variable>.IntensityConvertTab
	add	fp, fp, #1	@ tmp625, i.1262,
	ldrb	r7, [r0, #259]	@ zero_extendqisi2	@ tmp576, <variable>.IntensityConvertTab
	add	r8, r4, fp	@ D.39082, pCodecInf, tmp625
	add	fp, fp, #1	@ i.1262, tmp625,
	cmp	fp, #256	@ i.1262,
	strb	r7, [r3, #269]	@ tmp576, <variable>.IntensityConvertTab
	ldrb	r9, [r0, #515]	@ zero_extendqisi2	@ tmp578, <variable>.IntensityConvertTab
	strb	r9, [r3, #525]	@ tmp578, <variable>.IntensityConvertTab
	ldrb	r7, [r0, #771]	@ zero_extendqisi2	@ tmp580, <variable>.IntensityConvertTab
	add	r0, r2, #1	@ ivtmp.1129, tmp626,
	strb	r7, [r3, #781]	@ tmp580, <variable>.IntensityConvertTab
	ldrb	r9, [r1, #3]	@ zero_extendqisi2	@ tmp582, <variable>.IntensityConvertTab
	strb	r9, [r3, #1037]	@ tmp582, <variable>.IntensityConvertTab
	ldrb	r7, [r1, #259]	@ zero_extendqisi2	@ tmp584, <variable>.IntensityConvertTab
	strb	r7, [r3, #1293]	@ tmp584, <variable>.IntensityConvertTab
	ldrb	r9, [r1, #515]	@ zero_extendqisi2	@ tmp586, <variable>.IntensityConvertTab
	strb	r9, [r3, #1549]	@ tmp586, <variable>.IntensityConvertTab
	ldrb	r7, [r1, #771]	@ zero_extendqisi2	@ tmp588, <variable>.IntensityConvertTab
	add	r1, r6, #1	@ ivtmp.1139, tmp628,
	strb	r7, [r3, #1805]	@ tmp588, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1131, tmp627,
	ldrb	r9, [ip, #3]	@ zero_extendqisi2	@ tmp590, <variable>.IntensityConvertTab
	strb	r9, [sl, #2061]	@ tmp590, <variable>.IntensityConvertTab
	ldrb	r7, [ip, #259]	@ zero_extendqisi2	@ tmp592, <variable>.IntensityConvertTab
	strb	r7, [sl, #2317]	@ tmp592, <variable>.IntensityConvertTab
	ldrb	r9, [ip, #515]	@ zero_extendqisi2	@ tmp594, <variable>.IntensityConvertTab
	strb	r9, [sl, #2573]	@ tmp594, <variable>.IntensityConvertTab
	ldrb	r9, [ip, #771]	@ zero_extendqisi2	@ tmp596, <variable>.IntensityConvertTab
	add	ip, r5, #1	@ ivtmp.1148, tmp629,
	strb	r9, [sl, #2829]	@ tmp596, <variable>.IntensityConvertTab
	ldrb	r7, [r2, #3]	@ zero_extendqisi2	@ tmp707, <variable>.IntensityConvertTab
	strb	r7, [lr, #13]	@ tmp707, <variable>.IntensityConvertTab
	ldrb	sl, [r2, #259]	@ zero_extendqisi2	@ tmp708, <variable>.IntensityConvertTab
	strb	sl, [lr, #269]	@ tmp708, <variable>.IntensityConvertTab
	ldrb	sl, [r2, #515]	@ zero_extendqisi2	@ tmp709, <variable>.IntensityConvertTab
	strb	sl, [lr, #525]	@ tmp709, <variable>.IntensityConvertTab
	ldrb	r7, [r2, #771]	@ zero_extendqisi2	@ tmp710, <variable>.IntensityConvertTab
	strb	r7, [lr, #781]	@ tmp710, <variable>.IntensityConvertTab
	ldrb	r2, [r6, #3]	@ zero_extendqisi2	@ tmp711, <variable>.IntensityConvertTab
	strb	r2, [lr, #1037]	@ tmp711, <variable>.IntensityConvertTab
	ldrb	r7, [r6, #259]	@ zero_extendqisi2	@ tmp712, <variable>.IntensityConvertTab
	strb	r7, [lr, #1293]	@ tmp712, <variable>.IntensityConvertTab
	ldrb	r7, [r6, #515]	@ zero_extendqisi2	@ tmp713, <variable>.IntensityConvertTab
	strb	r7, [lr, #1549]	@ tmp713, <variable>.IntensityConvertTab
	ldrb	r6, [r6, #771]	@ zero_extendqisi2	@ tmp714, <variable>.IntensityConvertTab
	strb	r6, [lr, #1805]	@ tmp714, <variable>.IntensityConvertTab
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ tmp716, <variable>.IntensityConvertTab
	strb	r2, [r8, #2061]	@ tmp716, <variable>.IntensityConvertTab
	ldrb	lr, [r5, #259]	@ zero_extendqisi2	@ tmp717, <variable>.IntensityConvertTab
	strb	lr, [r8, #2317]	@ tmp717, <variable>.IntensityConvertTab
	ldrb	r2, [r5, #515]	@ zero_extendqisi2	@ tmp718, <variable>.IntensityConvertTab
	strb	r2, [r8, #2573]	@ tmp718, <variable>.IntensityConvertTab
	ldrb	lr, [r5, #771]	@ zero_extendqisi2	@ tmp719, <variable>.IntensityConvertTab
	strb	lr, [r8, #2829]	@ tmp719, <variable>.IntensityConvertTab
	bne	.L118	@,
	mov	r0, #1	@ D.36210,
	b	.L93	@
.L142:
	movw	ip, #22552	@ tmp403,
	movw	r3, #22548	@ tmp405,
	ldr	r2, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	cmp	r7, #1	@ PicType,
	ldr	r1, [r4, r3]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [r2, #1208]	@ TopRefIdx, <variable>.img.image_id
	ldr	r6, [r1, #1208]	@ BotRefIdx, <variable>.img.image_id
	bne	.L98	@,
.L143:
	movw	r0, #10732	@ tmp409,
	cmp	r8, #0	@ SndFld,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	movw	r3, #22593	@ tmp417,
	movw	r2, #22596	@ tmp408,
	movw	r1, #22592	@ tmp414,
	movw	r8, #22612	@ tmp412,
	strb	r7, [r4, r3]	@ PicType, <variable>.RefList0.FldFlag
	add	ip, lr, #1	@ tmp411, <variable>.AdvPicSyntax.NUMREF,
	mov	r3, #0	@ tmp413,
	str	ip, [r4, r2]	@ tmp411, <variable>.RefList0.ListLen
	strb	r3, [r4, r1]	@ tmp413, <variable>.RefList0.FldFlag
	str	r3, [r4, r8]	@ tmp413, <variable>.RefList1.ListLen
	beq	.L99	@,
	cmp	sl, r3	@ IsTop,
	beq	.L100	@,
.L99:
	movw	ip, #22552	@ tmp427,
	ldr	r1, [r4, ip]	@ <variable>.pRef,
	ldr	r2, [r1, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
.L136:
	movw	ip, #22552	@ tmp431,
	movw	r3, #10828	@ tmp436,
	ldr	sl, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	movw	lr, #22600	@ tmp425,
	ldr	r3, [r4, r3]	@ prephitmp.1000, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	r1, #22544	@ tmp435,
	str	r2, [r4, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	r8, #22600	@ tmp433,
	ldr	lr, [sl, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
	cmp	r3, #1	@ prephitmp.1000,
	ldr	r2, [r4, r1]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r0, #22604	@ tmp429,
	ldr	sl, [r4, r8]	@ FwdRefIdx, <variable>.RefList0.ImgObj
	str	lr, [r4, r0]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	ldr	r8, [r2, #1208]	@ CurRefIdx, <variable>.img.image_id
	bls	.L145	@,
.L103:
	rsbs	r2, r3, #1	@ D.36167, prephitmp.1000
	movcc	r2, #0	@ D.36167
	cmp	r3, #0	@ prephitmp.1000,
	cmpne	r3, #2	@, prephitmp.1000,
	bne	.L105	@,
	movw	r3, #10714	@ tmp467,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L146	@,
.L105:
	movw	r0, #1432	@ tmp494,
	add	r3, r4, #780	@ ivtmp.1097, pCodecInf,
	mla	r1, r0, r8, r4	@ tmp501, tmp494, CurRefIdx, pCodecInf
	add	r3, r3, #1	@ ivtmp.1097, ivtmp.1097,
	mla	r2, r0, sl, r4	@ tmp496, tmp494, FwdRefIdx, pCodecInf
	mov	r0, #0	@ i.1229,
	add	ip, r1, #13952	@ ivtmp.1098, tmp501,
	add	r1, ip, #3	@ ivtmp.1098, ivtmp.1098,
	add	r4, r2, #13952	@ ivtmp.1088, tmp496,
	add	r2, r4, #3	@ ivtmp.1088, ivtmp.1088,
.L109:
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp502, <variable>.IntensityConvertTab
	add	lr, r3, #1	@ tmp619, ivtmp.1097,
	add	r0, r0, #2	@ i.1229, i.1229,
	cmp	r0, #256	@ i.1229,
	strb	r4, [r3, #-768]	@ tmp502, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #256]	@ zero_extendqisi2	@ tmp504, <variable>.IntensityConvertTab
	strb	ip, [r3, #-512]	@ tmp504, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp506, <variable>.IntensityConvertTab
	strb	r4, [r3, #-256]	@ tmp506, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #768]	@ zero_extendqisi2	@ tmp508, <variable>.IntensityConvertTab
	strb	ip, [r3, #0]	@ tmp508, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp510, <variable>.IntensityConvertTab
	strb	r4, [r3, #1280]	@ tmp510, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #256]	@ zero_extendqisi2	@ tmp512, <variable>.IntensityConvertTab
	strb	ip, [r3, #1536]	@ tmp512, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #512]	@ zero_extendqisi2	@ tmp514, <variable>.IntensityConvertTab
	strb	r4, [r3, #1792]	@ tmp514, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #768]	@ zero_extendqisi2	@ tmp516, <variable>.IntensityConvertTab
	strb	ip, [r3, #2048]	@ tmp516, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp694, <variable>.IntensityConvertTab
	strb	r4, [r3, #-767]	@ tmp694, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #257]	@ zero_extendqisi2	@ tmp695, <variable>.IntensityConvertTab
	strb	ip, [r3, #-511]	@ tmp695, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp696, <variable>.IntensityConvertTab
	strb	r4, [lr, #-256]	@ tmp696, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #769]	@ zero_extendqisi2	@ tmp697, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1088, ivtmp.1088,
	strb	ip, [r3, #1]	@ tmp697, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ tmp698, <variable>.IntensityConvertTab
	strb	r4, [r3, #1281]	@ tmp698, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #257]	@ zero_extendqisi2	@ tmp699, <variable>.IntensityConvertTab
	strb	ip, [r3, #1537]	@ tmp699, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #513]	@ zero_extendqisi2	@ tmp700, <variable>.IntensityConvertTab
	strb	r4, [r3, #1793]	@ tmp700, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #769]	@ zero_extendqisi2	@ tmp701, <variable>.IntensityConvertTab
	add	r1, r1, #2	@ ivtmp.1098, ivtmp.1098,
	strb	r4, [r3, #2049]	@ tmp701, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1097, tmp619,
	bne	.L109	@,
	mov	r0, #1	@ D.36210,
	b	.L93	@
.L139:
	movw	lr, #22552	@ tmp220,
	ldrb	r6, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	ldr	r2, [r4, lr]	@ <variable>.pRef, <variable>.pRef
	movw	ip, #22596	@ tmp212,
	str	r7, [r4, ip]	@ PicType, <variable>.RefList0.ListLen
	movw	r1, #22612	@ tmp214,
	movw	r7, #22592	@ tmp216,
	mov	r5, #0	@ tmp215,
	strb	r5, [r4, r7]	@ tmp215, <variable>.RefList0.FldFlag
	cmp	r6, r5	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r5, [r4, r1]	@ tmp215, <variable>.RefList1.ListLen
	movw	r0, #22600	@ tmp221,
	ldr	r5, [r2, #1208]	@ D.36072, <variable>.img.image_id
	str	r5, [r4, r0]	@ D.36072, <variable>.RefList0.ImgObj
	beq	.L79	@,
	movw	r6, #10744	@ tmp228,
	movw	r2, #10716	@ tmp225,
	ldr	r1, [r4, r6]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	movw	r0, #10717	@ tmp226,
	movw	r3, #10714	@ tmp227,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ LUMSCALE.1158, <variable>.AdvPicSyntax.LUMSCALE
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ LUMSHIFT.1159, <variable>.AdvPicSyntax.LUMSHIFT
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.AdvPicSyntax.MVMODE
	beq	.L147	@,
.L80:
	cmp	r3, #4	@ MVMODE,
	beq	.L81	@,
.L84:
	movw	r3, #1432	@ tmp236,
	mov	r2, r4	@ ivtmp.1027, pCodecInf
	mla	lr, r3, r5, r4	@ tmp238, tmp236, D.36072, pCodecInf
	mov	r0, #0	@ i.1164,
	add	ip, lr, #13952	@ ivtmp.1024, tmp238,
	add	r3, ip, #3	@ ivtmp.1024, ivtmp.1024,
.L82:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp270, <variable>.IntensityConvertTab
	add	lr, r2, #1	@ tmp610, ivtmp.1027,
	add	r0, r0, #2	@ i.1164, i.1164,
	cmp	r0, #256	@ i.1164,
	strb	ip, [r2, #13]	@ tmp270, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #256]	@ zero_extendqisi2	@ tmp272, <variable>.IntensityConvertTab
	strb	r1, [r2, #269]	@ tmp272, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #512]	@ zero_extendqisi2	@ tmp274, <variable>.IntensityConvertTab
	strb	ip, [r2, #525]	@ tmp274, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #768]	@ zero_extendqisi2	@ tmp276, <variable>.IntensityConvertTab
	strb	r1, [r2, #781]	@ tmp276, <variable>.IntensityConvertTab
	add	r2, lr, #1	@ ivtmp.1027, tmp610,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp652, <variable>.IntensityConvertTab
	strb	ip, [lr, #13]	@ tmp652, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #257]	@ zero_extendqisi2	@ tmp653, <variable>.IntensityConvertTab
	strb	r1, [lr, #269]	@ tmp653, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #513]	@ zero_extendqisi2	@ tmp654, <variable>.IntensityConvertTab
	strb	ip, [lr, #525]	@ tmp654, <variable>.IntensityConvertTab
	ldrb	r1, [r3, #769]	@ zero_extendqisi2	@ tmp655, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1024, ivtmp.1024,
	strb	r1, [lr, #781]	@ tmp655, <variable>.IntensityConvertTab
	bne	.L82	@,
	mov	r0, #1	@ D.36210,
	b	.L93	@
.L141:
	movw	r2, #10741	@ tmp392,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r1, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L97	@,
	movw	r0, #22548	@ tmp397,
	movw	lr, #22552	@ tmp399,
	ldr	ip, [r4, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	r3, [r4, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	r5, [ip, #1208]	@ TopRefIdx, <variable>.img.image_id
	ldr	r6, [r3, #1208]	@ BotRefIdx, <variable>.img.image_id
	b	.L96	@
.L140:
	movw	lr, #22552	@ tmp286,
	movw	r1, #22548	@ tmp292,
	ldr	r6, [r4, lr]	@ <variable>.pRef, <variable>.pRef
	movw	r0, #22596	@ tmp280,
	movw	r5, #22592	@ tmp282,
	movw	ip, #22612	@ tmp278,
	mov	r2, #1	@ tmp279,
	mov	r3, #0	@ tmp283,
	str	r2, [r4, r0]	@ tmp279, <variable>.RefList0.ListLen
	movw	r0, #22600	@ tmp287,
	strb	r3, [r4, r5]	@ tmp283, <variable>.RefList0.FldFlag
	str	r2, [r4, ip]	@ tmp279, <variable>.RefList1.ListLen
	ldr	lr, [r4, r1]	@ <variable>.pRef, <variable>.pRef
	movw	r1, #22608	@ tmp288,
	ldr	r5, [r6, #1208]	@ temp.1167, <variable>.img.image_id
	ldrb	r6, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	strb	r3, [r4, r1]	@ tmp283, <variable>.RefList1.FldFlag
	movw	r3, #22616	@ tmp293,
	cmp	r6, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r5, [r4, r0]	@ temp.1167, <variable>.RefList0.ImgObj
	ldr	r6, [lr, #1208]	@ D.36107, <variable>.img.image_id
	str	r6, [r4, r3]	@ D.36107, <variable>.RefList1.ImgObj
	movwne	r3, #10716	@ tmp297,
	movweq	r3, #10613	@ tmp300,
	ldrneb	r7, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.AdvPicSyntax.LUMSCALE
	ldreqb	r7, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE, <variable>.SMPPicSyntax.LUMSCALE
	movwne	r3, #10717	@ tmp298,
	movweq	r3, #10614	@ tmp301,
	ldrneb	r8, [r4, r3]	@ zero_extendqisi2	@ LUMSHIFT.1156, <variable>.AdvPicSyntax.LUMSHIFT
	ldreqb	r8, [r4, r3]	@ zero_extendqisi2	@ LUMSHIFT.1156, <variable>.SMPPicSyntax.LUMSHIFT
	movwne	r3, #10714	@ tmp299,
	movweq	r3, #10611	@ tmp302,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ MVMODE.1157,
	cmp	r2, #4	@ MVMODE.1157,
	beq	.L89	@,
.L92:
	movw	lr, #1432	@ tmp304,
	mov	r1, r4	@ ivtmp.1052, pCodecInf
	mla	r0, lr, r6, r4	@ tmp310, tmp304, D.36107, ivtmp.1052
	mov	ip, #0	@ i.1192,
	mla	r3, lr, r5, r4	@ tmp306, tmp304, temp.1167, pCodecInf
	add	r2, r0, #13952	@ ivtmp.1059, tmp310,
	add	r2, r2, #3	@ ivtmp.1059, ivtmp.1059,
	add	r4, r3, #13952	@ ivtmp.1049, tmp306,
	add	r3, r4, #3	@ ivtmp.1049, ivtmp.1049,
.L90:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp370, <variable>.IntensityConvertTab
	add	lr, r1, #1	@ tmp615, ivtmp.1052,
	add	ip, ip, #2	@ i.1192, i.1192,
	cmp	ip, #256	@ i.1192,
	strb	r4, [r1, #13]	@ tmp370, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #256]	@ zero_extendqisi2	@ tmp372, <variable>.IntensityConvertTab
	strb	r0, [r1, #269]	@ tmp372, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #512]	@ zero_extendqisi2	@ tmp374, <variable>.IntensityConvertTab
	strb	r4, [r1, #525]	@ tmp374, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp376, <variable>.IntensityConvertTab
	strb	r0, [r1, #781]	@ tmp376, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp378, <variable>.IntensityConvertTab
	strb	r4, [r1, #1037]	@ tmp378, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #256]	@ zero_extendqisi2	@ tmp380, <variable>.IntensityConvertTab
	strb	r0, [r1, #1293]	@ tmp380, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp382, <variable>.IntensityConvertTab
	strb	r4, [r1, #1549]	@ tmp382, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp384, <variable>.IntensityConvertTab
	strb	r0, [r1, #1805]	@ tmp384, <variable>.IntensityConvertTab
	add	r1, lr, #1	@ ivtmp.1052, tmp615,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp660, <variable>.IntensityConvertTab
	strb	r4, [lr, #13]	@ tmp660, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #257]	@ zero_extendqisi2	@ tmp661, <variable>.IntensityConvertTab
	strb	r0, [lr, #269]	@ tmp661, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #513]	@ zero_extendqisi2	@ tmp662, <variable>.IntensityConvertTab
	strb	r4, [lr, #525]	@ tmp662, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #769]	@ zero_extendqisi2	@ tmp663, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1049, ivtmp.1049,
	strb	r0, [lr, #781]	@ tmp663, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp664, <variable>.IntensityConvertTab
	strb	r4, [lr, #1037]	@ tmp664, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #257]	@ zero_extendqisi2	@ tmp665, <variable>.IntensityConvertTab
	strb	r0, [lr, #1293]	@ tmp665, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp666, <variable>.IntensityConvertTab
	strb	r4, [lr, #1549]	@ tmp666, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #769]	@ zero_extendqisi2	@ tmp667, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1059, ivtmp.1059,
	strb	r4, [lr, #1805]	@ tmp667, <variable>.IntensityConvertTab
	bne	.L90	@,
	mov	r0, #1	@ D.36210,
	b	.L93	@
.L79:
	movw	r1, #10613	@ tmp232,
	movw	r0, #10614	@ tmp233,
	movw	r3, #10611	@ tmp234,
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ LUMSCALE.1158, <variable>.SMPPicSyntax.LUMSCALE
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ LUMSHIFT.1159, <variable>.SMPPicSyntax.LUMSHIFT
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.SMPPicSyntax.MVMODE
	b	.L80	@
.L117:
	movw	r2, #10714	@ tmp572,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L119	@,
	mov	r0, #0	@ D.36210,
	b	.L93	@
.L100:
	movw	r8, #22544	@ tmp423,
	ldr	sl, [r4, r8]	@ <variable>.pCurFrm,
	ldr	r2, [sl, #1208]	@ iftmp.494, <variable>.img.image_id
	b	.L136	@
.L112:
	movw	r5, #22544	@ tmp531,
	ldr	ip, [r4, r5]	@ <variable>.pCurFrm,
	ldr	r2, [ip, #1208]	@ iftmp.500, <variable>.img.image_id
	b	.L137	@
.L145:
	movw	r0, #10714	@ tmp437,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L103	@,
	movw	lr, #10716	@ tmp439,
	add	ip, lr, #1	@ tmp440, tmp440,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ temp.1218, <variable>.AdvPicSyntax.LUMSCALE
	add	r0, sp, #256	@,,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ temp.1219, <variable>.AdvPicSyntax.LUMSHIFT
	mov	r3, #0	@,
	mov	r1, r9	@, temp.1218
	mov	r2, r7	@, temp.1219
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r7	@, temp.1219
	mov	r1, r9	@, temp.1218
	mov	r3, #1	@,
	mov	r0, sp	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp444,
	mla	r1, r3, r5, r4	@ tmp446, tmp444, TopRefIdx, pCodecInf
	mov	r2, #0	@ i.1220,
	add	r7, r1, #13952	@ tmp446, tmp446,
	add	r3, r7, #3	@ ivtmp.1120, tmp446,
.L104:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp447, <variable>.IntensityConvertTab
	add	r1, sp, #512	@,,
	ldrb	r7, [r3, #256]	@ zero_extendqisi2	@ tmp453, <variable>.IntensityConvertTab
	add	lr, sp, #512	@,,
	add	r5, r1, ip	@ tmp449,, tmp447
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ tmp670, <variable>.IntensityConvertTab
	add	ip, lr, r7	@ tmp455,, tmp453
	add	r7, sp, #512	@,,
	ldrb	r5, [r5, #-256]	@ zero_extendqisi2	@ tmp451, LUTY
	add	lr, r7, r0	@ tmp671,, tmp670
	ldrb	r1, [r3, #257]	@ zero_extendqisi2	@ tmp674, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ i.1220, i.1220,
	cmp	r2, #256	@ i.1220,
	strb	r5, [r3, #0]	@ tmp451, <variable>.IntensityConvertTab
	add	r1, r7, r1	@ tmp676,, tmp674
	ldrb	ip, [ip, #-512]	@ zero_extendqisi2	@ tmp457, LUTUV
	strb	ip, [r3, #256]	@ tmp457, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-256]	@ zero_extendqisi2	@ tmp673, LUTY
	strb	ip, [r3, #1]	@ tmp673, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-512]	@ zero_extendqisi2	@ tmp678, LUTUV
	strb	r0, [r3, #257]	@ tmp678, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1120, ivtmp.1120,
	bne	.L104	@,
	movw	r2, #10828	@ tmp459,
	ldr	r3, [r4, r2]	@ prephitmp.1000, <variable>.AdvPicSyntax.INTCOMPFIELD
	b	.L103	@
.L144:
	movw	lr, #10714	@ tmp554,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L115	@,
	mov	r0, #0	@ D.36210,
	b	.L93	@
.L147:
	movw	lr, #10820	@ tmp230,
	ldr	ip, [r4, lr]	@ <variable>.AdvPicSyntax.INTCOMP, <variable>.AdvPicSyntax.INTCOMP
	cmp	ip, #1	@ <variable>.AdvPicSyntax.INTCOMP,
	bne	.L80	@,
.L81:
	mov	r1, r7	@, LUMSCALE.1158
	add	r0, sp, #256	@,,
	mov	r2, r6	@, LUMSHIFT.1159
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r7	@, LUMSCALE.1158
	movw	r7, #1432	@ tmp243,
	mov	r2, r6	@, LUMSHIFT.1159
	mla	sl, r7, r5, r4	@ tmp245, tmp243, D.36072, pCodecInf
	mov	r3, #1	@,
	mov	r0, sp	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, #0	@ i,
	add	r8, sl, #13952	@ ivtmp.1039, tmp245,
	add	r3, r8, #3	@ ivtmp.1039, ivtmp.1039,
.L83:
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ tmp246, <variable>.IntensityConvertTab
	add	r6, sp, #512	@,,
	ldrb	r1, [r3, #256]	@ zero_extendqisi2	@ tmp252, <variable>.IntensityConvertTab
	add	sl, sp, #512	@,,
	add	lr, r6, ip	@ tmp248,, tmp246
	ldrb	r8, [r3, #512]	@ zero_extendqisi2	@ tmp258, <variable>.IntensityConvertTab
	add	ip, r6, r1	@ tmp254,, tmp252
	ldrb	r7, [r3, #768]	@ zero_extendqisi2	@ tmp264, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-256]	@ zero_extendqisi2	@ tmp250, LUTY
	add	r8, sl, r8	@ tmp260,, tmp258
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp632, <variable>.IntensityConvertTab
	add	r7, sl, r7	@ tmp266,, tmp264
	ldrb	lr, [r3, #257]	@ zero_extendqisi2	@ tmp636, <variable>.IntensityConvertTab
	add	r1, sp, #512	@,,
	strb	r0, [r3, #0]	@ tmp250, <variable>.IntensityConvertTab
	add	r6, sl, r6	@ tmp633,, tmp632
	ldrb	sl, [ip, #-512]	@ zero_extendqisi2	@ tmp256, LUTUV
	add	ip, r1, lr	@ tmp638,, tmp636
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp641, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ i, i,
	ldrb	r1, [r3, #769]	@ zero_extendqisi2	@ tmp645, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i,
	strb	sl, [r3, #256]	@ tmp256, <variable>.IntensityConvertTab
	add	sl, sp, #512	@,,
	ldrb	r8, [r8, #-256]	@ zero_extendqisi2	@ tmp262, LUTY
	add	lr, sl, r0	@ tmp642,, tmp641
	add	r1, sl, r1	@ tmp646,, tmp645
	strb	r8, [r3, #512]	@ tmp262, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-512]	@ zero_extendqisi2	@ tmp268, LUTUV
	strb	r7, [r3, #768]	@ tmp268, <variable>.IntensityConvertTab
	ldrb	r6, [r6, #-256]	@ zero_extendqisi2	@ tmp635, LUTY
	strb	r6, [r3, #1]	@ tmp635, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-512]	@ zero_extendqisi2	@ tmp640, LUTUV
	strb	ip, [r3, #257]	@ tmp640, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-256]	@ zero_extendqisi2	@ tmp644, LUTY
	strb	ip, [r3, #513]	@ tmp644, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-512]	@ zero_extendqisi2	@ tmp648, LUTUV
	strb	r0, [r3, #769]	@ tmp648, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1039, ivtmp.1039,
	bne	.L83	@,
	b	.L84	@
.L146:
	cmp	r2, #0	@ D.36167,
	add	r0, sp, #256	@,,
	movwne	r3, #10832	@ tmp469,
	movweq	r3, #10716	@ tmp473,
	ldrneb	r7, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE.1263, <variable>.AdvPicSyntax.LUMSCALE2
	addne	r3, r3, #4	@ tmp471, tmp471,
	ldreqb	r7, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE.1263, <variable>.AdvPicSyntax.LUMSCALE
	addeq	r3, r3, #1	@ tmp474, tmp474,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ LUMSHIFT,
	mov	r3, #0	@,
	mov	r1, r7	@, LUMSCALE.1263
	mov	r2, r5	@, LUMSHIFT
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r5	@, LUMSHIFT
	mov	r0, sp	@,
	mov	r1, r7	@, LUMSCALE.1263
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r0, #1432	@ tmp479,
	mla	r6, r0, r6, r4	@ ivtmp.1113, tmp479, BotRefIdx, pCodecInf
	mov	r2, #0	@ i.1224,
	add	r6, r6, #13952	@ ivtmp.1113, ivtmp.1113,
.L108:
	ldrb	lr, [r6, #515]	@ zero_extendqisi2	@ tmp481, <variable>.IntensityConvertTab
	add	ip, sp, #512	@,,
	ldrb	r1, [r6, #771]	@ zero_extendqisi2	@ tmp487, <variable>.IntensityConvertTab
	add	r3, r6, #1	@ tmp622, ivtmp.1113,
	add	r0, ip, lr	@ tmp483,, tmp481
	add	r2, r2, #2	@ i.1224, i.1224,
	add	lr, ip, r1	@ tmp489,, tmp487
	cmp	r2, #256	@ i.1224,
	ldrb	r0, [r0, #-256]	@ zero_extendqisi2	@ tmp485, LUTY
	strb	r0, [r6, #515]	@ tmp485, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-512]	@ zero_extendqisi2	@ tmp491, LUTUV
	strb	r0, [r6, #771]	@ tmp491, <variable>.IntensityConvertTab
	add	r6, r3, #1	@ ivtmp.1113, tmp622,
	ldrb	r1, [r3, #515]	@ zero_extendqisi2	@ tmp681, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #771]	@ zero_extendqisi2	@ tmp685, <variable>.IntensityConvertTab
	add	r0, ip, r1	@ tmp682,, tmp681
	add	r1, ip, lr	@ tmp687,, tmp685
	ldrb	ip, [r0, #-256]	@ zero_extendqisi2	@ tmp684, LUTY
	strb	ip, [r3, #515]	@ tmp684, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #-512]	@ zero_extendqisi2	@ tmp689, LUTUV
	strb	lr, [r3, #771]	@ tmp689, <variable>.IntensityConvertTab
	bne	.L108	@,
	b	.L105	@
.L89:
	mov	r1, r7	@, LUMSCALE
	mov	r2, r8	@, LUMSHIFT.1156
	add	r0, sp, #256	@,,
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r7	@, LUMSCALE
	mov	r2, r8	@, LUMSHIFT.1156
	mov	r3, #1	@,
	mov	r0, sp	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp315,
	mla	ip, r3, r6, r4	@ tmp321, tmp315, D.36107, pCodecInf
	mov	r1, #0	@ i.1183,
	mla	r7, r3, r5, r4	@ tmp317, tmp315, temp.1167, pCodecInf
	add	r8, ip, #13952	@ ivtmp.1078, tmp321,
	add	r2, r8, #3	@ ivtmp.1078, ivtmp.1078,
	add	sl, r7, #13952	@ ivtmp.1073, tmp317,
	add	r3, sl, #3	@ ivtmp.1073, ivtmp.1073,
.L91:
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp322, <variable>.IntensityConvertTab
	add	r0, sp, #512	@,,
	ldrb	r7, [r3, #256]	@ zero_extendqisi2	@ tmp328, <variable>.IntensityConvertTab
	add	ip, sp, #512	@,,
	add	sl, r0, r8	@ tmp324,, tmp322
	ldrb	lr, [r3, #512]	@ zero_extendqisi2	@ tmp334, <variable>.IntensityConvertTab
	add	r7, ip, r7	@ tmp330,, tmp328
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp340, <variable>.IntensityConvertTab
	ldrb	r8, [sl, #-256]	@ zero_extendqisi2	@ tmp326, LUTY
	add	sl, sp, #512	@,,
	add	ip, sl, lr	@ tmp336,, tmp334
	add	lr, sl, r0	@ tmp342,, tmp340
	add	r1, r1, #1	@ i.1183, i.1183,
	strb	r8, [r3, #0]	@ tmp326, <variable>.IntensityConvertTab
	cmp	r1, #256	@ i.1183,
	ldrb	r7, [r7, #-512]	@ zero_extendqisi2	@ tmp332, LUTUV
	strb	r7, [r3, #256]	@ tmp332, <variable>.IntensityConvertTab
	ldrb	r8, [ip, #-256]	@ zero_extendqisi2	@ tmp338, LUTY
	strb	r8, [r3, #512]	@ tmp338, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-512]	@ zero_extendqisi2	@ tmp344, LUTUV
	strb	r0, [r3, #768]	@ tmp344, <variable>.IntensityConvertTab
	add	r3, r3, #1	@ ivtmp.1073, ivtmp.1073,
	ldrb	r7, [r2, #0]	@ zero_extendqisi2	@ tmp346, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #256]	@ zero_extendqisi2	@ tmp352, <variable>.IntensityConvertTab
	add	r8, sl, r7	@ tmp348,, tmp346
	ldrb	lr, [r2, #512]	@ zero_extendqisi2	@ tmp358, <variable>.IntensityConvertTab
	add	r7, sl, ip	@ tmp354,, tmp352
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp364, <variable>.IntensityConvertTab
	ldrb	r8, [r8, #-256]	@ zero_extendqisi2	@ tmp350, LUTY
	add	ip, sl, lr	@ tmp360,, tmp358
	add	lr, sl, r0	@ tmp366,, tmp364
	strb	r8, [r2, #0]	@ tmp350, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-512]	@ zero_extendqisi2	@ tmp356, LUTUV
	strb	r7, [r2, #256]	@ tmp356, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-256]	@ zero_extendqisi2	@ tmp362, LUTY
	strb	ip, [r2, #512]	@ tmp362, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-512]	@ zero_extendqisi2	@ tmp368, LUTUV
	strb	r0, [r2, #768]	@ tmp368, <variable>.IntensityConvertTab
	add	r2, r2, #1	@ ivtmp.1078, ivtmp.1078,
	bne	.L91	@,
	b	.L92	@
	.fnend
	.size	VC1_Vfmw_BuildRefList, .-VC1_Vfmw_BuildRefList
	.align	2
	.global	VC1_ReceivePacket
	.type	VC1_ReceivePacket, %function
VC1_ReceivePacket:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	beq	.L154	@,
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113224	@ tmp140,
	movt	r3, #:upper16:113224	@ tmp140,
	movw	lr, #:lower16:113212	@ tmp139,
	movt	lr, #:upper16:113212	@ tmp139,
	movw	ip, #:lower16:113232	@ tmp144,
	str	r2, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113232	@ tmp144,
	ldr	r5, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113220	@ tmp146,
	movt	r2, #:upper16:113220	@ tmp146,
	movw	r3, #:lower16:113240	@ tmp149,
	movt	r3, #:upper16:113240	@ tmp149,
	add	r1, r0, #112640	@ pstPacket, pCtx,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	add	r1, r1, #572	@ pstPacket, pstPacket,
	ldr	lr, [r4, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	r2, [r4, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r2, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L151	@,
	ldr	r5, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113228	@ tmp152,
	movt	r3, #:upper16:113228	@ tmp152,
	movw	lr, #:lower16:113216	@ tmp154,
	movt	lr, #:upper16:113216	@ tmp154,
	movw	ip, #:lower16:113236	@ tmp156,
	str	r5, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113236	@ tmp156,
	ldr	r5, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113221	@ tmp158,
	movt	r2, #:upper16:113221	@ tmp158,
	movw	r3, #:lower16:113244	@ tmp161,
	movt	r3, #:upper16:113244	@ tmp161,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	ldr	lr, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	lr, [r4, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	lr, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L155	@,
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.38192,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L155:
	movw	r2, #:lower16:113720	@ tmp164,
	movt	r2, #:upper16:113720	@ tmp164,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	VC1_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, <variable>.IsLastSeg
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38192,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L151:
	movw	r5, #:lower16:113228	@ tmp168,
	movw	lr, #:lower16:113216	@ tmp170,
	movt	r5, #:upper16:113228	@ tmp168,
	movt	lr, #:upper16:113216	@ tmp170,
	movw	ip, #:lower16:113236	@ tmp172,
	movw	r2, #:lower16:113221	@ tmp174,
	movt	ip, #:upper16:113236	@ tmp172,
	movt	r2, #:upper16:113221	@ tmp174,
	movw	r4, #:lower16:113244	@ tmp177,
	movt	r4, #:upper16:113244	@ tmp177,
	mov	r3, #0	@ tmp169,
	str	r3, [r0, r5]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	str	r3, [r0, r4]	@ tmp169, <variable>.CodecInfo.stCurPacket.StreamID
	str	r3, [r0, lr]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsVirAddr
	str	r3, [r0, ip]	@ tmp169, <variable>.CodecInfo.stCurPacket.BsLength
	strb	r3, [r0, r2]	@ tmp169, <variable>.CodecInfo.stCurPacket.IsLastSeg
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.38192,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L154:
	mov	r0, r4	@, pPacket
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.38192, pPacket
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VC1_ReceivePacket, .-VC1_ReceivePacket
	.align	2
	.global	VC1_DecNormDiff6Tile
	.type	VC1_DecNormDiff6Tile, %function
VC1_DecNormDiff6Tile:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r9, [r1, #0]	@ i6.1315,* pi6
	mov	sl, r1	@ pi6, pi6
	mov	r5, r0	@ pBs, pBs
	mov	r6, #0	@ Invert,
.L157:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.36498,
	mov	r0, r5	@, pBs
	bne	.L170	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L171	@,
	bne	.L161	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.36507,
	beq	.L162	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L157	@,
.L169:
	str	r9, [sl, #0]	@ i6.1315,* pi6
	mov	r0, r7	@ D.36512, D.36498
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L170:
	mov	r4, #0	@ i6,
.L159:
	cmp	r6, #0	@ Invert,
	mov	r0, #1	@ D.36512,
	eorne	r4, r4, #63	@ i6, i6,
	str	r4, [sl, #0]	@ i6,* pi6
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L171:
	sub	r4, r4, #2	@ tmp146, iCode,
	mov	r3, #1	@ tmp147,
	mov	r4, r3, asl r4	@ i6, tmp147,
	b	.L159	@
.L161:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode.1317,
	beq	.L169	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp153,
	movt	lr, #:upper16:.LANCHOR0	@ tmp153,
	add	ip, lr, r0, asl #2	@, tmp156, tmp153, iCode.1317,
	ldr	r4, [ip, #256]	@ i6, a2On4Off
	b	.L159	@
.L162:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp148,
	movt	r2, #:upper16:.LANCHOR0	@ tmp148,
	add	r1, r2, r0, asl #2	@, tmp151, tmp148, i6,
	mov	r4, r0	@ i6,
	ldr	r3, [r1, #128]	@ iCode.1316, aCount
	cmp	r3, #2	@ iCode.1316,
	orreq	r4, r0, #32	@ i6, i6,
	beq	.L159	@,
	cmp	r3, #3	@ iCode.1316,
	strne	r4, [sl, #0]	@ i6,* pi6
	movne	r0, r8	@ D.36512, D.36507
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L159	@
	.fnend
	.size	VC1_DecNormDiff6Tile, .-VC1_DecNormDiff6Tile
	.align	2
	.global	VC1_VopDQuant
	.type	VC1_VopDQuant, %function
VC1_VopDQuant:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ DQUANT,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r2	@ PQUANT, PQUANT
	mov	r5, r3	@ pVopDquant, pVopDquant
	mov	r7, r0	@ pBs, pBs
	beq	.L186	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.36439,
	strb	r6, [r5, #0]	@ D.36439, <variable>.DQUANTFRM
	cmp	r6, #1	@ D.36439,
	beq	.L187	@,
.L176:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L186:
	mov	r3, #1	@ tmp157,
	mov	r1, #3	@,
	strb	r3, [r5, #0]	@ tmp157, <variable>.DQUANTFRM
	strb	r3, [r5, #3]	@ tmp157, <variable>.UseAltQp
	bl	BsGet	@
	uxtb	r0, r0	@ D.36427,
	strb	r0, [r5, #4]	@ D.36427, <variable>.PQDIFF
	cmp	r0, #7	@ D.36427,
	addne	r4, r4, #1	@ tmp164, PQUANT,
	addne	r0, r0, r4	@ tmp166, D.36427, tmp164
	strneb	r0, [r5, #8]	@ tmp166, <variable>.ALTPQUANT
	beq	.L188	@,
.L175:
	mov	r2, #1	@ tmp168,
	mov	r0, #1	@,
	str	r2, [r5, #12]	@ tmp168, <variable>.QuantMode
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L187:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36444,
	strb	r1, [r5, #1]	@ D.36444, <variable>.DQPROFILE
	cmp	r1, #0	@ D.36444,
	streq	r6, [r5, #12]	@ D.36439, <variable>.QuantMode
	beq	.L178	@,
	cmp	r1, #2	@ D.36444,
	beq	.L189	@,
	cmp	r1, #1	@ D.36444,
	beq	.L190	@,
	cmp	r1, #3	@ D.36444,
	movne	r3, #0	@ tmp177,
	strne	r3, [r5, #12]	@ tmp177, <variable>.QuantMode
	beq	.L191	@,
.L178:
	ldr	r0, [r5, #0]	@ tmp180,* pVopDquant
	bic	ip, r0, #-16777216	@ tmp178, tmp180,
	bic	lr, ip, #255	@ tmp178, tmp178,
	cmp	lr, #768	@ tmp178,
	beq	.L176	@,
	mov	r1, #1	@ tmp181,
	mov	r0, r7	@, pBs
	strb	r1, [r5, #3]	@ tmp181, <variable>.UseAltQp
	mov	r1, #3	@,
	bl	BsGet	@
	uxtb	r3, r0	@ D.36482,
	strb	r3, [r5, #4]	@ D.36482, <variable>.PQDIFF
	cmp	r3, #7	@ D.36482,
	addne	r4, r4, #1	@ tmp186, PQUANT,
	addne	r3, r3, r4	@ tmp188, D.36482, tmp186
	strneb	r3, [r5, #8]	@ tmp188, <variable>.ALTPQUANT
	bne	.L176	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.36486,
	strb	r2, [r5, #8]	@ D.36486, <variable>.ALTPQUANT
	strb	r2, [r5, #5]	@ D.36486, <variable>.ABSPQ
	b	.L176	@
.L191:
	mov	r1, r6	@, D.36439
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.36470,
	strb	r2, [r5, #2]	@ D.36470, <variable>.DQBILEVEL
	cmp	r2, #0	@ D.36470,
	movne	r2, #10	@ iftmp.539,
	moveq	r2, #11	@ iftmp.539,
	str	r2, [r5, #12]	@ iftmp.539, <variable>.QuantMode
	b	.L178	@
.L188:
	mov	r1, #5	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36432,
	strb	r1, [r5, #8]	@ D.36432, <variable>.ALTPQUANT
	strb	r1, [r5, #5]	@ D.36432, <variable>.ABSPQ
	b	.L175	@
.L189:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.36452,
	strb	r0, [r5, #6]	@ D.36452, <variable>.DQSBEDGE
	add	ip, r0, #6	@ tmp173, D.36452,
	str	ip, [r5, #12]	@ tmp173, <variable>.QuantMode
	b	.L178	@
.L190:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36461,
	strb	r1, [r5, #7]	@ D.36461, <variable>.DQDBEDGE
	add	r3, r1, #2	@ tmp175, D.36461,
	str	r3, [r5, #12]	@ tmp175, <variable>.QuantMode
	b	.L178	@
	.fnend
	.size	VC1_VopDQuant, .-VC1_VopDQuant
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mov	lr, r1, asl #3	@ tmp174, ByteLen,
	add	r4, sp, #4	@ tmp248,,
	mov	r5, r2	@ pVc1Info, pVc1Info
	mov	r1, r0	@ pBitBuf, pBitBuf
	mov	r2, lr	@, tmp174
	mov	r0, r4	@, tmp248
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.34538,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	ip, r0, asl #16	@ tmp179,,
	mov	r0, r4	@, tmp248
	add	r2, ip, r6, asl #8	@, data.1368, tmp179, D.34538,
	add	r6, r2, r7	@ data.1369, data.1368, data
	bl	BsGet	@
	mov	r1, #8	@,
	add	r0, r6, r0, asl #24	@, tmp182, data.1369,,
	str	r0, [r5, #24]	@ tmp182, <variable>.FrmWidth
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data.1371,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.34545,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r3, r0, asl #16	@ tmp187,,
	mov	r0, r4	@, tmp248
	add	r6, r3, r6, asl #8	@, data.1372, tmp187, D.34545,
	bl	BsGet	@
	ldr	r3, [r5, #24]	@ D.34551, <variable>.FrmWidth
	add	r6, r6, r7	@ data.1373, data.1372, data.1371
	cmp	r3, #8192	@ D.34551,
	add	r0, r6, r0, asl #24	@, data.1374, data.1373,,
	str	r0, [r5, #28]	@ data.1374, <variable>.FrmHeight
	bgt	.L205	@,
	cmp	r0, #8192	@ data.1374,
	bgt	.L206	@,
	cmp	r3, #31	@ D.34551,
	ble	.L207	@,
	cmp	r0, #31	@ data.1374,
	ble	.L208	@,
	mov	r1, #2	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	uxtb	r1, r0	@ D.34564,
	strb	r1, [r5, #3]	@ D.34564, <variable>.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ D.34564,
	bhi	.L209	@,
	mov	r0, r4	@, tmp248
	mov	r1, #2	@,
	bl	BsGet	@
	subs	r6, r0, #0	@ D.34568,
	bne	.L210	@,
	mov	r1, #3	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #4]	@, <variable>.SMPSeqSyntax.FRMRTQ
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #5]	@, <variable>.SMPSeqSyntax.BITRTQ
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #6]	@, <variable>.SMPSeqSyntax.LOOPFILTER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	subs	r7, r0, #0	@ D.34577,
	bne	.L211	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #7]	@, <variable>.SMPSeqSyntax.MULTIRES
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #8]	@, <variable>.SMPSeqSyntax.B16BITTRANSFORM
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #9]	@, <variable>.SMPSeqSyntax.FASTUVMC
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #10]	@, <variable>.SMPSeqSyntax.EXTENDED_MV
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.SMPSeqSyntax.DQUANT
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.SMPSeqSyntax.VSTRANSFORM
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L212	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.SMPSeqSyntax.OVERLAP
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.SMPSeqSyntax.SYNCMARKER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ <variable>.SMPSeqSyntax.PROFILE,
	strb	r0, [r5, #15]	@, <variable>.SMPSeqSyntax.RANGERED
	mov	r0, r4	@, tmp248
	streqb	r3, [r5, #15]	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #16]	@, <variable>.SMPSeqSyntax.MAXBFRAMES
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.SMPSeqSyntax.FINTERPFLAG
	mov	r0, r4	@, tmp248
	bl	BsGet	@
	mov	r0, r4	@, tmp248
	mov	r1, #32	@,
	bl	BsGet	@
	cmp	r0, #0	@ data.1382
	bne	.L213	@,
.L194:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L213:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34555,
	b	.L194	@
.L209:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #281	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L208:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #278	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L210:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #284	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L211:
	mov	r0, r6	@, D.34568
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #291	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L212:
	mov	r0, r7	@, D.34577
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #302	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L205:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #275	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L206:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #276	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
.L207:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #277	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34555,
	b	.L194	@
	.fnend
	.size	Vc1SMPSeqHdr, .-Vc1SMPSeqHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvEntptHdr
	.type	VC1_Vfmw_ParseAdvEntptHdr, %function
VC1_Vfmw_ParseAdvEntptHdr:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r1, #60	@,
	mov	r7, r0	@ pBs, pBs
	add	r0, r2, #188	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r7	@, pBs
	bl	BsPos	@
	mov	r1, #1	@,
	str	r0, [r4, #244]	@, <variable>.AdvEntSyntax.HdrLen
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #188]	@, <variable>.AdvEntSyntax.BROKEN_LINK
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #189]	@, <variable>.AdvEntSyntax.CLOSED_ENTRY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #190]	@, <variable>.AdvEntSyntax.PANSCAN_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #191]	@, <variable>.AdvEntSyntax.REFDIST_FLAG
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #192]	@, <variable>.AdvEntSyntax.LOOPFILTER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #193]	@, <variable>.AdvEntSyntax.FASTUVMC
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #194]	@, <variable>.AdvEntSyntax.EXTENDED_MV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #195]	@, <variable>.AdvEntSyntax.DQUANT
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #196]	@, <variable>.AdvEntSyntax.VSTRANSFORM
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #197]	@, <variable>.AdvEntSyntax.OVERLAP
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.HRD_PARAM_FLAG,
	strb	r0, [r4, #198]	@, <variable>.AdvEntSyntax.QUANTIZER
	beq	.L227	@,
.L215:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.37012,
	strb	r2, [r4, #199]	@ D.37012, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.37012,
	beq	.L228	@,
.L217:
	ldrh	r2, [r4, #238]	@ D.37026, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r4, #172]	@ D.37027, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	cmp	r2, r3	@ D.37026, D.37027
	bhi	.L218	@,
	cmp	r2, #15	@ D.37026,
	bls	.L218	@,
.L219:
	ldrh	r2, [r4, #240]	@ D.37031, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r4, #174]	@ D.37032, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	cmp	r2, r3	@ D.37031, D.37032
	bhi	.L220	@,
	cmp	r2, #15	@ D.37031,
	bls	.L220	@,
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L229	@,
.L222:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.37040,
	strb	r0, [r4, #201]	@ D.37040, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.37040,
	beq	.L230	@,
.L223:
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37047,
	strb	r1, [r4, #203]	@ D.37047, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.37047,
	beq	.L231	@,
.L224:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #244]	@ <variable>.AdvEntSyntax.HdrLen, <variable>.AdvEntSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp198, <variable>.AdvEntSyntax.HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ tmp198, <variable>.AdvEntSyntax.HdrLen
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L220:
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	strh	r3, [r4, #240]	@ movhi	@ D.37032, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	bne	.L222	@,
.L229:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #200]	@, <variable>.AdvEntSyntax.EXTENDED_DMV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37040,
	strb	r0, [r4, #201]	@ D.37040, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.37040,
	bne	.L223	@,
.L230:
	mov	r1, #3	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #202]	@, <variable>.AdvEntSyntax.RANGE_MAPY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37047,
	strb	r1, [r4, #203]	@ D.37047, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.37047,
	bne	.L224	@,
.L231:
	mov	r0, r7	@, pBs
	mov	r1, #3	@,
	bl	BsGet	@
	strb	r0, [r4, #204]	@, <variable>.AdvEntSyntax.RANGE_MAPUV
	b	.L224	@
.L218:
	strh	r3, [r4, #238]	@ movhi	@ D.37027, <variable>.AdvEntSyntax.CODED_WIDTH
	b	.L219	@
.L227:
	ldrb	r0, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	beq	.L215	@,
	mov	r6, r4	@ ivtmp.1410, pSyntax
	mov	r5, #0	@ i,
.L216:
	mov	r1, #8	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strb	r0, [r6, #205]	@, <variable>.AdvEntSyntax.HRD_FULLNESS
	add	r6, r6, #1	@ ivtmp.1410, ivtmp.1410,
	bgt	.L216	@,
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.37012,
	strb	r2, [r4, #199]	@ D.37012, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.37012,
	bne	.L217	@,
.L228:
	mov	r1, #12	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	add	ip, r0, #1	@ tmp185,,
	mov	r0, r7	@, pBs
	mov	r2, ip, asl #1	@ tmp187, tmp185,
	strh	r2, [r4, #238]	@ movhi	@ tmp187, <variable>.AdvEntSyntax.CODED_WIDTH
	bl	BsGet	@
	add	r3, r0, #1	@ tmp188,,
	mov	ip, r3, asl #1	@ tmp190, tmp188,
	strh	ip, [r4, #240]	@ movhi	@ tmp190, <variable>.AdvEntSyntax.CODED_HEIGHT
	b	.L217	@
	.fnend
	.size	VC1_Vfmw_ParseAdvEntptHdr, .-VC1_Vfmw_ParseAdvEntptHdr
	.align	2
	.global	VC1_RecordSlcStream
	.type	VC1_RecordSlcStream, %function
VC1_RecordSlcStream:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #22644	@ tmp147,
	ldr	r6, [r0, r7]	@ D.37917, <variable>.SlcNum
	mov	fp, r1	@ pSyntax, pSyntax
	ldr	r3, [r0, #3128]	@ pBs, <variable>.pBs
	movw	r1, #22656	@ tmp148,
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	ip, #22648	@ tmp156,
	mov	r7, r6, asl #1	@ tmp399, D.37917,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r5, r7, r6	@ tmp151, tmp399, D.37917
	add	lr, r5, #1	@ tmp172, tmp151,
	add	r5, r0, r5, asl #4	@, tmp153, pCodecInf, tmp151,
	add	lr, r0, lr, asl #4	@, tmp175, pCodecInf, tmp172,
	add	r8, r5, #22528	@ tmp154, tmp153,
	strb	r6, [r5, r1]	@ D.37917, <variable>.SlcNo
	add	r9, lr, #22528	@ tmp176, tmp175,
	ldr	r0, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r9, #120	@ tmp176, tmp176,
	add	r8, r8, #128	@ tmp154, tmp154,
	add	sl, r5, #22528	@ tmp162, tmp153,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	r9, r0, #7	@ tmp166, <variable>.TotalPos,
	add	sl, sl, #120	@ tmp162, tmp162,
	movlt	r0, r9	@ <variable>.TotalPos, tmp166
	add	r0, r2, r0, asr #3	@, tmp168, pCurBsRealStart, <variable>.TotalPos,
	str	r0, [r5, ip]	@ tmp168, <variable>.pStream
	ldr	r2, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	r2, r2, #7	@ tmp178, <variable>.TotalPos,
	str	r2, [lr, ip]	@ tmp178, <variable>.BitOffset
	ldr	r2, [r3, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	ip, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, ip, r2, asl #3	@, tmp190, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp190, <variable>.Len
	bl	MEM_Vir2Phy	@
	movw	ip, #34968	@ tmp213,
	movw	r2, #34944	@ tmp215,
	add	r3, r5, #22528	@ tmp212, tmp153,
	add	r3, r3, #160	@ tmp212, tmp212,
	str	r0, [r8, #4]	@, <variable>.Phy_addr
	movw	r0, #22688	@ tmp206,
	ldr	r1, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r1, [r5, r0]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r2, [r4, r2]	@ D.37937, <variable>.stCurPacket.BsVirAddr
	cmp	r2, #0	@ D.37937,
	beq	.L233	@,
	movw	r1, #34956	@ tmp216,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	bne	.L243	@,
.L233:
	add	r2, r7, r6	@ tmp264, tmp399, D.37917
	mov	r3, #0	@ tmp268,
	add	r2, r4, r2, asl #4	@, tmp266, pCodecInf, tmp264,
	add	ip, r2, #22528	@ tmp299, tmp266,
	add	r5, ip, #120	@ tmp267, tmp267,
	add	r0, ip, #152	@ tmp275, tmp275,
	add	r1, ip, #144	@ tmp291, tmp291,
	add	ip, ip, #160	@ tmp299, tmp299,
	str	r3, [r5, #4]	@ tmp268, <variable>.pStream2
	movw	r5, #22680	@ tmp269,
	str	r3, [ip, #4]	@ tmp268, <variable>.StreamID2
	str	r3, [r2, r5]	@ tmp268, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp268, <variable>.Len2
	str	r3, [r1, #4]	@ tmp268, <variable>.Phy_addr2
.L234:
	movw	r3, #22560	@ tmp310,
	movw	r1, #22564	@ tmp309,
	ldr	r0, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.37955, <variable>.MbHeight
	ldrb	r5, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r0, r3	@ tmp311, <variable>.MbWidth, D.37955
	cmp	r5, #0	@ <variable>.Is2ndFld,
	sub	ip, ip, #1	@ totalMbMin1, tmp311,
	beq	.L237	@,
	add	r2, r7, r6	@ tmp317, tmp399, D.37917
	add	r3, r3, #1	@ tmp321, D.37955,
	add	fp, fp, r2, asl #2	@, tmp319, pSyntax, tmp317,
	add	r3, r3, r3, lsr #31	@, tmp324, tmp321, tmp321,
	add	r2, r4, r2, asl #4	@, tmp332, pCodecInf, tmp317,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.37965, <variable>.SLICE_ADDR, tmp324,
	movw	r0, #22672	@ tmp327,
	cmp	r3, #0	@ D.37965,
	str	r3, [r2, r0]	@ D.37965, <variable>.SlcEndMbn
	ble	.L238	@,
	cmp	ip, r3	@ totalMbMin1, D.37965
	bcc	.L244	@,
.L238:
	add	r6, r7, r6	@ tmp370, tmp399, D.37917
	add	r2, r6, #1	@ tmp371, tmp370,
	add	r0, r4, r2, asl #4	@, tmp374, pCodecInf, tmp371,
	add	r1, r0, #22528	@ tmp375, tmp374,
	add	r3, r1, #120	@ tmp375, tmp375,
	ldr	ip, [r3, #4]	@ <variable>.Len, <variable>.Len
	cmp	ip, #0	@ <variable>.Len,
	ble	.L240	@,
	add	r6, r4, r6, asl #4	@, tmp382, pCodecInf, tmp370,
	add	r1, r6, #22528	@ tmp383, tmp382,
	add	r3, r1, #120	@ tmp383, tmp383,
	ldr	ip, [r3, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	ip, #0	@ <variable>.pStream2,
	beq	.L241	@,
	add	r6, r6, #22528	@ tmp391, tmp382,
	add	r6, r6, #152	@ tmp391, tmp391,
	ldr	r0, [r6, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r0, #0	@ <variable>.Len2,
	ble	.L240	@,
.L241:
	movw	ip, #22644	@ tmp394,
	mov	r0, #1	@ D.37973,
	ldr	r3, [r4, ip]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, r3, r0	@ tmp397, <variable>.SlcNum,
	str	r2, [r4, ip]	@ tmp397, <variable>.SlcNum
.L239:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L237:
	add	r2, r7, r6	@ tmp348, tmp399, D.37917
	movw	r0, #22672	@ tmp352,
	add	fp, fp, r2, asl #2	@, tmp350, pSyntax, tmp348,
	add	r1, r4, r2, asl #4	@, tmp357, pCodecInf, tmp348,
	ldr	r3, [fp, #528]	@ temp.1446, <variable>.SLICE_ADDR
	cmp	ip, r3	@ totalMbMin1, temp.1446
	str	r3, [r1, r0]	@ temp.1446, <variable>.SlcEndMbn
	bcs	.L238	@,
	ldr	r2, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	ip, [sp, #0]	@ totalMbMin1,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.37973, <variable>.Is2ndFld
	b	.L239	@
.L243:
	movw	r0, #22680	@ tmp225,
	mov	ip, #0	@ tmp232,
	str	ip, [r5, r0]	@ tmp232, <variable>.BitOffset2
	movw	r0, #34964	@ tmp240,
	str	r2, [sl, #4]	@ D.37937, <variable>.pStream2
	add	r2, r5, #22528	@ tmp231, tmp153,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r2, r2, #152	@ tmp231, tmp231,
	add	r5, r5, #22528	@ tmp249, tmp153,
	add	r5, r5, #144	@ tmp249, tmp249,
	mov	r0, ip, asl #3	@ tmp242, <variable>.stCurPacket.BsLength,
	str	r0, [r2, #4]	@ tmp242, <variable>.Len2
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r0, #34972	@ tmp259,
	str	ip, [r5, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r2, [r4, r0]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r2, [r3, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
	b	.L234	@
.L244:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	mov	r0, #1	@,
	ldr	r2, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37973,
	b	.L239	@
.L240:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.37973,
	b	.L239	@
	.fnend
	.size	VC1_RecordSlcStream, .-VC1_RecordSlcStream
	.align	2
	.global	VC1_DecIntCompField
	.type	VC1_DecIntCompField, %function
VC1_DecIntCompField:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r5, .L247	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	.pad #36
	sub	sp, sp, #36	@,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	lr, sp	@ tmp151, tmp138
	stmia	lr!, {r0, r1, r2, r3}	@ tmp151,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp150,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	r1, #2	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r2, sp, #32	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-32]	@ Code, <variable>.Code
	ldr	r1, [r3, #-28]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, pc}
.L248:
	.align	2
.L247:
	.word	.LANCHOR0+316
	.fnend
	.size	VC1_DecIntCompField, .-VC1_DecIntCompField
	.align	2
	.global	VC1_DecRefdist
	.type	VC1_DecRefdist, %function
VC1_DecRefdist:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #5	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #23	@ Code,
	bgt	.L250	@,
	mov	r4, r0, asr #3	@ Code.1499, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L250:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	ble	.L253	@,
	cmp	r0, #29	@ Code,
	movle	r4, #4	@ Len,
	movgt	r4, #5	@ Len,
.L253:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, Len
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VC1_DecRefdist, .-VC1_DecRefdist
	.align	2
	.global	VC1_DecAdvPtype
	.type	VC1_DecAdvPtype, %function
VC1_DecAdvPtype:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #4	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code.1523,
	movle	r1, #1	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L258	@,
	cmp	r0, #11	@ Code.1523,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L258	@,
	cmp	r0, #13	@ Code.1523,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L258	@,
	cmp	r0, #14	@ Code.1523,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
.L258:
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, Code
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VC1_DecAdvPtype, .-VC1_DecAdvPtype
	.align	2
	.global	VC1_DecFcm
	.type	VC1_DecFcm, %function
VC1_DecFcm:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #2	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r4, r0	@ Code,
	ble	.L267	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L267:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	mov	r4, #0	@ Code,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VC1_DecFcm, .-VC1_DecFcm
	.align	2
	.global	VC1_Vfmw_ParseAdvSeqHdr
	.type	VC1_Vfmw_ParseAdvSeqHdr, %function
VC1_Vfmw_ParseAdvSeqHdr:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r1, #172	@,
	mov	r5, r0	@ pBs, pBs
	add	r0, r2, #16	@, pSyntax,
	mov	r4, r2	@ pSyntax, pSyntax
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, #2	@,
	mov	r6, r1	@ tmp214,
	str	r0, [r4, #184]	@, <variable>.AdvSeqSyntax.HdrLen
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r6, [r4, #16]	@ tmp214, <variable>.AdvSeqSyntax.PROFILE
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #17]	@, <variable>.AdvSeqSyntax.LEVEL
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #18]	@, <variable>.AdvSeqSyntax.CHROMFORMAT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r4, #19]	@, <variable>.AdvSeqSyntax.FRMRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #20]	@, <variable>.AdvSeqSyntax.BITRTQ_POSTPROC
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	strb	r0, [r4, #21]	@, <variable>.AdvSeqSyntax.POSTPROCFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	uxth	ip, r0	@ D.36861,
	mov	r0, r5	@, pBs
	add	r2, ip, #1	@ tmp222, D.36861,
	mov	r3, r2, asl #1	@ tmp224, tmp222,
	strh	r3, [r4, #172]	@ movhi	@ tmp224, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	ip, r0	@ D.36867,
	mov	r0, r5	@, pBs
	add	r2, ip, r1	@ tmp226, D.36867,
	mov	r3, r2, asl r1	@ tmp228, tmp226,
	strh	r3, [r4, #174]	@ movhi	@ tmp228, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #22]	@, <variable>.AdvSeqSyntax.PULLDOWN
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #23]	@, <variable>.AdvSeqSyntax.INTERLACE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #24]	@, <variable>.AdvSeqSyntax.TFCNTRFLAG
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, tmp214
	strb	r0, [r4, #25]	@, <variable>.AdvSeqSyntax.FINTERPFLAG
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.36882,
	strb	r6, [r4, #26]	@ D.36882, <variable>.AdvSeqSyntax.DISPLAY_EXT
	cmp	r6, #1	@ D.36882,
	beq	.L280	@,
	ldrh	r3, [r4, #172]	@, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	lr, [r4, #174]	@, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	strh	r3, [r4, #176]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	strh	lr, [r4, #178]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
.L273:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.36938,
	strb	r2, [r4, #39]	@ D.36938, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r2, #1	@ D.36938,
	beq	.L281	@,
.L274:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #184]	@ <variable>.AdvSeqSyntax.HdrLen, <variable>.AdvSeqSyntax.HdrLen
	mov	r3, #1	@ D.36947,
	rsb	r2, r1, r0	@ tmp261, <variable>.AdvSeqSyntax.HdrLen,
	str	r2, [r4, #184]	@ tmp261, <variable>.AdvSeqSyntax.HdrLen
.L276:
	mov	r0, r3	@, D.36947
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L281:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36943,
	strb	r1, [r4, #40]	@ D.36943, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r1, #31	@ D.36943,
	movhi	r3, #0	@ D.36947,
	bhi	.L276	@,
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #41]	@, <variable>.AdvSeqSyntax.BIT_RATE_EXPONENT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	strb	r0, [r4, #42]	@, <variable>.AdvSeqSyntax.BUFFER_SIZE_EXPONENT
	beq	.L274	@,
	mov	r6, r4	@ ivtmp.1575, pSyntax
	mov	r7, #0	@ i,
.L277:
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	add	r7, r7, #1	@ i, i,
	strh	r0, [r6, #44]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_RATE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r3, r7	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strh	r0, [r6, #108]	@ movhi	@, <variable>.AdvSeqSyntax.HRD_BUFFER
	add	r6, r6, #2	@ ivtmp.1575, ivtmp.1575,
	bgt	.L277	@,
	b	.L274	@
.L280:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r2, r0, #1	@ tmp235,,
	mov	r0, r5	@, pBs
	strh	r2, [r4, #176]	@ movhi	@ tmp235, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.36882
	add	r3, r0, #1	@ tmp237,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp237, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.36893,
	strb	r0, [r4, #27]	@ D.36893, <variable>.AdvSeqSyntax.ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.36893,
	beq	.L282	@,
.L270:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36907,
	strb	r1, [r4, #31]	@ D.36907, <variable>.AdvSeqSyntax.FRAMERATE_FLAG
	cmp	r1, #1	@ D.36907,
	beq	.L283	@,
.L271:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.36924,
	strb	r0, [r4, #35]	@ D.36924, <variable>.AdvSeqSyntax.COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.36924,
	bne	.L273	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #36]	@, <variable>.AdvSeqSyntax.COLOR_PRIM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #37]	@, <variable>.AdvSeqSyntax.TRANSFER_CHAR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #38]	@, <variable>.AdvSeqSyntax.MATRIX_COEF
	b	.L273	@
.L283:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.36912,
	strb	ip, [r4, #32]	@ D.36912, <variable>.AdvSeqSyntax.FRAMERATEIND
	cmp	ip, #0	@ D.36912,
	bne	.L272	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, <variable>.AdvSeqSyntax.FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, <variable>.AdvSeqSyntax.FRAMERATEDR
	b	.L271	@
.L282:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.36898,
	strb	r1, [r4, #28]	@ D.36898, <variable>.AdvSeqSyntax.ASPECT_RATIO
	cmp	r1, #15	@ D.36898,
	bne	.L270	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, <variable>.AdvSeqSyntax.ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, <variable>.AdvSeqSyntax.ASPECT_VERT_SIZE
	b	.L270	@
.L272:
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, <variable>.AdvSeqSyntax.FRAMERATEXP
	b	.L271	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSeqHdr, .-VC1_Vfmw_ParseAdvSeqHdr
	.align	2
	.global	VC1_DecBfraction
	.type	VC1_DecBfraction, %function
VC1_DecBfraction:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L289	@ tmp144,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #220
	sub	sp, sp, #220	@,,
	mov	r7, ip	@ tmp182, tmp144
	mov	r4, r0	@ pBs, pBs
	str	r1, [sp, #12]	@ pScaleFactor, %sfp
	add	r6, sp, #188	@ tmp143,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp182,,,,
	add	r5, ip, #28	@ tmp147, tmp144,
	add	lr, sp, #160	@ tmp146,,
	add	sl, ip, #56	@ tmp150, tmp144,
	add	r9, sp, #72	@ tmp149,,
	add	r8, sp, #16	@,,
	str	r8, [sp, #4]	@, %sfp
	add	fp, ip, #112	@ tmp153, tmp144,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp143,,,,
	add	ip, ip, #168	@ tmp156, tmp144,
	ldmia	r7, {r0, r1, r2}	@ tmp182,,,
	add	r8, sp, #128	@ tmp155,,
	stmia	r6, {r0, r1, r2}	@ tmp183,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp184,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldmia	r5, {r0, r1, r2}	@ tmp184,,,
	mov	r5, r9	@ tmp187, tmp149
	stmia	lr, {r0, r1, r2}	@ tmp185,,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp186,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp187,,,,
	mov	lr, r5	@ tmp189, tmp187
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp188,,,,
	ldr	r5, [sp, #4]	@ tmp193, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp190,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp189,,,,
	ldmia	sl, {r0, r1}	@ tmp190,,
	stmia	lr, {r0, r1}	@ tmp191,,
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp192,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp193,,,,
	mov	lr, r5	@ tmp195, tmp193
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp194,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp196,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	fp, {r0, r1}	@ tmp196,,
	stmia	lr, {r0, r1}	@ tmp197,,
	mov	lr, r8	@ tmp199, tmp155
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp199,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp198,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp199,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	ble	.L288	@,
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	add	r3, sp, #216	@,,
	sub	r8, r0, #112	@ D.36415, Code.1602,
	and	r0, r0, #15	@ tmp165, Code.1602,
	add	r0, r0, #7	@ BfracIdx, tmp165,
	add	ip, r3, r8, asl #2	@, tmp168,, D.36415,
	ldr	r3, [ip, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [ip, #-144]	@ Numerator, NumLongVLC
.L286:
	add	r8, sp, #216	@,,
	ldr	lr, [sp, #12]	@, %sfp
	add	r3, r8, r3, asl #2	@, tmp177,, Denominator,
	ldr	ip, [r3, #-92]	@ tmp179, Inverse
	mul	r1, r2, ip	@ tmp180, Numerator, tmp179
	str	r1, [lr, #0]	@ tmp180,
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L288:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r1, sp, #216	@,,
	add	r2, r1, r5, asl #2	@, tmp159,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r2, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r2, #-28]	@ Numerator, NumShortVLC
	b	.L286	@
.L290:
	.align	2
.L289:
	.word	.LANCHOR0+348
	.fnend
	.size	VC1_DecBfraction, .-VC1_DecBfraction
	.align	2
	.global	VC1_DecBfractionSMP
	.type	VC1_DecBfractionSMP, %function
VC1_DecBfractionSMP:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L298	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #220
	sub	sp, sp, #220	@,,
	mov	r7, ip	@ tmp185, tmp146
	mov	r4, r0	@ pBs, pBs
	str	r1, [sp, #8]	@ pScaleFactor, %sfp
	add	r6, sp, #188	@ tmp145,,
	str	r2, [sp, #12]	@ pPTYPE, %sfp
	add	r5, ip, #28	@ tmp149, tmp146,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp185,,,,
	add	lr, sp, #160	@ tmp148,,
	add	sl, ip, #56	@ tmp152, tmp146,
	add	r9, sp, #72	@ tmp151,,
	add	r8, sp, #16	@,,
	str	r8, [sp, #4]	@, %sfp
	add	fp, ip, #112	@ tmp155, tmp146,
	add	ip, ip, #168	@ tmp158, tmp146,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp145,,,,
	add	r8, sp, #128	@ tmp157,,
	ldmia	r7, {r0, r1, r2}	@ tmp185,,,
	stmia	r6, {r0, r1, r2}	@ tmp186,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp148,,,,
	ldmia	r5, {r0, r1, r2}	@ tmp187,,,
	mov	r5, r9	@ tmp190, tmp151
	stmia	lr, {r0, r1, r2}	@ tmp188,,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp190,,,,
	mov	lr, r5	@ tmp192, tmp190
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp191,,,,
	ldr	r5, [sp, #4]	@ tmp196, %sfp
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	sl!, {r0, r1, r2, r3}	@ tmp193,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	sl, {r0, r1}	@ tmp193,,
	stmia	lr, {r0, r1}	@ tmp194,,
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp196,,,,
	mov	lr, r5	@ tmp198, tmp196
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp197,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp199,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp198,,,,
	ldmia	fp, {r0, r1}	@ tmp199,,
	stmia	lr, {r0, r1}	@ tmp200,,
	mov	lr, r8	@ tmp202, tmp157
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp202,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp201,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp202,,,,
	mov	r0, r4	@, pBs
	mov	r1, #3	@,
	bl	BsShow	@
	cmp	r0, #6	@ Code,
	mov	r5, r0	@ Code,
	bgt	.L292	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r1, sp, #216	@,,
	add	r2, r1, r5, asl #2	@, tmp161,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r2, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r2, #-28]	@ Numerator, NumShortVLC
.L293:
	add	r8, sp, #216	@,,
	add	ip, r8, r3, asl #2	@, tmp180,, Denominator,
	ldr	lr, [ip, #-92]	@ tmp182, Inverse
	mul	r1, r2, lr	@ tmp183, Numerator, tmp182
	ldr	r2, [sp, #8]	@, %sfp
	str	r1, [r2, #0]	@ tmp183,
.L295:
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L292:
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	and	r5, r0, #15	@ D.36382, Code.1627,
	cmp	r5, #15	@ D.36382,
	beq	.L297	@,
	sub	r8, r0, #112	@ D.36386, Code.1627,
	add	r3, sp, #216	@,,
	add	r0, r5, #7	@ BfracIdx, D.36382,
	add	ip, r3, r8, asl #2	@, tmp171,, D.36386,
	ldr	r3, [ip, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [ip, #-144]	@ Numerator, NumLongVLC
	b	.L293	@
.L297:
	ldr	r0, [sp, #12]	@, %sfp
	mov	lr, #4	@ tmp167,
	strb	lr, [r0, #0]	@ tmp167,
	mov	r0, #22	@ BfracIdx,
	b	.L295	@
.L299:
	.align	2
.L298:
	.word	.LANCHOR0+548
	.fnend
	.size	VC1_DecBfractionSMP, .-VC1_DecBfractionSMP
	.align	2
	.global	VC1_DecMvmode2
	.type	VC1_DecMvmode2, %function
VC1_DecMvmode2:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ PQUANT, PQUANT
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r1, #3	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L309	@ tmp142,
	add	r6, sp, #16	@ tmp141,,
	mov	ip, sp	@ tmp144,
	add	lr, r3, #16	@ tmp145, tmp142,
	mov	r7, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp141,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp144,,,,
	ble	.L308	@,
	cmp	r7, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L303:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	add	r1, sp, #32	@,,
	cmp	r4, #12	@ PQUANT,
	add	r6, r1, r6, asl #2	@, tmp148,, Code,
	ldrhi	r0, [r6, #-16]	@ Code.1651, ModeLow
	ldrls	r0, [r6, #-32]	@ Code.1651, ModeHigh
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L308:
	cmp	r7, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L303	@
.L310:
	.align	2
.L309:
	.word	.LANCHOR0+748
	.fnend
	.size	VC1_DecMvmode2, .-VC1_DecMvmode2
	.align	2
	.global	VC1_DecMvmodeInterB
	.type	VC1_DecMvmodeInterB, %function
VC1_DecMvmodeInterB:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ PQUANT, PQUANT
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r1, #3	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r3, .L321	@ tmp142,
	add	ip, sp, #24	@ tmp141,,
	mov	lr, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp141,,,,
	ble	.L319	@,
	cmp	lr, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L314:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r4, #12	@ PQUANT,
	bhi	.L320	@,
	add	r3, sp, #8	@ tmp162,,
	add	r0, sp, #40	@,,
	add	r6, r0, r6, asl #2	@, tmp158,, Code,
	mov	lr, #0	@ tmp148,
	str	lr, [r3], #4	@ tmp148, ModeHigh
	add	ip, r3, #8	@ tmp164, tmp162,
	mov	r0, #3	@ tmp155,
	mov	r2, #1	@ tmp153,
	str	lr, [ip, #0]	@ tmp148, ModeHigh
	mov	r1, #2	@ tmp154,
	str	r2, [sp, #4]	@ tmp153, ModeHigh
	str	r1, [sp, #12]	@ tmp154, ModeHigh
	str	r0, [sp, #16]	@ tmp155, ModeHigh
	ldr	r0, [r6, #-36]	@ Code.1675, ModeHigh
.L317:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L320:
	add	r2, sp, #40	@,,
	add	r6, r2, r6, asl #2	@, tmp145,, Code,
	ldr	r0, [r6, #-16]	@ Code.1675, ModeLow
	b	.L317	@
.L319:
	cmp	lr, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L314	@
.L322:
	.align	2
.L321:
	.word	.LANCHOR0+780
	.fnend
	.size	VC1_DecMvmodeInterB, .-VC1_DecMvmodeInterB
	.align	2
	.global	VC1_DecMvmodeProgrB
	.type	VC1_DecMvmodeProgrB, %function
VC1_DecMvmodeProgrB:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r1, #1	@,
	.pad #12
	sub	sp, sp, #12	@,,
	bl	BsSkip	@
	ldr	r1, .L325	@ tmp139,
	add	ip, sp, #8	@,,
	mov	r3, sp	@ tmp138,
	add	r2, ip, r0, asl #2	@, tmp143,, Tmp,
	ldmia	r1, {r0, r1}	@ tmp139,,
	stmia	r3, {r0, r1}	@ tmp138,,
	ldr	r0, [r2, #-8]	@, Mode
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L326:
	.align	2
.L325:
	.word	.LANCHOR0+796
	.fnend
	.size	VC1_DecMvmodeProgrB, .-VC1_DecMvmodeProgrB
	.align	2
	.global	VC1_DecMvmodeProgrP
	.type	VC1_DecMvmodeProgrP, %function
VC1_DecMvmodeProgrP:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	sl, r1	@ PQUANT, PQUANT
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r1, #4	@,
	mov	r8, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r7, .L337	@ tmp142,
	add	r4, sp, #20	@ tmp141,,
	mov	ip, sp	@ tmp145,
	add	lr, r7, #20	@ tmp146, tmp142,
	mov	r6, r4	@ tmp158, tmp141
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp157,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldr	r4, [r7, #0]	@ C.507, C.507
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp159,,,,
	str	r4, [r6, #0]	@ C.507, ModeLow
	ldr	lr, [lr, #0]	@ C.508, C.508
	stmia	ip!, {r0, r1, r2, r3}	@ tmp145,,,,
	str	lr, [ip, #0]	@ C.508, ModeHigh
	ble	.L336	@,
	cmp	r5, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	ble	.L330	@,
	cmp	r5, #8	@ Tmp,
	movge	r4, #0	@, Code
	movlt	r4, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L330:
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	add	r1, sp, #40	@,,
	cmp	sl, #12	@ PQUANT,
	add	r4, r1, r4, asl #2	@, tmp150,, Code,
	ldrhi	r0, [r4, #-20]	@ Code.1722, ModeLow
	ldrls	r0, [r4, #-40]	@ Code.1722, ModeHigh
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L336:
	cmp	r5, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L330	@
.L338:
	.align	2
.L337:
	.word	.LANCHOR0+804
	.fnend
	.size	VC1_DecMvmodeProgrP, .-VC1_DecMvmodeProgrP
	.align	2
	.global	VC1_DecTransacfrm
	.type	VC1_DecTransacfrm, %function
VC1_DecTransacfrm:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #64
	sub	sp, sp, #64	@,,
	mov	r4, r0	@ pBs, pBs
	mov	r2, #64	@,
	mov	r1, #0	@,
	mov	r0, sp	@,
	bl	memset	@
	mov	ip, #2	@ tmp143,
	mov	r1, ip	@, tmp143
	mov	r0, r4	@, pBs
	mov	r3, #1	@ tmp140,
	str	ip, [sp, #20]	@ tmp143, <variable>.Len
	str	r3, [sp, #16]	@ tmp140, <variable>.Code
	str	r3, [sp, #4]	@ tmp140, <variable>.Len
	str	r3, [sp, #12]	@ tmp140, <variable>.Len
	str	ip, [sp, #24]	@ tmp143, <variable>.Code
	str	ip, [sp, #28]	@ tmp143, <variable>.Len
	bl	BsShow	@
	add	r2, sp, #64	@,,
	add	r3, r2, r0, asl #3	@, tmp148,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, pc}
	.fnend
	.size	VC1_DecTransacfrm, .-VC1_DecTransacfrm
	.align	2
	.global	VC1_Vfmw_ParseAdvIFieldHdr
	.type	VC1_Vfmw_ParseAdvIFieldHdr, %function
VC1_Vfmw_ParseAdvIFieldHdr:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.37516,
	strb	r7, [r4, #358]	@ D.37516, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37516,
	bne	.L352	@,
.L342:
	mov	r0, #0	@ D.37520,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L352:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.37516
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37516,
	movhi	r3, #0	@ tmp152,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp152, <variable>.AdvPicSyntax.HALFQP
	bls	.L353	@,
.L344:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp156,
	strneb	r3, [r4, #359]	@ tmp156, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L354	@,
.L346:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L355	@,
.L347:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L342	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37549, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37549,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L348	@,
.L351:
	mov	r0, #1	@ D.37520,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L348:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L351	@
.L353:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L344	@
.L355:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L347	@
.L354:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L346	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIFieldHdr, .-VC1_Vfmw_ParseAdvIFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIPicHdr
	.type	VC1_Vfmw_ParseAdvIPicHdr, %function
VC1_Vfmw_ParseAdvIPicHdr:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L369	@,
.L357:
	ldr	r3, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r3, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L358	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L370	@,
.L358:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.37110,
	strb	r7, [r4, #358]	@ D.37110, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37110,
	bne	.L371	@,
.L359:
	mov	r0, #0	@ D.37114,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L371:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.37110
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37110,
	movhi	r3, #0	@ tmp161,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp161, <variable>.AdvPicSyntax.HALFQP
	bls	.L372	@,
.L361:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp165,
	strneb	r3, [r4, #359]	@ tmp165, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L373	@,
.L363:
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L374	@,
.L364:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L359	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37143, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37143,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L365	@,
.L368:
	mov	r0, #1	@ D.37114,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L365:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L368	@
.L370:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L358	@
.L369:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	b	.L357	@
.L372:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L361	@
.L374:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L364	@
.L373:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L363	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIPicHdr, .-VC1_Vfmw_ParseAdvIPicHdr
	.align	2
	.global	VC1_DecMvrange
	.type	VC1_DecMvrange, %function
VC1_DecMvrange:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	lr, .L377	@ tmp139,
	mov	r4, r0	@ pBs, pBs
	.pad #68
	sub	sp, sp, #68	@,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	r5, sp	@ tmp151, tmp138
	stmia	r5!, {r0, r1, r2, r3}	@ tmp151,,,,
	mov	ip, r5	@ tmp153, tmp151
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	r5, ip	@ tmp155, tmp153
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp155,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp154,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp155,,,,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	add	r2, sp, #64	@,,
	add	r3, r2, r0, asl #3	@, tmp142,,,
	mov	r0, r4	@, pBs
	ldr	r4, [r3, #-64]	@ Code, <variable>.Code
	ldr	r1, [r3, #-60]	@, <variable>.Len
	bl	BsSkip	@
	mov	r0, r4	@, Code
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, pc}
.L378:
	.align	2
.L377:
	.word	.LANCHOR0+844
	.fnend
	.size	VC1_DecMvrange, .-VC1_DecMvrange
	.align	2
	.global	VC1_Vfmw_ParseAdvBFieldHdr
	.type	VC1_Vfmw_ParseAdvBFieldHdr, %function
VC1_Vfmw_ParseAdvBFieldHdr:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r8, r1	@ pCodecInf, pCodecInf
	mov	r7, #1	@ tmp158,
	mov	r1, #5	@,
	strb	r7, [r2, #380]	@ tmp158, <variable>.AdvPicSyntax.NUMREF
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37668,
	strb	r6, [r4, #358]	@ D.37668, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.37668,
	bne	.L393	@,
.L380:
	mov	r3, #0	@ D.37672,
	mov	r0, r3	@, D.37672
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L393:
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.37668
	mov	r0, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37668,
	movhi	r3, #0	@ tmp163,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp163, <variable>.AdvPicSyntax.HALFQP
	bls	.L394	@,
.L382:
	cmp	sl, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp167,
	strneb	r3, [r4, #359]	@ tmp167, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L395	@,
.L384:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L396	@,
.L385:
	ldrb	r0, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L397	@,
.L386:
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L398	@,
.L387:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeInterB	@
	mov	r1, r8	@, pCodecInf
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	strb	r0, [r4, #362]	@, <variable>.AdvPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L380	@,
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L399	@,
.L388:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37720, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37720,
	bne	.L400	@,
.L389:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L401	@,
.L390:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37672,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.37672
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L400:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L389	@
.L399:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L388	@
.L394:
	mov	r1, r7	@, tmp158
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L382	@
.L398:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L387	@
.L397:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L386	@
.L396:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L385	@
.L395:
	mov	r1, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L384	@
.L401:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.37728,
	strb	ip, [r4, #368]	@ D.37728, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.37728,
	bne	.L390	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L390	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBFieldHdr, .-VC1_Vfmw_ParseAdvBFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPFieldHdr
	.type	VC1_Vfmw_ParseAdvPFieldHdr, %function
VC1_Vfmw_ParseAdvPFieldHdr:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.37564,
	strb	r6, [r4, #358]	@ D.37564, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.37564,
	bne	.L421	@,
	mov	r0, r6	@, D.37568
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L421:
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.37564
	mov	r0, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.37564,
	movhi	r3, #0	@ tmp172,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp172, <variable>.AdvPicSyntax.HALFQP
	bls	.L422	@,
.L406:
	cmp	r7, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp176,
	strneb	r3, [r4, #359]	@ tmp176, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L423	@,
.L408:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L424	@,
.L409:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.37589,
	strb	r0, [r4, #380]	@ D.37589, <variable>.AdvPicSyntax.NUMREF
	cmp	r0, #0	@ D.37589,
	beq	.L425	@,
.L410:
	ldrb	r2, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r2, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L426	@,
.L411:
	ldrb	r6, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r6, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L427	@,
.L412:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	ip, r0	@ D.37608,
	strb	ip, [r4, #362]	@ D.37608, <variable>.AdvPicSyntax.MVMODE
	cmp	ip, #4	@ D.37608,
	beq	.L428	@,
.L413:
	mov	r1, #3	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #380]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.NUMREF,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	uxtb	r0, r0	@ iftmp.570,
	strb	r0, [r4, #366]	@ iftmp.570, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L416	@,
	movw	r6, #362	@ tmp201,
	ldrh	lr, [r4, r6]	@ tmp202,
	cmp	lr, #4	@ tmp202,
	beq	.L416	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37641, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37641,
	bne	.L429	@,
.L418:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L430	@,
.L419:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.37568,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.37568
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L416:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37641, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37641,
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	beq	.L418	@,
.L429:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L418	@
.L425:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	rsbs	r1, r0, #1	@ tmp181,
	movcc	r1, #0	@ tmp181
	strb	r1, [r4, #381]	@ tmp181, <variable>.AdvPicSyntax.REFFIELD
	b	.L410	@
.L422:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L406	@
.L423:
	mov	r1, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L408	@
.L430:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.37649,
	strb	ip, [r4, #368]	@ D.37649, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.37649,
	bne	.L419	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L419	@
.L428:
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	VC1_DecIntCompField	@
	mov	r1, #6	@,
	str	r0, [r4, #476]	@, <variable>.AdvPicSyntax.INTCOMPFIELD
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #476]	@ <variable>.AdvPicSyntax.INTCOMPFIELD, <variable>.AdvPicSyntax.INTCOMPFIELD
	cmp	r3, #0	@ <variable>.AdvPicSyntax.INTCOMPFIELD,
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	bne	.L413	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, <variable>.AdvPicSyntax.LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, <variable>.AdvPicSyntax.LUMSHIFT2
	b	.L413	@
.L424:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L409	@
.L427:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L412	@
.L426:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L411	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPFieldHdr, .-VC1_Vfmw_ParseAdvPFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFieldPicHdr
	.type	VC1_Vfmw_ParseAdvFieldPicHdr, %function
VC1_Vfmw_ParseAdvFieldPicHdr:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r6, r0	@ pBs, pBs
	cmp	r3, #0	@ <variable>.Is2ndFld,
	mov	r4, r2	@ pSyntax, pSyntax
	beq	.L432	@,
	movw	r1, #22644	@ tmp160,
	ldr	r0, [r5, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L433	@,
.L432:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp162,
	movt	r2, #:upper16:.LANCHOR0	@ tmp162,
	add	ip, r2, r0, asl #3	@, tmp171, tmp162, D.37763,
	str	r0, [r4, #472]	@ D.37763, <variable>.AdvPicSyntax.FPTYPE
	ldr	r2, [ip, #908]	@ D.37765, FldPTypeTab
	ldr	r0, [ip, #912]	@ D.37766, FldPTypeTab
	str	r2, [r4, #500]	@ D.37765, <variable>.AdvPicSyntax.FldPicType
	str	r0, [r4, #504]	@ D.37766, <variable>.AdvPicSyntax.FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	uxtbeq	r0, r2	@ iftmp.571, D.37765
	uxtbne	r0, r0	@ iftmp.571, D.37766
	strb	r0, [r4, #349]	@ iftmp.571, <variable>.AdvPicSyntax.PTYPE
	ldrb	r3, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L459	@,
.L436:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp184,
	streqb	r2, [r4, #352]	@ tmp184, <variable>.AdvPicSyntax.TFF
	bne	.L460	@,
.L439:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L461	@,
.L440:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp194,
	addeq	r3, r3, #1	@ tmp193, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp194, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L462	@,
.L444:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r4, #191]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.REFDIST_FLAG, <variable>.AdvEntSyntax.REFDIST_FLAG
	cmp	r2, #1	@ <variable>.AdvEntSyntax.REFDIST_FLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	beq	.L463	@,
.L446:
	ldr	r0, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	r0, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	bgt	.L447	@,
.L448:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L449	@
.L453:
	.word	.L450
	.word	.L451
	.word	.L452
	.word	.L449
	.word	.L450
.L460:
	ldrb	lr, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	lr, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L438	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #354]	@, <variable>.AdvPicSyntax.RPTFRM
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L440	@,
.L461:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp190,
	addeq	r3, r3, #2	@ tmp189, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp190, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L444	@,
.L462:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37811,
	strb	r1, [r4, #355]	@ D.37811, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	r1, #1	@ D.37811,
	bne	.L444	@,
	ldr	ip, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	ip, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L444	@,
	mov	r7, r4	@ ivtmp.1901, pSyntax
	mov	r8, #0	@ i,
.L445:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.1901, ivtmp.1901,
	bgt	.L445	@,
	b	.L444	@
.L452:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L454:
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	bne	.L464	@,
.L455:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r3, r2, #1	@ tmp217, <variable>.Is2ndFld,
	movne	r3, #1	@ tmp217
	strb	r3, [r4, #389]	@ tmp217, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L450:
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	beq	.L455	@,
.L464:
	ldrb	ip, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r1, ip, #0	@ tmp214, <variable>.Is2ndFld,
	movne	r1, #1	@ tmp214
	strb	r1, [r4, #389]	@ tmp214, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L451:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	b	.L454	@
.L449:
	mov	r0, #0	@ Ret,
	b	.L454	@
.L459:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r4, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L436	@
.L463:
	ldr	lr, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	lr, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	ble	.L465	@,
.L447:
	mov	r0, r6	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L448	@
.L438:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #353]	@, <variable>.AdvPicSyntax.RFF
	b	.L439	@
.L465:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, <variable>.AdvPicSyntax.REFDIST
	b	.L446	@
.L433:
	ldr	ip, [r2, #504]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.FldPicType
	strb	ip, [r2, #349]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.PTYPE
	ldrb	r1, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r1, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	b	.L448	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFieldPicHdr, .-VC1_Vfmw_ParseAdvFieldPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBPicHdr
	.type	VC1_Vfmw_ParseAdvBPicHdr, %function
VC1_Vfmw_ParseAdvBPicHdr:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L467	@,
	ldr	r3, [r4, #392]	@ prephitmp.1928, <variable>.AdvPicSyntax.FCM
	cmp	r3, #2	@ prephitmp.1928,
	beq	.L467	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L492	@,
.L469:
	cmp	r3, #0	@ prephitmp.1928,
	bne	.L470	@,
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.37306,
	strb	r0, [r4, #350]	@ D.37306, <variable>.AdvPicSyntax.BFRACTION
	cmp	r0, #21	@ D.37306,
	beq	.L471	@,
.L470:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.37312,
	strb	r7, [r4, #358]	@ D.37312, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37312,
	bne	.L493	@,
.L471:
	mov	r3, #0	@ D.37310,
	mov	r0, r3	@, D.37310
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L493:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.37312
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37312,
	movhi	r3, #0	@ tmp180,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp180, <variable>.AdvPicSyntax.HALFQP
	bls	.L494	@,
.L473:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp184,
	strneb	r3, [r4, #359]	@ tmp184, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L495	@,
.L475:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L496	@,
.L476:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L497	@,
.L477:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L498	@,
.L478:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L499	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r3, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L500	@,
.L483:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	str	r0, [r4, #468]	@, <variable>.AdvPicSyntax.INTCOMP
.L482:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L471	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L501	@,
.L484:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r0, r0	@ iftmp.559,
	strb	r0, [r4, #367]	@ iftmp.559, <variable>.AdvPicSyntax.CBPTAB
	beq	.L502	@,
.L487:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37379, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37379,
	bne	.L503	@,
.L488:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L504	@,
.L489:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37310,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.37310
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L467:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	ldr	r3, [r4, #392]	@ prephitmp.1928, <variable>.AdvPicSyntax.FCM
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L469	@,
.L492:
	cmp	r3, #0	@ prephitmp.1928,
	bne	.L470	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ prephitmp.1928, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L469	@
.L503:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L488	@
.L494:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L473	@
.L499:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r0, #3	@ iftmp.558,
	movne	r0, #1	@ iftmp.558,
	strb	r0, [r4, #362]	@ iftmp.558, <variable>.AdvPicSyntax.MVMODE
	b	.L482	@
.L495:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L475	@
.L496:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L476	@
.L497:
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L477	@
.L498:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L478	@
.L504:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.37389,
	strb	r1, [r4, #368]	@ D.37389, <variable>.AdvPicSyntax.TTMBF
	cmp	r1, #1	@ D.37389,
	bne	.L489	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L489	@
.L502:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L487	@
.L501:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L484	@
.L500:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L483	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBPicHdr, .-VC1_Vfmw_ParseAdvBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPPicHdr
	.type	VC1_Vfmw_ParseAdvPPicHdr, %function
VC1_Vfmw_ParseAdvPPicHdr:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #1	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r4, #348]	@, <variable>.AdvPicSyntax.RNDCTRL
	beq	.L506	@,
	ldr	r0, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r0, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L506	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L531	@,
.L508:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.37174,
	strb	r7, [r4, #358]	@ D.37174, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.37174,
	bne	.L532	@,
.L509:
	mov	r3, #0	@ D.37178,
	mov	r0, r3	@, D.37178
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L532:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.37174
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.37174,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp183, <variable>.AdvPicSyntax.HALFQP
	bls	.L533	@,
.L511:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp187,
	strneb	r3, [r4, #359]	@ tmp187, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L534	@,
.L513:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L535	@,
.L514:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L536	@,
.L515:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L537	@,
	ldrb	r0, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	movne	r0, #0	@ tmp204,
	strneb	r0, [r4, #373]	@ tmp204, <variable>.AdvPicSyntax.DMVRANGE
	beq	.L538	@,
.L519:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, <variable>.AdvPicSyntax.QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.37227,
	str	r0, [r4, #468]	@ D.37227, <variable>.AdvPicSyntax.INTCOMP
	beq	.L539	@,
.L520:
	mov	r2, #0	@ tmp209,
	strb	r2, [r4, #382]	@ tmp209, <variable>.AdvPicSyntax.MVTYPEMBMode
.L517:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L509	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L540	@,
.L521:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #0	@ <variable>.AdvPicSyntax.FCM,
	moveq	r1, #2	@,
	movne	r1, #3	@,
	strb	r0, [r4, #366]	@, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r6, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r6, #2	@ <variable>.AdvPicSyntax.FCM,
	uxtb	r1, r0	@ iftmp.556,
	strb	r1, [r4, #367]	@ iftmp.556, <variable>.AdvPicSyntax.CBPTAB
	beq	.L541	@,
.L524:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.37260, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.37260,
	bne	.L542	@,
.L527:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L543	@,
.L528:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37178,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.37178
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L506:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L508	@,
.L531:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L508	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L508	@
.L537:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r3, r0	@ D.37208,
	strb	r3, [r4, #362]	@ D.37208, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ D.37208,
	bne	.L517	@,
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #363]	@, <variable>.AdvPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L517	@
.L533:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L511	@
.L542:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L527	@
.L534:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L513	@
.L536:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L515	@
.L535:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L514	@
.L540:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L521	@
.L543:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.37268,
	strb	r3, [r4, #368]	@ D.37268, <variable>.AdvPicSyntax.TTMBF
	cmp	r3, #1	@ D.37268,
	bne	.L528	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L528	@
.L541:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	bl	BsGet	@
	ldrb	ip, [r4, #374]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.QMVSWITCH, <variable>.AdvPicSyntax.QMVSWITCH
	cmp	ip, #1	@ <variable>.AdvPicSyntax.QMVSWITCH,
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	movne	r0, #0	@ iftmp.557,
	strneb	r0, [r4, #377]	@ iftmp.557, <variable>.AdvPicSyntax.QMVBPTAB
	bne	.L524	@
.L544:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ iftmp.557,
	strb	r0, [r4, #377]	@ iftmp.557, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L524	@
.L539:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L520	@
.L538:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L519	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPPicHdr, .-VC1_Vfmw_ParseAdvPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseMPBPicHdr
	.type	VC1_Vfmw_ParseMPBPicHdr, %function
VC1_Vfmw_ParseMPBPicHdr:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.36671,
	strb	r7, [r4, #254]	@ D.36671, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.36671,
	bne	.L559	@,
.L546:
	mov	r3, #0	@ D.36675,
	mov	r0, r3	@, D.36675
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L559:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.36671
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.36671,
	movhi	r3, #0	@ tmp158,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp158, <variable>.SMPPicSyntax.HALFQP
	bls	.L560	@,
.L548:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp162,
	strneb	r3, [r4, #256]	@ tmp162, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L561	@,
.L550:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp166,
	strneb	r3, [r4, #257]	@ tmp166, <variable>.SMPPicSyntax.MVRANGE
	beq	.L562	@,
.L552:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	moveq	r0, #3	@ iftmp.545,
	movne	r0, #1	@ iftmp.545,
	strb	r0, [r4, #259]	@ iftmp.545, <variable>.SMPPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L546	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.36708, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.36708,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L563	@,
.L555:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L564	@,
.L556:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.36675,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.36675
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L563:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L555	@
.L560:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L548	@
.L562:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L552	@
.L561:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L550	@
.L564:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.36718,
	strb	r0, [r4, #265]	@ D.36718, <variable>.SMPPicSyntax.TTMBF
	cmp	r0, #1	@ D.36718,
	bne	.L556	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L556	@
	.fnend
	.size	VC1_Vfmw_ParseMPBPicHdr, .-VC1_Vfmw_ParseMPBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPPicHdr
	.type	VC1_Vfmw_ParseSMPPPicHdr, %function
VC1_Vfmw_ParseSMPPPicHdr:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.36589,
	strb	r7, [r4, #254]	@ D.36589, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.36589,
	bne	.L580	@,
.L566:
	mov	r3, #0	@ D.36593,
	mov	r0, r3	@, D.36593
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L580:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.36589
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.36589,
	movhi	r3, #0	@ tmp165,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp165, <variable>.SMPPicSyntax.HALFQP
	bls	.L581	@,
.L568:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp169,
	strneb	r3, [r4, #256]	@ tmp169, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L582	@,
.L570:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp173,
	strneb	r3, [r4, #257]	@ tmp173, <variable>.SMPPicSyntax.MVRANGE
	beq	.L583	@,
.L572:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r0, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	ldrneb	r1, [r4, #258]	@ zero_extendqisi2	@ prephitmp.2016, <variable>.SMPPicSyntax.RESPIC
	beq	.L584	@,
.L574:
	mov	r0, r6	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r2, r0	@ D.36622,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r1, r0	@ D.36626,
	strb	r1, [r4, #259]	@ D.36626, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #4	@ D.36626,
	beq	.L585	@,
.L575:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L566	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.36643, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.36643,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L586	@,
.L576:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, r0	@ D.36648,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L587	@,
.L577:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.36593,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.36593
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L586:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L576	@
.L581:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L568	@
.L585:
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmode2	@
	mov	r1, #6	@,
	strb	r0, [r4, #260]	@, <variable>.SMPPicSyntax.MVMODE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #261]	@, <variable>.SMPPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #262]	@, <variable>.SMPPicSyntax.LUMSHIFT
	b	.L575	@
.L584:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2016,
	strb	r1, [r4, #258]	@ prephitmp.2016, <variable>.SMPPicSyntax.RESPIC
	b	.L574	@
.L583:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L572	@
.L582:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L570	@
.L587:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.36653,
	strb	r2, [r4, #265]	@ D.36653, <variable>.SMPPicSyntax.TTMBF
	cmp	r2, #1	@ D.36653,
	bne	.L577	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L577	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPPicHdr, .-VC1_Vfmw_ParseSMPPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPIPicHdr
	.type	VC1_Vfmw_ParseSMPIPicHdr, %function
VC1_Vfmw_ParseSMPIPicHdr:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #7	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r7, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #253]	@, <variable>.SMPPicSyntax.BF
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.36537,
	strb	r6, [r5, #254]	@ D.36537, <variable>.SMPPicSyntax.PQINDEX
	cmp	r6, #0	@ D.36537,
	bne	.L602	@,
	mov	r0, r6	@, D.36541
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L602:
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r6	@, D.36537
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.36537,
	movhi	r3, #0	@ tmp155,
	str	r0, [r5, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r5, #255]	@ tmp155, <variable>.SMPPicSyntax.HALFQP
	bls	.L603	@,
.L592:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r5, #256]	@ tmp159, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L604	@,
.L594:
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp163,
	strneb	r3, [r5, #257]	@ tmp163, <variable>.SMPPicSyntax.MVRANGE
	beq	.L605	@,
.L596:
	ldrb	r0, [r5, #251]	@ zero_extendqisi2	@ D.36562, <variable>.SMPPicSyntax.PTYPE
	cmp	r0, #4	@ D.36562,
	cmpne	r0, #2	@, D.36562,
	bne	.L597	@,
.L601:
	ldrb	r1, [r5, #258]	@ zero_extendqisi2	@ prephitmp.2050, <variable>.SMPPicSyntax.RESPIC
.L598:
	mov	r0, r4	@, pCodecInf
	mov	r6, #1	@ D.36541,
	bl	VC1_SetCurPicResolutionInfo	@
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r5, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r7	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r5, #268]	@, <variable>.SMPPicSyntax.TRANSACFRM2
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.36541
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L597:
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	bne	.L601	@,
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2050,
	strb	r1, [r5, #258]	@ prephitmp.2050, <variable>.SMPPicSyntax.RESPIC
	b	.L598	@
.L603:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r5, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L592	@
.L605:
	mov	r0, r7	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r5, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L596	@
.L604:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L594	@
	.fnend
	.size	VC1_Vfmw_ParseSMPIPicHdr, .-VC1_Vfmw_ParseSMPIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPicHdr
	.type	VC1_Vfmw_ParseSMPPicHdr, %function
VC1_Vfmw_ParseSMPPicHdr:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldrb	r7, [r2, #258]	@ zero_extendqisi2	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	mov	r6, r0	@ pBs, pBs
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r0, r1	@, pCodecInf
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r1, r7	@, RESPIC
	bl	VC1_SetCurPicResolutionInfo	@
	ldr	r3, [r6, #16]	@ <variable>.BsLen, <variable>.BsLen
	cmp	r3, #1	@ <variable>.BsLen,
	ble	.L630	@,
	add	r0, r4, #248	@, pSyntax,
	mov	r1, #100	@,
	bl	__memzero	@
	add	r2, r5, #22528	@, pCodecInf,
	add	r0, r2, #120	@,,
	strb	r7, [r4, #258]	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	mov	r1, #12288	@,
	movw	r7, #34936	@ tmp163,
	bl	__memzero	@
	ldr	r2, [r5, r7]	@ D.36767, <variable>.PicCnt
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.FINTERPFLAG, <variable>.SMPSeqSyntax.FINTERPFLAG
	cmp	r1, #0	@ <variable>.SMPSeqSyntax.FINTERPFLAG,
	ldreqb	r2, [r4, #248]	@ zero_extendqisi2	@ prephitmp.2076, <variable>.SMPPicSyntax.INTERPFRM
	str	r0, [r4, #324]	@, <variable>.SMPPicSyntax.HdrLen
	bne	.L631	@,
.L611:
	mov	r0, #18	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	ip, [r4, #12]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.RANGERED, <variable>.SMPSeqSyntax.RANGERED
	cmp	ip, #0	@ <variable>.SMPSeqSyntax.RANGERED,
	strb	r0, [r4, #249]	@, <variable>.SMPPicSyntax.FRMCNT
	bne	.L632	@,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	bne	.L613	@,
.L636:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r0, r0, #0	@ prephitmp.2087,,
	movne	r0, #1	@ prephitmp.2087
	strb	r0, [r4, #251]	@ prephitmp.2087, <variable>.SMPPicSyntax.PTYPE
.L614:
	strb	r0, [r5, #2]	@ prephitmp.2087, <variable>.PicCodingType
	mov	r0, #0	@ tmp183,
	strb	r0, [r5, #4]	@ tmp183, <variable>.PicStructure
	ldrb	r3, [r4, #251]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.PTYPE, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.SMPPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.SMPPicSyntax.PTYPE
	b	.L617	@
.L622:
	.word	.L629
	.word	.L619
	.word	.L620
	.word	.L617
	.word	.L621
.L613:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.36793,
	beq	.L628	@,
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L633	@,
	mov	lr, #2	@ tmp195,
	mov	r0, r6	@, pBs
	strb	lr, [r4, #251]	@ tmp195, <variable>.SMPPicSyntax.PTYPE
	add	r1, r4, #344	@, pSyntax,
	add	r2, r4, #251	@, pSyntax,
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.36807,
	strb	r0, [r4, #252]	@ D.36807, <variable>.SMPPicSyntax.BFRACTION
	cmp	r0, #22	@ D.36807,
	mov	r3, r0	@ D.36807, D.36807
	beq	.L634	@,
	cmp	r0, #21	@ D.36807,
	beq	.L617	@,
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2087, <variable>.SMPPicSyntax.PTYPE
	b	.L614	@
.L620:
	ldrb	r1, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	beq	.L635	@,
.L617:
	mov	r7, #0	@ Ret,
.L608:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L630:
	mov	r7, #1	@ Ret,
	mov	r0, #5	@ tmp155,
	strb	r0, [r4, #251]	@ tmp155, <variable>.SMPPicSyntax.PTYPE
	strb	r0, [r5, #2]	@ tmp155, <variable>.PicCodingType
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L632:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	lr, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	strb	r0, [r4, #250]	@, <variable>.SMPPicSyntax.RANGEREDFRM
	bne	.L613	@,
	b	.L636	@
.L631:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ prephitmp.2076,
	strb	r2, [r4, #248]	@ prephitmp.2076, <variable>.SMPPicSyntax.INTERPFRM
	b	.L611	@
.L633:
	mov	r0, #0	@ tmp178,
.L628:
	strb	r0, [r4, #251]	@ tmp178, <variable>.SMPPicSyntax.PTYPE
	b	.L614	@
.L621:
	ldrb	r7, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r7, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L617	@,
.L629:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r7, r0	@ Ret,
.L623:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #324]	@ <variable>.SMPPicSyntax.HdrLen, <variable>.SMPPicSyntax.HdrLen
	movw	ip, #34960	@ tmp190,
	rsb	r3, r1, r0	@ tmp189, <variable>.SMPPicSyntax.HdrLen,
	mov	r0, r6	@, pBs
	str	r3, [r4, #324]	@ tmp189, <variable>.SMPPicSyntax.HdrLen
	ldr	r4, [r5, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.36827, <variable>.stCurPacket.BsLength,
	rsb	r2, r0, r4	@ tmp192,, D.36827
	cmp	r2, #0	@ tmp192,
	bgt	.L608	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r7, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L608	@
.L619:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L623	@
.L635:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L623	@
.L634:
	strb	r3, [r4, #252]	@ D.36807, <variable>.SMPPicSyntax.BFRACTION
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2087, <variable>.SMPPicSyntax.PTYPE
	b	.L614	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPicHdr, .-VC1_Vfmw_ParseSMPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFramePicHdr
	.type	VC1_Vfmw_ParseAdvFramePicHdr, %function
VC1_Vfmw_ParseAdvFramePicHdr:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #4	@,
	mov	r5, r2	@ pSyntax, pSyntax
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code,
	movle	r7, #1	@ prephitmp.2102,
	movle	r1, r7	@ Len, prephitmp.2102
	ble	.L639	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ prephitmp.2102,
	movle	r1, r7	@ Len, prephitmp.2102
	bgt	.L663	@,
.L639:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2102, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L664	@,
.L643:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp162,
	streqb	r2, [r5, #352]	@ tmp162, <variable>.AdvPicSyntax.TFF
	beq	.L646	@,
	ldrb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L645	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r5, #354]	@, <variable>.AdvPicSyntax.RPTFRM
.L646:
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L665	@,
.L647:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp172,
	addeq	r3, r3, #1	@ tmp171, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp172, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L666	@,
.L651:
	ldrb	r0, [r5, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r0, #5	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L653	@
.L659:
	.word	.L657
	.word	.L655
	.word	.L656
	.word	.L653
	.word	.L657
	.word	.L658
.L657:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvIPicHdr	@
.L645:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	strb	r0, [r5, #353]	@, <variable>.AdvPicSyntax.RFF
	bne	.L647	@,
.L665:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp168,
	addeq	r3, r3, #2	@ tmp167, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp168, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L651	@,
.L666:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.37459,
	strb	ip, [r5, #355]	@ D.37459, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	ip, #1	@ D.37459,
	bne	.L651	@,
	ldr	lr, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	lr, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L651	@,
	mov	r7, r5	@ ivtmp.2118, pSyntax
	mov	r8, #0	@ i,
.L652:
	mov	r1, #18	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	add	r8, r8, #1	@ i, i,
	str	r0, [r7, #400]	@, <variable>.AdvPicSyntax.PS_HOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #416]	@, <variable>.AdvPicSyntax.PS_VOFFSET
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	str	r0, [r7, #432]	@, <variable>.AdvPicSyntax.PS_WIDTH
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldr	r3, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	r3, r8	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, i
	str	r0, [r7, #448]	@, <variable>.AdvPicSyntax.PS_HEIGHT
	add	r7, r7, #4	@ ivtmp.2118, ivtmp.2118,
	bgt	.L652	@,
	b	.L651	@
.L663:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ prephitmp.2102,
	movle	r1, #3	@ Len,
	ble	.L639	@,
	cmp	r0, #14	@ Code,
	mov	r0, r6	@, pBs
	moveq	r7, #4	@ prephitmp.2102,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, prephitmp.2102
	movne	r7, #5	@ prephitmp.2102,
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2102, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	beq	.L643	@,
.L664:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r5, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L643	@
.L656:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvBPicHdr	@
.L653:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L658:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L655:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvPPicHdr	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFramePicHdr, .-VC1_Vfmw_ParseAdvFramePicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPicHdr
	.type	VC1_Vfmw_ParseAdvPicHdr, %function
VC1_Vfmw_ParseAdvPicHdr:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r5, r0	@ pBs, pBs
	mov	r1, #0	@,
	mov	r0, r4	@, pCodecInf
	mov	r6, r2	@ pSyntax, pSyntax
	bl	VC1_SetCurPicResolutionInfo	@
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r3, #0	@ <variable>.Is2ndFld,
	beq	.L668	@,
	movw	r1, #22644	@ tmp142,
	ldr	r0, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L675	@,
.L668:
	ldrb	r8, [r6, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r8, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	movne	r8, #1	@ prephitmp.2145,
	movne	r7, #0	@ Code,
	beq	.L676	@,
.L671:
	str	r7, [r6, #392]	@ Code, <variable>.AdvPicSyntax.FCM
.L669:
	cmp	r8, #0	@ prephitmp.2145,
	bne	.L677	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFieldPicHdr	@
.L677:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFramePicHdr	@
.L675:
	ldr	r8, [r6, #392]	@ pretmp.2142, <variable>.AdvPicSyntax.FCM
	cmp	r8, #0	@ pretmp.2142,
	cmpne	r8, #2	@, pretmp.2142,
	movne	r8, #0	@, prephitmp.2145
	moveq	r8, #1	@, prephitmp.2145
	b	.L669	@
.L676:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L678	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	cmp	r7, #2	@ Code,
	movne	r8, #0	@, prephitmp.2145
	moveq	r8, #1	@, prephitmp.2145
	b	.L671	@
.L678:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, <variable>.AdvSeqSyntax.INTERLACE
	bl	BsSkip	@
	mov	r7, #0	@ Code,
	b	.L671	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPicHdr, .-VC1_Vfmw_ParseAdvPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvSlcHdr
	.type	VC1_Vfmw_ParseAdvSlcHdr, %function
VC1_Vfmw_ParseAdvSlcHdr:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #22644	@ tmp142,
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #9	@,
	mov	r5, r2	@ pSyntax, pSyntax
	ldr	r7, [r4, r3]	@ D.37889, <variable>.SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r7, r7, r7, asl #1	@, tmp146, D.37889, D.37889,
	add	r7, r5, r7, asl #2	@, tmp148, pSyntax, tmp146,
	str	r0, [r7, #528]	@, <variable>.SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.37893,
	strb	r0, [r7, #524]	@ D.37893, <variable>.PIC_HEADER_FLAG
	cmp	r0, #1	@ D.37893,
	beq	.L680	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L680:
	add	r7, r5, #188	@ tmp161, pSyntax,
	add	r0, r4, #6912	@ tmp160, pCodecInf,
	add	ip, r0, #32	@ tmp160, tmp160,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp175,,,,
	mov	lr, ip	@ tmp176, tmp160
	stmia	lr!, {r0, r1, r2, r3}	@ tmp176,,,,
	mov	ip, lr	@ tmp178, tmp176
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp177,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp179,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp178,,,,
	ldmia	r7, {r0, r1, r2}	@ tmp179,,,
	stmia	ip, {r0, r1, r2}	@ tmp180,,,
	add	r1, r4, #6720	@, pCodecInf,
	add	r0, r1, #52	@,,
	mov	r2, #172	@,
	add	r1, r5, #16	@, pSyntax,
	bl	memcpy	@
	add	r1, r5, #348	@, pSyntax,
	mov	r2, #176	@,
	add	r0, r4, #7104	@, pCodecInf,
	bl	memcpy	@
	add	r2, r4, #6720	@, tmp1,
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	add	r2, r2, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvPicHdr	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSlcHdr, .-VC1_Vfmw_ParseAdvSlcHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvHdr
	.type	VC1_Vfmw_ParseAdvHdr, %function
VC1_Vfmw_ParseAdvHdr:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, [r0, #3128]	@ pBs, <variable>.pBs
	mov	r4, r0	@ pCodecInf, pCodecInf
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r8, #0	@ tmp172,
	add	r7, r0, #34816	@ pVc1Packet, pCodecInf,
	strb	r8, [r0, #6]	@ tmp172, <variable>.IsWaitToDec
	mov	fp, r1	@ pSyntax, pSyntax
	mov	r0, r6	@, pBs
	mov	r1, #32	@,
	mov	r9, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r5, [r6, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movw	r2, #34940	@ tmp178,
	ldr	sl, [r4, r2]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	movw	r1, #34960	@ tmp180,
	cmp	r5, r8	@ <variable>.TotalPos,
	add	ip, r5, #7	@ tmp176, <variable>.TotalPos,
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r7, r7, #124	@ pVc1Packet, pVc1Packet,
	movlt	r5, ip	@ <variable>.TotalPos, tmp176
	mov	r3, r5, asr #3	@ tmp177, <variable>.TotalPos,
	add	sl, r3, sl	@ pTmp, tmp177, <variable>.stCurPacket.BsVirAddr
	rsb	r2, r3, r2	@, tmp177, <variable>.stCurPacket.BsLength
	mov	r1, sl	@, pTmp
	uxtb	r5, r0	@ Code,
	mov	r0, r6	@, pBs
	bl	BsInit	@
	sub	r3, r5, #10	@ tmp183, Code,
	cmp	r3, #5	@ tmp183,
	bhi	.L684	@,
	cmp	r5, #11	@ Code,
	beq	.L730	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r5, r2, #7	@ tmp441, <variable>.CodecStatus,
	cmp	r5, #7	@ tmp441,
	beq	.L731	@,
	movw	ip, #22644	@ tmp448,
	strb	r8, [r4, #8]	@ tmp172, <variable>.Is2ndFld
	str	r8, [r4, ip]	@ tmp172, <variable>.SlcNum
	cmp	r3, #5	@ tmp183,
	ldrls	pc, [pc, r3, asl #2]	@ tmp183
	b	.L720	@
.L705:
	.word	.L700
	.word	.L720
	.word	.L701
	.word	.L702
	.word	.L703
	.word	.L704
.L684:
	sub	lr, r5, #27	@ tmp734, Code,
	cmp	lr, #4	@ tmp734,
	bls	.L721	@,
	cmp	r5, #254	@ Code,
	beq	.L732	@,
.L720:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #0	@ Ret,
.L689:
	mov	r0, r5	@, Ret
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L732:
	mov	r1, #32	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r5, r0	@ D.38124,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:1128615492	@ tmp736,
	movw	r1, #:lower16:1213419593	@ tmp739,
	movt	r2, #:upper16:1128615492	@ tmp736,
	movt	r1, #:upper16:1213419593	@ tmp739,
	cmp	r0, r2	@, tmp736
	cmpeq	r5, r1	@, D.38124, tmp739
	bne	.L720	@,
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ temp.2233, <variable>.CodecStatus
	mov	ip, #1	@ tmp744,
	strb	ip, [r4, #7]	@ tmp744, <variable>.IsStreamEndFlag
	and	r3, r0, #7	@ tmp746, temp.2233,
	cmp	r3, #7	@ tmp746,
	orreq	r0, r0, #16	@ tmp747, temp.2233,
	streqb	r0, [r4, #0]	@ tmp747, <variable>.CodecStatus
.L721:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L689	@
.L730:
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r0, lr, #7	@ tmp185, <variable>.CodecStatus,
	cmp	r0, #7	@ tmp185,
	beq	.L733	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, r8	@ Ret, tmp172
	b	.L689	@
.L731:
	mov	r5, #1	@ tmp444,
	orr	lr, r2, #16	@ tmp442, <variable>.CodecStatus,
	strb	r5, [r4, #6]	@ tmp444, <variable>.IsWaitToDec
	strb	lr, [r4, #0]	@ tmp442, <variable>.CodecStatus
	b	.L689	@
.L703:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L734	@,
.L718:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	b	.L689	@
.L704:
	mov	r0, r6	@, pBs
	mov	r2, fp	@, pSyntax
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #1	@ tmp732, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp732, <variable>.CodecStatus
	b	.L718	@
.L701:
	mov	r0, #1	@ tmp455,
	mov	r1, #16	@,
	strb	r0, [r4, #8]	@ tmp455, <variable>.Is2ndFld
	add	r0, fp, #508	@, pSyntax,
	bl	__memzero	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	beq	.L702	@,
.L706:
	add	r3, r4, #22528	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r3, #120	@,,
	bl	__memzero	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	str	r0, [fp, #488]	@, <variable>.AdvPicSyntax.HdrLen
	mov	r0, r6	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	beq	.L735	@,
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #6088	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L689	@
.L700:
	orr	r2, r2, #32	@ tmp453, <variable>.CodecStatus,
	mov	r0, r9	@, ChanID
	strb	r2, [r4, #0]	@ tmp453, <variable>.CodecStatus
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r5, #1	@ Ret,
	b	.L689	@
.L702:
	ldrb	r5, [fp, #379]	@ zero_extendqisi2	@ D.38080, <variable>.AdvPicSyntax.REFDIST
	add	r0, fp, #348	@, pSyntax,
	mov	r1, #176	@,
	bl	__memzero	@
	strb	r5, [fp, #379]	@ D.38080, <variable>.AdvPicSyntax.REFDIST
	b	.L706	@
.L733:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r5, r0	@ Ret,
	bne	.L687	@,
	movw	r6, #22644	@ tmp186,
	ldr	r7, [r4, r6]	@ D.38058, <variable>.SlcNum
	cmp	r7, #255	@ D.38058,
	bgt	.L736	@,
	mov	r9, r7, asl #1	@ tmp751, D.38058,
	movw	r2, #22656	@ tmp190,
	add	r6, r9, r7	@ tmp193, tmp751, D.38058
	ldr	r1, [r4, #3128]	@ pBs, <variable>.pBs
	add	r3, r6, #1	@ tmp214, tmp193,
	add	r6, r4, r6, asl #4	@, tmp195, pCodecInf, tmp193,
	add	lr, r4, r3, asl #4	@,, pCodecInf, tmp214,
	str	lr, [sp, #36]	@, %sfp
	strb	r7, [r6, r2]	@ D.38058, <variable>.SlcNo
	add	lr, r6, #22528	@, tmp195,
	ldr	r0, [sp, #36]	@, %sfp
	add	r3, r6, #22528	@ tmp196, tmp195,
	add	r3, r3, #128	@ tmp196, tmp196,
	add	ip, r0, #22528	@ tmp218,,
	ldr	r0, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	str	lr, [sp, #12]	@, %sfp
	add	ip, ip, #120	@ tmp218, tmp218,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp208, <variable>.TotalPos,
	ldr	r2, [sp, #12]	@, %sfp
	movlt	r0, lr	@ <variable>.TotalPos, tmp208
	add	r0, sl, r0, asr #3	@, tmp210, pTmp, <variable>.TotalPos,
	movw	sl, #22648	@,
	add	r2, r2, #120	@,,
	str	r2, [sp, #12]	@, %sfp
	str	r0, [r6, sl]	@ tmp210, <variable>.pStream
	ldr	r2, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, r2, #7	@, <variable>.TotalPos,
	ldr	r2, [sp, #36]	@, %sfp
	str	lr, [r2, sl]	@, <variable>.BitOffset
	ldr	lr, [r1, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r1, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r2, r1, lr, asl #3	@, tmp232, <variable>.TotalPos, <variable>.BsLen,
	str	r2, [ip, #4]	@ tmp232, <variable>.Len
	str	r3, [sp, #32]	@,
	bl	MEM_Vir2Phy	@
	ldr	r3, [sp, #32]	@,
	movw	r2, #22688	@ tmp248,
	add	r1, r6, #22528	@ tmp254, tmp195,
	add	r1, r1, #160	@ tmp254, tmp254,
	str	r0, [r3, #4]	@, <variable>.Phy_addr
	movw	r0, #34968	@ tmp255,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	movw	r3, #34944	@ tmp257,
	str	ip, [r6, r2]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r3, [r4, r3]	@ D.38396, <variable>.stCurPacket.BsVirAddr
	cmp	r3, #0	@ D.38396,
	beq	.L690	@,
	movw	r0, #34956	@ tmp258,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L690	@,
	ldr	sl, [sp, #12]	@, %sfp
	movw	r2, #22680	@ tmp267,
	movw	ip, #34964	@ tmp282,
	str	r8, [r6, r2]	@ tmp172, <variable>.BitOffset2
	str	r3, [sl, #4]	@ D.38396, <variable>.pStream2
	add	r3, r6, #22528	@ tmp273, tmp195,
	ldr	r2, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #152	@ tmp273, tmp273,
	add	r6, r6, #22528	@ tmp291, tmp195,
	add	r6, r6, #144	@ tmp291, tmp291,
	mov	ip, r2, asl #3	@ tmp284, <variable>.stCurPacket.BsLength,
	str	ip, [r3, #4]	@ tmp284, <variable>.Len2
	ldr	r3, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r2, #34972	@ tmp301,
	str	r3, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r0, [r4, r2]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r0, [r1, #4]	@ <variable>.stCurPacket.StreamID,
.L691:
	movw	r3, #22560	@ tmp352,
	movw	r1, #22564	@ tmp351,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.38386, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp353, <variable>.MbWidth, D.38386
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp353,
	beq	.L694	@,
	add	ip, r9, r7	@ tmp359, tmp751, D.38058
	add	r2, r3, #1	@ tmp363, D.38386,
	add	fp, fp, ip, asl #2	@, tmp361, pSyntax, tmp359,
	add	r3, r2, r2, lsr #31	@, tmp366, tmp363, tmp363,
	add	r2, r4, ip, asl #4	@, tmp374, pCodecInf, tmp359,
	movw	ip, #22672	@ tmp369,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.38378, <variable>.SLICE_ADDR, tmp366,
	str	r3, [r2, ip]	@ D.38378, <variable>.SlcEndMbn
	cmp	r3, #0	@ D.38378,
	ble	.L695	@,
	cmp	r6, r3	@ totalMbMin1, D.38378
	bcc	.L724	@,
.L695:
	add	r7, r9, r7	@ tmp412, tmp751, D.38058
.L729:
	add	r3, r7, #1	@ tmp697, tmp696,
	add	r0, r4, r3, asl #4	@, tmp700, pCodecInf, tmp697,
	add	r1, r0, #22528	@ tmp701, tmp700,
	add	r2, r1, #120	@ tmp701, tmp701,
	ldr	ip, [r2, #4]	@ <variable>.Len, <variable>.Len
	cmp	ip, #0	@ <variable>.Len,
	ble	.L715	@,
	add	r7, r4, r7, asl #4	@, tmp708, pCodecInf, tmp696,
	add	r1, r7, #22528	@ tmp709, tmp708,
	add	r2, r1, #120	@ tmp709, tmp709,
	ldr	ip, [r2, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	ip, #0	@ <variable>.pStream2,
	beq	.L716	@,
	add	ip, r7, #22528	@ tmp717, tmp708,
	add	r3, ip, #152	@ tmp717, tmp717,
	ldr	r0, [r3, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r0, #0	@ <variable>.Len2,
	ble	.L715	@,
.L716:
	movw	r1, #22644	@ tmp720,
	ldr	r0, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, r0, #1	@ tmp723, <variable>.SlcNum,
	str	r2, [r4, r1]	@ tmp723, <variable>.SlcNum
	b	.L689	@
.L735:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r1, [fp, #488]	@ <variable>.AdvPicSyntax.HdrLen, <variable>.AdvPicSyntax.HdrLen
	rsb	r2, r1, r0	@ tmp464, <variable>.AdvPicSyntax.HdrLen,
	str	r2, [fp, #488]	@ tmp464, <variable>.AdvPicSyntax.HdrLen
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r0, r6	@, pBs
	orr	r3, ip, #4	@ tmp467, <variable>.CodecStatus,
	strb	r3, [r4, #0]	@ tmp467, <variable>.CodecStatus
	bl	BsPos	@
	movw	r1, #34960	@ tmp470,
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	ip, r0, #32	@ tmp469,,
	cmp	ip, r2, asl #3	@ tmp469, <variable>.stCurPacket.BsLength,
	bge	.L708	@,
	movw	r8, #22644	@ tmp473,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	ldr	r7, [r4, r8]	@ D.38468, <variable>.SlcNum
	movw	r0, #22656	@ tmp474,
	mov	r8, r7, asl #1	@ tmp750, D.38468,
	add	r6, r8, r7	@ tmp477, tmp750, D.38468
	add	ip, r6, #1	@ tmp498, tmp477,
	add	r6, r4, r6, asl #4	@, tmp479, pCodecInf, tmp477,
	add	ip, r4, ip, asl #4	@, tmp501, pCodecInf, tmp498,
	add	r3, r6, #22528	@ tmp488, tmp479,
	strb	r7, [r6, r0]	@ D.38468, <variable>.SlcNo
	add	r1, ip, #22528	@ tmp502, tmp501,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #120	@ tmp502, tmp502,
	add	r3, r3, #120	@ tmp488, tmp488,
	add	r9, r6, #22528	@ tmp480, tmp479,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp492, <variable>.TotalPos,
	add	r9, r9, #128	@ tmp480, tmp480,
	movlt	r0, lr	@ <variable>.TotalPos, tmp492
	movw	lr, #22648	@,
	add	r0, sl, r0, asr #3	@, tmp494, pTmp, <variable>.TotalPos,
	str	r0, [r6, lr]	@ tmp494, <variable>.pStream
	ldr	sl, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, sl, #7	@ tmp504, <variable>.TotalPos,
	movw	sl, #22648	@,
	str	lr, [ip, sl]	@ tmp504, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp516, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp516, <variable>.Len
	str	r3, [sp, #32]	@,
	bl	MEM_Vir2Phy	@
	movw	r1, #34968	@ tmp539,
	movw	ip, #22688	@ tmp532,
	add	r2, r6, #22528	@ tmp538, tmp479,
	add	r2, r2, #160	@ tmp538, tmp538,
	str	r0, [r9, #4]	@, <variable>.Phy_addr
	movw	r0, #34944	@ tmp541,
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r6, ip]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r1, [r4, r0]	@ D.38451, <variable>.stCurPacket.BsVirAddr
	ldr	r3, [sp, #32]	@,
	cmp	r1, #0	@ D.38451,
	beq	.L709	@,
	movw	r0, #34956	@ tmp542,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L709	@,
	str	r1, [r3, #4]	@ D.38451, <variable>.pStream2
	movw	r1, #22680	@ tmp551,
	mov	ip, #0	@ tmp558,
	str	ip, [r6, r1]	@ tmp558, <variable>.BitOffset2
	movw	r1, #34964	@ tmp566,
	add	r3, r6, #22528	@ tmp557, tmp479,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #152	@ tmp557, tmp557,
	add	r6, r6, #22528	@ tmp575, tmp479,
	add	r6, r6, #144	@ tmp575, tmp575,
	mov	r1, ip, asl #3	@ tmp568, <variable>.stCurPacket.BsLength,
	str	r1, [r3, #4]	@ tmp568, <variable>.Len2
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #34972	@ tmp585,
	str	ip, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L710:
	movw	r3, #22560	@ tmp636,
	movw	r1, #22564	@ tmp635,
	ldr	r6, [r4, r3]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r1]	@ D.38441, <variable>.MbHeight
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	r0, r6, r3	@ tmp637, <variable>.MbWidth, D.38441
	cmp	ip, #0	@ <variable>.Is2ndFld,
	sub	r6, r0, #1	@ totalMbMin1, tmp637,
	beq	.L713	@,
	add	ip, r8, r7	@ tmp643, tmp750, D.38468
	add	r2, r3, #1	@ tmp647, D.38441,
	add	fp, fp, ip, asl #2	@, tmp645, pSyntax, tmp643,
	add	r3, r2, r2, lsr #31	@, tmp650, tmp647, tmp647,
	add	r2, r4, ip, asl #4	@, tmp658, pCodecInf, tmp643,
	movw	ip, #22672	@ tmp653,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.38433, <variable>.SLICE_ADDR, tmp650,
	str	r3, [r2, ip]	@ D.38433, <variable>.SlcEndMbn
	cmp	r3, #0	@ D.38433,
	ble	.L714	@,
	cmp	r6, r3	@ totalMbMin1, D.38433
	bcs	.L714	@,
.L724:
	ldr	lr, [r4, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	mov	r0, #1	@,
	ldr	r2, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r5, #0	@ Ret,
	str	lr, [sp, #0]	@ <variable>.MbHeight,
	bl	dprint_vfmw	@
	b	.L689	@
.L714:
	add	r7, r8, r7	@ tmp696, tmp750, D.38468
	b	.L729	@
.L687:
	mov	r0, r9	@, ChanID
	mov	r1, r7	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	movw	r1, #:lower16:.LC16	@,
	movw	r2, #6005	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L689	@
.L708:
	mov	r1, r7	@, pVc1Packet
	mov	r0, r9	@, ChanID
	bl	VC1_ClearCurPacket	@
	mov	r0, r5	@, Ret
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #6082	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	b	.L689	@
.L709:
	add	r2, r8, r7	@ tmp590, tmp750, D.38468
	mov	r3, #0	@ tmp594,
	add	r2, r4, r2, asl #4	@, tmp592, pCodecInf, tmp590,
	add	ip, r2, #22528	@ tmp625, tmp592,
	add	r6, ip, #120	@ tmp593, tmp593,
	add	r0, ip, #152	@ tmp601, tmp601,
	add	r1, ip, #144	@ tmp617, tmp617,
	add	ip, ip, #160	@ tmp625, tmp625,
	str	r3, [r6, #4]	@ tmp594, <variable>.pStream2
	movw	r6, #22680	@ tmp595,
	str	r3, [ip, #4]	@ tmp594, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp594, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp594, <variable>.Len2
	str	r3, [r1, #4]	@ tmp594, <variable>.Phy_addr2
	b	.L710	@
.L736:
	mov	r1, r9	@, ChanID
	mov	r0, r4	@, pCodecInf
	bl	VC1_ClearCurPic	@
	mov	r0, r5	@, Ret
	ldr	r2, [r4, r6]	@, <variable>.SlcNum
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r5, r8	@ Ret, tmp172
	bl	dprint_vfmw	@
	b	.L689	@
.L690:
	add	r2, r9, r7	@ tmp306, tmp751, D.38058
	mov	r3, #0	@ tmp310,
	add	r2, r4, r2, asl #4	@, tmp308, pCodecInf, tmp306,
	add	ip, r2, #22528	@ tmp341, tmp308,
	add	r6, ip, #120	@ tmp309, tmp309,
	add	r0, ip, #152	@ tmp317, tmp317,
	add	r1, ip, #144	@ tmp333, tmp333,
	add	ip, ip, #160	@ tmp341, tmp341,
	str	r3, [r6, #4]	@ tmp310, <variable>.pStream2
	movw	r6, #22680	@ tmp311,
	str	r3, [ip, #4]	@ tmp310, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp310, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp310, <variable>.Len2
	str	r3, [r1, #4]	@ tmp310,
	b	.L691	@
.L713:
	add	r3, r8, r7	@ tmp674, tmp750, D.38468
	movw	r0, #22672	@ tmp678,
	add	fp, fp, r3, asl #2	@, tmp676, pSyntax, tmp674,
	add	r1, r4, r3, asl #4	@, tmp683, pCodecInf, tmp674,
	ldr	r3, [fp, #528]	@ temp.2253, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2253
	str	r3, [r1, r0]	@ temp.2253, <variable>.SlcEndMbn
	bcs	.L714	@,
.L723:
	ldr	r2, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC8	@,
	str	r6, [sp, #0]	@ totalMbMin1,
	mov	r5, ip	@ Ret, <variable>.Is2ndFld
	bl	dprint_vfmw	@
	b	.L689	@
.L734:
	mov	r1, fp	@, pSyntax
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orr	r3, ip, #2	@ tmp728, <variable>.CodecStatus,
	strb	r3, [r4, #0]	@ tmp728, <variable>.CodecStatus
	b	.L718	@
.L715:
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r5, #0	@ Ret,
	bl	dprint_vfmw	@
	b	.L689	@
.L694:
	add	r3, r9, r7	@ tmp390, tmp751, D.38058
	movw	r0, #22672	@ tmp394,
	add	fp, fp, r3, asl #2	@, tmp392, pSyntax, tmp390,
	add	r1, r4, r3, asl #4	@, tmp399, pCodecInf, tmp390,
	ldr	r3, [fp, #528]	@ temp.2242, <variable>.SLICE_ADDR
	cmp	r6, r3	@ totalMbMin1, temp.2242
	str	r3, [r1, r0]	@ temp.2242, <variable>.SlcEndMbn
	bcs	.L695	@,
	b	.L723	@
	.fnend
	.size	VC1_Vfmw_ParseAdvHdr, .-VC1_Vfmw_ParseAdvHdr
	.align	2
	.global	VC1_Vfmw_ParseHeader
	.type	VC1_Vfmw_ParseHeader, %function
VC1_Vfmw_ParseHeader:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L738	@,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r2, r1	@, pSyntax
	ldr	r0, [r0, #3128]	@, <variable>.pBs
	mov	r1, r4	@, pCodecInf
	orr	ip, lr, #3	@ tmp143, <variable>.CodecStatus,
	strb	ip, [r4, #0]	@ tmp143, <variable>.CodecStatus
	bl	VC1_Vfmw_ParseSMPPicHdr	@
	cmp	r0, #1	@ Ret,
	ldreqb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r1, r2, #20	@ tmp148, <variable>.CodecStatus,
	streqb	r1, [r4, #0]	@ tmp148, <variable>.CodecStatus
	ldmfd	sp!, {r4, pc}	@
.L738:
	ldmfd	sp!, {r4, lr}	@
	b	VC1_Vfmw_ParseAdvHdr	@
	.fnend
	.size	VC1_Vfmw_ParseHeader, .-VC1_Vfmw_ParseHeader
	.align	2
	.global	VC1_Vfmw_DecodeArbiter
	.type	VC1_Vfmw_DecodeArbiter, %function
VC1_Vfmw_DecodeArbiter:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #:lower16:78272	@ tmp149,
	movt	r3, #:upper16:78272	@ tmp149,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ D.35793, <variable>.CodecInfo.CodecStatus
	tst	r2, #16	@ D.35793,
	beq	.L742	@,
	movw	r1, #:lower16:113324	@ tmp154,
	movt	r1, #:upper16:113324	@ tmp154,
	bic	r2, r2, #20	@ tmp152, D.35793,
	strb	r2, [r0, r3]	@ tmp152, <variable>.CodecInfo.CodecStatus
	ldr	r0, [r0, r1]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r3, r0, #2	@ tmp155, <variable>.CodecInfo.UsedDecMode,
	cmp	r3, #1	@ tmp155,
	bls	.L743	@,
.L766:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r3, #8]	@ prephitmp.2315, <variable>.s32DecMode
.L744:
	movw	r0, #:lower16:113324	@ tmp225,
	movt	r0, #:upper16:113324	@ tmp225,
	sub	r2, r1, #1	@ tmp226, prephitmp.2315,
	str	r1, [r4, r0]	@ prephitmp.2315, <variable>.CodecInfo.UsedDecMode
	cmp	r2, #3	@ tmp226,
	ldrls	pc, [pc, r2, asl #2]	@ tmp226
	b	.L748	@
.L753:
	.word	.L749
	.word	.L750
	.word	.L751
	.word	.L752
.L749:
	movw	lr, #:lower16:78274	@ tmp227,
	movt	lr, #:upper16:78274	@ tmp227,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ D.35832, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.35832,
	cmpne	r1, #2	@, D.35832,
	beq	.L751	@,
.L748:
	mov	r2, #1	@ ret,
.L756:
	movw	ip, #:lower16:100896	@ tmp252,
	movt	ip, #:upper16:100896	@ tmp252,
	ldr	r3, [r4, ip]	@ D.35857, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.35857,
	bne	.L757	@,
.L768:
	movw	r3, #:lower16:78274	@ tmp253,
	movt	r3, #:upper16:78274	@ tmp253,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ D.35859, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ D.35859,
	cmpne	r3, #5	@, D.35859,
	beq	.L758	@,
	cmp	r3, #4	@ D.35859,
	beq	.L758	@,
	cmp	r3, #2	@ D.35859,
	bne	.L759	@,
.L758:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
.L760:
	movw	r5, #:lower16:113720	@ tmp273,
	movt	r5, #:upper16:113720	@ tmp273,
	add	lr, r4, #77824	@, pVC1_CTX_S,
	add	r0, lr, #448	@,,
	ldr	r1, [r4, r5]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp275,
	movt	r2, #:upper16:g_event_report	@ tmp275,
	ldr	r3, [r2, #0]	@ g_event_report.489, g_event_report
	cmp	r3, #0	@ g_event_report.489,
	beq	.L742	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.489
	mov	r0, #0	@ ret.2338,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L770:
	cmp	r3, #2	@ prephitmp.2317,
	bne	.L755	@,
	movw	r1, #:lower16:113256	@ tmp241,
	movt	r1, #:upper16:113256	@ tmp241,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r0, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L748	@,
.L751:
	mov	r2, #0	@ ret,
.L771:
	movw	ip, #:lower16:100896	@ tmp252,
	movt	ip, #:upper16:100896	@ tmp252,
	ldr	r3, [r4, ip]	@ D.35857, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.35857,
	beq	.L768	@,
.L757:
	cmp	r3, #1	@ D.35857,
	bls	.L769	@,
.L759:
	cmp	r2, #0	@ ret,
	beq	.L760	@,
	movw	r3, #:lower16:81368	@ tmp278,
	movt	r3, #:upper16:81368	@ tmp278,
	ldrsb	ip, [r4, r3]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	ip, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L763	@,
	add	ip, r4, #80896	@ tmp283, pVC1_CTX_S,
	add	r2, r4, #88064	@ tmp282, pVC1_CTX_S,
	add	r3, ip, #536	@ tmp283, tmp283,
	add	lr, r2, #560	@ tmp282, tmp282,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp283,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp282,,,,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r1, #784	@,,
	add	r0, r0, #808	@,,
	mov	r2, #100	@,
	bl	memcpy	@
	mov	r0, #1	@ ret.2338,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L742:
	mov	r0, #0	@ ret.2338,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L743:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ D.35805, <variable>.s32DecMode
	cmp	r2, #4	@ D.35805,
	cmpne	r2, #1	@, D.35805,
	mov	r1, r2	@ prephitmp.2315, D.35805
	bhi	.L744	@,
	movw	r5, #:lower16:113720	@ tmp167,
	movw	r7, #:lower16:100904	@ tmp169,
	movt	r5, #:upper16:113720	@ tmp167,
	movt	r7, #:upper16:100904	@ tmp169,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L745	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:100900	@ tmp193,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:100900	@ tmp193,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp183,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp183, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp183, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp183, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp183, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp183, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp183, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.35824, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35824, <variable>.CodecInfo.BwdFsID
.L745:
	movw	r1, #:lower16:100820	@ tmp205,
	movt	r1, #:upper16:100820	@ tmp205,
	mov	r3, #0	@ tmp204,
	movw	lr, #:lower16:100896	@ tmp203,
	ldr	r0, [r4, r1]	@ D.35825, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:100896	@ tmp203,
	cmp	r0, r3	@ D.35825,
	str	r3, [r4, lr]	@ tmp204, <variable>.CodecInfo.RefNum
	beq	.L766	@,
	movw	r2, #:lower16:100824	@ tmp207,
	movt	r2, #:upper16:100824	@ tmp207,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	ip, #0	@ <variable>.CodecInfo.pRef,
	strneb	r3, [r0, #1]	@ tmp204, <variable>.is_to_display
	ldrne	r0, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r0, #1]	@ tmp204, <variable>.is_to_display
	ldrne	r1, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r1, #0]	@ tmp204, <variable>.is_to_ref
	ldrne	r2, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r2, #0]	@ tmp204, <variable>.is_to_ref
	b	.L766	@
.L752:
	movw	r3, #:lower16:78274	@ tmp237,
	movt	r3, #:upper16:78274	@ tmp237,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2317, <variable>.CodecInfo.PicCodingType
	cmp	r3, #0	@ prephitmp.2317,
	movweq	r2, #:lower16:113256	@ tmp238,
	movteq	r2, #:upper16:113256	@ tmp238,
	streq	r3, [r4, r2]	@ prephitmp.2317, <variable>.CodecInfo.PPicFound
	bne	.L770	@,
.L755:
	cmp	r3, #1	@ prephitmp.2317,
	cmpne	r3, #5	@, prephitmp.2317,
	bne	.L748	@,
	movw	lr, #:lower16:113256	@ tmp250,
	movt	lr, #:upper16:113256	@ tmp250,
	mov	r2, #1	@ tmp251,
	str	r2, [r4, lr]	@ tmp251, <variable>.CodecInfo.PPicFound
	b	.L756	@
.L750:
	movw	ip, #:lower16:78274	@ tmp235,
	movt	ip, #:upper16:78274	@ tmp235,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r2, #0	@ <variable>.CodecInfo.PicCodingType,
	beq	.L748	@,
	mov	r2, #0	@ ret,
	b	.L771	@
.L763:
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #552	@,,
	mov	r2, #172	@,
	add	r0, r0, #576	@,,
	add	r5, r4, #88064	@ tmp298, pVC1_CTX_S,
	bl	memcpy	@
	add	r2, r4, #80896	@ tmp299, pVC1_CTX_S,
	add	lr, r2, #724	@ tmp299, tmp299,
	add	ip, r5, #748	@ tmp298, tmp298,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp328,,,,
	mov	r5, ip	@ tmp329, tmp298
	stmia	r5!, {r0, r1, r2, r3}	@ tmp329,,,,
	mov	ip, r5	@ tmp331, tmp329
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp330,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp332,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp331,,,,
	add	r3, r4, #88064	@, pVC1_CTX_S,
	ldmia	lr, {r0, r1, r2}	@ tmp332,,,
	add	lr, r4, #80896	@, pVC1_CTX_S,
	stmia	ip, {r0, r1, r2}	@ tmp333,,,
	add	r1, lr, #884	@,,
	add	r0, r3, #908	@,,
	mov	r2, #176	@,
	bl	memcpy	@
	movw	ip, #:lower16:100916	@ tmp312,
	movt	ip, #:upper16:100916	@ tmp312,
	movw	r0, #:lower16:81824	@ tmp307,
	movt	r0, #:upper16:81824	@ tmp307,
	movw	r3, #:lower16:78276	@ tmp306,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum
	movt	r3, #:upper16:78276	@ tmp306,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM
	add	r1, r4, #81920	@, pVC1_CTX_S,
	add	r0, r4, #89088	@, pVC1_CTX_S,
	add	r1, r1, #36	@,,
	add	r2, r2, r2, asl #1	@, tmp316, <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum,
	add	r0, r0, #60	@,,
	strb	ip, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.PicStructure
	mov	r2, r2, asl #2	@, tmp316,
	bl	memcpy	@
	mov	r0, #1	@ ret.2338,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L769:
	movw	r1, #:lower16:78274	@ tmp262,
	movt	r1, #:upper16:78274	@ tmp262,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ D.35868, <variable>.CodecInfo.PicCodingType
	cmp	r0, #4	@ D.35868,
	cmpne	r0, #2	@, D.35868,
	bne	.L759	@,
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	b	.L760	@
	.fnend
	.size	VC1_Vfmw_DecodeArbiter, .-VC1_Vfmw_DecodeArbiter
	.align	2
	.global	VC1_WriteSliceMsg
	.type	VC1_WriteSliceMsg, %function
VC1_WriteSliceMsg:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #22644	@ tmp135,
	mov	ip, r1	@ pVc1DecParam, pVc1DecParam
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r4, [r0, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	mov	r3, r0	@ pCodecInf, pCodecInf
	add	r1, r0, #22528	@, pCodecInf,
	add	r0, ip, #84	@, pVc1DecParam,
	add	r1, r1, #120	@,,
	strb	r4, [ip, #70]	@ <variable>.SlcNum, <variable>.SlcNum
	ldr	ip, [r3, r2]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r2, ip, ip, asl #1	@, tmp143, <variable>.SlcNum, <variable>.SlcNum,
	mov	r2, r2, asl #4	@, tmp143,
	ldmfd	sp!, {r4}
	b	memcpy	@
	.fnend
	.size	VC1_WriteSliceMsg, .-VC1_WriteSliceMsg
	.align	2
	.global	VC1_WritePicMsg
	.type	VC1_WritePicMsg, %function
VC1_WritePicMsg:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:113720	@ tmp149,
	movw	r3, #:lower16:100908	@ tmp151,
	movt	r2, #:upper16:113720	@ tmp149,
	movt	r3, #:upper16:100908	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #100
	sub	sp, sp, #100	@,,
	mov	r5, r1	@ pVc1DecParam, pVc1DecParam
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@
	str	r0, [sp, #8]	@, %sfp
	beq	.L798	@,
	movw	r0, #:lower16:81368	@ tmp154,
	movt	r0, #:upper16:81368	@ tmp154,
	ldrsb	r3, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L799	@,
	movw	lr, #:lower16:88624	@ tmp440,
	movt	lr, #:upper16:88624	@ tmp440,
	strb	r3, [r5, #5]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fcm
	movw	r6, #:lower16:88875	@ tmp443,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	movt	r6, #:upper16:88875	@ tmp443,
	movw	r8, #:lower16:113276	@ tmp445,
	movt	r8, #:upper16:113276	@ tmp445,
	movw	r7, #:lower16:113272	@ tmp449,
	movt	r7, #:upper16:113272	@ tmp449,
	strb	r2, [r5, #4]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.profile
	movw	fp, #:lower16:88627	@ tmp455,
	ldrb	r9, [r4, r6]	@ zero_extendqisi2	@ iftmp.460, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	movt	fp, #:upper16:88627	@ tmp455,
	movw	r2, #:lower16:78280	@ tmp460,
	movt	r2, #:upper16:78280	@ tmp460,
	cmp	r9, #4	@ iftmp.460,
	moveq	r9, #3	@ iftmp.460,
	strb	r9, [r5, #3]	@ iftmp.460, <variable>.ptype
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movw	r9, #:lower16:88630	@ tmp467,
	movt	r9, #:upper16:88630	@ tmp467,
	movw	r8, #:lower16:88634	@ tmp470,
	sub	r0, sl, #1	@ tmp448, <variable>.CodecInfo.CurPicMbHeight,
	strh	r0, [r5, #80]	@ movhi	@ tmp448, <variable>.mbheight
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movt	r8, #:upper16:88634	@ tmp470,
	strb	r3, [r5, #8]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.curparity
	movw	r7, #:lower16:88894	@ tmp473,
	sub	ip, r1, #1	@ tmp452, <variable>.CodecInfo.CurPicMbWidth,
	strh	ip, [r5, #78]	@ movhi	@ tmp452, <variable>.mbwidth
	ldrb	lr, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER
	movt	r7, #:upper16:88894	@ tmp473,
	strb	r3, [r5, #9]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.numref
	movw	ip, #:lower16:88904	@ tmp476,
	movt	ip, #:upper16:88904	@ tmp476,
	movw	fp, #:lower16:88879	@ tmp479,
	strb	lr, [r5, #6]	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.loopfilter
	movt	fp, #:upper16:88879	@ tmp479,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movw	r2, #:lower16:88878	@ tmp482,
	strb	r3, [r5, #10]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fwd_fcm
	movt	r2, #:upper16:88878	@ tmp482,
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.bwd_fcm
	movw	lr, #:lower16:88964	@ tmp485,
	strb	r6, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movt	lr, #:upper16:88964	@ tmp485,
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC
	movw	r9, #:lower16:88638	@ tmp488,
	movt	r9, #:upper16:88638	@ tmp488,
	strb	sl, [r5, #13]	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.CodecInfo.SMPSeqSyntax.OVERLAP
	strb	r0, [r5, #14]	@ <variable>.CodecInfo.SMPSeqSyntax.OVERLAP, <variable>.overlap
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	strb	r1, [r5, #12]	@ <variable>.CodecInfo.SMPPicSyntax.RNDCTRL, <variable>.rndctrl
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r6, [r5, #18]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.CodecInfo.SMPPicSyntax.HALFQP
	strb	ip, [r5, #19]	@ <variable>.CodecInfo.SMPPicSyntax.HALFQP, <variable>.halfqp
	ldrb	sl, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	strb	sl, [r5, #17]	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.pqindex
	ldr	fp, [r4, lr]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.CodecInfo.SMPPicSyntax.PQUANT
	strb	fp, [r5, #16]	@ <variable>.CodecInfo.SMPPicSyntax.PQUANT, <variable>.pquant
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ D.35175, <variable>.CodecInfo.SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.35175,
	bne	.L789	@,
	ldrb	fp, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	cmp	fp, #8	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX,
	movhi	r3, #0	@, tmp491
	movls	r3, #1	@, tmp491
	strb	r3, [r5, #20]	@ tmp491, <variable>.buniform
.L790:
	movw	lr, #:lower16:88898	@ tmp501,
	movt	lr, #:upper16:88898	@ tmp501,
	movw	sl, #:lower16:88897	@ tmp504,
	movt	sl, #:upper16:88897	@ tmp504,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL
	movw	r8, #:lower16:88632	@ tmp507,
	movt	r8, #:upper16:88632	@ tmp507,
	movw	r1, #:lower16:88896	@ tmp510,
	movt	r1, #:upper16:88896	@ tmp510,
	movw	r0, #:lower16:88908	@ tmp513,
	strb	r9, [r5, #24]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	r0, #:upper16:88908	@ tmp513,
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE
	movw	fp, #:lower16:88633	@,
	movt	fp, #:upper16:88633	@,
	movw	r3, #:lower16:88899	@ tmp516,
	movt	r3, #:upper16:88899	@ tmp516,
	movw	r2, #:lower16:88883	@ tmp519,
	strb	r7, [r5, #23]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r2, #:upper16:88883	@ tmp519,
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.CodecInfo.SMPSeqSyntax.DQUANT
	movw	lr, #:lower16:88884	@ tmp522,
	movt	lr, #:upper16:88884	@ tmp522,
	movw	r9, #:lower16:100820	@ tmp526,
	movt	r9, #:upper16:100820	@ tmp526,
	movw	sl, #:lower16:100816	@ tmp530,
	strb	r6, [r5, #22]	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.dquant
	movt	sl, #:upper16:100816	@ tmp530,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM
	movw	r1, #:lower16:88891	@,
	movt	r1, #:upper16:88891	@,
	movw	r8, #:lower16:88881	@ tmp533,
	movt	r8, #:upper16:88881	@ tmp533,
	movw	r7, #:lower16:89003	@ tmp536,
	strb	ip, [r5, #25]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.dquantfrm
	movt	r7, #:upper16:89003	@ tmp536,
	str	fp, [sp, #12]	@, %sfp
	movw	fp, #:lower16:88892	@,
	ldr	r0, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode
	movt	fp, #:upper16:88892	@,
	str	r1, [sp, #16]	@, %sfp
	movw	r1, #:lower16:88890	@,
	movt	r1, #:upper16:88890	@,
	movw	r6, #:lower16:88893	@ tmp539,
	strb	r0, [r5, #26]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	movt	r6, #:upper16:88893	@ tmp539,
	str	fp, [sp, #20]	@, %sfp
	movw	fp, #:lower16:88876	@,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp
	movw	r3, #:lower16:88952	@,
	str	r1, [sp, #44]	@, %sfp
	movt	r3, #:upper16:88952	@,
	movt	fp, #:upper16:88876	@,
	movw	ip, #:lower16:88889	@ tmp545,
	strb	r0, [r5, #21]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movt	ip, #:upper16:88889	@ tmp545,
	str	r3, [sp, #24]	@, %sfp
	movw	r3, #:lower16:88888	@,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	movt	r3, #:upper16:88888	@,
	str	fp, [sp, #28]	@, %sfp
	movw	r1, #:lower16:88956	@ tmp557,
	movt	r1, #:upper16:88956	@ tmp557,
	movw	r2, #:lower16:88960	@ tmp565,
	strb	r0, [r5, #27]	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.mvmode
	movw	r0, #:lower16:88636	@,
	str	r3, [sp, #32]	@, %sfp
	movt	r2, #:upper16:88960	@ tmp565,
	ldrb	fp, [r4, lr]	@ zero_extendqisi2	@, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	movw	lr, #:lower16:88887	@ tmp575,
	str	r0, [sp, #36]	@, %sfp
	movt	lr, #:upper16:88887	@ tmp575,
	str	fp, [sp, #40]	@, %sfp
	movw	fp, #:lower16:88968	@ tmp579,
	ldr	r3, [sp, #40]	@, %sfp
	movt	fp, #:upper16:88968	@ tmp579,
	strb	r3, [r5, #28]	@, <variable>.mvmode2
	ldr	r0, [sp, #36]	@, %sfp
	movt	r0, #:upper16:88636	@,
	str	r0, [sp, #36]	@, %sfp
	ldr	r9, [r4, r9]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldrb	r9, [r9, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	r9, [r5, #30]	@ <variable>.IsHalfPel, <variable>.colishalfpel
	ldr	r3, [r4, sl]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldrb	sl, [r3, #1029]	@ zero_extendqisi2	@ <variable>.IsHalfPel, <variable>.IsHalfPel
	strb	sl, [r5, #29]	@ <variable>.IsHalfPel, <variable>.curishalfpel
	ldrb	r0, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.CodecInfo.SMPPicSyntax.MVRANGE
	strb	r0, [r5, #31]	@ <variable>.CodecInfo.SMPPicSyntax.MVRANGE, <variable>.mvrange
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	r3, [r5, #32]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldrb	r8, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB
	strb	r8, [r5, #35]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	sl, [sp, #12]	@, %sfp
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM
	strb	r0, [r5, #36]	@ <variable>.CodecInfo.SMPSeqSyntax.VSTRANSFORM, <variable>.vstransform
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.CodecInfo.SMPPicSyntax.TTMBF
	strb	r7, [r5, #37]	@ <variable>.CodecInfo.SMPPicSyntax.TTMBF, <variable>.ttmbf
	ldr	ip, [sp, #16]	@, %sfp
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM
	strb	r3, [r5, #38]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	r6, [sp, #20]	@, %sfp
	ldrb	r8, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2
	strb	r8, [r5, #39]	@ <variable>.CodecInfo.SMPPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	sl, [sp, #44]	@, %sfp
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.CodecInfo.SMPPicSyntax.TTFRM
	strb	r0, [r5, #40]	@ <variable>.CodecInfo.SMPPicSyntax.TTFRM, <variable>.ttfrm
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	rsbs	ip, r7, #1	@ tmp559, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	movcc	ip, #0	@ tmp559
	strb	ip, [r5, #42]	@ tmp559, <variable>.directmbmodeisskipraw
	ldr	r3, [sp, #24]	@, %sfp
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	rsbs	r8, r6, #1	@ tmp563, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	movcc	r8, #0	@ tmp563
	strb	r8, [r5, #43]	@ tmp563, <variable>.mvtypembmodeisskipraw
	ldr	sl, [r4, r2]	@ <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movw	r6, #12372	@ tmp578,
	rsbs	r0, sl, #1	@ tmp567, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movcc	r0, #0	@ tmp567
	strb	r0, [r5, #45]	@ tmp567, <variable>.skipmbmodeisskipraw
	ldr	r1, [sp, #28]	@, %sfp
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.CodecInfo.SMPPicSyntax.BFRACTION
	strb	r7, [r5, #50]	@ <variable>.CodecInfo.SMPPicSyntax.BFRACTION, <variable>.bfraction
	ldr	ip, [sp, #32]	@, %sfp
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.CodecInfo.SMPPicSyntax.CBPTAB
	strb	r3, [r5, #49]	@ <variable>.CodecInfo.SMPPicSyntax.CBPTAB, <variable>.cbptab
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.CodecInfo.SMPPicSyntax.MVTAB
	strb	r2, [r5, #48]	@ <variable>.CodecInfo.SMPPicSyntax.MVTAB, <variable>.mvtab
	ldr	r8, [r4, fp]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.CodecInfo.SMPPicSyntax.ScaleFactor
	str	r8, [r5, r6]	@ <variable>.CodecInfo.SMPPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	sl, [sp, #36]	@, %sfp
	ldrb	r0, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r0, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	beq	.L793	@,
	mov	r3, #0	@ prephitmp.2403,
	mov	r0, r3	@ prephitmp.2401, prephitmp.2403
	mov	ip, r3	@ prephitmp.2437, prephitmp.2403
	mov	r1, r3	@ prephitmp.2419, prephitmp.2403
.L794:
	strb	r1, [r5, #59]	@ prephitmp.2419, <variable>.RANGEREDFRM
	movw	r6, #:lower16:88624	@ tmp609,
	strb	ip, [r5, #60]	@ prephitmp.2437, <variable>.RANGEREDFRM0
	movt	r6, #:upper16:88624	@ tmp609,
	strb	r0, [r5, #61]	@ prephitmp.2401, <variable>.RANGEREDFRM1
	ldr	ip, [sp, #8]	@, %sfp
	str	r3, [ip, #324]	@ prephitmp.2403, <variable>.stDispImg.ImageDnr.Rangedfrm
	ldrb	r3, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	strb	r3, [ip, #302]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
.L787:
	movw	ip, #:lower16:100916	@ tmp612,
	movt	ip, #:upper16:100916	@ tmp612,
	movw	r3, #:lower16:100848	@ tmp614,
	movt	r3, #:upper16:100848	@ tmp614,
	ldrh	r2, [r4, ip]	@, <variable>.CodecInfo.SlcNum
	movw	sl, #:lower16:100852	@ tmp616,
	movt	sl, #:upper16:100852	@ tmp616,
	movw	r6, #:lower16:78283	@ tmp618,
	movt	r6, #:upper16:78283	@ tmp618,
	movw	lr, #:lower16:78284	@ tmp621,
	strh	r2, [r5, #72]	@ movhi	@, <variable>.totalslicenum
	movt	lr, #:upper16:78284	@ tmp621,
	ldrh	r8, [r4, r3]	@, <variable>.CodecInfo.DispPicWidth
	movw	ip, #:lower16:100832	@ tmp625,
	movt	ip, #:upper16:100832	@ tmp625,
	strh	r8, [r5, #74]	@ movhi	@, <variable>.DispPicWidth
	ldrh	r7, [r4, sl]	@, <variable>.CodecInfo.DispPicHeight
	strh	r7, [r5, #76]	@ movhi	@, <variable>.DispPicHeight
	movw	r7, #:lower16:113296	@ tmp634,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	movt	r7, #:upper16:113296	@ tmp634,
	movw	r6, #:lower16:113300	@ tmp637,
	movt	r6, #:upper16:113300	@ tmp637,
	strb	r0, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	movw	r0, #:lower16:113312	@ tmp646,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PostCresent, <variable>.CodecInfo.PostCresent
	movw	lr, #:lower16:113304	@ tmp640,
	movt	lr, #:upper16:113304	@ tmp640,
	movt	r0, #:upper16:113312	@ tmp646,
	strb	r1, [r5, #62]	@ <variable>.CodecInfo.PostCresent, <variable>.PostCresent
	movw	r1, #:lower16:113316	@ tmp649,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	ip, #:lower16:113308	@ tmp643,
	movt	ip, #:upper16:113308	@ tmp643,
	movt	r1, #:upper16:113316	@ tmp649,
	adds	r3, r2, #127	@ tmp626, <variable>.CodecInfo.MbWidth,
	addmi	r3, r2, #254	@, tmp629, <variable>.CodecInfo.MbWidth,
	movw	r2, #:lower16:113320	@ tmp652,
	movt	r2, #:upper16:113320	@ tmp652,
	mov	r8, r3, asr #7	@ tmp631, tmp629,
	movw	r3, #12404	@ tmp624,
	mov	sl, r8, asl #4	@ tmp632, tmp631,
	str	sl, [r5, r3]	@ tmp632, <variable>.BPD_STRIDE
	ldr	sl, [r4, r7]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r8, #12408	@ tmp633,
	movw	r7, #12412	@ tmp636,
	movw	r3, #:lower16:78285	@ tmp655,
	movt	r3, #:upper16:78285	@ tmp655,
	str	sl, [r5, r8]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	add	r3, r4, r3	@ tmp655, pCtx, tmp655
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.CodecInfo.SKIPMB_ADDR
	mov	r6, #12416	@ tmp639,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.CodecInfo.DIRECTMB_ADDR
	movw	lr, #12420	@ tmp642,
	str	r7, [r5, r6]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.CodecInfo.ACPRED_ADDR
	str	r6, [r5, lr]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.ACPRED_ADDR
	movw	lr, #12424	@ tmp645,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.CodecInfo.OVERFLAGS_ADDR
	str	ip, [r5, lr]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	movw	ip, #12428	@ tmp648,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.CodecInfo.FIELDTX_ADDR
	movw	lr, #12432	@ tmp651,
	str	r0, [r5, ip]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.CodecInfo.FORWARDMB_ADDR
	str	r3, [r5, #64]	@ tmp655, <variable>.pIntensityConvertTab
	str	r1, [r5, lr]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L799:
	movw	ip, #:lower16:89016	@ tmp156,
	movt	ip, #:upper16:89016	@ tmp156,
	movw	r8, #:lower16:88640	@ tmp159,
	movt	r8, #:upper16:88640	@ tmp159,
	ldr	fp, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r6, #:lower16:88973	@ tmp162,
	movt	r6, #:upper16:88973	@ tmp162,
	movw	r3, #:lower16:113276	@ tmp166,
	movt	r3, #:upper16:113276	@ tmp166,
	movw	r2, #:lower16:113272	@ tmp179,
	strb	fp, [r5, #5]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.fcm
	movt	r2, #:upper16:113272	@ tmp179,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movw	r8, #:lower16:89013	@ tmp183,
	movt	r8, #:upper16:89013	@ tmp183,
	strb	r7, [r5, #4]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.profile
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ iftmp.459, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	movw	r6, #:lower16:88816	@ tmp186,
	movt	r6, #:upper16:88816	@ tmp186,
	cmp	r0, #4	@ iftmp.459,
	moveq	r0, #3	@ iftmp.459,
	strb	r0, [r5, #3]	@ iftmp.459, <variable>.ptype
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	ip, #:lower16:89004	@ tmp189,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movt	ip, #:upper16:89004	@ tmp189,
	cmp	r1, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	movw	r3, #:lower16:78280	@ tmp192,
	addeq	lr, lr, #1	@ tmp167, <variable>.CodecInfo.CurPicMbHeight,
	movt	r3, #:upper16:78280	@ tmp192,
	addeq	lr, lr, lr, lsr #31	@, tmp171, tmp167, tmp167,
	moveq	lr, lr, asr #1	@ tmp172, tmp171,
	sub	r9, lr, #1	@ tmp178, <variable>.CodecInfo.CurPicMbHeight,
	strh	r9, [r5, #80]	@ movhi	@ tmp178, <variable>.mbheight
	ldr	sl, [r4, r2]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movw	r9, #:lower16:100872	@ tmp196,
	movt	r9, #:upper16:100872	@ tmp196,
	sub	fp, sl, #1	@ tmp182, <variable>.CodecInfo.CurPicMbWidth,
	strh	fp, [r5, #78]	@ movhi	@ tmp182, <variable>.mbwidth
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	fp, #1432	@ tmp199,
	movw	sl, #:lower16:100888	@ tmp205,
	movt	sl, #:upper16:100888	@ tmp205,
	movw	r8, #:lower16:89002	@ tmp213,
	movt	r8, #:upper16:89002	@ tmp213,
	strb	r7, [r5, #8]	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.curparity
	movw	r7, #:lower16:88817	@ tmp216,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER
	movt	r7, #:upper16:88817	@ tmp216,
	movw	r6, #:lower16:88821	@ tmp219,
	movt	r6, #:upper16:88821	@ tmp219,
	strb	r0, [r5, #6]	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.loopfilter
	movw	r0, #:lower16:89140	@ tmp225,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.CodecInfo.AdvPicSyntax.NUMREF
	movw	ip, #:lower16:88972	@ tmp222,
	movt	ip, #:upper16:88972	@ tmp222,
	movt	r0, #:upper16:89140	@ tmp225,
	strb	r1, [r5, #9]	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.numref
	movw	r1, #:lower16:88975	@ tmp228,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:88975	@ tmp228,
	movw	r3, #:lower16:88982	@ tmp231,
	movt	r3, #:upper16:88982	@ tmp231,
	strb	lr, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movw	lr, #:lower16:88822	@ tmp237,
	ldr	r2, [r4, r9]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	lr, #:upper16:88822	@ tmp237,
	mla	r9, fp, r2, r4	@ tmp200, tmp199, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	add	r2, r9, #93184	@ tmp201, tmp200,
	add	r9, r2, #64	@ tmp201, tmp201,
	ldrb	r2, [r9, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r2, [r5, #10]	@ <variable>.PicStruct, <variable>.fwd_fcm
	ldr	r9, [r4, sl]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	mla	r2, fp, r9, r4	@ tmp209, tmp199, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	fp, r2, #93184	@ tmp210, tmp209,
	add	sl, fp, #64	@ tmp210, tmp210,
	ldrb	r9, [sl, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r9, [r5, #11]	@ <variable>.PicStruct, <variable>.bwd_fcm
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.CodecInfo.AdvPicSyntax.CONDOVER
	strb	r2, [r5, #15]	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.condover
	ldrb	fp, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.CodecInfo.AdvEntSyntax.FASTUVMC
	strb	fp, [r5, #13]	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.CodecInfo.AdvEntSyntax.OVERLAP
	mov	r6, #89088	@ tmp234,
	strb	sl, [r5, #14]	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.overlap
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.CodecInfo.AdvPicSyntax.RNDCTRL
	strb	ip, [r5, #12]	@ <variable>.CodecInfo.AdvPicSyntax.RNDCTRL, <variable>.rndctrl
	ldrb	r9, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT
	strb	r9, [r5, #18]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.ALTPQUANT, <variable>.altpquant
	ldrb	r8, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.CodecInfo.AdvPicSyntax.HALFQP
	strb	r8, [r5, #19]	@ <variable>.CodecInfo.AdvPicSyntax.HALFQP, <variable>.halfqp
	ldrb	r7, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	strb	r7, [r5, #17]	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.pqindex
	ldr	r1, [r4, r6]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.CodecInfo.AdvPicSyntax.PQUANT
	strb	r1, [r5, #16]	@ <variable>.CodecInfo.AdvPicSyntax.PQUANT, <variable>.pquant
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ D.35083, <variable>.CodecInfo.AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.35083,
	bne	.L780	@,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	cmp	r2, #8	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX,
	movhi	sl, #0	@, tmp240
	movls	sl, #1	@, tmp240
	strb	sl, [r5, #20]	@ tmp240, <variable>.buniform
.L781:
	movw	r6, #:lower16:89134	@ tmp250,
	movt	r6, #:upper16:89134	@ tmp250,
	movw	ip, #:lower16:89133	@ tmp253,
	movt	ip, #:upper16:89133	@ tmp253,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL
	movw	lr, #:lower16:88819	@ tmp256,
	movt	lr, #:upper16:88819	@ tmp256,
	movw	r3, #:lower16:89132	@ tmp259,
	movt	r3, #:upper16:89132	@ tmp259,
	movw	sl, #:lower16:89144	@ tmp262,
	strb	r0, [r5, #24]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	sl, #:upper16:89144	@ tmp262,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE
	movw	r2, #:lower16:88996	@,
	movt	r2, #:upper16:88996	@,
	movw	r8, #:lower16:89135	@ tmp265,
	movt	r8, #:upper16:89135	@ tmp265,
	movw	r7, #:lower16:88986	@ tmp268,
	strb	r1, [r5, #23]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r7, #:upper16:88986	@ tmp268,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.CodecInfo.AdvEntSyntax.DQUANT
	movw	r6, #:lower16:88987	@ tmp271,
	movt	r6, #:upper16:88987	@ tmp271,
	movw	ip, #:lower16:89005	@ tmp274,
	movt	ip, #:upper16:89005	@ tmp274,
	movw	r0, #:lower16:88997	@ tmp277,
	strb	r9, [r5, #22]	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.dquant
	movt	r0, #:upper16:88997	@ tmp277,
	ldrb	fp, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM
	movw	r1, #:lower16:100820	@ tmp281,
	movw	r3, #:lower16:89013	@ tmp282,
	movt	r1, #:upper16:100820	@ tmp281,
	movt	r3, #:upper16:89013	@ tmp282,
	movw	lr, #:lower16:100816	@ tmp290,
	strb	fp, [r5, #25]	@, <variable>.dquantfrm
	movw	fp, #:lower16:88820	@,
	ldr	sl, [r4, sl]	@, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode
	movt	lr, #:upper16:100816	@ tmp290,
	str	r2, [sp, #12]	@, %sfp
	movw	r9, #:lower16:88985	@ tmp298,
	str	fp, [sp, #16]	@, %sfp
	movt	r9, #:upper16:88985	@ tmp298,
	str	sl, [sp, #20]	@, %sfp
	movw	sl, #:lower16:89003	@ tmp301,
	ldr	r2, [sp, #20]	@, %sfp
	movt	sl, #:upper16:89003	@ tmp301,
	strb	r2, [r5, #26]	@, <variable>.quantmode
	movw	r2, #:lower16:88992	@,
	ldr	fp, [sp, #16]	@, %sfp
	movt	r2, #:upper16:88992	@,
	movt	fp, #:upper16:88820	@,
	str	fp, [sp, #16]	@, %sfp
	ldrb	r8, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp
	movw	fp, #:lower16:88994	@,
	str	r2, [sp, #20]	@, %sfp
	movt	fp, #:upper16:88994	@,
	movw	r2, #:lower16:88995	@,
	str	fp, [sp, #24]	@, %sfp
	movt	r2, #:upper16:88995	@,
	strb	r8, [r5, #21]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	str	r2, [sp, #28]	@, %sfp
	movw	r8, #:lower16:88993	@,
	ldrb	r2, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	movt	r8, #:upper16:88993	@,
	movw	fp, #:lower16:89009	@,
	str	r8, [sp, #32]	@, %sfp
	movt	fp, #:upper16:89009	@,
	movw	r8, #:lower16:89007	@,
	str	fp, [sp, #36]	@, %sfp
	movt	r8, #:upper16:89007	@,
	strb	r2, [r5, #27]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE, <variable>.mvmode
	movw	fp, #:lower16:89011	@,
	str	r8, [sp, #40]	@, %sfp
	movt	fp, #:upper16:89011	@,
	ldrb	r2, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	movw	r7, #:lower16:89012	@,
	str	fp, [sp, #4]	@, %sfp
	movt	r7, #:upper16:89012	@,
	movw	r8, #:lower16:89006	@,
	str	r7, [sp, #44]	@, %sfp
	movt	r8, #:upper16:89006	@,
	strb	r2, [r5, #28]	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.mvmode2
	str	r8, [sp, #48]	@, %sfp
	movw	r6, #:lower16:89010	@,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.CodecInfo.AdvPicSyntax.REFFIELD
	movt	r6, #:upper16:89010	@,
	movw	fp, #:lower16:89008	@,
	str	r6, [sp, #52]	@, %sfp
	movt	fp, #:upper16:89008	@,
	movw	r7, #:lower16:88974	@,
	str	fp, [sp, #56]	@, %sfp
	movt	r7, #:upper16:88974	@,
	strb	ip, [r5, #34]	@ <variable>.CodecInfo.AdvPicSyntax.REFFIELD, <variable>.reffiled
	movw	r2, #:lower16:88991	@,
	str	r7, [sp, #60]	@, %sfp
	movt	r2, #:upper16:88991	@,
	ldrb	r6, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.CodecInfo.AdvPicSyntax.DMVRANGE
	movw	ip, #:lower16:88998	@,
	str	r2, [sp, #64]	@, %sfp
	movw	r8, #:lower16:88990	@,
	movw	fp, #:lower16:89001	@,
	movt	r8, #:upper16:88990	@,
	movt	fp, #:upper16:89001	@,
	str	r8, [sp, #68]	@, %sfp
	strb	r6, [r5, #33]	@ <variable>.CodecInfo.AdvPicSyntax.DMVRANGE, <variable>.dmvrange
	movw	r7, #:lower16:88999	@,
	str	fp, [sp, #72]	@, %sfp
	movt	r7, #:upper16:88999	@,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movw	r1, #:lower16:88998	@,
	str	ip, [sp, #76]	@, %sfp
	movt	r1, #:upper16:88998	@,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r6, #:lower16:89120	@,
	str	r7, [sp, #80]	@, %sfp
	movt	r6, #:upper16:89120	@,
	add	r8, r0, r2	@ tmp285, <variable>.CodecInfo.pRef, <variable>.CodecInfo.AdvPicSyntax.CurParity
	str	r1, [sp, #76]	@, %sfp
	movw	ip, #:lower16:113252	@,
	movt	ip, #:upper16:113252	@,
	ldrb	fp, [r8, #1029]	@ zero_extendqisi2	@ tmp287, <variable>.IsHalfPel
	movw	r7, #:lower16:89000	@ tmp368,
	str	r6, [sp, #84]	@, %sfp
	movt	r7, #:upper16:89000	@ tmp368,
	movw	r6, #:lower16:113248	@ tmp375,
	movt	r6, #:upper16:113248	@ tmp375,
	strb	fp, [r5, #30]	@ tmp287, <variable>.colishalfpel
	str	ip, [sp, #88]	@, %sfp
	movw	ip, #:lower16:88825	@ tmp380,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:88825	@ tmp380,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	add	r2, r1, r0	@ tmp294, <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r0, #:lower16:88826	@ tmp383,
	movt	r0, #:upper16:88826	@ tmp383,
	movw	r1, #:lower16:88827	@ tmp386,
	ldrb	fp, [r2, #1029]	@ zero_extendqisi2	@, <variable>.IsHalfPel
	movt	r1, #:upper16:88827	@ tmp386,
	movw	r2, #:lower16:88828	@ tmp389,
	movt	r2, #:upper16:88828	@ tmp389,
	str	fp, [sp, #92]	@, %sfp
	movw	fp, #:lower16:89016	@ tmp392,
	ldr	r8, [sp, #92]	@, %sfp
	movt	fp, #:upper16:89016	@ tmp392,
	strb	r8, [r5, #29]	@, <variable>.curishalfpel
	ldrb	r9, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.CodecInfo.AdvPicSyntax.MVRANGE
	strb	r9, [r5, #31]	@ <variable>.CodecInfo.AdvPicSyntax.MVRANGE, <variable>.mvrange
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	strb	lr, [r5, #32]	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.refdist
	ldr	r8, [sp, #12]	@, %sfp
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB
	strb	sl, [r5, #35]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSDCTAB, <variable>.transdctab
	ldr	lr, [sp, #16]	@, %sfp
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM
	strb	sl, [r5, #36]	@ <variable>.CodecInfo.AdvEntSyntax.VSTRANSFORM, <variable>.vstransform
	ldr	r8, [sp, #20]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.CodecInfo.AdvPicSyntax.TTMBF
	strb	lr, [r5, #37]	@ <variable>.CodecInfo.AdvPicSyntax.TTMBF, <variable>.ttmbf
	ldr	sl, [sp, #24]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM
	strb	lr, [r5, #38]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM, <variable>.transacfrm
	ldr	r8, [sp, #28]	@, %sfp
	ldrb	sl, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2
	strb	sl, [r5, #39]	@ <variable>.CodecInfo.AdvPicSyntax.TRANSACFRM2, <variable>.transacfrm2
	ldr	lr, [sp, #32]	@, %sfp
	ldrb	sl, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.CodecInfo.AdvPicSyntax.TTFRM
	strb	sl, [r5, #40]	@ <variable>.CodecInfo.AdvPicSyntax.TTFRM, <variable>.ttfrm
	ldr	r8, [sp, #36]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.ACPREDMode, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	rsbs	sl, lr, #1	@ tmp324, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	movcc	sl, #0	@ tmp324
	strb	sl, [r5, #46]	@ tmp324, <variable>.acpredmodeisskipraw
	ldr	r8, [sp, #40]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	rsbs	sl, lr, #1	@ tmp328, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	movcc	sl, #0	@ tmp328
	strb	sl, [r5, #42]	@ tmp328, <variable>.directmbmodeisskipraw
	ldr	r8, [sp, #4]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	rsbs	sl, lr, #1	@ tmp332, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	movcc	sl, #0	@ tmp332
	strb	sl, [r5, #44]	@ tmp332, <variable>.fieldtxmodeisskipraw
	ldr	r8, [sp, #44]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	rsbs	sl, lr, #1	@ tmp336, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	movcc	sl, #0	@ tmp336
	strb	sl, [r5, #41]	@ tmp336, <variable>.forwardmbmodeisskipraw
	ldr	r8, [sp, #48]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	rsbs	sl, lr, #1	@ tmp340, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	movcc	sl, #0	@ tmp340
	strb	sl, [r5, #43]	@ tmp340, <variable>.mvtypembmodeisskipraw
	ldr	r8, [sp, #52]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	rsbs	sl, lr, #1	@ tmp344, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	movcc	sl, #0	@ tmp344
	strb	sl, [r5, #47]	@ tmp344, <variable>.overflagsmodeisskipraw
	ldr	r8, [sp, #56]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	rsbs	sl, lr, #1	@ tmp348, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	movcc	sl, #0	@ tmp348
	strb	sl, [r5, #45]	@ tmp348, <variable>.skipmbmodeisskipraw
	ldr	r8, [sp, #60]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.CodecInfo.AdvPicSyntax.BFRACTION
	strb	lr, [r5, #50]	@ <variable>.CodecInfo.AdvPicSyntax.BFRACTION, <variable>.bfraction
	ldr	sl, [sp, #64]	@, %sfp
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.CodecInfo.AdvPicSyntax.CBPTAB
	strb	r8, [r5, #49]	@ <variable>.CodecInfo.AdvPicSyntax.CBPTAB, <variable>.cbptab
	ldr	lr, [sp, #68]	@, %sfp
	ldrb	r8, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.CodecInfo.AdvPicSyntax.MVTAB
	strb	r8, [r5, #48]	@ <variable>.CodecInfo.AdvPicSyntax.MVTAB, <variable>.mvtab
	ldr	sl, [sp, #72]	@, %sfp
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB
	strb	lr, [r5, #53]	@ <variable>.CodecInfo.AdvPicSyntax.QMVBPTAB, <variable>.fourmvbptab
	ldr	r8, [sp, #76]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH
	strb	lr, [r5, #54]	@ <variable>.CodecInfo.AdvPicSyntax.QMVSWITCH, <variable>.fourmvswtich
	ldr	sl, [sp, #80]	@, %sfp
	ldrb	r8, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.CodecInfo.AdvPicSyntax.MBMODETAB
	strb	r8, [r5, #51]	@ <variable>.CodecInfo.AdvPicSyntax.MBMODETAB, <variable>.mbmodetab
	ldrb	lr, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB
	movw	r7, #12372	@ tmp371,
	strb	lr, [r5, #52]	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.twomvbptab
	ldr	sl, [sp, #84]	@, %sfp
	ldr	r8, [r4, sl]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	sl, #12376	@ tmp374,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.FRFD, <variable>.CodecInfo.FRFD
	movw	r6, #12380	@ tmp377,
	str	lr, [r5, sl]	@ <variable>.CodecInfo.FRFD, <variable>.FRFD
	ldr	r8, [sp, #88]	@, %sfp
	ldr	r7, [r4, r8]	@ <variable>.CodecInfo.BRFD, <variable>.CodecInfo.BRFD
	str	r7, [r5, r6]	@ <variable>.CodecInfo.BRFD, <variable>.BRFD
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	strb	lr, [r5, #55]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.rangemapyflag
	ldrb	sl, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	sl, [r5, #56]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.rangemapy
	ldrb	r8, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r8, [r5, #57]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.rangemapuvflag
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r7, [r5, #58]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.rangemapuv
	ldr	r6, [r4, fp]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L800	@,
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	lr, [sp, #8]	@, %sfp
	strb	r6, [lr, #297]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r3, [lr, #298]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	ip, [lr, #299]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	sl, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	sl, [lr, #300]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
.L786:
	movw	r8, #:lower16:88640	@ tmp432,
	movt	r8, #:upper16:88640	@ tmp432,
	ldr	r0, [sp, #8]	@, %sfp
	movw	r1, #:lower16:78283	@ tmp435,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movt	r1, #:upper16:78283	@ tmp435,
	strb	r7, [r0, #302]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	r2, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	b	.L787	@
.L789:
	cmp	r1, #1	@ D.35175,
	beq	.L801	@,
	cmp	r1, #2	@ D.35175,
	movne	r3, #1	@ tmp499,
	strb	r3, [r5, #20]	@ tmp499, <variable>.buniform
	b	.L790	@
.L780:
	cmp	r2, #1	@ D.35083,
	beq	.L802	@,
	cmp	r2, #2	@ D.35083,
	moveq	r3, #0	@ tmp246,
	movne	r3, #1	@ tmp248,
	strb	r3, [r5, #20]	@ tmp248, <variable>.buniform
	b	.L781	@
.L802:
	movw	r3, #:lower16:88983	@ tmp242,
	movt	r3, #:upper16:88983	@ tmp242,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER
	subs	r9, lr, #0	@ tmp244, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER,
	movne	r9, #1	@ tmp244
	strb	r9, [r5, #20]	@ tmp244, <variable>.buniform
	b	.L781	@
.L801:
	movw	r7, #:lower16:88880	@ tmp493,
	movt	r7, #:upper16:88880	@ tmp493,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER
	subs	ip, r1, #0	@ tmp495, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER,
	movne	ip, #1	@ tmp495
	strb	ip, [r5, #20]	@ tmp495, <variable>.buniform
	b	.L790	@
.L800:
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2405, <variable>.CodecInfo.AdvPicSyntax.CurParity
	cmp	r6, #0	@ prephitmp.2405,
	bne	.L785	@,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	r8, [sp, #8]	@, %sfp
	strb	ip, [r8, #297]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	lr, [r8, #298]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	sl, [r8, #299]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r7, [r8, #300]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2405, <variable>.CodecInfo.AdvPicSyntax.CurParity
.L785:
	cmp	r6, #1	@ prephitmp.2405,
	bne	.L786	@,
	movw	fp, #:lower16:88825	@ tmp408,
	movt	fp, #:upper16:88825	@ tmp408,
	movw	r7, #:lower16:88826	@ tmp411,
	movt	r7, #:upper16:88826	@ tmp411,
	ldrb	r8, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	movw	r6, #:lower16:88827	@ tmp414,
	ldr	fp, [sp, #8]	@, %sfp
	movt	r6, #:upper16:88827	@ tmp414,
	movw	r3, #:lower16:88828	@ tmp417,
	movt	r3, #:upper16:88828	@ tmp417,
	strb	r8, [fp, #292]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r0, [fp, #293]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [fp, #294]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r2, [fp, #295]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L786	@
.L793:
	movw	r0, #:lower16:100872	@ tmp584,
	movw	r2, #:lower16:100888	@ tmp591,
	movt	r0, #:upper16:100872	@ tmp584,
	movt	r2, #:upper16:100888	@ tmp591,
	movw	sl, #1432	@ tmp587,
	movw	r1, #:lower16:88875	@ tmp597,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	r1, #:upper16:88875	@ tmp597,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.35224, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	mla	r7, sl, lr, r4	@ tmp588, tmp587, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	cmp	r1, #2	@ D.35224,
	cmpne	r1, #4	@, D.35224,
	mla	r6, sl, r0, r4	@ tmp595, tmp587, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r8, r7, #92160	@ tmp589, tmp588,
	add	r2, r8, #64	@ tmp589, tmp589,
	add	ip, r6, #92160	@ tmp596, tmp595,
	add	r3, ip, #64	@ tmp596, tmp596,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ RANGEREDFRM0, <variable>.RANGEREDFRM
	movwne	r2, #:lower16:88874	@ tmp605,
	movtne	r2, #:upper16:88874	@ tmp605,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ RANGEREDFRM1, <variable>.RANGEREDFRM
	uxtbeq	ip, ip	@ prephitmp.2437, RANGEREDFRM0
	uxtbne	ip, ip	@ prephitmp.2437, RANGEREDFRM0
	uxtbne	r0, r3	@ prephitmp.2401, RANGEREDFRM1
	ldrneb	r3, [r4, r2]	@ zero_extendqisi2	@ RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	uxtbeq	r1, r3	@ prephitmp.2419, RANGEREDFRM1
	uxtbne	r1, r3	@ prephitmp.2419, RANGEREDFRM
	moveq	r0, r1	@ prephitmp.2401, prephitmp.2419
	b	.L794	@
.L798:
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC21	@,
	movw	r2, #1121	@,
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
	.fnend
	.size	VC1_WritePicMsg, .-VC1_WritePicMsg
	.align	2
	.global	VC1_Vfmw_StartDecode
	.type	VC1_Vfmw_StartDecode, %function
VC1_Vfmw_StartDecode:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r2, #:lower16:81368	@ tmp156,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movt	r2, #:upper16:81368	@ tmp156,
	movw	r3, #:lower16:78104	@ tmp153,
	movt	r3, #:upper16:78104	@ tmp153,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.35899, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	add	r6, r0, #77824	@ pCodecInf, pVC1_CTX_S,
	ldr	r1, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	cmp	r2, #1	@ D.35899,
	add	r6, r6, #448	@ pCodecInf, pCodecInf,
	add	r5, r0, #8	@ pVc1DecParam, pVC1_CTX_S,
	str	r1, [r0, r3]	@ <variable>.s32Compress_en, <variable>.Vc1DecParam.Compress_en
	beq	.L804	@,
	cmp	r2, #0	@ D.35899,
	beq	.L818	@,
.L804:
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WritePicMsg	@
	mov	r0, r6	@, pCodecInf
	mov	r1, r5	@, pVc1DecParam
	bl	VC1_WriteSliceMsg	@
	mov	r1, r5	@, pVc1DecParam
	mov	r0, r6	@, pCodecInf
	bl	VC1_CfgVDH	@
	movw	r1, #:lower16:78274	@ tmp174,
	movt	r1, #:upper16:78274	@ tmp174,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2471, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ prephitmp.2471,
	bls	.L819	@,
.L808:
	cmp	r3, #5	@ prephitmp.2471,
	beq	.L820	@,
	movw	r1, #:lower16:78276	@ tmp194,
	movt	r1, #:upper16:78276	@ tmp194,
	mov	ip, #0	@ tmp192,
	strb	ip, [r4, #9]	@ tmp192, <variable>.Vc1DecParam.IsSkpicCopy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2473, <variable>.CodecInfo.PicStructure
.L810:
	movw	lr, #:lower16:78276	@ tmp197,
	movw	r2, #:lower16:78280	@ tmp201,
	movt	lr, #:upper16:78276	@ tmp197,
	movt	r2, #:upper16:78280	@ tmp201,
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.35953, <variable>.Vc1DecParam.ptype
	movw	r1, #:lower16:78275	@ tmp196,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:78275	@ tmp196,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	movw	r2, #:lower16:78281	@ tmp200,
	cmp	r3, #2	@ D.35953,
	movt	r2, #:upper16:78281	@ tmp200,
	strb	ip, [r4, #8]	@ prephitmp.2473, <variable>.Vc1DecParam.picstructure
	strb	r7, [r4, r1]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct_IPB
	strb	r0, [r4, r2]	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.LastIs2ndFld
	beq	.L821	@,
	cmp	r3, #1	@ D.35953,
	cmpne	r3, #5	@, D.35953,
	movweq	r2, #:lower16:113256	@ tmp224,
	movteq	r2, #:upper16:113256	@ tmp224,
	moveq	r1, #1	@ tmp225,
	streq	r1, [r4, r2]	@ tmp225, <variable>.CodecInfo.PPicFound
.L812:
	ldr	r1, [r4, #0]	@ temp.2490, <variable>.pstExtraData
	str	r5, [r4, #4]	@ pVc1DecParam, <variable>.pVc1DecParam
	ldr	r2, [r1, #708]	@ D.35933, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.35933,
	beq	.L822	@,
	cmp	r2, #2	@ D.35933,
	beq	.L823	@,
.L815:
	mov	r0, #1	@ D.35925,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L818:
	movw	r7, #:lower16:88875	@ tmp158,
	movt	r7, #:upper16:88875	@ tmp158,
	ldrb	r3, [r0, r7]	@ zero_extendqisi2	@ D.38483, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.38483,
	cmpne	r3, #4	@, D.38483,
	moveq	r1, #1	@ prephitmp.2475,
	moveq	r0, r1	@ prephitmp.2491, prephitmp.2475
	beq	.L806	@,
	cmp	r3, #1	@ D.38483,
	beq	.L824	@,
	movw	lr, #:lower16:78282	@ tmp169,
	movt	lr, #:upper16:78282	@ tmp169,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ prephitmp.2491, <variable>.CodecInfo.LastPicRNDCTRL
	mov	r1, r0	@ prephitmp.2475, prephitmp.2491
.L806:
	movw	r2, #:lower16:78282	@ tmp170,
	movw	r3, #:lower16:88894	@ tmp172,
	movt	r2, #:upper16:78282	@ tmp170,
	movt	r3, #:upper16:88894	@ tmp172,
	strb	r0, [r4, r2]	@ prephitmp.2491, <variable>.CodecInfo.LastPicRNDCTRL
	strb	r1, [r4, r3]	@ prephitmp.2475, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	b	.L804	@
.L823:
	ldr	r0, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L815	@,
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L815	@,
	cmp	r3, #2	@ D.35953,
	cmpne	r3, #4	@, D.35953,
	bne	.L815	@,
	movw	r0, #:lower16:100816	@ tmp249,
	movt	r0, #:upper16:100816	@ tmp249,
	mov	r5, #0	@ tmp250,
	movw	ip, #:lower16:113720	@ tmp254,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:113720	@ tmp254,
	mov	r0, r6	@, pCodecInf
	strb	r5, [r2, #1]	@ tmp250, <variable>.is_to_display
	ldr	lr, [r4, #0]	@ temp.2495, <variable>.pstExtraData
	ldr	r3, [lr, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, r3, #1	@ tmp253, <variable>.stDisParams.s32DisNums,
	str	r1, [lr, #712]	@ tmp253, <variable>.stDisParams.s32DisNums
	ldr	r1, [r4, ip]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp250, <variable>.pVc1DecParam
	mov	r0, r5	@ D.35925, tmp250
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L821:
	movw	r1, #:lower16:113256	@ tmp204,
	movt	r1, #:upper16:113256	@ tmp204,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r7, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L812	@,
	movw	lr, #:lower16:113720	@ tmp206,
	movt	lr, #:upper16:113720	@ tmp206,
	mov	r0, r6	@, pCodecInf
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	ip, #:lower16:100816	@ tmp209,
	movt	ip, #:upper16:100816	@ tmp209,
	movw	r3, #:lower16:113260	@ tmp212,
	movt	r3, #:upper16:113260	@ tmp212,
	mov	r0, r7	@ D.35925, <variable>.CodecInfo.PPicFound
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ <variable>.CodecInfo.PPicFound, <variable>.is_to_ref
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.BPicCount, <variable>.CodecInfo.BPicCount
	str	r7, [r4, #4]	@ <variable>.CodecInfo.PPicFound, <variable>.pVc1DecParam
	add	ip, r2, #1	@ tmp215, <variable>.CodecInfo.BPicCount,
	str	ip, [r4, r3]	@ tmp215, <variable>.CodecInfo.BPicCount
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L820:
	movw	r3, #:lower16:78277	@ tmp182,
	movt	r3, #:upper16:78277	@ tmp182,
	movw	lr, #:lower16:113280	@ tmp189,
	movt	lr, #:upper16:113280	@ tmp189,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2473, <variable>.CodecInfo.Last_Struct
	movw	r0, #:lower16:78276	@ tmp183,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.CurPicMbNum, <variable>.CodecInfo.CurPicMbNum
	movt	r0, #:upper16:78276	@ tmp183,
	movw	r3, #:lower16:78280	@ tmp185,
	movw	r2, #:lower16:77996	@ tmp188,
	movt	r3, #:upper16:78280	@ tmp185,
	movt	r2, #:upper16:77996	@ tmp188,
	mov	lr, #1	@ tmp180,
	sub	r1, r7, #1	@ tmp191, <variable>.CodecInfo.CurPicMbNum,
	strb	ip, [r4, r0]	@ prephitmp.2473, <variable>.CodecInfo.PicStructure
	str	r1, [r4, r2]	@ tmp191, <variable>.Vc1DecParam.basic_cfg0
	strb	lr, [r4, r3]	@ tmp180, <variable>.CodecInfo.Is2ndFld
	strb	lr, [r4, #9]	@ tmp180, <variable>.Vc1DecParam.IsSkpicCopy
	b	.L810	@
.L819:
	movw	ip, #:lower16:78276	@ tmp176,
	movt	ip, #:upper16:78276	@ tmp176,
	movw	r0, #:lower16:78277	@ tmp175,
	movt	r0, #:upper16:78277	@ tmp175,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct
	b	.L808	@
.L822:
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L815	@,
	cmp	r3, #2	@ D.35953,
	cmpne	r3, #4	@, D.35953,
	bne	.L815	@,
	movw	r5, #:lower16:100816	@ tmp234,
	movt	r5, #:upper16:100816	@ tmp234,
	movw	r3, #:lower16:113720	@ tmp237,
	movt	r3, #:upper16:113720	@ tmp237,
	ldr	r2, [r4, r5]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r0, r6	@, pCodecInf
	mov	r5, #0	@ tmp235,
	strb	r5, [r2, #1]	@ tmp235, <variable>.is_to_display
	ldr	r1, [r4, r3]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp235, <variable>.pVc1DecParam
	mov	r0, r5	@ D.35925, tmp235
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L824:
	movw	ip, #:lower16:78282	@ tmp166,
	movt	ip, #:upper16:78282	@ tmp166,
	ldrsb	r0, [r4, ip]	@ <variable>.CodecInfo.LastPicRNDCTRL, <variable>.CodecInfo.LastPicRNDCTRL
	rsbs	r0, r0, #1	@ prephitmp.2491, <variable>.CodecInfo.LastPicRNDCTRL
	movcc	r0, #0	@ prephitmp.2491
	mov	r1, r0	@ prephitmp.2475, prephitmp.2491
	b	.L806	@
	.fnend
	.size	VC1_Vfmw_StartDecode, .-VC1_Vfmw_StartDecode
	.align	2
	.global	VC1DEC_RecycleImage
	.type	VC1DEC_RecycleImage, %function
VC1DEC_RecycleImage:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:113720	@ tmp138,
	movt	r4, #:upper16:113720	@ tmp138,
	mov	r6, r1	@ img_id, img_id
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #0	@,
	ldr	r0, [r0, r4]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r6	@, img_id
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L826	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L826:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VC1DEC_RecycleImage, .-VC1DEC_RecycleImage
	.align	2
	.global	VC1_Vfmw_GetImageBuffer
	.type	VC1_Vfmw_GetImageBuffer, %function
VC1_Vfmw_GetImageBuffer:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #:lower16:113720	@ tmp161,
	movt	r5, #:upper16:113720	@ tmp161,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r1, #1	@,
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	bl	FSP_NewLogicFs	@
	movw	r3, #:lower16:100908	@ tmp163,
	movt	r3, #:upper16:100908	@ tmp163,
	cmp	r0, #0	@ D.35364,
	mov	r1, r0	@ D.35364,
	str	r0, [r4, r3]	@ D.35364, <variable>.CodecInfo.CurFsID
	blt	.L829	@,
	movw	r6, #:lower16:92224	@ tmp164,
	movt	r6, #:upper16:92224	@ tmp164,
	ldrh	r3, [r4, r6]	@ tmp165,
	cmp	r3, #0	@ tmp165,
	beq	.L831	@,
	movw	r7, #:lower16:93656	@ tmp166,
	movt	r7, #:upper16:93656	@ tmp166,
	ldrh	r3, [r4, r7]	@ tmp167,
	cmp	r3, #0	@ tmp167,
	moveq	r3, #1	@ prephitmp.2547,
	beq	.L831	@,
	movw	r8, #:lower16:95088	@ tmp168,
	movt	r8, #:upper16:95088	@ tmp168,
	ldrh	r3, [r4, r8]	@ tmp169,
	cmp	r3, #0	@ tmp169,
	moveq	r3, #2	@ prephitmp.2547,
	beq	.L831	@,
	movw	sl, #:lower16:96520	@ tmp170,
	movt	sl, #:upper16:96520	@ tmp170,
	ldrh	r3, [r4, sl]	@ tmp171,
	cmp	r3, #0	@ tmp171,
	moveq	r3, #3	@ prephitmp.2547,
	beq	.L831	@,
	movw	r9, #:lower16:97952	@ tmp172,
	movt	r9, #:upper16:97952	@ tmp172,
	ldrh	r0, [r4, r9]	@ tmp173,
	cmp	r0, #0	@ tmp173,
	beq	.L846	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	movw	r5, #:lower16:93657	@ tmp263,
	movw	r0, #:lower16:92225	@ tmp257,
	movt	r5, #:upper16:93657	@ tmp263,
	movt	r0, #:upper16:92225	@ tmp257,
	movw	ip, #:lower16:95089	@ tmp269,
	movw	r1, #:lower16:96521	@ tmp275,
	movt	ip, #:upper16:95089	@ tmp269,
	movt	r1, #:upper16:96521	@ tmp275,
	movw	r2, #:lower16:97953	@ tmp281,
	movt	r2, #:upper16:97953	@ tmp281,
	mov	r3, #0	@ tmp258,
	strb	r3, [r4, r0]	@ tmp258, <variable>.is_to_display
	mov	r0, r3	@ D.35381, tmp258
	strb	r3, [r4, r6]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r5]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r7]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, ip]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r8]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r1]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, sl]	@ tmp258, <variable>.is_to_ref
	strb	r3, [r4, r2]	@ tmp258, <variable>.is_to_display
	strb	r3, [r4, r9]	@ tmp258, <variable>.is_to_ref
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L846:
	mov	r3, #4	@ prephitmp.2547,
.L831:
	movw	r2, #1432	@ tmp219,
	movw	r7, #:lower16:100816	@ tmp222,
	mul	r5, r2, r3	@ tmp218, tmp219, prephitmp.2547
	movt	r7, #:upper16:100816	@ tmp222,
	mov	r2, #0	@ k,
	mov	r3, r7	@ tmp290, tmp222
	add	ip, r5, r4	@ tmp226, tmp218, pVC1_CTX_S
	add	r1, r5, #92160	@ tmp220, tmp218,
	add	r0, ip, #92160	@ tmp227, tmp226,
	add	lr, r1, #64	@ tmp220, tmp220,
	add	r6, r0, #64	@ tmp227, tmp227,
	add	r1, r4, lr	@ prephitmp.2549, pVC1_CTX_S, tmp220
	mov	r5, #1	@ tmp228,
	str	r1, [r4, r7]	@ prephitmp.2549, <variable>.CodecInfo.pCurFrm
	strb	r5, [r6, #1]	@ tmp228, <variable>.is_to_display
	b	.L840	@
.L847:
	ldr	ip, [r4, r3]	@ prephitmp.2549, <variable>.CodecInfo.pCurFrm
	add	r7, ip, r1	@ tmp295, prephitmp.2549, tmp291
	strb	r6, [r7, #3]	@ D.35391, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r1, lr	@ tmp299, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [ip, #259]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r1, r7	@ tmp302, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [lr, #515]	@ D.35391, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r1, ip	@ tmp305, tmp291, <variable>.CodecInfo.pCurFrm
	strb	r6, [r7, #771]	@ D.35391, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ prephitmp.2549, <variable>.CodecInfo.pCurFrm
	add	r1, lr, r0	@ tmp310, prephitmp.2549, k
	strb	r5, [r1, #3]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r0, r6	@ tmp314, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r7, #259]	@ D.35391, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r0, ip	@ tmp317, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [lr, #515]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r0, r0, r1	@ tmp320, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r0, #771]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ prephitmp.2549, <variable>.CodecInfo.pCurFrm
.L840:
	add	r6, r1, r2	@ tmp231, prephitmp.2549, k
	uxtb	lr, r2	@ D.35391, k
	add	r1, r2, #1	@ tmp291, k,
	strb	lr, [r6, #3]	@ D.35391, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ k, tmp291,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	cmp	r1, #256	@ tmp291,
	uxtb	r6, r1	@ D.35391, tmp291
	uxtb	r5, r0	@ D.35391, k
	add	ip, r2, r7	@ tmp237, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #259]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r2, r7	@ tmp243, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #515]	@ D.35391, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r2, r7	@ tmp249, k, <variable>.CodecInfo.pCurFrm
	add	r2, r2, #3	@ k, k,
	strb	lr, [r7, #771]	@ D.35391, <variable>.IntensityConvertTab
	bne	.L847	@,
	mov	r0, #1	@ D.35381,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L829:
	movw	r7, #:lower16:100904	@ tmp177,
	movt	r7, #:upper16:100904	@ tmp177,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L837	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:100900	@ tmp201,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:100900	@ tmp201,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp191,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp191, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp191, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp191, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp191, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp191, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp191, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.35378, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.35378, <variable>.CodecInfo.BwdFsID
.L837:
	movw	r2, #:lower16:100896	@ tmp211,
	movw	ip, #:lower16:113720	@ tmp213,
	movt	r2, #:upper16:100896	@ tmp211,
	movt	ip, #:upper16:113720	@ tmp213,
	add	r1, r4, #112640	@, pVC1_CTX_S,
	mov	r5, #0	@ tmp212,
	add	r1, r1, #728	@,,
	str	r5, [r4, r2]	@ tmp212, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35381, tmp212
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1DEC_GetImageBuffer
	.type	VC1DEC_GetImageBuffer, %function
VC1DEC_GetImageBuffer:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:78275	@ tmp138,
	movt	r1, #:upper16:78275	@ tmp138,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L855	@,
.L849:
	movw	r5, #:lower16:113720	@ tmp142,
	movt	r5, #:upper16:113720	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L850	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L851	@,
.L854:
	mov	r0, #0	@ D.35336,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L855:
	movw	r2, #:lower16:78281	@ tmp140,
	movt	r2, #:upper16:78281	@ tmp140,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	r0, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L849	@,
.L850:
	mov	r0, #1	@ D.35336,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L851:
	add	ip, r4, #112640	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #728	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L854	@
	.fnend
	.size	VC1DEC_GetImageBuffer, .-VC1DEC_GetImageBuffer
	.align	2
	.global	VC1_ArrangeVahbMem
	.type	VC1_ArrangeVahbMem, %function
VC1_ArrangeVahbMem:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	r4, r1, #32	@ tmp165, ImgWidth,
	movw	r3, #8160	@ tmp167,
	cmp	r4, r3	@ tmp165, tmp167
	movls	ip, #0	@, tmp168
	movhi	ip, #1	@, tmp168
	mov	r3, r2	@ ImgHeight, ImgHeight
	cmp	r2, #31	@ ImgHeight,
	movhi	r2, ip	@, tmp171, tmp168
	orrls	r2, ip, #1	@,, tmp171, tmp168
	cmp	r2, #0	@ tmp171,
	mov	r4, r0	@ pVc1Ctx, pVc1Ctx
	add	r0, r0, #92160	@ pfrmbuf, pVc1Ctx,
	movw	ip, #:lower16:92224	@ tmp162,
	.pad #52
	sub	sp, sp, #52	@,,
	add	r0, r0, #64	@ pfrmbuf, pfrmbuf,
	movt	ip, #:upper16:92224	@ tmp162,
	bne	.L857	@,
	cmp	r3, #8192	@ ImgHeight,
	bhi	.L857	@,
	add	fp, r0, #4288	@ tmp193, pfrmbuf,
	add	r5, r0, #1424	@ pfrmbuf.2652, pfrmbuf,
	add	r5, r5, #8	@ pfrmbuf.2652, pfrmbuf.2652,
	add	r7, fp, #8	@ pfrmbuf.2670, tmp193,
	add	r8, r5, #1424	@ pfrmbuf.2669, pfrmbuf.2652,
	add	r6, r7, #1424	@ pfrmbuf.2671, pfrmbuf.2670,
	add	r8, r8, #8	@ pfrmbuf.2669, pfrmbuf.2669,
	add	r6, r6, #8	@ pfrmbuf.2671, pfrmbuf.2671,
	movw	r9, #:lower16:93432	@ tmp173,
	movw	sl, #:lower16:92225	@ tmp175,
	movt	r9, #:upper16:93432	@ tmp173,
	movt	sl, #:upper16:92225	@ tmp175,
	strb	r2, [r4, ip]	@ tmp171, <variable>.is_to_ref
	mov	ip, #2	@ tmp188,
	str	r2, [r4, r9]	@ tmp171, <variable>.img.image_id
	mov	r9, #1	@ tmp182,
	strb	r2, [r4, sl]	@ tmp171, <variable>.is_to_display
	str	r9, [r5, #1208]	@ tmp182, <variable>.img.image_id
	strb	r2, [r5, #1]	@ tmp171, <variable>.is_to_display
	str	ip, [r8, #1208]	@ tmp188, <variable>.img.image_id
	mov	ip, #3	@ tmp194,
	strb	r2, [r0, #1432]	@ tmp171, <variable>.is_to_ref
	str	ip, [r7, #1208]	@ tmp194, <variable>.img.image_id
	mov	ip, #4	@ tmp200,
	strb	r2, [r8, #1]	@ tmp171, <variable>.is_to_display
	strb	r2, [r5, #1432]	@ tmp171, <variable>.is_to_ref
	strb	r2, [r7, #1]	@ tmp171, <variable>.is_to_display
	strb	r2, [fp, #8]	@ tmp171, <variable>.is_to_ref
	str	ip, [r6, #1208]	@ tmp200, <variable>.img.image_id
	strb	r2, [r7, #1432]	@ tmp171, <variable>.is_to_ref
	strb	r2, [r6, #1]	@ tmp171, <variable>.is_to_display
	ldr	r2, [r4, #0]	@ D.34911, <variable>.pstExtraData
	ldr	r0, [r2, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L860	@,
	ldr	r7, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #25	@ <variable>.eCapLevel,
	beq	.L880	@,
.L861:
	mov	r6, r3	@ ImgHeight.2651, ImgHeight
	mov	r7, r1	@ ImgWidth.2650, ImgWidth
	mov	r8, #5	@ prephitmp.2636,
	mov	r5, #3	@ DecFsNum,
	mov	r9, #2	@ PmvBlkNum,
.L868:
	add	sl, sp, #8	@ tmp245,,
	mov	r1, #36	@,
	mov	r0, sl	@, tmp245
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r3, #0	@ tmp221,
	ldr	r1, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r7, [sp, #36]	@ ImgWidth.2650, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #9]	@ tmp221, FspInstCfg.s32TfEnable
	strb	r1, [sp, #8]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, sl	@, tmp245
	strb	r3, [sp, #10]	@ tmp221, FspInstCfg.s32RprEnable
	str	r7, [sp, #20]	@ ImgWidth.2650, FspInstCfg.s32DecFsWidth
	mov	r7, #0	@ tmp232,
	str	r6, [sp, #40]	@ ImgHeight.2651, FspInstCfg.s32DispFsHeight
	str	r6, [sp, #24]	@ ImgHeight.2651, FspInstCfg.s32DecFsHeight
	ldr	r6, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r8, [sp, #15]	@ prephitmp.2636, FspInstCfg.s32ExpectedDispFsNum
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #:lower16:113720	@ tmp234,
	uxtbne	r3, r5	@ iftmp.453, DecFsNum
	strb	r3, [sp, #13]	@ iftmp.453, FspInstCfg.s32ExpectedDecFsNum
	ldr	r2, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r6, #:upper16:113720	@ tmp234,
	cmp	r2, #24	@ <variable>.eCapLevel,
	uxtbne	r9, r9	@ iftmp.454, PmvBlkNum
	moveq	r9, #1	@ iftmp.454,
	strb	r9, [sp, #16]	@ iftmp.454, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [sp, #12]	@ tmp232, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.34963,
	bne	.L878	@,
	ldr	lr, [r4, #0]	@ temp.2667, <variable>.pstExtraData
	add	r3, sp, #44	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L881	@,
.L865:
	mov	r0, #1	@ D.34907,
	b	.L859	@
.L857:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34907,
.L859:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L860:
	ldr	r0, [r2, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	bne	.L861	@,
	ldr	ip, [r2, #568]	@ temp.2655, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ ImgWidth, temp.2655
	ldrhi	lr, [r2, #572]	@ prephitmp.2638, <variable>.stChanOption.s32MaxHeight
	bhi	.L870	@,
	ldr	lr, [r2, #572]	@ prephitmp.2638, <variable>.stChanOption.s32MaxHeight
	cmp	r3, lr	@ ImgHeight, prephitmp.2638
	bhi	.L870	@,
	ldr	lr, [r2, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r5, [r2, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	lr, #0	@ <variable>.stChanOption.s32SupportBFrame,
	bne	.L882	@,
.L873:
	ldrb	r8, [r2, #616]	@ zero_extendqisi2	@ prephitmp.2636, <variable>.stChanOption.s32DisplayFrameNum
	mov	r6, r3	@ ImgHeight.2651, ImgHeight
	mov	r7, r1	@ ImgWidth.2650, ImgWidth
	b	.L868	@
.L878:
	mov	r0, r7	@, tmp232
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.34907, tmp232
	b	.L859	@
.L880:
	ldr	ip, [r2, #568]	@ D.34918, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ ImgWidth, D.34918
	mov	r7, ip	@ ImgWidth.2650, D.34918
	ldrhi	r5, [r2, #572]	@ prephitmp.2668, <variable>.stChanOption.s32MaxHeight
	bhi	.L863	@,
	ldr	r6, [r2, #572]	@ ImgHeight.2651, <variable>.stChanOption.s32MaxHeight
	cmp	r3, r6	@ ImgHeight, ImgHeight.2651
	mov	r5, r6	@ prephitmp.2668, ImgHeight.2651
	bhi	.L863	@,
	movw	r3, #:lower16:78272	@ tmp208,
	movt	r3, #:upper16:78272	@ tmp208,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	r1, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L865	@,
	ldr	sl, [r2, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r5, [r2, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	sl, #0	@ <variable>.stChanOption.s32SupportBFrame,
	beq	.L867	@,
	add	r9, r5, #1	@ PmvBlkNum.2653, DecFsNum,
	cmp	r9, #17	@ PmvBlkNum.2653,
	movcs	r9, #17	@ PmvBlkNum,
.L867:
	ldrb	r8, [r2, #616]	@ zero_extendqisi2	@ prephitmp.2636, <variable>.stChanOption.s32DisplayFrameNum
	b	.L868	@
.L881:
	mov	r0, r5	@, D.34963
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34907, D.34963
	b	.L859	@
.L870:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34907,
	b	.L859	@
.L882:
	add	r9, r5, #1	@ PmvBlkNum.2658, DecFsNum,
	cmp	r9, #17	@ PmvBlkNum.2658,
	movcs	r9, #17	@ PmvBlkNum,
	b	.L873	@
.L863:
	mov	r2, r1	@, ImgWidth
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	ip, [sp, #0]	@ D.34918,
	str	r5, [sp, #4]	@ prephitmp.2668,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34907,
	b	.L859	@
	.fnend
	.size	VC1_ArrangeVahbMem, .-VC1_ArrangeVahbMem
	.align	2
	.global	VC1_SetImgFormat
	.type	VC1_SetImgFormat, %function
VC1_SetImgFormat:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r2, #:lower16:113720	@ tmp144,
	movw	r3, #:lower16:100908	@ tmp146,
	movt	r2, #:upper16:113720	@ tmp144,
	movt	r3, #:upper16:100908	@ tmp146,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	ldr	r1, [r5, r3]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:78275	@ tmp149,
	movt	r0, #:upper16:78275	@ tmp149,
	mov	r1, #1	@ tmp148,
	str	r1, [r4, #300]	@ tmp148, <variable>.ImageDnr.video_standard
	ldrsb	r3, [r5, r0]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	movne	r3, #0	@ tmp158,
	strneb	r3, [r4, #288]	@ tmp158, <variable>.ImageDnr.pic_structure
	movne	r3, #7168	@ tmp160,
	beq	.L892	@,
.L891:
	movw	r0, #:lower16:100852	@ tmp161,
	movt	r0, #:upper16:100852	@ tmp161,
	str	r3, [r4, #140]	@ tmp160, <variable>.format
	movw	r3, #:lower16:100848	@ tmp163,
	ldr	r2, [r5, r0]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	movt	r3, #:upper16:100848	@ tmp163,
	mov	r1, #0	@,
	mov	r0, r4	@, pImg
	str	r2, [r4, #148]	@ <variable>.CodecInfo.DispPicHeight, <variable>.image_height
	ldr	lr, [r5, r3]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	str	lr, [r4, #144]	@ <variable>.CodecInfo.DispPicWidth, <variable>.image_width
	bl	SetAspectRatio	@
	ldr	ip, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r1, #25	@ <variable>.eCapLevel,
	beq	.L893	@,
.L889:
	movw	r3, #:lower16:100852	@ tmp182,
	movt	r3, #:upper16:100852	@ tmp182,
	movw	ip, #:lower16:100848	@ tmp184,
	movt	ip, #:upper16:100848	@ tmp184,
	ldr	r0, [r5, r3]	@ <variable>.CodecInfo.DispPicHeight, <variable>.CodecInfo.DispPicHeight
	mov	r1, #1	@ tmp186,
	mov	r3, #8	@ tmp188,
	str	r0, [r4, #156]	@ <variable>.CodecInfo.DispPicHeight, <variable>.disp_height
	ldr	r2, [r5, ip]	@ <variable>.CodecInfo.DispPicWidth, <variable>.CodecInfo.DispPicWidth
	strb	r1, [r4, #293]	@ tmp186, <variable>.ImageDnr.chroma_format_idc
	str	r3, [r4, #308]	@ tmp188, <variable>.ImageDnr.QP_U
	str	r2, [r4, #152]	@ <variable>.CodecInfo.DispPicWidth, <variable>.disp_width
	strb	r1, [r4, #295]	@ tmp186, <variable>.ImageDnr.use_pic_qp_en
	str	r3, [r4, #304]	@ tmp188, <variable>.ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp188, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L892:
	mov	r0, #4	@ tmp151,
	ldr	r2, [r4, #140]	@ <variable>.format, <variable>.format
	strb	r0, [r4, #288]	@ tmp151, <variable>.ImageDnr.pic_structure
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.Vc1DecParam.curparity, <variable>.Vc1DecParam.curparity
	ubfx	lr, r2, #10, #2	@ fldflg, <variable>.format,,
	add	ip, r3, #1	@ tmp156, <variable>.Vc1DecParam.curparity,
	orr	r3, ip, lr	@ fldflg.2697, tmp156, fldflg
	cmp	r3, #3	@ fldflg.2697,
	movls	r3, r3, asl #10	@ tmp157, fldflg.2697,
	movhi	r3, #4352	@ prephitmp.2686,
	orrls	r3, r3, #4352	@ prephitmp.2686, tmp157,
	b	.L891	@
.L893:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.34655, <variable>.image_stride
	add	ip, r0, #15	@ tmp168, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, ip, lsr #4	@ tmp170, tmp168,
	mov	ip, r2, asl #5	@ tmp167, D.34655,
	add	r1, lr, #1	@ tmp171, tmp170,
	add	lr, r3, r2	@ tmp177, <variable>.luma_phy_addr, D.34655
	str	lr, [r4, #96]	@ tmp177, <variable>.btm_luma_phy_addr
	mov	r1, r1, lsr #1	@ tmp172, tmp171,
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	lr, r1, ip	@ D.34663, tmp172, tmp167
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, lr, r3	@ tmp174, D.34663, <variable>.luma_phy_addr
	add	r1, r0, lr	@ tmp176, <variable>.luma_vir_addr, D.34663
	str	ip, [r4, #108]	@ tmp174, <variable>.chrom_phy_addr
	add	lr, ip, r2	@ tmp178, tmp174, D.34655
	str	r1, [r4, #36]	@ tmp176, <variable>.chrom_vir_addr
	mov	r0, ip	@, tmp174
	str	lr, [r4, #100]	@ tmp178, <variable>.btm_chrom_phy_addr
	str	ip, [r4, #92]	@ tmp174, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L889	@
	.fnend
	.size	VC1_SetImgFormat, .-VC1_SetImgFormat
	.align	2
	.type	VC1_FlushFrameToVo, %function
VC1_FlushFrameToVo:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r1	@ FsID, FsID
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #1	@ <variable>.s32DecOrderOutput,
	bne	.L901	@,
.L895:
	mov	r0, #1	@ ret,
.L897:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L901:
	movw	r5, #:lower16:113720	@ tmp142,
	movt	r5, #:upper16:113720	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L900	@,
	mov	r1, r7	@, FsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	bne	.L895	@,
	mov	r0, r4	@, pCtx
	mov	r7, #0	@ tmp146,
	bl	VC1_SetImgFormat	@
	str	r7, [r6, #192]	@ tmp146, <variable>.p_usrdat
	str	r7, [r6, #196]	@ tmp146, <variable>.p_usrdat
	mov	r2, #1	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #176]	@, <variable>.image_id
	bl	FSP_SetDisplay	@
	add	r2, r4, #112640	@, pCtx,
	ldr	r0, [r4, r5]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #728	@,,
	mov	r1, #1	@,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r7	@ ret, tmp146
	beq	.L897	@,
	ldr	r1, [r6, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp146, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp146, <variable>.p_usrdat
.L900:
	mvn	r0, #0	@ ret,
	b	.L897	@
	.fnend
	.size	VC1_FlushFrameToVo, .-VC1_FlushFrameToVo
	.align	2
	.global	VC1_Vfmw_GetStreamInfo
	.type	VC1_Vfmw_GetStreamInfo, %function
VC1_Vfmw_GetStreamInfo:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:81368	@ tmp204,
	movt	r1, #:upper16:81368	@ tmp204,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	movw	r2, #:lower16:100832	@ tmp203,
	movt	r2, #:upper16:100832	@ tmp203,
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r5, [r0, r2]	@ MbWidth, <variable>.CodecInfo.MbWidth
	beq	.L903	@,
	movw	r7, #:lower16:89016	@ tmp206,
	movt	r7, #:upper16:89016	@ tmp206,
	ldr	r6, [r0, r7]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L985	@,
	movw	r7, #:lower16:100836	@ tmp774,
	movt	r7, #:upper16:100836	@ tmp774,
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	mul	r8, r8, r5	@ TotalMbNum, <variable>.CodecInfo.MbHeight, MbWidth
.L905:
	movw	r3, #:lower16:81604	@ tmp219,
	movt	r3, #:upper16:81604	@ tmp219,
	movw	r2, #:lower16:81606	@ tmp216,
	movt	r2, #:upper16:81606	@ tmp216,
	ldrh	lr, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	movw	r3, #8160	@ tmp224,
	ldrh	r1, [r4, r2]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	add	r6, lr, #15	@ tmp221, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH,
	add	ip, r1, #15	@ tmp218, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT,
	mov	r6, r6, asr #4	@ MEM_WIDTH_MB, tmp221,
	mov	r7, ip, asr #4	@ MEM_HEIGHT_MB, tmp218,
	sub	ip, r6, #-268435454	@ tmp222, MEM_WIDTH_MB,
	cmp	r3, ip, asl #4	@ tmp224, tmp222,
	movcc	r3, r7, asl #4	@ prephitmp.2768, MEM_HEIGHT_MB,
	bcs	.L986	@,
.L908:
	mov	r2, r6, asl #4	@, MEM_WIDTH_MB,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35448,
.L910:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L903:
	movw	r7, #:lower16:100836	@ tmp215,
	movt	r7, #:upper16:100836	@ tmp215,
	mov	r6, r5	@ MEM_WIDTH_MB, MbWidth
	sub	ip, r6, #-268435454	@ tmp222, MEM_WIDTH_MB,
	ldr	r1, [r0, r7]	@ MbHeight.2803, <variable>.CodecInfo.MbHeight
	movw	r3, #8160	@ tmp224,
	cmp	r3, ip, asl #4	@ tmp224, tmp222,
	mov	r7, r1	@ MEM_HEIGHT_MB, MbHeight.2803
	mul	r8, r5, r1	@ TotalMbNum, MbWidth, MbHeight.2803
	movcc	r3, r7, asl #4	@ prephitmp.2768, MEM_HEIGHT_MB,
	bcc	.L908	@,
.L986:
	mov	r3, r7, asl #4	@ prephitmp.2768, MEM_HEIGHT_MB,
	cmp	r3, #31	@ prephitmp.2768,
	ble	.L908	@,
	cmp	r3, #8192	@ prephitmp.2768,
	bgt	.L908	@,
	movw	r1, #:lower16:100844	@ tmp227,
	movt	r1, #:upper16:100844	@ tmp227,
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	cmp	lr, r7	@ <variable>.CodecInfo.MbHeightLast, MEM_HEIGHT_MB
	beq	.L987	@,
.L911:
	movw	ip, #:lower16:100832	@ tmp237,
	movt	ip, #:upper16:100832	@ tmp237,
	movw	r0, #:lower16:100836	@ tmp234,
	movt	r0, #:upper16:100836	@ tmp234,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	r2, #:lower16:100844	@ tmp233,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	movt	r2, #:upper16:100844	@ tmp233,
	movw	r3, #:lower16:100840	@ tmp236,
	movt	r3, #:upper16:100840	@ tmp236,
	mov	ip, r1	@ MbWidth.2804, <variable>.CodecInfo.MbWidth
	mov	r0, #1	@ SizeChanged,
	str	lr, [r4, r2]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeightLast
	str	r1, [r4, r3]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidthLast
.L912:
	movw	r1, #:lower16:78280	@ tmp244,
	movt	r1, #:upper16:78280	@ tmp244,
	mov	ip, ip, asl #4	@ tmp241, MbWidth.2804,
	movw	r3, #:lower16:100856	@ tmp240,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r3, #:upper16:100856	@ tmp240,
	add	r2, ip, #63	@ tmp242, tmp241,
	cmp	lr, #0	@ <variable>.CodecInfo.Is2ndFld,
	bic	r1, r2, #63	@ tmp243, tmp242,
	str	r1, [r4, r3]	@ tmp243, <variable>.CodecInfo.DDR_Stride
	bne	.L988	@,
.L913:
	movw	lr, #:lower16:78272	@ tmp250,
	movt	lr, #:upper16:78272	@ tmp250,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	eor	r3, r2, #8	@ tmp253, <variable>.CodecInfo.CodecStatus,
	ubfx	r1, r3, #3, #1	@ tmp255, tmp253,,
	orrs	r3, r0, r1	@, SizeChanged, tmp255
	ldrne	r3, [r4, #0]	@ prephitmp.2782, <variable>.pstExtraData
	beq	.L989	@,
.L916:
	ldr	sl, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	sl, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L990	@,
.L918:
	movw	ip, #:lower16:100816	@ tmp308,
	movw	lr, #:lower16:100828	@ tmp309,
	movt	ip, #:upper16:100816	@ tmp308,
	movt	lr, #:upper16:100828	@ tmp309,
	movw	r0, #:lower16:100824	@ tmp310,
	movw	r1, #:lower16:100820	@ tmp311,
	movt	r0, #:upper16:100824	@ tmp310,
	movt	r1, #:upper16:100820	@ tmp311,
	add	r9, r4, #99328	@ D.35511, pVC1_CTX_S,
	movw	fp, #:lower16:100904	@,
	add	r2, r9, #56	@ D.35511, D.35511,
	movt	fp, #:upper16:100904	@,
	str	fp, [sp, #20]	@, %sfp
	mov	fp, #0	@ tmp306,
	str	fp, [r3, #728]	@ tmp306, <variable>.s32DSDWaitFlag
	movw	sl, #:lower16:113720	@ tmp312,
	str	r2, [r4, lr]	@ D.35511, <variable>.CodecInfo.pRef
	movt	sl, #:upper16:113720	@ tmp312,
	str	r2, [r4, r0]	@ D.35511, <variable>.CodecInfo.pRef
	str	r2, [r4, ip]	@ D.35511, <variable>.CodecInfo.pCurFrm
	str	r2, [r4, r1]	@ D.35511, <variable>.CodecInfo.pRef
	ldr	r9, [sp, #20]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L923	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	movw	lr, #:lower16:100900	@ tmp338,
	ldr	r1, [r9, #192]	@, <variable>.p_usrdat
	movt	lr, #:upper16:100900	@ tmp338,
	str	lr, [sp, #16]	@,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #196]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r9, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	fp, [r9, #204]	@ tmp306, <variable>.p_usrdat
	str	fp, [r9, #192]	@ tmp306, <variable>.p_usrdat
	mov	r2, #1	@,
	str	fp, [r9, #196]	@ tmp306, <variable>.p_usrdat
	str	fp, [r9, #200]	@ tmp306, <variable>.p_usrdat
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [sp, #16]	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	str	fp, [r4, r2]	@ tmp306, <variable>.CodecInfo.BwdFsID
	ldr	r1, [sp, #16]	@,
	str	fp, [r4, r1]	@ tmp306, <variable>.CodecInfo.FwdFsID
	str	r1, [sp, #16]	@,
	bl	FSP_GetNullLogicFs	@
	ldr	r3, [sp, #16]	@,
	str	r0, [r4, r3]	@ D.35522, <variable>.CodecInfo.FwdFsID
	ldr	sl, [sp, #20]	@, %sfp
	str	r0, [r4, sl]	@ D.35522, <variable>.CodecInfo.BwdFsID
.L923:
	add	sl, r4, #112640	@ D.35523, pVC1_CTX_S,
	movw	r2, #:lower16:100896	@ tmp348,
	add	sl, sl, #728	@ D.35523, D.35523,
	movt	r2, #:upper16:100896	@ tmp348,
	movw	ip, #:lower16:113720	@ tmp351,
	movt	ip, #:upper16:113720	@ tmp351,
	mov	r1, #0	@ tmp349,
	str	r1, [r4, r2]	@ tmp349, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, sl	@, D.35523
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2828, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L924	@,
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L991	@,
.L924:
	movw	ip, #:lower16:113720	@ tmp358,
	movt	ip, #:upper16:113720	@ tmp358,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L925	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L992	@,
.L926:
	mov	r0, sl	@, D.35523
	bl	ResetVoQueue	@
.L925:
	add	r7, r7, #1	@ tmp365, MEM_HEIGHT_MB,
	mov	r1, r6, asl #4	@, MEM_WIDTH_MB,
	mov	r0, r4	@, pVC1_CTX_S
	mov	r3, #2	@,
	add	r7, r7, r7, lsr #31	@, tmp368, tmp365, tmp365,
	mov	ip, r7, asr #1	@ tmp369, tmp368,
	mov	r2, ip, asl #5	@, tmp369,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L927	@,
	movw	r0, #:lower16:78272	@ tmp371,
	movt	r0, #:upper16:78272	@ tmp371,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	orr	r6, r1, #8	@ tmp375, <variable>.CodecInfo.CodecStatus,
	strb	r6, [r4, r0]	@ tmp375, <variable>.CodecInfo.CodecStatus
	b	.L917	@
.L988:
	movw	r2, #:lower16:78275	@ tmp246,
	movt	r2, #:upper16:78275	@ tmp246,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	bne	.L913	@,
	movw	ip, #:lower16:78281	@ tmp248,
	movt	ip, #:upper16:78281	@ tmp248,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	bne	.L914	@,
	b	.L913	@
.L985:
	movw	r3, #:lower16:100836	@ tmp208,
	movt	r3, #:upper16:100836	@ tmp208,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	add	lr, r2, #1	@ tmp209, <variable>.CodecInfo.MbHeight,
	add	ip, lr, lr, lsr #31	@, tmp213, tmp209, tmp209,
	mov	r8, ip, asr #1	@ tmp214, tmp213,
	mul	r8, r5, r8	@ TotalMbNum, MbWidth, tmp214
	b	.L905	@
.L989:
	ldr	r3, [r4, #0]	@ prephitmp.2782, <variable>.pstExtraData
	ldr	r0, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r0, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L916	@,
.L917:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	subs	r6, r0, #0	@ D.35552,
	beq	.L993	@,
	movw	r6, #:lower16:113720	@ tmp385,
	movw	lr, #:lower16:100908	@ tmp387,
	movt	r6, #:upper16:113720	@ tmp385,
	movt	lr, #:upper16:100908	@ tmp387,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L929	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r1, #:lower16:.LC31	@,
	mov	r0, #29	@,
	movt	r1, #:upper16:.LC31	@,
	ldrd	r6, [lr, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r6, [r3, #8]	@ <variable>.pts, pImg,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r6, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r6, [r3, #16]	@ <variable>.Usertag, pImg,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r6, [r2, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r6, [r3, #24]	@ <variable>.DispTime, pImg,
	mvn	r6, #0	@ tmp404,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mvn	r7, #0	@,
	ldr	ip, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r3, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r3, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	ip, [r3, #80]	@ <variable>.GopNum, <variable>.GopNum
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r6, [r2, #56]	@ tmp404, <variable>.pstExtraData,
	ldrd	r6, [r3, #16]	@ <variable>.Usertag, pImg,
	ldrd	r2, [r3, #8]	@ <variable>.PTS, pImg,
	strd	r6, [sp]	@ <variable>.Usertag,
	bl	dprint_vfmw	@
.L929:
	movw	r1, #:lower16:81368	@ tmp408,
	movt	r1, #:upper16:81368	@ tmp408,
	ldrsb	r0, [r4, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L930	@,
	movw	r2, #:lower16:89016	@ tmp410,
	movt	r2, #:upper16:89016	@ tmp410,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r3, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L994	@,
.L930:
	movw	r3, #:lower16:100816	@ tmp418,
	movt	r3, #:upper16:100816	@ tmp418,
	mov	r0, #0	@ tmp419,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r0, [r1, #1160]	@ tmp419, <variable>.img.is_fld_save
.L931:
	movw	r3, #:lower16:100816	@ tmp421,
	movt	r3, #:upper16:100816	@ tmp421,
	movw	ip, #:lower16:81368	@ tmp424,
	movt	ip, #:upper16:81368	@ tmp424,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r6, #0	@ tmp422,
	strb	r6, [lr, #2]	@ tmp422, <variable>.RANGEREDFRM
	ldrsb	r2, [r4, ip]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, r6	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L932	@,
	movw	r1, #:lower16:88636	@ tmp426,
	movt	r1, #:upper16:88636	@ tmp426,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r0, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	movweq	r0, #:lower16:88874	@ tmp430,
	movteq	r0, #:upper16:88874	@ tmp430,
	ldreq	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldreqb	r0, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	streqb	r0, [r3, #2]	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.RANGEREDFRM
.L932:
	movw	r3, #:lower16:78274	@ tmp433,
	movt	r3, #:upper16:78274	@ tmp433,
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ D.35582, <variable>.CodecInfo.PicCodingType
	cmp	r6, #5	@ D.35582,
	cmpne	r6, #1	@, D.35582,
	movhi	r6, #0	@, tmp440
	movls	r6, #1	@, tmp440
	bhi	.L933	@,
	movw	lr, #:lower16:100896	@ tmp441,
	movt	lr, #:upper16:100896	@ tmp441,
	movw	r7, #:lower16:100900	@ tmp444,
	movw	r6, #:lower16:100904	@ tmp445,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r7, #:upper16:100900	@ tmp444,
	movt	r6, #:upper16:100904	@ tmp445,
	cmp	ip, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r7]	@ prephitmp.2780, <variable>.CodecInfo.FwdFsID
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	ip, #2	@ iftmp.478,
	moveq	ip, #1	@ iftmp.478,
	cmp	r2, sl	@ prephitmp.2780, <variable>.CodecInfo.BwdFsID
	str	ip, [r4, lr]	@ iftmp.478, <variable>.CodecInfo.RefNum
	beq	.L936	@,
	mov	r0, #13	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:113720	@ tmp448,
	movt	r3, #:upper16:113720	@ tmp448,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r6]	@ prephitmp.2780, <variable>.CodecInfo.BwdFsID
.L936:
	movw	ip, #:lower16:100908	@ tmp455,
	movt	ip, #:upper16:100908	@ tmp455,
	movw	r6, #:lower16:100900	@ tmp453,
	movw	r0, #:lower16:100904	@ tmp454,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r6, #:upper16:100900	@ tmp453,
	movt	r0, #:upper16:100904	@ tmp454,
	movw	sl, #:lower16:113720	@ tmp457,
	movt	sl, #:upper16:113720	@ tmp457,
	str	r2, [r4, r6]	@ prephitmp.2780, <variable>.CodecInfo.FwdFsID
	str	r1, [r4, r0]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r2, #:lower16:78274	@ tmp465,
	movt	r2, #:upper16:78274	@ tmp465,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ D.35600, <variable>.CodecInfo.PicCodingType
	cmp	r7, #5	@ D.35600,
	cmpne	r7, #1	@, D.35600,
	bhi	.L938	@,
	movw	r3, #:lower16:100824	@ tmp489,
	movt	r3, #:upper16:100824	@ tmp489,
	movw	r2, #:lower16:100816	@ tmp493,
	movt	r2, #:upper16:100816	@ tmp493,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r1, #0	@ tmp490,
	movw	r6, #:lower16:100820	@ tmp497,
	movt	r6, #:upper16:100820	@ tmp497,
	mov	ip, #1	@ tmp494,
	strb	r1, [lr, #0]	@ tmp490, <variable>.is_to_ref
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #0]	@ tmp494, <variable>.is_to_ref
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	sl, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r7, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
.L938:
	movw	sl, #:lower16:113720	@ tmp502,
	movw	r6, #:lower16:100908	@ tmp504,
	movt	sl, #:upper16:113720	@ tmp502,
	movt	r6, #:upper16:100908	@ tmp504,
	movw	r7, #:lower16:100900	@ tmp508,
	movt	r7, #:upper16:100900	@ tmp508,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #:lower16:100904	@ tmp512,
	movt	r3, #:upper16:100904	@ tmp512,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	mov	r7, r0	@ pFwd,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r7, #0	@, pFwd,
	mov	sl, r0	@ pBwd,
	beq	.L939	@,
	cmp	r0, #0	@ pBwd,
	beq	.L939	@,
	movw	r1, #:lower16:81368	@ tmp540,
	movt	r1, #:upper16:81368	@ tmp540,
	ldrsb	r0, [r4, r1]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L942	@,
	movw	lr, #:lower16:89016	@ tmp542,
	movt	lr, #:upper16:89016	@ tmp542,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r3, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	bne	.L942	@,
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp544,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp544,
	ldr	r3, [ip, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L978	@,
.L942:
	mov	r3, #0	@ tmp547,
.L978:
	movw	r0, #:lower16:78274	@ tmp548,
	movt	r0, #:upper16:78274	@ tmp548,
	str	r3, [r6, #136]	@ tmp547, <variable>.stDispImg.is_fld_save
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r2, #5	@ <variable>.CodecInfo.PicCodingType,
	beq	.L995	@,
.L944:
	ldr	r3, [r6, #408]	@ D.35637, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.35637,
	beq	.L945	@,
	ldr	r2, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	r2, #0	@ <variable>.pstTfOutFs,
	beq	.L945	@,
	ldr	r0, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r0, #0	@ <variable>.pstDispOutFs,
	beq	.L945	@,
	ldr	ip, [sl, #408]	@ D.35648, <variable>.pstDecodeFs
	movw	r1, #12400	@ tmp590,
	movw	r9, #:lower16:78048	@ tmp593,
	movt	r9, #:upper16:78048	@ tmp593,
	cmp	ip, #0	@ D.35648,
	ldreq	ip, [r3, #12]	@ iftmp.482, <variable>.PhyAddr
	ldrne	ip, [ip, #12]	@ iftmp.482, <variable>.PhyAddr
	str	ip, [r4, r1]	@ iftmp.482, <variable>.Vc1DecParam.BwdRefAddr
	movw	ip, #12404	@ tmp596,
	ldr	r2, [r7, #408]	@ D.35655, <variable>.pstDecodeFs
	movw	r7, #12396	@ tmp592,
	movw	r1, #:lower16:100816	@ tmp609,
	movt	r1, #:upper16:100816	@ tmp609,
	cmp	r2, #0	@ D.35655,
	ldreq	r2, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	lr, [r2, #12]	@ iftmp.483, <variable>.PhyAddr
	str	lr, [r4, r7]	@ iftmp.483, <variable>.Vc1DecParam.FwdRefAddr
	movw	lr, #:lower16:78008	@ tmp603,
	ldr	r3, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movt	lr, #:upper16:78008	@ tmp603,
	ldr	r0, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:78012	@ tmp606,
	movt	r3, #:upper16:78012	@ tmp606,
	str	r0, [r4, r9]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.ystaddr_1d
	ldr	r2, [r6, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r9, [r4, r1]	@ temp.2885, <variable>.CodecInfo.pCurFrm
	movw	r1, #12408	@ tmp598,
	str	r2, [r4, ip]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.CurrColmbAddr
	movw	r2, #12392	@ tmp600,
	ldr	r0, [sl, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r0, [r4, r1]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.BwdColmbAddr
	ldr	ip, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	r1, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r1, #20]	@ <variable>.Stride, <variable>.Stride
	str	ip, [r4, lr]	@ <variable>.Stride, <variable>.Vc1DecParam.VahbStride
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [r2, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r0, [r4, r3]	@ <variable>.ChromOffset, <variable>.Vc1DecParam.uv_offset
	ldr	lr, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [lr, #12]	@, <variable>.PhyAddr
	bl	MEM_Phy2Vir	@
	movw	r1, #:lower16:100824	@ tmp612,
	movt	r1, #:upper16:100824	@ tmp612,
	str	r0, [r9, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r7]	@, <variable>.Vc1DecParam.FwdRefAddr
	ldr	r6, [r4, r1]	@ temp.2888, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	movw	r3, #:lower16:100820	@ tmp615,
	movt	r3, #:upper16:100820	@ tmp615,
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
	movw	r6, #12400	@ tmp616,
	ldr	r0, [r4, r6]	@, <variable>.Vc1DecParam.BwdRefAddr
	ldr	r6, [r4, r3]	@ temp.2889, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
.L914:
	movw	r0, #:lower16:81368	@ tmp618,
	movt	r0, #:upper16:81368	@ tmp618,
	ldrsb	r2, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L952	@,
	movw	r3, #:lower16:100816	@ tmp621,
	movt	r3, #:upper16:100816	@ tmp621,
	movw	r0, #:lower16:88875	@ tmp626,
	movt	r0, #:upper16:88875	@ tmp626,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	lr, #:lower16:88883	@ tmp630,
	movt	lr, #:upper16:88883	@ tmp630,
	strb	r2, [r5, #1027]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.PicStruct
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r1, #1028]	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ D.35688, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	ldr	ip, [r4, r3]	@ temp.2913, <variable>.CodecInfo.pCurFrm
	sub	r6, r1, #2	@ tmp631, D.35688,
	uxtb	r5, r6	@ tmp632, tmp631
	cmp	r5, #1	@ tmp632,
	movls	r2, #1	@ prephitmp.2931,
	bls	.L954	@,
	cmp	r1, #4	@ D.35688,
	beq	.L996	@,
.L954:
	movw	r6, #:lower16:100916	@ tmp641,
	movw	r3, #:lower16:100928	@ tmp643,
	movt	r6, #:upper16:100916	@ tmp641,
	movt	r3, #:upper16:100928	@ tmp643,
	movw	r5, #:lower16:81400	@ tmp647,
	movt	r5, #:upper16:81400	@ tmp647,
	movw	lr, #:lower16:113212	@ tmp646,
	movt	lr, #:upper16:113212	@ tmp646,
	strb	r2, [ip, #1029]	@ prephitmp.2931, <variable>.IsHalfPel
	mov	r0, #0	@ tmp644,
	strb	r2, [ip, #1030]	@ prephitmp.2931, <variable>.IsHalfPel
	mov	ip, #1	@ tmp642,
	str	ip, [r4, r6]	@ tmp642, <variable>.CodecInfo.SlcNum
	strb	r0, [r4, r3]	@ tmp644, <variable>.SlcNo
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, lr]	@ D.35696, <variable>.CodecInfo.stCurPacket.BsVirAddr
	bl	BsPos	@
	movw	r2, #:lower16:100920	@ tmp649,
	movt	r2, #:upper16:100920	@ tmp649,
	movw	ip, #:lower16:113224	@ tmp655,
	movt	ip, #:upper16:113224	@ tmp655,
	add	r1, r0, #7	@ tmp652, D.35698,
	cmp	r0, #0	@ D.35698,
	movlt	r0, r1	@ D.35698, tmp652
	add	r3, r6, r0, asr #3	@, tmp654, D.35696, D.35698,
	str	r3, [r4, r2]	@ tmp654, <variable>.pStream
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, ip]	@ D.35702, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	bl	BsPos	@
	movw	r3, #:lower16:100932	@ tmp658,
	movt	r3, #:upper16:100932	@ tmp658,
	add	r1, r0, #7	@ tmp661, D.35703,
	cmp	r0, #0	@ D.35703,
	movlt	r0, r1	@ D.35703, tmp661
	add	r6, r6, r0, asr #3	@, tmp663, D.35702, D.35703,
	str	r6, [r4, r3]	@ tmp663, <variable>.Phy_addr
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	bl	BsPos	@
	movw	r2, #:lower16:100936	@ tmp666,
	movw	r1, #:lower16:113232	@ tmp668,
	movt	r2, #:upper16:100936	@ tmp666,
	movt	r1, #:upper16:113232	@ tmp668,
	and	ip, r0, #7	@ tmp667,,
	str	ip, [r4, r2]	@ tmp667, <variable>.BitOffset
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.stCurPacket.BsLength, <variable>.CodecInfo.stCurPacket.BsLength
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	mov	r5, r3, asl #3	@ D.35710, <variable>.CodecInfo.stCurPacket.BsLength,
	bl	BsPos	@
	movw	lr, #:lower16:100940	@ tmp672,
	movw	ip, #:lower16:113276	@ tmp675,
	movt	lr, #:upper16:100940	@ tmp672,
	movt	ip, #:upper16:113276	@ tmp675,
	movw	r1, #:lower16:113272	@ tmp676,
	movt	r1, #:upper16:113272	@ tmp676,
	movw	r2, #:lower16:100944	@ tmp674,
	movw	r3, #:lower16:78274	@ tmp681,
	movt	r2, #:upper16:100944	@ tmp674,
	movt	r3, #:upper16:78274	@ tmp681,
	rsb	r0, r0, r5	@ tmp673,, D.35710
	str	r0, [r4, lr]	@ tmp673, <variable>.Len
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	mul	ip, r5, r0	@ tmp677, <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbHeight
	sub	r1, ip, #1	@ tmp680, tmp677,
	str	r1, [r4, r2]	@ tmp680, <variable>.SlcEndMbn
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2928, <variable>.CodecInfo.PicCodingType
.L956:
	add	r2, r4, #77824	@, pVC1_CTX_S,
	mov	r3, #1	@,
	add	r0, r2, #448	@,,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r5, r0, #0	@ D.35768,
	movne	r0, #1	@ D.35448,
	bne	.L910	@,
	movw	r1, #:lower16:113720	@ tmp760,
	movw	lr, #:lower16:100908	@ tmp762,
	movt	r1, #:upper16:113720	@ tmp760,
	movt	lr, #:upper16:100908	@ tmp762,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:100816	@ tmp765,
	movt	ip, #:upper16:100816	@ tmp765,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r2, #0]	@ D.35768, <variable>.is_to_ref
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r3, #1]	@ D.35768, <variable>.is_to_display
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35448, D.35768
	b	.L910	@
.L987:
	movw	r2, #:lower16:100840	@ tmp229,
	movt	r2, #:upper16:100840	@ tmp229,
	ldr	r3, [r4, r2]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	cmp	r3, r6	@ <variable>.CodecInfo.MbWidthLast, MEM_WIDTH_MB
	bne	.L911	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [lr, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	ip, #1	@ <variable>.s32DSDWaitFlag,
	movne	ip, r5	@ MbWidth.2804, MbWidth
	movne	r0, #0	@ SizeChanged,
	bne	.L912	@,
	b	.L911	@
.L993:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35448, D.35552
	b	.L910	@
.L933:
	movw	lr, #:lower16:100896	@ tmp473,
	movt	lr, #:upper16:100896	@ tmp473,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r1, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L938	@,
	movw	r1, #:lower16:113720	@ tmp475,
	movw	lr, #:lower16:100908	@ tmp477,
	movt	r1, #:upper16:113720	@ tmp475,
	movt	lr, #:upper16:100908	@ tmp477,
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:100816	@ tmp480,
	movt	ip, #:upper16:100816	@ tmp480,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r2, #0]	@ tmp440, <variable>.is_to_ref
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r3, #1]	@ tmp440, <variable>.is_to_display
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35448, tmp440
	b	.L910	@
.L927:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:78272	@ tmp378,
	movt	r3, #:upper16:78272	@ tmp378,
	mov	r0, #0	@ D.35448,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	bic	r2, ip, #8	@ tmp382, <variable>.CodecInfo.CodecStatus,
	strb	r2, [r4, r3]	@ tmp382, <variable>.CodecInfo.CodecStatus
	b	.L910	@
.L992:
	movw	lr, #:lower16:113724	@ tmp362,
	movt	lr, #:upper16:113724	@ tmp362,
	ldr	r3, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r3, #1	@ <variable>.DSDNeedClearQue,
	bne	.L925	@,
	b	.L926	@
.L995:
	ldr	ip, [r7, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movw	r1, #:lower16:100824	@ tmp554,
	movt	r1, #:upper16:100824	@ tmp554,
	movw	lr, #:lower16:100816	@ tmp552,
	movt	lr, #:upper16:100816	@ tmp552,
	movw	r3, #:lower16:113292	@ tmp556,
	str	ip, [r6, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movt	r3, #:upper16:113292	@ tmp556,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r2, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	ip, [r0, #1160]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	str	ip, [r2, #1160]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.skpic_flag, <variable>.CodecInfo.skpic_flag
	add	r1, lr, #1	@ tmp559, <variable>.CodecInfo.skpic_flag,
	str	r1, [r4, r3]	@ tmp559, <variable>.CodecInfo.skpic_flag
	b	.L944	@
.L994:
	movw	r6, #:lower16:USE_FF_APT_EN	@ tmp412,
	movt	r6, #:upper16:USE_FF_APT_EN	@ tmp412,
	ldr	r3, [r6, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L930	@,
	movw	lr, #:lower16:100816	@ tmp415,
	movt	lr, #:upper16:100816	@ tmp415,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [ip, #1160]	@ USE_FF_APT_EN, <variable>.img.is_fld_save
	b	.L931	@
.L945:
	movw	r7, #:lower16:113720	@ tmp562,
	movw	r5, #:lower16:100908	@ tmp564,
	movt	r7, #:upper16:113720	@ tmp562,
	movt	r5, #:upper16:100908	@ tmp564,
	mov	r2, #1	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r3, #:lower16:100816	@ tmp567,
	movt	r3, #:upper16:100816	@ tmp567,
	mov	lr, #0	@ tmp568,
	movw	ip, #:lower16:100904	@ tmp579,
	movt	ip, #:upper16:100904	@ tmp579,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #:lower16:100900	@ tmp575,
	movt	r2, #:upper16:100900	@ tmp575,
	mov	r0, lr	@, tmp568
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	strb	lr, [r7, #0]	@ tmp568, <variable>.is_to_ref
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	lr, [r3, #1]	@ tmp568, <variable>.is_to_display
	ldr	ip, [r4, ip]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	ldr	r2, [r4, r2]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	ldr	r3, [r4, r5]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	str	ip, [sp, #0]	@ <variable>.CodecInfo.BwdFsID,
	ldr	lr, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	lr, [sp, #4]	@ <variable>.pstDecodeFs,
	ldr	ip, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	str	ip, [sp, #8]	@ <variable>.pstTfOutFs,
	ldr	lr, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	str	lr, [sp, #12]	@ <variable>.pstDispOutFs,
	bl	dprint_vfmw	@
.L984:
	movw	r0, #:lower16:78274	@ tmp584,
	movt	r0, #:upper16:78274	@ tmp584,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r1, #5	@ <variable>.CodecInfo.PicCodingType,
	bne	.L947	@,
	movw	ip, #:lower16:113292	@ tmp586,
	movt	ip, #:upper16:113292	@ tmp586,
	ldr	r2, [r4, ip]	@ temp.2901, <variable>.CodecInfo.skpic_flag
	cmp	r2, #0	@ temp.2901,
	subgt	r2, r2, #1	@ tmp588, temp.2901,
	strgt	r2, [r4, ip]	@ tmp588, <variable>.CodecInfo.skpic_flag
.L947:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35448,
	b	.L910	@
.L990:
	movw	r3, #:lower16:100900	@ tmp266,
	movt	r3, #:upper16:100900	@ tmp266,
	mov	r0, r4	@, pVC1_CTX_S
	mov	ip, #0	@ tmp263,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	str	ip, [sp, #28]	@ tmp263, RefNum
	str	ip, [sp, #36]	@ tmp263, NewNum
	str	ip, [sp, #32]	@ tmp263, ReadNum
	bl	VC1_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L919	@,
	movw	r9, #:lower16:100904	@ tmp268,
	movt	r9, #:upper16:100904	@ tmp268,
	mov	r0, r4	@, pVC1_CTX_S
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	VC1_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L919	@,
	movw	r2, #:lower16:113720	@ tmp270,
	movt	r2, #:upper16:113720	@ tmp270,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:113720	@ tmp275,
	movt	r3, #:upper16:113720	@ tmp275,
	add	r1, sp, #28	@,,
	add	r2, sp, #32	@,,
	cmp	r0, #0	@ pImage
	strne	sl, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	ip, #:lower16:100840	@ tmp280,
	movt	ip, #:upper16:100840	@ tmp280,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	mov	r3, r2	@ prephitmp.2782, <variable>.pstExtraData
	ldr	r1, [r2, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.MbWidthLast,
	blt	.L921	@,
	movw	r1, #:lower16:100844	@ tmp284,
	movt	r1, #:upper16:100844	@ tmp284,
	ldr	lr, [r2, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	add	ip, r0, #1	@ tmp285, <variable>.CodecInfo.MbHeightLast,
	add	r1, ip, ip, lsr #31	@, tmp289, tmp285, tmp285,
	mov	r0, r1, asr #1	@ tmp290, tmp289,
	cmp	lr, r0, asl #5	@ <variable>.s32DSDThrHeight, tmp290,
	blt	.L921	@,
	ldr	ip, [sp, #32]	@ ReadNum, ReadNum
	ldr	r0, [sp, #36]	@ NewNum, NewNum
	add	lr, r0, ip	@ tmp293, NewNum, ReadNum
	cmp	lr, #0	@ tmp293,
	ble	.L918	@,
	movw	r3, #:lower16:113724	@ tmp296,
	movt	r3, #:upper16:113724	@ tmp296,
	mov	r1, #1	@ tmp297,
	mov	r0, #0	@ D.35448,
	str	r1, [r4, r3]	@ tmp297, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp297, <variable>.s32DSDWaitFlag
	b	.L910	@
.L939:
	movw	r2, #:lower16:113720	@ tmp521,
	movw	r5, #:lower16:100908	@ tmp523,
	movt	r2, #:upper16:113720	@ tmp521,
	movt	r5, #:upper16:100908	@ tmp523,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:100816	@ tmp526,
	movt	ip, #:upper16:100816	@ tmp526,
	mov	lr, #0	@ tmp527,
	mov	r0, lr	@, tmp527
	mov	r3, r6	@, pCur
	ldr	r5, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:.LC34	@,
	movw	r2, #2425	@,
	movt	r1, #:upper16:.LC34	@,
	strb	lr, [r5, #0]	@ tmp527, <variable>.is_to_ref
	ldr	ip, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #1]	@ tmp527, <variable>.is_to_display
	stmia	sp, {r7, sl}	@ phole stm
	bl	dprint_vfmw	@
	b	.L984	@
.L952:
	movw	r3, #:lower16:100816	@ tmp683,
	movw	r2, #:lower16:89016	@ tmp684,
	movt	r3, #:upper16:100816	@ tmp683,
	movt	r2, #:upper16:89016	@ tmp684,
	movw	r0, #:lower16:88973	@ tmp689,
	movt	r0, #:upper16:88973	@ tmp689,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:88986	@ tmp694,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movt	r1, #:upper16:88986	@ tmp694,
	movw	r2, #:lower16:89013	@ tmp693,
	movt	r2, #:upper16:89013	@ tmp693,
	strb	lr, [ip, #1027]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.PicStruct
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #1028]	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.35726, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	ldr	r0, [r4, r3]	@ temp.2920, <variable>.CodecInfo.pCurFrm
	sub	lr, r1, #2	@ tmp695, D.35726,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ D.35720, <variable>.CodecInfo.AdvPicSyntax.CurParity
	uxtb	r2, lr	@ tmp696, tmp695
	cmp	r2, #1	@ tmp696,
	movls	r1, #1	@ prephitmp.2772,
	bls	.L958	@,
	cmp	r1, #4	@ D.35726,
	movne	r1, #0	@ prephitmp.2772,
	beq	.L997	@,
.L958:
	add	ip, r0, r3	@ tmp704, temp.2920, D.35720
	movw	r3, #:lower16:100916	@ tmp707,
	movt	r3, #:upper16:100916	@ tmp707,
	strb	r1, [ip, #1029]	@ prephitmp.2772, <variable>.IsHalfPel
	ldr	r2, [r4, r3]	@ iftmp.486, <variable>.CodecInfo.SlcNum
	cmp	r2, #0	@ iftmp.486,
	beq	.L960	@,
	sub	lr, r2, #1	@ prephitmp.2774, iftmp.486,
	cmp	lr, #0	@ prephitmp.2774,
	ble	.L977	@,
	add	ip, r4, #100352	@ tmp721, pVC1_CTX_S,
	cmp	lr, #1	@ prephitmp.2774,
	add	r2, ip, #616	@ tmp721, tmp721,
	add	r1, ip, #576	@ ivtmp.2799, ivtmp.2799,
	sub	r0, lr, #1	@ tmp798, prephitmp.2774,
	mov	r3, #0	@ i,
	ldr	ip, [r2, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	and	r0, r0, #1	@ tmp800, tmp798,
	strb	r3, [r1, #0]	@ i, <variable>.SlcNo
	mov	r2, #1	@ i,
	add	r3, r1, #48	@ ivtmp.2799, ivtmp.2799,
	mul	ip, ip, r5	@ tmp722, <variable>.SlcEndMbn, MbWidth
	sub	ip, ip, #1	@ tmp724, tmp722,
	str	ip, [r1, #16]	@ tmp724, <variable>.SlcEndMbn
	ble	.L977	@,
	cmp	r0, #0	@ tmp800,
	beq	.L963	@,
	add	r0, r4, #100352	@ tmp833, pVC1_CTX_S,
	strb	r2, [r3, #0]	@ i, <variable>.SlcNo
	add	ip, r0, #664	@ tmp833, tmp833,
	mov	r2, #2	@ i,
	cmp	lr, r2	@ prephitmp.2774, i
	ldr	r0, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	ip, r0, r5	@ tmp835, <variable>.SlcEndMbn, MbWidth
	sub	r0, ip, #1	@ tmp836, tmp835,
	str	r0, [r3, #16]	@ tmp836, <variable>.SlcEndMbn
	add	r3, r1, #96	@ ivtmp.2799, ivtmp.2799,
	ble	.L977	@,
.L963:
	add	r0, r2, r2, asl #1	@, tmp806, i, i,
	add	r1, r2, #1	@ tmp801, i,
	strb	r2, [r3, #0]	@ i, <variable>.SlcNo
	add	r2, r1, #1	@ i, tmp801,
	add	ip, r4, r0, asl #4	@, tmp810, pVC1_CTX_S, tmp806,
	strb	r1, [r3, #48]	@ tmp801, <variable>.SlcNo
	add	ip, ip, #100352	@ tmp811, tmp810,
	add	r0, r1, r1, asl #1	@, tmp818, tmp801, tmp801,
	add	ip, ip, #616	@ tmp811, tmp811,
	cmp	lr, r2	@ prephitmp.2774, i
	add	r0, r4, r0, asl #4	@, tmp822, pVC1_CTX_S, tmp818,
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	add	r0, r0, #100352	@ tmp823, tmp822,
	add	r0, r0, #616	@ tmp823, tmp823,
	mul	ip, r1, r5	@ tmp813, <variable>.SlcEndMbn, MbWidth
	sub	r1, ip, #1	@ tmp814, tmp813,
	str	r1, [r3, #16]	@ tmp814, <variable>.SlcEndMbn
	ldr	ip, [r0, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	r1, ip, r5	@ tmp825, <variable>.SlcEndMbn, MbWidth
	sub	r0, r1, #1	@ tmp826, tmp825,
	str	r0, [r3, #64]	@ tmp826, <variable>.SlcEndMbn
	add	r3, r3, #96	@ ivtmp.2799, ivtmp.2799,
	bgt	.L963	@,
.L977:
	uxtb	r0, lr	@ prephitmp.2776, prephitmp.2774
.L962:
	add	lr, lr, lr, asl #1	@, tmp730, prephitmp.2774, prephitmp.2774,
	movw	r1, #:lower16:100928	@ tmp727,
	movw	r3, #:lower16:100944	@ tmp735,
	movt	r1, #:upper16:100928	@ tmp727,
	add	r2, r4, lr, asl #4	@, tmp732, pVC1_CTX_S, tmp730,
	movt	r3, #:upper16:100944	@ tmp735,
	movw	r5, #:lower16:78274	@ tmp743,
	movt	r5, #:upper16:78274	@ tmp743,
	strb	r0, [r2, r1]	@ prephitmp.2776, <variable>.SlcNo
	sub	r8, r8, #1	@ tmp742, TotalMbNum,
	str	r8, [r2, r3]	@ tmp742, <variable>.SlcEndMbn
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ prephitmp.2928, <variable>.CodecInfo.PicCodingType
	cmp	r1, #2	@ prephitmp.2928,
	bne	.L956	@,
	movw	ip, #:lower16:89003	@ tmp744,
	movw	r3, #:lower16:89120	@ tmp746,
	movt	ip, #:upper16:89003	@ tmp744,
	movt	r3, #:upper16:89120	@ tmp746,
	movw	r2, #:lower16:113248	@ tmp749,
	movt	r2, #:upper16:113248	@ tmp749,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r3, #:lower16:113252	@ tmp753,
	sub	ip, r0, #1	@ tmp752, <variable>.CodecInfo.AdvPicSyntax.REFDIST,
	movt	r3, #:upper16:113252	@ tmp753,
	mul	r5, lr, r0	@ tmp747, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	mov	r0, r5, asr #8	@ D.35759, tmp747,
	str	r0, [r4, r2]	@ D.35759, <variable>.CodecInfo.FRFD
	rsb	r5, r0, ip	@ D.35763, D.35759, tmp752
	str	r5, [r4, r3]	@ D.35763, <variable>.CodecInfo.BRFD
	cmp	r5, #0	@ D.35763,
	movlt	r5, #0	@ tmp756,
	strlt	r5, [r4, r3]	@ tmp756, <variable>.CodecInfo.BRFD
	b	.L956	@
.L919:
	mov	r0, #0	@ D.35448,
	b	.L910	@
.L991:
	movw	r0, #:lower16:78272	@ tmp355,
	movt	r0, #:upper16:78272	@ tmp355,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	lr, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L925	@,
	b	.L926	@
.L960:
	mov	r5, #1	@ tmp777,
	mov	r0, r2	@ prephitmp.2776, iftmp.486
	str	r5, [r4, r3]	@ tmp777, <variable>.CodecInfo.SlcNum
	mov	lr, r2	@ prephitmp.2774, prephitmp.2776
	b	.L962	@
.L921:
	ldr	lr, [sp, #36]	@ NewNum, NewNum
	cmp	lr, #0	@ NewNum,
	ble	.L998	@,
.L922:
	movw	r3, #:lower16:113724	@ tmp302,
	movt	r3, #:upper16:113724	@ tmp302,
	mov	r0, #0	@ tmp303,
	mov	r1, #1	@ tmp305,
	str	r0, [r4, r3]	@ tmp303, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp305, <variable>.s32DSDWaitFlag
	b	.L910	@
.L997:
	movw	r2, #:lower16:88987	@ tmp697,
	movt	r2, #:upper16:88987	@ tmp697,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	sub	ip, lr, #2	@ tmp700, <variable>.CodecInfo.AdvPicSyntax.MVMODE2,
	uxtb	r1, ip	@ tmp701, tmp700
	cmp	r1, #1	@ tmp701,
	movhi	r1, #0	@, prephitmp.2772
	movls	r1, #1	@, prephitmp.2772
	b	.L958	@
.L996:
	movw	r3, #:lower16:88884	@ tmp633,
	movt	r3, #:upper16:88884	@ tmp633,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE2, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	sub	r6, lr, #2	@ tmp636, <variable>.CodecInfo.SMPPicSyntax.MVMODE2,
	uxtb	r2, r6	@ tmp637, tmp636
	cmp	r2, #1	@ tmp637,
	movhi	r2, #0	@, prephitmp.2931
	movls	r2, #1	@, prephitmp.2931
	b	.L954	@
.L998:
	ldr	ip, [sp, #32]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	ble	.L918	@,
	b	.L922	@
	.fnend
	.size	VC1_Vfmw_GetStreamInfo, .-VC1_Vfmw_GetStreamInfo
	.align	2
	.global	VC1_Vfmw_PrepareDecode
	.type	VC1_Vfmw_PrepareDecode, %function
VC1_Vfmw_PrepareDecode:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r4, r0, #0	@ D.35775,
	movne	r0, #1	@ D.35779,
	ldmnefd	sp!, {r4, pc}	@
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35779, D.35775
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VC1_Vfmw_PrepareDecode, .-VC1_Vfmw_PrepareDecode
	.align	2
	.global	VC1DEC_Decode
	.type	VC1DEC_Decode, %function
VC1DEC_Decode:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r5, r0, #77824	@ D.34980, pVC1_CTX_S,
	add	r5, r5, #288	@ D.34980, D.34980,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r2, #160	@,
	mov	r0, r5	@, D.34980
	bl	memcpy	@
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, D.34980
	bl	VC1_ReceivePacket	@
	subs	r7, r0, #0	@ D.34981,
	beq	.L1014	@,
	ldr	r3, [r4, #0]	@ D.34989, <variable>.pstExtraData
	ldr	r2, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1015	@,
.L1006:
	movw	r5, #:lower16:78272	@ tmp163,
	movt	r5, #:upper16:78272	@ tmp163,
	movw	lr, #:lower16:113328	@ tmp162,
	movt	lr, #:upper16:113328	@ tmp162,
	ldrb	ip, [r4, r5]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus,
	strb	ip, [r4, lr]	@ <variable>.CodecInfo.CodecStatus,
.L1007:
	add	r2, r4, #77824	@ D.34996, pVC1_CTX_S,
	movw	r5, #:lower16:113720	@ tmp169,
	add	r6, r2, #448	@ D.34996, D.34996,
	movt	r5, #:upper16:113720	@ tmp169,
	add	r3, r4, #80896	@, pVC1_CTX_S,
	add	r1, r3, #536	@,,
	mov	r0, r6	@, D.34996
	ldr	r2, [r4, r5]	@, <variable>.ChanID
	bl	VC1_Vfmw_ParseHeader	@
	subs	r7, r0, #0	@ Ret,
	bne	.L1008	@,
	add	r1, r4, #112640	@, pVC1_CTX_S,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #572	@,,
	bl	VC1_ClearCurPacket	@
	movw	r0, #:lower16:g_event_report	@ tmp175,
	movt	r0, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r0, #0]	@ g_event_report.457, g_event_report
	cmp	r3, #0	@ g_event_report.457,
	beq	.L1005	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r7	@, Ret
	blx	r3	@ g_event_report.457
.L1005:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1008:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L1016	@,
.L1009:
	mov	r7, #0	@ Ret,
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1015:
	ldr	r0, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r0, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L1006	@,
	movw	r7, #:lower16:113328	@ tmp159,
	movt	r7, #:upper16:113328	@ tmp159,
	movw	r6, #:lower16:78272	@ tmp158,
	movt	r6, #:upper16:78272	@ tmp158,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.u8LastCodecStatus,
	strb	r1, [r4, r6]	@ <variable>.CodecInfo.u8LastCodecStatus,
	b	.L1007	@
.L1014:
	movw	r3, #:lower16:113208	@ tmp154,
	movt	r3, #:upper16:113208	@ tmp154,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	r2, [r4, r3]	@, <variable>.CodecInfo.PicCnt
	bl	dprint_vfmw	@
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1016:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_PrepareDecode	@
	cmp	r0, #0	@,
	bne	.L1010	@,
	ldr	r3, [r4, #0]	@ temp.2980, <variable>.pstExtraData
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1017	@,
.L1011:
	movw	lr, #:lower16:113720	@ tmp180,
	movt	lr, #:upper16:113720	@ tmp180,
	mov	r0, r6	@, D.34996
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
.L1012:
	movw	r3, #:lower16:g_event_report	@ tmp182,
	movt	r3, #:upper16:g_event_report	@ tmp182,
	ldr	r3, [r3, #0]	@ g_event_report.2984, g_event_report
	cmp	r3, #0	@ g_event_report.2984,
	beq	.L1009	@,
	movw	r0, #:lower16:113720	@ tmp183,
	movt	r0, #:upper16:113720	@ tmp183,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	mov	r7, r2	@ Ret,
	blx	r3	@ g_event_report.2984
	b	.L1005	@
.L1017:
	ldr	ip, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	ip, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L1011	@,
	b	.L1012	@
.L1010:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r6, r0, #0	@ D.35018,
	bne	.L1005	@,
	movw	lr, #:lower16:100908	@ tmp187,
	movt	lr, #:upper16:100908	@ tmp187,
	movw	r7, #:lower16:100816	@ tmp190,
	movt	r7, #:upper16:100816	@ tmp190,
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [r4, r7]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r2, #:lower16:g_event_report	@ tmp197,
	movt	r2, #:upper16:g_event_report	@ tmp197,
	strb	r6, [ip, #0]	@ D.35018, <variable>.is_to_ref
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r1, #1]	@ D.35018, <variable>.is_to_display
	ldr	r3, [r2, #0]	@ g_event_report.2988, g_event_report
	cmp	r3, #0	@ g_event_report.2988,
	beq	.L1009	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r6	@, D.35018
	mov	r7, r6	@ Ret, D.35018
	blx	r3	@ g_event_report.2988
	b	.L1005	@
	.fnend
	.size	VC1DEC_Decode, .-VC1DEC_Decode
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r6, #:lower16:113720	@ tmp155,
	movt	r6, #:upper16:113720	@ tmp155,
	mov	r4, r0	@ pCtx, pCtx
	movw	r5, #:lower16:100908	@ tmp159,
	add	r0, r0, #77824	@, pCtx,
	movt	r5, #:upper16:100908	@ tmp159,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r0, r0, #448	@,,
	mov	r7, r1	@ ErrRatio, ErrRatio
	ldr	r1, [r4, r6]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:100904	@ tmp163,
	movt	r2, #:upper16:100904	@ tmp163,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r5, r0	@ pCurImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:100900	@ tmp167,
	movt	r3, #:upper16:100900	@ tmp167,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r5, #0	@ pCurImg,
	mov	ip, r0	@ pFwdImg,
	beq	.L1041	@,
	cmp	r7, #0	@ ErrRatio,
	movlt	r7, #0	@ iftmp.448,
	blt	.L1022	@,
	cmp	r7, #100	@ ErrRatio,
	movge	r7, #100	@ iftmp.448,
.L1022:
	str	r7, [r5, #180]	@ iftmp.448, <variable>.error_level
	mov	r0, r4	@, pCtx
	bl	VC1_SetImgFormat	@
	movw	ip, #:lower16:78275	@ tmp170,
	movt	ip, #:upper16:78275	@ tmp170,
	ldrsb	r1, [r4, ip]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r1, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L1042	@,
.L1023:
	mov	r8, #0	@ tmp174,
	str	r8, [r5, #192]	@ tmp174, <variable>.p_usrdat
	str	r8, [r5, #196]	@ tmp174, <variable>.p_usrdat
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1025	@,
	movw	ip, #:lower16:78274	@ tmp178,
	movt	ip, #:upper16:78274	@ tmp178,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ D.34813, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.34813,
	cmpne	r1, #2	@, D.34813,
	moveq	r3, #0	@, tmp185
	movne	r3, #1	@, tmp185
	beq	.L1026	@,
	movw	lr, #:lower16:100896	@ tmp186,
	movt	lr, #:upper16:100896	@ tmp186,
	ldr	r5, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r5, #1	@ <variable>.CodecInfo.RefNum,
	bls	.L1027	@,
	movw	r8, #:lower16:100900	@ tmp189,
	movt	r8, #:upper16:100900	@ tmp189,
	movw	r3, #:lower16:100912	@ tmp188,
	movt	r3, #:upper16:100912	@ tmp188,
	ldr	r2, [r4, r8]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	mov	r8, #1	@ pref,
	str	r2, [r4, r3]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.ToQueFsID
.L1028:
	movw	r5, #:lower16:100912	@ tmp201,
	movt	r5, #:upper16:100912	@ tmp201,
	movw	r3, #:lower16:113208	@ tmp197,
	movt	r3, #:upper16:113208	@ tmp197,
	ldr	r1, [r4, r5]	@ D.34838, <variable>.CodecInfo.ToQueFsID
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	cmn	r1, #1	@ D.34838,
	add	r0, ip, #1	@ tmp200, <variable>.CodecInfo.PicCnt,
	str	r0, [r4, r3]	@ tmp200, <variable>.CodecInfo.PicCnt
	beq	.L1024	@,
	movw	r7, #:lower16:113720	@ tmp202,
	movt	r7, #:upper16:113720	@ tmp202,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L1043	@,
	ldr	r2, [r6, #180]	@ D.34848, <variable>.error_level
	cmp	r2, #0	@ D.34848,
	beq	.L1031	@,
	ldr	sl, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [sl, #4]	@ D.34850, <variable>.s32OutErrThr
	cmp	r2, r3	@ D.34848, D.34850
	bhi	.L1032	@,
.L1031:
	movw	r5, #:lower16:100912	@ tmp206,
	movt	r5, #:upper16:100912	@ tmp206,
	movw	r7, #:lower16:113720	@ tmp207,
	movt	r7, #:upper16:113720	@ tmp207,
	ldr	sl, [r4, r5]	@ temp.3039, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, sl	@, temp.3039
	bl	FSP_GetRef	@
	mov	r2, sl	@, temp.3039
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	mov	r3, r0	@ D.34853,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.ToQueFsID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	beq	.L1044	@,
	movw	r1, #:lower16:100816	@ tmp222,
	movt	r1, #:upper16:100816	@ tmp222,
	movw	r3, #:lower16:78273	@ tmp225,
	movt	r3, #:upper16:78273	@ tmp225,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	ip, #1	@ tmp223,
	mov	r0, #2	@ tmp226,
	strb	ip, [r7, #1]	@ tmp223, <variable>.is_to_display
	strb	r0, [r4, r3]	@ tmp226, <variable>.CodecInfo.RefId
.L1034:
	movw	r7, #:lower16:113720	@ tmp228,
	movt	r7, #:upper16:113720	@ tmp228,
	add	lr, r4, #112640	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, lr, #728	@,,
	mov	r2, r4	@, pCtx
	str	r6, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.34860,
	beq	.L1035	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	sl, #0	@ tmp235,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp235, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	r3, #:lower16:100912	@ tmp242,
	movt	r3, #:upper16:100912	@ tmp242,
	str	sl, [r6, #196]	@ tmp235, <variable>.p_usrdat
	mov	r2, sl	@, tmp235
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	mov	r0, sl	@ D.34795, tmp235
	movweq	r3, #:lower16:100824	@ tmp245,
	movwne	r3, #:lower16:100816	@ tmp249,
	movteq	r3, #:upper16:100824	@ tmp245,
	movtne	r3, #:upper16:100816	@ tmp249,
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	sl, [r2, #1]	@ tmp235, <variable>.is_to_display
	b	.L1020	@
.L1026:
	movw	r1, #:lower16:100908	@ tmp192,
	movt	r1, #:upper16:100908	@ tmp192,
	movw	ip, #:lower16:100912	@ tmp191,
	cmp	sl, #0	@ pBwdImg,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	ip, #:upper16:100912	@ tmp191,
	str	r0, [r4, ip]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	beq	.L1029	@,
	ldrd	r6, [sl, #8]	@ D.34829, pBwdImg,
	ldrd	r0, [r5, #8]	@ D.34831, pCurImg,
	cmp	r6, r0	@ D.34829, D.34831
	sbcs	r2, r7, r1	@, D.34829, D.34831
	bge	.L1029	@,
	strd	r6, [r5, #8]	@ D.34829, pCurImg,
	mov	r8, r3	@ pref, tmp185
	strd	r0, [sl, #8]	@ D.34831, pBwdImg,
	b	.L1028	@
.L1042:
	movw	r3, #:lower16:78281	@ tmp172,
	movt	r3, #:upper16:78281	@ tmp172,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L1023	@,
.L1024:
	mov	r0, #1	@ D.34795,
.L1020:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L1025:
	movw	r2, #:lower16:100908	@ tmp195,
	movt	r2, #:upper16:100908	@ tmp195,
	movw	lr, #:lower16:100912	@ tmp194,
	movt	lr, #:upper16:100912	@ tmp194,
	ldr	r5, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	str	r5, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	b	.L1028	@
.L1035:
	movw	r3, #:lower16:78273	@ tmp252,
	movt	r3, #:upper16:78273	@ tmp252,
	ldrsb	r5, [r4, r3]	@ D.34868, <variable>.CodecInfo.RefId
	cmp	r5, #3	@ D.34868,
	beq	.L1045	@,
	cmp	r5, #1	@ D.34868,
	beq	.L1046	@,
	cmp	r5, #2	@ D.34868,
	bne	.L1024	@,
	movw	r2, #:lower16:100816	@ tmp271,
	movt	r2, #:upper16:100816	@ tmp271,
	mov	lr, #0	@ tmp272,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pCurFrm,
	strb	lr, [ip, #1]	@ tmp272, <variable>.is_to_display
	strb	lr, [r4, r3]	@ tmp272, <variable>.CodecInfo.RefId
	b	.L1020	@
.L1029:
	mov	r8, #0	@ pref,
	b	.L1028	@
.L1044:
	movw	r2, #:lower16:100824	@ tmp215,
	movt	r2, #:upper16:100824	@ tmp215,
	movw	r1, #:lower16:78273	@ tmp218,
	movt	r1, #:upper16:78273	@ tmp218,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strb	r8, [lr, #1]	@ pref, <variable>.is_to_display
	strb	r8, [r4, r1]	@ pref, <variable>.CodecInfo.RefId
	b	.L1034	@
.L1032:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	mov	sl, #0	@ tmp281,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	sl, [r6, #192]	@ tmp281, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	sl, [r6, #196]	@ tmp281, <variable>.p_usrdat
	mov	r2, sl	@, tmp281
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r5]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r8, #1	@ pref,
	movweq	r3, #:lower16:100824	@ tmp291,
	movwne	r3, #:lower16:100816	@ tmp295,
	moveq	r0, r8	@ D.34795, pref
	movne	r0, #1	@ D.34795,
	movteq	r3, #:upper16:100824	@ tmp291,
	movtne	r3, #:upper16:100816	@ tmp295,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	sl, [r3, #1]	@ tmp281, <variable>.is_to_display
	b	.L1020	@
.L1027:
	movw	r0, #:lower16:100912	@ tmp299,
	movt	r0, #:upper16:100912	@ tmp299,
	mvn	r5, #0	@ tmp300,
	str	r5, [r4, r0]	@ tmp300, <variable>.CodecInfo.ToQueFsID
	b	.L1028	@
.L1046:
	movw	r1, #:lower16:100824	@ tmp263,
	movt	r1, #:upper16:100824	@ tmp263,
	mov	ip, #0	@ tmp264,
	mov	r0, r5	@ D.34795, D.34868
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r2, #1]	@ tmp264, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp264, <variable>.CodecInfo.RefId
	b	.L1020	@
.L1045:
	movw	lr, #:lower16:100820	@ tmp255,
	movt	lr, #:upper16:100820	@ tmp255,
	mov	ip, #0	@ tmp256,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pRef,
	strb	ip, [r1, #1]	@ tmp256, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp256, <variable>.CodecInfo.RefId
	b	.L1020	@
.L1041:
	mov	r3, sl	@, pBwdImg
	mov	r0, r5	@, pCurImg
	movw	r1, #:lower16:.LC40	@,
	mov	r2, r5	@, pCurImg
	movt	r1, #:upper16:.LC40	@,
	str	ip, [sp, #0]	@ pFwdImg,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34795, pCurImg
	b	.L1020	@
.L1043:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC41	@,
	movw	r2, #738	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.34795, pToQueImg
	b	.L1020	@
	.fnend
	.size	VC1DEC_VDMPostProc, .-VC1DEC_VDMPostProc
	.align	2
	.global	VC1DEC_GetRemainImg
	.type	VC1DEC_GetRemainImg, %function
VC1DEC_GetRemainImg:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #:lower16:100820	@ tmp141,
	movt	r6, #:upper16:100820	@ tmp141,
	mov	r4, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	r3, #0	@ <variable>.CodecInfo.pRef,
	mvneq	r0, #0	@ ret,
	beq	.L1049	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1050	@,
	movw	r7, #:lower16:113720	@ tmp145,
	movw	r8, #:lower16:100904	@ tmp147,
	movt	r7, #:upper16:113720	@ tmp145,
	movt	r8, #:upper16:100904	@ tmp147,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L1050	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L1057	@,
.L1050:
	add	r0, r4, #112640	@, pCtx,
	add	r0, r0, #728	@,,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L1052:
	ldr	r1, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L1050	@,
	ldr	r2, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L1050	@,
	ldr	lr, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bls	.L1050	@,
.L1049:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1057:
	mov	r0, r4	@, pCtx
	mov	r8, #0	@ tmp154,
	bl	VC1_SetImgFormat	@
	mov	ip, #1	@ tmp153,
	str	r8, [r5, #192]	@ tmp154, <variable>.p_usrdat
	mov	r2, ip	@, tmp153
	str	ip, [r5, #224]	@ tmp153, <variable>.last_frame
	str	r8, [r5, #196]	@ tmp154, <variable>.p_usrdat
	ldr	r1, [r5, #176]	@, <variable>.image_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r6]	@ temp.3089, <variable>.CodecInfo.pRef
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.is_to_ref, <variable>.is_to_ref
	cmp	r2, #1	@ <variable>.is_to_ref,
	beq	.L1058	@,
.L1051:
	movw	r6, #:lower16:113720	@ tmp170,
	movt	r6, #:upper16:113720	@ tmp170,
	add	ip, r4, #112640	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, ip, #728	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L1052	@,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	mov	r0, r4	@, pCtx
	bl	VC1DEC_RecycleImage	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	mov	r7, #0	@ tmp178,
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp178, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #196]	@ tmp178, <variable>.p_usrdat
	b	.L1050	@
.L1058:
	strb	r2, [r3, #1]	@ <variable>.is_to_ref, <variable>.is_to_display
	movw	lr, #:lower16:78273	@ tmp167,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:78273	@ tmp167,
	mov	r2, #3	@ tmp168,
	strb	r8, [r3, #0]	@ tmp154, <variable>.is_to_ref
	strb	r2, [r4, lr]	@ tmp168, <variable>.CodecInfo.RefId
	b	.L1051	@
	.fnend
	.size	VC1DEC_GetRemainImg, .-VC1DEC_GetRemainImg
	.align	2
	.global	VC1DEC_Init
	.type	VC1DEC_Init, %function
VC1DEC_Init:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r6, #:lower16:113712	@ tmp139,
	movt	r6, #:upper16:113712	@ tmp139,
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:113728	@,
	movt	r1, #:upper16:113728	@,
	ldr	r9, [r0, r6]	@ D.34496, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r3, r4, #112640	@, pCtx,
	add	r0, r3, #728	@,,
	mov	r7, #1	@ tmp145,
	str	r9, [r4, r6]	@ D.34496, <variable>.ImageQue.ResetMagicWord
	movw	r8, #:lower16:113324	@ tmp147,
	bl	ResetVoQueue	@
	movw	r0, #:lower16:78281	@ tmp144,
	movt	r0, #:upper16:78281	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movt	r8, #:upper16:113324	@ tmp147,
	movw	r1, #:lower16:113296	@ tmp149,
	strb	r7, [r4, r0]	@ tmp145, <variable>.CodecInfo.LastIs2ndFld
	movt	r1, #:upper16:113296	@ tmp149,
	ldr	sl, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r2, #:lower16:113300	@ tmp151,
	movt	r2, #:upper16:113300	@ tmp151,
	movw	r3, #:lower16:113304	@ tmp154,
	movt	r3, #:upper16:113304	@ tmp154,
	movw	r0, #:lower16:113308	@ tmp157,
	str	sl, [r4, r8]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movt	r0, #:upper16:113308	@ tmp157,
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	sl, #:lower16:113312	@ tmp160,
	movt	sl, #:upper16:113312	@ tmp160,
	movw	r8, #:lower16:113316	@ tmp163,
	movt	r8, #:upper16:113316	@ tmp163,
	movw	lr, #:lower16:78282	@ tmp169,
	str	r9, [r4, r1]	@ <variable>.s32BpdMemAddr, <variable>.CodecInfo.MVTYPEMB_ADDR
	movt	lr, #:upper16:78282	@ tmp169,
	ldr	r6, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	r1, #:lower16:113320	@ tmp166,
	movt	r1, #:upper16:113320	@ tmp166,
	add	ip, r6, #2048	@ tmp153, <variable>.s32BpdMemAddr,
	str	ip, [r4, r2]	@ tmp153, <variable>.CodecInfo.SKIPMB_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	ip, #:lower16:113256	@ tmp172,
	movw	r2, #:lower16:113260	@ tmp174,
	movt	ip, #:upper16:113256	@ tmp172,
	add	r6, r9, #4096	@ tmp156, <variable>.s32BpdMemAddr,
	str	r6, [r4, r3]	@ tmp156, <variable>.CodecInfo.DIRECTMB_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	r2, #:upper16:113260	@ tmp174,
	movw	r3, #:lower16:113724	@ tmp176,
	movt	r3, #:upper16:113724	@ tmp176,
	add	r6, r9, #6144	@ tmp159, <variable>.s32BpdMemAddr,
	str	r6, [r4, r0]	@ tmp159, <variable>.CodecInfo.ACPRED_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	mov	r6, #0	@ tmp173,
	mov	r0, r4	@, pCtx
	add	r9, r9, #8192	@ tmp162, <variable>.s32BpdMemAddr,
	str	r9, [r4, sl]	@ tmp162, <variable>.CodecInfo.OVERFLAGS_ADDR
	ldr	sl, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	add	sl, sl, #10240	@ tmp165, <variable>.s32BpdMemAddr,
	str	sl, [r4, r8]	@ tmp165, <variable>.CodecInfo.FIELDTX_ADDR
	ldr	r5, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	str	r6, [r4, ip]	@ tmp173, <variable>.CodecInfo.PPicFound
	str	r7, [r4, r3]	@ tmp145, <variable>.DSDNeedClearQue
	add	ip, r5, #12288	@ tmp168, <variable>.s32BpdMemAddr,
	strb	r7, [r4, lr]	@ tmp145, <variable>.CodecInfo.LastPicRNDCTRL
	str	ip, [r4, r1]	@ tmp168, <variable>.CodecInfo.FORWARDMB_ADDR
	str	r6, [r4, r2]	@ tmp173, <variable>.CodecInfo.BPicCount
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:113720	@ tmp178,
	movt	r3, #:upper16:113720	@ tmp178,
	cmn	r0, #1	@ D.34521,
	str	r0, [r4, r3]	@ D.34521, <variable>.ChanID
	beq	.L1063	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.34526, tmp145
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1063:
	mov	r0, r6	@, tmp173
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34526,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.589.38179, %object
	.size	C.589.38179, 128
C.589.38179:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.word	19
	.word	20
	.word	21
	.word	22
	.word	23
	.word	24
	.word	25
	.word	27
	.word	29
	.word	31
	.type	aCount, %object
	.size	aCount, 128
aCount:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	1
	.word	2
	.word	2
	.word	3
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	1
	.word	2
	.word	2
	.word	3
	.word	2
	.word	3
	.word	3
	.word	4
	.word	2
	.word	3
	.word	3
	.word	4
	.word	3
	.word	4
	.word	4
	.word	5
	.type	a2On4Off, %object
	.size	a2On4Off, 60
a2On4Off:
	.word	3
	.word	5
	.word	6
	.word	9
	.word	10
	.word	12
	.word	17
	.word	18
	.word	20
	.word	24
	.word	33
	.word	34
	.word	36
	.word	40
	.word	48
	.type	C.567.37503, %object
	.size	C.567.37503, 32
C.567.37503:
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	2
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
	.type	C.531.36403, %object
	.size	C.531.36403, 28
C.531.36403:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.532.36404, %object
	.size	C.532.36404, 28
C.532.36404:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.533.36405, %object
	.size	C.533.36405, 56
C.533.36405:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.534.36406, %object
	.size	C.534.36406, 56
C.534.36406:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.535.36407, %object
	.size	C.535.36407, 32
C.535.36407:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.523.36371, %object
	.size	C.523.36371, 28
C.523.36371:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.524.36372, %object
	.size	C.524.36372, 28
C.524.36372:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.525.36373, %object
	.size	C.525.36373, 56
C.525.36373:
	.word	3
	.word	4
	.word	1
	.word	5
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	1
	.word	3
	.word	5
	.word	7
	.type	C.526.36374, %object
	.size	C.526.36374, 56
C.526.36374:
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	7
	.word	8
	.word	8
	.word	8
	.word	8
	.type	C.527.36375, %object
	.size	C.527.36375, 32
C.527.36375:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.519.36338, %object
	.size	C.519.36338, 16
C.519.36338:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.520.36339, %object
	.size	C.520.36339, 16
C.520.36339:
	.word	1
	.word	0
	.word	2
	.word	3
	.type	C.515.36312, %object
	.size	C.515.36312, 16
C.515.36312:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.512.36299, %object
	.size	C.512.36299, 8
C.512.36299:
	.word	3
	.word	1
	.type	C.507.36271, %object
	.size	C.507.36271, 20
C.507.36271:
	.word	3
	.word	1
	.word	2
	.word	0
	.word	4
	.type	C.508.36272, %object
	.size	C.508.36272, 20
C.508.36272:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.type	C.501.36227, %object
	.size	C.501.36227, 64
C.501.36227:
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	0
@ Len:
	.word	1
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	1
@ Len:
	.word	2
@ Code:
	.word	2
@ Len:
	.word	3
@ Code:
	.word	3
@ Len:
	.word	3
	.type	FldPTypeTab, %object
	.size	FldPTypeTab, 64
FldPTypeTab:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	4
	.word	4
	.word	2
	.word	4
	.word	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"bitsream para error -----\012\000"
	.space	1
.LC1:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC2:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC3:
	.ascii	"picture width out of range\000"
	.space	1
.LC4:
	.ascii	"picture height out of range\000"
.LC5:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\000"
	.space	2
.LC6:
	.ascii	"Vc1SMPSeqHdr Err, BS is wrong\012\000"
	.space	1
.LC7:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, MbHeight = %d\012\000"
	.space	1
.LC8:
	.ascii	"SLICE_ADDR = %d,SlcEndMbn = %d, totalMbMin1 = %d\012"
	.ascii	"\000"
	.space	2
.LC9:
	.ascii	"VC1_RecordSlcStream stream len <= 0\012\000"
	.space	3
.LC10:
	.ascii	"Check Pos 2: %d\012\000"
	.space	3
.LC11:
	.ascii	"Check Pos 3: %d\012\000"
	.space	3
.LC12:
	.ascii	"\012======PicNum  :%6d=========\012\000"
	.space	2
.LC13:
	.ascii	"INTERPFRM  :%#x\012\000"
	.space	3
.LC14:
	.ascii	"After VC1_Vfmw_ParseSMPPicHdr BS Len <= 0 err!\012\000"
.LC15:
	.ascii	" pCodecInf->SlcNum = %d >= 256 \012\000"
	.space	3
.LC16:
	.ascii	"line %d, Code = VC1_SCSLC failed!\012\000"
	.space	1
.LC17:
	.ascii	"line %d, Code = VC1_SCFRM failed!\012\000"
	.space	1
.LC18:
	.ascii	"----------------- VC1 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC19:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC20:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC21:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC22:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC23:
	.ascii	"VC1_Vfmw_GetImageBuffer get imgbuf err, clear all r"
	.ascii	"ef!\012\000"
.LC24:
	.ascii	"VC1_Vfmw_GetImageBuffer get_flag!=1, FSP_ClearLogic"
	.ascii	"Fs.\012\000"
.LC25:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC26:
	.ascii	"vc1 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC27:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC28:
	.ascii	"ERROR: FSP_ConfigInstance fail!\012\000"
	.space	3
.LC29:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_ArrangeVahbMem err!\012\000"
.LC30:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_GetImageBuffer err!"
	.ascii	"\012\000"
	.space	3
.LC31:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC32:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC33:
	.ascii	"VC1_Vfmw_GetStreamInfo B pic pCodecInf->RefNum < 2 "
	.ascii	"err!\012\000"
	.space	3
.LC34:
	.ascii	"line: %d (pCur,pFwd,pBwd)(%p,%p,%p)\012\000"
	.space	3
.LC35:
	.ascii	"VC1_Vfmw_GetStreamInfo imgbuf = NULL err!\012\000"
	.space	1
.LC36:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC37:
	.ascii	"VC1_Vfmw_GetStreamInfo VC1_Vfmw_BuildRefList err!\012"
	.ascii	"\000"
	.space	1
.LC38:
	.ascii	"VC1_Vfmw_GetStreamInfo error! Release all packets!\012"
	.ascii	"\000"
.LC39:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC40:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC41:
	.ascii	"line: %d, pToQueImg is Null!\012\000"
	.space	2
.LC42:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC43:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC44:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC45:
	.ascii	"VC1 INIT!!!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
