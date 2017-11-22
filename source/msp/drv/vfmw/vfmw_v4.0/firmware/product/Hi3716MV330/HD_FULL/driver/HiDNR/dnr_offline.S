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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_offline)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_offline.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.o
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
	.global	DNRDRV_PrepareSleep
	.type	DNRDRV_PrepareSleep, %function
DNRDRV_PrepareSleep:
	.fnstart
.LFB1597:
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
.LFB1598:
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
.LFB1599:
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
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	mvnhi	r0, #0	@ D.34531,
	bxhi	lr	@
	movw	r3, #9587	@ tmp138,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	mul	r2, r3, r0	@ tmp137, tmp138, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	mov	r3, #0	@ tmp144,
	mov	r0, r3	@ D.34531, tmp144
	add	r1, r2, #1	@ tmp139, tmp137,
	add	r2, ip, r1, asl #3	@, tmp142, tmp136, tmp139,
	add	r1, r2, #8	@ tmp143, tmp142,
	str	r3, [r2, #8]	@ tmp144, <variable>.s32IsOpen
	str	r3, [r1, #4]	@ tmp144, <variable>.InstMode
	bx	lr	@
	.fnend
	.size	DNR_CloseChan, .-DNR_CloseChan
	.align	2
	.global	DNR_IsIFrame
	.type	DNR_IsIFrame, %function
DNR_IsIFrame:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #128]	@ D.34911, <variable>.is_fld_save
	cmp	r3, #0	@ D.34911,
	bne	.L16	@,
	ldr	r3, [r0, #140]	@ <variable>.format, <variable>.format
	tst	r3, #3	@ <variable>.format,
	movne	r0, #0	@, D.34924
	moveq	r0, #1	@, D.34924
	bx	lr	@
.L16:
	cmp	r3, #1	@ D.34911,
	beq	.L22	@,
.L18:
	mov	r0, #0	@ D.34924,
	bx	lr	@
.L22:
	ldr	r1, [r0, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, r1, #3	@ D.34917, <variable>.top_fld_type,
	beq	.L19	@,
	ldr	r2, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r2, #3	@ <variable>.bottom_fld_type,
	bne	.L18	@,
.L19:
	ldr	ip, [r0, #140]	@ <variable>.format, <variable>.format
	tst	ip, #3	@ <variable>.format,
	beq	.L20	@,
	cmp	r3, #0	@ D.34917,
	bne	.L20	@,
	ldr	r0, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	ands	r0, r0, #3	@ D.34924, <variable>.bottom_fld_type,
	movne	r0, #1	@, D.34924,
	bx	lr	@
.L20:
	mov	r0, #1	@ D.34924,
	bx	lr	@
	.fnend
	.size	DNR_IsIFrame, .-DNR_IsIFrame
	.align	2
	.global	DNR_GetSourceImgType
	.type	DNR_GetSourceImgType, %function
DNR_GetSourceImgType:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:g_eVdmVersion	@ tmp136,
	movt	r2, #:upper16:g_eVdmVersion	@ tmp136,
	ldr	r1, [r2, #0]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r1, #3	@ tmp137, g_eVdmVersion,
	cmp	r3, #1	@ tmp137,
	bls	.L24	@,
	movw	r3, #:lower16:USE_FF_APT_EN	@ tmp139,
	movt	r3, #:upper16:USE_FF_APT_EN	@ tmp139,
	ldr	ip, [r3, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	ip, #1	@ USE_FF_APT_EN,
	beq	.L27	@,
.L24:
	mov	r0, #0	@ D.35114,
	bx	lr	@
.L27:
	ldr	r1, [r0, #16]	@ <variable>.video_standard, <variable>.video_standard
	cmp	r1, #0	@ <variable>.video_standard,
	ldreqb	r0, [r0, #4]	@ zero_extendqisi2	@ D.35114, <variable>.pic_structure
	bxeq	lr	@
	mov	r0, #0	@ D.35114,
	bx	lr	@
	.fnend
	.size	DNR_GetSourceImgType, .-DNR_GetSourceImgType
	.align	2
	.global	DNR_SetDnrCfgDrDbDcEnable
	.type	DNR_SetDnrCfgDrDbDcEnable, %function
DNR_SetDnrCfgDrDbDcEnable:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movw	ip, #:lower16:.LANCHOR0	@ tmp199,
	movw	r4, #:lower16:76696	@ tmp147,
	movt	ip, #:upper16:.LANCHOR0	@ tmp199,
	movt	r4, #:upper16:76696	@ tmp147,
	mla	r4, r4, r1, ip	@ tmp148, tmp147, NextInstId, tmp199
	ldr	r5, [r4, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	cmp	r5, #0	@ <variable>.IsRwzb,
	bne	.L29	@,
	ldr	r2, [r2, #16]	@ D.35156, <variable>.video_standard
	cmp	r2, #8	@ D.35156,
	beq	.L29	@,
	cmp	r2, #1	@ D.35156,
	beq	.L29	@,
	ldr	r2, [r3, #32]	@ <variable>.MbWidth, <variable>.MbWidth
	cmp	r2, #45	@ <variable>.MbWidth,
	ble	.L39	@,
.L29:
	mov	r5, #0	@ tmp160,
	strb	r5, [r0, #0]	@ tmp160, <variable>.dc_en
	strb	r5, [r0, #2]	@ tmp160, <variable>.dr_en
	strb	r5, [r0, #1]	@ tmp160, <variable>.db_en
.L31:
	movw	r3, #:lower16:.LANCHOR1	@ tmp200,
	movt	r3, #:upper16:.LANCHOR1	@ tmp200,
	movw	r2, #:lower16:76696	@ tmp177,
	movt	r2, #:upper16:76696	@ tmp177,
	ldr	r5, [r3, #3984]	@ g_DREnable, g_DREnable
	mla	r2, r2, r1, ip	@ tmp178, tmp177, NextInstId, tmp199
	cmp	r5, #1	@ g_DREnable,
	ldrnesb	r4, [r0, #2]	@ iftmp.487, <variable>.dr_en
	moveq	r4, r5	@ iftmp.487, prephitmp.785
	str	r4, [r2, #36]	@ iftmp.487, <variable>.enDR
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	uxtbne	r5, r4	@ prephitmp.785, iftmp.487
	strb	r5, [r0, #2]	@ prephitmp.785, <variable>.dr_en
	ldr	r5, [r3, #3988]	@ g_DBEnable, g_DBEnable
	mla	r2, r2, r1, ip	@ tmp187, tmp186, NextInstId, tmp199
	cmp	r5, #1	@ g_DBEnable,
	ldrnesb	r4, [r0, #1]	@ iftmp.489, <variable>.db_en
	moveq	r4, r5	@ iftmp.489, prephitmp.774
	uxtbne	r5, r4	@ prephitmp.774, iftmp.489
	str	r4, [r2, #40]	@ iftmp.489, <variable>.enDB
	strb	r5, [r0, #1]	@ prephitmp.774, <variable>.db_en
	ldr	r3, [r3, #3992]	@ g_DCEnable, g_DCEnable
	cmp	r3, #1	@ g_DCEnable,
	moveq	r4, r3	@ prephitmp.786, g_DCEnable
	movw	r3, #:lower16:76696	@ tmp195,
	movt	r3, #:upper16:76696	@ tmp195,
	ldrnesb	r2, [r0, #0]	@ iftmp.491, <variable>.dc_en
	moveq	r2, r4	@ iftmp.491, prephitmp.786
	mla	ip, r3, r1, ip	@ tmp196, tmp195, NextInstId, tmp199
	uxtbne	r4, r2	@ prephitmp.786, iftmp.491
	str	r2, [ip, #44]	@ iftmp.491, <variable>.enDC
	strb	r4, [r0, #0]	@ prephitmp.786, <variable>.dc_en
	ldmfd	sp!, {r4, r5}
	bx	lr
.L39:
	ldr	r3, [r3, #36]	@ <variable>.MbHeight, <variable>.MbHeight
	cmp	r3, #36	@ <variable>.MbHeight,
	bgt	.L29	@,
	ldr	r2, [r4, #32]	@ <variable>.userSetRwzb_state, <variable>.userSetRwzb_state
	cmp	r2, #1	@ <variable>.userSetRwzb_state,
	beq	.L29	@,
	mov	r3, #1	@ tmp166,
	strb	r5, [r0, #0]	@ <variable>.IsRwzb, <variable>.dc_en
	strb	r3, [r0, #1]	@ tmp166, <variable>.db_en
	strb	r3, [r0, #2]	@ tmp166, <variable>.dr_en
	b	.L31	@
	.fnend
	.size	DNR_SetDnrCfgDrDbDcEnable, .-DNR_SetDnrCfgDrDbDcEnable
	.align	2
	.global	DNR_SetDnrCfgPicStructure
	.type	DNR_SetDnrCfgPicStructure, %function
DNR_SetDnrCfgPicStructure:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	mov	r3, r0	@ pDnrCfg, pDnrCfg
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r0, #4	@ <variable>.pic_structure,
	beq	.L50	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp224,
	movw	ip, #:lower16:76696	@ tmp227,
	movt	r0, #:upper16:.LANCHOR0	@ tmp224,
	movt	ip, #:upper16:76696	@ tmp227,
	mov	r4, #0	@ tmp230,
	mla	r1, ip, r1, r0	@ tmp228, tmp227, NextInstId, tmp224
	mov	r0, r4	@ D.35221, tmp230
	str	r4, [r1, #24]	@ tmp230, <variable>.NeedStartAgain
.L49:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ <variable>.Range_mapuv, <variable>.Range_mapuv
	strb	r1, [r3, #8]	@ <variable>.Range_mapuv, <variable>.Range_mapuv
	ldrb	ip, [r2, #7]	@ zero_extendqisi2	@ <variable>.Range_mapuv_flag, <variable>.Range_mapuv_flag
	strb	ip, [r3, #7]	@ <variable>.Range_mapuv_flag, <variable>.Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ <variable>.Range_mapy, <variable>.Range_mapy
	strb	r1, [r3, #6]	@ <variable>.Range_mapy, <variable>.Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ <variable>.Range_mapy_flag, <variable>.Range_mapy_flag
	strb	r2, [r3, #5]	@ <variable>.Range_mapy_flag, <variable>.Range_mapy_flag
.L44:
	ldmfd	sp!, {r4}
	bx	lr
.L50:
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movw	ip, #:lower16:76696	@ tmp143,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:76696	@ tmp143,
	mla	r1, ip, r1, r0	@ tmp144, tmp143, NextInstId, tmp140
	ldr	r0, [r1, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r0, #0	@ <variable>.NeedStartAgain,
	bne	.L42	@,
	ldr	ip, [r1, #188]	@ D.35200, <variable>.Cur1DImage.format
	and	r4, ip, #3072	@ tmp153, D.35200,
	cmp	r4, #3072	@ tmp153,
	moveq	ip, #1	@ tmp160,
	streq	ip, [r1, #24]	@ tmp160, <variable>.NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp160, <variable>.pic_structure
	beq	.L49	@,
	ands	r4, ip, #2048	@ tmp171, D.35200,
	beq	.L45	@,
.L48:
	str	r0, [r1, #24]	@ tmp213, <variable>.NeedStartAgain
	mov	r1, #2	@ tmp214,
	strb	r1, [r3, #3]	@ tmp214, <variable>.pic_structure
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapuv, <variable>.bottom_Range_mapuv
	strb	ip, [r3, #8]	@ <variable>.bottom_Range_mapuv, <variable>.Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapuv_flag, <variable>.bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ <variable>.bottom_Range_mapuv_flag, <variable>.Range_mapuv_flag
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapy, <variable>.bottom_Range_mapy
	strb	ip, [r3, #6]	@ <variable>.bottom_Range_mapy, <variable>.Range_mapy
	ldrb	r2, [r2, #0]	@ zero_extendqisi2	@ <variable>.bottom_Range_mapy_flag, <variable>.bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ <variable>.bottom_Range_mapy_flag, <variable>.Range_mapy_flag
	b	.L44	@
.L42:
	mov	r0, #0	@ tmp213,
	b	.L48	@
.L45:
	tst	ip, #1024	@ D.35200,
	mvneq	r0, #0	@ D.35221,
	beq	.L44	@,
	str	r4, [r1, #24]	@ tmp171, <variable>.NeedStartAgain
	mov	r0, r4	@ D.35221, tmp171
	mov	r1, #1	@ tmp197,
	strb	r1, [r3, #3]	@ tmp197, <variable>.pic_structure
	b	.L49	@
	.fnend
	.size	DNR_SetDnrCfgPicStructure, .-DNR_SetDnrCfgPicStructure
	.align	2
	.global	DNR_IsStdNeedProcess
	.type	DNR_IsStdNeedProcess, %function
DNR_IsStdNeedProcess:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #10	@ tmp136, eVidStd,
	cmp	r3, #2	@ tmp136,
	bhi	.L52	@,
	movw	r2, #:lower16:g_VdmCharacter	@ tmp137,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp137,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L53	@,
.L52:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	beq	.L53	@,
	cmp	r0, #18	@ eVidStd,
	movne	r0, #0	@, D.35528
	moveq	r0, #1	@, D.35528
	bx	lr	@
.L53:
	mov	r0, #1	@ D.35528,
	bx	lr	@
	.fnend
	.size	DNR_IsStdNeedProcess, .-DNR_IsStdNeedProcess
	.align	2
	.global	DNR_Fsp_ReleasePic
	.type	DNR_Fsp_ReleasePic, %function
DNR_Fsp_ReleasePic:
	.fnstart
.LFB1642:
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
	.global	DNR_NeedDnr
	.type	DNR_NeedDnr, %function
DNR_NeedDnr:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movw	r2, #:lower16:76696	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	movt	r2, #:upper16:76696	@ tmp140,
	mla	r3, r2, r0, r3	@ tmp141, tmp140, ChanID, tmp137
	add	ip, r3, #75776	@ tmp142, tmp141,
	add	ip, ip, #904	@ tmp142, tmp142,
	ldr	r2, [ip, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	r0, #1	@ D.36284,
	bxne	lr	@
	ldr	r0, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r2, [ip, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	r0, r2	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	movhi	r0, #0	@ D.36284,
	bxhi	lr	@
	add	r3, r3, #75776	@ tmp157, tmp141,
	ldr	r0, [r1, #148]	@ <variable>.image_height, <variable>.image_height
	add	ip, r3, #912	@ tmp157, tmp157,
	ldr	r1, [ip, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r0, r1	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	movhi	r0, #0	@, D.36284
	movls	r0, #1	@, D.36284
	bx	lr	@
	.fnend
	.size	DNR_NeedDnr, .-DNR_NeedDnr
	.align	2
	.global	DNR_FsOccupyByVO
	.type	DNR_FsOccupyByVO, %function
DNR_FsOccupyByVO:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #368]	@ <variable>.is_processed_by_dnr, <variable>.is_processed_by_dnr
	ldr	ip, [r0, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	cmp	r3, #0	@ <variable>.is_processed_by_dnr,
	ldreq	r3, [r0, #104]	@ ImgStartAddr, <variable>.luma_phy_addr
	ldrne	r3, [r0, #120]	@ ImgStartAddr, <variable>.luma_2d_phy_addr
	add	r0, r3, ip	@ ImgEndAddr, ImgStartAddr, <variable>.ImgSize
	cmp	r3, r2	@ ImgStartAddr, DecPhyEndAddr
	movge	ip, #0	@, tmp151
	movlt	ip, #1	@, tmp151
	cmp	r3, r1	@ ImgStartAddr, DecPhyStartAddr
	movlt	ip, #0	@, tmp151,
	cmp	ip, #0	@ tmp151,
	bne	.L66	@,
	cmp	r0, r2	@ ImgEndAddr, DecPhyEndAddr
	movgt	ip, #0	@, tmp158
	movle	ip, #1	@, tmp158
	cmp	r0, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	ip, #0	@, tmp158,
	cmp	ip, #0	@ tmp158,
	bne	.L66	@,
	cmp	r0, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@, s32Count
	movgt	r0, #1	@, s32Count
	cmp	r3, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@, s32Count,
	bx	lr	@
.L66:
	mov	r0, #1	@ s32Count,
	bx	lr	@
	.fnend
	.size	DNR_FsOccupyByVO, .-DNR_FsOccupyByVO
	.align	2
	.global	DNR_SetDSDParam
	.type	DNR_SetDSDParam, %function
DNR_SetDSDParam:
	.fnstart
.LFB1656:
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
.LFB1657:
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
	.global	DNR_OpenChan
	.type	DNR_OpenChan, %function
DNR_OpenChan:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #9587	@ tmp136,
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	mul	ip, r2, r0	@ tmp135, tmp136, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #1	@ tmp142,
	add	r3, r1, ip, asl #3	@, tmp140, tmp134, tmp135,
	str	r2, [r3, #16]	@ tmp142, <variable>.s32IsOpen
	bx	lr	@
	.fnend
	.size	DNR_OpenChan, .-DNR_OpenChan
	.align	2
	.global	DNR_SetDataSource
	.type	DNR_SetDataSource, %function
DNR_SetDataSource:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L79	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movw	r4, #:lower16:76696	@ tmp143,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:76696	@ tmp143,
	ldr	r6, [r2, #0]	@ <variable>.pstCaptureInFrm, <variable>.pstCaptureInFrm
	movw	r3, #:lower16:76680	@ tmp148,
	mla	ip, r4, r0, ip	@ tmp144, tmp143, ChanID, tmp140
	movt	r3, #:upper16:76680	@ tmp148,
	movw	r4, #:lower16:76664	@ tmp155,
	movt	r4, #:upper16:76664	@ tmp155,
	mov	r0, #0	@ D.36657,
	add	r5, ip, #75776	@ tmp145, tmp144,
	add	r5, r5, #896	@ tmp145, tmp145,
	str	r6, [r5, #4]	@ <variable>.pstCaptureInFrm, <variable>.pCaptureImageIn
	ldr	r2, [r2, #4]	@ <variable>.pstCaptureOutFrm, <variable>.pstCaptureOutFrm
	str	r1, [ip, r4]	@ DNRDataSourceFlag, <variable>.DNRCaptureEnableFlag
	str	r2, [ip, r3]	@ <variable>.pstCaptureOutFrm, <variable>.pCaptureImageOut
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L79:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2713	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36657,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_SetDataSource, .-DNR_SetDataSource
	.align	2
	.global	DNR_FsIsInImgQue
	.type	DNR_FsIsInImgQue, %function
DNR_FsIsInImgQue:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r7, r1, #0	@ DecPhy, DecPhy
	mov	fp, r0	@ ChanID, ChanID
	beq	.L94	@,
	cmp	r2, #0	@ Size,
	beq	.L95	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp214,
	movw	sl, #:lower16:76696	@ tmp158,
	movt	r6, #:upper16:.LANCHOR0	@ tmp214,
	movt	sl, #:upper16:76696	@ tmp158,
	add	r8, r2, r7	@ DecPhyEndAddr, Size, DecPhy
	movw	r1, #26408	@ tmp156,
	mla	r2, sl, r0, r6	@ tmp159, tmp158, ChanID, tmp214
	add	r0, r2, #26368	@ tmp160, tmp159,
	add	r3, r0, #40	@ tmp160, tmp160,
	ldr	r4, [r2, r1]	@ i, <variable>.LogicImageQue.history
	ldr	sl, [r3, #4]	@ i.1047, <variable>.LogicImageQue.head
	and	r4, r4, #63	@ i.1046, i,
	cmp	sl, r4	@ i.1047, i.1046
	moveq	r5, #0	@ s32Count,
	beq	.L85	@,
	movw	r9, #19174	@ tmp169,
	mul	r9, r9, fp	@ tmp168, tmp169, ChanID
	add	r3, r9, r4	@ tmp170, tmp168, i.1046
	add	ip, r6, r3, asl #2	@, tmp175, tmp214, tmp170,
	ldr	r0, [ip, #1056]	@ pImage.1048, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1048,
	movne	r5, #0	@ s32Count,
	bne	.L87	@,
	b	.L86	@
.L88:
	ldr	r0, [r3, #1056]	@ pImage.1048, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1048,
	beq	.L86	@,
.L87:
	mov	r1, r7	@, DecPhy
	mov	r2, r8	@, DecPhyEndAddr
	bl	DNR_FsOccupyByVO	@
	add	r4, r4, #1	@ i.1043, i.1046,
	and	r4, r4, #63	@ i.1046, i.1043,
	add	r1, r9, r4	@ tmp180, tmp219, i.1046
	cmp	r4, sl	@ i.1046, i.1047
	add	r3, r6, r1, asl #2	@, tmp185, tmp214, tmp180,
	add	r5, r5, r0	@ s32Count, s32Count,
	bne	.L88	@,
.L85:
	movw	r2, #:lower16:76696	@ tmp190,
	movt	r2, #:upper16:76696	@ tmp190,
	movw	r0, #26416	@ tmp188,
	and	sl, sl, #63	@ i.1045, i.1047,
	mla	ip, r2, fp, r6	@ tmp191, tmp190, ChanID, tmp214
	movw	r2, #:lower16:.LANCHOR0	@ tmp187,
	movt	r2, #:upper16:.LANCHOR0	@ tmp187,
	ldr	r4, [ip, r0]	@ D.36552, <variable>.LogicImageQue.tail
	cmp	r4, sl	@ D.36552, i.1045
	beq	.L82	@,
	movw	r9, #19174	@ tmp195,
	mul	r9, r9, fp	@ tmp194, tmp195, ChanID
	add	r3, r9, sl	@ tmp196, tmp194, i.1045
	add	r1, r2, r3, asl #2	@, tmp201, tmp187, tmp196,
	ldr	r0, [r1, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L92	@,
	b	.L86	@
.L93:
	ldr	r0, [r3, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L86	@,
.L92:
	mov	r1, r7	@, DecPhy
	mov	r2, r8	@, DecPhyEndAddr
	bl	DNR_FsOccupyByVO	@
	add	sl, sl, #1	@ i.1044, i.1045,
	and	sl, sl, #63	@ i.1045, i.1044,
	add	ip, r9, sl	@ tmp206, tmp217, i.1045
	cmp	sl, r4	@ i.1045, D.36552
	add	r3, r6, ip, asl #2	@, tmp211, tmp214, tmp206,
	add	r5, r5, r0	@ s32Count, s32Count,
	bne	.L93	@,
.L82:
	mov	r0, r5	@, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L86:
	mvn	r5, #0	@ s32Count,
	mov	r0, r5	@, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L95:
	mov	r0, r2	@, Size
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2550	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ s32Count,
	b	.L82	@
.L94:
	mov	r0, r7	@, DecPhy
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2549	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ s32Count,
	b	.L82	@
	.fnend
	.size	DNR_FsIsInImgQue, .-DNR_FsIsInImgQue
	.align	2
	.global	DNR_DelImageProc
	.type	DNR_DelImageProc, %function
DNR_DelImageProc:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ pImageQueue, pImageQueue
	beq	.L106	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L99	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	add	r0, r2, #976	@ tmp143, tmp171,
	cmp	r3, r0	@ pImageQueue, tmp143
	moveq	r3, #0	@ ChanID,
	beq	.L101	@,
	ldr	ip, .L107	@ tmp146,
	cmp	r3, ip	@ pImageQueue, tmp146
	beq	.L102	@,
	ldr	r0, .L107+4	@ tmp150,
	cmp	r3, r0	@ pImageQueue, tmp150
	moveq	r3, #2	@ ChanID,
	beq	.L101	@,
	ldr	ip, .L107+8	@ tmp154,
	cmp	r3, ip	@ pImageQueue, tmp154
	moveq	r3, #3	@ ChanID,
	beq	.L101	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1955	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36010,
	ldmfd	sp!, {r3, pc}	@
.L102:
	mov	r3, #1	@ ChanID,
.L101:
	movw	r0, #19174	@ tmp160,
	mov	ip, #0	@ tmp167,
	mla	r3, r0, r3, r1	@ tmp161, tmp160, ChanID, ImageID
	mov	r0, ip	@ D.36010, tmp167
	add	r3, r3, #178	@ tmp162, tmp161,
	add	r2, r2, r3, asl #2	@, tmp165, tmp171, tmp162,
	str	ip, [r2, #8]	@ tmp167, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r3, pc}	@
.L99:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1934	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36010,
	ldmfd	sp!, {r3, pc}	@
.L106:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1933	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36010,
	ldmfd	sp!, {r3, pc}	@
.L108:
	.align	2
.L107:
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
.LFB1616:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp175,
	movt	r3, #:upper16:76696	@ tmp175,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mul	r3, r3, r0	@ tmp174, tmp175, InstId
	movw	r8, #:lower16:.LANCHOR0	@ tmp215,
	movt	r8, #:upper16:.LANCHOR0	@ tmp215,
	str	r0, [sp, #4]	@ InstId, %sfp
	add	r0, r3, r8	@ tmp176, tmp174, tmp215
	add	r4, r0, #51456	@ tmp177, tmp176,
	add	r4, r4, #72	@ tmp177, tmp177,
	ldr	ip, [r4, #4]	@ D.34894, <variable>.TempImageNum
	cmp	ip, #0	@ D.34894,
	ble	.L121	@,
	mov	r9, #392	@ tmp189,
	ldr	r5, [sp, #4]	@, %sfp
	mla	r6, r9, ip, r3	@ tmp192, tmp189, D.34894, tmp174
	movw	sl, #19174	@ tmp219,
	mul	sl, sl, r5	@ tmp220, tmp219,
	sub	r7, ip, #1	@ i, D.34894,
	add	r2, r6, r8	@ tmp193, tmp192, tmp215
	sub	r5, r7, #1	@ i, i,
	add	fp, r2, #51456	@ ivtmp.1105, tmp193,
	mov	r6, #0	@ tmp221,
	add	fp, fp, #80	@ ivtmp.1105, ivtmp.1105,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #646	@,
	ldr	r4, [fp, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	and	ip, r7, #1	@ tmp227, i,
	mov	r9, r6	@ tmp205, tmp221
	add	lr, sl, r4	@ tmp198, tmp220, <variable>.image_id
	mov	r7, r8	@ tmp195, tmp215
	sub	r4, fp, #392	@ ivtmp.1105, ivtmp.1105,
	add	r3, r8, lr, asl #2	@, tmp203, tmp215, tmp198,
	add	lr, r3, #720	@ tmp204, tmp203,
	str	r6, [lr, #0]	@ tmp221, <variable>.LogicImageIsUsed
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	ldr	ip, [sp, #0]	@,
	beq	.L120	@,
	cmp	ip, #0	@ tmp227,
	beq	.L112	@,
	ldr	r2, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r5, r5, #1	@ i, i,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	add	r7, sl, r2	@ tmp256, tmp220, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	movw	r2, #646	@,
	sub	r4, fp, #784	@ ivtmp.1105, ivtmp.1105,
	add	r9, r8, r7, asl #2	@, tmp259, tmp215, tmp256,
	mov	r7, r8	@ tmp195, tmp215
	add	lr, r9, #720	@ tmp260, tmp259,
	mov	r9, r6	@ tmp205, tmp221
	str	r6, [lr, #0]	@ tmp221, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	beq	.L120	@,
.L112:
	ldr	ip, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	r2, #646	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	add	r3, sl, ip	@ tmp235, tmp220, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	add	r9, r3, #178	@ tmp236, tmp235,
	sub	r7, r5, #1	@ tmp228, i,
	sub	r5, r7, #1	@ i, tmp228,
	movw	r7, #:lower16:.LANCHOR0	@ tmp195,
	add	lr, r8, r9, asl #2	@, tmp238, tmp215, tmp236,
	movt	r7, #:upper16:.LANCHOR0	@ tmp195,
	mov	r9, r6	@ tmp205, tmp221
	str	r6, [lr, #8]	@ tmp221, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	ldr	r2, [r4, #-608]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	add	ip, sl, r2	@ tmp247, tmp220, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	add	r3, ip, #178	@ tmp248, tmp247,
	movw	r2, #646	@,
	sub	r4, r4, #784	@ ivtmp.1105, ivtmp.1105,
	add	ip, r8, r3, asl #2	@, tmp250, tmp215, tmp248,
	str	r6, [ip, #8]	@ tmp221, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	bne	.L112	@,
.L120:
	ldr	ip, [sp, #4]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp210,
	movt	r3, #:upper16:76696	@ tmp210,
	mov	r0, r9	@ D.34898, tmp205
	mla	lr, r3, ip, r7	@ tmp211, tmp210,, tmp195
	add	r2, lr, #51456	@ tmp212, tmp211,
	add	r1, r2, #72	@ tmp212, tmp212,
	str	r9, [r1, #4]	@ tmp205, <variable>.TempImageNum
.L111:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L121:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #636	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp185,
	mvn	r0, #0	@ D.34898,
	str	r1, [r4, #4]	@ tmp185, <variable>.TempImageNum
	b	.L111	@
	.fnend
	.size	DNR_ClearTempImage, .-DNR_ClearTempImage
	.align	2
	.global	DNR_StopChan
	.type	DNR_StopChan, %function
DNR_StopChan:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L127	@,
	movw	r2, #9587	@ tmp140,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	mul	r3, r2, r0	@ tmp139, tmp140, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r3, #1	@ tmp141, tmp139,
	add	r1, ip, r0, asl #3	@, tmp144, tmp138, tmp141,
	add	r2, r1, #8	@ tmp145, tmp144,
	ldr	r3, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L128	@,
	mov	r0, #0	@ tmp157,
	str	r0, [r2, #4]	@ tmp157, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L128:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #575	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34842,
	ldmfd	sp!, {r3, pc}	@
.L127:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #574	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34842,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_StopChan, .-DNR_StopChan
	.align	2
	.global	DNR_DisableChan
	.type	DNR_DisableChan, %function
DNR_DisableChan:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L134	@,
	movw	lr, #9587	@ tmp140,
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	mul	r2, lr, r0	@ tmp139, tmp140, ChanID
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	add	r1, ip, r2, asl #3	@, tmp144, tmp138, tmp139,
	ldr	r3, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L135	@,
	bl	DNR_StopChan	@
	mov	r0, #0	@ D.34830,
	ldmfd	sp!, {r3, pc}	@
.L135:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #564	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34830,
	ldmfd	sp!, {r3, pc}	@
.L134:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #563	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34830,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_DisableChan, .-DNR_DisableChan
	.align	2
	.global	DNR_StartChan
	.type	DNR_StartChan, %function
DNR_StartChan:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L141	@,
	movw	r2, #9587	@ tmp140,
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	mul	ip, r2, r0	@ tmp139, tmp140, ChanID
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, ip, #1	@ tmp141, tmp139,
	add	r3, r1, r0, asl #3	@, tmp144, tmp138, tmp141,
	add	r2, r3, #8	@ tmp145, tmp144,
	ldr	r3, [r3, #8]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L142	@,
	mov	r0, #0	@ D.34740,
	str	r3, [r2, #4]	@ <variable>.s32IsOpen, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L142:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #433	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34740,
	ldmfd	sp!, {r3, pc}	@
.L141:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #432	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34740,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_StartChan, .-DNR_StartChan
	.align	2
	.global	DNR_ConfigBackOptimizeFlag
	.type	DNR_ConfigBackOptimizeFlag, %function
DNR_ConfigBackOptimizeFlag:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	r3, r0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L149	@,
	movw	ip, #9587	@ tmp141,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	mul	r0, ip, r0	@ tmp140, tmp141, ChanID
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	add	ip, r2, r0, asl #3	@, tmp145, tmp139, tmp140,
	ldr	r0, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L150	@,
	cmp	r1, #0	@ pArgs,
	beq	.L151	@,
	movw	ip, #:lower16:76696	@ tmp155,
	movt	ip, #:upper16:76696	@ tmp155,
	ldr	r4, [r1, #12]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	mov	r0, #0	@ D.34724,
	mla	r3, ip, r3, r2	@ tmp156, tmp155, ChanID, tmp139
	add	ip, r3, #75776	@ tmp157, tmp156,
	mov	r2, ip	@ tmp164, tmp157
	add	ip, ip, #856	@ tmp157, tmp157,
	add	r3, r2, #872	@ tmp164, tmp164,
	str	r4, [ip, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	str	r2, [r3, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L150:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #422	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34724,
	ldmfd	sp!, {r4, pc}	@
.L149:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #421	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34724,
	ldmfd	sp!, {r4, pc}	@
.L151:
	mov	r0, r1	@, pArgs
	movw	r2, #423	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34724,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	DNR_ConfigBackOptimizeFlag, .-DNR_ConfigBackOptimizeFlag
	.align	2
	.global	DNR_ConfigFFFBSpeed
	.type	DNR_ConfigFFFBSpeed, %function
DNR_ConfigFFFBSpeed:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L158	@,
	movw	ip, #9587	@ tmp141,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	mul	r2, ip, r0	@ tmp140, tmp141, ChanID
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	add	ip, r3, r2, asl #3	@, tmp145, tmp139, tmp140,
	ldr	r2, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L159	@,
	cmp	r1, #0	@ pArgs,
	beq	.L160	@,
	movw	ip, #:lower16:76696	@ tmp155,
	movt	ip, #:upper16:76696	@ tmp155,
	ldr	r1, [r1, #0]	@ tmp158,* pArgs
	movw	r2, #:lower16:76632	@ tmp153,
	mla	r3, ip, r0, r3	@ tmp156, tmp155, ChanID, tmp139
	movt	r2, #:upper16:76632	@ tmp153,
	mov	r0, #0	@ D.34708,
	str	r1, [r3, r2]	@ tmp158, <variable>.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L159:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #410	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34708,
	ldmfd	sp!, {r3, pc}	@
.L158:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #409	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34708,
	ldmfd	sp!, {r3, pc}	@
.L160:
	mov	r0, r1	@, pArgs
	movw	r2, #411	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34708,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNR_ConfigFFFBSpeed, .-DNR_ConfigFFFBSpeed
	.align	2
	.global	DNR_ConfigChan
	.type	DNR_ConfigChan, %function
DNR_ConfigChan:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L171	@,
	movw	ip, #9587	@ tmp142,
	movw	r3, #:lower16:.LANCHOR0	@ tmp243,
	mul	r2, ip, r0	@ tmp141, tmp142, ChanID
	movt	r3, #:upper16:.LANCHOR0	@ tmp243,
	add	ip, r3, r2, asl #3	@, tmp146, tmp243, tmp141,
	ldr	r2, [ip, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L172	@,
	cmp	r1, #0	@ pArgs,
	beq	.L173	@,
	movw	r4, #:lower16:76696	@ tmp156,
	movt	r4, #:upper16:76696	@ tmp156,
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	mla	ip, r4, r0, r3	@ tmp157, tmp156, ChanID, tmp243
	add	r2, ip, #75776	@ tmp166, tmp157,
	add	r4, ip, #8	@ tmp158, tmp157,
	add	r2, r2, #904	@ tmp166, tmp166,
	strb	r5, [r4, #2]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	r2, [r2, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	addeq	ip, ip, #75776	@ tmp173, tmp157,
	ldreqsb	r2, [r1, #0]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	addeq	ip, ip, #912	@ tmp173, tmp173,
	ldrneb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	streq	r2, [ip, #8]	@ <variable>.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	strneb	r2, [r4, #1]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldrsb	r2, [r1, #1]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r2, #1	@ <variable>.s32VcmpEn,
	beq	.L174	@,
.L168:
	mov	r0, #0	@ D.34673,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L174:
	movw	r2, #:lower16:76696	@ tmp187,
	movt	r2, #:upper16:76696	@ tmp187,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	mla	r4, r2, r0, r3	@ tmp188, tmp187, ChanID, tmp243
	strb	ip, [r4, #11]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldrsb	r3, [r1, #2]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r3, #1	@ <variable>.s32WmEn,
	beq	.L175	@,
	add	r0, r4, #75776	@ tmp233, tmp188,
	movw	r2, #:lower16:76624	@ tmp229,
	add	r3, r0, #848	@ tmp233, tmp233,
	movt	r2, #:upper16:76624	@ tmp229,
	movw	ip, #65535	@ tmp234,
	mov	r0, #0	@ D.34673,
	str	ip, [r4, r2]	@ tmp234, <variable>.s32VcmpWmStartLine
	str	ip, [r3, #4]	@ tmp234, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L175:
	ldr	r3, [r1, #4]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	movw	r6, #:lower16:76624	@ tmp194,
	movt	r6, #:upper16:76624	@ tmp194,
	add	r5, r4, #75776	@ tmp198, tmp188,
	add	r5, r5, #848	@ tmp198, tmp198,
	str	r3, [r4, r6]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	r0, [r1, #8]	@ D.34693, <variable>.s32VcmpWmEndLine
	cmp	r0, r3	@ D.34693, <variable>.s32VcmpWmStartLine
	str	r0, [r5, #4]	@ D.34693, <variable>.s32VcmpWmEndLine
	bge	.L168	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #65535	@ tmp220,
	mov	r0, #0	@ D.34673,
	str	r1, [r4, r6]	@ tmp220, <variable>.s32VcmpWmStartLine
	str	r1, [r5, #4]	@ tmp220, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L172:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #365	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34673,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L171:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #364	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34673,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L173:
	mov	r0, r1	@, pArgs
	movw	r2, #366	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34673,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_ConfigChan, .-DNR_ConfigChan
	.align	2
	.global	DNRDRV_ExitSleep
	.type	DNRDRV_ExitSleep, %function
DNRDRV_ExitSleep:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp134,
	ldr	r0, [r3, #0]	@ D.34485, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.34485,
	beq	.L177	@,
	blx	r0	@ D.34485
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #0]	@ tmp137, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L177:
	mov	r2, #142	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #0]	@ tmp137, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNRDRV_ExitSleep, .-DNRDRV_ExitSleep
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #3	@ ChanID,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ VoUsingFrameArray, VoUsingFrameArray
	str	r2, [sp, #20]	@ s32Num, %sfp
	bhi	.L221	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	beq	.L222	@,
	add	r0, sp, #24	@,,
	mov	r1, #8	@,
	bl	__memzero	@
	movw	r5, #:lower16:76696	@ tmp171,
	movw	r1, #:lower16:.LANCHOR0	@ tmp254,
	movt	r5, #:upper16:76696	@ tmp171,
	movt	r1, #:upper16:.LANCHOR0	@ tmp254,
	movw	r2, #26408	@ tmp169,
	mla	r0, r5, r4, r1	@ tmp172, tmp171, ChanID, tmp254
	add	r7, r0, #26368	@ tmp173, tmp172,
	add	r7, r7, #40	@ tmp173, tmp173,
	ldr	r3, [r0, r2]	@ i, <variable>.LogicImageQue.history
	ldr	r2, [r7, #4]	@ i.1351, <variable>.LogicImageQue.head
	and	r3, r3, #63	@ i.1354, i,
	cmp	r2, r3	@ i.1351, i.1354
	moveq	ip, #0	@ s32UsingCount,
	beq	.L185	@,
	movw	r8, #19174	@ tmp261,
	mov	ip, #0	@ s32UsingCount,
	mul	r5, r8, r4	@ tmp262, tmp261, ChanID
.L189:
	add	r2, r5, r3	@ tmp183, tmp262, i.1354
	add	r8, r6, ip, asl #3	@, D.36446, VoUsingFrameArray, s32UsingCount,
	add	r0, r1, r2, asl #2	@, tmp188, tmp254, tmp183,
	ldr	r2, [r0, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	subs	lr, r2, #0	@ tmp196, pImage,
	movne	lr, #1	@ tmp196
	cmp	ip, #63	@ s32UsingCount,
	movgt	lr, #0	@, tmp196,
	cmp	lr, #0	@ tmp196,
	beq	.L186	@,
	ldr	r0, [r2, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r0, [r6, ip, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	lr, [r2, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	lr, [r8, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L187:
	add	r3, r3, #1	@ i.1331, i.1354,
	ldr	r2, [r7, #4]	@ i.1351, <variable>.LogicImageQue.head
	and	r3, r3, #63	@ i.1354, i.1331,
	cmp	r2, r3	@ i.1351, i.1354
	bne	.L189	@,
.L185:
	movw	r5, #:lower16:76696	@ tmp209,
	movt	r5, #:upper16:76696	@ tmp209,
	movw	lr, #26416	@ tmp207,
	and	r3, r2, #63	@ i.1352, i.1351,
	mla	r5, r5, r4, r1	@ tmp210, tmp209, ChanID, tmp254
	ldr	r2, [r5, lr]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	cmp	r2, r3	@ <variable>.LogicImageQue.tail, i.1352
	beq	.L196	@,
	movw	r0, #19174	@ tmp255,
	add	r7, r5, #26368	@ tmp260, tmp210,
	mul	r4, r0, r4	@ tmp256, tmp255, ChanID
	add	r5, r7, #48	@ tmp260, tmp260,
.L214:
	add	r0, r4, r3	@ tmp216, tmp256, i.1352
	add	r7, r6, ip, asl #3	@, temp.1338, VoUsingFrameArray, s32UsingCount,
	add	r2, r1, r0, asl #2	@, tmp221, tmp254, tmp216,
	ldr	r2, [r2, #1056]	@ pImage.1332, <variable>.LogicImageQue.image_ptr
	subs	lr, r2, #0	@ tmp229, pImage.1332,
	movne	lr, #1	@ tmp229
	cmp	ip, #63	@ s32UsingCount,
	movgt	lr, #0	@, tmp229,
	cmp	lr, #0	@ tmp229,
	beq	.L194	@,
	ldr	r0, [r2, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r0, [r6, ip, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	lr, [r2, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	lr, [r7, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L195:
	add	r3, r3, #1	@ i.1342, i.1352,
	ldr	r2, [r5, #0]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	and	r3, r3, #63	@ i.1352, i.1342,
	cmp	r2, r3	@ <variable>.LogicImageQue.tail, i.1352
	bne	.L214	@,
.L196:
	cmp	ip, #0	@ s32UsingCount,
	beq	.L191	@,
	ldr	r1, [r6, #0]	@, <variable>.FrameAddr
	cmp	r1, #-2147483648	@,
	str	r1, [sp, #16]	@, %sfp
	moveq	r4, #0	@ i.1346,
	beq	.L193	@,
	add	sl, r6, #16	@ ivtmp.1329, VoUsingFrameArray,
	mov	fp, r6	@ VoUsingFrameArray.1344, VoUsingFrameArray
	mov	r5, #0	@ i.1343,
.L204:
	add	r4, r5, #1	@ j, i.1343,
	cmp	r4, ip	@ j, s32UsingCount
	bge	.L191	@,
	ldr	r8, [sl, #-8]	@ D.36463, <variable>.FrameAddr
	cmp	r8, #-2147483648	@ D.36463,
	mov	r0, r8	@ D.36470, D.36463
	beq	.L197	@,
	mvn	r7, r4	@ tmp268, j
	add	r1, r7, ip	@ tmp267, tmp268, s32UsingCount
	tst	r1, #1	@ tmp267,
	mov	r7, r5	@ MinIndex, i.1343
	mov	r1, sl	@ ivtmp.1320, ivtmp.1329
	mov	r3, r4	@ j.1345, j
	beq	.L199	@,
	ldr	r7, [r6, r5, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r1, sl	@ ivtmp.1320, ivtmp.1329
	ldr	r0, [r1], #8	@ D.36470, <variable>.FrameAddr
	add	r3, r4, #1	@ j.1345, j,
	cmp	r7, r8	@ <variable>.FrameAddr, D.36463
	movle	r7, r5	@ MinIndex, i.1343
	movgt	r7, r4	@ MinIndex, j
	cmp	r0, #-2147483648	@ D.36470,
	bne	.L199	@,
	b	.L217	@
.L201:
	ldr	r9, [r2], #8	@ D.36470, <variable>.FrameAddr
	cmp	r9, #-2147483648	@ D.36470,
	beq	.L217	@,
	ldr	lr, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r0, [r1, #8]	@ D.36470, <variable>.FrameAddr
	add	r1, r2, #8	@ ivtmp.1320, tmp270,
	cmp	lr, r9	@ <variable>.FrameAddr, D.36470
	movgt	r7, r3	@ MinIndex, j.1345
	cmp	r0, #-2147483648	@ D.36470,
	add	r3, r3, #1	@ j.1345, j.1345,
	beq	.L217	@,
.L199:
	ldr	r9, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r1	@ tmp270, ivtmp.1320
	cmp	r9, r0	@ <variable>.FrameAddr, D.36470
	movgt	r7, r3	@ MinIndex, j.1345
	add	r3, r3, #1	@ j.1345, j.1345,
	cmp	r3, ip	@ j.1345, s32UsingCount
	blt	.L201	@,
	cmp	r7, r5	@ MinIndex, i.1343
	beq	.L202	@,
	ldr	r3, [sp, #16]	@, %sfp
	add	r5, r6, r7, asl #3	@, temp.1349, VoUsingFrameArray, MinIndex,
	ldr	r2, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r0, [fp, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r3, [sp, #24]	@, TempVoUsingFrameInfo.FrameAddr
	ldr	lr, [r5, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r2, [fp, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r8, [sp, #24]	@ TempVoUsingFrameInfo.FrameAddr, TempVoUsingFrameInfo.FrameAddr
	str	r0, [sp, #28]	@ <variable>.FrameSize, TempVoUsingFrameInfo.FrameSize
	str	lr, [fp, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r8, [r6, r7, asl #3]	@ TempVoUsingFrameInfo.FrameAddr, <variable>.FrameAddr
	ldr	fp, [sp, #28]	@ TempVoUsingFrameInfo.FrameSize, TempVoUsingFrameInfo.FrameSize
	ldr	r8, [sl, #-8]	@ D.36463, <variable>.FrameAddr
	str	fp, [r5, #4]	@ TempVoUsingFrameInfo.FrameSize, <variable>.FrameSize
.L202:
	cmp	r8, #-2147483648	@ D.36463,
	sub	fp, sl, #8	@ VoUsingFrameArray.1344, ivtmp.1329,
	str	r8, [sp, #16]	@ D.36463, %sfp
	add	sl, sl, #8	@ ivtmp.1329, ivtmp.1329,
	mov	r5, r4	@ i.1343, j
	bne	.L204	@,
.L193:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC17	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	mov	r3, #2464	@,
	str	ip, [sp, #0]	@ s32UsingCount,
	str	r4, [sp, #4]	@ i.1346,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36427,
	b	.L182	@
.L217:
	mov	r4, r3	@ j, j.1345
.L197:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC18	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	r3, #2472	@,
	str	ip, [sp, #0]	@ s32UsingCount,
	str	r5, [sp, #4]	@ i.1343,
	str	r4, [sp, #8]	@ j,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36427,
.L182:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L186:
	cmp	ip, #63	@ s32UsingCount,
	ble	.L187	@,
	mvn	r0, #0	@ D.36427,
	b	.L182	@
.L194:
	cmp	ip, #63	@ s32UsingCount,
	ble	.L195	@,
	mvn	r0, #0	@ D.36427,
	b	.L182	@
.L191:
	ldr	r1, [sp, #20]	@, %sfp
	mov	r0, #0	@ D.36427,
	str	ip, [r1, #0]	@ s32UsingCount,
	b	.L182	@
.L221:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2405	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36427,
	b	.L182	@
.L222:
	mov	r0, r1	@, VoUsingFrameArray
	movw	r2, #2406	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36427,
	b	.L182	@
	.fnend
	.size	DNR_GetVoUsingFrameInQue, .-DNR_GetVoUsingFrameInQue
	.align	2
	.global	DNR_Fsp_Reset
	.type	DNR_Fsp_Reset, %function
DNR_Fsp_Reset:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L225	@ tmp136,
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
.L226:
	.align	2
.L225:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Fsp_Reset, .-DNR_Fsp_Reset
	.align	2
	.global	DNR_Fsp_Init
	.type	DNR_Fsp_Init, %function
DNR_Fsp_Init:
	.fnstart
.LFB1640:
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
	.global	DNR_SetDetPara
	.type	DNR_SetDetPara, %function
DNR_SetDetPara:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ NextInstId, NextInstId
	mov	r1, #44	@,
	mov	r5, r0	@ pDetPara, pDetPara
	mov	r6, r2	@ SourceImgStoreType, SourceImgStoreType
	bl	__memzero	@
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movw	r0, #:lower16:76696	@ tmp169,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	movt	r0, #:upper16:76696	@ tmp169,
	rsbs	r6, r6, #1	@ tmp168, SourceImgStoreType
	movcc	r6, #0	@ tmp168
	mla	r4, r0, r4, ip	@ tmp142, tmp169, NextInstId, tmp138
	ldr	r1, [r4, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	str	r1, [r5, #8]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.pPicBufY
	ldr	r3, [r4, #192]	@ D.35132, <variable>.Cur1DImage.image_width
	add	r2, r3, #15	@ tmp164, D.35132,
	str	r3, [r5, #20]	@ D.35132, <variable>.PicWidth
	ldr	ip, [r4, #196]	@ D.35134, <variable>.Cur1DImage.image_height
	mov	r1, r2, asr #4	@ tmp165, tmp164,
	add	r0, ip, #15	@ tmp166, D.35134,
	str	ip, [r5, #24]	@ D.35134, <variable>.PicHeight
	ldr	r2, [r4, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r3, r0, asr #4	@ tmp167, tmp166,
	str	r6, [r5, #40]	@ tmp168, <variable>.IsFrameStored
	str	r1, [r5, #32]	@ tmp165, <variable>.MbWidth
	str	r2, [r5, #28]	@ <variable>.Cur1DImage.image_stride, <variable>.PicStride
	str	r3, [r5, #36]	@ tmp167, <variable>.MbHeight
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DNR_SetDetPara, .-DNR_SetDetPara
	.align	2
	.global	DNR_EnableChanWithoutArrange
	.type	DNR_EnableChanWithoutArrange, %function
DNR_EnableChanWithoutArrange:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #16
	sub	sp, sp, #16	@,,
	mvngt	r0, #0	@ D.36620,
	bgt	.L233	@,
	movw	r1, #:lower16:76696	@ tmp139,
	movt	r1, #:upper16:76696	@ tmp139,
	movw	r5, #:lower16:.LANCHOR0	@ tmp136,
	movt	r5, #:upper16:.LANCHOR0	@ tmp136,
	mul	r7, r1, r4	@ tmp138, tmp139, ChanID
	add	r6, r5, #8	@ tmp137, tmp136,
	mov	r8, sp	@ tmp142,
	add	r0, r6, r7	@, tmp137, tmp138
	bl	__memzero	@
	mov	r3, r4	@, ChanID
	mov	r1, #16	@,
	mov	r0, sp	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r2, #:upper16:.LC19	@,
	bl	snprintf	@
	add	r1, r7, #968	@ tmp148, tmp138,
	add	r0, r6, r1	@, tmp137, tmp148
	movw	r2, #:lower16:DNR_DelImageProc	@,
	mov	r1, sp	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp154,
	mul	r4, r0, r4	@ tmp153, tmp154, ChanID
	mov	r0, #0	@ D.36620,
	mov	r3, #1	@ tmp160,
	add	r5, r5, r4, asl #3	@, tmp158, tmp136, tmp153,
	str	r3, [r5, #16]	@ tmp160, <variable>.s32IsOpen
.L233:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	DNR_EnableChanWithoutArrange, .-DNR_EnableChanWithoutArrange
	.align	2
	.global	DNR_ArrangeMem
	.type	DNR_ArrangeMem, %function
DNR_ArrangeMem:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #444
	sub	sp, sp, #444	@,,
	ble	.L255	@,
.L236:
	mvn	r0, #0	@ D.36573,
.L241:
	add	sp, sp, #444	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L255:
	cmp	r1, #0	@ pChanMem,
	beq	.L236	@,
	ldr	r0, [r1, #0]	@ D.36578, <variable>.PhyAddr
	cmp	r0, #0	@ D.36578,
	beq	.L236	@,
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L236	@,
	ldr	r1, [r1, #8]	@ D.36582, <variable>.Length
	cmp	r1, #0	@ D.36582,
	ble	.L236	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	ip, [ip, #36]	@ D.36586, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36586,
	beq	.L237	@,
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
	blx	ip	@ D.36586
	cmp	r0, #0	@ D.36588
	bne	.L237	@,
	movw	r7, #:lower16:76696	@ tmp170,
	movt	r7, #:upper16:76696	@ tmp170,
	movw	r3, #:lower16:.LANCHOR0	@ tmp205,
	movt	r3, #:upper16:.LANCHOR0	@ tmp205,
	mul	lr, r7, r4	@ tmp169, tmp170, ChanID
	ldr	r6, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mov	sl, r5	@ ivtmp.1495, tmp165
	mov	r7, r0	@ i, D.36588
	cmp	r6, #64	@ MemArrange.ValidFrameNum,
	movge	r6, #64	@ tmp180,
	add	r4, r3, #8	@ tmp168, tmp205,
	add	ip, lr, r3	@ tmp177, tmp169, tmp205
	add	r5, lr, #26368	@ tmp171, tmp169,
	add	r0, ip, #456	@ tmp178, tmp177,
	add	r8, r5, #64	@ tmp171, tmp171,
	str	r6, [ip, #456]	@ tmp180, <variable>.s32ValidImgNum
	add	r5, r4, lr	@ ivtmp.1499, tmp168, tmp169
	ldr	r1, [sp, #32]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, r8	@ pLogicImage, tmp168, tmp171
	ldr	r2, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r8, r0	@ tmp209, tmp178
	rsb	r3, r1, r2	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r0, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
.L240:
	ldr	r2, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r6, r5, #4	@ tmp212, ivtmp.1499,
	cmp	r7, r2	@ i, <variable>.s32ValidImgNum
	add	r7, r7, #1	@ tmp210, i,
	ldrlt	r2, [sl, #8]	@ D.36600, MemArrange.FrameAddr
	add	sl, sl, #4	@ tmp211, ivtmp.1495,
	ldrge	r2, [sp, #32]	@ temp.1507, MemArrange.FrameAddr
	str	r2, [r5, #456]	@ temp.1507, <variable>.s32ImageAddr
	mov	r0, r2	@, temp.1507
	str	r2, [r4, #120]	@ temp.1507, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r7, #64	@ tmp210,
	str	r1, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	beq	.L237	@,
	ldr	r3, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r4, r4, #392	@ tmp213, pLogicImage,
	cmp	r7, r3	@ tmp210, <variable>.s32ValidImgNum
	ldrge	r3, [sp, #32]	@ temp.1507, MemArrange.FrameAddr
	ldrlt	r3, [sl, #8]	@ D.36600, MemArrange.FrameAddr
.L253:
	str	r3, [r6, #456]	@ D.36600, <variable>.s32ImageAddr
	mov	r0, r3	@, D.36600
	str	r3, [r4, #120]	@ D.36600, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r5, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	add	r3, sl, #4	@ ivtmp.1495, tmp211,
	add	r2, r6, #4	@ ivtmp.1499, tmp212,
	add	sl, sl, #8	@ ivtmp.1495, tmp211,
	str	r5, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	add	r5, r4, #392	@ pLogicImage, tmp213,
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	add	r0, r7, #1	@ i, tmp210,
	ldr	r1, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #2	@ i, tmp210,
	add	r4, r4, #784	@ pLogicImage, tmp213,
	cmp	r0, r1	@ i, <variable>.s32ValidImgNum
	ldrge	r3, [sp, #32]	@ temp.1507, MemArrange.FrameAddr
	ldrlt	r3, [r3, #8]	@ D.36600, MemArrange.FrameAddr
	str	r3, [r2, #456]	@ D.36600, <variable>.s32ImageAddr
	mov	r0, r3	@, D.36600
	str	r3, [r5, #120]	@ D.36600, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r5, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	ip, [r5, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r5, #48]	@, <variable>.luma_2d_vir_addr
	add	r5, r6, #8	@ ivtmp.1499, tmp212,
	b	.L240	@
.L237:
	mov	r0, #0	@ D.36573,
	b	.L241	@
	.fnend
	.size	DNR_ArrangeMem, .-DNR_ArrangeMem
	.align	2
	.global	CalcFrameCheckSum
	.type	CalcFrameCheckSum, %function
CalcFrameCheckSum:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ p_image, p_image
	ldr	r4, [r0, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r0, [r0, #88]	@, <variable>.top_luma_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r4, r4, lsr #3	@ ivtmp.1550, <variable>.image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L257	@,
	ldr	r7, [r5, #148]	@ temp.1554, <variable>.image_height
	cmp	r7, #0	@ temp.1554,
	beq	.L257	@,
	ldr	r8, [r5, #172]	@ pretmp.1529, <variable>.image_stride
	mov	r6, r4	@ D.37713, ivtmp.1550
	ldr	r5, [r5, #144]	@ pretmp.1553, <variable>.image_width
	mov	r0, #0	@ CheckSum,
	bic	r8, r8, #3	@ pretmp.1555, pretmp.1529,
.L260:
	cmp	r5, #0	@ pretmp.1553,
	add	r1, r1, r8	@ p32, p32, pretmp.1555
	beq	.L258	@,
	mov	r3, #1	@ x,
	ldr	r2, [r1, #0]	@ tmp150,* p32
	cmp	r5, r3	@ pretmp.1553, x
	sub	ip, r5, #1	@ tmp154, pretmp.1553,
	and	ip, ip, r3	@ tmp156, tmp154,
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L258	@,
	cmp	ip, #0	@ tmp156,
	beq	.L259	@,
	mov	r3, #2	@ x,
	cmp	r5, r3	@ pretmp.1553, x
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L258	@,
.L259:
	add	lr, r3, #1	@ tmp157, x,
	mov	ip, r3, asr #2	@ tmp159, x,
	add	r3, lr, #1	@ x, tmp157,
	mov	r2, lr, asr #2	@ tmp163, tmp157,
	ldr	lr, [r1, ip, asl #2]	@ tmp160,* p32
	cmp	r5, r3	@ pretmp.1553, x
	ldr	r2, [r1, r2, asl #2]	@ tmp164,* p32
	add	r0, r0, lr	@ CheckSum, CheckSum, tmp160
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp164
	bhi	.L259	@,
.L258:
	add	r4, r4, r6	@ ivtmp.1550, ivtmp.1550, D.37713
	rsb	r3, r6, r4	@ tmp151, D.37713, ivtmp.1550
	cmp	r7, r3	@ temp.1554, tmp151
	bhi	.L260	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L257:
	mov	r0, #0	@ CheckSum,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	CalcFrameCheckSum, .-CalcFrameCheckSum
	.align	2
	.global	DNR_EnableChan
	.type	DNR_EnableChan, %function
DNR_EnableChan:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r5, r1	@ pChanMem, pChanMem
	ble	.L279	@,
.L271:
	mvn	r0, #0	@ D.34615,
.L277:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L279:
	movw	r1, #:lower16:76696	@ tmp154,
	movt	r1, #:upper16:76696	@ tmp154,
	movw	r6, #:lower16:.LANCHOR0	@ tmp229,
	movt	r6, #:upper16:.LANCHOR0	@ tmp229,
	mul	r7, r1, r0	@ tmp153, tmp154, ChanID
	add	r8, r6, #8	@ tmp228, tmp229,
	str	r2, [sp, #28]	@,
	str	r3, [sp, #24]	@,
	add	sl, r8, r7	@ tmp155, tmp228, tmp153
	mov	r0, sl	@, tmp155
	bl	__memzero	@
	cmp	r5, #0	@ pChanMem,
	ldr	r2, [sp, #28]	@,
	ldr	r3, [sp, #24]	@,
	beq	.L271	@,
	ldr	r0, [r5, #0]	@ D.34627, <variable>.PhyAddr
	cmp	r0, #0	@ D.34627,
	beq	.L271	@,
	ldr	r1, [r5, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L271	@,
	ldr	r1, [r5, #8]	@ D.34631, <variable>.Length
	cmp	r1, #0	@ D.34631,
	ble	.L271	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp158,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp158,
	ldr	r9, [ip, #36]	@ D.34635, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r9, #0	@ D.34635,
	beq	.L272	@,
	mov	r5, #0	@ tmp159,
	mvn	lr, #0	@ tmp162,
	add	ip, r5, #64	@ tmp160, tmp160,
	str	r5, [sp, #8]	@ tmp159,
	str	r5, [sp, #0]	@ tmp159,
	add	r5, sp, #32	@ tmp163,,
	str	ip, [sp, #20]	@ tmp160,
	str	lr, [sp, #12]	@ tmp162,
	str	ip, [sp, #4]	@ tmp160,
	str	r5, [sp, #16]	@ tmp163,
	blx	r9	@ D.34635
	cmp	r0, #0	@ D.34637
	bne	.L272	@,
	add	lr, r7, r6	@ tmp175, tmp153, tmp229
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r9, r7, #26368	@ tmp169, tmp153,
	add	r2, lr, #456	@ tmp176, tmp175,
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp178,
	str	ip, [lr, #456]	@ tmp178, <variable>.s32ValidImgNum
	add	r7, r9, #64	@ tmp169, tmp169,
	ldr	r1, [sp, #44]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r9, r0	@ i, D.34637
	ldr	r0, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r7, r8, r7	@ pLogicImage, tmp228, tmp169
	mov	fp, r2	@ tmp234, tmp176
	rsb	r3, r0, r1	@ tmp187, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r2, #4]	@ tmp187, <variable>.s32ImgBlockMemSize
	b	.L276	@
.L281:
	ldr	ip, [r5, #8]	@ D.34649, MemArrange.FrameAddr
	str	ip, [sl, #456]	@ D.34649, <variable>.s32ImageAddr
	mov	r0, ip	@, D.34649
	str	ip, [r7, #120]	@ D.34649, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [fp, #4]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r3, [r7, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
.L274:
	add	r9, r9, #1	@ i, i,
	add	r7, r7, #392	@ pLogicImage, pLogicImage,
	cmp	r9, #64	@ i,
	add	r5, r5, #4	@ ivtmp.1604, ivtmp.1604,
	add	sl, sl, #4	@ ivtmp.1608, ivtmp.1608,
	beq	.L280	@,
.L276:
	ldr	r2, [fp, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r2, r9	@ <variable>.s32ValidImgNum, i
	bgt	.L281	@,
	ldr	lr, [sp, #40]	@ temp.1619, MemArrange.FrameAddr
	str	lr, [sl, #456]	@ temp.1619, <variable>.s32ImageAddr
	mov	r0, lr	@, temp.1619
	str	lr, [r7, #120]	@ temp.1619, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	b	.L274	@
.L272:
	mov	r0, #0	@ D.34615,
	b	.L277	@
.L280:
	add	r5, sp, #448	@ tmp208,,
	mov	r3, r4	@, ChanID
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC19	@,
	mov	r0, r5	@, tmp208
	movt	r2, #:upper16:.LC19	@,
	bl	snprintf	@
	movw	r3, #:lower16:76696	@ tmp213,
	movt	r3, #:upper16:76696	@ tmp213,
	mov	r1, r5	@, tmp208
	movw	r2, #:lower16:DNR_DelImageProc	@,
	movt	r2, #:upper16:DNR_DelImageProc	@,
	mla	ip, r3, r4, r8	@ tmp215, tmp213, ChanID, tmp228
	add	r0, ip, #968	@, tmp215,
	bl	IMGQUE_InitQueue	@
	movw	r0, #9587	@ tmp220,
	mul	r4, r0, r4	@ tmp219, tmp220, ChanID
	mov	r3, #1	@ tmp226,
	mov	r0, #0	@ D.34615,
	add	r6, r6, r4, asl #3	@, tmp224, tmp229, tmp219,
	str	r3, [r6, #16]	@ tmp226, <variable>.s32IsOpen
	b	.L277	@
	.fnend
	.size	DNR_EnableChan, .-DNR_EnableChan
	.align	2
	.global	DNR_ProcessWaitTime
	.type	DNR_ProcessWaitTime, %function
DNR_ProcessWaitTime:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:g_DnrSleepTime	@ tmp137,
	movt	r4, #:upper16:g_DnrSleepTime	@ tmp137,
	ldr	r3, [r4, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	movwle	r5, #:lower16:.LANCHOR1	@ tmp146,
	movtle	r5, #:upper16:.LANCHOR1	@ tmp146,
	ble	.L283	@,
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR1	@ tmp146,
	movt	r5, #:upper16:.LANCHOR1	@ tmp146,
	ldr	r3, [r4, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r1, [r5, #3996]	@ timePrevDo, timePrevDo
	rsb	r2, r1, r0	@ tmp140, timePrevDo,
	cmp	r2, r3	@ tmp140, g_DnrSleepTime
	movcc	r3, #1	@ D.35050,
	bcc	.L284	@,
.L283:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.35050,
	str	r0, [r5, #3996]	@, timePrevDo
.L284:
	mov	r0, r3	@, D.35050
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DNR_ProcessWaitTime, .-DNR_ProcessWaitTime
	.align	2
	.global	DNR_ReleaseUsrData
	.type	DNR_ReleaseUsrData, %function
DNR_ReleaseUsrData:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r1	@ pImage, pImage
	ldr	r1, [r1, #192]	@ temp.1673, <variable>.p_usrdat
	mov	r5, r0	@ ChanID, ChanID
	cmp	r1, #0	@ temp.1673,
	beq	.L289	@,
	movw	r2, #:lower16:pstVdecUsdPool	@ tmp143,
	movt	r2, #:upper16:pstVdecUsdPool	@ tmp143,
	ldr	r3, [r2, r0, asl #2]	@ tmp144, pstVdecUsdPool
	cmp	r3, #0	@ tmp144,
	beq	.L289	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp145,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp145,
	ldr	r2, [ip, r0, asl #2]	@ temp.1675, s_pstVfmwChan
	cmp	r2, #0	@ temp.1675,
	beq	.L289	@,
	movw	r3, #:lower16:211828	@ tmp146,
	movt	r3, #:upper16:211828	@ tmp146,
	ldr	ip, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L294	@,
.L289:
	ldr	r1, [r4, #196]	@ temp.1678, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1678,
	beq	.L290	@,
	movw	ip, #:lower16:pstVdecUsdPool	@ tmp150,
	movt	ip, #:upper16:pstVdecUsdPool	@ tmp150,
	ldr	r2, [ip, r5, asl #2]	@ tmp151, pstVdecUsdPool
	cmp	r2, #0	@ tmp151,
	beq	.L290	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	ldr	r2, [r3, r5, asl #2]	@ temp.1680, s_pstVfmwChan
	cmp	r2, #0	@ temp.1680,
	beq	.L290	@,
	movw	r3, #:lower16:211828	@ tmp153,
	movt	r3, #:upper16:211828	@ tmp153,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	ip, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, ip	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L295	@,
.L290:
	ldr	r1, [r4, #200]	@ temp.1683, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1683,
	beq	.L291	@,
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp157,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp157,
	ldr	r2, [r0, r5, asl #2]	@ tmp158, pstVdecUsdPool
	cmp	r2, #0	@ tmp158,
	beq	.L291	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp159,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp159,
	ldr	r2, [ip, r5, asl #2]	@ temp.1685, s_pstVfmwChan
	cmp	r2, #0	@ temp.1685,
	beq	.L291	@,
	movw	ip, #:lower16:211828	@ tmp160,
	movt	ip, #:upper16:211828	@ tmp160,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, ip]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L296	@,
.L291:
	ldr	r1, [r4, #204]	@ D.36294, <variable>.p_usrdat
	cmp	r1, #0	@ D.36294,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp164,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp164,
	ldr	r2, [r0, r5, asl #2]	@ tmp165, pstVdecUsdPool
	cmp	r2, #0	@ tmp165,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp166,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp166,
	ldr	r2, [r3, r5, asl #2]	@ D.36301, s_pstVfmwChan
	cmp	r2, #0	@ D.36301,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r3, #:lower16:211828	@ tmp167,
	movt	r3, #:upper16:211828	@ tmp167,
	ldr	ip, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r0, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, r0	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp170,
	str	r1, [r4, #204]	@ tmp170, <variable>.p_usrdat
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L294:
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #192]	@ tmp149, <variable>.p_usrdat
	b	.L289	@
.L295:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #196]	@ tmp156, <variable>.p_usrdat
	b	.L290	@
.L296:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp163,
	str	r1, [r4, #200]	@ tmp163, <variable>.p_usrdat
	b	.L291	@
	.fnend
	.size	DNR_ReleaseUsrData, .-DNR_ReleaseUsrData
	.align	2
	.global	DNR_ReleaseImage
	.type	DNR_ReleaseImage, %function
DNR_ReleaseImage:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	cmp	r0, #3	@ ChanID,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ p_image, p_image
	mov	r0, #0	@ tmp149,
	str	r0, [sp, #12]	@ tmp149, TopPhyAddr
	str	r0, [sp, #8]	@ tmp149, BtmPhyAddr
	bhi	.L317	@,
	cmp	r1, #0	@ p_image,
	beq	.L318	@,
	ldr	r3, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	cmp	r3, #0	@ <variable>.top_luma_phy_addr,
	beq	.L301	@,
	movw	r2, #9587	@ tmp158,
	movw	r6, #:lower16:.LANCHOR0	@ tmp289,
	mul	r0, r2, r4	@ tmp157, tmp158, ChanID
	movt	r6, #:upper16:.LANCHOR0	@ tmp289,
	add	r1, r6, r0, asl #3	@, tmp162, tmp289, tmp157,
	ldr	r0, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #0	@ <variable>.s32IsOpen,
	beq	.L319	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r3, #0	@, tmp174
	moveq	r3, #1	@, tmp174
	beq	.L303	@,
.L324:
	cmp	r0, #18	@ eVidStd,
	beq	.L303	@,
	ldr	r1, [r5, #176]	@ prephitmp.1709, <variable>.image_id
	movw	ip, #:lower16:1374389535	@ tmp176,
	movt	ip, #:upper16:1374389535	@ tmp176,
	mov	r7, #100	@ tmp178,
	umull	r2, sl, ip, r1	@, tmp175, tmp176, prephitmp.1709
	mov	r8, sl, lsr #5	@ D.36347, tmp175,
	mls	r8, r7, r8, r1	@ D.36347, tmp178, D.36347, prephitmp.1709
	cmp	r8, #63	@ D.36347,
	bgt	.L320	@,
.L305:
	ldr	sl, .L325	@ tmp288,
	movw	r0, #:lower16:76696	@ tmp183,
	movt	r0, #:upper16:76696	@ tmp183,
	add	r2, sp, #12	@,,
	add	r3, sp, #8	@,,
	mla	lr, r0, r4, sl	@ tmp185, tmp183, ChanID, tmp288
	add	r0, lr, #968	@, tmp185,
	bl	IMGQUE_DeleteImage	@
	mov	r7, r0	@ ret.1723,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L321	@,
.L306:
	movw	ip, #:lower16:76696	@ tmp205,
	movt	ip, #:upper16:76696	@ tmp205,
	cmp	r7, #1	@ ret.1723,
	mla	r2, ip, r4, r6	@ tmp206, tmp205, ChanID, tmp289
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	add	r0, r2, #75776	@ tmp207, tmp206,
	add	r3, r0, #904	@ tmp207, tmp207,
	ldr	lr, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L322	@,
.L309:
	movw	r2, #:lower16:76696	@ tmp230,
	movt	r2, #:upper16:76696	@ tmp230,
	mov	r1, #392	@ tmp228,
	movw	r3, #26560	@ tmp226,
	mul	r0, r2, r4	@ tmp229, tmp230, ChanID
	ldr	ip, [r5, #88]	@ temp.1724, <variable>.top_luma_phy_addr
	mla	r1, r1, r8, r0	@ tmp231, tmp228, D.36347, tmp229
	movw	r2, #:lower16:.LANCHOR0	@ tmp225,
	movt	r2, #:upper16:.LANCHOR0	@ tmp225,
	add	lr, r1, r6	@ tmp232, tmp231, tmp289
	ldr	r3, [lr, r3]	@ D.36374, <variable>.luma_2d_phy_addr
	cmp	r3, ip	@ D.36374, temp.1724
	beq	.L323	@,
	mov	r2, r8	@, D.36347
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	ip, [sp, #0]	@ temp.1724,
	bl	dprint_vfmw	@
	rsbs	r2, r7, #1	@ prephitmp.1711, ret
	movcc	r2, #0	@ prephitmp.1711
.L312:
	movw	r3, #:lower16:76696	@ tmp273,
	movt	r3, #:upper16:76696	@ tmp273,
	mla	lr, r3, r4, r6	@ tmp274, tmp273, ChanID, tmp289
	add	r6, lr, #75776	@ tmp275, tmp274,
	add	r6, r6, #904	@ tmp275, tmp275,
	ldr	ip, [r6, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	r0, #0	@, tmp281
	andeq	r0, r2, #1	@,, tmp281, prephitmp.1711
	cmp	r0, #0	@ tmp281,
	beq	.L299	@,
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, p_image
	bl	VCTRL_RlsDSDFrame	@
	mov	r7, r0	@ ret,
	b	.L299	@
.L303:
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, p_image
	bl	VCTRL_ReleaseChanImage	@
	subs	r7, r0, #0	@ D.36343,
	bne	.L301	@,
.L299:
	mov	r0, r7	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L301:
	mvn	r7, #0	@ ret,
	b	.L299	@
.L319:
	movw	r3, #2313	@,
	ldr	r2, .L325+4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r4, [sp, #0]	@ ChanID,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r3, #0	@, tmp174
	moveq	r3, #1	@, tmp174
	bne	.L324	@,
	b	.L303	@
.L323:
	movw	r0, #19174	@ tmp236,
	add	r1, r1, #26368	@ tmp251, tmp231,
	mla	r8, r0, r4, r8	@ tmp237, tmp236, ChanID, D.36347
	add	lr, r1, #64	@ tmp251, tmp251,
	mov	r3, #0	@ tmp243,
	add	r1, sl, lr	@, tmp288, tmp251
	mov	r0, r4	@, ChanID
	add	r8, r8, #178	@ tmp238, tmp237,
	add	ip, r2, r8, asl #2	@, tmp241, tmp225, tmp238,
	str	r3, [ip, #8]	@ tmp243, <variable>.LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	rsbs	r2, r7, #1	@ prephitmp.1711, ret
	movcc	r2, #0	@ prephitmp.1711
	b	.L312	@
.L321:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp188,
	movt	r3, #:upper16:.LANCHOR1	@ tmp188,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp195,
	add	r2, r3, r4, asl #2	@, tmp191, tmp188, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp195,
	ldr	ip, [r2, #4000]	@ tmp194, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp193, tmp194, currtime
	cmp	r1, r3	@ tmp193, g_TraceImgPeriod
	strhi	r0, [r2, #4000]	@ currtime, last_rec_pos_time
	b	.L306	@
.L320:
	mov	r0, r3	@, tmp174
	movw	r1, #:lower16:.LC22	@,
	mov	r2, r8	@, D.36347
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #176]	@ prephitmp.1709, <variable>.image_id
	b	.L305	@
.L318:
	mov	r0, r1	@, p_image
	mov	r2, #2304	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L299	@
.L322:
	ldr	r3, [r3, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r1, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	bhi	.L310	@,
	add	ip, r2, #75776	@ tmp222, tmp206,
	ldr	lr, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	add	r2, ip, #912	@ tmp222, tmp222,
	ldr	r0, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	lr, r0	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	bls	.L309	@,
.L310:
	ldr	r8, [r5, #176]	@ D.36346, <variable>.image_id
	mov	r0, r4	@, ChanID
	ldr	ip, [r5, #380]	@ <variable>.resetNum, <variable>.resetNum
	mov	r1, r5	@, p_image
	add	r2, r8, ip	@ tmp283, D.36346, <variable>.resetNum
	sub	r7, r2, #6	@ tmp285, tmp283,
	str	r7, [r5, #176]	@ tmp285, <variable>.image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r7, r0, #0	@ ret,
	strne	r8, [r5, #176]	@ D.36346, <variable>.image_id
	mvnne	r7, #0	@ ret,
	bne	.L299	@,
	ldr	lr, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r1, #19174	@ tmp261,
	mov	r2, #1	@ prephitmp.1711,
	mla	r3, r1, r4, lr	@ tmp262, tmp261, ChanID, <variable>.image_id
	add	ip, r6, r3, asl #2	@, tmp267, tmp289, tmp262,
	str	r7, [ip, #744]	@ ret, <variable>.LogicImageIsUsed
	str	r8, [r5, #176]	@ D.36346, <variable>.image_id
	b	.L312	@
.L317:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2303	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	mvn	r7, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L299	@
.L326:
	.align	2
.L325:
	.word	.LANCHOR0+8
	.word	.LANCHOR2+28
	.fnend
	.size	DNR_ReleaseImage, .-DNR_ReleaseImage
	.align	2
	.global	DNR_ReceiveImage
	.type	DNR_ReceiveImage, %function
DNR_ReceiveImage:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ p_image, p_image
	bhi	.L341	@,
	cmp	r1, #0	@ p_image,
	beq	.L342	@,
	movw	r2, #9587	@ tmp152,
	movw	sl, #:lower16:.LANCHOR0	@ tmp247,
	mul	r1, r2, r0	@ tmp151, tmp152, ChanID
	movt	sl, #:upper16:.LANCHOR0	@ tmp247,
	add	r3, sl, r1, asl #3	@, tmp156, tmp247, tmp151,
	ldr	r3, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #0	@ <variable>.s32IsOpen,
	beq	.L343	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	mov	r6, r0	@ eVidStd,
	beq	.L332	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L332	@,
	movw	r6, #:lower16:76696	@ tmp174,
	movt	r6, #:upper16:76696	@ tmp174,
	mov	r1, r4	@, p_image
	mla	r0, r6, r5, sl	@ tmp176, tmp174, ChanID, tmp247
	add	r0, r0, #976	@, tmp176,
	bl	IMGQUE_GetImage	@
	mov	r6, r0	@ ret.1751,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L344	@,
.L336:
	cmp	r6, #1	@ ret.1751,
	beq	.L345	@,
.L334:
	mvn	r0, #0	@ ret,
	b	.L329	@
.L332:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.36222
	bne	.L334	@,
	cmp	r6, #18	@ eVidStd,
	beq	.L329	@,
	ldr	r3, [r4, #120]	@ D.36227, <variable>.luma_2d_phy_addr
	ldr	lr, [r4, #124]	@ D.36229, <variable>.chrom_2d_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r3, [r4, #88]	@ D.36227, <variable>.top_luma_phy_addr
	add	r2, r1, lr	@ tmp170, <variable>.image_stride, D.36229
	add	ip, r1, r3	@ tmp168, <variable>.image_stride, D.36227
	str	r2, [r4, #100]	@ tmp170, <variable>.btm_chrom_phy_addr
	str	ip, [r4, #96]	@ tmp168, <variable>.btm_luma_phy_addr
	str	lr, [r4, #92]	@ D.36229, <variable>.top_chrom_phy_addr
.L329:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L345:
	movw	r8, #19174	@ tmp193,
	ldr	r7, [r4, #176]	@ D.36254, <variable>.image_id
	mul	r8, r8, r5	@ tmp192, tmp193, ChanID
	movw	r6, #:lower16:.LANCHOR0	@ tmp191,
	movt	r6, #:upper16:.LANCHOR0	@ tmp191,
	add	r0, r8, r7	@ tmp194, tmp192, D.36254
	add	lr, r0, #178	@ tmp195, tmp194,
	add	sl, sl, lr, asl #2	@, tmp198, tmp247, tmp195,
	ldr	ip, [sl, #8]	@ D.36255, <variable>.LogicImageIsUsed
	cmp	ip, #3	@ D.36255,
	beq	.L346	@,
	movw	r0, #:lower16:76696	@ tmp207,
	movt	r0, #:upper16:76696	@ tmp207,
	mla	lr, r0, r5, r6	@ tmp208, tmp207, ChanID, tmp191
	add	r3, lr, #75776	@ tmp209, tmp208,
	add	r1, r3, #904	@ tmp209, tmp209,
	ldr	r2, [r1, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r2, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L338	@,
	cmp	ip, #2	@ D.36255,
	beq	.L338	@,
	ldr	r2, .L347	@,
	movw	r3, #2238	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	ip, [sp, #0]	@ D.36255,
	str	r7, [sp, #4]	@ D.36254,
	bl	dprint_vfmw	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, p_image
	bl	DNR_ReleaseImage	@
	ldr	r2, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	ip, #0	@ tmp224,
	mvn	r0, #0	@ ret,
	add	r8, r8, r2	@ tmp217, tmp192, <variable>.image_id
	add	r8, r8, #178	@ tmp219, tmp217,
	add	r6, r6, r8, asl #2	@, tmp222, tmp191, tmp219,
	str	ip, [r6, #8]	@ tmp224, <variable>.LogicImageIsUsed
	b	.L329	@
.L344:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp177,
	movt	r3, #:upper16:.LANCHOR1	@ tmp177,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp184,
	add	ip, r3, r5, asl #2	@, tmp180, tmp177, ChanID,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp184,
	ldr	r2, [ip, #4016]	@ tmp183, last_rec_pos_time
	ldr	r3, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, r2, r0	@ tmp182, tmp183, currtime
	cmp	r1, r3	@ tmp182, g_TraceImgPeriod
	strhi	r0, [ip, #4016]	@ currtime, last_rec_pos_time
	b	.L336	@
.L338:
	mov	r1, #3	@ tmp244,
	mov	r0, #0	@ ret,
	str	r1, [sl, #8]	@ tmp244, <variable>.LogicImageIsUsed
	b	.L329	@
.L343:
	mov	r0, r3	@, <variable>.s32IsOpen
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L329	@
.L341:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2169	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L329	@
.L342:
	mov	r0, r1	@, p_image
	movw	r2, #2170	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L329	@
.L346:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC25	@,
	ldr	r2, .L347	@,
	movt	r1, #:upper16:.LC25	@,
	movw	r3, #2227	@,
	str	ip, [sp, #0]	@ D.36255,
	str	r7, [sp, #4]	@ D.36254,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L329	@
.L348:
	.align	2
.L347:
	.word	.LANCHOR2+48
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_PushTempImageToVOQ
	.type	DNR_PushTempImageToVOQ, %function
DNR_PushTempImageToVOQ:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	movw	r3, #:lower16:76696	@ tmp148,
	movt	r3, #:upper16:76696	@ tmp148,
	str	r0, [sp, #16]	@ InstId, %sfp
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #16]	@, %sfp
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #28]	@, %sfp
	mul	r3, r3, r1	@ tmp147, tmp148,
	add	r0, r3, r0	@ tmp149, tmp147,
	add	r5, r0, #51456	@ tmp150, tmp149,
	add	r5, r5, #72	@ tmp150, tmp150,
	ldr	r2, [r5, #4]	@ prephitmp.1769, <variable>.TempImageNum
	cmp	r2, #0	@ prephitmp.1769,
	ble	.L375	@,
	sub	r4, r2, #1	@ i, prephitmp.1769,
	mov	r6, #392	@ tmp162,
	movw	r1, #51760	@ tmp160,
	mla	r3, r6, r4, r3	@ tmp165, tmp162, i, tmp147
	ldr	r6, [sp, #28]	@, %sfp
	add	ip, r3, r6	@ tmp166, tmp165,
	ldr	r3, [ip, r1]	@ <variable>.last_frame, <variable>.last_frame
	cmp	r3, #1	@ <variable>.last_frame,
	moveq	r2, #0	@ tmp178,
	streq	r2, [ip, r1]	@ tmp178, <variable>.last_frame
	streq	r3, [r0, r1]	@ <variable>.last_frame, <variable>.last_frame
	ldreq	r2, [r5, #4]	@ prephitmp.1769, <variable>.TempImageNum
	subeq	r4, r2, #1	@ i, prephitmp.1769,
	cmp	r4, #0	@ i,
	blt	.L353	@,
	ldr	ip, [sp, #16]	@, %sfp
	movw	sl, #:lower16:76696	@ tmp195,
	movt	sl, #:upper16:76696	@ tmp195,
	mov	r5, #392	@ tmp200,
	movw	r3, #19174	@ tmp258,
	ldr	r8, .L378	@ tmp250,
	mul	sl, sl, ip	@ tmp194, tmp195,
	mov	r9, r5	@ tmp255, tmp200
	mla	lr, r5, r2, sl	@ tmp203, tmp200, prephitmp.1769, tmp194
	movw	r7, #:lower16:g_event_report	@,
	mla	r2, r5, r4, sl	@ tmp212, tmp255, i, tmp257
	movt	r7, #:upper16:g_event_report	@,
	mul	r1, r3, ip	@, tmp258,
	str	r7, [sp, #20]	@, %sfp
	add	r5, r2, #51456	@ tmp213, tmp212,
	add	fp, sl, #968	@ tmp196, tmp194,
	add	r7, r5, #72	@ tmp213, tmp213,
	add	fp, r8, fp	@ D.34874, tmp250, tmp196
	add	r7, r8, r7	@ pTemp, tmp250, tmp213
	add	r0, lr, #51456	@ tmp204, tmp203,
	add	r6, r0, #72	@ tmp204, tmp204,
	mov	r0, fp	@, D.34874
	str	r1, [sp, #12]	@, %sfp
	mov	r1, r7	@, pTemp
	and	lr, r4, #1	@, i,
	str	lr, [sp, #24]	@, %sfp
	bl	IMGQUE_InsertImage	@
	add	r6, r8, r6	@ ivtmp.1787, tmp250, tmp204
	mov	r5, #0	@ tmp260,
	cmp	r0, #1	@,
	beq	.L376	@,
	ldr	r3, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	ldr	r2, [sp, #12]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r0, r5	@, tmp260
	add	lr, r2, r3	@ tmp294,, <variable>.image_id
	movt	r1, #:upper16:.LC27	@,
	movw	r2, #619	@,
	add	r3, ip, lr, asl #2	@, tmp297,, tmp294,
	add	lr, r3, #720	@ tmp298, tmp297,
	str	r5, [lr, #0]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
.L360:
	subs	r4, r4, #1	@ i, i,
	sub	r6, r6, #392	@ ivtmp.1787, ivtmp.1787,
	bmi	.L353	@,
	ldr	r7, [sp, #24]	@, %sfp
	cmp	r7, #0	@,
	beq	.L356	@,
	mla	r3, r9, r4, sl	@ tmp318, tmp255, i, tmp257
	mov	r0, fp	@, D.34874
	add	lr, r3, #51456	@ tmp320, tmp318,
	add	ip, lr, #72	@ tmp320, tmp320,
	add	r7, r8, ip	@ pTemp, tmp250, tmp320
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L372	@,
	ldr	lr, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	ldr	r2, [sp, #12]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r0, r5	@, tmp260
	movw	r1, #:lower16:.LC27	@,
	add	r3, r2, lr	@ tmp326,, <variable>.image_id
	movt	r1, #:upper16:.LC27	@,
	movw	r2, #619	@,
	sub	r6, r6, #392	@ ivtmp.1787, ivtmp.1787,
	add	lr, ip, r3, asl #2	@, tmp329,, tmp326,
	add	ip, lr, #720	@ tmp330, tmp329,
	str	r5, [ip, #0]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	subs	r4, r4, #1	@ i, tmp266,
	bpl	.L356	@,
.L353:
	ldr	r0, [sp, #16]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp244,
	ldr	r1, [sp, #28]	@, %sfp
	movt	r3, #:upper16:76696	@ tmp244,
	mov	r2, #0	@ tmp247,
	mla	ip, r3, r0, r1	@ tmp245, tmp244,,
	mov	r0, r2	@ D.34864, tmp247
	add	r1, ip, #51456	@ tmp246, tmp245,
	add	r3, r1, #72	@ tmp246, tmp246,
	str	r2, [r3, #4]	@ tmp247, <variable>.TempImageNum
.L351:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L377:
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r3, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [sp, #12]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report.461, g_event_report
	mov	r1, #5	@,
	add	lr, r2, r3	@ tmp218,, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	cmp	ip, #0	@ g_event_report.461,
	add	lr, r3, lr, asl #2	@, tmp223,, tmp218,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r3, #2	@ tmp225,
	add	r2, sp, #36	@,,
	str	r3, [lr, #720]	@ tmp225, <variable>.LogicImageIsUsed
	beq	.L355	@,
	str	r7, [sp, #36]	@ pTemp, para
	blx	ip	@ g_event_report.461
.L355:
	sub	r4, r4, #1	@ tmp266, i,
	mov	r0, fp	@, D.34874
	sub	r6, r6, #392	@ ivtmp.1787, ivtmp.1787,
	mla	ip, r9, r4, sl	@ tmp286, tmp255, tmp266, tmp257
	add	r1, ip, #51456	@ tmp288, tmp286,
	add	r2, r1, #72	@ tmp288, tmp288,
	add	r7, r8, r2	@ pTemp, tmp250, tmp288
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	movw	r1, #:lower16:.LC27	@,
	movw	r2, #619	@,
	movt	r1, #:upper16:.LC27	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, tmp260
	bne	.L366	@,
	ldr	lr, [sp, #20]	@, %sfp
	mov	r1, #5	@,
	ldr	r0, [sp, #16]	@, %sfp
	add	r2, sp, #36	@,,
	ldr	ip, [lr, #0]	@, g_event_report
	ldr	lr, [sp, #12]	@, %sfp
	str	ip, [sp, #4]	@, %sfp
	ldr	r3, [r6, #-216]	@, <variable>.image_id
	add	ip, lr, r3	@,,
	str	ip, [sp, #24]	@, %sfp
	ldr	ip, [sp, #24]	@, %sfp
	movw	r3, #:lower16:.LANCHOR0	@,
	ldr	lr, [sp, #4]	@, %sfp
	movt	r3, #:upper16:.LANCHOR0	@,
	cmp	lr, #0	@,
	add	lr, r3, ip, asl #2	@,,,,
	mov	ip, #2	@,
	str	lr, [sp, #24]	@, %sfp
	str	ip, [lr, #720]	@, <variable>.LogicImageIsUsed
	beq	.L367	@,
	str	r7, [sp, #36]	@ pTemp, para
	ldr	r3, [sp, #4]	@, %sfp
	blx	r3	@
.L367:
	subs	r4, r4, #1	@ i, tmp266,
	sub	r6, r6, #392	@ ivtmp.1787, ivtmp.1787,
	bmi	.L353	@,
.L356:
	mla	r3, r9, r4, sl	@ tmp273, tmp255, i, tmp257
	mov	r0, fp	@, D.34874
	add	r1, r3, #51456	@ tmp275, tmp273,
	add	r2, r1, #72	@ tmp275, tmp275,
	add	r7, r8, r2	@ pTemp, tmp250, tmp275
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	movw	r1, #:lower16:.LC27	@,
	movw	r2, #619	@,
	movt	r1, #:upper16:.LC27	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, tmp260
	beq	.L377	@,
	ldr	r7, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	ldr	lr, [sp, #12]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	add	r3, lr, r7	@ tmp231,, <variable>.image_id
	add	lr, r3, #178	@ tmp233, tmp231,
	add	r7, ip, lr, asl #2	@, tmp236,, tmp233,
	str	r5, [r7, #8]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	b	.L355	@
.L366:
	ldr	r3, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [sp, #12]	@, %sfp
	add	lr, ip, r3	@ tmp348,, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	add	r3, lr, #178	@ tmp349, tmp348,
	movt	ip, #:upper16:.LANCHOR0	@,
	add	lr, ip, r3, asl #2	@, tmp351,, tmp349,
	str	r5, [lr, #8]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	b	.L367	@
.L372:
	ldr	r0, [sp, #20]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #12]	@, %sfp
	movt	lr, #:upper16:.LANCHOR0	@,
	ldr	r2, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r0, #0]	@ g_event_report.461, g_event_report
	mov	r0, #2	@ tmp340,
	add	r3, r1, r2	@ tmp335,, <variable>.image_id
	cmp	ip, #0	@ g_event_report.461,
	add	r1, lr, r3, asl #2	@, tmp338,, tmp335,
	str	r0, [r1, #720]	@ tmp340, <variable>.LogicImageIsUsed
	beq	.L367	@,
	str	r7, [sp, #36]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #16]	@, %sfp
	add	r2, sp, #36	@,,
	blx	ip	@ g_event_report.461
	b	.L367	@
.L376:
	ldr	r0, [sp, #20]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #12]	@, %sfp
	movt	lr, #:upper16:.LANCHOR0	@,
	ldr	r2, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r0, #0]	@ g_event_report.461, g_event_report
	mov	r0, #2	@ tmp308,
	add	r3, r1, r2	@ tmp303,, <variable>.image_id
	cmp	ip, #0	@ g_event_report.461,
	add	r1, lr, r3, asl #2	@, tmp306,, tmp303,
	str	r0, [r1, #720]	@ tmp308, <variable>.LogicImageIsUsed
	beq	.L360	@,
	str	r7, [sp, #36]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #16]	@, %sfp
	add	r2, sp, #36	@,,
	blx	ip	@ g_event_report.461
	b	.L360	@
.L375:
	mov	r2, #592	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp158,
	mvn	r0, #0	@ D.34864,
	str	r2, [r5, #4]	@ tmp158, <variable>.TempImageNum
	b	.L351	@
.L379:
	.align	2
.L378:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PushTempImageToVOQ, .-DNR_PushTempImageToVOQ
	.align	2
	.global	DNR_FastBackOptimize
	.type	DNR_FastBackOptimize, %function
DNR_FastBackOptimize:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	ip, #:lower16:76696	@ tmp145,
	movw	r5, #:lower16:.LANCHOR0	@ tmp361,
	movt	ip, #:upper16:76696	@ tmp145,
	movt	r5, #:upper16:.LANCHOR0	@ tmp361,
	mov	r6, r0	@ InstId, InstId
	movw	r3, #:lower16:76696	@ tmp168,
	movt	r3, #:upper16:76696	@ tmp168,
	mla	r0, ip, r0, r5	@ tmp146, tmp145, InstId, tmp361
	mov	r4, r1	@ pImage, pImage
	mul	r3, r3, r6	@ tmp167, tmp168, InstId
	movw	r2, #:lower16:76648	@ tmp143,
	add	r8, r0, #75776	@ tmp147, tmp146,
	movt	r2, #:upper16:76648	@ tmp143,
	add	r7, r8, #872	@ tmp147, tmp147,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [r7, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	add	r7, r3, r5	@ tmp169, tmp167, tmp361
	cmp	r1, #1	@ <variable>.u32DispOptimizeFlag,
	movne	r1, #3	@ tmp162,
	strne	r1, [r0, r2]	@ tmp162, <variable>.u32VoFrmNum
	ldrne	r0, [r4, #140]	@ <variable>.format, <variable>.format
	moveq	r1, #7	@ tmp155,
	streq	r1, [r0, r2]	@ tmp155, <variable>.u32VoFrmNum
	movw	r2, #51528	@ tmp166,
	orrne	r0, r0, #262144	@ tmp164, <variable>.format,
	strne	r0, [r4, #140]	@ tmp164, <variable>.format
	ldr	r8, [r7, r2]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r8, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L383	@,
	add	r5, r7, #75776	@ tmp177, tmp169,
	ldr	r0, [r4, #80]	@ D.34975, <variable>.GopNum
	add	r5, r5, #864	@ tmp177, tmp177,
	movw	r1, #:lower16:76640	@ tmp173,
	movt	r1, #:upper16:76640	@ tmp173,
	ldr	ip, [r5, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r0, ip	@ D.34975, <variable>.LastGopNum
	beq	.L384	@,
	str	r0, [r5, #4]	@ D.34975, <variable>.LastGopNum
	mov	ip, #1	@ tmp198,
	ldr	r0, [r4, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, r2]	@ tmp198, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.DistanceBeforeFirstFrame,
	str	r0, [r7, r1]	@ <variable>.DistanceBeforeFirstFrame, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L393	@,
	ldr	r2, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r5, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
.L386:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L383:
	add	r3, r7, #75776	@ tmp259, tmp169,
	ldr	r2, [r4, #80]	@ temp.1815, <variable>.GopNum
	add	r3, r3, #864	@ tmp259, tmp259,
	movw	r1, #:lower16:76640	@ tmp255,
	movt	r1, #:upper16:76640	@ tmp255,
	ldr	r0, [r3, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r2, r0	@ temp.1815, <variable>.LastGopNum
	beq	.L387	@,
	str	r2, [r3, #4]	@ temp.1815, <variable>.LastGopNum
	mov	r0, r6	@, InstId
	mov	r1, r4	@, pImage
	bl	DNR_PushTempImageToVOQ	@
	subs	r2, r0, #0	@ ret.1817,
	bne	.L394	@,
.L388:
	movw	r1, #:lower16:76696	@ tmp271,
	movt	r1, #:upper16:76696	@ tmp271,
	ldr	r0, [r4, #76]	@ temp.1818, <variable>.DistanceBeforeFirstFrame
	movw	r7, #:lower16:76640	@ tmp269,
	mul	r3, r1, r6	@ tmp270, tmp271, InstId
	movt	r7, #:upper16:76640	@ tmp269,
	cmp	r0, #0	@ temp.1818,
	add	r5, r3, r5	@ tmp272, tmp270, tmp361
	str	r0, [r5, r7]	@ temp.1818, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L395	@,
	ldr	r3, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r5, r7]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L386	@
.L387:
	ldr	r0, [r7, r1]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ <variable>.u32BackwardOptimizeDistanceCnt,
	bne	.L396	@,
	ldr	r1, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r3, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L386	@
.L394:
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	b	.L388	@
.L384:
	ldr	ip, .L398	@ tmp244,
	mov	r0, r6	@, InstId
	add	r1, r3, ip	@, tmp167, tmp244
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L386	@
.L396:
	ldr	r1, [r7, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L397	@,
.L391:
	movw	r2, #:lower16:76696	@ tmp328,
	movt	r2, #:upper16:76696	@ tmp328,
	mov	r0, r6	@, InstId
	ldr	lr, .L398	@ tmp329,
	mul	r6, r2, r6	@ tmp327, tmp328, InstId
	add	r1, r6, lr	@, tmp327, tmp329
	add	r5, r6, r5	@ tmp335, tmp327, tmp361
	bl	VCTRL_ReleaseChanImage	@
	movw	ip, #:lower16:76640	@ tmp339,
	movt	ip, #:upper16:76640	@ tmp339,
	mov	r0, #0	@ tmp337,
	str	r0, [r5, #440]	@ tmp337, <variable>.s321DFrameIsProc
	mvn	r0, #0	@ ret,
	ldr	r3, [r5, ip]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	add	r1, r3, r0	@ tmp351, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r1, [r5, ip]	@ tmp351, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L386	@
.L393:
	ldr	lr, .L398	@ tmp210,
	mov	r0, r6	@, InstId
	add	r1, r3, lr	@, tmp167, tmp210
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #440]	@ <variable>.GetFirstIFrameFlag, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	ldr	r1, [r5, #0]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r1, r0	@ tmp232, <variable>.u32BackwardOptimizeDistanceCnt,
	str	r3, [r5, #0]	@ tmp232, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L386	@
.L395:
	ldr	lr, .L398	@ tmp278,
	mov	r0, r6	@, InstId
	add	r1, r3, lr	@, tmp270, tmp278
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r5, r7]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mov	r0, #0	@ tmp286,
	str	r0, [r5, #440]	@ tmp286, <variable>.s321DFrameIsProc
	sub	r2, ip, #1	@ tmp300, <variable>.u32BackwardOptimizeDistanceCnt,
	mvn	r0, #0	@ ret,
	str	r2, [r5, r7]	@ tmp300, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L386	@
.L397:
	movw	r2, #:lower16:g_event_report	@ tmp322,
	movt	r2, #:upper16:g_event_report	@ tmp322,
	ldr	r3, [r2, #0]	@ g_event_report.469, g_event_report
	cmp	r3, #0	@ g_event_report.469,
	beq	.L391	@,
	add	r2, sp, #8	@ tmp324,,
	mov	r0, r6	@, InstId
	str	r1, [r2, #-4]!	@ <variable>.Cur1DImage.last_frame, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.469
	b	.L391	@
.L399:
	.align	2
.L398:
	.word	.LANCHOR0+48
	.fnend
	.size	DNR_FastBackOptimize, .-DNR_FastBackOptimize
	.align	2
	.global	DNR_FastForwardFastBack
	.type	DNR_FastForwardFastBack, %function
DNR_FastForwardFastBack:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp191,
	movw	r8, #:lower16:76696	@ tmp142,
	movt	r5, #:upper16:.LANCHOR0	@ tmp191,
	movt	r8, #:upper16:76696	@ tmp142,
	mov	r4, r0	@ InstId, InstId
	movw	sl, #:lower16:76696	@ tmp165,
	movt	sl, #:upper16:76696	@ tmp165,
	mla	r3, r8, r0, r5	@ tmp143, tmp142, InstId, tmp191
	mov	r6, r1	@ pImage, pImage
	mul	sl, sl, r4	@ tmp164, tmp165, InstId
	movw	r2, #:lower16:76648	@ tmp140,
	add	r7, r3, #75776	@ tmp144, tmp143,
	movt	r2, #:upper16:76648	@ tmp140,
	add	r0, r7, #872	@ tmp144, tmp144,
	movw	r7, #51528	@ tmp163,
	add	r5, sl, r5	@ tmp166, tmp164, tmp191
	ldr	r1, [r0, #4]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	cmp	r1, #1	@ <variable>.u32DispOptimizeFlag,
	movne	r1, #3	@ tmp159,
	strne	r1, [r3, r2]	@ tmp159, <variable>.u32VoFrmNum
	ldrne	r3, [r6, #140]	@ <variable>.format, <variable>.format
	moveq	r1, #7	@ tmp152,
	streq	r1, [r3, r2]	@ tmp152, <variable>.u32VoFrmNum
	orrne	r3, r3, #262144	@ tmp161, <variable>.format,
	strne	r3, [r6, #140]	@ tmp161, <variable>.format
	ldr	r8, [r5, r7]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	cmp	r8, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L403	@,
	mov	r0, r6	@, pImage
	bl	DNR_IsIFrame	@
	subs	r6, r0, #0	@ D.34943,
	movne	r3, #1	@ tmp175,
	movne	r0, r8	@ ret, <variable>.GetFirstIFrameFlag
	strne	r3, [r5, r7]	@ tmp175, <variable>.GetFirstIFrameFlag
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	ip, .L408	@ tmp180,
	mov	r0, r4	@, InstId
	add	r1, sl, ip	@, tmp164, tmp180
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, InstId
	str	r6, [r5, #440]	@ D.34943, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L403:
	mov	r0, r6	@, pImage
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.34950
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r4	@, InstId
	mov	r1, r6	@, pImage
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L409:
	.align	2
.L408:
	.word	.LANCHOR0+48
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_InsertQueueWithDSD
	.type	DNR_InsertQueueWithDSD, %function
DNR_InsertQueueWithDSD:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:76696	@ tmp144,
	movt	r1, #:upper16:76696	@ tmp144,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp353,
	mul	r1, r1, r0	@ tmp143, tmp144, NextInstId
	movt	r4, #:upper16:.LANCHOR0	@ tmp353,
	movw	r2, #:lower16:76632	@ tmp142,
	movt	r2, #:upper16:76632	@ tmp142,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	add	r6, r1, r4	@ tmp145, tmp143, tmp353
	ldr	r3, [r6, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L411	@,
	ldr	r3, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r0, r4, #8	@ tmp171, tmp353,
	add	r8, r1, #40	@ tmp174, tmp143,
	ldr	r2, [r6, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	r8, r0, r8	@ D.35477, tmp171, tmp174
	add	r1, r1, #968	@ tmp179, tmp143,
	add	lr, r3, #6	@ tmp160, <variable>.Cur1DImage.image_id,
	add	r0, r0, r1	@, tmp171, tmp179
	rsb	ip, r2, lr	@ tmp169, <variable>.Cur1DImage.resetNum, tmp160
	mov	r1, r8	@, D.35477
	str	ip, [r6, #224]	@ tmp169, <variable>.Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L412	@,
	ldr	r2, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	movw	r1, #19174	@ tmp189,
	movw	r3, #:lower16:g_event_report	@ tmp205,
	movt	r3, #:upper16:g_event_report	@ tmp205,
	mov	r7, #0	@ tmp204,
	mov	ip, #2	@ tmp197,
	mla	lr, r1, r5, r2	@ tmp190, tmp189, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r3, [r3, #0]	@ g_event_report.508, g_event_report
	str	r7, [r6, #440]	@ tmp204, <variable>.s321DFrameIsProc
	cmp	r3, r7	@ g_event_report.508,
	moveq	r0, r3	@ D.35487, g_event_report.508
	add	r4, r4, lr, asl #2	@, tmp195, tmp353, tmp190,
	str	ip, [r4, #720]	@ tmp197, <variable>.LogicImageIsUsed
	beq	.L414	@,
	add	r2, sp, #16	@ tmp206,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.35477, para
	blx	r3	@ g_event_report.508
	mov	r0, r7	@ D.35487, tmp204
.L414:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L411:
	movw	r8, #51528	@ tmp211,
	add	r7, r6, #51456	@ tmp215, tmp145,
	ldr	sl, [r6, r8]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	r7, r7, #72	@ tmp215, tmp215,
	cmp	sl, #0	@ <variable>.GetFirstIFrameFlag,
	beq	.L421	@,
	ldr	lr, [r7, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mov	r0, #392	@ tmp249,
	mov	r2, r0	@, tmp249
	ldr	r3, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	ldr	ip, [r6, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	sl, r4, #8	@ tmp354, tmp353,
	mla	r0, r0, lr, r1	@ tmp252, tmp249, <variable>.TempImageNum, tmp143
	add	lr, r3, #6	@ tmp229, <variable>.Cur1DImage.image_id,
	rsb	r3, ip, lr	@ tmp238, <variable>.Cur1DImage.resetNum, tmp229
	add	r1, r6, #48	@, tmp145,
	str	r3, [r6, #224]	@ tmp238, <variable>.Cur1DImage.image_id
	add	r0, r0, #51456	@ tmp253, tmp252,
	add	lr, r0, #72	@ tmp253, tmp253,
	add	r0, sl, lr	@, tmp354, tmp253
	bl	memcpy	@
	ldr	r2, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	movw	r1, #19174	@ tmp273,
	movw	r3, #:lower16:76648	@ tmp302,
	movt	r3, #:upper16:76648	@ tmp302,
	ldr	ip, [r7, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	mla	r2, r1, r5, r2	@ tmp274, tmp273, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r0, [r6, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r1, [r6, r3]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	r3, ip, #1	@ D.35498, <variable>.TempImageNum,
	mov	ip, #4	@ tmp281,
	str	r3, [r7, #4]	@ D.35498, <variable>.TempImageNum
	rsb	r1, r1, r0	@ tmp307, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	r3, r1	@ D.35498, tmp307
	add	r0, r4, r2, asl #2	@, tmp279, tmp353, tmp274,
	str	ip, [r0, #720]	@ tmp281, <variable>.LogicImageIsUsed
	movcs	r0, #0	@ tmp323,
	strcs	r0, [r6, r8]	@ tmp323, <variable>.GetFirstIFrameFlag
	bcc	.L422	@,
.L417:
	movw	r7, #:lower16:76696	@ tmp327,
	movt	r7, #:upper16:76696	@ tmp327,
	mov	r0, r5	@, NextInstId
	movw	r6, #:lower16:.LANCHOR0	@ tmp324,
	mul	r7, r7, r5	@ tmp326, tmp327, NextInstId
	movt	r6, #:upper16:.LANCHOR0	@ tmp324,
	add	r1, r7, #40	@ tmp328, tmp326,
	add	r1, sl, r1	@, tmp354, tmp328
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	bne	.L423	@,
.L418:
	movw	r1, #:lower16:76696	@ tmp348,
	movt	r1, #:upper16:76696	@ tmp348,
	mov	r2, #0	@ tmp351,
	mla	r4, r1, r5, r4	@ tmp349, tmp348, NextInstId, tmp353
	mov	r0, r2	@ D.35487, tmp351
	str	r2, [r4, #440]	@ tmp351, <variable>.s321DFrameIsProc
	b	.L414	@
.L422:
	ldr	r2, [r6, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r2, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L417	@,
	movw	r1, #:lower16:76696	@ tmp348,
	movt	r1, #:upper16:76696	@ tmp348,
	mov	r2, #0	@ tmp351,
	mla	r4, r1, r5, r4	@ tmp349, tmp348, NextInstId, tmp353
	mov	r0, r2	@ D.35487, tmp351
	str	r2, [r4, #440]	@ tmp351, <variable>.s321DFrameIsProc
	b	.L414	@
.L423:
	add	r6, r7, r6	@ tmp335, tmp326, tmp324
	movw	r1, #:lower16:.LC31	@,
	add	r0, r6, #51456	@ tmp336, tmp335,
	movt	r1, #:upper16:.LC31	@,
	add	r3, r0, #72	@ tmp336, tmp336,
	ldr	ip, [r6, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	movw	r2, #1306	@,
	mov	r0, #0	@,
	ldr	r3, [r3, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	str	ip, [sp, #0]	@ <variable>.s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L418	@
.L421:
	bl	DNR_ClearTempImage	@
	mov	r0, sl	@ D.35487, <variable>.GetFirstIFrameFlag
	b	.L414	@
.L412:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC30	@,
	ldr	r2, .L424	@,
	movt	r1, #:upper16:.LC30	@,
	movw	r3, #1274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35487,
	b	.L414	@
.L425:
	.align	2
.L424:
	.word	.LANCHOR2+68
	.fnend
	.size	DNR_InsertQueueWithDSD, .-DNR_InsertQueueWithDSD
	.align	2
	.global	DNR_SetImageLogic
	.type	DNR_SetImageLogic, %function
DNR_SetImageLogic:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:76696	@ tmp150,
	movt	r4, #:upper16:76696	@ tmp150,
	movw	r5, #:lower16:.LANCHOR0	@ tmp301,
	movt	r5, #:upper16:.LANCHOR0	@ tmp301,
	mov	r7, r0	@ NextInstId, NextInstId
	mul	r4, r4, r0	@ tmp149, tmp150, NextInstId
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	movw	r0, #:lower16:76656	@ tmp148,
	movt	r0, #:upper16:76656	@ tmp148,
	add	r1, r4, r5	@ tmp151, tmp149, tmp301
	ldr	r3, [r1, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r3, #0	@ <variable>.DNRDataSourceFlag,
	moveq	r3, #392	@ tmp157,
	movwne	r3, #:lower16:76680	@ tmp164,
	mlaeq	r4, r3, r2, r4	@ tmp160, tmp157, PicBufID, tmp149
	movtne	r3, #:upper16:76680	@ tmp164,
	ldrne	r4, [r1, r3]	@ pImageLogic, <variable>.pCaptureImageOut
	addeq	r4, r4, r5	@ tmp161, tmp160, tmp301
	addeq	r4, r4, #26368	@ pImageLogic, tmp161,
	addeq	r4, r4, #72	@ pImageLogic, pImageLogic,
	cmp	r4, #0	@ pImageLogic,
	beq	.L438	@,
	movw	sl, #:lower16:76696	@ tmp173,
	movt	sl, #:upper16:76696	@ tmp173,
	mov	r2, #392	@,
	mov	r0, r4	@, pImageLogic
	mla	sl, sl, r7, r5	@ tmp174, tmp173, NextInstId, tmp301
	ldr	r8, [r4, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r9, [r4, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	add	r1, sl, #48	@, tmp174,
	bl	memcpy	@
	ldr	r1, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	movw	ip, #:lower16:76656	@ tmp182,
	movt	ip, #:upper16:76656	@ tmp182,
	str	r9, [r4, #48]	@ luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	str	r1, [r4, #172]	@ <variable>.ddr_stride, <variable>.image_stride
	str	r8, [r4, #120]	@ luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r2, [sl, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #1	@ <variable>.DNRDataSourceFlag,
	beq	.L439	@,
	ldr	r3, [r6, #28]	@ temp.1915, <variable>.pic_height_in_mb
	ldr	lr, [r6, #60]	@ temp.1914, <variable>.ddr_stride
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	mov	r2, r3, asl #4	@ tmp193, temp.1915,
	cmp	r1, #0	@ <variable>.pic_structure,
	mul	ip, lr, r2	@ tmp194, temp.1914, tmp193
	moveq	r1, #1	@ iftmp.500,
	movne	r1, #2	@ iftmp.500,
	mla	r0, r1, ip, r8	@ prephitmp.1901, iftmp.500, tmp194, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1901, <variable>.chrom_2d_phy_addr
.L432:
	bl	MEM_Phy2Vir	@
	movw	r8, #:lower16:76696	@ tmp201,
	movt	r8, #:upper16:76696	@ tmp201,
	ldr	ip, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ <variable>.chrom_2d_phy_addr, <variable>.chrom_2d_phy_addr
	movw	r2, #:lower16:76656	@ tmp228,
	mla	r3, r8, r7, r5	@ tmp202, tmp201, NextInstId, tmp301
	str	ip, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r1, [r4, #92]	@ <variable>.chrom_2d_phy_addr, <variable>.top_chrom_phy_addr
	movt	r2, #:upper16:76656	@ tmp228,
	ldr	r8, [r3, #424]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.Cur1DImage.u32IsLastFrame
	str	r0, [r4, #52]	@, <variable>.chrom_2d_vir_addr
	ldr	r0, [r3, #28]	@ <variable>.IsRwzb, <variable>.IsRwzb
	str	r0, [r4, #356]	@ <variable>.IsRwzb, <variable>.optm_inf.Rwzb
	ldr	r0, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	add	ip, r0, ip	@ tmp207, <variable>.ddr_stride, <variable>.luma_2d_phy_addr
	str	ip, [r4, #96]	@ tmp207, <variable>.btm_luma_phy_addr
	ldr	ip, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	r0, #0	@ tmp225,
	str	r8, [r4, #376]	@ <variable>.Cur1DImage.u32IsLastFrame, <variable>.u32IsLastFrame
	add	r1, ip, r1	@ tmp210, <variable>.ddr_stride, <variable>.chrom_2d_phy_addr
	str	r1, [r4, #100]	@ tmp210, <variable>.btm_chrom_phy_addr
	ldr	ip, [r3, #460]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r0, [r4, #364]	@ tmp225, <variable>.u32Is1D
	mov	r0, #1	@ tmp226,
	str	r0, [r4, #368]	@ tmp226, <variable>.is_processed_by_dnr
	str	ip, [r4, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
	ldr	r2, [r3, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r2, #0	@ <variable>.DNRDataSourceFlag,
	beq	.L440	@,
.L435:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp250,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp250,
	ldr	r3, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L436	@,
	movw	lr, #:lower16:76696	@ tmp256,
	movt	lr, #:upper16:76696	@ tmp256,
	movw	r2, #:lower16:76624	@ tmp269,
	movt	r2, #:upper16:76624	@ tmp269,
	mla	r5, lr, r7, r5	@ tmp257, tmp256, NextInstId, tmp301
	ldr	ip, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r7, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	add	ip, ip, #15	@ tmp282, <variable>.image_height,
	add	r1, r5, #8	@ tmp258, tmp257,
	add	r3, r5, #75776	@ tmp273, tmp257,
	add	lr, r3, #848	@ tmp273, tmp273,
	add	r6, r7, #15	@ tmp285, <variable>.image_width,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.35383, <variable>.s32VcmpEn
	bic	r6, r6, #15	@ tmp287, tmp285,
	bic	r7, ip, #15	@ tmp284, tmp282,
	cmp	r0, #1	@ D.35383,
	strb	r0, [r4, #296]	@ D.35383, <variable>.ImageDnr.s32VcmpEn
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	strb	r0, [r4, #297]	@ <variable>.s32WmEn, <variable>.ImageDnr.s32WmEn
	ldr	r1, [r5, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r1, [r4, #320]	@ <variable>.s32VcmpWmStartLine, <variable>.ImageDnr.s32VcmpWmStartLine
	ldr	r0, [lr, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	r7, [r4, #332]	@ tmp284, <variable>.ImageDnr.s32VcmpFrameHeight
	str	r6, [r4, #328]	@ tmp287, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r0, [r4, #324]	@ <variable>.s32VcmpWmEndLine, <variable>.ImageDnr.s32VcmpWmEndLine
	beq	.L441	@,
.L436:
	mov	r0, #0	@ D.35340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L440:
	add	ip, r3, #75776	@ tmp239, tmp202,
	add	r1, ip, #904	@ tmp239, tmp239,
	ldr	lr, [r1, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, r0	@ <variable>.stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ <variable>.DNRDataSourceFlag, <variable>.u32Circumrotate
	addeq	r3, r3, #75776	@ tmp247, tmp202,
	addeq	r3, r3, #912	@ tmp247, tmp247,
	ldreq	r3, [r3, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	streqb	r3, [r6, #11]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.s32MirrorEn
	b	.L435	@
.L441:
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	mov	ip, ip, lsr #4	@ tmp294, tmp282,
	ldr	r3, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	mov	r0, #0	@ D.35340,
	add	lr, r1, #2	@ tmp289, <variable>.image_stride,
	mov	r2, lr, asl #4	@ tmp291, tmp289,
	mla	r1, ip, r2, r3	@ tmp297, tmp294, tmp291, <variable>.top_luma_phy_addr
	str	r1, [r4, #92]	@ tmp297, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L439:
	ldr	r0, [r6, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r3, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	lr, r0, asl #4	@ tmp188, <variable>.pic_height_in_mb,
	mla	r0, r3, lr, r8	@ prephitmp.1901, <variable>.ddr_stride, tmp188, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1901, <variable>.chrom_2d_phy_addr
	b	.L432	@
.L438:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC32	@,
	movw	r2, #1128	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	DNR_SetImageLogic, .-DNR_SetImageLogic
	.align	2
	.global	DNR_ProcessDnrImage
	.type	DNR_ProcessDnrImage, %function
DNR_ProcessDnrImage:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:.LANCHOR0	@ tmp332,
	movw	fp, #:lower16:76696	@ tmp155,
	movt	r6, #:upper16:.LANCHOR0	@ tmp332,
	movt	fp, #:upper16:76696	@ tmp155,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r1	@ pLogic, pLogic
	mov	r5, r0	@ ChanID, ChanID
	mla	ip, fp, r0, r6	@ tmp156, tmp155, ChanID, tmp332
	ldr	fp, [ip, #452]	@ PicBufID, <variable>.CurImageBufID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	movw	r3, #:lower16:1374389535	@ tmp161,
	movt	r3, #:upper16:1374389535	@ tmp161,
	umull	r2, sl, r3, ip	@, tmp160, tmp161, <variable>.image_id
	mov	r2, #100	@ tmp163,
	mov	r7, sl, lsr #5	@ tmp158, tmp160,
	mls	r1, r2, r7, ip	@ tmp164, tmp163, tmp158, <variable>.image_id
	add	r3, r1, #2	@ tmp165, tmp164,
	cmp	r0, r3	@, tmp165
	beq	.L459	@,
.L443:
	movw	r3, #:lower16:76696	@ tmp181,
	movt	r3, #:upper16:76696	@ tmp181,
	movw	r0, #:lower16:76632	@ tmp179,
	movt	r0, #:upper16:76632	@ tmp179,
	mul	r3, r3, r5	@ tmp180, tmp181, ChanID
	movw	sl, #:lower16:.LANCHOR0	@ tmp178,
	movt	sl, #:upper16:.LANCHOR0	@ tmp178,
	add	r7, r3, r6	@ tmp182, tmp180, tmp332
	ldr	ip, [r7, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L460	@,
	movw	r9, #51528	@ tmp216,
	add	r0, r7, #51456	@ tmp220, tmp182,
	ldr	lr, [r7, r9]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	r8, r0, #72	@ tmp220, tmp220,
	cmp	lr, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L454	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
.L448:
	ldr	r1, [r4, #192]	@ temp.1963, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1963,
	beq	.L449	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L449:
	ldr	r1, [r4, #196]	@ temp.1964, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1964,
	beq	.L450	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L450:
	ldr	r1, [r4, #200]	@ temp.1965, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1965,
	beq	.L451	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L451:
	ldr	r1, [r4, #204]	@ D.36132, <variable>.p_usrdat
	cmp	r1, #0	@ D.36132,
	beq	.L453	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L453:
	ldrd	sl, [r4, #8]	@ <variable>.PTS, pLogic,
	mov	r0, #29	@,
	ldrd	r8, [r4, #16]	@ <variable>.Usertag, pLogic,
	movw	r1, #:lower16:.LC34	@,
	ldrd	r2, [r4]	@ <variable>.SrcPts, <variable>.SrcPts
	movt	r1, #:upper16:.LC34	@,
	strd	sl, [sp]	@ <variable>.PTS,
	strd	r8, [sp, #8]	@ <variable>.Usertag,,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #140]	@, <variable>.format
	mov	r0, #11	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pLogic
	bl	CalcFrameCheckSum	@
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	mov	r2, r0	@ D.36142,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:76696	@ tmp322,
	movt	ip, #:upper16:76696	@ tmp322,
	movw	r0, #:lower16:76632	@ tmp320,
	movt	r0, #:upper16:76632	@ tmp320,
	mla	r6, ip, r5, r6	@ tmp323, tmp322, ChanID, tmp332
	ldr	r1, [r6, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r1, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L457	@,
	movw	r3, #:lower16:g_event_report	@ tmp326,
	movt	r3, #:upper16:g_event_report	@ tmp326,
	ldr	r3, [r3, #0]	@ g_event_report.1962, g_event_report
	cmp	r3, #0	@ g_event_report.1962,
	beq	.L457	@,
	add	r2, sp, #32	@ tmp327,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1962
	mov	r0, #0	@ D.36105,
.L447:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L454:
	str	fp, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	ip, #392	@ tmp231,
	ldr	r0, [r8, #4]	@ D.36113, <variable>.TempImageNum
	mov	r2, ip	@, tmp231
	mov	r1, r4	@, pLogic
	mla	lr, ip, r0, r3	@ tmp234, tmp231, D.36113, tmp180
	add	ip, sl, lr	@ tmp235, tmp178, tmp234
	add	r0, ip, #51456	@, tmp235,
	add	r0, r0, #80	@,,
	str	lr, [sp, #20]	@,
	bl	memcpy	@
	movw	r3, #19174	@ tmp244,
	mla	fp, r3, r5, fp	@ tmp245, tmp244, ChanID, PicBufID
	movw	r2, #:lower16:76648	@ tmp272,
	movt	r2, #:upper16:76648	@ tmp272,
	ldr	ip, [r8, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	ldr	r0, [r7, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r1, [r7, r2]	@ <variable>.u32VoFrmNum, <variable>.u32VoFrmNum
	add	r3, ip, #1	@ D.36115, <variable>.TempImageNum,
	mov	r2, #4	@ tmp251,
	str	r3, [r8, #4]	@ D.36115, <variable>.TempImageNum
	add	fp, sl, fp, asl #2	@, tmp249, tmp178, tmp245,
	rsb	ip, r1, r0	@ tmp277, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	r3, ip	@ D.36115, tmp277
	str	r2, [fp, #720]	@ tmp251, <variable>.LogicImageIsUsed
	ldr	r3, [sp, #20]	@,
	movcs	r3, #0	@ tmp296,
	strcs	r3, [r7, r9]	@ tmp296, <variable>.GetFirstIFrameFlag
	bcs	.L456	@,
	add	r8, r3, sl	@ tmp287, tmp234, tmp178
	movw	r9, #51760	@ tmp281,
	ldr	sl, [r8, r9]	@ <variable>.last_frame, <variable>.last_frame
	cmp	sl, #1	@ <variable>.last_frame,
	bne	.L448	@,
.L456:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pLogic
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L448	@,
	movw	r2, #:lower16:76696	@ tmp301,
	movt	r2, #:upper16:76696	@ tmp301,
	movw	r1, #:lower16:.LC31	@,
	mov	r0, #0	@,
	mla	lr, r2, r5, r6	@ tmp302, tmp301, ChanID, tmp332
	movt	r1, #:upper16:.LC31	@,
	movw	r2, #2062	@,
	add	sl, lr, #51456	@ tmp303, tmp302,
	add	r3, sl, #72	@ tmp303, tmp303,
	ldr	fp, [lr, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	ldr	r3, [r3, #4]	@ <variable>.TempImageNum, <variable>.TempImageNum
	str	fp, [sp, #0]	@ <variable>.s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L448	@
.L457:
	mov	r0, #0	@ D.36105,
	b	.L447	@
.L459:
	movw	r0, #:lower16:g_event_report	@ tmp167,
	movt	r0, #:upper16:g_event_report	@ tmp167,
	mov	lr, #1	@ tmp166,
	str	lr, [r4, #224]	@ tmp166, <variable>.last_frame
	ldr	r3, [r0, #0]	@ g_event_report.562, g_event_report
	cmp	r3, #0	@ g_event_report.562,
	beq	.L444	@,
	add	r2, sp, #32	@ tmp169,,
	mov	r1, #0	@ tmp168,
	mov	r0, r5	@, ChanID
	str	r1, [r2, #-4]!	@ tmp168, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.562
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
.L444:
	movw	lr, #:lower16:1374389535	@ tmp174,
	movt	lr, #:upper16:1374389535	@ tmp174,
	mov	sl, #100	@ tmp176,
	mov	r0, #2	@,
	umull	r3, r2, lr, ip	@, tmp173, tmp174, <variable>.image_id
	movw	r1, #:lower16:.LC33	@,
	mov	r3, fp	@, PicBufID
	movt	r1, #:upper16:.LC33	@,
	mov	r7, r2, lsr #5	@ tmp171, tmp173,
	mls	r2, sl, r7, ip	@, tmp176, tmp171, <variable>.image_id
	bl	dprint_vfmw	@
	mov	r0, r5	@, ChanID
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L443	@
.L460:
	add	r1, sl, r3	@ tmp189, tmp178, tmp180
	str	fp, [r4, #176]	@ PicBufID, <variable>.image_id
	add	r0, r1, #976	@, tmp189,
	mov	r1, r4	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.36105,
	bne	.L447	@,
	movw	r2, #19174	@ tmp193,
	mov	r0, #11	@,
	mla	fp, r2, r5, fp	@ tmp194, tmp193, ChanID, PicBufID
	mov	r8, #2	@ tmp200,
	add	r9, sl, fp, asl #2	@, tmp198, tmp178, tmp194,
	str	r8, [r9, #720]	@ tmp200, <variable>.LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L448	@,
	bl	OSAL_GetTimeInMs	@
	movw	r9, #:lower16:.LANCHOR1	@ tmp201,
	movt	r9, #:upper16:.LANCHOR1	@ tmp201,
	movw	r8, #:lower16:g_TraceFramePeriod	@ tmp208,
	add	sl, r9, r5, asl #2	@, tmp204, tmp201, ChanID,
	movt	r8, #:upper16:g_TraceFramePeriod	@ tmp208,
	ldr	r1, [sl, #4032]	@ tmp207, last_rec_pos_time
	ldr	r3, [r8, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp206, tmp207, currtime
	cmp	ip, r3	@ tmp206, g_TraceFramePeriod
	strhi	r0, [sl, #4032]	@ currtime, last_rec_pos_time
	b	.L448	@
	.fnend
	.size	DNR_ProcessDnrImage, .-DNR_ProcessDnrImage
	.align	2
	.global	DNR_ProcessDnrReturn
	.type	DNR_ProcessDnrReturn, %function
DNR_ProcessDnrReturn:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:76696	@ tmp144,
	movt	r3, #:upper16:76696	@ tmp144,
	movw	ip, #:lower16:.LANCHOR0	@ tmp221,
	movt	ip, #:upper16:.LANCHOR0	@ tmp221,
	mul	r3, r3, r0	@ tmp143, tmp144, ChanID
	movw	r2, #:lower16:76656	@ tmp148,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movt	r2, #:upper16:76656	@ tmp148,
	add	r4, r3, ip	@ tmp145, tmp143, tmp221
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r2, [r4, r2]	@ D.36155, <variable>.DNRDataSourceFlag
	ldr	r1, [r4, #452]	@ PicBufID, <variable>.CurImageBufID
	cmp	r2, #0	@ D.36155,
	bne	.L462	@,
	mov	r4, #392	@ tmp156,
	mla	r1, r4, r1, r3	@ tmp159, tmp156, PicBufID, tmp143
	add	r3, r1, ip	@ tmp160, tmp159, tmp221
	add	r1, r3, #26368	@ pLogic, tmp160,
	add	r1, r1, #72	@ pLogic, pLogic,
.L463:
	cmp	r0, #3	@ ChanID,
	bhi	.L474	@,
	ldr	r3, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, #0	@ <variable>.image_width,
	beq	.L475	@,
	cmp	r2, #0	@ D.36155,
	beq	.L476	@,
	cmp	r2, #1	@ D.36155,
	bne	.L471	@,
	movw	r3, #:lower16:76696	@ tmp198,
	movt	r3, #:upper16:76696	@ tmp198,
	movw	r6, #:lower16:76656	@ tmp196,
	movt	r6, #:upper16:76656	@ tmp196,
	mla	ip, r3, r0, ip	@ tmp199, tmp198, ChanID, tmp221
	add	r5, ip, #75776	@ tmp200, tmp199,
	add	r5, r5, #880	@ tmp200, tmp200,
	ldr	r3, [r5, #4]	@ <variable>.DNRCaptureStartFlag, <variable>.DNRCaptureStartFlag
	cmp	r3, #1	@ <variable>.DNRCaptureStartFlag,
	bne	.L471	@,
	movw	r2, #:lower16:g_event_report	@ tmp216,
	movt	r2, #:upper16:g_event_report	@ tmp216,
	mov	r4, #0	@ tmp208,
	str	r4, [ip, r6]	@ tmp208, <variable>.DNRDataSourceFlag
	ldr	r3, [r2, #0]	@ g_event_report.574, g_event_report
	str	r4, [r5, #4]	@ tmp208, <variable>.DNRCaptureStartFlag
	cmp	r3, r4	@ g_event_report.574,
	beq	.L470	@,
	add	r2, sp, #8	@ tmp217,,
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #21	@,
	blx	r3	@ g_event_report.574
	mov	r0, r4	@ D.36166, tmp208
.L465:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L462:
	cmp	r2, #1	@ D.36155,
	bne	.L464	@,
	movw	r3, #:lower16:76680	@ tmp163,
	movt	r3, #:upper16:76680	@ tmp163,
	ldr	r1, [r4, r3]	@ pLogic, <variable>.pCaptureImageOut
	b	.L463	@
.L476:
	movw	r3, #:lower16:76696	@ tmp177,
	movt	r3, #:upper16:76696	@ tmp177,
	mla	ip, r3, r0, ip	@ tmp178, tmp177, ChanID, tmp221
	ldrsb	r3, [ip, #8]	@ <variable>.DecChanRstFlag, <variable>.DecChanRstFlag
	cmp	r3, #1	@ <variable>.DecChanRstFlag,
	streq	r2, [ip, #24]	@ D.36155, <variable>.NeedStartAgain
	moveq	r0, r2	@ D.36166, D.36155
	beq	.L465	@,
	ldr	r2, [ip, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r2, #0	@ <variable>.NeedStartAgain,
	beq	.L477	@,
.L470:
	mov	r0, #0	@ D.36166,
	b	.L465	@
.L471:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36166,
	b	.L465	@
.L464:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36166,
	b	.L465	@
.L477:
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@ D.36183,
	movne	r0, #0	@ D.36166,
	b	.L465	@
.L474:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2119	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36166,
	b	.L465	@
.L475:
	mov	r0, r3	@, <variable>.image_width
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2120	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC38	@,
	movt	r3, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36166,
	b	.L465	@
	.fnend
	.size	DNR_ProcessDnrReturn, .-DNR_ProcessDnrReturn
	.align	2
	.global	DNR_Fsp_ShowPic
	.type	DNR_Fsp_ShowPic, %function
DNR_Fsp_ShowPic:
	.fnstart
.LFB1641:
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
	ldr	ip, [r2, #456]	@ D.35968, <variable>.s32ValidImgNum
	cmp	ip, #0	@ D.35968,
	ble	.L479	@,
	ldr	r2, [r2, #720]	@ <variable>.LogicImageIsUsed, <variable>.LogicImageIsUsed
	cmp	r2, #1	@ <variable>.LogicImageIsUsed,
	movls	r4, #0	@ i,
	bls	.L481	@,
	tst	ip, #1	@ D.35968,
	add	r4, r8, #8	@ tmp158, tmp239,
	add	r3, r4, r3	@ ivtmp.2018, tmp158, tmp146
	mov	r4, #0	@ i,
	bne	.L482	@,
	ldr	lr, [r3, #716]	@ D.35965, <variable>.LogicImageIsUsed
	mov	r4, #1	@ i,
	add	r3, r3, #4	@ ivtmp.2018, ivtmp.2018,
	cmp	lr, r4	@ D.35965,
	bhi	.L482	@,
.L481:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5, #0]	@ i,* pPicBufID
	beq	.L484	@,
	ldr	r3, [r0, #4]	@ D.35973, <variable>.get_frame
	cmp	r3, #0	@ D.35973,
	beq	.L484	@,
	movw	lr, #19174	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp161,
	mla	ip, lr, r7, r4	@ tmp164, tmp163, ChanID, i
	movt	r5, #:upper16:.LANCHOR0	@ tmp161,
	add	r6, ip, #178	@ tmp165, tmp164,
	add	r6, r8, r6, asl #2	@, tmp168, tmp239, tmp165,
	ldr	r0, [r6, #8]	@ tmp170, <variable>.LogicImageIsUsed
	cmp	r0, #0	@ tmp170,
	beq	.L496	@,
.L484:
	movw	r0, #19174	@ tmp229,
	mov	r2, #1	@ tmp236,
	mla	r7, r0, r7, r4	@ tmp230, tmp229, ChanID, i
	mov	r0, #0	@ D.35987,
	add	r8, r8, r7, asl #2	@, tmp234, tmp239, tmp230,
	str	r2, [r8, #720]	@ tmp236, <variable>.LogicImageIsUsed
	b	.L486	@
.L485:
	ldr	r1, [r3, #716]	@ D.35965, <variable>.LogicImageIsUsed
	add	r3, r2, #4	@ ivtmp.2018, tmp243,
	cmp	r1, #1	@ D.35965,
	bls	.L481	@,
	ldr	r1, [r2, #716]	@ D.35965, <variable>.LogicImageIsUsed
	add	r4, r4, #1	@ i, i,
	cmp	r1, #1	@ D.35965,
	bls	.L481	@,
.L482:
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ tmp243, ivtmp.2018,
	cmp	r4, ip	@ i, D.35968
	blt	.L485	@,
.L479:
	mvn	r0, #0	@ D.35987,
.L486:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L496:
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
	blx	r3	@ D.35973
	cmp	r0, #0	@ D.35984
	bne	.L479	@,
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
	b	.L486	@
	.fnend
	.size	DNR_Fsp_ShowPic, .-DNR_Fsp_ShowPic
	.align	2
	.global	DNR_Get2DFrameStore
	.type	DNR_Get2DFrameStore, %function
DNR_Get2DFrameStore:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #:lower16:76696	@ tmp145,
	movw	r4, #:lower16:.LANCHOR0	@ tmp197,
	movt	r3, #:upper16:76696	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp197,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pPicBufID, pPicBufID
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r3, r3, r0, r4	@ tmp146, tmp145, NextInstId, tmp197
	add	r1, r3, #440	@ tmp147, tmp146,
	ldr	r2, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r2, #1	@ <variable>.s321DFrameIsProc,
	movne	r0, #1	@ D.35596,
	beq	.L504	@,
.L499:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L504:
	ldr	r2, [r1, #4]	@ D.35583, <variable>.s32OldImgWidth
	ldr	r7, [r3, #192]	@ Width, <variable>.Cur1DImage.image_width
	ldr	r8, [r3, #196]	@ Height, <variable>.Cur1DImage.image_height
	cmp	r2, r7	@ D.35583, Width
	beq	.L505	@,
.L500:
	movw	r1, #:lower16:g_event_report	@ tmp174,
	movt	r1, #:upper16:g_event_report	@ tmp174,
	ldr	r3, [r1, #0]	@ g_event_report.513, g_event_report
	cmp	r3, #0	@ g_event_report.513,
	beq	.L502	@,
	movw	r1, #:lower16:76696	@ tmp178,
	movt	r1, #:upper16:76696	@ tmp178,
	strh	r2, [sp, #0]	@ movhi	@ D.35583, para
	mov	r0, r5	@, NextInstId
	mla	lr, r1, r5, r4	@ tmp179, tmp178, NextInstId, tmp197
	strh	r7, [sp, #4]	@ movhi	@ Width, para
	strh	r8, [sp, #6]	@ movhi	@ Height, para
	mov	r1, #8	@,
	mov	r2, sp	@,
	ldr	ip, [lr, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	strh	ip, [sp, #2]	@ movhi	@ <variable>.s32OldImgHeight, para
	blx	r3	@ g_event_report.513
.L502:
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	mla	r4, r2, r5, r4	@ tmp187, tmp186, NextInstId, tmp197
	str	r8, [r4, #448]	@ Height, <variable>.s32OldImgHeight
	str	r7, [r4, #444]	@ Width, <variable>.s32OldImgWidth
.L501:
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Fsp_ShowPic	@
	subs	r0, r0, #0	@ D.35596,,
	movne	r0, #1	@ D.35596
	b	.L499	@
.L505:
	ldr	r0, [r3, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r0, r8	@ <variable>.s32OldImgHeight, Height
	bne	.L500	@,
	b	.L501	@
	.fnend
	.size	DNR_Get2DFrameStore, .-DNR_Get2DFrameStore
	.align	2
	.global	DNR_InformDecChanReset
	.type	DNR_InformDecChanReset, %function
DNR_InformDecChanReset:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:76696	@ tmp155,
	movt	r6, #:upper16:76696	@ tmp155,
	movw	fp, #:lower16:.LANCHOR0	@ tmp306,
	movt	fp, #:upper16:.LANCHOR0	@ tmp306,
	movw	ip, #:lower16:76640	@ tmp182,
	mul	r6, r6, r0	@ tmp154, tmp155, ChanID
	movt	ip, #:upper16:76640	@ tmp182,
	movw	r3, #:lower16:76632	@ tmp196,
	movt	r3, #:upper16:76632	@ tmp196,
	movw	lr, #51528	@ tmp175,
	mov	r5, #0	@ tmp166,
	add	r8, r6, fp	@ tmp156, tmp154, tmp306
	.pad #444
	sub	sp, sp, #444	@,,
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
	addeq	r0, fp, #8	@, tmp306,
	streq	r0, [sp, #8]	@, %sfp
	beq	.L507	@,
	ldr	r0, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	cmp	r0, #0	@ <variable>.release_frame,
	addeq	r1, fp, #8	@, tmp306,
	streq	r1, [sp, #8]	@, %sfp
	beq	.L507	@,
	ldr	r3, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r3, #0	@ <variable>.s32ValidImgNum,
	addle	r2, fp, #8	@, tmp306,
	strle	r2, [sp, #8]	@, %sfp
	ble	.L507	@,
	add	r1, r6, #26368	@ tmp225, tmp154,
	add	r9, fp, #8	@, tmp306,
	add	r7, r1, #112	@ tmp225, tmp225,
	str	r9, [sp, #8]	@, %sfp
	add	r7, r9, r7	@ ivtmp.2091,, tmp225
	add	r6, r9, r6	@ ivtmp.2090,, tmp154
	add	r8, r8, #456	@ tmp322, tmp156,
	add	r9, sp, #420	@ tmp318,,
	b	.L509	@
.L508:
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.2091, ivtmp.2091,
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	ble	.L507	@,
.L509:
	ldr	ip, [r6, #712]	@ tmp227, <variable>.LogicImageIsUsed
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.2090, ivtmp.2090,
	cmp	ip, #0	@ tmp227,
	beq	.L508	@,
	ldr	r3, [r7, #0]	@ <variable>.luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, ChanID
	ldr	lr, [r7, #72]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	mov	r1, r9	@, tmp318
	add	r7, r7, #392	@ ivtmp.2091, ivtmp.2091,
	str	r3, [sp, #424]	@ <variable>.luma_2d_vir_addr, ExtFrame.VirAddr
	str	lr, [sp, #420]	@ <variable>.luma_2d_phy_addr, ExtFrame.PhyAddr
	ldr	r2, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	blx	r2	@ <variable>.release_frame
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	bgt	.L509	@,
.L507:
	movw	r2, #:lower16:76696	@ tmp242,
	movt	r2, #:upper16:76696	@ tmp242,
	mul	r1, r2, r4	@ tmp241, tmp242, ChanID
	add	r2, r1, fp	@ tmp243, tmp241, tmp306
	add	r3, r2, #75776	@ tmp244, tmp243,
	add	r3, r3, #904	@ tmp244, tmp244,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L535	@,
.L510:
	ldr	r1, [sp, #8]	@, %sfp
	movw	ip, #:lower16:76696	@ tmp263,
	movt	ip, #:upper16:76696	@ tmp263,
	mov	r2, #0	@ i.2100,
	mov	r0, r2	@ tmp307, i.2100
	mla	r4, ip, r4, r1	@ ivtmp.2080, tmp263, ChanID,
.L513:
	ldr	r1, [r4, #712]	@ tmp300, <variable>.LogicImageIsUsed
	add	r3, r4, #4	@ tmp324, ivtmp.2080,
	add	r2, r2, #1	@ tmp323, i.2100,
	cmp	r1, #3	@ tmp300,
	strne	r0, [r4, #712]	@ tmp307, <variable>.LogicImageIsUsed
	ldr	r4, [r3, #712]	@ tmp328, <variable>.LogicImageIsUsed
	add	r2, r2, #1	@ i.2100, tmp323,
	cmp	r4, #3	@ tmp328,
	strne	r0, [r3, #712]	@ tmp307, <variable>.LogicImageIsUsed
	cmp	r2, #64	@ i.2100,
	add	r4, r3, #4	@ ivtmp.2080, tmp324,
	bne	.L513	@,
	add	sp, sp, #444	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L535:
	movw	r6, #19174	@ tmp311,
	ldr	sl, [sp, #8]	@, %sfp
	mul	r8, r6, r4	@, tmp311, ChanID
	add	r5, r1, #968	@ tmp250, tmp241,
	str	fp, [sp, #16]	@ tmp306, %sfp
	add	r9, sp, #24	@ tmp309,,
	str	r2, [sp, #20]	@ tmp243, %sfp
	mov	r6, #0	@ i.2098,
	mov	fp, r3	@ tmp317, tmp317
	str	r8, [sp, #12]	@, %sfp
	add	r8, sl, r5	@ D.34788,, tmp250
	movw	sl, #:lower16:1374389535	@ tmp310,
	movt	sl, #:upper16:1374389535	@ tmp310,
	b	.L519	@
.L537:
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r2, [sp, #168]	@ stimage.image_width, stimage.image_width
	add	r0, r1, r7	@ tmp269,, RelImgID
	ldr	r3, [sp, #16]	@, %sfp
	add	r7, r0, #178	@ tmp270, tmp269,
	ldr	lr, [fp, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	r7, r3, r7, asl #2	@, tmp273,, tmp270,
	cmp	r2, lr	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	str	r5, [r7, #8]	@ tmp251, <variable>.LogicImageIsUsed
	bhi	.L515	@,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	ip, [sp, #172]	@ stimage.image_height, stimage.image_height
	add	lr, r0, #75776	@ tmp289,,
	add	r2, lr, #912	@ tmp289, tmp289,
	ldr	r3, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	ip, r3	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L515	@,
	ldr	r1, [sp, #216]	@ temp.2102, stimage.p_usrdat
	cmp	r1, #0	@ temp.2102,
	beq	.L516	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r5, [sp, #216]	@ tmp251, stimage.p_usrdat
.L516:
	ldr	r1, [sp, #220]	@ temp.2103, stimage.p_usrdat
	cmp	r1, #0	@ temp.2103,
	beq	.L517	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp293,
	str	r1, [sp, #220]	@ tmp293, stimage.p_usrdat
.L517:
	ldr	r1, [sp, #224]	@ temp.2104, stimage.p_usrdat
	cmp	r1, #0	@ temp.2104,
	beq	.L518	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	ip, #0	@ tmp294,
	str	ip, [sp, #224]	@ tmp294, stimage.p_usrdat
.L518:
	ldr	r1, [sp, #228]	@ D.34813, stimage.p_usrdat
	cmp	r1, #0	@ D.34813,
	beq	.L515	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r3, #0	@ tmp295,
	str	r3, [sp, #228]	@ tmp295, stimage.p_usrdat
.L515:
	add	r6, r6, #1	@ i.2098, i.2098,
	cmp	r6, #64	@ i.2098,
	beq	.L510	@,
.L519:
	mov	r0, r8	@, D.34788
	mov	r1, r9	@, tmp309
	mov	r5, #0	@ tmp251,
	str	r5, [sp, #436]	@ tmp251, TopPhyAddr
	str	r5, [sp, #432]	@ tmp251, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@ ret,
	bne	.L511	@,
	ldr	r1, [sp, #200]	@ D.34792, stimage.image_id
	mov	r7, #100	@ tmp258,
	umull	r2, r0, sl, r1	@, tmp255, tmp310, D.34792
	mov	lr, r0, lsr #5	@ RelImgID, tmp255,
	mls	r7, r7, lr, r1	@ RelImgID, tmp258, RelImgID, D.34792
	cmp	r7, #63	@ RelImgID,
	bgt	.L536	@,
	mov	r0, r8	@, D.34788
	add	r2, sp, #436	@,,
	add	r3, sp, #432	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@ ret.2096,
	beq	.L537	@,
	ldr	ip, [sp, #112]	@ stimage.top_luma_phy_addr, stimage.top_luma_phy_addr
	mov	r3, r0	@, ret.2096
	ldr	lr, [sp, #200]	@ stimage.image_id, stimage.image_id
	movw	r1, #:lower16:.LC40	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC40	@,
	mov	r0, #31	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	b	.L515	@
.L511:
	mov	r3, r0	@, ret
	movw	r1, #:lower16:.LC41	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC41	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L510	@
.L536:
	mov	r0, r5	@, tmp251
	mov	r2, r7	@, RelImgID
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	b	.L510	@
	.fnend
	.size	DNR_InformDecChanReset, .-DNR_InformDecChanReset
	.align	2
	.global	DNR_ProcessLastFrameError
	.type	DNR_ProcessLastFrameError, %function
DNR_ProcessLastFrameError:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	movw	r7, #:lower16:76696	@ tmp141,
	movt	r7, #:upper16:76696	@ tmp141,
	movw	r4, #:lower16:.LANCHOR0	@ tmp188,
	movt	r4, #:upper16:.LANCHOR0	@ tmp188,
	mul	r7, r7, r5	@ tmp140, tmp141, NextInstId
	movw	r3, #:lower16:1374389535	@ tmp147,
	movt	r3, #:upper16:1374389535	@ tmp147,
	add	r2, r7, r4	@ tmp142, tmp140, tmp188
	ldr	r1, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r1	@, tmp146, tmp147, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp149,
	mov	r3, r3, lsr #5	@ tmp144, tmp146,
	mls	r1, ip, r3, r1	@ tmp150, tmp149, tmp144, <variable>.Cur1DImage.image_id
	add	r1, r1, #2	@ tmp151, tmp150,
	cmp	r0, r1	@, tmp151
	addne	r6, r4, #8	@ tmp189, tmp188,
	beq	.L546	@,
.L539:
	movw	ip, #:lower16:76696	@ tmp178,
	movt	ip, #:upper16:76696	@ tmp178,
	mov	r0, r5	@, NextInstId
	mul	r5, ip, r5	@ tmp177, tmp178, NextInstId
	add	lr, r5, #40	@ tmp179, tmp177,
	add	r5, r5, r4	@ tmp185, tmp177, tmp188
	add	r1, r6, lr	@, tmp189, tmp179
	bl	VCTRL_ReleaseChanImage	@
	mov	r1, #0	@ tmp187,
	str	r1, [r5, #440]	@ tmp187, <variable>.s321DFrameIsProc
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L546:
	ldr	r3, [r2, #196]	@, <variable>.Cur1DImage.image_height
	mov	r0, #2	@,
	ldr	r2, [r2, #192]	@, <variable>.Cur1DImage.image_width
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	add	r6, r4, #8	@ tmp189, tmp188,
	bl	dprint_vfmw	@
	add	r0, r7, #968	@ tmp171, tmp140,
	add	r0, r6, r0	@, tmp189, tmp171
	bl	IMGQUE_GetLastImageID	@
	movw	r2, #:lower16:g_event_report	@ tmp173,
	movt	r2, #:upper16:g_event_report	@ tmp173,
	ldr	r3, [r2, #0]	@ g_event_report.474, g_event_report
	cmp	r3, #0	@ g_event_report.474,
	beq	.L540	@,
	cmn	r0, #1	@ LastFrameId.2129,
	add	r2, sp, #8	@ tmp174,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.475,
	str	r0, [r2, #-4]!	@ iftmp.475, para
	mov	r0, r5	@, NextInstId
	blx	r3	@ g_event_report.474
.L540:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L539	@
	.fnend
	.size	DNR_ProcessLastFrameError, .-DNR_ProcessLastFrameError
	.align	2
	.global	DNR_PrecessChanLastFrame
	.type	DNR_PrecessChanLastFrame, %function
DNR_PrecessChanLastFrame:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:76696	@ tmp147,
	movt	r5, #:upper16:76696	@ tmp147,
	movw	r7, #:lower16:.LANCHOR0	@ tmp144,
	movt	r7, #:upper16:.LANCHOR0	@ tmp144,
	.pad #12
	sub	sp, sp, #12	@,,
	mul	r5, r5, r0	@ tmp146, tmp147, NextInstId
	add	r6, r7, #8	@ tmp145, tmp144,
	mov	r4, r0	@ NextInstId, NextInstId
	add	r8, r5, #40	@ tmp148, tmp146,
	add	r8, r6, r8	@ D.35414, tmp145, tmp148
	mov	r1, r8	@, D.35414
	bl	VCTRL_GetChanImage	@
	subs	sl, r0, #0	@ D.35415,
	bne	.L548	@,
	add	r5, r5, r7	@ tmp153, tmp146, tmp144
	add	r3, r5, #75776	@ tmp154, tmp153,
	add	r3, r3, #856	@ tmp154, tmp154,
	ldr	r6, [r3, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	cmp	r6, #1	@ <variable>.u32BackwardOptimizeFlag,
	beq	.L549	@,
	ldr	r2, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r1, #1	@ tmp162,
	str	r1, [r5, #440]	@ tmp162, <variable>.s321DFrameIsProc
	add	r5, r5, #192	@ tmp168, tmp153,
	cmp	r2, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L555	@,
	ldr	r0, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r0, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L555	@,
	ldr	ip, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L561	@,
.L553:
	mov	r0, #0	@ D.35426,
.L552:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L555:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, #1	@ D.35426,
	b	.L552	@
.L548:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L553	@,
	movw	r3, #1244	@,
	ldr	r2, .L563	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	add	r0, r5, #968	@ tmp228, tmp146,
	add	r0, r6, r0	@, tmp145, tmp228
	bl	IMGQUE_GetLastImageID	@
	movw	r1, #:lower16:g_event_report	@ tmp230,
	movt	r1, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r1, #0]	@ g_event_report.504, g_event_report
	cmp	r3, #0	@ g_event_report.504,
	beq	.L557	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp231,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.505,
	str	r0, [r2, #-4]!	@ iftmp.505, para
	mov	r0, r4	@, NextInstId
	blx	r3	@ g_event_report.504
.L557:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	mov	r0, #0	@ D.35426,
	b	.L552	@
.L549:
	ldr	r2, [r5, #116]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ <variable>.Cur1DImage.DispEnableFlag,
	bne	.L562	@,
	ldr	lr, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	r0, r5, #192	@ tmp204, tmp153,
	str	r2, [r5, #440]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.s321DFrameIsProc
	cmp	lr, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L555	@,
	ldr	r2, [r0, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r2, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L555	@,
	ldr	r3, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L553	@,
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.35414
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L553	@,
	mov	r0, sl	@, D.35415
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.35426, D.35415
	b	.L552	@
.L562:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r6	@ D.35426, <variable>.u32BackwardOptimizeFlag
	b	.L552	@
.L561:
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.35414
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L553	@,
	mov	r0, sl	@, D.35415
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.35426, D.35415
	b	.L552	@
.L564:
	.align	2
.L563:
	.word	.LANCHOR2+92
	.fnend
	.size	DNR_PrecessChanLastFrame, .-DNR_PrecessChanLastFrame
	.align	2
	.global	DNR_PutYuv
	.type	DNR_PutYuv, %function
DNR_PutYuv:
	.fnstart
.LFB1636:
	@ args = 24, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #116
	sub	sp, sp, #116	@,,
	mov	r5, r1	@ pLuma, pLuma
	add	r1, sp, #108	@,,
	mov	fp, r3	@ PicHeight, PicHeight
	str	r2, [sp, #88]	@ PicWidth, %sfp
	mov	r4, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r3, r0, #0	@ D.35751,
	mvnne	r0, #0	@ D.35754,
	beq	.L571	@,
.L567:
	add	sp, sp, #116	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L571:
	ldr	r6, [sp, #152]	@, Stride
	movw	sl, #:lower16:76696	@ tmp159,
	ldr	r8, [sp, #108]	@, PicBufID
	movt	sl, #:upper16:76696	@ tmp159,
	mov	r1, #392	@ tmp157,
	movw	lr, #26488	@,
	mul	r7, fp, r6	@ D.35763, PicHeight,
	movw	r6, #:lower16:.LANCHOR0	@ tmp659,
	mul	r2, sl, r4	@, tmp159, ChanID
	movt	r6, #:upper16:.LANCHOR0	@ tmp659,
	mla	sl, r1, r8, r2	@ tmp160, tmp157,,
	mov	r1, r5	@, pLuma
	add	r9, r7, r7, asl #1	@, tmp580, D.35763, D.35763,
	str	r8, [sp, #32]	@, %sfp
	add	r5, sl, r6	@ tmp170, tmp160, tmp659
	str	r2, [sp, #92]	@, %sfp
	add	r0, r9, r9, lsr #31	@, tmp582, tmp580, tmp580,
	add	r8, r5, #26368	@, tmp170,
	ldr	ip, [r5, lr]	@, <variable>.luma_2d_vir_addr
	movw	r2, #26560	@ tmp258,
	mov	lr, r0, asr #1	@, tmp582,
	str	lr, [sp, #96]	@, %sfp
	mov	r9, r8	@,
	add	r0, r9, #160	@,,
	str	ip, [sp, #28]	@, %sfp
	add	ip, r9, #144	@, tmp12,
	ldr	lr, [r5, r2]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	add	r2, r9, #192	@, tmp2,
	str	r8, [sp, #52]	@ tmp9, %sfp
	str	r8, [sp, #56]	@ tmp12, %sfp
	str	r8, [sp, #60]	@, %sfp
	str	r8, [sp, #64]	@ tmp2, %sfp
	str	r8, [sp, #68]	@, %sfp
	str	r8, [sp, #72]	@ tmp9, %sfp
	str	r8, [sp, #76]	@ tmp12, %sfp
	str	r8, [sp, #80]	@, %sfp
	str	r8, [sp, #84]	@ tmp2, %sfp
	add	r8, r8, #248	@,,
	str	ip, [sp, #44]	@, %sfp
	str	r8, [sp, #36]	@, %sfp
	add	r8, r9, #136	@,,
	ldr	ip, [sp, #56]	@, %sfp
	ldr	r9, [sp, #52]	@, %sfp
	str	r2, [sp, #20]	@, %sfp
	ldr	r2, [sp, #60]	@, %sfp
	str	r8, [sp, #40]	@, %sfp
	add	r8, r9, #168	@,,
	str	r0, [sp, #48]	@, %sfp
	add	r9, r2, #120	@,,
	add	r0, ip, #104	@,,
	str	r8, [sp, #52]	@, %sfp
	str	r0, [sp, #56]	@, %sfp
	ldr	r8, [sp, #64]	@, %sfp
	ldr	r0, [sp, #68]	@, %sfp
	str	r9, [sp, #60]	@, %sfp
	add	ip, r8, #176	@,,
	ldr	r9, [sp, #72]	@, %sfp
	add	r2, r0, #216	@,,
	str	ip, [sp, #64]	@, %sfp
	add	r8, r9, #224	@,,
	str	r2, [sp, #68]	@, %sfp
	str	r8, [sp, #72]	@, %sfp
	ldr	ip, [sp, #76]	@, %sfp
	ldr	r2, [sp, #80]	@, %sfp
	ldr	r8, [sp, #84]	@, %sfp
	add	r0, ip, #232	@,,
	add	r9, r2, #240	@,,
	str	r9, [sp, #80]	@, %sfp
	add	ip, r8, #208	@,,
	ldrd	r8, [sp, #168]	@,,
	str	r0, [sp, #76]	@, %sfp
	add	r0, sl, #26368	@, tmp160,
	movw	sl, #26464	@,
	str	ip, [sp, #84]	@, %sfp
	add	r2, r0, #64	@,,
	ldr	r0, [sp, #28]	@, %sfp
	str	r2, [sp, #100]	@, %sfp
	add	ip, r7, lr	@ tmp286, D.35763, <variable>.luma_2d_phy_addr
	ldr	r2, [sp, #96]	@, %sfp
	strd	r8, [r5, sl]	@, tmp170,
	movw	sl, #26544	@ tmp347,
	str	lr, [r5, sl]	@ <variable>.luma_2d_phy_addr, <variable>.luma_phy_addr
	ldr	r8, [sp, #100]	@, %sfp
	ldr	r9, .L572	@,
	add	sl, r9, r8	@,,
	ldr	r9, [sp, #20]	@, %sfp
	str	sl, [sp, #100]	@, %sfp
	str	ip, [r9, #4]	@ tmp286, <variable>.chrom_2d_phy_addr
	ldr	r8, [sp, #156]	@, DispPicWidth
	ldr	sl, [sp, #88]	@, %sfp
	mov	r9, r8, lsr #1	@ tmp508,,
	movw	r8, #26584	@ tmp454,
	str	sl, [r5, r8]	@, <variable>.image_width
	ldr	sl, [sp, #160]	@, DispPicHeight
	mov	r8, sl, lsr #1	@ tmp528,,
	ldr	sl, [sp, #68]	@, %sfp
	str	fp, [sl, #4]	@ PicHeight, <variable>.image_height
	ldr	fp, [sp, #28]	@, %sfp
	add	sl, fp, r7	@ tmp384,, D.35763
	movw	r7, #26600	@ tmp490,
	str	r9, [r5, r7]	@ tmp508, <variable>.disp_center_x
	mov	r7, #1	@ tmp217,
	ldr	fp, [sp, #60]	@, %sfp
	str	sl, [fp, #4]	@ tmp384, <variable>.chrom_2d_vir_addr
	ldr	r9, [sp, #152]	@, Stride
	add	fp, r9, lr	@ tmp306,, <variable>.luma_2d_phy_addr
	ldr	r9, [sp, #76]	@, %sfp
	str	r8, [r9, #4]	@ tmp528, <variable>.disp_center_y
	ldr	r8, [sp, #152]	@, Stride
	add	r9, r8, ip	@ tmp326,, tmp286
	movw	r8, #26536	@ tmp288,
	str	fp, [r5, r8]	@ tmp306, <variable>.btm_luma_phy_addr
	ldr	fp, [sp, #52]	@, %sfp
	str	r9, [fp, #4]	@ tmp326, <variable>.btm_chrom_phy_addr
	ldr	r8, [sp, #152]	@, Stride
	ldr	r9, [sp, #80]	@, %sfp
	str	r8, [r9, #4]	@, <variable>.image_stride
	movw	r8, #26616	@ tmp164,
	ldr	fp, [sp, #36]	@, %sfp
	str	r3, [fp, #4]	@ D.35751, <variable>.error_level
	movw	fp, #26440	@ tmp173,
	ldr	r9, [sp, #32]	@, %sfp
	str	r9, [r5, r8]	@, <variable>.image_id
	ldrd	r8, [sp, #168]	@,,
	strd	r8, [r5, fp]	@, tmp170, tmp173
	movw	fp, #26448	@ tmp182,
	strd	r8, [r5, fp]	@, tmp170, tmp182
	movw	fp, #26456	@ tmp191,
	strd	r8, [r5, fp]	@, tmp170, tmp191
	movw	r9, #26512	@ tmp219,
	ldr	fp, [sp, #40]	@, %sfp
	movw	r8, #26520	@ tmp239,
	str	r3, [r5, r9]	@ D.35751, <variable>.DispFrameDistance
	movw	r9, #26528	@ tmp249,
	str	r7, [fp, #4]	@ tmp217, <variable>.DispEnableFlag
	ldr	fp, [sp, #44]	@, %sfp
	str	r3, [r5, r8]	@ D.35751, <variable>.GopNum
	movw	r8, #26472	@ tmp328,
	str	lr, [r5, r9]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r3, [fp, #4]	@ D.35751, <variable>.DistanceBeforeFirstFrame
	ldr	fp, [sp, #48]	@, %sfp
	str	ip, [fp, #4]	@ tmp286, <variable>.top_chrom_phy_addr
	ldr	r9, [sp, #28]	@, %sfp
	str	r9, [r5, r8]	@, <variable>.luma_vir_addr
	movw	r8, #26592	@ tmp472,
	ldr	lr, [sp, #56]	@, %sfp
	str	sl, [lr, #4]	@ tmp384, <variable>.chrom_vir_addr
	movw	sl, #26568	@ tmp444,
	ldr	fp, [sp, #64]	@, %sfp
	str	r3, [r5, sl]	@ D.35751, <variable>.is_fld_save
	movw	sl, #26648	@ tmp559,
	str	ip, [fp, #4]	@ tmp286, <variable>.chrom_phy_addr
	movw	ip, #26608	@ tmp530,
	ldr	r9, [sp, #156]	@, DispPicWidth
	str	r9, [r5, r8]	@, <variable>.disp_width
	movw	r9, #26488	@,
	ldr	lr, [sp, #72]	@, %sfp
	ldr	fp, [sp, #160]	@, DispPicHeight
	str	r3, [r5, ip]	@ D.35751, <variable>.frame_rate
	movw	r3, #11296	@ tmp577,
	str	r7, [r5, sl]	@ tmp217, <variable>.chroma_idc
	str	fp, [lr, #4]	@, <variable>.disp_height
	ldr	r8, [sp, #84]	@, %sfp
	ldr	fp, .L572	@,
	str	r3, [r8, #4]	@ tmp577, <variable>.format
	bl	memcpy	@
	ldr	r5, [r5, r9]	@ temp.2184, <variable>.luma_2d_vir_addr
	mov	r0, r5	@, temp.2184
	bl	MEM_Vir2Phy	@
	ldr	r2, [sp, #96]	@, %sfp
	mov	r1, r0	@ D.35792,
	mov	r0, r5	@, temp.2184
	bl	KernelFlushCache	@
	ldr	sl, [sp, #92]	@, %sfp
	ldr	r1, [sp, #100]	@, %sfp
	add	r0, sl, #968	@ tmp611,,
	add	r0, fp, r0	@,, tmp611
	bl	IMGQUE_InsertImage	@
	cmp	r0, r7	@,
	beq	.L568	@,
	movw	r1, #:lower16:.LC46	@,
	mov	r0, r7	@, tmp217
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
.L568:
	ldr	r3, [sp, #108]	@ PicBufID, PicBufID
	movw	lr, #19174	@ tmp616,
	ldr	ip, [sp, #32]	@, %sfp
	movw	r7, #:lower16:76696	@ tmp631,
	movt	r7, #:upper16:76696	@ tmp631,
	mov	r1, #392	@ tmp629,
	mla	r0, lr, r4, r3	@ tmp617, tmp616, ChanID, PicBufID
	movw	r3, #26440	@ tmp627,
	mul	r2, r7, r4	@ tmp630, tmp631, ChanID
	movw	r7, #26456	@ tmp647,
	mla	r8, r1, ip, r2	@ tmp632, tmp629,, tmp630
	movw	ip, #26448	@ tmp637,
	add	r9, r6, r0, asl #2	@, tmp622, tmp659, tmp617,
	mov	lr, #2	@ tmp624,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC34	@,
	add	r6, r8, r6	@ tmp633, tmp632, tmp659
	str	lr, [r9, #720]	@ tmp624, <variable>.LogicImageIsUsed
	movt	r1, #:upper16:.LC34	@,
	ldrd	r2, [r3, r6]	@ <variable>.SrcPts, tmp627, tmp633
	ldrd	r8, [r6, r7]	@ <variable>.Usertag, tmp633, tmp647
	ldrd	r6, [r6, ip]	@ <variable>.PTS, tmp633, tmp637
	strd	r8, [sp, #8]	@ <variable>.Usertag,,
	strd	r6, [sp]	@ <variable>.PTS,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_event_report	@ tmp656,
	movt	r3, #:upper16:g_event_report	@ tmp656,
	ldr	r3, [r3, #0]	@ g_event_report.534, g_event_report
	cmp	r3, #0	@ g_event_report.534,
	moveq	r0, r3	@ D.35754, g_event_report.534
	beq	.L567	@,
	ldr	r1, [sp, #100]	@, %sfp
	add	r2, sp, #112	@ tmp657,,
	mov	r0, r4	@, ChanID
	str	r1, [r2, #-8]!	@, para
	mov	r1, #5	@,
	blx	r3	@ g_event_report.534
	mov	r0, #0	@ D.35754,
	b	.L567	@
.L573:
	.align	2
.L572:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_PutYuv, .-DNR_PutYuv
	.align	2
	.global	DNR_SetDnrCfg
	.type	DNR_SetDnrCfg, %function
DNR_SetDnrCfg:
	.fnstart
.LFB1627:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pDnrCfg, pDnrCfg
	mov	r0, r3	@, pDetPara
	mov	r7, r1	@ NextInstId, NextInstId
	mov	r8, r3	@ pDetPara, pDetPara
	mov	r5, r2	@ pImageDnr, pImageDnr
	bl	DetPic	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp310,
	movw	r2, #:lower16:76696	@ tmp150,
	movt	r6, #:upper16:.LANCHOR0	@ tmp310,
	movt	r2, #:upper16:76696	@ tmp150,
	movw	r3, #:lower16:g_eVdmVersion	@ tmp154,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp154,
	mla	r2, r2, r7, r6	@ tmp151, tmp150, NextInstId, tmp310
	str	r0, [r2, #28]	@, <variable>.IsRwzb
	ldr	r1, [sp, #24]	@ SourceImgStoreType, SourceImgStoreType
	strb	r1, [r4, #3]	@ SourceImgStoreType, <variable>.pic_structure
	ldr	r3, [r3, #0]	@ g_eVdmVersion.495, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.495,
	beq	.L590	@,
	cmp	r3, #4	@ g_eVdmVersion.495,
	ldreq	r3, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
.L576:
	mov	r3, r8	@, pDetPara
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	mov	r2, r5	@, pImageDnr
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r0, [r5, #16]	@ D.35247, <variable>.video_standard
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	cmp	r0, #1	@ D.35247,
	ldrb	ip, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	str	r0, [r4, #16]	@ D.35247, <variable>.video_standard
	mla	r3, r2, r7, r6	@ tmp180, tmp179, NextInstId, tmp310
	ldreqb	r0, [r5, #10]	@ zero_extendqisi2	@ <variable>.vc1_profile, <variable>.vc1_profile
	movne	r0, #3	@ tmp173,
	strneb	r0, [r4, #9]	@ tmp173, <variable>.vc1_profile
	streqb	r0, [r4, #9]	@ <variable>.vc1_profile, <variable>.vc1_profile
	ldreq	r0, [r5, #32]	@ <variable>.Rangedfrm, <variable>.Rangedfrm
	streq	r0, [r4, #68]	@ <variable>.Rangedfrm, <variable>.Rangedfrm
	movw	r0, #:lower16:76696	@ tmp197,
	ldr	r1, [r3, #196]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	movt	r0, #:upper16:76696	@ tmp197,
	cmp	ip, #0	@ <variable>.pic_structure,
	movw	r3, #:lower16:g_VdmCharacter	@ tmp311,
	add	r8, r1, #15	@ tmp182, <variable>.Cur1DImage.image_height,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp311,
	mla	r1, r0, r7, r6	@ tmp198, tmp197, NextInstId, tmp310
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, tmp182,
	addne	r8, r8, #1	@ tmp193, tmp192,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, tmp193,
	ldr	ip, [r1, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	str	r8, [r4, #28]	@ CurPicHeightInMb, <variable>.pic_height_in_mb
	add	r2, ip, #15	@ tmp200, <variable>.Cur1DImage.image_width,
	mov	ip, r2, lsr #4	@ D.35266, tmp200,
	str	ip, [r4, #24]	@ D.35266, <variable>.pic_width_in_mb
	mul	r0, ip, r8	@ tmp202, D.35266, CurPicHeightInMb
	mov	r2, ip, asl #4	@ tmp214, D.35266,
	str	r0, [r4, #20]	@ tmp202, <variable>.mbtodec
	ldr	r0, [r1, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	str	r0, [r4, #32]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.dnr_ystaddr_1d
	ldr	r1, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #4	@ g_VdmCharacter,
	movw	r1, #:lower16:76696	@ tmp231,
	addeq	r2, r2, #63	@ tmp215, tmp214,
	addne	r2, r2, #79	@ tmp219, tmp218,
	bic	r0, r2, #63	@ tmp220, tmp219,
	str	r0, [r4, #60]	@ tmp220, <variable>.ddr_stride
	ldrb	ip, [r5, #11]	@ zero_extendqisi2	@ <variable>.use_pic_qp_en, <variable>.use_pic_qp_en
	movt	r1, #:upper16:76696	@ tmp231,
	movw	r2, #:lower16:76656	@ tmp229,
	movt	r2, #:upper16:76656	@ tmp229,
	mul	r1, r1, r7	@ tmp230, tmp231, NextInstId
	strb	ip, [r4, #10]	@ <variable>.use_pic_qp_en, <variable>.use_pic_qp_en
	ldrb	ip, [r5, #9]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	movw	r0, #:lower16:.LANCHOR0	@ tmp228,
	movt	r0, #:upper16:.LANCHOR0	@ tmp228,
	strb	ip, [r4, #4]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	add	ip, r1, r6	@ tmp232, tmp230, tmp310
	ldr	lr, [r5, #20]	@ <variable>.QP_Y, <variable>.QP_Y
	str	lr, [r4, #48]	@ <variable>.QP_Y, <variable>.QP_Y
	ldr	lr, [r5, #24]	@ <variable>.QP_U, <variable>.QP_U
	str	lr, [r4, #52]	@ <variable>.QP_U, <variable>.QP_U
	ldr	lr, [r5, #28]	@ <variable>.QP_V, <variable>.QP_V
	str	lr, [r4, #56]	@ <variable>.QP_V, <variable>.QP_V
	ldr	lr, [ip, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	lr, #1	@ <variable>.DNRDataSourceFlag,
	beq	.L591	@,
	ldr	r2, [sp, #28]	@ PicBufID, PicBufID
	mov	lr, #392	@ tmp254,
	mla	r1, lr, r2, r1	@ tmp257, tmp254, PicBufID, tmp230
	movw	r2, #26560	@ tmp252,
	add	r0, r1, r0	@ tmp258, tmp257, tmp228
	ldr	r1, [r0, r2]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldrb	lr, [ip, #9]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	strb	lr, [r4, #11]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
.L584:
	ldr	r3, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L585	@,
	movw	lr, #:lower16:76696	@ tmp275,
	movt	lr, #:upper16:76696	@ tmp275,
	movw	r2, #:lower16:76624	@ tmp281,
	movt	r2, #:upper16:76624	@ tmp281,
	mla	r1, lr, r7, r6	@ tmp276, tmp275, NextInstId, tmp310
	add	r3, r1, #75776	@ tmp285, tmp276,
	add	lr, r3, #848	@ tmp285, tmp285,
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	strb	ip, [r4, #12]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	r0, [r1, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [r4, #76]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	ldr	ip, [lr, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	ip, [r4, #80]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
.L585:
	mov	r2, r5	@, pImageDnr
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.35308,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r2, #2	@ <variable>.pic_structure,
	movne	r0, #0	@ D.35311,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	lr, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r2, #:lower16:76696	@ tmp304,
	movt	r2, #:upper16:76696	@ tmp304,
	mov	r0, #0	@ D.35311,
	mul	ip, lr, r8	@ tmp295, <variable>.pic_width_in_mb, CurPicHeightInMb
	mla	r6, r2, r7, r6	@ tmp305, tmp304, NextInstId, tmp310
	mov	r3, ip, asl #8	@ tmp299, tmp295,
	add	r8, r3, ip, asl #7	@, tmp300, tmp299, tmp295,
	ldr	r1, [r6, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	add	r8, r8, r1	@ tmp308, tmp300, <variable>.Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ tmp308, <variable>.dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L591:
	movw	r0, #:lower16:76680	@ tmp236,
	movt	r0, #:upper16:76680	@ tmp236,
	ldr	r2, [ip, r0]	@ <variable>.pCaptureImageOut, <variable>.pCaptureImageOut
	ldr	r1, [r2, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldr	lr, [ip, #420]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.Cur1DImage.u32Circumrotate
	strb	lr, [r4, #11]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.s32MirrorEn
	b	.L584	@
.L590:
	ldr	ip, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r0, ip, asl #5	@ tmp162, <variable>.Cur1DImage.image_stride,
	str	r0, [r4, #64]	@ tmp162, <variable>.dnr_stride_1d
	b	.L576	@
	.fnend
	.size	DNR_SetDnrCfg, .-DNR_SetDnrCfg
	.align	2
	.global	DNR_DetNetworkParam
	.type	DNR_DetNetworkParam, %function
DNR_DetNetworkParam:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #48
	sub	sp, sp, #48	@,,
	add	r4, sp, #4	@ tmp220,,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	mov	r1, #44	@,
	mov	r0, r4	@, tmp220
	bl	__memzero	@
	movw	r3, #:lower16:g_eVdmVersion	@ tmp143,
	movt	r3, #:upper16:g_eVdmVersion	@ tmp143,
	ldr	r3, [r3, #0]	@ g_eVdmVersion.481, g_eVdmVersion
	sub	r2, r3, #3	@ tmp144, g_eVdmVersion.481,
	cmp	r2, #1	@ tmp144,
	bls	.L593	@,
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp145,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp145,
	ldr	r0, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r0, #1	@ USE_FF_APT_EN,
	beq	.L601	@,
.L603:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
.L602:
	mov	r1, #0	@ s32SourceImgStoreType,
.L595:
	rsbs	r1, r1, #1	@ prephitmp.2247, s32SourceImgStoreType
	movcc	r1, #0	@ prephitmp.2247
.L597:
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	str	r1, [sp, #44]	@ prephitmp.2247, stDetPara.IsFrameStored
	mov	r0, r4	@, tmp220
	mla	r5, r2, r5, r3	@ tmp180, tmp179, NextInstId, tmp219
	ldr	r2, [r5, #192]	@ D.35090, <variable>.Cur1DImage.image_width
	ldr	r3, [r5, #196]	@ D.35092, <variable>.Cur1DImage.image_height
	ldr	lr, [r5, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	add	r4, r2, #15	@ tmp202, D.35090,
	ldr	ip, [r5, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	add	r1, r3, #15	@ tmp204, D.35092,
	mov	r4, r4, asr #4	@ tmp203, tmp202,
	str	r2, [sp, #24]	@ D.35090, stDetPara.PicWidth
	mov	r1, r1, asr #4	@ tmp205, tmp204,
	str	r4, [sp, #36]	@ tmp203, stDetPara.MbWidth
	str	lr, [sp, #12]	@ <variable>.Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	ip, [sp, #32]	@ <variable>.Cur1DImage.image_stride, stDetPara.PicStride
	str	r1, [sp, #40]	@ tmp205, stDetPara.MbHeight
	str	r3, [sp, #28]	@ D.35092, stDetPara.PicHeight
	bl	DetPic	@
	str	r0, [r5, #404]	@ D.35100, <variable>.Cur1DImage.optm_inf.Rwzb
	str	r0, [r5, #28]	@ D.35100, <variable>.IsRwzb
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L593:
	cmp	r3, #3	@ g_eVdmVersion.481,
	bne	.L596	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp163,
	mov	r1, #1	@ prephitmp.2247,
	mla	ip, lr, r5, r3	@ tmp164, tmp163, NextInstId, tmp219
	ldr	r0, [ip, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r2, r0, asl #5	@ tmp167, <variable>.Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ tmp167, <variable>.dnr_stride_1d
	b	.L597	@
.L601:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp150,
	mla	ip, lr, r5, r3	@ tmp151, tmp150, NextInstId, tmp219
	ldr	r1, [ip, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r1, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r1, [ip, #336]	@ zero_extendqisi2	@ s32SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L595	@,
	b	.L602	@
.L596:
	cmp	r3, #4	@ g_eVdmVersion.481,
	bne	.L603	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	ip, #:lower16:76696	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	ip, #:upper16:76696	@ tmp172,
	mov	r1, #1	@ prephitmp.2247,
	mla	r0, ip, r5, r3	@ tmp173, tmp172, NextInstId, tmp219
	ldr	r2, [r0, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	str	r2, [r6, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
	b	.L597	@
	.fnend
	.size	DNR_DetNetworkParam, .-DNR_DetNetworkParam
	.align	2
	.global	DNR_DSDProcess
	.type	DNR_DSDProcess, %function
DNR_DSDProcess:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movw	r2, #:lower16:76696	@ tmp141,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:76696	@ tmp141,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ NextInstId, NextInstId
	mla	r2, r2, r0, ip	@ tmp142, tmp141, NextInstId, tmp138
	.pad #8
	sub	sp, sp, #8	@,,
	add	r3, r2, #75776	@ tmp143, tmp142,
	add	r3, r3, #904	@ tmp143, tmp143,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L609	@,
.L605:
	mov	r0, #0	@ D.35566,
.L607:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L609:
	ldr	ip, [r2, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	ip, #1	@ <variable>.s321DFrameIsProc,
	movne	r0, #1	@ D.35566,
	bne	.L607	@
.L610:
	add	r6, r2, #75776	@ tmp163, tmp142,
	add	r5, r2, #192	@ tmp157, tmp142,
	add	ip, r6, #912	@ tmp163, tmp163,
	ldr	r3, [r3, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r8, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	r7, [ip, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	ldr	r6, [r2, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	cmp	r6, r3	@ <variable>.Cur1DImage.image_width, <variable>.stDSDParam.s32ThrWidth
	cmple	r8, r7	@, <variable>.Cur1DImage.image_height, <variable>.stDSDParam.s32ThrHeight
	ble	.L605	@,
	ldr	ip, [ip, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	add	lr, r2, #408	@ tmp192, tmp142,
	mov	r3, #0	@ tmp193,
	str	r3, [r2, #416]	@ tmp193, <variable>.Cur1DImage.is_processed_by_dnr
	str	r3, [lr, #4]	@ tmp193, <variable>.Cur1DImage.u32Is1D
	str	ip, [r2, #420]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.Cur1DImage.u32Circumrotate
	str	r2, [sp, #4]	@,
	bl	DNR_DetNetworkParam	@
	ldr	r2, [sp, #4]	@,
	mov	r0, r4	@, NextInstId
	ldr	r3, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	r1, [r2, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	ip, r3, #31	@ tmp235, <variable>.Cur1DImage.image_height,
	ldr	r3, [r2, #136]	@ <variable>.Cur1DImage.top_luma_phy_addr, <variable>.Cur1DImage.top_luma_phy_addr
	add	r1, r1, #15	@ tmp226, <variable>.Cur1DImage.image_width,
	mov	ip, ip, lsr #5	@ tmp237, tmp235,
	bic	r1, r1, #15	@ tmp228, tmp226,
	mul	r1, ip, r1	@ tmp238, tmp237, tmp228
	add	ip, r3, r1, asl #5	@, tmp247, <variable>.Cur1DImage.top_luma_phy_addr, tmp238,
	str	ip, [r2, #140]	@ tmp247, <variable>.Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.35563,
	movne	r0, #1	@ D.35566,
	b	.L607	@
	.fnend
	.size	DNR_DSDProcess, .-DNR_DSDProcess
	.align	2
	.global	DNR_ProcessChannel
	.type	DNR_ProcessChannel, %function
DNR_ProcessChannel:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #:lower16:76696	@ tmp146,
	movw	r4, #:lower16:.LANCHOR0	@ tmp246,
	movt	r3, #:upper16:76696	@ tmp146,
	movt	r4, #:upper16:.LANCHOR0	@ tmp246,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r4	@ tmp147, tmp146, NextInstId, tmp246
	ldr	ip, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	ip, #0	@ <variable>.NeedStartAgain,
	bne	.L612	@,
	ldr	r1, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r1, #0	@ <variable>.s321DFrameIsProc,
	beq	.L613	@,
	movw	r0, #:lower16:76656	@ tmp158,
	movt	r0, #:upper16:76656	@ tmp158,
	ldr	r7, [r3, r0]	@ prephitmp.2300, <variable>.DNRDataSourceFlag
.L614:
	cmp	r7, #1	@ prephitmp.2300,
	beq	.L621	@,
	mov	r1, r2	@, pDnrCfg
	mov	r0, r5	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	bne	.L622	@,
.L615:
	mov	r0, #1	@ D.35617,
	b	.L618	@
.L612:
	ldr	r3, [r3, #452]	@ <variable>.CurImageBufID, <variable>.CurImageBufID
	mov	r0, #0	@ D.35617,
	str	r3, [r1, #0]	@ <variable>.CurImageBufID,* pPicBufID
.L618:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L613:
	movw	lr, #:lower16:76656	@ tmp164,
	movt	lr, #:upper16:76656	@ tmp164,
	add	r8, r3, #75776	@ tmp168, tmp147,
	ldr	r7, [r3, lr]	@ prephitmp.2300, <variable>.DNRDataSourceFlag
	add	r8, r8, #880	@ tmp168, tmp168,
	cmp	r7, #0	@ prephitmp.2300,
	bne	.L614	@,
	str	r2, [sp, #4]	@,
	bl	DNR_PrecessChanLastFrame	@
	ldr	r2, [sp, #4]	@,
	cmp	r0, #1	@,
	beq	.L615	@,
	ldr	r7, [r8, #0]	@ prephitmp.2300, <variable>.DNRDataSourceFlag
	b	.L614	@
.L621:
	movw	r1, #:lower16:76696	@ tmp178,
	movt	r1, #:upper16:76696	@ tmp178,
	mov	r2, #392	@,
	mla	r8, r1, r5, r4	@ tmp179, tmp178, NextInstId, tmp246
	add	r3, r8, #75776	@ tmp186, tmp179,
	add	r0, r8, #48	@, tmp179,
	add	ip, r3, #896	@ tmp186, tmp186,
	ldr	r1, [ip, #4]	@, <variable>.pCaptureImageIn
	bl	memcpy	@
	ldr	r2, [r8, #224]	@ D.35623, <variable>.Cur1DImage.image_id
	str	r7, [r8, #440]	@ prephitmp.2300, <variable>.s321DFrameIsProc
	movw	r1, #:lower16:.LC47	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC47	@,
	str	r2, [r6, #0]	@ D.35623,* pPicBufID
	ldr	r3, [r8, #420]	@, <variable>.Cur1DImage.u32Circumrotate
	bl	dprint_vfmw	@
.L617:
	movw	r0, #:lower16:76696	@ tmp216,
	movt	r0, #:upper16:76696	@ tmp216,
	movw	ip, #:lower16:76656	@ tmp228,
	movt	ip, #:upper16:76656	@ tmp228,
	mla	r4, r0, r5, r4	@ tmp217, tmp216, NextInstId, tmp246
	mov	r0, #0	@ tmp219,
	add	r2, r4, #408	@ tmp218, tmp217,
	ldr	lr, [r4, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	str	r0, [r2, #4]	@ tmp219, <variable>.Cur1DImage.u32Is1D
	cmp	lr, r0	@ <variable>.DNRDataSourceFlag,
	str	r0, [r4, #416]	@ tmp219, <variable>.Cur1DImage.is_processed_by_dnr
	bne	.L618	@,
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Get2DFrameStore	@
	cmp	r0, #1	@,
	movne	r0, #0	@, D.35617
	moveq	r0, #1	@, D.35617
	b	.L618	@
.L622:
	cmn	r0, #1	@ result,
	bne	.L617	@,
	b	.L618	@
	.fnend
	.size	DNR_ProcessChannel, .-DNR_ProcessChannel
	.align	2
	.global	DNR_DoNextInstance
	.type	DNR_DoNextInstance, %function
DNR_DoNextInstance:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r9, #:lower16:.LANCHOR1	@ tmp165,
	.pad #252
	sub	sp, sp, #252	@,,
	movt	r9, #:upper16:.LANCHOR1	@ tmp165,
	add	r6, sp, #116	@ tmp679,,
	mov	r1, #84	@,
	ldr	r5, [r9, #4060]	@ NextInstId, s_DnrCtrl.ThisInstID
	mov	r7, r0	@ pNextInstId, pNextInstId
	mov	r0, r6	@, tmp679
	mov	r9, #0	@ tmp166,
	str	r9, [sp, #244]	@ tmp166, PicBufID
	bl	__memzero	@
	add	r1, r5, #1	@ temp.2346, NextInstId,
	movw	r8, #:lower16:76696	@ tmp176,
	movw	r5, #:lower16:.LANCHOR0	@ tmp682,
	movt	r8, #:upper16:76696	@ tmp176,
	mov	fp, r1, asr #31	@ tmp168, temp.2346,
	movt	r5, #:upper16:.LANCHOR0	@ tmp682,
	movw	r3, #:lower16:76664	@ tmp174,
	movt	r3, #:upper16:76664	@ tmp174,
	mov	r2, fp, lsr #30	@ tmp169, tmp168,
	add	r0, r1, r2	@ tmp170, temp.2346, tmp169
	and	r4, r0, #3	@ tmp171, tmp170,
	rsb	r4, r2, r4	@ NextInstId.2340, tmp169, tmp171
	mla	r8, r8, r4, r5	@ tmp177, tmp176, NextInstId.2340, tmp682
	add	sl, r8, #75776	@ tmp178, tmp177,
	add	sl, sl, #888	@ tmp178, tmp178,
	ldr	fp, [r8, r3]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	fp, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L676	@,
.L624:
	movw	r0, #9587	@ tmp204,
	movw	r3, #:lower16:.LANCHOR0	@ tmp202,
	mul	r2, r0, r4	@ tmp203, tmp204, NextInstId.2340
	movt	r3, #:upper16:.LANCHOR0	@ tmp202,
	add	r8, r5, r2, asl #3	@, tmp208, tmp682, tmp203,
	ldr	lr, [r8, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	lr, #0	@ <variable>.InstMode,
	bne	.L635	@,
	movw	r2, #:lower16:76696	@ tmp272,
	movt	r2, #:upper16:76696	@ tmp272,
	movw	r0, #:lower16:76656	@ tmp270,
	movt	r0, #:upper16:76656	@ tmp270,
	mla	r8, r2, r4, r3	@ tmp273, tmp272, NextInstId.2340, tmp202
	ldr	ip, [r8, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	ip, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L627	@,
.L635:
	mov	r0, r4	@, NextInstId.2340
	bl	VCTRL_GetVidStd	@
	sub	r1, r0, #10	@ tmp211, eVidStd.2351,
	cmp	r1, #2	@ tmp211,
	bhi	.L634	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp266,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp266,
	ldr	r3, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L634	@,
.L627:
	add	ip, r4, #1	@ temp.2370, NextInstId.2340,
	movw	r9, #:lower16:76696	@ tmp284,
	movt	r9, #:upper16:76696	@ tmp284,
	movw	lr, #:lower16:76664	@ tmp282,
	mov	r8, ip, asr #31	@ tmp276, temp.2370,
	movt	lr, #:upper16:76664	@ tmp282,
	mov	r3, r8, lsr #30	@ tmp277, tmp276,
	add	r1, ip, r3	@ tmp278, temp.2370, tmp277
	and	r4, r1, #3	@ tmp279, tmp278,
	rsb	r4, r3, r4	@ NextInstId.2340, tmp277, tmp279
	mla	r8, r9, r4, r5	@ tmp285, tmp284, NextInstId.2340, tmp682
	add	sl, r8, #75776	@ tmp286, tmp285,
	add	sl, sl, #888	@ tmp286, tmp286,
	ldr	r9, [r8, lr]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	r9, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L677	@,
.L636:
	movw	r8, #9587	@ tmp312,
	movw	r3, #:lower16:.LANCHOR0	@ tmp310,
	mul	ip, r8, r4	@ tmp311, tmp312, NextInstId.2340
	movt	r3, #:upper16:.LANCHOR0	@ tmp310,
	add	r1, r5, ip, asl #3	@, tmp316, tmp682, tmp311,
	ldr	lr, [r1, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	lr, #0	@ <variable>.InstMode,
	bne	.L645	@,
	movw	ip, #:lower16:76696	@ tmp380,
	movt	ip, #:upper16:76696	@ tmp380,
	movw	r2, #:lower16:76656	@ tmp378,
	movt	r2, #:upper16:76656	@ tmp378,
	mla	r8, ip, r4, r3	@ tmp381, tmp380, NextInstId.2340, tmp310
	ldr	r0, [r8, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r0, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L639	@,
.L645:
	mov	r0, r4	@, NextInstId.2340
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ tmp319, eVidStd.2375,
	cmp	r3, #2	@ tmp319,
	bhi	.L644	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp374,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp374,
	ldr	r3, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L644	@,
.L639:
	add	r0, r4, #1	@ temp.2394, NextInstId.2340,
	movw	r9, #:lower16:76696	@ tmp392,
	movt	r9, #:upper16:76696	@ tmp392,
	movw	lr, #:lower16:76664	@ tmp390,
	mov	r8, r0, asr #31	@ tmp384, temp.2394,
	movt	lr, #:upper16:76664	@ tmp390,
	mov	r3, r8, lsr #30	@ tmp385, tmp384,
	add	r1, r0, r3	@ tmp386, temp.2394, tmp385
	and	r4, r1, #3	@ tmp387, tmp386,
	rsb	r4, r3, r4	@ NextInstId.2340, tmp385, tmp387
	mla	r8, r9, r4, r5	@ tmp393, tmp392, NextInstId.2340, tmp682
	add	sl, r8, #75776	@ tmp394, tmp393,
	add	sl, sl, #888	@ tmp394, tmp394,
	ldr	r9, [r8, lr]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	r9, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L678	@,
.L646:
	movw	r8, #9587	@ tmp420,
	movw	r3, #:lower16:.LANCHOR0	@ tmp418,
	mul	r0, r8, r4	@ tmp419, tmp420, NextInstId.2340
	movt	r3, #:upper16:.LANCHOR0	@ tmp418,
	add	r1, r5, r0, asl #3	@, tmp424, tmp682, tmp419,
	ldr	lr, [r1, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	lr, #0	@ <variable>.InstMode,
	bne	.L655	@,
	movw	r1, #:lower16:76696	@ tmp488,
	movt	r1, #:upper16:76696	@ tmp488,
	movw	r0, #:lower16:76656	@ tmp486,
	movt	r0, #:upper16:76656	@ tmp486,
	mla	r8, r1, r4, r3	@ tmp489, tmp488, NextInstId.2340, tmp418
	ldr	ip, [r8, r0]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	ip, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L649	@,
.L655:
	mov	r0, r4	@, NextInstId.2340
	bl	VCTRL_GetVidStd	@
	sub	r2, r0, #10	@ tmp427, eVidStd.2399,
	cmp	r2, #2	@ tmp427,
	bhi	.L654	@,
	movw	r2, #:lower16:g_VdmCharacter	@ tmp482,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp482,
	ldr	r3, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L654	@,
.L649:
	add	r8, r4, #1	@ D.35667, NextInstId.2340,
	movw	r9, #:lower16:76696	@ tmp500,
	movt	r9, #:upper16:76696	@ tmp500,
	movw	lr, #:lower16:76664	@ tmp498,
	mov	r2, r8, asr #31	@ tmp492, D.35667,
	movt	lr, #:upper16:76664	@ tmp498,
	mov	r3, r2, lsr #30	@ tmp493, tmp492,
	add	ip, r8, r3	@ tmp494, D.35667, tmp493
	and	r4, ip, #3	@ tmp495, tmp494,
	rsb	r4, r3, r4	@ NextInstId.2340, tmp493, tmp495
	mla	r8, r9, r4, r5	@ tmp501, tmp500, NextInstId.2340, tmp682
	add	sl, r8, #75776	@ tmp502, tmp501,
	add	sl, sl, #888	@ tmp502, tmp502,
	ldr	r9, [r8, lr]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	r9, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L679	@,
.L656:
	movw	r0, #9587	@ tmp528,
	movw	r3, #:lower16:.LANCHOR0	@ tmp526,
	mul	r2, r0, r4	@ tmp527, tmp528, NextInstId.2340
	movt	r3, #:upper16:.LANCHOR0	@ tmp526,
	add	ip, r5, r2, asl #3	@, tmp532, tmp682, tmp527,
	ldr	lr, [ip, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	lr, #0	@ <variable>.InstMode,
	bne	.L657	@,
	movw	ip, #:lower16:76696	@ tmp538,
	movt	ip, #:upper16:76696	@ tmp538,
	movw	lr, #:lower16:76656	@ tmp536,
	movt	lr, #:upper16:76656	@ tmp536,
	mla	r3, ip, r4, r3	@ tmp539, tmp538, NextInstId.2340, tmp526
	ldr	r1, [r3, lr]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r1, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L629	@,
.L657:
	mov	r0, r4	@, NextInstId.2340
	bl	VCTRL_GetVidStd	@
	sub	r2, r0, #10	@ tmp542, eVidStd,
	cmp	r2, #2	@ tmp542,
	bhi	.L658	@,
	movw	r3, #:lower16:g_VdmCharacter	@ tmp543,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp543,
	ldr	r1, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	bne	.L658	@,
.L629:
	mvn	r0, #0	@ D.35699,
.L671:
	add	sp, sp, #252	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L634:
	cmp	r0, #4	@ eVidStd.2351,
	cmpne	r0, #14	@, eVidStd.2351,
	movne	r8, #0	@, tmp218
	moveq	r8, #1	@, tmp218
	beq	.L627	@,
	cmp	r0, #18	@ eVidStd.2351,
	beq	.L627	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L627	@,
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #12	@,,
	bl	VCTRL_GetChanState	@
	movw	r3, #:lower16:76696	@ tmp223,
	movt	r3, #:upper16:76696	@ tmp223,
	movw	r2, #:lower16:76632	@ tmp228,
	movt	r2, #:upper16:76632	@ tmp228,
	ldr	r0, [sp, #108]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	mla	r3, r3, r4, r5	@ tmp224, tmp223, NextInstId.2340, tmp682
	ldr	ip, [r3, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r0, [r3, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L633	@,
	movw	lr, #51528	@ tmp260,
	mov	r0, r4	@, NextInstId.2340
	str	r8, [r3, lr]	@ tmp218, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L633:
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #244	@,,
	mov	r2, r6	@, tmp679
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result.2360,
	beq	.L627	@,
	cmn	r0, #1	@ result.2360,
	beq	.L629	@,
	movw	lr, #:lower16:76696	@ tmp239,
	movt	lr, #:upper16:76696	@ tmp239,
	mla	r9, lr, r4, r5	@ tmp240, tmp239, NextInstId.2340, tmp682
	ldr	r3, [r9, #348]	@ D.35700, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	sl, r3, #10	@ tmp242, D.35700,
	cmp	sl, #2	@ tmp242,
	bhi	.L632	@,
	movw	r2, #:lower16:g_VdmCharacter	@ tmp256,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp256,
	ldr	r0, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L627	@,
.L632:
	cmp	r3, #4	@ D.35700,
	cmpne	r3, #14	@, D.35700,
	beq	.L627	@,
	ldr	r8, .L680	@ tmp251,
	movw	ip, #:lower16:76696	@ tmp253,
	movt	ip, #:upper16:76696	@ tmp253,
	cmp	r3, #18	@ D.35700,
	mla	r1, ip, r4, r8	@ tmp255, tmp253, NextInstId.2340, tmp251
	add	r8, r1, #324	@ pImageDnr, tmp255,
	bne	.L631	@,
	b	.L627	@
.L644:
	cmp	r0, #4	@ eVidStd.2375,
	cmpne	r0, #14	@, eVidStd.2375,
	movne	r8, #0	@, tmp326
	moveq	r8, #1	@, tmp326
	beq	.L639	@,
	cmp	r0, #18	@ eVidStd.2375,
	beq	.L639	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L639	@,
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #12	@,,
	bl	VCTRL_GetChanState	@
	movw	ip, #:lower16:76696	@ tmp331,
	movt	ip, #:upper16:76696	@ tmp331,
	movw	r2, #:lower16:76632	@ tmp336,
	movt	r2, #:upper16:76632	@ tmp336,
	ldr	r1, [sp, #108]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	mla	r3, ip, r4, r5	@ tmp332, tmp331, NextInstId.2340, tmp682
	ldr	r0, [r3, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r1, [r3, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	r0, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L643	@,
	movw	lr, #51528	@ tmp368,
	mov	r0, r4	@, NextInstId.2340
	str	r8, [r3, lr]	@ tmp326, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L643:
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #244	@,,
	mov	r2, r6	@, tmp679
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result.2384,
	beq	.L639	@,
	cmn	r0, #1	@ result.2384,
	beq	.L629	@,
	movw	lr, #:lower16:76696	@ tmp347,
	movt	lr, #:upper16:76696	@ tmp347,
	mla	r9, lr, r4, r5	@ tmp348, tmp347, NextInstId.2340, tmp682
	ldr	r3, [r9, #348]	@ D.35700, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	sl, r3, #10	@ tmp350, D.35700,
	cmp	sl, #2	@ tmp350,
	bhi	.L642	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp364,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp364,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L639	@,
.L642:
	cmp	r3, #4	@ D.35700,
	cmpne	r3, #14	@, D.35700,
	beq	.L639	@,
	ldr	r8, .L680	@ tmp359,
	movw	r1, #:lower16:76696	@ tmp361,
	movt	r1, #:upper16:76696	@ tmp361,
	cmp	r3, #18	@ D.35700,
	mla	r0, r1, r4, r8	@ tmp363, tmp361, NextInstId.2340, tmp359
	add	r8, r0, #324	@ pImageDnr, tmp363,
	bne	.L631	@,
	b	.L639	@
.L654:
	cmp	r0, #4	@ eVidStd.2399,
	cmpne	r0, #14	@, eVidStd.2399,
	movne	r8, #0	@, tmp434
	moveq	r8, #1	@, tmp434
	beq	.L649	@,
	cmp	r0, #18	@ eVidStd.2399,
	beq	.L649	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L649	@,
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #12	@,,
	bl	VCTRL_GetChanState	@
	movw	r3, #:lower16:76696	@ tmp439,
	movt	r3, #:upper16:76696	@ tmp439,
	movw	r0, #:lower16:76632	@ tmp444,
	movt	r0, #:upper16:76632	@ tmp444,
	ldr	r1, [sp, #108]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	mla	r3, r3, r4, r5	@ tmp440, tmp439, NextInstId.2340, tmp682
	ldr	ip, [r3, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r1, [r3, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L653	@,
	movw	lr, #51528	@ tmp476,
	mov	r0, r4	@, NextInstId.2340
	str	r8, [r3, lr]	@ tmp434, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L653:
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #244	@,,
	mov	r2, r6	@, tmp679
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result.2408,
	beq	.L649	@,
	cmn	r0, #1	@ result.2408,
	beq	.L629	@,
	movw	lr, #:lower16:76696	@ tmp455,
	movt	lr, #:upper16:76696	@ tmp455,
	mla	r9, lr, r4, r5	@ tmp456, tmp455, NextInstId.2340, tmp682
	ldr	r3, [r9, #348]	@ D.35700, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	sl, r3, #10	@ tmp458, D.35700,
	cmp	sl, #2	@ tmp458,
	bhi	.L652	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp472,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp472,
	ldr	r1, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L649	@,
.L652:
	cmp	r3, #4	@ D.35700,
	cmpne	r3, #14	@, D.35700,
	beq	.L649	@,
	ldr	r8, .L680	@ tmp467,
	movw	ip, #:lower16:76696	@ tmp469,
	movt	ip, #:upper16:76696	@ tmp469,
	cmp	r3, #18	@ D.35700,
	mla	r2, ip, r4, r8	@ tmp471, tmp469, NextInstId.2340, tmp467
	add	r8, r2, #324	@ pImageDnr, tmp471,
	beq	.L649	@,
.L631:
	movw	ip, #:lower16:g_eVdmVersion	@ tmp600,
	movt	ip, #:upper16:g_eVdmVersion	@ tmp600,
	ldr	r9, [ip, #0]	@ g_eVdmVersion, g_eVdmVersion
	sub	sl, r9, #3	@ tmp601, g_eVdmVersion,
	cmp	sl, #1	@ tmp601,
	bls	.L662	@,
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp603,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp603,
	ldr	r2, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r2, #1	@ USE_FF_APT_EN,
	bne	.L662	@,
	cmp	r3, #0	@ D.35700,
	bne	.L662	@,
	movw	lr, #:lower16:76696	@ tmp608,
	movt	lr, #:upper16:76696	@ tmp608,
	mla	r3, lr, r4, r5	@ tmp609, tmp608, NextInstId.2340, tmp682
	ldrb	r9, [r3, #336]	@ zero_extendqisi2	@ SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	b	.L663	@
.L658:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r8, #0	@, tmp552
	moveq	r8, #1	@, tmp552
	beq	.L629	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L629	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L629	@,
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #12	@,,
	bl	VCTRL_GetChanState	@
	movw	r1, #:lower16:76696	@ tmp557,
	movt	r1, #:upper16:76696	@ tmp557,
	movw	r2, #:lower16:76632	@ tmp562,
	movt	r2, #:upper16:76632	@ tmp562,
	ldr	ip, [sp, #108]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	mla	r3, r1, r4, r5	@ tmp558, tmp557, NextInstId.2340, tmp682
	ldr	r0, [r3, r2]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	ip, [r3, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	r0, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L660	@,
	movw	lr, #51528	@ tmp569,
	mov	r0, r4	@, NextInstId.2340
	str	r8, [r3, lr]	@ tmp552, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L660:
	mov	r0, r4	@, NextInstId.2340
	add	r1, sp, #244	@,,
	mov	r2, r6	@, tmp679
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L629	@,
	cmn	r0, #1	@ result,
	beq	.L629	@,
	movw	ip, #:lower16:76696	@ tmp580,
	movt	ip, #:upper16:76696	@ tmp580,
	mla	r3, ip, r4, r5	@ tmp581, tmp580, NextInstId.2340, tmp682
	ldr	r3, [r3, #348]	@ D.35700, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	r0, r3, #10	@ tmp583, D.35700,
	cmp	r0, #2	@ tmp583,
	bhi	.L661	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp584,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp584,
	ldr	r2, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L629	@,
.L661:
	cmp	r3, #4	@ D.35700,
	cmpne	r3, #14	@, D.35700,
	beq	.L629	@,
	ldr	r8, .L680	@ tmp595,
	movw	r0, #:lower16:76696	@ tmp597,
	movt	r0, #:upper16:76696	@ tmp597,
	cmp	r3, #18	@ D.35700,
	mla	lr, r0, r4, r8	@ tmp599, tmp597, NextInstId.2340, tmp595
	add	r8, lr, #324	@ pImageDnr, tmp599,
	bne	.L631	@,
	b	.L629	@
.L676:
	ldr	ip, [r8, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	ip, #1	@ <variable>.s321DFrameIsProc,
	beq	.L624	@,
	mov	r0, r9	@, tmp166
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:76656	@ tmp189,
	movt	r3, #:upper16:76656	@ tmp189,
	str	r9, [sl, #0]	@ tmp166, <variable>.DNRCaptureEnableFlag
	str	fp, [r8, r3]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L624	@
.L677:
	ldr	r0, [r8, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r0, #1	@ <variable>.s321DFrameIsProc,
	beq	.L636	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:76656	@ tmp297,
	movt	r3, #:upper16:76656	@ tmp297,
	mov	r2, #0	@ tmp309,
	str	r2, [sl, #0]	@ tmp309, <variable>.DNRCaptureEnableFlag
	str	r9, [r8, r3]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L636	@
.L678:
	ldr	r2, [r8, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r2, #1	@ <variable>.s321DFrameIsProc,
	beq	.L646	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:76656	@ tmp405,
	movt	ip, #:upper16:76656	@ tmp405,
	mov	r3, #0	@ tmp417,
	str	r3, [sl, #0]	@ tmp417, <variable>.DNRCaptureEnableFlag
	str	r9, [r8, ip]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L646	@
.L679:
	ldr	r0, [r8, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r0, #1	@ <variable>.s321DFrameIsProc,
	beq	.L656	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:76656	@ tmp513,
	movt	r1, #:upper16:76656	@ tmp513,
	mov	r3, #0	@ tmp525,
	str	r3, [sl, #0]	@ tmp525, <variable>.DNRCaptureEnableFlag
	str	r9, [r8, r1]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L656	@
.L662:
	mov	r9, #0	@ SourceImgStoreType,
.L663:
	add	sl, sp, #200	@ tmp611,,
	mov	r1, r4	@, NextInstId.2340
	mov	r2, r9	@, SourceImgStoreType
	mov	r0, sl	@, tmp611
	bl	DNR_SetDetPara	@
	ldr	ip, [sp, #244]	@ PicBufID, PicBufID
	mov	r2, r8	@, pImageDnr
	mov	r3, sl	@, tmp611
	mov	r0, r6	@, tmp679
	mov	r1, r4	@, NextInstId.2340
	stmia	sp, {r9, ip}	@ phole stm
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L629	@,
	mov	r0, r4	@, NextInstId.2340
	mov	r1, r6	@, tmp679
	ldr	r2, [sp, #244]	@, PicBufID
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L629	@,
	movw	r0, #:lower16:76696	@ tmp619,
	movt	r0, #:upper16:76696	@ tmp619,
	movw	r8, #:lower16:g_dnr_hal_fun_ptr	@ tmp680,
	movt	r8, #:upper16:g_dnr_hal_fun_ptr	@ tmp680,
	mla	r1, r0, r4, r5	@ tmp620, tmp619, NextInstId.2340, tmp682
	ldr	r0, [r8, #12]	@ D.35713, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	ldr	r2, [sp, #244]	@ PicBufID, PicBufID
	cmp	r0, #0	@ D.35713,
	str	r2, [r1, #452]	@ PicBufID, <variable>.CurImageBufID
	beq	.L664	@,
	blx	r0	@ D.35713
.L665:
	ldr	r3, [r8, #8]	@ D.35718, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.35718,
	beq	.L666	@,
	mov	r0, r6	@, tmp679
	blx	r3	@ D.35718
.L667:
	movw	r0, #:lower16:76696	@ tmp633,
	movt	r0, #:upper16:76696	@ tmp633,
	movw	r1, #:lower16:76656	@ tmp639,
	movt	r1, #:upper16:76656	@ tmp639,
	mla	r2, r0, r4, r5	@ tmp634, tmp633, NextInstId.2340, tmp682
	ldr	r0, [r8, #16]	@ D.35722, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	mov	ip, #0	@ tmp636,
	cmp	r0, #0	@ D.35722,
	add	lr, r2, #75776	@ tmp643, tmp634,
	add	r3, lr, #880	@ tmp643, tmp643,
	ldr	lr, [r2, r1]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	strb	ip, [r2, #8]	@ tmp636, <variable>.DecChanRstFlag
	str	lr, [r3, #4]	@ <variable>.DNRDataSourceFlag, <variable>.DNRCaptureStartFlag
	beq	.L668	@,
	blx	r0	@ D.35722
.L669:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp654,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp654,
	str	r0, [r3, #20]	@, <variable>.u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L670	@,
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR3	@ tmp655,
	movt	r3, #:upper16:.LANCHOR3	@ tmp655,
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp662,
	add	r2, r3, r4, asl #2	@, tmp658, tmp655, NextInstId.2340,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp662,
	ldr	r1, [r2, #-4076]	@ tmp661, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp660, tmp661, currtime
	cmp	ip, r3	@ tmp660, g_TraceFramePeriod
	strhi	r0, [r2, #-4076]	@ currtime, last_rec_pos_time
.L670:
	movw	r0, #9587	@ tmp671,
	str	r4, [r7, #0]	@ NextInstId.2340,* pNextInstId
	mul	r4, r0, r4	@ tmp670, tmp671, NextInstId.2340
	mov	lr, #1	@ tmp677,
	mov	r0, #0	@ D.35699,
	add	r5, r5, r4, asl #3	@, tmp675, tmp682, tmp670,
	str	lr, [r5, #20]	@ tmp677, <variable>.InstMode
	b	.L671	@
.L668:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1572	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L669	@
.L666:
	mov	r0, r3	@, D.35718
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1567	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L667	@
.L664:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1565	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L665	@
.L681:
	.align	2
.L680:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_DoNextInstance, .-DNR_DoNextInstance
	.align	2
	.global	DNR_Wakeup
	.type	DNR_Wakeup, %function
DNR_Wakeup:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR1	@ tmp218,
	movt	r4, #:upper16:.LANCHOR1	@ tmp218,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, #4064]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L683	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L694	@,
.L684:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L683:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #4068]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp153, s_DnrCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp153,
	ble	.L684	@,
	ldr	r0, [r4, #4060]	@, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp217,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #4060]	@ prephitmp.2433, s_DnrCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp217,
	movw	r7, #:lower16:76696	@ tmp161,
	movt	r7, #:upper16:76696	@ tmp161,
	movw	r3, #:lower16:1374389535	@ tmp167,
	movt	r3, #:upper16:1374389535	@ tmp167,
	mla	r2, r7, r1, r5	@ tmp162, tmp161, prephitmp.2433, tmp217
	ldr	r7, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r7	@, tmp166, tmp167, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp169,
	mov	r3, r3, lsr #5	@ tmp164, tmp166,
	mls	r2, ip, r3, r7	@ tmp170, tmp169, tmp164, <variable>.Cur1DImage.image_id
	add	r7, r2, #2	@ tmp171, tmp170,
	cmp	r0, r7	@, tmp171
	addne	r6, r5, #8	@ tmp221, tmp217,
	beq	.L695	@,
.L685:
	movw	r7, #:lower16:76696	@ tmp199,
	movt	r7, #:upper16:76696	@ tmp199,
	mov	r0, r1	@, prephitmp.2433
	mla	r1, r7, r1, r6	@ tmp201, tmp199, prephitmp.2433, tmp221
	add	r1, r1, #40	@, tmp201,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r2, [r4, #4060]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	ip, #0	@ tmp210,
	movw	r1, #:lower16:.LC50	@,
	mov	r0, ip	@, tmp210
	movt	r1, #:upper16:.LC50	@,
	mla	r5, r7, r2, r5	@ tmp208, tmp199, s_DnrCtrl.ThisInstID, tmp217
	str	ip, [r5, #440]	@ tmp210, <variable>.s321DFrameIsProc
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp212,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp212,
	ldr	r0, [r3, #12]	@ D.35922, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r0, #0	@ D.35922,
	beq	.L689	@,
	blx	r0	@ D.35922
.L690:
	mov	r0, #0	@ tmp215,
	str	r0, [r4, #4064]	@ tmp215, s_DnrCtrl.DNRState
	b	.L684	@
.L694:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp150,
	str	r1, [r4, #4064]	@ tmp150, s_DnrCtrl.DNRState
	str	r0, [r4, #4060]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4068]	@, s_DnrCtrl.LastProcessTime
	b	.L684	@
.L695:
	movw	r7, #:lower16:g_event_report	@ tmp219,
	movt	r7, #:upper16:g_event_report	@ tmp219,
	ldr	r3, [r7, #0]	@ g_event_report.544, g_event_report
	cmp	r3, #0	@ g_event_report.544,
	beq	.L686	@,
	add	r6, sp, #8	@ tmp174,,
	mov	r0, r1	@, prephitmp.2433
	mov	r8, #1	@ tmp173,
	mov	r2, sp	@,
	str	r8, [r6, #-8]!	@ tmp173, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.544
.L686:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	ldr	r6, .L697	@ tmp221,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #4060]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #:lower16:76696	@ tmp180,
	movt	r0, #:upper16:76696	@ tmp180,
	movw	r8, #:lower16:.LANCHOR1	@ tmp178,
	movt	r8, #:upper16:.LANCHOR1	@ tmp178,
	mla	r1, ip, r0, r6	@ tmp183, s_DnrCtrl.ThisInstID, tmp180, tmp221
	add	r0, r1, #968	@, tmp183,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L696	@,
	ldr	r3, [r7, #0]	@ g_event_report.2447, g_event_report
	cmp	r3, #0	@ g_event_report.2447,
	beq	.L688	@,
	add	r7, sp, #8	@ tmp192,,
	ldr	r0, [r8, #4060]	@, s_DnrCtrl.ThisInstID
	mov	r2, sp	@,
	str	r1, [r7, #-8]!	@ ret_val,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2447
.L688:
	mov	r1, #0	@,
	ldr	r0, [r4, #4060]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #4060]	@ prephitmp.2433, s_DnrCtrl.ThisInstID
	b	.L685	@
.L696:
	ldr	r3, [r7, #0]	@ g_event_report.2445, g_event_report
	cmp	r3, #0	@ g_event_report.2445,
	beq	.L688	@,
	add	lr, sp, #8	@ tmp188,,
	ldr	r0, [r8, #4060]	@, s_DnrCtrl.ThisInstID
	mov	r2, #1	@ tmp185,
	mov	r1, #115	@,
	str	r2, [lr, #-8]!	@ tmp185,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.2445
	b	.L688	@
.L689:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1838	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L690	@
.L698:
	.align	2
.L697:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Wakeup, .-DNR_Wakeup
	.global	__aeabi_uidiv
	.align	2
	.global	DNR_IntServeProc
	.type	DNR_IntServeProc, %function
DNR_IntServeProc:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR3	@ tmp245,
	movt	r4, #:upper16:.LANCHOR3	@ tmp245,
	.pad #8
	sub	sp, sp, #8	@,,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #-4060]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r0, #44]	@ dat,
	tst	r3, #1	@ dat,
	beq	.L708	@,
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r0, [r1, #20]	@ D.35824, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r0, #0	@ D.35824,
	beq	.L702	@,
	blx	r0	@ D.35824
.L703:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	movweq	r5, #:lower16:.LANCHOR1	@ tmp244,
	movteq	r5, #:upper16:.LANCHOR1	@ tmp244,
	bne	.L714	@,
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	bne	.L715	@,
.L705:
	ldr	lr, [r5, #4064]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	movw	r3, #:lower16:.LANCHOR1	@ tmp197,
	movt	r3, #:upper16:.LANCHOR1	@ tmp197,
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	beq	.L716	@,
.L708:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L714:
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR1	@ tmp244,
	movt	r5, #:upper16:.LANCHOR1	@ tmp244,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp163,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp163,
	ldr	r1, [r5, #4060]	@ D.35833, s_DnrCtrl.ThisInstID
	ldr	r7, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	add	r4, r4, r1, asl #2	@, tmp159, tmp245, D.35833,
	ldr	ip, [r4, #-4044]	@ tmp162, last_rec_pos_time
	rsb	r2, ip, r0	@ tmp161, tmp162, currtime
	cmp	r2, r7	@ tmp161, g_TraceFramePeriod
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	strhi	r0, [r4, #-4044]	@ currtime, last_rec_pos_time
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	beq	.L705	@,
.L715:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldr	ip, [r7, #20]	@ prephitmp.2477, <variable>.u32DaLastStartTime
	add	r3, r1, #49920	@ tmp174, <variable>.u32DaBeginTime,
	add	r2, r3, #80	@ tmp174, tmp174,
	cmp	r2, ip	@ tmp174, prephitmp.2477
	strcc	ip, [r7, #16]	@ prephitmp.2477, <variable>.u32DaBeginTime
	ldr	r4, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldrcs	r3, [r7, #24]	@ prephitmp.2466, <variable>.u32DaDnrWorkTime
	movcc	r3, #0	@ prephitmp.2466,
	rsb	r1, r4, r0	@ Period, <variable>.u32DaBeginTime, CurTime
	add	r6, r3, r0	@ tmp182, prephitmp.2466, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r6	@ D.35850, prephitmp.2477, tmp182
	movw	r4, #:lower16:g_VfmwGlobalStat	@ tmp183,
	mov	r6, #0	@ tmp185,
	str	r3, [r7, #24]	@ D.35850, <variable>.u32DaDnrWorkTime
	movt	r4, #:upper16:g_VfmwGlobalStat	@ tmp183,
	str	r6, [r7, #20]	@ tmp185, <variable>.u32DaLastStartTime
	bcc	.L705	@,
	mov	r0, #1000	@ tmp191,
	mul	r0, r0, r3	@, tmp191, D.35850
	bl	__aeabi_uidiv	@
	str	r6, [r4, #16]	@ tmp185, <variable>.u32DaBeginTime
	movw	r3, #:lower16:.LANCHOR1	@ tmp197,
	movt	r3, #:upper16:.LANCHOR1	@ tmp197,
	str	r0, [r4, #28]	@, <variable>.u32DaDnrLoad
	ldr	lr, [r5, #4064]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	bne	.L708	@,
.L716:
	ldr	r0, [r3, #4060]	@ temp.2479, s_DnrCtrl.ThisInstID
	movw	ip, #9587	@ tmp202,
	movw	r8, #:lower16:.LANCHOR0	@ tmp243,
	movt	r8, #:upper16:.LANCHOR0	@ tmp243,
	mul	r6, ip, r0	@ tmp201, tmp202, temp.2479
	add	r4, r8, r6, asl #3	@, tmp206, tmp243, tmp201,
	ldr	r7, [r4, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r7, #1	@ <variable>.InstMode,
	beq	.L717	@,
.L709:
	ldr	r0, [r5, #4060]	@ temp.2480, s_DnrCtrl.ThisInstID
	movw	r4, #:lower16:76696	@ tmp215,
	movt	r4, #:upper16:76696	@ tmp215,
	mov	r2, #0	@ tmp210,
	str	r2, [r5, #4064]	@ tmp210, s_DnrCtrl.DNRState
	movw	r7, #:lower16:.LANCHOR1	@ tmp209,
	mul	r1, r4, r0	@ tmp214, tmp215, temp.2480
	movw	r6, #:lower16:.LANCHOR0	@ tmp212,
	movt	r7, #:upper16:.LANCHOR1	@ tmp209,
	movt	r6, #:upper16:.LANCHOR0	@ tmp212,
	add	r8, r1, r8	@ tmp216, tmp214, tmp243
	ldr	r8, [r8, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r8, r2	@ <variable>.NeedStartAgain,
	beq	.L718	@,
.L710:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L708	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	lr, #1	@ tmp238,
	str	lr, [r5, #4064]	@ tmp238, s_DnrCtrl.DNRState
	str	r0, [r5, #4060]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r5, #4068]	@, s_DnrCtrl.LastProcessTime
	b	.L708	@
.L718:
	add	r1, r6, r1	@ tmp223, tmp212, tmp214
	add	r1, r1, #48	@, tmp223,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #4060]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r4, r4, r3, r6	@ tmp231, tmp215, s_DnrCtrl.ThisInstID, tmp212
	str	r8, [r4, #440]	@ <variable>.NeedStartAgain, <variable>.s321DFrameIsProc
	b	.L710	@
.L702:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1697	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L703	@
.L717:
	bl	DNR_ProcessDnrReturn	@
	b	.L709	@
	.fnend
	.size	DNR_IntServeProc, .-DNR_IntServeProc
	.align	2
	.global	DNR_CloseDrivers
	.type	DNR_CloseDrivers, %function
DNR_CloseDrivers:
	.fnstart
.LFB1605:
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
.LFB1606:
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
	bne	.L723	@,
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
	beq	.L727	@,
.L725:
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L723:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L725	@,
.L727:
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
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r5, #:lower16:g_dnr_hal_fun_ptr	@ tmp155,
	movt	r5, #:upper16:g_dnr_hal_fun_ptr	@ tmp155,
	ldr	r0, [r5, #0]	@ D.34502, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.34502,
	beq	.L729	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp156,
	movt	r4, #:upper16:.LANCHOR1	@ tmp156,
	blx	r0	@ D.34502
	ldr	r3, [r4, #4048]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.34510,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
.L736:
	add	r0, r4, #4048	@, tmp156,
	mov	r1, #60	@,
	bl	__memzero	@
	ldr	r0, .L737	@,
	movw	r1, #:lower16:306784	@,
	movt	r1, #:upper16:306784	@,
	bl	__memzero	@
	add	r0, r4, #4064	@, tmp156,
	add	r0, r0, #8	@,,
	bl	DNR_OpenDrivers	@
	bl	DNR_Fsp_Init	@
	ldr	r0, [r5, #4]	@ D.34521, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r0, #0	@ D.34521,
	beq	.L733	@,
	blx	r0	@ D.34521
.L734:
	mov	r1, #1	@ tmp153,
	mov	r0, #0	@ D.34510,
	str	r1, [r4, #4048]	@ tmp153, s_DnrCtrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L729:
	movw	r4, #:lower16:.LANCHOR1	@ tmp156,
	movt	r4, #:upper16:.LANCHOR1	@ tmp156,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #155	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #4048]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.34510,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	b	.L736	@
.L733:
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #175	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L734	@
.L738:
	.align	2
.L737:
	.word	.LANCHOR0+8
	.fnend
	.size	DNR_Init, .-DNR_Init
	.align	2
	.global	DNR_Close
	.type	DNR_Close, %function
DNR_Close:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L741	@ tmp134,
	add	r0, r4, #24	@, tmp134,
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp134
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L742:
	.align	2
.L741:
	.word	.LANCHOR1+4048
	.fnend
	.size	DNR_Close, .-DNR_Close
	.align	2
	.global	DNR_GetState
	.type	DNR_GetState, %function
DNR_GetState:
	.fnstart
.LFB1604:
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
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.36416, %object
	.size	__func__.36416, 25
__func__.36416:
	.ascii	"DNR_GetVoUsingFrameInQue\000"
	.space	3
	.type	__func__.36320, %object
	.size	__func__.36320, 17
__func__.36320:
	.ascii	"DNR_ReleaseImage\000"
	.space	3
	.type	__func__.36202, %object
	.size	__func__.36202, 17
__func__.36202:
	.ascii	"DNR_ReceiveImage\000"
	.space	3
	.type	__func__.35467, %object
	.size	__func__.35467, 23
__func__.35467:
	.ascii	"DNR_InsertQueueWithDSD\000"
	.space	1
	.type	__func__.35411, %object
	.size	__func__.35411, 25
__func__.35411:
	.ascii	"DNR_PrecessChanLastFrame\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"dnr_offline.c,L%d: %s\012\000"
	.space	1
.LC1:
	.ascii	"ChanID out of range\000"
.LC2:
	.ascii	"DecPhy = NULL\000"
	.space	2
.LC3:
	.ascii	"DecPhy size = 0\000"
.LC4:
	.ascii	"pImageQueue is NULL\000"
.LC5:
	.ascii	"ImageID out of range\000"
	.space	3
.LC6:
	.ascii	"can not find instance ID\000"
	.space	3
.LC7:
	.ascii	"FATAL ERROR: line %d DNR_PushTempImageToVOQ failed!"
	.ascii	"\012\000"
	.space	3
.LC8:
	.ascii	"line %d clear all tmp img!\012\000"
.LC9:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC10:
	.ascii	"can NOT destroy a not-opened Chan\000"
	.space	2
.LC11:
	.ascii	"can NOT start a not-opened Chan\000"
.LC12:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC13:
	.ascii	"ERROR: s32VcmpWmStartLine > s32VcmpWmEndLine\012\000"
	.space	2
.LC14:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC15:
	.ascii	"ChanID out of range!\000"
	.space	3
.LC16:
	.ascii	"VoUsingFrameArray is NULL\000"
	.space	2
.LC17:
	.ascii	"Fun: %s, L: %d..Ordering Error1!, Count: %d, i: %d\012"
	.ascii	"\000"
.LC18:
	.ascii	"Fun: %s, L: %d..Ordering Error2!, Count: %d, i: %d,"
	.ascii	" j: %d\012\000"
	.space	1
.LC19:
	.ascii	"LQue%d\000"
	.space	1
.LC20:
	.ascii	"p_image is NULL\000"
.LC21:
	.ascii	"%s %d, This channel %d is destroyed or doesn't exis"
	.ascii	"t\012\000"
	.space	2
.LC22:
	.ascii	"RelImgID=%d more then 64\012\000"
	.space	2
.LC23:
	.ascii	"nnn RelImgID %d  [p_local_img: %#x, p_image: %#x]\012"
	.ascii	"\000"
	.space	1
.LC24:
	.ascii	"This channel %d is destroyed or doesn't exist\012\000"
	.space	1
.LC25:
	.ascii	"######Error: %s, %d state:%d image_id:%d \012\000"
	.space	1
.LC26:
	.ascii	"*****Error: %s, %d state:%d image_id:%d \012\000"
	.space	2
.LC27:
	.ascii	"FATAL ERROR: line %d IMGQUE_InsertImage failed!\012"
	.ascii	"\000"
	.space	3
.LC28:
	.ascii	"WARNNING:Get first image is not I type!\012\000"
	.space	3
.LC29:
	.ascii	"DNR_PushTempImageToVOQ return %d!\012\000"
	.space	1
.LC30:
	.ascii	"Error: %s, %d\012\000"
	.space	1
.LC31:
	.ascii	"Line %d Dnr fast forward fast back failed! TempImag"
	.ascii	"eNum %d s32ValidImgNum %d\012\000"
	.space	2
.LC32:
	.ascii	"line: %d pImageLogic is null!\012\000"
	.space	1
.LC33:
	.ascii	"Last frame ID changed, vdmQ_id(%d) -> dnrQ_id(%d).\012"
	.ascii	"\000"
.LC34:
	.ascii	"dnr_pts: %lld -> %lld Usertag = %lld\012\000"
	.space	2
.LC35:
	.ascii	"dnr_format: 0x%08x\012\000"
.LC36:
	.ascii	"%u\012\000"
.LC37:
	.ascii	"DNRDataSourceFlag is not expected value!\012\000"
	.space	2
.LC38:
	.ascii	"image_width out of range!\000"
	.space	2
.LC39:
	.ascii	"WRONG:DNRDataSourceFlag = %d\012\000"
	.space	2
.LC40:
	.ascii	"[ChanID  %d] IMGQUE_DeleteImage failed %#x  [imageA"
	.ascii	"ddr: %#x, id: %d]\012\000"
	.space	2
.LC41:
	.ascii	"[ChanID  %d] IMGQUE_GetImage failed ret %#x\012\000"
	.space	3
.LC42:
	.ascii	"Last frame output failed, image size err!image_widt"
	.ascii	"h: %d, image_height: %d\012\000"
.LC43:
	.ascii	"Dnr fast forward fast back failed!\012\000"
.LC44:
	.ascii	"Dnr fast back optimize failed!\012\000"
.LC45:
	.ascii	"Last frame already output: %s, %d.\012\000"
.LC46:
	.ascii	"IMGQUE_InsertImage err\012\000"
.LC47:
	.ascii	"@@@@DNR Copy VDEC Inframe,image_id is %d,MirrorEn i"
	.ascii	"s %d \012\000"
	.space	2
.LC48:
	.ascii	"DNR receive Capture CMD,set flag to 1\012\000"
	.space	1
.LC49:
	.ascii	"Last frame output failed, DelayTime > 500!\012\000"
.LC50:
	.ascii	"*********************** DNR not ready *************"
	.ascii	"**********\012\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 302808
.LANCHOR3 = . + 310992
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.space	4
	.type	s_DnrChan, %object
	.size	s_DnrChan, 306784
s_DnrChan:
	.space	306784
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
	.type	timePrevDo.35040, %object
	.size	timePrevDo.35040, 4
timePrevDo.35040:
	.space	4
	.type	last_rec_pos_time.36318, %object
	.size	last_rec_pos_time.36318, 16
last_rec_pos_time.36318:
	.space	16
	.type	last_rec_pos_time.36200, %object
	.size	last_rec_pos_time.36200, 16
last_rec_pos_time.36200:
	.space	16
	.type	last_rec_pos_time.36066, %object
	.size	last_rec_pos_time.36066, 16
last_rec_pos_time.36066:
	.space	16
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	last_rec_pos_time.35650, %object
	.size	last_rec_pos_time.35650, 16
last_rec_pos_time.35650:
	.space	16
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.35813, %object
	.size	last_rec_pos_time.35813, 16
last_rec_pos_time.35813:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
