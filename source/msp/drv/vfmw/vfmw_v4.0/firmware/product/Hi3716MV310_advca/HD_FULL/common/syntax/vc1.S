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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vc1)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vc1.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vc1.o
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
	.global	emp_print
	.type	emp_print, %function
emp_print:
	.fnstart
.LFB1917:
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
.LFB1929:
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
.LFB1936:
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
	add	r2, r2, #32	@ ivtmp.764, iShift,
.L14:
	add	ip, r2, r1	@ ivtmp.764, ivtmp.764, iScale
	mov	r5, r2, asr #6	@ j.779, ivtmp.764,
	add	r4, r3, #1	@ tmp195, i,
	bic	r5, r5, r5, asr #31	@ j.783, j.779
	mov	r2, ip, asr #6	@ j.779, ivtmp.764,
	cmp	r5, #255	@ j.783,
	movge	r5, #255	@ tmp186,
	bic	r2, r2, r2, asr #31	@ j.783, j.779
	strb	r5, [r0, r3]	@ tmp186,* i
	add	r3, r4, #1	@ i, tmp195,
	cmp	r2, #255	@ j.783,
	movge	r2, #255	@ tmp201,
	cmp	r3, #256	@ i,
	strb	r2, [r0, r4]	@ tmp201,
	add	r2, ip, r1	@ ivtmp.764, ivtmp.764, iScale
	bne	.L14	@,
.L17:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L13:
	rsb	r2, r1, r1, asl #25	@, tmp190, iScale, iScale,
	mov	r3, #0	@ i.782,
	mov	ip, r2, asl #7	@ tmp191, tmp190,
	add	r4, ip, #8192	@ ivtmp.774, tmp191,
	add	r2, r4, #32	@ ivtmp.774, ivtmp.774,
.L16:
	add	ip, r2, r1	@ ivtmp.774, ivtmp.774, iScale
	mov	r5, r2, asr #6	@ j.780, ivtmp.774,
	add	r4, r3, #1	@ tmp196, i.782,
	bic	r5, r5, r5, asr #31	@ j.784, j.780
	mov	r2, ip, asr #6	@ j.780, ivtmp.774,
	cmp	r5, #255	@ j.784,
	movge	r5, #255	@ tmp193,
	bic	r2, r2, r2, asr #31	@ j.784, j.780
	strb	r5, [r0, r3]	@ tmp193,* i.782
	add	r3, r4, #1	@ i.782, tmp196,
	cmp	r2, #255	@ j.784,
	movge	r2, #255	@ tmp206,
	cmp	r3, #256	@ i.782,
	strb	r2, [r0, r4]	@ tmp206,
	add	r2, ip, r1	@ ivtmp.774, ivtmp.774, iScale
	bne	.L16	@,
	b	.L17	@
	.fnend
	.size	VC1_Vfmw_GenerateIntensityMap, .-VC1_Vfmw_GenerateIntensityMap
	.align	2
	.global	VC1_SetCurPicResolutionInfo
	.type	VC1_SetCurPicResolutionInfo, %function
VC1_SetCurPicResolutionInfo:
	.fnstart
.LFB1940:
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
	mov	r2, ip, asr #1	@ prephitmp.798, tmp164,
.L30:
	movw	r1, #35000	@ tmp166,
	mov	ip, r3, asr #1	@ tmp173, tmp172,
	str	r2, [r0, r1]	@ prephitmp.798, <variable>.CurPicMbWidth
	movw	r1, #35004	@ tmp167,
	str	ip, [r0, r1]	@ tmp173, <variable>.CurPicMbHeight
.L27:
	movw	r1, #35000	@ tmp182,
	movw	r3, #35004	@ tmp177,
	ldr	ip, [r0, r1]	@ <variable>.CurPicMbWidth, <variable>.CurPicMbWidth
	movw	r1, #34992	@ tmp174,
	ldr	r3, [r0, r3]	@ <variable>.CurPicMbHeight, <variable>.CurPicMbHeight
	mov	r2, r2, asl #4	@ tmp175, prephitmp.798,
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
	ldr	r2, [r0, r1]	@ prephitmp.798, <variable>.MbWidth
	movw	ip, #35000	@ tmp137,
	ldr	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.MbHeight
	movw	r3, #35004	@ tmp138,
	str	r2, [r0, ip]	@ prephitmp.798, <variable>.CurPicMbWidth
	str	r1, [r0, r3]	@ <variable>.MbHeight, <variable>.CurPicMbHeight
	b	.L27	@
.L26:
	movw	r1, #22564	@ tmp154,
	movw	r2, #22560	@ tmp151,
	ldr	r3, [r0, r1]	@ <variable>.MbHeight, <variable>.MbHeight
	ldr	r2, [r0, r2]	@ prephitmp.798, <variable>.MbWidth
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
	mov	r2, r2, asr #1	@ prephitmp.798, tmp145,
	str	r2, [r0, ip]	@ prephitmp.798, <variable>.CurPicMbWidth
	b	.L27	@
	.fnend
	.size	VC1_SetCurPicResolutionInfo, .-VC1_SetCurPicResolutionInfo
	.align	2
	.global	VC1_Vfmw_UserData
	.type	VC1_Vfmw_UserData, %function
VC1_Vfmw_UserData:
	.fnstart
.LFB1969:
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
.LFB1971:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	r0, #10590	@ tmp140,
	ldrh	r3, [r1, #238]	@ D.41409, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	mov	r6, r1	@ pSyntax, pSyntax
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_WIDTH, D.41409
	moveq	r1, #0	@ Ret,
	beq	.L36	@,
	adds	r1, r3, #15	@ tmp143, D.41409,
	movw	r2, #22560	@ tmp142,
	addmi	ip, r3, #30	@, tmp144, D.41409,
	movpl	ip, r1	@, tmp144, tmp143
	movw	r3, #22576	@ tmp147,
	mov	r1, #1	@ Ret,
	mov	r0, ip, asr #4	@ tmp146, tmp144,
	str	r0, [r4, r2]	@ tmp146, <variable>.MbWidth
	ldrh	ip, [r6, #238]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.AdvEntSyntax.CODED_WIDTH
	str	ip, [r4, r3]	@ <variable>.AdvEntSyntax.CODED_WIDTH, <variable>.DispPicWidth
.L36:
	movw	r0, #10592	@ tmp149,
	ldrh	r3, [r6, #240]	@ D.41417, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r2, [r4, r0]	@ <variable>.AdvEntSyntax.CODED_HEIGHT, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r2, r3	@ <variable>.AdvEntSyntax.CODED_HEIGHT, D.41417
	beq	.L37	@,
	adds	r2, r3, #15	@ tmp152, D.41417,
	movw	ip, #22564	@ tmp151,
	addmi	r1, r3, #30	@, tmp153, D.41417,
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
	mov	r5, #1	@ Ret.868,
	mov	r4, ip	@ tmp168, tmp164
	stmia	r4!, {r0, r1, r2, r3}	@ tmp168,,,,
	mov	ip, r4	@ tmp170, tmp168
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp169,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp171,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp170,,,,
	ldmia	r6, {r0, r1, r2}	@ tmp171,,,
	stmia	ip, {r0, r1, r2}	@ tmp172,,,
	mov	r0, r5	@, Ret.868
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L37:
	cmp	r1, #1	@ Ret,
	movne	r5, #0	@ Ret.868,
	beq	.L38	@,
	mov	r0, r5	@, Ret.868
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VC1_Vfmw_UpdateAdvSPS, .-VC1_Vfmw_UpdateAdvSPS
	.align	2
	.global	VC1_Vfmw_UpdataLastPicRNDCTRL
	.type	VC1_Vfmw_UpdataLastPicRNDCTRL, %function
VC1_Vfmw_UpdataLastPicRNDCTRL:
	.fnstart
.LFB1974:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L43	@,
	movw	r1, #10603	@ tmp143,
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ D.41576, <variable>.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.41576,
	cmpne	r3, #4	@, D.41576,
	moveq	r3, #1	@ prephitmp.885,
	moveq	r2, r3	@ prephitmp.883, prephitmp.885
	beq	.L45	@,
	cmp	r3, #1	@ D.41576,
	beq	.L48	@,
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ prephitmp.883, <variable>.LastPicRNDCTRL
	mov	r3, r2	@ prephitmp.885, prephitmp.883
.L45:
	movw	ip, #10622	@ tmp154,
	strb	r2, [r0, #10]	@ prephitmp.883, <variable>.LastPicRNDCTRL
	strb	r3, [r0, ip]	@ prephitmp.885, <variable>.SMPPicSyntax.RNDCTRL
.L43:
	mov	r0, #1	@,
	bx	lr	@
.L48:
	ldrsb	r2, [r0, #10]	@ <variable>.LastPicRNDCTRL, <variable>.LastPicRNDCTRL
	rsbs	r2, r2, #1	@ prephitmp.883, <variable>.LastPicRNDCTRL
	movcc	r2, #0	@ prephitmp.883
	mov	r3, r2	@ prephitmp.885, prephitmp.883
	b	.L45	@
	.fnend
	.size	VC1_Vfmw_UpdataLastPicRNDCTRL, .-VC1_Vfmw_UpdataLastPicRNDCTRL
	.align	2
	.global	VC1_Vfmw_DecPQUANT
	.type	VC1_Vfmw_DecPQUANT, %function
VC1_Vfmw_DecPQUANT:
	.fnstart
.LFB1975:
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
.LFB1980:
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
.LFB1979:
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
	add	r0, r0, #80896	@ D.41679, pCtx,
	add	r0, r0, #508	@ D.41679, D.41679,
	str	r0, [r4, r2]	@ D.41679, <variable>.CodecInfo.pBs
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
.LFB1977:
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
.LFB1978:
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
	add	r4, r7, #22528	@ ivtmp.1026, pCodeInfo,
	mov	r5, #0	@ i,
	add	r4, r4, #124	@ ivtmp.1026, ivtmp.1026,
	b	.L72	@
.L71:
	ldr	lr, [r7, r8]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r4, r4, #48	@ ivtmp.1026, ivtmp.1026,
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
	add	r4, r4, #48	@ ivtmp.1026, ivtmp.1026,
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
.LFB1937:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #532
	sub	sp, sp, #532	@,,
	movw	r6, #:lower16:__stack_chk_guard	@,
	movt	r6, #:upper16:__stack_chk_guard	@,
	str	r6, [sp, #4]	@, %sfp
	add	r6, r0, #22528	@ tmp202, pCodecInf,
	ldr	sl, [sp, #4]	@, %sfp
	mov	r4, r0	@ pCodecInf, pCodecInf
	mov	r5, r1	@ PicType, PicType
	add	r0, r6, #64	@, tmp202,
	mov	r1, #16	@,
	mov	r8, r3	@ IsTop, IsTop
	ldr	ip, [sl, #0]	@ __stack_chk_guard, __stack_chk_guard
	mov	r7, r2	@ SndFld, SndFld
	str	ip, [sp, #524]	@ __stack_chk_guard, D.42607
	bl	__memzero	@
	add	r0, r6, #80	@, tmp202,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrsb	r3, [r4, #4]	@ D.39494, <variable>.PicStructure
	cmp	r3, #0	@ D.39494,
	cmpne	r3, #2	@, D.39494,
	bne	.L77	@,
	cmp	r5, #1	@ PicType,
	beq	.L140	@,
	cmp	r5, #2	@ PicType,
	beq	.L141	@,
.L110:
	movw	r0, #22596	@ tmp605,
	mov	ip, #0	@ tmp604,
	movw	r1, #22612	@ tmp603,
	str	ip, [r4, r0]	@ tmp604, <variable>.RefList0.ListLen
	mov	r0, #1	@ D.39642,
	str	ip, [r4, r1]	@ tmp604, <variable>.RefList1.ListLen
.L93:
	ldr	r2, [sp, #4]	@, %sfp
	ldr	lr, [sp, #524]	@ D.42607, D.42607
	ldr	r3, [r2, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	lr, r3	@ D.42607, __stack_chk_guard
	bne	.L142	@,
	add	sp, sp, #532	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L77:
	movw	r1, #10704	@ tmp394,
	ldrb	r6, [r4, r1]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r6, #1	@ <variable>.AdvPicSyntax.TFF,
	beq	.L143	@,
	movw	r1, #10741	@ tmp404,
	ldrb	r6, [r4, r1]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r6, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L144	@,
.L97:
	movw	r0, #22552	@ tmp411,
	ldr	lr, [r4, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	r6, [lr, #1208]	@ TopRefIdx, <variable>.img.image_id
	mov	sl, r6	@ BotRefIdx, TopRefIdx
.L96:
	cmp	r5, #1	@ PicType,
	beq	.L145	@,
.L98:
	cmp	r5, #2	@ PicType,
	bne	.L110	@,
	cmp	r7, #0	@ SndFld,
	movw	lr, #22596	@ tmp525,
	movw	r3, #22612	@ tmp523,
	movw	r0, #22592	@ tmp527,
	movw	r2, #22593	@ tmp530,
	str	r5, [r4, lr]	@ PicType, <variable>.RefList0.ListLen
	str	r5, [r4, r3]	@ PicType, <variable>.RefList1.ListLen
	mov	r1, #0	@ tmp528,
	mov	r5, #1	@ tmp531,
	strb	r1, [r4, r0]	@ tmp528, <variable>.RefList0.FldFlag
	strb	r5, [r4, r2]	@ tmp531, <variable>.RefList0.FldFlag
	beq	.L111	@,
	cmp	r8, #0	@ IsTop,
	beq	.L112	@,
.L111:
	movw	r2, #22552	@ tmp540,
	ldr	r1, [r4, r2]	@ <variable>.pRef,
	ldr	r2, [r1, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
.L138:
	movw	lr, #22600	@ tmp538,
	movw	r5, #22548	@ tmp549,
	str	r2, [r4, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	ip, #22609	@ tmp545,
	ldr	lr, [r4, r5]	@ <variable>.pRef, <variable>.pRef
	movw	r2, #22608	@ tmp542,
	mov	r0, #0	@ tmp543,
	mov	r1, #1	@ tmp546,
	strb	r0, [r4, r2]	@ tmp543, <variable>.RefList1.FldFlag
	movw	r3, #10828	@ tmp558,
	strb	r1, [r4, ip]	@ tmp546, <variable>.RefList1.FldFlag
	movw	r5, #22616	@ tmp550,
	ldr	r1, [lr, #1208]	@ temp.1306, <variable>.img.image_id
	movw	r2, #22544	@ tmp557,
	ldr	r3, [r4, r3]	@ D.39584, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	ip, #22620	@ tmp551,
	movw	r0, #22600	@ tmp555,
	str	r1, [r4, r5]	@ temp.1306, <variable>.RefList1.ImgObj
	cmp	r3, #1	@ D.39584,
	ldr	r5, [lr, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
	ldr	lr, [r4, r2]	@ <variable>.pCurFrm, <variable>.pCurFrm
	ldr	r0, [r4, r0]	@ FwdRefIdx.1310, <variable>.RefList0.ImgObj
	str	r5, [r4, ip]	@ <variable>.img.image_id, <variable>.RefList1.ImgObj
	ldr	ip, [lr, #1208]	@ CurRefIdx.1313, <variable>.img.image_id
	bls	.L146	@,
.L115:
	cmp	r3, #0	@ D.39584,
	cmpne	r3, #2	@, D.39584,
	beq	.L117	@,
.L119:
	movw	r6, #1432	@ tmp569,
	mov	r3, r4	@ ivtmp.1198, pCodecInf
	mla	r8, r6, ip, r4	@ ivtmp.1215, tmp569, CurRefIdx.1313, pCodecInf
	mov	fp, #0	@ i.1329,
	mla	r7, r6, r0, r4	@ ivtmp.1196, tmp569, FwdRefIdx.1310, pCodecInf
	mla	r9, r6, r1, r4	@ ivtmp.1206, tmp569, temp.1306, pCodecInf
	add	ip, r8, #13952	@ ivtmp.1215, ivtmp.1215,
	add	r0, r7, #13952	@ ivtmp.1196, ivtmp.1196,
	add	r1, r9, #13952	@ ivtmp.1206, ivtmp.1206,
	mov	r9, r4	@ pCodecInf, pCodecInf
.L118:
	ldrb	r7, [r0, #3]	@ zero_extendqisi2	@ tmp579, <variable>.IntensityConvertTab
	add	r8, r9, fp	@ D.42492, pCodecInf, i.1329
	add	r2, r0, #1	@ tmp640, ivtmp.1196,
	add	lr, r3, #1	@ tmp641, ivtmp.1198,
	add	r5, r1, #1	@ tmp642, ivtmp.1206,
	add	r4, ip, #1	@ tmp643, ivtmp.1215,
	strb	r7, [r3, #13]	@ tmp579, <variable>.IntensityConvertTab
	add	fp, fp, #1	@ tmp639, i.1329,
	ldrb	r6, [r0, #259]	@ zero_extendqisi2	@ tmp581, <variable>.IntensityConvertTab
	add	r7, r9, fp	@ D.42492, pCodecInf, tmp639
	add	fp, fp, #1	@ i.1329, tmp639,
	cmp	fp, #256	@ i.1329,
	strb	r6, [r3, #269]	@ tmp581, <variable>.IntensityConvertTab
	ldrb	sl, [r0, #515]	@ zero_extendqisi2	@ tmp583, <variable>.IntensityConvertTab
	strb	sl, [r3, #525]	@ tmp583, <variable>.IntensityConvertTab
	ldrb	r6, [r0, #771]	@ zero_extendqisi2	@ tmp585, <variable>.IntensityConvertTab
	add	r0, r2, #1	@ ivtmp.1196, tmp640,
	strb	r6, [r3, #781]	@ tmp585, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #3]	@ zero_extendqisi2	@ tmp587, <variable>.IntensityConvertTab
	strb	sl, [r3, #1037]	@ tmp587, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #259]	@ zero_extendqisi2	@ tmp589, <variable>.IntensityConvertTab
	strb	r6, [r3, #1293]	@ tmp589, <variable>.IntensityConvertTab
	ldrb	sl, [r1, #515]	@ zero_extendqisi2	@ tmp591, <variable>.IntensityConvertTab
	strb	sl, [r3, #1549]	@ tmp591, <variable>.IntensityConvertTab
	ldrb	r6, [r1, #771]	@ zero_extendqisi2	@ tmp593, <variable>.IntensityConvertTab
	add	r1, r5, #1	@ ivtmp.1206, tmp642,
	strb	r6, [r3, #1805]	@ tmp593, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1198, tmp641,
	ldrb	sl, [ip, #3]	@ zero_extendqisi2	@ tmp595, <variable>.IntensityConvertTab
	strb	sl, [r8, #2061]	@ tmp595, <variable>.IntensityConvertTab
	ldrb	r6, [ip, #259]	@ zero_extendqisi2	@ tmp597, <variable>.IntensityConvertTab
	strb	r6, [r8, #2317]	@ tmp597, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #515]	@ zero_extendqisi2	@ tmp599, <variable>.IntensityConvertTab
	strb	sl, [r8, #2573]	@ tmp599, <variable>.IntensityConvertTab
	ldrb	sl, [ip, #771]	@ zero_extendqisi2	@ tmp601, <variable>.IntensityConvertTab
	add	ip, r4, #1	@ ivtmp.1215, tmp643,
	strb	sl, [r8, #2829]	@ tmp601, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #3]	@ zero_extendqisi2	@ tmp724, <variable>.IntensityConvertTab
	strb	r6, [lr, #13]	@ tmp724, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #259]	@ zero_extendqisi2	@ tmp725, <variable>.IntensityConvertTab
	strb	r8, [lr, #269]	@ tmp725, <variable>.IntensityConvertTab
	ldrb	r8, [r2, #515]	@ zero_extendqisi2	@ tmp726, <variable>.IntensityConvertTab
	strb	r8, [lr, #525]	@ tmp726, <variable>.IntensityConvertTab
	ldrb	r6, [r2, #771]	@ zero_extendqisi2	@ tmp727, <variable>.IntensityConvertTab
	strb	r6, [lr, #781]	@ tmp727, <variable>.IntensityConvertTab
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ tmp728, <variable>.IntensityConvertTab
	strb	r2, [lr, #1037]	@ tmp728, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #259]	@ zero_extendqisi2	@ tmp729, <variable>.IntensityConvertTab
	strb	r6, [lr, #1293]	@ tmp729, <variable>.IntensityConvertTab
	ldrb	r6, [r5, #515]	@ zero_extendqisi2	@ tmp730, <variable>.IntensityConvertTab
	strb	r6, [lr, #1549]	@ tmp730, <variable>.IntensityConvertTab
	ldrb	r5, [r5, #771]	@ zero_extendqisi2	@ tmp731, <variable>.IntensityConvertTab
	strb	r5, [lr, #1805]	@ tmp731, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ tmp733, <variable>.IntensityConvertTab
	strb	r2, [r7, #2061]	@ tmp733, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #259]	@ zero_extendqisi2	@ tmp734, <variable>.IntensityConvertTab
	strb	lr, [r7, #2317]	@ tmp734, <variable>.IntensityConvertTab
	ldrb	r2, [r4, #515]	@ zero_extendqisi2	@ tmp735, <variable>.IntensityConvertTab
	strb	r2, [r7, #2573]	@ tmp735, <variable>.IntensityConvertTab
	ldrb	lr, [r4, #771]	@ zero_extendqisi2	@ tmp736, <variable>.IntensityConvertTab
	strb	lr, [r7, #2829]	@ tmp736, <variable>.IntensityConvertTab
	bne	.L118	@,
	mov	r0, #1	@ D.39642,
	b	.L93	@
.L144:
	movw	sl, #22552	@ tmp407,
	movw	ip, #22548	@ tmp409,
	ldr	r2, [r4, sl]	@ <variable>.pRef, <variable>.pRef
	cmp	r5, #1	@ PicType,
	ldr	r3, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	ldr	r6, [r2, #1208]	@ TopRefIdx, <variable>.img.image_id
	ldr	sl, [r3, #1208]	@ BotRefIdx, <variable>.img.image_id
	bne	.L98	@,
.L145:
	movw	r0, #10732	@ tmp413,
	cmp	r7, #0	@ SndFld,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.NUMREF, <variable>.AdvPicSyntax.NUMREF
	movw	r3, #22593	@ tmp421,
	movw	r2, #22596	@ tmp412,
	movw	r1, #22592	@ tmp418,
	movw	r7, #22612	@ tmp416,
	strb	r5, [r4, r3]	@ PicType, <variable>.RefList0.FldFlag
	add	ip, lr, #1	@ tmp415, <variable>.AdvPicSyntax.NUMREF,
	mov	r3, #0	@ tmp417,
	str	ip, [r4, r2]	@ tmp415, <variable>.RefList0.ListLen
	strb	r3, [r4, r1]	@ tmp417, <variable>.RefList0.FldFlag
	str	r3, [r4, r7]	@ tmp417, <variable>.RefList1.ListLen
	beq	.L99	@,
	cmp	r8, r3	@ IsTop,
	beq	.L100	@,
.L99:
	movw	ip, #22552	@ tmp431,
	ldr	r1, [r4, ip]	@ <variable>.pRef,
	ldr	r2, [r1, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
.L137:
	movw	ip, #22552	@ tmp435,
	movw	r3, #10828	@ tmp440,
	ldr	r8, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	movw	lr, #22600	@ tmp429,
	ldr	r3, [r4, r3]	@ prephitmp.1067, <variable>.AdvPicSyntax.INTCOMPFIELD
	movw	r1, #22544	@ tmp439,
	str	r2, [r4, lr]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	movw	r7, #22600	@ tmp437,
	ldr	lr, [r8, #1208]	@ <variable>.img.image_id, <variable>.img.image_id
	cmp	r3, #1	@ prephitmp.1067,
	ldr	r2, [r4, r1]	@ <variable>.pCurFrm, <variable>.pCurFrm
	movw	r0, #22604	@ tmp433,
	ldr	r8, [r4, r7]	@ FwdRefIdx, <variable>.RefList0.ImgObj
	str	lr, [r4, r0]	@ <variable>.img.image_id, <variable>.RefList0.ImgObj
	ldr	r7, [r2, #1208]	@ CurRefIdx, <variable>.img.image_id
	bls	.L147	@,
.L103:
	rsbs	r2, r3, #1	@ D.39599, prephitmp.1067
	movcc	r2, #0	@ D.39599
	cmp	r3, #0	@ prephitmp.1067,
	cmpne	r3, #2	@, prephitmp.1067,
	bne	.L105	@,
	movw	r3, #10714	@ tmp471,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	beq	.L148	@,
.L105:
	movw	r0, #1432	@ tmp499,
	add	r3, r4, #780	@ ivtmp.1164, pCodecInf,
	mla	r1, r0, r7, r4	@ tmp506, tmp499, CurRefIdx, pCodecInf
	add	r3, r3, #1	@ ivtmp.1164, ivtmp.1164,
	mla	r2, r0, r8, r4	@ tmp501, tmp499, FwdRefIdx, pCodecInf
	mov	r0, #0	@ i.1296,
	add	ip, r1, #13952	@ ivtmp.1165, tmp506,
	add	r1, ip, #3	@ ivtmp.1165, ivtmp.1165,
	add	r4, r2, #13952	@ ivtmp.1155, tmp501,
	add	r2, r4, #3	@ ivtmp.1155, ivtmp.1155,
.L109:
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp507, <variable>.IntensityConvertTab
	add	lr, r3, #1	@ tmp633, ivtmp.1164,
	add	r0, r0, #2	@ i.1296, i.1296,
	cmp	r0, #256	@ i.1296,
	strb	r4, [r3, #-768]	@ tmp507, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #256]	@ zero_extendqisi2	@ tmp509, <variable>.IntensityConvertTab
	strb	ip, [r3, #-512]	@ tmp509, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp511, <variable>.IntensityConvertTab
	strb	r4, [r3, #-256]	@ tmp511, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #768]	@ zero_extendqisi2	@ tmp513, <variable>.IntensityConvertTab
	strb	ip, [r3, #0]	@ tmp513, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp515, <variable>.IntensityConvertTab
	strb	r4, [r3, #1280]	@ tmp515, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #256]	@ zero_extendqisi2	@ tmp517, <variable>.IntensityConvertTab
	strb	ip, [r3, #1536]	@ tmp517, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #512]	@ zero_extendqisi2	@ tmp519, <variable>.IntensityConvertTab
	strb	r4, [r3, #1792]	@ tmp519, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #768]	@ zero_extendqisi2	@ tmp521, <variable>.IntensityConvertTab
	strb	ip, [r3, #2048]	@ tmp521, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp711, <variable>.IntensityConvertTab
	strb	r4, [r3, #-767]	@ tmp711, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #257]	@ zero_extendqisi2	@ tmp712, <variable>.IntensityConvertTab
	strb	ip, [r3, #-511]	@ tmp712, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp713, <variable>.IntensityConvertTab
	strb	r4, [lr, #-256]	@ tmp713, <variable>.IntensityConvertTab
	ldrb	ip, [r2, #769]	@ zero_extendqisi2	@ tmp714, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1155, ivtmp.1155,
	strb	ip, [r3, #1]	@ tmp714, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ tmp715, <variable>.IntensityConvertTab
	strb	r4, [r3, #1281]	@ tmp715, <variable>.IntensityConvertTab
	ldrb	ip, [r1, #257]	@ zero_extendqisi2	@ tmp716, <variable>.IntensityConvertTab
	strb	ip, [r3, #1537]	@ tmp716, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #513]	@ zero_extendqisi2	@ tmp717, <variable>.IntensityConvertTab
	strb	r4, [r3, #1793]	@ tmp717, <variable>.IntensityConvertTab
	ldrb	r4, [r1, #769]	@ zero_extendqisi2	@ tmp718, <variable>.IntensityConvertTab
	add	r1, r1, #2	@ ivtmp.1165, ivtmp.1165,
	strb	r4, [r3, #2049]	@ tmp718, <variable>.IntensityConvertTab
	add	r3, lr, #1	@ ivtmp.1164, tmp633,
	bne	.L109	@,
	mov	r0, #1	@ D.39642,
	b	.L93	@
.L140:
	movw	ip, #22552	@ tmp222,
	ldrb	r7, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	ldr	r2, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	movw	r3, #22596	@ tmp214,
	movw	lr, #22592	@ tmp218,
	movw	r1, #22612	@ tmp216,
	str	r5, [r4, r3]	@ PicType, <variable>.RefList0.ListLen
	mov	r5, #0	@ tmp217,
	strb	r5, [r4, lr]	@ tmp217, <variable>.RefList0.FldFlag
	cmp	r7, r5	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r5, [r4, r1]	@ tmp217, <variable>.RefList1.ListLen
	movw	r0, #22600	@ tmp223,
	ldr	r5, [r2, #1208]	@ D.39504, <variable>.img.image_id
	str	r5, [r4, r0]	@ D.39504, <variable>.RefList0.ImgObj
	beq	.L79	@,
	movw	r6, #10744	@ tmp230,
	movw	r7, #10716	@ tmp227,
	ldr	r1, [r4, r6]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	movw	r2, #10717	@ tmp228,
	movw	r0, #10714	@ tmp229,
	ldrb	r6, [r4, r7]	@ zero_extendqisi2	@ LUMSCALE.1225, <variable>.AdvPicSyntax.LUMSCALE
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ LUMSHIFT.1226, <variable>.AdvPicSyntax.LUMSHIFT
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ MVMODE, <variable>.AdvPicSyntax.MVMODE
	beq	.L149	@,
.L80:
	cmp	r3, #4	@ MVMODE,
	beq	.L81	@,
.L84:
	movw	ip, #1432	@ tmp238,
	mov	r2, r4	@ ivtmp.1094, pCodecInf
	mla	lr, ip, r5, r4	@ tmp240, tmp238, D.39504, pCodecInf
	mov	r0, #0	@ i.1231,
	add	r1, lr, #13952	@ ivtmp.1091, tmp240,
	add	r3, r1, #3	@ ivtmp.1091, ivtmp.1091,
.L82:
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ tmp273, <variable>.IntensityConvertTab
	add	r1, r2, #1	@ tmp624, ivtmp.1094,
	add	r0, r0, #2	@ i.1231, i.1231,
	cmp	r0, #256	@ i.1231,
	strb	lr, [r2, #13]	@ tmp273, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #256]	@ zero_extendqisi2	@ tmp275, <variable>.IntensityConvertTab
	strb	ip, [r2, #269]	@ tmp275, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #512]	@ zero_extendqisi2	@ tmp277, <variable>.IntensityConvertTab
	strb	lr, [r2, #525]	@ tmp277, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #768]	@ zero_extendqisi2	@ tmp279, <variable>.IntensityConvertTab
	strb	ip, [r2, #781]	@ tmp279, <variable>.IntensityConvertTab
	add	r2, r1, #1	@ ivtmp.1094, tmp624,
	ldrb	lr, [r3, #1]	@ zero_extendqisi2	@ tmp667, <variable>.IntensityConvertTab
	strb	lr, [r1, #13]	@ tmp667, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #257]	@ zero_extendqisi2	@ tmp668, <variable>.IntensityConvertTab
	strb	ip, [r1, #269]	@ tmp668, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #513]	@ zero_extendqisi2	@ tmp669, <variable>.IntensityConvertTab
	strb	lr, [r1, #525]	@ tmp669, <variable>.IntensityConvertTab
	ldrb	ip, [r3, #769]	@ zero_extendqisi2	@ tmp670, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1091, ivtmp.1091,
	strb	ip, [r1, #781]	@ tmp670, <variable>.IntensityConvertTab
	bne	.L82	@,
	mov	r0, #1	@ D.39642,
	b	.L93	@
.L143:
	movw	r2, #10741	@ tmp396,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.CurParity, <variable>.AdvPicSyntax.CurParity
	cmp	r3, #0	@ <variable>.AdvPicSyntax.CurParity,
	beq	.L97	@,
	movw	r0, #22548	@ tmp401,
	movw	lr, #22552	@ tmp403,
	ldr	sl, [r4, r0]	@ <variable>.pRef, <variable>.pRef
	ldr	ip, [r4, lr]	@ <variable>.pRef, <variable>.pRef
	ldr	r6, [sl, #1208]	@ TopRefIdx, <variable>.img.image_id
	ldr	sl, [ip, #1208]	@ BotRefIdx, <variable>.img.image_id
	b	.L96	@
.L141:
	movw	r1, #22552	@ tmp289,
	movw	ip, #22548	@ tmp295,
	ldr	r6, [r4, r1]	@ <variable>.pRef, <variable>.pRef
	movw	r0, #22596	@ tmp283,
	movw	r3, #22612	@ tmp281,
	movw	r5, #22592	@ tmp285,
	mov	r2, #1	@ tmp282,
	ldr	r1, [r4, ip]	@ <variable>.pRef, <variable>.pRef
	str	r2, [r4, r0]	@ tmp282, <variable>.RefList0.ListLen
	mov	lr, #0	@ tmp286,
	str	r2, [r4, r3]	@ tmp282, <variable>.RefList1.ListLen
	movw	ip, #22608	@ tmp291,
	strb	lr, [r4, r5]	@ tmp286, <variable>.RefList0.FldFlag
	movw	r0, #22600	@ tmp290,
	ldr	r5, [r6, #1208]	@ temp.1234, <variable>.img.image_id
	movw	r2, #22616	@ tmp296,
	ldrb	r6, [r4, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	strb	lr, [r4, ip]	@ tmp286, <variable>.RefList1.FldFlag
	cmp	r6, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	str	r5, [r4, r0]	@ temp.1234, <variable>.RefList0.ImgObj
	ldr	r6, [r1, #1208]	@ D.39539, <variable>.img.image_id
	str	r6, [r4, r2]	@ D.39539, <variable>.RefList1.ImgObj
	movwne	r2, #10716	@ tmp300,
	movweq	r2, #10613	@ tmp303,
	ldrneb	r7, [r4, r2]	@ zero_extendqisi2	@ LUMSCALE, <variable>.AdvPicSyntax.LUMSCALE
	ldreqb	r7, [r4, r2]	@ zero_extendqisi2	@ LUMSCALE, <variable>.SMPPicSyntax.LUMSCALE
	movwne	r2, #10717	@ tmp301,
	movweq	r2, #10614	@ tmp304,
	ldrneb	r8, [r4, r2]	@ zero_extendqisi2	@ LUMSHIFT, <variable>.AdvPicSyntax.LUMSHIFT
	ldreqb	r8, [r4, r2]	@ zero_extendqisi2	@ LUMSHIFT, <variable>.SMPPicSyntax.LUMSHIFT
	movwne	r2, #10714	@ tmp302,
	movweq	r2, #10611	@ tmp305,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ MVMODE.1223,
	cmp	r3, #4	@ MVMODE.1223,
	beq	.L89	@,
.L92:
	movw	r3, #1432	@ tmp307,
	mov	r1, r4	@ ivtmp.1119, pCodecInf
	mla	r0, r3, r6, r4	@ tmp313, tmp307, D.39539, ivtmp.1119
	mov	ip, #0	@ i.1259,
	mla	lr, r3, r5, r4	@ tmp309, tmp307, temp.1234, pCodecInf
	add	r2, r0, #13952	@ ivtmp.1126, tmp313,
	add	r2, r2, #3	@ ivtmp.1126, ivtmp.1126,
	add	r4, lr, #13952	@ ivtmp.1116, tmp309,
	add	r3, r4, #3	@ ivtmp.1116, ivtmp.1116,
.L90:
	ldrb	r4, [r3, #0]	@ zero_extendqisi2	@ tmp374, <variable>.IntensityConvertTab
	add	lr, r1, #1	@ tmp629, ivtmp.1119,
	add	ip, ip, #2	@ i.1259, i.1259,
	cmp	ip, #256	@ i.1259,
	strb	r4, [r1, #13]	@ tmp374, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #256]	@ zero_extendqisi2	@ tmp376, <variable>.IntensityConvertTab
	strb	r0, [r1, #269]	@ tmp376, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #512]	@ zero_extendqisi2	@ tmp378, <variable>.IntensityConvertTab
	strb	r4, [r1, #525]	@ tmp378, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp380, <variable>.IntensityConvertTab
	strb	r0, [r1, #781]	@ tmp380, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #0]	@ zero_extendqisi2	@ tmp382, <variable>.IntensityConvertTab
	strb	r4, [r1, #1037]	@ tmp382, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #256]	@ zero_extendqisi2	@ tmp384, <variable>.IntensityConvertTab
	strb	r0, [r1, #1293]	@ tmp384, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #512]	@ zero_extendqisi2	@ tmp386, <variable>.IntensityConvertTab
	strb	r4, [r1, #1549]	@ tmp386, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp388, <variable>.IntensityConvertTab
	strb	r0, [r1, #1805]	@ tmp388, <variable>.IntensityConvertTab
	add	r1, lr, #1	@ ivtmp.1119, tmp629,
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@ tmp675, <variable>.IntensityConvertTab
	strb	r4, [lr, #13]	@ tmp675, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #257]	@ zero_extendqisi2	@ tmp676, <variable>.IntensityConvertTab
	strb	r0, [lr, #269]	@ tmp676, <variable>.IntensityConvertTab
	ldrb	r4, [r3, #513]	@ zero_extendqisi2	@ tmp677, <variable>.IntensityConvertTab
	strb	r4, [lr, #525]	@ tmp677, <variable>.IntensityConvertTab
	ldrb	r0, [r3, #769]	@ zero_extendqisi2	@ tmp678, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1116, ivtmp.1116,
	strb	r0, [lr, #781]	@ tmp678, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ tmp679, <variable>.IntensityConvertTab
	strb	r4, [lr, #1037]	@ tmp679, <variable>.IntensityConvertTab
	ldrb	r0, [r2, #257]	@ zero_extendqisi2	@ tmp680, <variable>.IntensityConvertTab
	strb	r0, [lr, #1293]	@ tmp680, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #513]	@ zero_extendqisi2	@ tmp681, <variable>.IntensityConvertTab
	strb	r4, [lr, #1549]	@ tmp681, <variable>.IntensityConvertTab
	ldrb	r4, [r2, #769]	@ zero_extendqisi2	@ tmp682, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ ivtmp.1126, ivtmp.1126,
	strb	r4, [lr, #1805]	@ tmp682, <variable>.IntensityConvertTab
	bne	.L90	@,
	mov	r0, #1	@ D.39642,
	b	.L93	@
.L79:
	movw	r2, #10613	@ tmp234,
	movw	r0, #10614	@ tmp235,
	movw	r3, #10611	@ tmp236,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ LUMSCALE.1225, <variable>.SMPPicSyntax.LUMSCALE
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ LUMSHIFT.1226, <variable>.SMPPicSyntax.LUMSHIFT
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ MVMODE, <variable>.SMPPicSyntax.MVMODE
	b	.L80	@
.L117:
	movw	r2, #10714	@ tmp577,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L119	@,
	mov	r0, #0	@ D.39642,
	b	.L93	@
.L100:
	movw	r7, #22544	@ tmp427,
	ldr	r8, [r4, r7]	@ <variable>.pCurFrm,
	ldr	r2, [r8, #1208]	@ iftmp.561, <variable>.img.image_id
	b	.L137	@
.L112:
	movw	r5, #22544	@ tmp536,
	ldr	ip, [r4, r5]	@ <variable>.pCurFrm,
	ldr	r2, [ip, #1208]	@ iftmp.567, <variable>.img.image_id
	b	.L138	@
.L147:
	movw	r0, #10714	@ tmp441,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L103	@,
	movw	lr, #10716	@ tmp443,
	add	ip, lr, #1	@ tmp444, tmp444,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ temp.1285, <variable>.AdvPicSyntax.LUMSCALE
	add	r0, sp, #268	@,,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ temp.1286, <variable>.AdvPicSyntax.LUMSHIFT
	mov	r3, #0	@,
	mov	r1, r9	@, temp.1285
	mov	r2, r5	@, temp.1286
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r5	@, temp.1286
	mov	r1, r9	@, temp.1285
	mov	r3, #1	@,
	add	r0, sp, #12	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r3, #1432	@ tmp448,
	mla	r1, r3, r6, r4	@ tmp450, tmp448, TopRefIdx, pCodecInf
	mov	r2, #0	@ i.1287,
	add	r5, r1, #13952	@ tmp450, tmp450,
	add	r3, r5, #3	@ ivtmp.1187, tmp450,
.L104:
	ldrb	r5, [r3, #0]	@ zero_extendqisi2	@ tmp451, <variable>.IntensityConvertTab
	add	ip, sp, #528	@,,
	ldrb	lr, [r3, #256]	@ zero_extendqisi2	@ tmp457, <variable>.IntensityConvertTab
	add	r1, sp, #528	@,,
	add	r6, ip, r5	@ tmp453,, tmp451
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ tmp685, <variable>.IntensityConvertTab
	add	ip, r1, lr	@ tmp459,, tmp457
	ldrb	r1, [r3, #257]	@ zero_extendqisi2	@ tmp690, <variable>.IntensityConvertTab
	ldrb	r5, [r6, #-260]	@ zero_extendqisi2	@ tmp455, LUTY
	add	r6, sp, #528	@,,
	add	lr, r6, r0	@ tmp687,, tmp685
	add	r1, r6, r1	@ tmp692,, tmp690
	add	r2, r2, #2	@ i.1287, i.1287,
	strb	r5, [r3, #0]	@ tmp455, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i.1287,
	ldrb	ip, [ip, #-516]	@ zero_extendqisi2	@ tmp461, LUTUV
	strb	ip, [r3, #256]	@ tmp461, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-260]	@ zero_extendqisi2	@ tmp689, LUTY
	strb	ip, [r3, #1]	@ tmp689, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-516]	@ zero_extendqisi2	@ tmp694, LUTUV
	strb	r0, [r3, #257]	@ tmp694, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1187, ivtmp.1187,
	bne	.L104	@,
	movw	r2, #10828	@ tmp463,
	ldr	r3, [r4, r2]	@ prephitmp.1067, <variable>.AdvPicSyntax.INTCOMPFIELD
	b	.L103	@
.L146:
	movw	lr, #10714	@ tmp559,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r2, #4	@ <variable>.AdvPicSyntax.MVMODE,
	bne	.L115	@,
	mov	r0, #0	@ D.39642,
	b	.L93	@
.L149:
	movw	ip, #10820	@ tmp232,
	ldr	lr, [r4, ip]	@ <variable>.AdvPicSyntax.INTCOMP, <variable>.AdvPicSyntax.INTCOMP
	cmp	lr, #1	@ <variable>.AdvPicSyntax.INTCOMP,
	bne	.L80	@,
.L81:
	mov	r2, r7	@, LUMSHIFT.1226
	add	r0, sp, #268	@,,
	mov	r1, r6	@, LUMSCALE.1225
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r7	@, LUMSHIFT.1226
	movw	r7, #1432	@ tmp246,
	mov	r3, #1	@,
	mla	sl, r7, r5, r4	@ tmp248, tmp246, D.39504, pCodecInf
	mov	r1, r6	@, LUMSCALE.1225
	add	r0, sp, #12	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, #0	@ i,
	add	r8, sl, #13952	@ ivtmp.1106, tmp248,
	add	r3, r8, #3	@ ivtmp.1106, ivtmp.1106,
.L83:
	ldrb	lr, [r3, #0]	@ zero_extendqisi2	@ tmp249, <variable>.IntensityConvertTab
	add	ip, sp, #528	@,,
	ldrb	r1, [r3, #256]	@ zero_extendqisi2	@ tmp255, <variable>.IntensityConvertTab
	add	r2, r2, #2	@ i, i,
	add	r0, ip, lr	@ tmp251,, tmp249
	ldrb	r8, [r3, #512]	@ zero_extendqisi2	@ tmp261, <variable>.IntensityConvertTab
	add	lr, ip, r1	@ tmp257,, tmp255
	ldrb	r7, [r3, #768]	@ zero_extendqisi2	@ tmp267, <variable>.IntensityConvertTab
	ldrb	sl, [r0, #-260]	@ zero_extendqisi2	@ tmp253, LUTY
	add	r8, ip, r8	@ tmp263,, tmp261
	add	r7, ip, r7	@ tmp269,, tmp267
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp646, <variable>.IntensityConvertTab
	add	r0, sp, #528	@,,
	ldrb	ip, [r3, #257]	@ zero_extendqisi2	@ tmp651, <variable>.IntensityConvertTab
	strb	sl, [r3, #0]	@ tmp253, <variable>.IntensityConvertTab
	add	r6, r0, r6	@ tmp648,, tmp646
	ldrb	sl, [lr, #-516]	@ zero_extendqisi2	@ tmp259, LUTUV
	add	lr, r0, ip	@ tmp653,, tmp651
	ldrb	r0, [r3, #513]	@ zero_extendqisi2	@ tmp656, <variable>.IntensityConvertTab
	cmp	r2, #256	@ i,
	ldrb	r1, [r3, #769]	@ zero_extendqisi2	@ tmp660, <variable>.IntensityConvertTab
	strb	sl, [r3, #256]	@ tmp259, <variable>.IntensityConvertTab
	add	sl, sp, #528	@,,
	ldrb	r8, [r8, #-260]	@ zero_extendqisi2	@ tmp265, LUTY
	add	r0, sl, r0	@ tmp657,, tmp656
	add	r1, sl, r1	@ tmp661,, tmp660
	strb	r8, [r3, #512]	@ tmp265, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-516]	@ zero_extendqisi2	@ tmp271, LUTUV
	strb	r7, [r3, #768]	@ tmp271, <variable>.IntensityConvertTab
	ldrb	r6, [r6, #-260]	@ zero_extendqisi2	@ tmp650, LUTY
	strb	r6, [r3, #1]	@ tmp650, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-516]	@ zero_extendqisi2	@ tmp655, LUTUV
	strb	ip, [r3, #257]	@ tmp655, <variable>.IntensityConvertTab
	ldrb	lr, [r0, #-260]	@ zero_extendqisi2	@ tmp659, LUTY
	strb	lr, [r3, #513]	@ tmp659, <variable>.IntensityConvertTab
	ldrb	r0, [r1, #-516]	@ zero_extendqisi2	@ tmp663, LUTUV
	strb	r0, [r3, #769]	@ tmp663, <variable>.IntensityConvertTab
	add	r3, r3, #2	@ ivtmp.1106, ivtmp.1106,
	bne	.L83	@,
	b	.L84	@
.L148:
	cmp	r2, #0	@ D.39599,
	add	r0, sp, #268	@,,
	movwne	r3, #10832	@ tmp473,
	movweq	r3, #10716	@ tmp477,
	ldrneb	r6, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE.1330, <variable>.AdvPicSyntax.LUMSCALE2
	addne	r3, r3, #4	@ tmp475, tmp475,
	ldreqb	r6, [r4, r3]	@ zero_extendqisi2	@ LUMSCALE.1330, <variable>.AdvPicSyntax.LUMSCALE
	addeq	r3, r3, #1	@ tmp478, tmp478,
	ldrb	r5, [r4, r3]	@ zero_extendqisi2	@ LUMSHIFT.1224,
	mov	r3, #0	@,
	mov	r1, r6	@, LUMSCALE.1330
	mov	r2, r5	@, LUMSHIFT.1224
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r2, r5	@, LUMSHIFT.1224
	add	r0, sp, #12	@,,
	mov	r1, r6	@, LUMSCALE.1330
	mov	r3, #1	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r0, #1432	@ tmp484,
	mla	sl, r0, sl, r4	@ ivtmp.1180, tmp484, BotRefIdx, pCodecInf
	mov	r2, #0	@ i.1291,
	add	sl, sl, #13952	@ ivtmp.1180, ivtmp.1180,
.L108:
	ldrb	lr, [sl, #515]	@ zero_extendqisi2	@ tmp486, <variable>.IntensityConvertTab
	add	ip, sp, #528	@,,
	ldrb	r1, [sl, #771]	@ zero_extendqisi2	@ tmp492, <variable>.IntensityConvertTab
	add	r3, sl, #1	@ tmp635, ivtmp.1180,
	add	r0, ip, lr	@ tmp488,, tmp486
	add	r2, r2, #2	@ i.1291, i.1291,
	add	lr, ip, r1	@ tmp494,, tmp492
	cmp	r2, #256	@ i.1291,
	ldrb	r0, [r0, #-260]	@ zero_extendqisi2	@ tmp490, LUTY
	strb	r0, [sl, #515]	@ tmp490, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-516]	@ zero_extendqisi2	@ tmp496, LUTUV
	strb	r0, [sl, #771]	@ tmp496, <variable>.IntensityConvertTab
	add	sl, r3, #1	@ ivtmp.1180, tmp635,
	ldrb	r1, [r3, #515]	@ zero_extendqisi2	@ tmp697, <variable>.IntensityConvertTab
	ldrb	lr, [r3, #771]	@ zero_extendqisi2	@ tmp702, <variable>.IntensityConvertTab
	add	r0, ip, r1	@ tmp699,, tmp697
	add	r1, ip, lr	@ tmp704,, tmp702
	ldrb	ip, [r0, #-260]	@ zero_extendqisi2	@ tmp701, LUTY
	strb	ip, [r3, #515]	@ tmp701, <variable>.IntensityConvertTab
	ldrb	lr, [r1, #-516]	@ zero_extendqisi2	@ tmp706, LUTUV
	strb	lr, [r3, #771]	@ tmp706, <variable>.IntensityConvertTab
	bne	.L108	@,
	b	.L105	@
.L89:
	mov	r1, r7	@, LUMSCALE
	mov	r2, r8	@, LUMSHIFT
	add	r0, sp, #268	@,,
	mov	r3, #0	@,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	mov	r1, r7	@, LUMSCALE
	mov	r2, r8	@, LUMSHIFT
	mov	r3, #1	@,
	add	r0, sp, #12	@,,
	bl	VC1_Vfmw_GenerateIntensityMap	@
	movw	r2, #1432	@ tmp319,
	mla	ip, r2, r6, r4	@ tmp325, tmp319, D.39539, pCodecInf
	mov	r1, #0	@ i.1250,
	mla	r7, r2, r5, r4	@ tmp321, tmp319, temp.1234, pCodecInf
	add	r8, ip, #13952	@ ivtmp.1145, tmp325,
	add	r2, r8, #3	@ ivtmp.1145, ivtmp.1145,
	add	sl, r7, #13952	@ ivtmp.1140, tmp321,
	add	r3, sl, #3	@ ivtmp.1140, ivtmp.1140,
.L91:
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp326, <variable>.IntensityConvertTab
	add	r0, sp, #528	@,,
	ldrb	r7, [r3, #256]	@ zero_extendqisi2	@ tmp332, <variable>.IntensityConvertTab
	add	ip, sp, #528	@,,
	add	sl, r0, r8	@ tmp328,, tmp326
	ldrb	lr, [r3, #512]	@ zero_extendqisi2	@ tmp338, <variable>.IntensityConvertTab
	add	r7, ip, r7	@ tmp334,, tmp332
	ldrb	r0, [r3, #768]	@ zero_extendqisi2	@ tmp344, <variable>.IntensityConvertTab
	ldrb	r8, [sl, #-260]	@ zero_extendqisi2	@ tmp330, LUTY
	add	sl, sp, #528	@,,
	add	ip, sl, lr	@ tmp340,, tmp338
	add	lr, sl, r0	@ tmp346,, tmp344
	add	r1, r1, #1	@ i.1250, i.1250,
	strb	r8, [r3, #0]	@ tmp330, <variable>.IntensityConvertTab
	cmp	r1, #256	@ i.1250,
	ldrb	r8, [r7, #-516]	@ zero_extendqisi2	@ tmp336, LUTUV
	strb	r8, [r3, #256]	@ tmp336, <variable>.IntensityConvertTab
	ldrb	ip, [ip, #-260]	@ zero_extendqisi2	@ tmp342, LUTY
	strb	ip, [r3, #512]	@ tmp342, <variable>.IntensityConvertTab
	ldrb	r0, [lr, #-516]	@ zero_extendqisi2	@ tmp348, LUTUV
	strb	r0, [r3, #768]	@ tmp348, <variable>.IntensityConvertTab
	add	r3, r3, #1	@ ivtmp.1140, ivtmp.1140,
	ldrb	r7, [r2, #0]	@ zero_extendqisi2	@ tmp350, <variable>.IntensityConvertTab
	ldrb	lr, [r2, #256]	@ zero_extendqisi2	@ tmp356, <variable>.IntensityConvertTab
	add	r8, sl, r7	@ tmp352,, tmp350
	ldrb	ip, [r2, #512]	@ zero_extendqisi2	@ tmp362, <variable>.IntensityConvertTab
	add	r7, sl, lr	@ tmp358,, tmp356
	ldrb	r0, [r2, #768]	@ zero_extendqisi2	@ tmp368, <variable>.IntensityConvertTab
	ldrb	r8, [r8, #-260]	@ zero_extendqisi2	@ tmp354, LUTY
	add	lr, sl, ip	@ tmp364,, tmp362
	add	r0, sl, r0	@ tmp370,, tmp368
	strb	r8, [r2, #0]	@ tmp354, <variable>.IntensityConvertTab
	ldrb	r7, [r7, #-516]	@ zero_extendqisi2	@ tmp360, LUTUV
	strb	r7, [r2, #256]	@ tmp360, <variable>.IntensityConvertTab
	ldrb	ip, [lr, #-260]	@ zero_extendqisi2	@ tmp366, LUTY
	strb	ip, [r2, #512]	@ tmp366, <variable>.IntensityConvertTab
	ldrb	lr, [r0, #-516]	@ zero_extendqisi2	@ tmp372, LUTUV
	strb	lr, [r2, #768]	@ tmp372, <variable>.IntensityConvertTab
	add	r2, r2, #1	@ ivtmp.1145, ivtmp.1145,
	bne	.L91	@,
	b	.L92	@
.L142:
	bl	__stack_chk_fail	@
	.fnend
	.size	VC1_Vfmw_BuildRefList, .-VC1_Vfmw_BuildRefList
	.align	2
	.global	VC1_ReceivePacket
	.type	VC1_ReceivePacket, %function
VC1_ReceivePacket:
	.fnstart
.LFB1976:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	beq	.L156	@,
	ldr	r2, [r4, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113224	@ tmp139,
	movt	r3, #:upper16:113224	@ tmp139,
	movw	lr, #:lower16:113212	@ tmp138,
	movt	lr, #:upper16:113212	@ tmp138,
	movw	ip, #:lower16:113232	@ tmp143,
	str	r2, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113232	@ tmp143,
	ldr	r5, [r4, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113220	@ tmp145,
	movt	r2, #:upper16:113220	@ tmp145,
	movw	r3, #:lower16:113240	@ tmp148,
	movt	r3, #:upper16:113240	@ tmp148,
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
	beq	.L153	@,
	ldr	r5, [r4, #88]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:113228	@ tmp151,
	movt	r3, #:upper16:113228	@ tmp151,
	movw	lr, #:lower16:113216	@ tmp153,
	movt	lr, #:upper16:113216	@ tmp153,
	movw	ip, #:lower16:113236	@ tmp155,
	str	r5, [r0, r3]	@ <variable>.PhyAddr, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	movt	ip, #:upper16:113236	@ tmp155,
	ldr	r5, [r4, #80]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r2, #:lower16:113221	@ tmp157,
	movt	r2, #:upper16:113221	@ tmp157,
	movw	r3, #:lower16:113244	@ tmp160,
	movt	r3, #:upper16:113244	@ tmp160,
	str	r5, [r0, lr]	@ <variable>.VirAddr, <variable>.CodecInfo.stCurPacket.BsVirAddr
	ldr	lr, [r4, #92]	@ <variable>.LenInByte, <variable>.LenInByte
	str	lr, [r0, ip]	@ <variable>.LenInByte, <variable>.CodecInfo.stCurPacket.BsLength
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	strb	ip, [r0, r2]	@ <variable>.IsLastSeg, <variable>.CodecInfo.stCurPacket.IsLastSeg
	ldr	lr, [r4, #96]	@ <variable>.StreamID, <variable>.StreamID
	str	lr, [r0, r3]	@ <variable>.StreamID, <variable>.CodecInfo.stCurPacket.StreamID
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	bne	.L157	@,
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.41608,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L157:
	movw	r2, #:lower16:113720	@ tmp163,
	movt	r2, #:upper16:113720	@ tmp163,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	VC1_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.41608,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L153:
	movw	r5, #:lower16:113228	@ tmp165,
	movw	lr, #:lower16:113216	@ tmp167,
	movt	r5, #:upper16:113228	@ tmp165,
	movt	lr, #:upper16:113216	@ tmp167,
	movw	ip, #:lower16:113236	@ tmp169,
	movw	r2, #:lower16:113221	@ tmp171,
	movt	ip, #:upper16:113236	@ tmp169,
	movt	r2, #:upper16:113221	@ tmp171,
	movw	r4, #:lower16:113244	@ tmp174,
	movt	r4, #:upper16:113244	@ tmp174,
	mov	r3, #0	@ tmp166,
	str	r3, [r0, r5]	@ tmp166, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	str	r3, [r0, r4]	@ tmp166, <variable>.CodecInfo.stCurPacket.StreamID
	str	r3, [r0, lr]	@ tmp166, <variable>.CodecInfo.stCurPacket.BsVirAddr
	str	r3, [r0, ip]	@ tmp166, <variable>.CodecInfo.stCurPacket.BsLength
	strb	r3, [r0, r2]	@ tmp166, <variable>.CodecInfo.stCurPacket.IsLastSeg
	bl	VC1_SetCodeInfo	@
	mov	r0, #1	@ D.41608,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L156:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.41608, pPacket
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VC1_ReceivePacket, .-VC1_ReceivePacket
	.align	2
	.global	VC1_DecNormDiff6Tile
	.type	VC1_DecNormDiff6Tile, %function
VC1_DecNormDiff6Tile:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r9, [r1, #0]	@ i6.1381,* pi6
	mov	sl, r1	@ pi6, pi6
	mov	r5, r0	@ pBs, pBs
	mov	r6, #0	@ Invert,
.L159:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	subs	r7, r0, #0	@ D.39930,
	mov	r0, r5	@, pBs
	bne	.L172	@,
	bl	BsGet	@
	mov	r4, r0	@ iCode,
	cmp	r4, #1	@ iCode,
	mov	r1, r0	@, iCode
	mov	r0, r5	@, pBs
	bgt	.L173	@,
	bne	.L163	@,
	bl	BsGet	@
	subs	r8, r0, #0	@ D.39939,
	beq	.L164	@,
	cmp	r6, #0	@ Invert,
	mov	r6, r4	@ Invert, iCode
	beq	.L159	@,
.L171:
	str	r9, [sl, #0]	@ i6.1381,* pi6
	mov	r0, r7	@ D.39944, D.39930
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L172:
	mov	r4, #0	@ i6,
.L161:
	cmp	r6, #0	@ Invert,
	mov	r0, #1	@ D.39944,
	eorne	r4, r4, #63	@ i6, i6,
	str	r4, [sl, #0]	@ i6,* pi6
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L173:
	sub	r4, r4, #2	@ tmp146, iCode,
	mov	r3, #1	@ tmp147,
	mov	r4, r3, asl r4	@ i6, tmp147,
	b	.L161	@
.L163:
	mov	r0, r5	@, pBs
	mov	r1, #4	@,
	bl	BsGet	@
	cmp	r0, #255	@ iCode.1383,
	beq	.L171	@,
	movw	lr, #:lower16:.LANCHOR0	@ tmp153,
	movt	lr, #:upper16:.LANCHOR0	@ tmp153,
	add	ip, lr, r0, asl #2	@, tmp156, tmp153, iCode.1383,
	ldr	r4, [ip, #256]	@ i6, a2On4Off
	b	.L161	@
.L164:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp148,
	movt	r2, #:upper16:.LANCHOR0	@ tmp148,
	add	r1, r2, r0, asl #2	@, tmp151, tmp148, i6,
	mov	r4, r0	@ i6,
	ldr	r3, [r1, #128]	@ iCode.1382, aCount
	cmp	r3, #2	@ iCode.1382,
	orreq	r4, r0, #32	@ i6, i6,
	beq	.L161	@,
	cmp	r3, #3	@ iCode.1382,
	strne	r4, [sl, #0]	@ i6,* pi6
	movne	r0, r8	@ D.39944, D.39939
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L161	@
	.fnend
	.size	VC1_DecNormDiff6Tile, .-VC1_DecNormDiff6Tile
	.align	2
	.global	VC1_VopDQuant
	.type	VC1_VopDQuant, %function
VC1_VopDQuant:
	.fnstart
.LFB1947:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ DQUANT,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r2	@ PQUANT, PQUANT
	mov	r5, r3	@ pVopDquant, pVopDquant
	mov	r7, r0	@ pBs, pBs
	beq	.L188	@,
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r6, r0	@ D.39871,
	strb	r6, [r5, #0]	@ D.39871, <variable>.DQUANTFRM
	cmp	r6, #1	@ D.39871,
	beq	.L189	@,
.L178:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L188:
	mov	r3, #1	@ tmp157,
	mov	r1, #3	@,
	strb	r3, [r5, #0]	@ tmp157, <variable>.DQUANTFRM
	strb	r3, [r5, #3]	@ tmp157, <variable>.UseAltQp
	bl	BsGet	@
	uxtb	r0, r0	@ D.39859,
	strb	r0, [r5, #4]	@ D.39859, <variable>.PQDIFF
	cmp	r0, #7	@ D.39859,
	addne	r4, r4, #1	@ tmp164, PQUANT,
	addne	r0, r0, r4	@ tmp166, D.39859, tmp164
	strneb	r0, [r5, #8]	@ tmp166, <variable>.ALTPQUANT
	beq	.L190	@,
.L177:
	mov	r2, #1	@ tmp168,
	mov	r0, #1	@,
	str	r2, [r5, #12]	@ tmp168, <variable>.QuantMode
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L189:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.39876,
	strb	r1, [r5, #1]	@ D.39876, <variable>.DQPROFILE
	cmp	r1, #0	@ D.39876,
	streq	r6, [r5, #12]	@ D.39871, <variable>.QuantMode
	beq	.L180	@,
	cmp	r1, #2	@ D.39876,
	beq	.L191	@,
	cmp	r1, #1	@ D.39876,
	beq	.L192	@,
	cmp	r1, #3	@ D.39876,
	movne	r3, #0	@ tmp177,
	strne	r3, [r5, #12]	@ tmp177, <variable>.QuantMode
	beq	.L193	@,
.L180:
	ldr	r0, [r5, #0]	@ tmp180,* pVopDquant
	bic	ip, r0, #-16777216	@ tmp178, tmp180,
	bic	lr, ip, #255	@ tmp178, tmp178,
	cmp	lr, #768	@ tmp178,
	beq	.L178	@,
	mov	r1, #1	@ tmp181,
	mov	r0, r7	@, pBs
	strb	r1, [r5, #3]	@ tmp181, <variable>.UseAltQp
	mov	r1, #3	@,
	bl	BsGet	@
	uxtb	r3, r0	@ D.39914,
	strb	r3, [r5, #4]	@ D.39914, <variable>.PQDIFF
	cmp	r3, #7	@ D.39914,
	addne	r4, r4, #1	@ tmp186, PQUANT,
	addne	r3, r3, r4	@ tmp188, D.39914, tmp186
	strneb	r3, [r5, #8]	@ tmp188, <variable>.ALTPQUANT
	bne	.L178	@,
	mov	r0, r7	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.39918,
	strb	r2, [r5, #8]	@ D.39918, <variable>.ALTPQUANT
	strb	r2, [r5, #5]	@ D.39918, <variable>.ABSPQ
	b	.L178	@
.L193:
	mov	r1, r6	@, D.39871
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.39902,
	strb	r2, [r5, #2]	@ D.39902, <variable>.DQBILEVEL
	cmp	r2, #0	@ D.39902,
	movne	r2, #10	@ iftmp.606,
	moveq	r2, #11	@ iftmp.606,
	str	r2, [r5, #12]	@ iftmp.606, <variable>.QuantMode
	b	.L180	@
.L190:
	mov	r1, #5	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.39864,
	strb	r1, [r5, #8]	@ D.39864, <variable>.ALTPQUANT
	strb	r1, [r5, #5]	@ D.39864, <variable>.ABSPQ
	b	.L177	@
.L191:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.39884,
	strb	r0, [r5, #6]	@ D.39884, <variable>.DQSBEDGE
	add	ip, r0, #6	@ tmp173, D.39884,
	str	ip, [r5, #12]	@ tmp173, <variable>.QuantMode
	b	.L180	@
.L192:
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.39893,
	strb	r1, [r5, #7]	@ D.39893, <variable>.DQDBEDGE
	add	r3, r1, #2	@ tmp175, D.39893,
	str	r3, [r5, #12]	@ tmp175, <variable>.QuantMode
	b	.L180	@
	.fnend
	.size	VC1_VopDQuant, .-VC1_VopDQuant
	.align	2
	.global	Vc1SMPSeqHdr
	.type	Vc1SMPSeqHdr, %function
Vc1SMPSeqHdr:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mov	lr, r1, asl #3	@ tmp174, ByteLen,
	add	r4, sp, #4	@ tmp231,,
	mov	r5, r2	@ pVc1Info, pVc1Info
	mov	r1, r0	@ pBitBuf, pBitBuf
	mov	r2, lr	@, tmp174
	mov	r0, r4	@, tmp231
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.38003,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	ip, r0, asl #16	@ tmp179,,
	mov	r0, r4	@, tmp231
	add	r2, ip, r6, asl #8	@, data.1434, tmp179, D.38003,
	add	r6, r2, r7	@ data.1435, data.1434, data
	bl	BsGet	@
	mov	r1, #8	@,
	add	r0, r6, r0, asl #24	@, tmp182, data.1435,,
	str	r0, [r5, #24]	@ tmp182, <variable>.FrmWidth
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r7, r0	@ data.1437,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.38010,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #8	@,
	mov	r3, r0, asl #16	@ tmp187,,
	mov	r0, r4	@, tmp231
	add	r6, r3, r6, asl #8	@, data.1438, tmp187, D.38010,
	bl	BsGet	@
	ldr	r3, [r5, #24]	@ D.38016, <variable>.FrmWidth
	add	r6, r6, r7	@ data.1439, data.1438, data.1437
	cmp	r3, #8192	@ D.38016,
	add	r0, r6, r0, asl #24	@, data.1440, data.1439,,
	str	r0, [r5, #28]	@ data.1440, <variable>.FrmHeight
	bgt	.L207	@,
	cmp	r0, #8192	@ data.1440,
	bgt	.L207	@,
	cmp	r3, #31	@ D.38016,
	ble	.L207	@,
	cmp	r0, #31	@ data.1440,
	ble	.L207	@,
	mov	r1, #2	@,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	uxtb	r1, r0	@ D.38028,
	strb	r1, [r5, #3]	@ D.38028, <variable>.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ D.38028,
	bhi	.L207	@,
	mov	r0, r4	@, tmp231
	mov	r1, #2	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L207	@,
	mov	r1, #3	@,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #4]	@, <variable>.SMPSeqSyntax.FRMRTQ
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #5]	@, <variable>.SMPSeqSyntax.BITRTQ
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #6]	@, <variable>.SMPSeqSyntax.LOOPFILTER
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L207	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #7]	@, <variable>.SMPSeqSyntax.MULTIRES
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #8]	@, <variable>.SMPSeqSyntax.B16BITTRANSFORM
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #9]	@, <variable>.SMPSeqSyntax.FASTUVMC
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #10]	@, <variable>.SMPSeqSyntax.EXTENDED_MV
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #11]	@, <variable>.SMPSeqSyntax.DQUANT
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #12]	@, <variable>.SMPSeqSyntax.VSTRANSFORM
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L207	@,
	mov	r1, #1	@,
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #13]	@, <variable>.SMPSeqSyntax.OVERLAP
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #14]	@, <variable>.SMPSeqSyntax.SYNCMARKER
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.PROFILE
	mov	r1, #3	@,
	cmp	r3, #0	@ <variable>.SMPSeqSyntax.PROFILE,
	strb	r0, [r5, #15]	@, <variable>.SMPSeqSyntax.RANGERED
	mov	r0, r4	@, tmp231
	streqb	r3, [r5, #15]	@ <variable>.SMPSeqSyntax.PROFILE, <variable>.SMPSeqSyntax.RANGERED
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #16]	@, <variable>.SMPSeqSyntax.MAXBFRAMES
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #17]	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r5, #18]	@, <variable>.SMPSeqSyntax.FINTERPFLAG
	mov	r0, r4	@, tmp231
	bl	BsGet	@
	mov	r0, r4	@, tmp231
	mov	r1, #32	@,
	bl	BsGet	@
	cmp	r0, #0	@ data.1441
	bne	.L208	@,
.L196:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L208:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38019,
	b	.L196	@
.L207:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38019,
	b	.L196	@
	.fnend
	.size	Vc1SMPSeqHdr, .-Vc1SMPSeqHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvEntptHdr
	.type	VC1_Vfmw_ParseAdvEntptHdr, %function
VC1_Vfmw_ParseAdvEntptHdr:
	.fnstart
.LFB1954:
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
	beq	.L222	@,
.L210:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.40435,
	strb	r2, [r4, #199]	@ D.40435, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.40435,
	beq	.L223	@,
.L212:
	ldrh	r2, [r4, #238]	@ D.40449, <variable>.AdvEntSyntax.CODED_WIDTH
	ldrh	r3, [r4, #172]	@ D.40450, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	cmp	r2, r3	@ D.40449, D.40450
	bhi	.L213	@,
	cmp	r2, #15	@ D.40449,
	bls	.L213	@,
.L214:
	ldrh	r2, [r4, #240]	@ D.40454, <variable>.AdvEntSyntax.CODED_HEIGHT
	ldrh	r3, [r4, #174]	@ D.40455, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	cmp	r2, r3	@ D.40454, D.40455
	bhi	.L215	@,
	cmp	r2, #15	@ D.40454,
	bls	.L215	@,
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L224	@,
.L217:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40463,
	strb	r0, [r4, #201]	@ D.40463, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.40463,
	beq	.L225	@,
.L218:
	mov	r1, #1	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40470,
	strb	r1, [r4, #203]	@ D.40470, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.40470,
	beq	.L226	@,
.L219:
	mov	r0, r7	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #244]	@ <variable>.AdvEntSyntax.HdrLen, <variable>.AdvEntSyntax.HdrLen
	rsb	r3, r2, r0	@ tmp198, <variable>.AdvEntSyntax.HdrLen,
	mov	r0, #1	@,
	str	r3, [r4, #244]	@ tmp198, <variable>.AdvEntSyntax.HdrLen
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L215:
	ldrb	r1, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	strh	r3, [r4, #240]	@ movhi	@ D.40455, <variable>.AdvEntSyntax.CODED_HEIGHT
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	bne	.L217	@,
.L224:
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #200]	@, <variable>.AdvEntSyntax.EXTENDED_DMV
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40463,
	strb	r0, [r4, #201]	@ D.40463, <variable>.AdvEntSyntax.RANGE_MAPY_FLAG
	cmp	r0, #1	@ D.40463,
	bne	.L218	@,
.L225:
	mov	r1, #3	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #202]	@, <variable>.AdvEntSyntax.RANGE_MAPY
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40470,
	strb	r1, [r4, #203]	@ D.40470, <variable>.AdvEntSyntax.RANGE_MAPUV_FLAG
	cmp	r1, #1	@ D.40470,
	bne	.L219	@,
.L226:
	mov	r0, r7	@, pBs
	mov	r1, #3	@,
	bl	BsGet	@
	strb	r0, [r4, #204]	@, <variable>.AdvEntSyntax.RANGE_MAPUV
	b	.L219	@
.L213:
	strh	r3, [r4, #238]	@ movhi	@ D.40450, <variable>.AdvEntSyntax.CODED_WIDTH
	b	.L214	@
.L222:
	ldrb	r0, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r0, #0	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS,
	beq	.L210	@,
	mov	r6, r4	@ ivtmp.1469, pSyntax
	mov	r5, #0	@ i,
.L211:
	mov	r1, #8	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	add	r5, r5, #1	@ i, i,
	cmp	r1, r5	@ <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS, i
	strb	r0, [r6, #205]	@, <variable>.AdvEntSyntax.HRD_FULLNESS
	add	r6, r6, #1	@ ivtmp.1469, ivtmp.1469,
	bgt	.L211	@,
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.40435,
	strb	r2, [r4, #199]	@ D.40435, <variable>.AdvEntSyntax.CODED_SIZE_FLAG
	cmp	r2, #1	@ D.40435,
	bne	.L212	@,
.L223:
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
	b	.L212	@
	.fnend
	.size	VC1_Vfmw_ParseAdvEntptHdr, .-VC1_Vfmw_ParseAdvEntptHdr
	.align	2
	.global	VC1_RecordSlcStream
	.type	VC1_RecordSlcStream, %function
VC1_RecordSlcStream:
	.fnstart
.LFB1970:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #22644	@ tmp147,
	ldr	r5, [r0, r7]	@ D.41340, <variable>.SlcNum
	mov	fp, r1	@ pSyntax, pSyntax
	ldr	r3, [r0, #3128]	@ pBs, <variable>.pBs
	movw	r1, #22656	@ tmp148,
	mov	r4, r0	@ pCodecInf, pCodecInf
	movw	ip, #22648	@ tmp156,
	mov	r7, r5, asl #1	@ tmp378, D.41340,
	add	r6, r7, r5	@ tmp151, tmp378, D.41340
	add	lr, r6, #1	@ tmp172, tmp151,
	add	r6, r0, r6, asl #4	@, tmp153, pCodecInf, tmp151,
	add	lr, r0, lr, asl #4	@, tmp175, pCodecInf, tmp172,
	add	r8, r6, #22528	@ tmp154, tmp153,
	strb	r5, [r6, r1]	@ D.41340, <variable>.SlcNo
	add	r9, lr, #22528	@ tmp176, tmp175,
	ldr	r0, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r9, #120	@ tmp176, tmp176,
	add	r8, r8, #128	@ tmp154, tmp154,
	add	sl, r6, #22528	@ tmp162, tmp153,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	r9, r0, #7	@ tmp166, <variable>.TotalPos,
	add	sl, sl, #120	@ tmp162, tmp162,
	movlt	r0, r9	@ <variable>.TotalPos, tmp166
	add	r0, r2, r0, asr #3	@, tmp168, pCurBsRealStart, <variable>.TotalPos,
	str	r0, [r6, ip]	@ tmp168, <variable>.pStream
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
	add	r3, r6, #22528	@ tmp212, tmp153,
	add	r3, r3, #160	@ tmp212, tmp212,
	str	r0, [r8, #4]	@, <variable>.Phy_addr
	movw	r0, #22688	@ tmp206,
	ldr	r1, [r4, ip]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r1, [r6, r0]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r2, [r4, r2]	@ D.41360, <variable>.stCurPacket.BsVirAddr
	cmp	r2, #0	@ D.41360,
	beq	.L228	@,
	movw	r1, #34956	@ tmp216,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	bne	.L238	@,
.L228:
	add	r2, r7, r5	@ tmp264, tmp378, D.41340
	mov	r3, #0	@ tmp268,
	add	r2, r4, r2, asl #4	@, tmp266, pCodecInf, tmp264,
	add	ip, r2, #22528	@ tmp299, tmp266,
	add	r6, ip, #120	@ tmp267, tmp267,
	add	r0, ip, #152	@ tmp275, tmp275,
	add	r1, ip, #144	@ tmp291, tmp291,
	add	ip, ip, #160	@ tmp299, tmp299,
	str	r3, [r6, #4]	@ tmp268, <variable>.pStream2
	movw	r6, #22680	@ tmp269,
	str	r3, [ip, #4]	@ tmp268, <variable>.StreamID2
	str	r3, [r2, r6]	@ tmp268, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp268, <variable>.Len2
	str	r3, [r1, #4]	@ tmp268, <variable>.Phy_addr2
.L229:
	movw	r3, #22564	@ tmp309,
	movw	r0, #22560	@ tmp310,
	ldr	r3, [r4, r3]	@ D.41378, <variable>.MbHeight
	ldr	r1, [r4, r0]	@ <variable>.MbWidth, <variable>.MbWidth
	ldrb	r6, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r1, r3	@ tmp311, <variable>.MbWidth, D.41378
	cmp	r6, #0	@ <variable>.Is2ndFld,
	sub	r2, ip, #1	@ totalMbMin1, tmp311,
	beq	.L232	@,
	add	ip, r7, r5	@ tmp317, tmp378, D.41340
	add	r1, r3, #1	@ tmp321, D.41378,
	add	fp, fp, ip, asl #2	@, tmp319, pSyntax, tmp317,
	add	r3, r1, r1, lsr #31	@, tmp324, tmp321, tmp321,
	add	r1, r4, ip, asl #4	@, tmp332, pCodecInf, tmp317,
	movw	ip, #22672	@ tmp327,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.41388, <variable>.SLICE_ADDR, tmp324,
	str	r3, [r1, ip]	@ D.41388, <variable>.SlcEndMbn
	cmp	r3, #0	@ D.41388,
	ble	.L233	@,
	cmp	r2, r3	@ totalMbMin1, D.41388
	bcc	.L235	@,
.L233:
	add	r5, r7, r5	@ tmp350, tmp378, D.41340
	add	ip, r5, #1	@ tmp351, tmp350,
	add	r3, r4, ip, asl #4	@, tmp354, pCodecInf, tmp351,
	add	r2, r3, #22528	@ tmp355, tmp354,
	add	r0, r2, #120	@ tmp355, tmp355,
	ldr	r1, [r0, #4]	@ <variable>.Len, <variable>.Len
	cmp	r1, #0	@ <variable>.Len,
	ble	.L235	@,
	add	r5, r4, r5, asl #4	@, tmp362, pCodecInf, tmp350,
	add	r2, r5, #22528	@ tmp363, tmp362,
	add	r0, r2, #120	@ tmp363, tmp363,
	ldr	r1, [r0, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r1, #0	@ <variable>.pStream2,
	beq	.L236	@,
	add	r5, r5, #22528	@ tmp371, tmp362,
	add	r5, r5, #152	@ tmp371, tmp371,
	ldr	r3, [r5, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L235	@,
.L236:
	movw	r1, #22644	@ tmp373,
	mov	r0, #1	@ D.41395,
	ldr	r2, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	ip, r2, r0	@ tmp376, <variable>.SlcNum,
	str	ip, [r4, r1]	@ tmp376, <variable>.SlcNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L232:
	add	ip, r7, r5	@ tmp337, tmp378, D.41340
	add	fp, fp, ip, asl #2	@, tmp339, pSyntax, tmp337,
	add	r0, r4, ip, asl #4	@, tmp346, pCodecInf, tmp337,
	ldr	r3, [fp, #528]	@ temp.1503, <variable>.SLICE_ADDR
	cmp	r2, r3	@ totalMbMin1, temp.1503
	movw	r2, #22672	@ tmp341,
	str	r3, [r0, r2]	@ temp.1503, <variable>.SlcEndMbn
	bcs	.L233	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.41395, <variable>.Is2ndFld
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L238:
	movw	r0, #22680	@ tmp225,
	mov	ip, #0	@ tmp232,
	str	ip, [r6, r0]	@ tmp232, <variable>.BitOffset2
	movw	r0, #34964	@ tmp240,
	str	r2, [sl, #4]	@ D.41360, <variable>.pStream2
	add	r2, r6, #22528	@ tmp231, tmp153,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r2, r2, #152	@ tmp231, tmp231,
	add	r6, r6, #22528	@ tmp249, tmp153,
	add	r6, r6, #144	@ tmp249, tmp249,
	mov	r0, ip, asl #3	@ tmp242, <variable>.stCurPacket.BsLength,
	str	r0, [r2, #4]	@ tmp242, <variable>.Len2
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r0, #34972	@ tmp259,
	str	ip, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r2, [r4, r0]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r2, [r3, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
	b	.L229	@
.L235:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.41395,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	VC1_RecordSlcStream, .-VC1_RecordSlcStream
	.align	2
	.global	VC1_DecIntCompField
	.type	VC1_DecIntCompField, %function
VC1_DecIntCompField:
	.fnstart
.LFB1962:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r5, .L241	@ tmp139,
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
.L242:
	.align	2
.L241:
	.word	.LANCHOR0+316
	.fnend
	.size	VC1_DecIntCompField, .-VC1_DecIntCompField
	.align	2
	.global	VC1_DecRefdist
	.type	VC1_DecRefdist, %function
VC1_DecRefdist:
	.fnstart
.LFB1961:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #5	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #23	@ Code,
	bgt	.L244	@,
	mov	r4, r0, asr #3	@ Code.1555, Code,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, Len
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L244:
	cmp	r0, #27	@ Code,
	movle	r4, #3	@ Len,
	ble	.L247	@,
	cmp	r0, #29	@ Code,
	movle	r4, #4	@ Len,
	movgt	r4, #5	@ Len,
.L247:
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
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #4	@,
	mov	r4, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #7	@ Code.1579,
	movle	r1, #1	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L252	@,
	cmp	r0, #11	@ Code.1579,
	movle	r1, #2	@ Len,
	movle	r5, r1	@ Code, Len
	ble	.L252	@,
	cmp	r0, #13	@ Code.1579,
	movle	r1, #3	@ Len,
	movle	r5, #0	@ Code,
	ble	.L252	@,
	cmp	r0, #14	@ Code.1579,
	mov	r1, #4	@ Len,
	movne	r5, #5	@ Code,
	moveq	r5, r1	@ Code, Len
.L252:
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
.LFB1955:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r1, #2	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r4, r0	@ Code,
	ble	.L261	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	mov	r0, r4	@, Code
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L261:
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
.LFB1953:
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
	uxth	ip, r0	@ D.40284,
	mov	r0, r5	@, pBs
	add	r2, ip, #1	@ tmp222, D.40284,
	mov	r3, r2, asl #1	@ tmp224, tmp222,
	strh	r3, [r4, #172]	@ movhi	@ tmp224, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	bl	BsGet	@
	mov	r1, #1	@,
	uxth	ip, r0	@ D.40290,
	mov	r0, r5	@, pBs
	add	r2, ip, r1	@ tmp226, D.40290,
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
	uxtb	r6, r0	@ D.40305,
	strb	r6, [r4, #26]	@ D.40305, <variable>.AdvSeqSyntax.DISPLAY_EXT
	cmp	r6, #1	@ D.40305,
	beq	.L274	@,
	ldrh	r3, [r4, #172]	@, <variable>.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	lr, [r4, #174]	@, <variable>.AdvSeqSyntax.MAX_CODED_HEIGHT
	strh	r3, [r4, #176]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	strh	lr, [r4, #178]	@ movhi	@, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
.L267:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r2, r0	@ D.40361,
	strb	r2, [r4, #39]	@ D.40361, <variable>.AdvSeqSyntax.HRD_PARAM_FLAG
	cmp	r2, #1	@ D.40361,
	beq	.L275	@,
.L268:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #184]	@ <variable>.AdvSeqSyntax.HdrLen, <variable>.AdvSeqSyntax.HdrLen
	mov	r3, #1	@ D.40370,
	rsb	r2, r1, r0	@ tmp261, <variable>.AdvSeqSyntax.HdrLen,
	str	r2, [r4, #184]	@ tmp261, <variable>.AdvSeqSyntax.HdrLen
.L270:
	mov	r0, r3	@, D.40370
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L275:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40366,
	strb	r1, [r4, #40]	@ D.40366, <variable>.AdvSeqSyntax.HRD_NUM_LEAKY_BUCKETS
	cmp	r1, #31	@ D.40366,
	movhi	r3, #0	@ D.40370,
	bhi	.L270	@,
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
	beq	.L268	@,
	mov	r6, r4	@ ivtmp.1631, pSyntax
	mov	r7, #0	@ i,
.L271:
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
	add	r6, r6, #2	@ ivtmp.1631, ivtmp.1631,
	bgt	.L271	@,
	b	.L268	@
.L274:
	mov	r1, #14	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #14	@,
	add	r2, r0, #1	@ tmp235,,
	mov	r0, r5	@, pBs
	strh	r2, [r4, #176]	@ movhi	@ tmp235, <variable>.AdvSeqSyntax.DISP_HORIZ_SIZE
	bl	BsGet	@
	mov	r1, r6	@, D.40305
	add	r3, r0, #1	@ tmp237,,
	mov	r0, r5	@, pBs
	strh	r3, [r4, #178]	@ movhi	@ tmp237, <variable>.AdvSeqSyntax.DISP_VERT_SIZE
	bl	BsGet	@
	uxtb	r0, r0	@ D.40316,
	strb	r0, [r4, #27]	@ D.40316, <variable>.AdvSeqSyntax.ASPECT_RATIO_FLAG
	cmp	r0, #1	@ D.40316,
	beq	.L276	@,
.L264:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40330,
	strb	r1, [r4, #31]	@ D.40330, <variable>.AdvSeqSyntax.FRAMERATE_FLAG
	cmp	r1, #1	@ D.40330,
	beq	.L277	@,
.L265:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.40347,
	strb	r0, [r4, #35]	@ D.40347, <variable>.AdvSeqSyntax.COLOR_FORMAT_FLAG
	cmp	r0, #1	@ D.40347,
	bne	.L267	@,
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
	b	.L267	@
.L277:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.40335,
	strb	ip, [r4, #32]	@ D.40335, <variable>.AdvSeqSyntax.FRAMERATEIND
	cmp	ip, #0	@ D.40335,
	bne	.L266	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	strb	r0, [r4, #33]	@, <variable>.AdvSeqSyntax.FRAMERATENR
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #34]	@, <variable>.AdvSeqSyntax.FRAMERATEDR
	b	.L265	@
.L276:
	mov	r1, #4	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40321,
	strb	r1, [r4, #28]	@ D.40321, <variable>.AdvSeqSyntax.ASPECT_RATIO
	cmp	r1, #15	@ D.40321,
	bne	.L264	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	strb	r0, [r4, #29]	@, <variable>.AdvSeqSyntax.ASPECT_HORIZ_SIZE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #30]	@, <variable>.AdvSeqSyntax.ASPECT_VERT_SIZE
	b	.L264	@
.L266:
	mov	r0, r5	@, pBs
	mov	r1, #16	@,
	bl	BsGet	@
	strh	r0, [r4, #180]	@ movhi	@, <variable>.AdvSeqSyntax.FRAMERATEXP
	b	.L265	@
	.fnend
	.size	VC1_Vfmw_ParseAdvSeqHdr, .-VC1_Vfmw_ParseAdvSeqHdr
	.align	2
	.global	VC1_DecBfraction
	.type	VC1_DecBfraction, %function
VC1_DecBfraction:
	.fnstart
.LFB1946:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L283	@ tmp144,
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
	ble	.L282	@,
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	add	r3, sp, #216	@,,
	sub	r8, r0, #112	@ D.39847, Code.1658,
	and	r0, r0, #15	@ tmp165, Code.1658,
	add	r0, r0, #7	@ BfracIdx, tmp165,
	add	ip, r3, r8, asl #2	@, tmp168,, D.39847,
	ldr	r3, [ip, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [ip, #-144]	@ Numerator, NumLongVLC
.L280:
	add	r8, sp, #216	@,,
	ldr	lr, [sp, #12]	@, %sfp
	add	r3, r8, r3, asl #2	@, tmp177,, Denominator,
	ldr	ip, [r3, #-92]	@ tmp179, Inverse
	mul	r1, r2, ip	@ tmp180, Numerator, tmp179
	str	r1, [lr, #0]	@ tmp180,
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L282:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r1, sp, #216	@,,
	add	r2, r1, r5, asl #2	@, tmp159,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r2, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r2, #-28]	@ Numerator, NumShortVLC
	b	.L280	@
.L284:
	.align	2
.L283:
	.word	.LANCHOR0+348
	.fnend
	.size	VC1_DecBfraction, .-VC1_DecBfraction
	.align	2
	.global	VC1_DecBfractionSMP
	.type	VC1_DecBfractionSMP, %function
VC1_DecBfractionSMP:
	.fnstart
.LFB1945:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L292	@ tmp146,
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
	bgt	.L286	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r1, sp, #216	@,,
	add	r2, r1, r5, asl #2	@, tmp161,, Code,
	mov	r0, r5	@ BfracIdx, Code
	ldr	r3, [r2, #-56]	@ Denominator, DenShortVLC
	ldr	r2, [r2, #-28]	@ Numerator, NumShortVLC
.L287:
	add	r8, sp, #216	@,,
	add	ip, r8, r3, asl #2	@, tmp180,, Denominator,
	ldr	lr, [ip, #-92]	@ tmp182, Inverse
	mul	r1, r2, lr	@ tmp183, Numerator, tmp182
	ldr	r2, [sp, #8]	@, %sfp
	str	r1, [r2, #0]	@ tmp183,
.L289:
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L286:
	mov	r0, r4	@, pBs
	mov	r1, #7	@,
	bl	BsGet	@
	and	r5, r0, #15	@ D.39814, Code.1683,
	cmp	r5, #15	@ D.39814,
	beq	.L291	@,
	sub	r8, r0, #112	@ D.39818, Code.1683,
	add	r3, sp, #216	@,,
	add	r0, r5, #7	@ BfracIdx, D.39814,
	add	ip, r3, r8, asl #2	@, tmp171,, D.39818,
	ldr	r3, [ip, #-200]	@ Denominator, DenLongVLC
	ldr	r2, [ip, #-144]	@ Numerator, NumLongVLC
	b	.L287	@
.L291:
	ldr	r0, [sp, #12]	@, %sfp
	mov	lr, #4	@ tmp167,
	strb	lr, [r0, #0]	@ tmp167,
	mov	r0, #22	@ BfracIdx,
	b	.L289	@
.L293:
	.align	2
.L292:
	.word	.LANCHOR0+548
	.fnend
	.size	VC1_DecBfractionSMP, .-VC1_DecBfractionSMP
	.align	2
	.global	VC1_DecMvmode2
	.type	VC1_DecMvmode2, %function
VC1_DecMvmode2:
	.fnstart
.LFB1944:
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
	ldr	r3, .L303	@ tmp142,
	add	r6, sp, #16	@ tmp141,,
	mov	ip, sp	@ tmp144,
	add	lr, r3, #16	@ tmp145, tmp142,
	mov	r7, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp141,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp145,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp144,,,,
	ble	.L302	@,
	cmp	r7, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L297:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	add	r1, sp, #32	@,,
	cmp	r4, #12	@ PQUANT,
	add	r6, r1, r6, asl #2	@, tmp148,, Code,
	ldrhi	r0, [r6, #-16]	@ Code.1707, ModeLow
	ldrls	r0, [r6, #-32]	@ Code.1707, ModeHigh
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L302:
	cmp	r7, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L297	@
.L304:
	.align	2
.L303:
	.word	.LANCHOR0+748
	.fnend
	.size	VC1_DecMvmode2, .-VC1_DecMvmode2
	.align	2
	.global	VC1_DecMvmodeInterB
	.type	VC1_DecMvmodeInterB, %function
VC1_DecMvmodeInterB:
	.fnstart
.LFB1943:
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
	ldr	r3, .L315	@ tmp142,
	add	ip, sp, #24	@ tmp141,,
	mov	lr, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp142,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp141,,,,
	ble	.L313	@,
	cmp	lr, #4	@ Tmp,
	movge	r6, #0	@, Code
	movlt	r6, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L308:
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r4, #12	@ PQUANT,
	bhi	.L314	@,
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
	ldr	r0, [r6, #-36]	@ Code.1731, ModeHigh
.L311:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L314:
	add	r2, sp, #40	@,,
	add	r6, r2, r6, asl #2	@, tmp145,, Code,
	ldr	r0, [r6, #-16]	@ Code.1731, ModeLow
	b	.L311	@
.L313:
	cmp	lr, #0	@ Tmp,
	mov	r1, #3	@ Len,
	moveq	r6, r1	@ Code, Len
	movne	r6, #2	@ Code,
	b	.L308	@
.L316:
	.align	2
.L315:
	.word	.LANCHOR0+780
	.fnend
	.size	VC1_DecMvmodeInterB, .-VC1_DecMvmodeInterB
	.align	2
	.global	VC1_DecMvmodeProgrB
	.type	VC1_DecMvmodeProgrB, %function
VC1_DecMvmodeProgrB:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r1, #1	@,
	.pad #12
	sub	sp, sp, #12	@,,
	bl	BsSkip	@
	ldr	r1, .L319	@ tmp139,
	add	ip, sp, #8	@,,
	mov	r3, sp	@ tmp138,
	add	r2, ip, r0, asl #2	@, tmp143,, Tmp,
	ldmia	r1, {r0, r1}	@ tmp139,,
	stmia	r3, {r0, r1}	@ tmp138,,
	ldr	r0, [r2, #-8]	@, Mode
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L320:
	.align	2
.L319:
	.word	.LANCHOR0+796
	.fnend
	.size	VC1_DecMvmodeProgrB, .-VC1_DecMvmodeProgrB
	.align	2
	.global	VC1_DecMvmodeProgrP
	.type	VC1_DecMvmodeProgrP, %function
VC1_DecMvmodeProgrP:
	.fnstart
.LFB1941:
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
	ldr	r7, .L331	@ tmp142,
	add	r4, sp, #20	@ tmp141,,
	mov	ip, sp	@ tmp145,
	add	lr, r7, #20	@ tmp146, tmp142,
	mov	r6, r4	@ tmp158, tmp141
	mov	r5, r0	@ Tmp,
	cmp	r0, #1	@ Tmp,
	ldmia	r7!, {r0, r1, r2, r3}	@ tmp157,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldr	r4, [r7, #0]	@ C.574, C.574
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp159,,,,
	str	r4, [r6, #0]	@ C.574, ModeLow
	ldr	lr, [lr, #0]	@ C.575, C.575
	stmia	ip!, {r0, r1, r2, r3}	@ tmp145,,,,
	str	lr, [ip, #0]	@ C.575, ModeHigh
	ble	.L330	@,
	cmp	r5, #3	@ Tmp,
	movle	r1, #3	@ Len,
	movle	r4, #2	@ Code,
	ble	.L324	@,
	cmp	r5, #8	@ Tmp,
	movge	r4, #0	@, Code
	movlt	r4, #1	@, Code
	movlt	r1, #2	@, Len,
	movge	r1, #1	@, Len,
.L324:
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	add	r1, sp, #40	@,,
	cmp	sl, #12	@ PQUANT,
	add	r4, r1, r4, asl #2	@, tmp150,, Code,
	ldrhi	r0, [r4, #-20]	@ Code.1778, ModeLow
	ldrls	r0, [r4, #-40]	@ Code.1778, ModeHigh
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L330:
	cmp	r5, #0	@ Tmp,
	mov	r1, #4	@ Len,
	moveq	r4, #3	@ Code,
	movne	r4, r1	@ Code, Len
	b	.L324	@
.L332:
	.align	2
.L331:
	.word	.LANCHOR0+804
	.fnend
	.size	VC1_DecMvmodeProgrP, .-VC1_DecMvmodeProgrP
	.align	2
	.global	VC1_DecTransacfrm
	.type	VC1_DecTransacfrm, %function
VC1_DecTransacfrm:
	.fnstart
.LFB1939:
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
.LFB1963:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.40939,
	strb	r7, [r4, #358]	@ D.40939, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40939,
	bne	.L346	@,
.L336:
	mov	r0, #0	@ D.40943,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L346:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.40939
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40939,
	movhi	r3, #0	@ tmp152,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp152, <variable>.AdvPicSyntax.HALFQP
	bls	.L347	@,
.L338:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp156,
	strneb	r3, [r4, #359]	@ tmp156, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L348	@,
.L340:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L349	@,
.L341:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L336	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.40972, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.40972,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L342	@,
.L345:
	mov	r0, #1	@ D.40943,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L342:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L345	@
.L347:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L338	@
.L349:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L341	@
.L348:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L340	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIFieldHdr, .-VC1_Vfmw_ParseAdvIFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvIPicHdr
	.type	VC1_Vfmw_ParseAdvIPicHdr, %function
VC1_Vfmw_ParseAdvIPicHdr:
	.fnstart
.LFB1957:
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
	beq	.L363	@,
.L351:
	ldr	r3, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r3, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L352	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L364	@,
.L352:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.40533,
	strb	r7, [r4, #358]	@ D.40533, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40533,
	bne	.L365	@,
.L353:
	mov	r0, #0	@ D.40537,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L365:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.40533
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40533,
	movhi	r3, #0	@ tmp161,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp161, <variable>.AdvPicSyntax.HALFQP
	bls	.L366	@,
.L355:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp165,
	strneb	r3, [r4, #359]	@ tmp165, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L367	@,
.L357:
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L368	@,
.L358:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L353	@,
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #371]	@, <variable>.AdvPicSyntax.TRANSACFRM2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.40566, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.40566,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	bne	.L359	@,
.L362:
	mov	r0, #1	@ D.40537,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L359:
	mov	r0, r5	@, pBs
	add	r3, r4, #508	@, pSyntax,
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_VopDQuant	@
	b	.L362	@
.L364:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L352	@
.L363:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	b	.L351	@
.L366:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L355	@
.L368:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L358	@
.L367:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L357	@
	.fnend
	.size	VC1_Vfmw_ParseAdvIPicHdr, .-VC1_Vfmw_ParseAdvIPicHdr
	.align	2
	.global	VC1_DecMvrange
	.type	VC1_DecMvrange, %function
VC1_DecMvrange:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	lr, .L371	@ tmp139,
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
.L372:
	.align	2
.L371:
	.word	.LANCHOR0+844
	.fnend
	.size	VC1_DecMvrange, .-VC1_DecMvrange
	.align	2
	.global	VC1_Vfmw_ParseAdvBFieldHdr
	.type	VC1_Vfmw_ParseAdvBFieldHdr, %function
VC1_Vfmw_ParseAdvBFieldHdr:
	.fnstart
.LFB1965:
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
	uxtb	r6, r0	@ D.41091,
	strb	r6, [r4, #358]	@ D.41091, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.41091,
	bne	.L387	@,
.L374:
	mov	r3, #0	@ D.41095,
	mov	r0, r3	@, D.41095
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L387:
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.41091
	mov	r0, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.41091,
	movhi	r3, #0	@ tmp163,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp163, <variable>.AdvPicSyntax.HALFQP
	bls	.L388	@,
.L376:
	cmp	sl, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp167,
	strneb	r3, [r4, #359]	@ tmp167, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L389	@,
.L378:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L390	@,
.L379:
	ldrb	r0, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L391	@,
.L380:
	ldrb	r1, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r1, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L392	@,
.L381:
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
	beq	.L374	@,
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
	beq	.L393	@,
.L382:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41143, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41143,
	bne	.L394	@,
.L383:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L395	@,
.L384:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.41095,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.41095
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L394:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L383	@
.L393:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L382	@
.L388:
	mov	r1, r7	@, tmp158
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	sl, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L376	@
.L392:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L381	@
.L391:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L380	@
.L390:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L379	@
.L389:
	mov	r1, sl	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L378	@
.L395:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41151,
	strb	ip, [r4, #368]	@ D.41151, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.41151,
	bne	.L384	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L384	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBFieldHdr, .-VC1_Vfmw_ParseAdvBFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPFieldHdr
	.type	VC1_Vfmw_ParseAdvPFieldHdr, %function
VC1_Vfmw_ParseAdvPFieldHdr:
	.fnstart
.LFB1964:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.40987,
	strb	r6, [r4, #358]	@ D.40987, <variable>.AdvPicSyntax.PQINDEX
	cmp	r6, #0	@ D.40987,
	bne	.L415	@,
	mov	r0, r6	@, D.40991
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L415:
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r6	@, D.40987
	mov	r0, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.40987,
	movhi	r3, #0	@ tmp172,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp172, <variable>.AdvPicSyntax.HALFQP
	bls	.L416	@,
.L400:
	cmp	r7, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp176,
	strneb	r3, [r4, #359]	@ tmp176, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L417	@,
.L402:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L418	@,
.L403:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	uxtb	r0, r0	@ D.41012,
	strb	r0, [r4, #380]	@ D.41012, <variable>.AdvPicSyntax.NUMREF
	cmp	r0, #0	@ D.41012,
	beq	.L419	@,
.L404:
	ldrb	r2, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	r2, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L420	@,
.L405:
	ldrb	r6, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r6, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L421	@,
.L406:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	ip, r0	@ D.41031,
	strb	ip, [r4, #362]	@ D.41031, <variable>.AdvPicSyntax.MVMODE
	cmp	ip, #4	@ D.41031,
	beq	.L422	@,
.L407:
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
	uxtb	r0, r0	@ iftmp.637,
	strb	r0, [r4, #366]	@ iftmp.637, <variable>.AdvPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #362]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.MVMODE, <variable>.AdvPicSyntax.MVMODE
	cmp	r1, #0	@ <variable>.AdvPicSyntax.MVMODE,
	strb	r0, [r4, #367]	@, <variable>.AdvPicSyntax.CBPTAB
	beq	.L410	@,
	movw	r6, #362	@ tmp201,
	ldrh	lr, [r4, r6]	@ tmp202,
	cmp	lr, #4	@ tmp202,
	beq	.L410	@,
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41064, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41064,
	bne	.L423	@,
.L412:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L424	@,
.L413:
	mov	r0, r5	@, pBs
	mov	r6, #1	@ D.40991,
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r6	@, D.40991
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L410:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.41064, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.41064,
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	beq	.L412	@,
.L423:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L412	@
.L419:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	rsbs	r1, r0, #1	@ tmp181,
	movcc	r1, #0	@ tmp181
	strb	r1, [r4, #381]	@ tmp181, <variable>.AdvPicSyntax.REFFIELD
	b	.L404	@
.L416:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r7, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L400	@
.L417:
	mov	r1, r7	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L402	@
.L424:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.41072,
	strb	ip, [r4, #368]	@ D.41072, <variable>.AdvPicSyntax.TTMBF
	cmp	ip, #1	@ D.41072,
	bne	.L413	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L413	@
.L422:
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
	bne	.L407	@,
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r4, #480]	@, <variable>.AdvPicSyntax.LUMSCALE2
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r4, #484]	@, <variable>.AdvPicSyntax.LUMSHIFT2
	b	.L407	@
.L418:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L403	@
.L421:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L406	@
.L420:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L405	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPFieldHdr, .-VC1_Vfmw_ParseAdvPFieldHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFieldPicHdr
	.type	VC1_Vfmw_ParseAdvFieldPicHdr, %function
VC1_Vfmw_ParseAdvFieldPicHdr:
	.fnstart
.LFB1966:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mov	r5, r1	@ pCodecInf, pCodecInf
	mov	r6, r0	@ pBs, pBs
	cmp	r3, #0	@ <variable>.Is2ndFld,
	mov	r4, r2	@ pSyntax, pSyntax
	beq	.L426	@,
	movw	r1, #22644	@ tmp160,
	ldr	r0, [r5, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L427	@,
.L426:
	mov	r1, #3	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp162,
	movt	r2, #:upper16:.LANCHOR0	@ tmp162,
	add	ip, r2, r0, asl #3	@, tmp171, tmp162, D.41186,
	str	r0, [r4, #472]	@ D.41186, <variable>.AdvPicSyntax.FPTYPE
	ldr	r2, [ip, #908]	@ D.41188, FldPTypeTab
	ldr	r0, [ip, #912]	@ D.41189, FldPTypeTab
	str	r2, [r4, #500]	@ D.41188, <variable>.AdvPicSyntax.FldPicType
	str	r0, [r4, #504]	@ D.41189, <variable>.AdvPicSyntax.FldPicType
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r1, #0	@ <variable>.Is2ndFld,
	uxtbeq	r0, r2	@ iftmp.638, D.41188
	uxtbne	r0, r0	@ iftmp.638, D.41189
	strb	r0, [r4, #349]	@ iftmp.638, <variable>.AdvPicSyntax.PTYPE
	ldrb	r3, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r3, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	ip, [r4, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	ip, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L453	@,
.L430:
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp184,
	streqb	r2, [r4, #352]	@ tmp184, <variable>.AdvPicSyntax.TFF
	bne	.L454	@,
.L433:
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L455	@,
.L434:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp194,
	addeq	r3, r3, #1	@ tmp193, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp194, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L456	@,
.L438:
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
	beq	.L457	@,
.L440:
	ldr	r0, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	r0, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	bgt	.L441	@,
.L442:
	ldrb	r3, [r4, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r3, #4	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L443	@
.L447:
	.word	.L444
	.word	.L445
	.word	.L446
	.word	.L443
	.word	.L444
.L454:
	ldrb	lr, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	lr, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L432	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #354]	@, <variable>.AdvPicSyntax.RPTFRM
	ldrb	r0, [r4, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r0, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L434	@,
.L455:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r4, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r4, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp190,
	addeq	r3, r3, #2	@ tmp189, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r4, #492]	@ tmp190, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L438	@,
.L456:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.41234,
	strb	r1, [r4, #355]	@ D.41234, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	r1, #1	@ D.41234,
	bne	.L438	@,
	ldr	ip, [r4, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	ip, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L438	@,
	mov	r7, r4	@ ivtmp.1957, pSyntax
	mov	r8, #0	@ i,
.L439:
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
	add	r7, r7, #4	@ ivtmp.1957, ivtmp.1957,
	bgt	.L439	@,
	b	.L438	@
.L446:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvBFieldHdr	@
.L448:
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	bne	.L458	@,
.L449:
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r3, r2, #1	@ tmp217, <variable>.Is2ndFld,
	movne	r3, #1	@ tmp217
	strb	r3, [r4, #389]	@ tmp217, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L444:
	mov	r2, r4	@, pSyntax
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvIFieldHdr	@
	ldrb	r2, [r4, #352]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.TFF, <variable>.AdvPicSyntax.TFF
	cmp	r2, #0	@ <variable>.AdvPicSyntax.TFF,
	beq	.L449	@,
.L458:
	ldrb	ip, [r5, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	subs	r1, ip, #0	@ tmp214, <variable>.Is2ndFld,
	movne	r1, #1	@ tmp214
	strb	r1, [r4, #389]	@ tmp214, <variable>.AdvPicSyntax.CurParity
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L445:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseAdvPFieldHdr	@
	b	.L448	@
.L443:
	mov	r0, #0	@ Ret,
	b	.L448	@
.L453:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r4, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L430	@
.L457:
	ldr	lr, [r4, #472]	@ <variable>.AdvPicSyntax.FPTYPE, <variable>.AdvPicSyntax.FPTYPE
	cmp	lr, #3	@ <variable>.AdvPicSyntax.FPTYPE,
	ble	.L459	@,
.L441:
	mov	r0, r6	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L442	@
.L432:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #352]	@, <variable>.AdvPicSyntax.TFF
	mov	r0, r6	@, pBs
	bl	BsGet	@
	ldrb	r3, [r4, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r4, #353]	@, <variable>.AdvPicSyntax.RFF
	b	.L433	@
.L459:
	mov	r0, r6	@, pBs
	bl	VC1_DecRefdist	@
	strb	r0, [r4, #379]	@, <variable>.AdvPicSyntax.REFDIST
	b	.L440	@
.L427:
	ldr	ip, [r2, #504]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.FldPicType
	strb	ip, [r2, #349]	@ <variable>.AdvPicSyntax.FldPicType, <variable>.AdvPicSyntax.PTYPE
	ldrb	r1, [r5, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r1, [r5, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	b	.L442	@
	.fnend
	.size	VC1_Vfmw_ParseAdvFieldPicHdr, .-VC1_Vfmw_ParseAdvFieldPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvBPicHdr
	.type	VC1_Vfmw_ParseAdvBPicHdr, %function
VC1_Vfmw_ParseAdvBPicHdr:
	.fnstart
.LFB1959:
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
	beq	.L461	@,
	ldr	r3, [r4, #392]	@ prephitmp.1984, <variable>.AdvPicSyntax.FCM
	cmp	r3, #2	@ prephitmp.1984,
	beq	.L461	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L486	@,
.L463:
	cmp	r3, #0	@ prephitmp.1984,
	bne	.L464	@,
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	uxtb	r0, r0	@ D.40729,
	strb	r0, [r4, #350]	@ D.40729, <variable>.AdvPicSyntax.BFRACTION
	cmp	r0, #21	@ D.40729,
	beq	.L465	@,
.L464:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.40735,
	strb	r7, [r4, #358]	@ D.40735, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40735,
	bne	.L487	@,
.L465:
	mov	r3, #0	@ D.40733,
	mov	r0, r3	@, D.40733
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L487:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.40735
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40735,
	movhi	r3, #0	@ tmp180,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp180, <variable>.AdvPicSyntax.HALFQP
	bls	.L488	@,
.L467:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp184,
	strneb	r3, [r4, #359]	@ tmp184, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L489	@,
.L469:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L490	@,
.L470:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L491	@,
.L471:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L492	@,
.L472:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L493	@,
	ldrb	r3, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r3, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	beq	.L494	@,
.L477:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	str	r0, [r4, #468]	@, <variable>.AdvPicSyntax.INTCOMP
.L476:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L465	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L495	@,
.L478:
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
	uxtb	r0, r0	@ iftmp.626,
	strb	r0, [r4, #367]	@ iftmp.626, <variable>.AdvPicSyntax.CBPTAB
	beq	.L496	@,
.L481:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.40802, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.40802,
	bne	.L497	@,
.L482:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L498	@,
.L483:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40733,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40733
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L461:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	ldr	r3, [r4, #392]	@ prephitmp.1984, <variable>.AdvPicSyntax.FCM
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L463	@,
.L486:
	cmp	r3, #0	@ prephitmp.1984,
	bne	.L464	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4, #392]	@ prephitmp.1984, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L463	@
.L497:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L482	@
.L488:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L467	@
.L493:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #0	@,
	moveq	r0, #3	@ iftmp.625,
	movne	r0, #1	@ iftmp.625,
	strb	r0, [r4, #362]	@ iftmp.625, <variable>.AdvPicSyntax.MVMODE
	b	.L476	@
.L489:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L469	@
.L490:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L470	@
.L491:
	mov	r0, r5	@, pBs
	add	r1, r4, #496	@, pSyntax,
	bl	VC1_DecBfraction	@
	strb	r0, [r4, #350]	@, <variable>.AdvPicSyntax.BFRACTION
	b	.L471	@
.L492:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L472	@
.L498:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ D.40812,
	strb	r1, [r4, #368]	@ D.40812, <variable>.AdvPicSyntax.TTMBF
	cmp	r1, #1	@ D.40812,
	bne	.L483	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L483	@
.L496:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #377]	@, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L481	@
.L495:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L478	@
.L494:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L477	@
	.fnend
	.size	VC1_Vfmw_ParseAdvBPicHdr, .-VC1_Vfmw_ParseAdvBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvPPicHdr
	.type	VC1_Vfmw_ParseAdvPPicHdr, %function
VC1_Vfmw_ParseAdvPPicHdr:
	.fnstart
.LFB1958:
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
	beq	.L500	@,
	ldr	r0, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r0, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L500	@,
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	beq	.L525	@,
.L502:
	mov	r0, r5	@, pBs
	mov	r1, #5	@,
	bl	BsGet	@
	uxtb	r7, r0	@ D.40597,
	strb	r7, [r4, #358]	@ D.40597, <variable>.AdvPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40597,
	bne	.L526	@,
.L503:
	mov	r3, #0	@ D.40601,
	mov	r0, r3	@, D.40601
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L526:
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	mov	r1, r7	@, D.40597
	mov	r0, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40597,
	movhi	r3, #0	@ tmp183,
	str	r0, [r4, #464]	@, <variable>.AdvPicSyntax.PQUANT
	strhib	r3, [r4, #351]	@ tmp183, <variable>.AdvPicSyntax.HALFQP
	bls	.L527	@,
.L505:
	cmp	r8, #1	@ <variable>.AdvEntSyntax.QUANTIZER,
	movne	r3, #0	@ tmp187,
	strneb	r3, [r4, #359]	@ tmp187, <variable>.AdvPicSyntax.PQUANTIZER
	beq	.L528	@,
.L507:
	ldrb	r1, [r4, #21]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.POSTPROCFLAG, <variable>.AdvSeqSyntax.POSTPROCFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.POSTPROCFLAG,
	beq	.L529	@,
.L508:
	ldrb	ip, [r4, #194]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_MV, <variable>.AdvEntSyntax.EXTENDED_MV
	cmp	ip, #1	@ <variable>.AdvEntSyntax.EXTENDED_MV,
	beq	.L530	@,
.L509:
	ldr	lr, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	lr, #0	@ <variable>.AdvPicSyntax.FCM,
	beq	.L531	@,
	ldrb	r0, [r4, #200]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.EXTENDED_DMV, <variable>.AdvEntSyntax.EXTENDED_DMV
	cmp	r0, #1	@ <variable>.AdvEntSyntax.EXTENDED_DMV,
	movne	r0, #0	@ tmp204,
	strneb	r0, [r4, #373]	@ tmp204, <variable>.AdvPicSyntax.DMVRANGE
	beq	.L532	@,
.L513:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r4, #374]	@, <variable>.AdvPicSyntax.QMVSWITCH
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.40650,
	str	r0, [r4, #468]	@ D.40650, <variable>.AdvPicSyntax.INTCOMP
	beq	.L533	@,
.L514:
	mov	r2, #0	@ tmp209,
	strb	r2, [r4, #382]	@ tmp209, <variable>.AdvPicSyntax.MVTYPEMBMode
.L511:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L503	@,
	ldr	r1, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r1, #2	@ <variable>.AdvPicSyntax.FCM,
	beq	.L534	@,
.L515:
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
	uxtb	r1, r0	@ iftmp.623,
	strb	r1, [r4, #367]	@ iftmp.623, <variable>.AdvPicSyntax.CBPTAB
	beq	.L535	@,
.L518:
	ldrb	r1, [r4, #195]	@ zero_extendqisi2	@ D.40683, <variable>.AdvEntSyntax.DQUANT
	cmp	r1, #0	@ D.40683,
	bne	.L536	@,
.L521:
	ldrb	r1, [r4, #196]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.VSTRANSFORM, <variable>.AdvEntSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.AdvEntSyntax.VSTRANSFORM,
	beq	.L537	@,
.L522:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #370]	@, <variable>.AdvPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40601,
	strb	r0, [r4, #372]	@, <variable>.AdvPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40601
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L500:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #25]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.FINTERPFLAG, <variable>.AdvSeqSyntax.FINTERPFLAG
	cmp	r1, #1	@ <variable>.AdvSeqSyntax.FINTERPFLAG,
	strb	r0, [r4, #356]	@, <variable>.AdvPicSyntax.UVSAMP
	bne	.L502	@,
.L525:
	ldr	r2, [r4, #392]	@ <variable>.AdvPicSyntax.FCM, <variable>.AdvPicSyntax.FCM
	cmp	r2, #0	@ <variable>.AdvPicSyntax.FCM,
	bne	.L502	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #357]	@, <variable>.AdvPicSyntax.INTERPFRM
	b	.L502	@
.L531:
	mov	r0, r5	@, pBs
	ldrb	r1, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r3, r0	@ D.40631,
	strb	r3, [r4, #362]	@ D.40631, <variable>.AdvPicSyntax.MVMODE
	cmp	r3, #4	@ D.40631,
	bne	.L511	@,
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
	b	.L511	@
.L527:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #198]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.QUANTIZER, <variable>.AdvEntSyntax.QUANTIZER
	strb	r0, [r4, #351]	@, <variable>.AdvPicSyntax.HALFQP
	b	.L505	@
.L536:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #464]	@ zero_extendqisi2	@, <variable>.AdvPicSyntax.PQUANT
	add	r3, r4, #508	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L521	@
.L528:
	mov	r1, r8	@, <variable>.AdvEntSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #359]	@, <variable>.AdvPicSyntax.PQUANTIZER
	b	.L507	@
.L530:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #361]	@, <variable>.AdvPicSyntax.MVRANGE
	b	.L509	@
.L529:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #360]	@, <variable>.AdvPicSyntax.POSTPROC
	b	.L508	@
.L534:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #375]	@, <variable>.AdvPicSyntax.MBMODETAB
	b	.L515	@
.L537:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r3, r0	@ D.40691,
	strb	r3, [r4, #368]	@ D.40691, <variable>.AdvPicSyntax.TTMBF
	cmp	r3, #1	@ D.40691,
	bne	.L522	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #369]	@, <variable>.AdvPicSyntax.TTFRM
	b	.L522	@
.L535:
	mov	r0, r5	@, pBs
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	bl	BsGet	@
	ldrb	ip, [r4, #374]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.QMVSWITCH, <variable>.AdvPicSyntax.QMVSWITCH
	cmp	ip, #1	@ <variable>.AdvPicSyntax.QMVSWITCH,
	strb	r0, [r4, #376]	@, <variable>.AdvPicSyntax.BMVBPTAB
	movne	r0, #0	@ iftmp.624,
	strneb	r0, [r4, #377]	@ iftmp.624, <variable>.AdvPicSyntax.QMVBPTAB
	bne	.L518	@
.L538:
	mov	r1, r6	@, <variable>.AdvPicSyntax.FCM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ iftmp.624,
	strb	r0, [r4, #377]	@ iftmp.624, <variable>.AdvPicSyntax.QMVBPTAB
	b	.L518	@
.L533:
	mov	r1, #6	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	strb	r0, [r4, #364]	@, <variable>.AdvPicSyntax.LUMSCALE
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #365]	@, <variable>.AdvPicSyntax.LUMSHIFT
	b	.L514	@
.L532:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #373]	@, <variable>.AdvPicSyntax.DMVRANGE
	b	.L513	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPPicHdr, .-VC1_Vfmw_ParseAdvPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseMPBPicHdr
	.type	VC1_Vfmw_ParseMPBPicHdr, %function
VC1_Vfmw_ParseMPBPicHdr:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.40099,
	strb	r7, [r4, #254]	@ D.40099, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40099,
	bne	.L553	@,
.L540:
	mov	r3, #0	@ D.40103,
	mov	r0, r3	@, D.40103
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L553:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.40099
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40099,
	movhi	r3, #0	@ tmp158,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp158, <variable>.SMPPicSyntax.HALFQP
	bls	.L554	@,
.L542:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp162,
	strneb	r3, [r4, #256]	@ tmp162, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L555	@,
.L544:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp166,
	strneb	r3, [r4, #257]	@ tmp166, <variable>.SMPPicSyntax.MVRANGE
	beq	.L556	@,
.L546:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #0	@,
	mov	r1, r6	@, pCodecInf
	mov	r2, r4	@, pSyntax
	cmp	r0, r3	@,
	moveq	r0, #3	@ iftmp.612,
	movne	r0, #1	@ iftmp.612,
	strb	r0, [r4, #259]	@ iftmp.612, <variable>.SMPPicSyntax.MVMODE
	mov	r0, r5	@, pBs
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L540	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.40136, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.40136,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L557	@,
.L549:
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L558	@,
.L550:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40103,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40103
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L557:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L549	@
.L554:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L542	@
.L556:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L546	@
.L555:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L544	@
.L558:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40146,
	strb	r0, [r4, #265]	@ D.40146, <variable>.SMPPicSyntax.TTMBF
	cmp	r0, #1	@ D.40146,
	bne	.L550	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L550	@
	.fnend
	.size	VC1_Vfmw_ParseMPBPicHdr, .-VC1_Vfmw_ParseMPBPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPPicHdr
	.type	VC1_Vfmw_ParseSMPPPicHdr, %function
VC1_Vfmw_ParseSMPPPicHdr:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pCodecInf, pCodecInf
	mov	r1, #5	@,
	mov	r4, r2	@ pSyntax, pSyntax
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	uxtb	r7, r0	@ D.40021,
	strb	r7, [r4, #254]	@ D.40021, <variable>.SMPPicSyntax.PQINDEX
	cmp	r7, #0	@ D.40021,
	bne	.L574	@,
.L560:
	mov	r3, #0	@ D.40025,
	mov	r0, r3	@, D.40025
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L574:
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r7	@, D.40021
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r7, #8	@ D.40021,
	movhi	r3, #0	@ tmp163,
	str	r0, [r4, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r4, #255]	@ tmp163, <variable>.SMPPicSyntax.HALFQP
	bls	.L575	@,
.L562:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp167,
	strneb	r3, [r4, #256]	@ tmp167, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L576	@,
.L564:
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp171,
	strneb	r3, [r4, #257]	@ tmp171, <variable>.SMPPicSyntax.MVRANGE
	beq	.L577	@,
.L566:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r0, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	ldrneb	r1, [r4, #258]	@ zero_extendqisi2	@ prephitmp.2072, <variable>.SMPPicSyntax.RESPIC
	beq	.L578	@,
.L568:
	mov	r0, r6	@, pCodecInf
	bl	VC1_SetCurPicResolutionInfo	@
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	mov	r0, r5	@, pBs
	bl	VC1_DecMvmodeProgrP	@
	uxtb	r1, r0	@ D.40056,
	strb	r1, [r4, #259]	@ D.40056, <variable>.SMPPicSyntax.MVMODE
	cmp	r1, #4	@ D.40056,
	beq	.L579	@,
.L569:
	mov	r1, r6	@, pCodecInf
	mov	r0, r5	@, pBs
	mov	r2, r4	@, pSyntax
	mov	r3, #0	@,
	bl	BPD_Drv	@
	cmp	r0, #1	@,
	beq	.L560	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r4, #263]	@, <variable>.SMPPicSyntax.MVTAB
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ D.40073, <variable>.SMPSeqSyntax.DQUANT
	cmp	r1, #0	@ D.40073,
	strb	r0, [r4, #264]	@, <variable>.SMPPicSyntax.CBPTAB
	bne	.L580	@,
.L570:
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #9]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.VSTRANSFORM, <variable>.SMPSeqSyntax.VSTRANSFORM
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.VSTRANSFORM,
	beq	.L581	@,
.L571:
	mov	r0, r5	@, pBs
	bl	VC1_DecTransacfrm	@
	mov	r1, #1	@,
	strb	r0, [r4, #267]	@, <variable>.SMPPicSyntax.TRANSACFRM
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.40025,
	strb	r0, [r4, #269]	@, <variable>.SMPPicSyntax.TRANSDCTAB
	mov	r0, r3	@, D.40025
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L580:
	mov	r0, r5	@, pBs
	ldrb	r2, [r4, #340]	@ zero_extendqisi2	@, <variable>.SMPPicSyntax.PQUANT
	add	r3, r4, #272	@, pSyntax,
	bl	VC1_VopDQuant	@
	b	.L570	@
.L575:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r4, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r4, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L562	@
.L579:
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
	b	.L569	@
.L578:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2072,
	strb	r1, [r4, #258]	@ prephitmp.2072, <variable>.SMPPicSyntax.RESPIC
	b	.L568	@
.L577:
	mov	r0, r5	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r4, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L566	@
.L576:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r5	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L564	@
.L581:
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r2, r0	@ D.40081,
	strb	r2, [r4, #265]	@ D.40081, <variable>.SMPPicSyntax.TTMBF
	cmp	r2, #1	@ D.40081,
	bne	.L571	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	strb	r0, [r4, #266]	@, <variable>.SMPPicSyntax.TTFRM
	b	.L571	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPPicHdr, .-VC1_Vfmw_ParseSMPPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPIPicHdr
	.type	VC1_Vfmw_ParseSMPIPicHdr, %function
VC1_Vfmw_ParseSMPIPicHdr:
	.fnstart
.LFB1949:
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
	uxtb	r6, r0	@ D.39969,
	strb	r6, [r5, #254]	@ D.39969, <variable>.SMPPicSyntax.PQINDEX
	cmp	r6, #0	@ D.39969,
	bne	.L596	@,
	mov	r0, r6	@, D.39973
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L596:
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r1, r6	@, D.39969
	mov	r0, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	bl	VC1_Vfmw_DecPQUANT	@
	cmp	r6, #8	@ D.39969,
	movhi	r3, #0	@ tmp155,
	str	r0, [r5, #340]	@, <variable>.SMPPicSyntax.PQUANT
	strhib	r3, [r5, #255]	@ tmp155, <variable>.SMPPicSyntax.HALFQP
	bls	.L597	@,
.L586:
	cmp	r8, #1	@ <variable>.SMPSeqSyntax.QUANTIZER,
	movne	r3, #0	@ tmp159,
	strneb	r3, [r5, #256]	@ tmp159, <variable>.SMPPicSyntax.PQUANTIZER
	beq	.L598	@,
.L588:
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.EXTENDED_MV, <variable>.SMPSeqSyntax.EXTENDED_MV
	cmp	r3, #1	@ <variable>.SMPSeqSyntax.EXTENDED_MV,
	movne	r3, #0	@ tmp163,
	strneb	r3, [r5, #257]	@ tmp163, <variable>.SMPPicSyntax.MVRANGE
	beq	.L599	@,
.L590:
	ldrb	r0, [r5, #251]	@ zero_extendqisi2	@ D.39994, <variable>.SMPPicSyntax.PTYPE
	cmp	r0, #4	@ D.39994,
	cmpne	r0, #2	@, D.39994,
	bne	.L591	@,
.L595:
	ldrb	r1, [r5, #258]	@ zero_extendqisi2	@ prephitmp.2106, <variable>.SMPPicSyntax.RESPIC
.L592:
	mov	r0, r4	@, pCodecInf
	mov	r6, #1	@ D.39973,
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
	mov	r0, r6	@, D.39973
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L591:
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MULTIRES, <variable>.SMPSeqSyntax.MULTIRES
	cmp	r1, #1	@ <variable>.SMPSeqSyntax.MULTIRES,
	bne	.L595	@,
	mov	r1, #2	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	uxtb	r1, r0	@ prephitmp.2106,
	strb	r1, [r5, #258]	@ prephitmp.2106, <variable>.SMPPicSyntax.RESPIC
	b	.L592	@
.L597:
	mov	r0, r7	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	r8, [r5, #14]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.QUANTIZER, <variable>.SMPSeqSyntax.QUANTIZER
	strb	r0, [r5, #255]	@, <variable>.SMPPicSyntax.HALFQP
	b	.L586	@
.L599:
	mov	r0, r7	@, pBs
	bl	VC1_DecMvrange	@
	strb	r0, [r5, #257]	@, <variable>.SMPPicSyntax.MVRANGE
	b	.L590	@
.L598:
	mov	r1, r8	@, <variable>.SMPSeqSyntax.QUANTIZER
	mov	r0, r7	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #256]	@, <variable>.SMPPicSyntax.PQUANTIZER
	b	.L588	@
	.fnend
	.size	VC1_Vfmw_ParseSMPIPicHdr, .-VC1_Vfmw_ParseSMPIPicHdr
	.align	2
	.global	VC1_Vfmw_ParseSMPPicHdr
	.type	VC1_Vfmw_ParseSMPPicHdr, %function
VC1_Vfmw_ParseSMPPicHdr:
	.fnstart
.LFB1952:
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
	ble	.L623	@,
	add	r0, r4, #248	@, pSyntax,
	mov	r1, #100	@,
	bl	__memzero	@
	add	r2, r5, #22528	@, pCodecInf,
	add	r0, r2, #120	@,,
	mov	r1, #12288	@,
	strb	r7, [r4, #258]	@ RESPIC, <variable>.SMPPicSyntax.RESPIC
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.FINTERPFLAG, <variable>.SMPSeqSyntax.FINTERPFLAG
	cmp	r1, #0	@ <variable>.SMPSeqSyntax.FINTERPFLAG,
	str	r0, [r4, #324]	@, <variable>.SMPPicSyntax.HdrLen
	bne	.L624	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r7, [r4, #12]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.RANGERED, <variable>.SMPSeqSyntax.RANGERED
	cmp	r7, #0	@ <variable>.SMPSeqSyntax.RANGERED,
	strb	r0, [r4, #249]	@, <variable>.SMPPicSyntax.FRMCNT
	bne	.L625	@,
.L605:
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	ip, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	bne	.L606	@,
.L629:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	subs	r0, r0, #0	@ prephitmp.2132,,
	movne	r0, #1	@ prephitmp.2132
	strb	r0, [r4, #251]	@ prephitmp.2132, <variable>.SMPPicSyntax.PTYPE
.L607:
	strb	r0, [r5, #2]	@ prephitmp.2132, <variable>.PicCodingType
	mov	r3, #0	@ tmp180,
	strb	r3, [r5, #4]	@ tmp180, <variable>.PicStructure
	ldrb	lr, [r4, #251]	@ zero_extendqisi2	@ <variable>.SMPPicSyntax.PTYPE, <variable>.SMPPicSyntax.PTYPE
	cmp	lr, #4	@ <variable>.SMPPicSyntax.PTYPE,
	ldrls	pc, [pc, lr, asl #2]	@ <variable>.SMPPicSyntax.PTYPE
	b	.L610	@
.L615:
	.word	.L622
	.word	.L612
	.word	.L613
	.word	.L610
	.word	.L614
.L606:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@ D.40217,
	beq	.L621	@,
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	cmp	r0, #1	@,
	beq	.L626	@,
	mov	r7, #2	@ tmp191,
	mov	r0, r6	@, pBs
	strb	r7, [r4, #251]	@ tmp191, <variable>.SMPPicSyntax.PTYPE
	add	r1, r4, #344	@, pSyntax,
	add	r2, r4, #251	@, pSyntax,
	bl	VC1_DecBfractionSMP	@
	uxtb	r0, r0	@ D.40231,
	strb	r0, [r4, #252]	@ D.40231, <variable>.SMPPicSyntax.BFRACTION
	cmp	r0, #22	@ D.40231,
	mov	r3, r0	@ D.40231, D.40231
	beq	.L627	@,
	cmp	r0, #21	@ D.40231,
	beq	.L610	@,
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2132, <variable>.SMPPicSyntax.PTYPE
	b	.L607	@
.L613:
	ldrb	r0, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r0, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	beq	.L628	@,
.L610:
	mov	r7, #0	@ Ret,
.L602:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L623:
	mov	r7, #1	@ Ret,
	mov	r0, #5	@ tmp153,
	strb	r0, [r4, #251]	@ tmp153, <variable>.SMPPicSyntax.PTYPE
	strb	r0, [r5, #2]	@ tmp153, <variable>.PicCodingType
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L625:
	mov	r0, r6	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.MAXBFRAMES, <variable>.SMPSeqSyntax.MAXBFRAMES
	cmp	ip, #0	@ <variable>.SMPSeqSyntax.MAXBFRAMES,
	strb	r0, [r4, #250]	@, <variable>.SMPPicSyntax.RANGEREDFRM
	bne	.L606	@,
	b	.L629	@
.L624:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	strb	r0, [r4, #248]	@, <variable>.SMPPicSyntax.INTERPFRM
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r7, [r4, #12]	@ zero_extendqisi2	@ <variable>.SMPSeqSyntax.RANGERED, <variable>.SMPSeqSyntax.RANGERED
	cmp	r7, #0	@ <variable>.SMPSeqSyntax.RANGERED,
	strb	r0, [r4, #249]	@, <variable>.SMPPicSyntax.FRMCNT
	beq	.L605	@,
	b	.L625	@
.L626:
	mov	r0, #0	@ tmp175,
.L621:
	strb	r0, [r4, #251]	@ tmp175, <variable>.SMPPicSyntax.PTYPE
	b	.L607	@
.L614:
	ldrb	r1, [r5, #3099]	@ zero_extendqisi2	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE, <variable>.PreParseInfo.SMPSeqSyntax.PROFILE
	cmp	r1, #1	@ <variable>.PreParseInfo.SMPSeqSyntax.PROFILE,
	bne	.L610	@,
.L622:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPIPicHdr	@
	mov	r7, r0	@ Ret,
.L616:
	mov	r0, r6	@, pBs
	bl	BsPos	@
	ldr	r1, [r4, #324]	@ <variable>.SMPPicSyntax.HdrLen, <variable>.SMPPicSyntax.HdrLen
	movw	ip, #34960	@ tmp187,
	rsb	r3, r1, r0	@ tmp186, <variable>.SMPPicSyntax.HdrLen,
	mov	r0, r6	@, pBs
	str	r3, [r4, #324]	@ tmp186, <variable>.SMPPicSyntax.HdrLen
	ldr	r4, [r5, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	bl	BsPos	@
	mov	r4, r4, asl #3	@ D.40251, <variable>.stCurPacket.BsLength,
	rsb	r2, r0, r4	@ tmp189,, D.40251
	cmp	r2, #0	@ tmp189,
	bgt	.L602	@,
	bl	vfmw_dprint_nothing	@
	mov	r7, #0	@ Ret,
	b	.L602	@
.L612:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseSMPPPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L616	@
.L628:
	mov	r0, r6	@, pBs
	mov	r1, r5	@, pCodecInf
	mov	r2, r4	@, pSyntax
	bl	VC1_Vfmw_ParseMPBPicHdr	@
	mov	r7, r0	@ Ret,
	b	.L616	@
.L627:
	strb	r3, [r4, #252]	@ D.40231, <variable>.SMPPicSyntax.BFRACTION
	ldrb	r0, [r4, #251]	@ zero_extendqisi2	@ prephitmp.2132, <variable>.SMPPicSyntax.PTYPE
	b	.L607	@
	.fnend
	.size	VC1_Vfmw_ParseSMPPicHdr, .-VC1_Vfmw_ParseSMPPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvFramePicHdr
	.type	VC1_Vfmw_ParseAdvFramePicHdr, %function
VC1_Vfmw_ParseAdvFramePicHdr:
	.fnstart
.LFB1960:
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
	movle	r7, #1	@ prephitmp.2157,
	movle	r1, r7	@ Len, prephitmp.2157
	ble	.L632	@,
	cmp	r0, #11	@ Code,
	movle	r7, #2	@ prephitmp.2157,
	movle	r1, r7	@ Len, prephitmp.2157
	bgt	.L656	@,
.L632:
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2157, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	bne	.L657	@,
.L636:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.PULLDOWN,
	moveq	r2, #1	@ tmp162,
	streqb	r2, [r5, #352]	@ tmp162, <variable>.AdvPicSyntax.TFF
	beq	.L639	@,
	ldrb	r1, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r1, #0	@ <variable>.AdvSeqSyntax.INTERLACE,
	bne	.L638	@,
	mov	r0, r6	@, pBs
	mov	r1, #2	@,
	bl	BsGet	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.PULLDOWN, <variable>.AdvSeqSyntax.PULLDOWN
	strb	r0, [r5, #354]	@, <variable>.AdvPicSyntax.RPTFRM
.L639:
	ldrb	r2, [r5, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r2, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	beq	.L658	@,
.L640:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #354]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RPTFRM, <variable>.AdvPicSyntax.RPTFRM
	movne	r3, #1	@ tmp172,
	addeq	r3, r3, #1	@ tmp171, <variable>.AdvPicSyntax.RPTFRM,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp172, <variable>.AdvPicSyntax.NumOfPanScanWindows
	beq	.L659	@,
.L644:
	ldrb	r0, [r5, #349]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.PTYPE, <variable>.AdvPicSyntax.PTYPE
	cmp	r0, #5	@ <variable>.AdvPicSyntax.PTYPE,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.AdvPicSyntax.PTYPE
	b	.L646	@
.L652:
	.word	.L650
	.word	.L648
	.word	.L649
	.word	.L646
	.word	.L650
	.word	.L651
.L650:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvIPicHdr	@
.L638:
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
	bne	.L640	@,
.L658:
	cmp	r3, #1	@ <variable>.AdvSeqSyntax.PULLDOWN,
	ldrb	r1, [r5, #190]	@ zero_extendqisi2	@ <variable>.AdvEntSyntax.PANSCAN_FLAG, <variable>.AdvEntSyntax.PANSCAN_FLAG
	ldreqb	r3, [r5, #353]	@ zero_extendqisi2	@ <variable>.AdvPicSyntax.RFF, <variable>.AdvPicSyntax.RFF
	movne	r3, #2	@ tmp168,
	addeq	r3, r3, #2	@ tmp167, <variable>.AdvPicSyntax.RFF,
	cmp	r1, #1	@ <variable>.AdvEntSyntax.PANSCAN_FLAG,
	str	r3, [r5, #492]	@ tmp168, <variable>.AdvPicSyntax.NumOfPanScanWindows
	bne	.L644	@,
.L659:
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	ip, r0	@ D.40882,
	strb	ip, [r5, #355]	@ D.40882, <variable>.AdvPicSyntax.PS_PRESENT
	cmp	ip, #1	@ D.40882,
	bne	.L644	@,
	ldr	lr, [r5, #492]	@ <variable>.AdvPicSyntax.NumOfPanScanWindows, <variable>.AdvPicSyntax.NumOfPanScanWindows
	cmp	lr, #0	@ <variable>.AdvPicSyntax.NumOfPanScanWindows,
	ble	.L644	@,
	mov	r7, r5	@ ivtmp.2173, pSyntax
	mov	r8, #0	@ i,
.L645:
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
	add	r7, r7, #4	@ ivtmp.2173, ivtmp.2173,
	bgt	.L645	@,
	b	.L644	@
.L656:
	cmp	r0, #13	@ Code,
	movle	r7, #0	@ prephitmp.2157,
	movle	r1, #3	@ Len,
	ble	.L632	@,
	cmp	r0, #14	@ Code,
	mov	r0, r6	@, pBs
	moveq	r7, #4	@ prephitmp.2157,
	movne	r1, #4	@ Len,
	moveq	r1, r7	@ Len, prephitmp.2157
	movne	r7, #5	@ prephitmp.2157,
	bl	BsSkip	@
	strb	r7, [r5, #349]	@ prephitmp.2157, <variable>.AdvPicSyntax.PTYPE
	ldrb	r0, [r4, #3509]	@ zero_extendqisi2	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.SynNew.AdvPicSyntax.PTYPE
	strb	r0, [r4, #2]	@ <variable>.SynNew.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.TFCNTRFLAG, <variable>.AdvSeqSyntax.TFCNTRFLAG
	cmp	r3, #0	@ <variable>.AdvSeqSyntax.TFCNTRFLAG,
	beq	.L636	@,
.L657:
	mov	r0, r6	@, pBs
	mov	r1, #8	@,
	bl	BsGet	@
	str	r0, [r5, #396]	@, <variable>.AdvPicSyntax.TFCNTR
	b	.L636	@
.L649:
	mov	r0, r6	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r5	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvBPicHdr	@
.L646:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L651:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L648:
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
.LFB1967:
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
	beq	.L661	@,
	movw	r1, #22644	@ tmp142,
	ldr	r0, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	cmp	r0, #0	@ <variable>.SlcNum,
	ble	.L668	@,
.L661:
	ldrb	r8, [r6, #23]	@ zero_extendqisi2	@ <variable>.AdvSeqSyntax.INTERLACE, <variable>.AdvSeqSyntax.INTERLACE
	cmp	r8, #1	@ <variable>.AdvSeqSyntax.INTERLACE,
	movne	r8, #1	@ prephitmp.2200,
	movne	r7, #0	@ Code,
	beq	.L669	@,
.L664:
	str	r7, [r6, #392]	@ Code, <variable>.AdvPicSyntax.FCM
.L662:
	cmp	r8, #0	@ prephitmp.2200,
	bne	.L670	@,
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFieldPicHdr	@
.L670:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, r6	@, pSyntax
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1_Vfmw_ParseAdvFramePicHdr	@
.L668:
	ldr	r8, [r6, #392]	@ pretmp.2197, <variable>.AdvPicSyntax.FCM
	cmp	r8, #0	@ pretmp.2197,
	cmpne	r8, #2	@, pretmp.2197,
	movne	r8, #0	@, prephitmp.2200
	moveq	r8, #1	@, prephitmp.2200
	b	.L662	@
.L669:
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsShow	@
	cmp	r0, #1	@ Code,
	mov	r7, r0	@ Code,
	ble	.L671	@,
	mov	r0, r5	@, pBs
	mov	r1, #2	@,
	bl	BsSkip	@
	cmp	r7, #2	@ Code,
	movne	r8, #0	@, prephitmp.2200
	moveq	r8, #1	@, prephitmp.2200
	b	.L664	@
.L671:
	mov	r0, r5	@, pBs
	mov	r1, r8	@, <variable>.AdvSeqSyntax.INTERLACE
	bl	BsSkip	@
	mov	r7, #0	@ Code,
	b	.L664	@
	.fnend
	.size	VC1_Vfmw_ParseAdvPicHdr, .-VC1_Vfmw_ParseAdvPicHdr
	.align	2
	.global	VC1_Vfmw_ParseAdvSlcHdr
	.type	VC1_Vfmw_ParseAdvSlcHdr, %function
VC1_Vfmw_ParseAdvSlcHdr:
	.fnstart
.LFB1968:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #22644	@ tmp142,
	mov	r4, r1	@ pCodecInf, pCodecInf
	mov	r1, #9	@,
	mov	r5, r2	@ pSyntax, pSyntax
	ldr	r7, [r4, r3]	@ D.41312, <variable>.SlcNum
	mov	r6, r0	@ pBs, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r7, r7, r7, asl #1	@, tmp146, D.41312, D.41312,
	add	r7, r5, r7, asl #2	@, tmp148, pSyntax, tmp146,
	str	r0, [r7, #528]	@, <variable>.SLICE_ADDR
	mov	r0, r6	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.41316,
	strb	r0, [r7, #524]	@ D.41316, <variable>.PIC_HEADER_FLAG
	cmp	r0, #1	@ D.41316,
	beq	.L673	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L673:
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
.LFB1972:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, [r0, #3128]	@ pBs, <variable>.pBs
	mov	r4, r0	@ pCodecInf, pCodecInf
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r8, #0	@ tmp172,
	add	r6, r0, #34816	@ pVc1Packet, pCodecInf,
	strb	r8, [r0, #6]	@ tmp172, <variable>.IsWaitToDec
	mov	fp, r1	@ pSyntax, pSyntax
	mov	r0, r5	@, pBs
	mov	r1, #32	@,
	mov	r9, r2	@ ChanID, ChanID
	bl	BsGet	@
	ldr	r7, [r5, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movw	r2, #34940	@ tmp178,
	ldr	sl, [r4, r2]	@ <variable>.stCurPacket.BsVirAddr, <variable>.stCurPacket.BsVirAddr
	movw	r1, #34960	@ tmp180,
	cmp	r7, r8	@ <variable>.TotalPos,
	add	ip, r7, #7	@ tmp176, <variable>.TotalPos,
	ldr	r2, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r6, r6, #124	@ pVc1Packet, pVc1Packet,
	movlt	r7, ip	@ <variable>.TotalPos, tmp176
	mov	r3, r7, asr #3	@ tmp177, <variable>.TotalPos,
	add	sl, r3, sl	@ pTmp, tmp177, <variable>.stCurPacket.BsVirAddr
	rsb	r2, r3, r2	@, tmp177, <variable>.stCurPacket.BsLength
	mov	r1, sl	@, pTmp
	uxtb	r7, r0	@ Code,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	sub	r3, r7, #10	@ tmp183, Code,
	cmp	r3, #5	@ tmp183,
	bhi	.L677	@,
	cmp	r7, #11	@ Code,
	beq	.L718	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r7, r2, #7	@ tmp416, <variable>.CodecStatus,
	cmp	r7, #7	@ tmp416,
	beq	.L719	@,
	movw	r0, #22644	@ tmp423,
	strb	r8, [r4, #8]	@ tmp172, <variable>.Is2ndFld
	str	r8, [r4, r0]	@ tmp172, <variable>.SlcNum
	cmp	r3, #5	@ tmp183,
	ldrls	pc, [pc, r3, asl #2]	@ tmp183
	b	.L713	@
.L698:
	.word	.L693
	.word	.L713
	.word	.L694
	.word	.L695
	.word	.L696
	.word	.L697
.L677:
	sub	lr, r7, #27	@ tmp686, Code,
	cmp	lr, #4	@ tmp686,
	bls	.L714	@,
	cmp	r7, #254	@ Code,
	beq	.L720	@,
.L713:
	mov	r0, r9	@, ChanID
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r7, #0	@ Ret,
.L682:
	mov	r0, r7	@, Ret
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L720:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r7, r0	@ D.41541,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	movw	r1, #:lower16:1128615492	@ tmp688,
	movw	r3, #:lower16:1213419593	@ tmp691,
	movt	r1, #:upper16:1128615492	@ tmp688,
	movt	r3, #:upper16:1213419593	@ tmp691,
	cmp	r0, r1	@, tmp688
	cmpeq	r7, r3	@, D.41541, tmp691
	bne	.L713	@,
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ temp.2286, <variable>.CodecStatus
	mov	r2, #1	@ tmp696,
	strb	r2, [r4, #7]	@ tmp696, <variable>.IsStreamEndFlag
	and	ip, r0, #7	@ tmp698, temp.2286,
	cmp	ip, #7	@ tmp698,
	orreq	r0, r0, #16	@ tmp699, temp.2286,
	streqb	r0, [r4, #0]	@ tmp699, <variable>.CodecStatus
.L714:
	mov	r0, r9	@, ChanID
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r7, #1	@ Ret,
	b	.L682	@
.L718:
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	and	r0, lr, #7	@ tmp185, <variable>.CodecStatus,
	cmp	r0, #7	@ tmp185,
	beq	.L721	@,
	mov	r0, r9	@, ChanID
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r7, r8	@ Ret, tmp172
	b	.L682	@
.L719:
	mov	r7, #1	@ tmp419,
	orr	lr, r2, #16	@ tmp417, <variable>.CodecStatus,
	strb	r7, [r4, #6]	@ tmp419, <variable>.IsWaitToDec
	strb	lr, [r4, #0]	@ tmp417, <variable>.CodecStatus
	b	.L682	@
.L696:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	bl	VC1_Vfmw_ParseAdvEntptHdr	@
	cmp	r0, #1	@ Ret,
	mov	r7, r0	@ Ret,
	beq	.L722	@,
.L711:
	mov	r0, r9	@, ChanID
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	b	.L682	@
.L697:
	mov	r0, r5	@, pBs
	mov	r2, fp	@, pSyntax
	mov	r1, r4	@, pCodecInf
	bl	VC1_Vfmw_ParseAdvSeqHdr	@
	cmp	r0, #1	@ Ret,
	mov	r7, r0	@ Ret,
	ldreqb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orreq	r3, r3, #1	@ tmp684, <variable>.CodecStatus,
	streqb	r3, [r4, #0]	@ tmp684, <variable>.CodecStatus
	b	.L711	@
.L694:
	mov	ip, #1	@ tmp430,
	add	r0, fp, #508	@, pSyntax,
	strb	ip, [r4, #8]	@ tmp430, <variable>.Is2ndFld
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	cmp	r3, #0	@ <variable>.Is2ndFld,
	beq	.L695	@,
.L699:
	add	r2, r4, #22528	@, pCodecInf,
	mov	r1, #12288	@,
	add	r0, r2, #120	@,,
	bl	__memzero	@
	mov	r0, r5	@, pBs
	bl	BsPos	@
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	str	r0, [fp, #488]	@, <variable>.AdvPicSyntax.HdrLen
	mov	r0, r5	@, pBs
	bl	VC1_Vfmw_ParseAdvPicHdr	@
	cmp	r0, #1	@ Ret,
	mov	r7, r0	@ Ret,
	beq	.L723	@,
.L700:
	mov	r0, r9	@, ChanID
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	b	.L682	@
.L693:
	orr	r1, r2, #32	@ tmp428, <variable>.CodecStatus,
	mov	r0, r9	@, ChanID
	strb	r1, [r4, #0]	@ tmp428, <variable>.CodecStatus
	mov	r1, r6	@, pVc1Packet
	bl	VC1_ClearCurPacket	@
	mov	r7, #1	@ Ret,
	b	.L682	@
.L695:
	ldrb	r7, [fp, #379]	@ zero_extendqisi2	@ D.41498, <variable>.AdvPicSyntax.REFDIST
	add	r0, fp, #348	@, pSyntax,
	mov	r1, #176	@,
	bl	__memzero	@
	strb	r7, [fp, #379]	@ D.41498, <variable>.AdvPicSyntax.REFDIST
	b	.L699	@
.L721:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pCodecInf
	mov	r2, fp	@, pSyntax
	bl	VC1_Vfmw_ParseAdvSlcHdr	@
	cmp	r0, #1	@ Ret,
	mov	r7, r0	@ Ret,
	bne	.L700	@,
	movw	r3, #22644	@ tmp186,
	ldr	r5, [r4, r3]	@ D.41478, <variable>.SlcNum
	cmp	r5, #255	@ D.41478,
	bgt	.L724	@,
	mov	r9, r5, asl #1	@ tmp703, D.41478,
	movw	r2, #22656	@ tmp187,
	add	r6, r9, r5	@ tmp190, tmp703, D.41478
	ldr	r1, [r4, #3128]	@ pBs, <variable>.pBs
	add	r3, r6, #1	@ tmp211, tmp190,
	add	r6, r4, r6, asl #4	@, tmp192, pCodecInf, tmp190,
	add	lr, r4, r3, asl #4	@,, pCodecInf, tmp211,
	str	lr, [sp, #28]	@, %sfp
	strb	r5, [r6, r2]	@ D.41478, <variable>.SlcNo
	add	lr, r6, #22528	@, tmp192,
	ldr	r0, [sp, #28]	@, %sfp
	add	r3, r6, #22528	@ tmp193, tmp192,
	add	r3, r3, #128	@ tmp193, tmp193,
	add	ip, r0, #22528	@ tmp215,,
	ldr	r0, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	str	lr, [sp, #4]	@, %sfp
	add	ip, ip, #120	@ tmp215, tmp215,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp205, <variable>.TotalPos,
	ldr	r2, [sp, #4]	@, %sfp
	movlt	r0, lr	@ <variable>.TotalPos, tmp205
	add	r0, sl, r0, asr #3	@, tmp207, pTmp, <variable>.TotalPos,
	movw	sl, #22648	@,
	add	r2, r2, #120	@,,
	str	r2, [sp, #4]	@, %sfp
	str	r0, [r6, sl]	@ tmp207, <variable>.pStream
	ldr	r2, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, r2, #7	@, <variable>.TotalPos,
	ldr	r2, [sp, #28]	@, %sfp
	str	lr, [r2, sl]	@, <variable>.BitOffset
	ldr	lr, [r1, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r1, [r1, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r2, r1, lr, asl #3	@, tmp229, <variable>.TotalPos, <variable>.BsLen,
	str	r2, [ip, #4]	@ tmp229, <variable>.Len
	str	r3, [sp, #24]	@,
	bl	MEM_Vir2Phy	@
	ldr	ip, [sp, #24]	@,
	movw	r3, #34968	@ tmp252,
	add	r1, r6, #22528	@ tmp251, tmp192,
	add	r1, r1, #160	@ tmp251, tmp251,
	str	r0, [ip, #4]	@, <variable>.Phy_addr
	movw	r0, #22688	@ tmp245,
	ldr	r2, [r4, r3]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	movw	ip, #34944	@ tmp254,
	str	r2, [r6, r0]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r3, [r4, ip]	@ D.41809, <variable>.stCurPacket.BsVirAddr
	cmp	r3, #0	@ D.41809,
	beq	.L683	@,
	movw	r0, #34956	@ tmp255,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L683	@,
	ldr	sl, [sp, #4]	@, %sfp
	movw	r2, #22680	@ tmp264,
	movw	ip, #34964	@ tmp279,
	str	r8, [r6, r2]	@ tmp172, <variable>.BitOffset2
	str	r3, [sl, #4]	@ D.41809, <variable>.pStream2
	add	r3, r6, #22528	@ tmp270, tmp192,
	ldr	r2, [r4, ip]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #152	@ tmp270, tmp270,
	add	r6, r6, #22528	@ tmp288, tmp192,
	add	r6, r6, #144	@ tmp288, tmp288,
	mov	ip, r2, asl #3	@ tmp281, <variable>.stCurPacket.BsLength,
	str	ip, [r3, #4]	@ tmp281, <variable>.Len2
	ldr	r3, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r2, #34972	@ tmp298,
	str	r3, [r6, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r0, [r4, r2]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r0, [r1, #4]	@ <variable>.stCurPacket.StreamID,
.L684:
	movw	r3, #22564	@ tmp348,
	movw	r0, #22560	@ tmp349,
	ldr	r1, [r4, r0]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r3]	@ D.41799, <variable>.MbHeight
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r1, r3	@ tmp350, <variable>.MbWidth, D.41799
	cmp	r2, #0	@ <variable>.Is2ndFld,
	sub	r1, ip, #1	@ totalMbMin1, tmp350,
	beq	.L687	@,
	add	ip, r9, r5	@ tmp356, tmp703, D.41478
	add	r2, r3, #1	@ tmp360, D.41799,
	add	fp, fp, ip, asl #2	@, tmp358, pSyntax, tmp356,
	add	r3, r2, r2, lsr #31	@, tmp363, tmp360, tmp360,
	add	r2, r4, ip, asl #4	@, tmp371, pCodecInf, tmp356,
	movw	ip, #22672	@ tmp366,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.41791, <variable>.SLICE_ADDR, tmp363,
	str	r3, [r2, ip]	@ D.41791, <variable>.SlcEndMbn
	cmp	r3, #0	@ D.41791,
	ble	.L688	@,
	cmp	r1, r3	@ totalMbMin1, D.41791
	bcc	.L708	@,
.L688:
	add	r5, r9, r5	@ tmp389, tmp703, D.41478
	add	ip, r5, #1	@ tmp390, tmp389,
	add	r3, r4, ip, asl #4	@, tmp393, pCodecInf, tmp390,
	add	r1, r3, #22528	@ tmp394, tmp393,
	add	r0, r1, #120	@ tmp394, tmp394,
	ldr	r2, [r0, #4]	@ <variable>.Len, <variable>.Len
	cmp	r2, #0	@ <variable>.Len,
	ble	.L708	@,
	add	r5, r4, r5, asl #4	@, tmp401, pCodecInf, tmp389,
	add	r1, r5, #22528	@ tmp402, tmp401,
	add	r0, r1, #120	@ tmp402, tmp402,
	ldr	r2, [r0, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L709	@,
	add	r2, r5, #22528	@ tmp410, tmp401,
	add	ip, r2, #152	@ tmp410, tmp410,
	ldr	r3, [ip, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	ble	.L708	@,
.L709:
	movw	r1, #22644	@ tmp674,
	ldr	r3, [r4, r1]	@ <variable>.SlcNum, <variable>.SlcNum
	add	r0, r3, #1	@ tmp677, <variable>.SlcNum,
	str	r0, [r4, r1]	@ tmp677, <variable>.SlcNum
	b	.L682	@
.L723:
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r3, [fp, #488]	@ <variable>.AdvPicSyntax.HdrLen, <variable>.AdvPicSyntax.HdrLen
	rsb	r1, r3, r0	@ tmp439, <variable>.AdvPicSyntax.HdrLen,
	str	r1, [fp, #488]	@ tmp439, <variable>.AdvPicSyntax.HdrLen
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	mov	r0, r5	@, pBs
	orr	ip, r2, #4	@ tmp442, <variable>.CodecStatus,
	strb	ip, [r4, #0]	@ tmp442, <variable>.CodecStatus
	bl	BsPos	@
	movw	r3, #34960	@ tmp445,
	ldr	r1, [r4, r3]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r0, r0, #32	@ tmp444,,
	cmp	r0, r1, asl #3	@ tmp444, <variable>.stCurPacket.BsLength,
	bge	.L700	@,
	movw	r8, #22644	@ tmp448,
	ldr	r2, [r4, #3128]	@ pBs, <variable>.pBs
	ldr	r6, [r4, r8]	@ D.41878, <variable>.SlcNum
	movw	r0, #22656	@ tmp449,
	mov	r8, r6, asl #1	@ tmp702, D.41878,
	add	r5, r8, r6	@ tmp452, tmp702, D.41878
	add	ip, r5, #1	@ tmp473, tmp452,
	add	r5, r4, r5, asl #4	@, tmp454, pCodecInf, tmp452,
	add	ip, r4, ip, asl #4	@, tmp476, pCodecInf, tmp473,
	add	r3, r5, #22528	@ tmp463, tmp454,
	strb	r6, [r5, r0]	@ D.41878, <variable>.SlcNo
	add	r1, ip, #22528	@ tmp477, tmp476,
	ldr	r0, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r1, r1, #120	@ tmp477, tmp477,
	add	r3, r3, #120	@ tmp463, tmp463,
	add	r9, r5, #22528	@ tmp455, tmp454,
	cmp	r0, #0	@ <variable>.TotalPos,
	add	lr, r0, #7	@ tmp467, <variable>.TotalPos,
	add	r9, r9, #128	@ tmp455, tmp455,
	movlt	r0, lr	@ <variable>.TotalPos, tmp467
	movw	lr, #22648	@,
	add	r0, sl, r0, asr #3	@, tmp469, pTmp, <variable>.TotalPos,
	str	r0, [r5, lr]	@ tmp469, <variable>.pStream
	ldr	sl, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	and	lr, sl, #7	@ tmp479, <variable>.TotalPos,
	movw	sl, #22648	@,
	str	lr, [ip, sl]	@ tmp479, <variable>.BitOffset
	ldr	ip, [r2, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r2, [r2, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	lr, r2, ip, asl #3	@, tmp491, <variable>.TotalPos, <variable>.BsLen,
	str	lr, [r1, #4]	@ tmp491, <variable>.Len
	str	r3, [sp, #24]	@,
	bl	MEM_Vir2Phy	@
	movw	r3, #34968	@ tmp514,
	movw	r1, #22688	@ tmp507,
	add	r2, r5, #22528	@ tmp513, tmp454,
	add	r2, r2, #160	@ tmp513, tmp513,
	str	r0, [r9, #4]	@, <variable>.Phy_addr
	movw	r0, #34944	@ tmp516,
	ldr	ip, [r4, r3]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	ip, [r5, r1]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID
	ldr	r1, [r4, r0]	@ D.41861, <variable>.stCurPacket.BsVirAddr
	ldr	r3, [sp, #24]	@,
	cmp	r1, #0	@ D.41861,
	beq	.L702	@,
	movw	r0, #34956	@ tmp517,
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	cmp	ip, #0	@ <variable>.stCurPacket.BsPhyAddr,
	beq	.L702	@,
	str	r1, [r3, #4]	@ D.41861, <variable>.pStream2
	movw	r1, #22680	@ tmp526,
	mov	ip, #0	@ tmp533,
	str	ip, [r5, r1]	@ tmp533, <variable>.BitOffset2
	movw	r1, #34964	@ tmp541,
	add	r3, r5, #22528	@ tmp532, tmp454,
	ldr	ip, [r4, r1]	@ <variable>.stCurPacket.BsLength, <variable>.stCurPacket.BsLength
	add	r3, r3, #152	@ tmp532, tmp532,
	add	r5, r5, #22528	@ tmp550, tmp454,
	add	r5, r5, #144	@ tmp550, tmp550,
	mov	r1, ip, asl #3	@ tmp543, <variable>.stCurPacket.BsLength,
	str	r1, [r3, #4]	@ tmp543, <variable>.Len2
	ldr	ip, [r4, r0]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.stCurPacket.BsPhyAddr
	movw	r1, #34972	@ tmp560,
	str	ip, [r5, #4]	@ <variable>.stCurPacket.BsPhyAddr, <variable>.Phy_addr2
	ldr	r3, [r4, r1]	@ <variable>.stCurPacket.StreamID, <variable>.stCurPacket.StreamID
	str	r3, [r2, #4]	@ <variable>.stCurPacket.StreamID, <variable>.StreamID2
.L703:
	movw	r3, #22564	@ tmp610,
	movw	r0, #22560	@ tmp611,
	ldr	r1, [r4, r0]	@ <variable>.MbWidth, <variable>.MbWidth
	ldr	r3, [r4, r3]	@ D.41851, <variable>.MbHeight
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ <variable>.Is2ndFld, <variable>.Is2ndFld
	mul	ip, r1, r3	@ tmp612, <variable>.MbWidth, D.41851
	cmp	r2, #0	@ <variable>.Is2ndFld,
	sub	r1, ip, #1	@ totalMbMin1, tmp612,
	beq	.L706	@,
	add	ip, r8, r6	@ tmp618, tmp702, D.41878
	add	r2, r3, #1	@ tmp622, D.41851,
	add	fp, fp, ip, asl #2	@, tmp620, pSyntax, tmp618,
	add	r3, r2, r2, lsr #31	@, tmp625, tmp622, tmp622,
	add	r2, r4, ip, asl #4	@, tmp633, pCodecInf, tmp618,
	movw	ip, #22672	@ tmp628,
	ldr	r0, [fp, #528]	@ <variable>.SLICE_ADDR, <variable>.SLICE_ADDR
	sub	r3, r0, r3, asr #1	@ D.41843, <variable>.SLICE_ADDR, tmp625,
	str	r3, [r2, ip]	@ D.41843, <variable>.SlcEndMbn
	cmp	r3, #0	@ D.41843,
	ble	.L707	@,
	cmp	r1, r3	@ totalMbMin1, D.41843
	bcc	.L708	@,
.L707:
	add	r6, r8, r6	@ tmp651, tmp702, D.41878
	add	ip, r6, #1	@ tmp652, tmp651,
	add	r3, r4, ip, asl #4	@, tmp655, pCodecInf, tmp652,
	add	r1, r3, #22528	@ tmp656, tmp655,
	add	r0, r1, #120	@ tmp656, tmp656,
	ldr	r2, [r0, #4]	@ <variable>.Len, <variable>.Len
	cmp	r2, #0	@ <variable>.Len,
	ble	.L708	@,
	add	r6, r4, r6, asl #4	@, tmp663, pCodecInf, tmp651,
	add	r1, r6, #22528	@ tmp664, tmp663,
	add	r0, r1, #120	@ tmp664, tmp664,
	ldr	r2, [r0, #4]	@ <variable>.pStream2, <variable>.pStream2
	cmp	r2, #0	@ <variable>.pStream2,
	beq	.L709	@,
	add	r2, r6, #22528	@ tmp672, tmp663,
	add	ip, r2, #152	@ tmp672, tmp672,
	ldr	r3, [ip, #4]	@ <variable>.Len2, <variable>.Len2
	cmp	r3, #0	@ <variable>.Len2,
	bgt	.L709	@,
.L708:
	bl	vfmw_dprint_nothing	@
	mov	r7, #0	@ Ret,
	b	.L682	@
.L702:
	add	r2, r8, r6	@ tmp565, tmp702, D.41878
	mov	r3, #0	@ tmp569,
	add	r2, r4, r2, asl #4	@, tmp567, pCodecInf, tmp565,
	add	ip, r2, #22528	@ tmp600, tmp567,
	add	r5, ip, #120	@ tmp568, tmp568,
	add	r0, ip, #152	@ tmp576, tmp576,
	add	r1, ip, #144	@ tmp592, tmp592,
	add	ip, ip, #160	@ tmp600, tmp600,
	str	r3, [r5, #4]	@ tmp569, <variable>.pStream2
	str	r3, [ip, #4]	@ tmp569, <variable>.StreamID2
	movw	ip, #22680	@ tmp570,
	str	r3, [r2, ip]	@ tmp569, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp569, <variable>.Len2
	str	r3, [r1, #4]	@ tmp569, <variable>.Phy_addr2
	b	.L703	@
.L724:
	mov	r0, r4	@, pCodecInf
	mov	r1, r9	@, ChanID
	bl	VC1_ClearCurPic	@
	mov	r7, r8	@ Ret, tmp172
	bl	vfmw_dprint_nothing	@
	b	.L682	@
.L706:
	add	ip, r8, r6	@ tmp638, tmp702, D.41878
	add	fp, fp, ip, asl #2	@, tmp640, pSyntax, tmp638,
	add	r0, r4, ip, asl #4	@, tmp647, pCodecInf, tmp638,
	ldr	r3, [fp, #528]	@ temp.2301, <variable>.SLICE_ADDR
	cmp	r1, r3	@ totalMbMin1, temp.2301
	movw	r1, #22672	@ tmp642,
	str	r3, [r0, r1]	@ temp.2301, <variable>.SlcEndMbn
	bcs	.L707	@,
.L716:
	mov	r7, r2	@ Ret, <variable>.Is2ndFld
	bl	vfmw_dprint_nothing	@
	b	.L682	@
.L683:
	add	r2, r9, r5	@ tmp303, tmp703, D.41478
	mov	r3, #0	@ tmp307,
	add	r2, r4, r2, asl #4	@, tmp305, pCodecInf, tmp303,
	add	ip, r2, #22528	@ tmp338, tmp305,
	add	r6, ip, #120	@ tmp306, tmp306,
	add	r0, ip, #152	@ tmp314, tmp314,
	add	r1, ip, #144	@ tmp330, tmp330,
	add	ip, ip, #160	@ tmp338, tmp338,
	str	r3, [r6, #4]	@ tmp307, <variable>.pStream2
	str	r3, [ip, #4]	@ tmp307, <variable>.StreamID2
	movw	ip, #22680	@ tmp308,
	str	r3, [r2, ip]	@ tmp307, <variable>.BitOffset2
	str	r3, [r0, #4]	@ tmp307, <variable>.Len2
	str	r3, [r1, #4]	@ tmp307,
	b	.L684	@
.L722:
	mov	r1, fp	@, pSyntax
	mov	r0, r4	@, pCodecInf
	bl	VC1_Vfmw_UpdateAdvSPS	@
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.CodecStatus, <variable>.CodecStatus
	orr	ip, r2, #2	@ tmp680, <variable>.CodecStatus,
	strb	ip, [r4, #0]	@ tmp680, <variable>.CodecStatus
	b	.L711	@
.L687:
	add	ip, r9, r5	@ tmp376, tmp703, D.41478
	add	fp, fp, ip, asl #2	@, tmp378, pSyntax, tmp376,
	add	r0, r4, ip, asl #4	@, tmp385, pCodecInf, tmp376,
	ldr	r3, [fp, #528]	@ temp.2293, <variable>.SLICE_ADDR
	cmp	r1, r3	@ totalMbMin1, temp.2293
	movw	r1, #22672	@ tmp380,
	str	r3, [r0, r1]	@ temp.2293, <variable>.SlcEndMbn
	bcs	.L688	@,
	b	.L716	@
	.fnend
	.size	VC1_Vfmw_ParseAdvHdr, .-VC1_Vfmw_ParseAdvHdr
	.align	2
	.global	VC1_Vfmw_ParseHeader
	.type	VC1_Vfmw_ParseHeader, %function
VC1_Vfmw_ParseHeader:
	.fnstart
.LFB1973:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@, <variable>.PreParseInfo.IsAdvProfile
	mov	r4, r0	@ pCodecInf, pCodecInf
	cmp	r3, #0	@ <variable>.PreParseInfo.IsAdvProfile,
	bne	.L726	@,
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
.L726:
	ldmfd	sp!, {r4, lr}	@
	b	VC1_Vfmw_ParseAdvHdr	@
	.fnend
	.size	VC1_Vfmw_ParseHeader, .-VC1_Vfmw_ParseHeader
	.align	2
	.global	VC1_Vfmw_DecodeArbiter
	.type	VC1_Vfmw_DecodeArbiter, %function
VC1_Vfmw_DecodeArbiter:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #:lower16:78272	@ tmp149,
	movt	r3, #:upper16:78272	@ tmp149,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ D.39228, <variable>.CodecInfo.CodecStatus
	tst	r2, #16	@ D.39228,
	beq	.L730	@,
	movw	r1, #:lower16:113324	@ tmp154,
	movt	r1, #:upper16:113324	@ tmp154,
	bic	r2, r2, #20	@ tmp152, D.39228,
	strb	r2, [r0, r3]	@ tmp152, <variable>.CodecInfo.CodecStatus
	ldr	r0, [r0, r1]	@ <variable>.CodecInfo.UsedDecMode, <variable>.CodecInfo.UsedDecMode
	sub	r3, r0, #2	@ tmp155, <variable>.CodecInfo.UsedDecMode,
	cmp	r3, #1	@ tmp155,
	bls	.L731	@,
.L754:
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #8]	@ prephitmp.2362, <variable>.s32DecMode
.L732:
	movw	r1, #:lower16:113324	@ tmp224,
	movt	r1, #:upper16:113324	@ tmp224,
	sub	r0, r2, #1	@ tmp225, prephitmp.2362,
	str	r2, [r4, r1]	@ prephitmp.2362, <variable>.CodecInfo.UsedDecMode
	cmp	r0, #3	@ tmp225,
	ldrls	pc, [pc, r0, asl #2]	@ tmp225
	b	.L736	@
.L741:
	.word	.L737
	.word	.L738
	.word	.L739
	.word	.L740
.L737:
	movw	r2, #:lower16:78274	@ tmp226,
	movt	r2, #:upper16:78274	@ tmp226,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ D.39266, <variable>.CodecInfo.PicCodingType
	cmp	lr, #4	@ D.39266,
	cmpne	lr, #2	@, D.39266,
	beq	.L739	@,
.L736:
	mov	r2, #1	@ ret,
.L744:
	movw	r3, #:lower16:100896	@ tmp251,
	movt	r3, #:upper16:100896	@ tmp251,
	ldr	r3, [r4, r3]	@ D.39291, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.39291,
	bne	.L745	@,
.L757:
	movw	r0, #:lower16:78274	@ tmp252,
	movt	r0, #:upper16:78274	@ tmp252,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ D.39293, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ D.39293,
	cmpne	r3, #5	@, D.39293,
	beq	.L755	@,
	cmp	r3, #4	@ D.39293,
	beq	.L755	@,
	cmp	r3, #2	@ D.39293,
	bne	.L747	@,
.L755:
	bl	vfmw_dprint_nothing	@
.L748:
	movw	r5, #:lower16:113720	@ tmp270,
	movt	r5, #:upper16:113720	@ tmp270,
	add	ip, r4, #77824	@, pVC1_CTX_S,
	add	r0, ip, #448	@,,
	ldr	r1, [r4, r5]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	r2, #:lower16:g_event_report	@ tmp272,
	movt	r2, #:upper16:g_event_report	@ tmp272,
	ldr	r3, [r2, #0]	@ g_event_report.556, g_event_report
	cmp	r3, #0	@ g_event_report.556,
	beq	.L730	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.556
	mov	r0, #0	@ ret.2384,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L759:
	cmp	r3, #2	@ prephitmp.2364,
	bne	.L743	@,
	movw	lr, #:lower16:113256	@ tmp240,
	movt	lr, #:upper16:113256	@ tmp240,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r1, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L736	@,
.L739:
	mov	r2, #0	@ ret,
.L760:
	movw	r3, #:lower16:100896	@ tmp251,
	movt	r3, #:upper16:100896	@ tmp251,
	ldr	r3, [r4, r3]	@ D.39291, <variable>.CodecInfo.RefNum
	cmp	r3, #0	@ D.39291,
	beq	.L757	@,
.L745:
	cmp	r3, #1	@ D.39291,
	bls	.L758	@,
.L747:
	cmp	r2, #0	@ ret,
	beq	.L748	@,
	movw	r0, #:lower16:81368	@ tmp275,
	movt	r0, #:upper16:81368	@ tmp275,
	ldrsb	r3, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L751	@,
	add	r0, r4, #80896	@ tmp280, pVC1_CTX_S,
	add	r2, r4, #88064	@ tmp279, pVC1_CTX_S,
	add	r3, r0, #536	@ tmp280, tmp280,
	add	ip, r2, #560	@ tmp279, tmp279,
	add	lr, r4, #88064	@, pVC1_CTX_S,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp280,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp279,,,,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #784	@,,
	add	r0, lr, #808	@,,
	mov	r2, #100	@,
	bl	memcpy	@
	mov	r0, #1	@ ret.2384,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L730:
	mov	r0, #0	@ ret.2384,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L731:
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #8]	@ prephitmp.2362, <variable>.s32DecMode
	cmp	r2, #4	@ prephitmp.2362,
	cmpne	r2, #1	@, prephitmp.2362,
	bhi	.L732	@,
	movw	r5, #:lower16:113720	@ tmp166,
	movw	r7, #:lower16:100904	@ tmp168,
	movt	r5, #:upper16:113720	@ tmp166,
	movt	r7, #:upper16:100904	@ tmp168,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L733	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:100900	@ tmp192,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:100900	@ tmp192,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp182,
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #200]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r6, #204]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r6, #204]	@ tmp182, <variable>.p_usrdat
	str	r8, [r6, #192]	@ tmp182, <variable>.p_usrdat
	mov	r2, #1	@,
	str	r8, [r6, #196]	@ tmp182, <variable>.p_usrdat
	str	r8, [r6, #200]	@ tmp182, <variable>.p_usrdat
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, r7]	@ tmp182, <variable>.CodecInfo.BwdFsID
	str	r8, [r4, sl]	@ tmp182, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.39257, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.39257, <variable>.CodecInfo.BwdFsID
.L733:
	movw	r1, #:lower16:100820	@ tmp204,
	movt	r1, #:upper16:100820	@ tmp204,
	mov	r3, #0	@ tmp203,
	movw	lr, #:lower16:100896	@ tmp202,
	ldr	r0, [r4, r1]	@ D.39258, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:100896	@ tmp202,
	cmp	r0, r3	@ D.39258,
	str	r3, [r4, lr]	@ tmp203, <variable>.CodecInfo.RefNum
	beq	.L754	@,
	movw	r2, #:lower16:100824	@ tmp206,
	movt	r2, #:upper16:100824	@ tmp206,
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	cmp	ip, #0	@ <variable>.CodecInfo.pRef,
	strneb	r3, [r0, #1]	@ tmp203, <variable>.is_to_display
	ldrne	r0, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r0, #1]	@ tmp203, <variable>.is_to_display
	ldrne	r1, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r1, #0]	@ tmp203, <variable>.is_to_ref
	ldrne	r2, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strneb	r3, [r2, #0]	@ tmp203, <variable>.is_to_ref
	b	.L754	@
.L740:
	movw	r0, #:lower16:78274	@ tmp236,
	movt	r0, #:upper16:78274	@ tmp236,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ prephitmp.2364, <variable>.CodecInfo.PicCodingType
	cmp	r3, #0	@ prephitmp.2364,
	movweq	r2, #:lower16:113256	@ tmp237,
	movteq	r2, #:upper16:113256	@ tmp237,
	streq	r3, [r4, r2]	@ prephitmp.2364, <variable>.CodecInfo.PPicFound
	bne	.L759	@,
.L743:
	cmp	r3, #1	@ prephitmp.2364,
	cmpne	r3, #5	@, prephitmp.2364,
	bne	.L736	@,
	movw	ip, #:lower16:113256	@ tmp249,
	movt	ip, #:upper16:113256	@ tmp249,
	mov	r2, #1	@ tmp250,
	str	r2, [r4, ip]	@ tmp250, <variable>.CodecInfo.PPicFound
	b	.L744	@
.L738:
	movw	r3, #:lower16:78274	@ tmp234,
	movt	r3, #:upper16:78274	@ tmp234,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	ip, #0	@ <variable>.CodecInfo.PicCodingType,
	beq	.L736	@,
	mov	r2, #0	@ ret,
	b	.L760	@
.L751:
	add	r0, r4, #88064	@, pVC1_CTX_S,
	add	r1, r4, #80896	@, pVC1_CTX_S,
	add	r1, r1, #552	@,,
	mov	r2, #172	@,
	add	r0, r0, #576	@,,
	add	r5, r4, #88064	@ tmp295, pVC1_CTX_S,
	bl	memcpy	@
	add	r2, r4, #80896	@ tmp296, pVC1_CTX_S,
	add	lr, r2, #724	@ tmp296, tmp296,
	add	ip, r5, #748	@ tmp295, tmp295,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp325,,,,
	mov	r5, ip	@ tmp326, tmp295
	stmia	r5!, {r0, r1, r2, r3}	@ tmp326,,,,
	mov	ip, r5	@ tmp328, tmp326
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp327,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp328,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp329,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp328,,,,
	add	r3, r4, #88064	@, pVC1_CTX_S,
	ldmia	lr, {r0, r1, r2}	@ tmp329,,,
	add	lr, r4, #80896	@, pVC1_CTX_S,
	stmia	ip, {r0, r1, r2}	@ tmp330,,,
	add	r1, lr, #884	@,,
	add	r0, r3, #908	@,,
	mov	r2, #176	@,
	bl	memcpy	@
	movw	ip, #:lower16:100916	@ tmp309,
	movt	ip, #:upper16:100916	@ tmp309,
	movw	r0, #:lower16:81824	@ tmp304,
	movt	r0, #:upper16:81824	@ tmp304,
	movw	r3, #:lower16:78276	@ tmp303,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum
	movt	r3, #:upper16:78276	@ tmp303,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM
	add	r1, r4, #81920	@, pVC1_CTX_S,
	add	r0, r4, #89088	@, pVC1_CTX_S,
	add	r1, r1, #36	@,,
	add	r2, r2, r2, asl #1	@, tmp313, <variable>.CodecInfo.SlcNum, <variable>.CodecInfo.SlcNum,
	add	r0, r0, #60	@,,
	strb	ip, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvPicSyntax.FCM, <variable>.CodecInfo.PicStructure
	mov	r2, r2, asl #2	@, tmp313,
	bl	memcpy	@
	mov	r0, #1	@ ret.2384,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L758:
	movw	lr, #:lower16:78274	@ tmp260,
	movt	lr, #:upper16:78274	@ tmp260,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ D.39301, <variable>.CodecInfo.PicCodingType
	cmp	r1, #4	@ D.39301,
	cmpne	r1, #2	@, D.39301,
	beq	.L755	@,
	b	.L747	@
	.fnend
	.size	VC1_Vfmw_DecodeArbiter, .-VC1_Vfmw_DecodeArbiter
	.align	2
	.global	VC1_WriteSliceMsg
	.type	VC1_WriteSliceMsg, %function
VC1_WriteSliceMsg:
	.fnstart
.LFB1928:
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
.LFB1927:
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
	beq	.L787	@,
	movw	r0, #:lower16:81368	@ tmp153,
	movt	r0, #:upper16:81368	@ tmp153,
	ldrsb	r3, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L788	@,
	movw	lr, #:lower16:88624	@ tmp439,
	movt	lr, #:upper16:88624	@ tmp439,
	strb	r3, [r5, #5]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fcm
	movw	r6, #:lower16:88875	@ tmp442,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	movt	r6, #:upper16:88875	@ tmp442,
	movw	r8, #:lower16:113276	@ tmp444,
	movt	r8, #:upper16:113276	@ tmp444,
	movw	r7, #:lower16:113272	@ tmp448,
	movt	r7, #:upper16:113272	@ tmp448,
	strb	r2, [r5, #4]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.profile
	movw	fp, #:lower16:88627	@ tmp454,
	ldrb	r9, [r4, r6]	@ zero_extendqisi2	@ iftmp.527, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	movt	fp, #:upper16:88627	@ tmp454,
	movw	r2, #:lower16:78280	@ tmp459,
	movt	r2, #:upper16:78280	@ tmp459,
	cmp	r9, #4	@ iftmp.527,
	moveq	r9, #3	@ iftmp.527,
	strb	r9, [r5, #3]	@ iftmp.527, <variable>.ptype
	ldr	sl, [r4, r8]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movw	r9, #:lower16:88630	@ tmp466,
	movt	r9, #:upper16:88630	@ tmp466,
	movw	r8, #:lower16:88634	@ tmp469,
	sub	r0, sl, #1	@ tmp447, <variable>.CodecInfo.CurPicMbHeight,
	strh	r0, [r5, #80]	@ movhi	@ tmp447, <variable>.mbheight
	ldr	r1, [r4, r7]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movt	r8, #:upper16:88634	@ tmp469,
	strb	r3, [r5, #8]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.curparity
	movw	r7, #:lower16:88894	@ tmp472,
	sub	ip, r1, #1	@ tmp451, <variable>.CodecInfo.CurPicMbWidth,
	strh	ip, [r5, #78]	@ movhi	@ tmp451, <variable>.mbwidth
	ldrb	lr, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER
	movt	r7, #:upper16:88894	@ tmp472,
	strb	r3, [r5, #9]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.numref
	movw	ip, #:lower16:88904	@ tmp475,
	movt	ip, #:upper16:88904	@ tmp475,
	movw	fp, #:lower16:88879	@ tmp478,
	strb	lr, [r5, #6]	@ <variable>.CodecInfo.SMPSeqSyntax.LOOPFILTER, <variable>.loopfilter
	movt	fp, #:upper16:88879	@ tmp478,
	ldrb	r6, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movw	r2, #:lower16:88878	@ tmp481,
	strb	r3, [r5, #10]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.fwd_fcm
	movt	r2, #:upper16:88878	@ tmp481,
	strb	r3, [r5, #11]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.bwd_fcm
	movw	lr, #:lower16:88964	@ tmp484,
	strb	r6, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movt	lr, #:upper16:88964	@ tmp484,
	ldrb	sl, [r4, r9]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC, <variable>.CodecInfo.SMPSeqSyntax.FASTUVMC
	movw	r9, #:lower16:88638	@ tmp487,
	movt	r9, #:upper16:88638	@ tmp487,
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
	ldrb	r1, [r4, r9]	@ zero_extendqisi2	@ D.38626, <variable>.CodecInfo.SMPSeqSyntax.QUANTIZER
	cmp	r1, #0	@ D.38626,
	bne	.L778	@,
	ldrb	fp, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX, <variable>.CodecInfo.SMPPicSyntax.PQINDEX
	cmp	fp, #8	@ <variable>.CodecInfo.SMPPicSyntax.PQINDEX,
	movhi	r3, #0	@, tmp490
	movls	r3, #1	@, tmp490
	strb	r3, [r5, #20]	@ tmp490, <variable>.buniform
.L779:
	movw	lr, #:lower16:88898	@ tmp500,
	movt	lr, #:upper16:88898	@ tmp500,
	movw	sl, #:lower16:88897	@ tmp503,
	movt	sl, #:upper16:88897	@ tmp503,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL
	movw	r8, #:lower16:88632	@ tmp506,
	movt	r8, #:upper16:88632	@ tmp506,
	movw	r1, #:lower16:88896	@ tmp509,
	movt	r1, #:upper16:88896	@ tmp509,
	movw	r0, #:lower16:88908	@ tmp512,
	strb	r9, [r5, #24]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	r0, #:upper16:88908	@ tmp512,
	ldrb	r7, [r4, sl]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE
	movw	fp, #:lower16:88633	@,
	movt	fp, #:upper16:88633	@,
	movw	r3, #:lower16:88899	@ tmp515,
	movt	r3, #:upper16:88899	@ tmp515,
	movw	r2, #:lower16:88883	@ tmp518,
	strb	r7, [r5, #23]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r2, #:upper16:88883	@ tmp518,
	ldrb	r6, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.CodecInfo.SMPSeqSyntax.DQUANT
	movw	lr, #:lower16:88884	@ tmp521,
	movt	lr, #:upper16:88884	@ tmp521,
	movw	r9, #:lower16:100820	@ tmp525,
	movt	r9, #:upper16:100820	@ tmp525,
	movw	sl, #:lower16:100816	@ tmp529,
	strb	r6, [r5, #22]	@ <variable>.CodecInfo.SMPSeqSyntax.DQUANT, <variable>.dquant
	movt	sl, #:upper16:100816	@ tmp529,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM
	movw	r1, #:lower16:88891	@,
	movt	r1, #:upper16:88891	@,
	movw	r8, #:lower16:88881	@ tmp532,
	movt	r8, #:upper16:88881	@ tmp532,
	movw	r7, #:lower16:89003	@ tmp535,
	strb	ip, [r5, #25]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.dquantfrm
	movt	r7, #:upper16:89003	@ tmp535,
	str	fp, [sp, #12]	@, %sfp
	movw	fp, #:lower16:88892	@,
	ldr	r0, [r4, r0]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode
	movt	fp, #:upper16:88892	@,
	str	r1, [sp, #16]	@, %sfp
	movw	r1, #:lower16:88890	@,
	movt	r1, #:upper16:88890	@,
	movw	r6, #:lower16:88893	@ tmp538,
	strb	r0, [r5, #26]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.QuantMode, <variable>.quantmode
	movt	r6, #:upper16:88893	@ tmp538,
	str	fp, [sp, #20]	@, %sfp
	movw	fp, #:lower16:88876	@,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp
	movw	r3, #:lower16:88952	@,
	str	r1, [sp, #44]	@, %sfp
	movt	r3, #:upper16:88952	@,
	movt	fp, #:upper16:88876	@,
	movw	ip, #:lower16:88889	@ tmp544,
	strb	r0, [r5, #21]	@ <variable>.CodecInfo.SMPPicSyntax.VOPDQUANT.UseAltQp, <variable>.usealtqp
	movt	ip, #:upper16:88889	@ tmp544,
	str	r3, [sp, #24]	@, %sfp
	movw	r3, #:lower16:88888	@,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	movt	r3, #:upper16:88888	@,
	str	fp, [sp, #28]	@, %sfp
	movw	r1, #:lower16:88956	@ tmp556,
	movt	r1, #:upper16:88956	@ tmp556,
	movw	r2, #:lower16:88960	@ tmp564,
	strb	r0, [r5, #27]	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE, <variable>.mvmode
	movw	r0, #:lower16:88636	@,
	str	r3, [sp, #32]	@, %sfp
	movt	r2, #:upper16:88960	@ tmp564,
	ldrb	fp, [r4, lr]	@ zero_extendqisi2	@, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	movw	lr, #:lower16:88887	@ tmp574,
	str	r0, [sp, #36]	@, %sfp
	movt	lr, #:upper16:88887	@ tmp574,
	str	fp, [sp, #40]	@, %sfp
	movw	fp, #:lower16:88968	@ tmp578,
	ldr	r3, [sp, #40]	@, %sfp
	movt	fp, #:upper16:88968	@ tmp578,
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
	rsbs	ip, r7, #1	@ tmp558, <variable>.CodecInfo.SMPPicSyntax.DIRECTMBMode
	movcc	ip, #0	@ tmp558
	strb	ip, [r5, #42]	@ tmp558, <variable>.directmbmodeisskipraw
	ldr	r3, [sp, #24]	@, %sfp
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	rsbs	r8, r6, #1	@ tmp562, <variable>.CodecInfo.SMPPicSyntax.MVTYPEMBMode
	movcc	r8, #0	@ tmp562
	strb	r8, [r5, #43]	@ tmp562, <variable>.mvtypembmodeisskipraw
	ldr	sl, [r4, r2]	@ <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movw	r6, #12372	@ tmp577,
	rsbs	r0, sl, #1	@ tmp566, <variable>.CodecInfo.SMPPicSyntax.SKIPMBMode
	movcc	r0, #0	@ tmp566
	strb	r0, [r5, #45]	@ tmp566, <variable>.skipmbmodeisskipraw
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
	beq	.L782	@,
	mov	r3, #0	@ prephitmp.2449,
	mov	r0, r3	@ prephitmp.2447, prephitmp.2449
	mov	ip, r3	@ prephitmp.2483, prephitmp.2449
	mov	r1, r3	@ prephitmp.2465, prephitmp.2449
.L783:
	strb	r1, [r5, #59]	@ prephitmp.2465, <variable>.RANGEREDFRM
	movw	r6, #:lower16:88624	@ tmp608,
	strb	ip, [r5, #60]	@ prephitmp.2483, <variable>.RANGEREDFRM0
	movt	r6, #:upper16:88624	@ tmp608,
	strb	r0, [r5, #61]	@ prephitmp.2447, <variable>.RANGEREDFRM1
	ldr	ip, [sp, #8]	@, %sfp
	str	r3, [ip, #324]	@ prephitmp.2449, <variable>.stDispImg.ImageDnr.Rangedfrm
	ldrb	r3, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.CodecInfo.SMPSeqSyntax.PROFILE
	strb	r3, [ip, #302]	@ <variable>.CodecInfo.SMPSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
.L776:
	movw	ip, #:lower16:100916	@ tmp611,
	movt	ip, #:upper16:100916	@ tmp611,
	movw	r3, #:lower16:100848	@ tmp613,
	movt	r3, #:upper16:100848	@ tmp613,
	ldrh	r2, [r4, ip]	@, <variable>.CodecInfo.SlcNum
	movw	sl, #:lower16:100852	@ tmp615,
	movt	sl, #:upper16:100852	@ tmp615,
	movw	r6, #:lower16:78283	@ tmp617,
	movt	r6, #:upper16:78283	@ tmp617,
	movw	lr, #:lower16:78284	@ tmp620,
	strh	r2, [r5, #72]	@ movhi	@, <variable>.totalslicenum
	movt	lr, #:upper16:78284	@ tmp620,
	ldrh	r8, [r4, r3]	@, <variable>.CodecInfo.DispPicWidth
	movw	ip, #:lower16:100832	@ tmp624,
	movt	ip, #:upper16:100832	@ tmp624,
	strh	r8, [r5, #74]	@ movhi	@, <variable>.DispPicWidth
	ldrh	r7, [r4, sl]	@, <variable>.CodecInfo.DispPicHeight
	strh	r7, [r5, #76]	@ movhi	@, <variable>.DispPicHeight
	movw	r7, #:lower16:113296	@ tmp633,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	movt	r7, #:upper16:113296	@ tmp633,
	movw	r6, #:lower16:113300	@ tmp636,
	movt	r6, #:upper16:113300	@ tmp636,
	strb	r0, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	movw	r0, #:lower16:113312	@ tmp645,
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PostCresent, <variable>.CodecInfo.PostCresent
	movw	lr, #:lower16:113304	@ tmp639,
	movt	lr, #:upper16:113304	@ tmp639,
	movt	r0, #:upper16:113312	@ tmp645,
	strb	r1, [r5, #62]	@ <variable>.CodecInfo.PostCresent, <variable>.PostCresent
	movw	r1, #:lower16:113316	@ tmp648,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	ip, #:lower16:113308	@ tmp642,
	movt	ip, #:upper16:113308	@ tmp642,
	movt	r1, #:upper16:113316	@ tmp648,
	adds	r3, r2, #127	@ tmp625, <variable>.CodecInfo.MbWidth,
	addmi	r3, r2, #254	@, tmp628, <variable>.CodecInfo.MbWidth,
	movw	r2, #:lower16:113320	@ tmp651,
	movt	r2, #:upper16:113320	@ tmp651,
	mov	r8, r3, asr #7	@ tmp630, tmp628,
	movw	r3, #12404	@ tmp623,
	mov	sl, r8, asl #4	@ tmp631, tmp630,
	str	sl, [r5, r3]	@ tmp631, <variable>.BPD_STRIDE
	ldr	sl, [r4, r7]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r8, #12408	@ tmp632,
	movw	r7, #12412	@ tmp635,
	movw	r3, #:lower16:78285	@ tmp654,
	movt	r3, #:upper16:78285	@ tmp654,
	str	sl, [r5, r8]	@ <variable>.CodecInfo.MVTYPEMB_ADDR, <variable>.MVTYPEMB_ADDR
	add	r3, r4, r3	@ tmp654, pCtx, tmp654
	ldr	r8, [r4, r6]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.CodecInfo.SKIPMB_ADDR
	mov	r6, #12416	@ tmp638,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.SKIPMB_ADDR, <variable>.SKIPMB_ADDR
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.CodecInfo.DIRECTMB_ADDR
	movw	lr, #12420	@ tmp641,
	str	r7, [r5, r6]	@ <variable>.CodecInfo.DIRECTMB_ADDR, <variable>.DIRECTMB_ADDR
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.CodecInfo.ACPRED_ADDR
	str	r6, [r5, lr]	@ <variable>.CodecInfo.ACPRED_ADDR, <variable>.ACPRED_ADDR
	movw	lr, #12424	@ tmp644,
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.CodecInfo.OVERFLAGS_ADDR
	str	ip, [r5, lr]	@ <variable>.CodecInfo.OVERFLAGS_ADDR, <variable>.OVERFLAGS_ADDR
	movw	ip, #12428	@ tmp647,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.CodecInfo.FIELDTX_ADDR
	movw	lr, #12432	@ tmp650,
	str	r0, [r5, ip]	@ <variable>.CodecInfo.FIELDTX_ADDR, <variable>.FIELDTX_ADDR
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.CodecInfo.FORWARDMB_ADDR
	str	r3, [r5, #64]	@ tmp654, <variable>.pIntensityConvertTab
	str	r1, [r5, lr]	@ <variable>.CodecInfo.FORWARDMB_ADDR, <variable>.FORWARDMB_ADDR
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L788:
	movw	ip, #:lower16:89016	@ tmp155,
	movt	ip, #:upper16:89016	@ tmp155,
	movw	r8, #:lower16:88640	@ tmp158,
	movt	r8, #:upper16:88640	@ tmp158,
	ldr	fp, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	r6, #:lower16:88973	@ tmp161,
	movt	r6, #:upper16:88973	@ tmp161,
	movw	r3, #:lower16:113276	@ tmp165,
	movt	r3, #:upper16:113276	@ tmp165,
	movw	r2, #:lower16:113272	@ tmp178,
	strb	fp, [r5, #5]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.fcm
	movt	r2, #:upper16:113272	@ tmp178,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movw	r8, #:lower16:89013	@ tmp182,
	movt	r8, #:upper16:89013	@ tmp182,
	strb	r7, [r5, #4]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.profile
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ iftmp.526, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	movw	r6, #:lower16:88816	@ tmp185,
	movt	r6, #:upper16:88816	@ tmp185,
	cmp	r0, #4	@ iftmp.526,
	moveq	r0, #3	@ iftmp.526,
	strb	r0, [r5, #3]	@ iftmp.526, <variable>.ptype
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movw	ip, #:lower16:89004	@ tmp188,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	movt	ip, #:upper16:89004	@ tmp188,
	cmp	r1, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	movw	r3, #:lower16:78280	@ tmp191,
	addeq	lr, lr, #1	@ tmp166, <variable>.CodecInfo.CurPicMbHeight,
	movt	r3, #:upper16:78280	@ tmp191,
	addeq	lr, lr, lr, lsr #31	@, tmp170, tmp166, tmp166,
	moveq	lr, lr, asr #1	@ tmp171, tmp170,
	sub	r9, lr, #1	@ tmp177, <variable>.CodecInfo.CurPicMbHeight,
	strh	r9, [r5, #80]	@ movhi	@ tmp177, <variable>.mbheight
	ldr	sl, [r4, r2]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	movw	r9, #:lower16:100872	@ tmp195,
	movt	r9, #:upper16:100872	@ tmp195,
	sub	fp, sl, #1	@ tmp181, <variable>.CodecInfo.CurPicMbWidth,
	strh	fp, [r5, #78]	@ movhi	@ tmp181, <variable>.mbwidth
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	fp, #1432	@ tmp198,
	movw	sl, #:lower16:100888	@ tmp204,
	movt	sl, #:upper16:100888	@ tmp204,
	movw	r8, #:lower16:89002	@ tmp212,
	movt	r8, #:upper16:89002	@ tmp212,
	strb	r7, [r5, #8]	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.curparity
	movw	r7, #:lower16:88817	@ tmp215,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER
	movt	r7, #:upper16:88817	@ tmp215,
	movw	r6, #:lower16:88821	@ tmp218,
	movt	r6, #:upper16:88821	@ tmp218,
	strb	r0, [r5, #6]	@ <variable>.CodecInfo.AdvEntSyntax.LOOPFILTER, <variable>.loopfilter
	movw	r0, #:lower16:89140	@ tmp224,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.CodecInfo.AdvPicSyntax.NUMREF
	movw	ip, #:lower16:88972	@ tmp221,
	movt	ip, #:upper16:88972	@ tmp221,
	movt	r0, #:upper16:89140	@ tmp224,
	strb	r1, [r5, #9]	@ <variable>.CodecInfo.AdvPicSyntax.NUMREF, <variable>.numref
	movw	r1, #:lower16:88975	@ tmp227,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:88975	@ tmp227,
	movw	r3, #:lower16:88982	@ tmp230,
	movt	r3, #:upper16:88982	@ tmp230,
	strb	lr, [r5, #7]	@ <variable>.CodecInfo.Is2ndFld, <variable>.issecondfld
	movw	lr, #:lower16:88822	@ tmp236,
	ldr	r2, [r4, r9]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	lr, #:upper16:88822	@ tmp236,
	mla	r9, fp, r2, r4	@ tmp199, tmp198, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	add	r2, r9, #93184	@ tmp200, tmp199,
	add	r9, r2, #64	@ tmp200, tmp200,
	ldrb	r2, [r9, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r2, [r5, #10]	@ <variable>.PicStruct, <variable>.fwd_fcm
	ldr	r9, [r4, sl]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	mla	r2, fp, r9, r4	@ tmp208, tmp198, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	fp, r2, #93184	@ tmp209, tmp208,
	add	sl, fp, #64	@ tmp209, tmp209,
	ldrb	r9, [sl, #3]	@ zero_extendqisi2	@ <variable>.PicStruct, <variable>.PicStruct
	strb	r9, [r5, #11]	@ <variable>.PicStruct, <variable>.bwd_fcm
	ldrb	r2, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.CodecInfo.AdvPicSyntax.CONDOVER
	strb	r2, [r5, #15]	@ <variable>.CodecInfo.AdvPicSyntax.CONDOVER, <variable>.condover
	ldrb	fp, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.CodecInfo.AdvEntSyntax.FASTUVMC
	strb	fp, [r5, #13]	@ <variable>.CodecInfo.AdvEntSyntax.FASTUVMC, <variable>.fastuvmc
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.OVERLAP, <variable>.CodecInfo.AdvEntSyntax.OVERLAP
	mov	r6, #89088	@ tmp233,
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
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ D.38534, <variable>.CodecInfo.AdvEntSyntax.QUANTIZER
	cmp	r2, #0	@ D.38534,
	bne	.L769	@,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX, <variable>.CodecInfo.AdvPicSyntax.PQINDEX
	cmp	r2, #8	@ <variable>.CodecInfo.AdvPicSyntax.PQINDEX,
	movhi	sl, #0	@, tmp239
	movls	sl, #1	@, tmp239
	strb	sl, [r5, #20]	@ tmp239, <variable>.buniform
.L770:
	movw	r6, #:lower16:89134	@ tmp249,
	movt	r6, #:upper16:89134	@ tmp249,
	movw	ip, #:lower16:89133	@ tmp252,
	movt	ip, #:upper16:89133	@ tmp252,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL
	movw	lr, #:lower16:88819	@ tmp255,
	movt	lr, #:upper16:88819	@ tmp255,
	movw	r3, #:lower16:89132	@ tmp258,
	movt	r3, #:upper16:89132	@ tmp258,
	movw	sl, #:lower16:89144	@ tmp261,
	strb	r0, [r5, #24]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQBILEVEL, <variable>.dqbilevel
	movt	sl, #:upper16:89144	@ tmp261,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE
	movw	r2, #:lower16:88996	@,
	movt	r2, #:upper16:88996	@,
	movw	r8, #:lower16:89135	@ tmp264,
	movt	r8, #:upper16:89135	@ tmp264,
	movw	r7, #:lower16:88986	@ tmp267,
	strb	r1, [r5, #23]	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQPROFILE, <variable>.dqprofile
	movt	r7, #:upper16:88986	@ tmp267,
	ldrb	r9, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.CodecInfo.AdvEntSyntax.DQUANT
	movw	r6, #:lower16:88987	@ tmp270,
	movt	r6, #:upper16:88987	@ tmp270,
	movw	ip, #:lower16:89005	@ tmp273,
	movt	ip, #:upper16:89005	@ tmp273,
	movw	r0, #:lower16:88997	@ tmp276,
	strb	r9, [r5, #22]	@ <variable>.CodecInfo.AdvEntSyntax.DQUANT, <variable>.dquant
	movt	r0, #:upper16:88997	@ tmp276,
	ldrb	fp, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.DQUANTFRM
	movw	r1, #:lower16:100820	@ tmp280,
	movw	r3, #:lower16:89013	@ tmp281,
	movt	r1, #:upper16:100820	@ tmp280,
	movt	r3, #:upper16:89013	@ tmp281,
	movw	lr, #:lower16:100816	@ tmp289,
	strb	fp, [r5, #25]	@, <variable>.dquantfrm
	movw	fp, #:lower16:88820	@,
	ldr	sl, [r4, sl]	@, <variable>.CodecInfo.AdvPicSyntax.VOPDQUANT.QuantMode
	movt	lr, #:upper16:100816	@ tmp289,
	str	r2, [sp, #12]	@, %sfp
	movw	r9, #:lower16:88985	@ tmp297,
	str	fp, [sp, #16]	@, %sfp
	movt	r9, #:upper16:88985	@ tmp297,
	str	sl, [sp, #20]	@, %sfp
	movw	sl, #:lower16:89003	@ tmp300,
	ldr	r2, [sp, #20]	@, %sfp
	movt	sl, #:upper16:89003	@ tmp300,
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
	add	r8, r0, r2	@ tmp284, <variable>.CodecInfo.pRef, <variable>.CodecInfo.AdvPicSyntax.CurParity
	str	r1, [sp, #76]	@, %sfp
	movw	ip, #:lower16:113252	@,
	movt	ip, #:upper16:113252	@,
	ldrb	fp, [r8, #1029]	@ zero_extendqisi2	@ tmp286, <variable>.IsHalfPel
	movw	r7, #:lower16:89000	@ tmp367,
	str	r6, [sp, #84]	@, %sfp
	movt	r7, #:upper16:89000	@ tmp367,
	movw	r6, #:lower16:113248	@ tmp374,
	movt	r6, #:upper16:113248	@ tmp374,
	strb	fp, [r5, #30]	@ tmp286, <variable>.colishalfpel
	str	ip, [sp, #88]	@, %sfp
	movw	ip, #:lower16:88825	@ tmp379,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:88825	@ tmp379,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.CurParity, <variable>.CodecInfo.AdvPicSyntax.CurParity
	add	r2, r1, r0	@ tmp293, <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.AdvPicSyntax.CurParity
	movw	r0, #:lower16:88826	@ tmp382,
	movt	r0, #:upper16:88826	@ tmp382,
	movw	r1, #:lower16:88827	@ tmp385,
	ldrb	fp, [r2, #1029]	@ zero_extendqisi2	@, <variable>.IsHalfPel
	movt	r1, #:upper16:88827	@ tmp385,
	movw	r2, #:lower16:88828	@ tmp388,
	movt	r2, #:upper16:88828	@ tmp388,
	str	fp, [sp, #92]	@, %sfp
	movw	fp, #:lower16:89016	@ tmp391,
	ldr	r8, [sp, #92]	@, %sfp
	movt	fp, #:upper16:89016	@ tmp391,
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
	rsbs	sl, lr, #1	@ tmp323, <variable>.CodecInfo.AdvPicSyntax.ACPREDMode
	movcc	sl, #0	@ tmp323
	strb	sl, [r5, #46]	@ tmp323, <variable>.acpredmodeisskipraw
	ldr	r8, [sp, #40]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	rsbs	sl, lr, #1	@ tmp327, <variable>.CodecInfo.AdvPicSyntax.DIRECTMBMode
	movcc	sl, #0	@ tmp327
	strb	sl, [r5, #42]	@ tmp327, <variable>.directmbmodeisskipraw
	ldr	r8, [sp, #4]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	rsbs	sl, lr, #1	@ tmp331, <variable>.CodecInfo.AdvPicSyntax.FIELDTXMode
	movcc	sl, #0	@ tmp331
	strb	sl, [r5, #44]	@ tmp331, <variable>.fieldtxmodeisskipraw
	ldr	r8, [sp, #44]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	rsbs	sl, lr, #1	@ tmp335, <variable>.CodecInfo.AdvPicSyntax.FORWARDMBMode
	movcc	sl, #0	@ tmp335
	strb	sl, [r5, #41]	@ tmp335, <variable>.forwardmbmodeisskipraw
	ldr	r8, [sp, #48]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	rsbs	sl, lr, #1	@ tmp339, <variable>.CodecInfo.AdvPicSyntax.MVTYPEMBMode
	movcc	sl, #0	@ tmp339
	strb	sl, [r5, #43]	@ tmp339, <variable>.mvtypembmodeisskipraw
	ldr	r8, [sp, #52]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	rsbs	sl, lr, #1	@ tmp343, <variable>.CodecInfo.AdvPicSyntax.OVERFLAGSMode
	movcc	sl, #0	@ tmp343
	strb	sl, [r5, #47]	@ tmp343, <variable>.overflagsmodeisskipraw
	ldr	r8, [sp, #56]	@, %sfp
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	rsbs	sl, lr, #1	@ tmp347, <variable>.CodecInfo.AdvPicSyntax.SKIPMBMode
	movcc	sl, #0	@ tmp347
	strb	sl, [r5, #45]	@ tmp347, <variable>.skipmbmodeisskipraw
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
	movw	r7, #12372	@ tmp370,
	strb	lr, [r5, #52]	@ <variable>.CodecInfo.AdvPicSyntax.BMVBPTAB, <variable>.twomvbptab
	ldr	sl, [sp, #84]	@, %sfp
	ldr	r8, [r4, sl]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	sl, #12376	@ tmp373,
	str	r8, [r5, r7]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.ScaleFactor
	ldr	lr, [r4, r6]	@ <variable>.CodecInfo.FRFD, <variable>.CodecInfo.FRFD
	movw	r6, #12380	@ tmp376,
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
	beq	.L789	@,
	ldrb	r6, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	lr, [sp, #8]	@, %sfp
	strb	r6, [lr, #297]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r3, [lr, #298]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	ip, [lr, #299]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	sl, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	sl, [lr, #300]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
.L775:
	movw	r8, #:lower16:88640	@ tmp431,
	movt	r8, #:upper16:88640	@ tmp431,
	ldr	r0, [sp, #8]	@, %sfp
	movw	r1, #:lower16:78283	@ tmp434,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.CodecInfo.AdvSeqSyntax.PROFILE
	movt	r1, #:upper16:78283	@ tmp434,
	strb	r7, [r0, #302]	@ <variable>.CodecInfo.AdvSeqSyntax.PROFILE, <variable>.stDispImg.ImageDnr.vc1_profile
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecInfo.CodecVersion
	strb	r2, [r5, #63]	@ <variable>.CodecInfo.CodecVersion, <variable>.CodecVersion
	b	.L776	@
.L778:
	cmp	r1, #1	@ D.38626,
	beq	.L790	@,
	cmp	r1, #2	@ D.38626,
	movne	r3, #1	@ tmp498,
	strb	r3, [r5, #20]	@ tmp498, <variable>.buniform
	b	.L779	@
.L769:
	cmp	r2, #1	@ D.38534,
	beq	.L791	@,
	cmp	r2, #2	@ D.38534,
	moveq	r3, #0	@ tmp245,
	movne	r3, #1	@ tmp247,
	strb	r3, [r5, #20]	@ tmp247, <variable>.buniform
	b	.L770	@
.L791:
	movw	r3, #:lower16:88983	@ tmp241,
	movt	r3, #:upper16:88983	@ tmp241,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER
	subs	r9, lr, #0	@ tmp243, <variable>.CodecInfo.AdvPicSyntax.PQUANTIZER,
	movne	r9, #1	@ tmp243
	strb	r9, [r5, #20]	@ tmp243, <variable>.buniform
	b	.L770	@
.L790:
	movw	r7, #:lower16:88880	@ tmp492,
	movt	r7, #:upper16:88880	@ tmp492,
	ldrb	r1, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER
	subs	ip, r1, #0	@ tmp494, <variable>.CodecInfo.SMPPicSyntax.PQUANTIZER,
	movne	ip, #1	@ tmp494
	strb	ip, [r5, #20]	@ tmp494, <variable>.buniform
	b	.L779	@
.L789:
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2451, <variable>.CodecInfo.AdvPicSyntax.CurParity
	cmp	r6, #0	@ prephitmp.2451,
	bne	.L774	@,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	ldr	r8, [sp, #8]	@, %sfp
	strb	ip, [r8, #297]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.Range_mapy_flag
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	lr, [r8, #298]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.Range_mapy
	ldrb	sl, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	sl, [r8, #299]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.Range_mapuv_flag
	ldrb	r7, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r7, [r8, #300]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.Range_mapuv
	ldrb	r6, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2451, <variable>.CodecInfo.AdvPicSyntax.CurParity
.L774:
	cmp	r6, #1	@ prephitmp.2451,
	bne	.L775	@,
	movw	fp, #:lower16:88825	@ tmp407,
	movt	fp, #:upper16:88825	@ tmp407,
	movw	r7, #:lower16:88826	@ tmp410,
	movt	r7, #:upper16:88826	@ tmp410,
	ldrb	r8, [r4, fp]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG
	movw	r6, #:lower16:88827	@ tmp413,
	ldr	fp, [sp, #8]	@, %sfp
	movt	r6, #:upper16:88827	@ tmp413,
	movw	r3, #:lower16:88828	@ tmp416,
	movt	r3, #:upper16:88828	@ tmp416,
	strb	r8, [fp, #292]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapy_flag
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY
	strb	r0, [fp, #293]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPY, <variable>.stDispImg.ImageDnr.bottom_Range_mapy
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG
	strb	r1, [fp, #294]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV_FLAG, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv_flag
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV
	strb	r2, [fp, #295]	@ <variable>.CodecInfo.AdvEntSyntax.RANGE_MAPUV, <variable>.stDispImg.ImageDnr.bottom_Range_mapuv
	b	.L775	@
.L782:
	movw	r0, #:lower16:100872	@ tmp583,
	movw	r2, #:lower16:100888	@ tmp590,
	movt	r0, #:upper16:100872	@ tmp583,
	movt	r2, #:upper16:100888	@ tmp590,
	movw	sl, #1432	@ tmp586,
	movw	r1, #:lower16:88875	@ tmp596,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.RefList0.ImgObj, <variable>.CodecInfo.RefList0.ImgObj
	movt	r1, #:upper16:88875	@ tmp596,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.RefList1.ImgObj, <variable>.CodecInfo.RefList1.ImgObj
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.38675, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	mla	r7, sl, lr, r4	@ tmp587, tmp586, <variable>.CodecInfo.RefList0.ImgObj, pCtx
	cmp	r1, #2	@ D.38675,
	cmpne	r1, #4	@, D.38675,
	mla	r6, sl, r0, r4	@ tmp594, tmp586, <variable>.CodecInfo.RefList1.ImgObj, pCtx
	add	r8, r7, #92160	@ tmp588, tmp587,
	add	r2, r8, #64	@ tmp588, tmp588,
	add	ip, r6, #92160	@ tmp595, tmp594,
	add	r3, ip, #64	@ tmp595, tmp595,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ RANGEREDFRM0, <variable>.RANGEREDFRM
	movwne	r2, #:lower16:88874	@ tmp604,
	movtne	r2, #:upper16:88874	@ tmp604,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ RANGEREDFRM1, <variable>.RANGEREDFRM
	uxtbeq	ip, ip	@ prephitmp.2483, RANGEREDFRM0
	uxtbne	ip, ip	@ prephitmp.2483, RANGEREDFRM0
	uxtbne	r0, r3	@ prephitmp.2447, RANGEREDFRM1
	ldrneb	r3, [r4, r2]	@ zero_extendqisi2	@ RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	uxtbeq	r1, r3	@ prephitmp.2465, RANGEREDFRM1
	uxtbne	r1, r3	@ prephitmp.2465, RANGEREDFRM
	moveq	r0, r1	@ prephitmp.2447, prephitmp.2465
	b	.L783	@
.L787:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VC1_WritePicMsg, .-VC1_WritePicMsg
	.align	2
	.global	VC1_Vfmw_StartDecode
	.type	VC1_Vfmw_StartDecode, %function
VC1_Vfmw_StartDecode:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r2, #:lower16:81368	@ tmp156,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movt	r2, #:upper16:81368	@ tmp156,
	movw	r3, #:lower16:78104	@ tmp153,
	movt	r3, #:upper16:78104	@ tmp153,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.39331, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	add	r6, r0, #77824	@ pCodecInf, pVC1_CTX_S,
	ldr	r1, [r1, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	cmp	r2, #1	@ D.39331,
	add	r6, r6, #448	@ pCodecInf, pCodecInf,
	add	r5, r0, #8	@ pVc1DecParam, pVC1_CTX_S,
	str	r1, [r0, r3]	@ <variable>.s32Compress_en, <variable>.Vc1DecParam.Compress_en
	beq	.L793	@,
	cmp	r2, #0	@ D.39331,
	beq	.L807	@,
.L793:
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
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2517, <variable>.CodecInfo.PicCodingType
	cmp	r3, #1	@ prephitmp.2517,
	bls	.L808	@,
.L797:
	cmp	r3, #5	@ prephitmp.2517,
	beq	.L809	@,
	movw	r1, #:lower16:78276	@ tmp194,
	movt	r1, #:upper16:78276	@ tmp194,
	mov	ip, #0	@ tmp192,
	strb	ip, [r4, #9]	@ tmp192, <variable>.Vc1DecParam.IsSkpicCopy
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ prephitmp.2519, <variable>.CodecInfo.PicStructure
.L799:
	movw	lr, #:lower16:78276	@ tmp197,
	movw	r2, #:lower16:78280	@ tmp201,
	movt	lr, #:upper16:78276	@ tmp197,
	movt	r2, #:upper16:78280	@ tmp201,
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ D.39385, <variable>.Vc1DecParam.ptype
	movw	r1, #:lower16:78275	@ tmp196,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r1, #:upper16:78275	@ tmp196,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	movw	r2, #:lower16:78281	@ tmp200,
	cmp	r3, #2	@ D.39385,
	movt	r2, #:upper16:78281	@ tmp200,
	strb	ip, [r4, #8]	@ prephitmp.2519, <variable>.Vc1DecParam.picstructure
	strb	r7, [r4, r1]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct_IPB
	strb	r0, [r4, r2]	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.LastIs2ndFld
	beq	.L810	@,
	cmp	r3, #1	@ D.39385,
	cmpne	r3, #5	@, D.39385,
	movweq	r2, #:lower16:113256	@ tmp224,
	movteq	r2, #:upper16:113256	@ tmp224,
	moveq	r1, #1	@ tmp225,
	streq	r1, [r4, r2]	@ tmp225, <variable>.CodecInfo.PPicFound
.L801:
	ldr	r1, [r4, #0]	@ temp.2536, <variable>.pstExtraData
	str	r5, [r4, #4]	@ pVc1DecParam, <variable>.pVc1DecParam
	ldr	r2, [r1, #708]	@ D.39365, <variable>.stDisParams.s32Mode
	cmp	r2, #1	@ D.39365,
	beq	.L811	@,
	cmp	r2, #2	@ D.39365,
	beq	.L812	@,
.L804:
	mov	r0, #1	@ D.39357,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L807:
	movw	r7, #:lower16:88875	@ tmp158,
	movt	r7, #:upper16:88875	@ tmp158,
	ldrb	r3, [r0, r7]	@ zero_extendqisi2	@ D.41893, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	cmp	r3, #0	@ D.41893,
	cmpne	r3, #4	@, D.41893,
	moveq	r1, #1	@ prephitmp.2521,
	moveq	r0, r1	@ prephitmp.2537, prephitmp.2521
	beq	.L795	@,
	cmp	r3, #1	@ D.41893,
	beq	.L813	@,
	movw	lr, #:lower16:78282	@ tmp169,
	movt	lr, #:upper16:78282	@ tmp169,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ prephitmp.2537, <variable>.CodecInfo.LastPicRNDCTRL
	mov	r1, r0	@ prephitmp.2521, prephitmp.2537
.L795:
	movw	r2, #:lower16:78282	@ tmp170,
	movw	r3, #:lower16:88894	@ tmp172,
	movt	r2, #:upper16:78282	@ tmp170,
	movt	r3, #:upper16:88894	@ tmp172,
	strb	r0, [r4, r2]	@ prephitmp.2537, <variable>.CodecInfo.LastPicRNDCTRL
	strb	r1, [r4, r3]	@ prephitmp.2521, <variable>.CodecInfo.SMPPicSyntax.RNDCTRL
	b	.L793	@
.L812:
	ldr	r0, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r0, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L804	@,
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L804	@,
	cmp	r3, #2	@ D.39385,
	cmpne	r3, #4	@, D.39385,
	bne	.L804	@,
	movw	r0, #:lower16:100816	@ tmp249,
	movt	r0, #:upper16:100816	@ tmp249,
	mov	r5, #0	@ tmp250,
	movw	ip, #:lower16:113720	@ tmp254,
	ldr	r2, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movt	ip, #:upper16:113720	@ tmp254,
	mov	r0, r6	@, pCodecInf
	strb	r5, [r2, #1]	@ tmp250, <variable>.is_to_display
	ldr	lr, [r4, #0]	@ temp.2541, <variable>.pstExtraData
	ldr	r3, [lr, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r1, r3, #1	@ tmp253, <variable>.stDisParams.s32DisNums,
	str	r1, [lr, #712]	@ tmp253, <variable>.stDisParams.s32DisNums
	ldr	r1, [r4, ip]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	str	r5, [r4, #4]	@ tmp250, <variable>.pVc1DecParam
	mov	r0, r5	@ D.39357, tmp250
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L810:
	movw	r1, #:lower16:113256	@ tmp204,
	movt	r1, #:upper16:113256	@ tmp204,
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.PPicFound, <variable>.CodecInfo.PPicFound
	cmp	r7, #0	@ <variable>.CodecInfo.PPicFound,
	bne	.L801	@,
	movw	lr, #:lower16:113720	@ tmp206,
	movt	lr, #:upper16:113720	@ tmp206,
	mov	r0, r6	@, pCodecInf
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	movw	ip, #:lower16:100816	@ tmp209,
	movt	ip, #:upper16:100816	@ tmp209,
	movw	r3, #:lower16:113260	@ tmp212,
	movt	r3, #:upper16:113260	@ tmp212,
	mov	r0, r7	@ D.39357, <variable>.CodecInfo.PPicFound
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r7, [r1, #0]	@ <variable>.CodecInfo.PPicFound, <variable>.is_to_ref
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.BPicCount, <variable>.CodecInfo.BPicCount
	str	r7, [r4, #4]	@ <variable>.CodecInfo.PPicFound, <variable>.pVc1DecParam
	add	ip, r2, #1	@ tmp215, <variable>.CodecInfo.BPicCount,
	str	ip, [r4, r3]	@ tmp215, <variable>.CodecInfo.BPicCount
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L809:
	movw	r3, #:lower16:78277	@ tmp182,
	movt	r3, #:upper16:78277	@ tmp182,
	movw	lr, #:lower16:113280	@ tmp189,
	movt	lr, #:upper16:113280	@ tmp189,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2519, <variable>.CodecInfo.Last_Struct
	movw	r0, #:lower16:78276	@ tmp183,
	ldr	r7, [r4, lr]	@ <variable>.CodecInfo.CurPicMbNum, <variable>.CodecInfo.CurPicMbNum
	movt	r0, #:upper16:78276	@ tmp183,
	movw	r3, #:lower16:78280	@ tmp185,
	movw	r2, #:lower16:77996	@ tmp188,
	movt	r3, #:upper16:78280	@ tmp185,
	movt	r2, #:upper16:77996	@ tmp188,
	mov	lr, #1	@ tmp180,
	sub	r1, r7, #1	@ tmp191, <variable>.CodecInfo.CurPicMbNum,
	strb	ip, [r4, r0]	@ prephitmp.2519, <variable>.CodecInfo.PicStructure
	str	r1, [r4, r2]	@ tmp191, <variable>.Vc1DecParam.basic_cfg0
	strb	lr, [r4, r3]	@ tmp180, <variable>.CodecInfo.Is2ndFld
	strb	lr, [r4, #9]	@ tmp180, <variable>.Vc1DecParam.IsSkpicCopy
	b	.L799	@
.L808:
	movw	ip, #:lower16:78276	@ tmp176,
	movt	ip, #:upper16:78276	@ tmp176,
	movw	r0, #:lower16:78277	@ tmp175,
	movt	r0, #:upper16:78277	@ tmp175,
	ldrb	r7, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.PicStructure
	strb	r7, [r4, r0]	@ <variable>.CodecInfo.PicStructure, <variable>.CodecInfo.Last_Struct
	b	.L797	@
.L811:
	cmp	r5, #0	@ pVc1DecParam,
	beq	.L804	@,
	cmp	r3, #2	@ D.39385,
	cmpne	r3, #4	@, D.39385,
	bne	.L804	@,
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
	mov	r0, r5	@ D.39357, tmp235
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L813:
	movw	ip, #:lower16:78282	@ tmp166,
	movt	ip, #:upper16:78282	@ tmp166,
	ldrsb	r0, [r4, ip]	@ <variable>.CodecInfo.LastPicRNDCTRL, <variable>.CodecInfo.LastPicRNDCTRL
	rsbs	r0, r0, #1	@ prephitmp.2537, <variable>.CodecInfo.LastPicRNDCTRL
	movcc	r0, #0	@ prephitmp.2537
	mov	r1, r0	@ prephitmp.2521, prephitmp.2537
	b	.L795	@
	.fnend
	.size	VC1_Vfmw_StartDecode, .-VC1_Vfmw_StartDecode
	.align	2
	.global	VC1DEC_RecycleImage
	.type	VC1DEC_RecycleImage, %function
VC1DEC_RecycleImage:
	.fnstart
.LFB1923:
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
	beq	.L815	@,
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	mov	r7, #0	@ tmp145,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp145, <variable>.p_usrdat
	ldr	r1, [r6, #196]	@, <variable>.p_usrdat
	ldr	r0, [r5, r4]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp145, <variable>.p_usrdat
.L815:
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	VC1DEC_RecycleImage, .-VC1DEC_RecycleImage
	.align	2
	.global	VC1_Vfmw_GetImageBuffer
	.type	VC1_Vfmw_GetImageBuffer, %function
VC1_Vfmw_GetImageBuffer:
	.fnstart
.LFB1931:
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
	cmp	r0, #0	@ D.38815,
	mov	r1, r0	@ D.38815,
	str	r0, [r4, r3]	@ D.38815, <variable>.CodecInfo.CurFsID
	blt	.L818	@,
	movw	r6, #:lower16:92224	@ tmp164,
	movt	r6, #:upper16:92224	@ tmp164,
	ldrh	r3, [r4, r6]	@ tmp165,
	cmp	r3, #0	@ tmp165,
	beq	.L820	@,
	movw	r7, #:lower16:93656	@ tmp166,
	movt	r7, #:upper16:93656	@ tmp166,
	ldrh	r3, [r4, r7]	@ tmp167,
	cmp	r3, #0	@ tmp167,
	moveq	r3, #1	@ prephitmp.2593,
	beq	.L820	@,
	movw	r8, #:lower16:95088	@ tmp168,
	movt	r8, #:upper16:95088	@ tmp168,
	ldrh	r3, [r4, r8]	@ tmp169,
	cmp	r3, #0	@ tmp169,
	moveq	r3, #2	@ prephitmp.2593,
	beq	.L820	@,
	movw	sl, #:lower16:96520	@ tmp170,
	movt	sl, #:upper16:96520	@ tmp170,
	ldrh	r3, [r4, sl]	@ tmp171,
	cmp	r3, #0	@ tmp171,
	moveq	r3, #3	@ prephitmp.2593,
	beq	.L820	@,
	movw	r9, #:lower16:97952	@ tmp172,
	movt	r9, #:upper16:97952	@ tmp172,
	ldrh	r0, [r4, r9]	@ tmp173,
	cmp	r0, #0	@ tmp173,
	beq	.L835	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	movw	r5, #:lower16:93657	@ tmp260,
	bl	vfmw_dprint_nothing	@
	movt	r5, #:upper16:93657	@ tmp260,
	movw	r0, #:lower16:92225	@ tmp254,
	movw	ip, #:lower16:95089	@ tmp266,
	movt	r0, #:upper16:92225	@ tmp254,
	movt	ip, #:upper16:95089	@ tmp266,
	movw	r1, #:lower16:96521	@ tmp272,
	movw	r2, #:lower16:97953	@ tmp278,
	movt	r1, #:upper16:96521	@ tmp272,
	movt	r2, #:upper16:97953	@ tmp278,
	mov	r3, #0	@ tmp255,
	strb	r3, [r4, r0]	@ tmp255, <variable>.is_to_display
	strb	r3, [r4, r6]	@ tmp255, <variable>.is_to_ref
	mov	r0, r3	@ D.38830, tmp255
	strb	r3, [r4, r5]	@ tmp255, <variable>.is_to_display
	strb	r3, [r4, r7]	@ tmp255, <variable>.is_to_ref
	strb	r3, [r4, ip]	@ tmp255, <variable>.is_to_display
	strb	r3, [r4, r8]	@ tmp255, <variable>.is_to_ref
	strb	r3, [r4, r1]	@ tmp255, <variable>.is_to_display
	strb	r3, [r4, sl]	@ tmp255, <variable>.is_to_ref
	strb	r3, [r4, r2]	@ tmp255, <variable>.is_to_display
	strb	r3, [r4, r9]	@ tmp255, <variable>.is_to_ref
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L835:
	mov	r3, #4	@ prephitmp.2593,
.L820:
	movw	r2, #1432	@ tmp217,
	movw	r7, #:lower16:100816	@ tmp220,
	mul	r5, r2, r3	@ tmp216, tmp217, prephitmp.2593
	movt	r7, #:upper16:100816	@ tmp220,
	mov	r2, #0	@ k,
	mov	r3, r7	@ tmp287, tmp220
	add	ip, r5, r4	@ tmp224, tmp216, pVC1_CTX_S
	add	r1, r5, #92160	@ tmp218, tmp216,
	add	r0, ip, #92160	@ tmp225, tmp224,
	add	lr, r1, #64	@ tmp218, tmp218,
	add	r6, r0, #64	@ tmp225, tmp225,
	add	r1, r4, lr	@ prephitmp.2595, pVC1_CTX_S, tmp218
	mov	r5, #1	@ tmp226,
	str	r1, [r4, r7]	@ prephitmp.2595, <variable>.CodecInfo.pCurFrm
	strb	r5, [r6, #1]	@ tmp226, <variable>.is_to_display
	b	.L829	@
.L836:
	ldr	ip, [r4, r3]	@ prephitmp.2595, <variable>.CodecInfo.pCurFrm
	add	r7, ip, r1	@ tmp292, prephitmp.2595, tmp288
	strb	r6, [r7, #3]	@ D.38840, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r1, lr	@ tmp296, tmp288, <variable>.CodecInfo.pCurFrm
	strb	r6, [ip, #259]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r1, r7	@ tmp299, tmp288, <variable>.CodecInfo.pCurFrm
	strb	r6, [lr, #515]	@ D.38840, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r1, ip	@ tmp302, tmp288, <variable>.CodecInfo.pCurFrm
	strb	r6, [r7, #771]	@ D.38840, <variable>.IntensityConvertTab
	ldr	lr, [r4, r3]	@ prephitmp.2595, <variable>.CodecInfo.pCurFrm
	add	r1, lr, r0	@ tmp307, prephitmp.2595, k
	strb	r5, [r1, #3]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r6, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r0, r6	@ tmp311, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r7, #259]	@ D.38840, <variable>.IntensityConvertTab
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	lr, r0, ip	@ tmp314, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [lr, #515]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r0, r0, r1	@ tmp317, k, <variable>.CodecInfo.pCurFrm
	strb	r5, [r0, #771]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r1, [r4, r3]	@ prephitmp.2595, <variable>.CodecInfo.pCurFrm
.L829:
	add	r6, r1, r2	@ tmp229, prephitmp.2595, k
	uxtb	lr, r2	@ D.38840, k
	add	r1, r2, #1	@ tmp288, k,
	strb	lr, [r6, #3]	@ D.38840, <variable>.IntensityConvertTab
	add	r0, r1, #1	@ k, tmp288,
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	cmp	r1, #256	@ tmp288,
	uxtb	r6, r1	@ D.38840, tmp288
	uxtb	r5, r0	@ D.38840, k
	add	ip, r2, r7	@ tmp235, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #259]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	ip, r2, r7	@ tmp241, k, <variable>.CodecInfo.pCurFrm
	strb	lr, [ip, #515]	@ D.38840, <variable>.IntensityConvertTab
	ldr	r7, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	add	r7, r2, r7	@ tmp247, k, <variable>.CodecInfo.pCurFrm
	add	r2, r2, #3	@ k, k,
	strb	lr, [r7, #771]	@ D.38840, <variable>.IntensityConvertTab
	bne	.L836	@,
	mov	r0, #1	@ D.38830,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L818:
	movw	r7, #:lower16:100904	@ tmp176,
	movt	r7, #:upper16:100904	@ tmp176,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L826	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	movw	sl, #:lower16:100900	@ tmp200,
	ldr	r1, [r6, #192]	@, <variable>.p_usrdat
	movt	sl, #:upper16:100900	@ tmp200,
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
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, sl]	@ D.38828, <variable>.CodecInfo.FwdFsID
	str	r0, [r4, r7]	@ D.38828, <variable>.CodecInfo.BwdFsID
.L826:
	movw	r2, #:lower16:100896	@ tmp210,
	movw	ip, #:lower16:113720	@ tmp212,
	movt	r2, #:upper16:100896	@ tmp210,
	movt	ip, #:upper16:113720	@ tmp212,
	add	r1, r4, #112640	@, pVC1_CTX_S,
	mov	r5, #0	@ tmp211,
	add	r1, r1, #728	@,,
	str	r5, [r4, r2]	@ tmp211, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38830, tmp211
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	VC1_Vfmw_GetImageBuffer, .-VC1_Vfmw_GetImageBuffer
	.align	2
	.global	VC1DEC_GetImageBuffer
	.type	VC1DEC_GetImageBuffer, %function
VC1DEC_GetImageBuffer:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:78275	@ tmp138,
	movt	r1, #:upper16:78275	@ tmp138,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldrsb	r3, [r0, r1]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	mov	r4, r0	@ pCtx, pCtx
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L844	@,
.L838:
	movw	r5, #:lower16:113720	@ tmp142,
	movt	r5, #:upper16:113720	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L839	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L840	@,
.L843:
	mov	r0, #0	@ D.38787,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L844:
	movw	r2, #:lower16:78281	@ tmp140,
	movt	r2, #:upper16:78281	@ tmp140,
	ldrb	r0, [r0, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	r0, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L838	@,
.L839:
	mov	r0, #1	@ D.38787,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L840:
	add	ip, r4, #112640	@, pCtx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, ip, #728	@,,
	bl	FSP_ClearNotInVoQueue	@
	b	.L843	@
	.fnend
	.size	VC1DEC_GetImageBuffer, .-VC1DEC_GetImageBuffer
	.align	2
	.global	VC1_ArrangeVahbMem
	.type	VC1_ArrangeVahbMem, %function
VC1_ArrangeVahbMem:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	ip, r1, #32	@ tmp161, ImgWidth,
	movw	r3, #8160	@ tmp163,
	cmp	ip, r3	@ tmp161, tmp163
	movls	r3, #0	@, tmp164
	movhi	r3, #1	@, tmp164
	movw	ip, #:lower16:92224	@ tmp158,
	cmp	r2, #31	@ ImgHeight,
	orrls	r3, r3, #1	@,, tmp167, tmp164
	movt	ip, #:upper16:92224	@ tmp158,
	cmp	r3, #0	@ tmp167,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pVc1Ctx, pVc1Ctx
	add	r0, r0, #92160	@ pfrmbuf, pVc1Ctx,
	.pad #44
	sub	sp, sp, #44	@,,
	add	r0, r0, #64	@ pfrmbuf, pfrmbuf,
	bne	.L857	@,
	cmp	r2, #8192	@ ImgHeight,
	bhi	.L857	@,
	add	fp, r0, #4288	@ tmp188, pfrmbuf,
	add	r5, r0, #1424	@ pfrmbuf.2696, pfrmbuf,
	add	r5, r5, #8	@ pfrmbuf.2696, pfrmbuf.2696,
	add	r7, fp, #8	@ pfrmbuf.2713, tmp188,
	add	r8, r5, #1424	@ pfrmbuf.2712, pfrmbuf.2696,
	add	r6, r7, #1424	@ pfrmbuf.2714, pfrmbuf.2713,
	add	r8, r8, #8	@ pfrmbuf.2712, pfrmbuf.2712,
	add	r6, r6, #8	@ pfrmbuf.2714, pfrmbuf.2714,
	movw	r9, #:lower16:93432	@ tmp168,
	movw	sl, #:lower16:92225	@ tmp170,
	movt	r9, #:upper16:93432	@ tmp168,
	movt	sl, #:upper16:92225	@ tmp170,
	strb	r3, [r4, ip]	@ tmp167, <variable>.is_to_ref
	mov	ip, #2	@ tmp183,
	str	r3, [r4, r9]	@ tmp167, <variable>.img.image_id
	mov	r9, #1	@ tmp177,
	strb	r3, [r4, sl]	@ tmp167, <variable>.is_to_display
	str	r9, [r5, #1208]	@ tmp177, <variable>.img.image_id
	strb	r3, [r5, #1]	@ tmp167, <variable>.is_to_display
	str	ip, [r8, #1208]	@ tmp183, <variable>.img.image_id
	mov	ip, #3	@ tmp189,
	strb	r3, [r0, #1432]	@ tmp167, <variable>.is_to_ref
	str	ip, [r7, #1208]	@ tmp189, <variable>.img.image_id
	mov	ip, #4	@ tmp195,
	strb	r3, [r8, #1]	@ tmp167, <variable>.is_to_display
	strb	r3, [r5, #1432]	@ tmp167, <variable>.is_to_ref
	strb	r3, [r7, #1]	@ tmp167, <variable>.is_to_display
	strb	r3, [fp, #8]	@ tmp167, <variable>.is_to_ref
	str	ip, [r6, #1208]	@ tmp195, <variable>.img.image_id
	strb	r3, [r7, #1432]	@ tmp167, <variable>.is_to_ref
	strb	r3, [r6, #1]	@ tmp167, <variable>.is_to_display
	ldr	r3, [r4, #0]	@ D.38368, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L849	@,
	ldr	r0, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r0, #25	@ <variable>.eCapLevel,
	beq	.L867	@,
.L850:
	mov	r6, r2	@ ImgHeight.2695, ImgHeight
	mov	r5, r1	@ ImgWidth.2694, ImgWidth
	mov	r7, #5	@ prephitmp.2682,
	mov	r8, #3	@ DecFsNum,
	mov	r9, #2	@ PmvBlkNum,
.L856:
	mov	r1, #36	@,
	mov	r0, sp	@,
	bl	__memzero	@
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r2, #0	@ tmp216,
	mov	sl, sp	@ tmp239,
	ldr	r1, [ip, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	str	r5, [sp, #28]	@ ImgWidth.2694, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #1]	@ tmp216, FspInstCfg.s32TfEnable
	strb	r1, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r1, sp	@,
	strb	r2, [sp, #2]	@ tmp216, FspInstCfg.s32RprEnable
	str	r5, [sp, #12]	@ ImgWidth.2694, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #32]	@ ImgHeight.2695, FspInstCfg.s32DispFsHeight
	str	r6, [sp, #16]	@ ImgHeight.2695, FspInstCfg.s32DecFsHeight
	ldr	r6, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	strb	r7, [sp, #7]	@ prephitmp.2682, FspInstCfg.s32ExpectedDispFsNum
	mov	r7, #0	@ tmp227,
	cmp	r6, #24	@ <variable>.eCapLevel,
	movw	r6, #:lower16:113720	@ tmp229,
	uxtbne	r2, r8	@ iftmp.520, DecFsNum
	strb	r2, [sp, #5]	@ iftmp.520, FspInstCfg.s32ExpectedDecFsNum
	ldr	r3, [ip, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	movt	r6, #:upper16:113720	@ tmp229,
	cmp	r3, #24	@ <variable>.eCapLevel,
	uxtbne	r9, r9	@ iftmp.521, PmvBlkNum
	moveq	r9, #1	@ iftmp.521,
	strb	r9, [sp, #8]	@ iftmp.521, FspInstCfg.s32ExpectedPmvNum
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	strb	r7, [sp, #4]	@ tmp227, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r5, r0, #0	@ D.38419,
	bne	.L865	@,
	ldr	lr, [r4, #0]	@ temp.2711, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r7	@,
	bne	.L868	@,
.L853:
	mov	r0, #1	@ D.38364,
	b	.L848	@
.L867:
	ldr	r5, [r3, #568]	@ ImgWidth.2694, <variable>.stChanOption.s32MaxWidth
	cmp	r1, r5	@ ImgWidth, ImgWidth.2694
	bhi	.L857	@,
	ldr	r6, [r3, #572]	@ ImgHeight.2695, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r6	@ ImgHeight, ImgHeight.2695
	bls	.L852	@,
.L857:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38364,
.L848:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L849:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L850	@,
	ldr	ip, [r3, #568]	@ <variable>.stChanOption.s32MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r1, ip	@ ImgWidth, <variable>.stChanOption.s32MaxWidth
	bhi	.L857	@,
	ldr	r0, [r3, #572]	@ <variable>.stChanOption.s32MaxHeight, <variable>.stChanOption.s32MaxHeight
	cmp	r2, r0	@ ImgHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L857	@,
	ldr	sl, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	sl, #0	@ <variable>.stChanOption.s32SupportBFrame,
	bne	.L869	@,
.L860:
	ldrb	r7, [r3, #616]	@ zero_extendqisi2	@ prephitmp.2682, <variable>.stChanOption.s32DisplayFrameNum
	mov	r6, r2	@ ImgHeight.2695, ImgHeight
	mov	r5, r1	@ ImgWidth.2694, ImgWidth
	b	.L856	@
.L865:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.38364, tmp227
	b	.L848	@
.L868:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38364, D.38419
	b	.L848	@
.L852:
	movw	r1, #:lower16:78272	@ tmp202,
	movt	r1, #:upper16:78272	@ tmp202,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	r2, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L853	@,
	ldr	r7, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	ldr	r8, [r3, #588]	@ DecFsNum, <variable>.stChanOption.s32MaxRefFrameNum
	cmp	r7, #0	@ <variable>.stChanOption.s32SupportBFrame,
	beq	.L855	@,
	add	r9, r8, #1	@ PmvBlkNum.2697, DecFsNum,
	cmp	r9, #17	@ PmvBlkNum.2697,
	movcs	r9, #17	@ PmvBlkNum,
.L855:
	ldrb	r7, [r3, #616]	@ zero_extendqisi2	@ prephitmp.2682, <variable>.stChanOption.s32DisplayFrameNum
	b	.L856	@
.L869:
	add	r9, r8, #1	@ PmvBlkNum.2703, DecFsNum,
	cmp	r9, #17	@ PmvBlkNum.2703,
	movcs	r9, #17	@ PmvBlkNum,
	b	.L860	@
	.fnend
	.size	VC1_ArrangeVahbMem, .-VC1_ArrangeVahbMem
	.align	2
	.global	VC1_SetImgFormat
	.type	VC1_SetImgFormat, %function
VC1_SetImgFormat:
	.fnstart
.LFB1920:
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
	beq	.L879	@,
.L878:
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
	beq	.L880	@,
.L876:
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
.L879:
	mov	r0, #4	@ tmp151,
	ldr	r2, [r4, #140]	@ <variable>.format, <variable>.format
	strb	r0, [r4, #288]	@ tmp151, <variable>.ImageDnr.pic_structure
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.Vc1DecParam.curparity, <variable>.Vc1DecParam.curparity
	ubfx	lr, r2, #10, #2	@ fldflg, <variable>.format,,
	add	ip, r3, #1	@ tmp156, <variable>.Vc1DecParam.curparity,
	orr	r3, ip, lr	@ fldflg.2740, tmp156, fldflg
	cmp	r3, #3	@ fldflg.2740,
	movls	r3, r3, asl #10	@ tmp157, fldflg.2740,
	movhi	r3, #4352	@ prephitmp.2729,
	orrls	r3, r3, #4352	@ prephitmp.2729, tmp157,
	b	.L878	@
.L880:
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r2, [r4, #172]	@ D.38118, <variable>.image_stride
	add	ip, r0, #15	@ tmp168, <variable>.image_height,
	ldr	r3, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	ldr	r0, [r4, #32]	@ <variable>.luma_vir_addr, <variable>.luma_vir_addr
	mov	lr, ip, lsr #4	@ tmp170, tmp168,
	mov	ip, r2, asl #5	@ tmp167, D.38118,
	add	r1, lr, #1	@ tmp171, tmp170,
	add	lr, r3, r2	@ tmp177, <variable>.luma_phy_addr, D.38118
	str	lr, [r4, #96]	@ tmp177, <variable>.btm_luma_phy_addr
	mov	r1, r1, lsr #1	@ tmp172, tmp171,
	str	r0, [r4, #48]	@ <variable>.luma_vir_addr, <variable>.luma_2d_vir_addr
	str	r3, [r4, #120]	@ <variable>.luma_phy_addr, <variable>.luma_2d_phy_addr
	mul	lr, r1, ip	@ D.38126, tmp172, tmp167
	str	r3, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, lr, r3	@ tmp174, D.38126, <variable>.luma_phy_addr
	add	r1, r0, lr	@ tmp176, <variable>.luma_vir_addr, D.38126
	str	ip, [r4, #108]	@ tmp174, <variable>.chrom_phy_addr
	add	lr, ip, r2	@ tmp178, tmp174, D.38118
	str	r1, [r4, #36]	@ tmp176, <variable>.chrom_vir_addr
	mov	r0, ip	@, tmp174
	str	lr, [r4, #100]	@ tmp178, <variable>.btm_chrom_phy_addr
	str	ip, [r4, #92]	@ tmp174, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	str	r1, [r4, #124]	@ <variable>.top_chrom_phy_addr, <variable>.chrom_2d_phy_addr
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	b	.L876	@
	.fnend
	.size	VC1_SetImgFormat, .-VC1_SetImgFormat
	.align	2
	.type	VC1_FlushFrameToVo, %function
VC1_FlushFrameToVo:
	.fnstart
.LFB1921:
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
	bne	.L888	@,
.L882:
	mov	r0, #1	@ ret,
.L884:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L888:
	movw	r5, #:lower16:113720	@ tmp142,
	movt	r5, #:upper16:113720	@ tmp142,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L887	@,
	mov	r1, r7	@, FsID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	bne	.L882	@,
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
	beq	.L884	@,
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
.L887:
	mvn	r0, #0	@ ret,
	b	.L884	@
	.fnend
	.size	VC1_FlushFrameToVo, .-VC1_FlushFrameToVo
	.align	2
	.global	VC1_Vfmw_GetStreamInfo
	.type	VC1_Vfmw_GetStreamInfo, %function
VC1_Vfmw_GetStreamInfo:
	.fnstart
.LFB1932:
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
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	ldr	r5, [r0, r2]	@ MbWidth, <variable>.CodecInfo.MbWidth
	beq	.L890	@,
	movw	r7, #:lower16:89016	@ tmp206,
	movt	r7, #:upper16:89016	@ tmp206,
	ldr	r6, [r0, r7]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L971	@,
	movw	r7, #:lower16:100836	@ tmp751,
	movt	r7, #:upper16:100836	@ tmp751,
	ldr	r8, [r0, r7]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	mul	r8, r8, r5	@ TotalMbNum, <variable>.CodecInfo.MbHeight, MbWidth
.L892:
	movw	r3, #:lower16:81604	@ tmp219,
	movt	r3, #:upper16:81604	@ tmp219,
	movw	r2, #:lower16:81606	@ tmp216,
	movt	r2, #:upper16:81606	@ tmp216,
	ldrh	lr, [r4, r3]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH
	ldrh	r1, [r4, r2]	@ <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT
	add	r7, lr, #15	@ tmp221, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_WIDTH,
	movw	lr, #8160	@ tmp224,
	add	ip, r1, #15	@ tmp218, <variable>.CodecInfo.SynNew.AdvSeqSyntax.MAX_CODED_HEIGHT,
	mov	r7, r7, asr #4	@ MEM_WIDTH_MB, tmp221,
	mov	r6, ip, asr #4	@ MEM_HEIGHT_MB, tmp218,
	sub	ip, r7, #-268435454	@ tmp222, MEM_WIDTH_MB,
	cmp	lr, ip, asl #4	@ tmp224, tmp222,
	bcs	.L972	@,
.L933:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.38894,
.L896:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L890:
	movw	r6, #:lower16:100836	@ tmp215,
	movt	r6, #:upper16:100836	@ tmp215,
	mov	r7, r5	@ MEM_WIDTH_MB, MbWidth
	sub	ip, r7, #-268435454	@ tmp222, MEM_WIDTH_MB,
	ldr	r1, [r0, r6]	@ MbHeight.2844, <variable>.CodecInfo.MbHeight
	movw	lr, #8160	@ tmp224,
	cmp	lr, ip, asl #4	@ tmp224, tmp222,
	mov	r6, r1	@ MEM_HEIGHT_MB, MbHeight.2844
	mul	r8, r5, r1	@ TotalMbNum, MbWidth, MbHeight.2844
	bcc	.L933	@,
.L972:
	mov	r3, r6, asl #4	@ D.38892, MEM_HEIGHT_MB,
	cmp	r3, #31	@ D.38892,
	ble	.L933	@,
	cmp	r3, #8192	@ D.38892,
	bgt	.L933	@,
	movw	r3, #:lower16:100844	@ tmp225,
	movt	r3, #:upper16:100844	@ tmp225,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	cmp	r1, r6	@ <variable>.CodecInfo.MbHeightLast, MEM_HEIGHT_MB
	beq	.L973	@,
.L897:
	movw	ip, #:lower16:100832	@ tmp235,
	movt	ip, #:upper16:100832	@ tmp235,
	movw	r0, #:lower16:100836	@ tmp232,
	movt	r0, #:upper16:100836	@ tmp232,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidth
	movw	r2, #:lower16:100844	@ tmp231,
	ldr	lr, [r4, r0]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	movt	r2, #:upper16:100844	@ tmp231,
	movw	r3, #:lower16:100840	@ tmp234,
	movt	r3, #:upper16:100840	@ tmp234,
	mov	ip, r1	@ MbWidth.2845, <variable>.CodecInfo.MbWidth
	mov	r0, #1	@ SizeChanged,
	str	lr, [r4, r2]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeightLast
	str	r1, [r4, r3]	@ <variable>.CodecInfo.MbWidth, <variable>.CodecInfo.MbWidthLast
.L898:
	movw	r1, #:lower16:78280	@ tmp242,
	movt	r1, #:upper16:78280	@ tmp242,
	mov	ip, ip, asl #4	@ tmp239, MbWidth.2845,
	movw	r3, #:lower16:100856	@ tmp238,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.Is2ndFld, <variable>.CodecInfo.Is2ndFld
	movt	r3, #:upper16:100856	@ tmp238,
	add	r2, ip, #63	@ tmp240, tmp239,
	cmp	lr, #0	@ <variable>.CodecInfo.Is2ndFld,
	bic	r1, r2, #63	@ tmp241, tmp240,
	str	r1, [r4, r3]	@ tmp241, <variable>.CodecInfo.DDR_Stride
	bne	.L974	@,
.L899:
	movw	lr, #:lower16:78272	@ tmp248,
	movt	lr, #:upper16:78272	@ tmp248,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	eor	r3, r2, #8	@ tmp251, <variable>.CodecInfo.CodecStatus,
	ubfx	r1, r3, #3, #1	@ tmp253, tmp251,,
	orrs	r3, r0, r1	@, SizeChanged, tmp253
	ldrne	r3, [r4, #0]	@ prephitmp.2823, <variable>.pstExtraData
	beq	.L975	@,
.L902:
	ldr	sl, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	sl, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L976	@,
.L904:
	movw	ip, #:lower16:100816	@ tmp306,
	movw	lr, #:lower16:100828	@ tmp307,
	movt	ip, #:upper16:100816	@ tmp306,
	movt	lr, #:upper16:100828	@ tmp307,
	movw	r0, #:lower16:100824	@ tmp308,
	movw	r1, #:lower16:100820	@ tmp309,
	movt	r0, #:upper16:100824	@ tmp308,
	movt	r1, #:upper16:100820	@ tmp309,
	add	r9, r4, #99328	@ D.38957, pVC1_CTX_S,
	movw	fp, #:lower16:100904	@,
	add	r2, r9, #56	@ D.38957, D.38957,
	movt	fp, #:upper16:100904	@,
	str	fp, [sp, #4]	@, %sfp
	mov	fp, #0	@ tmp304,
	str	fp, [r3, #728]	@ tmp304, <variable>.s32DSDWaitFlag
	movw	sl, #:lower16:113720	@ tmp310,
	str	r2, [r4, lr]	@ D.38957, <variable>.CodecInfo.pRef
	movt	sl, #:upper16:113720	@ tmp310,
	str	r2, [r4, r0]	@ D.38957, <variable>.CodecInfo.pRef
	str	r2, [r4, ip]	@ D.38957, <variable>.CodecInfo.pCurFrm
	str	r2, [r4, r1]	@ D.38957, <variable>.CodecInfo.pRef
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L909	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	movw	lr, #:lower16:100900	@ tmp336,
	ldr	r1, [r9, #192]	@, <variable>.p_usrdat
	movt	lr, #:upper16:100900	@ tmp336,
	str	lr, [sp, #0]	@,
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
	str	fp, [r9, #204]	@ tmp304, <variable>.p_usrdat
	str	fp, [r9, #192]	@ tmp304, <variable>.p_usrdat
	mov	r2, #1	@,
	str	fp, [r9, #196]	@ tmp304, <variable>.p_usrdat
	str	fp, [r9, #200]	@ tmp304, <variable>.p_usrdat
	ldr	r3, [sp, #4]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	ip, [sp, #0]	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_ClearLogicFs	@
	ldr	r2, [sp, #4]	@, %sfp
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	str	fp, [r4, r2]	@ tmp304, <variable>.CodecInfo.BwdFsID
	ldr	r1, [sp, #0]	@,
	str	fp, [r4, r1]	@ tmp304, <variable>.CodecInfo.FwdFsID
	str	r1, [sp, #0]	@,
	bl	FSP_GetNullLogicFs	@
	ldr	r3, [sp, #0]	@,
	str	r0, [r4, r3]	@ D.38968, <variable>.CodecInfo.FwdFsID
	ldr	sl, [sp, #4]	@, %sfp
	str	r0, [r4, sl]	@ D.38968, <variable>.CodecInfo.BwdFsID
.L909:
	add	sl, r4, #112640	@ D.38969, pVC1_CTX_S,
	movw	r2, #:lower16:100896	@ tmp346,
	add	sl, sl, #728	@ D.38969, D.38969,
	movt	r2, #:upper16:100896	@ tmp346,
	movw	ip, #:lower16:113720	@ tmp349,
	movt	ip, #:upper16:113720	@ tmp349,
	mov	r1, #0	@ tmp347,
	str	r1, [r4, r2]	@ tmp347, <variable>.CodecInfo.RefNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, sl	@, D.38969
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r4, #0]	@ temp.2869, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L910	@,
	ldr	r3, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L977	@,
.L910:
	movw	ip, #:lower16:113720	@ tmp356,
	movt	ip, #:upper16:113720	@ tmp356,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L911	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L978	@,
.L912:
	mov	r0, sl	@, D.38969
	bl	ResetVoQueue	@
.L911:
	add	r6, r6, #1	@ tmp363, MEM_HEIGHT_MB,
	mov	r1, r7, asl #4	@, MEM_WIDTH_MB,
	mov	r0, r4	@, pVC1_CTX_S
	mov	r3, #2	@,
	add	r6, r6, r6, lsr #31	@, tmp366, tmp363, tmp363,
	mov	ip, r6, asr #1	@ tmp367, tmp366,
	mov	r2, ip, asl #5	@, tmp367,
	bl	VC1_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L913	@,
	movw	r1, #:lower16:78272	@ tmp369,
	movt	r1, #:upper16:78272	@ tmp369,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	orr	r0, r2, #8	@ tmp373, <variable>.CodecInfo.CodecStatus,
	strb	r0, [r4, r1]	@ tmp373, <variable>.CodecInfo.CodecStatus
	b	.L903	@
.L974:
	movw	r2, #:lower16:78275	@ tmp244,
	movt	r2, #:upper16:78275	@ tmp244,
	ldrsb	r3, [r4, r2]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r3, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	bne	.L899	@,
	movw	ip, #:lower16:78281	@ tmp246,
	movt	ip, #:upper16:78281	@ tmp246,
	ldrb	lr, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	bne	.L900	@,
	b	.L899	@
.L971:
	movw	r3, #:lower16:100836	@ tmp208,
	movt	r3, #:upper16:100836	@ tmp208,
	ldr	r2, [r0, r3]	@ <variable>.CodecInfo.MbHeight, <variable>.CodecInfo.MbHeight
	add	lr, r2, #1	@ tmp209, <variable>.CodecInfo.MbHeight,
	add	ip, lr, lr, lsr #31	@, tmp213, tmp209, tmp209,
	mov	r8, ip, asr #1	@ tmp214, tmp213,
	mul	r8, r5, r8	@ TotalMbNum, MbWidth, tmp214
	b	.L892	@
.L975:
	ldr	r3, [r4, #0]	@ prephitmp.2823, <variable>.pstExtraData
	ldr	r0, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r0, #1	@ <variable>.s32DSDWaitFlag,
	beq	.L902	@,
.L903:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_GetImageBuffer	@
	subs	r6, r0, #0	@ D.38998,
	beq	.L966	@,
	movw	r6, #:lower16:113720	@ tmp381,
	movw	lr, #:lower16:100908	@ tmp383,
	movt	r6, #:upper16:113720	@ tmp381,
	movt	lr, #:upper16:100908	@ tmp383,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L915	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #56]	@ <variable>.pts, <variable>.pstExtraData,
	strd	r2, [r0, #8]	@ <variable>.pts, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	strd	r2, [r0, #16]	@ <variable>.Usertag, pImg,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldrd	r2, [r3, #88]	@ <variable>.DispTime, <variable>.pstExtraData,
	strd	r2, [r0, #24]	@ <variable>.DispTime, pImg,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [lr, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r1, [r0, #68]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	ip, [r0, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r6, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r6, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	lr, [r0, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #128]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r1, #0	@,
	str	r3, [r0, #80]	@ <variable>.GopNum, <variable>.GopNum
	mvn	r0, #0	@ tmp400,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	strd	r0, [ip, #56]	@ tmp400, <variable>.pstExtraData,
	bl	vfmw_dprint_nothing	@
.L915:
	movw	r2, #:lower16:81368	@ tmp401,
	movt	r2, #:upper16:81368	@ tmp401,
	ldrsb	r0, [r4, r2]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L916	@,
	movw	ip, #:lower16:89016	@ tmp403,
	movt	ip, #:upper16:89016	@ tmp403,
	ldr	r6, [r4, ip]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	r6, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	beq	.L979	@,
.L916:
	movw	r6, #:lower16:100816	@ tmp411,
	movt	r6, #:upper16:100816	@ tmp411,
	mov	r0, #0	@ tmp412,
	ldr	r2, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r0, [r2, #1160]	@ tmp412, <variable>.img.is_fld_save
.L917:
	movw	r3, #:lower16:100816	@ tmp414,
	movt	r3, #:upper16:100816	@ tmp414,
	movw	lr, #:lower16:81368	@ tmp417,
	movt	lr, #:upper16:81368	@ tmp417,
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	ip, #0	@ tmp415,
	strb	ip, [r0, #2]	@ tmp415, <variable>.RANGEREDFRM
	ldrsb	r1, [r4, lr]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r1, ip	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L918	@,
	movw	r6, #:lower16:88636	@ tmp419,
	movt	r6, #:upper16:88636	@ tmp419,
	ldrb	r2, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED, <variable>.CodecInfo.SMPSeqSyntax.RANGERED
	cmp	r2, #1	@ <variable>.CodecInfo.SMPSeqSyntax.RANGERED,
	movweq	r2, #:lower16:88874	@ tmp423,
	movteq	r2, #:upper16:88874	@ tmp423,
	ldreq	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldreqb	r2, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM
	streqb	r2, [r3, #2]	@ <variable>.CodecInfo.SMPPicSyntax.RANGEREDFRM, <variable>.RANGEREDFRM
.L918:
	movw	r3, #:lower16:78274	@ tmp426,
	movt	r3, #:upper16:78274	@ tmp426,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ D.39024, <variable>.CodecInfo.PicCodingType
	cmp	ip, #5	@ D.39024,
	cmpne	ip, #1	@, D.39024,
	movhi	r6, #0	@, tmp433
	movls	r6, #1	@, tmp433
	bhi	.L919	@,
	movw	lr, #:lower16:100896	@ tmp434,
	movt	lr, #:upper16:100896	@ tmp434,
	movw	r7, #:lower16:100900	@ tmp437,
	movw	r6, #:lower16:100904	@ tmp438,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	movt	r7, #:upper16:100900	@ tmp437,
	movt	r6, #:upper16:100904	@ tmp438,
	cmp	r1, #0	@ <variable>.CodecInfo.RefNum,
	ldr	r2, [r4, r7]	@ prephitmp.2821, <variable>.CodecInfo.FwdFsID
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.BwdFsID, <variable>.CodecInfo.BwdFsID
	movne	r1, #2	@ iftmp.545,
	moveq	r1, #1	@ iftmp.545,
	cmp	r2, sl	@ prephitmp.2821, <variable>.CodecInfo.BwdFsID
	str	r1, [r4, lr]	@ iftmp.545, <variable>.CodecInfo.RefNum
	beq	.L922	@,
	bl	vfmw_dprint_nothing	@
	movw	ip, #:lower16:113720	@ tmp440,
	movt	ip, #:upper16:113720	@ tmp440,
	mov	r2, #0	@,
	ldr	r1, [r4, r7]	@, <variable>.CodecInfo.FwdFsID
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, r6]	@ prephitmp.2821, <variable>.CodecInfo.BwdFsID
.L922:
	movw	lr, #:lower16:100908	@ tmp447,
	movt	lr, #:upper16:100908	@ tmp447,
	movw	r6, #:lower16:100900	@ tmp445,
	movw	r3, #:lower16:100904	@ tmp446,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r3, #:upper16:100904	@ tmp446,
	movt	r6, #:upper16:100900	@ tmp445,
	movw	sl, #:lower16:113720	@ tmp449,
	movt	sl, #:upper16:113720	@ tmp449,
	str	r1, [r4, r3]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.BwdFsID
	str	r2, [r4, r6]	@ prephitmp.2821, <variable>.CodecInfo.FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.FwdFsID
	bl	FSP_RemovePmv	@
	movw	r0, #:lower16:78274	@ tmp457,
	movt	r0, #:upper16:78274	@ tmp457,
	ldrb	r7, [r4, r0]	@ zero_extendqisi2	@ D.39040, <variable>.CodecInfo.PicCodingType
	cmp	r7, #5	@ D.39040,
	cmpne	r7, #1	@, D.39040,
	bhi	.L924	@,
	movw	r3, #:lower16:100824	@ tmp480,
	movt	r3, #:upper16:100824	@ tmp480,
	movw	r1, #:lower16:100816	@ tmp484,
	movt	r1, #:upper16:100816	@ tmp484,
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	mov	r2, #0	@ tmp481,
	movw	r6, #:lower16:100820	@ tmp488,
	movt	r6, #:upper16:100820	@ tmp488,
	mov	ip, #1	@ tmp485,
	strb	r2, [lr, #0]	@ tmp481, <variable>.is_to_ref
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #0]	@ tmp485, <variable>.is_to_ref
	ldr	sl, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	r7, [r4, r1]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	sl, [r4, r3]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	str	r7, [r4, r6]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pRef
.L924:
	movw	r7, #:lower16:113720	@ tmp493,
	movw	r6, #:lower16:100908	@ tmp495,
	movt	r7, #:upper16:113720	@ tmp493,
	movt	r6, #:upper16:100908	@ tmp495,
	movw	sl, #:lower16:100900	@ tmp499,
	movt	sl, #:upper16:100900	@ tmp499,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, sl]	@, <variable>.CodecInfo.FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	movw	r3, #:lower16:100904	@ tmp503,
	movt	r3, #:upper16:100904	@ tmp503,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.BwdFsID
	mov	sl, r0	@ pFwd,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	sl, #0	@, pFwd,
	beq	.L931	@,
	cmp	r0, #0	@ pBwd,
	beq	.L931	@,
	movw	ip, #:lower16:81368	@ tmp529,
	movt	ip, #:upper16:81368	@ tmp529,
	ldrsb	r1, [r4, ip]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r1, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	beq	.L928	@,
	movw	r2, #:lower16:89016	@ tmp531,
	movt	r2, #:upper16:89016	@ tmp531,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	cmp	lr, #3	@ <variable>.CodecInfo.AdvPicSyntax.FCM,
	bne	.L928	@,
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp533,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp533,
	ldr	r3, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L964	@,
.L928:
	mov	r3, #0	@ tmp536,
.L964:
	movw	ip, #:lower16:78274	@ tmp537,
	movt	ip, #:upper16:78274	@ tmp537,
	str	r3, [r6, #136]	@ tmp536, <variable>.stDispImg.is_fld_save
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r1, #5	@ <variable>.CodecInfo.PicCodingType,
	beq	.L980	@,
.L930:
	ldr	r3, [r6, #408]	@ D.39075, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.39075,
	beq	.L931	@,
	ldr	lr, [r6, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L931	@,
	ldr	r2, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r2, #0	@ <variable>.pstDispOutFs,
	beq	.L931	@,
	ldr	lr, [r0, #408]	@ D.39085, <variable>.pstDecodeFs
	movw	r1, #12400	@ tmp568,
	cmp	lr, #0	@ D.39085,
	ldreq	lr, [r3, #12]	@ iftmp.549, <variable>.PhyAddr
	ldrne	lr, [lr, #12]	@ iftmp.549, <variable>.PhyAddr
	str	lr, [r4, r1]	@ iftmp.549, <variable>.Vc1DecParam.BwdRefAddr
	movw	r1, #:lower16:100816	@ tmp587,
	ldr	r7, [sl, #408]	@ D.39092, <variable>.pstDecodeFs
	movw	sl, #:lower16:78048	@ tmp571,
	movt	sl, #:upper16:78048	@ tmp571,
	movt	r1, #:upper16:100816	@ tmp587,
	cmp	r7, #0	@ D.39092,
	ldreq	r7, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r7, #12]	@ iftmp.550, <variable>.PhyAddr
	movw	r7, #12396	@ tmp570,
	str	r2, [r4, r7]	@ iftmp.550, <variable>.Vc1DecParam.FwdRefAddr
	movw	r2, #:lower16:78008	@ tmp581,
	ldr	r3, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movt	r2, #:upper16:78008	@ tmp581,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:78012	@ tmp584,
	movt	r3, #:upper16:78012	@ tmp584,
	str	ip, [r4, sl]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.ystaddr_1d
	movw	ip, #12408	@ tmp576,
	ldr	lr, [r6, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	sl, [r4, r1]	@ temp.2926, <variable>.CodecInfo.pCurFrm
	movw	r1, #12404	@ tmp574,
	str	lr, [r4, r1]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.CurrColmbAddr
	ldr	lr, [r0, #420]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	lr, [r4, ip]	@ <variable>.PmvAddr, <variable>.Vc1DecParam.BwdColmbAddr
	movw	ip, #12392	@ tmp578,
	ldr	r1, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [r1, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r4, ip]	@ <variable>.PhyAddr, <variable>.Vc1DecParam.CurFrmImgLuma2dPhyAddr
	ldr	lr, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r1, [lr, #20]	@ <variable>.Stride, <variable>.Stride
	str	r1, [r4, r2]	@ <variable>.Stride, <variable>.Vc1DecParam.VahbStride
	ldr	ip, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r0, [ip, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r0, [r4, r3]	@ <variable>.ChromOffset, <variable>.Vc1DecParam.uv_offset
	ldr	lr, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r0, [lr, #12]	@, <variable>.PhyAddr
	bl	MEM_Phy2Vir	@
	movw	r2, #:lower16:100824	@ tmp590,
	movt	r2, #:upper16:100824	@ tmp590,
	str	r0, [sl, #1064]	@, <variable>.img.luma_vir_addr
	ldr	r0, [r4, r7]	@, <variable>.Vc1DecParam.FwdRefAddr
	ldr	r6, [r4, r2]	@ temp.2929, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	movw	r3, #:lower16:100820	@ tmp593,
	movt	r3, #:upper16:100820	@ tmp593,
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
	movw	r6, #12400	@ tmp594,
	ldr	r0, [r4, r6]	@, <variable>.Vc1DecParam.BwdRefAddr
	ldr	r6, [r4, r3]	@ temp.2930, <variable>.CodecInfo.pRef
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #1064]	@, <variable>.img.luma_vir_addr
.L900:
	movw	r0, #:lower16:81368	@ tmp596,
	movt	r0, #:upper16:81368	@ tmp596,
	ldrsb	r2, [r4, r0]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	cmp	r2, #0	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile,
	bne	.L938	@,
	movw	r3, #:lower16:100816	@ tmp599,
	movt	r3, #:upper16:100816	@ tmp599,
	movw	r0, #:lower16:88875	@ tmp604,
	movt	r0, #:upper16:88875	@ tmp604,
	ldr	r5, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	lr, #:lower16:88883	@ tmp608,
	movt	lr, #:upper16:88883	@ tmp608,
	strb	r2, [r5, #1027]	@ <variable>.CodecInfo.PreParseInfo.IsAdvProfile, <variable>.PicStruct
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.CodecInfo.SMPPicSyntax.PTYPE
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r1, #1028]	@ <variable>.CodecInfo.SMPPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, lr]	@ zero_extendqisi2	@ D.39125, <variable>.CodecInfo.SMPPicSyntax.MVMODE
	ldr	ip, [r4, r3]	@ temp.2947, <variable>.CodecInfo.pCurFrm
	sub	r6, r1, #2	@ tmp609, D.39125,
	uxtb	r5, r6	@ tmp610, tmp609
	cmp	r5, #1	@ tmp610,
	movls	r2, #1	@ prephitmp.2964,
	bls	.L940	@,
	cmp	r1, #4	@ D.39125,
	beq	.L981	@,
.L940:
	movw	r6, #:lower16:100916	@ tmp619,
	movw	r3, #:lower16:100928	@ tmp621,
	movt	r6, #:upper16:100916	@ tmp619,
	movt	r3, #:upper16:100928	@ tmp621,
	movw	r5, #:lower16:81400	@ tmp625,
	movt	r5, #:upper16:81400	@ tmp625,
	movw	lr, #:lower16:113212	@ tmp624,
	movt	lr, #:upper16:113212	@ tmp624,
	strb	r2, [ip, #1029]	@ prephitmp.2964, <variable>.IsHalfPel
	mov	r0, #0	@ tmp622,
	strb	r2, [ip, #1030]	@ prephitmp.2964, <variable>.IsHalfPel
	mov	ip, #1	@ tmp620,
	str	ip, [r4, r6]	@ tmp620, <variable>.CodecInfo.SlcNum
	strb	r0, [r4, r3]	@ tmp622, <variable>.SlcNo
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, lr]	@ D.39133, <variable>.CodecInfo.stCurPacket.BsVirAddr
	bl	BsPos	@
	movw	r2, #:lower16:100920	@ tmp627,
	movt	r2, #:upper16:100920	@ tmp627,
	movw	ip, #:lower16:113224	@ tmp633,
	movt	ip, #:upper16:113224	@ tmp633,
	add	r1, r0, #7	@ tmp630, D.39135,
	cmp	r0, #0	@ D.39135,
	movlt	r0, r1	@ D.39135, tmp630
	add	r3, r6, r0, asr #3	@, tmp632, D.39133, D.39135,
	str	r3, [r4, r2]	@ tmp632, <variable>.pStream
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	ldr	r6, [r4, ip]	@ D.39139, <variable>.CodecInfo.stCurPacket.BsPhyAddr
	bl	BsPos	@
	movw	r3, #:lower16:100932	@ tmp636,
	movt	r3, #:upper16:100932	@ tmp636,
	add	r1, r0, #7	@ tmp639, D.39140,
	cmp	r0, #0	@ D.39140,
	movlt	r0, r1	@ D.39140, tmp639
	add	r6, r6, r0, asr #3	@, tmp641, D.39139, D.39140,
	str	r6, [r4, r3]	@ tmp641, <variable>.Phy_addr
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	bl	BsPos	@
	movw	r2, #:lower16:100936	@ tmp644,
	movw	r1, #:lower16:113232	@ tmp646,
	movt	r2, #:upper16:100936	@ tmp644,
	movt	r1, #:upper16:113232	@ tmp646,
	and	ip, r0, #7	@ tmp645,,
	str	ip, [r4, r2]	@ tmp645, <variable>.BitOffset
	ldr	r3, [r4, r1]	@ <variable>.CodecInfo.stCurPacket.BsLength, <variable>.CodecInfo.stCurPacket.BsLength
	ldr	r0, [r4, r5]	@, <variable>.CodecInfo.pBs
	mov	r5, r3, asl #3	@ D.39147, <variable>.CodecInfo.stCurPacket.BsLength,
	bl	BsPos	@
	movw	lr, #:lower16:100940	@ tmp650,
	movw	ip, #:lower16:113276	@ tmp653,
	movt	lr, #:upper16:100940	@ tmp650,
	movt	ip, #:upper16:113276	@ tmp653,
	movw	r1, #:lower16:113272	@ tmp654,
	movt	r1, #:upper16:113272	@ tmp654,
	movw	r2, #:lower16:100944	@ tmp652,
	movw	r3, #:lower16:78274	@ tmp659,
	movt	r2, #:upper16:100944	@ tmp652,
	movt	r3, #:upper16:78274	@ tmp659,
	rsb	r0, r0, r5	@ tmp651,, D.39147
	str	r0, [r4, lr]	@ tmp651, <variable>.Len
	ldr	r5, [r4, r1]	@ <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbWidth
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.CurPicMbHeight, <variable>.CodecInfo.CurPicMbHeight
	mul	ip, r5, r0	@ tmp655, <variable>.CodecInfo.CurPicMbWidth, <variable>.CodecInfo.CurPicMbHeight
	sub	r1, ip, #1	@ tmp658, tmp655,
	str	r1, [r4, r2]	@ tmp658, <variable>.SlcEndMbn
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ prephitmp.2961, <variable>.CodecInfo.PicCodingType
.L942:
	add	r2, r4, #77824	@, pVC1_CTX_S,
	mov	r3, #1	@,
	add	r0, r2, #448	@,,
	mov	r2, #0	@,
	bl	VC1_Vfmw_BuildRefList	@
	subs	r5, r0, #0	@ D.39205,
	movne	r0, #1	@ D.38894,
	bne	.L896	@,
	movw	ip, #:lower16:113720	@ tmp738,
	movw	lr, #:lower16:100908	@ tmp740,
	movt	ip, #:upper16:113720	@ tmp738,
	movt	lr, #:upper16:100908	@ tmp740,
	mov	r2, #1	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r0, #:lower16:100816	@ tmp743,
	movt	r0, #:upper16:100816	@ tmp743,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r3, #0]	@ D.39205, <variable>.is_to_ref
	ldr	r1, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r5, [r1, #1]	@ D.39205, <variable>.is_to_display
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38894, D.39205
	b	.L896	@
.L931:
	movw	r3, #:lower16:113720	@ tmp551,
	movw	lr, #:lower16:100908	@ tmp553,
	movt	r3, #:upper16:113720	@ tmp551,
	movt	lr, #:upper16:100908	@ tmp553,
	mov	r2, #1	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r2, #:lower16:100816	@ tmp556,
	movt	r2, #:upper16:100816	@ tmp556,
	mov	ip, #0	@ tmp557,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #0]	@ tmp557, <variable>.is_to_ref
	ldr	r1, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r1, #1]	@ tmp557, <variable>.is_to_display
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:78274	@ tmp563,
	movt	r3, #:upper16:78274	@ tmp563,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.PicCodingType, <variable>.CodecInfo.PicCodingType
	cmp	r0, #5	@ <variable>.CodecInfo.PicCodingType,
	bne	.L933	@,
	movw	r1, #:lower16:113292	@ tmp565,
	movt	r1, #:upper16:113292	@ tmp565,
	ldr	ip, [r4, r1]	@ temp.2936, <variable>.CodecInfo.skpic_flag
	cmp	ip, #0	@ temp.2936,
	subgt	ip, ip, #1	@ tmp567, temp.2936,
	strgt	ip, [r4, r1]	@ tmp567, <variable>.CodecInfo.skpic_flag
	b	.L933	@
.L973:
	movw	ip, #:lower16:100840	@ tmp227,
	movt	ip, #:upper16:100840	@ tmp227,
	ldr	r2, [r4, ip]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	cmp	r2, r7	@ <variable>.CodecInfo.MbWidthLast, MEM_WIDTH_MB
	bne	.L897	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r1, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	lr, #1	@ <variable>.s32DSDWaitFlag,
	movne	ip, r5	@ MbWidth.2845, MbWidth
	movne	r0, #0	@ SizeChanged,
	bne	.L898	@,
	b	.L897	@
.L919:
	movw	r1, #:lower16:100896	@ tmp465,
	movt	r1, #:upper16:100896	@ tmp465,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	r2, #1	@ <variable>.CodecInfo.RefNum,
	bhi	.L924	@,
	movw	r2, #:lower16:113720	@ tmp467,
	movw	lr, #:lower16:100908	@ tmp469,
	movt	r2, #:upper16:113720	@ tmp467,
	movt	lr, #:upper16:100908	@ tmp469,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	bl	FSP_ClearLogicFs	@
	movw	r0, #:lower16:100816	@ tmp472,
	movt	r0, #:upper16:100816	@ tmp472,
	ldr	r3, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r3, #0]	@ tmp433, <variable>.is_to_ref
	ldr	ip, [r4, r0]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [ip, #1]	@ tmp433, <variable>.is_to_display
.L966:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.38894, tmp433
	b	.L896	@
.L913:
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:78272	@ tmp375,
	movt	r3, #:upper16:78272	@ tmp375,
	mov	r0, #0	@ D.38894,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	bic	ip, r1, #8	@ tmp379, <variable>.CodecInfo.CodecStatus,
	strb	ip, [r4, r3]	@ tmp379, <variable>.CodecInfo.CodecStatus
	b	.L896	@
.L978:
	movw	lr, #:lower16:113724	@ tmp360,
	movt	lr, #:upper16:113724	@ tmp360,
	ldr	r3, [r4, lr]	@ <variable>.DSDNeedClearQue, <variable>.DSDNeedClearQue
	cmp	r3, #1	@ <variable>.DSDNeedClearQue,
	bne	.L911	@,
	b	.L912	@
.L980:
	ldr	ip, [sl, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movw	r1, #:lower16:100824	@ tmp543,
	movt	r1, #:upper16:100824	@ tmp543,
	movw	r2, #:lower16:100816	@ tmp541,
	movt	r2, #:upper16:100816	@ tmp541,
	movw	r3, #:lower16:113292	@ tmp545,
	str	ip, [r6, #136]	@ <variable>.stDispImg.is_fld_save, <variable>.stDispImg.is_fld_save
	movt	r3, #:upper16:113292	@ tmp545,
	ldr	lr, [r4, r1]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	ldr	ip, [r4, r2]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	ldr	r1, [lr, #1160]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	str	r1, [ip, #1160]	@ <variable>.img.is_fld_save, <variable>.img.is_fld_save
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.skpic_flag, <variable>.CodecInfo.skpic_flag
	add	lr, r2, #1	@ tmp548, <variable>.CodecInfo.skpic_flag,
	str	lr, [r4, r3]	@ tmp548, <variable>.CodecInfo.skpic_flag
	b	.L930	@
.L979:
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp405,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp405,
	ldr	r3, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	bne	.L916	@,
	movw	lr, #:lower16:100816	@ tmp408,
	movt	lr, #:upper16:100816	@ tmp408,
	ldr	r1, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	str	r3, [r1, #1160]	@ USE_FF_APT_EN, <variable>.img.is_fld_save
	b	.L917	@
.L976:
	movw	r3, #:lower16:100900	@ tmp264,
	movt	r3, #:upper16:100900	@ tmp264,
	mov	r0, r4	@, pVC1_CTX_S
	mov	ip, #0	@ tmp261,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	str	ip, [sp, #12]	@ tmp261, RefNum
	str	ip, [sp, #20]	@ tmp261, NewNum
	str	ip, [sp, #16]	@ tmp261, ReadNum
	bl	VC1_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L905	@,
	movw	r9, #:lower16:100904	@ tmp266,
	movt	r9, #:upper16:100904	@ tmp266,
	mov	r0, r4	@, pVC1_CTX_S
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	bl	VC1_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L905	@,
	movw	r2, #:lower16:113720	@ tmp268,
	movt	r2, #:upper16:113720	@ tmp268,
	ldr	r1, [r4, r9]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:113720	@ tmp273,
	movt	r3, #:upper16:113720	@ tmp273,
	add	r1, sp, #12	@,,
	add	r2, sp, #16	@,,
	cmp	r0, #0	@ pImage
	strne	sl, [r0, #376]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.u32IsLastFrame
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r3, sp, #20	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	ip, #:lower16:100840	@ tmp278,
	movt	ip, #:upper16:100840	@ tmp278,
	ldr	r0, [r4, ip]	@ <variable>.CodecInfo.MbWidthLast, <variable>.CodecInfo.MbWidthLast
	mov	r3, r2	@ prephitmp.2823, <variable>.pstExtraData
	ldr	r1, [r2, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	cmp	r1, r0, asl #4	@ <variable>.s32DSDThrWidth, <variable>.CodecInfo.MbWidthLast,
	blt	.L907	@,
	movw	r1, #:lower16:100844	@ tmp282,
	movt	r1, #:upper16:100844	@ tmp282,
	ldr	lr, [r2, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.MbHeightLast, <variable>.CodecInfo.MbHeightLast
	add	ip, r0, #1	@ tmp283, <variable>.CodecInfo.MbHeightLast,
	add	r1, ip, ip, lsr #31	@, tmp287, tmp283, tmp283,
	mov	r0, r1, asr #1	@ tmp288, tmp287,
	cmp	lr, r0, asl #5	@ <variable>.s32DSDThrHeight, tmp288,
	blt	.L907	@,
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	ldr	r0, [sp, #20]	@ NewNum, NewNum
	add	lr, r0, ip	@ tmp291, NewNum, ReadNum
	cmp	lr, #0	@ tmp291,
	ble	.L904	@,
	movw	r3, #:lower16:113724	@ tmp294,
	movt	r3, #:upper16:113724	@ tmp294,
	mov	r1, #1	@ tmp295,
	mov	r0, #0	@ D.38894,
	str	r1, [r4, r3]	@ tmp295, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp295, <variable>.s32DSDWaitFlag
	b	.L896	@
.L938:
	movw	r3, #:lower16:100816	@ tmp661,
	movw	r2, #:lower16:89016	@ tmp662,
	movt	r3, #:upper16:100816	@ tmp661,
	movt	r2, #:upper16:89016	@ tmp662,
	movw	r0, #:lower16:88973	@ tmp667,
	movt	r0, #:upper16:88973	@ tmp667,
	ldr	ip, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	movw	r1, #:lower16:88986	@ tmp672,
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.CodecInfo.AdvPicSyntax.FCM
	movt	r1, #:upper16:88986	@ tmp672,
	movw	r2, #:lower16:89013	@ tmp671,
	movt	r2, #:upper16:89013	@ tmp671,
	strb	lr, [ip, #1027]	@ <variable>.CodecInfo.AdvPicSyntax.FCM, <variable>.PicStruct
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.CodecInfo.AdvPicSyntax.PTYPE
	ldr	r0, [r4, r3]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	ip, [r0, #1028]	@ <variable>.CodecInfo.AdvPicSyntax.PTYPE, <variable>.PicCodingType
	ldrb	r1, [r4, r1]	@ zero_extendqisi2	@ D.39163, <variable>.CodecInfo.AdvPicSyntax.MVMODE
	ldr	r0, [r4, r3]	@ temp.2954, <variable>.CodecInfo.pCurFrm
	sub	lr, r1, #2	@ tmp673, D.39163,
	ldrb	r3, [r4, r2]	@ zero_extendqisi2	@ D.39157, <variable>.CodecInfo.AdvPicSyntax.CurParity
	uxtb	r2, lr	@ tmp674, tmp673
	cmp	r2, #1	@ tmp674,
	movls	r1, #1	@ prephitmp.2813,
	bls	.L944	@,
	cmp	r1, #4	@ D.39163,
	movne	r1, #0	@ prephitmp.2813,
	beq	.L982	@,
.L944:
	add	ip, r0, r3	@ tmp682, temp.2954, D.39157
	movw	r3, #:lower16:100916	@ tmp685,
	movt	r3, #:upper16:100916	@ tmp685,
	strb	r1, [ip, #1029]	@ prephitmp.2813, <variable>.IsHalfPel
	ldr	r2, [r4, r3]	@ iftmp.553, <variable>.CodecInfo.SlcNum
	cmp	r2, #0	@ iftmp.553,
	beq	.L946	@,
	sub	lr, r2, #1	@ prephitmp.2815, iftmp.553,
	cmp	lr, #0	@ prephitmp.2815,
	ble	.L963	@,
	add	ip, r4, #100352	@ tmp699, pVC1_CTX_S,
	cmp	lr, #1	@ prephitmp.2815,
	add	r2, ip, #616	@ tmp699, tmp699,
	add	r1, ip, #576	@ ivtmp.2840, ivtmp.2840,
	sub	r0, lr, #1	@ tmp775, prephitmp.2815,
	mov	r3, #0	@ i,
	ldr	ip, [r2, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	and	r0, r0, #1	@ tmp777, tmp775,
	strb	r3, [r1, #0]	@ i, <variable>.SlcNo
	mov	r2, #1	@ i,
	add	r3, r1, #48	@ ivtmp.2840, ivtmp.2840,
	mul	ip, ip, r5	@ tmp700, <variable>.SlcEndMbn, MbWidth
	sub	ip, ip, #1	@ tmp702, tmp700,
	str	ip, [r1, #16]	@ tmp702, <variable>.SlcEndMbn
	ble	.L963	@,
	cmp	r0, #0	@ tmp777,
	beq	.L949	@,
	add	r0, r4, #100352	@ tmp810, pVC1_CTX_S,
	strb	r2, [r3, #0]	@ i, <variable>.SlcNo
	add	ip, r0, #664	@ tmp810, tmp810,
	mov	r2, #2	@ i,
	cmp	lr, r2	@ prephitmp.2815, i
	ldr	r0, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	ip, r0, r5	@ tmp812, <variable>.SlcEndMbn, MbWidth
	sub	r0, ip, #1	@ tmp813, tmp812,
	str	r0, [r3, #16]	@ tmp813, <variable>.SlcEndMbn
	add	r3, r1, #96	@ ivtmp.2840, ivtmp.2840,
	ble	.L963	@,
.L949:
	add	r0, r2, r2, asl #1	@, tmp783, i, i,
	add	r1, r2, #1	@ tmp778, i,
	strb	r2, [r3, #0]	@ i, <variable>.SlcNo
	add	r2, r1, #1	@ i, tmp778,
	add	ip, r4, r0, asl #4	@, tmp787, pVC1_CTX_S, tmp783,
	strb	r1, [r3, #48]	@ tmp778, <variable>.SlcNo
	add	ip, ip, #100352	@ tmp788, tmp787,
	add	r0, r1, r1, asl #1	@, tmp795, tmp778, tmp778,
	add	ip, ip, #616	@ tmp788, tmp788,
	cmp	lr, r2	@ prephitmp.2815, i
	add	r0, r4, r0, asl #4	@, tmp799, pVC1_CTX_S, tmp795,
	ldr	r1, [ip, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	add	r0, r0, #100352	@ tmp800, tmp799,
	add	r0, r0, #616	@ tmp800, tmp800,
	mul	ip, r1, r5	@ tmp790, <variable>.SlcEndMbn, MbWidth
	sub	r1, ip, #1	@ tmp791, tmp790,
	str	r1, [r3, #16]	@ tmp791, <variable>.SlcEndMbn
	ldr	ip, [r0, #24]	@ <variable>.SlcEndMbn, <variable>.SlcEndMbn
	mul	r1, ip, r5	@ tmp802, <variable>.SlcEndMbn, MbWidth
	sub	r0, r1, #1	@ tmp803, tmp802,
	str	r0, [r3, #64]	@ tmp803, <variable>.SlcEndMbn
	add	r3, r3, #96	@ ivtmp.2840, ivtmp.2840,
	bgt	.L949	@,
.L963:
	uxtb	r0, lr	@ prephitmp.2817, prephitmp.2815
.L948:
	add	lr, lr, lr, asl #1	@, tmp708, prephitmp.2815, prephitmp.2815,
	movw	r1, #:lower16:100928	@ tmp705,
	movw	r3, #:lower16:100944	@ tmp713,
	movt	r1, #:upper16:100928	@ tmp705,
	add	r2, r4, lr, asl #4	@, tmp710, pVC1_CTX_S, tmp708,
	movt	r3, #:upper16:100944	@ tmp713,
	movw	r5, #:lower16:78274	@ tmp721,
	movt	r5, #:upper16:78274	@ tmp721,
	strb	r0, [r2, r1]	@ prephitmp.2817, <variable>.SlcNo
	sub	r8, r8, #1	@ tmp720, TotalMbNum,
	str	r8, [r2, r3]	@ tmp720, <variable>.SlcEndMbn
	ldrb	r1, [r4, r5]	@ zero_extendqisi2	@ prephitmp.2961, <variable>.CodecInfo.PicCodingType
	cmp	r1, #2	@ prephitmp.2961,
	bne	.L942	@,
	movw	ip, #:lower16:89003	@ tmp722,
	movw	r3, #:lower16:89120	@ tmp724,
	movt	ip, #:upper16:89003	@ tmp722,
	movt	r3, #:upper16:89120	@ tmp724,
	movw	r2, #:lower16:113248	@ tmp727,
	movt	r2, #:upper16:113248	@ tmp727,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.REFDIST, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	ldr	lr, [r4, r3]	@ <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor
	movw	r3, #:lower16:113252	@ tmp731,
	sub	ip, r0, #1	@ tmp730, <variable>.CodecInfo.AdvPicSyntax.REFDIST,
	movt	r3, #:upper16:113252	@ tmp731,
	mul	r5, lr, r0	@ tmp725, <variable>.CodecInfo.AdvPicSyntax.ScaleFactor, <variable>.CodecInfo.AdvPicSyntax.REFDIST
	mov	r0, r5, asr #8	@ D.39196, tmp725,
	str	r0, [r4, r2]	@ D.39196, <variable>.CodecInfo.FRFD
	rsb	r5, r0, ip	@ D.39200, D.39196, tmp730
	str	r5, [r4, r3]	@ D.39200, <variable>.CodecInfo.BRFD
	cmp	r5, #0	@ D.39200,
	movlt	r5, #0	@ tmp734,
	strlt	r5, [r4, r3]	@ tmp734, <variable>.CodecInfo.BRFD
	b	.L942	@
.L905:
	mov	r0, #0	@ D.38894,
	b	.L896	@
.L977:
	movw	r0, #:lower16:78272	@ tmp353,
	movt	r0, #:upper16:78272	@ tmp353,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus, <variable>.CodecInfo.CodecStatus
	tst	lr, #8	@ <variable>.CodecInfo.CodecStatus,
	bne	.L911	@,
	b	.L912	@
.L946:
	mov	r5, #1	@ tmp754,
	mov	r0, r2	@ prephitmp.2817, iftmp.553
	str	r5, [r4, r3]	@ tmp754, <variable>.CodecInfo.SlcNum
	mov	lr, r2	@ prephitmp.2815, prephitmp.2817
	b	.L948	@
.L907:
	ldr	lr, [sp, #20]	@ NewNum, NewNum
	cmp	lr, #0	@ NewNum,
	ble	.L983	@,
.L908:
	movw	r3, #:lower16:113724	@ tmp300,
	movt	r3, #:upper16:113724	@ tmp300,
	mov	r0, #0	@ tmp301,
	mov	r1, #1	@ tmp303,
	str	r0, [r4, r3]	@ tmp301, <variable>.DSDNeedClearQue
	str	r1, [r2, #728]	@ tmp303, <variable>.s32DSDWaitFlag
	b	.L896	@
.L982:
	movw	r2, #:lower16:88987	@ tmp675,
	movt	r2, #:upper16:88987	@ tmp675,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CodecInfo.AdvPicSyntax.MVMODE2, <variable>.CodecInfo.AdvPicSyntax.MVMODE2
	sub	ip, lr, #2	@ tmp678, <variable>.CodecInfo.AdvPicSyntax.MVMODE2,
	uxtb	r1, ip	@ tmp679, tmp678
	cmp	r1, #1	@ tmp679,
	movhi	r1, #0	@, prephitmp.2813
	movls	r1, #1	@, prephitmp.2813
	b	.L944	@
.L981:
	movw	r3, #:lower16:88884	@ tmp611,
	movt	r3, #:upper16:88884	@ tmp611,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.SMPPicSyntax.MVMODE2, <variable>.CodecInfo.SMPPicSyntax.MVMODE2
	sub	r6, lr, #2	@ tmp614, <variable>.CodecInfo.SMPPicSyntax.MVMODE2,
	uxtb	r2, r6	@ tmp615, tmp614
	cmp	r2, #1	@ tmp615,
	movhi	r2, #0	@, prephitmp.2964
	movls	r2, #1	@, prephitmp.2964
	b	.L940	@
.L983:
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	ble	.L904	@,
	b	.L908	@
	.fnend
	.size	VC1_Vfmw_GetStreamInfo, .-VC1_Vfmw_GetStreamInfo
	.align	2
	.global	VC1_Vfmw_PrepareDecode
	.type	VC1_Vfmw_PrepareDecode, %function
VC1_Vfmw_PrepareDecode:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VC1_Vfmw_GetStreamInfo	@
	subs	r4, r0, #0	@ D.39211,
	movne	r0, #1	@ D.39214,
	ldmnefd	sp!, {r4, pc}	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.39214, D.39211
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VC1_Vfmw_PrepareDecode, .-VC1_Vfmw_PrepareDecode
	.align	2
	.global	VC1DEC_Decode
	.type	VC1DEC_Decode, %function
VC1DEC_Decode:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r5, r0, #77824	@ D.38434, pVC1_CTX_S,
	add	r5, r5, #288	@ D.38434, D.38434,
	mov	r4, r0	@ pVC1_CTX_S, pVC1_CTX_S
	mov	r2, #160	@,
	mov	r0, r5	@, D.38434
	bl	memcpy	@
	mov	r0, r4	@, pVC1_CTX_S
	mov	r1, r5	@, D.38434
	bl	VC1_ReceivePacket	@
	subs	r7, r0, #0	@ D.38435,
	beq	.L999	@,
	ldr	r3, [r4, #0]	@ D.38441, <variable>.pstExtraData
	ldr	r2, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1000	@,
.L991:
	movw	lr, #:lower16:78272	@ tmp160,
	movt	lr, #:upper16:78272	@ tmp160,
	movw	ip, #:lower16:113328	@ tmp159,
	movt	ip, #:upper16:113328	@ tmp159,
	ldrb	r7, [r4, lr]	@ zero_extendqisi2	@ <variable>.CodecInfo.CodecStatus,
	strb	r7, [r4, ip]	@ <variable>.CodecInfo.CodecStatus,
.L992:
	add	r3, r4, #77824	@ D.38448, pVC1_CTX_S,
	movw	r5, #:lower16:113720	@ tmp166,
	add	r6, r3, #448	@ D.38448, D.38448,
	movt	r5, #:upper16:113720	@ tmp166,
	add	r2, r4, #80896	@, pVC1_CTX_S,
	add	r1, r2, #536	@,,
	mov	r0, r6	@, D.38448
	ldr	r2, [r4, r5]	@, <variable>.ChanID
	bl	VC1_Vfmw_ParseHeader	@
	subs	r7, r0, #0	@ Ret,
	bne	.L993	@,
	add	r1, r4, #112640	@, pVC1_CTX_S,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r1, #572	@,,
	bl	VC1_ClearCurPacket	@
	movw	r0, #:lower16:g_event_report	@ tmp172,
	movt	r0, #:upper16:g_event_report	@ tmp172,
	ldr	r3, [r0, #0]	@ g_event_report.524, g_event_report
	cmp	r3, #0	@ g_event_report.524,
	beq	.L990	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r7	@, Ret
	blx	r3	@ g_event_report.524
.L990:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L993:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_DecodeArbiter	@
	cmp	r0, #0	@,
	bne	.L1001	@,
.L994:
	mov	r7, #0	@ Ret,
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1000:
	ldr	r3, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	r3, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L991	@,
	movw	r6, #:lower16:113328	@ tmp156,
	movt	r6, #:upper16:113328	@ tmp156,
	movw	r1, #:lower16:78272	@ tmp155,
	movt	r1, #:upper16:78272	@ tmp155,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.u8LastCodecStatus,
	strb	r0, [r4, r1]	@ <variable>.CodecInfo.u8LastCodecStatus,
	b	.L992	@
.L999:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1001:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_PrepareDecode	@
	cmp	r0, #0	@,
	bne	.L995	@,
	ldr	r3, [r4, #0]	@ temp.3013, <variable>.pstExtraData
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1002	@,
.L996:
	movw	lr, #:lower16:113720	@ tmp177,
	movt	lr, #:upper16:113720	@ tmp177,
	mov	r0, r6	@, D.38448
	ldr	r1, [r4, lr]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
.L997:
	movw	r2, #:lower16:g_event_report	@ tmp179,
	movt	r2, #:upper16:g_event_report	@ tmp179,
	ldr	r3, [r2, #0]	@ g_event_report.3017, g_event_report
	cmp	r3, #0	@ g_event_report.3017,
	beq	.L994	@,
	movw	r0, #:lower16:113720	@ tmp180,
	movt	r0, #:upper16:113720	@ tmp180,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	mov	r7, r2	@ Ret,
	blx	r3	@ g_event_report.3017
	b	.L990	@
.L1002:
	ldr	ip, [r3, #728]	@ <variable>.s32DSDWaitFlag, <variable>.s32DSDWaitFlag
	cmp	ip, #1	@ <variable>.s32DSDWaitFlag,
	bne	.L996	@,
	b	.L997	@
.L995:
	mov	r0, r4	@, pVC1_CTX_S
	bl	VC1_Vfmw_StartDecode	@
	subs	r6, r0, #0	@ D.38470,
	bne	.L990	@,
	movw	lr, #:lower16:100908	@ tmp184,
	movt	lr, #:upper16:100908	@ tmp184,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r4, lr]	@, <variable>.CodecInfo.CurFsID
	movw	r7, #:lower16:g_event_report	@ tmp194,
	bl	FSP_ClearLogicFs	@
	movw	ip, #:lower16:100816	@ tmp187,
	movt	ip, #:upper16:100816	@ tmp187,
	movt	r7, #:upper16:g_event_report	@ tmp194,
	ldr	r1, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r1, #0]	@ D.38470, <variable>.is_to_ref
	ldr	r3, [r4, ip]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	strb	r6, [r3, #1]	@ D.38470, <variable>.is_to_display
	ldr	r3, [r7, #0]	@ g_event_report.3021, g_event_report
	cmp	r3, #0	@ g_event_report.3021,
	beq	.L994	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, r6	@, D.38470
	mov	r7, r6	@ Ret, D.38470
	blx	r3	@ g_event_report.3021
	b	.L990	@
	.fnend
	.size	VC1DEC_Decode, .-VC1DEC_Decode
	.align	2
	.global	VC1DEC_VDMPostProc
	.type	VC1DEC_VDMPostProc, %function
VC1DEC_VDMPostProc:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r6, #:lower16:113720	@ tmp151,
	movt	r6, #:upper16:113720	@ tmp151,
	mov	r4, r0	@ pCtx, pCtx
	movw	r8, #:lower16:100908	@ tmp155,
	add	r0, r0, #77824	@, pCtx,
	movt	r8, #:upper16:100908	@ tmp155,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r0, r0, #448	@,,
	mov	r5, r1	@ ErrRatio, ErrRatio
	ldr	r1, [r4, r6]	@, <variable>.ChanID
	bl	VC1_ClearCurPic	@
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.CurFsID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r2, #:lower16:100904	@ tmp159,
	movt	r2, #:upper16:100904	@ tmp159,
	ldr	r1, [r4, r2]	@, <variable>.CodecInfo.BwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	movw	r3, #:lower16:100900	@ tmp163,
	movt	r3, #:upper16:100900	@ tmp163,
	ldr	r1, [r4, r3]	@, <variable>.CodecInfo.FwdFsID
	mov	sl, r0	@ pBwdImg,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, #0	@ pCurImg,
	beq	.L1026	@,
	cmp	r5, #0	@ ErrRatio,
	movlt	r5, #0	@ iftmp.515,
	blt	.L1007	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ iftmp.515,
.L1007:
	str	r5, [r8, #180]	@ iftmp.515, <variable>.error_level
	mov	r0, r4	@, pCtx
	bl	VC1_SetImgFormat	@
	movw	ip, #:lower16:78275	@ tmp165,
	movt	ip, #:upper16:78275	@ tmp165,
	ldrsb	r1, [r4, ip]	@ <variable>.CodecInfo.Last_Struct_IPB, <variable>.CodecInfo.Last_Struct_IPB
	cmp	r1, #3	@ <variable>.CodecInfo.Last_Struct_IPB,
	beq	.L1027	@,
.L1008:
	mov	r7, #0	@ tmp169,
	str	r7, [r8, #192]	@ tmp169, <variable>.p_usrdat
	str	r7, [r8, #196]	@ tmp169, <variable>.p_usrdat
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r6, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1010	@,
	movw	r1, #:lower16:78274	@ tmp173,
	movt	r1, #:upper16:78274	@ tmp173,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ D.38275, <variable>.CodecInfo.PicCodingType
	cmp	r0, #4	@ D.38275,
	cmpne	r0, #2	@, D.38275,
	moveq	r3, #0	@, tmp180
	movne	r3, #1	@, tmp180
	beq	.L1011	@,
	movw	lr, #:lower16:100896	@ tmp181,
	movt	lr, #:upper16:100896	@ tmp181,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.RefNum, <variable>.CodecInfo.RefNum
	cmp	ip, #1	@ <variable>.CodecInfo.RefNum,
	bls	.L1012	@,
	movw	r7, #:lower16:100900	@ tmp184,
	movt	r7, #:upper16:100900	@ tmp184,
	movw	r3, #:lower16:100912	@ tmp183,
	movt	r3, #:upper16:100912	@ tmp183,
	ldr	r6, [r4, r7]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.FwdFsID
	mov	r7, #1	@ pref,
	str	r6, [r4, r3]	@ <variable>.CodecInfo.FwdFsID, <variable>.CodecInfo.ToQueFsID
.L1013:
	movw	r6, #:lower16:100912	@ tmp196,
	movt	r6, #:upper16:100912	@ tmp196,
	movw	r3, #:lower16:113208	@ tmp192,
	movt	r3, #:upper16:113208	@ tmp192,
	ldr	r1, [r4, r6]	@ D.38300, <variable>.CodecInfo.ToQueFsID
	ldr	r2, [r4, r3]	@ <variable>.CodecInfo.PicCnt, <variable>.CodecInfo.PicCnt
	cmn	r1, #1	@ D.38300,
	add	r0, r2, #1	@ tmp195, <variable>.CodecInfo.PicCnt,
	str	r0, [r4, r3]	@ tmp195, <variable>.CodecInfo.PicCnt
	beq	.L1009	@,
	movw	sl, #:lower16:113720	@ tmp197,
	movt	sl, #:upper16:113720	@ tmp197,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L1028	@,
	ldr	r3, [r5, #180]	@ D.38309, <variable>.error_level
	cmp	r3, #0	@ D.38309,
	beq	.L1016	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r1	@ D.38309, <variable>.s32OutErrThr
	bhi	.L1017	@,
.L1016:
	bl	vfmw_dprint_nothing	@
	movw	r6, #:lower16:100912	@ tmp203,
	movw	r3, #:lower16:113720	@ tmp201,
	movt	r6, #:upper16:100912	@ tmp203,
	movt	r3, #:upper16:113720	@ tmp201,
	mov	r2, #1	@,
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	cmp	r7, #1	@ pref,
	beq	.L1029	@,
	movw	lr, #:lower16:100816	@ tmp213,
	movt	lr, #:upper16:100816	@ tmp213,
	movw	ip, #:lower16:78273	@ tmp216,
	movt	ip, #:upper16:78273	@ tmp216,
	ldr	r3, [r4, lr]	@ <variable>.CodecInfo.pCurFrm, <variable>.CodecInfo.pCurFrm
	mov	r6, #1	@ tmp214,
	mov	r1, #2	@ tmp217,
	strb	r6, [r3, #1]	@ tmp214, <variable>.is_to_display
	strb	r1, [r4, ip]	@ tmp217, <variable>.CodecInfo.RefId
.L1019:
	movw	r6, #:lower16:113720	@ tmp219,
	movt	r6, #:upper16:113720	@ tmp219,
	add	r2, r4, #112640	@, pCtx,
	mov	r1, #1	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	add	r3, r2, #728	@,,
	mov	r2, r4	@, pCtx
	str	r5, [sp, #0]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.38319,
	beq	.L1020	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r8, #0	@ tmp226,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp226, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	movw	ip, #:lower16:100912	@ tmp233,
	movt	ip, #:upper16:100912	@ tmp233,
	str	r8, [r5, #196]	@ tmp226, <variable>.p_usrdat
	mov	r2, r8	@, tmp226
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r4, ip]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r7, #1	@ pref,
	mov	r0, r8	@ D.38257, tmp226
	movweq	r3, #:lower16:100824	@ tmp236,
	movwne	r3, #:lower16:100816	@ tmp240,
	movteq	r3, #:upper16:100824	@ tmp236,
	movtne	r3, #:upper16:100816	@ tmp240,
	ldr	r1, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	r8, [r1, #1]	@ tmp226, <variable>.is_to_display
	b	.L1005	@
.L1011:
	movw	r1, #:lower16:100908	@ tmp187,
	movt	r1, #:upper16:100908	@ tmp187,
	movw	r2, #:lower16:100912	@ tmp186,
	cmp	sl, #0	@ pBwdImg,
	ldr	r0, [r4, r1]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	movt	r2, #:upper16:100912	@ tmp186,
	str	r0, [r4, r2]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	beq	.L1014	@,
	ldrd	r6, [sl, #8]	@ D.38291, pBwdImg,
	ldrd	r0, [r8, #8]	@ D.38293, pCurImg,
	cmp	r6, r0	@ D.38291, D.38293
	sbcs	r2, r7, r1	@, D.38291, D.38293
	bge	.L1014	@,
	strd	r6, [r8, #8]	@ D.38291, pCurImg,
	mov	r7, r3	@ pref, tmp180
	strd	r0, [sl, #8]	@ D.38293, pBwdImg,
	b	.L1013	@
.L1027:
	movw	r3, #:lower16:78281	@ tmp167,
	movt	r3, #:upper16:78281	@ tmp167,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CodecInfo.LastIs2ndFld, <variable>.CodecInfo.LastIs2ndFld
	cmp	lr, #1	@ <variable>.CodecInfo.LastIs2ndFld,
	beq	.L1008	@,
.L1009:
	mov	r0, #1	@ D.38257,
.L1005:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L1010:
	movw	r6, #:lower16:100908	@ tmp190,
	movt	r6, #:upper16:100908	@ tmp190,
	movw	lr, #:lower16:100912	@ tmp189,
	movt	lr, #:upper16:100912	@ tmp189,
	ldr	ip, [r4, r6]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.CurFsID
	str	ip, [r4, lr]	@ <variable>.CodecInfo.CurFsID, <variable>.CodecInfo.ToQueFsID
	b	.L1013	@
.L1020:
	movw	r3, #:lower16:78273	@ tmp243,
	movt	r3, #:upper16:78273	@ tmp243,
	ldrsb	r5, [r4, r3]	@ D.38327, <variable>.CodecInfo.RefId
	cmp	r5, #3	@ D.38327,
	beq	.L1030	@,
	cmp	r5, #1	@ D.38327,
	beq	.L1031	@,
	cmp	r5, #2	@ D.38327,
	bne	.L1009	@,
	movw	lr, #:lower16:100816	@ tmp262,
	movt	lr, #:upper16:100816	@ tmp262,
	mov	r1, #0	@ tmp263,
	ldr	ip, [r4, lr]	@ <variable>.CodecInfo.pCurFrm,
	strb	r1, [ip, #1]	@ tmp263, <variable>.is_to_display
	strb	r1, [r4, r3]	@ tmp263, <variable>.CodecInfo.RefId
	b	.L1005	@
.L1014:
	mov	r7, #0	@ pref,
	b	.L1013	@
.L1029:
	movw	r2, #:lower16:100824	@ tmp206,
	movt	r2, #:upper16:100824	@ tmp206,
	movw	lr, #:lower16:78273	@ tmp209,
	movt	lr, #:upper16:78273	@ tmp209,
	ldr	r0, [r4, r2]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	strb	r7, [r0, #1]	@ pref, <variable>.is_to_display
	strb	r7, [r4, lr]	@ pref, <variable>.CodecInfo.RefId
	b	.L1019	@
.L1017:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	mov	r8, #0	@ tmp271,
	bl	FreeUsdByDec	@
	str	r8, [r5, #192]	@ tmp271, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r5, #196]	@ tmp271, <variable>.p_usrdat
	mov	r2, r8	@, tmp271
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r6]	@, <variable>.CodecInfo.ToQueFsID
	bl	FSP_SetDisplay	@
	cmp	r7, #1	@ pref,
	movweq	r3, #:lower16:100824	@ tmp281,
	movwne	r3, #:lower16:100816	@ tmp285,
	moveq	r0, r7	@ D.38257, pref
	movne	r0, #1	@ D.38257,
	movteq	r3, #:upper16:100824	@ tmp281,
	movtne	r3, #:upper16:100816	@ tmp285,
	ldr	r3, [r4, r3]	@ <variable>.CodecInfo.pCurFrm,
	strb	r8, [r3, #1]	@ tmp271, <variable>.is_to_display
	b	.L1005	@
.L1012:
	movw	r6, #:lower16:100912	@ tmp289,
	movt	r6, #:upper16:100912	@ tmp289,
	mvn	r0, #0	@ tmp290,
	str	r0, [r4, r6]	@ tmp290, <variable>.CodecInfo.ToQueFsID
	b	.L1013	@
.L1031:
	movw	r2, #:lower16:100824	@ tmp254,
	movt	r2, #:upper16:100824	@ tmp254,
	mov	ip, #0	@ tmp255,
	mov	r0, r5	@ D.38257, D.38327
	ldr	lr, [r4, r2]	@ <variable>.CodecInfo.pRef,
	strb	ip, [lr, #1]	@ tmp255, <variable>.is_to_display
	strb	ip, [r4, r3]	@ tmp255, <variable>.CodecInfo.RefId
	b	.L1005	@
.L1030:
	movw	r1, #:lower16:100820	@ tmp246,
	movt	r1, #:upper16:100820	@ tmp246,
	mov	lr, #0	@ tmp247,
	ldr	r2, [r4, r1]	@ <variable>.CodecInfo.pRef,
	strb	lr, [r2, #1]	@ tmp247, <variable>.is_to_display
	strb	lr, [r4, r3]	@ tmp247, <variable>.CodecInfo.RefId
	b	.L1005	@
.L1026:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.38257, pCurImg
	b	.L1005	@
.L1028:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.38257, pToQueImg
	b	.L1005	@
	.fnend
	.size	VC1DEC_VDMPostProc, .-VC1DEC_VDMPostProc
	.align	2
	.global	VC1DEC_GetRemainImg
	.type	VC1DEC_GetRemainImg, %function
VC1DEC_GetRemainImg:
	.fnstart
.LFB1922:
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
	beq	.L1034	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #1	@ <variable>.s32DecOrderOutput,
	beq	.L1035	@,
	movw	r7, #:lower16:113720	@ tmp145,
	movw	r8, #:lower16:100904	@ tmp147,
	movt	r7, #:upper16:113720	@ tmp145,
	movt	r8, #:upper16:100904	@ tmp147,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L1035	@,
	ldr	r1, [r4, r8]	@, <variable>.CodecInfo.BwdFsID
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L1042	@,
.L1035:
	add	r0, r4, #112640	@, pCtx,
	add	r0, r0, #728	@,,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	GetVoLastImageID	@
.L1037:
	ldr	r1, [r5, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L1035	@,
	ldr	r2, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bls	.L1035	@,
	ldr	lr, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	lr, #31	@ <variable>.image_height,
	movhi	r0, #0	@ ret,
	bls	.L1035	@,
.L1034:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1042:
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
	ldr	r3, [r4, r6]	@ temp.3120, <variable>.CodecInfo.pRef
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.is_to_ref, <variable>.is_to_ref
	cmp	r2, #1	@ <variable>.is_to_ref,
	beq	.L1043	@,
.L1036:
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
	beq	.L1037	@,
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
	b	.L1035	@
.L1043:
	strb	r2, [r3, #1]	@ <variable>.is_to_ref, <variable>.is_to_display
	movw	lr, #:lower16:78273	@ tmp167,
	ldr	r3, [r4, r6]	@ <variable>.CodecInfo.pRef, <variable>.CodecInfo.pRef
	movt	lr, #:upper16:78273	@ tmp167,
	mov	r2, #3	@ tmp168,
	strb	r8, [r3, #0]	@ tmp154, <variable>.is_to_ref
	strb	r2, [r4, lr]	@ tmp168, <variable>.CodecInfo.RefId
	b	.L1036	@
	.fnend
	.size	VC1DEC_GetRemainImg, .-VC1DEC_GetRemainImg
	.align	2
	.global	VC1DEC_Init
	.type	VC1DEC_Init, %function
VC1DEC_Init:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r9, #:lower16:113712	@ tmp139,
	movt	r9, #:upper16:113712	@ tmp139,
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #:lower16:113728	@,
	movt	r1, #:upper16:113728	@,
	ldr	sl, [r0, r9]	@ D.37963, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r3, r4, #112640	@, pCtx,
	add	r0, r3, #728	@,,
	mov	r7, #1	@ tmp145,
	str	sl, [r4, r9]	@ D.37963, <variable>.ImageQue.ResetMagicWord
	movw	r6, #:lower16:113324	@ tmp147,
	bl	ResetVoQueue	@
	movw	r0, #:lower16:78281	@ tmp144,
	movt	r0, #:upper16:78281	@ tmp144,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	movt	r6, #:upper16:113324	@ tmp147,
	movw	r1, #:lower16:113296	@ tmp149,
	strb	r7, [r4, r0]	@ tmp145, <variable>.CodecInfo.LastIs2ndFld
	movt	r1, #:upper16:113296	@ tmp149,
	ldr	r8, [r5, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	movw	r2, #:lower16:113300	@ tmp151,
	movt	r2, #:upper16:113300	@ tmp151,
	movw	r3, #:lower16:113304	@ tmp154,
	movt	r3, #:upper16:113304	@ tmp154,
	movw	r0, #:lower16:113308	@ tmp157,
	str	r8, [r4, r6]	@ <variable>.s32DecMode, <variable>.CodecInfo.UsedDecMode
	movt	r0, #:upper16:113308	@ tmp157,
	ldr	ip, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	r8, #:lower16:113312	@ tmp160,
	movt	r8, #:upper16:113312	@ tmp160,
	movw	r6, #:lower16:113316	@ tmp163,
	movt	r6, #:upper16:113316	@ tmp163,
	str	ip, [r4, r1]	@ <variable>.s32BpdMemAddr, <variable>.CodecInfo.MVTYPEMB_ADDR
	movw	r1, #:lower16:113320	@ tmp166,
	ldr	sl, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	r1, #:upper16:113320	@ tmp166,
	movw	ip, #:lower16:78282	@ tmp169,
	movt	ip, #:upper16:78282	@ tmp169,
	add	lr, sl, #2048	@ tmp153, <variable>.s32BpdMemAddr,
	str	lr, [r4, r2]	@ tmp153, <variable>.CodecInfo.SKIPMB_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movw	r2, #:lower16:113256	@ tmp172,
	movw	lr, #:lower16:113260	@ tmp174,
	movt	r2, #:upper16:113256	@ tmp172,
	add	sl, r9, #4096	@ tmp156, <variable>.s32BpdMemAddr,
	str	sl, [r4, r3]	@ tmp156, <variable>.CodecInfo.DIRECTMB_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	movt	lr, #:upper16:113260	@ tmp174,
	movw	r3, #:lower16:113724	@ tmp176,
	movt	r3, #:upper16:113724	@ tmp176,
	add	sl, r9, #6144	@ tmp159, <variable>.s32BpdMemAddr,
	str	sl, [r4, r0]	@ tmp159, <variable>.CodecInfo.ACPRED_ADDR
	ldr	r9, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	mov	sl, #0	@ tmp173,
	mov	r0, r4	@, pCtx
	add	r9, r9, #8192	@ tmp162, <variable>.s32BpdMemAddr,
	str	r9, [r4, r8]	@ tmp162, <variable>.CodecInfo.OVERFLAGS_ADDR
	ldr	r8, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	add	r8, r8, #10240	@ tmp165, <variable>.s32BpdMemAddr,
	str	r8, [r4, r6]	@ tmp165, <variable>.CodecInfo.FIELDTX_ADDR
	ldr	r5, [r5, #36]	@ <variable>.s32BpdMemAddr, <variable>.s32BpdMemAddr
	strb	r7, [r4, ip]	@ tmp145, <variable>.CodecInfo.LastPicRNDCTRL
	str	r7, [r4, r3]	@ tmp145, <variable>.DSDNeedClearQue
	add	ip, r5, #12288	@ tmp168, <variable>.s32BpdMemAddr,
	str	sl, [r4, lr]	@ tmp173, <variable>.CodecInfo.BPicCount
	str	ip, [r4, r1]	@ tmp168, <variable>.CodecInfo.FORWARDMB_ADDR
	str	sl, [r4, r2]	@ tmp173, <variable>.CodecInfo.PPicFound
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #:lower16:113720	@ tmp178,
	movt	r3, #:upper16:113720	@ tmp178,
	cmn	r0, #1	@ D.37988,
	str	r0, [r4, r3]	@ D.37988, <variable>.ChanID
	beq	.L1048	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@ D.37992, tmp145
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1048:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.37992,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	VC1DEC_Init, .-VC1DEC_Init
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.656.41596, %object
	.size	C.656.41596, 128
C.656.41596:
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
	.type	C.634.40926, %object
	.size	C.634.40926, 32
C.634.40926:
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
	.type	C.598.39835, %object
	.size	C.598.39835, 28
C.598.39835:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.599.39836, %object
	.size	C.599.39836, 28
C.599.39836:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.600.39837, %object
	.size	C.600.39837, 56
C.600.39837:
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
	.type	C.601.39838, %object
	.size	C.601.39838, 56
C.601.39838:
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
	.type	C.602.39839, %object
	.size	C.602.39839, 32
C.602.39839:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.590.39803, %object
	.size	C.590.39803, 28
C.590.39803:
	.word	1
	.word	1
	.word	2
	.word	1
	.word	3
	.word	1
	.word	2
	.type	C.591.39804, %object
	.size	C.591.39804, 28
C.591.39804:
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.type	C.592.39805, %object
	.size	C.592.39805, 56
C.592.39805:
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
	.type	C.593.39806, %object
	.size	C.593.39806, 56
C.593.39806:
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
	.type	C.594.39807, %object
	.size	C.594.39807, 32
C.594.39807:
	.word	256
	.word	128
	.word	85
	.word	64
	.word	51
	.word	43
	.word	37
	.word	32
	.type	C.586.39770, %object
	.size	C.586.39770, 16
C.586.39770:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.587.39771, %object
	.size	C.587.39771, 16
C.587.39771:
	.word	1
	.word	0
	.word	2
	.word	3
	.type	C.582.39744, %object
	.size	C.582.39744, 16
C.582.39744:
	.word	3
	.word	1
	.word	2
	.word	0
	.type	C.579.39731, %object
	.size	C.579.39731, 8
C.579.39731:
	.word	3
	.word	1
	.type	C.574.39703, %object
	.size	C.574.39703, 20
C.574.39703:
	.word	3
	.word	1
	.word	2
	.word	0
	.word	4
	.type	C.575.39704, %object
	.size	C.575.39704, 20
C.575.39704:
	.word	1
	.word	0
	.word	2
	.word	3
	.word	4
	.type	C.568.39659, %object
	.size	C.568.39659, 64
C.568.39659:
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
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
