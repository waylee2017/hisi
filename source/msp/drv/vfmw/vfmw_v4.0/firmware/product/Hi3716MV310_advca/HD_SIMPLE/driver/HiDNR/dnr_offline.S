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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
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
	subs	r2, r0, #0	@ ChanID, ChanID
	movweq	r3, #:lower16:.LANCHOR0	@ tmp136,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp136,
	mvnne	r0, #0	@ D.35885,
	moveq	r0, r2	@ D.35885, ChanID
	streq	r2, [r3, #16]	@ ChanID, <variable>.s32IsOpen
	streq	r2, [r3, #20]	@ ChanID, <variable>.InstMode
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L25	@,
	ldr	r6, [r2, #0]	@ <variable>.pstCaptureInFrm, <variable>.pstCaptureInFrm
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movw	r5, #:lower16:76676	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	movt	r5, #:upper16:76676	@ tmp139,
	movw	ip, #:lower16:76680	@ tmp142,
	movw	r4, #:lower16:76664	@ tmp145,
	movt	ip, #:upper16:76680	@ tmp142,
	str	r6, [r3, r5]	@ <variable>.pstCaptureInFrm, <variable>.pCaptureImageIn
	movt	r4, #:upper16:76664	@ tmp145,
	ldr	r2, [r2, #4]	@ <variable>.pstCaptureOutFrm, <variable>.pstCaptureOutFrm
	str	r1, [r3, r4]	@ DNRDataSourceFlag, <variable>.DNRCaptureEnableFlag
	str	r2, [r3, ip]	@ <variable>.pstCaptureOutFrm, <variable>.pCaptureImageOut
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L25:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37777,
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
	ldr	r7, [r0, #4]	@ i.903, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.902, i,
	cmp	r7, r2	@ i.903, i.902
	moveq	r0, #0	@ s32Count,
	beq	.L31	@,
	movw	r0, #19174	@ tmp170,
	mul	r8, r0, r3	@ tmp169, tmp170, ChanID
	add	ip, r8, r2	@ tmp171, tmp169, i.902
	add	r0, r6, ip, asl #2	@, tmp176, tmp263, tmp171,
	ldr	ip, [r0, #1056]	@ pImage.904, <variable>.LogicImageQue.image_ptr
	cmp	ip, #0	@ pImage.904,
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
	add	r2, r2, #1	@ i.881, i.902,
	and	r2, r2, #63	@ i.902, i.881,
	cmp	r2, r7	@ i.902, i.903
	beq	.L31	@,
.L39:
	add	ip, r8, r2	@ tmp181, tmp268, i.902
	add	ip, r6, ip, asl #2	@, tmp186, tmp263, tmp181,
	ldr	ip, [ip, #1056]	@ pImage.904, <variable>.LogicImageQue.image_ptr
	cmp	ip, #0	@ pImage.904,
	bne	.L33	@,
.L32:
	mvn	r0, #0	@ s32Count,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L50:
	add	r2, r2, #1	@ i.881, i.902,
	add	r0, r0, #1	@ s32Count, s32Count,
	and	r2, r2, #63	@ i.902, i.881,
	cmp	r2, r7	@ i.902, i.903
	bne	.L39	@,
.L31:
	movw	r8, #:lower16:76696	@ tmp215,
	movt	r8, #:upper16:76696	@ tmp215,
	and	ip, r7, #63	@ i.901, i.903,
	movw	r7, #26416	@ tmp213,
	mla	r2, r8, r3, r6	@ tmp216, tmp215, ChanID, tmp263
	movw	r5, #:lower16:.LANCHOR0	@ tmp212,
	movt	r5, #:upper16:.LANCHOR0	@ tmp212,
	ldr	r8, [r2, r7]	@ D.37668, <variable>.LogicImageQue.tail
	cmp	r8, ip	@ D.37668, i.901
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	r2, #19174	@ tmp220,
	mul	r3, r2, r3	@ tmp219, tmp220, ChanID
	add	r2, r3, ip	@ tmp221, tmp219, i.901
	add	r5, r5, r2, asl #2	@, tmp226, tmp212, tmp221,
	ldr	r2, [r5, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r2, #0	@ pImage,
	beq	.L32	@,
.L48:
	ldr	r5, [r2, #368]	@ <variable>.is_processed_by_dnr, <variable>.is_processed_by_dnr
	ldr	r7, [r2, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	cmp	r5, #0	@ <variable>.is_processed_by_dnr,
	ldreq	r2, [r2, #104]	@ ImgStartAddr.877, <variable>.luma_phy_addr
	ldrne	r2, [r2, #120]	@ ImgStartAddr.877, <variable>.luma_2d_phy_addr
	add	r5, r2, r7	@ ImgEndAddr.878, ImgStartAddr.877, <variable>.ImgSize
	cmp	r2, r4	@ ImgStartAddr.877, DecPhyEndAddr
	movge	r7, #0	@, tmp247
	movlt	r7, #1	@, tmp247
	cmp	r2, r1	@ ImgStartAddr.877, DecPhy
	movlt	r7, #0	@, tmp247,
	cmp	r7, #0	@ tmp247,
	bne	.L51	@,
	cmp	r5, r4	@ ImgEndAddr.878, DecPhyEndAddr
	movgt	r7, #0	@, tmp254
	movle	r7, #1	@, tmp254
	cmp	r5, r1	@ ImgEndAddr.878, DecPhy
	movle	r7, #0	@, tmp254,
	cmp	r7, #0	@ tmp254,
	bne	.L51	@,
	cmp	r5, r4	@ ImgEndAddr.878, DecPhyEndAddr
	movle	r7, #0	@,
	movgt	r7, #1	@,
	cmp	r2, r1	@ ImgStartAddr.877, DecPhy
	movge	r7, #0	@,,
	cmp	r7, #0	@ tmp261,
	bne	.L51	@,
	add	ip, ip, #1	@ i.900, i.901,
	and	ip, ip, #63	@ i.901, i.900,
	cmp	ip, r8	@ i.901, D.37668
	beq	.L53	@,
.L49:
	add	r2, r3, ip	@ tmp231, tmp266, i.901
	add	r2, r6, r2, asl #2	@, tmp236, tmp263, tmp231,
	ldr	r2, [r2, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r2, #0	@ pImage,
	bne	.L48	@,
	b	.L32	@
.L51:
	add	ip, ip, #1	@ i.900, i.901,
	add	r0, r0, #1	@ s32Count, s32Count,
	and	ip, ip, #63	@ i.901, i.900,
	cmp	ip, r8	@ i.901, D.37668
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
	beq	.L61	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L61	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r2, r3, #976	@ tmp139, tmp137,
	cmp	r0, r2	@ pImageQueue, tmp139
	beq	.L62	@,
.L61:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37165,
	ldmfd	sp!, {r3, pc}	@
.L62:
	add	r1, r1, #178	@ tmp141, ImageID,
	mov	ip, #0	@ tmp146,
	mov	r0, ip	@ D.37165, tmp146
	add	r3, r3, r1, asl #2	@, tmp144, tmp137, tmp141,
	str	ip, [r3, #8]	@ tmp146, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r3, pc}	@
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
	ldr	r2, [r4, #4]	@ D.36233, <variable>.TempImageNum
	cmp	r2, #0	@ D.36233,
	ble	.L75	@,
	mov	r4, #392	@ tmp187,
	ldr	r5, [sp, #4]	@, %sfp
	mla	r6, r4, r2, r3	@ tmp190, tmp187, D.36233, tmp173
	movw	sl, #19174	@ tmp217,
	mul	sl, sl, r5	@ tmp218, tmp217,
	sub	r7, r2, #1	@ i, D.36233,
	add	r9, r6, r8	@ tmp191, tmp190, tmp213
	sub	r5, r7, #1	@ i, i,
	add	fp, r9, #51456	@ ivtmp.956, tmp191,
	mov	r6, #0	@ tmp219,
	add	fp, fp, #80	@ ivtmp.956, ivtmp.956,
	and	ip, r7, #1	@ tmp222, i,
	mov	r9, r6	@ tmp203, tmp219
	mov	r7, r8	@ tmp193, tmp213
	ldr	r1, [fp, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r4, fp, #392	@ ivtmp.956, ivtmp.956,
	add	r0, sl, r1	@ tmp196, tmp218, <variable>.image_id
	add	lr, r8, r0, asl #2	@, tmp201, tmp213, tmp196,
	add	r2, lr, #720	@ tmp202, tmp201,
	str	r6, [r2, #0]	@ tmp219, <variable>.LogicImageIsUsed
	str	ip, [sp, #0]	@,
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	ldr	r3, [sp, #0]	@,
	beq	.L74	@,
	cmp	r3, #0	@ tmp222,
	beq	.L66	@,
	ldr	r9, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r5, r5, #1	@ i, i,
	sub	r4, fp, #784	@ ivtmp.956, ivtmp.956,
	mov	r7, r8	@ tmp193, tmp213
	add	r2, sl, r9	@ tmp251, tmp218, <variable>.image_id
	mov	r9, r6	@ tmp203, tmp219
	add	ip, r8, r2, asl #2	@, tmp254, tmp213, tmp251,
	add	r0, ip, #720	@ tmp255, tmp254,
	str	r6, [r0, #0]	@ tmp219, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	beq	.L74	@,
.L66:
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
	sub	r4, r4, #784	@ ivtmp.956, ivtmp.956,
	add	r2, sl, r0	@ tmp242, tmp218, <variable>.image_id
	add	ip, r2, #178	@ tmp243, tmp242,
	add	r3, r8, ip, asl #2	@, tmp245, tmp213, tmp243,
	str	r6, [r3, #8]	@ tmp219, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	bne	.L66	@,
.L74:
	ldr	r3, [sp, #4]	@, %sfp
	movw	r1, #:lower16:76696	@ tmp208,
	movt	r1, #:upper16:76696	@ tmp208,
	mov	r0, r9	@ D.36236, tmp203
	mla	lr, r1, r3, r7	@ tmp209, tmp208,, tmp193
	add	r2, lr, #51456	@ tmp210, tmp209,
	add	ip, r2, #72	@ tmp210, tmp210,
	str	r9, [ip, #4]	@ tmp203, <variable>.TempImageNum
.L65:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L75:
	bl	vfmw_dprint_nothing	@
	mov	r1, #0	@ tmp183,
	mvn	r0, #0	@ D.36236,
	str	r1, [r4, #4]	@ tmp183, <variable>.TempImageNum
	b	.L65	@
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
	subs	r2, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L81	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r1, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L81	@,
	mov	r0, r2	@ D.36183, ChanID
	str	r2, [r3, #20]	@ ChanID, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L81:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36183,
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L87	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L87	@,
	bl	DNR_StopChan	@
	mov	r0, r4	@ D.36173, ChanID
	ldmfd	sp!, {r4, pc}	@
.L87:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36173,
	ldmfd	sp!, {r4, pc}	@
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L93	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L93	@,
	str	r2, [r3, #20]	@ <variable>.s32IsOpen, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L93:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36089,
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L100	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L100	@,
	cmp	r1, #0	@ pArgs,
	beq	.L100	@,
	ldr	r4, [r1, #12]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	movw	ip, #:lower16:76636	@ tmp140,
	movt	ip, #:upper16:76636	@ tmp140,
	movw	r2, #:lower16:76652	@ tmp143,
	movt	r2, #:upper16:76652	@ tmp143,
	str	r4, [r3, ip]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	ldr	r1, [r1, #16]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	str	r1, [r3, r2]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L100:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36075,
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L107	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L107	@,
	cmp	r1, #0	@ pArgs,
	beq	.L107	@,
	ldr	r1, [r1, #0]	@ tmp141,* pArgs
	movw	ip, #:lower16:76632	@ tmp140,
	movt	ip, #:upper16:76632	@ tmp140,
	str	r1, [r3, ip]	@ tmp141, <variable>.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L107:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36061,
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L118	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp175,
	movt	r3, #:upper16:.LANCHOR0	@ tmp175,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L118	@,
	cmp	r1, #0	@ pArgs,
	beq	.L118	@,
	movw	r2, #:lower16:76684	@ tmp145,
	movt	r2, #:upper16:76684	@ tmp145,
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	ip, [r3, r2]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	strb	r0, [r3, #10]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldreqsb	r0, [r1, #0]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movweq	ip, #:lower16:76696	@ tmp148,
	ldrneb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movteq	ip, #:upper16:76696	@ tmp148,
	streq	r0, [r3, ip]	@ <variable>.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	strneb	ip, [r3, #9]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldrsb	r0, [r1, #1]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, #1	@ <variable>.s32VcmpEn,
	beq	.L119	@,
.L115:
	mov	r0, #0	@ D.36029,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L119:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	strb	ip, [r3, #11]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldrsb	r3, [r1, #2]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r3, #1	@ <variable>.s32WmEn,
	beq	.L120	@,
	movw	r0, #:lower16:76624	@ tmp169,
	movw	r3, #:lower16:76628	@ tmp172,
	movt	r0, #:upper16:76624	@ tmp169,
	movt	r3, #:upper16:76628	@ tmp172,
	movw	ip, #65535	@ tmp170,
	str	ip, [r4, r0]	@ tmp170, <variable>.s32VcmpWmStartLine
	mov	r0, #0	@ D.36029,
	str	ip, [r4, r3]	@ tmp170, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L120:
	ldr	r2, [r1, #4]	@ D.36048, <variable>.s32VcmpWmStartLine
	movw	r5, #:lower16:76624	@ tmp159,
	movt	r5, #:upper16:76624	@ tmp159,
	movw	r6, #:lower16:76628	@ tmp161,
	movt	r6, #:upper16:76628	@ tmp161,
	str	r2, [r4, r5]	@ D.36048, <variable>.s32VcmpWmStartLine
	ldr	r0, [r1, #8]	@ D.36049, <variable>.s32VcmpWmEndLine
	cmp	r2, r0	@ D.36048, D.36049
	str	r0, [r4, r6]	@ D.36049, <variable>.s32VcmpWmEndLine
	ble	.L115	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #65535	@ tmp164,
	mov	r0, #0	@ D.36029,
	str	r1, [r4, r6]	@ tmp164, <variable>.s32VcmpWmEndLine
	str	r1, [r4, r5]	@ tmp164, <variable>.s32VcmpWmStartLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L118:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36029,
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
	ldr	r3, [r3, #0]	@ D.35842, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.35842,
	beq	.L122	@,
	blx	r3	@ D.35842
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #0]	@ tmp136, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L122:
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
	subs	r5, r0, #0	@ ChanID, ChanID
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	str	r2, [sp, #12]	@ s32Num, %sfp
	bne	.L142	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	beq	.L142	@,
	add	r0, sp, #16	@,,
	mov	r1, #8	@,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp215,
	movt	r3, #:upper16:.LANCHOR0	@ tmp215,
	movw	r0, #26408	@ tmp162,
	movw	r6, #26412	@ tmp164,
	ldr	r2, [r3, r0]	@ i, <variable>.LogicImageQue.history
	ldr	r1, [r3, r6]	@ i.1183, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1191, i,
	cmp	r1, r2	@ i.1183, i.1191
	moveq	r0, r5	@ s32UsingCount, ChanID
	beq	.L130	@,
	mov	r0, r5	@ s32UsingCount, ChanID
.L134:
	add	r1, r3, r2, asl #2	@, tmp170, tmp215, i.1191,
	add	r5, r4, r0, asl #3	@, D.37573, VoUsingFrameArray, s32UsingCount,
	ldr	r1, [r1, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	subs	ip, r1, #0	@ tmp178, pImage,
	movne	ip, #1	@ tmp178
	cmp	r0, #63	@ s32UsingCount,
	movgt	ip, #0	@, tmp178,
	cmp	ip, #0	@ tmp178,
	beq	.L131	@,
	ldr	ip, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	ip, [r4, r0, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r0, r0, #1	@ s32UsingCount, s32UsingCount,
	ldr	lr, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	lr, [r5, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L132:
	add	r2, r2, #1	@ i.1169, i.1191,
	ldr	r1, [r3, r6]	@ i.1183, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1191, i.1169,
	cmp	r1, r2	@ i.1183, i.1191
	bne	.L134	@,
.L130:
	movw	r6, #26416	@ tmp185,
	and	r2, r1, #63	@ i.1189, i.1183,
	ldr	r1, [r3, r6]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	cmp	r1, r2	@ <variable>.LogicImageQue.tail, i.1189
	beq	.L141	@,
.L159:
	add	ip, r3, r2, asl #2	@, tmp192, tmp215, i.1189,
	add	r5, r4, r0, asl #3	@, temp.1176, VoUsingFrameArray, s32UsingCount,
	ldr	r1, [ip, #1056]	@ pImage.1170, <variable>.LogicImageQue.image_ptr
	subs	lr, r1, #0	@ tmp200, pImage.1170,
	movne	lr, #1	@ tmp200
	cmp	r0, #63	@ s32UsingCount,
	movgt	lr, #0	@, tmp200,
	cmp	lr, #0	@ tmp200,
	beq	.L139	@,
	ldr	lr, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	lr, [r4, r0, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	r0, r0, #1	@ s32UsingCount, s32UsingCount,
	ldr	r1, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r1, [r5, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L140:
	add	r2, r2, #1	@ i.1180, i.1189,
	ldr	ip, [r3, r6]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	and	r2, r2, #63	@ i.1189, i.1180,
	cmp	ip, r2	@ <variable>.LogicImageQue.tail, i.1189
	bne	.L159	@,
.L141:
	cmp	r0, #0	@ s32UsingCount,
	beq	.L136	@,
	ldr	r3, [r4, #0]	@, <variable>.FrameAddr
	cmp	r3, #-2147483648	@,
	strne	r4, [sp, #4]	@ VoUsingFrameArray, %sfp
	str	r3, [sp, #8]	@, %sfp
	addne	fp, r4, #16	@ ivtmp.1168, VoUsingFrameArray,
	movne	r8, #0	@ i.1181,
	beq	.L142	@,
.L148:
	add	r7, r8, #1	@ j.1182, i.1181,
	cmp	r7, r0	@ j.1182, s32UsingCount
	bge	.L136	@,
	ldr	r9, [fp, #-8]	@ D.37590, <variable>.FrameAddr
	cmp	r9, #-2147483648	@ D.37590,
	mov	ip, r9	@ D.37596, D.37590
	beq	.L142	@,
	mvn	r6, r7	@ tmp220, j.1182
	add	r5, r6, r0	@ tmp219, tmp220, s32UsingCount
	tst	r5, #1	@ tmp219,
	mov	r1, fp	@ ivtmp.1158, ivtmp.1168
	mov	r6, r8	@ MinIndex, i.1181
	mov	r5, r7	@ j, j.1182
	beq	.L163	@,
	ldr	r6, [r4, r8, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r1, fp	@ ivtmp.1158, ivtmp.1168
	ldr	ip, [r1], #8	@ D.37596, <variable>.FrameAddr
	add	r5, r7, #1	@ j, j.1182,
	cmp	r6, r9	@ <variable>.FrameAddr, D.37590
	movle	r6, r8	@ MinIndex, i.1181
	movgt	r6, r7	@ MinIndex, j.1182
	cmp	ip, #-2147483648	@ D.37596,
	beq	.L142	@,
.L163:
	mov	sl, r7	@ j.1182, j.1182
	b	.L144	@
.L146:
	ldr	r7, [r2], #8	@ D.37596, <variable>.FrameAddr
	cmp	r7, #-2147483648	@ D.37596,
	beq	.L142	@,
	ldr	ip, [r1, #8]	@ D.37596, <variable>.FrameAddr
	add	r1, r2, #8	@ ivtmp.1158, tmp223,
	ldr	r2, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	cmp	r2, r7	@ <variable>.FrameAddr, D.37596
	movgt	r6, r3	@ MinIndex, tmp222
	cmp	ip, #-2147483648	@ D.37596,
	beq	.L142	@,
.L144:
	ldr	r7, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r3, r5, #1	@ tmp222, j,
	mov	r2, r1	@ tmp223, ivtmp.1158
	cmp	r7, ip	@ <variable>.FrameAddr, D.37596
	movgt	r6, r5	@ MinIndex, j
	cmp	r3, r0	@ tmp222, s32UsingCount
	add	r5, r3, #1	@ j, tmp222,
	blt	.L146	@,
	cmp	r6, r8	@ MinIndex, i.1181
	mov	r7, sl	@ j.1182, j.1182
	beq	.L147	@,
	ldr	r8, [sp, #8]	@, %sfp
	add	r3, r4, r6, asl #3	@, temp.1186, VoUsingFrameArray, MinIndex,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r2, [r4, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	str	r8, [sp, #16]	@, TempVoUsingFrameInfo.FrameAddr
	ldr	r1, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r2, [ip, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r9, [sp, #16]	@ TempVoUsingFrameInfo.FrameAddr, TempVoUsingFrameInfo.FrameAddr
	str	r1, [sp, #20]	@ <variable>.FrameSize, TempVoUsingFrameInfo.FrameSize
	str	lr, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r9, [r4, r6, asl #3]	@ TempVoUsingFrameInfo.FrameAddr, <variable>.FrameAddr
	ldr	r8, [sp, #20]	@ TempVoUsingFrameInfo.FrameSize, TempVoUsingFrameInfo.FrameSize
	ldr	r9, [fp, #-8]	@ D.37590, <variable>.FrameAddr
	str	r8, [r3, #4]	@ TempVoUsingFrameInfo.FrameSize, <variable>.FrameSize
.L147:
	cmp	r9, #-2147483648	@ D.37590,
	sub	r3, fp, #8	@, ivtmp.1168,
	str	r9, [sp, #8]	@ D.37590, %sfp
	mov	r8, r7	@ i.1181, j.1182
	str	r3, [sp, #4]	@, %sfp
	add	fp, fp, #8	@ ivtmp.1168, ivtmp.1168,
	bne	.L148	@,
.L142:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37554,
.L127:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L131:
	cmp	r0, #63	@ s32UsingCount,
	ble	.L132	@,
	mvn	r0, #0	@ D.37554,
	b	.L127	@
.L139:
	cmp	r0, #63	@ s32UsingCount,
	ble	.L140	@,
	mvn	r0, #0	@ D.37554,
	b	.L127	@
.L136:
	ldr	lr, [sp, #12]	@, %sfp
	str	r0, [lr, #0]	@ s32UsingCount,
	mov	r0, #0	@ D.37554,
	b	.L127	@
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
	ldr	r2, .L167	@ tmp136,
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
.L168:
	.align	2
.L167:
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
	@ link register save eliminated.
	mov	r0, #0	@,
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
	subs	r5, r0, #0	@ ChanID, ChanID
	ldr	r3, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	mvngt	r0, #0	@ D.37746,
	str	r3, [sp, #20]	@ __stack_chk_guard, D.38447
	ble	.L176	@,
.L173:
	ldr	ip, [sp, #20]	@ D.38447, D.38447
	ldr	r3, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	ip, r3	@ D.38447, __stack_chk_guard
	bne	.L177	@,
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L176:
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
	mov	r1, #1	@ tmp162,
	mov	r0, #0	@ D.37746,
	add	r6, r6, r5, asl #3	@, tmp160, tmp138, tmp155,
	str	r1, [r6, #16]	@ tmp162, <variable>.s32IsOpen
	b	.L173	@
.L177:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #440
	sub	sp, sp, #440	@,,
	ble	.L187	@,
.L179:
	mvn	r0, #0	@ D.37699,
.L184:
	add	sp, sp, #440	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L187:
	cmp	r1, #0	@ pChanMem,
	beq	.L179	@,
	ldr	r0, [r1, #0]	@ D.37704, <variable>.PhyAddr
	cmp	r0, #0	@ D.37704,
	beq	.L179	@,
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L179	@,
	ldr	r1, [r1, #8]	@ D.37708, <variable>.Length
	cmp	r1, #0	@ D.37708,
	ble	.L179	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	ip, [ip, #36]	@ D.37712, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37712,
	beq	.L180	@,
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
	blx	ip	@ D.37712
	cmp	r0, #0	@ D.37714
	bne	.L180	@,
	movw	r6, #:lower16:76696	@ tmp170,
	movt	r6, #:upper16:76696	@ tmp170,
	movw	r3, #:lower16:.LANCHOR0	@ tmp205,
	movt	r3, #:upper16:.LANCHOR0	@ tmp205,
	mul	r1, r6, r4	@ tmp169, tmp170, ChanID
	ldr	ip, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r4, r3, #8	@ tmp168, tmp205,
	mov	r7, r5	@ ivtmp.1309, tmp165
	mov	r6, r0	@ i, D.37714
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp180,
	add	lr, r1, r3	@ tmp177, tmp169, tmp205
	add	r5, r1, #26368	@ tmp171, tmp169,
	add	r0, lr, #456	@ tmp178, tmp177,
	add	r8, r5, #64	@ tmp171, tmp171,
	str	ip, [lr, #456]	@ tmp180, <variable>.s32ValidImgNum
	add	r5, r4, r1	@ ivtmp.1313, tmp168, tmp169
	ldr	r2, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, r8	@ pLogicImage, tmp168, tmp171
	ldr	r1, [sp, #32]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r8, r0	@ tmp209, tmp178
	rsb	r3, r1, r2	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r0, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
.L183:
	ldr	ip, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r6, ip	@ i, <variable>.s32ValidImgNum
	add	r6, r6, #1	@ i, i,
	ldrlt	ip, [r7, #8]	@ D.37726, MemArrange.FrameAddr
	add	r7, r7, #4	@ ivtmp.1309, ivtmp.1309,
	ldrge	ip, [sp, #32]	@ temp.1321, MemArrange.FrameAddr
	str	ip, [r5, #456]	@ temp.1321, <variable>.s32ImageAddr
	mov	r0, ip	@, temp.1321
	str	ip, [r4, #120]	@ temp.1321, <variable>.luma_2d_phy_addr
	add	r5, r5, #4	@ ivtmp.1313, ivtmp.1313,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r6, #64	@ i,
	str	r2, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	bne	.L183	@,
.L180:
	mov	r0, #0	@ D.37699,
	b	.L184	@
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
	mov	r4, r4, lsr #3	@ ivtmp.1364, <variable>.image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L189	@,
	ldr	r7, [r5, #148]	@ temp.1368, <variable>.image_height
	cmp	r7, #0	@ temp.1368,
	beq	.L189	@,
	ldr	r8, [r5, #172]	@ pretmp.1343, <variable>.image_stride
	mov	r6, r4	@ D.38555, ivtmp.1364
	ldr	r5, [r5, #144]	@ pretmp.1367, <variable>.image_width
	mov	r0, #0	@ CheckSum,
	bic	r8, r8, #3	@ pretmp.1369, pretmp.1343,
.L192:
	cmp	r5, #0	@ pretmp.1367,
	add	r1, r1, r8	@ p32, p32, pretmp.1369
	beq	.L190	@,
	mov	r3, #1	@ x,
	ldr	r2, [r1, #0]	@ tmp150,* p32
	cmp	r5, r3	@ pretmp.1367, x
	sub	ip, r5, #1	@ tmp154, pretmp.1367,
	and	ip, ip, r3	@ tmp156, tmp154,
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L190	@,
	cmp	ip, #0	@ tmp156,
	beq	.L191	@,
	mov	r3, #2	@ x,
	cmp	r5, r3	@ pretmp.1367, x
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L190	@,
.L191:
	add	lr, r3, #1	@ tmp157, x,
	mov	ip, r3, asr #2	@ tmp159, x,
	add	r3, lr, #1	@ x, tmp157,
	mov	r2, lr, asr #2	@ tmp163, tmp157,
	ldr	lr, [r1, ip, asl #2]	@ tmp160,* p32
	cmp	r5, r3	@ pretmp.1367, x
	ldr	r2, [r1, r2, asl #2]	@ tmp164,* p32
	add	r0, r0, lr	@ CheckSum, CheckSum, tmp160
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp164
	bhi	.L191	@,
.L190:
	add	r4, r4, r6	@ ivtmp.1364, ivtmp.1364, D.38555
	rsb	r3, r6, r4	@ tmp151, D.38555, ivtmp.1364
	cmp	r7, r3	@ temp.1368, tmp151
	bhi	.L192	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L189:
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
	mov	r6, r1	@ pChanMem, pChanMem
	.pad #476
	sub	sp, sp, #476	@,,
	subs	r5, r0, #0	@ ChanID, ChanID
	ldr	r1, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	str	r1, [sp, #468]	@ __stack_chk_guard, D.38628
	ble	.L212	@,
.L203:
	mvn	r0, #0	@ D.35973,
.L209:
	ldr	r2, [sp, #468]	@ D.38628, D.38628
	ldr	r1, [r4, #0]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r1	@ D.38628, __stack_chk_guard
	bne	.L213	@,
	add	sp, sp, #476	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L212:
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
	beq	.L203	@,
	ldr	r0, [r6, #0]	@ D.35985, <variable>.PhyAddr
	cmp	r0, #0	@ D.35985,
	beq	.L203	@,
	ldr	ip, [r6, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L203	@,
	ldr	r1, [r6, #8]	@ D.35989, <variable>.Length
	cmp	r1, #0	@ D.35989,
	ble	.L203	@,
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	fp, [lr, #36]	@ D.35993, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	fp, #0	@ D.35993,
	beq	.L204	@,
	mov	lr, #0	@ tmp161,
	mvn	r6, #0	@ tmp164,
	add	ip, lr, #64	@ tmp162, tmp162,
	str	r6, [sp, #12]	@ tmp164,
	str	lr, [sp, #8]	@ tmp161,
	add	r6, sp, #36	@ tmp165,,
	str	lr, [sp, #0]	@ tmp161,
	str	ip, [sp, #20]	@ tmp162,
	str	ip, [sp, #4]	@ tmp162,
	str	r6, [sp, #16]	@ tmp165,
	blx	fp	@ D.35993
	cmp	r0, #0	@ D.35995
	bne	.L204	@,
	add	r2, r8, r7	@ tmp177, tmp155, tmp233
	ldr	lr, [sp, #312]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r1, r2, #456	@ tmp178, tmp177,
	add	r3, r8, #26368	@ tmp171, tmp155,
	cmp	lr, #64	@ MemArrange.ValidFrameNum,
	movge	lr, #64	@ tmp180,
	str	lr, [r2, #456]	@ tmp180, <variable>.s32ValidImgNum
	ldr	ip, [sp, #44]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	fp, r0	@ i, D.35995
	ldr	r0, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, r3, #64	@ tmp171, tmp171,
	add	r8, sl, r8	@ pLogicImage, tmp236, tmp171
	mov	r3, r1	@ tmp240, tmp178
	rsb	r2, ip, r0	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r2, [r1, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
	b	.L208	@
.L214:
	ldr	lr, [r6, #8]	@ D.36007, MemArrange.FrameAddr
	str	lr, [r9, #456]	@ D.36007, <variable>.s32ImageAddr
	mov	r0, lr	@, D.36007
	str	lr, [r8, #120]	@ D.36007, <variable>.luma_2d_phy_addr
	str	r3, [sp, #24]	@,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r8, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r8, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r8, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [sp, #24]	@,
	ldr	ip, [r3, #4]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	ip, [r8, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
.L206:
	add	fp, fp, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1418, ivtmp.1418,
	cmp	fp, #64	@ i,
	add	r9, r9, #4	@ ivtmp.1422, ivtmp.1422,
	beq	.L207	@,
	add	r8, r8, #392	@ pLogicImage, pLogicImage,
.L208:
	ldr	r1, [r3, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r1, fp	@ <variable>.s32ValidImgNum, i
	bgt	.L214	@,
	ldr	r1, [sp, #44]	@ temp.1433, MemArrange.FrameAddr
	str	r1, [r9, #456]	@ temp.1433, <variable>.s32ImageAddr
	mov	r0, r1	@, temp.1433
	str	r1, [r8, #120]	@ temp.1433, <variable>.luma_2d_phy_addr
	str	r3, [sp, #24]	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [r8, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r3, [r8, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r8, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [sp, #24]	@,
	b	.L206	@
.L213:
	bl	__stack_chk_fail	@
.L204:
	mov	r0, #0	@ D.35973,
	b	.L209	@
.L207:
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
	mov	r0, #0	@ D.35973,
	add	r7, r7, r5, asl #3	@, tmp226, tmp233, tmp221,
	str	ip, [r7, #16]	@ tmp228, <variable>.s32IsOpen
	b	.L209	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	cmp	r0, #0	@ ChanID,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp155,
	mov	r4, r1	@ p_image, p_image
	str	r3, [sp, #0]	@ tmp155, BtmPhyAddr
	str	r3, [sp, #4]	@ tmp155, TopPhyAddr
	bne	.L239	@,
	cmp	r1, #0	@ p_image,
	beq	.L239	@,
	ldr	r1, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	cmp	r1, #0	@ <variable>.top_luma_phy_addr,
	beq	.L219	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp336,
	movt	r5, #:upper16:.LANCHOR0	@ tmp336,
	ldr	r2, [r5, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L239	@,
	bl	VCTRL_GetVidStd	@
	sub	r7, r0, #10	@ tmp160, eVidStd,
	cmp	r7, #2	@ tmp160,
	bls	.L240	@,
.L221:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L222	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L222	@,
	ldr	r1, [r4, #176]	@ prephitmp.1458, <variable>.image_id
	movw	r7, #:lower16:1374389535	@ tmp172,
	movt	r7, #:upper16:1374389535	@ tmp172,
	mov	r0, #100	@ tmp174,
	umull	r3, r2, r7, r1	@, tmp171, tmp172, prephitmp.1458
	mov	r6, r2, lsr #5	@ D.37458, tmp171,
	mls	r6, r0, r6, r1	@ D.37458, tmp174, D.37458, prephitmp.1458
	cmp	r6, #63	@ D.37458,
	bgt	.L241	@,
.L224:
	add	r2, sp, #4	@,,
	mov	r3, sp	@,
	ldr	r0, .L244	@,
	bl	IMGQUE_DeleteImage	@
	mov	r7, r0	@ ret.1473,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L242	@,
.L225:
	movw	r0, #:lower16:76684	@ tmp187,
	movt	r0, #:upper16:76684	@ tmp187,
	cmp	r7, #1	@ ret.1473,
	movw	r2, #:lower16:.LANCHOR0	@ tmp186,
	ldr	lr, [r5, r0]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	movt	r2, #:upper16:.LANCHOR0	@ tmp186,
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L243	@,
.L228:
	mov	r8, #392	@ tmp200,
	movw	lr, #26560	@ tmp198,
	mla	r8, r8, r6, r5	@ tmp201, tmp200, D.37458, tmp336
	ldr	r2, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	movw	r3, #:lower16:.LANCHOR0	@ tmp197,
	movt	r3, #:upper16:.LANCHOR0	@ tmp197,
	ldr	r1, [r8, lr]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r1, r2	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	bne	.L230	@,
	add	r0, r6, #178	@ tmp206, D.37458,
	movw	r9, #26632	@ tmp213,
	mov	sl, #0	@ tmp211,
	add	r3, r3, r0, asl #2	@, tmp209, tmp197, tmp206,
	str	sl, [r3, #8]	@ tmp211, <variable>.LogicImageIsUsed
	ldr	r1, [r8, r9]	@ temp.1477, <variable>.p_usrdat
	cmp	r1, sl	@ temp.1477,
	beq	.L231	@,
	movw	r2, #:lower16:pstVdecUsdPool	@ tmp218,
	movt	r2, #:upper16:pstVdecUsdPool	@ tmp218,
	ldr	ip, [r2, #0]	@ pstVdecUsdPool, pstVdecUsdPool
	cmp	ip, sl	@ pstVdecUsdPool,
	beq	.L231	@,
	movw	lr, #:lower16:s_pstVfmwChan	@ tmp220,
	movt	lr, #:upper16:s_pstVfmwChan	@ tmp220,
	ldr	r2, [lr, #0]	@ temp.1478, s_pstVfmwChan
	cmp	r2, sl	@ temp.1478,
	beq	.L231	@,
	movw	lr, #:lower16:217508	@ tmp227,
	movt	lr, #:upper16:217508	@ tmp227,
	movw	ip, #26824	@ tmp222,
	ldr	r3, [r2, lr]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r0, [r8, ip]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L231	@,
	mov	r0, sl	@, tmp211
	bl	UnMarkUsdByDnr	@
	str	sl, [r8, r9]	@ tmp211, <variable>.p_usrdat
.L231:
	mov	r1, #392	@ tmp240,
	movw	sl, #26636	@ tmp238,
	mla	r8, r1, r6, r5	@ tmp241, tmp240, D.37458, tmp336
	ldr	r1, [r8, sl]	@ temp.1482, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1482,
	beq	.L232	@,
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp243,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp243,
	ldr	r2, [r0, #0]	@ pstVdecUsdPool, pstVdecUsdPool
	cmp	r2, #0	@ pstVdecUsdPool,
	beq	.L232	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp245,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp245,
	ldr	r2, [r3, #0]	@ temp.1484, s_pstVfmwChan
	cmp	r2, #0	@ temp.1484,
	beq	.L232	@,
	movw	r0, #:lower16:217508	@ tmp252,
	movt	r0, #:upper16:217508	@ tmp252,
	ldr	lr, [r2, r0]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	movw	r2, #26824	@ tmp247,
	ldr	ip, [r8, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, lr	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L232	@,
	mov	r0, #0	@,
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp261,
	str	r1, [r8, sl]	@ tmp261, <variable>.p_usrdat
.L232:
	mov	r8, #392	@ tmp265,
	movw	sl, #26640	@ tmp263,
	mla	r8, r8, r6, r5	@ tmp266, tmp265, D.37458, tmp336
	ldr	r1, [r8, sl]	@ temp.1487, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1487,
	beq	.L233	@,
	movw	ip, #:lower16:pstVdecUsdPool	@ tmp268,
	movt	ip, #:upper16:pstVdecUsdPool	@ tmp268,
	ldr	r3, [ip, #0]	@ pstVdecUsdPool, pstVdecUsdPool
	cmp	r3, #0	@ pstVdecUsdPool,
	beq	.L233	@,
	movw	lr, #:lower16:s_pstVfmwChan	@ tmp270,
	movt	lr, #:upper16:s_pstVfmwChan	@ tmp270,
	ldr	r2, [lr, #0]	@ temp.1489, s_pstVfmwChan
	cmp	r2, #0	@ temp.1489,
	beq	.L233	@,
	movw	r3, #:lower16:217508	@ tmp277,
	movt	r3, #:upper16:217508	@ tmp277,
	movw	ip, #26824	@ tmp272,
	ldr	r0, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r2, [r8, ip]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r2, r0	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L233	@,
	mov	r0, #0	@,
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp286,
	str	r1, [r8, sl]	@ tmp286, <variable>.p_usrdat
.L233:
	mov	lr, #392	@ tmp290,
	movw	r8, #26644	@ tmp288,
	mla	r6, lr, r6, r5	@ tmp291, tmp290, D.37458, tmp336
	ldr	r1, [r6, r8]	@ D.37498, <variable>.p_usrdat
	cmp	r1, #0	@ D.37498,
	beq	.L238	@,
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp293,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp293,
	ldr	r2, [r0, #0]	@ pstVdecUsdPool, pstVdecUsdPool
	cmp	r2, #0	@ pstVdecUsdPool,
	beq	.L238	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp295,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp295,
	ldr	r2, [ip, #0]	@ D.37504, s_pstVfmwChan
	cmp	r2, #0	@ D.37504,
	beq	.L238	@,
	movw	r0, #:lower16:217508	@ tmp302,
	movt	r0, #:upper16:217508	@ tmp302,
	ldr	r3, [r2, r0]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	movw	r2, #26824	@ tmp297,
	ldr	lr, [r6, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	lr, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	bne	.L238	@,
	mov	r0, #0	@,
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp311,
	str	r1, [r6, r8]	@ tmp311, <variable>.p_usrdat
.L238:
	rsbs	r2, r7, #1	@ prephitmp.1460, ret
	movcc	r2, #0	@ prephitmp.1460
.L235:
	movw	lr, #:lower16:76684	@ tmp328,
	movt	lr, #:upper16:76684	@ tmp328,
	ldr	ip, [r5, lr]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	r1, #0	@, tmp334
	andeq	r1, r2, #1	@,, tmp334, prephitmp.1460
	cmp	r1, #0	@ tmp334,
	beq	.L217	@,
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_RlsDSDFrame	@
	mov	r7, r0	@ ret,
	b	.L217	@
.L240:
	movw	lr, #:lower16:g_VdmCharacter	@ tmp161,
	movt	lr, #:upper16:g_VdmCharacter	@ tmp161,
	ldr	ip, [lr, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	bne	.L221	@,
.L222:
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_ReleaseChanImage	@
	subs	r7, r0, #0	@ D.37454,
	bne	.L219	@,
.L217:
	mov	r0, r7	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L219:
	mvn	r7, #0	@ ret,
	b	.L217	@
.L239:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ ret,
	b	.L217	@
.L230:
	bl	vfmw_dprint_nothing	@
	b	.L238	@
.L241:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #176]	@ prephitmp.1458, <variable>.image_id
	b	.L224	@
.L242:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp180,
	movt	r3, #:upper16:.LANCHOR1	@ tmp180,
	movw	r2, #:lower16:g_TraceImgPeriod	@ tmp183,
	movt	r2, #:upper16:g_TraceImgPeriod	@ tmp183,
	ldr	r1, [r3, #3048]	@ last_rec_pos_time, last_rec_pos_time
	ldr	ip, [r2, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, r1, r0	@ tmp181, last_rec_pos_time, currtime
	cmp	r1, ip	@ tmp181, g_TraceImgPeriod
	strhi	r0, [r3, #3048]	@ currtime, last_rec_pos_time
	b	.L225	@
.L243:
	movw	r1, #:lower16:76688	@ tmp190,
	movt	r1, #:upper16:76688	@ tmp190,
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r3, [r2, r1]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	ip, r3	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	bhi	.L229	@,
	movw	ip, #:lower16:76692	@ tmp194,
	movt	ip, #:upper16:76692	@ tmp194,
	ldr	lr, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r0, [r2, ip]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	lr, r0	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	bls	.L228	@,
.L229:
	ldr	r6, [r4, #176]	@ D.37457, <variable>.image_id
	mov	r0, #0	@,
	ldr	lr, [r4, #380]	@ <variable>.resetNum, <variable>.resetNum
	mov	r1, r4	@, p_image
	add	ip, r6, lr	@ tmp316, D.37457, <variable>.resetNum
	sub	r7, ip, #6	@ tmp318, tmp316,
	str	r7, [r4, #176]	@ tmp318, <variable>.image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r7, r0, #0	@ ret,
	strne	r6, [r4, #176]	@ D.37457, <variable>.image_id
	mvnne	r7, #0	@ ret,
	bne	.L217	@,
	ldr	r0, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #1	@ prephitmp.1460,
	add	r3, r5, r0, asl #2	@, tmp324, tmp336, <variable>.image_id,
	str	r7, [r3, #744]	@ ret, <variable>.LogicImageIsUsed
	str	r6, [r4, #176]	@ D.37457, <variable>.image_id
	b	.L235	@
.L245:
	.align	2
.L244:
	.word	.LANCHOR0+976
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ p_image, p_image
	bne	.L262	@,
	cmp	r1, #0	@ p_image,
	beq	.L262	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp204,
	movt	r6, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r3, [r6, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #0	@ <variable>.s32IsOpen,
	beq	.L262	@,
	bl	VCTRL_GetVidStd	@
	mov	r4, r0	@ eVidStd,
	sub	r0, r0, #10	@ tmp148, eVidStd,
	cmp	r0, #2	@ tmp148,
	bls	.L263	@,
.L251:
	cmp	r4, #4	@ eVidStd,
	cmpne	r4, #14	@, eVidStd,
	beq	.L252	@,
	cmp	r4, #18	@ eVidStd,
	beq	.L252	@,
	mov	r1, r5	@, p_image
	ldr	r0, .L266	@,
	bl	IMGQUE_GetImage	@
	mov	r4, r0	@ ret.1516,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L264	@,
.L256:
	cmp	r4, #1	@ ret.1516,
	beq	.L265	@,
.L254:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L263:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp149,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp149,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	bne	.L251	@,
.L252:
	mov	r0, #0	@,
	mov	r1, r5	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.37371
	bne	.L254	@,
	cmp	r4, #18	@ eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #120]	@ D.37376, <variable>.luma_2d_phy_addr
	ldr	lr, [r5, #124]	@ D.37378, <variable>.chrom_2d_phy_addr
	ldr	r1, [r5, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r3, [r5, #88]	@ D.37376, <variable>.top_luma_phy_addr
	add	r2, r1, lr	@ tmp162, <variable>.image_stride, D.37378
	add	ip, r1, r3	@ tmp160, <variable>.image_stride, D.37376
	str	r2, [r5, #100]	@ tmp162, <variable>.btm_chrom_phy_addr
	str	ip, [r5, #96]	@ tmp160, <variable>.btm_luma_phy_addr
	str	lr, [r5, #92]	@ D.37378, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L265:
	ldr	lr, [r5, #176]	@ D.37403, <variable>.image_id
	movw	r4, #:lower16:.LANCHOR0	@ tmp172,
	movt	r4, #:upper16:.LANCHOR0	@ tmp172,
	add	r0, lr, #178	@ tmp173, D.37403,
	add	r6, r6, r0, asl #2	@, tmp176, tmp204, tmp173,
	ldr	r2, [r6, #8]	@ D.37404, <variable>.LogicImageIsUsed
	cmp	r2, #3	@ D.37404,
	beq	.L262	@,
	movw	r1, #:lower16:76684	@ tmp179,
	movt	r1, #:upper16:76684	@ tmp179,
	ldr	ip, [r4, r1]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L258	@,
	cmp	r2, #2	@ D.37404,
	beq	.L258	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	mov	r1, r5	@, p_image
	bl	DNR_ReleaseImage	@
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #0	@ tmp188,
	mvn	r0, #0	@ ret,
	add	r3, ip, #178	@ tmp182, <variable>.image_id,
	add	r4, r4, r3, asl #2	@, tmp186, tmp172, tmp182,
	str	r2, [r4, #8]	@ tmp188, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L264:
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp166,
	movt	ip, #:upper16:.LANCHOR1	@ tmp166,
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp169,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp169,
	ldr	r1, [ip, #3052]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r3, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r3, r1, r0	@ tmp167, last_rec_pos_time, currtime
	cmp	r3, r2	@ tmp167, g_TraceImgPeriod
	strhi	r0, [ip, #3052]	@ currtime, last_rec_pos_time
	b	.L256	@
.L258:
	mov	r0, #3	@ tmp202,
	str	r0, [r6, #8]	@ tmp202, <variable>.LogicImageIsUsed
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L262:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L267:
	.align	2
.L266:
	.word	.LANCHOR0+976
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
	ldr	r2, [r5, #4]	@ prephitmp.1534, <variable>.TempImageNum
	cmp	r2, #0	@ prephitmp.1534,
	ble	.L294	@,
	sub	r4, r2, #1	@ i, prephitmp.1534,
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
	ldreq	r2, [r5, #4]	@ prephitmp.1534, <variable>.TempImageNum
	subeq	r4, r2, #1	@ i, prephitmp.1534,
	cmp	r4, #0	@ i,
	blt	.L272	@,
	ldr	ip, [sp, #8]	@, %sfp
	movw	r8, #:lower16:76696	@ tmp194,
	movt	r8, #:upper16:76696	@ tmp194,
	mov	r1, #392	@ tmp199,
	ldr	r7, .L297	@ tmp250,
	mov	sl, r1	@ tmp253, tmp199
	mul	r8, r8, ip	@ tmp193, tmp194,
	movw	fp, #19174	@ tmp256,
	mla	r3, r1, r4, r8	@ tmp211, tmp253, i, tmp255
	movw	lr, #:lower16:g_event_report	@,
	mla	r6, r1, r2, r8	@ tmp202, tmp199, prephitmp.1534, tmp193
	add	r9, r8, #968	@ tmp195, tmp193,
	add	r1, r3, #51456	@ tmp212, tmp211,
	add	r9, r7, r9	@ D.36214, tmp250, tmp195
	add	r2, r1, #72	@ tmp212, tmp212,
	movt	lr, #:upper16:g_event_report	@,
	add	r0, r6, #51456	@ tmp203, tmp202,
	add	r6, r7, r2	@ pTemp, tmp250, tmp212
	add	r5, r0, #72	@ tmp203, tmp203,
	mov	r0, r9	@, D.36214
	mov	r1, r6	@, pTemp
	str	lr, [sp, #12]	@, %sfp
	mul	fp, fp, ip	@ tmp257, tmp256,
	and	lr, r4, #1	@, i,
	str	lr, [sp, #16]	@, %sfp
	bl	IMGQUE_InsertImage	@
	add	r5, r7, r5	@ ivtmp.1552, tmp250, tmp203
	cmp	r0, #1	@,
	beq	.L295	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	add	ip, fp, r3	@ tmp292, tmp257, <variable>.image_id
	add	r6, r2, ip, asl #2	@, tmp295,, tmp292,
	add	lr, r6, #720	@ tmp296, tmp295,
	mov	r6, #0	@,
	str	r6, [lr, #0]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
.L279:
	subs	r4, r4, #1	@ i, i,
	sub	r5, r5, #392	@ ivtmp.1552, ivtmp.1552,
	bmi	.L272	@,
	ldr	r6, [sp, #16]	@, %sfp
	cmp	r6, #0	@,
	beq	.L275	@,
	mla	lr, sl, r4, r8	@ tmp316, tmp253, i, tmp255
	mov	r0, r9	@, D.36214
	add	r1, lr, #51456	@ tmp318, tmp316,
	add	ip, r1, #72	@ tmp318, tmp318,
	add	r6, r7, ip	@ pTemp, tmp250, tmp318
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L291	@,
	ldr	r6, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #0	@,
	sub	r5, r5, #392	@ ivtmp.1552, ivtmp.1552,
	add	ip, fp, r6	@ tmp324, tmp257, <variable>.image_id
	movw	r6, #:lower16:.LANCHOR0	@,
	movt	r6, #:upper16:.LANCHOR0	@,
	add	r3, r6, ip, asl #2	@, tmp327,, tmp324,
	add	r2, r3, #720	@ tmp328, tmp327,
	str	r0, [r2, #0]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	subs	r4, r4, #1	@ i, tmp264,
	bpl	.L275	@,
.L272:
	ldr	r0, [sp, #8]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp242,
	ldr	r1, [sp, #20]	@, %sfp
	movt	r3, #:upper16:76696	@ tmp242,
	mov	ip, #0	@ tmp245,
	mla	r2, r3, r0, r1	@ tmp243, tmp242,,
	mov	r0, ip	@ D.36204, tmp245
	add	r1, r2, #51456	@ tmp244, tmp243,
	add	r3, r1, #72	@ tmp244, tmp244,
	str	ip, [r3, #4]	@ tmp245, <variable>.TempImageNum
.L270:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L296:
	ldr	r1, [sp, #12]	@, %sfp
	add	r2, sp, #28	@,,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [sp, #8]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report.521, g_event_report
	add	lr, fp, r3	@ tmp217, tmp257, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	add	lr, r3, lr, asl #2	@, tmp222,, tmp217,
	cmp	ip, #0	@ g_event_report.521,
	mov	r3, #2	@ tmp224,
	mov	r1, #5	@,
	str	r3, [lr, #720]	@ tmp224, <variable>.LogicImageIsUsed
	beq	.L274	@,
	str	r6, [sp, #28]	@ pTemp, para
	blx	ip	@ g_event_report.521
.L274:
	sub	r4, r4, #1	@ tmp264, i,
	mov	r0, r9	@, D.36214
	sub	r5, r5, #392	@ ivtmp.1552, ivtmp.1552,
	mla	r2, sl, r4, r8	@ tmp284, tmp253, tmp264, tmp255
	add	r6, r2, #51456	@ tmp286, tmp284,
	add	r1, r6, #72	@ tmp286, tmp286,
	add	r6, r7, r1	@ pTemp, tmp250, tmp286
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L285	@,
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
	beq	.L286	@,
	str	r6, [sp, #28]	@ pTemp, para
	ldr	r6, [sp, #4]	@, %sfp
	blx	r6	@
.L286:
	subs	r4, r4, #1	@ i, tmp264,
	sub	r5, r5, #392	@ ivtmp.1552, ivtmp.1552,
	bmi	.L272	@,
.L275:
	mla	ip, sl, r4, r8	@ tmp271, tmp253, i, tmp255
	mov	r0, r9	@, D.36214
	add	r3, ip, #51456	@ tmp273, tmp271,
	add	r2, r3, #72	@ tmp273, tmp273,
	add	r6, r7, r2	@ pTemp, tmp250, tmp273
	mov	r1, r6	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L296	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r6, #0	@,
	add	lr, fp, r3	@ tmp230, tmp257, <variable>.image_id
	add	r2, lr, #178	@ tmp232, tmp230,
	add	r0, ip, r2, asl #2	@, tmp235,, tmp232,
	str	r6, [r0, #8]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	b	.L274	@
.L285:
	ldr	r0, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	add	r2, fp, r0	@ tmp346, tmp257, <variable>.image_id
	add	r6, r2, #178	@ tmp347, tmp346,
	add	ip, r1, r6, asl #2	@, tmp349,, tmp347,
	mov	r6, #0	@,
	str	r6, [ip, #8]	@, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	b	.L286	@
.L291:
	ldr	lr, [sp, #12]	@, %sfp
	movw	r2, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	r2, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp338,
	ldr	ip, [lr, #0]	@ g_event_report.521, g_event_report
	add	r0, fp, r3	@ tmp333, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.521,
	add	lr, r2, r0, asl #2	@, tmp336,, tmp333,
	str	r1, [lr, #720]	@ tmp338, <variable>.LogicImageIsUsed
	beq	.L286	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.521
	b	.L286	@
.L295:
	ldr	r0, [sp, #12]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r3, [r5, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	lr, #:upper16:.LANCHOR0	@,
	mov	r1, #2	@ tmp306,
	ldr	ip, [r0, #0]	@ g_event_report.521, g_event_report
	add	r2, fp, r3	@ tmp301, tmp257, <variable>.image_id
	cmp	ip, #0	@ g_event_report.521,
	add	r0, lr, r2, asl #2	@, tmp304,, tmp301,
	str	r1, [r0, #720]	@ tmp306, <variable>.LogicImageIsUsed
	beq	.L279	@,
	str	r6, [sp, #28]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #8]	@, %sfp
	add	r2, sp, #28	@,,
	blx	ip	@ g_event_report.521
	b	.L279	@
.L294:
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ tmp157,
	mvn	r0, #0	@ D.36204,
	str	r2, [r5, #4]	@ tmp157, <variable>.TempImageNum
	b	.L270	@
.L298:
	.align	2
.L297:
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
	bne	.L302	@,
	add	r4, r7, #75776	@ tmp177, tmp169,
	ldr	r0, [r6, #80]	@ D.36310, <variable>.GopNum
	add	r4, r4, #864	@ tmp177, tmp177,
	movw	r1, #:lower16:76640	@ tmp173,
	movt	r1, #:upper16:76640	@ tmp173,
	ldr	ip, [r4, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r0, ip	@ D.36310, <variable>.LastGopNum
	beq	.L303	@,
	str	r0, [r4, #4]	@ D.36310, <variable>.LastGopNum
	mov	ip, #1	@ tmp198,
	ldr	r0, [r6, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, r2]	@ tmp198, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.DistanceBeforeFirstFrame,
	str	r0, [r7, r1]	@ <variable>.DistanceBeforeFirstFrame, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L312	@,
	ldr	r2, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r4, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
.L305:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L302:
	add	r3, r7, #75776	@ tmp258, tmp169,
	ldr	r2, [r6, #80]	@ temp.1580, <variable>.GopNum
	add	r3, r3, #864	@ tmp258, tmp258,
	movw	r1, #:lower16:76640	@ tmp254,
	movt	r1, #:upper16:76640	@ tmp254,
	ldr	r0, [r3, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r2, r0	@ temp.1580, <variable>.LastGopNum
	beq	.L306	@,
	mov	r0, r5	@, InstId
	mov	r1, r6	@, pImage
	str	r2, [r3, #4]	@ temp.1580, <variable>.LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	bne	.L313	@,
.L307:
	movw	r1, #:lower16:76696	@ tmp269,
	movt	r1, #:upper16:76696	@ tmp269,
	ldr	r0, [r6, #76]	@ temp.1583, <variable>.DistanceBeforeFirstFrame
	movw	r7, #:lower16:76640	@ tmp267,
	mul	r3, r1, r5	@ tmp268, tmp269, InstId
	movt	r7, #:upper16:76640	@ tmp267,
	cmp	r0, #0	@ temp.1583,
	add	r4, r3, r4	@ tmp270, tmp268, tmp359
	str	r0, [r4, r7]	@ temp.1583, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L314	@,
	ldr	r3, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r4, r7]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L305	@
.L306:
	ldr	r0, [r7, r1]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ <variable>.u32BackwardOptimizeDistanceCnt,
	bne	.L315	@,
	ldr	r1, [r6, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r3, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L305	@
.L313:
	bl	vfmw_dprint_nothing	@
	b	.L307	@
.L303:
	ldr	ip, .L317	@ tmp244,
	mov	r0, r5	@, InstId
	add	r1, r3, ip	@, tmp167, tmp244
	bl	VCTRL_ReleaseChanImage	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstId
	str	r8, [r7, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L305	@
.L315:
	ldr	r1, [r7, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L316	@,
.L310:
	movw	r2, #:lower16:76696	@ tmp326,
	movt	r2, #:upper16:76696	@ tmp326,
	mov	r0, r5	@, InstId
	ldr	lr, .L317	@ tmp327,
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
	b	.L305	@
.L312:
	ldr	lr, .L317	@ tmp210,
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
	b	.L305	@
.L314:
	ldr	lr, .L317	@ tmp276,
	mov	r0, r5	@, InstId
	add	r1, r3, lr	@, tmp268, tmp276
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r4, r7]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mov	r0, #0	@ tmp284,
	str	r0, [r4, #440]	@ tmp284, <variable>.s321DFrameIsProc
	sub	r2, ip, #1	@ tmp298, <variable>.u32BackwardOptimizeDistanceCnt,
	mvn	r0, #0	@ ret,
	str	r2, [r4, r7]	@ tmp298, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L305	@
.L316:
	movw	r2, #:lower16:g_event_report	@ tmp320,
	movt	r2, #:upper16:g_event_report	@ tmp320,
	ldr	r3, [r2, #0]	@ g_event_report.529, g_event_report
	cmp	r3, #0	@ g_event_report.529,
	beq	.L310	@,
	add	r2, sp, #8	@ tmp322,,
	mov	r0, r5	@, InstId
	str	r1, [r2, #-4]!	@ <variable>.Cur1DImage.last_frame, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.529
	b	.L310	@
.L318:
	.align	2
.L317:
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
	bne	.L322	@,
	ldr	r3, [r1, #128]	@ D.36264, <variable>.is_fld_save
	cmp	r3, #0	@ D.36264,
	beq	.L333	@,
	cmp	r3, #1	@ D.36264,
	bne	.L325	@,
	ldr	ip, [r1, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, ip, #3	@ D.36269, <variable>.top_fld_type,
	beq	.L326	@,
	ldr	r0, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r0, #3	@ <variable>.bottom_fld_type,
	bne	.L325	@,
.L326:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L324	@,
	cmp	r3, #0	@ D.36269,
	bne	.L324	@,
	ldr	r3, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r3, #3	@ <variable>.bottom_fld_type,
	beq	.L325	@,
.L324:
	movw	r0, #:lower16:76696	@ tmp183,
	movt	r0, #:upper16:76696	@ tmp183,
	movw	r1, #51528	@ tmp181,
	mov	ip, #1	@ tmp186,
	mla	r4, r0, r5, r4	@ tmp184, tmp183, InstId, tmp210
	mov	r0, #0	@ ret,
	str	ip, [r4, r1]	@ tmp186, <variable>.GetFirstIFrameFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L322:
	ldr	r3, [r1, #128]	@ temp.1622, <variable>.is_fld_save
	cmp	r3, #0	@ temp.1622,
	bne	.L328	@,
	ldr	r3, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r3, #3	@ <variable>.format,
	bne	.L330	@,
.L329:
	mov	r0, r5	@, InstId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L328:
	cmp	r3, #1	@ temp.1622,
	bne	.L330	@,
	ldr	ip, [r1, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, ip, #3	@ temp.1626, <variable>.top_fld_type,
	bne	.L334	@,
.L331:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L329	@,
	cmp	r3, #0	@ temp.1626,
	bne	.L329	@,
	ldr	r3, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r3, #3	@ <variable>.bottom_fld_type,
	bne	.L329	@,
.L330:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L333:
	ldr	r2, [r1, #140]	@ <variable>.format, <variable>.format
	tst	r2, #3	@ <variable>.format,
	beq	.L324	@,
.L325:
	movw	r6, #:lower16:76696	@ tmp190,
	movt	r6, #:upper16:76696	@ tmp190,
	ldr	lr, .L335	@ tmp191,
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
.L334:
	ldr	r0, [r1, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r0, #3	@ <variable>.bottom_fld_type,
	beq	.L331	@,
	b	.L330	@
.L336:
	.align	2
.L335:
	.word	.LANCHOR0+48
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_ProcessDnrReturn
	.type	DNR_ProcessDnrReturn, %function
DNR_ProcessDnrReturn:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #:lower16:76696	@ tmp156,
	movt	r5, #:upper16:76696	@ tmp156,
	movw	r4, #:lower16:.LANCHOR0	@ tmp293,
	movt	r4, #:upper16:.LANCHOR0	@ tmp293,
	movw	r3, #:lower16:76656	@ tmp160,
	mul	r5, r5, r0	@ tmp155, tmp156, ChanID
	movt	r3, #:upper16:76656	@ tmp160,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ ChanID, ChanID
	add	r2, r5, r4	@ tmp157, tmp155, tmp293
	ldr	r8, [r2, r3]	@ D.37232, <variable>.DNRDataSourceFlag
	ldr	r6, [r2, #452]	@ PicBufID, <variable>.CurImageBufID
	cmp	r8, #0	@ D.37232,
	bne	.L338	@,
	mov	r3, #392	@ tmp168,
	mla	ip, r3, r6, r5	@ tmp171, tmp168, PicBufID, tmp155
	add	r2, ip, r4	@ tmp172, tmp171, tmp293
	add	r1, r2, #26368	@ pLogic, tmp172,
	add	r5, r1, #72	@ pLogic, pLogic,
.L339:
	cmp	r7, #0	@ ChanID,
	bne	.L361	@,
	ldr	r2, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #0	@ <variable>.image_width,
	beq	.L365	@,
	cmp	r8, #0	@ D.37232,
	beq	.L366	@,
	cmp	r8, #1	@ D.37232,
	bne	.L361	@,
	movw	r2, #:lower16:76660	@ tmp281,
	movt	r2, #:upper16:76660	@ tmp281,
	movw	r1, #:lower16:.LANCHOR0	@ tmp280,
	movt	r1, #:upper16:.LANCHOR0	@ tmp280,
	ldr	r3, [r4, r2]	@ <variable>.DNRCaptureStartFlag, <variable>.DNRCaptureStartFlag
	cmp	r3, #1	@ <variable>.DNRCaptureStartFlag,
	bne	.L361	@,
	movw	ip, #:lower16:g_event_report	@ tmp289,
	movt	ip, #:upper16:g_event_report	@ tmp289,
	movw	r0, #:lower16:76656	@ tmp284,
	movt	r0, #:upper16:76656	@ tmp284,
	ldr	r3, [ip, #0]	@ g_event_report.1665, g_event_report
	str	r7, [r1, r2]	@ ChanID, <variable>.DNRCaptureStartFlag
	cmp	r3, #0	@ g_event_report.1665,
	str	r7, [r1, r0]	@ ChanID, <variable>.DNRDataSourceFlag
	beq	.L346	@,
	add	r2, sp, #8	@ tmp290,,
	mov	r0, r7	@, ChanID
	mov	r1, #21	@,
	str	r5, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1665
	mov	r0, r7	@ D.37242, ChanID
.L341:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L338:
	cmp	r8, #1	@ D.37232,
	bne	.L361	@,
	movw	r1, #:lower16:76680	@ tmp175,
	movt	r1, #:upper16:76680	@ tmp175,
	ldr	r5, [r2, r1]	@ pLogic, <variable>.pCaptureImageOut
	b	.L339	@
.L366:
	ldrsb	ip, [r4, #8]	@ <variable>.DecChanRstFlag, <variable>.DecChanRstFlag
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	cmp	ip, #1	@ <variable>.DecChanRstFlag,
	streq	r8, [r3, #24]	@ D.37232, <variable>.NeedStartAgain
	moveq	r0, r8	@ D.37242, D.37232
	beq	.L341	@,
	ldr	r0, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	beq	.L367	@,
.L346:
	mov	r0, #0	@ D.37242,
	b	.L341	@
.L367:
	mov	r0, r8	@, D.37232
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #:lower16:1374389535	@ tmp190,
	movt	r2, #:upper16:1374389535	@ tmp190,
	umull	r1, r7, r2, ip	@, tmp189, tmp190, <variable>.image_id
	mov	r1, #100	@ tmp192,
	mov	r3, r7, lsr #5	@ tmp187, tmp189,
	mls	r2, r1, r3, ip	@ tmp193, tmp192, tmp187, <variable>.image_id
	add	r7, r2, #2	@ tmp194, tmp193,
	cmp	r0, r7	@, tmp194
	beq	.L368	@,
.L347:
	movw	r1, #:lower16:76632	@ tmp200,
	movt	r1, #:upper16:76632	@ tmp200,
	movw	r7, #:lower16:.LANCHOR0	@ tmp199,
	movt	r7, #:upper16:.LANCHOR0	@ tmp199,
	ldr	ip, [r4, r1]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L369	@,
	movw	r8, #51528	@ tmp219,
	ldr	r0, [r7, r8]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L352	@,
	bl	DNR_ClearTempImage	@
.L351:
	movw	r6, #:lower16:vfmw_save_yuv_file	@ tmp262,
	movt	r6, #:upper16:vfmw_save_yuv_file	@ tmp262,
	ldr	r1, [r6, #0]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r1, #0	@ vfmw_save_yuv_file,
	beq	.L355	@,
	movw	lr, #:lower16:save_yuv_chan_num	@ tmp264,
	movt	lr, #:upper16:save_yuv_chan_num	@ tmp264,
	ldr	r3, [lr, #0]	@ save_yuv_chan_num, save_yuv_chan_num
	cmp	r3, #0	@ save_yuv_chan_num,
	beq	.L370	@,
.L355:
	ldr	r1, [r5, #192]	@ D.37324, <variable>.p_usrdat
	cmp	r1, #0	@ D.37324,
	beq	.L356	@,
	mov	r0, #0	@,
	bl	MarkUsdByDnr	@
.L356:
	ldr	r1, [r5, #196]	@ temp.1666, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1666,
	beq	.L357	@,
	mov	r0, #0	@,
	bl	MarkUsdByDnr	@
.L357:
	ldr	r1, [r5, #200]	@ temp.1667, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1667,
	beq	.L358	@,
	mov	r0, #0	@,
	bl	MarkUsdByDnr	@
.L358:
	ldr	r1, [r5, #204]	@ temp.1662, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1662,
	beq	.L359	@,
	mov	r0, #0	@,
	bl	MarkUsdByDnr	@
.L359:
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:g_PrintEnable	@ tmp272,
	movt	r2, #:upper16:g_PrintEnable	@ tmp272,
	ldr	r0, [r2, #0]	@ g_PrintEnable, g_PrintEnable
	tst	r0, #2048	@ g_PrintEnable,
	bne	.L371	@,
.L360:
	movw	lr, #:lower16:76632	@ tmp276,
	movt	lr, #:upper16:76632	@ tmp276,
	ldr	r1, [r4, lr]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r1, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L346	@,
	movw	ip, #:lower16:g_event_report	@ tmp278,
	movt	ip, #:upper16:g_event_report	@ tmp278,
	ldr	r3, [ip, #0]	@ g_event_report.1664, g_event_report
	cmp	r3, #0	@ g_event_report.1664,
	beq	.L346	@,
	add	r2, sp, #8	@ tmp279,,
	mov	r0, #0	@,
	mov	r1, #5	@,
	str	r5, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1664
	mov	r0, #0	@ D.37242,
	b	.L341	@
.L361:
	bl	vfmw_dprint_nothing	@
.L364:
	mvn	r0, #0	@ D.37242,
	b	.L341	@
.L352:
	movw	sl, #51532	@ tmp222,
	str	r6, [r5, #176]	@ PicBufID, <variable>.image_id
	ldr	r9, [r7, sl]	@ D.37294, <variable>.TempImageNum
	mov	r0, #392	@ tmp226,
	mov	r2, r0	@, tmp226
	mov	r1, r5	@, pLogic
	add	r6, r7, r6, asl #2	@, tmp238, tmp199, PicBufID,
	mul	r9, r0, r9	@ tmp225, tmp226, D.37294
	add	ip, r7, r9	@ tmp227, tmp199, tmp225
	add	lr, ip, #51456	@, tmp227,
	add	r0, lr, #80	@,,
	bl	memcpy	@
	movw	r3, #:lower16:76648	@ tmp248,
	movt	r3, #:upper16:76648	@ tmp248,
	ldr	r0, [r7, sl]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	r1, [r7, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r2, [r7, r3]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	ip, r0, #1	@ D.37296, <variable>.TempImageNum,
	str	ip, [r7, sl]	@ D.37296, <variable>.TempImageNum
	rsb	r0, r2, r1	@ tmp249, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	mov	r1, #4	@ tmp240,
	cmp	ip, r0	@ D.37296, tmp249
	str	r1, [r6, #720]	@ tmp240, <variable>.LogicImageIsUsed
	movcs	ip, #0	@ tmp261,
	strcs	ip, [r7, r8]	@ tmp261, <variable>.GetFirstIFrameFlag
	bcc	.L372	@,
.L354:
	mov	r0, #0	@,
	mov	r1, r5	@, pLogic
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L351	@,
	bl	vfmw_dprint_nothing	@
	b	.L351	@
.L372:
	add	r7, r9, r7	@ tmp256, tmp225, tmp199
	movw	r2, #51760	@ tmp253,
	ldr	r6, [r7, r2]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r6, #1	@ <variable>.last_frame,
	bne	.L351	@,
	b	.L354	@
.L368:
	movw	lr, #:lower16:g_event_report	@ tmp196,
	movt	lr, #:upper16:g_event_report	@ tmp196,
	mov	r0, #1	@ tmp195,
	str	r0, [r5, #224]	@ tmp195, <variable>.last_frame
	ldr	r3, [lr, #0]	@ g_event_report.605, g_event_report
	cmp	r3, #0	@ g_event_report.605,
	beq	.L348	@,
	add	r2, sp, #8	@ tmp198,,
	mov	r0, r8	@, D.37232
	mov	r1, #115	@,
	str	r8, [r2, #-4]!	@ D.37232, para
	blx	r3	@ g_event_report.605
.L348:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L347	@
.L371:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L360	@
.L370:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	ip, [r5, #172]	@ <variable>.image_stride, <variable>.image_stride
	ldr	r2, [r6, #0]	@, vfmw_save_yuv_file
	ldr	r0, [r5, #48]	@, <variable>.luma_2d_vir_addr
	mul	r1, ip, r3	@, <variable>.image_stride, <variable>.image_height
	bl	klib_fwrite	@
	b	.L355	@
.L365:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37242,
	b	.L341	@
.L369:
	str	r6, [r5, #176]	@ PicBufID, <variable>.image_id
	add	r0, r7, #976	@, tmp199,
	mov	r1, r5	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L364	@,
	add	r6, r7, r6, asl #2	@, tmp209, tmp199, PicBufID,
	mov	r3, #2	@ tmp211,
	mov	r0, #11	@,
	str	r3, [r6, #720]	@ tmp211, <variable>.LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L351	@,
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp212,
	movt	ip, #:upper16:.LANCHOR1	@ tmp212,
	movw	r6, #:lower16:g_TraceFramePeriod	@ tmp215,
	movt	r6, #:upper16:g_TraceFramePeriod	@ tmp215,
	ldr	r3, [ip, #3056]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r6, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r1, r3, r0	@ tmp213, last_rec_pos_time, currtime
	cmp	r1, r2	@ tmp213, g_TraceFramePeriod
	strhi	r0, [ip, #3056]	@ currtime, last_rec_pos_time
	b	.L351	@
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
	ldr	ip, [r2, #456]	@ D.37124, <variable>.s32ValidImgNum
	cmp	ip, #0	@ D.37124,
	ble	.L374	@,
	ldr	r2, [r2, #720]	@ <variable>.LogicImageIsUsed, <variable>.LogicImageIsUsed
	cmp	r2, #1	@ <variable>.LogicImageIsUsed,
	movls	r4, #0	@ i,
	bls	.L376	@,
	tst	ip, #1	@ D.37124,
	add	r4, r8, #8	@ tmp158, tmp239,
	add	r3, r4, r3	@ ivtmp.1696, tmp158, tmp146
	mov	r4, #0	@ i,
	bne	.L377	@,
	ldr	lr, [r3, #716]	@ D.37121, <variable>.LogicImageIsUsed
	mov	r4, #1	@ i,
	add	r3, r3, #4	@ ivtmp.1696, ivtmp.1696,
	cmp	lr, r4	@ D.37121,
	bhi	.L377	@,
.L376:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5, #0]	@ i,* pPicBufID
	beq	.L379	@,
	ldr	r3, [r0, #4]	@ D.37129, <variable>.get_frame
	cmp	r3, #0	@ D.37129,
	beq	.L379	@,
	movw	lr, #19174	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp161,
	mla	ip, lr, r7, r4	@ tmp164, tmp163, ChanID, i
	movt	r5, #:upper16:.LANCHOR0	@ tmp161,
	add	r6, ip, #178	@ tmp165, tmp164,
	add	r6, r8, r6, asl #2	@, tmp168, tmp239, tmp165,
	ldr	r0, [r6, #8]	@ tmp170, <variable>.LogicImageIsUsed
	cmp	r0, #0	@ tmp170,
	beq	.L391	@,
.L379:
	movw	r0, #19174	@ tmp229,
	mov	r2, #1	@ tmp236,
	mla	r7, r0, r7, r4	@ tmp230, tmp229, ChanID, i
	mov	r0, #0	@ D.37143,
	add	r8, r8, r7, asl #2	@, tmp234, tmp239, tmp230,
	str	r2, [r8, #720]	@ tmp236, <variable>.LogicImageIsUsed
	b	.L381	@
.L380:
	ldr	r1, [r3, #716]	@ D.37121, <variable>.LogicImageIsUsed
	add	r3, r2, #4	@ ivtmp.1696, tmp243,
	cmp	r1, #1	@ D.37121,
	bls	.L376	@,
	ldr	r1, [r2, #716]	@ D.37121, <variable>.LogicImageIsUsed
	add	r4, r4, #1	@ i, i,
	cmp	r1, #1	@ D.37121,
	bls	.L376	@,
.L377:
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ tmp243, ivtmp.1696,
	cmp	r4, ip	@ i, D.37124
	blt	.L380	@,
.L374:
	mvn	r0, #0	@ D.37143,
.L381:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L391:
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
	blx	r3	@ D.37129
	cmp	r0, #0	@ D.37140
	bne	.L374	@,
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
	b	.L381	@
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
	beq	.L393	@,
	ldr	r0, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	cmp	r0, #0	@ <variable>.release_frame,
	addeq	r1, fp, #8	@, tmp298,
	streq	r1, [sp, #0]	@, %sfp
	beq	.L393	@,
	ldr	r3, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r3, #0	@ <variable>.s32ValidImgNum,
	addle	r2, fp, #8	@, tmp298,
	strle	r2, [sp, #0]	@, %sfp
	ble	.L393	@,
	add	r1, r6, #26368	@ tmp225, tmp154,
	add	r9, fp, #8	@, tmp298,
	add	r7, r1, #112	@ tmp225, tmp225,
	str	r9, [sp, #0]	@, %sfp
	add	r7, r9, r7	@ ivtmp.1745,, tmp225
	add	r6, r9, r6	@ ivtmp.1744,, tmp154
	add	r8, r8, #456	@ tmp317, tmp156,
	add	r9, sp, #412	@ tmp313,,
	b	.L395	@
.L394:
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.1745, ivtmp.1745,
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	ble	.L393	@,
.L395:
	ldr	ip, [r6, #712]	@ tmp227, <variable>.LogicImageIsUsed
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.1744, ivtmp.1744,
	cmp	ip, #0	@ tmp227,
	beq	.L394	@,
	ldr	r3, [r7, #0]	@ <variable>.luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, ChanID
	ldr	lr, [r7, #72]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	mov	r1, r9	@, tmp313
	add	r7, r7, #392	@ ivtmp.1745, ivtmp.1745,
	str	r3, [sp, #416]	@ <variable>.luma_2d_vir_addr, ExtFrame.VirAddr
	str	lr, [sp, #412]	@ <variable>.luma_2d_phy_addr, ExtFrame.PhyAddr
	ldr	r2, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	blx	r2	@ <variable>.release_frame
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	bgt	.L395	@,
.L393:
	movw	r2, #:lower16:76696	@ tmp242,
	movt	r2, #:upper16:76696	@ tmp242,
	mul	r1, r2, r4	@ tmp241, tmp242, ChanID
	add	r2, r1, fp	@ tmp243, tmp241, tmp298
	add	r3, r2, #75776	@ tmp244, tmp243,
	add	r3, r3, #904	@ tmp244, tmp244,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L422	@,
.L396:
	ldr	r1, [sp, #0]	@, %sfp
	movw	ip, #:lower16:76696	@ tmp262,
	movt	ip, #:upper16:76696	@ tmp262,
	mov	r2, #0	@ i.1753,
	mov	r0, r2	@ tmp302, i.1753
	mla	r4, ip, r4, r1	@ ivtmp.1734, tmp262, ChanID,
.L399:
	ldr	r1, [r4, #712]	@ tmp295, <variable>.LogicImageIsUsed
	add	r3, r4, #4	@ tmp319, ivtmp.1734,
	add	r2, r2, #1	@ tmp318, i.1753,
	cmp	r1, #3	@ tmp295,
	strne	r0, [r4, #712]	@ tmp302, <variable>.LogicImageIsUsed
	ldr	ip, [r3, #712]	@ tmp323, <variable>.LogicImageIsUsed
	add	r2, r2, #1	@ i.1753, tmp318,
	add	r4, r3, #4	@ ivtmp.1734, tmp319,
	cmp	ip, #3	@ tmp323,
	strne	r0, [r3, #712]	@ tmp302, <variable>.LogicImageIsUsed
	cmp	r2, #64	@ i.1753,
	bne	.L399	@,
	add	sp, sp, #436	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L422:
	movw	r9, #19174	@ tmp306,
	ldr	sl, [sp, #0]	@, %sfp
	mul	r8, r9, r4	@, tmp306, ChanID
	add	r6, r1, #968	@ tmp250, tmp241,
	add	r9, sp, #16	@ tmp304,,
	str	r2, [sp, #12]	@ tmp243, %sfp
	str	r4, [sp, #8]	@ ChanID, %sfp
	mov	r7, r3	@ tmp312, tmp312
	str	r8, [sp, #4]	@, %sfp
	add	r8, sl, r6	@ D.36137,, tmp250
	movw	sl, #:lower16:1374389535	@ tmp305,
	mov	r6, #0	@ i.1751,
	movt	sl, #:upper16:1374389535	@ tmp305,
	b	.L405	@
.L424:
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r2, [sp, #160]	@ stimage.image_width, stimage.image_width
	add	lr, r0, r5	@ tmp268,, RelImgID
	ldr	r3, [r7, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	r5, lr, #178	@ tmp269, tmp268,
	cmp	r2, r3	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	add	r5, fp, r5, asl #2	@, tmp272, tmp298, tmp269,
	str	r4, [r5, #8]	@ tmp251, <variable>.LogicImageIsUsed
	bhi	.L401	@,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r1, [sp, #164]	@ stimage.image_height, stimage.image_height
	add	r3, lr, #75776	@ tmp288,,
	add	r2, r3, #912	@ tmp288, tmp288,
	ldr	ip, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r1, ip	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L401	@,
	ldr	r1, [sp, #208]	@ temp.1755, stimage.p_usrdat
	cmp	r1, #0	@ temp.1755,
	beq	.L402	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #208]	@ tmp251, stimage.p_usrdat
.L402:
	ldr	r1, [sp, #212]	@ temp.1756, stimage.p_usrdat
	cmp	r1, #0	@ temp.1756,
	beq	.L403	@,
	ldr	r0, [sp, #8]	@, %sfp
	mov	r4, #0	@ tmp292,
	bl	UnMarkUsdByDnr	@
	str	r4, [sp, #212]	@ tmp292, stimage.p_usrdat
.L403:
	ldr	r1, [sp, #216]	@ temp.1757, stimage.p_usrdat
	cmp	r1, #0	@ temp.1757,
	beq	.L404	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp293,
	str	r0, [sp, #216]	@ tmp293, stimage.p_usrdat
.L404:
	ldr	r1, [sp, #220]	@ D.36161, stimage.p_usrdat
	cmp	r1, #0	@ D.36161,
	beq	.L401	@,
	ldr	r0, [sp, #8]	@, %sfp
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp294,
	str	r1, [sp, #220]	@ tmp294, stimage.p_usrdat
.L401:
	add	r6, r6, #1	@ i.1751, i.1751,
	cmp	r6, #64	@ i.1751,
	beq	.L423	@,
.L405:
	mov	r0, r8	@, D.36137
	mov	r1, r9	@, tmp304
	mov	r4, #0	@ tmp251,
	str	r4, [sp, #428]	@ tmp251, TopPhyAddr
	str	r4, [sp, #424]	@ tmp251, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@,
	bne	.L421	@,
	ldr	r1, [sp, #192]	@ D.36141, stimage.image_id
	mov	r5, #100	@ tmp258,
	umull	r2, r0, sl, r1	@, tmp255, tmp305, D.36141
	mov	lr, r0, lsr #5	@ RelImgID, tmp255,
	mls	r5, r5, lr, r1	@ RelImgID, tmp258, RelImgID, D.36141
	cmp	r5, #63	@ RelImgID,
	bgt	.L421	@,
	mov	r0, r8	@, D.36137
	add	r2, sp, #428	@,,
	add	r3, sp, #424	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	beq	.L424	@,
	bl	vfmw_dprint_nothing	@
	b	.L401	@
.L421:
	ldr	r4, [sp, #8]	@ ChanID, %sfp
	bl	vfmw_dprint_nothing	@
	b	.L396	@
.L423:
	ldr	r4, [sp, #8]	@ ChanID, %sfp
	b	.L396	@
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
	subs	r3, r0, #0	@ D.36916,
	mvnne	r0, #0	@ D.36919,
	beq	.L431	@,
.L427:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L431:
	ldr	r5, [sp, #136]	@, Stride
	movw	r2, #:lower16:76696	@ tmp159,
	ldr	r1, [sp, #92]	@, PicBufID
	movt	r2, #:upper16:76696	@ tmp159,
	mov	sl, #392	@ tmp157,
	movw	lr, #26488	@,
	mul	r7, fp, r5	@ D.36928, PicHeight,
	movw	r5, #:lower16:.LANCHOR0	@ tmp627,
	mul	r8, r2, r6	@, tmp159, ChanID
	movt	r5, #:upper16:.LANCHOR0	@ tmp627,
	mla	sl, sl, r1, r8	@ tmp160, tmp157,,
	mov	r1, r4	@, pLuma
	add	r9, r7, r7, asl #1	@, tmp580, D.36928, D.36928,
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
	add	ip, r7, lr	@ tmp286, D.36928, <variable>.luma_2d_phy_addr
	ldr	r0, [sp, #12]	@, %sfp
	str	r8, [r4, r9]	@, <variable>.image_id
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, sl]	@, tmp170,
	ldr	sl, [sp, #16]	@, %sfp
	ldr	r9, .L432	@,
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
	add	sl, r9, r7	@ tmp384,, D.36928
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
	str	r3, [r9, #4]	@ D.36916, <variable>.error_level
	ldrd	r8, [sp, #152]	@,,
	strd	r8, [r4, fp]	@, tmp170, tmp173
	movw	fp, #26448	@ tmp182,
	strd	r8, [r4, fp]	@, tmp170, tmp182
	movw	fp, #26456	@ tmp191,
	strd	r8, [r4, fp]	@, tmp170, tmp191
	ldr	r9, [sp, #24]	@, %sfp
	str	r7, [r9, #4]	@ tmp217, <variable>.DispEnableFlag
	movw	r9, #26512	@ tmp219,
	str	r3, [r4, r9]	@ D.36916, <variable>.DispFrameDistance
	movw	r9, #26520	@ tmp239,
	ldr	r7, [sp, #28]	@, %sfp
	str	r3, [r4, r9]	@ D.36916, <variable>.GopNum
	str	r3, [r7, #4]	@ D.36916, <variable>.DistanceBeforeFirstFrame
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
	str	r3, [r4, r8]	@ D.36916, <variable>.is_fld_save
	str	ip, [r7, #4]	@ tmp286, <variable>.chrom_phy_addr
	ldr	r8, [sp, #140]	@, DispPicWidth
	str	r8, [r4, r9]	@, <variable>.disp_width
	ldr	r9, [sp, #144]	@, DispPicHeight
	ldr	sl, [sp, #56]	@, %sfp
	str	r9, [sl, #4]	@, <variable>.disp_height
	str	r3, [r4, lr]	@ D.36916, <variable>.frame_rate
	movw	r3, #11296	@ tmp577,
	ldr	ip, [sp, #68]	@, %sfp
	str	r3, [ip, #4]	@ tmp577, <variable>.format
	bl	memcpy	@
	movw	lr, #26488	@,
	ldr	r4, [r4, lr]	@ temp.1785, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, temp.1785
	bl	MEM_Vir2Phy	@
	ldr	r2, [sp, #80]	@, %sfp
	mov	r1, r0	@ D.36957,
	mov	r0, r4	@, temp.1785
	bl	KernelFlushCache	@
	ldr	r1, [sp, #76]	@, %sfp
	ldr	r2, .L432	@,
	add	r0, r1, #968	@ tmp611,,
	ldr	r1, [sp, #16]	@, %sfp
	add	r0, r2, r0	@,, tmp611
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L428	@,
	bl	vfmw_dprint_nothing	@
.L428:
	ldr	lr, [sp, #92]	@ PicBufID, PicBufID
	movw	r1, #19174	@ tmp615,
	mov	r0, #2	@ tmp623,
	mla	ip, r1, r6, lr	@ tmp616, tmp615, ChanID, PicBufID
	add	r5, r5, ip, asl #2	@, tmp621, tmp627, tmp616,
	str	r0, [r5, #720]	@ tmp623, <variable>.LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_event_report	@ tmp624,
	movt	r3, #:upper16:g_event_report	@ tmp624,
	ldr	r3, [r3, #0]	@ g_event_report.576, g_event_report
	cmp	r3, #0	@ g_event_report.576,
	moveq	r0, r3	@ D.36919, g_event_report.576
	beq	.L427	@,
	ldr	r7, [sp, #16]	@, %sfp
	add	r2, sp, #96	@ tmp625,,
	mov	r0, r6	@, ChanID
	mov	r1, #5	@,
	str	r7, [r2, #-8]!	@, para
	blx	r3	@ g_event_report.576
	mov	r0, #0	@ D.36919,
	b	.L427	@
.L433:
	.align	2
.L432:
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
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #284
	sub	sp, sp, #284	@,,
	add	r6, sp, #104	@ tmp962,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp954,
	movw	r5, #:lower16:76664	@ tmp209,
	movt	r4, #:upper16:.LANCHOR0	@ tmp954,
	movt	r5, #:upper16:76664	@ tmp209,
	mov	r7, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	mov	r0, r6	@, tmp962
	mov	r8, #0	@ tmp206,
	str	r8, [sp, #276]	@ tmp206, PicBufID
	bl	__memzero	@
	ldr	sl, [r4, r5]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	sl, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L545	@,
.L435:
	ldr	r2, [r4, #20]	@ <variable>.InstMode, <variable>.InstMode
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	cmp	r2, #0	@ <variable>.InstMode,
	bne	.L436	@,
	movw	ip, #:lower16:76656	@ tmp222,
	movt	ip, #:upper16:76656	@ tmp222,
	ldr	r1, [r3, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r1, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L437	@,
.L436:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ tmp224, eVidStd,
	cmp	r3, #2	@ tmp224,
	bls	.L546	@,
.L438:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L437	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L437	@,
	movw	r8, #:lower16:g_DnrSleepTime	@ tmp235,
	movt	r8, #:upper16:g_DnrSleepTime	@ tmp235,
	ldr	r0, [r8, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r0, #0	@ g_DnrSleepTime,
	movwle	r5, #:lower16:.LANCHOR1	@ tmp955,
	movtle	r5, #:upper16:.LANCHOR1	@ tmp955,
	ble	.L439	@,
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR1	@ tmp955,
	movt	r5, #:upper16:.LANCHOR1	@ tmp955,
	ldr	ip, [r8, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r3, [r5, #3060]	@ timePrevDo, timePrevDo
	rsb	r1, r3, r0	@ tmp238, timePrevDo,
	cmp	r1, ip	@ tmp238, g_DnrSleepTime
	bcc	.L437	@,
.L439:
	bl	OSAL_GetTimeInMs	@
	mov	r1, sp	@,
	str	r0, [r5, #3060]	@, timePrevDo
	mov	r0, #0	@,
	bl	VCTRL_GetChanState	@
	movw	r2, #:lower16:76632	@ tmp248,
	movt	r2, #:upper16:76632	@ tmp248,
	ldr	r0, [sp, #96]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	movw	r3, #:lower16:.LANCHOR0	@ tmp245,
	movt	r3, #:upper16:.LANCHOR0	@ tmp245,
	ldr	sl, [r4, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r0, [r4, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	sl, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L440	@,
	mov	r1, #0	@ tmp252,
	movw	lr, #51528	@ tmp251,
	mov	r0, r1	@, tmp252
	str	r1, [r3, lr]	@ tmp252, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L440:
	ldr	ip, [r4, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	movw	sl, #:lower16:.LANCHOR0	@ tmp253,
	movt	sl, #:upper16:.LANCHOR0	@ tmp253,
	cmp	ip, #0	@ <variable>.NeedStartAgain,
	bne	.L441	@,
	ldr	r8, [sl, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r8, #0	@ <variable>.s321DFrameIsProc,
	beq	.L442	@,
	movw	r3, #:lower16:76656	@ tmp258,
	movt	r3, #:upper16:76656	@ tmp258,
	ldr	r8, [sl, r3]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
.L443:
	cmp	r8, #1	@ prephitmp.1976,
	beq	.L547	@,
.L468:
	cmp	r8, #0	@ prephitmp.1976,
	bne	.L469	@,
	movw	r2, #:lower16:76684	@ tmp422,
	movt	r2, #:upper16:76684	@ tmp422,
	movw	sl, #:lower16:.LANCHOR0	@ tmp421,
	movt	sl, #:upper16:.LANCHOR0	@ tmp421,
	ldr	r0, [r4, r2]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r0, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L548	@,
.L469:
	movw	r3, #:lower16:76656	@ tmp582,
	movt	r3, #:upper16:76656	@ tmp582,
	mov	ip, #0	@ tmp578,
	str	ip, [r4, #416]	@ tmp578, <variable>.Cur1DImage.is_processed_by_dnr
	ldr	r0, [r4, r3]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	movw	r3, #:lower16:.LANCHOR0	@ tmp577,
	str	ip, [r4, #412]	@ tmp578, <variable>.Cur1DImage.u32Is1D
	movt	r3, #:upper16:.LANCHOR0	@ tmp577,
	cmp	r0, ip	@ <variable>.DNRDataSourceFlag,
	bne	.L481	@,
	ldr	lr, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	lr, #1	@ <variable>.s321DFrameIsProc,
	bne	.L437	@,
	ldr	r8, [r3, #192]	@ Width, <variable>.Cur1DImage.image_width
	ldr	r2, [r3, #444]	@ D.36640, <variable>.s32OldImgWidth
	ldr	sl, [r3, #196]	@ Height, <variable>.Cur1DImage.image_height
	cmp	r2, r8	@ D.36640, Width
	beq	.L549	@,
.L482:
	movw	r0, #:lower16:g_event_report	@ tmp591,
	movt	r0, #:upper16:g_event_report	@ tmp591,
	ldr	r3, [r0, #0]	@ g_event_report.1905, g_event_report
	cmp	r3, #0	@ g_event_report.1905,
	beq	.L484	@,
	ldr	ip, [r4, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	mov	r0, #0	@,
	strh	r2, [sp, #188]	@ movhi	@ D.36640, para
	mov	r1, #8	@,
	strh	r8, [sp, #192]	@ movhi	@ Width, para
	add	r2, sp, #188	@,,
	strh	ip, [sp, #190]	@ movhi	@ <variable>.s32OldImgHeight, para
	strh	sl, [sp, #194]	@ movhi	@ Height, para
	blx	r3	@ g_event_report.1905
.L484:
	str	r8, [r4, #444]	@ Width, <variable>.s32OldImgWidth
	str	sl, [r4, #448]	@ Height, <variable>.s32OldImgHeight
.L483:
	mov	r0, #0	@,
	add	r1, sp, #276	@,,
	bl	DNR_Fsp_ShowPic	@
	cmp	r0, #0	@,
	beq	.L481	@,
.L437:
	mvn	r0, #0	@ D.36607,
.L451:
	add	sp, sp, #284	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L546:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp961,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp961,
	ldr	lr, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L438	@,
	b	.L437	@
.L441:
	ldr	r2, [sl, #452]	@ <variable>.CurImageBufID, <variable>.CurImageBufID
	str	r2, [sp, #276]	@ <variable>.CurImageBufID, PicBufID
.L481:
	ldr	r3, [r4, #348]	@ temp.1907, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	lr, r3, #10	@ tmp601, temp.1907,
	cmp	lr, #2	@ tmp601,
	bhi	.L485	@,
	movw	r8, #:lower16:g_VdmCharacter	@ tmp965,
	movt	r8, #:upper16:g_VdmCharacter	@ tmp965,
	ldr	r3, [r8, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L437	@,
.L486:
	add	sl, sp, #188	@ tmp953,,
	mov	r1, #44	@,
	mov	r0, sl	@, tmp953
	bl	__memzero	@
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp606,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp606,
	ldr	fp, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	fp, #1	@ USE_FF_APT_EN,
	beq	.L550	@,
.L487:
	mov	r9, #0	@ SourceImgStoreType,
.L488:
	movw	r2, #:lower16:g_eVdmVersion	@ tmp611,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp611,
	ldr	r3, [r2, #0]	@ g_eVdmVersion.1913, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.1913,
	beq	.L551	@,
	cmp	r3, #4	@ g_eVdmVersion.1913,
	beq	.L491	@,
	ldr	r1, [r4, #220]	@ prephitmp.1821, <variable>.Cur1DImage.image_stride
	rsbs	fp, r9, #1	@ prephitmp.1823, SourceImgStoreType
	movcc	fp, #0	@ prephitmp.1823
	uxtb	r9, r9	@ prephitmp.1825, SourceImgStoreType
.L490:
	ldr	r2, [r4, #192]	@ temp.1920, <variable>.Cur1DImage.image_width
	mov	r0, sl	@, tmp953
	ldr	r3, [r4, #196]	@ temp.1922, <variable>.Cur1DImage.image_height
	movw	sl, #:lower16:.LANCHOR0	@ tmp617,
	str	fp, [sp, #228]	@ prephitmp.1823, DetPara.IsFrameStored
	add	lr, r2, #15	@ tmp621, temp.1920,
	str	r1, [sp, #216]	@ prephitmp.1821, DetPara.PicStride
	add	ip, r3, #15	@ tmp623, temp.1922,
	ldr	r1, [r4, #80]	@, <variable>.Cur1DImage.luma_vir_addr
	mov	lr, lr, asr #4	@ tmp622, tmp621,
	mov	fp, ip, asr #4	@ tmp624, tmp623,
	str	lr, [sp, #220]	@ tmp622, DetPara.MbWidth
	str	fp, [sp, #224]	@ tmp624, DetPara.MbHeight
	movt	sl, #:upper16:.LANCHOR0	@ tmp617,
	str	r1, [sp, #196]	@, DetPara.pPicBufY
	str	r2, [sp, #208]	@ temp.1920, DetPara.PicWidth
	str	r3, [sp, #212]	@ temp.1922, DetPara.PicHeight
	bl	DetPic	@
	cmp	r0, #0	@ D.36689,
	str	r0, [r4, #28]	@ D.36689, <variable>.IsRwzb
	bne	.L492	@,
	ldr	r3, [sl, #348]	@ temp.1923, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r3, #8	@ temp.1923,
	beq	.L492	@,
	cmp	r3, #1	@ temp.1923,
	beq	.L492	@,
	ldr	r3, [sp, #220]	@ DetPara.MbWidth, DetPara.MbWidth
	cmp	r3, #45	@ DetPara.MbWidth,
	bgt	.L492	@,
	ldr	r2, [sp, #224]	@ DetPara.MbHeight, DetPara.MbHeight
	cmp	r2, #36	@ DetPara.MbHeight,
	bgt	.L492	@,
	ldr	fp, [sl, #32]	@ <variable>.userSetRwzb_state, <variable>.userSetRwzb_state
	cmp	fp, #1	@ <variable>.userSetRwzb_state,
	beq	.L492	@,
	strb	r0, [sp, #104]	@ D.36689, DnrCfg.dc_en
	mov	r0, #1	@ tmp645,
	strb	r0, [sp, #105]	@ tmp645, DnrCfg.db_en
	strb	r0, [sp, #106]	@ tmp645, DnrCfg.dr_en
.L494:
	ldr	r2, [r5, #3064]	@ g_DREnable.555, g_DREnable
	cmp	r2, #0	@ g_DREnable.555,
	ldreqsb	r2, [sp, #106]	@ iftmp.554, DnrCfg.dr_en
	beq	.L496	@,
	cmp	r2, #1	@ g_DREnable.555,
	movne	r2, #0	@, iftmp.554
	moveq	r2, #1	@, iftmp.554
.L496:
	ldr	r3, [r5, #3068]	@ g_DBEnable.557, g_DBEnable
	strb	r2, [sp, #106]	@ iftmp.554, DnrCfg.dr_en
	cmp	r3, #0	@ g_DBEnable.557,
	str	r2, [r4, #36]	@ iftmp.554, <variable>.enDR
	ldreqsb	r3, [sp, #105]	@ iftmp.556, DnrCfg.db_en
	beq	.L498	@,
	cmp	r3, #1	@ g_DBEnable.557,
	movne	r3, #0	@, iftmp.556
	moveq	r3, #1	@, iftmp.556
.L498:
	ldr	r1, [r5, #3072]	@ g_DCEnable.559, g_DCEnable
	strb	r3, [sp, #105]	@ iftmp.556, DnrCfg.db_en
	cmp	r1, #0	@ g_DCEnable.559,
	str	r3, [r4, #40]	@ iftmp.556, <variable>.enDB
	ldreqsb	r1, [sp, #104]	@ iftmp.558, DnrCfg.dc_en
	beq	.L500	@,
	cmp	r1, #1	@ g_DCEnable.559,
	movne	r1, #0	@, iftmp.558
	moveq	r1, #1	@, iftmp.558
.L500:
	ldr	r0, [r4, #348]	@ temp.1924, <variable>.Cur1DImage.ImageDnr.video_standard
	movw	sl, #:lower16:.LANCHOR0	@ tmp666,
	movt	sl, #:upper16:.LANCHOR0	@ tmp666,
	strb	r1, [sp, #104]	@ iftmp.558, DnrCfg.dc_en
	cmp	r0, #1	@ temp.1924,
	str	r1, [r4, #44]	@ iftmp.558, <variable>.enDC
	str	r0, [sp, #120]	@ temp.1924, DnrCfg.video_standard
	movw	fp, #:lower16:.LANCHOR0	@ tmp677,
	ldreq	r0, [sl, #364]	@ <variable>.Cur1DImage.ImageDnr.Rangedfrm, <variable>.Cur1DImage.ImageDnr.Rangedfrm
	movne	sl, #3	@ tmp674,
	ldreqb	sl, [sl, #342]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.vc1_profile, <variable>.Cur1DImage.ImageDnr.vc1_profile
	movt	fp, #:upper16:.LANCHOR0	@ tmp677,
	streq	r0, [sp, #172]	@ <variable>.Cur1DImage.ImageDnr.Rangedfrm, DnrCfg.Rangedfrm
	cmp	r9, #0	@ prephitmp.1825,
	strb	sl, [sp, #113]	@ tmp674, DnrCfg.vc1_profile
	mov	r0, #392	@ tmp695,
	ldr	ip, [r4, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	strb	r9, [sp, #107]	@ prephitmp.1825, DnrCfg.pic_structure
	add	r3, ip, #15	@ tmp678, <variable>.Cur1DImage.image_width,
	ldr	r9, [r8, #0]	@ g_VdmCharacter, g_VdmCharacter
	mov	r3, r3, lsr #4	@ D.36732, tmp678,
	str	r3, [sp, #128]	@ D.36732, DnrCfg.pic_width_in_mb
	ldr	r2, [fp, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	fp, [r4, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	mov	sl, r3, asl #4	@ tmp699, D.36732,
	add	r1, r2, #15	@ tmp681, <variable>.Cur1DImage.image_height,
	mov	r2, r1, lsr #4	@ CurPicHeightInMb, tmp681,
	ldr	r1, [sp, #276]	@ PicBufID, PicBufID
	addne	r2, r2, #1	@ tmp687, tmp686,
	str	fp, [sp, #136]	@ <variable>.Cur1DImage.luma_phy_addr, DnrCfg.dnr_ystaddr_1d
	movne	r2, r2, lsr #1	@ CurPicHeightInMb, tmp687,
	tst	r9, #4	@ g_VdmCharacter,
	mla	r0, r0, r1, r4	@ tmp696, tmp695, PicBufID, tmp954
	add	r9, sl, #63	@ tmp700, tmp699,
	mul	ip, r3, r2	@ tmp688, D.36732, CurPicHeightInMb
	movw	sl, #26560	@ tmp693,
	movne	r3, r3, asl #4	@ tmp706, D.36732,
	addne	r3, r3, #79	@ tmp707, tmp706,
	bicne	r3, r3, #63	@ tmp708, tmp707,
	str	ip, [sp, #124]	@ tmp688, DnrCfg.mbtodec
	bic	ip, r9, #63	@ tmp701, tmp700,
	ldr	r9, [r0, sl]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movw	r0, #:lower16:76656	@ tmp725,
	movt	r0, #:upper16:76656	@ tmp725,
	str	ip, [sp, #164]	@ tmp701, DnrCfg.ddr_stride
	str	r2, [sp, #132]	@ CurPicHeightInMb, DnrCfg.pic_height_in_mb
	strne	r3, [sp, #164]	@ tmp708, DnrCfg.ddr_stride
	movw	r3, #:lower16:.LANCHOR0	@ tmp709,
	str	r9, [sp, #140]	@ <variable>.luma_2d_phy_addr, DnrCfg.dnr_ystaddr_2d
	movt	r3, #:upper16:.LANCHOR0	@ tmp709,
	ldr	fp, [r4, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	ldrb	sl, [r4, #341]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.chroma_format_idc, <variable>.Cur1DImage.ImageDnr.chroma_format_idc
	ldr	ip, [r4, #352]	@ <variable>.Cur1DImage.ImageDnr.QP_Y, <variable>.Cur1DImage.ImageDnr.QP_Y
	cmp	fp, #1	@ <variable>.DNRDataSourceFlag,
	ldrb	r9, [r4, #343]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.use_pic_qp_en, <variable>.Cur1DImage.ImageDnr.use_pic_qp_en
	ldr	fp, [r4, #356]	@ <variable>.Cur1DImage.ImageDnr.QP_U, <variable>.Cur1DImage.ImageDnr.QP_U
	ldrb	r0, [r4, #9]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	str	ip, [sp, #152]	@ <variable>.Cur1DImage.ImageDnr.QP_Y, DnrCfg.QP_Y
	strb	r9, [sp, #114]	@ <variable>.Cur1DImage.ImageDnr.use_pic_qp_en, DnrCfg.use_pic_qp_en
	strb	sl, [sp, #108]	@ <variable>.Cur1DImage.ImageDnr.chroma_format_idc, DnrCfg.chroma_format_idc
	str	fp, [sp, #156]	@ <variable>.Cur1DImage.ImageDnr.QP_U, DnrCfg.QP_U
	ldr	sl, [r4, #360]	@, <variable>.Cur1DImage.ImageDnr.QP_V
	str	sl, [sp, #160]	@, DnrCfg.QP_V
	strb	r0, [sp, #115]	@ <variable>.s32MirrorEn, DnrCfg.s32MirrorEn
	ldreq	r3, [r3, #420]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.Cur1DImage.u32Circumrotate
	ldr	ip, [r8, #0]	@ g_VdmCharacter, g_VdmCharacter
	streqb	r3, [sp, #115]	@ <variable>.Cur1DImage.u32Circumrotate, DnrCfg.s32MirrorEn
	tst	ip, #4	@ g_VdmCharacter,
	beq	.L507	@,
	movw	r0, #:lower16:76624	@ tmp737,
	movw	r3, #:lower16:76628	@ tmp740,
	movt	r0, #:upper16:76624	@ tmp737,
	movt	r3, #:upper16:76628	@ tmp740,
	ldr	ip, [r4, r0]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	sl, [r4, r3]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldrb	r3, [r4, #10]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	ip, [sp, #180]	@ <variable>.s32VcmpWmStartLine, DnrCfg.s32VcmpWmStartLine
	str	sl, [sp, #184]	@ <variable>.s32VcmpWmEndLine, DnrCfg.s32VcmpWmEndLine
	strb	r3, [sp, #116]	@ <variable>.s32VcmpEn, DnrCfg.s32VcmpEn
.L507:
	ldrb	r3, [sp, #107]	@ zero_extendqisi2	@ DnrCfg.pic_structure, DnrCfg.pic_structure
	cmp	r3, #4	@ DnrCfg.pic_structure,
	beq	.L552	@,
	ldrb	lr, [r4, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	cmp	r3, #2	@ DnrCfg.pic_structure,
	ldrb	ip, [r4, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	mov	sl, #0	@ tmp814,
	ldrb	r0, [r4, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	ldrb	r3, [r4, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	str	sl, [r4, #24]	@ tmp814, <variable>.NeedStartAgain
	strb	lr, [sp, #112]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	ip, [sp, #111]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	r0, [sp, #110]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r3, [sp, #109]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	beq	.L513	@,
.L511:
	movw	ip, #:lower16:76656	@ tmp838,
	movt	ip, #:upper16:76656	@ tmp838,
	movw	r2, #:lower16:.LANCHOR0	@ tmp837,
	movt	r2, #:upper16:.LANCHOR0	@ tmp837,
	ldr	r3, [r4, ip]	@ temp.1948, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ temp.1948,
	bne	.L514	@,
	mov	lr, #392	@ tmp843,
	mla	sl, lr, r1, r2	@ tmp844, tmp843, PicBufID, tmp837
	add	r1, sl, #26368	@ pImageLogic, tmp844,
	add	sl, r1, #72	@ pImageLogic, pImageLogic,
.L515:
	cmp	sl, #0	@ pImageLogic,
	beq	.L516	@,
	ldr	r1, .L563	@,
	mov	r2, #392	@,
	mov	r0, sl	@, pImageLogic
	ldr	r9, [sl, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	fp, [sl, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	bl	memcpy	@
	ldr	ip, [sp, #164]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	movw	r3, #:lower16:76656	@ tmp860,
	str	r9, [sl, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movt	r3, #:upper16:76656	@ tmp860,
	str	fp, [sl, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	str	ip, [sl, #172]	@ DnrCfg.ddr_stride, <variable>.image_stride
	ldr	r2, [sp, #132]	@ D.36742, DnrCfg.pic_height_in_mb
	ldr	r1, [sp, #164]	@ temp.1950, DnrCfg.ddr_stride
	ldrb	ip, [sp, #107]	@ zero_extendqisi2	@ DnrCfg.pic_structure, DnrCfg.pic_structure
	mov	r0, r2, asl #4	@ tmp856, D.36742,
	cmp	ip, #0	@ DnrCfg.pic_structure,
	mul	r2, r1, r0	@ tmp857, temp.1950, tmp856
	moveq	ip, #1	@ iftmp.562,
	movne	ip, #2	@ iftmp.562,
	mla	r0, ip, r2, r9	@ prephitmp.1826, iftmp.562, tmp857, luma_2d_phy_addr
	str	r0, [sl, #124]	@ prephitmp.1826, <variable>.chrom_2d_phy_addr
	ldr	r2, [r4, r3]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #1	@ <variable>.DNRDataSourceFlag,
	ldreq	r2, [sp, #132]	@ DnrCfg.pic_height_in_mb, DnrCfg.pic_height_in_mb
	ldreq	r0, [sp, #164]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	moveq	r2, r2, asl #4	@ tmp862, DnrCfg.pic_height_in_mb,
	mlaeq	r0, r0, r2, r9	@ prephitmp.1826, DnrCfg.ddr_stride, tmp862, luma_2d_phy_addr
	streq	r0, [sl, #124]	@ prephitmp.1826, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [sl, #124]	@ <variable>.chrom_2d_phy_addr, <variable>.chrom_2d_phy_addr
	ldr	ip, [sl, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	movw	r3, #:lower16:76656	@ tmp883,
	ldr	lr, [r4, #424]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.Cur1DImage.u32IsLastFrame
	movt	r3, #:upper16:76656	@ tmp883,
	str	r1, [sl, #92]	@ <variable>.chrom_2d_phy_addr, <variable>.top_chrom_phy_addr
	movw	r2, #:lower16:.LANCHOR0	@ tmp868,
	str	ip, [sl, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	movt	r2, #:upper16:.LANCHOR0	@ tmp868,
	str	r0, [sl, #52]	@, <variable>.chrom_2d_vir_addr
	ldr	r0, [r4, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	str	r0, [sl, #356]	@ <variable>.IsRwzb, <variable>.optm_inf.Rwzb
	ldr	r0, [sp, #164]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	add	ip, r0, ip	@ tmp872, DnrCfg.ddr_stride, <variable>.luma_2d_phy_addr
	str	ip, [sl, #96]	@ tmp872, <variable>.btm_luma_phy_addr
	ldr	r0, [sp, #164]	@ DnrCfg.ddr_stride, DnrCfg.ddr_stride
	str	lr, [sl, #376]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.u32IsLastFrame
	add	lr, r0, r1	@ tmp875, DnrCfg.ddr_stride, <variable>.chrom_2d_phy_addr
	str	lr, [sl, #100]	@ tmp875, <variable>.btm_chrom_phy_addr
	ldr	ip, [r4, #460]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	mov	r1, #0	@ tmp880,
	mov	r0, #1	@ tmp881,
	str	r1, [sl, #364]	@ tmp880, <variable>.u32Is1D
	str	r0, [sl, #368]	@ tmp881, <variable>.is_processed_by_dnr
	str	ip, [sl, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
	ldr	r3, [r4, r3]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ <variable>.DNRDataSourceFlag,
	bne	.L521	@,
	movw	r1, #:lower16:76684	@ tmp886,
	movt	r1, #:upper16:76684	@ tmp886,
	ldr	lr, [r2, r1]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, r0	@ <variable>.stDSDParam.s32DSDenable,
	streq	r3, [sl, #372]	@ <variable>.DNRDataSourceFlag, <variable>.u32Circumrotate
	movweq	lr, #:lower16:76696	@ tmp890,
	movteq	lr, #:upper16:76696	@ tmp890,
	ldreq	r3, [r2, lr]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	streqb	r3, [sp, #115]	@ <variable>.stDSDParam.s32MirrorEn, DnrCfg.s32MirrorEn
.L521:
	ldr	r3, [r8, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L522	@,
	ldrb	r1, [r4, #10]	@ zero_extendqisi2	@ temp.1969, <variable>.s32VcmpEn
	movw	r8, #:lower16:76624	@ tmp902,
	movt	r8, #:upper16:76624	@ tmp902,
	movw	r3, #:lower16:76628	@ tmp905,
	movt	r3, #:upper16:76628	@ tmp905,
	ldr	r0, [sl, #148]	@ <variable>.image_height, <variable>.image_height
	strb	r1, [sl, #296]	@ temp.1969, <variable>.ImageDnr.s32VcmpEn
	cmp	r1, #1	@ temp.1969,
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	add	r1, r0, #15	@ tmp907, <variable>.image_height,
	ldr	r2, [sl, #144]	@ <variable>.image_width, <variable>.image_width
	bic	r0, r1, #15	@ tmp909, tmp907,
	strb	ip, [sl, #297]	@ <variable>.s32WmEn, <variable>.ImageDnr.s32WmEn
	add	lr, r2, #15	@ tmp910, <variable>.image_width,
	ldr	ip, [r4, r8]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bic	r2, lr, #15	@ tmp912, tmp910,
	str	ip, [sl, #320]	@ <variable>.s32VcmpWmStartLine, <variable>.ImageDnr.s32VcmpWmStartLine
	ldr	r8, [r4, r3]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	r0, [sl, #332]	@ tmp909, <variable>.ImageDnr.s32VcmpFrameHeight
	str	r2, [sl, #328]	@ tmp912, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r8, [sl, #324]	@ <variable>.s32VcmpWmEndLine, <variable>.ImageDnr.s32VcmpWmEndLine
	beq	.L553	@,
.L522:
	movw	r8, #:lower16:g_dnr_hal_fun_ptr	@ tmp957,
	movt	r8, #:upper16:g_dnr_hal_fun_ptr	@ tmp957,
	ldr	r1, [sp, #276]	@ PicBufID, PicBufID
	ldr	r3, [r8, #12]	@ D.36876, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.36876,
	str	r1, [r4, #452]	@ PicBufID, <variable>.CurImageBufID
	beq	.L523	@,
	blx	r3	@ D.36876
.L524:
	ldr	r3, [r8, #8]	@ D.36880, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.36880,
	beq	.L525	@,
	mov	r0, r6	@, tmp962
	blx	r3	@ D.36880
.L526:
	movw	ip, #:lower16:76656	@ tmp932,
	movt	ip, #:upper16:76656	@ tmp932,
	mov	lr, #0	@ tmp929,
	movw	r3, #:lower16:.LANCHOR0	@ tmp928,
	ldr	r2, [r4, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	movt	r3, #:upper16:.LANCHOR0	@ tmp928,
	strb	lr, [r4, #8]	@ tmp929, <variable>.DecChanRstFlag
	cmp	r2, #1	@ <variable>.DNRDataSourceFlag,
	movweq	lr, #:lower16:76660	@ tmp935,
	movwne	r2, #:lower16:76660	@ tmp938,
	movteq	lr, #:upper16:76660	@ tmp935,
	movtne	r2, #:upper16:76660	@ tmp938,
	streq	r2, [r3, lr]	@ <variable>.DNRDataSourceFlag, <variable>.DNRCaptureStartFlag
	strne	lr, [r3, r2]	@ tmp929, <variable>.DNRCaptureStartFlag
	ldr	r3, [r8, #16]	@ D.36887, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	cmp	r3, #0	@ D.36887,
	beq	.L529	@,
	blx	r3	@ D.36887
.L530:
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_VfmwGlobalStat	@ tmp941,
	movt	r1, #:upper16:g_VfmwGlobalStat	@ tmp941,
	str	r0, [r1, #20]	@, <variable>.u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L531	@,
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp945,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp945,
	ldr	r1, [r5, #3076]	@ last_rec_pos_time, last_rec_pos_time
	movw	r2, #:lower16:.LANCHOR1	@ tmp942,
	movt	r2, #:upper16:.LANCHOR1	@ tmp942,
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp943, last_rec_pos_time, currtime
	cmp	ip, r3	@ tmp943, g_TraceFramePeriod
	strhi	r0, [r2, #3076]	@ currtime, last_rec_pos_time
.L531:
	mov	r0, #0	@ tmp948,
	mov	lr, #1	@ tmp950,
	str	r0, [r7, #0]	@ tmp948,* pNextInstId
	str	lr, [r4, #20]	@ tmp950, <variable>.InstMode
	b	.L451	@
.L485:
	cmp	r3, #4	@ temp.1907,
	beq	.L437	@,
	cmp	r3, #14	@ temp.1907,
	beq	.L437	@,
	movw	r8, #:lower16:g_VdmCharacter	@ tmp965,
	movt	r8, #:upper16:g_VdmCharacter	@ tmp965,
	b	.L486	@
.L545:
	ldr	r3, [r4, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r3, #1	@ <variable>.s321DFrameIsProc,
	beq	.L435	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:76656	@ tmp214,
	movt	r0, #:upper16:76656	@ tmp214,
	str	r8, [r4, r5]	@ tmp206, <variable>.DNRCaptureEnableFlag
	str	sl, [r4, r0]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L435	@
.L442:
	movw	fp, #:lower16:76656	@ tmp260,
	movt	fp, #:upper16:76656	@ tmp260,
	ldr	r8, [sl, fp]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	cmp	r8, #0	@ prephitmp.1976,
	bne	.L443	@,
	mov	r0, r8	@, prephitmp.1976
	add	r1, sl, #48	@, tmp253,
	bl	VCTRL_GetChanImage	@
	subs	r9, r0, #0	@ D.36451,
	bne	.L444	@,
	movw	r2, #:lower16:76636	@ tmp265,
	movt	r2, #:upper16:76636	@ tmp265,
	ldr	r8, [sl, r2]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	cmp	r8, #1	@ <variable>.u32BackwardOptimizeFlag,
	beq	.L445	@,
	ldr	lr, [sl, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r1, #1	@ tmp268,
	str	r1, [sl, #440]	@ tmp268, <variable>.s321DFrameIsProc
	cmp	lr, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L458	@,
	ldr	ip, [sl, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	ip, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L458	@,
	movw	r3, #:lower16:76632	@ tmp302,
	movt	r3, #:upper16:76632	@ tmp302,
	ldr	r8, [sl, r3]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r8, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L452	@,
.L535:
	ldr	r8, [sl, fp]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	b	.L443	@
.L548:
	ldr	r3, [sl, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r3, #1	@ <variable>.s321DFrameIsProc,
	bne	.L437	@,
	movw	r1, #:lower16:76692	@ tmp428,
	movw	r2, #:lower16:76688	@ tmp435,
	movt	r1, #:upper16:76692	@ tmp428,
	movt	r2, #:upper16:76688	@ tmp435,
	ldr	ip, [sl, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	lr, [sl, r1]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	ldr	r0, [sl, r2]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r1, [sl, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	cmp	r1, r0	@ <variable>.Cur1DImage.image_width, <variable>.stDSDParam.s32ThrWidth
	cmple	ip, lr	@, <variable>.Cur1DImage.image_height, <variable>.stDSDParam.s32ThrHeight
	ble	.L469	@,
	movw	r0, #:lower16:76696	@ tmp449,
	movt	r0, #:upper16:76696	@ tmp449,
	add	r5, sp, #232	@ tmp956,,
	str	r3, [sl, #412]	@ <variable>.s321DFrameIsProc, <variable>.Cur1DImage.u32Is1D
	ldr	lr, [sl, r0]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	mov	r1, #44	@,
	mov	r0, r5	@, tmp956
	str	r8, [sl, #416]	@ prephitmp.1976, <variable>.Cur1DImage.is_processed_by_dnr
	str	lr, [sl, #420]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.Cur1DImage.u32Circumrotate
	bl	__memzero	@
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp452,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp452,
	ldr	r6, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r6, #1	@ USE_FF_APT_EN,
	beq	.L554	@,
.L470:
	mov	r7, #0	@ s32SourceImgStoreType,
.L471:
	movw	r2, #:lower16:g_eVdmVersion	@ tmp457,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp457,
	ldr	r3, [r2, #0]	@ g_eVdmVersion.550, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.550,
	beq	.L555	@,
	cmp	r3, #4	@ g_eVdmVersion.550,
	beq	.L474	@,
	ldr	r1, [r4, #220]	@ prephitmp.1829, <variable>.Cur1DImage.image_stride
	rsbs	r7, r7, #1	@ prephitmp.1831, s32SourceImgStoreType
	movcc	r7, #0	@ prephitmp.1831
.L473:
	ldr	r2, [r4, #192]	@ D.36573, <variable>.Cur1DImage.image_width
	mov	r0, r5	@, tmp956
	ldr	r3, [r4, #196]	@ D.36574, <variable>.Cur1DImage.image_height
	movw	r5, #:lower16:.LANCHOR0	@ tmp463,
	ldr	r6, [r4, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	add	ip, r2, #15	@ tmp467, D.36573,
	add	lr, r3, #15	@ tmp469, D.36574,
	str	r1, [sp, #260]	@ prephitmp.1829, stDetPara.PicStride
	mov	ip, ip, asr #4	@ tmp468, tmp467,
	str	r2, [sp, #252]	@ D.36573, stDetPara.PicWidth
	mov	r1, lr, asr #4	@ tmp470, tmp469,
	str	ip, [sp, #264]	@ tmp468, stDetPara.MbWidth
	str	r1, [sp, #268]	@ tmp470, stDetPara.MbHeight
	movt	r5, #:upper16:.LANCHOR0	@ tmp463,
	str	r3, [sp, #256]	@ D.36574, stDetPara.PicHeight
	str	r7, [sp, #272]	@ prephitmp.1831, stDetPara.IsFrameStored
	str	r6, [sp, #240]	@ <variable>.Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	bl	DetPic	@
	ldr	lr, [r4, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	movw	r3, #:lower16:76632	@ tmp489,
	ldr	r2, [r4, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	movt	r3, #:upper16:76632	@ tmp489,
	add	r1, lr, #31	@ tmp480, <variable>.Cur1DImage.image_height,
	add	ip, r2, #255	@ tmp476, <variable>.Cur1DImage.image_width,
	ldr	r2, [r4, #136]	@ <variable>.Cur1DImage.top_luma_phy_addr, <variable>.Cur1DImage.top_luma_phy_addr
	mov	lr, r1, lsr #5	@ tmp482, tmp480,
	bic	ip, ip, #255	@ tmp478, tmp476,
	ldr	r1, [r4, r3]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	mul	r3, lr, ip	@ tmp483, tmp482, tmp478
	cmp	r1, #0	@ <variable>.s32FastForwardBackwardSpeed,
	add	r1, r2, r3, asl #5	@, tmp487, <variable>.Cur1DImage.top_luma_phy_addr, tmp483,
	str	r1, [r4, #140]	@ tmp487, <variable>.Cur1DImage.top_chrom_phy_addr
	str	r0, [r4, #404]	@ D.36582, <variable>.Cur1DImage.optm_inf.Rwzb
	str	r0, [r4, #28]	@ D.36582, <variable>.IsRwzb
	blt	.L475	@,
	ldr	r1, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r4, r5, #48	@ tmp503, tmp463,
	ldr	lr, [r5, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	r0, r5, #976	@, tmp463,
	add	r2, r1, #6	@ tmp493, <variable>.Cur1DImage.image_id,
	mov	r1, r4	@, tmp503
	rsb	r3, lr, r2	@ tmp497, <variable>.Cur1DImage.resetNum, tmp493
	str	r3, [r5, #224]	@ tmp497, <variable>.Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L516	@,
	movw	r0, #:lower16:g_event_report	@ tmp515,
	movt	r0, #:upper16:g_event_report	@ tmp515,
	ldr	lr, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	mov	ip, #2	@ tmp512,
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	mov	r0, #0	@ tmp514,
	str	r0, [r5, #440]	@ tmp514, <variable>.s321DFrameIsProc
	cmp	r3, r0	@ g_event_report,
	add	r5, r5, lr, asl #2	@, tmp510, tmp463, <variable>.Cur1DImage.image_id,
	str	ip, [r5, #720]	@ tmp512, <variable>.LogicImageIsUsed
	beq	.L437	@,
	add	r2, sp, #280	@ tmp521,,
	mov	r1, #5	@,
	str	r4, [r2, #-92]!	@ tmp503, para
	blx	r3	@ g_event_report
	mvn	r0, #0	@ D.36607,
	b	.L451	@
.L547:
	movw	lr, #:lower16:76676	@ tmp410,
	movt	lr, #:upper16:76676	@ tmp410,
	mov	r2, #392	@,
	ldr	r0, .L563	@,
	ldr	r1, [r4, lr]	@, <variable>.pCaptureImageIn
	bl	memcpy	@
	ldr	r3, [r4, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	str	r8, [r4, #440]	@ prephitmp.1976, <variable>.s321DFrameIsProc
	str	r3, [sp, #276]	@ <variable>.Cur1DImage.image_id, PicBufID
	bl	vfmw_dprint_nothing	@
	movw	ip, #:lower16:76656	@ tmp420,
	movt	ip, #:upper16:76656	@ tmp420,
	ldr	r8, [r4, ip]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	b	.L468	@
.L444:
	mov	r0, r8	@, prephitmp.1976
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L535	@,
	bl	vfmw_dprint_nothing	@
	add	r0, sl, #976	@, tmp253,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1874,
	mov	r1, r0	@ ret.1874,
	beq	.L556	@,
	movw	r2, #:lower16:g_event_report	@ tmp400,
	movt	r2, #:upper16:g_event_report	@ tmp400,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L467	@,
	add	r2, sp, #280	@ tmp403,,
	mov	r0, r8	@, prephitmp.1976
	str	r1, [r2, #-92]!	@ ret.1874, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L467:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
.L536:
	movw	r1, #:lower16:76656	@ tmp406,
	movt	r1, #:upper16:76656	@ tmp406,
	ldr	r8, [r4, r1]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	b	.L443	@
.L550:
	ldr	ip, [r4, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	movw	r0, #:lower16:.LANCHOR0	@ tmp608,
	movt	r0, #:upper16:.LANCHOR0	@ tmp608,
	cmp	ip, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r9, [r0, #336]	@ zero_extendqisi2	@ SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L488	@,
	b	.L487	@
.L554:
	ldr	ip, [sl, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	ip, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r7, [sl, #336]	@ zero_extendqisi2	@ s32SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L471	@,
	b	.L470	@
.L452:
	add	r1, sl, #48	@, tmp253,
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L535	@,
	bl	vfmw_dprint_nothing	@
	ldr	r8, [sl, fp]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	b	.L443	@
.L549:
	ldr	r1, [r3, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r1, sl	@ <variable>.s32OldImgHeight, Height
	bne	.L482	@,
	b	.L483	@
.L492:
	mov	sl, #0	@ tmp633,
	strb	sl, [sp, #104]	@ tmp633, DnrCfg.dc_en
	strb	sl, [sp, #106]	@ tmp633, DnrCfg.dr_en
	strb	sl, [sp, #105]	@ tmp633, DnrCfg.db_en
	b	.L494	@
.L445:
	ldr	r3, [sl, #116]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.Cur1DImage.DispEnableFlag
	cmp	r3, #1	@ <variable>.Cur1DImage.DispEnableFlag,
	bne	.L557	@,
	ldr	r1, [sl, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	str	r3, [sl, #440]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.s321DFrameIsProc
	cmp	r1, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L458	@,
	ldr	ip, [sl, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	ip, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L458	@,
	movw	ip, #:lower16:76632	@ tmp378,
	movt	ip, #:upper16:76632	@ tmp378,
	ldr	r8, [sl, ip]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r8, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L535	@,
	add	r1, sl, #48	@, tmp253,
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L536	@,
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:76656	@ tmp388,
	movt	r3, #:upper16:76656	@ tmp388,
	ldr	r8, [r4, r3]	@ prephitmp.1976, <variable>.DNRDataSourceFlag
	b	.L443	@
.L514:
	cmp	r3, #1	@ temp.1948,
	bne	.L516	@,
	movw	r0, #:lower16:76680	@ tmp847,
	movt	r0, #:upper16:76680	@ tmp847,
	ldr	sl, [r2, r0]	@ pImageLogic, <variable>.pCaptureImageOut
	ldr	r2, [sl, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [sp, #140]	@ <variable>.luma_2d_phy_addr, DnrCfg.dnr_ystaddr_2d
	b	.L515	@
.L516:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36607,
	b	.L451	@
.L552:
	ldr	r0, [r4, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	movw	r3, #:lower16:.LANCHOR0	@ tmp743,
	movt	r3, #:upper16:.LANCHOR0	@ tmp743,
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	bne	.L509	@,
	ldr	ip, [r3, #188]	@ D.36778, <variable>.Cur1DImage.format
	and	sl, ip, #3072	@ tmp746, D.36778,
	cmp	sl, #3072	@ tmp746,
	beq	.L558	@,
	ands	sl, ip, #2048	@ tmp763, D.36778,
	beq	.L512	@,
	ldrb	ip, [r3, #332]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag
	ldrb	r9, [r3, #335]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv
	ldrb	sl, [r3, #334]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag
	ldrb	lr, [r3, #333]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy
	str	r0, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	mov	r3, #2	@ tmp766,
	strb	r9, [sp, #112]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #107]	@ tmp766, DnrCfg.pic_structure
	strb	sl, [sp, #111]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	lr, [sp, #110]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, DnrCfg.Range_mapy
	strb	ip, [sp, #109]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, DnrCfg.Range_mapy_flag
.L513:
	ldr	r3, [sp, #128]	@ DnrCfg.pic_width_in_mb, DnrCfg.pic_width_in_mb
	ldr	ip, [r4, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	mul	lr, r3, r2	@ tmp828, DnrCfg.pic_width_in_mb, CurPicHeightInMb
	mov	r0, lr, asl #8	@ tmp832, tmp828,
	add	r2, r0, lr, asl #7	@, tmp833, tmp832, tmp828,
	add	r3, r2, ip	@ tmp836, tmp833, <variable>.Cur1DImage.luma_phy_addr
	str	r3, [sp, #136]	@ tmp836, DnrCfg.dnr_ystaddr_1d
	b	.L511	@
.L551:
	ldr	r3, [r4, #220]	@ temp.1914, <variable>.Cur1DImage.image_stride
	mov	r9, #0	@ prephitmp.1825,
	mov	fp, #1	@ prephitmp.1823,
	mov	lr, r3, asl #5	@ tmp613, temp.1914,
	mov	r1, r3	@ prephitmp.1821, temp.1914
	str	lr, [sp, #168]	@ tmp613, DnrCfg.dnr_stride_1d
	b	.L490	@
.L491:
	ldr	r1, [r4, #220]	@ prephitmp.1821, <variable>.Cur1DImage.image_stride
	mov	r9, #0	@ prephitmp.1825,
	mov	fp, #1	@ prephitmp.1823,
	str	r1, [sp, #168]	@ prephitmp.1821, DnrCfg.dnr_stride_1d
	b	.L490	@
.L555:
	ldr	r3, [r4, #220]	@ D.36565, <variable>.Cur1DImage.image_stride
	mov	r7, #1	@ prephitmp.1831,
	mov	r6, r3, asl #5	@ tmp459, D.36565,
	mov	r1, r3	@ prephitmp.1829, D.36565
	str	r6, [sp, #168]	@ tmp459, DnrCfg.dnr_stride_1d
	b	.L473	@
.L525:
	bl	vfmw_dprint_nothing	@
	b	.L526	@
.L523:
	bl	vfmw_dprint_nothing	@
	b	.L524	@
.L529:
	bl	vfmw_dprint_nothing	@
	b	.L530	@
.L553:
	ldr	r0, [sl, #172]	@ <variable>.image_stride, <variable>.image_stride
	mov	r8, r1, lsr #4	@ tmp919, tmp907,
	ldr	r2, [sl, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	add	ip, r0, #2	@ tmp914, <variable>.image_stride,
	mov	lr, ip, asl #4	@ tmp916, tmp914,
	mla	r3, r8, lr, r2	@ tmp922, tmp919, tmp916, <variable>.top_luma_phy_addr
	str	r3, [sl, #92]	@ tmp922, <variable>.top_chrom_phy_addr
	b	.L522	@
.L509:
	ldrb	r0, [r3, #332]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag
	mov	r9, #0	@ tmp798,
	ldrb	sl, [r3, #335]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv
	ldrb	lr, [r3, #334]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag
	ldrb	ip, [r3, #333]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy
	str	r9, [r3, #24]	@ tmp798, <variable>.NeedStartAgain
	mov	r3, #2	@ tmp799,
	strb	sl, [sp, #112]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #107]	@ tmp799, DnrCfg.pic_structure
	strb	lr, [sp, #111]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	ip, [sp, #110]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy, DnrCfg.Range_mapy
	strb	r0, [sp, #109]	@ <variable>.Cur1DImage.ImageDnr.bottom_Range_mapy_flag, DnrCfg.Range_mapy_flag
	b	.L513	@
.L474:
	ldr	r1, [r4, #220]	@ prephitmp.1829, <variable>.Cur1DImage.image_stride
	mov	r7, #1	@ prephitmp.1831,
	str	r1, [sp, #168]	@ prephitmp.1829, DnrCfg.dnr_stride_1d
	b	.L473	@
.L556:
	movw	r0, #:lower16:g_event_report	@ tmp394,
	movt	r0, #:upper16:g_event_report	@ tmp394,
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L467	@,
	add	r2, sp, #280	@ tmp398,,
	add	lr, r1, #2	@ tmp396, tmp396,
	mov	r0, r8	@, prephitmp.1976
	add	r1, lr, #114	@,,
	str	lr, [r2, #-92]!	@ tmp396, para
	blx	r3	@ g_event_report
	b	.L467	@
.L458:
	mov	r0, #0	@,
	bl	VCTRL_GetLastFrameIdPlus2	@
	mov	r1, #100	@,
	mov	r5, r0	@ LastFrameIdPlus2.1862,
	ldr	r0, [r4, #224]	@, <variable>.Cur1DImage.image_id
	bl	__aeabi_uidivmod	@
	add	r3, r1, #2	@ tmp357,,
	cmp	r5, r3	@ LastFrameIdPlus2.1862, tmp357
	beq	.L559	@,
.L460:
	ldr	r1, .L563	@,
	mov	r0, #0	@,
	bl	VCTRL_ReleaseChanImage	@
	mov	r1, #0	@ tmp376,
	mvn	r0, #0	@ D.36607,
	str	r1, [r4, #440]	@ tmp376, <variable>.s321DFrameIsProc
	b	.L451	@
.L558:
	ldrb	r0, [r3, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	mov	r2, #1	@ tmp748,
	ldrb	sl, [r3, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	ldrb	lr, [r3, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	ldrb	ip, [r3, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	strb	r2, [sp, #107]	@ tmp748, DnrCfg.pic_structure
	strb	sl, [sp, #112]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	lr, [sp, #111]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	ip, [sp, #110]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r0, [sp, #109]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	str	r2, [r3, #24]	@ tmp748, <variable>.NeedStartAgain
	b	.L511	@
.L475:
	movw	r7, #51528	@ tmp524,
	ldr	r0, [r5, r7]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.GetFirstIFrameFlag,
	beq	.L560	@,
	movw	r6, #51532	@ tmp536,
	mov	r3, #392	@ tmp539,
	ldr	lr, [r5, r6]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mov	r2, r3	@, tmp539
	ldr	ip, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r1, r5, #48	@, tmp463,
	ldr	r0, [r5, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	mla	r3, r3, lr, r5	@ tmp540, tmp539, <variable>.TempImageNum, tmp463
	add	ip, ip, #6	@ tmp528, <variable>.Cur1DImage.image_id,
	rsb	r0, r0, ip	@ tmp532, <variable>.Cur1DImage.resetNum, tmp528
	str	r0, [r5, #224]	@ tmp532, <variable>.Cur1DImage.image_id
	add	lr, r3, #51456	@, tmp540,
	add	r0, lr, #80	@,,
	bl	memcpy	@
	ldr	r0, [r5, r6]	@ <variable>.TempImageNum, <variable>.TempImageNum
	movw	r3, #:lower16:76648	@ tmp563,
	movt	r3, #:upper16:76648	@ tmp563,
	add	ip, r0, #1	@ D.36618, <variable>.TempImageNum,
	ldr	r2, [r5, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	ldr	r1, [r5, r3]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	mov	r3, #4	@ tmp555,
	ldr	r0, [r5, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r2, r5, r2, asl #2	@, tmp553, tmp463, <variable>.Cur1DImage.image_id,
	str	ip, [r5, r6]	@ D.36618, <variable>.TempImageNum
	rsb	r1, r1, r0	@ tmp564, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	ip, r1	@ D.36618, tmp564
	str	r3, [r2, #720]	@ tmp555, <variable>.LogicImageIsUsed
	movcs	r3, #0	@ tmp571,
	strcs	r3, [r5, r7]	@ tmp571, <variable>.GetFirstIFrameFlag
	bcs	.L479	@,
	ldr	r1, [r5, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L479	@,
.L480:
	mov	r2, #0	@ tmp576,
	mvn	r0, #0	@ D.36607,
	str	r2, [r4, #440]	@ tmp576, <variable>.s321DFrameIsProc
	b	.L451	@
.L557:
	bl	VCTRL_GetLastFrameIdPlus2	@
	mov	r1, #100	@,
	mov	r5, r0	@ LastFrameIdPlus2.1848,
	ldr	r0, [sl, #224]	@, <variable>.Cur1DImage.image_id
	bl	__aeabi_uidivmod	@
	add	r0, r1, #2	@ tmp323,,
	cmp	r5, r0	@ LastFrameIdPlus2.1848, tmp323
	bne	.L460	@,
	bl	vfmw_dprint_nothing	@
	add	r0, sl, #976	@, tmp253,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1853,
	mov	r1, r0	@ ret.1853,
	beq	.L561	@,
	movw	lr, #:lower16:g_event_report	@ tmp333,
	movt	lr, #:upper16:g_event_report	@ tmp333,
	ldr	r3, [lr, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L462	@,
	add	r2, sp, #280	@ tmp336,,
	mov	r0, r9	@, D.36451
	str	r1, [r2, #-92]!	@ ret.1853,
	mov	r1, #115	@,
	blx	r3	@ g_event_report
.L462:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L460	@
.L559:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L563+4	@,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret.1867,
	mov	r1, r0	@ ret.1867,
	beq	.L562	@,
	movw	r2, #:lower16:g_event_report	@ tmp367,
	movt	r2, #:upper16:g_event_report	@ tmp367,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L462	@,
	add	r2, sp, #280	@ tmp370,,
	mov	r0, #0	@,
	str	r1, [r2, #-92]!	@ ret.1867,
	mov	r1, #115	@,
	blx	r3	@ g_event_report
	b	.L462	@
.L479:
	mov	r0, #0	@,
	ldr	r1, .L563	@,
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L480	@,
	bl	vfmw_dprint_nothing	@
	b	.L480	@
.L560:
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ D.36607,
	b	.L451	@
.L561:
	movw	r2, #:lower16:g_event_report	@ tmp327,
	movt	r2, #:upper16:g_event_report	@ tmp327,
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L462	@,
	add	r2, sp, #280	@ tmp331,,
	mov	r0, r9	@, D.36451
	add	r1, r1, #116	@,,
	str	r8, [r2, #-92]!	@ <variable>.u32BackwardOptimizeFlag, para
	blx	r3	@ g_event_report
	b	.L462	@
.L562:
	movw	r0, #:lower16:g_event_report	@ tmp361,
	movt	r0, #:upper16:g_event_report	@ tmp361,
	ldr	r3, [r0, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L462	@,
	add	r2, sp, #280	@ tmp365,,
	add	lr, r1, #2	@ tmp363, tmp363,
	add	r1, lr, #114	@,,
	mov	r0, #0	@,
	str	lr, [r2, #-92]!	@ tmp363,
	blx	r3	@ g_event_report
	b	.L462	@
.L512:
	tst	ip, #1024	@ D.36778,
	beq	.L437	@,
	ldrb	r2, [r3, #337]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, <variable>.Cur1DImage.ImageDnr.Range_mapy_flag
	ldrb	lr, [r3, #340]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, <variable>.Cur1DImage.ImageDnr.Range_mapuv
	ldrb	ip, [r3, #339]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag
	ldrb	r0, [r3, #338]	@ zero_extendqisi2	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, <variable>.Cur1DImage.ImageDnr.Range_mapy
	str	sl, [r3, #24]	@ tmp763, <variable>.NeedStartAgain
	mov	r3, #1	@ tmp783,
	strb	lr, [sp, #112]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv, DnrCfg.Range_mapuv
	strb	r3, [sp, #107]	@ tmp783, DnrCfg.pic_structure
	strb	ip, [sp, #111]	@ <variable>.Cur1DImage.ImageDnr.Range_mapuv_flag, DnrCfg.Range_mapuv_flag
	strb	r0, [sp, #110]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy, DnrCfg.Range_mapy
	strb	r2, [sp, #109]	@ <variable>.Cur1DImage.ImageDnr.Range_mapy_flag, DnrCfg.Range_mapy_flag
	b	.L511	@
.L564:
	.align	2
.L563:
	.word	.LANCHOR0+48
	.word	.LANCHOR0+976
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
	ldr	r3, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L566	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L577	@,
.L567:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L566:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #3100]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp153, s_DnrCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp153,
	ble	.L567	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp216,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.1992, s_DnrCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp216,
	movw	r7, #:lower16:76696	@ tmp161,
	movt	r7, #:upper16:76696	@ tmp161,
	movw	r3, #:lower16:1374389535	@ tmp167,
	movt	r3, #:upper16:1374389535	@ tmp167,
	mla	r2, r7, r1, r5	@ tmp162, tmp161, prephitmp.1992, tmp216
	ldr	r7, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r7	@, tmp166, tmp167, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp169,
	mov	r3, r3, lsr #5	@ tmp164, tmp166,
	mls	r2, ip, r3, r7	@ tmp170, tmp169, tmp164, <variable>.Cur1DImage.image_id
	add	r7, r2, #2	@ tmp171, tmp170,
	cmp	r0, r7	@, tmp171
	addne	r6, r5, #8	@ tmp214, tmp216,
	beq	.L578	@,
.L568:
	movw	r7, #:lower16:76696	@ tmp198,
	movt	r7, #:upper16:76696	@ tmp198,
	mov	r0, r1	@, prephitmp.1992
	mla	ip, r7, r1, r6	@ tmp200, tmp198, prephitmp.1992, tmp214
	add	r1, ip, #40	@, tmp200,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r0, [r4, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	r1, #0	@ tmp209,
	mla	r5, r7, r0, r5	@ tmp207, tmp198, s_DnrCtrl.ThisInstID, tmp216
	str	r1, [r5, #440]	@ tmp209, <variable>.s321DFrameIsProc
	bl	vfmw_dprint_nothing	@
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp210,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp210,
	ldr	r3, [r3, #12]	@ D.37079, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.37079,
	beq	.L572	@,
	blx	r3	@ D.37079
.L573:
	mov	lr, #0	@ tmp212,
	str	lr, [r4, #3096]	@ tmp212, s_DnrCtrl.DNRState
	b	.L567	@
.L577:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp150,
	str	r1, [r4, #3096]	@ tmp150, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L567	@
.L578:
	movw	r7, #:lower16:g_event_report	@ tmp215,
	movt	r7, #:upper16:g_event_report	@ tmp215,
	ldr	r3, [r7, #0]	@ g_event_report.586, g_event_report
	cmp	r3, #0	@ g_event_report.586,
	beq	.L569	@,
	add	r6, sp, #8	@ tmp174,,
	mov	r0, r1	@, prephitmp.1992
	mov	r8, #1	@ tmp173,
	mov	r2, sp	@,
	str	r8, [r6, #-8]!	@ tmp173, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.586
.L569:
	bl	vfmw_dprint_nothing	@
	ldr	r6, .L580	@ tmp214,
	ldr	ip, [r4, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #:lower16:76696	@ tmp179,
	movt	r0, #:upper16:76696	@ tmp179,
	movw	r8, #:lower16:.LANCHOR1	@ tmp177,
	movt	r8, #:upper16:.LANCHOR1	@ tmp177,
	mla	r1, ip, r0, r6	@ tmp182, s_DnrCtrl.ThisInstID, tmp179, tmp214
	add	r0, r1, #968	@, tmp182,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L579	@,
	ldr	r3, [r7, #0]	@ g_event_report.2006, g_event_report
	cmp	r3, #0	@ g_event_report.2006,
	beq	.L571	@,
	add	r7, sp, #8	@ tmp191,,
	ldr	r0, [r8, #3092]	@, s_DnrCtrl.ThisInstID
	mov	r2, sp	@,
	str	r1, [r7, #-8]!	@ ret_val,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2006
.L571:
	mov	r1, #0	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.1992, s_DnrCtrl.ThisInstID
	b	.L568	@
.L579:
	ldr	r3, [r7, #0]	@ g_event_report.2004, g_event_report
	cmp	r3, #0	@ g_event_report.2004,
	beq	.L571	@,
	add	lr, sp, #8	@ tmp187,,
	ldr	r0, [r8, #3092]	@, s_DnrCtrl.ThisInstID
	mov	r2, #1	@ tmp184,
	mov	r1, #115	@,
	str	r2, [lr, #-8]!	@ tmp184,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.2004
	b	.L571	@
.L572:
	bl	vfmw_dprint_nothing	@
	b	.L573	@
.L581:
	.align	2
.L580:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp240,
	movt	r4, #:upper16:.LANCHOR1	@ tmp240,
	.pad #8
	sub	sp, sp, #8	@,,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #3140]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r0, #44]	@ dat,
	tst	r3, #1	@ dat,
	beq	.L591	@,
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r3, [r1, #20]	@ D.36984, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r3, #0	@ D.36984,
	beq	.L585	@,
	blx	r3	@ D.36984
.L586:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L595	@,
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	bne	.L596	@,
.L588:
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	beq	.L597	@,
.L591:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L595:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #3092]	@ D.36992, s_DnrCtrl.ThisInstID
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp162,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp162,
	add	r2, r4, r2, asl #2	@, tmp158, tmp240, D.36992,
	ldr	ip, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r1, [r2, #3156]	@ tmp161, last_rec_pos_time
	rsb	r7, r1, r0	@ tmp160, tmp161, currtime
	cmp	r7, ip	@ tmp160, g_TraceFramePeriod
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	strhi	r0, [r2, #3156]	@ currtime, last_rec_pos_time
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	beq	.L588	@,
.L596:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldr	ip, [r7, #20]	@ prephitmp.2036, <variable>.u32DaLastStartTime
	add	r3, r2, #49920	@ tmp173, <variable>.u32DaBeginTime,
	add	r1, r3, #80	@ tmp173, tmp173,
	cmp	r1, ip	@ tmp173, prephitmp.2036
	strcc	ip, [r7, #16]	@ prephitmp.2036, <variable>.u32DaBeginTime
	ldr	r5, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldrcs	r3, [r7, #24]	@ prephitmp.2025, <variable>.u32DaDnrWorkTime
	movcc	r3, #0	@ prephitmp.2025,
	rsb	r1, r5, r0	@ Period, <variable>.u32DaBeginTime, CurTime
	add	r6, r3, r0	@ tmp181, prephitmp.2025, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r6	@ D.37009, prephitmp.2036, tmp181
	movw	r5, #:lower16:g_VfmwGlobalStat	@ tmp182,
	mov	r6, #0	@ tmp184,
	str	r3, [r7, #24]	@ D.37009, <variable>.u32DaDnrWorkTime
	movt	r5, #:upper16:g_VfmwGlobalStat	@ tmp182,
	str	r6, [r7, #20]	@ tmp184, <variable>.u32DaLastStartTime
	bcc	.L588	@,
	mov	r0, #1000	@ tmp190,
	mul	r0, r0, r3	@, tmp190, D.37009
	bl	__aeabi_uidiv	@
	str	r6, [r5, #16]	@ tmp184, <variable>.u32DaBeginTime
	movw	r3, #:lower16:.LANCHOR1	@ tmp196,
	movt	r3, #:upper16:.LANCHOR1	@ tmp196,
	str	r0, [r5, #28]	@, <variable>.u32DaDnrLoad
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	bne	.L591	@,
.L597:
	ldr	r0, [r3, #3092]	@ temp.2038, s_DnrCtrl.ThisInstID
	movw	ip, #9587	@ tmp201,
	movw	r8, #:lower16:.LANCHOR0	@ tmp243,
	movt	r8, #:upper16:.LANCHOR0	@ tmp243,
	mul	r6, ip, r0	@ tmp200, tmp201, temp.2038
	add	r5, r8, r6, asl #3	@, tmp205, tmp243, tmp200,
	ldr	r7, [r5, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r7, #1	@ <variable>.InstMode,
	beq	.L598	@,
.L592:
	ldr	r0, [r4, #3092]	@ temp.2039, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:76696	@ tmp214,
	movt	r5, #:upper16:76696	@ tmp214,
	mov	r3, #0	@ tmp209,
	str	r3, [r4, #3096]	@ tmp209, s_DnrCtrl.DNRState
	movw	r7, #:lower16:.LANCHOR1	@ tmp208,
	mul	r1, r5, r0	@ tmp213, tmp214, temp.2039
	movw	r6, #:lower16:.LANCHOR0	@ tmp211,
	movt	r7, #:upper16:.LANCHOR1	@ tmp208,
	movt	r6, #:upper16:.LANCHOR0	@ tmp211,
	add	r8, r1, r8	@ tmp215, tmp213, tmp243
	ldr	r8, [r8, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r8, r3	@ <variable>.NeedStartAgain,
	beq	.L599	@,
.L593:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L591	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	lr, #1	@ tmp237,
	str	lr, [r4, #3096]	@ tmp237, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L591	@
.L599:
	add	r2, r6, r1	@ tmp222, tmp211, tmp213
	add	r1, r2, #48	@, tmp222,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, [r7, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r5, r5, r1, r6	@ tmp230, tmp214, s_DnrCtrl.ThisInstID, tmp211
	str	r8, [r5, #440]	@ <variable>.NeedStartAgain, <variable>.s321DFrameIsProc
	b	.L593	@
.L585:
	bl	vfmw_dprint_nothing	@
	b	.L586	@
.L598:
	bl	DNR_ProcessDnrReturn	@
	b	.L592	@
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
	bne	.L604	@,
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
	beq	.L608	@,
.L606:
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L604:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L606	@,
.L608:
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
	movw	r5, #:lower16:g_dnr_hal_fun_ptr	@ tmp155,
	movt	r5, #:upper16:g_dnr_hal_fun_ptr	@ tmp155,
	ldr	r3, [r5, #0]	@ D.35858, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.35858,
	beq	.L610	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp156,
	movt	r4, #:upper16:.LANCHOR1	@ tmp156,
	blx	r3	@ D.35858
	ldr	r3, [r4, #3080]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.35865,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
.L617:
	add	r0, r4, #3072	@, tmp156,
	mov	r1, #60	@,
	add	r0, r0, #8	@,,
	bl	__memzero	@
	ldr	r0, .L618	@,
	movw	r1, #:lower16:76696	@,
	movt	r1, #:upper16:76696	@,
	bl	__memzero	@
	add	r0, r4, #3104	@, tmp156,
	bl	DNR_OpenDrivers	@
	bl	DNR_Fsp_Init	@
	ldr	r3, [r5, #4]	@ D.35876, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.35876,
	beq	.L614	@,
	blx	r3	@ D.35876
.L615:
	mov	r1, #1	@ tmp153,
	mov	r0, #0	@ D.35865,
	str	r1, [r4, #3080]	@ tmp153, s_DnrCtrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L610:
	movw	r4, #:lower16:.LANCHOR1	@ tmp156,
	movt	r4, #:upper16:.LANCHOR1	@ tmp156,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3080]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.35865,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	b	.L617	@
.L614:
	bl	vfmw_dprint_nothing	@
	b	.L615	@
.L619:
	.align	2
.L618:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #0	@ tmp134,
	ldr	r0, .L622	@,
	str	r2, [r3, #16]	@ tmp134, <variable>.s32IsOpen
	str	r2, [r3, #20]	@ tmp134, <variable>.InstMode
	bl	DNR_CloseDrivers	@
	ldr	r0, .L622+4	@,
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L623:
	.align	2
.L622:
	.word	.LANCHOR1+3104
	.word	.LANCHOR1+3080
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
.LANCHOR1 = . + 73656
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.space	4
	.type	s_DnrChan, %object
	.size	s_DnrChan, 76696
s_DnrChan:
	.space	76696
	.type	last_rec_pos_time.37425, %object
	.size	last_rec_pos_time.37425, 4
last_rec_pos_time.37425:
	.space	4
	.type	last_rec_pos_time.37348, %object
	.size	last_rec_pos_time.37348, 4
last_rec_pos_time.37348:
	.space	4
	.type	last_rec_pos_time.37219, %object
	.size	last_rec_pos_time.37219, 4
last_rec_pos_time.37219:
	.space	4
	.type	timePrevDo.36374, %object
	.size	timePrevDo.36374, 4
timePrevDo.36374:
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
	.type	last_rec_pos_time.36358, %object
	.size	last_rec_pos_time.36358, 4
last_rec_pos_time.36358:
	.space	4
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.36973, %object
	.size	last_rec_pos_time.36973, 4
last_rec_pos_time.36973:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
