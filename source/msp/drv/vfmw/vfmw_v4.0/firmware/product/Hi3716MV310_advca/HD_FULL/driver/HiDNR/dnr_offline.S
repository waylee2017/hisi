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
	.file	"dnr_offline.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_offline)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_offline.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.o
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
	.global	DNRDRV_PrepareSleep
	.type	DNRDRV_PrepareSleep, %function
DNRDRV_PrepareSleep:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #0]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp138,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #0]	@ tmp138, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_PrepareSleep, .-DNRDRV_PrepareSleep
	.align	2
	.global	DNRDRV_GetSleepStage
	.type	DNRDRV_GetSleepStage, %function
DNRDRV_GetSleepStage:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #0]	@, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_GetSleepStage, .-DNRDRV_GetSleepStage
	.align	2
	.global	DNRDRV_ForeceSleep
	.type	DNRDRV_ForeceSleep, %function
DNRDRV_ForeceSleep:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	ldr	r2, [r3, #0]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #0]	@ tmp136, s_eDnrDrvSleepStage
	bx	lr	@
	.fnend
	.size	DNRDRV_ForeceSleep, .-DNRDRV_ForeceSleep
	.align	2
	.global	DNR_CloseChan
	.type	DNR_CloseChan, %function
DNR_CloseChan:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	mvnhi	r0, #0	@ D.37955,
	bxhi	lr	@
	movw	r3, #9587	@ tmp138,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	mul	r2, r3, r0	@ tmp137, tmp138, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	mov	r3, #0	@ tmp144,
	mov	r0, r3	@ D.37955, tmp144
	add	r1, r2, #1	@ tmp139, tmp137,
	add	r2, ip, r1, asl #3	@, tmp142, tmp136, tmp139,
	add	r1, r2, #8	@ tmp143, tmp142,
	str	r3, [r2, #8]	@ tmp144, <variable>.s32IsOpen
	str	r3, [r1, #4]	@ tmp144, <variable>.InstMode
	bx	lr	@
	.fnend
	.size	DNR_CloseChan, .-DNR_CloseChan
	.align	2
	.global	DNR_Fsp_ReleasePic
	.type	DNR_Fsp_ReleasePic, %function
DNR_Fsp_ReleasePic:
	.fnstart
.LFB1946:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #19174	@ tmp138,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	mla	r2, ip, r0, r1	@ tmp139, tmp138, ChanID, PicBufID
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	ip, #0	@ tmp145,
	mov	r0, ip	@, tmp145
	add	r2, r2, #178	@ tmp140, tmp139,
	add	r3, r3, r2, asl #2	@, tmp143, tmp136, tmp140,
	str	ip, [r3, #8]	@ tmp145, <variable>.LogicImageIsUsed
	bx	lr	@
	.fnend
	.size	DNR_Fsp_ReleasePic, .-DNR_Fsp_ReleasePic
	.align	2
	.global	DNR_SetDSDParam
	.type	DNR_SetDSDParam, %function
DNR_SetDSDParam:
	.fnstart
.LFB1956:
	@ args = 20, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.pad #16
	sub	sp, sp, #16	@,,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movw	r4, #:lower16:.LANCHOR0	@ tmp137,
	movw	r5, #:lower16:76696	@ tmp157,
	movt	r4, #:upper16:.LANCHOR0	@ tmp137,
	movt	r5, #:upper16:76696	@ tmp157,
	add	ip, sp, #12	@ tmp136,,
	mla	r4, r5, r0, r4	@ tmp141, tmp157, ChanID, tmp137
	stmia	ip, {r1, r2, r3}	@ tmp136,,,
	ldr	r1, [sp, #16]	@ stDSDParam$s32ThrWidth, stDSDParam.s32ThrWidth
	add	ip, r4, #75776	@ tmp149, tmp141,
	ldr	r2, [sp, #20]	@ stDSDParam$s32ThrHeight, stDSDParam.s32ThrHeight
	ldr	r3, [sp, #12]	@ stDSDParam.s32DSDenable, stDSDParam.s32DSDenable
	add	r4, ip, #904	@ tmp142, tmp142,
	add	r0, ip, #912	@ tmp149, tmp149,
	str	r1, [r4, #8]	@ stDSDParam$s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	str	r2, [r0, #4]	@ stDSDParam$s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	str	r3, [r4, #4]	@ stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	ldmfd	sp!, {r4, r5}
	add	sp, sp, #16	@,,
	bx	lr
	.fnend
	.size	DNR_SetDSDParam, .-DNR_SetDSDParam
	.align	2
	.global	DNR_ChanIsOpen
	.type	DNR_ChanIsOpen, %function
DNR_ChanIsOpen:
	.fnstart
.LFB1957:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #9587	@ tmp138,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	mul	r2, ip, r0	@ tmp137, tmp138, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r2, asl #3	@, tmp142, tmp136, tmp137,
	ldr	r0, [r3, #16]	@, <variable>.s32IsOpen
	bx	lr	@
	.fnend
	.size	DNR_ChanIsOpen, .-DNR_ChanIsOpen
	.align	2
	.global	DNR_SetDataSource
	.type	DNR_SetDataSource, %function
DNR_SetDataSource:
	.fnstart
.LFB1958:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L25	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movw	r4, #:lower16:76696	@ tmp141,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:76696	@ tmp141,
	ldr	r6, [r2, #0]	@ <variable>.pstCaptureInFrm, <variable>.pstCaptureInFrm
	movw	r3, #:lower16:76680	@ tmp146,
	mla	ip, r4, r0, ip	@ tmp142, tmp141, ChanID, tmp138
	movt	r3, #:upper16:76680	@ tmp146,
	movw	r4, #:lower16:76664	@ tmp153,
	movt	r4, #:upper16:76664	@ tmp153,
	mov	r0, #0	@ D.39859,
	add	r5, ip, #75776	@ tmp143, tmp142,
	add	r5, r5, #896	@ tmp143, tmp143,
	str	r6, [r5, #4]	@ <variable>.pstCaptureInFrm, <variable>.pCaptureImageIn
	ldr	r2, [r2, #4]	@ <variable>.pstCaptureOutFrm, <variable>.pstCaptureOutFrm
	str	r1, [ip, r4]	@ DNRDataSourceFlag, <variable>.DNRCaptureEnableFlag
	str	r2, [ip, r3]	@ <variable>.pstCaptureOutFrm, <variable>.pCaptureImageOut
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L25:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39859,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_SetDataSource, .-DNR_SetDataSource
	.align	2
	.global	DNR_FsIsInImgQue
	.type	DNR_FsIsInImgQue, %function
DNR_FsIsInImgQue:
	.fnstart
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ DecPhy
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r3, r0	@ ChanID, ChanID
	beq	.L52	@,
	cmp	r2, #0	@ Size,
	beq	.L52	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp263,
	movw	r8, #:lower16:76696	@ tmp159,
	movt	r6, #:upper16:.LANCHOR0	@ tmp263,
	movt	r8, #:upper16:76696	@ tmp159,
	movw	ip, #26408	@ tmp157,
	add	r4, r2, r1	@ DecPhyEndAddr, Size, DecPhy
	mla	r7, r8, r0, r6	@ tmp160, tmp159, ChanID, tmp263
	add	r0, r7, #26368	@ tmp161, tmp160,
	add	r0, r0, #40	@ tmp161, tmp161,
	ldr	r2, [r7, ip]	@ i, <variable>.LogicImageQue.history
	ldr	r7, [r0, #4]	@ i.915, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.914, i,
	cmp	r7, r2	@ i.915, i.914
	moveq	r0, #0	@ s32Count,
	beq	.L31	@,
	movw	r0, #19174	@ tmp170,
	mul	r8, r0, r3	@ tmp169, tmp170, ChanID
	add	ip, r8, r2	@ tmp171, tmp169, i.914
	add	r0, r6, ip, asl #2	@, tmp176, tmp263, tmp171,
	ldr	ip, [r0, #1056]	@ pImage.916, <variable>.LogicImageQue.image_ptr
	cmp	ip, #0	@ pImage.916,
	movne	r0, #0	@ s32Count,
	beq	.L32	@,
.L33:
	ldr	sl, [ip, #368]	@ <variable>.is_processed_by_dnr, <variable>.is_processed_by_dnr
	ldr	r5, [ip, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	cmp	sl, #0	@ <variable>.is_processed_by_dnr,
	ldreq	ip, [ip, #104]	@ ImgStartAddr, <variable>.luma_phy_addr
	ldrne	ip, [ip, #120]	@ ImgStartAddr, <variable>.luma_2d_phy_addr
	cmp	ip, r4	@ ImgStartAddr, DecPhyEndAddr
	movge	sl, #0	@, tmp197
	movlt	sl, #1	@, tmp197
	cmp	ip, r1	@ ImgStartAddr, DecPhy
	add	r5, ip, r5	@ ImgEndAddr, ImgStartAddr, <variable>.ImgSize
	movlt	sl, #0	@, tmp197,
	cmp	sl, #0	@ tmp197,
	bne	.L50	@,
	cmp	r5, r4	@ ImgEndAddr, DecPhyEndAddr
	movgt	sl, #0	@, tmp204
	movle	sl, #1	@, tmp204
	cmp	r5, r1	@ ImgEndAddr, DecPhy
	movle	sl, #0	@, tmp204,
	cmp	sl, #0	@ tmp204,
	bne	.L50	@,
	cmp	r5, r4	@ ImgEndAddr, DecPhyEndAddr
	movle	sl, #0	@,
	movgt	sl, #1	@,
	cmp	ip, r1	@ ImgStartAddr, DecPhy
	movge	sl, #0	@,,
	cmp	sl, #0	@ tmp211,
	bne	.L50	@,
	add	r2, r2, #1	@ i.893, i.914,
	and	r2, r2, #63	@ i.914, i.893,
	cmp	r2, r7	@ i.914, i.915
	beq	.L31	@,
.L39:
	add	ip, r8, r2	@ tmp181, tmp268, i.914
	add	ip, r6, ip, asl #2	@, tmp186, tmp263, tmp181,
	ldr	ip, [ip, #1056]	@ pImage.916, <variable>.LogicImageQue.image_ptr
	cmp	ip, #0	@ pImage.916,
	bne	.L33	@,
.L32:
	mvn	r0, #0	@ s32Count,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L50:
	add	r2, r2, #1	@ i.893, i.914,
	add	r0, r0, #1	@ s32Count, s32Count,
	and	r2, r2, #63	@ i.914, i.893,
	cmp	r2, r7	@ i.914, i.915
	bne	.L39	@,
.L31:
	movw	r8, #:lower16:76696	@ tmp215,
	movt	r8, #:upper16:76696	@ tmp215,
	and	ip, r7, #63	@ i.913, i.915,
	movw	r7, #26416	@ tmp213,
	mla	r2, r8, r3, r6	@ tmp216, tmp215, ChanID, tmp263
	movw	r5, #:lower16:.LANCHOR0	@ tmp212,
	movt	r5, #:upper16:.LANCHOR0	@ tmp212,
	ldr	r8, [r2, r7]	@ D.39749, <variable>.LogicImageQue.tail
	cmp	r8, ip	@ D.39749, i.913
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	r2, #19174	@ tmp220,
	mul	r3, r2, r3	@ tmp219, tmp220, ChanID
	add	r2, r3, ip	@ tmp221, tmp219, i.913
	add	r5, r5, r2, asl #2	@, tmp226, tmp212, tmp221,
	ldr	r2, [r5, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r2, #0	@ pImage,
	beq	.L32	@,
.L48:
	ldr	r5, [r2, #368]	@ <variable>.is_processed_by_dnr, <variable>.is_processed_by_dnr
	ldr	r7, [r2, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	cmp	r5, #0	@ <variable>.is_processed_by_dnr,
	ldreq	r2, [r2, #104]	@ ImgStartAddr.889, <variable>.luma_phy_addr
	ldrne	r2, [r2, #120]	@ ImgStartAddr.889, <variable>.luma_2d_phy_addr
	add	r5, r2, r7	@ ImgEndAddr.890, ImgStartAddr.889, <variable>.ImgSize
	cmp	r2, r4	@ ImgStartAddr.889, DecPhyEndAddr
	movge	r7, #0	@, tmp247
	movlt	r7, #1	@, tmp247
	cmp	r2, r1	@ ImgStartAddr.889, DecPhy
	movlt	r7, #0	@, tmp247,
	cmp	r7, #0	@ tmp247,
	bne	.L51	@,
	cmp	r5, r4	@ ImgEndAddr.890, DecPhyEndAddr
	movgt	r7, #0	@, tmp254
	movle	r7, #1	@, tmp254
	cmp	r5, r1	@ ImgEndAddr.890, DecPhy
	movle	r7, #0	@, tmp254,
	cmp	r7, #0	@ tmp254,
	bne	.L51	@,
	cmp	r5, r4	@ ImgEndAddr.890, DecPhyEndAddr
	movle	r7, #0	@,
	movgt	r7, #1	@,
	cmp	r2, r1	@ ImgStartAddr.889, DecPhy
	movge	r7, #0	@,,
	cmp	r7, #0	@ tmp261,
	bne	.L51	@,
	add	ip, ip, #1	@ i.912, i.913,
	and	ip, ip, #63	@ i.913, i.912,
	cmp	ip, r8	@ i.913, D.39749
	beq	.L53	@,
.L49:
	add	r2, r3, ip	@ tmp231, tmp266, i.913
	add	r2, r6, r2, asl #2	@, tmp236, tmp263, tmp231,
	ldr	r2, [r2, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r2, #0	@ pImage,
	bne	.L48	@,
	b	.L32	@
.L51:
	add	ip, ip, #1	@ i.912, i.913,
	add	r0, r0, #1	@ s32Count, s32Count,
	and	ip, ip, #63	@ i.913, i.912,
	cmp	ip, r8	@ i.913, D.39749
	bne	.L49	@,
.L53:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L52:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ s32Count,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	DNR_FsIsInImgQue, .-DNR_FsIsInImgQue
	.align	2
	.global	DNR_DelImageProc
	.type	DNR_DelImageProc, %function
DNR_DelImageProc:
	.fnstart
.LFB1947:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L62	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L62	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	add	r2, r3, #976	@ tmp140, tmp164,
	cmp	r0, r2	@ pImageQueue, tmp140
	moveq	r2, #0	@ ChanID,
	beq	.L59	@,
	ldr	r2, .L64	@ tmp143,
	cmp	r0, r2	@ pImageQueue, tmp143
	beq	.L60	@,
	ldr	r2, .L64+4	@ tmp147,
	cmp	r0, r2	@ pImageQueue, tmp147
	moveq	r2, #2	@ ChanID,
	beq	.L59	@,
	ldr	r2, .L64+8	@ tmp151,
	cmp	r0, r2	@ pImageQueue, tmp151
	moveq	r2, #3	@ ChanID,
	beq	.L59	@,
.L62:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39242,
	ldmfd	sp!, {r3, pc}	@
.L60:
	mov	r2, #1	@ ChanID,
.L59:
	movw	r0, #19174	@ tmp155,
	mov	ip, #0	@ tmp162,
	mla	r2, r0, r2, r1	@ tmp156, tmp155, ChanID, ImageID
	mov	r0, ip	@ D.39242, tmp162
	add	r1, r2, #178	@ tmp157, tmp156,
	add	r3, r3, r1, asl #2	@, tmp160, tmp164, tmp157,
	str	ip, [r3, #8]	@ tmp162, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r3, pc}	@
.L65:
	.align	2
.L64:
	.word	.LANCHOR0+77672
	.word	.LANCHOR0+154368
	.word	.LANCHOR0+231064
	.fnend
	.size	DNR_DelImageProc, .-DNR_DelImageProc
	.align	2
	.global	DNR_ClearTempImage
	.type	DNR_ClearTempImage, %function
DNR_ClearTempImage:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp174,
	movt	r3, #:upper16:76696	@ tmp174,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mul	r3, r3, r0	@ tmp173, tmp174, InstId
	movw	r8, #:lower16:.LANCHOR0	@ tmp213,
	movt	r8, #:upper16:.LANCHOR0	@ tmp213,
	str	r0, [sp, #4]	@ InstId, %sfp
	add	r0, r3, r8	@ tmp175, tmp173, tmp213
	add	r4, r0, #51456	@ tmp176, tmp175,
	add	r4, r4, #72	@ tmp176, tmp176,
	ldr	r2, [r4, #4]	@ D.38309, <variable>.TempImageNum
	cmp	r2, #0	@ D.38309,
	ble	.L78	@,
	mov	r4, #392	@ tmp187,
	ldr	r5, [sp, #4]	@, %sfp
	mla	r6, r4, r2, r3	@ tmp190, tmp187, D.38309, tmp173
	movw	sl, #19174	@ tmp217,
	mul	sl, sl, r5	@ tmp218, tmp217,
	sub	r7, r2, #1	@ i, D.38309,
	add	r9, r6, r8	@ tmp191, tmp190, tmp213
	sub	r5, r7, #1	@ i, i,
	add	fp, r9, #51456	@ ivtmp.968, tmp191,
	mov	r6, #0	@ tmp219,
	add	fp, fp, #80	@ ivtmp.968, ivtmp.968,
	and	ip, r7, #1	@ tmp222, i,
	mov	r9, r6	@ tmp203, tmp219
	mov	r7, r8	@ tmp193, tmp213
	ldr	r1, [fp, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r4, fp, #392	@ ivtmp.968, ivtmp.968,
	add	r0, sl, r1	@ tmp196, tmp218, <variable>.image_id
	add	lr, r8, r0, asl #2	@, tmp201, tmp213, tmp196,
	add	r2, lr, #720	@ tmp202, tmp201,
	str	r6, [r2, #0]	@ tmp219, <variable>.LogicImageIsUsed
	str	ip, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	ldr	r3, [sp, #0]	@,
	beq	.L77	@,
	cmp	r3, #0	@ tmp222,
	beq	.L69	@,
	ldr	r9, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r5, r5, #1	@ i, i,
	sub	r4, fp, #784	@ ivtmp.968, ivtmp.968,
	mov	r7, r8	@ tmp193, tmp213
	add	r2, sl, r9	@ tmp251, tmp218, <variable>.image_id
	mov	r9, r6	@ tmp203, tmp219
	add	ip, r8, r2, asl #2	@, tmp254, tmp213, tmp251,
	add	r0, ip, #720	@ tmp255, tmp254,
	str	r6, [r0, #0]	@ tmp219, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	beq	.L77	@,
.L69:
	ldr	r3, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r7, r5, #1	@ tmp223, i,
	sub	r5, r7, #1	@ i, tmp223,
	movw	r7, #:lower16:.LANCHOR0	@ tmp193,
	add	r9, sl, r3	@ tmp230, tmp218, <variable>.image_id
	movt	r7, #:upper16:.LANCHOR0	@ tmp193,
	add	r1, r9, #178	@ tmp231, tmp230,
	mov	r9, r6	@ tmp203, tmp219
	add	lr, r8, r1, asl #2	@, tmp233, tmp213, tmp231,
	str	r6, [lr, #8]	@ tmp219, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #-608]	@ <variable>.image_id, <variable>.image_id
	sub	r4, r4, #784	@ ivtmp.968, ivtmp.968,
	add	r2, sl, r0	@ tmp242, tmp218, <variable>.image_id
	add	ip, r2, #178	@ tmp243, tmp242,
	add	r3, r8, ip, asl #2	@, tmp245, tmp213, tmp243,
	str	r6, [r3, #8]	@ tmp219, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	bne	.L69	@,
.L77:
	ldr	r3, [sp, #4]	@, %sfp
	movw	r1, #:lower16:76696	@ tmp208,
	movt	r1, #:upper16:76696	@ tmp208,
	mov	r0, r9	@ D.38312, tmp203
	mla	lr, r1, r3, r7	@ tmp209, tmp208,, tmp193
	add	r2, lr, #51456	@ tmp210, tmp209,
	add	ip, r2, #72	@ tmp210, tmp210,
	str	r9, [ip, #4]	@ tmp203, <variable>.TempImageNum
.L68:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L78:
	bl	vfmw_dprint_nothing	@
	mov	r1, #0	@ tmp183,
	mvn	r0, #0	@ D.38312,
	str	r1, [r4, #4]	@ tmp183, <variable>.TempImageNum
	b	.L68	@
	.fnend
	.size	DNR_ClearTempImage, .-DNR_ClearTempImage
	.align	2
	.global	DNR_StopChan
	.type	DNR_StopChan, %function
DNR_StopChan:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L84	@,
	movw	r2, #9587	@ tmp138,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	mul	r3, r2, r0	@ tmp137, tmp138, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	add	r0, r3, #1	@ tmp139, tmp137,
	add	r1, ip, r0, asl #3	@, tmp142, tmp136, tmp139,
	add	r2, r1, #8	@ tmp143, tmp142,
	ldr	r3, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L84	@,
	mov	r0, #0	@ tmp153,
	str	r0, [r2, #4]	@ tmp153, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L84:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38259,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_StopChan, .-DNR_StopChan
	.align	2
	.global	DNR_DisableChan
	.type	DNR_DisableChan, %function
DNR_DisableChan:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L90	@,
	movw	lr, #9587	@ tmp138,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	mul	r2, lr, r0	@ tmp137, tmp138, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	add	r1, ip, r2, asl #3	@, tmp142, tmp136, tmp137,
	ldr	r3, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L90	@,
	bl	DNR_StopChan	@
	mov	r0, #0	@ D.38248,
	ldmfd	sp!, {r3, pc}	@
.L90:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38248,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_DisableChan, .-DNR_DisableChan
	.align	2
	.global	DNR_StartChan
	.type	DNR_StartChan, %function
DNR_StartChan:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L96	@,
	movw	r2, #9587	@ tmp138,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	mul	ip, r2, r0	@ tmp137, tmp138, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r0, ip, #1	@ tmp139, tmp137,
	add	r3, r1, r0, asl #3	@, tmp142, tmp136, tmp139,
	add	r2, r3, #8	@ tmp143, tmp142,
	ldr	r3, [r3, #8]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L96	@,
	mov	r0, #0	@ D.38163,
	str	r3, [r2, #4]	@ <variable>.s32IsOpen, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L96:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38163,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_StartChan, .-DNR_StartChan
	.align	2
	.global	DNR_ConfigBackOptimizeFlag
	.type	DNR_ConfigBackOptimizeFlag, %function
DNR_ConfigBackOptimizeFlag:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	r3, r0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L103	@,
	movw	ip, #9587	@ tmp139,
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	mul	r0, ip, r0	@ tmp138, tmp139, ChanID
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	add	ip, r2, r0, asl #3	@, tmp143, tmp137, tmp138,
	ldr	r0, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L103	@,
	cmp	r1, #0	@ pArgs,
	beq	.L103	@,
	movw	ip, #:lower16:76696	@ tmp149,
	movt	ip, #:upper16:76696	@ tmp149,
	ldr	r4, [r1, #12]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	mov	r0, #0	@ D.38148,
	mla	r3, ip, r3, r2	@ tmp150, tmp149, ChanID, tmp137
	add	ip, r3, #75776	@ tmp151, tmp150,
	mov	r2, ip	@ tmp158, tmp151
	add	ip, ip, #856	@ tmp151, tmp151,
	add	r3, r2, #872	@ tmp158, tmp158,
	str	r4, [ip, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	str	r2, [r3, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L103:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38148,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	DNR_ConfigBackOptimizeFlag, .-DNR_ConfigBackOptimizeFlag
	.align	2
	.global	DNR_ConfigFFFBSpeed
	.type	DNR_ConfigFFFBSpeed, %function
DNR_ConfigFFFBSpeed:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L110	@,
	movw	ip, #9587	@ tmp139,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	mul	r2, ip, r0	@ tmp138, tmp139, ChanID
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	ip, r3, r2, asl #3	@, tmp143, tmp137, tmp138,
	ldr	r2, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L110	@,
	cmp	r1, #0	@ pArgs,
	beq	.L110	@,
	movw	ip, #:lower16:76696	@ tmp149,
	movt	ip, #:upper16:76696	@ tmp149,
	ldr	r1, [r1, #0]	@ tmp152,* pArgs
	movw	r2, #:lower16:76632	@ tmp147,
	mla	r3, ip, r0, r3	@ tmp150, tmp149, ChanID, tmp137
	movt	r2, #:upper16:76632	@ tmp147,
	mov	r0, #0	@ D.38133,
	str	r1, [r3, r2]	@ tmp152, <variable>.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L110:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38133,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_ConfigFFFBSpeed, .-DNR_ConfigFFFBSpeed
	.align	2
	.global	DNR_ConfigChan
	.type	DNR_ConfigChan, %function
DNR_ConfigChan:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L121	@,
	movw	ip, #9587	@ tmp140,
	movw	r3, #:lower16:.LANCHOR0	@ tmp237,
	mul	r2, ip, r0	@ tmp139, tmp140, ChanID
	movt	r3, #:upper16:.LANCHOR0	@ tmp237,
	add	ip, r3, r2, asl #3	@, tmp144, tmp237, tmp139,
	ldr	r2, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L121	@,
	cmp	r1, #0	@ pArgs,
	beq	.L121	@,
	movw	r4, #:lower16:76696	@ tmp150,
	movt	r4, #:upper16:76696	@ tmp150,
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	mla	ip, r4, r0, r3	@ tmp151, tmp150, ChanID, tmp237
	add	r2, ip, #75776	@ tmp160, tmp151,
	add	r4, ip, #8	@ tmp152, tmp151,
	add	r2, r2, #904	@ tmp160, tmp160,
	strb	r5, [r4, #2]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	r2, [r2, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	addeq	ip, ip, #75776	@ tmp167, tmp151,
	ldreqsb	r2, [r1, #0]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	addeq	ip, ip, #912	@ tmp167, tmp167,
	ldrneb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	streq	r2, [ip, #8]	@ <variable>.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	strneb	r2, [r4, #1]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldrsb	r2, [r1, #1]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r2, #1	@ <variable>.s32VcmpEn,
	beq	.L122	@,
.L118:
	mov	r0, #0	@ D.38100,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L122:
	movw	r2, #:lower16:76696	@ tmp181,
	movt	r2, #:upper16:76696	@ tmp181,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	mla	r4, r2, r0, r3	@ tmp182, tmp181, ChanID, tmp237
	strb	ip, [r4, #11]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldrsb	r3, [r1, #2]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r3, #1	@ <variable>.s32WmEn,
	beq	.L123	@,
	add	r0, r4, #75776	@ tmp226, tmp182,
	movw	r2, #:lower16:76624	@ tmp222,
	add	r3, r0, #848	@ tmp226, tmp226,
	movt	r2, #:upper16:76624	@ tmp222,
	movw	ip, #65535	@ tmp227,
	mov	r0, #0	@ D.38100,
	str	ip, [r4, r2]	@ tmp227, <variable>.s32VcmpWmStartLine
	str	ip, [r3, #4]	@ tmp227, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L123:
	ldr	r3, [r1, #4]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	movw	r6, #:lower16:76624	@ tmp188,
	movt	r6, #:upper16:76624	@ tmp188,
	add	r5, r4, #75776	@ tmp192, tmp182,
	add	r5, r5, #848	@ tmp192, tmp192,
	str	r3, [r4, r6]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	r0, [r1, #8]	@ D.38120, <variable>.s32VcmpWmEndLine
	cmp	r0, r3	@ D.38120, <variable>.s32VcmpWmStartLine
	str	r0, [r5, #4]	@ D.38120, <variable>.s32VcmpWmEndLine
	bge	.L118	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #65535	@ tmp213,
	mov	r0, #0	@ D.38100,
	str	r1, [r4, r6]	@ tmp213, <variable>.s32VcmpWmStartLine
	str	r1, [r5, #4]	@ tmp213, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L121:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38100,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_ConfigChan, .-DNR_ConfigChan
	.align	2
	.global	DNRDRV_ExitSleep
	.type	DNRDRV_ExitSleep, %function
DNRDRV_ExitSleep:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #0]	@ D.37911, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.37911,
	beq	.L125	@,
	blx	r3	@ D.37911
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #0]	@ tmp136, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L125:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #0]	@ tmp136, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNRDRV_ExitSleep, .-DNRDRV_ExitSleep
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
.LFB1952:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #3	@ ChanID,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	str	r2, [sp, #12]	@ s32Num, %sfp
	bhi	.L145	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	beq	.L145	@,
	add	r0, sp, #16	@,,
	mov	r1, #8	@,
	bl	__memzero	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp241,
	movw	r3, #:lower16:76696	@ tmp164,
	movt	r0, #:upper16:.LANCHOR0	@ tmp241,
	movt	r3, #:upper16:76696	@ tmp164,
	movw	r1, #26408	@ tmp162,
	mla	r3, r3, r5, r0	@ tmp165, tmp164, ChanID, tmp241
	add	r7, r3, #26368	@ tmp166, tmp165,
	add	r7, r7, #40	@ tmp166, tmp166,
	ldr	r2, [r3, r1]	@ i, <variable>.LogicImageQue.history
	ldr	r1, [r7, #4]	@ i.1195, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1203, i,
	cmp	r1, r2	@ i.1195, i.1203
	moveq	r3, #0	@ s32UsingCount,
	beq	.L133	@,
	movw	r6, #19174	@ tmp250,
	mov	r3, #0	@ s32UsingCount,
	mul	r6, r6, r5	@ tmp251, tmp250, ChanID
.L137:
	add	r1, r6, r2	@ tmp176, tmp251, i.1203
	add	r8, r4, r3, asl #3	@, D.39654, VoUsingFrameArray, s32UsingCount,
	add	lr, r0, r1, asl #2	@, tmp181, tmp241, tmp176,
	ldr	r1, [lr, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	subs	ip, r1, #0	@ tmp189, pImage,
	movne	ip, #1	@ tmp189
	cmp	r3, #63	@ s32UsingCount,
	movgt	ip, #0	@, tmp189,
	cmp	ip, #0	@ tmp189,
	beq	.L134	@,
	ldr	lr, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	lr, [r4, r3, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r3, r3, #1	@ s32UsingCount, s32UsingCount,
	ldr	ip, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	ip, [r8, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L135:
	add	r2, r2, #1	@ i.1181, i.1203,
	ldr	r1, [r7, #4]	@ i.1195, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1203, i.1181,
	cmp	r1, r2	@ i.1195, i.1203
	bne	.L137	@,
.L133:
	movw	r6, #:lower16:76696	@ tmp202,
	movt	r6, #:upper16:76696	@ tmp202,
	movw	ip, #26416	@ tmp200,
	and	r2, r1, #63	@ i.1201, i.1195,
	mla	r6, r6, r5, r0	@ tmp203, tmp202, ChanID, tmp241
	ldr	r1, [r6, ip]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	cmp	r1, r2	@ <variable>.LogicImageQue.tail, i.1201
	beq	.L144	@,
	movw	lr, #19174	@ tmp244,
	add	r7, r6, #26368	@ tmp249, tmp203,
	mul	r5, lr, r5	@ tmp245, tmp244, ChanID
	add	r6, r7, #48	@ tmp249, tmp249,
.L162:
	add	lr, r5, r2	@ tmp209, tmp245, i.1201
	add	r7, r4, r3, asl #3	@, temp.1188, VoUsingFrameArray, s32UsingCount,
	add	r1, r0, lr, asl #2	@, tmp214, tmp241, tmp209,
	ldr	r1, [r1, #1056]	@ pImage.1182, <variable>.LogicImageQue.image_ptr
	subs	ip, r1, #0	@ tmp222, pImage.1182,
	movne	ip, #1	@ tmp222
	cmp	r3, #63	@ s32UsingCount,
	movgt	ip, #0	@, tmp222,
	cmp	ip, #0	@ tmp222,
	beq	.L142	@,
	ldr	lr, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	lr, [r4, r3, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r3, r3, #1	@ s32UsingCount, s32UsingCount,
	ldr	ip, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	ip, [r7, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L143:
	add	r2, r2, #1	@ i.1192, i.1201,
	ldr	r1, [r6, #0]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	and	r2, r2, #63	@ i.1201, i.1192,
	cmp	r1, r2	@ <variable>.LogicImageQue.tail, i.1201
	bne	.L162	@,
.L144:
	cmp	r3, #0	@ s32UsingCount,
	beq	.L139	@,
	ldr	r0, [r4, #0]	@, <variable>.FrameAddr
	cmp	r0, #-2147483648	@,
	strne	r4, [sp, #4]	@ VoUsingFrameArray, %sfp
	str	r0, [sp, #8]	@, %sfp
	addne	fp, r4, #16	@ ivtmp.1180, VoUsingFrameArray,
	movne	r8, #0	@ i.1193,
	beq	.L145	@,
.L151:
	add	r7, r8, #1	@ j.1194, i.1193,
	cmp	r7, r3	@ j.1194, s32UsingCount
	bge	.L139	@,
	ldr	r9, [fp, #-8]	@ D.39671, <variable>.FrameAddr
	cmp	r9, #-2147483648	@ D.39671,
	mov	ip, r9	@ D.39677, D.39671
	beq	.L145	@,
	mvn	r6, r7	@ tmp257, j.1194
	add	r5, r6, r3	@ tmp256, tmp257, s32UsingCount
	tst	r5, #1	@ tmp256,
	mov	r0, fp	@ ivtmp.1170, ivtmp.1180
	mov	r6, r8	@ MinIndex, i.1193
	mov	r5, r7	@ j, j.1194
	beq	.L166	@,
	ldr	r6, [r4, r8, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r0, fp	@ ivtmp.1170, ivtmp.1180
	ldr	ip, [r0], #8	@ D.39677, <variable>.FrameAddr
	add	r5, r7, #1	@ j, j.1194,
	cmp	r6, r9	@ <variable>.FrameAddr, D.39671
	movle	r6, r8	@ MinIndex, i.1193
	movgt	r6, r7	@ MinIndex, j.1194
	cmp	ip, #-2147483648	@ D.39677,
	beq	.L145	@,
.L166:
	mov	sl, r7	@ j.1194, j.1194
	b	.L147	@
.L149:
	ldr	r7, [r1], #8	@ D.39677, <variable>.FrameAddr
	cmp	r7, #-2147483648	@ D.39677,
	beq	.L145	@,
	ldr	lr, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	ip, [r0, #8]	@ D.39677, <variable>.FrameAddr
	add	r0, r1, #8	@ ivtmp.1170, tmp260,
	cmp	lr, r7	@ <variable>.FrameAddr, D.39677
	movgt	r6, r2	@ MinIndex, tmp259
	cmp	ip, #-2147483648	@ D.39677,
	beq	.L145	@,
.L147:
	ldr	r7, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r2, r5, #1	@ tmp259, j,
	mov	r1, r0	@ tmp260, ivtmp.1170
	cmp	r7, ip	@ <variable>.FrameAddr, D.39677
	movgt	r6, r5	@ MinIndex, j
	cmp	r2, r3	@ tmp259, s32UsingCount
	add	r5, r2, #1	@ j, tmp259,
	blt	.L149	@,
	cmp	r6, r8	@ MinIndex, i.1193
	mov	r7, sl	@ j.1194, j.1194
	beq	.L150	@,
	ldr	r8, [sp, #8]	@, %sfp
	add	lr, r4, r6, asl #3	@, temp.1198, VoUsingFrameArray, MinIndex,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r2, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	str	r8, [sp, #16]	@, TempVoUsingFrameInfo.FrameAddr
	ldr	r0, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r2, [ip, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [lr, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r9, [sp, #16]	@ TempVoUsingFrameInfo.FrameAddr, TempVoUsingFrameInfo.FrameAddr
	str	r0, [sp, #20]	@ <variable>.FrameSize, TempVoUsingFrameInfo.FrameSize
	str	r1, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r9, [r4, r6, asl #3]	@ TempVoUsingFrameInfo.FrameAddr, <variable>.FrameAddr
	ldr	r8, [sp, #20]	@ TempVoUsingFrameInfo.FrameSize, TempVoUsingFrameInfo.FrameSize
	ldr	r9, [fp, #-8]	@ D.39671, <variable>.FrameAddr
	str	r8, [lr, #4]	@ TempVoUsingFrameInfo.FrameSize, <variable>.FrameSize
.L150:
	cmp	r9, #-2147483648	@ D.39671,
	sub	lr, fp, #8	@, ivtmp.1180,
	str	r9, [sp, #8]	@ D.39671, %sfp
	mov	r8, r7	@ i.1193, j.1194
	str	lr, [sp, #4]	@, %sfp
	add	fp, fp, #8	@ ivtmp.1180, ivtmp.1180,
	bne	.L151	@,
.L145:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39635,
.L130:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L134:
	cmp	r3, #63	@ s32UsingCount,
	ble	.L135	@,
	mvn	r0, #0	@ D.39635,
	b	.L130	@
.L142:
	cmp	r3, #63	@ s32UsingCount,
	ble	.L143	@,
	mvn	r0, #0	@ D.39635,
	b	.L130	@
.L139:
	ldr	r1, [sp, #12]	@, %sfp
	mov	r0, #0	@ D.39635,
	str	r3, [r1, #0]	@ s32UsingCount,
	b	.L130	@
	.fnend
	.size	DNR_GetVoUsingFrameInQue, .-DNR_GetVoUsingFrameInQue
	.align	2
	.global	DNR_Fsp_Reset
	.type	DNR_Fsp_Reset, %function
DNR_Fsp_Reset:
	.fnstart
.LFB1943:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L170	@ tmp136,
	mov	r1, #256	@,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:76696	@ tmp142,
	movt	r3, #:upper16:76696	@ tmp142,
	mla	r0, r3, r0, r2	@ tmp140, tmp142, ChanID, tmp136
	add	r0, r0, #712	@, tmp140,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L171:
	.align	2
.L170:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Fsp_Reset, .-DNR_Fsp_Reset
	.align	2
	.global	DNR_Fsp_Init
	.type	DNR_Fsp_Init, %function
DNR_Fsp_Init:
	.fnstart
.LFB1944:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	DNR_Fsp_Reset	@
	mov	r0, #1	@,
	bl	DNR_Fsp_Reset	@
	mov	r0, #2	@,
	bl	DNR_Fsp_Reset	@
	mov	r0, #3	@,
	ldmfd	sp!, {r4, lr}	@
	b	DNR_Fsp_Reset	@
	.fnend
	.size	DNR_Fsp_Init, .-DNR_Fsp_Init
	.align	2
	.global	DNR_EnableChanWithoutArrange
	.type	DNR_EnableChanWithoutArrange, %function
DNR_EnableChanWithoutArrange:
	.fnstart
.LFB1955:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:__stack_chk_guard	@ tmp167,
	movt	r4, #:upper16:__stack_chk_guard	@ tmp167,
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r0, #3	@ ChanID,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	mvngt	r0, #0	@ D.39827,
	str	r3, [sp, #20]	@ __stack_chk_guard, D.40530
	bgt	.L176	@,
	movw	r1, #:lower16:76696	@ tmp141,
	movt	r1, #:upper16:76696	@ tmp141,
	movw	r6, #:lower16:.LANCHOR0	@ tmp138,
	movt	r6, #:upper16:.LANCHOR0	@ tmp138,
	mul	r7, r1, r5	@ tmp140, tmp141, ChanID
	add	r8, r6, #8	@ tmp139, tmp138,
	add	sl, sp, #4	@ tmp144,,
	add	r0, r8, r7	@, tmp139, tmp140
	bl	__memzero	@
	mov	r3, r5	@, ChanID
	mov	r1, #16	@,
	mov	r0, sl	@, tmp144
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	add	r2, r7, #968	@ tmp150, tmp140,
	add	r0, r8, r2	@, tmp139, tmp150
	mov	r1, sl	@, tmp144
	movw	r2, #:lower16:DNR_DelImageProc	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp156,
	mul	r5, r0, r5	@ tmp155, tmp156, ChanID
	mov	r0, #0	@ D.39827,
	mov	r1, #1	@ tmp162,
	add	r6, r6, r5, asl #3	@, tmp160, tmp138, tmp155,
	str	r1, [r6, #16]	@ tmp162, <variable>.s32IsOpen
.L176:
	ldr	ip, [sp, #20]	@ D.40530, D.40530
	ldr	r3, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	ip, r3	@ D.40530, __stack_chk_guard
	bne	.L179	@,
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L179:
	bl	__stack_chk_fail	@
	.fnend
	.size	DNR_EnableChanWithoutArrange, .-DNR_EnableChanWithoutArrange
	.align	2
	.global	DNR_ArrangeMem
	.type	DNR_ArrangeMem, %function
DNR_ArrangeMem:
	.fnstart
.LFB1954:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #444
	sub	sp, sp, #444	@,,
	ble	.L200	@,
.L181:
	mvn	r0, #0	@ D.39780,
.L186:
	add	sp, sp, #444	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L200:
	cmp	r1, #0	@ pChanMem,
	beq	.L181	@,
	ldr	r0, [r1, #0]	@ D.39785, <variable>.PhyAddr
	cmp	r0, #0	@ D.39785,
	beq	.L181	@,
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L181	@,
	ldr	r1, [r1, #8]	@ D.39789, <variable>.Length
	cmp	r1, #0	@ D.39789,
	ble	.L181	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	ip, [ip, #36]	@ D.39793, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39793,
	beq	.L182	@,
	mov	lr, #0	@ tmp161,
	mvn	r5, #0	@ tmp164,
	str	lr, [sp, #8]	@ tmp161,
	str	lr, [sp, #0]	@ tmp161,
	add	lr, lr, #64	@ tmp162, tmp162,
	str	r5, [sp, #12]	@ tmp164,
	add	r5, sp, #24	@ tmp165,,
	str	lr, [sp, #20]	@ tmp162,
	str	lr, [sp, #4]	@ tmp162,
	str	r5, [sp, #16]	@ tmp165,
	blx	ip	@ D.39793
	cmp	r0, #0	@ D.39795
	bne	.L182	@,
	movw	r7, #:lower16:76696	@ tmp170,
	movt	r7, #:upper16:76696	@ tmp170,
	movw	r3, #:lower16:.LANCHOR0	@ tmp205,
	movt	r3, #:upper16:.LANCHOR0	@ tmp205,
	mul	lr, r7, r4	@ tmp169, tmp170, ChanID
	ldr	r6, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mov	sl, r5	@ ivtmp.1321, tmp165
	mov	r7, r0	@ i, D.39795
	cmp	r6, #64	@ MemArrange.ValidFrameNum,
	movge	r6, #64	@ tmp180,
	add	r4, r3, #8	@ tmp168, tmp205,
	add	ip, lr, r3	@ tmp177, tmp169, tmp205
	add	r5, lr, #26368	@ tmp171, tmp169,
	add	r0, ip, #456	@ tmp178, tmp177,
	add	r8, r5, #64	@ tmp171, tmp171,
	str	r6, [ip, #456]	@ tmp180, <variable>.s32ValidImgNum
	add	r5, r4, lr	@ ivtmp.1325, tmp168, tmp169
	ldr	r1, [sp, #32]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, r8	@ pLogicImage, tmp168, tmp171
	ldr	r2, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r8, r0	@ tmp209, tmp178
	rsb	r3, r1, r2	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r0, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
.L185:
	ldr	r2, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r6, r5, #4	@ tmp212, ivtmp.1325,
	cmp	r7, r2	@ i, <variable>.s32ValidImgNum
	add	r7, r7, #1	@ tmp210, i,
	ldrlt	r2, [sl, #8]	@ D.39807, MemArrange.FrameAddr
	add	sl, sl, #4	@ tmp211, ivtmp.1321,
	ldrge	r2, [sp, #32]	@ temp.1333, MemArrange.FrameAddr
	str	r2, [r5, #456]	@ temp.1333, <variable>.s32ImageAddr
	mov	r0, r2	@, temp.1333
	str	r2, [r4, #120]	@ temp.1333, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r7, #64	@ tmp210,
	str	r1, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	beq	.L182	@,
	ldr	r3, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r4, r4, #392	@ tmp213, pLogicImage,
	cmp	r7, r3	@ tmp210, <variable>.s32ValidImgNum
	ldrge	r3, [sp, #32]	@ temp.1333, MemArrange.FrameAddr
	ldrlt	r3, [sl, #8]	@ D.39807, MemArrange.FrameAddr
.L198:
	str	r3, [r6, #456]	@ D.39807, <variable>.s32ImageAddr
	mov	r0, r3	@, D.39807
	str	r3, [r4, #120]	@ D.39807, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r5, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	add	r3, sl, #4	@ ivtmp.1321, tmp211,
	add	r2, r6, #4	@ ivtmp.1325, tmp212,
	add	sl, sl, #8	@ ivtmp.1321, tmp211,
	str	r5, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	add	r5, r4, #392	@ pLogicImage, tmp213,
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	add	r0, r7, #1	@ i, tmp210,
	ldr	r1, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #2	@ i, tmp210,
	add	r4, r4, #784	@ pLogicImage, tmp213,
	cmp	r0, r1	@ i, <variable>.s32ValidImgNum
	ldrge	r3, [sp, #32]	@ temp.1333, MemArrange.FrameAddr
	ldrlt	r3, [r3, #8]	@ D.39807, MemArrange.FrameAddr
	str	r3, [r2, #456]	@ D.39807, <variable>.s32ImageAddr
	mov	r0, r3	@, D.39807
	str	r3, [r5, #120]	@ D.39807, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r5, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	ip, [r5, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r5, #48]	@, <variable>.luma_2d_vir_addr
	add	r5, r6, #8	@ ivtmp.1325, tmp212,
	b	.L185	@
.L182:
	mov	r0, #0	@ D.39780,
	b	.L186	@
	.fnend
	.size	DNR_ArrangeMem, .-DNR_ArrangeMem
	.align	2
	.global	CalcFrameCheckSum
	.type	CalcFrameCheckSum, %function
CalcFrameCheckSum:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ p_image, p_image
	ldr	r4, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r0, [r0, #88]	@, <variable>.top_luma_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r4, r4, lsr #3	@ ivtmp.1376, <variable>.image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L202	@,
	ldr	r7, [r5, #148]	@ temp.1380, <variable>.image_height
	cmp	r7, #0	@ temp.1380,
	beq	.L202	@,
	ldr	r8, [r5, #172]	@ pretmp.1355, <variable>.image_stride
	mov	r6, r4	@ D.40638, ivtmp.1376
	ldr	r5, [r5, #144]	@ pretmp.1379, <variable>.image_width
	mov	r0, #0	@ CheckSum,
	bic	r8, r8, #3	@ pretmp.1381, pretmp.1355,
.L205:
	cmp	r5, #0	@ pretmp.1379,
	add	r1, r1, r8	@ p32, p32, pretmp.1381
	beq	.L203	@,
	mov	r3, #1	@ x,
	ldr	r2, [r1, #0]	@ tmp150,* p32
	cmp	r5, r3	@ pretmp.1379, x
	sub	ip, r5, #1	@ tmp154, pretmp.1379,
	and	ip, ip, r3	@ tmp156, tmp154,
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L203	@,
	cmp	ip, #0	@ tmp156,
	beq	.L204	@,
	mov	r3, #2	@ x,
	cmp	r5, r3	@ pretmp.1379, x
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L203	@,
.L204:
	add	lr, r3, #1	@ tmp157, x,
	mov	ip, r3, asr #2	@ tmp159, x,
	add	r3, lr, #1	@ x, tmp157,
	mov	r2, lr, asr #2	@ tmp163, tmp157,
	ldr	lr, [r1, ip, asl #2]	@ tmp160,* p32
	cmp	r5, r3	@ pretmp.1379, x
	ldr	r2, [r1, r2, asl #2]	@ tmp164,* p32
	add	r0, r0, lr	@ CheckSum, CheckSum, tmp160
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp164
	bhi	.L204	@,
.L203:
	add	r4, r4, r6	@ ivtmp.1376, ivtmp.1376, D.40638
	rsb	r3, r6, r4	@ tmp151, D.40638, ivtmp.1376
	cmp	r7, r3	@ temp.1380, tmp151
	bhi	.L205	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L202:
	mov	r0, #0	@ CheckSum,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	CalcFrameCheckSum, .-CalcFrameCheckSum
	.align	2
	.global	DNR_EnableChan
	.type	DNR_EnableChan, %function
DNR_EnableChan:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 448
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:__stack_chk_guard	@ tmp234,
	movt	r4, #:upper16:__stack_chk_guard	@ tmp234,
	mov	r5, r0	@ ChanID, ChanID
	cmp	r0, #3	@ ChanID,
	.pad #476
	sub	sp, sp, #476	@,,
	ldr	r0, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	mov	r6, r1	@ pChanMem, pChanMem
	str	r0, [sp, #468]	@ __stack_chk_guard, D.40711
	ble	.L225	@,
.L216:
	mvn	r0, #0	@ D.38043,
.L222:
	ldr	r2, [sp, #468]	@ D.40711, D.40711
	ldr	r1, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r1	@ D.40711, __stack_chk_guard
	bne	.L226	@,
	add	sp, sp, #476	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L225:
	movw	r1, #:lower16:76696	@ tmp156,
	movt	r1, #:upper16:76696	@ tmp156,
	movw	r7, #:lower16:.LANCHOR0	@ tmp233,
	movt	r7, #:upper16:.LANCHOR0	@ tmp233,
	mul	r8, r1, r5	@ tmp155, tmp156, ChanID
	add	sl, r7, #8	@ tmp236, tmp233,
	str	r2, [sp, #28]	@,
	str	r3, [sp, #24]	@,
	add	r9, sl, r8	@ tmp157, tmp236, tmp155
	mov	r0, r9	@, tmp157
	bl	__memzero	@
	cmp	r6, #0	@ pChanMem,
	ldr	r2, [sp, #28]	@,
	ldr	r3, [sp, #24]	@,
	beq	.L216	@,
	ldr	r0, [r6, #0]	@ D.38055, <variable>.PhyAddr
	cmp	r0, #0	@ D.38055,
	beq	.L216	@,
	ldr	r1, [r6, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L216	@,
	ldr	r1, [r6, #8]	@ D.38059, <variable>.Length
	cmp	r1, #0	@ D.38059,
	ble	.L216	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	fp, [ip, #36]	@ D.38063, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	fp, #0	@ D.38063,
	beq	.L217	@,
	mov	r6, #0	@ tmp161,
	mvn	lr, #0	@ tmp164,
	add	ip, r6, #64	@ tmp162, tmp162,
	str	r6, [sp, #8]	@ tmp161,
	str	r6, [sp, #0]	@ tmp161,
	add	r6, sp, #36	@ tmp165,,
	str	ip, [sp, #20]	@ tmp162,
	str	lr, [sp, #12]	@ tmp164,
	str	ip, [sp, #4]	@ tmp162,
	str	r6, [sp, #16]	@ tmp165,
	blx	fp	@ D.38063
	cmp	r0, #0	@ D.38065
	bne	.L217	@,
	add	r2, r8, r7	@ tmp177, tmp155, tmp233
	ldr	lr, [sp, #312]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r1, r2, #456	@ tmp178, tmp177,
	add	r3, r8, #26368	@ tmp171, tmp155,
	cmp	lr, #64	@ MemArrange.ValidFrameNum,
	movge	lr, #64	@ tmp180,
	str	lr, [r2, #456]	@ tmp180, <variable>.s32ValidImgNum
	ldr	ip, [sp, #44]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	fp, r0	@ i, D.38065
	ldr	r0, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, r3, #64	@ tmp171, tmp171,
	add	r8, sl, r8	@ pLogicImage, tmp236, tmp171
	mov	r3, r1	@ tmp240, tmp178
	rsb	r2, ip, r0	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r2, [r1, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
	b	.L221	@
.L227:
	ldr	lr, [r6, #8]	@ D.38077, MemArrange.FrameAddr
	str	lr, [r9, #456]	@ D.38077, <variable>.s32ImageAddr
	mov	r0, lr	@, D.38077
	str	lr, [r8, #120]	@ D.38077, <variable>.luma_2d_phy_addr
	str	r3, [sp, #24]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r8, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r8, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r8, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [sp, #24]	@,
	ldr	ip, [r3, #4]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	ip, [r8, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
.L219:
	add	fp, fp, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1430, ivtmp.1430,
	cmp	fp, #64	@ i,
	add	r9, r9, #4	@ ivtmp.1434, ivtmp.1434,
	beq	.L220	@,
	add	r8, r8, #392	@ pLogicImage, pLogicImage,
.L221:
	ldr	r1, [r3, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r1, fp	@ <variable>.s32ValidImgNum, i
	bgt	.L227	@,
	ldr	r1, [sp, #44]	@ temp.1445, MemArrange.FrameAddr
	str	r1, [r9, #456]	@ temp.1445, <variable>.s32ImageAddr
	mov	r0, r1	@, temp.1445
	str	r1, [r8, #120]	@ temp.1445, <variable>.luma_2d_phy_addr
	str	r3, [sp, #24]	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [r8, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r3, [r8, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r8, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [sp, #24]	@,
	b	.L219	@
.L226:
	bl	__stack_chk_fail	@
.L217:
	mov	r0, #0	@ D.38043,
	b	.L222	@
.L220:
	add	r6, sp, #452	@ tmp210,,
	mov	r3, r5	@, ChanID
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC0	@,
	mov	r0, r6	@, tmp210
	movt	r2, #:upper16:.LC0	@,
	bl	snprintf	@
	movw	ip, #:lower16:76696	@ tmp215,
	movt	ip, #:upper16:76696	@ tmp215,
	mov	r1, r6	@, tmp210
	movw	r2, #:lower16:DNR_DelImageProc	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	mla	r3, ip, r5, sl	@ tmp217, tmp215, ChanID, tmp236
	add	r0, r3, #968	@, tmp217,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp222,
	mul	r5, r0, r5	@ tmp221, tmp222, ChanID
	mov	ip, #1	@ tmp228,
	mov	r0, #0	@ D.38043,
	add	r7, r7, r5, asl #3	@, tmp226, tmp233, tmp221,
	str	ip, [r7, #16]	@ tmp228, <variable>.s32IsOpen
	b	.L222	@
	.fnend
	.size	DNR_EnableChan, .-DNR_EnableChan
	.align	2
	.global	DNR_ReleaseImage
	.type	DNR_ReleaseImage, %function
DNR_ReleaseImage:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #3	@ ChanID,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, #0	@ tmp155,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ p_image, p_image
	str	r3, [sp, #0]	@ tmp155, BtmPhyAddr
	str	r3, [sp, #4]	@ tmp155, TopPhyAddr
	bhi	.L252	@,
	cmp	r1, #0	@ p_image,
	beq	.L252	@,
	ldr	r1, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	cmp	r1, #0	@ <variable>.top_luma_phy_addr,
	beq	.L232	@,
	movw	lr, #9587	@ tmp160,
	movw	r6, #:lower16:.LANCHOR0	@ tmp417,
	mul	ip, lr, r0	@ tmp159, tmp160, ChanID
	movt	r6, #:upper16:.LANCHOR0	@ tmp417,
	add	r8, r6, ip, asl #3	@, tmp164, tmp417, tmp159,
	ldr	r2, [r8, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L252	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ tmp167, eVidStd,
	cmp	r3, #2	@ tmp167,
	bls	.L253	@,
.L234:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L235	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L235	@,
	ldr	r1, [r5, #176]	@ prephitmp.1470, <variable>.image_id
	movw	ip, #:lower16:1374389535	@ tmp179,
	movt	ip, #:upper16:1374389535	@ tmp179,
	mov	r0, #100	@ tmp181,
	umull	r3, r8, ip, r1	@, tmp178, tmp179, prephitmp.1470
	mov	r7, r8, lsr #5	@ D.39538, tmp178,
	mls	r7, r0, r7, r1	@ D.39538, tmp181, D.39538, prephitmp.1470
	cmp	r7, #63	@ D.39538,
	bgt	.L254	@,
.L237:
	ldr	r8, .L257	@ tmp183,
	movw	r0, #:lower16:76696	@ tmp185,
	movt	r0, #:upper16:76696	@ tmp185,
	add	r2, sp, #4	@,,
	mov	r3, sp	@,
	mla	lr, r0, r4, r8	@ tmp187, tmp185, ChanID, tmp183
	add	r0, lr, #968	@, tmp187,
	bl	IMGQUE_DeleteImage	@
	mov	r8, r0	@ ret.1485,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L255	@,
.L238:
	movw	ip, #:lower16:76696	@ tmp207,
	movt	ip, #:upper16:76696	@ tmp207,
	cmp	r8, #1	@ ret.1485,
	mla	r2, ip, r4, r6	@ tmp208, tmp207, ChanID, tmp417
	moveq	r8, #0	@, ret,
	mvnne	r8, #0	@, ret,
	add	r0, r2, #75776	@ tmp209, tmp208,
	add	r3, r0, #904	@ tmp209, tmp209,
	ldr	lr, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L256	@,
.L241:
	movw	ip, #:lower16:76696	@ tmp232,
	movt	ip, #:upper16:76696	@ tmp232,
	mov	r3, #392	@ tmp230,
	movw	r0, #26560	@ tmp228,
	mul	r2, ip, r4	@ tmp231, tmp232, ChanID
	ldr	lr, [r5, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	mla	sl, r3, r7, r2	@ tmp233, tmp230, D.39538, tmp231
	movw	r3, #:lower16:.LANCHOR0	@ tmp227,
	movt	r3, #:upper16:.LANCHOR0	@ tmp227,
	add	sl, sl, r6	@ tmp234, tmp233, tmp417
	ldr	r1, [sl, r0]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r1, lr	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	bne	.L243	@,
	movw	fp, #19174	@ tmp240,
	movw	r9, #26632	@ tmp249,
	mla	r0, fp, r4, r7	@ tmp241, tmp240, ChanID, D.39538
	mov	fp, #0	@ tmp247,
	add	lr, r0, #178	@ tmp242, tmp241,
	add	r1, r3, lr, asl #2	@, tmp245, tmp227, tmp242,
	str	fp, [r1, #8]	@ tmp247, <variable>.LogicImageIsUsed
	ldr	r1, [sl, r9]	@ D.39578, <variable>.p_usrdat
	cmp	r1, fp	@ D.39578,
	beq	.L244	@,
	movw	r3, #:lower16:pstVdecUsdPool	@ tmp257,
	movt	r3, #:upper16:pstVdecUsdPool	@ tmp257,
	ldr	r2, [r3, r4, asl #2]	@ tmp258, pstVdecUsdPool
	cmp	r2, fp	@ tmp258,
	beq	.L244	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp259,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp259,
	ldr	r2, [ip, r4, asl #2]	@ temp.1492, s_pstVfmwChan
	cmp	r2, fp	@ temp.1492,
	beq	.L244	@,
	movw	r3, #:lower16:217508	@ tmp269,
	movt	r3, #:upper16:217508	@ tmp269,
	ldr	r0, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	movw	r2, #26824	@ tmp261,
	ldr	lr, [sl, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	lr, r0	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L244	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	fp, [sl, r9]	@ tmp247, <variable>.p_usrdat
.L244:
	movw	lr, #:lower16:76696	@ tmp287,
	movt	lr, #:upper16:76696	@ tmp287,
	mov	r1, #392	@ tmp285,
	movw	r9, #26636	@ tmp283,
	mul	ip, lr, r4	@ tmp286, tmp287, ChanID
	mla	sl, r1, r7, ip	@ tmp288, tmp285, D.39538, tmp286
	add	sl, sl, r6	@ tmp289, tmp288, tmp417
	ldr	r1, [sl, r9]	@ temp.1494, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1494,
	beq	.L245	@,
	movw	r2, #:lower16:pstVdecUsdPool	@ tmp291,
	movt	r2, #:upper16:pstVdecUsdPool	@ tmp291,
	ldr	r0, [r2, r4, asl #2]	@ tmp292, pstVdecUsdPool
	cmp	r0, #0	@ tmp292,
	beq	.L245	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp293,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp293,
	ldr	r2, [r3, r4, asl #2]	@ temp.1496, s_pstVfmwChan
	cmp	r2, #0	@ temp.1496,
	beq	.L245	@,
	movw	r3, #:lower16:217508	@ tmp303,
	movt	r3, #:upper16:217508	@ tmp303,
	movw	r0, #26824	@ tmp295,
	ldr	lr, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	ip, [sl, r0]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, lr	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L245	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp315,
	str	r1, [sl, r9]	@ tmp315, <variable>.p_usrdat
.L245:
	movw	lr, #:lower16:76696	@ tmp321,
	movt	lr, #:upper16:76696	@ tmp321,
	mov	r2, #392	@ tmp319,
	movw	r9, #26640	@ tmp317,
	mul	ip, lr, r4	@ tmp320, tmp321, ChanID
	mla	sl, r2, r7, ip	@ tmp322, tmp319, D.39538, tmp320
	add	sl, sl, r6	@ tmp323, tmp322, tmp417
	ldr	r1, [sl, r9]	@ temp.1499, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1499,
	beq	.L246	@,
	movw	r3, #:lower16:pstVdecUsdPool	@ tmp325,
	movt	r3, #:upper16:pstVdecUsdPool	@ tmp325,
	ldr	r0, [r3, r4, asl #2]	@ tmp326, pstVdecUsdPool
	cmp	r0, #0	@ tmp326,
	beq	.L246	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp327,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp327,
	ldr	r2, [ip, r4, asl #2]	@ temp.1501, s_pstVfmwChan
	cmp	r2, #0	@ temp.1501,
	beq	.L246	@,
	movw	r3, #:lower16:217508	@ tmp337,
	movt	r3, #:upper16:217508	@ tmp337,
	movw	r0, #26824	@ tmp329,
	ldr	lr, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r2, [sl, r0]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r2, lr	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L246	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp349,
	str	r1, [sl, r9]	@ tmp349, <variable>.p_usrdat
.L246:
	movw	lr, #:lower16:76696	@ tmp355,
	movt	lr, #:upper16:76696	@ tmp355,
	mov	ip, #392	@ tmp353,
	movw	sl, #26644	@ tmp351,
	mul	r2, lr, r4	@ tmp354, tmp355, ChanID
	mla	r7, ip, r7, r2	@ tmp356, tmp353, D.39538, tmp354
	add	r7, r7, r6	@ tmp357, tmp356, tmp417
	ldr	r1, [r7, sl]	@ temp.1488, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1488,
	beq	.L251	@,
	movw	r3, #:lower16:pstVdecUsdPool	@ tmp359,
	movt	r3, #:upper16:pstVdecUsdPool	@ tmp359,
	ldr	r0, [r3, r4, asl #2]	@ tmp360, pstVdecUsdPool
	cmp	r0, #0	@ tmp360,
	beq	.L251	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp361,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp361,
	ldr	r2, [ip, r4, asl #2]	@ D.39584, s_pstVfmwChan
	cmp	r2, #0	@ D.39584,
	beq	.L251	@,
	movw	r3, #:lower16:217508	@ tmp371,
	movt	r3, #:upper16:217508	@ tmp371,
	movw	r0, #26824	@ tmp363,
	ldr	lr, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r2, [r7, r0]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r2, lr	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L251	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp383,
	str	r1, [r7, sl]	@ tmp383, <variable>.p_usrdat
.L251:
	rsbs	r2, r8, #1	@ prephitmp.1472, ret
	movcc	r2, #0	@ prephitmp.1472
.L248:
	movw	r3, #:lower16:76696	@ tmp405,
	movt	r3, #:upper16:76696	@ tmp405,
	mla	r0, r3, r4, r6	@ tmp406, tmp405, ChanID, tmp417
	add	r6, r0, #75776	@ tmp407, tmp406,
	add	r6, r6, #904	@ tmp407, tmp407,
	ldr	lr, [r6, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	ip, #0	@, tmp413
	andeq	ip, r2, #1	@,, tmp413, prephitmp.1472
	cmp	ip, #0	@ tmp413,
	beq	.L230	@,
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, p_image
	bl	VCTRL_RlsDSDFrame	@
	mov	r8, r0	@ ret,
	b	.L230	@
.L253:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp168,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp168,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	bne	.L234	@,
.L235:
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, p_image
	bl	VCTRL_ReleaseChanImage	@
	subs	r8, r0, #0	@ D.39534,
	bne	.L232	@,
.L230:
	mov	r0, r8	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L232:
	mvn	r8, #0	@ ret,
	b	.L230	@
.L252:
	bl	vfmw_dprint_nothing	@
	mvn	r8, #0	@ ret,
	b	.L230	@
.L243:
	bl	vfmw_dprint_nothing	@
	b	.L251	@
.L254:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #176]	@ prephitmp.1470, <variable>.image_id
	b	.L237	@
.L255:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp190,
	movt	r3, #:upper16:.LANCHOR1	@ tmp190,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp197,
	add	r2, r3, r4, asl #2	@, tmp193, tmp190, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp197,
	ldr	ip, [r2, #3984]	@ tmp196, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp195, tmp196, currtime
	cmp	r1, r3	@ tmp195, g_TraceImgPeriod
	strhi	r0, [r2, #3984]	@ currtime, last_rec_pos_time
	b	.L238	@
.L256:
	ldr	r3, [r3, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r1, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	bhi	.L242	@,
	add	ip, r2, #75776	@ tmp224, tmp208,
	ldr	lr, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	add	r2, ip, #912	@ tmp224, tmp224,
	ldr	r0, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	lr, r0	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	bls	.L241	@,
.L242:
	ldr	r7, [r5, #176]	@ D.39537, <variable>.image_id
	mov	r0, r4	@, ChanID
	ldr	r2, [r5, #380]	@ <variable>.resetNum, <variable>.resetNum
	mov	r1, r5	@, p_image
	add	ip, r7, r2	@ tmp388, D.39537, <variable>.resetNum
	sub	r8, ip, #6	@ tmp390, tmp388,
	str	r8, [r5, #176]	@ tmp390, <variable>.image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r8, r0, #0	@ ret,
	strne	r7, [r5, #176]	@ D.39537, <variable>.image_id
	mvnne	r8, #0	@ ret,
	bne	.L230	@,
	ldr	r3, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r1, #19174	@ tmp393,
	mov	r2, #1	@ prephitmp.1472,
	mla	r0, r1, r4, r3	@ tmp394, tmp393, ChanID, <variable>.image_id
	add	lr, r6, r0, asl #2	@, tmp399, tmp417, tmp394,
	str	r8, [lr, #744]	@ ret, <variable>.LogicImageIsUsed
	str	r7, [r5, #176]	@ D.39537, <variable>.image_id
	b	.L248	@
.L258:
	.align	2
.L257:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_ReleaseImage, .-DNR_ReleaseImage
	.align	2
	.global	DNR_ReceiveImage
	.type	DNR_ReceiveImage, %function
DNR_ReceiveImage:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ ChanID, ChanID
	mov	r5, r1	@ p_image, p_image
	bhi	.L275	@,
	cmp	r1, #0	@ p_image,
	beq	.L275	@,
	movw	ip, #9587	@ tmp148,
	movw	r7, #:lower16:.LANCHOR0	@ tmp238,
	mul	r2, ip, r0	@ tmp147, tmp148, ChanID
	movt	r7, #:upper16:.LANCHOR0	@ tmp238,
	add	r1, r7, r2, asl #3	@, tmp152, tmp238, tmp147,
	ldr	r3, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #0	@ <variable>.s32IsOpen,
	beq	.L275	@,
	bl	VCTRL_GetVidStd	@
	mov	r4, r0	@ eVidStd,
	sub	r0, r0, #10	@ tmp155, eVidStd,
	cmp	r0, #2	@ tmp155,
	bls	.L276	@,
.L264:
	cmp	r4, #4	@ eVidStd,
	cmpne	r4, #14	@, eVidStd,
	beq	.L265	@,
	cmp	r4, #18	@ eVidStd,
	beq	.L265	@,
	ldr	lr, .L279	@ tmp171,
	movw	r0, #:lower16:76696	@ tmp173,
	movt	r0, #:upper16:76696	@ tmp173,
	mov	r1, r5	@, p_image
	mla	r4, r0, r6, lr	@ tmp175, tmp173, ChanID, tmp171
	add	r0, r4, #968	@, tmp175,
	bl	IMGQUE_GetImage	@
	mov	r4, r0	@ ret.1528,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L277	@,
.L269:
	cmp	r4, #1	@ ret.1528,
	beq	.L278	@,
.L267:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L276:
	movw	r3, #:lower16:g_VdmCharacter	@ tmp156,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp156,
	ldr	lr, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L264	@,
.L265:
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.39450
	bne	.L267	@,
	cmp	r4, #18	@ eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r5, #120]	@ D.39455, <variable>.luma_2d_phy_addr
	ldr	lr, [r5, #124]	@ D.39457, <variable>.chrom_2d_phy_addr
	ldr	r1, [r5, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r3, [r5, #88]	@ D.39455, <variable>.top_luma_phy_addr
	add	ip, r1, lr	@ tmp169, <variable>.image_stride, D.39457
	add	r2, r1, r3	@ tmp167, <variable>.image_stride, D.39455
	str	ip, [r5, #100]	@ tmp169, <variable>.btm_chrom_phy_addr
	str	r2, [r5, #96]	@ tmp167, <variable>.btm_luma_phy_addr
	str	lr, [r5, #92]	@ D.39457, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L278:
	movw	r8, #19174	@ tmp192,
	ldr	r2, [r5, #176]	@ D.39482, <variable>.image_id
	mul	r8, r8, r6	@ tmp191, tmp192, ChanID
	movw	r4, #:lower16:.LANCHOR0	@ tmp190,
	movt	r4, #:upper16:.LANCHOR0	@ tmp190,
	add	lr, r8, r2	@ tmp193, tmp191, D.39482
	add	r0, lr, #178	@ tmp194, tmp193,
	add	r7, r7, r0, asl #2	@, tmp197, tmp238, tmp194,
	ldr	r2, [r7, #8]	@ D.39483, <variable>.LogicImageIsUsed
	cmp	r2, #3	@ D.39483,
	beq	.L275	@,
	movw	lr, #:lower16:76696	@ tmp202,
	movt	lr, #:upper16:76696	@ tmp202,
	mla	r0, lr, r6, r4	@ tmp203, tmp202, ChanID, tmp190
	add	r3, r0, #75776	@ tmp204, tmp203,
	add	r1, r3, #904	@ tmp204, tmp204,
	ldr	ip, [r1, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L271	@,
	cmp	r2, #2	@ D.39483,
	beq	.L271	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, ChanID
	mov	r1, r5	@, p_image
	bl	DNR_ReleaseImage	@
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #0	@ tmp216,
	mvn	r0, #0	@ ret,
	add	r8, r8, ip	@ tmp209, tmp191, <variable>.image_id
	add	r8, r8, #178	@ tmp211, tmp209,
	add	r4, r4, r8, asl #2	@, tmp214, tmp190, tmp211,
	str	r2, [r4, #8]	@ tmp216, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L277:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp176,
	movt	r3, #:upper16:.LANCHOR1	@ tmp176,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp183,
	add	r2, r3, r6, asl #2	@, tmp179, tmp176, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp183,
	ldr	ip, [r2, #4000]	@ tmp182, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp181, tmp182, currtime
	cmp	r1, r3	@ tmp181, g_TraceImgPeriod
	strhi	r0, [r2, #4000]	@ currtime, last_rec_pos_time
	b	.L269	@
.L271:
	mov	r1, #3	@ tmp236,
	mov	r0, #0	@ ret,
	str	r1, [r7, #8]	@ tmp236, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L275:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L280:
	.align	2
.L279:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_PushTempImageToVOQ
	.type	DNR_PushTempImageToVOQ, %function
DNR_PushTempImageToVOQ:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	movw	r3, #:lower16:76696	@ tmp148,
	movt	r3, #:upper16:76696	@ tmp148,
	str	r0, [sp, #8]	@ InstId, %sfp
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #8]	@, %sfp
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #20]	@, %sfp
	mul	r3, r3, r1	@ tmp147, tmp148,
	add	r0, r3, r0	@ tmp149, tmp147,
	add	r5, r0, #51456	@ tmp150, tmp149,
	add	r5, r5, #72	@ tmp150, tmp150,
	ldr	r2, [r5, #4]	@ prephitmp.1546, <variable>.TempImageNum
	cmp	r2, #0	@ prephitmp.1546,
	ble	.L307	@,
	sub	r4, r2, #1	@ i, prephitmp.1546,
	mov	r6, #392	@ tmp161,
	movw	r1, #51760	@ tmp159,
	mla	r3, r6, r4, r3	@ tmp164, tmp161, i, tmp147
	ldr	r6, [sp, #20]	@, %sfp
	add	ip, r3, r6	@ tmp165, tmp164,
	ldr	r3, [ip, r1]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r3, #1	@ <variable>.last_frame,
	moveq	r2, #0	@ tmp177,
	streq	r2, [ip, r1]	@ tmp177, <variable>.last_frame
	streq	r3, [r0, r1]	@ <variable>.last_frame, <variable>.last_frame
	ldreq	r2, [r5, #4]	@ prephitmp.1546, <variable>.TempImageNum
	subeq	r4, r2, #1	@ i, prephitmp.1546,
	cmp	r4, #0	@ i,
	blt	.L285	@,
	ldr	ip, [sp, #8]	@, %sfp
	movw	r8, #:lower16:76696	@ tmp194,
	movt	r8, #:upper16:76696	@ tmp194,
	mov	r1, #392	@ tmp199,
	ldr	r7, .L310	@ tmp250,
	mov	sl, r1	@ tmp253, tmp199
	mul	r8, r8, ip	@ tmp193, tmp194,
	movw	fp, #19174	@ tmp256,
	mla	r3, r1, r4, r8	@ tmp211, tmp253, i, tmp255
	movw	lr, #:lower16:g_event_report	@,
	mla	r6, r1, r2, r8	@ tmp202, tmp199, prephitmp.1546, tmp193
	add	r9, r8, #968	@ tmp195, tmp193,
	add	r1, r3, #51456	@ tmp212, tmp211,
	add	r9, r7, r9	@ D.38290, tmp250, tmp195
	add	r2, r1, #72	@ tmp212, tmp212,
	movt	lr, #:upper16:g_event_report	@,
	add	r0, r6, #51456	@ tmp203, tmp202,
	add	r6, r7, r2	@ pTemp, tmp250, tmp212
	add	r5, r0, #72	@ tmp203, tmp203,
	mov	r0, r9	@, D.38290
	mov	r1, r6	@, pTemp
	str	lr, [sp, #12]	@, %sfp
	mul	fp, fp, ip	@ tmp257, tmp256,
	and	lr, r4, #1	@, i,
	str	lr, [sp, #16]	@, %sfp
	bl	IMGQUE_InsertImage	@
	add	r5, r7, r5	@ ivtmp.1564, tmp250, tmp203
	cmp	r0, #1	@,
	beq	.L308	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	add	ip, fp, r3	@ tmp292, tmp257, <variable>.image_id
	add	r6, r2, ip, asl #2	@, tmp295,, tmp292,
	add	lr, r6, #720	@ tmp296, tmp295,
	mov	r6, #0	@,
	str	r6, [lr, #0]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
.L292:
	subs	r4, r4, #1	@ i, i,
	sub	r5, r5, #392	@ ivtmp.1564, ivtmp.1564,
	bmi	.L285	@,
	ldr	r6, [sp, #16]	@, %sfp
	cmp	r6, #0	@,
	beq	.L288	@,
	mla	lr, sl, r4, r8	@ tmp316, tmp253, i, tmp255
	mov	r0, r9	@, D.38290
	add	r1, lr, #51456	@ tmp318, tmp316,
	add	ip, r1, #72	@ tmp318, tmp318,
	add	r6, r7, ip	@ pTemp, tmp250, tmp318
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L304	@,
	ldr	r6, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #0	@,
	sub	r5, r5, #392	@ ivtmp.1564, ivtmp.1564,
	add	ip, fp, r6	@ tmp324, tmp257, <variable>.image_id
	movw	r6, #:lower16:.LANCHOR0	@,
	movt	r6, #:upper16:.LANCHOR0	@,
	add	r3, r6, ip, asl #2	@, tmp327,, tmp324,
	add	r2, r3, #720	@ tmp328, tmp327,
	str	r0, [r2, #0]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	subs	r4, r4, #1	@ i, tmp264,
	bpl	.L288	@,
.L285:
	ldr	r0, [sp, #8]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp242,
	ldr	r1, [sp, #20]	@, %sfp
	movt	r3, #:upper16:76696	@ tmp242,
	mov	ip, #0	@ tmp245,
	mla	r2, r3, r0, r1	@ tmp243, tmp242,,
	mov	r0, ip	@ D.38280, tmp245
	add	r1, r2, #51456	@ tmp244, tmp243,
	add	r3, r1, #72	@ tmp244, tmp244,
	str	ip, [r3, #4]	@ tmp245, <variable>.TempImageNum
.L283:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L309:
	ldr	r1, [sp, #12]	@, %sfp
	add	r2, sp, #28	@,,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [sp, #8]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report.528, g_event_report
	add	lr, fp, r3	@ tmp217, tmp257, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	add	lr, r3, lr, asl #2	@, tmp222,, tmp217,
	cmp	ip, #0	@ g_event_report.528,
	mov	r3, #2	@ tmp224,
	mov	r1, #5	@,
	str	r3, [lr, #720]	@ tmp224, <variable>.LogicImageIsUsed
	beq	.L287	@,
	str	r6, [sp, #28]	@ pTemp, para
	blx	ip	@ g_event_report.528
.L287:
	sub	r4, r4, #1	@ tmp264, i,
	mov	r0, r9	@, D.38290
	sub	r5, r5, #392	@ ivtmp.1564, ivtmp.1564,
	mla	r2, sl, r4, r8	@ tmp284, tmp253, tmp264, tmp255
	add	r6, r2, #51456	@ tmp286, tmp284,
	add	r1, r6, #72	@ tmp286, tmp286,
	add	r6, r7, r1	@ pTemp, tmp250, tmp286
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L298	@,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r1, #5	@,
	ldr	ip, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	add	r2, sp, #28	@,,
	ldr	r0, [sp, #8]	@, %sfp
	ldr	lr, [r3, #0]	@, g_event_report
	add	ip, fp, ip	@, tmp257, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	cmp	lr, #0	@,
	str	lr, [sp, #4]	@, %sfp
	add	lr, r3, ip, asl #2	@,,,,
	mov	r3, #2	@,
	str	lr, [sp, #16]	@, %sfp
	str	r3, [lr, #720]	@, <variable>.LogicImageIsUsed
	beq	.L299	@,
	str	r6, [sp, #28]	@ pTemp, para
	ldr	r6, [sp, #4]	@, %sfp
	blx	r6	@
.L299:
	subs	r4, r4, #1	@ i, tmp264,
	sub	r5, r5, #392	@ ivtmp.1564, ivtmp.1564,
	bmi	.L285	@,
.L288:
	mla	ip, sl, r4, r8	@ tmp271, tmp253, i, tmp255
	mov	r0, r9	@, D.38290
	add	r3, ip, #51456	@ tmp273, tmp271,
	add	r2, r3, #72	@ tmp273, tmp273,
	add	r6, r7, r2	@ pTemp, tmp250, tmp273
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L309	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r6, #0	@,
	add	lr, fp, r3	@ tmp230, tmp257, <variable>.image_id
	add	r2, lr, #178	@ tmp232, tmp230,
	add	r0, ip, r2, asl #2	@, tmp235,, tmp232,
	str	r6, [r0, #8]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	b	.L287	@
.L298:
	ldr	r0, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	add	r2, fp, r0	@ tmp346, tmp257, <variable>.image_id
	add	r6, r2, #178	@ tmp347, tmp346,
	add	ip, r1, r6, asl #2	@, tmp349,, tmp347,
	mov	r6, #0	@,
	str	r6, [ip, #8]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	b	.L299	@
.L304:
	ldr	lr, [sp, #12]	@, %sfp
	movw	r2, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp338,
	ldr	ip, [lr, #0]	@ g_event_report.528, g_event_report
	add	r0, fp, r3	@ tmp333, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.528,
	add	lr, r2, r0, asl #2	@, tmp336,, tmp333,
	str	r1, [lr, #720]	@ tmp338, <variable>.LogicImageIsUsed
	beq	.L299	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.528
	b	.L299	@
.L308:
	ldr	r0, [sp, #12]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp306,
	ldr	ip, [r0, #0]	@ g_event_report.528, g_event_report
	add	r2, fp, r3	@ tmp301, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.528,
	add	r0, lr, r2, asl #2	@, tmp304,, tmp301,
	str	r1, [r0, #720]	@ tmp306, <variable>.LogicImageIsUsed
	beq	.L292	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.528
	b	.L292	@
.L307:
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ tmp157,
	mvn	r0, #0	@ D.38280,
	str	r2, [r5, #4]	@ tmp157, <variable>.TempImageNum
	b	.L283	@
.L311:
	.align	2
.L310:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PushTempImageToVOQ, .-DNR_PushTempImageToVOQ
	.align	2
	.global	DNR_FastBackOptimize
	.type	DNR_FastBackOptimize, %function
DNR_FastBackOptimize:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	ip, #:lower16:76696	@ tmp145,
	movw	r4, #:lower16:.LANCHOR0	@ tmp359,
	movt	ip, #:upper16:76696	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp359,
	mov	r5, r0	@ InstId, InstId
	movw	r3, #:lower16:76696	@ tmp168,
	movt	r3, #:upper16:76696	@ tmp168,
	mla	r0, ip, r0, r4	@ tmp146, tmp145, InstId, tmp359
	mov	r6, r1	@ pImage, pImage
	mul	r3, r3, r5	@ tmp167, tmp168, InstId
	movw	r2, #:lower16:76648	@ tmp143,
	add	r8, r0, #75776	@ tmp147, tmp146,
	movt	r2, #:upper16:76648	@ tmp143,
	add	r7, r8, #872	@ tmp147, tmp147,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [r7, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	add	r7, r3, r4	@ tmp169, tmp167, tmp359
	cmp	r1, #1	@ <variable>.u32DispOptimizeFlag,
	movne	r1, #3	@ tmp162,
	strne	r1, [r0, r2]	@ tmp162, <variable>.u32VoFrmNum
	ldrne	r0, [r6, #140]	@ <variable>.format, <variable>.format
	moveq	r1, #7	@ tmp155,
	streq	r1, [r0, r2]	@ tmp155, <variable>.u32VoFrmNum
	movw	r2, #51528	@ tmp166,
	orrne	r0, r0, #262144	@ tmp164, <variable>.format,
	strne	r0, [r6, #140]	@ tmp164, <variable>.format
	ldr	r8, [r7, r2]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r8, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L315	@,
	add	r4, r7, #75776	@ tmp177, tmp169,
	ldr	r0, [r6, #80]	@ D.38386, <variable>.GopNum
	add	r4, r4, #864	@ tmp177, tmp177,
	movw	r1, #:lower16:76640	@ tmp173,
	movt	r1, #:upper16:76640	@ tmp173,
	ldr	ip, [r4, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r0, ip	@ D.38386, <variable>.LastGopNum
	beq	.L316	@,
	str	r0, [r4, #4]	@ D.38386, <variable>.LastGopNum
	mov	ip, #1	@ tmp198,
	ldr	r0, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, r2]	@ tmp198, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.DistanceBeforeFirstFrame,
	str	r0, [r7, r1]	@ <variable>.DistanceBeforeFirstFrame, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L325	@,
	ldr	r2, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r4, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
.L318:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L315:
	add	r3, r7, #75776	@ tmp258, tmp169,
	ldr	r2, [r6, #80]	@ temp.1592, <variable>.GopNum
	add	r3, r3, #864	@ tmp258, tmp258,
	movw	r1, #:lower16:76640	@ tmp254,
	movt	r1, #:upper16:76640	@ tmp254,
	ldr	r0, [r3, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r2, r0	@ temp.1592, <variable>.LastGopNum
	beq	.L319	@,
	mov	r0, r5	@, InstId
	mov	r1, r6	@, pImage
	str	r2, [r3, #4]	@ temp.1592, <variable>.LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	bne	.L326	@,
.L320:
	movw	r1, #:lower16:76696	@ tmp269,
	movt	r1, #:upper16:76696	@ tmp269,
	ldr	r0, [r6, #76]	@ temp.1595, <variable>.DistanceBeforeFirstFrame
	movw	r7, #:lower16:76640	@ tmp267,
	mul	r3, r1, r5	@ tmp268, tmp269, InstId
	movt	r7, #:upper16:76640	@ tmp267,
	cmp	r0, #0	@ temp.1595,
	add	r4, r3, r4	@ tmp270, tmp268, tmp359
	str	r0, [r4, r7]	@ temp.1595, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L327	@,
	ldr	r3, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r4, r7]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L318	@
.L319:
	ldr	r0, [r7, r1]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ <variable>.u32BackwardOptimizeDistanceCnt,
	bne	.L328	@,
	ldr	r1, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r3, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L318	@
.L326:
	bl	vfmw_dprint_nothing	@
	b	.L320	@
.L316:
	ldr	ip, .L330	@ tmp244,
	mov	r0, r5	@, InstId
	add	r1, r3, ip	@, tmp167, tmp244
	bl	VCTRL_ReleaseChanImage	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstId
	str	r8, [r7, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L318	@
.L328:
	ldr	r1, [r7, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L329	@,
.L323:
	movw	r2, #:lower16:76696	@ tmp326,
	movt	r2, #:upper16:76696	@ tmp326,
	mov	r0, r5	@, InstId
	ldr	lr, .L330	@ tmp327,
	mul	r5, r2, r5	@ tmp325, tmp326, InstId
	add	r1, r5, lr	@, tmp325, tmp327
	add	r4, r5, r4	@ tmp333, tmp325, tmp359
	bl	VCTRL_ReleaseChanImage	@
	movw	ip, #:lower16:76640	@ tmp337,
	movt	ip, #:upper16:76640	@ tmp337,
	mov	r0, #0	@ tmp335,
	str	r0, [r4, #440]	@ tmp335, <variable>.s321DFrameIsProc
	mvn	r0, #0	@ ret,
	ldr	r3, [r4, ip]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	add	r1, r3, r0	@ tmp349, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r1, [r4, ip]	@ tmp349, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L318	@
.L325:
	ldr	lr, .L330	@ tmp210,
	mov	r0, r5	@, InstId
	add	r1, r3, lr	@, tmp167, tmp210
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, r5	@, InstId
	str	r8, [r7, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	ldr	r1, [r4, #0]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r1, r0	@ tmp232, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r3, [r4, #0]	@ tmp232, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L318	@
.L327:
	ldr	lr, .L330	@ tmp276,
	mov	r0, r5	@, InstId
	add	r1, r3, lr	@, tmp268, tmp276
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r4, r7]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mov	r0, #0	@ tmp284,
	str	r0, [r4, #440]	@ tmp284, <variable>.s321DFrameIsProc
	sub	r2, ip, #1	@ tmp298, <variable>.u32BackwardOptimizeDistanceCnt,
	mvn	r0, #0	@ ret,
	str	r2, [r4, r7]	@ tmp298, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L318	@
.L329:
	movw	r2, #:lower16:g_event_report	@ tmp320,
	movt	r2, #:upper16:g_event_report	@ tmp320,
	ldr	r3, [r2, #0]	@ g_event_report.536, g_event_report
	cmp	r3, #0	@ g_event_report.536,
	beq	.L323	@,
	add	r2, sp, #8	@ tmp322,,
	mov	r0, r5	@, InstId
	str	r1, [r2, #-4]!	@ <variable>.Cur1DImage.last_frame, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.536
	b	.L323	@
.L331:
	.align	2
.L330:
	.word	.LANCHOR0+48
	.fnend
	.size	DNR_FastBackOptimize, .-DNR_FastBackOptimize
	.align	2
	.global	DNR_FastForwardFastBack
	.type	DNR_FastForwardFastBack, %function
DNR_FastForwardFastBack:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r3, #:lower16:76696	@ tmp144,
	movw	r4, #:lower16:.LANCHOR0	@ tmp210,
	movt	r3, #:upper16:76696	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp210,
	mov	r5, r0	@ InstId, InstId
	movw	r2, #:lower16:76648	@ tmp142,
	movt	r2, #:upper16:76648	@ tmp142,
	mla	r3, r3, r0, r4	@ tmp145, tmp144, InstId, tmp210
	add	r0, r3, #75776	@ tmp146, tmp145,
	add	ip, r0, #872	@ tmp146, tmp146,
	ldr	r0, [ip, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	movw	ip, #:lower16:76696	@ tmp167,
	movt	ip, #:upper16:76696	@ tmp167,
	cmp	r0, #1	@ <variable>.u32DispOptimizeFlag,
	moveq	r0, #7	@ tmp154,
	movne	r0, #3	@ tmp161,
	streq	r0, [r3, r2]	@ tmp154, <variable>.u32VoFrmNum
	strne	r0, [r3, r2]	@ tmp161, <variable>.u32VoFrmNum
	movw	r2, #51528	@ tmp165,
	mla	r0, ip, r5, r4	@ tmp168, tmp167, InstId, tmp210
	ldrne	r3, [r1, #140]	@ <variable>.format, <variable>.format
	orrne	r3, r3, #262144	@ tmp163, <variable>.format,
	strne	r3, [r1, #140]	@ tmp163, <variable>.format
	ldr	r3, [r0, r2]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r3, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L335	@,
	ldr	r3, [r1, #128]	@ D.38340, <variable>.is_fld_save
	cmp	r3, #0	@ D.38340,
	beq	.L346	@,
	cmp	r3, #1	@ D.38340,
	bne	.L338	@,
	ldr	ip, [r1, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, ip, #3	@ D.38345, <variable>.top_fld_type,
	beq	.L339	@,
	ldr	r0, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r0, #3	@ <variable>.bottom_fld_type,
	bne	.L338	@,
.L339:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L337	@,
	cmp	r3, #0	@ D.38345,
	bne	.L337	@,
	ldr	r3, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r3, #3	@ <variable>.bottom_fld_type,
	beq	.L338	@,
.L337:
	movw	r0, #:lower16:76696	@ tmp183,
	movt	r0, #:upper16:76696	@ tmp183,
	movw	r1, #51528	@ tmp181,
	mov	ip, #1	@ tmp186,
	mla	r4, r0, r5, r4	@ tmp184, tmp183, InstId, tmp210
	mov	r0, #0	@ ret,
	str	ip, [r4, r1]	@ tmp186, <variable>.GetFirstIFrameFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L335:
	ldr	r3, [r1, #128]	@ temp.1634, <variable>.is_fld_save
	cmp	r3, #0	@ temp.1634,
	bne	.L341	@,
	ldr	r3, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r3, #3	@ <variable>.format,
	bne	.L343	@,
.L342:
	mov	r0, r5	@, InstId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L341:
	cmp	r3, #1	@ temp.1634,
	bne	.L343	@,
	ldr	ip, [r1, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, ip, #3	@ temp.1638, <variable>.top_fld_type,
	bne	.L347	@,
.L344:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L342	@,
	cmp	r3, #0	@ temp.1638,
	bne	.L342	@,
	ldr	r3, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r3, #3	@ <variable>.bottom_fld_type,
	bne	.L342	@,
.L343:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L346:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L337	@,
.L338:
	movw	r6, #:lower16:76696	@ tmp190,
	movt	r6, #:upper16:76696	@ tmp190,
	ldr	lr, .L348	@ tmp191,
	mov	r0, r5	@, InstId
	mul	r6, r6, r5	@ tmp189, tmp190, InstId
	add	r4, r6, r4	@ tmp197, tmp189, tmp210
	add	r1, r6, lr	@, tmp189, tmp191
	bl	VCTRL_ReleaseChanImage	@
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ tmp199,
	mov	r0, r5	@, InstId
	str	r2, [r4, #440]	@ tmp199, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L347:
	ldr	r0, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r0, #3	@ <variable>.bottom_fld_type,
	beq	.L344	@,
	b	.L343	@
.L349:
	.align	2
.L348:
	.word	.LANCHOR0+48
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_ProcessDnrReturn
	.type	DNR_ProcessDnrReturn, %function
DNR_ProcessDnrReturn:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:76696	@ tmp157,
	movt	r6, #:upper16:76696	@ tmp157,
	movw	r4, #:lower16:.LANCHOR0	@ tmp382,
	movt	r4, #:upper16:.LANCHOR0	@ tmp382,
	movw	r3, #:lower16:76656	@ tmp161,
	mul	r6, r6, r0	@ tmp156, tmp157, ChanID
	movt	r3, #:upper16:76656	@ tmp161,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ ChanID, ChanID
	add	r2, r6, r4	@ tmp158, tmp156, tmp382
	ldr	r8, [r2, r3]	@ D.39309, <variable>.DNRDataSourceFlag
	ldr	r7, [r2, #452]	@ PicBufID, <variable>.CurImageBufID
	cmp	r8, #0	@ D.39309,
	bne	.L351	@,
	mov	r3, #392	@ tmp169,
	mla	ip, r3, r7, r6	@ tmp172, tmp169, PicBufID, tmp156
	add	r2, ip, r4	@ tmp173, tmp172, tmp382
	add	r1, r2, #26368	@ pLogic, tmp173,
	add	r6, r1, #72	@ pLogic, pLogic,
.L352:
	cmp	r5, #3	@ ChanID,
	bhi	.L374	@,
	ldr	r2, [r6, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #0	@ <variable>.image_width,
	beq	.L378	@,
	cmp	r8, #0	@ D.39309,
	beq	.L379	@,
	cmp	r8, #1	@ D.39309,
	bne	.L374	@,
	movw	ip, #:lower16:76696	@ tmp359,
	movt	ip, #:upper16:76696	@ tmp359,
	movw	r1, #:lower16:76656	@ tmp357,
	movt	r1, #:upper16:76656	@ tmp357,
	mla	r4, ip, r5, r4	@ tmp360, tmp359, ChanID, tmp382
	add	r2, r4, #75776	@ tmp361, tmp360,
	add	r2, r2, #880	@ tmp361, tmp361,
	ldr	r0, [r2, #4]	@ <variable>.DNRCaptureStartFlag, <variable>.DNRCaptureStartFlag
	cmp	r0, #1	@ <variable>.DNRCaptureStartFlag,
	bne	.L374	@,
	movw	r0, #:lower16:g_event_report	@ tmp377,
	movt	r0, #:upper16:g_event_report	@ tmp377,
	mov	r7, #0	@ tmp369,
	str	r7, [r4, r1]	@ tmp369, <variable>.DNRDataSourceFlag
	ldr	r3, [r0, #0]	@ g_event_report.1677, g_event_report
	str	r7, [r2, #4]	@ tmp369, <variable>.DNRCaptureStartFlag
	cmp	r3, r7	@ g_event_report.1677,
	beq	.L359	@,
	add	r2, sp, #16	@ tmp378,,
	mov	r0, r5	@, ChanID
	mov	r1, #21	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1677
	mov	r0, r7	@ D.39319, tmp369
.L354:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L351:
	cmp	r8, #1	@ D.39309,
	bne	.L374	@,
	movw	r1, #:lower16:76680	@ tmp176,
	movt	r1, #:upper16:76680	@ tmp176,
	ldr	r6, [r2, r1]	@ pLogic, <variable>.pCaptureImageOut
	b	.L352	@
.L379:
	movw	r3, #:lower16:76696	@ tmp185,
	movt	r3, #:upper16:76696	@ tmp185,
	mla	r3, r3, r5, r4	@ tmp186, tmp185, ChanID, tmp382
	ldrsb	ip, [r3, #8]	@ <variable>.DecChanRstFlag, <variable>.DecChanRstFlag
	cmp	ip, #1	@ <variable>.DecChanRstFlag,
	streq	r8, [r3, #24]	@ D.39309, <variable>.NeedStartAgain
	moveq	r0, r8	@ D.39319, D.39309
	beq	.L354	@,
	ldr	r0, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	beq	.L380	@,
.L359:
	mov	r0, #0	@ D.39319,
	b	.L354	@
.L380:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	ip, [r6, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:1374389535	@ tmp206,
	movt	r2, #:upper16:1374389535	@ tmp206,
	umull	r1, r9, r2, ip	@, tmp205, tmp206, <variable>.image_id
	mov	r1, #100	@ tmp208,
	mov	r3, r9, lsr #5	@ tmp203, tmp205,
	mls	r2, r1, r3, ip	@ tmp209, tmp208, tmp203, <variable>.image_id
	add	r9, r2, #2	@ tmp210, tmp209,
	cmp	r0, r9	@, tmp210
	beq	.L381	@,
.L360:
	movw	r8, #:lower16:76696	@ tmp218,
	movt	r8, #:upper16:76696	@ tmp218,
	movw	r1, #:lower16:76632	@ tmp216,
	movt	r1, #:upper16:76632	@ tmp216,
	mul	r3, r8, r5	@ tmp217, tmp218, ChanID
	movw	r9, #:lower16:.LANCHOR0	@ tmp215,
	movt	r9, #:upper16:.LANCHOR0	@ tmp215,
	add	r8, r3, r4	@ tmp219, tmp217, tmp382
	ldr	ip, [r8, r1]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L382	@,
	movw	fp, #51528	@ tmp253,
	add	sl, r8, #51456	@ tmp257, tmp219,
	ldr	r0, [r8, fp]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	sl, sl, #72	@ tmp257, tmp257,
	cmp	r0, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L365	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
.L364:
	movw	r7, #:lower16:vfmw_save_yuv_file	@ tmp334,
	movt	r7, #:upper16:vfmw_save_yuv_file	@ tmp334,
	ldr	r2, [r7, #0]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r2, #0	@ vfmw_save_yuv_file,
	beq	.L368	@,
	movw	r0, #:lower16:save_yuv_chan_num	@ tmp336,
	movt	r0, #:upper16:save_yuv_chan_num	@ tmp336,
	ldr	lr, [r0, #0]	@ save_yuv_chan_num, save_yuv_chan_num
	cmp	r5, lr	@ ChanID, save_yuv_chan_num
	beq	.L383	@,
.L368:
	ldr	r1, [r6, #192]	@ D.39402, <variable>.p_usrdat
	cmp	r1, #0	@ D.39402,
	beq	.L369	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L369:
	ldr	r1, [r6, #196]	@ temp.1678, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1678,
	beq	.L370	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L370:
	ldr	r1, [r6, #200]	@ temp.1679, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1679,
	beq	.L371	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L371:
	ldr	r1, [r6, #204]	@ temp.1674, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1674,
	beq	.L372	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L372:
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:g_PrintEnable	@ tmp344,
	movt	r2, #:upper16:g_PrintEnable	@ tmp344,
	ldr	r1, [r2, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r1, #2048	@ g_PrintEnable,
	bne	.L384	@,
.L373:
	movw	ip, #:lower16:76696	@ tmp350,
	movt	ip, #:upper16:76696	@ tmp350,
	movw	r0, #:lower16:76632	@ tmp348,
	movt	r0, #:upper16:76632	@ tmp348,
	mla	r4, ip, r5, r4	@ tmp351, tmp350, ChanID, tmp382
	ldr	lr, [r4, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	lr, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L359	@,
	movw	r3, #:lower16:g_event_report	@ tmp354,
	movt	r3, #:upper16:g_event_report	@ tmp354,
	ldr	r3, [r3, #0]	@ g_event_report.1676, g_event_report
	cmp	r3, #0	@ g_event_report.1676,
	beq	.L359	@,
	add	r2, sp, #16	@ tmp355,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1676
	mov	r0, #0	@ D.39319,
	b	.L354	@
.L374:
	bl	vfmw_dprint_nothing	@
.L377:
	mvn	r0, #0	@ D.39319,
	b	.L354	@
.L365:
	str	r7, [r6, #176]	@ PicBufID, <variable>.image_id
	mov	ip, #392	@ tmp268,
	ldr	r0, [sl, #4]	@ D.39372, <variable>.TempImageNum
	mov	r2, ip	@, tmp268
	mov	r1, r6	@, pLogic
	mla	lr, ip, r0, r3	@ tmp271, tmp268, D.39372, tmp217
	add	ip, r9, lr	@ tmp272, tmp215, tmp271
	add	r0, ip, #51456	@, tmp272,
	add	r0, r0, #80	@,,
	str	lr, [sp, #4]	@,
	bl	memcpy	@
	movw	r2, #19174	@ tmp281,
	mla	r7, r2, r5, r7	@ tmp282, tmp281, ChanID, PicBufID
	movw	r1, #:lower16:76648	@ tmp309,
	movt	r1, #:upper16:76648	@ tmp309,
	ldr	r0, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	ip, [sl, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	r3, [r8, r1]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	r2, ip, #1	@ D.39374, <variable>.TempImageNum,
	mov	ip, #4	@ tmp288,
	rsb	r1, r3, r0	@ tmp314, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	add	r3, r9, r7, asl #2	@, tmp286, tmp215, tmp282,
	str	r2, [sl, #4]	@ D.39374, <variable>.TempImageNum
	cmp	r2, r1	@ D.39374, tmp314
	str	ip, [r3, #720]	@ tmp288, <variable>.LogicImageIsUsed
	ldr	r3, [sp, #4]	@,
	movcs	r3, #0	@ tmp333,
	strcs	r3, [r8, fp]	@ tmp333, <variable>.GetFirstIFrameFlag
	bcc	.L385	@,
.L367:
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, pLogic
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L364	@,
	bl	vfmw_dprint_nothing	@
	b	.L364	@
.L385:
	add	r3, r3, r9	@ tmp324, tmp271, tmp215
	movw	r1, #51760	@ tmp318,
	ldr	r7, [r3, r1]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r7, #1	@ <variable>.last_frame,
	bne	.L364	@,
	b	.L367	@
.L381:
	movw	lr, #:lower16:g_event_report	@ tmp212,
	movt	lr, #:upper16:g_event_report	@ tmp212,
	mov	r0, #1	@ tmp211,
	str	r0, [r6, #224]	@ tmp211, <variable>.last_frame
	ldr	r3, [lr, #0]	@ g_event_report.613, g_event_report
	cmp	r3, #0	@ g_event_report.613,
	beq	.L361	@,
	add	r2, sp, #16	@ tmp214,,
	mov	r0, r5	@, ChanID
	mov	r1, #115	@,
	str	r8, [r2, #-4]!	@ D.39309, para
	blx	r3	@ g_event_report.613
.L361:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, ChanID
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L360	@
.L384:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L373	@
.L383:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	ip, [r6, #172]	@ <variable>.image_stride, <variable>.image_stride
	ldr	r2, [r7, #0]	@, vfmw_save_yuv_file
	ldr	r0, [r6, #48]	@, <variable>.luma_2d_vir_addr
	mul	r1, ip, r3	@, <variable>.image_stride, <variable>.image_height
	bl	klib_fwrite	@
	b	.L368	@
.L378:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39319,
	b	.L354	@
.L382:
	add	r3, r9, r3	@ tmp226, tmp215, tmp217
	str	r7, [r6, #176]	@ PicBufID, <variable>.image_id
	add	r0, r3, #976	@, tmp226,
	mov	r1, r6	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L377	@,
	movw	lr, #19174	@ tmp230,
	mov	r0, #11	@,
	mla	r2, lr, r5, r7	@ tmp231, tmp230, ChanID, PicBufID
	mov	r7, #2	@ tmp237,
	add	r9, r9, r2, asl #2	@, tmp235, tmp215, tmp231,
	str	r7, [r9, #720]	@ tmp237, <variable>.LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L364	@,
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LANCHOR1	@ tmp238,
	movt	r1, #:upper16:.LANCHOR1	@ tmp238,
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp245,
	add	ip, r1, r5, asl #2	@, tmp241, tmp238, ChanID,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp245,
	ldr	r7, [ip, #4016]	@ tmp244, last_rec_pos_time
	ldr	r3, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r1, r7, r0	@ tmp243, tmp244, currtime
	cmp	r1, r3	@ tmp243, g_TraceFramePeriod
	strhi	r0, [ip, #4016]	@ currtime, last_rec_pos_time
	b	.L364	@
	.fnend
	.size	DNR_ProcessDnrReturn, .-DNR_ProcessDnrReturn
	.align	2
	.global	DNR_Fsp_ShowPic
	.type	DNR_Fsp_ShowPic, %function
DNR_Fsp_ShowPic:
	.fnstart
.LFB1945:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r1	@ pPicBufID, pPicBufID
	bl	VCTRL_GetFrameInterface	@
	movw	r3, #:lower16:76696	@ tmp147,
	movt	r3, #:upper16:76696	@ tmp147,
	movw	r8, #:lower16:.LANCHOR0	@ tmp239,
	movt	r8, #:upper16:.LANCHOR0	@ tmp239,
	mul	r3, r3, r7	@ tmp146, tmp147, ChanID
	add	r2, r3, r8	@ tmp148, tmp146, tmp239
	ldr	ip, [r2, #456]	@ D.39201, <variable>.s32ValidImgNum
	cmp	ip, #0	@ D.39201,
	ble	.L387	@,
	ldr	r2, [r2, #720]	@ <variable>.LogicImageIsUsed, <variable>.LogicImageIsUsed
	cmp	r2, #1	@ <variable>.LogicImageIsUsed,
	movls	r4, #0	@ i,
	bls	.L389	@,
	tst	ip, #1	@ D.39201,
	add	r4, r8, #8	@ tmp158, tmp239,
	add	r3, r4, r3	@ ivtmp.1708, tmp158, tmp146
	mov	r4, #0	@ i,
	bne	.L390	@,
	ldr	lr, [r3, #716]	@ D.39198, <variable>.LogicImageIsUsed
	mov	r4, #1	@ i,
	add	r3, r3, #4	@ ivtmp.1708, ivtmp.1708,
	cmp	lr, r4	@ D.39198,
	bhi	.L390	@,
.L389:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5, #0]	@ i,* pPicBufID
	beq	.L392	@,
	ldr	r3, [r0, #4]	@ D.39206, <variable>.get_frame
	cmp	r3, #0	@ D.39206,
	beq	.L392	@,
	movw	lr, #19174	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp161,
	mla	ip, lr, r7, r4	@ tmp164, tmp163, ChanID, i
	movt	r5, #:upper16:.LANCHOR0	@ tmp161,
	add	r6, ip, #178	@ tmp165, tmp164,
	add	r6, r8, r6, asl #2	@, tmp168, tmp239, tmp165,
	ldr	r0, [r6, #8]	@ tmp170, <variable>.LogicImageIsUsed
	cmp	r0, #0	@ tmp170,
	beq	.L404	@,
.L392:
	movw	r0, #19174	@ tmp229,
	mov	r2, #1	@ tmp236,
	mla	r7, r0, r7, r4	@ tmp230, tmp229, ChanID, i
	mov	r0, #0	@ D.39220,
	add	r8, r8, r7, asl #2	@, tmp234, tmp239, tmp230,
	str	r2, [r8, #720]	@ tmp236, <variable>.LogicImageIsUsed
	b	.L394	@
.L393:
	ldr	r1, [r3, #716]	@ D.39198, <variable>.LogicImageIsUsed
	add	r3, r2, #4	@ ivtmp.1708, tmp243,
	cmp	r1, #1	@ D.39198,
	bls	.L389	@,
	ldr	r1, [r2, #716]	@ D.39198, <variable>.LogicImageIsUsed
	add	r4, r4, #1	@ i, i,
	cmp	r1, #1	@ D.39198,
	bls	.L389	@,
.L390:
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ tmp243, ivtmp.1708,
	cmp	r4, ip	@ i, D.39201
	blt	.L393	@,
.L387:
	mvn	r0, #0	@ D.39220,
.L394:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L404:
	movw	r1, #:lower16:76696	@ tmp175,
	movt	r1, #:upper16:76696	@ tmp175,
	mov	r0, r7	@, ChanID
	mul	r7, r1, r7	@ tmp174, tmp175, ChanID
	add	r1, sp, #4	@,,
	add	ip, r7, r5	@ tmp176, tmp174, tmp161
	ldr	r2, [ip, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	ldr	lr, [ip, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	add	ip, lr, #15	@ tmp187, <variable>.Cur1DImage.image_height,
	add	lr, r2, #63	@ tmp178, <variable>.Cur1DImage.image_width,
	bic	ip, ip, #15	@ tmp189, tmp187,
	bic	r2, lr, #63	@ tmp180, tmp178,
	mul	lr, ip, r2	@ tmp190, tmp189, tmp180
	mov	ip, #3	@ tmp192,
	mul	r2, ip, lr	@ tmp191, tmp192, tmp190
	mov	r2, r2, asr #1	@, tmp191,
	blx	r3	@ D.39206
	cmp	r0, #0	@ D.39217
	bne	.L387	@,
	mov	r3, #392	@ tmp200,
	ldr	r1, [sp, #4]	@ ExtFrame.PhyAddr, ExtFrame.PhyAddr
	mla	r4, r3, r4, r7	@ tmp203, tmp200, i, tmp174
	movw	ip, #26560	@ tmp208,
	sub	lr, ip, #72	@ tmp198, tmp198,
	mov	r3, #1	@ tmp226,
	add	r5, r4, r5	@ tmp204, tmp203, tmp161
	str	r1, [r5, ip]	@ ExtFrame.PhyAddr, <variable>.luma_2d_phy_addr
	ldr	r2, [sp, #8]	@ ExtFrame.VirAddr, ExtFrame.VirAddr
	str	r2, [r5, lr]	@ ExtFrame.VirAddr, <variable>.luma_2d_vir_addr
	str	r3, [r6, #8]	@ tmp226, <variable>.LogicImageIsUsed
	b	.L394	@
	.fnend
	.size	DNR_Fsp_ShowPic, .-DNR_Fsp_ShowPic
	.align	2
	.global	DNR_InformDecChanReset
	.type	DNR_InformDecChanReset, %function
DNR_InformDecChanReset:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:76696	@ tmp155,
	movt	r6, #:upper16:76696	@ tmp155,
	movw	fp, #:lower16:.LANCHOR0	@ tmp298,
	movt	fp, #:upper16:.LANCHOR0	@ tmp298,
	movw	ip, #:lower16:76640	@ tmp182,
	mul	r6, r6, r0	@ tmp154, tmp155, ChanID
	movt	ip, #:upper16:76640	@ tmp182,
	movw	r3, #:lower16:76632	@ tmp196,
	movt	r3, #:upper16:76632	@ tmp196,
	movw	lr, #51528	@ tmp175,
	mov	r5, #0	@ tmp166,
	add	r8, r6, fp	@ tmp156, tmp154, tmp298
	.pad #436
	sub	sp, sp, #436	@,,
	add	r2, r8, #75776	@ tmp186, tmp156,
	mov	r4, r0	@ ChanID, ChanID
	add	sl, r2, #864	@ tmp186, tmp186,
	add	r1, r2, #856	@ tmp200, tmp200,
	str	r5, [r8, lr]	@ tmp166, <variable>.GetFirstIFrameFlag
	mov	r2, #1	@ tmp158,
	str	r5, [r8, ip]	@ tmp166, <variable>.u32BackwardOptimizeDistanceCnt
	str	r5, [r1, #4]	@ tmp166, <variable>.u32BackwardOptimizeFlag
	movw	r1, #65535	@ tmp187,
	strb	r2, [r8, #8]	@ tmp158, <variable>.DecChanRstFlag
	str	r1, [sl, #4]	@ tmp187, <variable>.LastGopNum
	str	r5, [r8, r3]	@ tmp166, <variable>.s32FastForwardBackwardSpeed
	str	r5, [r8, #24]	@ tmp166, <variable>.NeedStartAgain
	str	r5, [r8, #440]	@ tmp166, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetFrameInterface	@
	subs	sl, r0, #0	@ pFrameIntf,
	addeq	r0, fp, #8	@, tmp298,
	streq	r0, [sp, #0]	@, %sfp
	beq	.L406	@,
	ldr	r0, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	cmp	r0, #0	@ <variable>.release_frame,
	addeq	r1, fp, #8	@, tmp298,
	streq	r1, [sp, #0]	@, %sfp
	beq	.L406	@,
	ldr	r3, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r3, #0	@ <variable>.s32ValidImgNum,
	addle	r2, fp, #8	@, tmp298,
	strle	r2, [sp, #0]	@, %sfp
	ble	.L406	@,
	add	r1, r6, #26368	@ tmp225, tmp154,
	add	r9, fp, #8	@, tmp298,
	add	r7, r1, #112	@ tmp225, tmp225,
	str	r9, [sp, #0]	@, %sfp
	add	r7, r9, r7	@ ivtmp.1757,, tmp225
	add	r6, r9, r6	@ ivtmp.1756,, tmp154
	add	r8, r8, #456	@ tmp317, tmp156,
	add	r9, sp, #412	@ tmp313,,
	b	.L408	@
.L407:
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.1757, ivtmp.1757,
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	ble	.L406	@,
.L408:
	ldr	ip, [r6, #712]	@ tmp227, <variable>.LogicImageIsUsed
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1756, ivtmp.1756,
	cmp	ip, #0	@ tmp227,
	beq	.L407	@,
	ldr	r3, [r7, #0]	@ <variable>.luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, ChanID
	ldr	lr, [r7, #72]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	mov	r1, r9	@, tmp313
	add	r7, r7, #392	@ ivtmp.1757, ivtmp.1757,
	str	r3, [sp, #416]	@ <variable>.luma_2d_vir_addr, ExtFrame.VirAddr
	str	lr, [sp, #412]	@ <variable>.luma_2d_phy_addr, ExtFrame.PhyAddr
	ldr	r2, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	blx	r2	@ <variable>.release_frame
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	bgt	.L408	@,
.L406:
	movw	r2, #:lower16:76696	@ tmp242,
	movt	r2, #:upper16:76696	@ tmp242,
	mul	r1, r2, r4	@ tmp241, tmp242, ChanID
	add	r2, r1, fp	@ tmp243, tmp241, tmp298
	add	r3, r2, #75776	@ tmp244, tmp243,
	add	r3, r3, #904	@ tmp244, tmp244,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L435	@,
.L409:
	ldr	r1, [sp, #0]	@, %sfp
	movw	ip, #:lower16:76696	@ tmp262,
	movt	ip, #:upper16:76696	@ tmp262,
	mov	r2, #0	@ i.1765,
	mov	r0, r2	@ tmp302, i.1765
	mla	r4, ip, r4, r1	@ ivtmp.1746, tmp262, ChanID,
.L412:
	ldr	r1, [r4, #712]	@ tmp295, <variable>.LogicImageIsUsed
	add	r3, r4, #4	@ tmp319, ivtmp.1746,
	add	r2, r2, #1	@ tmp318, i.1765,
	cmp	r1, #3	@ tmp295,
	strne	r0, [r4, #712]	@ tmp302, <variable>.LogicImageIsUsed
	ldr	ip, [r3, #712]	@ tmp323, <variable>.LogicImageIsUsed
	add	r2, r2, #1	@ i.1765, tmp318,
	add	r4, r3, #4	@ ivtmp.1746, tmp319,
	cmp	ip, #3	@ tmp323,
	strne	r0, [r3, #712]	@ tmp302, <variable>.LogicImageIsUsed
	cmp	r2, #64	@ i.1765,
	bne	.L412	@,
	add	sp, sp, #436	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L435:
	movw	r9, #19174	@ tmp306,
	ldr	sl, [sp, #0]	@, %sfp
	mul	r8, r9, r4	@, tmp306, ChanID
	add	r6, r1, #968	@ tmp250, tmp241,
	add	r9, sp, #16	@ tmp304,,
	str	r2, [sp, #12]	@ tmp243, %sfp
	str	r4, [sp, #8]	@ ChanID, %sfp
	mov	r7, r3	@ tmp312, tmp312
	str	r8, [sp, #4]	@, %sfp
	add	r8, sl, r6	@ D.38211,, tmp250
	movw	sl, #:lower16:1374389535	@ tmp305,
	mov	r6, #0	@ i.1763,
	movt	sl, #:upper16:1374389535	@ tmp305,
	b	.L418	@
.L437:
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r2, [sp, #160]	@ stimage.image_width, stimage.image_width
	add	lr, r0, r5	@ tmp268,, RelImgID
	ldr	r3, [r7, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	r5, lr, #178	@ tmp269, tmp268,
	cmp	r2, r3	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	add	r5, fp, r5, asl #2	@, tmp272, tmp298, tmp269,
	str	r4, [r5, #8]	@ tmp251, <variable>.LogicImageIsUsed
	bhi	.L414	@,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r1, [sp, #164]	@ stimage.image_height, stimage.image_height
	add	r3, lr, #75776	@ tmp288,,
	add	r2, r3, #912	@ tmp288, tmp288,
	ldr	ip, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r1, ip	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L414	@,
	ldr	r1, [sp, #208]	@ temp.1767, stimage.p_usrdat
	cmp	r1, #0	@ temp.1767,
	beq	.L415	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #208]	@ tmp251, stimage.p_usrdat
.L415:
	ldr	r1, [sp, #212]	@ temp.1768, stimage.p_usrdat
	cmp	r1, #0	@ temp.1768,
	beq	.L416	@,
	ldr	r0, [sp, #8]	@, %sfp
	mov	r4, #0	@ tmp292,
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #212]	@ tmp292, stimage.p_usrdat
.L416:
	ldr	r1, [sp, #216]	@ temp.1769, stimage.p_usrdat
	cmp	r1, #0	@ temp.1769,
	beq	.L417	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp293,
	str	r0, [sp, #216]	@ tmp293, stimage.p_usrdat
.L417:
	ldr	r1, [sp, #220]	@ D.38235, stimage.p_usrdat
	cmp	r1, #0	@ D.38235,
	beq	.L414	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp294,
	str	r1, [sp, #220]	@ tmp294, stimage.p_usrdat
.L414:
	add	r6, r6, #1	@ i.1763, i.1763,
	cmp	r6, #64	@ i.1763,
	beq	.L436	@,
.L418:
	mov	r0, r8	@, D.38211
	mov	r1, r9	@, tmp304
	mov	r4, #0	@ tmp251,
	str	r4, [sp, #428]	@ tmp251, TopPhyAddr
	str	r4, [sp, #424]	@ tmp251, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@,
	bne	.L434	@,
	ldr	r1, [sp, #192]	@ D.38215, stimage.image_id
	mov	r5, #100	@ tmp258,
	umull	r2, r0, sl, r1	@, tmp255, tmp305, D.38215
	mov	lr, r0, lsr #5	@ RelImgID, tmp255,
	mls	r5, r5, lr, r1	@ RelImgID, tmp258, RelImgID, D.38215
	cmp	r5, #63	@ RelImgID,
	bgt	.L434	@,
	mov	r0, r8	@, D.38211
	add	r2, sp, #428	@,,
	add	r3, sp, #424	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	beq	.L437	@,
	bl	vfmw_dprint_nothing	@
	b	.L414	@
.L434:
	ldr	r4, [sp, #8]	@ ChanID, %sfp
	bl	vfmw_dprint_nothing	@
	b	.L409	@
.L436:
	ldr	r4, [sp, #8]	@ ChanID, %sfp
	b	.L409	@
	.fnend
	.size	DNR_InformDecChanReset, .-DNR_InformDecChanReset
	.align	2
	.global	DNR_PutYuv
	.type	DNR_PutYuv, %function
DNR_PutYuv:
	.fnstart
.LFB1940:
	@ args = 24, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #100
	sub	sp, sp, #100	@,,
	mov	r4, r1	@ pLuma, pLuma
	add	r1, sp, #92	@,,
	mov	fp, r3	@ PicHeight, PicHeight
	str	r2, [sp, #72]	@ PicWidth, %sfp
	mov	r6, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r3, r0, #0	@ D.38993,
	mvnne	r0, #0	@ D.38996,
	beq	.L444	@,
.L440:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L444:
	ldr	r5, [sp, #136]	@, Stride
	movw	r2, #:lower16:76696	@ tmp159,
	ldr	r1, [sp, #92]	@, PicBufID
	movt	r2, #:upper16:76696	@ tmp159,
	mov	sl, #392	@ tmp157,
	movw	lr, #26488	@,
	mul	r7, fp, r5	@ D.39005, PicHeight,
	movw	r5, #:lower16:.LANCHOR0	@ tmp627,
	mul	r8, r2, r6	@, tmp159, ChanID
	movt	r5, #:upper16:.LANCHOR0	@ tmp627,
	mla	sl, sl, r1, r8	@ tmp160, tmp157,,
	mov	r1, r4	@, pLuma
	add	r9, r7, r7, asl #1	@, tmp580, D.39005, D.39005,
	movw	r2, #26560	@ tmp258,
	add	r4, sl, r5	@ tmp170, tmp160, tmp627
	str	r8, [sp, #76]	@, %sfp
	add	r0, r9, r9, lsr #31	@, tmp582, tmp580, tmp580,
	add	r8, r4, #26368	@, tmp170,
	ldr	ip, [r4, lr]	@, <variable>.luma_2d_vir_addr
	mov	lr, r0, asr #1	@, tmp582,
	str	lr, [sp, #80]	@, %sfp
	mov	r9, r8	@,
	add	r9, r9, #136	@,,
	str	ip, [sp, #12]	@, %sfp
	mov	r0, r8	@, tmp9
	ldr	lr, [r4, r2]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	add	ip, r0, #160	@,,
	str	r8, [sp, #36]	@ tmp9, %sfp
	str	r9, [sp, #24]	@, %sfp
	ldr	r9, [sp, #36]	@, %sfp
	str	r8, [sp, #40]	@ tmp12, %sfp
	str	r8, [sp, #44]	@, %sfp
	str	r8, [sp, #48]	@ tmp2, %sfp
	str	r8, [sp, #52]	@, %sfp
	str	r8, [sp, #56]	@ tmp9, %sfp
	str	r8, [sp, #60]	@ tmp12, %sfp
	str	r8, [sp, #64]	@, %sfp
	str	r8, [sp, #68]	@ tmp2, %sfp
	add	r8, r8, #248	@,,
	str	ip, [sp, #32]	@, %sfp
	str	r8, [sp, #20]	@, %sfp
	add	r8, r0, #144	@, tmp12,
	ldr	ip, [sp, #40]	@, %sfp
	add	r0, r0, #192	@, tmp2,
	str	r8, [sp, #28]	@, %sfp
	add	r8, r9, #168	@,,
	str	r0, [sp, #4]	@, %sfp
	add	r2, ip, #104	@,,
	ldr	r0, [sp, #44]	@, %sfp
	str	r8, [sp, #36]	@, %sfp
	ldr	r8, [sp, #48]	@, %sfp
	add	r9, r0, #120	@,,
	str	r2, [sp, #40]	@, %sfp
	add	ip, r8, #176	@,,
	ldr	r2, [sp, #52]	@, %sfp
	str	r9, [sp, #44]	@, %sfp
	str	ip, [sp, #48]	@, %sfp
	add	r0, r2, #216	@,,
	ldr	r9, [sp, #56]	@, %sfp
	ldr	ip, [sp, #60]	@, %sfp
	add	r8, r9, #224	@,,
	str	r0, [sp, #52]	@, %sfp
	add	r2, ip, #232	@,,
	str	r8, [sp, #56]	@, %sfp
	str	r2, [sp, #60]	@, %sfp
	add	r2, sl, #26368	@, tmp160,
	ldr	r8, [sp, #68]	@, %sfp
	movw	sl, #26464	@,
	ldr	r0, [sp, #64]	@, %sfp
	add	ip, r8, #208	@,,
	ldr	r8, [sp, #92]	@, PicBufID
	add	r9, r0, #240	@,,
	str	r9, [sp, #64]	@, %sfp
	movw	r9, #26616	@ tmp164,
	str	ip, [sp, #68]	@, %sfp
	add	r0, r2, #64	@,,
	ldr	r2, [sp, #80]	@, %sfp
	str	r0, [sp, #16]	@, %sfp
	add	ip, r7, lr	@ tmp286, D.39005, <variable>.luma_2d_phy_addr
	ldr	r0, [sp, #12]	@, %sfp
	str	r8, [r4, r9]	@, <variable>.image_id
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, sl]	@, tmp170,
	ldr	sl, [sp, #16]	@, %sfp
	ldr	r9, .L445	@,
	add	r8, r9, sl	@,,
	movw	sl, #26544	@ tmp347,
	str	r8, [sp, #16]	@, %sfp
	str	lr, [r4, sl]	@ <variable>.luma_2d_phy_addr, <variable>.luma_phy_addr
	ldr	r8, [sp, #140]	@, DispPicWidth
	ldr	sl, [sp, #4]	@, %sfp
	mov	r9, r8, lsr #1	@,,
	str	r9, [sp, #84]	@, %sfp
	str	ip, [sl, #4]	@ tmp286, <variable>.chrom_2d_phy_addr
	ldr	r8, [sp, #144]	@, DispPicHeight
	ldr	sl, [sp, #72]	@, %sfp
	mov	r9, r8, lsr #1	@,,
	movw	r8, #26584	@ tmp454,
	str	r9, [sp, #8]	@, %sfp
	str	sl, [r4, r8]	@, <variable>.image_width
	ldr	r9, [sp, #12]	@, %sfp
	add	sl, r9, r7	@ tmp384,, D.39005
	ldr	r7, [sp, #52]	@, %sfp
	str	fp, [r7, #4]	@ PicHeight, <variable>.image_height
	mov	r7, #1	@ tmp217,
	ldr	fp, [sp, #44]	@, %sfp
	str	sl, [fp, #4]	@ tmp384, <variable>.chrom_2d_vir_addr
	ldr	r8, [sp, #136]	@, Stride
	ldr	r9, [sp, #84]	@, %sfp
	add	fp, r8, lr	@ tmp306,, <variable>.luma_2d_phy_addr
	movw	r8, #26600	@ tmp490,
	str	r9, [r4, r8]	@, <variable>.disp_center_x
	ldr	r8, [sp, #136]	@, Stride
	add	r9, r8, ip	@ tmp326,, tmp286
	movw	r8, #26536	@ tmp288,
	str	fp, [r4, r8]	@ tmp306, <variable>.btm_luma_phy_addr
	ldr	r8, [sp, #36]	@, %sfp
	str	r9, [r8, #4]	@ tmp326, <variable>.btm_chrom_phy_addr
	ldr	r9, [sp, #8]	@, %sfp
	ldr	fp, [sp, #60]	@, %sfp
	str	r9, [fp, #4]	@, <variable>.disp_center_y
	ldr	r8, [sp, #136]	@, Stride
	ldr	fp, [sp, #64]	@, %sfp
	str	r8, [fp, #4]	@, <variable>.image_stride
	movw	r8, #26648	@ tmp559,
	ldr	r9, [sp, #20]	@, %sfp
	movw	fp, #26440	@ tmp173,
	str	r7, [r4, r8]	@ tmp217, <variable>.chroma_idc
	str	r3, [r9, #4]	@ D.38993, <variable>.error_level
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, fp]	@, tmp170, tmp173
	movw	fp, #26448	@ tmp182,
	strd	r8, [r4, fp]	@, tmp170, tmp182
	movw	fp, #26456	@ tmp191,
	strd	r8, [r4, fp]	@, tmp170, tmp191
	ldr	r9, [sp, #24]	@, %sfp
	str	r7, [r9, #4]	@ tmp217, <variable>.DispEnableFlag
	movw	r9, #26512	@ tmp219,
	str	r3, [r4, r9]	@ D.38993, <variable>.DispFrameDistance
	movw	r9, #26520	@ tmp239,
	ldr	r7, [sp, #28]	@, %sfp
	str	r3, [r4, r9]	@ D.38993, <variable>.GopNum
	str	r3, [r7, #4]	@ D.38993, <variable>.DistanceBeforeFirstFrame
	movw	r7, #26528	@ tmp249,
	str	lr, [r4, r7]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	movw	lr, #26472	@ tmp328,
	ldr	r8, [sp, #32]	@, %sfp
	str	ip, [r8, #4]	@ tmp286, <variable>.top_chrom_phy_addr
	movw	r8, #26568	@ tmp444,
	ldr	r9, [sp, #12]	@, %sfp
	str	r9, [r4, lr]	@, <variable>.luma_vir_addr
	movw	r9, #26592	@ tmp472,
	ldr	r7, [sp, #40]	@, %sfp
	movw	lr, #26608	@ tmp530,
	str	sl, [r7, #4]	@ tmp384, <variable>.chrom_vir_addr
	ldr	r7, [sp, #48]	@, %sfp
	str	r3, [r4, r8]	@ D.38993, <variable>.is_fld_save
	str	ip, [r7, #4]	@ tmp286, <variable>.chrom_phy_addr
	ldr	r8, [sp, #140]	@, DispPicWidth
	str	r8, [r4, r9]	@, <variable>.disp_width
	ldr	r9, [sp, #144]	@, DispPicHeight
	ldr	sl, [sp, #56]	@, %sfp
	str	r9, [sl, #4]	@, <variable>.disp_height
	str	r3, [r4, lr]	@ D.38993, <variable>.frame_rate
	movw	r3, #11296	@ tmp577,
	ldr	ip, [sp, #68]	@, %sfp
	str	r3, [ip, #4]	@ tmp577, <variable>.format
	bl	memcpy	@
	movw	lr, #26488	@,
	ldr	r4, [r4, lr]	@ temp.1797, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, temp.1797
	bl	MEM_Vir2Phy	@
	ldr	r2, [sp, #80]	@, %sfp
	mov	r1, r0	@ D.39034,
	mov	r0, r4	@, temp.1797
	bl	KernelFlushCache	@
	ldr	r1, [sp, #76]	@, %sfp
	ldr	r2, .L445	@,
	add	r0, r1, #968	@ tmp611,,
	ldr	r1, [sp, #16]	@, %sfp
	add	r0, r2, r0	@,, tmp611
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L441	@,
	bl	vfmw_dprint_nothing	@
.L441:
	ldr	lr, [sp, #92]	@ PicBufID, PicBufID
	movw	r1, #19174	@ tmp615,
	mov	r0, #2	@ tmp623,
	mla	ip, r1, r6, lr	@ tmp616, tmp615, ChanID, PicBufID
	add	r5, r5, ip, asl #2	@, tmp621, tmp627, tmp616,
	str	r0, [r5, #720]	@ tmp623, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_event_report	@ tmp624,
	movt	r3, #:upper16:g_event_report	@ tmp624,
	ldr	r3, [r3, #0]	@ g_event_report.583, g_event_report
	cmp	r3, #0	@ g_event_report.583,
	moveq	r0, r3	@ D.38996, g_event_report.583
	beq	.L440	@,
	ldr	r7, [sp, #16]	@, %sfp
	add	r2, sp, #96	@ tmp625,,
	mov	r0, r6	@, ChanID
	mov	r1, #5	@,
	str	r7, [r2, #-8]!	@, para
	blx	r3	@ g_event_report.583
	mov	r0, #0	@ D.38996,
	b	.L440	@
.L446:
	.align	2
.L445:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PutYuv, .-DNR_PutYuv
	.global	__aeabi_uidivmod
	.align	2
	.global	DNR_DoNextInstance
	.type	DNR_DoNextInstance, %function
DNR_DoNextInstance:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 320
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #324
	sub	sp, sp, #324	@,,
	movw	r7, #:lower16:.LANCHOR1	@ tmp1881,
	movw	r5, #:lower16:.LANCHOR0	@ tmp1880,
	movt	r7, #:upper16:.LANCHOR1	@ tmp1881,
	movw	r8, #:lower16:g_DnrSleepTime	@ tmp1891,
	movw	sl, #:lower16:g_VdmCharacter	@ tmp1892,
	movt	r5, #:upper16:.LANCHOR0	@ tmp1880,
	movt	r8, #:upper16:g_DnrSleepTime	@ tmp1891,
	movt	sl, #:upper16:g_VdmCharacter	@ tmp1892,
	str	r0, [sp, #32]	@ pNextInstId, %sfp
	mov	r1, #84	@,
	add	r0, sp, #144	@,,
	mov	r6, #0	@ tmp207,
	ldr	r4, [r7, #4044]	@ NextInstId, s_DnrCtrl.ThisInstID
	str	r6, [sp, #316]	@ tmp207, PicBufID
	bl	__memzero	@
	movw	r0, #:lower16:g_event_report	@,
	movw	r1, #:lower16:USE_FF_APT_EN	@,
	movt	r0, #:upper16:g_event_report	@,
	movt	r1, #:upper16:USE_FF_APT_EN	@,
	movw	r2, #:lower16:g_eVdmVersion	@,
	movw	r3, #:lower16:1374389535	@,
	movt	r2, #:upper16:g_eVdmVersion	@,
	movt	r3, #:upper16:1374389535	@,
	str	r0, [sp, #16]	@, %sfp
	str	r1, [sp, #20]	@, %sfp
	str	r2, [sp, #24]	@, %sfp
	str	r3, [sp, #28]	@, %sfp
.L546:
	add	r1, r4, #1	@ D.38479, NextInstId,
	movw	fp, #:lower16:76696	@ tmp218,
	movt	fp, #:upper16:76696	@ tmp218,
	mov	r3, r1, asr #31	@ tmp210, D.38479,
	mov	ip, r3, lsr #30	@ tmp211, tmp210,
	add	r2, r1, ip	@ tmp212, D.38479, tmp211
	and	r4, r2, #3	@ tmp213, tmp212,
	rsb	r4, ip, r4	@ NextInstId, tmp211, tmp213
	mla	fp, fp, r4, r5	@ tmp219, tmp218, NextInstId, tmp1880
	add	r9, fp, #75776	@ tmp220, tmp219,
	add	r9, r9, #888	@ tmp220, tmp220,
	ldr	r3, [r9, #0]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	r3, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L555	@,
.L448:
	movw	ip, #9587	@ tmp245,
	mul	r0, ip, r4	@ tmp244, tmp245, NextInstId
	add	r3, r5, r0, asl #3	@, tmp249, tmp1880, tmp244,
	ldr	r1, [r3, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r1, #0	@ <variable>.InstMode,
	bne	.L449	@,
	movw	ip, #:lower16:76696	@ tmp255,
	movw	fp, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:76696	@ tmp255,
	movt	fp, #:upper16:.LANCHOR0	@,
	mla	r0, ip, r4, fp	@ tmp256, tmp255, NextInstId,
	add	r3, r0, #75776	@ tmp257, tmp256,
	add	r1, r3, #880	@ tmp257, tmp257,
	ldr	r2, [r1, #0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L450	@,
.L449:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetVidStd	@
	sub	r2, r0, #10	@ tmp259, eVidStd,
	cmp	r2, #2	@ tmp259,
	bhi	.L451	@,
	ldr	lr, [sl, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L450	@,
.L451:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L450	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L450	@,
	ldr	r1, [r8, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r1, #0	@ g_DnrSleepTime,
	ble	.L452	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r7, #4092]	@ timePrevDo, timePrevDo
	ldr	r3, [r8, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	rsb	ip, r2, r0	@ tmp273, timePrevDo,
	cmp	ip, r3	@ tmp273, g_DnrSleepTime
	bcc	.L450	@,
.L452:
	bl	OSAL_GetTimeInMs	@
	add	r1, sp, #40	@,,
	str	r0, [r7, #4092]	@, timePrevDo
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetChanState	@
	movw	ip, #:lower16:76696	@ tmp283,
	movt	ip, #:upper16:76696	@ tmp283,
	ldr	r0, [sp, #136]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	mla	r2, ip, r4, r5	@ tmp284, tmp283, NextInstId, tmp1880
	add	r1, r2, #75776	@ tmp292, tmp284,
	add	fp, r1, #856	@ tmp292, tmp292,
	str	r0, [r2, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	ldr	r9, [fp, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r9, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L453	@,
	add	r2, r2, #51456	@ tmp299, tmp284,
	mov	r3, #0	@ tmp300,
	add	lr, r2, #72	@ tmp299, tmp299,
	mov	r0, r4	@, NextInstId
	str	r3, [lr, #0]	@ tmp300, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L453:
	movw	r9, #:lower16:76696	@ tmp304,
	movt	r9, #:upper16:76696	@ tmp304,
	mul	fp, r9, r4	@ tmp303, tmp304, NextInstId
	add	r9, fp, r5	@ tmp305, tmp303, tmp1880
	ldr	r0, [r9, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	bne	.L454	@,
	ldr	r1, [r9, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r1, #0	@ <variable>.s321DFrameIsProc,
	beq	.L455	@,
	add	ip, r9, #75776	@ tmp320, tmp305,
	add	r9, ip, #880	@ tmp320, tmp320,
	ldr	r3, [r9, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
.L456:
	cmp	r3, #1	@ prephitmp.1948,
	beq	.L556	@,
.L480:
	cmp	r3, #0	@ prephitmp.1948,
	bne	.L481	@,
	movw	r1, #:lower16:76696	@ tmp621,
	movt	r1, #:upper16:76696	@ tmp621,
	mla	r9, r1, r4, r5	@ tmp622, tmp621, NextInstId, tmp1880
	add	r0, r9, #75776	@ tmp623, tmp622,
	add	r0, r0, #904	@ tmp623, tmp623,
	ldr	r2, [r0, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L557	@,
.L481:
	movw	r3, #:lower16:76696	@ tmp1003,
	movt	r3, #:upper16:76696	@ tmp1003,
	mov	lr, #0	@ tmp1006,
	mla	r3, r3, r4, r5	@ tmp1004, tmp1003, NextInstId, tmp1880
	add	r2, r3, #75776	@ tmp1019, tmp1004,
	add	r0, r3, #408	@ tmp1005, tmp1004,
	add	ip, r2, #880	@ tmp1019, tmp1019,
	str	lr, [r0, #4]	@ tmp1006, <variable>.Cur1DImage.u32Is1D
	ldr	r1, [ip, #0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	str	lr, [r3, #416]	@ tmp1006, <variable>.Cur1DImage.is_processed_by_dnr
	cmp	r1, lr	@ <variable>.DNRDataSourceFlag,
	bne	.L494	@,
	ldr	lr, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	add	r1, r3, #440	@ tmp1026, tmp1004,
	cmp	lr, #1	@ <variable>.s321DFrameIsProc,
	bne	.L450	@,
	ldr	r2, [r1, #4]	@ D.38717, <variable>.s32OldImgWidth
	ldr	r9, [r3, #192]	@ Width, <variable>.Cur1DImage.image_width
	ldr	fp, [r3, #196]	@ Height, <variable>.Cur1DImage.image_height
	cmp	r2, r9	@ D.38717, Width
	beq	.L558	@,
	ldr	r0, [sp, #16]	@, %sfp
	ldr	ip, [r0, #0]	@ g_event_report.1919, g_event_report
	cmp	ip, #0	@ g_event_report.1919,
	beq	.L497	@,
.L566:
	movw	r1, #:lower16:76696	@ tmp1057,
	movt	r1, #:upper16:76696	@ tmp1057,
	strh	r2, [sp, #228]	@ movhi	@ D.38717, para
	mov	r0, r4	@, NextInstId
	mla	lr, r1, r4, r5	@ tmp1058, tmp1057, NextInstId, tmp1880
	strh	r9, [sp, #232]	@ movhi	@ Width, para
	strh	fp, [sp, #234]	@ movhi	@ tmp2, para
	mov	r1, #8	@,
	add	r2, sp, #228	@,,
	ldr	r3, [lr, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	strh	r3, [sp, #230]	@ movhi	@ <variable>.s32OldImgHeight, para
	blx	ip	@ g_event_report.1919
.L497:
	movw	r0, #:lower16:76696	@ tmp1065,
	movt	r0, #:upper16:76696	@ tmp1065,
	mla	ip, r0, r4, r5	@ tmp1066, tmp1065, NextInstId, tmp1880
	str	fp, [ip, #448]	@ Height, <variable>.s32OldImgHeight
	str	r9, [ip, #444]	@ Width, <variable>.s32OldImgWidth
.L496:
	mov	r0, r4	@, NextInstId
	add	r1, sp, #316	@,,
	bl	DNR_Fsp_ShowPic	@
	cmp	r0, #0	@,
	bne	.L450	@,
.L494:
	movw	r1, #:lower16:76696	@ tmp1085,
	movt	r1, #:upper16:76696	@ tmp1085,
	mla	r2, r1, r4, r5	@ tmp1086, tmp1085, NextInstId, tmp1880
	ldr	r3, [r2, #348]	@ temp.1921, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	lr, r3, #10	@ tmp1088, temp.1921,
	cmp	lr, #2	@ tmp1088,
	bhi	.L498	@,
.L565:
	ldr	ip, [sl, #0]	@ g_VdmCharacter, g_VdmCharacter
	movw	r9, #:lower16:g_VdmCharacter	@ tmp1900,
	movt	r9, #:upper16:g_VdmCharacter	@ tmp1900,
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L450	@,
.L499:
	add	r7, sp, #228	@ tmp1874,,
	movw	sl, #:lower16:USE_FF_APT_EN	@ tmp1093,
	movt	sl, #:upper16:USE_FF_APT_EN	@ tmp1093,
	mov	r1, #44	@,
	mov	r0, r7	@, tmp1874
	bl	__memzero	@
	ldr	r6, [sl, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r6, #1	@ USE_FF_APT_EN,
	beq	.L559	@,
.L500:
	mov	r8, #0	@ SourceImgStoreType,
.L501:
	movw	lr, #:lower16:g_eVdmVersion	@ tmp1108,
	movt	lr, #:upper16:g_eVdmVersion	@ tmp1108,
	ldr	r3, [lr, #0]	@ g_eVdmVersion.1927, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.1927,
	beq	.L560	@,
	cmp	r3, #4	@ g_eVdmVersion.1927,
	beq	.L504	@,
	rsbs	r3, r8, #1	@ prephitmp.1825, SourceImgStoreType
	movcc	r3, #0	@ prephitmp.1825
	uxtb	r8, r8	@ prephitmp.1827, SourceImgStoreType
.L503:
	movw	r6, #:lower16:76696	@ tmp1128,
	movt	r6, #:upper16:76696	@ tmp1128,
	str	r3, [sp, #268]	@ prephitmp.1825, DetPara.IsFrameStored
	mov	r0, r7	@, tmp1874
	mla	r6, r6, r4, r5	@ tmp1129, tmp1128, NextInstId, tmp1880
	ldr	r2, [r6, #192]	@ temp.1935, <variable>.Cur1DImage.image_width
	ldr	r3, [r6, #196]	@ temp.1937, <variable>.Cur1DImage.image_height
	ldr	lr, [r6, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	add	fp, r2, #15	@ tmp1151, temp.1935,
	ldr	r1, [r6, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	add	ip, r3, #15	@ tmp1153, temp.1937,
	mov	sl, fp, asr #4	@ tmp1152, tmp1151,
	str	r2, [sp, #248]	@ temp.1935, DetPara.PicWidth
	mov	r7, ip, asr #4	@ tmp1154, tmp1153,
	str	sl, [sp, #260]	@ tmp1152, DetPara.MbWidth
	str	lr, [sp, #236]	@ <variable>.Cur1DImage.luma_vir_addr, DetPara.pPicBufY
	str	r1, [sp, #256]	@ <variable>.Cur1DImage.image_stride, DetPara.PicStride
	str	r7, [sp, #264]	@ tmp1154, DetPara.MbHeight
	str	r3, [sp, #252]	@ temp.1937, DetPara.PicHeight
	bl	DetPic	@
	cmp	r0, #0	@ D.38766,
	str	r0, [r6, #28]	@ D.38766, <variable>.IsRwzb
	bne	.L505	@,
	ldr	r3, [r6, #348]	@ temp.1940, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r3, #8	@ temp.1940,
	beq	.L505	@,
	cmp	r3, #1	@ temp.1940,
	beq	.L505	@,
	ldr	r3, [sp, #260]	@ DetPara.MbWidth, DetPara.MbWidth
	cmp	r3, #45	@ DetPara.MbWidth,
	bgt	.L505	@,
	ldr	r2, [sp, #264]	@ DetPara.MbHeight, DetPara.MbHeight
	cmp	r2, #36	@ DetPara.MbHeight,
	bgt	.L505	@,
	ldr	r7, [r6, #32]	@ <variable>.userSetRwzb_state, <variable>.userSetRwzb_state
	cmp	r7, #1	@ <variable>.userSetRwzb_state,
	beq	.L505	@,
	mov	r3, #1	@ tmp1210,
	str	r0, [r6, #44]	@ D.38766, <variable>.enDC
	strb	r0, [sp, #144]	@ D.38766, DnrCfg.dc_en
	strb	r3, [sp, #145]	@ tmp1210, DnrCfg.db_en
	str	r3, [r6, #36]	@ tmp1210, <variable>.enDR
	strb	r3, [sp, #146]	@ tmp1210, DnrCfg.dr_en
	str	r3, [r6, #40]	@ tmp1210, <variable>.enDB
.L507:
	movw	r7, #:lower16:.LANCHOR2	@ tmp1882,
	movt	r7, #:upper16:.LANCHOR2	@ tmp1882,
	ldr	r1, [r7, #-4088]	@ g_DREnable.562, g_DREnable
	cmp	r1, #0	@ g_DREnable.562,
	ldreqsb	r1, [sp, #146]	@ iftmp.561, DnrCfg.dr_en
	beq	.L509	@,
	cmp	r1, #1	@ g_DREnable.562,
	movne	r1, #0	@, iftmp.561
	moveq	r1, #1	@, iftmp.561
.L509:
	movw	ip, #:lower16:76696	@ tmp1236,
	movt	ip, #:upper16:76696	@ tmp1236,
	ldr	r2, [r7, #-4084]	@ g_DBEnable.564, g_DBEnable
	mla	r6, ip, r4, r5	@ tmp1237, tmp1236, NextInstId, tmp1880
	cmp	r2, #0	@ g_DBEnable.564,
	strb	r1, [sp, #146]	@ iftmp.561, DnrCfg.dr_en
	str	r1, [r6, #36]	@ iftmp.561, <variable>.enDR
	ldreqsb	r2, [sp, #145]	@ iftmp.563, DnrCfg.db_en
	beq	.L511	@,
	cmp	r2, #1	@ g_DBEnable.564,
	movne	r2, #0	@, iftmp.563
	moveq	r2, #1	@, iftmp.563
.L511:
	movw	r0, #:lower16:76696	@ tmp1245,
	movt	r0, #:upper16:76696	@ tmp1245,
	ldr	r1, [r7, #-4080]	@ g_DCEnable.566, g_DCEnable
	mla	sl, r0, r4, r5	@ tmp1246, tmp1245, NextInstId, tmp1880
	cmp	r1, #0	@ g_DCEnable.566,
	strb	r2, [sp, #145]	@ iftmp.563, DnrCfg.db_en
	str	r2, [sl, #40]	@ iftmp.563, <variable>.enDB
	ldreqsb	r1, [sp, #144]	@ iftmp.565, DnrCfg.dc_en
	beq	.L513	@,
	cmp	r1, #1	@ g_DCEnable.566,
	movne	r1, #0	@, iftmp.565
	moveq	r1, #1	@, iftmp.565
.L513:
	movw	ip, #:lower16:76696	@ tmp1254,
	movt	ip, #:upper16:76696	@ tmp1254,
	strb	r1, [sp, #144]	@ iftmp.565, DnrCfg.dc_en
	movw	r6, #:lower16:76696	@ tmp1285,
	mla	r0, ip, r4, r5	@ tmp1255, tmp1254, NextInstId, tmp1880
	movt	r6, #:upper16:76696	@ tmp1285,
	mla	fp, r6, r4, r5	@ tmp1286, tmp1285, NextInstId, tmp1880
	ldr	r2, [r0, #348]	@ temp.1941, <variable>.Cur1DImage.ImageDnr.video_standard
	str	r1, [r0, #44]	@ iftmp.565, <variable>.enDC
	add	ip, fp, #192	@ tmp1287, tmp1286,
	cmp	r2, #1	@ temp.1941,
	str	r2, [sp, #160]	@ temp.1941, DnrCfg.video_standard
	ldreq	r2, [r0, #364]	@ <variable>.Cur1DImage.ImageDnr.Rangedfrm, <variable>.Cur1DImage.ImageDnr.Rangedfrm
	movne	r0, #3	@ tmp1279,
	ldreqb	r0, [r0, #342]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.vc1_profile, <variable>.Cur1DImage.ImageDnr.vc1_profile
	strb	r8, [sp, #147]	@ prephitmp.1827, DnrCfg.pic_structure
	streq	r2, [sp, #212]	@ <variable>.Cur1DImage.ImageDnr.Rangedfrm, DnrCfg.Rangedfrm
	cmp	r8, #0	@ prephitmp.1827,
	strb	r0, [sp, #153]	@ tmp1279, DnrCfg.vc1_profile
	movw	r8, #:lower16:76696	@ tmp1312,
	ldr	sl, [fp, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	movt	r8, #:upper16:76696	@ tmp1312,
	mov	r0, #392	@ tmp1320,
	add	r3, sl, #15	@ tmp1288, <variable>.Cur1DImage.image_width,
	ldr	sl, [r9, #0]	@ g_VdmCharacter, g_VdmCharacter
	mul	r6, r8, r4	@ tmp1311, tmp1312, NextInstId
	mov	r3, r3, lsr #4	@ D.38809, tmp1288,
	str	r3, [sp, #168]	@ D.38809, DnrCfg.pic_width_in_mb
	ldr	r1, [ip, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	add	ip, r6, r5	@ tmp1313, tmp1311, tmp1880
	add	r2, r1, #15	@ tmp1296, <variable>.Cur1DImage.image_height,
	ldr	r1, [sp, #316]	@ PicBufID, PicBufID
	mov	r2, r2, lsr #4	@ CurPicHeightInMb, tmp1296,
	mla	fp, r0, r1, r6	@ tmp1323, tmp1320, PicBufID, tmp1311
	addne	r2, r2, #1	@ tmp1307, tmp1306,
	movw	r6, #26560	@ tmp1318,
	movne	r2, r2, lsr #1	@ CurPicHeightInMb, tmp1307,
	tst	sl, #4	@ g_VdmCharacter,
	add	r8, fp, r5	@ tmp1324, tmp1323, tmp1880
	mov	fp, r3, asl #4	@ tmp1327, D.38809,
	mul	r0, r3, r2	@ tmp1308, D.38809, CurPicHeightInMb
	ldr	r6, [r8, r6]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movne	r3, r3, asl #4	@ tmp1334, D.38809,
	add	r8, fp, #63	@ tmp1328, tmp1327,
	movw	fp, #:lower16:76696	@ tmp1340,
	movt	fp, #:upper16:76696	@ tmp1340,
	addne	r3, r3, #79	@ tmp1335, tmp1334,
	ldr	sl, [ip, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	bicne	r3, r3, #63	@ tmp1336, tmp1335,
	bic	ip, r8, #63	@ tmp1329, tmp1328,
	str	ip, [sp, #204]	@ tmp1329, DnrCfg.ddr_stride
	movw	r8, #:lower16:76656	@ tmp1383,
	strne	r3, [sp, #204]	@ tmp1336, DnrCfg.ddr_stride
	movt	r8, #:upper16:76656	@ tmp1383,
	mla	r3, fp, r4, r5	@ tmp1341, tmp1340, NextInstId, tmp1880
	str	r0, [sp, #164]	@ tmp1308, DnrCfg.mbtodec
	str	sl, [sp, #176]	@ <variable>.Cur1DImage.luma_phy_addr, DnrCfg.dnr_ystaddr_1d
	str	r6, [sp, #180]	@ <variable>.luma_2d_phy_addr, DnrCfg.dnr_ystaddr_2d
	str	r2, [sp, #172]	@ CurPicHeightInMb, DnrCfg.pic_height_in_mb
	add	r0, r3, #352	@ tmp1365, tmp1341,
	ldr	sl, [r3, r8]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	ldrb	r6, [r3, #341]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.chroma_format_idc, <variable>.Cur1DImage.ImageDnr.chroma_format_idc
	ldrb	r8, [r3, #343]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.use_pic_qp_en, <variable>.Cur1DImage.ImageDnr.use_pic_qp_en
	cmp	sl, #1	@ <variable>.DNRDataSourceFlag,
	ldr	fp, [r0, #8]	@ <variable>.Cur1DImage.ImageDnr.QP_V, <variable>.Cur1DImage.ImageDnr.QP_V
	ldr	sl, [r3, #352]	@ <variable>.Cur1DImage.ImageDnr.QP_Y, <variable>.Cur1DImage.ImageDnr.QP_Y
	ldr	ip, [r0, #4]	@ <variable>.Cur1DImage.ImageDnr.QP_U, <variable>.Cur1DImage.ImageDnr.QP_U
	ldrb	r0, [r3, #9]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	strb	r8, [sp, #154]	@ <variable>.Cur1DImage.ImageDnr.use_pic_qp_en, DnrCfg.use_pic_qp_en
	strb	r6, [sp, #148]	@ <variable>.Cur1DImage.ImageDnr.chroma_format_idc, DnrCfg.chroma_format_idc
	str	sl, [sp, #192]	@ <variable>.Cur1DImage.ImageDnr.QP_Y, DnrCfg.QP_Y
	str	ip, [sp, #196]	@ <variable>.Cur1DImage.ImageDnr.QP_U, DnrCfg.QP_U
	str	fp, [sp, #200]	@ <variable>.Cur1DImage.ImageDnr.QP_V, DnrCfg.QP_V
	strb	r0, [sp, #155]	@ <variable>.s32MirrorEn, DnrCfg.s32MirrorEn
	ldreq	r3, [r3, #420]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.Cur1DImage.u32Circumrotate
	streqb	r3, [sp, #155]	@ <variable>.Cur1DImage.u32Circumrotate, DnrCfg.s32MirrorEn
	ldr	r3, [r9, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L520	@,
	movw	r3, #:lower16:76696	@ tmp1403,
	movt	r3, #:upper16:76696	@ tmp1403,
	movw	r6, #:lower16:76624	@ tmp1409,
	movt	r6, #:upper16:76624	@ tmp1409,
	mla	r3, r3, r4, r5	@ tmp1404, tmp1403, NextInstId, tmp1880
	add	ip, r3, #75776	@ tmp1413, tmp1404,
	add	r0, ip, #848	@ tmp1413, tmp1413,
	ldr	ip, [r3, r6]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	r6, [r0, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldrb	r3, [r3, #10]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	ip, [sp, #220]	@ <variable>.s32VcmpWmStartLine, DnrCfg.s32VcmpWmStartLine
	str	r6, [sp, #224]	@ <variable>.s32VcmpWmEndLine, DnrCfg.s32VcmpWmEndLine
	strb	r3, [sp, #156]	@ <variable>.s32VcmpEn, DnrCfg.s32VcmpEn
.L520:
	ldrb	r3, [sp, #147]	@ zero_extendqisi2	@ DnrCfg.pic_structure, DnrCfg.pic_structure
	cmp	r3, #4	@ DnrCfg.pic_structure,
	beq	.L561	@,
	movw	r8, #:lower16:76696	@ tmp1606,
	movt	r8, #:upper16:76696	@ tmp1606,
	cmp	r3, #2	@ DnrCfg.pic_structure,
	mla	r3, r8, r4, r5	@ tmp1607, tmp1606, NextInstId, tmp1880
	mov	r8, #0	@ tmp1609,
	ldrb	r0, [r3, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	ldrb	r6, [r3, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	ldrb	lr, [r3, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	ldrb	ip, [r3, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	str	r8, [r3, #24]	@ tmp1609, <variable>.NeedStartAgain
	strb	r6, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	lr, [sp, #151]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	ip, [sp, #150]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r0, [sp, #149]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	beq	.L526	@,
.L524:
	movw	r2, #:lower16:76696	@ tmp1660,
	movt	r2, #:upper16:76696	@ tmp1660,
	movw	ip, #:lower16:76656	@ tmp1658,
	movt	ip, #:upper16:76656	@ tmp1658,
	mul	r2, r2, r4	@ tmp1659, tmp1660, NextInstId
	add	r0, r2, r5	@ tmp1661, tmp1659, tmp1880
	ldr	r3, [r0, ip]	@ temp.1966, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ temp.1966,
	bne	.L528	@,
	mov	r6, #392	@ tmp1667,
	mla	r0, r6, r1, r2	@ tmp1670, tmp1667, PicBufID, tmp1659
	ldr	r1, .L575	@ tmp1671,
	add	r6, r0, r1	@ pImageLogic, tmp1670, tmp1671
.L529:
	cmp	r6, #0	@ pImageLogic,
	beq	.L530	@,
	movw	sl, #:lower16:76696	@ tmp1683,
	movt	sl, #:upper16:76696	@ tmp1683,
	mov	r2, #392	@,
	mov	r0, r6	@, pImageLogic
	mla	sl, sl, r4, r5	@ tmp1684, tmp1683, NextInstId, tmp1880
	ldr	r8, [r6, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	fp, [r6, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	add	r1, sl, #48	@, tmp1684,
	bl	memcpy	@
	ldr	r0, [sp, #204]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	str	fp, [r6, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	movw	ip, #:lower16:76656	@ tmp1696,
	str	r8, [r6, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movt	ip, #:upper16:76656	@ tmp1696,
	str	r0, [r6, #172]	@ DnrCfg.ddr_stride, <variable>.image_stride
	ldr	r3, [sp, #172]	@ D.38819, DnrCfg.pic_height_in_mb
	ldr	r1, [sp, #204]	@ temp.1968, DnrCfg.ddr_stride
	ldrb	r0, [sp, #147]	@ zero_extendqisi2	@ DnrCfg.pic_structure, DnrCfg.pic_structure
	mov	r2, r3, asl #4	@ tmp1692, D.38819,
	cmp	r0, #0	@ DnrCfg.pic_structure,
	mul	r3, r1, r2	@ tmp1693, temp.1968, tmp1692
	moveq	r0, #1	@ iftmp.569,
	movne	r0, #2	@ iftmp.569,
	mla	r0, r0, r3, r8	@ prephitmp.1828, iftmp.569, tmp1693, luma_2d_phy_addr
	str	r0, [r6, #124]	@ prephitmp.1828, <variable>.chrom_2d_phy_addr
	ldr	r2, [sl, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #1	@ <variable>.DNRDataSourceFlag,
	ldreq	r2, [sp, #172]	@ DnrCfg.pic_height_in_mb, DnrCfg.pic_height_in_mb
	ldreq	r0, [sp, #204]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	moveq	r2, r2, asl #4	@ tmp1702, DnrCfg.pic_height_in_mb,
	mlaeq	r0, r0, r2, r8	@ prephitmp.1828, DnrCfg.ddr_stride, tmp1702, luma_2d_phy_addr
	streq	r0, [r6, #124]	@ prephitmp.1828, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	movw	r3, #:lower16:76696	@ tmp1711,
	movt	r3, #:upper16:76696	@ tmp1711,
	ldr	ip, [r6, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r1, [r6, #124]	@ <variable>.chrom_2d_phy_addr, <variable>.chrom_2d_phy_addr
	movw	r2, #:lower16:76656	@ tmp1738,
	mla	r3, r3, r4, r5	@ tmp1712, tmp1711, NextInstId, tmp1880
	str	ip, [r6, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r1, [r6, #92]	@ <variable>.chrom_2d_phy_addr, <variable>.top_chrom_phy_addr
	movt	r2, #:upper16:76656	@ tmp1738,
	ldr	lr, [r3, #424]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.Cur1DImage.u32IsLastFrame
	str	r0, [r6, #52]	@, <variable>.chrom_2d_vir_addr
	ldr	r0, [r3, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	str	r0, [r6, #356]	@ <variable>.IsRwzb, <variable>.optm_inf.Rwzb
	ldr	r0, [sp, #204]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	add	ip, r0, ip	@ tmp1717, DnrCfg.ddr_stride, <variable>.luma_2d_phy_addr
	str	ip, [r6, #96]	@ tmp1717, <variable>.btm_luma_phy_addr
	ldr	ip, [sp, #204]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	mov	r0, #0	@ tmp1735,
	str	lr, [r6, #376]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.u32IsLastFrame
	add	r1, ip, r1	@ tmp1720, DnrCfg.ddr_stride, <variable>.chrom_2d_phy_addr
	str	r1, [r6, #100]	@ tmp1720, <variable>.btm_chrom_phy_addr
	ldr	ip, [r3, #460]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r0, [r6, #364]	@ tmp1735, <variable>.u32Is1D
	mov	r0, #1	@ tmp1736,
	str	r0, [r6, #368]	@ tmp1736, <variable>.is_processed_by_dnr
	str	ip, [r6, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
	ldr	r2, [r3, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #0	@ <variable>.DNRDataSourceFlag,
	bne	.L535	@,
	add	r1, r3, #75776	@ tmp1749, tmp1712,
	add	ip, r1, #904	@ tmp1749, tmp1749,
	ldr	lr, [ip, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, r0	@ <variable>.stDSDParam.s32DSDenable,
	streq	r2, [r6, #372]	@ <variable>.DNRDataSourceFlag, <variable>.u32Circumrotate
	addeq	r3, r3, #75776	@ tmp1757, tmp1712,
	addeq	r3, r3, #912	@ tmp1757, tmp1757,
	ldreq	r3, [r3, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	streqb	r3, [sp, #155]	@ <variable>.stDSDParam.s32MirrorEn, DnrCfg.s32MirrorEn
.L535:
	ldr	r2, [r9, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #4	@ g_VdmCharacter,
	beq	.L536	@,
	movw	r1, #:lower16:76696	@ tmp1766,
	movt	r1, #:upper16:76696	@ tmp1766,
	movw	r2, #:lower16:76624	@ tmp1779,
	movt	r2, #:upper16:76624	@ tmp1779,
	mla	r1, r1, r4, r5	@ tmp1767, tmp1766, NextInstId, tmp1880
	ldr	sl, [r6, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	lr, [r6, #148]	@ <variable>.image_height, <variable>.image_height
	add	r8, sl, #15	@ tmp1795, <variable>.image_width,
	add	r0, r1, #8	@ tmp1768, tmp1767,
	add	r3, r1, #75776	@ tmp1783, tmp1767,
	add	r3, r3, #848	@ tmp1783, tmp1783,
	add	lr, lr, #15	@ tmp1792, <variable>.image_height,
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ temp.1987, <variable>.s32VcmpEn
	bic	r8, r8, #15	@ tmp1797, tmp1795,
	bic	sl, lr, #15	@ tmp1794, tmp1792,
	cmp	ip, #1	@ temp.1987,
	strb	ip, [r6, #296]	@ temp.1987, <variable>.ImageDnr.s32VcmpEn
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	strb	ip, [r6, #297]	@ <variable>.s32WmEn, <variable>.ImageDnr.s32WmEn
	ldr	r0, [r1, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [r6, #320]	@ <variable>.s32VcmpWmStartLine, <variable>.ImageDnr.s32VcmpWmStartLine
	ldr	r3, [r3, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	sl, [r6, #332]	@ tmp1794, <variable>.ImageDnr.s32VcmpFrameHeight
	str	r8, [r6, #328]	@ tmp1797, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r3, [r6, #324]	@ <variable>.s32VcmpWmEndLine, <variable>.ImageDnr.s32VcmpWmEndLine
	beq	.L562	@,
.L536:
	movw	r2, #:lower16:76696	@ tmp1811,
	movt	r2, #:upper16:76696	@ tmp1811,
	movw	r6, #:lower16:g_dnr_hal_fun_ptr	@ tmp1873,
	movt	r6, #:upper16:g_dnr_hal_fun_ptr	@ tmp1873,
	mla	ip, r2, r4, r5	@ tmp1812, tmp1811, NextInstId, tmp1880
	ldr	r3, [r6, #12]	@ D.38953, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	ldr	r0, [sp, #316]	@ PicBufID, PicBufID
	cmp	r3, #0	@ D.38953,
	str	r0, [ip, #452]	@ PicBufID, <variable>.CurImageBufID
	beq	.L537	@,
	blx	r3	@ D.38953
.L538:
	ldr	r3, [r6, #8]	@ D.38957, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.38957,
	beq	.L539	@,
	add	r0, sp, #144	@,,
	blx	r3	@ D.38957
.L540:
	movw	r3, #:lower16:76696	@ tmp1821,
	movt	r3, #:upper16:76696	@ tmp1821,
	movw	r0, #:lower16:76656	@ tmp1827,
	movt	r0, #:upper16:76656	@ tmp1827,
	mla	r1, r3, r4, r5	@ tmp1822, tmp1821, NextInstId, tmp1880
	ldr	r3, [r6, #16]	@ D.38964, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	mov	ip, #0	@ tmp1824,
	add	lr, r1, #75776	@ tmp1831, tmp1822,
	add	r2, lr, #880	@ tmp1831, tmp1831,
	ldr	lr, [r1, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	strb	ip, [r1, #8]	@ tmp1824, <variable>.DecChanRstFlag
	cmp	lr, #1	@ <variable>.DNRDataSourceFlag,
	movne	lr, ip	@, tmp1887,
	cmp	r3, ip	@ D.38964,
	str	lr, [r2, #4]	@ tmp1887, <variable>.DNRCaptureStartFlag
	beq	.L543	@,
	blx	r3	@ D.38964
.L544:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_VfmwGlobalStat	@ tmp1848,
	movt	r2, #:upper16:g_VfmwGlobalStat	@ tmp1848,
	str	r0, [r2, #20]	@, <variable>.u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L545	@,
	bl	OSAL_GetTimeInMs	@
	add	r7, r7, r4, asl #2	@, tmp1852, tmp1882, NextInstId,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp1856,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp1856,
	ldr	r2, [r7, #-4076]	@ tmp1855, last_rec_pos_time
	ldr	r1, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r2, r0	@ tmp1854, tmp1855, currtime
	cmp	ip, r1	@ tmp1854, g_TraceFramePeriod
	strhi	r0, [r7, #-4076]	@ currtime, last_rec_pos_time
.L545:
	ldr	ip, [sp, #32]	@, %sfp
	movw	r0, #9587	@ tmp1865,
	mov	lr, #1	@ tmp1871,
	str	r4, [ip, #0]	@ NextInstId,
	mul	r4, r0, r4	@ tmp1864, tmp1865, NextInstId
	mov	r0, #0	@ D.38684,
	add	r5, r5, r4, asl #3	@, tmp1869, tmp1880, tmp1864,
	str	lr, [r5, #20]	@ tmp1871, <variable>.InstMode
	b	.L489	@
.L557:
	ldr	lr, [r9, #440]	@, <variable>.s321DFrameIsProc
	cmp	lr, #1	@,
	str	lr, [sp, #4]	@, %sfp
	bne	.L450	@,
	add	fp, r9, #75776	@ tmp643, tmp622,
	ldr	r0, [r0, #8]	@, <variable>.stDSDParam.s32ThrWidth
	add	r1, fp, #912	@ tmp643, tmp643,
	ldr	r2, [r9, #196]	@, <variable>.Cur1DImage.image_height
	ldr	ip, [r9, #192]	@, <variable>.Cur1DImage.image_width
	ldr	fp, [r1, #4]	@, <variable>.stDSDParam.s32ThrHeight
	cmp	ip, r0	@,
	cmple	r2, fp	@,,
	ble	.L481	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	fp, sp, #272	@ tmp1875,,
	ldr	lr, [r1, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	mov	r1, #44	@,
	str	r3, [r9, #416]	@ prephitmp.1948, <variable>.Cur1DImage.is_processed_by_dnr
	str	r0, [r9, #412]	@, <variable>.Cur1DImage.u32Is1D
	mov	r0, fp	@, tmp1875
	str	lr, [r9, #420]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.Cur1DImage.u32Circumrotate
	bl	__memzero	@
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r3, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L563	@,
.L482:
	mov	r2, #0	@ s32SourceImgStoreType,
.L483:
	ldr	r9, [sp, #24]	@, %sfp
	ldr	r3, [r9, #0]	@ g_eVdmVersion.557, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.557,
	beq	.L564	@,
	cmp	r3, #4	@ g_eVdmVersion.557,
	beq	.L486	@,
	rsbs	r2, r2, #1	@ prephitmp.1831, s32SourceImgStoreType
	movcc	r2, #0	@ prephitmp.1831
.L485:
	movw	r9, #:lower16:76696	@ tmp730,
	movt	r9, #:upper16:76696	@ tmp730,
	mov	r0, fp	@, tmp1875
	str	r2, [sp, #312]	@ prephitmp.1831, stDetPara.IsFrameStored
	mul	fp, r9, r4	@ tmp729, tmp730, NextInstId
	add	r9, fp, r5	@ tmp731, tmp729, tmp1880
	add	r3, r9, #192	@ tmp739, tmp731,
	ldr	r2, [r9, #192]	@ D.38650, <variable>.Cur1DImage.image_width
	ldr	lr, [r3, #4]	@ D.38651, <variable>.Cur1DImage.image_height
	add	ip, r2, #15	@ tmp753, D.38650,
	add	r1, lr, #15	@ tmp755, D.38651,
	mov	ip, ip, asr #4	@ tmp754, tmp753,
	str	ip, [sp, #304]	@ tmp754, stDetPara.MbWidth
	ldr	ip, [r9, #80]	@, <variable>.Cur1DImage.luma_vir_addr
	mov	r1, r1, asr #4	@ tmp756, tmp755,
	str	ip, [sp, #280]	@, stDetPara.pPicBufY
	ldr	ip, [r9, #220]	@, <variable>.Cur1DImage.image_stride
	str	r1, [sp, #308]	@ tmp756, stDetPara.MbHeight
	str	r2, [sp, #292]	@ D.38650, stDetPara.PicWidth
	str	ip, [sp, #300]	@, stDetPara.PicStride
	str	r3, [sp, #8]	@,
	str	lr, [sp, #296]	@ D.38651, stDetPara.PicHeight
	bl	DetPic	@
	ldr	r1, [sp, #8]	@,
	add	r3, r9, #75776	@ tmp809, tmp731,
	ldr	r2, [r9, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	r3, r3, #856	@ tmp809, tmp809,
	ldr	ip, [r1, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	add	r1, r2, #255	@ tmp782, <variable>.Cur1DImage.image_width,
	bic	r1, r1, #255	@ tmp784, tmp782,
	ldr	r3, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	ip, ip, #31	@ tmp791, <variable>.Cur1DImage.image_height,
	ldr	r2, [r9, #136]	@ <variable>.Cur1DImage.top_luma_phy_addr, <variable>.Cur1DImage.top_luma_phy_addr
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	mov	ip, ip, lsr #5	@ tmp793, tmp791,
	mul	r1, ip, r1	@ tmp794, tmp793, tmp784
	add	r2, r2, r1, asl #5	@, tmp803, <variable>.Cur1DImage.top_luma_phy_addr, tmp794,
	str	r2, [r9, #140]	@ tmp803, <variable>.Cur1DImage.top_chrom_phy_addr
	str	r0, [r9, #404]	@ D.38659, <variable>.Cur1DImage.optm_inf.Rwzb
	str	r0, [r9, #28]	@ D.38659, <variable>.IsRwzb
	blt	.L487	@,
	ldr	r2, .L575+4	@,
	add	r3, fp, #40	@ tmp837, tmp729,
	ldr	lr, [r9, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r0, fp, #968	@ tmp842, tmp729,
	add	r3, r2, r3	@ temp.1903,, tmp837
	ldr	r1, .L575+4	@,
	ldr	r2, [r9, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	ip, lr, #6	@ tmp823, <variable>.Cur1DImage.image_id,
	add	r0, r1, r0	@,, tmp842
	mov	r1, r3	@, temp.1903
	rsb	lr, r2, ip	@ tmp832, <variable>.Cur1DImage.resetNum, tmp823
	str	lr, [r9, #224]	@ tmp832, <variable>.Cur1DImage.image_id
	str	r3, [sp, #8]	@,
	bl	IMGQUE_InsertImage	@
	ldr	r3, [sp, #8]	@,
	cmp	r0, #1	@,
	bne	.L530	@,
	ldr	fp, [sp, #16]	@, %sfp
	movw	r1, #19174	@ tmp852,
	ldr	r2, [r9, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	mov	lr, #0	@ tmp867,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	ldr	ip, [fp, #0]	@ g_event_report, g_event_report
	str	lr, [r9, #440]	@ tmp867, <variable>.s321DFrameIsProc
	mla	lr, r1, r4, r2	@ tmp853, tmp852, NextInstId, <variable>.Cur1DImage.image_id
	cmp	ip, #0	@ g_event_report,
	add	r1, r0, lr, asl #2	@, tmp858,, tmp853,
	mov	r0, #2	@ tmp860,
	str	r0, [r1, #720]	@ tmp860, <variable>.LogicImageIsUsed
	beq	.L450	@,
	add	r2, sp, #320	@ tmp871,,
	mov	r0, r4	@, NextInstId
	mov	r1, #5	@,
	str	r3, [r2, #-92]!	@ temp.1903, para
	blx	ip	@ g_event_report
.L450:
	add	r6, r6, #1	@ i, i,
	cmp	r6, #4	@ i,
	bne	.L546	@,
.L527:
	mvn	r0, #0	@ D.38684,
.L489:
	add	sp, sp, #324	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L454:
	movw	r1, #:lower16:76696	@ tmp1085,
	movt	r1, #:upper16:76696	@ tmp1085,
	ldr	r3, [r9, #452]	@ <variable>.CurImageBufID, <variable>.CurImageBufID
	mla	r2, r1, r4, r5	@ tmp1086, tmp1085, NextInstId, tmp1880
	str	r3, [sp, #316]	@ <variable>.CurImageBufID, PicBufID
	ldr	r3, [r2, #348]	@ temp.1921, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	lr, r3, #10	@ tmp1088, temp.1921,
	cmp	lr, #2	@ tmp1088,
	bls	.L565	@,
.L498:
	cmp	r3, #4	@ temp.1921,
	beq	.L450	@,
	cmp	r3, #14	@ temp.1921,
	beq	.L450	@,
	movw	r9, #:lower16:g_VdmCharacter	@ tmp1900,
	movt	r9, #:upper16:g_VdmCharacter	@ tmp1900,
	b	.L499	@
.L555:
	ldr	r0, [fp, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r0, #1	@ <variable>.s321DFrameIsProc,
	beq	.L448	@,
	str	r3, [sp, #8]	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ tmp242,
	str	r2, [r9, #0]	@ tmp242, <variable>.DNRCaptureEnableFlag
	add	fp, fp, #75776	@ tmp234, tmp219,
	ldr	ip, [sp, #8]	@,
	add	fp, fp, #880	@ tmp234, tmp234,
	str	ip, [fp, #0]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L448	@
.L455:
	add	lr, r9, #75776	@ tmp326, tmp305,
	add	r2, lr, #880	@ tmp326, tmp326,
	ldr	r3, [r2, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ prephitmp.1948,
	bne	.L456	@,
	ldr	ip, .L575+4	@,
	add	r1, fp, #40	@ tmp331, tmp303,
	mov	r0, r4	@, NextInstId
	str	r2, [sp, #12]	@,
	add	r3, ip, r1	@,, tmp331
	str	r3, [sp, #36]	@, %sfp
	mov	r1, r3	@,
	bl	VCTRL_GetChanImage	@
	ldr	r2, [sp, #12]	@,
	cmp	r0, #0	@,
	bne	.L457	@,
	add	r0, r9, #75776	@ tmp337, tmp305,
	add	r1, r0, #856	@ tmp337, tmp337,
	ldr	r3, [r1, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	cmp	r3, #1	@ <variable>.u32BackwardOptimizeFlag,
	beq	.L458	@,
	ldr	lr, [r9, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r3, #1	@ tmp345,
	str	r3, [r9, #440]	@ tmp345, <variable>.s321DFrameIsProc
	add	r9, r9, #192	@ tmp351, tmp305,
	cmp	lr, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L459	@,
	ldr	ip, [r9, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	ip, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L459	@,
	ldr	r3, [r1, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L464	@,
.L550:
	ldr	r3, [r2, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
	cmp	r3, #1	@ prephitmp.1948,
	bne	.L480	@,
.L556:
	movw	r9, #:lower16:76696	@ tmp584,
	movt	r9, #:upper16:76696	@ tmp584,
	mov	r2, #392	@,
	mla	r9, r9, r4, r5	@ tmp585, tmp584, NextInstId, tmp1880
	add	ip, r9, #75776	@ tmp592, tmp585,
	add	r0, r9, #48	@, tmp585,
	add	lr, ip, #896	@ tmp592, tmp592,
	ldr	r1, [lr, #4]	@, <variable>.pCaptureImageIn
	str	r3, [sp, #8]	@,
	bl	memcpy	@
	ldr	r1, [sp, #8]	@,
	ldr	r0, [r9, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	str	r1, [r9, #440]	@ prephitmp.1948, <variable>.s321DFrameIsProc
	add	r9, r9, #75776	@ tmp617, tmp585,
	add	r9, r9, #880	@ tmp617, tmp617,
	str	r0, [sp, #316]	@ <variable>.Cur1DImage.image_id, PicBufID
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
	b	.L480	@
.L558:
	ldr	r1, [r3, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r1, fp	@ <variable>.s32OldImgHeight, Height
	beq	.L496	@,
	ldr	r0, [sp, #16]	@, %sfp
	ldr	ip, [r0, #0]	@ g_event_report.1919, g_event_report
	cmp	ip, #0	@ g_event_report.1919,
	bne	.L566	@,
	b	.L497	@
.L457:
	mov	r0, r4	@, NextInstId
	str	r2, [sp, #12]	@,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r2, [sp, #12]	@,
	cmp	r0, #1	@,
	ble	.L550	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, .L575+4	@,
	add	r2, fp, #968	@ tmp562, tmp303,
	add	r0, ip, r2	@,, tmp562
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1883,
	mov	r1, r0	@ ret.1883,
	beq	.L567	@,
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L479	@,
	add	r2, sp, #320	@ tmp573,,
	mov	r0, r4	@, NextInstId
	str	r1, [r2, #-92]!	@ ret.1883, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L479:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
.L551:
	movw	ip, #:lower16:76696	@ tmp578,
	movt	ip, #:upper16:76696	@ tmp578,
	mla	r2, ip, r4, r5	@ tmp579, tmp578, NextInstId, tmp1880
	add	r3, r2, #75776	@ tmp580, tmp579,
	add	r1, r3, #880	@ tmp580, tmp580,
	ldr	r3, [r1, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
	b	.L456	@
.L559:
	movw	r3, #:lower16:76696	@ tmp1098,
	movt	r3, #:upper16:76696	@ tmp1098,
	mla	fp, r3, r4, r5	@ tmp1099, tmp1098, NextInstId, tmp1880
	ldr	r0, [fp, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r0, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r8, [fp, #336]	@ zero_extendqisi2	@ SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L501	@,
	b	.L500	@
.L504:
	movw	r0, #:lower16:76696	@ tmp1121,
	movt	r0, #:upper16:76696	@ tmp1121,
	mov	r8, #0	@ prephitmp.1827,
	mov	r3, #1	@ prephitmp.1825,
	mla	fp, r0, r4, r5	@ tmp1122, tmp1121, NextInstId, tmp1880
	ldr	sl, [fp, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	str	sl, [sp, #208]	@ <variable>.Cur1DImage.image_stride, DnrCfg.dnr_stride_1d
	b	.L503	@
.L563:
	ldr	r2, [r9, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r2, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r2, [r9, #336]	@ zero_extendqisi2	@ s32SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L483	@,
	b	.L482	@
.L464:
	ldr	r1, [sp, #36]	@, %sfp
	mov	r0, r4	@, NextInstId
	str	r2, [sp, #12]	@,
	bl	DNR_FastForwardFastBack	@
	ldr	r2, [sp, #12]	@,
	cmp	r0, #0	@,
	beq	.L550	@,
	str	r2, [sp, #12]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #12]	@,
	ldr	r3, [r2, #0]	@ prephitmp.1948, <variable>.DNRDataSourceFlag
	b	.L456	@
.L505:
	movw	fp, #:lower16:76696	@ tmp1180,
	movt	fp, #:upper16:76696	@ tmp1180,
	mov	ip, #0	@ tmp1183,
	strb	ip, [sp, #144]	@ tmp1183, DnrCfg.dc_en
	mla	sl, fp, r4, r5	@ tmp1181, tmp1180, NextInstId, tmp1880
	strb	ip, [sp, #146]	@ tmp1183, DnrCfg.dr_en
	strb	ip, [sp, #145]	@ tmp1183, DnrCfg.db_en
	add	r0, sl, #32	@ tmp1182, tmp1181,
	add	r1, sl, #40	@ tmp1191, tmp1181,
	str	ip, [r0, #4]	@ tmp1183, <variable>.enDR
	str	ip, [sl, #40]	@ tmp1183, <variable>.enDB
	str	ip, [r1, #4]	@ tmp1183, <variable>.enDC
	b	.L507	@
.L458:
	ldr	r0, [r9, #116]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.Cur1DImage.DispEnableFlag
	cmp	r0, #1	@ <variable>.Cur1DImage.DispEnableFlag,
	bne	.L568	@,
	ldr	ip, [r9, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	r3, r9, #192	@ tmp480, tmp305,
	str	r0, [r9, #440]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.s321DFrameIsProc
	cmp	ip, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L470	@,
	ldr	r0, [r3, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r0, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L470	@,
	ldr	r3, [r1, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L550	@,
	ldr	r1, [sp, #36]	@, %sfp
	mov	r0, r4	@, NextInstId
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L551	@,
	bl	vfmw_dprint_nothing	@
	b	.L551	@
.L528:
	cmp	r3, #1	@ temp.1966,
	bne	.L530	@,
	movw	lr, #:lower16:76680	@ tmp1674,
	movt	lr, #:upper16:76680	@ tmp1674,
	ldr	r6, [r0, lr]	@ pImageLogic, <variable>.pCaptureImageOut
	ldr	r3, [r6, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r3, [sp, #180]	@ <variable>.luma_2d_phy_addr, DnrCfg.dnr_ystaddr_2d
	b	.L529	@
.L530:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38684,
	b	.L489	@
.L561:
	movw	r0, #:lower16:76696	@ tmp1426,
	movt	r0, #:upper16:76696	@ tmp1426,
	mla	r3, r0, r4, r5	@ tmp1427, tmp1426, NextInstId, tmp1880
	ldr	r0, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	bne	.L522	@,
	ldr	ip, [r3, #188]	@ D.38855, <variable>.Cur1DImage.format
	and	r6, ip, #3072	@ tmp1436, D.38855,
	cmp	r6, #3072	@ tmp1436,
	beq	.L569	@,
	ands	r6, ip, #2048	@ tmp1478, D.38855,
	beq	.L525	@,
	ldrb	ip, [r3, #332]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag
	ldrb	r8, [r3, #335]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv
	ldrb	r6, [r3, #334]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag
	ldrb	lr, [r3, #333]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy
	str	r0, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	mov	r3, #2	@ tmp1486,
	strb	r8, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #147]	@ tmp1486, DnrCfg.pic_structure
	strb	r6, [sp, #151]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	lr, [sp, #150]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, DnrCfg.Range_mapy
	strb	ip, [sp, #149]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, DnrCfg.Range_mapy_flag
.L526:
	ldr	lr, [sp, #168]	@ DnrCfg.pic_width_in_mb, DnrCfg.pic_width_in_mb
	movw	r3, #:lower16:76696	@ tmp1652,
	movt	r3, #:upper16:76696	@ tmp1652,
	mul	ip, lr, r2	@ tmp1643, DnrCfg.pic_width_in_mb, CurPicHeightInMb
	mla	lr, r3, r4, r5	@ tmp1653, tmp1652, NextInstId, tmp1880
	mov	r0, ip, asl #8	@ tmp1647, tmp1643,
	add	r2, r0, ip, asl #7	@, tmp1648, tmp1647, tmp1643,
	ldr	ip, [lr, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	add	r0, r2, ip	@ tmp1656, tmp1648, <variable>.Cur1DImage.luma_phy_addr
	str	r0, [sp, #176]	@ tmp1656, DnrCfg.dnr_ystaddr_1d
	b	.L524	@
.L560:
	movw	r6, #:lower16:76696	@ tmp1112,
	movt	r6, #:upper16:76696	@ tmp1112,
	mov	r8, #0	@ prephitmp.1827,
	mov	r3, #1	@ prephitmp.1825,
	mla	ip, r6, r4, r5	@ tmp1113, tmp1112, NextInstId, tmp1880
	ldr	r1, [ip, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r2, r1, asl #5	@ tmp1116, <variable>.Cur1DImage.image_stride,
	str	r2, [sp, #208]	@ tmp1116, DnrCfg.dnr_stride_1d
	b	.L503	@
.L564:
	movw	lr, #:lower16:76696	@ tmp714,
	movt	lr, #:upper16:76696	@ tmp714,
	mov	r2, #1	@ prephitmp.1831,
	mla	r1, lr, r4, r5	@ tmp715, tmp714, NextInstId, tmp1880
	ldr	r3, [r1, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	ip, r3, asl #5	@ tmp718, <variable>.Cur1DImage.image_stride,
	str	ip, [sp, #208]	@ tmp718, DnrCfg.dnr_stride_1d
	b	.L485	@
.L539:
	bl	vfmw_dprint_nothing	@
	b	.L540	@
.L537:
	bl	vfmw_dprint_nothing	@
	b	.L538	@
.L543:
	bl	vfmw_dprint_nothing	@
	b	.L544	@
.L522:
	ldrb	r0, [r3, #332]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag
	mov	r8, #0	@ tmp1568,
	ldrb	r6, [r3, #335]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv
	ldrb	lr, [r3, #334]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag
	ldrb	ip, [r3, #333]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy
	str	r8, [r3, #24]	@ tmp1568, <variable>.NeedStartAgain
	mov	r3, #2	@ tmp1569,
	strb	r6, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #147]	@ tmp1569, DnrCfg.pic_structure
	strb	lr, [sp, #151]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	ip, [sp, #150]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, DnrCfg.Range_mapy
	strb	r0, [sp, #149]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, DnrCfg.Range_mapy_flag
	b	.L526	@
.L562:
	ldr	r1, [r6, #172]	@ <variable>.image_stride, <variable>.image_stride
	mov	lr, lr, lsr #4	@ tmp1804, tmp1792,
	ldr	r2, [r6, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	r3, r1, #2	@ tmp1799, <variable>.image_stride,
	mov	ip, r3, asl #4	@ tmp1801, tmp1799,
	mla	r0, lr, ip, r2	@ tmp1807, tmp1804, tmp1801, <variable>.top_luma_phy_addr
	str	r0, [r6, #92]	@ tmp1807, <variable>.top_chrom_phy_addr
	b	.L536	@
.L486:
	movw	ip, #:lower16:76696	@ tmp723,
	movt	ip, #:upper16:76696	@ tmp723,
	mov	r2, #1	@ prephitmp.1831,
	mla	r9, ip, r4, r5	@ tmp724, tmp723, NextInstId, tmp1880
	ldr	r0, [r9, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	str	r0, [sp, #208]	@ <variable>.Cur1DImage.image_stride, DnrCfg.dnr_stride_1d
	b	.L485	@
.L567:
	ldr	fp, [sp, #16]	@, %sfp
	ldr	r3, [fp, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L479	@,
	add	r2, sp, #320	@ tmp568,,
	mov	lr, #1	@ tmp566,
	mov	r0, r4	@, NextInstId
	mov	r1, #115	@,
	str	lr, [r2, #-92]!	@ tmp566, para
	blx	r3	@ g_event_report
	b	.L479	@
.L459:
	mov	r0, r4	@, NextInstId
	movw	r9, #:lower16:76696	@ tmp363,
	bl	VCTRL_GetLastFrameIdPlus2	@
	movt	r9, #:upper16:76696	@ tmp363,
	ldr	r1, [sp, #28]	@, %sfp
	mul	r9, r9, r4	@ tmp362, tmp363, NextInstId
	add	r3, r9, r5	@ tmp364, tmp362, tmp1880
	ldr	ip, [r3, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	r1, r2, r1, ip	@, tmp368,, <variable>.Cur1DImage.image_id
	mov	r1, #100	@ tmp371,
	mov	r2, r2, lsr #5	@ tmp366, tmp368,
	mls	r3, r1, r2, ip	@ tmp372, tmp371, tmp366, <variable>.Cur1DImage.image_id
	add	r2, r3, #2	@ tmp373, tmp372,
	cmp	r0, r2	@, tmp373
	beq	.L570	@,
.L472:
	ldr	r1, [sp, #36]	@, %sfp
	mov	r0, r4	@, NextInstId
	bl	VCTRL_ReleaseChanImage	@
.L493:
	movw	r2, #:lower16:76696	@ tmp996,
	movt	r2, #:upper16:76696	@ tmp996,
	mov	r0, #0	@ tmp999,
	mla	ip, r2, r4, r5	@ tmp997, tmp996, NextInstId, tmp1880
	str	r0, [ip, #440]	@ tmp999, <variable>.s321DFrameIsProc
	b	.L450	@
.L569:
	ldrb	r0, [r3, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	mov	r2, #1	@ tmp1443,
	ldrb	r6, [r3, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	ldrb	lr, [r3, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	ldrb	ip, [r3, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	strb	r2, [sp, #147]	@ tmp1443, DnrCfg.pic_structure
	strb	r6, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	lr, [sp, #151]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	ip, [sp, #150]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r0, [sp, #149]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	str	r2, [r3, #24]	@ tmp1443, <variable>.NeedStartAgain
	b	.L524	@
.L470:
	mov	r0, r4	@, NextInstId
	movw	r9, #:lower16:76696	@ tmp492,
	bl	VCTRL_GetLastFrameIdPlus2	@
	movt	r9, #:upper16:76696	@ tmp492,
	mov	r1, #100	@,
	mul	r9, r9, r4	@ tmp491, tmp492, NextInstId
	add	r3, r9, r5	@ tmp493, tmp491, tmp1880
	mov	fp, r0	@ LastFrameIdPlus2.1869,
	ldr	r0, [r3, #224]	@, <variable>.Cur1DImage.image_id
	bl	__aeabi_uidivmod	@
	add	r1, r1, #2	@ tmp502,,
	cmp	fp, r1	@ LastFrameIdPlus2.1869, tmp502
	bne	.L472	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, .L575+4	@,
	add	r2, r9, #968	@ tmp507, tmp491,
	add	r0, ip, r2	@,, tmp507
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1875,
	mov	r1, r0	@ ret.1875,
	beq	.L571	@,
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L474	@,
.L553:
	add	r2, sp, #320	@ tmp518,,
	mov	r0, r4	@, NextInstId
	str	r1, [r2, #-92]!	@ ret.1875,
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L474:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L472	@
.L568:
	mov	r0, r4	@, NextInstId
	str	r3, [sp, #8]	@,
	bl	VCTRL_GetLastFrameIdPlus2	@
	mov	r1, #100	@,
	mov	ip, r0	@ LastFrameIdPlus2.1854,
	ldr	r0, [r9, #224]	@, <variable>.Cur1DImage.image_id
	str	ip, [sp, #12]	@,
	bl	__aeabi_uidivmod	@
	ldr	r0, [sp, #12]	@,
	add	r1, r1, #2	@ tmp443,,
	cmp	r0, r1	@ LastFrameIdPlus2.1854, tmp443
	bne	.L472	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, .L575+4	@,
	add	r3, fp, #968	@ tmp448, tmp303,
	add	r0, r2, r3	@,, tmp448
	bl	IMGQUE_GetLastImageID	@
	ldr	r3, [sp, #8]	@,
	cmn	r0, #1	@ ret.1860,
	mov	r1, r0	@ ret.1860,
	beq	.L572	@,
	ldr	fp, [sp, #16]	@, %sfp
	ldr	r3, [fp, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	bne	.L553	@,
	b	.L474	@
.L487:
	add	r3, r9, #51456	@ tmp878, tmp731,
	add	r3, r3, #72	@ tmp878, tmp878,
	ldr	ip, [r3, #0]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	ip, #0	@ <variable>.GetFirstIFrameFlag,
	beq	.L573	@,
	ldr	ip, [r3, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mov	r0, #392	@ tmp912,
	mov	r2, r0	@, tmp912
	ldr	lr, [r9, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r1, r9, #48	@, tmp731,
	mla	r0, r0, ip, fp	@ tmp915, tmp912, <variable>.TempImageNum, tmp729
	ldr	fp, [r9, #428]	@, <variable>.Cur1DImage.resetNum
	add	ip, lr, #6	@ tmp892, <variable>.Cur1DImage.image_id,
	rsb	lr, fp, ip	@ tmp901,, tmp892
	ldr	ip, .L575+4	@,
	add	r0, r0, #51456	@ tmp916, tmp915,
	str	lr, [r9, #224]	@ tmp901, <variable>.Cur1DImage.image_id
	add	lr, r0, #72	@ tmp916, tmp916,
	str	r3, [sp, #8]	@,
	add	r0, ip, lr	@,, tmp916
	bl	memcpy	@
	ldr	r1, [r9, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r3, r9, #75776	@ tmp969, tmp731,
	movw	ip, #19174	@ tmp936,
	add	r2, r3, #872	@ tmp969, tmp969,
	ldr	r3, [sp, #8]	@,
	mla	r1, ip, r4, r1	@ tmp937, tmp936, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r2, [r2, #0]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	ldr	r0, [r3, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	ip, [r9, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r0, r0, #1	@ D.38695, <variable>.TempImageNum,
	str	r0, [r3, #4]	@ D.38695, <variable>.TempImageNum
	rsb	r2, r2, ip	@ tmp970, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	cmp	r0, r2	@ D.38695, tmp970
	add	r2, ip, r1, asl #2	@, tmp942,, tmp937,
	mov	r0, #4	@ tmp944,
	str	r0, [r2, #720]	@ tmp944, <variable>.LogicImageIsUsed
	movcs	r0, #0	@ tmp986,
	strcs	r0, [r3, #0]	@ tmp986, <variable>.GetFirstIFrameFlag
	bcs	.L492	@,
	ldr	r2, [r9, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r2, #1	@ <variable>.Cur1DImage.last_frame,
	bne	.L493	@,
.L492:
	ldr	r1, .L575+4	@,
	movw	lr, #:lower16:76696	@ tmp990,
	movt	lr, #:upper16:76696	@ tmp990,
	mov	r0, r4	@, NextInstId
	mla	r3, lr, r4, r1	@ tmp992, tmp990, NextInstId,
	add	r1, r3, #40	@, tmp992,
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L493	@,
	bl	vfmw_dprint_nothing	@
	b	.L493	@
.L570:
	bl	vfmw_dprint_nothing	@
	ldr	ip, .L575+4	@,
	add	r0, r9, #968	@ tmp378, tmp362,
	add	r0, ip, r0	@,, tmp378
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret,
	mov	r1, r0	@ ret,
	beq	.L574	@,
	ldr	lr, [sp, #16]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	bne	.L553	@,
	b	.L474	@
.L525:
	tst	ip, #1024	@ D.38855,
	beq	.L527	@,
	ldrb	r2, [r3, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	ldrb	lr, [r3, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	ldrb	ip, [r3, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	ldrb	r0, [r3, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	str	r6, [r3, #24]	@ tmp1478, <variable>.NeedStartAgain
	mov	r3, #1	@ tmp1528,
	strb	lr, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #147]	@ tmp1528, DnrCfg.pic_structure
	strb	ip, [sp, #151]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	r0, [sp, #150]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r2, [sp, #149]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	b	.L524	@
.L574:
	ldr	fp, [sp, #16]	@, %sfp
	ldr	r3, [fp, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L474	@,
.L554:
	add	r2, sp, #320	@ tmp513,,
	add	r1, r1, #2	@ tmp511, tmp511,
	mov	r0, r4	@, NextInstId
	str	r1, [r2, #-92]!	@ tmp511,
	add	r1, r1, #114	@,,
	blx	r3	@ g_event_report
	b	.L474	@
.L573:
	mov	r0, r4	@, NextInstId
	bl	DNR_ClearTempImage	@
	b	.L450	@
.L571:
	ldr	lr, [sp, #16]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	bne	.L554	@,
	b	.L474	@
.L572:
	ldr	lr, [sp, #16]	@, %sfp
	ldr	ip, [lr, #0]	@ g_event_report, g_event_report
	cmp	ip, #0	@ g_event_report,
	beq	.L474	@,
	add	r2, sp, #320	@ tmp454,,
	mov	r0, r4	@, NextInstId
	add	r1, r1, #116	@,,
	str	r3, [r2, #-92]!	@ <variable>.u32BackwardOptimizeFlag, para
	blx	ip	@ g_event_report
	b	.L474	@
.L576:
	.align	2
.L575:
	.word	.LANCHOR0+26440
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_DoNextInstance, .-DNR_DoNextInstance
	.align	2
	.global	DNR_Wakeup
	.type	DNR_Wakeup, %function
DNR_Wakeup:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR1	@ tmp217,
	movt	r4, #:upper16:.LANCHOR1	@ tmp217,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, #4048]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L578	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L589	@,
.L579:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L578:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #4052]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp153, s_DnrCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp153,
	ble	.L579	@,
	ldr	r0, [r4, #4044]	@, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp216,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #4044]	@ prephitmp.2009, s_DnrCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp216,
	movw	r7, #:lower16:76696	@ tmp161,
	movt	r7, #:upper16:76696	@ tmp161,
	movw	r3, #:lower16:1374389535	@ tmp167,
	movt	r3, #:upper16:1374389535	@ tmp167,
	mla	r2, r7, r1, r5	@ tmp162, tmp161, prephitmp.2009, tmp216
	ldr	r7, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r7	@, tmp166, tmp167, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp169,
	mov	r3, r3, lsr #5	@ tmp164, tmp166,
	mls	r2, ip, r3, r7	@ tmp170, tmp169, tmp164, <variable>.Cur1DImage.image_id
	add	r7, r2, #2	@ tmp171, tmp170,
	cmp	r0, r7	@, tmp171
	addne	r6, r5, #8	@ tmp214, tmp216,
	beq	.L590	@,
.L580:
	movw	r7, #:lower16:76696	@ tmp198,
	movt	r7, #:upper16:76696	@ tmp198,
	mov	r0, r1	@, prephitmp.2009
	mla	ip, r7, r1, r6	@ tmp200, tmp198, prephitmp.2009, tmp214
	add	r1, ip, #40	@, tmp200,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r0, [r4, #4044]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	r1, #0	@ tmp209,
	mla	r5, r7, r0, r5	@ tmp207, tmp198, s_DnrCtrl.ThisInstID, tmp216
	str	r1, [r5, #440]	@ tmp209, <variable>.s321DFrameIsProc
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp210,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp210,
	ldr	r3, [r3, #12]	@ D.39156, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.39156,
	beq	.L584	@,
	blx	r3	@ D.39156
.L585:
	mov	lr, #0	@ tmp212,
	str	lr, [r4, #4048]	@ tmp212, s_DnrCtrl.DNRState
	b	.L579	@
.L589:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp150,
	str	r1, [r4, #4048]	@ tmp150, s_DnrCtrl.DNRState
	str	r0, [r4, #4044]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4052]	@, s_DnrCtrl.LastProcessTime
	b	.L579	@
.L590:
	movw	r7, #:lower16:g_event_report	@ tmp215,
	movt	r7, #:upper16:g_event_report	@ tmp215,
	ldr	r3, [r7, #0]	@ g_event_report.593, g_event_report
	cmp	r3, #0	@ g_event_report.593,
	beq	.L581	@,
	add	r6, sp, #8	@ tmp174,,
	mov	r0, r1	@, prephitmp.2009
	mov	r8, #1	@ tmp173,
	mov	r2, sp	@,
	str	r8, [r6, #-8]!	@ tmp173, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.593
.L581:
	bl	vfmw_dprint_nothing	@
	ldr	r6, .L592	@ tmp214,
	ldr	ip, [r4, #4044]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #:lower16:76696	@ tmp179,
	movt	r0, #:upper16:76696	@ tmp179,
	movw	r8, #:lower16:.LANCHOR1	@ tmp177,
	movt	r8, #:upper16:.LANCHOR1	@ tmp177,
	mla	r1, ip, r0, r6	@ tmp182, s_DnrCtrl.ThisInstID, tmp179, tmp214
	add	r0, r1, #968	@, tmp182,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L591	@,
	ldr	r3, [r7, #0]	@ g_event_report.2023, g_event_report
	cmp	r3, #0	@ g_event_report.2023,
	beq	.L583	@,
	add	r7, sp, #8	@ tmp191,,
	ldr	r0, [r8, #4044]	@, s_DnrCtrl.ThisInstID
	mov	r2, sp	@,
	str	r1, [r7, #-8]!	@ ret_val,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2023
.L583:
	mov	r1, #0	@,
	ldr	r0, [r4, #4044]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #4044]	@ prephitmp.2009, s_DnrCtrl.ThisInstID
	b	.L580	@
.L591:
	ldr	r3, [r7, #0]	@ g_event_report.2021, g_event_report
	cmp	r3, #0	@ g_event_report.2021,
	beq	.L583	@,
	add	lr, sp, #8	@ tmp187,,
	ldr	r0, [r8, #4044]	@, s_DnrCtrl.ThisInstID
	mov	r2, #1	@ tmp184,
	mov	r1, #115	@,
	str	r2, [lr, #-8]!	@ tmp184,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.2021
	b	.L583	@
.L584:
	bl	vfmw_dprint_nothing	@
	b	.L585	@
.L593:
	.align	2
.L592:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Wakeup, .-DNR_Wakeup
	.global	__aeabi_uidiv
	.align	2
	.global	DNR_IntServeProc
	.type	DNR_IntServeProc, %function
DNR_IntServeProc:
	.fnstart
.LFB1941:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:.LANCHOR2	@ tmp244,
	movt	r5, #:upper16:.LANCHOR2	@ tmp244,
	.pad #8
	sub	sp, sp, #8	@,,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, #-4060]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r0, #44]	@ dat,
	tst	r3, #1	@ dat,
	beq	.L603	@,
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r3, [r1, #20]	@ D.39061, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r3, #0	@ D.39061,
	beq	.L597	@,
	blx	r3	@ D.39061
.L598:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	movweq	r4, #:lower16:.LANCHOR1	@ tmp243,
	movteq	r4, #:upper16:.LANCHOR1	@ tmp243,
	bne	.L609	@,
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp241,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp241,
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	bne	.L610	@,
.L600:
	ldr	lr, [r4, #4048]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	beq	.L611	@,
.L603:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L609:
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR1	@ tmp243,
	movt	r4, #:upper16:.LANCHOR1	@ tmp243,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp162,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp162,
	ldr	r1, [r4, #4044]	@ D.39069, s_DnrCtrl.ThisInstID
	ldr	r7, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	add	r5, r5, r1, asl #2	@, tmp158, tmp244, D.39069,
	ldr	ip, [r5, #-4044]	@ tmp161, last_rec_pos_time
	rsb	r2, ip, r0	@ tmp160, tmp161, currtime
	cmp	r2, r7	@ tmp160, g_TraceFramePeriod
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp241,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp241,
	strhi	r0, [r5, #-4044]	@ currtime, last_rec_pos_time
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	beq	.L600	@,
.L610:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldr	ip, [r7, #20]	@ prephitmp.2053, <variable>.u32DaLastStartTime
	add	r3, r1, #49920	@ tmp173, <variable>.u32DaBeginTime,
	add	r2, r3, #80	@ tmp173, tmp173,
	cmp	r2, ip	@ tmp173, prephitmp.2053
	strcc	ip, [r7, #16]	@ prephitmp.2053, <variable>.u32DaBeginTime
	ldr	r5, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldrcs	r3, [r7, #24]	@ prephitmp.2042, <variable>.u32DaDnrWorkTime
	movcc	r3, #0	@ prephitmp.2042,
	rsb	r1, r5, r0	@ Period, <variable>.u32DaBeginTime, CurTime
	add	r6, r3, r0	@ tmp181, prephitmp.2042, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r6	@ D.39086, prephitmp.2053, tmp181
	movw	r5, #:lower16:g_VfmwGlobalStat	@ tmp182,
	mov	r6, #0	@ tmp184,
	str	r3, [r7, #24]	@ D.39086, <variable>.u32DaDnrWorkTime
	movt	r5, #:upper16:g_VfmwGlobalStat	@ tmp182,
	str	r6, [r7, #20]	@ tmp184, <variable>.u32DaLastStartTime
	bcc	.L600	@,
	mov	r0, #1000	@ tmp190,
	mul	r0, r0, r3	@, tmp190, D.39086
	bl	__aeabi_uidiv	@
	str	r6, [r5, #16]	@ tmp184, <variable>.u32DaBeginTime
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	str	r0, [r5, #28]	@, <variable>.u32DaDnrLoad
	ldr	lr, [r4, #4048]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	bne	.L603	@,
.L611:
	ldr	r0, [r3, #4044]	@ temp.2055, s_DnrCtrl.ThisInstID
	movw	ip, #9587	@ tmp201,
	movw	r8, #:lower16:.LANCHOR0	@ tmp242,
	movt	r8, #:upper16:.LANCHOR0	@ tmp242,
	mul	r6, ip, r0	@ tmp200, tmp201, temp.2055
	add	r5, r8, r6, asl #3	@, tmp205, tmp242, tmp200,
	ldr	r7, [r5, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r7, #1	@ <variable>.InstMode,
	beq	.L612	@,
.L604:
	ldr	r0, [r4, #4044]	@ temp.2056, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:76696	@ tmp214,
	movt	r5, #:upper16:76696	@ tmp214,
	mov	r2, #0	@ tmp209,
	str	r2, [r4, #4048]	@ tmp209, s_DnrCtrl.DNRState
	movw	r7, #:lower16:.LANCHOR1	@ tmp208,
	mul	r1, r5, r0	@ tmp213, tmp214, temp.2056
	movw	r6, #:lower16:.LANCHOR0	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp208,
	movt	r6, #:upper16:.LANCHOR0	@ tmp211,
	add	r8, r1, r8	@ tmp215, tmp213, tmp242
	ldr	r8, [r8, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r8, r2	@ <variable>.NeedStartAgain,
	beq	.L613	@,
.L605:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L603	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	lr, #1	@ tmp237,
	str	lr, [r4, #4048]	@ tmp237, s_DnrCtrl.DNRState
	str	r0, [r4, #4044]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4052]	@, s_DnrCtrl.LastProcessTime
	b	.L603	@
.L613:
	add	r1, r6, r1	@ tmp222, tmp211, tmp213
	add	r1, r1, #48	@, tmp222,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #4044]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r5, r5, r3, r6	@ tmp230, tmp214, s_DnrCtrl.ThisInstID, tmp211
	str	r8, [r5, #440]	@ <variable>.NeedStartAgain, <variable>.s321DFrameIsProc
	b	.L605	@
.L597:
	bl	vfmw_dprint_nothing	@
	b	.L598	@
.L612:
	bl	DNR_ProcessDnrReturn	@
	b	.L604	@
	.fnend
	.size	DNR_IntServeProc, .-DNR_IntServeProc
	.align	2
	.global	DNR_CloseDrivers
	.type	DNR_CloseDrivers, %function
DNR_CloseDrivers:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldr	r0, [r0, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #28]	@ <variable>.stDnrReg.Length, <variable>.stDnrReg.Length
	cmp	r3, #0	@ <variable>.stDnrReg.Length,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	DNR_CloseDrivers, .-DNR_CloseDrivers
	.align	2
	.global	DNR_OpenDrivers
	.type	DNR_OpenDrivers, %function
DNR_OpenDrivers:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #16	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r1, #4096	@,
	movw	r0, #:lower16:272957440	@,
	mov	r2, r5	@, pstMem
	movt	r0, #:upper16:272957440	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L618	@,
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L622	@,
.L620:
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L618:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L620	@,
.L622:
	ldr	r2, [r4, #28]	@, <variable>.stDnrReg.Length
	ldr	r0, [r4, #24]	@, <variable>.stDnrReg.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stDnrReg.VirAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MEM_AddMemRecord	@
	.fnend
	.size	DNR_OpenDrivers, .-DNR_OpenDrivers
	.align	2
	.global	DNR_Init
	.type	DNR_Init, %function
DNR_Init:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r5, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r3, [r5, #0]	@ D.37927, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.37927,
	beq	.L624	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp154,
	movt	r4, #:upper16:.LANCHOR1	@ tmp154,
	blx	r3	@ D.37927
	ldr	r3, [r4, #4032]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.37934,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
.L631:
	add	r0, r4, #4032	@, tmp154,
	mov	r1, #60	@,
	bl	__memzero	@
	ldr	r0, .L632	@,
	movw	r1, #:lower16:306784	@,
	movt	r1, #:upper16:306784	@,
	bl	__memzero	@
	add	r0, r4, #4048	@, tmp154,
	add	r0, r0, #8	@,,
	bl	DNR_OpenDrivers	@
	bl	DNR_Fsp_Init	@
	ldr	r3, [r5, #4]	@ D.37945, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.37945,
	beq	.L628	@,
	blx	r3	@ D.37945
.L629:
	mov	r1, #1	@ tmp151,
	mov	r0, #0	@ D.37934,
	str	r1, [r4, #4032]	@ tmp151, s_DnrCtrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L624:
	movw	r4, #:lower16:.LANCHOR1	@ tmp154,
	movt	r4, #:upper16:.LANCHOR1	@ tmp154,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #4032]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.37934,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	b	.L631	@
.L628:
	bl	vfmw_dprint_nothing	@
	b	.L629	@
.L633:
	.align	2
.L632:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Init, .-DNR_Init
	.align	2
	.global	DNR_Close
	.type	DNR_Close, %function
DNR_Close:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	ldr	r4, .L636	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	movw	r7, #:lower16:76716	@ tmp160,
	movw	lr, #:lower16:76712	@ tmp161,
	movt	r7, #:upper16:76716	@ tmp160,
	movt	lr, #:upper16:76712	@ tmp161,
	movw	r6, #:lower16:153412	@ tmp162,
	movw	ip, #:lower16:153408	@ tmp163,
	movt	r6, #:upper16:153412	@ tmp162,
	movt	ip, #:upper16:153408	@ tmp163,
	movw	r5, #:lower16:230108	@ tmp164,
	movw	r1, #:lower16:230104	@ tmp165,
	movt	r5, #:upper16:230108	@ tmp164,
	movt	r1, #:upper16:230104	@ tmp165,
	mov	r2, #0	@ tmp134,
	add	r0, r4, #24	@, tmp156,
	str	r2, [r3, #20]	@ tmp134, <variable>.InstMode
	str	r2, [r3, #16]	@ tmp134, <variable>.s32IsOpen
	str	r2, [r3, r7]	@ tmp134, <variable>.InstMode
	str	r2, [r3, lr]	@ tmp134, <variable>.s32IsOpen
	str	r2, [r3, r6]	@ tmp134, <variable>.InstMode
	str	r2, [r3, ip]	@ tmp134, <variable>.s32IsOpen
	str	r2, [r3, r5]	@ tmp134, <variable>.InstMode
	str	r2, [r3, r1]	@ tmp134, <variable>.s32IsOpen
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp156
	mov	r1, #60	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
.L637:
	.align	2
.L636:
	.word	.LANCHOR1+4032
	.fnend
	.size	DNR_Close, .-DNR_Close
	.align	2
	.global	DNR_GetState
	.type	DNR_GetState, %function
DNR_GetState:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r1, #0	@ pstDnrChanState, pstDnrChanState
	mov	r5, r0	@ ChanID, ChanID
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, pstDnrChanState
	mov	r1, #80	@,
	bl	__memzero	@
	movw	r1, #:lower16:76696	@ tmp138,
	movt	r1, #:upper16:76696	@ tmp138,
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	add	r2, r4, #76	@, pstDnrChanState,
	mul	r5, r1, r5	@ tmp137, tmp138, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	ip, r5, r0	@ tmp139, tmp137, tmp135
	add	r0, ip, #976	@, tmp146,
	ldr	r3, [ip, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	str	r3, [r4, #68]	@ <variable>.s32ValidImgNum, <variable>.total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
	.fnend
	.size	DNR_GetState, .-DNR_GetState
	.global	g_DBEnable
	.global	g_DREnable
	.global	g_DCEnable
	.global	g_DnrHwMem
	.global	s_DnrCtrl
	.global	s_DnrChan
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"LQue%d\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 302808
.LANCHOR2 = . + 310992
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.space	4
	.type	s_DnrChan, %object
	.size	s_DnrChan, 306784
s_DnrChan:
	.space	306784
	.type	last_rec_pos_time.39504, %object
	.size	last_rec_pos_time.39504, 16
last_rec_pos_time.39504:
	.space	16
	.type	last_rec_pos_time.39426, %object
	.size	last_rec_pos_time.39426, 16
last_rec_pos_time.39426:
	.space	16
	.type	last_rec_pos_time.39296, %object
	.size	last_rec_pos_time.39296, 16
last_rec_pos_time.39296:
	.space	16
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	timePrevDo.38450, %object
	.size	timePrevDo.38450, 4
timePrevDo.38450:
	.space	4
	.type	g_DREnable, %object
	.size	g_DREnable, 4
g_DREnable:
	.space	4
	.type	g_DBEnable, %object
	.size	g_DBEnable, 4
g_DBEnable:
	.space	4
	.type	g_DCEnable, %object
	.size	g_DCEnable, 4
g_DCEnable:
	.space	4
	.type	last_rec_pos_time.38434, %object
	.size	last_rec_pos_time.38434, 16
last_rec_pos_time.38434:
	.space	16
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.39050, %object
	.size	last_rec_pos_time.39050, 16
last_rec_pos_time.39050:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
