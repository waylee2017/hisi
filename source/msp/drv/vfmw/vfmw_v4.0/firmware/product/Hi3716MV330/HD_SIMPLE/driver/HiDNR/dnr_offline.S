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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
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
	subs	r2, r0, #0	@ ChanID, ChanID
	movweq	r3, #:lower16:.LANCHOR0	@ tmp136,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp136,
	mvnne	r0, #0	@ D.32900,
	moveq	r0, r2	@ D.32900, ChanID
	streq	r2, [r3, #16]	@ ChanID, <variable>.s32IsOpen
	streq	r2, [r3, #20]	@ ChanID, <variable>.InstMode
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
	ldr	r3, [r0, #128]	@ D.33274, <variable>.is_fld_save
	cmp	r3, #0	@ D.33274,
	bne	.L15	@,
	ldr	r3, [r0, #140]	@ <variable>.format, <variable>.format
	tst	r3, #3	@ <variable>.format,
	movne	r0, #0	@, D.33287
	moveq	r0, #1	@, D.33287
	bx	lr	@
.L15:
	cmp	r3, #1	@ D.33274,
	beq	.L22	@,
.L17:
	mov	r0, #0	@ D.33287,
	bx	lr	@
.L22:
	ldr	r1, [r0, #132]	@ <variable>.top_fld_type, <variable>.top_fld_type
	ands	r3, r1, #3	@ D.33280, <variable>.top_fld_type,
	beq	.L18	@,
	ldr	r2, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	tst	r2, #3	@ <variable>.bottom_fld_type,
	bne	.L17	@,
.L18:
	ldr	ip, [r0, #140]	@ <variable>.format, <variable>.format
	tst	ip, #3	@ <variable>.format,
	beq	.L19	@,
	cmp	r3, #0	@ D.33280,
	bne	.L19	@,
	ldr	r0, [r0, #136]	@ <variable>.bottom_fld_type, <variable>.bottom_fld_type
	ands	r0, r0, #3	@ D.33287, <variable>.bottom_fld_type,
	movne	r0, #1	@, D.33287,
	bx	lr	@
.L19:
	mov	r0, #1	@ D.33287,
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
	mov	r0, #0	@ D.33477,
	bx	lr	@
.L27:
	ldr	r1, [r0, #16]	@ <variable>.video_standard, <variable>.video_standard
	cmp	r1, #0	@ <variable>.video_standard,
	ldreqb	r0, [r0, #4]	@ zero_extendqisi2	@ D.33477, <variable>.pic_structure
	bxeq	lr	@
	mov	r0, #0	@ D.33477,
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
	ldr	r2, [r2, #16]	@ D.33519, <variable>.video_standard
	cmp	r2, #8	@ D.33519,
	beq	.L29	@,
	cmp	r2, #1	@ D.33519,
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
	ldr	r5, [r3, #3048]	@ g_DREnable, g_DREnable
	mla	r2, r2, r1, ip	@ tmp178, tmp177, NextInstId, tmp199
	cmp	r5, #1	@ g_DREnable,
	ldrnesb	r4, [r0, #2]	@ iftmp.480, <variable>.dr_en
	moveq	r4, r5	@ iftmp.480, prephitmp.773
	str	r4, [r2, #36]	@ iftmp.480, <variable>.enDR
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	uxtbne	r5, r4	@ prephitmp.773, iftmp.480
	strb	r5, [r0, #2]	@ prephitmp.773, <variable>.dr_en
	ldr	r5, [r3, #3052]	@ g_DBEnable, g_DBEnable
	mla	r2, r2, r1, ip	@ tmp187, tmp186, NextInstId, tmp199
	cmp	r5, #1	@ g_DBEnable,
	ldrnesb	r4, [r0, #1]	@ iftmp.482, <variable>.db_en
	moveq	r4, r5	@ iftmp.482, prephitmp.762
	uxtbne	r5, r4	@ prephitmp.762, iftmp.482
	str	r4, [r2, #40]	@ iftmp.482, <variable>.enDB
	strb	r5, [r0, #1]	@ prephitmp.762, <variable>.db_en
	ldr	r3, [r3, #3056]	@ g_DCEnable, g_DCEnable
	cmp	r3, #1	@ g_DCEnable,
	moveq	r4, r3	@ prephitmp.774, g_DCEnable
	movw	r3, #:lower16:76696	@ tmp195,
	movt	r3, #:upper16:76696	@ tmp195,
	ldrnesb	r2, [r0, #0]	@ iftmp.484, <variable>.dc_en
	moveq	r2, r4	@ iftmp.484, prephitmp.774
	mla	ip, r3, r1, ip	@ tmp196, tmp195, NextInstId, tmp199
	uxtbne	r4, r2	@ prephitmp.774, iftmp.484
	str	r2, [ip, #44]	@ iftmp.484, <variable>.enDC
	strb	r4, [r0, #0]	@ prephitmp.774, <variable>.dc_en
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
	mov	r0, r4	@ D.33584, tmp230
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
	ldr	ip, [r1, #188]	@ D.33563, <variable>.Cur1DImage.format
	and	r4, ip, #3072	@ tmp153, D.33563,
	cmp	r4, #3072	@ tmp153,
	moveq	ip, #1	@ tmp160,
	streq	ip, [r1, #24]	@ tmp160, <variable>.NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp160, <variable>.pic_structure
	beq	.L49	@,
	ands	r4, ip, #2048	@ tmp171, D.33563,
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
	tst	ip, #1024	@ D.33563,
	mvneq	r0, #0	@ D.33584,
	beq	.L44	@,
	str	r4, [r1, #24]	@ tmp171, <variable>.NeedStartAgain
	mov	r0, r4	@ D.33584, tmp171
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
	movne	r0, #0	@, D.33891
	moveq	r0, #1	@, D.33891
	bx	lr	@
.L53:
	mov	r0, #1	@ D.33891,
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
	movne	r0, #1	@ D.34644,
	bxne	lr	@
	ldr	r0, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r2, [ip, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	r0, r2	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	movhi	r0, #0	@ D.34644,
	bxhi	lr	@
	add	r3, r3, #75776	@ tmp157, tmp141,
	ldr	r0, [r1, #148]	@ <variable>.image_height, <variable>.image_height
	add	ip, r3, #912	@ tmp157, tmp157,
	ldr	r1, [ip, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	r0, r1	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	movhi	r0, #0	@, D.34644
	movls	r0, #1	@, D.34644
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L79	@,
	ldr	r6, [r2, #0]	@ <variable>.pstCaptureInFrm, <variable>.pstCaptureInFrm
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movw	r5, #:lower16:76676	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	movt	r5, #:upper16:76676	@ tmp141,
	movw	ip, #:lower16:76680	@ tmp144,
	movw	r4, #:lower16:76664	@ tmp147,
	movt	ip, #:upper16:76680	@ tmp144,
	str	r6, [r3, r5]	@ <variable>.pstCaptureInFrm, <variable>.pCaptureImageIn
	movt	r4, #:upper16:76664	@ tmp147,
	ldr	r2, [r2, #4]	@ <variable>.pstCaptureOutFrm, <variable>.pstCaptureOutFrm
	str	r1, [r3, r4]	@ DNRDataSourceFlag, <variable>.DNRCaptureEnableFlag
	str	r2, [r3, ip]	@ <variable>.pstCaptureOutFrm, <variable>.pCaptureImageOut
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L79:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2713	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35014,
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
	ldr	sl, [r3, #4]	@ i.1035, <variable>.LogicImageQue.head
	and	r4, r4, #63	@ i.1034, i,
	cmp	sl, r4	@ i.1035, i.1034
	moveq	r5, #0	@ s32Count,
	beq	.L85	@,
	movw	r9, #19174	@ tmp169,
	mul	r9, r9, fp	@ tmp168, tmp169, ChanID
	add	r3, r9, r4	@ tmp170, tmp168, i.1034
	add	ip, r6, r3, asl #2	@, tmp175, tmp214, tmp170,
	ldr	r0, [ip, #1056]	@ pImage.1036, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1036,
	movne	r5, #0	@ s32Count,
	bne	.L87	@,
	b	.L86	@
.L88:
	ldr	r0, [r3, #1056]	@ pImage.1036, <variable>.LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage.1036,
	beq	.L86	@,
.L87:
	mov	r1, r7	@, DecPhy
	mov	r2, r8	@, DecPhyEndAddr
	bl	DNR_FsOccupyByVO	@
	add	r4, r4, #1	@ i.1031, i.1034,
	and	r4, r4, #63	@ i.1034, i.1031,
	add	r1, r9, r4	@ tmp180, tmp219, i.1034
	cmp	r4, sl	@ i.1034, i.1035
	add	r3, r6, r1, asl #2	@, tmp185, tmp214, tmp180,
	add	r5, r5, r0	@ s32Count, s32Count,
	bne	.L88	@,
.L85:
	movw	r2, #:lower16:76696	@ tmp190,
	movt	r2, #:upper16:76696	@ tmp190,
	movw	r0, #26416	@ tmp188,
	and	sl, sl, #63	@ i.1033, i.1035,
	mla	ip, r2, fp, r6	@ tmp191, tmp190, ChanID, tmp214
	movw	r2, #:lower16:.LANCHOR0	@ tmp187,
	movt	r2, #:upper16:.LANCHOR0	@ tmp187,
	ldr	r4, [ip, r0]	@ D.34910, <variable>.LogicImageQue.tail
	cmp	r4, sl	@ D.34910, i.1033
	beq	.L82	@,
	movw	r9, #19174	@ tmp195,
	mul	r9, r9, fp	@ tmp194, tmp195, ChanID
	add	r3, r9, sl	@ tmp196, tmp194, i.1033
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
	add	sl, sl, #1	@ i.1032, i.1033,
	and	sl, sl, #63	@ i.1033, i.1032,
	add	ip, r9, sl	@ tmp206, tmp217, i.1033
	cmp	sl, r4	@ i.1033, D.34910
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
	beq	.L104	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L99	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	add	r0, r2, #976	@ tmp141, tmp139,
	cmp	r3, r0	@ pImageQueue, tmp141
	beq	.L105	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1955	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34372,
	ldmfd	sp!, {r3, pc}	@
.L105:
	add	r1, r1, #178	@ tmp145, ImageID,
	mov	r3, #0	@ tmp150,
	mov	r0, r3	@ D.34372, tmp150
	add	r2, r2, r1, asl #2	@, tmp148, tmp139, tmp145,
	str	r3, [r2, #8]	@ tmp150, <variable>.LogicImageIsUsed
	ldmfd	sp!, {r3, pc}	@
.L99:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1934	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34372,
	ldmfd	sp!, {r3, pc}	@
.L104:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1933	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC4	@,
	movt	r3, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34372,
	ldmfd	sp!, {r3, pc}	@
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
	ldr	ip, [r4, #4]	@ D.33257, <variable>.TempImageNum
	cmp	ip, #0	@ D.33257,
	ble	.L118	@,
	mov	r9, #392	@ tmp189,
	ldr	r5, [sp, #4]	@, %sfp
	mla	r6, r9, ip, r3	@ tmp192, tmp189, D.33257, tmp174
	movw	sl, #19174	@ tmp219,
	mul	sl, sl, r5	@ tmp220, tmp219,
	sub	r7, ip, #1	@ i, D.33257,
	add	r2, r6, r8	@ tmp193, tmp192, tmp215
	sub	r5, r7, #1	@ i, i,
	add	fp, r2, #51456	@ ivtmp.1093, tmp193,
	mov	r6, #0	@ tmp221,
	add	fp, fp, #80	@ ivtmp.1093, ivtmp.1093,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movw	r2, #646	@,
	ldr	r4, [fp, #-216]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	and	ip, r7, #1	@ tmp227, i,
	mov	r9, r6	@ tmp205, tmp221
	add	lr, sl, r4	@ tmp198, tmp220, <variable>.image_id
	mov	r7, r8	@ tmp195, tmp215
	sub	r4, fp, #392	@ ivtmp.1093, ivtmp.1093,
	add	r3, r8, lr, asl #2	@, tmp203, tmp215, tmp198,
	add	lr, r3, #720	@ tmp204, tmp203,
	str	r6, [lr, #0]	@ tmp221, <variable>.LogicImageIsUsed
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	ldr	ip, [sp, #0]	@,
	beq	.L117	@,
	cmp	ip, #0	@ tmp227,
	beq	.L109	@,
	ldr	r2, [r4, #-216]	@ <variable>.image_id, <variable>.image_id
	sub	r5, r5, #1	@ i, i,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	add	r7, sl, r2	@ tmp256, tmp220, <variable>.image_id
	movt	r1, #:upper16:.LC8	@,
	movw	r2, #646	@,
	sub	r4, fp, #784	@ ivtmp.1093, ivtmp.1093,
	add	r9, r8, r7, asl #2	@, tmp259, tmp215, tmp256,
	mov	r7, r8	@ tmp195, tmp215
	add	lr, r9, #720	@ tmp260, tmp259,
	mov	r9, r6	@ tmp205, tmp221
	str	r6, [lr, #0]	@ tmp221, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	beq	.L117	@,
.L109:
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
	sub	r4, r4, #784	@ ivtmp.1093, ivtmp.1093,
	add	ip, r8, r3, asl #2	@, tmp250, tmp215, tmp248,
	str	r6, [ip, #8]	@ tmp221, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	bne	.L109	@,
.L117:
	ldr	ip, [sp, #4]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp210,
	movt	r3, #:upper16:76696	@ tmp210,
	mov	r0, r9	@ D.33261, tmp205
	mla	lr, r3, ip, r7	@ tmp211, tmp210,, tmp195
	add	r2, lr, #51456	@ tmp212, tmp211,
	add	r1, r2, #72	@ tmp212, tmp212,
	str	r9, [r1, #4]	@ tmp205, <variable>.TempImageNum
.L108:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L118:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC7	@,
	mov	r2, #636	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@ tmp185,
	mvn	r0, #0	@ D.33261,
	str	r1, [r4, #4]	@ tmp185, <variable>.TempImageNum
	b	.L108	@
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
	subs	r2, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L124	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r1, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L125	@,
	mov	r0, r2	@ D.33205, ChanID
	str	r2, [r3, #20]	@ ChanID, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L125:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #575	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC9	@,
	movt	r3, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33205,
	ldmfd	sp!, {r3, pc}	@
.L124:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #574	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33205,
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L131	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp138,
	movt	r1, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r1, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L132	@,
	bl	DNR_StopChan	@
	mov	r0, r4	@ D.33194, ChanID
	ldmfd	sp!, {r4, pc}	@
.L132:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #564	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC10	@,
	movt	r3, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33194,
	ldmfd	sp!, {r4, pc}	@
.L131:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #563	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33194,
	ldmfd	sp!, {r4, pc}	@
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
	subs	r1, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L138	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L139	@,
	mov	r0, r1	@ D.33105, ChanID
	str	r2, [r3, #20]	@ <variable>.s32IsOpen, <variable>.InstMode
	ldmfd	sp!, {r3, pc}	@
.L139:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #433	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33105,
	ldmfd	sp!, {r3, pc}	@
.L138:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #432	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33105,
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r3, r0, #0	@ ChanID, ChanID
	bne	.L146	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	ldr	ip, [r2, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #1	@ <variable>.s32IsOpen,
	bne	.L147	@,
	cmp	r1, #0	@ pArgs,
	beq	.L148	@,
	ldr	r5, [r1, #12]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	movw	r4, #:lower16:76636	@ tmp146,
	movt	r4, #:upper16:76636	@ tmp146,
	mov	r0, r3	@ D.33090, ChanID
	movw	ip, #:lower16:76652	@ tmp149,
	movt	ip, #:upper16:76652	@ tmp149,
	str	r5, [r2, r4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	ldr	r3, [r1, #16]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	str	r3, [r2, ip]	@ <variable>.u32DispOptimizeFlag, <variable>.u32DispOptimizeFlag
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L147:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #422	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33090,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L146:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #421	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33090,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L148:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #423	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33090,
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ ChanID, ChanID
	bne	.L155	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	ldr	ip, [r2, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #1	@ <variable>.s32IsOpen,
	bne	.L156	@,
	cmp	r1, #0	@ pArgs,
	beq	.L157	@,
	ldr	ip, [r1, #0]	@ tmp147,* pArgs
	movw	r1, #:lower16:76632	@ tmp146,
	movt	r1, #:upper16:76632	@ tmp146,
	mov	r0, r3	@ D.33075, ChanID
	str	ip, [r2, r1]	@ tmp147, <variable>.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L156:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #410	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33075,
	ldmfd	sp!, {r3, pc}	@
.L155:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #409	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33075,
	ldmfd	sp!, {r3, pc}	@
.L157:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #411	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33075,
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L168	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp182,
	movt	r3, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L169	@,
	cmp	r1, #0	@ pArgs,
	beq	.L170	@,
	movw	r2, #:lower16:76684	@ tmp151,
	movt	r2, #:upper16:76684	@ tmp151,
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	ip, [r3, r2]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	strb	r0, [r3, #10]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldreqsb	r0, [r1, #0]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movweq	ip, #:lower16:76696	@ tmp154,
	ldrneb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	movteq	ip, #:upper16:76696	@ tmp154,
	streq	r0, [r3, ip]	@ <variable>.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	strneb	ip, [r3, #9]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldrsb	r0, [r1, #1]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, #1	@ <variable>.s32VcmpEn,
	beq	.L171	@,
.L165:
	mov	r0, #0	@ D.33041,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L171:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	strb	ip, [r3, #11]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldrsb	r3, [r1, #2]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r3, #1	@ <variable>.s32WmEn,
	beq	.L172	@,
	movw	r0, #:lower16:76624	@ tmp176,
	movw	r3, #:lower16:76628	@ tmp179,
	movt	r0, #:upper16:76624	@ tmp176,
	movt	r3, #:upper16:76628	@ tmp179,
	movw	ip, #65535	@ tmp177,
	str	ip, [r4, r0]	@ tmp177, <variable>.s32VcmpWmStartLine
	mov	r0, #0	@ D.33041,
	str	ip, [r4, r3]	@ tmp177, <variable>.s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L172:
	ldr	r2, [r1, #4]	@ D.33060, <variable>.s32VcmpWmStartLine
	movw	r5, #:lower16:76624	@ tmp165,
	movt	r5, #:upper16:76624	@ tmp165,
	movw	r6, #:lower16:76628	@ tmp167,
	movt	r6, #:upper16:76628	@ tmp167,
	str	r2, [r4, r5]	@ D.33060, <variable>.s32VcmpWmStartLine
	ldr	r0, [r1, #8]	@ D.33061, <variable>.s32VcmpWmEndLine
	cmp	r2, r0	@ D.33060, D.33061
	str	r0, [r4, r6]	@ D.33061, <variable>.s32VcmpWmEndLine
	ble	.L165	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #65535	@ tmp171,
	mov	r0, #0	@ D.33041,
	str	r1, [r4, r6]	@ tmp171, <variable>.s32VcmpWmEndLine
	str	r1, [r4, r5]	@ tmp171, <variable>.s32VcmpWmStartLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L169:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #365	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC11	@,
	movt	r3, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33041,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L168:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #364	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33041,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L170:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #366	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC12	@,
	movt	r3, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33041,
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
	ldr	r0, [r3, #0]	@ D.32855, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.32855,
	beq	.L174	@,
	blx	r0	@ D.32855
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #0]	@ tmp137, s_eDnrDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L174:
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
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r6, r1	@ VoUsingFrameArray, VoUsingFrameArray
	str	r2, [sp, #20]	@ s32Num, %sfp
	bne	.L218	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	beq	.L219	@,
	add	r0, sp, #24	@,,
	mov	r1, #8	@,
	bl	__memzero	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp227,
	movt	r3, #:upper16:.LANCHOR0	@ tmp227,
	movw	r0, #26408	@ tmp169,
	movw	r5, #26412	@ tmp171,
	ldr	r2, [r3, r0]	@ i, <variable>.LogicImageQue.history
	ldr	r1, [r3, r5]	@ i.1339, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1342, i,
	cmp	r1, r2	@ i.1339, i.1342
	moveq	ip, r4	@ s32UsingCount, ChanID
	beq	.L182	@,
	mov	ip, r4	@ s32UsingCount, ChanID
.L186:
	add	r1, r3, r2, asl #2	@, tmp177, tmp227, i.1342,
	add	r4, r6, ip, asl #3	@, D.34804, VoUsingFrameArray, s32UsingCount,
	ldr	r1, [r1, #1056]	@ pImage, <variable>.LogicImageQue.image_ptr
	subs	lr, r1, #0	@ tmp185, pImage,
	movne	lr, #1	@ tmp185
	cmp	ip, #63	@ s32UsingCount,
	movgt	lr, #0	@, tmp185,
	cmp	lr, #0	@ tmp185,
	beq	.L183	@,
	ldr	lr, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	lr, [r6, ip, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	r0, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r0, [r4, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L184:
	add	r2, r2, #1	@ i.1319, i.1342,
	ldr	r1, [r3, r5]	@ i.1339, <variable>.LogicImageQue.head
	and	r2, r2, #63	@ i.1342, i.1319,
	cmp	r1, r2	@ i.1339, i.1342
	bne	.L186	@,
.L182:
	movw	r5, #26416	@ tmp192,
	and	r2, r1, #63	@ i.1340, i.1339,
	ldr	r1, [r3, r5]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	cmp	r1, r2	@ <variable>.LogicImageQue.tail, i.1340
	beq	.L193	@,
.L211:
	add	lr, r3, r2, asl #2	@, tmp199, tmp227, i.1340,
	add	r4, r6, ip, asl #3	@, temp.1326, VoUsingFrameArray, s32UsingCount,
	ldr	r1, [lr, #1056]	@ pImage.1320, <variable>.LogicImageQue.image_ptr
	subs	r0, r1, #0	@ tmp207, pImage.1320,
	movne	r0, #1	@ tmp207
	cmp	ip, #63	@ s32UsingCount,
	movgt	r0, #0	@, tmp207,
	cmp	r0, #0	@ tmp207,
	beq	.L191	@,
	ldr	r0, [r1, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	str	r0, [r6, ip, asl #3]	@ <variable>.luma_phy_addr, <variable>.FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	r1, [r1, #360]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r1, [r4, #4]	@ <variable>.ImgSize, <variable>.FrameSize
.L192:
	add	r2, r2, #1	@ i.1330, i.1340,
	ldr	lr, [r3, r5]	@ <variable>.LogicImageQue.tail, <variable>.LogicImageQue.tail
	and	r2, r2, #63	@ i.1340, i.1330,
	cmp	lr, r2	@ <variable>.LogicImageQue.tail, i.1340
	bne	.L211	@,
.L193:
	cmp	ip, #0	@ s32UsingCount,
	beq	.L188	@,
	ldr	r3, [r6, #0]	@, <variable>.FrameAddr
	cmp	r3, #-2147483648	@,
	str	r3, [sp, #16]	@, %sfp
	moveq	r4, #0	@ i.1334,
	beq	.L190	@,
	add	sl, r6, #16	@ ivtmp.1317, VoUsingFrameArray,
	mov	fp, r6	@ VoUsingFrameArray.1332, VoUsingFrameArray
	mov	r5, #0	@ i.1331,
.L201:
	add	r4, r5, #1	@ j, i.1331,
	cmp	r4, ip	@ j, s32UsingCount
	bge	.L188	@,
	ldr	r8, [sl, #-8]	@ D.34821, <variable>.FrameAddr
	cmp	r8, #-2147483648	@ D.34821,
	mov	r0, r8	@ D.34828, D.34821
	beq	.L194	@,
	mvn	r3, r4	@ tmp231, j
	add	r7, r3, ip	@ tmp230, tmp231, s32UsingCount
	tst	r7, #1	@ tmp230,
	mov	r1, sl	@ ivtmp.1308, ivtmp.1317
	mov	r7, r5	@ MinIndex, i.1331
	mov	r3, r4	@ j.1333, j
	beq	.L196	@,
	ldr	r7, [r6, r5, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r1, sl	@ ivtmp.1308, ivtmp.1317
	ldr	r0, [r1], #8	@ D.34828, <variable>.FrameAddr
	add	r3, r4, #1	@ j.1333, j,
	cmp	r7, r8	@ <variable>.FrameAddr, D.34821
	movle	r7, r5	@ MinIndex, i.1331
	movgt	r7, r4	@ MinIndex, j
	cmp	r0, #-2147483648	@ D.34828,
	bne	.L196	@,
	b	.L214	@
.L198:
	ldr	r9, [r2], #8	@ D.34828, <variable>.FrameAddr
	cmp	r9, #-2147483648	@ D.34828,
	beq	.L214	@,
	ldr	lr, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r0, [r1, #8]	@ D.34828, <variable>.FrameAddr
	add	r1, r2, #8	@ ivtmp.1308, tmp233,
	cmp	lr, r9	@ <variable>.FrameAddr, D.34828
	movgt	r7, r3	@ MinIndex, j.1333
	cmp	r0, #-2147483648	@ D.34828,
	add	r3, r3, #1	@ j.1333, j.1333,
	beq	.L214	@,
.L196:
	ldr	r9, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r1	@ tmp233, ivtmp.1308
	cmp	r9, r0	@ <variable>.FrameAddr, D.34828
	movgt	r7, r3	@ MinIndex, j.1333
	add	r3, r3, #1	@ j.1333, j.1333,
	cmp	r3, ip	@ j.1333, s32UsingCount
	blt	.L198	@,
	cmp	r7, r5	@ MinIndex, i.1331
	beq	.L199	@,
	ldr	r3, [sp, #16]	@, %sfp
	add	r0, r6, r7, asl #3	@, temp.1337, VoUsingFrameArray, MinIndex,
	ldr	r2, [r6, r7, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [fp, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r3, [sp, #24]	@, TempVoUsingFrameInfo.FrameAddr
	ldr	lr, [r0, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r2, [fp, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r8, [sp, #24]	@ TempVoUsingFrameInfo.FrameAddr, TempVoUsingFrameInfo.FrameAddr
	str	r1, [sp, #28]	@ <variable>.FrameSize, TempVoUsingFrameInfo.FrameSize
	str	lr, [fp, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	str	r8, [r6, r7, asl #3]	@ TempVoUsingFrameInfo.FrameAddr, <variable>.FrameAddr
	ldr	r5, [sp, #28]	@ TempVoUsingFrameInfo.FrameSize, TempVoUsingFrameInfo.FrameSize
	ldr	r8, [sl, #-8]	@ D.34821, <variable>.FrameAddr
	str	r5, [r0, #4]	@ TempVoUsingFrameInfo.FrameSize, <variable>.FrameSize
.L199:
	cmp	r8, #-2147483648	@ D.34821,
	sub	fp, sl, #8	@ VoUsingFrameArray.1332, ivtmp.1317,
	str	r8, [sp, #16]	@ D.34821, %sfp
	add	sl, sl, #8	@ ivtmp.1317, ivtmp.1317,
	mov	r5, r4	@ i.1331, j
	bne	.L201	@,
.L190:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC17	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	mov	r3, #2464	@,
	str	ip, [sp, #0]	@ s32UsingCount,
	str	r4, [sp, #4]	@ i.1334,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34785,
	b	.L179	@
.L214:
	mov	r4, r3	@ j, j.1333
.L194:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r2, #:lower16:.LANCHOR2	@,
	movt	r1, #:upper16:.LC18	@,
	movt	r2, #:upper16:.LANCHOR2	@,
	movw	r3, #2472	@,
	str	ip, [sp, #0]	@ s32UsingCount,
	str	r5, [sp, #4]	@ i.1331,
	str	r4, [sp, #8]	@ j,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34785,
.L179:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L183:
	cmp	ip, #63	@ s32UsingCount,
	ble	.L184	@,
	mvn	r0, #0	@ D.34785,
	b	.L179	@
.L191:
	cmp	ip, #63	@ s32UsingCount,
	ble	.L192	@,
	mvn	r0, #0	@ D.34785,
	b	.L179	@
.L188:
	ldr	r0, [sp, #20]	@, %sfp
	str	ip, [r0, #0]	@ s32UsingCount,
	mov	r0, #0	@ D.34785,
	b	.L179	@
.L218:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2405	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34785,
	b	.L179	@
.L219:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2406	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34785,
	b	.L179	@
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
	ldr	r2, .L222	@ tmp136,
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
.L223:
	.align	2
.L222:
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
	@ link register save eliminated.
	mov	r0, #0	@,
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
	ldr	r3, [r4, #192]	@ D.33495, <variable>.Cur1DImage.image_width
	add	r2, r3, #15	@ tmp164, D.33495,
	str	r3, [r5, #20]	@ D.33495, <variable>.PicWidth
	ldr	ip, [r4, #196]	@ D.33497, <variable>.Cur1DImage.image_height
	mov	r1, r2, asr #4	@ tmp165, tmp164,
	add	r0, ip, #15	@ tmp166, D.33497,
	str	ip, [r5, #24]	@ D.33497, <variable>.PicHeight
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #16
	sub	sp, sp, #16	@,,
	mvngt	r0, #0	@ D.34978,
	ble	.L232	@,
.L230:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L232:
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
	mov	r3, #1	@ tmp160,
	mov	r0, #0	@ D.34978,
	add	r5, r5, r4, asl #3	@, tmp158, tmp136, tmp153,
	str	r3, [r5, #16]	@ tmp160, <variable>.s32IsOpen
	b	.L230	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #440
	sub	sp, sp, #440	@,,
	ble	.L242	@,
.L234:
	mvn	r0, #0	@ D.34931,
.L239:
	add	sp, sp, #440	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L242:
	cmp	r1, #0	@ pChanMem,
	beq	.L234	@,
	ldr	r0, [r1, #0]	@ D.34936, <variable>.PhyAddr
	cmp	r0, #0	@ D.34936,
	beq	.L234	@,
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L234	@,
	ldr	r1, [r1, #8]	@ D.34940, <variable>.Length
	cmp	r1, #0	@ D.34940,
	ble	.L234	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp160,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp160,
	ldr	ip, [ip, #36]	@ D.34944, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34944,
	beq	.L235	@,
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
	blx	ip	@ D.34944
	cmp	r0, #0	@ D.34946
	bne	.L235	@,
	movw	r6, #:lower16:76696	@ tmp170,
	movt	r6, #:upper16:76696	@ tmp170,
	movw	r3, #:lower16:.LANCHOR0	@ tmp205,
	movt	r3, #:upper16:.LANCHOR0	@ tmp205,
	mul	r1, r6, r4	@ tmp169, tmp170, ChanID
	ldr	ip, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r4, r3, #8	@ tmp168, tmp205,
	mov	r7, r5	@ ivtmp.1483, tmp165
	mov	r6, r0	@ i, D.34946
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp180,
	add	lr, r1, r3	@ tmp177, tmp169, tmp205
	add	r5, r1, #26368	@ tmp171, tmp169,
	add	r0, lr, #456	@ tmp178, tmp177,
	add	r8, r5, #64	@ tmp171, tmp171,
	str	ip, [lr, #456]	@ tmp180, <variable>.s32ValidImgNum
	add	r5, r4, r1	@ ivtmp.1487, tmp168, tmp169
	ldr	r2, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, r8	@ pLogicImage, tmp168, tmp171
	ldr	r1, [sp, #32]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r8, r0	@ tmp209, tmp178
	rsb	r3, r1, r2	@ tmp189, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r0, #4]	@ tmp189, <variable>.s32ImgBlockMemSize
.L238:
	ldr	ip, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r6, ip	@ i, <variable>.s32ValidImgNum
	add	r6, r6, #1	@ i, i,
	ldrlt	ip, [r7, #8]	@ D.34958, MemArrange.FrameAddr
	add	r7, r7, #4	@ ivtmp.1483, ivtmp.1483,
	ldrge	ip, [sp, #32]	@ temp.1495, MemArrange.FrameAddr
	str	ip, [r5, #456]	@ temp.1495, <variable>.s32ImageAddr
	mov	r0, ip	@, temp.1495
	str	ip, [r4, #120]	@ temp.1495, <variable>.luma_2d_phy_addr
	add	r5, r5, #4	@ ivtmp.1487, ivtmp.1487,
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	cmp	r6, #64	@ i,
	str	r2, [r4, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #48]	@, <variable>.luma_2d_vir_addr
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	bne	.L238	@,
.L235:
	mov	r0, #0	@ D.34931,
	b	.L239	@
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
	mov	r4, r4, lsr #3	@ ivtmp.1538, <variable>.image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L244	@,
	ldr	r7, [r5, #148]	@ temp.1542, <variable>.image_height
	cmp	r7, #0	@ temp.1542,
	beq	.L244	@,
	ldr	r8, [r5, #172]	@ pretmp.1517, <variable>.image_stride
	mov	r6, r4	@ D.36070, ivtmp.1538
	ldr	r5, [r5, #144]	@ pretmp.1541, <variable>.image_width
	mov	r0, #0	@ CheckSum,
	bic	r8, r8, #3	@ pretmp.1543, pretmp.1517,
.L247:
	cmp	r5, #0	@ pretmp.1541,
	add	r1, r1, r8	@ p32, p32, pretmp.1543
	beq	.L245	@,
	mov	r3, #1	@ x,
	ldr	r2, [r1, #0]	@ tmp150,* p32
	cmp	r5, r3	@ pretmp.1541, x
	sub	ip, r5, #1	@ tmp154, pretmp.1541,
	and	ip, ip, r3	@ tmp156, tmp154,
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L245	@,
	cmp	ip, #0	@ tmp156,
	beq	.L246	@,
	mov	r3, #2	@ x,
	cmp	r5, r3	@ pretmp.1541, x
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp150
	bls	.L245	@,
.L246:
	add	lr, r3, #1	@ tmp157, x,
	mov	ip, r3, asr #2	@ tmp159, x,
	add	r3, lr, #1	@ x, tmp157,
	mov	r2, lr, asr #2	@ tmp163, tmp157,
	ldr	lr, [r1, ip, asl #2]	@ tmp160,* p32
	cmp	r5, r3	@ pretmp.1541, x
	ldr	r2, [r1, r2, asl #2]	@ tmp164,* p32
	add	r0, r0, lr	@ CheckSum, CheckSum, tmp160
	add	r0, r0, r2	@ CheckSum, CheckSum, tmp164
	bhi	.L246	@,
.L245:
	add	r4, r4, r6	@ ivtmp.1538, ivtmp.1538, D.36070
	rsb	r3, r6, r4	@ tmp151, D.36070, ivtmp.1538
	cmp	r7, r3	@ temp.1542, tmp151
	bhi	.L247	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L244:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r5, r1	@ pChanMem, pChanMem
	ble	.L266	@,
.L258:
	mvn	r0, #0	@ D.32984,
.L264:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L266:
	movw	r1, #:lower16:76696	@ tmp154,
	movt	r1, #:upper16:76696	@ tmp154,
	movw	r6, #:lower16:.LANCHOR0	@ tmp229,
	movt	r6, #:upper16:.LANCHOR0	@ tmp229,
	mul	r7, r1, r4	@ tmp153, tmp154, ChanID
	add	r8, r6, #8	@ tmp228, tmp229,
	str	r2, [sp, #28]	@,
	str	r3, [sp, #24]	@,
	add	sl, r8, r7	@ tmp155, tmp228, tmp153
	mov	r0, sl	@, tmp155
	bl	__memzero	@
	cmp	r5, #0	@ pChanMem,
	ldr	r2, [sp, #28]	@,
	ldr	r3, [sp, #24]	@,
	beq	.L258	@,
	ldr	r0, [r5, #0]	@ D.32996, <variable>.PhyAddr
	cmp	r0, #0	@ D.32996,
	beq	.L258	@,
	ldr	r1, [r5, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r1, #0	@ <variable>.VirAddr,
	beq	.L258	@,
	ldr	r1, [r5, #8]	@ D.33000, <variable>.Length
	cmp	r1, #0	@ D.33000,
	ble	.L258	@,
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp158,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp158,
	ldr	r9, [ip, #36]	@ D.33004, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r9, #0	@ D.33004,
	beq	.L259	@,
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
	blx	r9	@ D.33004
	cmp	r0, #0	@ D.33006
	bne	.L259	@,
	add	lr, r7, r6	@ tmp175, tmp153, tmp229
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r9, r7, #26368	@ tmp169, tmp153,
	add	r2, lr, #456	@ tmp176, tmp175,
	cmp	ip, #64	@ MemArrange.ValidFrameNum,
	movge	ip, #64	@ tmp178,
	str	ip, [lr, #456]	@ tmp178, <variable>.s32ValidImgNum
	add	r7, r9, #64	@ tmp169, tmp169,
	ldr	r1, [sp, #44]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	mov	r9, r0	@ i, D.33006
	ldr	r0, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r7, r8, r7	@ pLogicImage, tmp228, tmp169
	mov	fp, r2	@ tmp234, tmp176
	rsb	r3, r0, r1	@ tmp187, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r2, #4]	@ tmp187, <variable>.s32ImgBlockMemSize
	b	.L263	@
.L268:
	ldr	ip, [r5, #8]	@ D.33018, MemArrange.FrameAddr
	str	ip, [sl, #456]	@ D.33018, <variable>.s32ImageAddr
	mov	r0, ip	@, D.33018
	str	ip, [r7, #120]	@ D.33018, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	ldr	r3, [fp, #4]	@ <variable>.s32ImgBlockMemSize, <variable>.s32ImgBlockMemSize
	str	r3, [r7, #360]	@ <variable>.s32ImgBlockMemSize, <variable>.ImgSize
.L261:
	add	r9, r9, #1	@ i, i,
	add	r7, r7, #392	@ pLogicImage, pLogicImage,
	cmp	r9, #64	@ i,
	add	r5, r5, #4	@ ivtmp.1592, ivtmp.1592,
	add	sl, sl, #4	@ ivtmp.1596, ivtmp.1596,
	beq	.L267	@,
.L263:
	ldr	r2, [fp, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r2, r9	@ <variable>.s32ValidImgNum, i
	bgt	.L268	@,
	ldr	lr, [sp, #40]	@ temp.1607, MemArrange.FrameAddr
	str	lr, [sl, #456]	@ temp.1607, <variable>.s32ImageAddr
	mov	r0, lr	@, temp.1607
	str	lr, [r7, #120]	@ temp.1607, <variable>.luma_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r2, [r7, #88]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r7, #48]	@, <variable>.luma_2d_vir_addr
	b	.L261	@
.L259:
	mov	r0, #0	@ D.32984,
	b	.L264	@
.L267:
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
	mov	r0, #0	@ D.32984,
	add	r6, r6, r4, asl #3	@, tmp224, tmp229, tmp219,
	str	r3, [r6, #16]	@ tmp226, <variable>.s32IsOpen
	b	.L264	@
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
	ble	.L270	@,
	bl	OSAL_GetTimeInMs	@
	movw	r5, #:lower16:.LANCHOR1	@ tmp146,
	movt	r5, #:upper16:.LANCHOR1	@ tmp146,
	ldr	r3, [r4, #0]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r1, [r5, #3060]	@ timePrevDo, timePrevDo
	rsb	r2, r1, r0	@ tmp140, timePrevDo,
	cmp	r2, r3	@ tmp140, g_DnrSleepTime
	movcc	r3, #1	@ D.33413,
	bcc	.L271	@,
.L270:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.33413,
	str	r0, [r5, #3060]	@, timePrevDo
.L271:
	mov	r0, r3	@, D.33413
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
	ldr	r1, [r1, #192]	@ temp.1661, <variable>.p_usrdat
	mov	r5, r0	@ ChanID, ChanID
	cmp	r1, #0	@ temp.1661,
	beq	.L276	@,
	movw	r2, #:lower16:pstVdecUsdPool	@ tmp143,
	movt	r2, #:upper16:pstVdecUsdPool	@ tmp143,
	ldr	r3, [r2, r0, asl #2]	@ tmp144, pstVdecUsdPool
	cmp	r3, #0	@ tmp144,
	beq	.L276	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp145,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp145,
	ldr	r2, [ip, r0, asl #2]	@ temp.1663, s_pstVfmwChan
	cmp	r2, #0	@ temp.1663,
	beq	.L276	@,
	movw	r3, #:lower16:211828	@ tmp146,
	movt	r3, #:upper16:211828	@ tmp146,
	ldr	ip, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	ip, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L281	@,
.L276:
	ldr	r1, [r4, #196]	@ temp.1666, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1666,
	beq	.L277	@,
	movw	ip, #:lower16:pstVdecUsdPool	@ tmp150,
	movt	ip, #:upper16:pstVdecUsdPool	@ tmp150,
	ldr	r2, [ip, r5, asl #2]	@ tmp151, pstVdecUsdPool
	cmp	r2, #0	@ tmp151,
	beq	.L277	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	ldr	r2, [r3, r5, asl #2]	@ temp.1668, s_pstVfmwChan
	cmp	r2, #0	@ temp.1668,
	beq	.L277	@,
	movw	r3, #:lower16:211828	@ tmp153,
	movt	r3, #:upper16:211828	@ tmp153,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	ip, [r2, r3]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, ip	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L282	@,
.L277:
	ldr	r1, [r4, #200]	@ temp.1671, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1671,
	beq	.L278	@,
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp157,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp157,
	ldr	r2, [r0, r5, asl #2]	@ tmp158, pstVdecUsdPool
	cmp	r2, #0	@ tmp158,
	beq	.L278	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp159,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp159,
	ldr	r2, [ip, r5, asl #2]	@ temp.1673, s_pstVfmwChan
	cmp	r2, #0	@ temp.1673,
	beq	.L278	@,
	movw	ip, #:lower16:211828	@ tmp160,
	movt	ip, #:upper16:211828	@ tmp160,
	ldr	r0, [r4, #384]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	ldr	r3, [r2, ip]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	cmp	r0, r3	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	beq	.L283	@,
.L278:
	ldr	r1, [r4, #204]	@ D.34654, <variable>.p_usrdat
	cmp	r1, #0	@ D.34654,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r0, #:lower16:pstVdecUsdPool	@ tmp164,
	movt	r0, #:upper16:pstVdecUsdPool	@ tmp164,
	ldr	r2, [r0, r5, asl #2]	@ tmp165, pstVdecUsdPool
	cmp	r2, #0	@ tmp165,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp166,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp166,
	ldr	r2, [r3, r5, asl #2]	@ D.34661, s_pstVfmwChan
	cmp	r2, #0	@ D.34661,
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
.L281:
	bl	UnMarkUsdByDnr	@
	mov	r0, #0	@ tmp149,
	str	r0, [r4, #192]	@ tmp149, <variable>.p_usrdat
	b	.L276	@
.L282:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #196]	@ tmp156, <variable>.p_usrdat
	b	.L277	@
.L283:
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp163,
	str	r1, [r4, #200]	@ tmp163, <variable>.p_usrdat
	b	.L278	@
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r0, #0	@ ChanID,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, #0	@ tmp149,
	mov	r4, r1	@ p_image, p_image
	str	r3, [sp, #12]	@ tmp149, TopPhyAddr
	str	r3, [sp, #8]	@ tmp149, BtmPhyAddr
	bne	.L304	@,
	cmp	r1, #0	@ p_image,
	beq	.L305	@,
	ldr	r3, [r1, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	cmp	r3, #0	@ <variable>.top_luma_phy_addr,
	beq	.L288	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp241,
	movt	r5, #:upper16:.LANCHOR0	@ tmp241,
	ldr	ip, [r5, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #0	@ <variable>.s32IsOpen,
	beq	.L306	@,
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r3, #0	@, tmp168
	moveq	r3, #1	@, tmp168
	beq	.L290	@,
.L311:
	cmp	r0, #18	@ eVidStd,
	beq	.L290	@,
	ldr	r1, [r4, #176]	@ prephitmp.1697, <variable>.image_id
	movw	r6, #:lower16:1374389535	@ tmp170,
	movt	r6, #:upper16:1374389535	@ tmp170,
	umull	r2, r0, r6, r1	@, tmp169, tmp170, prephitmp.1697
	mov	r2, #100	@ tmp172,
	mov	r7, r0, lsr #5	@ D.34706, tmp169,
	mls	r7, r2, r7, r1	@ D.34706, tmp172, D.34706, prephitmp.1697
	cmp	r7, #63	@ D.34706,
	bgt	.L307	@,
.L292:
	add	r2, sp, #12	@,,
	add	r3, sp, #8	@,,
	ldr	r0, .L312	@,
	bl	IMGQUE_DeleteImage	@
	mov	r6, r0	@ ret.1711,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L308	@,
.L293:
	movw	r0, #:lower16:76684	@ tmp186,
	movt	r0, #:upper16:76684	@ tmp186,
	cmp	r6, #1	@ ret.1711,
	movw	r2, #:lower16:.LANCHOR0	@ tmp185,
	ldr	lr, [r5, r0]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	movt	r2, #:upper16:.LANCHOR0	@ tmp185,
	moveq	r6, #0	@, ret,
	mvnne	r6, #0	@, ret,
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L309	@,
.L296:
	mov	r2, #392	@ tmp199,
	movw	r3, #26560	@ tmp197,
	mul	r1, r2, r7	@ tmp198, tmp199, D.34706
	ldr	ip, [r4, #88]	@ temp.1712, <variable>.top_luma_phy_addr
	movw	r2, #:lower16:.LANCHOR0	@ tmp196,
	movt	r2, #:upper16:.LANCHOR0	@ tmp196,
	add	lr, r1, r5	@ tmp200, tmp198, tmp241
	ldr	r3, [lr, r3]	@ D.34733, <variable>.luma_2d_phy_addr
	cmp	r3, ip	@ D.34733, temp.1712
	beq	.L310	@,
	mov	r2, r7	@, D.34706
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	str	ip, [sp, #0]	@ temp.1712,
	bl	dprint_vfmw	@
	rsbs	r2, r6, #1	@ prephitmp.1699, ret
	movcc	r2, #0	@ prephitmp.1699
.L299:
	movw	r0, #:lower16:76684	@ tmp230,
	movt	r0, #:upper16:76684	@ tmp230,
	ldr	r1, [r5, r0]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	r1, #1	@ <variable>.stDSDParam.s32DSDenable,
	movne	ip, #0	@, tmp236
	andeq	ip, r2, #1	@,, tmp236, prephitmp.1699
	cmp	ip, #0	@ tmp236,
	beq	.L286	@,
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_RlsDSDFrame	@
	mov	r6, r0	@ ret,
	b	.L286	@
.L290:
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_ReleaseChanImage	@
	subs	r6, r0, #0	@ D.34702,
	bne	.L288	@,
.L286:
	mov	r0, r6	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L288:
	mvn	r6, #0	@ ret,
	b	.L286	@
.L306:
	movw	r3, #2313	@,
	ldr	r2, .L312+4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [sp, #0]	@ <variable>.s32IsOpen,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r3, #0	@, tmp168
	moveq	r3, #1	@, tmp168
	bne	.L311	@,
	b	.L290	@
.L310:
	add	r7, r7, #178	@ tmp203, D.34706,
	add	r0, r2, r1	@ tmp213, tmp196, tmp198
	mov	ip, #0	@ tmp208,
	add	r1, r0, #26368	@, tmp213,
	add	r7, r2, r7, asl #2	@, tmp206, tmp196, tmp203,
	mov	r0, ip	@, tmp208
	add	r1, r1, #72	@,,
	str	ip, [r7, #8]	@ tmp208, <variable>.LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	rsbs	r2, r6, #1	@ prephitmp.1699, ret
	movcc	r2, #0	@ prephitmp.1699
	b	.L299	@
.L308:
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp179,
	movt	ip, #:upper16:.LANCHOR1	@ tmp179,
	movw	r2, #:lower16:g_TraceImgPeriod	@ tmp182,
	movt	r2, #:upper16:g_TraceImgPeriod	@ tmp182,
	ldr	r1, [ip, #3064]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r3, [r2, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, r1, r0	@ tmp180, last_rec_pos_time, currtime
	cmp	r1, r3	@ tmp180, g_TraceImgPeriod
	strhi	r0, [ip, #3064]	@ currtime, last_rec_pos_time
	b	.L293	@
.L307:
	mov	r0, r3	@, tmp168
	movw	r1, #:lower16:.LC22	@,
	mov	r2, r7	@, D.34706
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #176]	@ prephitmp.1697, <variable>.image_id
	b	.L292	@
.L305:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #2304	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r3, #:upper16:.LC20	@,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L286	@
.L309:
	movw	r1, #:lower16:76688	@ tmp189,
	movt	r1, #:upper16:76688	@ tmp189,
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r3, [r2, r1]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	cmp	ip, r3	@ <variable>.image_width, <variable>.stDSDParam.s32ThrWidth
	bhi	.L297	@,
	movw	ip, #:lower16:76692	@ tmp193,
	movt	ip, #:upper16:76692	@ tmp193,
	ldr	lr, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r0, [r2, ip]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	lr, r0	@ <variable>.image_height, <variable>.stDSDParam.s32ThrHeight
	bls	.L296	@,
.L297:
	ldr	r7, [r4, #176]	@ D.34705, <variable>.image_id
	mov	r0, #0	@,
	ldr	r3, [r4, #380]	@ <variable>.resetNum, <variable>.resetNum
	mov	r1, r4	@, p_image
	add	r2, r7, r3	@ tmp238, D.34705, <variable>.resetNum
	sub	r6, r2, #6	@ tmp240, tmp238,
	str	r6, [r4, #176]	@ tmp240, <variable>.image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r6, r0, #0	@ ret,
	strne	r7, [r4, #176]	@ D.34705, <variable>.image_id
	mvnne	r6, #0	@ ret,
	bne	.L286	@,
	ldr	lr, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #1	@ prephitmp.1699,
	add	r3, r5, lr, asl #2	@, tmp226, tmp241, <variable>.image_id,
	str	r6, [r3, #744]	@ ret, <variable>.LogicImageIsUsed
	str	r7, [r4, #176]	@ D.34705, <variable>.image_id
	b	.L299	@
.L304:
	mov	r0, r3	@, tmp149
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2303	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L286	@
.L313:
	.align	2
.L312:
	.word	.LANCHOR0+976
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ p_image, p_image
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L328	@,
	cmp	r1, #0	@ p_image,
	beq	.L329	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp212,
	movt	r7, #:upper16:.LANCHOR0	@ tmp212,
	ldr	r2, [r7, #16]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L330	@,
	bl	VCTRL_GetVidStd	@
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	mov	r5, r0	@ eVidStd,
	beq	.L319	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L319	@,
	mov	r1, r4	@, p_image
	add	r0, r7, #976	@, tmp212,
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret.1739,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L331	@,
.L323:
	cmp	r5, #1	@ ret.1739,
	beq	.L332	@,
.L321:
	mvn	r0, #0	@ ret,
	b	.L316	@
.L319:
	mov	r0, #0	@,
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.34582
	bne	.L321	@,
	cmp	r5, #18	@ eVidStd,
	beq	.L316	@,
	ldr	lr, [r4, #120]	@ D.34587, <variable>.luma_2d_phy_addr
	ldr	r3, [r4, #124]	@ D.34589, <variable>.chrom_2d_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	lr, [r4, #88]	@ D.34587, <variable>.top_luma_phy_addr
	add	ip, r1, r3	@ tmp163, <variable>.image_stride, D.34589
	add	r2, r1, lr	@ tmp161, <variable>.image_stride, D.34587
	str	ip, [r4, #100]	@ tmp163, <variable>.btm_chrom_phy_addr
	str	r2, [r4, #96]	@ tmp161, <variable>.btm_luma_phy_addr
	str	r3, [r4, #92]	@ D.34589, <variable>.top_chrom_phy_addr
.L316:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L332:
	ldr	r6, [r4, #176]	@ D.34614, <variable>.image_id
	movw	r5, #:lower16:.LANCHOR0	@ tmp173,
	movt	r5, #:upper16:.LANCHOR0	@ tmp173,
	add	r0, r6, #178	@ tmp174, D.34614,
	add	r7, r7, r0, asl #2	@, tmp177, tmp212, tmp174,
	ldr	ip, [r7, #8]	@ D.34615, <variable>.LogicImageIsUsed
	cmp	ip, #3	@ D.34615,
	beq	.L333	@,
	movw	r3, #:lower16:76684	@ tmp184,
	movt	r3, #:upper16:76684	@ tmp184,
	ldr	lr, [r5, r3]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L325	@,
	cmp	ip, #2	@ D.34615,
	beq	.L325	@,
	ldr	r2, .L334	@,
	movw	r3, #2238	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	ip, [sp, #0]	@ D.34615,
	str	r6, [sp, #4]	@ D.34614,
	bl	dprint_vfmw	@
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	DNR_ReleaseImage	@
	ldr	r1, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r2, #0	@ tmp196,
	mvn	r0, #0	@ ret,
	add	ip, r1, #178	@ tmp190, <variable>.image_id,
	add	r5, r5, ip, asl #2	@, tmp194, tmp173, tmp190,
	str	r2, [r5, #8]	@ tmp196, <variable>.LogicImageIsUsed
	b	.L316	@
.L331:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:.LANCHOR1	@ tmp167,
	movt	r3, #:upper16:.LANCHOR1	@ tmp167,
	movw	r1, #:lower16:g_TraceImgPeriod	@ tmp170,
	movt	r1, #:upper16:g_TraceImgPeriod	@ tmp170,
	ldr	ip, [r3, #3068]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r1, ip, r0	@ tmp168, last_rec_pos_time, currtime
	cmp	r1, r2	@ tmp168, g_TraceImgPeriod
	strhi	r0, [r3, #3068]	@ currtime, last_rec_pos_time
	b	.L323	@
.L325:
	mov	r0, #3	@ tmp210,
	str	r0, [r7, #8]	@ tmp210, <variable>.LogicImageIsUsed
	mov	r0, #0	@ ret,
	b	.L316	@
.L330:
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L316	@
.L328:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2169	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L316	@
.L329:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2170	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC20	@,
	movt	r3, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L316	@
.L333:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC25	@,
	ldr	r2, .L334	@,
	movt	r1, #:upper16:.LC25	@,
	movw	r3, #2227	@,
	str	ip, [sp, #0]	@ D.34615,
	str	r6, [sp, #4]	@ D.34614,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L316	@
.L335:
	.align	2
.L334:
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
	ldr	r2, [r5, #4]	@ prephitmp.1757, <variable>.TempImageNum
	cmp	r2, #0	@ prephitmp.1757,
	ble	.L362	@,
	sub	r4, r2, #1	@ i, prephitmp.1757,
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
	ldreq	r2, [r5, #4]	@ prephitmp.1757, <variable>.TempImageNum
	subeq	r4, r2, #1	@ i, prephitmp.1757,
	cmp	r4, #0	@ i,
	blt	.L340	@,
	ldr	ip, [sp, #16]	@, %sfp
	movw	sl, #:lower16:76696	@ tmp195,
	movt	sl, #:upper16:76696	@ tmp195,
	mov	r5, #392	@ tmp200,
	movw	r3, #19174	@ tmp258,
	ldr	r8, .L365	@ tmp250,
	mul	sl, sl, ip	@ tmp194, tmp195,
	mov	r9, r5	@ tmp255, tmp200
	mla	lr, r5, r2, sl	@ tmp203, tmp200, prephitmp.1757, tmp194
	movw	r7, #:lower16:g_event_report	@,
	mla	r2, r5, r4, sl	@ tmp212, tmp255, i, tmp257
	movt	r7, #:upper16:g_event_report	@,
	mul	r1, r3, ip	@, tmp258,
	str	r7, [sp, #20]	@, %sfp
	add	r5, r2, #51456	@ tmp213, tmp212,
	add	fp, sl, #968	@ tmp196, tmp194,
	add	r7, r5, #72	@ tmp213, tmp213,
	add	fp, r8, fp	@ D.33237, tmp250, tmp196
	add	r7, r8, r7	@ pTemp, tmp250, tmp213
	add	r0, lr, #51456	@ tmp204, tmp203,
	add	r6, r0, #72	@ tmp204, tmp204,
	mov	r0, fp	@, D.33237
	str	r1, [sp, #12]	@, %sfp
	mov	r1, r7	@, pTemp
	and	lr, r4, #1	@, i,
	str	lr, [sp, #24]	@, %sfp
	bl	IMGQUE_InsertImage	@
	add	r6, r8, r6	@ ivtmp.1775, tmp250, tmp204
	mov	r5, #0	@ tmp260,
	cmp	r0, #1	@,
	beq	.L363	@,
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
.L347:
	subs	r4, r4, #1	@ i, i,
	sub	r6, r6, #392	@ ivtmp.1775, ivtmp.1775,
	bmi	.L340	@,
	ldr	r7, [sp, #24]	@, %sfp
	cmp	r7, #0	@,
	beq	.L343	@,
	mla	r3, r9, r4, sl	@ tmp318, tmp255, i, tmp257
	mov	r0, fp	@, D.33237
	add	lr, r3, #51456	@ tmp320, tmp318,
	add	ip, lr, #72	@ tmp320, tmp320,
	add	r7, r8, ip	@ pTemp, tmp250, tmp320
	mov	r1, r7	@, pTemp
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	beq	.L359	@,
	ldr	lr, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	ldr	r2, [sp, #12]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	mov	r0, r5	@, tmp260
	movw	r1, #:lower16:.LC27	@,
	add	r3, r2, lr	@ tmp326,, <variable>.image_id
	movt	r1, #:upper16:.LC27	@,
	movw	r2, #619	@,
	sub	r6, r6, #392	@ ivtmp.1775, ivtmp.1775,
	add	lr, ip, r3, asl #2	@, tmp329,, tmp326,
	add	ip, lr, #720	@ tmp330, tmp329,
	str	r5, [ip, #0]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	subs	r4, r4, #1	@ i, tmp266,
	bpl	.L343	@,
.L340:
	ldr	r0, [sp, #16]	@, %sfp
	movw	r3, #:lower16:76696	@ tmp244,
	ldr	r1, [sp, #28]	@, %sfp
	movt	r3, #:upper16:76696	@ tmp244,
	mov	r2, #0	@ tmp247,
	mla	ip, r3, r0, r1	@ tmp245, tmp244,,
	mov	r0, r2	@ D.33227, tmp247
	add	r1, ip, #51456	@ tmp246, tmp245,
	add	r3, r1, #72	@ tmp246, tmp246,
	str	r2, [r3, #4]	@ tmp247, <variable>.TempImageNum
.L338:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L364:
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r3, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [sp, #12]	@, %sfp
	ldr	ip, [r1, #0]	@ g_event_report.454, g_event_report
	mov	r1, #5	@,
	add	lr, r2, r3	@ tmp218,, <variable>.image_id
	movw	r3, #:lower16:.LANCHOR0	@,
	movt	r3, #:upper16:.LANCHOR0	@,
	cmp	ip, #0	@ g_event_report.454,
	add	lr, r3, lr, asl #2	@, tmp223,, tmp218,
	ldr	r0, [sp, #16]	@, %sfp
	mov	r3, #2	@ tmp225,
	add	r2, sp, #36	@,,
	str	r3, [lr, #720]	@ tmp225, <variable>.LogicImageIsUsed
	beq	.L342	@,
	str	r7, [sp, #36]	@ pTemp, para
	blx	ip	@ g_event_report.454
.L342:
	sub	r4, r4, #1	@ tmp266, i,
	mov	r0, fp	@, D.33237
	sub	r6, r6, #392	@ ivtmp.1775, ivtmp.1775,
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
	bne	.L353	@,
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
	beq	.L354	@,
	str	r7, [sp, #36]	@ pTemp, para
	ldr	r3, [sp, #4]	@, %sfp
	blx	r3	@
.L354:
	subs	r4, r4, #1	@ i, tmp266,
	sub	r6, r6, #392	@ ivtmp.1775, ivtmp.1775,
	bmi	.L340	@,
.L343:
	mla	r3, r9, r4, sl	@ tmp273, tmp255, i, tmp257
	mov	r0, fp	@, D.33237
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
	beq	.L364	@,
	ldr	r7, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	ldr	lr, [sp, #12]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@,
	add	r3, lr, r7	@ tmp231,, <variable>.image_id
	add	lr, r3, #178	@ tmp233, tmp231,
	add	r7, ip, lr, asl #2	@, tmp236,, tmp233,
	str	r5, [r7, #8]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	b	.L342	@
.L353:
	ldr	r3, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [sp, #12]	@, %sfp
	add	lr, ip, r3	@ tmp348,, <variable>.image_id
	movw	ip, #:lower16:.LANCHOR0	@,
	add	r3, lr, #178	@ tmp349, tmp348,
	movt	ip, #:upper16:.LANCHOR0	@,
	add	lr, ip, r3, asl #2	@, tmp351,, tmp349,
	str	r5, [lr, #8]	@ tmp260, <variable>.LogicImageIsUsed
	bl	dprint_vfmw	@
	b	.L354	@
.L359:
	ldr	r0, [sp, #20]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #12]	@, %sfp
	movt	lr, #:upper16:.LANCHOR0	@,
	ldr	r2, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r0, #0]	@ g_event_report.454, g_event_report
	mov	r0, #2	@ tmp340,
	add	r3, r1, r2	@ tmp335,, <variable>.image_id
	cmp	ip, #0	@ g_event_report.454,
	add	r1, lr, r3, asl #2	@, tmp338,, tmp335,
	str	r0, [r1, #720]	@ tmp340, <variable>.LogicImageIsUsed
	beq	.L354	@,
	str	r7, [sp, #36]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #16]	@, %sfp
	add	r2, sp, #36	@,,
	blx	ip	@ g_event_report.454
	b	.L354	@
.L363:
	ldr	r0, [sp, #20]	@, %sfp
	movw	lr, #:lower16:.LANCHOR0	@,
	ldr	r1, [sp, #12]	@, %sfp
	movt	lr, #:upper16:.LANCHOR0	@,
	ldr	r2, [r6, #-216]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r0, #0]	@ g_event_report.454, g_event_report
	mov	r0, #2	@ tmp308,
	add	r3, r1, r2	@ tmp303,, <variable>.image_id
	cmp	ip, #0	@ g_event_report.454,
	add	r1, lr, r3, asl #2	@, tmp306,, tmp303,
	str	r0, [r1, #720]	@ tmp308, <variable>.LogicImageIsUsed
	beq	.L347	@,
	str	r7, [sp, #36]	@ pTemp, para
	mov	r1, #5	@,
	ldr	r0, [sp, #16]	@, %sfp
	add	r2, sp, #36	@,,
	blx	ip	@ g_event_report.454
	b	.L347	@
.L362:
	mov	r2, #592	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ tmp158,
	mvn	r0, #0	@ D.33227,
	str	r2, [r5, #4]	@ tmp158, <variable>.TempImageNum
	b	.L338	@
.L366:
	.align	2
.L365:
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
	bne	.L370	@,
	add	r5, r7, #75776	@ tmp177, tmp169,
	ldr	r0, [r4, #80]	@ D.33338, <variable>.GopNum
	add	r5, r5, #864	@ tmp177, tmp177,
	movw	r1, #:lower16:76640	@ tmp173,
	movt	r1, #:upper16:76640	@ tmp173,
	ldr	ip, [r5, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r0, ip	@ D.33338, <variable>.LastGopNum
	beq	.L371	@,
	str	r0, [r5, #4]	@ D.33338, <variable>.LastGopNum
	mov	ip, #1	@ tmp198,
	ldr	r0, [r4, #76]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r7, r2]	@ tmp198, <variable>.GetFirstIFrameFlag
	cmp	r0, #0	@ <variable>.DistanceBeforeFirstFrame,
	str	r0, [r7, r1]	@ <variable>.DistanceBeforeFirstFrame, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L380	@,
	ldr	r2, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r5, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
.L373:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L370:
	add	r3, r7, #75776	@ tmp259, tmp169,
	ldr	r2, [r4, #80]	@ temp.1803, <variable>.GopNum
	add	r3, r3, #864	@ tmp259, tmp259,
	movw	r1, #:lower16:76640	@ tmp255,
	movt	r1, #:upper16:76640	@ tmp255,
	ldr	r0, [r3, #4]	@ <variable>.LastGopNum, <variable>.LastGopNum
	cmp	r2, r0	@ temp.1803, <variable>.LastGopNum
	beq	.L374	@,
	str	r2, [r3, #4]	@ temp.1803, <variable>.LastGopNum
	mov	r0, r6	@, InstId
	mov	r1, r4	@, pImage
	bl	DNR_PushTempImageToVOQ	@
	subs	r2, r0, #0	@ ret.1805,
	bne	.L381	@,
.L375:
	movw	r1, #:lower16:76696	@ tmp271,
	movt	r1, #:upper16:76696	@ tmp271,
	ldr	r0, [r4, #76]	@ temp.1806, <variable>.DistanceBeforeFirstFrame
	movw	r7, #:lower16:76640	@ tmp269,
	mul	r3, r1, r6	@ tmp270, tmp271, InstId
	movt	r7, #:upper16:76640	@ tmp269,
	cmp	r0, #0	@ temp.1806,
	add	r5, r3, r5	@ tmp272, tmp270, tmp361
	str	r0, [r5, r7]	@ temp.1806, <variable>.u32BackwardOptimizeDistanceCnt
	bne	.L382	@,
	ldr	r3, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r3, [r5, r7]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L373	@
.L374:
	ldr	r0, [r7, r1]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ <variable>.u32BackwardOptimizeDistanceCnt,
	bne	.L383	@,
	ldr	r1, [r4, #72]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r3, #0]	@ <variable>.DispFrameDistance, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L373	@
.L381:
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	b	.L375	@
.L371:
	ldr	ip, .L385	@ tmp244,
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
	b	.L373	@
.L383:
	ldr	r1, [r7, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r1, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L384	@,
.L378:
	movw	r2, #:lower16:76696	@ tmp328,
	movt	r2, #:upper16:76696	@ tmp328,
	mov	r0, r6	@, InstId
	ldr	lr, .L385	@ tmp329,
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
	b	.L373	@
.L380:
	ldr	lr, .L385	@ tmp210,
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
	b	.L373	@
.L382:
	ldr	lr, .L385	@ tmp278,
	mov	r0, r6	@, InstId
	add	r1, r3, lr	@, tmp270, tmp278
	bl	VCTRL_ReleaseChanImage	@
	ldr	ip, [r5, r7]	@ <variable>.u32BackwardOptimizeDistanceCnt, <variable>.u32BackwardOptimizeDistanceCnt
	mov	r0, #0	@ tmp286,
	str	r0, [r5, #440]	@ tmp286, <variable>.s321DFrameIsProc
	sub	r2, ip, #1	@ tmp300, <variable>.u32BackwardOptimizeDistanceCnt,
	mvn	r0, #0	@ ret,
	str	r2, [r5, r7]	@ tmp300, <variable>.u32BackwardOptimizeDistanceCnt
	b	.L373	@
.L384:
	movw	r2, #:lower16:g_event_report	@ tmp322,
	movt	r2, #:upper16:g_event_report	@ tmp322,
	ldr	r3, [r2, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L378	@,
	add	r2, sp, #8	@ tmp324,,
	mov	r0, r6	@, InstId
	str	r1, [r2, #-4]!	@ <variable>.Cur1DImage.last_frame, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.462
	b	.L378	@
.L386:
	.align	2
.L385:
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
	bne	.L390	@,
	mov	r0, r6	@, pImage
	bl	DNR_IsIFrame	@
	subs	r6, r0, #0	@ D.33306,
	movne	r3, #1	@ tmp175,
	movne	r0, r8	@ ret, <variable>.GetFirstIFrameFlag
	strne	r3, [r5, r7]	@ tmp175, <variable>.GetFirstIFrameFlag
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	ip, .L395	@ tmp180,
	mov	r0, r4	@, InstId
	add	r1, sl, ip	@, tmp164, tmp180
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, InstId
	str	r6, [r5, #440]	@ D.33306, <variable>.s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L390:
	mov	r0, r6	@, pImage
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.33313
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r4	@, InstId
	mov	r1, r6	@, pImage
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L396:
	.align	2
.L395:
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
	blt	.L398	@,
	ldr	r3, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	add	r0, r4, #8	@ tmp171, tmp353,
	add	r8, r1, #40	@ tmp174, tmp143,
	ldr	r2, [r6, #428]	@ <variable>.Cur1DImage.resetNum, <variable>.Cur1DImage.resetNum
	add	r8, r0, r8	@ D.33840, tmp171, tmp174
	add	r1, r1, #968	@ tmp179, tmp143,
	add	lr, r3, #6	@ tmp160, <variable>.Cur1DImage.image_id,
	add	r0, r0, r1	@, tmp171, tmp179
	rsb	ip, r2, lr	@ tmp169, <variable>.Cur1DImage.resetNum, tmp160
	mov	r1, r8	@, D.33840
	str	ip, [r6, #224]	@ tmp169, <variable>.Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L399	@,
	ldr	r2, [r6, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	movw	r1, #19174	@ tmp189,
	movw	r3, #:lower16:g_event_report	@ tmp205,
	movt	r3, #:upper16:g_event_report	@ tmp205,
	mov	r7, #0	@ tmp204,
	mov	ip, #2	@ tmp197,
	mla	lr, r1, r5, r2	@ tmp190, tmp189, NextInstId, <variable>.Cur1DImage.image_id
	ldr	r3, [r3, #0]	@ g_event_report.501, g_event_report
	str	r7, [r6, #440]	@ tmp204, <variable>.s321DFrameIsProc
	cmp	r3, r7	@ g_event_report.501,
	moveq	r0, r3	@ D.33850, g_event_report.501
	add	r4, r4, lr, asl #2	@, tmp195, tmp353, tmp190,
	str	ip, [r4, #720]	@ tmp197, <variable>.LogicImageIsUsed
	beq	.L401	@,
	add	r2, sp, #16	@ tmp206,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.33840, para
	blx	r3	@ g_event_report.501
	mov	r0, r7	@ D.33850, tmp204
.L401:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L398:
	movw	r8, #51528	@ tmp211,
	add	r7, r6, #51456	@ tmp215, tmp145,
	ldr	sl, [r6, r8]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	r7, r7, #72	@ tmp215, tmp215,
	cmp	sl, #0	@ <variable>.GetFirstIFrameFlag,
	beq	.L408	@,
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
	add	r3, ip, #1	@ D.33861, <variable>.TempImageNum,
	mov	ip, #4	@ tmp281,
	str	r3, [r7, #4]	@ D.33861, <variable>.TempImageNum
	rsb	r1, r1, r0	@ tmp307, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	r3, r1	@ D.33861, tmp307
	add	r0, r4, r2, asl #2	@, tmp279, tmp353, tmp274,
	str	ip, [r0, #720]	@ tmp281, <variable>.LogicImageIsUsed
	movcs	r0, #0	@ tmp323,
	strcs	r0, [r6, r8]	@ tmp323, <variable>.GetFirstIFrameFlag
	bcc	.L409	@,
.L404:
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
	bne	.L410	@,
.L405:
	movw	r1, #:lower16:76696	@ tmp348,
	movt	r1, #:upper16:76696	@ tmp348,
	mov	r2, #0	@ tmp351,
	mla	r4, r1, r5, r4	@ tmp349, tmp348, NextInstId, tmp353
	mov	r0, r2	@ D.33850, tmp351
	str	r2, [r4, #440]	@ tmp351, <variable>.s321DFrameIsProc
	b	.L401	@
.L409:
	ldr	r2, [r6, #272]	@ <variable>.Cur1DImage.last_frame, <variable>.Cur1DImage.last_frame
	cmp	r2, #1	@ <variable>.Cur1DImage.last_frame,
	beq	.L404	@,
	movw	r1, #:lower16:76696	@ tmp348,
	movt	r1, #:upper16:76696	@ tmp348,
	mov	r2, #0	@ tmp351,
	mla	r4, r1, r5, r4	@ tmp349, tmp348, NextInstId, tmp353
	mov	r0, r2	@ D.33850, tmp351
	str	r2, [r4, #440]	@ tmp351, <variable>.s321DFrameIsProc
	b	.L401	@
.L410:
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
	b	.L405	@
.L408:
	bl	DNR_ClearTempImage	@
	mov	r0, sl	@ D.33850, <variable>.GetFirstIFrameFlag
	b	.L401	@
.L399:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC30	@,
	ldr	r2, .L411	@,
	movt	r1, #:upper16:.LC30	@,
	movw	r3, #1274	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33850,
	b	.L401	@
.L412:
	.align	2
.L411:
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
	beq	.L425	@,
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
	beq	.L426	@,
	ldr	r3, [r6, #28]	@ temp.1903, <variable>.pic_height_in_mb
	ldr	lr, [r6, #60]	@ temp.1902, <variable>.ddr_stride
	ldrb	r1, [r6, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	mov	r2, r3, asl #4	@ tmp193, temp.1903,
	cmp	r1, #0	@ <variable>.pic_structure,
	mul	ip, lr, r2	@ tmp194, temp.1902, tmp193
	moveq	r1, #1	@ iftmp.493,
	movne	r1, #2	@ iftmp.493,
	mla	r0, r1, ip, r8	@ prephitmp.1889, iftmp.493, tmp194, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1889, <variable>.chrom_2d_phy_addr
.L419:
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
	beq	.L427	@,
.L422:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp250,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp250,
	ldr	r3, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L423	@,
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
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33746, <variable>.s32VcmpEn
	bic	r6, r6, #15	@ tmp287, tmp285,
	bic	r7, ip, #15	@ tmp284, tmp282,
	cmp	r0, #1	@ D.33746,
	strb	r0, [r4, #296]	@ D.33746, <variable>.ImageDnr.s32VcmpEn
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.s32WmEn, <variable>.s32WmEn
	strb	r0, [r4, #297]	@ <variable>.s32WmEn, <variable>.ImageDnr.s32WmEn
	ldr	r1, [r5, r2]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r1, [r4, #320]	@ <variable>.s32VcmpWmStartLine, <variable>.ImageDnr.s32VcmpWmStartLine
	ldr	r0, [lr, #4]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	str	r7, [r4, #332]	@ tmp284, <variable>.ImageDnr.s32VcmpFrameHeight
	str	r6, [r4, #328]	@ tmp287, <variable>.ImageDnr.s32VcmpFrameWidth
	str	r0, [r4, #324]	@ <variable>.s32VcmpWmEndLine, <variable>.ImageDnr.s32VcmpWmEndLine
	beq	.L428	@,
.L423:
	mov	r0, #0	@ D.33703,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L427:
	add	ip, r3, #75776	@ tmp239, tmp202,
	add	r1, ip, #904	@ tmp239, tmp239,
	ldr	lr, [r1, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	lr, r0	@ <variable>.stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ <variable>.DNRDataSourceFlag, <variable>.u32Circumrotate
	addeq	r3, r3, #75776	@ tmp247, tmp202,
	addeq	r3, r3, #912	@ tmp247, tmp247,
	ldreq	r3, [r3, #8]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.stDSDParam.s32MirrorEn
	streqb	r3, [r6, #11]	@ <variable>.stDSDParam.s32MirrorEn, <variable>.s32MirrorEn
	b	.L422	@
.L428:
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	mov	ip, ip, lsr #4	@ tmp294, tmp282,
	ldr	r3, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	mov	r0, #0	@ D.33703,
	add	lr, r1, #2	@ tmp289, <variable>.image_stride,
	mov	r2, lr, asl #4	@ tmp291, tmp289,
	mla	r1, ip, r2, r3	@ tmp297, tmp294, tmp291, <variable>.top_luma_phy_addr
	str	r1, [r4, #92]	@ tmp297, <variable>.top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L426:
	ldr	r0, [r6, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r3, [r6, #60]	@ <variable>.ddr_stride, <variable>.ddr_stride
	mov	lr, r0, asl #4	@ tmp188, <variable>.pic_height_in_mb,
	mla	r0, r3, lr, r8	@ prephitmp.1889, <variable>.ddr_stride, tmp188, luma_2d_phy_addr
	str	r0, [r4, #124]	@ prephitmp.1889, <variable>.chrom_2d_phy_addr
	b	.L419	@
.L425:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC32	@,
	movw	r2, #1128	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33703,
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
	beq	.L446	@,
.L430:
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
	bge	.L447	@,
	movw	r9, #51528	@ tmp216,
	add	r0, r7, #51456	@ tmp220, tmp182,
	ldr	lr, [r7, r9]	@ <variable>.GetFirstIFrameFlag, <variable>.GetFirstIFrameFlag
	add	r8, r0, #72	@ tmp220, tmp220,
	cmp	lr, #0	@ <variable>.GetFirstIFrameFlag,
	bne	.L441	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
.L435:
	ldr	r1, [r4, #192]	@ temp.1951, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1951,
	beq	.L436	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L436:
	ldr	r1, [r4, #196]	@ temp.1952, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1952,
	beq	.L437	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L437:
	ldr	r1, [r4, #200]	@ temp.1953, <variable>.p_usrdat
	cmp	r1, #0	@ temp.1953,
	beq	.L438	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L438:
	ldr	r1, [r4, #204]	@ D.34494, <variable>.p_usrdat
	cmp	r1, #0	@ D.34494,
	beq	.L440	@,
	mov	r0, r5	@, ChanID
	bl	MarkUsdByDnr	@
.L440:
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
	mov	r2, r0	@ D.34504,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:76696	@ tmp322,
	movt	ip, #:upper16:76696	@ tmp322,
	movw	r0, #:lower16:76632	@ tmp320,
	movt	r0, #:upper16:76632	@ tmp320,
	mla	r6, ip, r5, r6	@ tmp323, tmp322, ChanID, tmp332
	ldr	r1, [r6, r0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r1, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L444	@,
	movw	r3, #:lower16:g_event_report	@ tmp326,
	movt	r3, #:upper16:g_event_report	@ tmp326,
	ldr	r3, [r3, #0]	@ g_event_report.1950, g_event_report
	cmp	r3, #0	@ g_event_report.1950,
	beq	.L444	@,
	add	r2, sp, #32	@ tmp327,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ pLogic, para
	blx	r3	@ g_event_report.1950
	mov	r0, #0	@ D.34467,
.L434:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L441:
	str	fp, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	ip, #392	@ tmp231,
	ldr	r0, [r8, #4]	@ D.34475, <variable>.TempImageNum
	mov	r2, ip	@, tmp231
	mov	r1, r4	@, pLogic
	mla	lr, ip, r0, r3	@ tmp234, tmp231, D.34475, tmp180
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
	add	r3, ip, #1	@ D.34477, <variable>.TempImageNum,
	mov	r2, #4	@ tmp251,
	str	r3, [r8, #4]	@ D.34477, <variable>.TempImageNum
	add	fp, sl, fp, asl #2	@, tmp249, tmp178, tmp245,
	rsb	ip, r1, r0	@ tmp277, <variable>.u32VoFrmNum, <variable>.s32ValidImgNum
	cmp	r3, ip	@ D.34477, tmp277
	str	r2, [fp, #720]	@ tmp251, <variable>.LogicImageIsUsed
	ldr	r3, [sp, #20]	@,
	movcs	r3, #0	@ tmp296,
	strcs	r3, [r7, r9]	@ tmp296, <variable>.GetFirstIFrameFlag
	bcs	.L443	@,
	add	r8, r3, sl	@ tmp287, tmp234, tmp178
	movw	r9, #51760	@ tmp281,
	ldr	sl, [r8, r9]	@ <variable>.last_frame, <variable>.last_frame
	cmp	sl, #1	@ <variable>.last_frame,
	bne	.L435	@,
.L443:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pLogic
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L435	@,
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
	b	.L435	@
.L444:
	mov	r0, #0	@ D.34467,
	b	.L434	@
.L446:
	movw	r0, #:lower16:g_event_report	@ tmp167,
	movt	r0, #:upper16:g_event_report	@ tmp167,
	mov	lr, #1	@ tmp166,
	str	lr, [r4, #224]	@ tmp166, <variable>.last_frame
	ldr	r3, [r0, #0]	@ g_event_report.555, g_event_report
	cmp	r3, #0	@ g_event_report.555,
	beq	.L431	@,
	add	r2, sp, #32	@ tmp169,,
	mov	r1, #0	@ tmp168,
	mov	r0, r5	@, ChanID
	str	r1, [r2, #-4]!	@ tmp168, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.555
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
.L431:
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
	b	.L430	@
.L447:
	add	r1, sl, r3	@ tmp189, tmp178, tmp180
	str	fp, [r4, #176]	@ PicBufID, <variable>.image_id
	add	r0, r1, #976	@, tmp189,
	mov	r1, r4	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.34467,
	bne	.L434	@,
	movw	r2, #19174	@ tmp193,
	mov	r0, #11	@,
	mla	fp, r2, r5, fp	@ tmp194, tmp193, ChanID, PicBufID
	mov	r8, #2	@ tmp200,
	add	r9, sl, fp, asl #2	@, tmp198, tmp178, tmp194,
	str	r8, [r9, #720]	@ tmp200, <variable>.LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L435	@,
	bl	OSAL_GetTimeInMs	@
	movw	r9, #:lower16:.LANCHOR1	@ tmp201,
	movt	r9, #:upper16:.LANCHOR1	@ tmp201,
	movw	r8, #:lower16:g_TraceFramePeriod	@ tmp208,
	add	sl, r9, r5, asl #2	@, tmp204, tmp201, ChanID,
	movt	r8, #:upper16:g_TraceFramePeriod	@ tmp208,
	ldr	r1, [sl, #3072]	@ tmp207, last_rec_pos_time
	ldr	r3, [r8, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	ip, r1, r0	@ tmp206, tmp207, currtime
	cmp	ip, r3	@ tmp206, g_TraceFramePeriod
	strhi	r0, [sl, #3072]	@ currtime, last_rec_pos_time
	b	.L435	@
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp193,
	movt	ip, #:upper16:.LANCHOR0	@ tmp193,
	mul	r3, r3, r0	@ tmp143, tmp144, ChanID
	movw	r2, #:lower16:76656	@ tmp148,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movt	r2, #:upper16:76656	@ tmp148,
	mov	r4, r0	@ ChanID, ChanID
	add	r0, r3, ip	@ tmp145, tmp143, tmp193
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r2, [r0, r2]	@ D.34517, <variable>.DNRDataSourceFlag
	ldr	r1, [r0, #452]	@ PicBufID, <variable>.CurImageBufID
	cmp	r2, #0	@ D.34517,
	bne	.L449	@,
	mov	r0, #392	@ tmp156,
	mla	r1, r0, r1, r3	@ tmp159, tmp156, PicBufID, tmp143
	add	r0, r1, ip	@ tmp160, tmp159, tmp193
	add	r1, r0, #26368	@ pLogic, tmp160,
	add	r1, r1, #72	@ pLogic, pLogic,
.L450:
	cmp	r4, #0	@ ChanID,
	bne	.L461	@,
	ldr	r0, [r1, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L462	@,
	cmp	r2, #0	@ D.34517,
	beq	.L463	@,
	cmp	r2, #1	@ D.34517,
	bne	.L458	@,
	movw	r0, #:lower16:76660	@ tmp181,
	movt	r0, #:upper16:76660	@ tmp181,
	movw	r5, #:lower16:.LANCHOR0	@ tmp180,
	movt	r5, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r3, [ip, r0]	@ <variable>.DNRCaptureStartFlag, <variable>.DNRCaptureStartFlag
	cmp	r3, #1	@ <variable>.DNRCaptureStartFlag,
	bne	.L458	@,
	movw	ip, #:lower16:g_event_report	@ tmp189,
	movt	ip, #:upper16:g_event_report	@ tmp189,
	movw	r2, #:lower16:76656	@ tmp184,
	movt	r2, #:upper16:76656	@ tmp184,
	ldr	r3, [ip, #0]	@ g_event_report.566, g_event_report
	str	r4, [r5, r0]	@ ChanID, <variable>.DNRCaptureStartFlag
	cmp	r3, #0	@ g_event_report.566,
	str	r4, [r5, r2]	@ ChanID, <variable>.DNRDataSourceFlag
	beq	.L457	@,
	add	r2, sp, #8	@ tmp190,,
	mov	r0, r4	@, ChanID
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #21	@,
	blx	r3	@ g_event_report.566
	mov	r0, r4	@ D.34528, ChanID
.L452:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L449:
	cmp	r2, #1	@ D.34517,
	bne	.L451	@,
	movw	r3, #:lower16:76680	@ tmp163,
	movt	r3, #:upper16:76680	@ tmp163,
	ldr	r1, [r0, r3]	@ pLogic, <variable>.pCaptureImageOut
	b	.L450	@
.L463:
	ldrsb	r0, [ip, #8]	@ <variable>.DecChanRstFlag, <variable>.DecChanRstFlag
	movw	r3, #:lower16:.LANCHOR0	@ tmp174,
	movt	r3, #:upper16:.LANCHOR0	@ tmp174,
	cmp	r0, #1	@ <variable>.DecChanRstFlag,
	streq	r2, [r3, #24]	@ D.34517, <variable>.NeedStartAgain
	moveq	r0, r2	@ D.34528, D.34517
	beq	.L452	@,
	ldr	ip, [r3, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	ip, #0	@ <variable>.NeedStartAgain,
	beq	.L464	@,
.L457:
	mov	r0, #0	@ D.34528,
	b	.L452	@
.L458:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34528,
	b	.L452	@
.L451:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34528,
	b	.L452	@
.L464:
	mov	r0, r2	@, D.34517
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@ D.34544,
	movne	r0, #0	@ D.34528,
	b	.L452	@
.L461:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2119	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34528,
	b	.L452	@
.L462:
	mov	r0, r4	@, ChanID
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2120	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC38	@,
	movt	r3, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34528,
	b	.L452	@
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
	ldr	ip, [r2, #456]	@ D.34330, <variable>.s32ValidImgNum
	cmp	ip, #0	@ D.34330,
	ble	.L466	@,
	ldr	r2, [r2, #720]	@ <variable>.LogicImageIsUsed, <variable>.LogicImageIsUsed
	cmp	r2, #1	@ <variable>.LogicImageIsUsed,
	movls	r4, #0	@ i,
	bls	.L468	@,
	tst	ip, #1	@ D.34330,
	add	r4, r8, #8	@ tmp158, tmp239,
	add	r3, r4, r3	@ ivtmp.2006, tmp158, tmp146
	mov	r4, #0	@ i,
	bne	.L469	@,
	ldr	lr, [r3, #716]	@ D.34327, <variable>.LogicImageIsUsed
	mov	r4, #1	@ i,
	add	r3, r3, #4	@ ivtmp.2006, ivtmp.2006,
	cmp	lr, r4	@ D.34327,
	bhi	.L469	@,
.L468:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5, #0]	@ i,* pPicBufID
	beq	.L471	@,
	ldr	r3, [r0, #4]	@ D.34335, <variable>.get_frame
	cmp	r3, #0	@ D.34335,
	beq	.L471	@,
	movw	lr, #19174	@ tmp163,
	movw	r5, #:lower16:.LANCHOR0	@ tmp161,
	mla	ip, lr, r7, r4	@ tmp164, tmp163, ChanID, i
	movt	r5, #:upper16:.LANCHOR0	@ tmp161,
	add	r6, ip, #178	@ tmp165, tmp164,
	add	r6, r8, r6, asl #2	@, tmp168, tmp239, tmp165,
	ldr	r0, [r6, #8]	@ tmp170, <variable>.LogicImageIsUsed
	cmp	r0, #0	@ tmp170,
	beq	.L483	@,
.L471:
	movw	r0, #19174	@ tmp229,
	mov	r2, #1	@ tmp236,
	mla	r7, r0, r7, r4	@ tmp230, tmp229, ChanID, i
	mov	r0, #0	@ D.34349,
	add	r8, r8, r7, asl #2	@, tmp234, tmp239, tmp230,
	str	r2, [r8, #720]	@ tmp236, <variable>.LogicImageIsUsed
	b	.L473	@
.L472:
	ldr	r1, [r3, #716]	@ D.34327, <variable>.LogicImageIsUsed
	add	r3, r2, #4	@ ivtmp.2006, tmp243,
	cmp	r1, #1	@ D.34327,
	bls	.L468	@,
	ldr	r1, [r2, #716]	@ D.34327, <variable>.LogicImageIsUsed
	add	r4, r4, #1	@ i, i,
	cmp	r1, #1	@ D.34327,
	bls	.L468	@,
.L469:
	add	r4, r4, #1	@ i, i,
	add	r2, r3, #4	@ tmp243, ivtmp.2006,
	cmp	r4, ip	@ i, D.34330
	blt	.L472	@,
.L466:
	mvn	r0, #0	@ D.34349,
.L473:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L483:
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
	blx	r3	@ D.34335
	cmp	r0, #0	@ D.34346
	bne	.L466	@,
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
	b	.L473	@
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
	movne	r0, #1	@ D.33959,
	beq	.L491	@,
.L486:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L491:
	ldr	r2, [r1, #4]	@ D.33946, <variable>.s32OldImgWidth
	ldr	r7, [r3, #192]	@ Width, <variable>.Cur1DImage.image_width
	ldr	r8, [r3, #196]	@ Height, <variable>.Cur1DImage.image_height
	cmp	r2, r7	@ D.33946, Width
	beq	.L492	@,
.L487:
	movw	r1, #:lower16:g_event_report	@ tmp174,
	movt	r1, #:upper16:g_event_report	@ tmp174,
	ldr	r3, [r1, #0]	@ g_event_report.506, g_event_report
	cmp	r3, #0	@ g_event_report.506,
	beq	.L489	@,
	movw	r1, #:lower16:76696	@ tmp178,
	movt	r1, #:upper16:76696	@ tmp178,
	strh	r2, [sp, #0]	@ movhi	@ D.33946, para
	mov	r0, r5	@, NextInstId
	mla	lr, r1, r5, r4	@ tmp179, tmp178, NextInstId, tmp197
	strh	r7, [sp, #4]	@ movhi	@ Width, para
	strh	r8, [sp, #6]	@ movhi	@ Height, para
	mov	r1, #8	@,
	mov	r2, sp	@,
	ldr	ip, [lr, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	strh	ip, [sp, #2]	@ movhi	@ <variable>.s32OldImgHeight, para
	blx	r3	@ g_event_report.506
.L489:
	movw	r2, #:lower16:76696	@ tmp186,
	movt	r2, #:upper16:76696	@ tmp186,
	mla	r4, r2, r5, r4	@ tmp187, tmp186, NextInstId, tmp197
	str	r8, [r4, #448]	@ Height, <variable>.s32OldImgHeight
	str	r7, [r4, #444]	@ Width, <variable>.s32OldImgWidth
.L488:
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Fsp_ShowPic	@
	subs	r0, r0, #0	@ D.33959,,
	movne	r0, #1	@ D.33959
	b	.L486	@
.L492:
	ldr	r0, [r3, #448]	@ <variable>.s32OldImgHeight, <variable>.s32OldImgHeight
	cmp	r0, r8	@ <variable>.s32OldImgHeight, Height
	bne	.L487	@,
	b	.L488	@
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
	beq	.L494	@,
	ldr	r0, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	cmp	r0, #0	@ <variable>.release_frame,
	addeq	r1, fp, #8	@, tmp306,
	streq	r1, [sp, #8]	@, %sfp
	beq	.L494	@,
	ldr	r3, [r8, #456]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r3, #0	@ <variable>.s32ValidImgNum,
	addle	r2, fp, #8	@, tmp306,
	strle	r2, [sp, #8]	@, %sfp
	ble	.L494	@,
	add	r1, r6, #26368	@ tmp225, tmp154,
	add	r9, fp, #8	@, tmp306,
	add	r7, r1, #112	@ tmp225, tmp225,
	str	r9, [sp, #8]	@, %sfp
	add	r7, r9, r7	@ ivtmp.2079,, tmp225
	add	r6, r9, r6	@ ivtmp.2078,, tmp154
	add	r8, r8, #456	@ tmp322, tmp156,
	add	r9, sp, #420	@ tmp318,,
	b	.L496	@
.L495:
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.2079, ivtmp.2079,
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	ble	.L494	@,
.L496:
	ldr	ip, [r6, #712]	@ tmp227, <variable>.LogicImageIsUsed
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.2078, ivtmp.2078,
	cmp	ip, #0	@ tmp227,
	beq	.L495	@,
	ldr	r3, [r7, #0]	@ <variable>.luma_2d_vir_addr, <variable>.luma_2d_vir_addr
	mov	r0, r4	@, ChanID
	ldr	lr, [r7, #72]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	mov	r1, r9	@, tmp318
	add	r7, r7, #392	@ ivtmp.2079, ivtmp.2079,
	str	r3, [sp, #424]	@ <variable>.luma_2d_vir_addr, ExtFrame.VirAddr
	str	lr, [sp, #420]	@ <variable>.luma_2d_phy_addr, ExtFrame.PhyAddr
	ldr	r2, [sl, #8]	@ <variable>.release_frame, <variable>.release_frame
	blx	r2	@ <variable>.release_frame
	ldr	r0, [r8, #0]	@ <variable>.s32ValidImgNum, <variable>.s32ValidImgNum
	cmp	r0, r5	@ <variable>.s32ValidImgNum, i
	bgt	.L496	@,
.L494:
	movw	r2, #:lower16:76696	@ tmp242,
	movt	r2, #:upper16:76696	@ tmp242,
	mul	r1, r2, r4	@ tmp241, tmp242, ChanID
	add	r2, r1, fp	@ tmp243, tmp241, tmp306
	add	r3, r2, #75776	@ tmp244, tmp243,
	add	r3, r3, #904	@ tmp244, tmp244,
	ldr	ip, [r3, #4]	@ <variable>.stDSDParam.s32DSDenable, <variable>.stDSDParam.s32DSDenable
	cmp	ip, #1	@ <variable>.stDSDParam.s32DSDenable,
	beq	.L522	@,
.L497:
	ldr	r1, [sp, #8]	@, %sfp
	movw	ip, #:lower16:76696	@ tmp263,
	movt	ip, #:upper16:76696	@ tmp263,
	mov	r2, #0	@ i.2088,
	mov	r0, r2	@ tmp307, i.2088
	mla	r4, ip, r4, r1	@ ivtmp.2068, tmp263, ChanID,
.L500:
	ldr	r1, [r4, #712]	@ tmp300, <variable>.LogicImageIsUsed
	add	r3, r4, #4	@ tmp324, ivtmp.2068,
	add	r2, r2, #1	@ tmp323, i.2088,
	cmp	r1, #3	@ tmp300,
	strne	r0, [r4, #712]	@ tmp307, <variable>.LogicImageIsUsed
	ldr	r4, [r3, #712]	@ tmp328, <variable>.LogicImageIsUsed
	add	r2, r2, #1	@ i.2088, tmp323,
	cmp	r4, #3	@ tmp328,
	strne	r0, [r3, #712]	@ tmp307, <variable>.LogicImageIsUsed
	cmp	r2, #64	@ i.2088,
	add	r4, r3, #4	@ ivtmp.2068, tmp324,
	bne	.L500	@,
	add	sp, sp, #444	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L522:
	movw	r6, #19174	@ tmp311,
	ldr	sl, [sp, #8]	@, %sfp
	mul	r8, r6, r4	@, tmp311, ChanID
	add	r5, r1, #968	@ tmp250, tmp241,
	str	fp, [sp, #16]	@ tmp306, %sfp
	add	r9, sp, #24	@ tmp309,,
	str	r2, [sp, #20]	@ tmp243, %sfp
	mov	r6, #0	@ i.2086,
	mov	fp, r3	@ tmp317, tmp317
	str	r8, [sp, #12]	@, %sfp
	add	r8, sl, r5	@ D.33153,, tmp250
	movw	sl, #:lower16:1374389535	@ tmp310,
	movt	sl, #:upper16:1374389535	@ tmp310,
	b	.L506	@
.L524:
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r2, [sp, #168]	@ stimage.image_width, stimage.image_width
	add	r0, r1, r7	@ tmp269,, RelImgID
	ldr	r3, [sp, #16]	@, %sfp
	add	r7, r0, #178	@ tmp270, tmp269,
	ldr	lr, [fp, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	add	r7, r3, r7, asl #2	@, tmp273,, tmp270,
	cmp	r2, lr	@ stimage.image_width, <variable>.stDSDParam.s32ThrWidth
	str	r5, [r7, #8]	@ tmp251, <variable>.LogicImageIsUsed
	bhi	.L502	@,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	ip, [sp, #172]	@ stimage.image_height, stimage.image_height
	add	lr, r0, #75776	@ tmp289,,
	add	r2, lr, #912	@ tmp289, tmp289,
	ldr	r3, [r2, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	cmp	ip, r3	@ stimage.image_height, <variable>.stDSDParam.s32ThrHeight
	bhi	.L502	@,
	ldr	r1, [sp, #216]	@ temp.2090, stimage.p_usrdat
	cmp	r1, #0	@ temp.2090,
	beq	.L503	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r5, [sp, #216]	@ tmp251, stimage.p_usrdat
.L503:
	ldr	r1, [sp, #220]	@ temp.2091, stimage.p_usrdat
	cmp	r1, #0	@ temp.2091,
	beq	.L504	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r1, #0	@ tmp293,
	str	r1, [sp, #220]	@ tmp293, stimage.p_usrdat
.L504:
	ldr	r1, [sp, #224]	@ temp.2092, stimage.p_usrdat
	cmp	r1, #0	@ temp.2092,
	beq	.L505	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	ip, #0	@ tmp294,
	str	ip, [sp, #224]	@ tmp294, stimage.p_usrdat
.L505:
	ldr	r1, [sp, #228]	@ D.33178, stimage.p_usrdat
	cmp	r1, #0	@ D.33178,
	beq	.L502	@,
	mov	r0, r4	@, ChanID
	bl	UnMarkUsdByDnr	@
	mov	r3, #0	@ tmp295,
	str	r3, [sp, #228]	@ tmp295, stimage.p_usrdat
.L502:
	add	r6, r6, #1	@ i.2086, i.2086,
	cmp	r6, #64	@ i.2086,
	beq	.L497	@,
.L506:
	mov	r0, r8	@, D.33153
	mov	r1, r9	@, tmp309
	mov	r5, #0	@ tmp251,
	str	r5, [sp, #436]	@ tmp251, TopPhyAddr
	str	r5, [sp, #432]	@ tmp251, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@ ret,
	bne	.L498	@,
	ldr	r1, [sp, #200]	@ D.33157, stimage.image_id
	mov	r7, #100	@ tmp258,
	umull	r2, r0, sl, r1	@, tmp255, tmp310, D.33157
	mov	lr, r0, lsr #5	@ RelImgID, tmp255,
	mls	r7, r7, lr, r1	@ RelImgID, tmp258, RelImgID, D.33157
	cmp	r7, #63	@ RelImgID,
	bgt	.L523	@,
	mov	r0, r8	@, D.33153
	add	r2, sp, #436	@,,
	add	r3, sp, #432	@,,
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@ ret.2084,
	beq	.L524	@,
	ldr	ip, [sp, #112]	@ stimage.top_luma_phy_addr, stimage.top_luma_phy_addr
	mov	r3, r0	@, ret.2084
	ldr	lr, [sp, #200]	@ stimage.image_id, stimage.image_id
	movw	r1, #:lower16:.LC40	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC40	@,
	mov	r0, #31	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	b	.L502	@
.L498:
	mov	r3, r0	@, ret
	movw	r1, #:lower16:.LC41	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC41	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L497	@
.L523:
	mov	r0, r5	@, tmp251
	mov	r2, r7	@, RelImgID
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	b	.L497	@
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
	beq	.L533	@,
.L526:
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
.L533:
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
	ldr	r3, [r2, #0]	@ g_event_report.467, g_event_report
	cmp	r3, #0	@ g_event_report.467,
	beq	.L527	@,
	cmn	r0, #1	@ LastFrameId.2117,
	add	r2, sp, #8	@ tmp174,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.468,
	str	r0, [r2, #-4]!	@ iftmp.468, para
	mov	r0, r5	@, NextInstId
	blx	r3	@ g_event_report.467
.L527:
	mov	r0, r5	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L526	@
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
	add	r8, r6, r8	@ D.33777, tmp145, tmp148
	mov	r1, r8	@, D.33777
	bl	VCTRL_GetChanImage	@
	subs	sl, r0, #0	@ D.33778,
	bne	.L535	@,
	add	r5, r5, r7	@ tmp153, tmp146, tmp144
	add	r3, r5, #75776	@ tmp154, tmp153,
	add	r3, r3, #856	@ tmp154, tmp154,
	ldr	r6, [r3, #4]	@ <variable>.u32BackwardOptimizeFlag, <variable>.u32BackwardOptimizeFlag
	cmp	r6, #1	@ <variable>.u32BackwardOptimizeFlag,
	beq	.L536	@,
	ldr	r2, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	mov	r1, #1	@ tmp162,
	str	r1, [r5, #440]	@ tmp162, <variable>.s321DFrameIsProc
	add	r5, r5, #192	@ tmp168, tmp153,
	cmp	r2, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L542	@,
	ldr	r0, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r0, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L542	@,
	ldr	ip, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	ip, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L548	@,
.L540:
	mov	r0, #0	@ D.33789,
.L539:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L542:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, #1	@ D.33789,
	b	.L539	@
.L535:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L540	@,
	movw	r3, #1244	@,
	ldr	r2, .L550	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	add	r0, r5, #968	@ tmp228, tmp146,
	add	r0, r6, r0	@, tmp145, tmp228
	bl	IMGQUE_GetLastImageID	@
	movw	r1, #:lower16:g_event_report	@ tmp230,
	movt	r1, #:upper16:g_event_report	@ tmp230,
	ldr	r3, [r1, #0]	@ g_event_report.497, g_event_report
	cmp	r3, #0	@ g_event_report.497,
	beq	.L544	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp231,,
	mov	r1, #115	@,
	moveq	r0, #1	@ iftmp.498,
	str	r0, [r2, #-4]!	@ iftmp.498, para
	mov	r0, r4	@, NextInstId
	blx	r3	@ g_event_report.497
.L544:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	mov	r0, #0	@ D.33789,
	b	.L539	@
.L536:
	ldr	r2, [r5, #116]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ <variable>.Cur1DImage.DispEnableFlag,
	bne	.L549	@,
	ldr	lr, [r5, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	add	r0, r5, #192	@ tmp204, tmp153,
	str	r2, [r5, #440]	@ <variable>.Cur1DImage.DispEnableFlag, <variable>.s321DFrameIsProc
	cmp	lr, #0	@ <variable>.Cur1DImage.image_width,
	beq	.L542	@,
	ldr	r2, [r0, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	cmp	r2, #0	@ <variable>.Cur1DImage.image_height,
	beq	.L542	@,
	ldr	r3, [r3, #0]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	cmp	r3, #0	@ <variable>.s32FastForwardBackwardSpeed,
	bge	.L540	@,
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.33777
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L540	@,
	mov	r0, sl	@, D.33778
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.33789, D.33778
	b	.L539	@
.L549:
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r6	@ D.33789, <variable>.u32BackwardOptimizeFlag
	b	.L539	@
.L548:
	mov	r0, r4	@, NextInstId
	mov	r1, r8	@, D.33777
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L540	@,
	mov	r0, sl	@, D.33778
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@ D.33789, D.33778
	b	.L539	@
.L551:
	.align	2
.L550:
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
	subs	r3, r0, #0	@ D.34113,
	mvnne	r0, #0	@ D.34116,
	beq	.L558	@,
.L554:
	add	sp, sp, #116	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L558:
	ldr	r6, [sp, #152]	@, Stride
	movw	sl, #:lower16:76696	@ tmp159,
	ldr	r8, [sp, #108]	@, PicBufID
	movt	sl, #:upper16:76696	@ tmp159,
	mov	r1, #392	@ tmp157,
	movw	lr, #26488	@,
	mul	r7, fp, r6	@ D.34125, PicHeight,
	movw	r6, #:lower16:.LANCHOR0	@ tmp659,
	mul	r2, sl, r4	@, tmp159, ChanID
	movt	r6, #:upper16:.LANCHOR0	@ tmp659,
	mla	sl, r1, r8, r2	@ tmp160, tmp157,,
	mov	r1, r5	@, pLuma
	add	r9, r7, r7, asl #1	@, tmp580, D.34125, D.34125,
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
	add	ip, r7, lr	@ tmp286, D.34125, <variable>.luma_2d_phy_addr
	ldr	r2, [sp, #96]	@, %sfp
	strd	r8, [r5, sl]	@, tmp170,
	movw	sl, #26544	@ tmp347,
	str	lr, [r5, sl]	@ <variable>.luma_2d_phy_addr, <variable>.luma_phy_addr
	ldr	r8, [sp, #100]	@, %sfp
	ldr	r9, .L559	@,
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
	add	sl, fp, r7	@ tmp384,, D.34125
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
	str	r3, [fp, #4]	@ D.34113, <variable>.error_level
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
	str	r3, [r5, r9]	@ D.34113, <variable>.DispFrameDistance
	movw	r9, #26528	@ tmp249,
	str	r7, [fp, #4]	@ tmp217, <variable>.DispEnableFlag
	ldr	fp, [sp, #44]	@, %sfp
	str	r3, [r5, r8]	@ D.34113, <variable>.GopNum
	movw	r8, #26472	@ tmp328,
	str	lr, [r5, r9]	@ <variable>.luma_2d_phy_addr, <variable>.top_luma_phy_addr
	str	r3, [fp, #4]	@ D.34113, <variable>.DistanceBeforeFirstFrame
	ldr	fp, [sp, #48]	@, %sfp
	str	ip, [fp, #4]	@ tmp286, <variable>.top_chrom_phy_addr
	ldr	r9, [sp, #28]	@, %sfp
	str	r9, [r5, r8]	@, <variable>.luma_vir_addr
	movw	r8, #26592	@ tmp472,
	ldr	lr, [sp, #56]	@, %sfp
	str	sl, [lr, #4]	@ tmp384, <variable>.chrom_vir_addr
	movw	sl, #26568	@ tmp444,
	ldr	fp, [sp, #64]	@, %sfp
	str	r3, [r5, sl]	@ D.34113, <variable>.is_fld_save
	movw	sl, #26648	@ tmp559,
	str	ip, [fp, #4]	@ tmp286, <variable>.chrom_phy_addr
	movw	ip, #26608	@ tmp530,
	ldr	r9, [sp, #156]	@, DispPicWidth
	str	r9, [r5, r8]	@, <variable>.disp_width
	movw	r9, #26488	@,
	ldr	lr, [sp, #72]	@, %sfp
	ldr	fp, [sp, #160]	@, DispPicHeight
	str	r3, [r5, ip]	@ D.34113, <variable>.frame_rate
	movw	r3, #11296	@ tmp577,
	str	r7, [r5, sl]	@ tmp217, <variable>.chroma_idc
	str	fp, [lr, #4]	@, <variable>.disp_height
	ldr	r8, [sp, #84]	@, %sfp
	ldr	fp, .L559	@,
	str	r3, [r8, #4]	@ tmp577, <variable>.format
	bl	memcpy	@
	ldr	r5, [r5, r9]	@ temp.2172, <variable>.luma_2d_vir_addr
	mov	r0, r5	@, temp.2172
	bl	MEM_Vir2Phy	@
	ldr	r2, [sp, #96]	@, %sfp
	mov	r1, r0	@ D.34154,
	mov	r0, r5	@, temp.2172
	bl	KernelFlushCache	@
	ldr	sl, [sp, #92]	@, %sfp
	ldr	r1, [sp, #100]	@, %sfp
	add	r0, sl, #968	@ tmp611,,
	add	r0, fp, r0	@,, tmp611
	bl	IMGQUE_InsertImage	@
	cmp	r0, r7	@,
	beq	.L555	@,
	movw	r1, #:lower16:.LC46	@,
	mov	r0, r7	@, tmp217
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
.L555:
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
	ldr	r3, [r3, #0]	@ g_event_report.527, g_event_report
	cmp	r3, #0	@ g_event_report.527,
	moveq	r0, r3	@ D.34116, g_event_report.527
	beq	.L554	@,
	ldr	r1, [sp, #100]	@, %sfp
	add	r2, sp, #112	@ tmp657,,
	mov	r0, r4	@, ChanID
	str	r1, [r2, #-8]!	@, para
	mov	r1, #5	@,
	blx	r3	@ g_event_report.527
	mov	r0, #0	@ D.34116,
	b	.L554	@
.L560:
	.align	2
.L559:
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
	ldr	r3, [r3, #0]	@ g_eVdmVersion.488, g_eVdmVersion
	cmp	r3, #3	@ g_eVdmVersion.488,
	beq	.L577	@,
	cmp	r3, #4	@ g_eVdmVersion.488,
	ldreq	r3, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
.L563:
	mov	r3, r8	@, pDetPara
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	mov	r2, r5	@, pImageDnr
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r0, [r5, #16]	@ D.33610, <variable>.video_standard
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	cmp	r0, #1	@ D.33610,
	ldrb	ip, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	str	r0, [r4, #16]	@ D.33610, <variable>.video_standard
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
	mov	ip, r2, lsr #4	@ D.33629, tmp200,
	str	ip, [r4, #24]	@ D.33629, <variable>.pic_width_in_mb
	mul	r0, ip, r8	@ tmp202, D.33629, CurPicHeightInMb
	mov	r2, ip, asl #4	@ tmp214, D.33629,
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
	beq	.L578	@,
	ldr	r2, [sp, #28]	@ PicBufID, PicBufID
	mov	lr, #392	@ tmp254,
	mla	r1, lr, r2, r1	@ tmp257, tmp254, PicBufID, tmp230
	movw	r2, #26560	@ tmp252,
	add	r0, r1, r0	@ tmp258, tmp257, tmp228
	ldr	r1, [r0, r2]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldrb	lr, [ip, #9]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	strb	lr, [r4, #11]	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
.L571:
	ldr	r3, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L572	@,
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
.L572:
	mov	r2, r5	@, pImageDnr
	mov	r0, r4	@, pDnrCfg
	mov	r1, r7	@, NextInstId
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.33671,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r2, #2	@ <variable>.pic_structure,
	movne	r0, #0	@ D.33674,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	lr, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	movw	r2, #:lower16:76696	@ tmp304,
	movt	r2, #:upper16:76696	@ tmp304,
	mov	r0, #0	@ D.33674,
	mul	ip, lr, r8	@ tmp295, <variable>.pic_width_in_mb, CurPicHeightInMb
	mla	r6, r2, r7, r6	@ tmp305, tmp304, NextInstId, tmp310
	mov	r3, ip, asl #8	@ tmp299, tmp295,
	add	r8, r3, ip, asl #7	@, tmp300, tmp299, tmp295,
	ldr	r1, [r6, #152]	@ <variable>.Cur1DImage.luma_phy_addr, <variable>.Cur1DImage.luma_phy_addr
	add	r8, r8, r1	@ tmp308, tmp300, <variable>.Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ tmp308, <variable>.dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L578:
	movw	r0, #:lower16:76680	@ tmp236,
	movt	r0, #:upper16:76680	@ tmp236,
	ldr	r2, [ip, r0]	@ <variable>.pCaptureImageOut, <variable>.pCaptureImageOut
	ldr	r1, [r2, #120]	@ <variable>.luma_2d_phy_addr, <variable>.luma_2d_phy_addr
	str	r1, [r4, #36]	@ <variable>.luma_2d_phy_addr, <variable>.dnr_ystaddr_2d
	ldr	lr, [ip, #420]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.Cur1DImage.u32Circumrotate
	strb	lr, [r4, #11]	@ <variable>.Cur1DImage.u32Circumrotate, <variable>.s32MirrorEn
	b	.L571	@
.L577:
	ldr	ip, [r2, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r0, ip, asl #5	@ tmp162, <variable>.Cur1DImage.image_stride,
	str	r0, [r4, #64]	@ tmp162, <variable>.dnr_stride_1d
	b	.L563	@
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
	ldr	r3, [r3, #0]	@ g_eVdmVersion.474, g_eVdmVersion
	sub	r2, r3, #3	@ tmp144, g_eVdmVersion.474,
	cmp	r2, #1	@ tmp144,
	bls	.L580	@,
	movw	r1, #:lower16:USE_FF_APT_EN	@ tmp145,
	movt	r1, #:upper16:USE_FF_APT_EN	@ tmp145,
	ldr	r0, [r1, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r0, #1	@ USE_FF_APT_EN,
	beq	.L588	@,
.L590:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
.L589:
	mov	r1, #0	@ s32SourceImgStoreType,
.L582:
	rsbs	r1, r1, #1	@ prephitmp.2235, s32SourceImgStoreType
	movcc	r1, #0	@ prephitmp.2235
.L584:
	movw	r2, #:lower16:76696	@ tmp179,
	movt	r2, #:upper16:76696	@ tmp179,
	str	r1, [sp, #44]	@ prephitmp.2235, stDetPara.IsFrameStored
	mov	r0, r4	@, tmp220
	mla	r5, r2, r5, r3	@ tmp180, tmp179, NextInstId, tmp219
	ldr	r2, [r5, #192]	@ D.33453, <variable>.Cur1DImage.image_width
	ldr	r3, [r5, #196]	@ D.33455, <variable>.Cur1DImage.image_height
	ldr	lr, [r5, #80]	@ <variable>.Cur1DImage.luma_vir_addr, <variable>.Cur1DImage.luma_vir_addr
	add	r4, r2, #15	@ tmp202, D.33453,
	ldr	ip, [r5, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	add	r1, r3, #15	@ tmp204, D.33455,
	mov	r4, r4, asr #4	@ tmp203, tmp202,
	str	r2, [sp, #24]	@ D.33453, stDetPara.PicWidth
	mov	r1, r1, asr #4	@ tmp205, tmp204,
	str	r4, [sp, #36]	@ tmp203, stDetPara.MbWidth
	str	lr, [sp, #12]	@ <variable>.Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	ip, [sp, #32]	@ <variable>.Cur1DImage.image_stride, stDetPara.PicStride
	str	r1, [sp, #40]	@ tmp205, stDetPara.MbHeight
	str	r3, [sp, #28]	@ D.33455, stDetPara.PicHeight
	bl	DetPic	@
	str	r0, [r5, #404]	@ D.33463, <variable>.Cur1DImage.optm_inf.Rwzb
	str	r0, [r5, #28]	@ D.33463, <variable>.IsRwzb
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L580:
	cmp	r3, #3	@ g_eVdmVersion.474,
	bne	.L583	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp163,
	mov	r1, #1	@ prephitmp.2235,
	mla	ip, lr, r5, r3	@ tmp164, tmp163, NextInstId, tmp219
	ldr	r0, [ip, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	mov	r2, r0, asl #5	@ tmp167, <variable>.Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ tmp167, <variable>.dnr_stride_1d
	b	.L584	@
.L588:
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	lr, #:lower16:76696	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	lr, #:upper16:76696	@ tmp150,
	mla	ip, lr, r5, r3	@ tmp151, tmp150, NextInstId, tmp219
	ldr	r1, [ip, #348]	@ <variable>.Cur1DImage.ImageDnr.video_standard, <variable>.Cur1DImage.ImageDnr.video_standard
	cmp	r1, #0	@ <variable>.Cur1DImage.ImageDnr.video_standard,
	ldreqb	r1, [ip, #336]	@ zero_extendqisi2	@ s32SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L582	@,
	b	.L589	@
.L583:
	cmp	r3, #4	@ g_eVdmVersion.474,
	bne	.L590	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp219,
	movw	ip, #:lower16:76696	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp219,
	movt	ip, #:upper16:76696	@ tmp172,
	mov	r1, #1	@ prephitmp.2235,
	mla	r0, ip, r5, r3	@ tmp173, tmp172, NextInstId, tmp219
	ldr	r2, [r0, #220]	@ <variable>.Cur1DImage.image_stride, <variable>.Cur1DImage.image_stride
	str	r2, [r6, #64]	@ <variable>.Cur1DImage.image_stride, <variable>.dnr_stride_1d
	b	.L584	@
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
	beq	.L596	@,
.L592:
	mov	r0, #0	@ D.33929,
.L594:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L596:
	ldr	ip, [r2, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	ip, #1	@ <variable>.s321DFrameIsProc,
	movne	r0, #1	@ D.33929,
	bne	.L594	@
.L597:
	add	r6, r2, #75776	@ tmp163, tmp142,
	add	r5, r2, #192	@ tmp157, tmp142,
	add	ip, r6, #912	@ tmp163, tmp163,
	ldr	r3, [r3, #8]	@ <variable>.stDSDParam.s32ThrWidth, <variable>.stDSDParam.s32ThrWidth
	ldr	r8, [r5, #4]	@ <variable>.Cur1DImage.image_height, <variable>.Cur1DImage.image_height
	ldr	r7, [ip, #4]	@ <variable>.stDSDParam.s32ThrHeight, <variable>.stDSDParam.s32ThrHeight
	ldr	r6, [r2, #192]	@ <variable>.Cur1DImage.image_width, <variable>.Cur1DImage.image_width
	cmp	r6, r3	@ <variable>.Cur1DImage.image_width, <variable>.stDSDParam.s32ThrWidth
	cmple	r8, r7	@, <variable>.Cur1DImage.image_height, <variable>.stDSDParam.s32ThrHeight
	ble	.L592	@,
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
	cmn	r0, #1	@ D.33926,
	movne	r0, #1	@ D.33929,
	b	.L594	@
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
	bne	.L599	@,
	ldr	r1, [r3, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r1, #0	@ <variable>.s321DFrameIsProc,
	beq	.L600	@,
	movw	r0, #:lower16:76656	@ tmp158,
	movt	r0, #:upper16:76656	@ tmp158,
	ldr	r7, [r3, r0]	@ prephitmp.2288, <variable>.DNRDataSourceFlag
.L601:
	cmp	r7, #1	@ prephitmp.2288,
	beq	.L608	@,
	mov	r1, r2	@, pDnrCfg
	mov	r0, r5	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	bne	.L609	@,
.L602:
	mov	r0, #1	@ D.33980,
	b	.L605	@
.L599:
	ldr	r3, [r3, #452]	@ <variable>.CurImageBufID, <variable>.CurImageBufID
	mov	r0, #0	@ D.33980,
	str	r3, [r1, #0]	@ <variable>.CurImageBufID,* pPicBufID
.L605:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L600:
	movw	lr, #:lower16:76656	@ tmp164,
	movt	lr, #:upper16:76656	@ tmp164,
	add	r8, r3, #75776	@ tmp168, tmp147,
	ldr	r7, [r3, lr]	@ prephitmp.2288, <variable>.DNRDataSourceFlag
	add	r8, r8, #880	@ tmp168, tmp168,
	cmp	r7, #0	@ prephitmp.2288,
	bne	.L601	@,
	str	r2, [sp, #4]	@,
	bl	DNR_PrecessChanLastFrame	@
	ldr	r2, [sp, #4]	@,
	cmp	r0, #1	@,
	beq	.L602	@,
	ldr	r7, [r8, #0]	@ prephitmp.2288, <variable>.DNRDataSourceFlag
	b	.L601	@
.L608:
	movw	r1, #:lower16:76696	@ tmp178,
	movt	r1, #:upper16:76696	@ tmp178,
	mov	r2, #392	@,
	mla	r8, r1, r5, r4	@ tmp179, tmp178, NextInstId, tmp246
	add	r3, r8, #75776	@ tmp186, tmp179,
	add	r0, r8, #48	@, tmp179,
	add	ip, r3, #896	@ tmp186, tmp186,
	ldr	r1, [ip, #4]	@, <variable>.pCaptureImageIn
	bl	memcpy	@
	ldr	r2, [r8, #224]	@ D.33986, <variable>.Cur1DImage.image_id
	str	r7, [r8, #440]	@ prephitmp.2288, <variable>.s321DFrameIsProc
	movw	r1, #:lower16:.LC47	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC47	@,
	str	r2, [r6, #0]	@ D.33986,* pPicBufID
	ldr	r3, [r8, #420]	@, <variable>.Cur1DImage.u32Circumrotate
	bl	dprint_vfmw	@
.L604:
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
	bne	.L605	@,
	mov	r0, r5	@, NextInstId
	mov	r1, r6	@, pPicBufID
	bl	DNR_Get2DFrameStore	@
	cmp	r0, #1	@,
	movne	r0, #0	@, D.33980
	moveq	r0, #1	@, D.33980
	b	.L605	@
.L609:
	cmn	r0, #1	@ result,
	bne	.L604	@,
	b	.L605	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #252
	sub	sp, sp, #252	@,,
	add	r5, sp, #116	@ tmp249,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp248,
	movw	r7, #:lower16:76664	@ tmp152,
	movt	r4, #:upper16:.LANCHOR0	@ tmp248,
	movt	r7, #:upper16:76664	@ tmp152,
	mov	r6, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	mov	r0, r5	@, tmp249
	mov	r8, #0	@ tmp149,
	str	r8, [sp, #244]	@ tmp149, PicBufID
	bl	__memzero	@
	ldr	sl, [r4, r7]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRCaptureEnableFlag
	cmp	sl, #1	@ <variable>.DNRCaptureEnableFlag,
	beq	.L632	@,
.L611:
	ldr	r2, [r4, #20]	@ <variable>.InstMode, <variable>.InstMode
	movw	r3, #:lower16:.LANCHOR0	@ tmp163,
	movt	r3, #:upper16:.LANCHOR0	@ tmp163,
	cmp	r2, #0	@ <variable>.InstMode,
	bne	.L612	@,
	movw	ip, #:lower16:76656	@ tmp166,
	movt	ip, #:upper16:76656	@ tmp166,
	ldr	r1, [r3, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	cmp	r1, #1	@ <variable>.DNRDataSourceFlag,
	bne	.L613	@,
.L612:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ tmp168, eVidStd,
	cmp	r3, #2	@ tmp168,
	bhi	.L614	@,
	movw	r2, #:lower16:g_VdmCharacter	@ tmp169,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp169,
	ldr	lr, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L614	@,
.L613:
	mvn	r0, #0	@ D.34061,
.L627:
	add	sp, sp, #252	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L614:
	cmp	r0, #4	@ eVidStd,
	cmpne	r0, #14	@, eVidStd,
	movne	r7, #0	@, tmp178
	moveq	r7, #1	@, tmp178
	beq	.L613	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L613	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L613	@,
	mov	r0, r7	@, tmp178
	add	r1, sp, #12	@,,
	bl	VCTRL_GetChanState	@
	movw	ip, #:lower16:76632	@ tmp183,
	movt	ip, #:upper16:76632	@ tmp183,
	ldr	r1, [sp, #108]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	movw	r3, #:lower16:.LANCHOR0	@ tmp180,
	movt	r3, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r0, [r4, ip]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	str	r1, [r4, #456]	@ stChanState.total_disp_frame_num, <variable>.s32ValidImgNum
	cmp	r0, #0	@ <variable>.s32FastForwardBackwardSpeed,
	blt	.L616	@,
	movw	lr, #51528	@ tmp186,
	mov	r0, r7	@, tmp178
	str	r7, [r3, lr]	@ tmp178, <variable>.GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L616:
	mov	r0, #0	@,
	add	r1, sp, #244	@,,
	mov	r2, r5	@, tmp249
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L613	@,
	cmn	r0, #1	@ result,
	beq	.L613	@,
	ldr	r3, [r4, #348]	@ D.34062, <variable>.Cur1DImage.ImageDnr.video_standard
	sub	r2, r3, #10	@ tmp191, D.34062,
	cmp	r2, #2	@ tmp191,
	bhi	.L617	@,
	movw	r1, #:lower16:g_VdmCharacter	@ tmp192,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp192,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	beq	.L613	@,
.L617:
	cmp	r3, #4	@ D.34062,
	cmpne	r3, #14	@, D.34062,
	beq	.L613	@,
	cmp	r3, #18	@ D.34062,
	beq	.L613	@,
	movw	ip, #:lower16:g_eVdmVersion	@ tmp202,
	movt	ip, #:upper16:g_eVdmVersion	@ tmp202,
	ldr	sl, [ip, #0]	@ g_eVdmVersion, g_eVdmVersion
	sub	r7, sl, #3	@ tmp203, g_eVdmVersion,
	cmp	r7, #1	@ tmp203,
	bls	.L618	@,
	movw	r2, #:lower16:USE_FF_APT_EN	@ tmp205,
	movt	r2, #:upper16:USE_FF_APT_EN	@ tmp205,
	ldr	lr, [r2, #0]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	lr, #1	@ USE_FF_APT_EN,
	beq	.L633	@,
.L618:
	mov	r8, #0	@ SourceImgStoreType,
.L619:
	add	sl, sp, #200	@ tmp208,,
	mov	r1, #0	@,
	mov	r2, r8	@, SourceImgStoreType
	movw	r7, #:lower16:.LANCHOR0	@ tmp210,
	mov	r0, sl	@, tmp208
	movt	r7, #:upper16:.LANCHOR0	@ tmp210,
	bl	DNR_SetDetPara	@
	ldr	ip, [sp, #244]	@ PicBufID, PicBufID
	mov	r3, sl	@, tmp208
	mov	r0, r5	@, tmp249
	mov	r1, #0	@,
	add	r2, r7, #332	@, tmp210,
	stmia	sp, {r8, ip}	@ phole stm
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L613	@,
	mov	r0, #0	@,
	mov	r1, r5	@, tmp249
	ldr	r2, [sp, #244]	@, PicBufID
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L613	@,
	movw	r8, #:lower16:g_dnr_hal_fun_ptr	@ tmp247,
	movt	r8, #:upper16:g_dnr_hal_fun_ptr	@ tmp247,
	ldr	r3, [sp, #244]	@ PicBufID, PicBufID
	ldr	r0, [r8, #12]	@ D.34075, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r0, #0	@ D.34075,
	str	r3, [r7, #452]	@ PicBufID, <variable>.CurImageBufID
	beq	.L620	@,
	blx	r0	@ D.34075
.L621:
	ldr	r3, [r8, #8]	@ D.34080, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.34080,
	beq	.L622	@,
	mov	r0, r5	@, tmp249
	blx	r3	@ D.34080
.L623:
	movw	r2, #:lower16:76656	@ tmp231,
	movt	r2, #:upper16:76656	@ tmp231,
	ldr	r0, [r8, #16]	@ D.34084, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movw	ip, #:lower16:76660	@ tmp229,
	ldr	lr, [r4, r2]	@ <variable>.DNRDataSourceFlag, <variable>.DNRDataSourceFlag
	movt	ip, #:upper16:76660	@ tmp229,
	cmp	r0, #0	@ D.34084,
	mov	r1, #0	@ tmp226,
	strb	r1, [r4, #8]	@ tmp226, <variable>.DecChanRstFlag
	str	lr, [r4, ip]	@ <variable>.DNRDataSourceFlag, <variable>.DNRCaptureStartFlag
	beq	.L624	@,
	blx	r0	@ D.34084
.L625:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_VfmwGlobalStat	@ tmp236,
	movt	r3, #:upper16:g_VfmwGlobalStat	@ tmp236,
	str	r0, [r3, #20]	@, <variable>.u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L626	@,
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:.LANCHOR1	@ tmp237,
	movt	ip, #:upper16:.LANCHOR1	@ tmp237,
	movw	r1, #:lower16:g_TraceFramePeriod	@ tmp240,
	movt	r1, #:upper16:g_TraceFramePeriod	@ tmp240,
	ldr	r3, [ip, #3076]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r1, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r1, r3, r0	@ tmp238, last_rec_pos_time, currtime
	cmp	r1, r2	@ tmp238, g_TraceFramePeriod
	strhi	r0, [ip, #3076]	@ currtime, last_rec_pos_time
.L626:
	mov	r0, #0	@ tmp243,
	mov	lr, #1	@ tmp245,
	str	r0, [r6, #0]	@ tmp243,* pNextInstId
	str	lr, [r4, #20]	@ tmp245, <variable>.InstMode
	b	.L627	@
.L632:
	ldr	r3, [r4, #440]	@ <variable>.s321DFrameIsProc, <variable>.s321DFrameIsProc
	cmp	r3, #1	@ <variable>.s321DFrameIsProc,
	beq	.L611	@,
	mov	r0, r8	@, tmp149
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:76656	@ tmp158,
	movt	r0, #:upper16:76656	@ tmp158,
	str	r8, [r4, r7]	@ tmp149, <variable>.DNRCaptureEnableFlag
	str	sl, [r4, r0]	@ <variable>.DNRCaptureEnableFlag, <variable>.DNRDataSourceFlag
	b	.L611	@
.L633:
	cmp	r3, #0	@ D.34062,
	ldreqb	r8, [r4, #336]	@ zero_extendqisi2	@ SourceImgStoreType, <variable>.Cur1DImage.ImageDnr.pic_structure
	beq	.L619	@,
	b	.L618	@
.L620:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1565	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L621	@
.L624:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1572	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L625	@
.L622:
	mov	r0, r3	@, D.34080
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1567	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L623	@
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
	ldr	r3, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L635	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L646	@,
.L636:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L635:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r4, #3100]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r2, ip, r0	@ tmp153, s_DnrCtrl.LastProcessTime,
	cmp	r2, #500	@ tmp153,
	ble	.L636	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:.LANCHOR0	@ tmp217,
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.2342, s_DnrCtrl.ThisInstID
	movt	r5, #:upper16:.LANCHOR0	@ tmp217,
	movw	r7, #:lower16:76696	@ tmp161,
	movt	r7, #:upper16:76696	@ tmp161,
	movw	r3, #:lower16:1374389535	@ tmp167,
	movt	r3, #:upper16:1374389535	@ tmp167,
	mla	r2, r7, r1, r5	@ tmp162, tmp161, prephitmp.2342, tmp217
	ldr	r7, [r2, #224]	@ <variable>.Cur1DImage.image_id, <variable>.Cur1DImage.image_id
	umull	ip, r3, r3, r7	@, tmp166, tmp167, <variable>.Cur1DImage.image_id
	mov	ip, #100	@ tmp169,
	mov	r3, r3, lsr #5	@ tmp164, tmp166,
	mls	r2, ip, r3, r7	@ tmp170, tmp169, tmp164, <variable>.Cur1DImage.image_id
	add	r7, r2, #2	@ tmp171, tmp170,
	cmp	r0, r7	@, tmp171
	addne	r6, r5, #8	@ tmp221, tmp217,
	beq	.L647	@,
.L637:
	movw	r7, #:lower16:76696	@ tmp199,
	movt	r7, #:upper16:76696	@ tmp199,
	mov	r0, r1	@, prephitmp.2342
	mla	r1, r7, r1, r6	@ tmp201, tmp199, prephitmp.2342, tmp221
	add	r1, r1, #40	@, tmp201,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r2, [r4, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	ip, #0	@ tmp210,
	movw	r1, #:lower16:.LC50	@,
	mov	r0, ip	@, tmp210
	movt	r1, #:upper16:.LC50	@,
	mla	r5, r7, r2, r5	@ tmp208, tmp199, s_DnrCtrl.ThisInstID, tmp217
	str	ip, [r5, #440]	@ tmp210, <variable>.s321DFrameIsProc
	bl	dprint_vfmw	@
	movw	r3, #:lower16:g_dnr_hal_fun_ptr	@ tmp212,
	movt	r3, #:upper16:g_dnr_hal_fun_ptr	@ tmp212,
	ldr	r0, [r3, #12]	@ D.34284, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r0, #0	@ D.34284,
	beq	.L641	@,
	blx	r0	@ D.34284
.L642:
	mov	r0, #0	@ tmp215,
	str	r0, [r4, #3096]	@ tmp215, s_DnrCtrl.DNRState
	b	.L636	@
.L646:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r1, #1	@ tmp150,
	str	r1, [r4, #3096]	@ tmp150, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L636	@
.L647:
	movw	r7, #:lower16:g_event_report	@ tmp219,
	movt	r7, #:upper16:g_event_report	@ tmp219,
	ldr	r3, [r7, #0]	@ g_event_report.537, g_event_report
	cmp	r3, #0	@ g_event_report.537,
	beq	.L638	@,
	add	r6, sp, #8	@ tmp174,,
	mov	r0, r1	@, prephitmp.2342
	mov	r8, #1	@ tmp173,
	mov	r2, sp	@,
	str	r8, [r6, #-8]!	@ tmp173, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.537
.L638:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	ldr	r6, .L649	@ tmp221,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #:lower16:76696	@ tmp180,
	movt	r0, #:upper16:76696	@ tmp180,
	movw	r8, #:lower16:.LANCHOR1	@ tmp178,
	movt	r8, #:upper16:.LANCHOR1	@ tmp178,
	mla	r1, ip, r0, r6	@ tmp183, s_DnrCtrl.ThisInstID, tmp180, tmp221
	add	r0, r1, #968	@, tmp183,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r1, r0	@ ret_val,
	beq	.L648	@,
	ldr	r3, [r7, #0]	@ g_event_report.2356, g_event_report
	cmp	r3, #0	@ g_event_report.2356,
	beq	.L640	@,
	add	r7, sp, #8	@ tmp192,,
	ldr	r0, [r8, #3092]	@, s_DnrCtrl.ThisInstID
	mov	r2, sp	@,
	str	r1, [r7, #-8]!	@ ret_val,
	mov	r1, #115	@,
	blx	r3	@ g_event_report.2356
.L640:
	mov	r1, #0	@,
	ldr	r0, [r4, #3092]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3092]	@ prephitmp.2342, s_DnrCtrl.ThisInstID
	b	.L637	@
.L648:
	ldr	r3, [r7, #0]	@ g_event_report.2354, g_event_report
	cmp	r3, #0	@ g_event_report.2354,
	beq	.L640	@,
	add	lr, sp, #8	@ tmp188,,
	ldr	r0, [r8, #3092]	@, s_DnrCtrl.ThisInstID
	mov	r2, #1	@ tmp185,
	mov	r1, #115	@,
	str	r2, [lr, #-8]!	@ tmp185,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.2354
	b	.L640	@
.L641:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1838	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L642	@
.L650:
	.align	2
.L649:
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp244,
	movt	r4, #:upper16:.LANCHOR1	@ tmp244,
	.pad #8
	sub	sp, sp, #8	@,,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #3140]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r0, #44]	@ dat,
	tst	r3, #1	@ dat,
	beq	.L660	@,
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp153,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp153,
	ldr	r0, [r1, #20]	@ D.34186, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r0, #0	@ D.34186,
	beq	.L654	@,
	blx	r0	@ D.34186
.L655:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L664	@,
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	bne	.L665	@,
.L657:
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	movw	r3, #:lower16:.LANCHOR1	@ tmp197,
	movt	r3, #:upper16:.LANCHOR1	@ tmp197,
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	beq	.L666	@,
.L660:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L664:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #3092]	@ D.34195, s_DnrCtrl.ThisInstID
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp163,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp163,
	add	r2, r4, r2, asl #2	@, tmp159, tmp244, D.34195,
	ldr	ip, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r1, [r2, #3156]	@ tmp162, last_rec_pos_time
	rsb	r7, r1, r0	@ tmp161, tmp162, currtime
	cmp	r7, ip	@ tmp161, g_TraceFramePeriod
	movw	r7, #:lower16:g_VfmwGlobalStat	@ tmp242,
	movt	r7, #:upper16:g_VfmwGlobalStat	@ tmp242,
	strhi	r0, [r2, #3156]	@ currtime, last_rec_pos_time
	ldr	lr, [r7, #20]	@ <variable>.u32DaLastStartTime, <variable>.u32DaLastStartTime
	cmp	lr, #0	@ <variable>.u32DaLastStartTime,
	beq	.L657	@,
.L665:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldr	ip, [r7, #20]	@ prephitmp.2386, <variable>.u32DaLastStartTime
	add	r3, r2, #49920	@ tmp174, <variable>.u32DaBeginTime,
	add	r1, r3, #80	@ tmp174, tmp174,
	cmp	r1, ip	@ tmp174, prephitmp.2386
	strcc	ip, [r7, #16]	@ prephitmp.2386, <variable>.u32DaBeginTime
	ldr	r5, [r7, #16]	@ <variable>.u32DaBeginTime, <variable>.u32DaBeginTime
	ldrcs	r3, [r7, #24]	@ prephitmp.2375, <variable>.u32DaDnrWorkTime
	movcc	r3, #0	@ prephitmp.2375,
	rsb	r1, r5, r0	@ Period, <variable>.u32DaBeginTime, CurTime
	add	r6, r3, r0	@ tmp182, prephitmp.2375, CurTime
	cmp	r1, #1000	@ Period,
	rsb	r3, ip, r6	@ D.34212, prephitmp.2386, tmp182
	movw	r5, #:lower16:g_VfmwGlobalStat	@ tmp183,
	mov	r6, #0	@ tmp185,
	str	r3, [r7, #24]	@ D.34212, <variable>.u32DaDnrWorkTime
	movt	r5, #:upper16:g_VfmwGlobalStat	@ tmp183,
	str	r6, [r7, #20]	@ tmp185, <variable>.u32DaLastStartTime
	bcc	.L657	@,
	mov	r0, #1000	@ tmp191,
	mul	r0, r0, r3	@, tmp191, D.34212
	bl	__aeabi_uidiv	@
	str	r6, [r5, #16]	@ tmp185, <variable>.u32DaBeginTime
	movw	r3, #:lower16:.LANCHOR1	@ tmp197,
	movt	r3, #:upper16:.LANCHOR1	@ tmp197,
	str	r0, [r5, #28]	@, <variable>.u32DaDnrLoad
	ldr	lr, [r4, #3096]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	lr, #1	@ s_DnrCtrl.DNRState,
	bne	.L660	@,
.L666:
	ldr	r0, [r3, #3092]	@ temp.2388, s_DnrCtrl.ThisInstID
	movw	ip, #9587	@ tmp202,
	movw	r8, #:lower16:.LANCHOR0	@ tmp243,
	movt	r8, #:upper16:.LANCHOR0	@ tmp243,
	mul	r6, ip, r0	@ tmp201, tmp202, temp.2388
	add	r5, r8, r6, asl #3	@, tmp206, tmp243, tmp201,
	ldr	r7, [r5, #20]	@ <variable>.InstMode, <variable>.InstMode
	cmp	r7, #1	@ <variable>.InstMode,
	beq	.L667	@,
.L661:
	ldr	r0, [r4, #3092]	@ temp.2389, s_DnrCtrl.ThisInstID
	movw	r5, #:lower16:76696	@ tmp215,
	movt	r5, #:upper16:76696	@ tmp215,
	mov	r3, #0	@ tmp210,
	str	r3, [r4, #3096]	@ tmp210, s_DnrCtrl.DNRState
	movw	r7, #:lower16:.LANCHOR1	@ tmp209,
	mul	r1, r5, r0	@ tmp214, tmp215, temp.2389
	movw	r6, #:lower16:.LANCHOR0	@ tmp212,
	movt	r7, #:upper16:.LANCHOR1	@ tmp209,
	movt	r6, #:upper16:.LANCHOR0	@ tmp212,
	add	r8, r1, r8	@ tmp216, tmp214, tmp243
	ldr	r8, [r8, #24]	@ <variable>.NeedStartAgain, <variable>.NeedStartAgain
	cmp	r8, r3	@ <variable>.NeedStartAgain,
	beq	.L668	@,
.L662:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L660	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	lr, #1	@ tmp238,
	str	lr, [r4, #3096]	@ tmp238, s_DnrCtrl.DNRState
	str	r0, [r4, #3092]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3100]	@, s_DnrCtrl.LastProcessTime
	b	.L660	@
.L668:
	add	r2, r6, r1	@ tmp223, tmp212, tmp214
	add	r1, r2, #48	@, tmp223,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, [r7, #3092]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r5, r5, r1, r6	@ tmp231, tmp215, s_DnrCtrl.ThisInstID, tmp212
	str	r8, [r5, #440]	@ <variable>.NeedStartAgain, <variable>.s321DFrameIsProc
	b	.L662	@
.L654:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #1697	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L655	@
.L667:
	bl	DNR_ProcessDnrReturn	@
	b	.L661	@
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
	bne	.L673	@,
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
	beq	.L677	@,
.L675:
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L673:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	mov	r2, r5	@, pstMem
	movw	r0, #:lower16:270487664	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L675	@,
.L677:
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
	movw	r5, #:lower16:g_dnr_hal_fun_ptr	@ tmp157,
	movt	r5, #:upper16:g_dnr_hal_fun_ptr	@ tmp157,
	ldr	r0, [r5, #0]	@ D.32872, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.32872,
	beq	.L679	@,
	movw	r4, #:lower16:.LANCHOR1	@ tmp158,
	movt	r4, #:upper16:.LANCHOR1	@ tmp158,
	blx	r0	@ D.32872
	ldr	r3, [r4, #3080]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.32880,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
.L686:
	add	r0, r4, #3072	@, tmp158,
	mov	r1, #60	@,
	add	r0, r0, #8	@,,
	bl	__memzero	@
	ldr	r0, .L687	@,
	movw	r1, #:lower16:76696	@,
	movt	r1, #:upper16:76696	@,
	bl	__memzero	@
	add	r0, r4, #3104	@, tmp158,
	bl	DNR_OpenDrivers	@
	bl	DNR_Fsp_Init	@
	ldr	r0, [r5, #4]	@ D.32891, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r0, #0	@ D.32891,
	beq	.L683	@,
	blx	r0	@ D.32891
.L684:
	mov	r1, #1	@ tmp155,
	mov	r0, #0	@ D.32880,
	str	r1, [r4, #3080]	@ tmp155, s_DnrCtrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L679:
	movw	r4, #:lower16:.LANCHOR1	@ tmp158,
	movt	r4, #:upper16:.LANCHOR1	@ tmp158,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #155	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3080]	@ s_DnrCtrl.s32IsVCTRLOpen, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r3, #0	@ s_DnrCtrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.32880,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	b	.L686	@
.L683:
	movw	r1, #:lower16:.LC14	@,
	mov	r2, #175	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	b	.L684	@
.L688:
	.align	2
.L687:
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
	ldr	r0, .L691	@,
	bl	DNR_CloseDrivers	@
	ldr	r0, .L691+4	@,
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L692:
	.align	2
.L691:
	.word	.LANCHOR1+3104
	.word	.LANCHOR1+3080
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
	.type	__func__.34775, %object
	.size	__func__.34775, 25
__func__.34775:
	.ascii	"DNR_GetVoUsingFrameInQue\000"
	.space	3
	.type	__func__.34680, %object
	.size	__func__.34680, 17
__func__.34680:
	.ascii	"DNR_ReleaseImage\000"
	.space	3
	.type	__func__.34563, %object
	.size	__func__.34563, 17
__func__.34563:
	.ascii	"DNR_ReceiveImage\000"
	.space	3
	.type	__func__.33830, %object
	.size	__func__.33830, 23
__func__.33830:
	.ascii	"DNR_InsertQueueWithDSD\000"
	.space	1
	.type	__func__.33774, %object
	.size	__func__.33774, 25
__func__.33774:
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
	.type	timePrevDo.33403, %object
	.size	timePrevDo.33403, 4
timePrevDo.33403:
	.space	4
	.type	last_rec_pos_time.34678, %object
	.size	last_rec_pos_time.34678, 4
last_rec_pos_time.34678:
	.space	4
	.type	last_rec_pos_time.34561, %object
	.size	last_rec_pos_time.34561, 4
last_rec_pos_time.34561:
	.space	4
	.type	last_rec_pos_time.34428, %object
	.size	last_rec_pos_time.34428, 4
last_rec_pos_time.34428:
	.space	4
	.type	last_rec_pos_time.34013, %object
	.size	last_rec_pos_time.34013, 4
last_rec_pos_time.34013:
	.space	4
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.34175, %object
	.size	last_rec_pos_time.34175, 4
last_rec_pos_time.34175:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
