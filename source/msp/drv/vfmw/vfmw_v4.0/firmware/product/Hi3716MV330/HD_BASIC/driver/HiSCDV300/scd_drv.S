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
	.file	"scd_drv.c"
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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/.scd_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/scd_drv.o
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
	.global	GetInstIDByRawArray
	.type	GetInstIDByRawArray, %function
GetInstIDByRawArray:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #56]	@ D.35036, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35036,
	beq	.L2	@,
	add	r1, r3, #48	@ tmp138, D.35036,
	cmp	r1, r0	@ tmp138, pRawArray
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L2:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	SCDDRV_IsRawArrayFull
	.type	SCDDRV_IsRawArrayFull, %function
SCDDRV_IsRawArrayFull:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:73732	@ tmp149,
	movt	r3, #:upper16:73732	@ tmp149,
	movw	r2, #:lower16:73736	@ tmp150,
	movt	r2, #:upper16:73736	@ tmp150,
	ldr	r1, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	add	ip, r1, #1	@ tmp137, <variable>.Tail,
	ldr	r1, [r0, r2]	@ <variable>.History, <variable>.History
	mov	r0, ip, asr #31	@ tmp140, tmp137,
	mov	r2, r0, lsr #22	@ tmp141, tmp140,
	add	r3, ip, r2	@ tmp142, tmp137, tmp141
	mov	ip, r3, asl #22	@ tmp143, tmp142,
	mov	r0, ip, lsr #22	@ tmp143, tmp143,
	rsb	r3, r2, r0	@ tmp145, tmp141, tmp143
	cmp	r3, r1	@ tmp145, <variable>.History
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsRawArrayFull, .-SCDDRV_IsRawArrayFull
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID
	beq	.L12	@,
.L9:
	mvn	r0, #3	@ D.35134,
	bx	lr	@
.L12:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #56]	@ D.35136, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35136,
	beq	.L9	@,
	movw	r1, #:lower16:73780	@ tmp138,
	movt	r1, #:upper16:73780	@ tmp138,
	movw	r2, #:lower16:73784	@ tmp148,
	movt	r2, #:upper16:73784	@ tmp148,
	ldr	ip, [r3, r1]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	r1, [r3, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r3, ip, #1	@ tmp139, <variable>.RawPacketArray.Tail,
	mov	r2, r3, asr #31	@ tmp142, tmp139,
	mov	r2, r2, lsr #22	@ tmp143, tmp142,
	add	r3, r3, r2	@ tmp144, tmp139, tmp143
	mov	ip, r3, asl #22	@ tmp145, tmp144,
	mov	r3, ip, lsr #22	@ tmp145, tmp145,
	rsb	ip, r2, r3	@ tmp147, tmp143, tmp145
	cmp	ip, r1	@ tmp147, <variable>.RawPacketArray.History
	bxne	lr	@
	b	.L9	@
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L18	@,
.L14:
	mvn	r0, #0	@ D.35182,
	bx	lr	@
.L18:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.35183, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.35183, <variable>.Tail
	mvneq	r0, #2	@ D.35182,
	bxeq	lr	@
	add	ip, r2, r2, asl #3	@, tmp146, D.35183, D.35183,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.35182,
	bxlt	lr	@
	b	.L14	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pOffset,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r0, #0	@, tmp143
	moveq	r0, #1	@, tmp143
	mvneq	r0, #0	@ D.35202,
	bxeq	lr	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.35202,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	bx	lr	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	GetRawNumOffset
	.type	GetRawNumOffset, %function
GetRawNumOffset:
	.fnstart
.LFB1613:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	ip, r0, #1	@ tmp154, pRawStreamArray
	movcc	ip, #0	@ tmp154
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	orrs	ip, ip, r1, lsr #31	@,, tmp154, RawPacketLength,
	mvnne	r0, #0	@ D.35329,
	bne	.L26	@,
	movw	r4, #:lower16:73732	@ tmp165,
	movt	r4, #:upper16:73732	@ tmp165,
	mov	r8, #73728	@ tmp159,
	movw	ip, #:lower16:73740	@ tmp164,
	ldr	r7, [r0, r8]	@ i, <variable>.Head
	movt	ip, #:upper16:73740	@ tmp164,
	ldr	r8, [r0, r4]	@ <variable>.Tail, <variable>.Tail
	ldr	r4, [r0, ip]	@ D.35332, <variable>.FirstPacketOffset
	subs	r8, r8, r7	@ TotalRawNum, <variable>.Tail, i
	add	r5, r7, r7, asl #3	@, tmp162, i, i,
	addmi	r8, r8, #1024	@ TotalRawNum, TotalRawNum,
	add	ip, r5, #1	@ tmp163, tmp162,
	add	r8, r8, r7	@ LastRawPacketIndex, TotalRawNum, i
	mov	r5, r7	@ prephitmp.803, i
	cmp	r8, r7	@ LastRawPacketIndex, i
	ldr	ip, [r0, ip, asl #3]	@ D.35331, <variable>.Length
	bls	.L42	@,
	rsb	r4, r4, ip	@ TotalLen, D.35332, D.35331
	cmp	r1, r4	@ RawPacketLength, TotalLen
	blt	.L42	@,
	mvn	r5, r7	@ tmp184, i
	add	r6, r5, r8	@ tmp183, tmp184, LastRawPacketIndex
	tst	r6, #1	@ tmp183,
	mov	ip, r7	@ i.818, i
	bne	.L43	@,
.L29:
	add	ip, ip, #1	@ i.818, i.818,
	cmp	r8, ip	@ LastRawPacketIndex, i.818
	mov	r6, ip, asr #31	@ tmp167, i.818,
	mov	r6, r6, lsr #22	@ tmp168, tmp167,
	add	r5, ip, r6	@ tmp169, i.818, tmp168
	mov	r5, r5, asl #22	@ tmp170, tmp169,
	mov	r5, r5, lsr #22	@ tmp170, tmp170,
	rsb	r5, r6, r5	@ Index, tmp168, tmp170
	add	r6, r5, r5, asl #3	@, tmp175, Index, Index,
	add	r6, r6, #1	@ tmp176, tmp175,
	ldr	r6, [r0, r6, asl #3]	@ D.35337, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.35337
	bls	.L30	@,
	cmp	r1, r4	@ RawPacketLength, TotalLen
	blt	.L30	@,
	add	ip, ip, #1	@ i.818, i.818,
	mov	r6, ip, asr #31	@ tmp195, i.818,
	mov	r6, r6, lsr #22	@ tmp196, tmp195,
	add	r5, ip, r6	@ tmp197, i.818, tmp196
	mov	r5, r5, asl #22	@ tmp199, tmp197,
	mov	r5, r5, lsr #22	@ tmp199, tmp199,
	rsb	r5, r6, r5	@ Index, tmp196, tmp199
	add	r6, r5, r5, asl #3	@, tmp201, Index, Index,
	add	r6, r6, #1	@ tmp202, tmp201,
	ldr	r6, [r0, r6, asl #3]	@ D.35337, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.35337
.L41:
	cmp	r1, r4	@ RawPacketLength, TotalLen
	bge	.L29	@,
.L30:
	cmp	ip, r7	@ i.818, i
	rsbne	r4, r6, r4	@ tmp177, D.35337, TotalLen
	rsbne	r1, r4, r1	@ tmp178, tmp177, RawPacketLength
	movne	r7, ip	@ i, i.818
.L42:
	str	r1, [r3, #0]	@ tmp178,* pPacketOffset
	mov	r1, #73728	@ tmp179,
	ldr	ip, [sp, #20]	@ pIndex, pIndex
	str	r5, [ip, #0]	@ prephitmp.803,* pIndex
	ldr	r3, [r0, r1]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.35329,
	rsb	r7, r3, r7	@ tmp181, <variable>.Head, i
	str	r7, [r2, #0]	@ tmp181,* pRawNum
.L26:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L43:
	add	ip, r7, #1	@ i.818, i,
	cmp	r8, ip	@ LastRawPacketIndex, i.818
	mov	r6, ip, asr #31	@ tmp187, i.818,
	mov	r6, r6, lsr #22	@ tmp188, tmp187,
	add	r5, ip, r6	@ tmp189, i.818, tmp188
	mov	r5, r5, asl #22	@ tmp191, tmp189,
	mov	r5, r5, lsr #22	@ tmp191, tmp191,
	rsb	r5, r6, r5	@ Index, tmp188, tmp191
	add	r6, r5, r5, asl #3	@, tmp193, Index, Index,
	add	r6, r6, #1	@ tmp194, tmp193,
	ldr	r6, [r0, r6, asl #3]	@ D.35337, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.35337
	bhi	.L41	@,
	b	.L30	@
	.fnend
	.size	GetRawNumOffset, .-GetRawNumOffset
	.align	2
	.global	GetRawStreamSize
	.type	GetRawStreamSize, %function
GetRawStreamSize:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L48	@,
.L45:
	mvn	r0, #0	@ D.35396,
	bx	lr	@
.L48:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.35397, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.35397,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.35400, <variable>.FirstPacketOffset, D.35397
	str	r3, [r1, #0]	@ D.35400,* pStreamSize
	cmp	r3, #0	@ D.35400,
	movge	r0, #0	@ D.35396,
	bxge	lr	@
	b	.L45	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.35409,
	bxeq	lr	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.35409,
	rsb	r3, r2, ip	@ D.35412, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.35412,* pStreamNum
	cmp	r3, #0	@ D.35412,
	addlt	r3, r3, #1024	@ tmp142, D.35412,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	bx	lr	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetSegBufFreeSize
	.type	GetSegBufFreeSize, %function
GetSegBufFreeSize:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:92196	@ tmp138,
	movw	r3, #:lower16:92192	@ tmp139,
	movt	r2, #:upper16:92196	@ tmp138,
	movt	r3, #:upper16:92192	@ tmp139,
	ldr	r2, [r0, r2]	@ D.35459, <variable>.SegBufWriteAddr
	ldr	r3, [r0, r3]	@ D.35460, <variable>.SegBufReadAddr
	cmp	r2, r3	@ D.35459, D.35460
	bhi	.L59	@,
	movwcs	r3, #:lower16:92188	@ tmp145,
	movtcs	r3, #:upper16:92188	@ tmp145,
	subcc	r3, r3, #1	@ tmp144, D.35460,
	ldrcs	r0, [r0, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	rsbcc	r0, r2, r3	@ SegBufFreeSize, D.35459, tmp144
	subcs	r0, r0, #1	@ SegBufFreeSize, <variable>.SegBufSize,
	bx	lr	@
.L59:
	movw	r1, #:lower16:92188	@ tmp140,
	movt	r1, #:upper16:92188	@ tmp140,
	ldr	ip, [r0, r1]	@ <variable>.SegBufSize, <variable>.SegBufSize
	add	r1, r3, ip	@ tmp141, D.35460, <variable>.SegBufSize
	sub	r0, r1, #1	@ tmp143, tmp141,
	rsb	r0, r2, r0	@ SegBufFreeSize, D.35459, tmp143
	bx	lr	@
	.fnend
	.size	GetSegBufFreeSize, .-GetSegBufFreeSize
	.align	2
	.global	CheckData
	.type	CheckData, %function
CheckData:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r3, r1, #31	@ tmp136, u8Data,
	sub	r2, r3, #1	@ tmp137, tmp136,
	cmp	r2, #12	@ tmp137,
	bls	.L61	@,
	cmp	r3, #19	@ tmp136,
	beq	.L61	@,
	cmp	r3, #30	@ tmp136,
	beq	.L61	@,
	cmp	r3, #31	@ tmp136,
	bne	.L62	@,
.L61:
	movw	r3, #:lower16:211784	@ tmp138,
	movt	r3, #:upper16:211784	@ tmp138,
	ldr	r2, [r0, r3]	@ <variable>.s32H264Score, <variable>.s32H264Score
	add	ip, r2, #1	@ tmp141, <variable>.s32H264Score,
	str	ip, [r0, r3]	@ tmp141, <variable>.s32H264Score
.L62:
	cmp	r1, #0	@ u8Data,
	cmpne	r1, #177	@, u8Data,
	beq	.L63	@,
	cmp	r1, #178	@ u8Data,
	cmpne	r1, #179	@, u8Data,
	bne	.L66	@,
.L63:
	movw	ip, #:lower16:211788	@ tmp163,
	movt	ip, #:upper16:211788	@ tmp163,
	ldr	r3, [r0, ip]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r1, r3, #1	@ tmp166, <variable>.s32Mpeg2Score,
	str	r1, [r0, ip]	@ tmp166, <variable>.s32Mpeg2Score
	bx	lr	@
.L66:
	cmp	r1, #180	@ u8Data,
	cmpne	r1, #181	@, u8Data,
	beq	.L63	@,
	cmp	r1, #182	@ u8Data,
	bhi	.L63	@,
	bx	lr	@
	.fnend
	.size	CheckData, .-CheckData
	.align	2
	.global	CheckStartCodeCnt
	.type	CheckStartCodeCnt, %function
CheckStartCodeCnt:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:211792	@ tmp138,
	movt	r2, #:upper16:211792	@ tmp138,
	ldr	r3, [r0, r2]	@ <variable>.s32FindStartCodeCnt, <variable>.s32FindStartCodeCnt
	cmp	r3, #2	@ <variable>.s32FindStartCodeCnt,
	bxle	lr	@
	tst	r1, #31	@ u8Data,
	bxeq	lr	@
	movw	r3, #:lower16:211804	@ tmp141,
	movw	ip, #:lower16:211800	@ tmp142,
	movt	r3, #:upper16:211804	@ tmp141,
	movt	ip, #:upper16:211800	@ tmp142,
	ldr	r2, [r0, r3]	@ D.35517, <variable>.s32CurrentStartCode
	ldr	r3, [r0, ip]	@ D.35518, <variable>.s32LastOneStartCode
	rsb	r1, r3, r2	@ tmp143, D.35518, D.35517
	cmp	r1, #1	@ tmp143,
	beq	.L73	@,
.L69:
	cmp	r2, r3	@ D.35517, D.35518
	bxne	lr	@
	movw	ip, #:lower16:211796	@ tmp147,
	movt	ip, #:upper16:211796	@ tmp147,
	ldr	r3, [r0, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r2, r3	@ D.35517, <variable>.s32LastTwoStartCode
	bxne	lr	@
.L70:
	cmp	r2, #1	@ D.35517,
	bxeq	lr	@
	cmp	r2, #20	@ D.35517,
	bxeq	lr	@
	movw	r2, #:lower16:211784	@ tmp149,
	movt	r2, #:upper16:211784	@ tmp149,
	movw	r1, #:lower16:211788	@ tmp152,
	movt	r1, #:upper16:211788	@ tmp152,
	ldr	ip, [r0, r2]	@ D.35528, <variable>.s32H264Score
	ldr	r3, [r0, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	cmp	ip, #0	@ D.35528,
	subgt	ip, ip, #1	@ tmp151, D.35528,
	strgt	ip, [r0, r2]	@ tmp151, <variable>.s32H264Score
	add	r2, r3, #1	@ tmp155, <variable>.s32Mpeg2Score,
	str	r2, [r0, r1]	@ tmp155, <variable>.s32Mpeg2Score
	bx	lr	@
.L73:
	movw	r1, #:lower16:211796	@ tmp144,
	movt	r1, #:upper16:211796	@ tmp144,
	ldr	ip, [r0, r1]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	r1, ip, r3	@ tmp145, <variable>.s32LastTwoStartCode, D.35518
	cmp	r1, #1	@ tmp145,
	bne	.L69	@,
	b	.L70	@
	.fnend
	.size	CheckStartCodeCnt, .-CheckStartCodeCnt
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp144,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp144,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	mov	r5, r1	@ InstID, InstID
	cmp	r4, #0	@ pstChan,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, [r4, #880]	@ D.35543, <variable>.eVidStd
	cmp	r1, #0	@ D.35543,
	cmpne	r1, #3	@, D.35543,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r2, #:lower16:211792	@ tmp152,
	movt	r2, #:upper16:211792	@ tmp152,
	ldr	r3, [r4, r2]	@ D.35549, <variable>.s32FindStartCodeCnt
	cmp	r3, #199	@ D.35549,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r6, [r0, #0]	@ zero_extendqisi2	@ tmp153,* pSegBufVirAddr
	cmp	r6, #0	@ tmp153,
	beq	.L80	@,
.L76:
	mov	lr, #0	@ prephitmp.954,
	mov	r7, lr	@ u8Data, prephitmp.954
.L77:
	movw	r2, #:lower16:211800	@ tmp159,
	movw	r0, #:lower16:211804	@ tmp162,
	movt	r2, #:upper16:211800	@ tmp159,
	movt	r0, #:upper16:211804	@ tmp162,
	movw	r6, #:lower16:211792	@ tmp156,
	movw	ip, #:lower16:211796	@ tmp158,
	ldr	r1, [r4, r0]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	movt	ip, #:upper16:211796	@ tmp158,
	ldr	r8, [r4, r2]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	movt	r6, #:upper16:211792	@ tmp156,
	str	lr, [r4, r0]	@ prephitmp.954, <variable>.s32CurrentStartCode
	add	lr, r3, #1	@ tmp157, D.35549,
	str	r1, [r4, r2]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	mov	r0, r4	@, pstChan
	str	r8, [r4, ip]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	mov	r1, r7	@, u8Data
	str	lr, [r4, r6]	@ tmp157, <variable>.s32FindStartCodeCnt
	bl	CheckData	@
	mov	r0, r4	@, pstChan
	mov	r1, r7	@, u8Data
	bl	CheckStartCodeCnt	@
	ldr	r0, [r4, r6]	@ <variable>.s32FindStartCodeCnt, <variable>.s32FindStartCodeCnt
	cmp	r0, #199	@ <variable>.s32FindStartCodeCnt,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r6, #:lower16:211784	@ tmp167,
	movw	r7, #:lower16:211788	@ tmp168,
	movt	r6, #:upper16:211784	@ tmp167,
	movt	r7, #:upper16:211788	@ tmp168,
	ldr	r2, [r4, r6]	@ prephitmp.956, <variable>.s32H264Score
	ldr	r1, [r4, r7]	@ prephitmp.967, <variable>.s32Mpeg2Score
	rsb	r3, r1, r2	@ tmp169, prephitmp.967, prephitmp.956
	cmp	r3, #49	@ tmp169,
	ble	.L78	@,
	ldr	lr, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	lr, #3	@ <variable>.eVidStd,
	beq	.L81	@,
.L78:
	rsb	r2, r2, r1	@ tmp174, prephitmp.956, prephitmp.967
	cmp	r2, #49	@ tmp174,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:g_event_report	@ tmp176,
	movt	r1, #:upper16:g_event_report	@ tmp176,
	ldr	r3, [r1, #0]	@ g_event_report.970, g_event_report
	cmp	r3, #0	@ g_event_report.970,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #118	@,
	blx	r3	@ g_event_report.970
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L80:
	ldrb	r7, [r0, #1]	@ zero_extendqisi2	@ tmp154,
	cmp	r7, #0	@ tmp154,
	bne	.L76	@,
	ldrb	r8, [r0, #2]	@ zero_extendqisi2	@ tmp155,
	cmp	r8, #1	@ tmp155,
	bne	.L76	@,
	ldrb	r7, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	and	lr, r7, #31	@ prephitmp.954, u8Data,
	b	.L77	@
.L81:
	movw	ip, #:lower16:g_event_report	@ tmp171,
	movt	ip, #:upper16:g_event_report	@ tmp171,
	ldr	r3, [ip, #0]	@ g_event_report.480, g_event_report
	cmp	r3, #0	@ g_event_report.480,
	beq	.L78	@,
	mov	r1, #118	@,
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	blx	r3	@ g_event_report.480
	ldr	r1, [r4, r7]	@ prephitmp.967, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r6]	@ prephitmp.956, <variable>.s32H264Score
	b	.L78	@
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pSegStreamArray, pSegStreamArray
	movwne	r2, #:lower16:92200	@ tmp137,
	movtne	r2, #:upper16:92200	@ tmp137,
	mvneq	r0, #0	@ D.35746,
	movne	r0, #0	@ D.35746,
	ldrne	r3, [r3, r2]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	strne	r3, [r1, #0]	@ <variable>.SegTotalSize,* pStreamSize
	bx	lr	@
	.fnend
	.size	GetSegStreamSize, .-GetSegStreamSize
	.align	2
	.global	GetSegStreamNum
	.type	GetSegStreamNum, %function
GetSegStreamNum:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:92172	@ tmp148,
	movt	r3, #:upper16:92172	@ tmp148,
	movw	r2, #:lower16:92168	@ tmp149,
	movt	r2, #:upper16:92168	@ tmp149,
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	movw	r3, #:lower16:954437177	@ tmp150,
	ldr	r1, [r0, r2]	@ <variable>.Head, <variable>.Head
	movt	r3, #:upper16:954437177	@ tmp150,
	add	r2, ip, #1152	@ tmp137, <variable>.Tail,
	rsb	r2, r1, r2	@ tmp140, <variable>.Head, tmp137
	umull	r1, ip, r3, r2	@, tmp142, tmp150, tmp140
	mov	r0, ip, lsr #8	@ tmp135, tmp142,
	add	r3, r0, r0, asl #3	@, tmp146, tmp135, tmp135,
	sub	r0, r2, r3, asl #7	@, tmp140, tmp146,
	bx	lr	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegStreamArray
	bxeq	lr	@
	movw	ip, #:lower16:92208	@ tmp136,
	movt	ip, #:upper16:92208	@ tmp136,
	movw	r3, #:lower16:92204	@ tmp138,
	movt	r3, #:upper16:92204	@ tmp138,
	ldr	ip, [r0, ip]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	str	ip, [r1, #0]	@ <variable>.SegFreshNum,* pFreshNum
	ldr	r3, [r0, r3]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	str	r3, [r2, #0]	@ <variable>.SegFreshSize,* pFreshSize
	bx	lr	@
	.fnend
	.size	GetFreshSegStream, .-GetFreshSegStream
	.align	2
	.global	SCDDRV_PrepareSleep
	.type	SCDDRV_PrepareSleep, %function
SCDDRV_PrepareSleep:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #80]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
	ldr	r2, [r3, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp142,
	moveq	r2, #2	@ tmp140,
	strne	r2, [r3, #80]	@ tmp142, s_eScdDrvSleepStage
	streq	r2, [r3, #80]	@ tmp140, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #80]	@, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForceSleep
	.type	SCDDRV_ForceSleep, %function
SCDDRV_ForceSleep:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	ldr	r2, [r3, #80]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #80]	@ tmp136, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_ForceSleep, .-SCDDRV_ForceSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #14	@ tmp139, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r1, [r3, r0, asl #2]	@ D.36027, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.36027,
	beq	.L102	@,
	movw	r2, #:lower16:166072	@ tmp140,
	movt	r2, #:upper16:166072	@ tmp140,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L108	@,
.L102:
	mov	r0, #0	@ D.36030,
	bx	lr	@
.L108:
	mov	r0, #0	@ tmp143,
	str	r0, [r1, r2]	@ tmp143, <variable>.Mode
	ldr	r3, [r3, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, r0	@ s_SmIIS.SCDState,
	beq	.L102	@,
	mov	r3, r0	@ i, tmp143
.L103:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L103	@,
	mvn	r0, #6	@ D.36030,
	bx	lr	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	bne	.L110	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L115	@,
	movw	ip, #:lower16:166072	@ tmp143,
	movt	ip, #:upper16:166072	@ tmp143,
	movw	r0, #:lower16:166124	@ tmp146,
	movt	r0, #:upper16:166124	@ tmp146,
	ldr	r7, [r3, ip]	@ <variable>.Mode, <variable>.Mode
	movw	r6, #:lower16:73780	@ tmp148,
	movw	r5, #:lower16:73776	@ tmp149,
	movt	r6, #:upper16:73780	@ tmp148,
	movt	r5, #:upper16:73776	@ tmp149,
	strb	r7, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	r2, [r3, r0]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	r0, #:lower16:73796	@ tmp153,
	movt	r0, #:upper16:73796	@ tmp153,
	str	r2, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	r2, #:lower16:73788	@ tmp154,
	ldr	r4, [r3, r6]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:73788	@ tmp154,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r5, #:lower16:165972	@ tmp157,
	movt	r5, #:upper16:165972	@ tmp157,
	rsb	r7, ip, r4	@ D.38140, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r7, [r1, #4]	@ D.38140, <variable>.RawNum
	cmp	r7, #0	@ D.38140,
	movw	r4, #:lower16:165968	@ tmp160,
	addlt	r7, r7, #1024	@ tmp152, D.38140,
	strlt	r7, [r1, #4]	@ tmp152, <variable>.RawNum
	ldr	r6, [r3, r0]	@ D.38150, <variable>.RawPacketArray.RawTotalSize
	movt	r4, #:upper16:165968	@ tmp160,
	movw	ip, #:lower16:954437177	@ tmp164,
	movt	ip, #:upper16:954437177	@ tmp164,
	mov	r0, #0	@ D.36042,
	str	r6, [r1, #12]	@ D.38150, <variable>.TotalRawSize
	ldr	r7, [r3, r2]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	movw	r2, #:lower16:166000	@ tmp171,
	movt	r2, #:upper16:166000	@ tmp171,
	rsb	r6, r7, r6	@ tmp156, <variable>.RawPacketArray.FirstPacketOffset, D.38150
	str	r6, [r1, #12]	@ tmp156, <variable>.TotalRawSize
	ldr	r6, [r3, r5]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r5, [r3, r4]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	r4, r6, #1152	@ tmp158, <variable>.StreamSegArray.Tail,
	rsb	r4, r5, r4	@ tmp161, <variable>.StreamSegArray.Head, tmp158
	umull	r5, ip, ip, r4	@, tmp163, tmp164, tmp161
	mov	ip, ip, lsr #8	@ tmp165, tmp163,
	add	ip, ip, ip, asl #3	@, tmp168, tmp165, tmp165,
	sub	r4, r4, ip, asl #7	@ tmp170, tmp161, tmp168,
	str	r4, [r1, #8]	@ tmp170, <variable>.SegNum
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
.L112:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L115:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.36042,
	bne	.L112	@,
.L110:
	mvn	r0, #0	@ D.36042,
	b	.L112	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	GetRawNumInFrame
	.type	GetRawNumInFrame, %function
GetRawNumInFrame:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #73728	@ tmp140,
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	r3, [r0, r3]	@ index, <variable>.Head
	movw	r6, #:lower16:73732	@ tmp170,
	movt	r6, #:upper16:73732	@ tmp170,
	mov	ip, r3, asl #3	@ tmp169, index,
	add	r5, ip, r3	@ tmp143, tmp169, index
	add	r4, r5, #1	@ tmp144, tmp143,
	ldr	r5, [r0, r4, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r4, #1	@ tmp146,
	str	r5, [r2, #0]	@ <variable>.Length,* pTotalLength
	str	r4, [r1, #0]	@ tmp146,* pRawNum
.L117:
	add	r5, ip, r3	@ tmp163, tmp169, index
	add	r4, r3, #1	@ D.36082, index,
	add	ip, r0, r5, asl #3	@, tmp165, pRawPacketArray, tmp163,
	mov	r3, r4, asl #22	@ index, D.36082,
	ldrb	r4, [ip, #52]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r3, r3, lsr #22	@ index, index,
	cmp	r4, #0	@ <variable>.is_not_last_packet_flag,
	mov	ip, r3, asl #3	@ tmp169, index,
	add	r5, ip, r3	@ tmp152, tmp169, index
	add	r5, r5, #1	@ tmp153, tmp152,
	beq	.L122	@,
	ldr	r4, [r1, #0]	@ tmp147,* pRawNum
	add	r4, r4, #1	@ tmp148, tmp147,
	str	r4, [r1, #0]	@ tmp148,* pRawNum
	ldr	r4, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	ldr	r5, [r2, #0]	@ tmp154,* pTotalLength
	add	r4, r5, r4	@ tmp156, tmp154, <variable>.Length
	str	r4, [r2, #0]	@ tmp156,* pTotalLength
	ldr	r4, [r0, r6]	@ <variable>.Tail, <variable>.Tail
	cmp	r4, r3	@ <variable>.Tail, index
	beq	.L118	@,
	ldr	r4, [r1, #0]	@ tmp159,* pRawNum
	cmp	r4, #1024	@ tmp159,
	bls	.L117	@,
.L118:
	mvn	r0, #3	@ D.36089,
.L120:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L122:
	mov	r0, r4	@ D.36089, <variable>.is_not_last_packet_flag
	b	.L120	@
	.fnend
	.size	GetRawNumInFrame, .-GetRawNumInFrame
	.align	2
	.global	AdjustRawPacketVP6A
	.type	AdjustRawPacketVP6A, %function
AdjustRawPacketVP6A:
	.fnstart
.LFB1644:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	ip, [r1, #0]	@ RawNum.515,* pRawNum
	mov	fp, r2	@ pSrcVirAddr, pSrcVirAddr
	mov	r2, #73728	@ tmp150,
	cmp	ip, #0	@ RawNum.515,
	ldr	r2, [r0, r2]	@ D.36109, <variable>.Head
	beq	.L124	@,
	mov	r7, r2, asl #3	@ tmp152, index,
	add	r4, r7, r2	@ tmp153, tmp152, index
	add	r4, r4, #1	@ tmp154, tmp153,
	ldr	r4, [r0, r4, asl #3]	@ SrcLength.1216, <variable>.Length
	cmp	r4, #2	@ SrcLength.1216,
	movgt	r6, #3	@ prephitmp.1201,
	movgt	r5, #0	@ i,
	bgt	.L126	@,
	tst	ip, #1	@ RawNum.515,
	mov	sl, r4	@ SrcLength.1217, SrcLength.1216
	mov	r6, #3	@ offset,
	mov	r5, #0	@ i,
	bne	.L128	@,
	add	r2, r2, #1	@ D.36116, index,
	mov	r5, #1	@ i,
	rsb	r6, r4, #3	@ offset, SrcLength.1216,
	mov	r7, r2, asl #22	@ index, D.36116,
	mov	r2, r7, lsr #22	@ index, index,
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r8, r7, r2	@ tmp184, tmp170, index
	add	r8, r8, r5	@ tmp185, tmp184,
	ldr	r8, [r0, r8, asl #3]	@ SrcLength, <variable>.Length
	add	r4, r4, r8	@ SrcLength.1216, SrcLength.1216, SrcLength
	cmp	r4, #2	@ SrcLength.1216,
	movle	sl, r4	@ SrcLength.1217, SrcLength.1216
	movle	r4, r8	@ SrcLength.1216, SrcLength
	ble	.L128	@,
.L126:
	add	r7, r7, r2	@ tmp163, tmp170, index
	rsb	ip, r5, ip	@ tmp160, i, RawNum.515
	str	ip, [r1, #0]	@ tmp160,* pRawNum
	sub	r4, r4, #3	@ tmp168, SrcLength.1216,
	add	r7, r0, r7, asl #3	@, tmp165, pRawPacketArray, tmp163,
	mov	r0, #0	@ D.36119,
	ldr	r1, [r7, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r6, r1, r6	@ tmp167, <variable>.VirAddr, prephitmp.1201
	str	r6, [fp, #0]	@ tmp167,* pSrcVirAddr
	str	r4, [r3, #0]	@ tmp168,* pSrcLength
	ldr	r3, [sp, #32]	@ pIndex, pIndex
	str	r2, [r3, #0]	@ index,* pIndex
	b	.L129	@
.L130:
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r9, r2, #1	@ D.36116, index,
	add	r8, r7, r2	@ tmp158, tmp170, index
	add	r4, r8, #1	@ tmp159, tmp158,
	ldr	r8, [r0, r4, asl #3]	@ SrcLength, <variable>.Length
	add	r4, sl, r8	@ SrcLength.1216, SrcLength.1217, SrcLength
	cmp	r4, #2	@ SrcLength.1216,
	bgt	.L126	@,
	mov	r7, r9, asl #22	@ index, D.36116,
	rsb	r6, r8, r6	@ offset, SrcLength, offset
	add	r5, r5, #1	@ i, i,
	mov	r2, r7, lsr #22	@ index, index,
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r8, r7, r2	@ tmp179, tmp170, index
	add	sl, r8, #1	@ tmp180, tmp179,
	ldr	r8, [r0, sl, asl #3]	@ SrcLength, <variable>.Length
	add	r4, r4, r8	@ SrcLength.1216, SrcLength.1216, SrcLength
	cmp	r4, #2	@ SrcLength.1216,
	mov	sl, r4	@ SrcLength.1217, SrcLength.1216
	bgt	.L126	@,
	mov	r4, r8	@ SrcLength.1216, SrcLength
.L128:
	add	r2, r2, #1	@ D.36116, index,
	add	r5, r5, #1	@ i, i,
	cmp	r5, ip	@ i, RawNum.515
	rsb	r6, r4, r6	@ offset, SrcLength.1216, offset
	mov	r2, r2, asl #22	@ index, D.36116,
	mov	r2, r2, lsr #22	@ index, index,
	bcc	.L130	@,
.L124:
	mvn	r0, #3	@ D.36119,
.L129:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	AdjustRawPacketVP6A, .-AdjustRawPacketVP6A
	.align	2
	.global	SCDDRV_IsSCDByPass
	.type	SCDDRV_IsSCDByPass, %function
SCDDRV_IsSCDByPass:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ VidStd,
	cmpne	r0, #16	@, VidStd,
	beq	.L138	@,
	cmp	r0, #3	@ VidStd,
	cmpne	r0, #2	@, VidStd,
	beq	.L138	@,
	cmp	r0, #6	@ VidStd,
	beq	.L138	@,
	cmp	r0, #1	@ VidStd,
	beq	.L142	@,
	subs	r0, r0, #15	@ D.36260, VidStd,
	movne	r0, #1	@ D.36260
	bx	lr	@
.L138:
	mov	r0, #0	@ D.36260,
	bx	lr	@
.L142:
	ldr	r0, [r1, #0]	@ <variable>.Vc1Ext.IsAdvProfile, <variable>.Vc1Ext.IsAdvProfile
	rsbs	r0, r0, #1	@ D.36260, <variable>.Vc1Ext.IsAdvProfile
	movcc	r0, #0	@ D.36260
	bx	lr	@
	.fnend
	.size	SCDDRV_IsSCDByPass, .-SCDDRV_IsSCDByPass
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
.LFB1652:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r2, r1, #1	@ tmp140, Mode,
	add	r0, r0, #14	@ tmp139, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	cmp	r2, #1	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bls	.L147	@,
.L144:
	mvn	r0, #0	@ D.36331,
	bx	lr	@
.L147:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L144	@,
	movw	ip, #:lower16:166072	@ tmp141,
	movt	ip, #:upper16:166072	@ tmp141,
	mov	r0, #0	@ D.36331,
	str	r1, [r3, ip]	@ Mode, <variable>.Mode
	bx	lr	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	SCDDRV_GetRawStreamStatus
	.type	SCDDRV_GetRawStreamStatus, %function
SCDDRV_GetRawStreamStatus:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	str	r4, [sp, #-4]!	@,
	.save {r4}
	beq	.L150	@,
	movw	r3, #:lower16:73748	@ tmp140,
	movt	r3, #:upper16:73748	@ tmp140,
	movw	ip, #:lower16:73740	@ tmp141,
	movt	ip, #:upper16:73740	@ tmp141,
	ldr	r4, [r0, r3]	@ D.38171, <variable>.RawTotalSize
	movw	r3, #:lower16:73732	@ tmp144,
	movt	r3, #:upper16:73732	@ tmp144,
	str	r4, [r1, #0]	@ D.38171,* pTotalRawSize
	ldr	ip, [r0, ip]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp143, <variable>.FirstPacketOffset, D.38171
	mov	ip, #73728	@ tmp145,
	str	r4, [r1, #0]	@ tmp143,* pTotalRawSize
	ldr	r1, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	rsb	r3, r1, ip	@ D.38178, <variable>.Head, <variable>.Tail
	str	r3, [r2, #0]	@ D.38178,* pTotalRawNum
	cmp	r3, #0	@ D.38178,
	addlt	r3, r3, #1024	@ tmp148, D.38178,
	strlt	r3, [r2, #0]	@ tmp148,* pTotalRawNum
.L150:
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	SCDDRV_GetRawStreamStatus, .-SCDDRV_GetRawStreamStatus
	.align	2
	.global	GetFreeSegBufSize
	.type	GetFreeSegBufSize, %function
GetFreeSegBufSize:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pLength,
	movne	ip, #0	@, tmp146
	moveq	ip, #1	@, tmp146
	bxeq	lr	@
	movw	r2, #:lower16:92196	@ tmp148,
	movw	r3, #:lower16:92192	@ tmp149,
	movt	r2, #:upper16:92196	@ tmp148,
	movt	r3, #:upper16:92192	@ tmp149,
	str	ip, [r1, #0]	@ tmp146,* pLength
	ldr	r2, [r0, r2]	@ D.36351, <variable>.SegBufWriteAddr
	ldr	r3, [r0, r3]	@ D.36352, <variable>.SegBufReadAddr
	cmp	r2, r3	@ D.36351, D.36352
	bhi	.L157	@,
	movwcs	r3, #:lower16:92188	@ tmp155,
	movtcs	r3, #:upper16:92188	@ tmp155,
	movwcc	ip, #:lower16:92188	@ tmp154,
	movtcc	ip, #:upper16:92188	@ tmp154,
	ldrcs	r0, [r0, r3]	@ prephitmp.1301, <variable>.SegBufSize
	subcc	r3, r3, #1	@ tmp153, D.36352,
	ldrcc	r0, [r0, ip]	@ prephitmp.1301, <variable>.SegBufSize
	rsbcc	r2, r2, r3	@ Len, D.36351, tmp153
	subcs	r2, r0, #1	@ Len, prephitmp.1301,
	cmp	r0, r2	@ prephitmp.1301, Len
	strcs	r2, [r1, #0]	@ Len,* pLength
	bx	lr	@
.L157:
	movw	ip, #:lower16:92188	@ tmp150,
	movt	ip, #:upper16:92188	@ tmp150,
	ldr	r0, [r0, ip]	@ prephitmp.1301, <variable>.SegBufSize
	add	r3, r3, r0	@ tmp151, D.36352, prephitmp.1301
	sub	ip, r3, #1	@ tmp152, tmp151,
	rsb	r2, r2, ip	@ Len, D.36351, tmp152
	cmp	r0, r2	@ prephitmp.1301, Len
	strcs	r2, [r1, #0]	@ Len,* pLength
	bx	lr	@
	.fnend
	.size	GetFreeSegBufSize, .-GetFreeSegBufSize
	.align	2
	.global	SCDDRV_GetSegStreamStatus
	.type	SCDDRV_GetSegStreamStatus, %function
SCDDRV_GetSegStreamStatus:
	.fnstart
.LFB1655:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	ldr	r4, [sp, #32]	@ pIsFreeSegBufSizeFixed, pIsFreeSegBufSizeFixed
	mov	r5, r2	@ pFreeSegBufSize, pFreeSegBufSize
	mov	r6, r1	@ LastUnfinishedSegSize, LastUnfinishedSegSize
	mov	r7, #0	@ tmp140,
	mov	r1, r2	@, pFreeSegBufSize
	str	r7, [r4, #0]	@ tmp140,* pIsFreeSegBufSizeFixed
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	sl, r3	@ pFreeSegSlotNum, pFreeSegSlotNum
	bl	GetFreeSegBufSize	@
	ldr	r0, [r5, #0]	@ D.36377,* pFreeSegBufSize
	add	r3, r6, #79	@ tmp141, LastUnfinishedSegSize,
	movw	ip, #:lower16:92188	@ tmp144,
	movt	ip, #:upper16:92188	@ tmp144,
	cmp	r0, r3	@ D.36377, tmp141
	movwcs	r3, #:lower16:-79	@ tmp142,
	movtcs	r3, #:upper16:-79	@ tmp142,
	rsbcs	r3, r6, r3	@ tmp142, LastUnfinishedSegSize, tmp142
	addcs	r7, r3, r0	@ iftmp.552, tmp142, D.36377
	str	r7, [r5, #0]	@ iftmp.552,* pFreeSegBufSize
	ldr	r1, [r8, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	movw	r3, #:lower16:92172	@ tmp152,
	movt	r3, #:upper16:92172	@ tmp152,
	movw	r0, #:lower16:92168	@ tmp155,
	movt	r0, #:upper16:92168	@ tmp155,
	rsb	r2, r1, r1, asl #3	@, tmp148, <variable>.SegBufSize, <variable>.SegBufSize,
	cmp	r6, r2, lsr #3	@ LastUnfinishedSegSize, tmp148,
	addcs	r7, r7, r6	@ tmp150, iftmp.552, LastUnfinishedSegSize
	strcs	r7, [r5, #0]	@ tmp150,* pFreeSegBufSize
	movcs	r2, #1	@ tmp151,
	strcs	r2, [r4, #0]	@ tmp151,* pIsFreeSegBufSizeFixed
	ldr	ip, [r8, r3]	@ <variable>.Tail, <variable>.Tail
	movw	r3, #:lower16:954437177	@ tmp160,
	ldr	r1, [r8, r0]	@ <variable>.Head, <variable>.Head
	movt	r3, #:upper16:954437177	@ tmp160,
	add	r2, ip, #1152	@ tmp153, <variable>.Tail,
	rsb	ip, r1, r2	@ tmp156, <variable>.Head, tmp153
	umull	r1, r0, r3, ip	@, tmp159, tmp160, tmp156
	mov	r1, r0, lsr #8	@ tmp158, tmp159,
	add	r3, r1, r1, asl #3	@, tmp163, tmp158, tmp158,
	sub	r0, ip, r3, asl #7	@ tmp165, tmp156, tmp163,
	rsb	r2, r0, #1152	@ tmp166, tmp165,
	str	r2, [sl, #0]	@ tmp166,* pFreeSegSlotNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	SCDDRV_GetSegStreamStatus, .-SCDDRV_GetSegStreamStatus
	.align	2
	.global	SCDDRV_IsRawStreamNotEnough
	.type	SCDDRV_IsRawStreamNotEnough, %function
SCDDRV_IsRawStreamNotEnough:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ TotalRawNum,
	cmpne	r0, #3	@, TotalRawSize,
	movhi	r0, #0	@,
	movls	r0, #1	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsRawStreamNotEnough, .-SCDDRV_IsRawStreamNotEnough
	.align	2
	.global	SCDDRV_IsFreeSegSlotNotEnough
	.type	SCDDRV_IsFreeSegSlotNotEnough, %function
SCDDRV_IsFreeSegSlotNotEnough:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #288	@ FreeSegSlotNum,
	movhi	r0, #0	@,
	movls	r0, #1	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsFreeSegSlotNotEnough, .-SCDDRV_IsFreeSegSlotNotEnough
	.align	2
	.global	SCDDRV_IsFreeSegBufNotEnough
	.type	SCDDRV_IsFreeSegBufNotEnough, %function
SCDDRV_IsFreeSegBufNotEnough:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1, lsr #3	@ FreeSegBufSize, TotalSegBufSize,
	movhi	r0, #0	@,
	movls	r0, #1	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsFreeSegBufNotEnough, .-SCDDRV_IsFreeSegBufNotEnough
	.align	2
	.global	SCDDRV_CheckConditionOfStartSCD
	.type	SCDDRV_CheckConditionOfStartSCD, %function
SCDDRV_CheckConditionOfStartSCD:
	.fnstart
.LFB1659:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r0, #0	@ pRawStreamArray
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pStreamSegArray, pStreamSegArray
	moveq	r4, #1	@ prephitmp.1426,
	mov	r1, #0	@ tmp148,
	ldr	r6, [sp, #40]	@ pFreeSegBufSize, pFreeSegBufSize
	str	r1, [sp, #12]	@ tmp148, TotalRawNum
	ldr	r5, [sp, #44]	@ pFreeSegSlotNum, pFreeSegSlotNum
	beq	.L171	@,
	movw	r1, #:lower16:73748	@ tmp149,
	movt	r1, #:upper16:73748	@ tmp149,
	movw	ip, #:lower16:73740	@ tmp150,
	movt	ip, #:upper16:73740	@ tmp150,
	ldr	r4, [r0, r1]	@ D.38199, <variable>.RawTotalSize
	movw	r1, #:lower16:73732	@ tmp153,
	movt	r1, #:upper16:73732	@ tmp153,
	str	r4, [r3, #0]	@ D.38199,* pTotalRawSize
	ldr	ip, [r0, ip]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp152, <variable>.FirstPacketOffset, D.38199
	str	r4, [r3, #0]	@ tmp152,* pTotalRawSize
	mov	r4, #73728	@ tmp154,
	ldr	ip, [r0, r4]	@ <variable>.Head, <variable>.Head
	ldr	r4, [r0, r1]	@ <variable>.Tail, <variable>.Tail
	rsb	r4, ip, r4	@ tmp157, <variable>.Head, <variable>.Tail
	str	r4, [sp, #12]	@ tmp157,
	cmp	r4, #0	@ tmp157,
	blt	.L172	@,
	movne	r4, #0	@, prephitmp.1426
	moveq	r4, #1	@, prephitmp.1426
.L171:
	ldr	r3, [r3, #0]	@ tmp165,* pTotalRawSize
	cmp	r3, #3	@ tmp165,
	orrls	r4, r4, #1	@,, tmp169, prephitmp.1426
	cmp	r4, #0	@ tmp169,
	mvnne	r0, #4	@ D.36430,
	bne	.L174	@,
	ldr	lr, [sp, #48]	@ pIsFreeSegBufSizeFixed, pIsFreeSegBufSizeFixed
	mov	r1, r2	@, LastUnfinishedSegSize
	mov	r0, r7	@, pStreamSegArray
	mov	r2, r6	@, pFreeSegBufSize
	mov	r3, r5	@, pFreeSegSlotNum
	str	lr, [sp, #0]	@ pIsFreeSegBufSizeFixed,
	bl	SCDDRV_GetSegStreamStatus	@
	ldr	r0, [r5, #0]	@ tmp175,* pFreeSegSlotNum
	cmp	r0, #288	@ tmp175,
	bls	.L175	@,
	movw	ip, #:lower16:92188	@ tmp170,
	movt	ip, #:upper16:92188	@ tmp170,
	ldr	r2, [r6, #0]	@ tmp173,* pFreeSegBufSize
	ldr	lr, [r7, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	cmp	r2, lr, lsr #3	@ tmp173, <variable>.SegBufSize,
	movhi	r0, r4	@ D.36430, tmp169
	bhi	.L174	@,
.L175:
	mvn	r0, #5	@ D.36430,
.L174:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L172:
	add	r4, r4, #1024	@ tmp160, tmp157,
	str	r4, [sp, #12]	@ tmp160,
	rsbs	r4, r4, #1	@ prephitmp.1426, tmp160
	movcc	r4, #0	@ prephitmp.1426
	b	.L171	@
	.fnend
	.size	SCDDRV_CheckConditionOfStartSCD, .-SCDDRV_CheckConditionOfStartSCD
	.align	2
	.global	SCDDRV_SetCtrlReg
	.type	SCDDRV_SetCtrlReg, %function
SCDDRV_SetCtrlReg:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	movw	r5, #:lower16:166032	@ tmp139,
	movt	r5, #:upper16:166032	@ tmp139,
	ldr	r2, [r0, #16]	@ StdType, <variable>.Config.VidStd
	mov	r6, #1	@ tmp137,
	strb	r6, [r1, #2]	@ tmp137, <variable>.ScdStart
	ldr	r3, [r0, r5]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movw	r4, #:lower16:166036	@ tmp141,
	movt	r4, #:upper16:166036	@ tmp141,
	movw	r7, #:lower16:166044	@ tmp143,
	movt	r7, #:upper16:166044	@ tmp143,
	movw	r6, #:lower16:166056	@ tmp145,
	str	r3, [r1, #4]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.DownMsgPhyAddr
	movt	r6, #:upper16:166056	@ tmp145,
	ldr	ip, [r0, r4]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movw	r5, #:lower16:166132	@ tmp146,
	movt	r5, #:upper16:166132	@ tmp146,
	movw	r3, #:lower16:165984	@ tmp150,
	movt	r3, #:upper16:165984	@ tmp150,
	movw	r4, #:lower16:165988	@ tmp152,
	str	ip, [r1, #8]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.pDownMsgVirAddr
	movt	r4, #:upper16:165988	@ tmp152,
	ldr	r7, [r0, r7]	@ <variable>.BufAddrCfg.UpMsgPhyAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	movw	ip, #:lower16:166156	@ tmp157,
	movt	ip, #:upper16:166156	@ tmp157,
	str	r7, [r1, #12]	@ <variable>.BufAddrCfg.UpMsgPhyAddr, <variable>.UpMsgPhyAddr
	ldr	r6, [r0, r6]	@ <variable>.BufAddrCfg.UpMsgNum, <variable>.BufAddrCfg.UpMsgNum
	ldr	r5, [r0, r5]	@ <variable>.UpMsgStepInWord, <variable>.UpMsgStepInWord
	mul	r5, r5, r6	@ tmp149, <variable>.UpMsgStepInWord, <variable>.BufAddrCfg.UpMsgNum
	str	r5, [r1, #20]	@ tmp149, <variable>.UpLen
	ldr	r5, [r0, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	str	r5, [r1, #24]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.BufferFirst
	ldr	r4, [r0, r4]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	ldr	r3, [r0, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r3, r4, r3	@ tmp156, <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufPhyAddr
	str	r3, [r1, #28]	@ tmp156, <variable>.BufferLast
	ldr	r3, [r0, ip]	@ <variable>.first_start_scd_flag, <variable>.first_start_scd_flag
	cmp	r3, #1	@ <variable>.first_start_scd_flag,
	movweq	r3, #:lower16:165996	@ tmp159,
	movwne	r3, #:lower16:166152	@ tmp163,
	movteq	r3, #:upper16:165996	@ tmp159,
	movtne	r3, #:upper16:166152	@ tmp163,
	ldreq	r3, [r0, r3]	@ <variable>.StreamSegArray.SegBufWriteAddr, <variable>.StreamSegArray.SegBufWriteAddr
	ldrne	r3, [r0, r3]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	addeq	r3, r3, #3	@ tmp160, <variable>.StreamSegArray.SegBufWriteAddr,
	biceq	r3, r3, #3	@ tmp162, tmp160,
	cmp	r2, #6	@ StdType,
	movne	ip, #0	@, tmp168
	moveq	ip, #1	@, tmp168
	str	r3, [r1, #32]	@ <variable>.seg_next_addr, <variable>.BufferIni
	mov	r3, #1	@ tmp165,
	strb	r3, [r1, #0]	@ tmp165, <variable>.ScdIntMask
	cmp	r2, r3	@ StdType,
	cmpne	r2, #15	@, StdType,
	ldr	r0, [r0, #40]	@ <variable>.Config.ScdLowdlyEnable, <variable>.Config.ScdLowdlyEnable
	moveq	r2, #0	@ prephitmp.1451,
	str	ip, [r1, #48]	@ tmp168, <variable>.reg_avs_flag
	str	r0, [r1, #44]	@ <variable>.Config.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	beq	.L185	@,
	cmp	r2, #6	@ StdType,
	beq	.L187	@,
	sub	r0, r2, #2	@ tmp178, StdType,
	cmp	r0, #1	@ tmp178,
	bhi	.L185	@,
.L187:
	str	r2, [r1, #36]	@ prephitmp.1451, <variable>.ScdProtocol
	mov	r2, #1	@ tmp183,
	strb	r3, [r1, #1]	@ tmp181, <variable>.SliceCheckFlag
	str	r2, [r1, #40]	@ tmp183, <variable>.ScdIniClr
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L185:
	mov	r3, #0	@ tmp181,
	b	.L187	@
	.fnend
	.size	SCDDRV_SetCtrlReg, .-SCDDRV_SetCtrlReg
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegPacket
	mvneq	r0, #0	@ D.36807,
	bxeq	lr	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L196	@,
.L191:
	mvn	r0, #6	@ D.36807,
	bx	lr	@
.L196:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L191	@,
	movw	r3, #:lower16:92196	@ tmp143,
	movw	ip, #:lower16:92192	@ tmp144,
	movt	r3, #:upper16:92196	@ tmp143,
	movt	ip, #:upper16:92192	@ tmp144,
	ldr	r3, [r1, r3]	@ D.38231, <variable>.SegBufWriteAddr
	ldr	r2, [r1, ip]	@ D.38230, <variable>.SegBufReadAddr
	cmp	r3, r2	@ D.38231, D.38230
	bls	.L192	@,
	movw	ip, #:lower16:92188	@ tmp145,
	movt	ip, #:upper16:92188	@ tmp145,
	ldr	r1, [r1, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	add	r2, r2, r1	@ tmp146, D.38230, <variable>.SegBufSize
	sub	r1, r2, #1	@ tmp148, tmp146,
	rsb	r3, r3, r1	@ SegBufFreeSize, D.38231, tmp148
.L193:
	ldr	r2, [r0, #12]	@ D.36817, <variable>.LenInByte
	cmp	r2, #3	@ D.36817,
	bls	.L191	@,
	cmp	r2, r3	@ D.36817, SegBufFreeSize
	movls	r0, #0	@ D.36807,
	bxls	lr	@
	b	.L191	@
.L192:
	movwcs	r3, #:lower16:92188	@ tmp150,
	movtcs	r3, #:upper16:92188	@ tmp150,
	subcc	r2, r2, #1	@ tmp149, D.38230,
	ldrcs	r3, [r1, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	rsbcc	r3, r3, r2	@ SegBufFreeSize, D.38231, tmp149
	subcs	r3, r3, #1	@ SegBufFreeSize, <variable>.SegBufSize,
	b	.L193	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r3	@ pSegPacket, pSegPacket
	mov	r5, r2	@ pLastPts, pLastPts
	add	r3, sp, #16	@,,
	add	r2, sp, #20	@,,
	mov	ip, #0	@ tmp139,
	mov	r6, r0	@ pRawStreamArray, pRawStreamArray
	str	ip, [sp, #12]	@ tmp139, Index
	add	lr, sp, #12	@ tmp144,,
	str	ip, [sp, #20]	@ tmp139, Num
	str	ip, [sp, #16]	@ tmp139, Offset
	str	lr, [sp, #0]	@ tmp144,
	bl	GetRawNumOffset	@
	ldr	r2, [sp, #12]	@ Index.578, Index
	add	r3, r2, r2, asl #3	@, tmp148, Index.578, Index.578,
	add	r6, r6, r3, asl #3	@, tmp150, pRawStreamArray, tmp148,
	ldrd	r2, [r6, #16]	@ D.36841, tmp150,
	strd	r2, [r4, #24]	@ D.36841, pSegPacket,
	ldrd	r0, [r6, #32]	@ <variable>.UserTag, tmp150,
	strd	r0, [r4, #40]	@ <variable>.UserTag, pSegPacket,
	ldrd	r0, [r6, #16]	@ <variable>.Pts, tmp150,
	strd	r0, [r4, #32]	@ <variable>.Pts, pSegPacket,
	ldrd	r0, [r6, #40]	@ <variable>.DispTime, tmp150,
	strd	r0, [r4, #48]	@ <variable>.DispTime, pSegPacket,
	ldr	ip, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r4, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r1, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r4, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r4, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r1, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	r1, [r4, #68]	@ <variable>.GopNum, <variable>.GopNum
	ldrd	r0, [r5]	@ tmp208,* pLastPts
	cmp	r3, r1	@ D.36841, tmp208
	cmpeq	r2, r0	@ D.36841, tmp208
	beq	.L201	@,
	strd	r2, [r5]	@ D.36841,* pLastPts
.L200:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L201:
	mvn	r2, #0	@ tmp209,
	mvn	r3, #0	@,
	strd	r2, [r4, #24]	@ tmp209, pSegPacket,
	b	.L200	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	IsVopHeader
	.type	IsVopHeader, %function
IsVopHeader:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #1	@ ModeFlag,
	beq	.L209	@,
	cmp	r0, #2	@ ModeFlag,
	beq	.L210	@,
.L205:
	movw	ip, #:lower16:-33488896	@ tmp142,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r1, ip	@ StartCode, tmp142
	mov	r0, #0	@ flag,
	bxne	lr	@
.L204:
	mov	r0, #1	@ flag,
	bx	lr	@
.L210:
	ubfx	r2, r1, #16, #8	@ tmp139, StartCode,,
	movw	ip, #:lower16:-33488896	@ tmp142,
	sub	r0, r2, #128	@ tmp140, tmp139,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r0, #3	@ tmp140,
	movhi	r0, #0	@, flag
	movls	r0, #1	@, flag
	cmp	r1, ip	@ StartCode, tmp142
	bxne	lr	@
	b	.L204	@
.L209:
	movw	r3, #:lower16:-1241448448	@ tmp137,
	movt	r3, #:upper16:-1241448448	@ tmp137,
	cmp	r1, r3	@ StartCode, tmp137
	bne	.L205	@,
	b	.L204	@
	.fnend
	.size	IsVopHeader, .-IsVopHeader
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
.LFB1670:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:165972	@ tmp148,
	movt	ip, #:upper16:165972	@ tmp148,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}	@,
	.save {r4, r5, r6, r7, r8, r9, sl}
	movw	r9, #:lower16:165968	@ tmp151,
	movt	r9, #:upper16:165968	@ tmp151,
	ldr	r6, [r0, ip]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	mov	r3, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:954437177	@ tmp156,
	ldr	r4, [r3, r9]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	r5, r6, #1152	@ tmp149, <variable>.StreamSegArray.Tail,
	movt	r0, #:upper16:954437177	@ tmp156,
	sub	ip, r2, #1	@ ValidSegNum, ValidSegNum,
	rsb	r5, r4, r5	@ tmp152, <variable>.StreamSegArray.Head, tmp149
	cmp	ip, #0	@ ValidSegNum,
	mov	r4, ip	@ i, ValidSegNum
	umull	r6, r9, r0, r5	@, tmp155, tmp156, tmp152
	mov	r6, r9, lsr #8	@ tmp154, tmp155,
	add	r0, r6, r6, asl #3	@, tmp159, tmp154, tmp154,
	sub	r5, r5, r0, asl #7	@ tmp161, tmp152, tmp159,
	rsb	r9, r5, #1152	@ FreeSegSlotNum, tmp161,
	blt	.L212	@,
	movw	r6, #:lower16:166132	@ tmp162,
	movt	r6, #:upper16:166132	@ tmp162,
	movw	r5, #:lower16:73800	@ tmp163,
	movw	sl, #:lower16:165984	@ tmp164,
	ldr	r7, [r3, r6]	@ pretmp.1559, <variable>.UpMsgStepInWord
	movt	r5, #:upper16:73800	@ tmp163,
	movt	sl, #:upper16:165984	@ tmp164,
	movw	r0, #:lower16:166076	@ tmp165,
	tst	ip, #1	@ ValidSegNum,
	movt	r0, #:upper16:166076	@ tmp165,
	mov	r2, r7, asl #2	@ pretmp.1583, pretmp.1559,
	ldr	r6, [r3, sl]	@ pretmp.1563, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r7, [r3, r5]	@ pretmp.1561, <variable>.StreamSegArray.pSegBufVirAddr
	movw	sl, #:lower16:-1241448448	@ tmp179,
	ldr	r0, [r3, r0]	@ pretmp.1565, <variable>.Mpeg4ModeFlag
	movw	r5, #:lower16:-33488896	@ tmp177,
	mla	r1, r2, ip, r1	@ ivtmp.1580, pretmp.1583, ValidSegNum, pScdUpMsg
	movt	r5, #:upper16:-33488896	@ tmp177,
	movt	sl, #:upper16:-1241448448	@ tmp179,
	rsb	r3, r2, #0	@ D.39424, pretmp.1583
	beq	.L218	@,
	ldr	r2, [r1, #0]	@ tmp189,* ivtmp.1580
	cmp	r0, #1	@ pretmp.1565,
	rsb	r2, r6, r2	@ tmp190, pretmp.1563, tmp189
	ldr	r2, [r7, r2]	@ StartCode,
	beq	.L238	@,
	cmp	r0, #2	@ pretmp.1565,
	beq	.L239	@,
.L224:
	mov	r8, #0	@ flag,
.L235:
	cmp	r2, r5	@ StartCode, tmp177
	beq	.L222	@,
	cmp	r8, #1	@ flag,
	beq	.L222	@,
.L223:
	subs	r4, r4, #1	@ i, i,
	add	r1, r1, r3	@ ivtmp.1580, ivtmp.1580, D.39424
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bmi	.L212	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
.L218:
	ldr	r2, [r1, #0]	@ tmp168,* ivtmp.1580
	cmp	r0, #1	@ pretmp.1565,
	rsb	r2, r6, r2	@ tmp167, pretmp.1563, tmp168
	ldr	r2, [r7, r2]	@ StartCode,
	beq	.L240	@,
	cmp	r0, #2	@ pretmp.1565,
	beq	.L241	@,
.L215:
	cmp	r2, r5	@ StartCode, tmp177
	mov	r8, #0	@ flag,
	beq	.L214	@,
.L244:
	cmp	r8, #1	@ flag,
	beq	.L214	@,
	subs	r4, r4, #1	@ tmp182, i,
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	add	r8, r1, r3	@ ivtmp.1580, ivtmp.1580, D.39424
	bmi	.L212	@,
.L245:
	ldr	r2, [r1, r3]	@ tmp186,* D.39424
	cmp	r0, #1	@ pretmp.1565,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	rsb	r1, r6, r2	@ tmp187, pretmp.1563, tmp186
	ldr	r2, [r7, r1]	@ StartCode,
	beq	.L242	@,
	cmp	r0, #2	@ pretmp.1565,
	beq	.L243	@,
.L230:
	cmp	r2, r5	@ StartCode, tmp177
	mov	r1, #0	@ flag,
	beq	.L228	@,
.L246:
	cmp	r1, #1	@ flag,
	beq	.L228	@,
.L229:
	sub	r4, r4, #1	@ i, tmp182,
	add	r1, r8, r3	@ ivtmp.1580, ivtmp.1580, D.39424
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	b	.L218	@
.L241:
	ubfx	r8, r2, #16, #8	@ tmp171, StartCode,,
	sub	r8, r8, #128	@ tmp172, tmp171,
	cmp	r8, #3	@ tmp172,
	movhi	r8, #0	@, flag
	movls	r8, #1	@, flag
	cmp	r2, r5	@ StartCode, tmp177
	bne	.L244	@,
.L214:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bcs	.L212	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	subs	r4, r4, #1	@ tmp182, i,
	add	r8, r1, r3	@ ivtmp.1580, ivtmp.1580, D.39424
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bpl	.L245	@,
.L212:
	mov	r0, r2	@, ValidSegNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L243:
	ubfx	r1, r2, #16, #8	@ tmp201, StartCode,,
	sub	r1, r1, #128	@ tmp202, tmp201,
	cmp	r1, #3	@ tmp202,
	movhi	r1, #0	@, flag
	movls	r1, #1	@, flag
	cmp	r2, r5	@ StartCode, tmp177
	bne	.L246	@,
.L228:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bcs	.L212	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	b	.L229	@
.L240:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L215	@,
	b	.L214	@
.L242:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L230	@,
	b	.L228	@
.L238:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L224	@,
.L222:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	subcc	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	bcc	.L223	@,
	b	.L212	@
.L239:
	ubfx	r8, r2, #16, #8	@ tmp195, StartCode,,
	sub	r8, r8, #128	@ tmp196, tmp195,
	cmp	r8, #3	@ tmp196,
	movhi	r8, #0	@, flag
	movls	r8, #1	@, flag
	b	.L235	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	CorrectRollPhyAddr
	.type	CorrectRollPhyAddr, %function
CorrectRollPhyAddr:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r2	@ SegNextAddr, SegBufferPhyAddr
	addcc	r0, r1, r0	@ D.36915, SegNextAddr, RollPhyAddr
	rsbcc	r0, r2, r0	@ RollPhyAddr, SegBufferPhyAddr, D.36915
	bx	lr	@
	.fnend
	.size	CorrectRollPhyAddr, .-CorrectRollPhyAddr
	.align	2
	.global	CorrectSegNextAddr
	.type	CorrectSegNextAddr, %function
CorrectSegNextAddr:
	.fnstart
.LFB1672:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r0	@ SegBufferPhyAddr, SegNextAddr
	movcs	r0, r1	@, SegBufferPhyAddr
	bx	lr	@
	.fnend
	.size	CorrectSegNextAddr, .-CorrectSegNextAddr
	.align	2
	.global	SetLastUnfinishedSegInfo
	.type	SetLastUnfinishedSegInfo, %function
SetLastUnfinishedSegInfo:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #:lower16:166132	@ tmp146,
	movt	r5, #:upper16:166132	@ tmp146,
	mov	r4, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:166048	@ tmp145,
	movt	r0, #:upper16:166048	@ tmp145,
	ldr	r7, [r4, r5]	@ <variable>.UpMsgStepInWord, <variable>.UpMsgStepInWord
	add	r3, r4, #165888	@, pScdInstance,
	ldr	r6, [r4, r0]	@ pScdUpMsg, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r5, r2	@ pSmStateReg, pSmStateReg
	add	r0, r4, #48	@, pScdInstance,
	add	r2, r3, #208	@, tmp2,
	mul	r7, r7, r1	@ D.36931, <variable>.UpMsgStepInWord, LastStartCodeIndex
	add	r3, r3, #288	@,,
	add	lr, r7, #1	@ tmp149, D.36931,
	ldr	ip, [r6, lr, asl #2]	@ tmp151,* pScdUpMsg
	bic	r1, ip, #-1073741824	@, tmp151,
	bl	GetSegPts	@
	ldr	r3, [r6, r7, asl #2]	@ D.36941,* pScdUpMsg
	movw	r0, #:lower16:166160	@ tmp156,
	movw	r2, #:lower16:165984	@ tmp157,
	movt	r0, #:upper16:166160	@ tmp156,
	movt	r2, #:upper16:165984	@ tmp157,
	movw	r1, #:lower16:166152	@ tmp160,
	movt	r1, #:upper16:166152	@ tmp160,
	str	r3, [r4, r0]	@ D.36941, <variable>.last_start_code_addr
	ldr	r0, [r4, r2]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r2, [r5, #28]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	cmp	r0, r2	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.seg_next_addr
	movcs	r2, r0	@ D.38248, <variable>.StreamSegArray.SegBufPhyAddr
	str	r2, [r4, r1]	@ D.38248, <variable>.seg_next_addr
	cmp	r3, r2	@ D.36941, D.38248
	bls	.L253	@,
	movw	r1, #:lower16:166168	@ tmp161,
	movt	r1, #:upper16:166168	@ tmp161,
	mov	ip, #1	@ tmp162,
	str	ip, [r4, r1]	@ tmp162, <variable>.roll_flag
	movw	ip, #:lower16:166172	@ tmp164,
	ldr	lr, [r5, #28]	@ temp.1652, <variable>.seg_next_addr
	movt	ip, #:upper16:166172	@ tmp164,
	ldr	r1, [r5, #16]	@ RollPhyAddr, <variable>.ScdRollAddr
	cmp	lr, r0	@ temp.1652, <variable>.StreamSegArray.SegBufPhyAddr
	rsbcc	r1, r0, r1	@ D.38254, <variable>.StreamSegArray.SegBufPhyAddr, RollPhyAddr
	movw	r0, #:lower16:165984	@ tmp167,
	movt	r0, #:upper16:165984	@ tmp167,
	addcc	r1, r1, lr	@ RollPhyAddr, D.38254, temp.1652
	movw	lr, #:lower16:166164	@ tmp165,
	str	r1, [r4, ip]	@ RollPhyAddr, <variable>.roll_addr
	ldr	r5, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	lr, #:upper16:166164	@ tmp165,
	movw	ip, #:lower16:166156	@ tmp177,
	movt	ip, #:upper16:166156	@ tmp177,
	rsb	r2, r5, r2	@ tmp168, <variable>.StreamSegArray.SegBufPhyAddr, D.38248
	rsb	r3, r3, r1	@ D.36953, D.36941, RollPhyAddr
	add	r1, r2, r3	@ tmp170, tmp168, D.36953
	mov	r2, #0	@ tmp178,
	str	r1, [r4, lr]	@ tmp170, <variable>.last_unfinished_seg_size
	str	r2, [r4, ip]	@ tmp178, <variable>.first_start_scd_flag
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L253:
	movw	lr, #:lower16:166168	@ tmp171,
	movw	r0, #:lower16:166172	@ tmp173,
	movt	lr, #:upper16:166168	@ tmp171,
	movt	r0, #:upper16:166172	@ tmp173,
	movw	r1, #:lower16:166164	@ tmp175,
	movw	ip, #:lower16:166156	@ tmp177,
	movt	r1, #:upper16:166164	@ tmp175,
	movt	ip, #:upper16:166156	@ tmp177,
	rsb	r3, r3, r2	@ tmp176, D.36941, D.38248
	mov	r5, #0	@ tmp172,
	mov	r2, #0	@ tmp178,
	str	r3, [r4, r1]	@ tmp176, <variable>.last_unfinished_seg_size
	str	r5, [r4, r0]	@ tmp172, <variable>.roll_addr
	str	r5, [r4, lr]	@ tmp172, <variable>.roll_flag
	str	r2, [r4, ip]	@ tmp178, <variable>.first_start_scd_flag
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	SetLastUnfinishedSegInfo, .-SetLastUnfinishedSegInfo
	.align	2
	.global	SetPushRawOverState
	.type	SetPushRawOverState, %function
SetPushRawOverState:
	.fnstart
.LFB1676:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ pSmPushRaw, pSmPushRaw
	ldr	r0, [r0, #8]	@ <variable>.PushRawOverState, <variable>.PushRawOverState
	cmp	r1, #2	@ PushRawOverState,
	cmpeq	r0, #3	@, <variable>.PushRawOverState,
	strne	r1, [r3, #8]	@ PushRawOverState, <variable>.PushRawOverState
	movne	r0, #0	@, tmp144
	moveq	r0, #1	@, tmp144
	moveq	r2, #2	@ tmp145,
	mvneq	r0, #6	@ D.37057,
	streq	r2, [r3, #8]	@ tmp145, <variable>.PushRawOverState
	bx	lr	@
	.fnend
	.size	SetPushRawOverState, .-SetPushRawOverState
	.global	__aeabi_uidiv
	.align	2
	.global	GetValidStartCodeNum
	.type	GetValidStartCodeNum, %function
GetValidStartCodeNum:
	.fnstart
.LFB1677:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	ldr	r0, [r0, #24]	@, <variable>.UpMsgLenInWord
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	cmp	r0, r3	@, <variable>.StartCodeNum
	movcs	r0, r3	@, <variable>.StartCodeNum
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	GetValidStartCodeNum, .-GetValidStartCodeNum
	.align	2
	.global	ConvertByteOrder
	.type	ConvertByteOrder, %function
ConvertByteOrder:
	.fnstart
.LFB1679:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp137,* VirAddr
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ tmp136,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp140,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp143,
	orr	ip, r3, r1, asl #24	@, tmp139, tmp136, tmp137,
	orr	r3, ip, r2, asl #16	@, tmp142, tmp139, tmp140,
	orr	r0, r3, r0, asl #8	@,, tmp142, tmp143,
	bx	lr	@
	.fnend
	.size	ConvertByteOrder, .-ConvertByteOrder
	.align	2
	.global	ParseMpeg4UniqueUpMsg
	.type	ParseMpeg4UniqueUpMsg, %function
ParseMpeg4UniqueUpMsg:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #0]	@ tmp137,* pMpeg4UniqueUpMsg
	cmp	r0, #1	@ Mpeg4ModeFlag,
	biceq	r3, r3, #1	@ tmp176, tmp137,
	orrne	r3, r3, #1	@ tmp176, tmp177,
	str	r3, [r1, #0]	@ tmp176,* pMpeg4UniqueUpMsg
	ldr	ip, [r2, #4]	@ tmp141,
	ubfx	r0, ip, #30, #1	@ tmp143, tmp141,,
	bfi	r3, r0, #1, #1	@ tmp148, tmp143,,
	str	r3, [r1, #0]	@ tmp148,* pMpeg4UniqueUpMsg
	ldrh	ip, [r2, #10]	@ tmp149,
	bfi	r3, ip, #2, #1	@ tmp157, tmp149,,
	str	r3, [r1, #0]	@ tmp157,* pMpeg4UniqueUpMsg
	ldr	r0, [r2, #8]	@ tmp159,
	ubfx	ip, r0, #4, #3	@ tmp163, tmp159,,
	bfi	r3, ip, #3, #4	@ tmp166, tmp163,,
	str	r3, [r1, #0]	@ tmp166,* pMpeg4UniqueUpMsg
	ldr	r0, [r2, #8]	@ tmp167,
	and	r2, r0, #7	@ tmp171, tmp167,
	bfi	r3, r2, #7, #4	@ tmp174, tmp171,,
	str	r3, [r1, #0]	@ tmp174,* pMpeg4UniqueUpMsg
	bx	lr	@
	.fnend
	.size	ParseMpeg4UniqueUpMsg, .-ParseMpeg4UniqueUpMsg
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1684:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L274	@,
.L270:
	mov	r0, #0	@ D.37385,
.L272:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {pc}
.L274:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L270	@,
	ldr	ip, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.37385,
	blt	.L272	@,
	ldr	r0, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L270	@,
	ldr	lr, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.37385
	movle	r0, #1	@, D.37385
	b	.L272	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	SCDDRV_CanNotSelectInst
	.type	SCDDRV_CanNotSelectInst, %function
SCDDRV_CanNotSelectInst:
	.fnstart
.LFB1695:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r0, r0, #14	@ tmp140, InstId,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, r0, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ pSmInstArray,
	beq	.L276	@,
	movw	r1, #:lower16:166072	@ tmp141,
	movt	r1, #:upper16:166072	@ tmp141,
	ldr	r2, [r3, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #0	@ <variable>.Mode,
	beq	.L276	@,
	add	r1, r3, #32	@ tmp144, pSmInstArray,
	ldr	r2, [r3, #16]	@ VidStd, <variable>.Config.VidStd
	mov	ip, sp	@ tmp143,
	ldmia	r1, {r0, r1}	@ tmp144,,
	cmp	r2, #17	@ VidStd,
	stmia	ip, {r0, r1}	@ tmp143,,
	beq	.L276	@,
	mov	r0, r2	@, VidStd
	mov	r1, sp	@,
	bl	SCDDRV_IsSCDByPass	@
	subs	r0, r0, #0	@ D.37818,,
	movne	r0, #1	@ D.37818
	b	.L277	@
.L276:
	mov	r0, #1	@ D.37818,
.L277:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	SCDDRV_CanNotSelectInst, .-SCDDRV_CanNotSelectInst
	.align	2
	.global	get_scd_msg_size
	.type	get_scd_msg_size, %function
get_scd_msg_size:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #44164	@,
	bx	lr	@
	.fnend
	.size	get_scd_msg_size, .-get_scd_msg_size
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r1, #:lower16:.LC0	@,
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movt	r1, #:upper16:.LC0	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #0]	@, <variable>.Scdover
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, <variable>.ScdInt
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, <variable>.ShortScdNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, <variable>.StartCodeNum
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, <variable>.ScdRollAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, <variable>.SrcEaten
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC6	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r0, [r3, #8]	@ D.35794, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.35794,
	beq	.L284	@,
	blx	r0	@ D.35794
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #80]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L284:
	movw	r2, #1032	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #80]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r0, #0	@ pStreamSegArray, pStreamSegArray
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ StreamID, StreamID
	bne	.L310	@,
.L288:
	mvn	r0, #0	@ Ret,
.L302:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L310:
	sub	r2, r1, #1152	@ tmp146, StreamID,
	movw	r3, #:lower16:-1154	@ tmp148,
	movt	r3, #:upper16:-1154	@ tmp148,
	cmp	r2, r3	@ tmp146, tmp148
	bls	.L288	@,
	cmn	r1, #1	@ StreamID,
	beq	.L311	@,
	movw	r3, #:lower16:92168	@ tmp197,
	movw	r2, #:lower16:92172	@ tmp198,
	movt	r3, #:upper16:92168	@ tmp197,
	movt	r2, #:upper16:92172	@ tmp198,
	ldr	r3, [r5, r3]	@ i.1905, <variable>.Head
	ldr	r0, [r5, r2]	@ temp.1911, <variable>.Tail
	cmp	r3, r0	@ i.1905, temp.1911
	beq	.L290	@,
	cmp	r1, r3	@ StreamID, i.1905
	movwne	r1, #:lower16:954437177	@ tmp285,
	movtne	r1, #:upper16:954437177	@ tmp285,
	bne	.L304	@,
	b	.L294	@
.L308:
	cmp	r4, r3	@ StreamID, i.1905
	beq	.L294	@,
.L304:
	add	r3, r3, #1	@ D.35718, i.1905,
	umull	ip, r2, r1, r3	@, tmp215, tmp285, D.35718
	mov	ip, r2, lsr #8	@ i.1905, tmp215,
	add	r2, ip, ip, asl #3	@, tmp219, i.1905, i.1905,
	sub	r3, r3, r2, asl #7	@ i.1905, D.35718, tmp219,
	cmp	r3, r0	@ i.1905, temp.1911
	bne	.L308	@,
.L290:
	mvn	r0, #2	@ Ret,
	b	.L302	@
.L294:
	add	ip, r4, r4, asl #2	@, tmp201, StreamID, StreamID,
	add	r0, r5, ip, asl #4	@, tmp205, pStreamSegArray, tmp201,
	add	r6, r0, #8	@ tmp206, tmp205,
	ldrsb	r1, [r6, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r1, #2	@ <variable>.SegState,
	bne	.L290	@,
.L293:
	ldrb	r7, [r6, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	mov	lr, #0	@ tmp221,
	ldr	r2, [r6, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #26	@,
	ldr	r3, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	movw	r1, #:lower16:.LC11	@,
	strb	lr, [r6, #4]	@ tmp221, <variable>.SegState
	movt	r1, #:upper16:.LC11	@,
	str	r7, [sp, #0]	@ <variable>.IsLastSeg,
	str	r4, [sp, #4]	@ StreamID,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:92168	@ tmp227,
	movt	r1, #:upper16:92168	@ tmp227,
	ldr	r7, [r5, r1]	@ i, <variable>.Head
	cmp	r7, r4	@ i, StreamID
	beq	.L312	@,
.L297:
	movw	r3, #:lower16:92200	@ tmp260,
	movt	r3, #:upper16:92200	@ tmp260,
	ldr	r2, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r5, r3]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	ip, r2, r1	@ tmp264, <variable>.LenInByte, <variable>.SegTotalSize
	str	ip, [r5, r3]	@ tmp264, <variable>.SegTotalSize
	b	.L302	@
.L311:
	movw	ip, #:lower16:92168	@ tmp149,
	movw	r1, #:lower16:92172	@ tmp150,
	movt	ip, #:upper16:92168	@ tmp149,
	movt	r1, #:upper16:92172	@ tmp150,
	ldr	r4, [r5, ip]	@ StreamID, <variable>.Head
	ldr	r0, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	r4, r0	@ StreamID, <variable>.Tail
	beq	.L290	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC8	@,
	mov	r2, r4	@, StreamID
	movt	r1, #:upper16:.LC8	@,
	mov	sl, r4, asl #2	@ tmp269, StreamID,
	bl	dprint_vfmw	@
	add	r3, sl, r4	@ tmp155, tmp269, StreamID
	add	r8, r3, #1	@ tmp156, tmp155,
	add	r8, r5, r8, asl #4	@, tmp159, pStreamSegArray, tmp156,
	ldr	r6, [r8, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #0	@ <variable>.LenInByte,
	beq	.L291	@,
	mov	lr, r3, asl #1	@ tmp277, tmp155,
	add	r8, r8, #4	@ tmp284, tmp159,
	add	r7, lr, #1	@ tmp278, tmp277,
	mov	r6, #0	@ i.1904,
.L292:
	ldr	ip, [r5, r7, asl #3]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	ldrb	r2, [ip, r6]	@ zero_extendqisi2	@,* i.1904
	add	r6, r6, #1	@ i.1904, i.1904,
	bl	dprint_vfmw	@
	ldr	r0, [r8, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #15	@ i.1904,
	movhi	r2, #0	@,
	movls	r2, #1	@,
	cmp	r0, r6	@ <variable>.LenInByte, i.1904
	movls	r2, #0	@,,
	cmp	r2, #0	@ tmp189,
	bne	.L292	@,
.L291:
	add	r6, sl, r4	@ tmp192, tmp269, StreamID
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC10	@,
	add	r7, r5, r6, asl #4	@, tmp195, pStreamSegArray, tmp192,
	add	r6, r7, #8	@ pSeg, tmp195,
	bl	dprint_vfmw	@
	b	.L293	@
.L312:
	movw	sl, #:lower16:92172	@ tmp274,
	movw	r8, #:lower16:954437177	@ tmp275,
	movt	sl, #:upper16:92172	@ tmp274,
	movt	r8, #:upper16:954437177	@ tmp275,
	movw	r4, #1151	@ tmp270,
	b	.L309	@
.L298:
	ldr	r0, [r5, sl]	@ temp.1907, <variable>.Tail
	add	r3, r7, #1	@ temp.1909, i,
	add	r1, r7, r7, asl #2	@, tmp239, i, i,
	cmp	r0, r7	@ temp.1907, i
	umull	ip, r2, r8, r3	@, tmp254, tmp275, temp.1909
	add	ip, r5, r1, asl #4	@, tmp243, pStreamSegArray, tmp239,
	beq	.L313	@,
	cmp	r7, r4	@ i, tmp270
	mov	r2, r2, lsr #8	@ i, tmp254,
	bhi	.L300	@,
	ldrsb	r0, [ip, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #0	@ <variable>.SegState,
	bne	.L314	@,
.L300:
	add	r0, r2, r2, asl #3	@, tmp258, i, i,
	sub	r7, r3, r0, asl #7	@ i, temp.1909, tmp258,
.L309:
	cmp	r7, r4	@ i, tmp270
	bls	.L298	@,
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC12	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L298	@
.L313:
	movw	r1, #:lower16:92196	@ tmp234,
	movt	r1, #:upper16:92196	@ tmp234,
	movw	r2, #:lower16:92168	@ tmp232,
	movw	r3, #:lower16:92192	@ tmp233,
	ldr	ip, [r5, r1]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:92168	@ tmp232,
	movt	r3, #:upper16:92192	@ tmp233,
	str	r7, [r5, r2]	@ i, <variable>.Head
	str	ip, [r5, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L297	@
.L314:
	add	r1, r1, #1	@ tmp252, tmp239,
	movw	r2, #:lower16:92168	@ tmp247,
	movt	r2, #:upper16:92168	@ tmp247,
	movw	r3, #:lower16:92192	@ tmp248,
	movt	r3, #:upper16:92192	@ tmp248,
	str	r7, [r5, r2]	@ i, <variable>.Head
	ldr	ip, [r5, r1, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r5, r3]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L297	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	ReleaseSegArrayPackets
	.type	ReleaseSegArrayPackets, %function
ReleaseSegArrayPackets:
	.fnstart
.LFB1689:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1152	@ StartNum,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mov	sl, r2	@ EndNum, EndNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	cmp	r1, r2	@ StartNum, EndNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r7, #:lower16:92204	@ tmp180,
	movw	r6, #:lower16:92208	@ tmp181,
	movw	r8, #:lower16:954437177	@ tmp182,
	movt	r7, #:upper16:92204	@ tmp180,
	movt	r6, #:upper16:92208	@ tmp181,
	movt	r8, #:upper16:954437177	@ tmp182,
	mov	r5, r1	@ i, StartNum
	mov	r9, #2	@ tmp179,
.L317:
	add	r2, r5, r5, asl #2	@, tmp143, i, i,
	mov	r1, r5	@, i
	add	r5, r5, #1	@ D.37595, i,
	mov	r0, r4	@, pStreamSegArray
	add	lr, r4, r2, asl #4	@, tmp159, pStreamSegArray, tmp143,
	ldr	r2, [lr, #20]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r9, [lr, #12]	@ tmp179, <variable>.SegState
	ldr	ip, [r4, r7]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	ldr	lr, [r4, r6]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	rsb	r3, r2, ip	@ D.37591, <variable>.LenInByte, <variable>.SegFreshSize
	str	r3, [r4, r7]	@ D.37591, <variable>.SegFreshSize
	sub	ip, lr, #1	@ D.37593, <variable>.SegFreshNum,
	str	ip, [r4, r6]	@ D.37593, <variable>.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r3, r2, r8, r5	@, tmp168, tmp182, D.37595
	mov	r1, r5, asr #31	@ tmp171, D.37595,
	rsb	r0, r1, r2, asr #8	@, i, tmp171, tmp168,
	add	r3, r0, r0, asl #3	@, tmp174, i, i,
	sub	r5, r5, r3, asl #7	@ i, D.37595, tmp174,
	cmp	sl, r5	@ EndNum, i
	bne	.L317	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	ReleaseSegArrayPackets, .-ReleaseSegArrayPackets
	.align	2
	.global	SM_SeekPtsInSegArray
	.type	SM_SeekPtsInSegArray, %function
SM_SeekPtsInSegArray:
	.fnstart
.LFB1690:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:92168	@ tmp150,
	.pad #28
	sub	sp, sp, #28	@,,
	movt	r6, #:upper16:92168	@ tmp150,
	movw	r8, #:lower16:92172	@ tmp153,
	movt	r8, #:upper16:92172	@ tmp153,
	ldr	r2, [r0, r6]	@ <variable>.Head, <variable>.Head
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	ldr	lr, [r0, r8]	@ prephitmp.1953, <variable>.Tail
	movw	r3, #:lower16:92176	@ tmp149,
	str	r1, [sp, #12]	@ pArgs, %sfp
	movt	r3, #:upper16:92176	@ tmp149,
	ldrd	r0, [r1]	@,
	movw	r7, #:lower16:954437177	@ tmp239,
	ldr	fp, [sp, #12]	@, %sfp
	movt	r7, #:upper16:954437177	@ tmp239,
	mov	r6, r2	@ i, <variable>.Head
	mov	r9, r3	@ tmp242, tmp149
	strd	r0, [sp]	@, %sfp
	ldrd	sl, [fp, #8]	@,,
	strd	sl, [sp, #16]	@,,
	str	r2, [r4, r3]	@ <variable>.Head, <variable>.History
.L334:
	add	r2, r6, r6, asl #2	@, tmp158, i, i,
	cmp	r6, lr	@ i, prephitmp.1953
	mov	r1, r6	@, i
	mov	r0, r4	@, pStreamSegArray
	add	r3, r4, r2, asl #4	@, tmp171, pStreamSegArray, tmp158,
	beq	.L336	@,
.L321:
	ldrsb	r2, [r3, #12]	@ <variable>.SegState, <variable>.SegState
	add	r5, r3, #40	@ tmp172, tmp171,
	cmp	r2, #1	@ <variable>.SegState,
	bne	.L323	@,
	ldrd	r2, [r3, #40]	@ D.37617, tmp171,
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.37617,
	cmpeq	r2, r0	@ D.37617,
	beq	.L337	@,
	ldrd	sl, [sp]	@, %sfp
	add	r1, r6, #1	@ temp.1966, i,
	cmp	fp, r3	@, D.37617
	cmpeq	sl, r2	@, D.37617
	mov	r3, r1, asr #31	@ tmp186, temp.1966,
	smull	fp, r2, r7, r1	@, tmp183, tmp239, temp.1966
	bls	.L326	@,
	str	r6, [r4, r9]	@ i, <variable>.History
	rsb	r6, r3, r2, asr #8	@, i, tmp186, tmp183,
	ldr	lr, [r4, r8]	@ prephitmp.1953, <variable>.Tail
	add	r0, r6, r6, asl #3	@, tmp189, i, i,
	sub	r6, r1, r0, asl #7	@ i, temp.1966, tmp189,
	mov	r0, r4	@, pStreamSegArray
	cmp	r6, lr	@ i, prephitmp.1953
	add	r2, r6, r6, asl #2	@, tmp158, i, i,
	mov	r1, r6	@, i
	add	r3, r4, r2, asl #4	@, tmp171, pStreamSegArray, tmp158,
	bne	.L321	@,
.L336:
	movw	ip, #:lower16:92168	@ tmp154,
	movt	ip, #:upper16:92168	@ tmp154,
	mov	r2, r6	@, i
	ldr	r1, [r4, ip]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	mvn	r0, #1	@ D.37627,
.L322:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L323:
	add	r6, r6, #1	@ temp.1975, i,
	bl	ReleaseStreamSeg	@
	ldr	lr, [r4, r8]	@ prephitmp.1953, <variable>.Tail
	smull	r0, r3, r7, r6	@, tmp226, tmp239, temp.1975
	mov	r1, r6, asr #31	@ tmp229, temp.1975,
	rsb	r0, r1, r3, asr #8	@, i, tmp229, tmp226,
	add	r2, r0, r0, asl #3	@, tmp232, i, i,
	sub	r6, r6, r2, asl #7	@ i, temp.1975, tmp232,
	b	.L334	@
.L326:
	beq	.L338	@,
	bcs	.L334	@,
	movw	r3, #:lower16:92176	@ tmp202,
	movt	r3, #:upper16:92176	@ tmp202,
	mov	r2, r6	@ i.629, i.629
	mvn	r9, #0	@,
	ldr	r1, [r4, r3]	@ i.1970, <variable>.History
	add	r7, r1, r1, asl #2	@, tmp206, i.1970, i.1970,
	add	r8, r4, r7, asl #4	@, tmp208, pStreamSegArray, tmp206,
	ldrd	r6, [r8, #40]	@ D.37631, tmp208,
	mvn	r8, #0	@ tmp173,
	cmp	r7, r9	@ D.37631, tmp173
	cmpeq	r6, r8	@ D.37631, tmp173
	beq	.L335	@,
	ldrd	r8, [sp]	@, %sfp
	cmp	r9, r7	@, D.37631
	cmpeq	r8, r6	@, D.37631
	bls	.L330	@,
	ldrd	sl, [sp, #16]	@,,
	subs	r6, r8, r6	@ tmp212,, D.37631
	sbc	r7, r9, r7	@ tmp212,, D.37631
	cmp	fp, r7	@, tmp212
	cmpeq	sl, r6	@, tmp212
	bcs	.L330	@,
.L335:
	str	r2, [r4, r3]	@ i.629, <variable>.History
.L329:
	movw	lr, #:lower16:92168	@ tmp214,
	movt	lr, #:upper16:92168	@ tmp214,
	mov	r0, r4	@, pStreamSegArray
	ldr	r1, [r4, lr]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	movw	ip, #:lower16:92176	@ tmp217,
	movt	ip, #:upper16:92176	@ tmp217,
	mov	r0, #0	@ D.37627,
	ldr	r3, [r4, ip]	@ <variable>.History, <variable>.History
	add	fp, r3, r3, asl #2	@, tmp221, <variable>.History, <variable>.History,
	add	r4, r4, fp, asl #4	@, tmp223, pStreamSegArray, tmp221,
	ldr	fp, [sp, #12]	@, %sfp
	ldrd	r2, [r4, #40]	@ <variable>.RawPts, tmp223,
	strd	r2, [fp]	@ <variable>.RawPts,
	b	.L322	@
.L337:
	add	r0, r6, #1	@ D.37620, i,
	smull	r1, r2, r7, r0	@, tmp174, tmp239, D.37620
	mov	ip, r0, asr #31	@ tmp177, D.37620,
	rsb	r3, ip, r2, asr #8	@, i, tmp177, tmp174,
	add	r1, r3, r3, asl #3	@, tmp180, i, i,
	sub	r6, r0, r1, asl #7	@ i, D.37620, tmp180,
	b	.L334	@
.L330:
	mov	r2, r1	@ i.629, i.1970
	b	.L329	@
.L338:
	movw	lr, #:lower16:92168	@ tmp192,
	movt	lr, #:upper16:92168	@ tmp192,
	mov	r0, r4	@, pStreamSegArray
	mov	r2, r6	@, i
	ldr	r1, [r4, lr]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	ldrd	r2, [r5]	@ <variable>.RawPts, <variable>.RawPts
	ldr	r1, [sp, #12]	@, %sfp
	mov	r0, #0	@ D.37627,
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L322	@
	.fnend
	.size	SM_SeekPtsInSegArray, .-SM_SeekPtsInSegArray
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #14	@ tmp139, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, r0, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L343	@,
	add	r2, r0, #73728	@, pSmInstArray,
	add	r0, r2, #72	@,,
	b	ReleaseStreamSeg	@
.L343:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r9, r1	@ DelNum, DelNum
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	beq	.L363	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp201,
	movt	r7, #:upper16:.LANCHOR0	@ tmp201,
	ldr	r3, [r7, #56]	@ D.38259, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38259,
	beq	.L347	@,
	add	r3, r3, #48	@ tmp156, D.38259,
	cmp	r0, r3	@ pRawStreamArray, tmp156
	beq	.L364	@,
.L347:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movw	r2, #373	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35225,
.L346:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L365:
	movw	r1, #:lower16:.LC13	@,
	mov	r3, r9	@, DelNum
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
.L363:
	mvn	r0, #0	@ D.35225,
	b	.L346	@
.L364:
	movw	r0, #:lower16:73732	@ tmp158,
	movt	r0, #:upper16:73732	@ tmp158,
	mov	r1, #73728	@ tmp157,
	ldr	r2, [r5, r0]	@ D.35232, <variable>.Tail
	ldr	r6, [r5, r1]	@ D.35231, <variable>.Head
	cmp	r6, r2	@ D.35231, D.35232
	addgt	r2, r2, #1024	@ tmp159, D.35232,
	rsb	r2, r6, r2	@ PacketNum, D.35231, tmp159
	cmp	r2, r9	@ PacketNum, DelNum
	bcc	.L365	@,
	add	r4, r6, r6, asl #3	@, tmp165, D.35231, D.35231,
	ldr	r2, .L366	@,
	add	r8, r4, #1	@ tmp172, tmp165,
	mov	r0, #26	@,
	ldr	r3, [r5, r4, asl #3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC14	@,
	ldr	sl, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	movt	r1, #:upper16:.LC14	@,
	movw	r4, #:lower16:73796	@ tmp208,
	movt	r4, #:upper16:73796	@ tmp208,
	sub	fp, r9, #1	@ tmp209, DelNum,
	str	sl, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	ip, [r7, #56]	@ D.35247, s_SmIIS.pSmInstArray
	add	r2, r6, #1	@ D.35251, D.35231,
	ldr	r3, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r9, #1	@ DelNum,
	mov	r6, r2, asl #22	@ j, D.35251,
	and	fp, fp, #1	@ tmp211, tmp209,
	ldr	r1, [ip, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	sl, #1	@ i,
	mov	r6, r6, lsr #22	@ j, j,
	rsb	r0, r3, r1	@ tmp183, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [ip, r4]	@ tmp183, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r7, #56]	@ temp.2033, s_SmIIS.pSmInstArray
	ldr	r2, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	ip, r2, r2, asr #31	@ tmp188, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r3, r4]	@ tmp188, <variable>.RawPacketArray.RawTotalSize
	bls	.L360	@,
	cmp	fp, #0	@ tmp211,
	beq	.L351	@,
	add	ip, r6, r6, asl #3	@, tmp252, j, j,
	movw	r1, #:lower16:.LC14	@,
	add	r8, ip, #1	@ tmp256, tmp252,
	mov	r0, #26	@,
	ldr	r3, [r5, ip, asl #3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC14	@,
	ldr	ip, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	mov	sl, #2	@ i,
	ldr	r2, .L366	@,
	b	.L362	@
.L351:
	add	r3, r6, r6, asl #3	@, tmp216, j, j,
	ldr	r2, .L366	@,
	add	r8, r3, #1	@ tmp220, tmp216,
	mov	r0, #26	@,
	ldr	r3, [r5, r3, asl #3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC14	@,
	ldr	ip, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	movt	r1, #:upper16:.LC14	@,
	add	sl, sl, #1	@ tmp212, i,
	add	sl, sl, #1	@ i, tmp212,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #56]	@ D.35247, s_SmIIS.pSmInstArray
	add	r1, r6, #1	@ D.35251, j,
	ldr	ip, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r0, #26	@,
	mov	r6, r1, asl #22	@ j, D.35251,
	ldr	r2, .L366	@,
	ldr	lr, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	movw	r1, #:lower16:.LC14	@,
	mov	r6, r6, lsr #22	@ j, j,
	movt	r1, #:upper16:.LC14	@,
	rsb	r8, ip, lr	@ tmp226, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r8, [r3, r4]	@ tmp226, <variable>.RawPacketArray.RawTotalSize
	ldr	ip, [r7, #56]	@ temp.2033, s_SmIIS.pSmInstArray
	add	r3, r6, r6, asl #3	@, tmp235, j, j,
	add	r8, r3, #1	@ tmp239, tmp235,
	ldr	lr, [ip, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	lr, lr, lr, asr #31	@ tmp229, <variable>.RawPacketArray.RawTotalSize
	str	lr, [ip, r4]	@ tmp229, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r5, r3, asl #3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	ip, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
.L362:
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #56]	@ D.35247, s_SmIIS.pSmInstArray
	add	r0, r6, #1	@ D.35251, j,
	ldr	r2, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r9, sl	@ DelNum, i
	mov	r6, r0, asl #22	@ j, D.35251,
	ldr	r1, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r6, lsr #22	@ j, j,
	rsb	ip, r2, r1	@ tmp262, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r3, r4]	@ tmp262, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r7, #56]	@ temp.2033, s_SmIIS.pSmInstArray
	ldr	r0, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r2, r0, r0, asr #31	@ tmp265, <variable>.RawPacketArray.RawTotalSize
	str	r2, [r3, r4]	@ tmp265, <variable>.RawPacketArray.RawTotalSize
	bhi	.L351	@,
.L360:
	mov	r0, #73728	@ tmp190,
	movw	lr, #:lower16:73740	@ tmp197,
	ldr	r1, [r5, r0]	@ <variable>.Head, <variable>.Head
	movt	lr, #:upper16:73740	@ tmp197,
	mov	r2, #0	@ tmp198,
	add	r9, r9, r1	@ D.35254, DelNum, <variable>.Head
	str	r2, [r5, lr]	@ tmp198, <variable>.FirstPacketOffset
	cmp	r9, #1024	@ D.35254,
	str	r9, [r5, r0]	@ D.35254, <variable>.Head
	subge	r9, r9, #1024	@ tmp196, D.35254,
	strge	r9, [r5, r0]	@ tmp196, <variable>.Head
	mov	r0, r2	@ D.35225, tmp198
	b	.L346	@
.L367:
	.align	2
.L366:
	.word	.LANCHOR1+20
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	rsbs	r6, r0, #1	@ tmp145, pRawStreamArray
	movcc	r6, #0	@ tmp145
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	orrs	r6, r6, r1, lsr #31	@, tmp149, tmp145, DelLen,
	bne	.L369	@,
	movw	r2, #:lower16:73748	@ tmp152,
	movw	r4, #:lower16:73740	@ tmp153,
	movt	r2, #:upper16:73748	@ tmp152,
	movt	r4, #:upper16:73740	@ tmp153,
	str	r6, [sp, #20]	@ tmp149, DelNum
	str	r6, [sp, #16]	@ tmp149, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L369	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L377	@,
.L369:
	mvn	r0, #0	@ Ret,
.L372:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L377:
	add	r2, sp, #20	@,,
	add	r3, sp, #16	@,,
	mov	r7, #73728	@ tmp159,
	add	lr, sp, #12	@ tmp158,,
	str	lr, [sp, #0]	@ tmp158,
	bl	GetRawNumOffset	@
	ldr	ip, [r5, r7]	@ <variable>.Head, <variable>.Head
	mov	r0, r5	@, pRawStreamArray
	ldr	r1, [sp, #20]	@ DelNum.471, DelNum
	add	r3, r1, ip	@ tmp160, DelNum.471, <variable>.Head
	mov	r2, r3, asr #31	@ tmp162, tmp160,
	mov	r2, r2, lsr #22	@ tmp163, tmp162,
	add	ip, r3, r2	@ tmp164, tmp160, tmp163
	mov	r3, ip, asl #22	@ tmp165, tmp164,
	mov	ip, r3, lsr #22	@ tmp165, tmp165,
	rsb	r3, r2, ip	@ tmp167, tmp163, tmp165
	str	r3, [sp, #12]	@ tmp167, Index
	bl	DeleteRawPacket	@
	movw	ip, #:lower16:73732	@ tmp169,
	movt	ip, #:upper16:73732	@ tmp169,
	ldr	r2, [r5, r7]	@ D.38277, <variable>.Head
	ldr	r1, [sp, #16]	@ RawPacketOffSet.476, RawPacketOffSet
	ldr	r3, [r5, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.38277, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L372	@,
	add	r2, r2, r2, asl #3	@, tmp175, D.38277, D.38277,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	ip, r2, #1	@ tmp176, tmp175,
	add	r1, r1, r0	@ TargetOffset, RawPacketOffSet.476, <variable>.FirstPacketOffset
	ldr	r3, [r5, ip, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r1, r3	@ TargetOffset, <variable>.Length
	strlt	r1, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp149
	blt	.L372	@,
	b	.L369	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ SmID, SmID
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r5, [r3, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L382	@,
	movw	r4, #:lower16:166016	@ tmp138,
	movt	r4, #:upper16:166016	@ tmp138,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r5, #48	@, pSmInstArray,
	bl	DeleteRawPacket	@
	str	r6, [r5, r4]	@ SmID, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L382:
	movw	r1, #:lower16:.LC16	@,
	movw	r2, #582	@,
	movt	r1, #:upper16:.LC16	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r0, #:lower16:269731844	@ tmp141,
	.pad #4
	sub	sp, sp, #4	@,,
	movt	r0, #:upper16:269731844	@,
	bl	MEM_ReadPhyWord	@
	mov	fp, r0	@ D.37985,
	movw	r0, #:lower16:269731848	@ tmp142,
	movt	r0, #:upper16:269731848	@,
	bl	MEM_ReadPhyWord	@
	mov	sl, r0	@ D.37987,
	movw	r0, #:lower16:269731852	@ tmp143,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.37989,
	movw	r0, #:lower16:269731856	@ tmp144,
	movt	r0, #:upper16:269731856	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.37991,
	movw	r0, #:lower16:269731860	@ tmp145,
	movt	r0, #:upper16:269731860	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.37993,
	movw	r0, #:lower16:269731864	@ tmp146,
	movt	r0, #:upper16:269731864	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.37995,
	movw	r0, #:lower16:269731872	@ tmp147,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	mov	r4, r0	@ D.37997,
	movw	r0, #:lower16:269731840	@ tmp148,
	movt	r0, #:upper16:269731840	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r9, r0	@ D.37998,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, fp	@, D.37985
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D.37987
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.37989
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.37991
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.37993
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.37995
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.37997
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	sxtb	r2, r9	@, D.37998
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC25	@,
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	dprint_vfmw	@
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	ReadScdStateReg
	.type	ReadScdStateReg, %function
ReadScdStateReg:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #:lower16:269731904	@ tmp141,
	movt	r0, #:upper16:269731904	@,
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:269731916	@ tmp153,
	movt	r5, #:upper16:269731916	@ tmp153,
	and	r2, r0, #1	@ tmp142,,
	mov	r0, r5	@, tmp153
	str	r2, [r4, #0]	@ tmp142, <variable>.Scdover
	bl	MEM_ReadPhyWord	@
	mov	r0, r0, lsr #22	@ tmp144,,
	str	r0, [r4, #8]	@ tmp144, <variable>.ShortScdNum
	mov	r0, r5	@, tmp153
	bl	MEM_ReadPhyWord	@
	bic	r1, r0, #-16777216	@ tmp147,,
	movw	r0, #:lower16:269731920	@ tmp148,
	bic	r3, r1, #12582912	@ tmp147, tmp147,
	movt	r0, #:upper16:269731920	@,
	str	r3, [r4, #12]	@ tmp147, <variable>.StartCodeNum
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, <variable>.ScdRollAddr
	movw	r0, #:lower16:269731924	@ tmp149,
	movt	r0, #:upper16:269731924	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, <variable>.SrcEaten
	movw	r0, #:lower16:269731852	@ tmp150,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #24]	@, <variable>.UpMsgLenInWord
	movw	r0, #:lower16:269731932	@ tmp151,
	movt	r0, #:upper16:269731932	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #28]	@, <variable>.seg_next_addr
	mov	r0, r4	@, pSmStateReg
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	PrintScdStateReg	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	SCDDRV_RecordStartState
	.type	SCDDRV_RecordStartState, %function
SCDDRV_RecordStartState:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r1, r2	@ RawStreamSize, FreeSegBufSize
	movw	ip, #:lower16:166104	@ tmp139,
	movw	lr, #:lower16:166108	@ tmp140,
	movt	ip, #:upper16:166104	@ tmp139,
	movt	lr, #:upper16:166108	@ tmp140,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r1, [r0, ip]	@ RawStreamSize, <variable>.PrevCfgRawSize
	mov	r1, #1	@ tmp137,
	str	r2, [r0, lr]	@ FreeSegBufSize, <variable>.PrevCfgSegSize
	movhi	lr, #0	@ tmp143,
	strb	r1, [r0, #4]	@ tmp137, <variable>.IsWaitSCD
	strlsb	r1, [r0, #2]	@ tmp137, <variable>.LastCfgAllRawFlag
	strhib	lr, [r0, #2]	@ tmp143, <variable>.LastCfgAllRawFlag
	mov	r0, #0	@ tmp145,
	strb	r0, [r4, #3]	@ tmp145, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:166128	@ tmp147,
	movt	r3, #:upper16:166128	@ tmp147,
	str	r0, [r4, r3]	@, <variable>.LastSCDStartTime
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SCDDRV_RecordStartState, .-SCDDRV_RecordStartState
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r1	@ FirstCalc, FirstCalc
	mov	r4, r0	@ pSmInstArray, pSmInstArray
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r2, r0	@ CurTimeInMS,
	bne	.L396	@,
	movw	r3, #:lower16:166088	@ tmp143,
	movt	r3, #:upper16:166088	@ tmp143,
	ldr	r1, [r4, r3]	@ D.36314, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTimeInMS, D.36314
	bhi	.L397	@,
	movw	lr, #:lower16:166084	@ tmp145,
	movt	lr, #:upper16:166084	@ tmp145,
	mov	r0, r5	@ prephitmp.2166, FirstCalc
	str	r2, [r4, r3]	@ CurTimeInMS, <variable>.LastBlockTime
	str	r5, [r4, lr]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L397:
	rsb	r2, r1, r0	@ D.36317, D.36314, CurTimeInMS
	movw	ip, #:lower16:166084	@ tmp144,
	movt	ip, #:upper16:166084	@ tmp144,
	mov	r0, r2	@ prephitmp.2166, D.36317
	str	r2, [r4, ip]	@ D.36317,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L396:
	movw	r1, #:lower16:166084	@ tmp140,
	movw	r3, #:lower16:166088	@ tmp142,
	movt	r1, #:upper16:166084	@ tmp140,
	movt	r3, #:upper16:166088	@ tmp142,
	mov	r0, #0	@ tmp141,
	str	r0, [r4, r1]	@ tmp141, <variable>.BlockTimeInMs
	str	r2, [r4, r3]	@ CurTimeInMS,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp229,
	movt	r4, #:upper16:.LANCHOR0	@ tmp229,
	mov	r5, r1	@ pSmCtrlReg, pSmCtrlReg
	add	r6, r0, #14	@ tmp228, inst_id,
	ldr	r1, [r1, #4]	@, <variable>.DownMsgPhyAddr
	ldr	ip, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, ip, #2048	@, s_RegPhyBaseAddr,
	add	r0, lr, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #12]	@, <variable>.UpMsgPhyAddr
	add	r3, r2, #2048	@, s_RegPhyBaseAddr,
	add	r0, r3, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #20]	@, <variable>.UpLen
	add	ip, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, ip, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #24]	@, <variable>.BufferFirst
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #28]	@, <variable>.BufferLast
	add	r0, r3, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #32]	@, <variable>.BufferIni
	add	r2, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r2, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r0, [r5, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	r3, [r5, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	ldr	r2, [r5, #44]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	and	r1, r3, #15	@ tmp169, <variable>.ScdProtocol,
	mov	ip, r0, asl #4	@ tmp175, <variable>.SliceCheckFlag,
	ldr	r0, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r3, ip, #16	@ tmp176, tmp175,
	orr	ip, r1, r2, asl #8	@, tmp173, tmp169, <variable>.ScdLowdlyEnable,
	orr	r1, ip, r3	@, tmp173, tmp176
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4, r6, asl #2]	@ D.36560, s_SmIIS.pSmInstArray
	movw	r1, #:lower16:166156	@ tmp180,
	movt	r1, #:upper16:166156	@ tmp180,
	ldr	r3, [r0, r1]	@ <variable>.first_start_scd_flag, <variable>.first_start_scd_flag
	cmp	r3, #1	@ <variable>.first_start_scd_flag,
	beq	.L405	@,
	movw	r3, #:lower16:166140	@ tmp190,
	movt	r3, #:upper16:166140	@ tmp190,
	movw	ip, #:lower16:50331651	@ tmp191,
	movt	ip, #:upper16:50331651	@ tmp191,
	ldr	r1, [r0, r3]	@ D.36571, <variable>.pre_scd_previous_byte_lsb
	cmp	r1, ip	@ D.36571, tmp191
	beq	.L406	@,
.L401:
	ldr	r3, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, r3, #2096	@, s_RegPhyBaseAddr,
	add	r0, lr, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r1, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r2, [r4, r6, asl #2]	@ tmp212, s_SmIIS.pSmInstArray
	movw	ip, #:lower16:166136	@ tmp213,
	movt	ip, #:upper16:166136	@ tmp213,
	add	r0, r1, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	ldrb	r1, [r2, ip]	@ zero_extendqisi2	@, <variable>.pre_scd_previous_byte_msb
	bl	MEM_WritePhyWord	@
.L400:
	ldr	r0, [r5, #44]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	cmp	r0, #0	@ <variable>.ScdLowdlyEnable,
	beq	.L402	@,
	ldr	r0, [r4, #84]	@, s_RegPhyBaseAddr
	ldr	r1, [r5, #48]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L402:
	bl	PrintScdVtrlReg	@
	ldr	r3, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r3, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.ScdStart, <variable>.ScdStart
	add	r0, ip, #2048	@, s_RegPhyBaseAddr,
	and	r1, r2, #1	@, <variable>.ScdStart,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MEM_WritePhyWord	@
.L406:
	movw	r2, #:lower16:166136	@ tmp192,
	movt	r2, #:upper16:166136	@ tmp192,
	ldrh	r7, [r0, r2]	@ <variable>.pre_scd_previous_byte_msb, <variable>.pre_scd_previous_byte_msb
	cmp	r7, #0	@ <variable>.pre_scd_previous_byte_msb,
	bne	.L401	@,
	ldr	r3, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #3	@,
	add	lr, r3, #2096	@, s_RegPhyBaseAddr,
	add	r0, lr, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r7	@, <variable>.pre_scd_previous_byte_msb
	add	r0, ip, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	b	.L400	@
.L405:
	ldr	lr, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mvn	r1, #0	@,
	add	r2, lr, #2096	@, s_RegPhyBaseAddr,
	add	r0, r2, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mvn	r1, #0	@,
	add	r0, r3, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	b	.L400	@
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
	.align	2
	.global	SCDDRV_EnableInt
	.type	SCDDRV_EnableInt, %function
SCDDRV_EnableInt:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #0	@,
	ldr	r2, [r3, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
	.fnend
	.size	SCDDRV_EnableInt, .-SCDDRV_EnableInt
	.align	2
	.global	SCDDRV_MaskInt
	.type	SCDDRV_MaskInt, %function
SCDDRV_MaskInt:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #1	@,
	ldr	r2, [r3, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
	.fnend
	.size	SCDDRV_MaskInt, .-SCDDRV_MaskInt
	.align	2
	.global	ResetSCD
	.type	ResetSCD, %function
ResetSCD:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r0, #:lower16:269731868	@,
	.pad #8
	sub	sp, sp, #8	@,,
	movt	r0, #:upper16:269731868	@,
	bl	MEM_ReadPhyWord	@
	movw	r4, #:lower16:g_pstRegCrg	@ tmp159,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp159,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp160,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #32	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.2286, g_pstRegCrg
	mov	r6, r0	@ D.35053,
	b	.L413	@
.L421:
	ldr	r2, [r1, #372]	@ D.35057, <variable>.PERI_CRG93.u32
	and	lr, r2, #2	@ tmp167, D.35057,
	str	r2, [sp, #4]	@ D.35057, u32TmpValue_93.u32
	uxtb	r0, lr	@ tmp168, tmp167
	cmp	r0, #0	@ tmp168,
	bne	.L412	@,
	cmp	r3, ip	@ i, tmp160
	beq	.L420	@,
.L413:
	ldr	r0, [r1, #372]	@ D.35057, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp161, i,
	add	r3, r3, #1	@ i, tmp161,
	tst	r0, #2	@ D.35057,
	str	r0, [sp, #4]	@ D.35057, u32TmpValue_93.u32
	beq	.L421	@,
.L412:
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	bfc	r5, #5, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r0, [r3, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r6, #1	@, D.35053,
	add	ip, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, ip, #12	@,,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, lr}
	b	MEM_WritePhyWord	@
.L420:
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.2286, g_pstRegCrg
	b	.L412	@
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	RecordPOS
	.type	RecordPOS, %function
RecordPOS:
	.fnstart
.LFB1696:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@, VfmwStateType
	mov	r4, r2	@ LastRecPosTimeInMs, LastRecPosTimeInMs
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp142,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp142,
	ldr	r1, [r4, #0]	@ tmp141,* LastRecPosTimeInMs
	ldr	r3, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r2, r1, r0	@ tmp140, tmp141, CurTimeInMs
	cmp	r2, r3	@ tmp140, g_TraceBsPeriod
	strhi	r0, [r4, #0]	@ CurTimeInMs,* LastRecPosTimeInMs
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	RecordPOS, .-RecordPOS
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1688:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r1	@ pRawPacket, pRawPacket
	mov	r6, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	add	r5, sp, #4	@ tmp138,,
	mov	r1, #12	@,
	mov	r4, r0	@ pStreamIntf,
	mov	r0, r5	@, tmp138
	bl	__memzero	@
	cmp	r4, #0	@ pStreamIntf,
	beq	.L435	@,
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	addeq	r8, r6, #14	@ tmp159, InstID,
	movweq	r5, #:lower16:.LANCHOR0	@ tmp158,
	movteq	r5, #:upper16:.LANCHOR0	@ tmp158,
	beq	.L428	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp158,
	add	r8, r6, #14	@ tmp159, InstID,
	movt	r5, #:upper16:.LANCHOR0	@ tmp158,
	ldr	r1, [r5, r8, asl #2]	@ tmp145, s_SmIIS.pSmInstArray
	ldr	r0, [r1, #44]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	r0, #0	@ <variable>.Config.ScdLowBufEnable,
	bne	.L436	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r4, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r4	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
.L430:
	cmp	r4, #0	@ ret,
	beq	.L431	@,
.L428:
	mvn	r4, #6	@ ret,
.L431:
	ldr	r0, [r5, r8, asl #2]	@ tmp155, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp155,
	beq	.L437	@,
.L427:
	mov	r0, r4	@, ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L436:
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	ldr	r2, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	r2	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L430	@
.L435:
	mov	r0, r4	@, pStreamIntf
	mov	r2, r6	@, InstID
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r4, #6	@ ret,
	b	.L427	@
.L437:
	mov	r3, r6	@, InstID
	movw	r1, #:lower16:.LC28	@,
	movw	r2, #3032	@,
	movt	r1, #:upper16:.LC28	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L427	@
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #0	@ SmID, SmID
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L458	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp148,
	movt	r3, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r4, [r3, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L441	@,
	cmp	r1, #0	@ ResetFlag,
	bne	.L442	@,
	movw	r1, #:lower16:166072	@ tmp149,
	movt	r1, #:upper16:166072	@ tmp149,
	ldr	r0, [r4, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	bne	.L442	@,
.L441:
	mvn	r0, #0	@ D.35277,
.L440:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L458:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35277,
	b	.L440	@
.L442:
	movw	r2, #:lower16:73776	@ tmp151,
	movw	ip, #:lower16:73784	@ tmp152,
	movt	r2, #:upper16:73776	@ tmp151,
	movt	ip, #:upper16:73784	@ tmp152,
	ldr	r8, [r4, r2]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r5, [r4, ip]	@ D.35289, <variable>.RawPacketArray.History
	cmp	r8, r5	@ RawHead, D.35289
	addlt	r8, r8, #1024	@ tmp153, RawHead,
	rsb	r8, r5, r8	@ DelNum, D.35289, tmp153
	cmp	r8, #0	@ DelNum,
	beq	.L441	@,
	add	r7, r5, r5, asl #3	@, tmp159, D.35289, D.35289,
	ldr	r2, .L459	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC30	@,
	mov	r7, r7, asl #3	@ tmp160, tmp159,
	movt	r1, #:upper16:.LC30	@,
	add	ip, r7, r4	@ tmp161, tmp160, pSmInstArray
	mov	r6, #1	@ i,
	sub	sl, r8, #1	@ tmp194, DelNum,
	ldr	lr, [ip, #56]	@ <variable>.Length, <variable>.Length
	and	sl, sl, #1	@ tmp196, tmp194,
	ldr	r3, [ip, #48]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	add	r1, r7, #48	@ tmp176, tmp160,
	mov	r0, #0	@,
	add	r1, r4, r1	@, pSmInstArray, tmp176
	bl	ReleaseRawStreamData	@
	add	r3, r5, r6	@ D.35303, D.35289,
	cmp	r6, r8	@ i, DelNum
	mov	r5, r3, asl #22	@ j, D.35303,
	mov	r5, r5, lsr #22	@ j, j,
	bcs	.L454	@,
	cmp	sl, #0	@ tmp196,
	beq	.L445	@,
	add	r7, r5, r5, asl #3	@, tmp227, j, j,
	movw	r1, #:lower16:.LC30	@,
	ldr	r2, .L459	@,
	mov	r0, #26	@,
	mov	r7, r7, asl #3	@ tmp228, tmp227,
	movt	r1, #:upper16:.LC30	@,
	add	ip, r7, r4	@ tmp229, tmp228, pSmInstArray
	mov	r6, #2	@ i,
	b	.L456	@
.L445:
	add	r3, r5, r5, asl #3	@, tmp201, j, j,
	ldr	r2, .L459	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC30	@,
	mov	r7, r3, asl #3	@ tmp202, tmp201,
	movt	r1, #:upper16:.LC30	@,
	add	ip, r7, r4	@ tmp203, tmp202, pSmInstArray
	add	r6, r6, #1	@ tmp197, i,
	add	r6, r6, #1	@ i, tmp197,
	ldr	lr, [ip, #56]	@ <variable>.Length, <variable>.Length
	ldr	r3, [ip, #48]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	add	r2, r7, #48	@ tmp208, tmp202,
	mov	r0, #0	@,
	add	r1, r4, r2	@, pSmInstArray, tmp208
	bl	ReleaseRawStreamData	@
	add	r1, r5, #1	@ D.35303, j,
	ldr	r2, .L459	@,
	mov	r0, #26	@,
	mov	r5, r1, asl #22	@ j, D.35303,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r5, r5, lsr #22	@ j, j,
	add	r3, r5, r5, asl #3	@, tmp215, j, j,
	mov	r7, r3, asl #3	@ tmp216, tmp215,
	add	ip, r7, r4	@ tmp217, tmp216, pSmInstArray
.L456:
	ldr	lr, [ip, #56]	@ <variable>.Length, <variable>.Length
	ldr	r3, [ip, #48]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	lr, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	add	ip, r7, #48	@ tmp234, tmp228,
	mov	r0, #0	@,
	add	r1, r4, ip	@, pSmInstArray, tmp234
	bl	ReleaseRawStreamData	@
	add	r2, r5, #1	@ D.35303, j,
	cmp	r6, r8	@ i, DelNum
	mov	r5, r2, asl #22	@ j, D.35303,
	mov	r5, r5, lsr #22	@ j, j,
	bcc	.L445	@,
.L454:
	movw	r0, #:lower16:73784	@ tmp179,
	movt	r0, #:upper16:73784	@ tmp179,
	ldr	r1, [r4, r0]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r8, r8, r1	@ D.35305, DelNum, <variable>.RawPacketArray.History
	str	r8, [r4, r0]	@ D.35305, <variable>.RawPacketArray.History
	cmp	r8, #1024	@ D.35305,
	subge	r8, r8, #1024	@ tmp185, D.35305,
	strge	r8, [r4, r0]	@ tmp185, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.35277,
	b	.L440	@
.L460:
	.align	2
.L459:
	.word	.LANCHOR1+36
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	SM_SeekPtsInRawArray
	.type	SM_SeekPtsInRawArray, %function
SM_SeekPtsInRawArray:
	.fnstart
.LFB1691:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	cmp	r3, #1	@ NormalStartSCD,
	str	r2, [sp, #8]	@ ChanID, %sfp
	movw	r2, #:lower16:.LANCHOR0	@ tmp160,
	str	r3, [sp, #12]	@ NormalStartSCD, %sfp
	movt	r2, #:upper16:.LANCHOR0	@ tmp160,
	ldr	r3, [sp, #8]	@, %sfp
	str	r1, [sp, #4]	@ pArgs, %sfp
	add	r4, r3, #14	@ tmp161,,
	mov	r3, r0	@ pRawPacketArray, pRawPacketArray
	ldr	ip, [r2, r4, asl #2]	@, s_SmIIS.pSmInstArray
	str	ip, [sp, #16]	@, %sfp
	movne	ip, #0	@,
	ldrd	r4, [r1, #8]	@, tmp5,
	ldrd	r8, [r1]	@ pts,* pArgs
	strne	ip, [sp, #20]	@, %sfp
	strd	r4, [sp, #24]	@,,
	beq	.L485	@,
.L463:
	mov	fp, #73728	@ tmp166,
	movw	sl, #:lower16:73732	@ tmp169,
	movt	sl, #:upper16:73732	@ tmp169,
	ldr	r0, [r3, fp]	@ <variable>.Head, <variable>.Head
	movw	r1, #:lower16:73736	@ tmp165,
	movt	r1, #:upper16:73736	@ tmp165,
	ldr	lr, [r3, sl]	@ prephitmp.2402, <variable>.Tail
	mvn	r6, #0	@ tmp259,
	mvn	r7, #0	@,
	mov	r2, r0	@ i, <variable>.Head
	mov	fp, r1	@ tmp260, tmp165
	str	r0, [r3, r1]	@ <variable>.Head, <variable>.History
.L482:
	mov	ip, r2, asl #3	@ tmp258, i,
	add	r1, r2, #1	@ temp.2416, i,
	add	r4, ip, r2	@ tmp176, tmp258, i
	cmp	r2, lr	@ i, prephitmp.2402
	mov	r0, r1, asr #31	@ tmp188, temp.2416,
	add	r4, r3, r4, asl #3	@, tmp178, pRawPacketArray, tmp176,
	beq	.L486	@,
.L464:
	mov	r0, r0, lsr #22	@ tmp189, tmp188,
	ldrd	r4, [r4, #16]	@ temp.2423, tmp178,
	add	r1, r1, r0	@ tmp190, temp.2416, tmp189
	cmp	r5, r7	@ temp.2423, tmp259
	cmpeq	r4, r6	@ temp.2423, tmp259
	mov	r1, r1, asl #22	@ tmp191, tmp190,
	mov	r1, r1, lsr #22	@ tmp191, tmp191,
	beq	.L487	@,
	cmp	r9, r5	@ pts, temp.2423
	cmpeq	r8, r4	@ pts, temp.2423
	bls	.L470	@,
	str	r2, [r3, fp]	@ i, <variable>.History
	rsb	r2, r0, r1	@ i, tmp189, tmp191
	ldr	lr, [r3, sl]	@ prephitmp.2402, <variable>.Tail
	add	r1, r2, #1	@ temp.2416, i,
	mov	ip, r2, asl #3	@ tmp258, i,
	add	r4, ip, r2	@ tmp176, tmp258, i
	cmp	r2, lr	@ i, prephitmp.2402
	mov	r0, r1, asr #31	@ tmp188, temp.2416,
	add	r4, r3, r4, asl #3	@, tmp178, pRawPacketArray, tmp176,
	bne	.L464	@,
.L486:
	mov	r1, #73728	@ tmp170,
	movw	ip, #:lower16:73736	@ tmp172,
	ldr	lr, [r3, r1]	@ temp.2415, <variable>.Head
	movt	ip, #:upper16:73736	@ tmp172,
	mov	r0, r3	@, pRawPacketArray
	cmp	r2, lr	@ i, temp.2415
	rsblt	r1, lr, #1024	@ tmp171, temp.2415,
	rsbge	r1, lr, r2	@ DelNum.2413, temp.2415, i
	addlt	r1, r1, r2	@ DelNum.2413, tmp171, i
	str	lr, [r3, ip]	@ temp.2415, <variable>.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mvn	r0, #1	@ D.37696,
.L467:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L487:
	add	r2, r2, #1	@ D.37677, i,
	mov	r1, r2, asr #31	@ tmp181, D.37677,
	mov	r0, r1, lsr #22	@ tmp182, tmp181,
	add	ip, r2, r0	@ tmp183, D.37677, tmp182
	mov	r4, ip, asl #22	@ tmp184, tmp183,
	mov	r2, r4, lsr #22	@ tmp184, tmp184,
	rsb	r2, r0, r2	@ i, tmp182, tmp184
	b	.L482	@
.L470:
	beq	.L488	@,
	movw	r1, #:lower16:73736	@ tmp218,
	movt	r1, #:upper16:73736	@ tmp218,
	mvn	r5, #0	@,
	ldr	r0, [r3, r1]	@ i.2421, <variable>.History
	add	r6, r0, r0, asl #3	@, tmp222, i.2421, i.2421,
	add	r4, r3, r6, asl #3	@, tmp224, pRawPacketArray, tmp222,
	ldrd	r6, [r4, #16]	@ D.37698, tmp224,
	mvn	r4, #0	@ tmp180,
	cmp	r7, r5	@ D.37698, tmp180
	cmpeq	r6, r4	@ D.37698, tmp180
	beq	.L483	@,
	cmp	r9, r7	@ pts, D.37698
	cmpeq	r8, r6	@ pts, D.37698
	bhi	.L489	@,
.L477:
	mov	r2, r0	@ i, i.2421
.L476:
	mov	r1, #73728	@ tmp230,
	ldr	r5, [sp, #12]	@, %sfp
	ldr	r1, [r3, r1]	@ temp.2422, <variable>.Head
	cmp	r2, r1	@ i, temp.2422
	rsblt	r1, r1, #1024	@ tmp231, temp.2422,
	rsbge	r1, r1, r2	@ DelNum, temp.2422, i
	addlt	r1, r1, r2	@ DelNum, tmp231, i
	cmp	r5, #1	@,
	beq	.L490	@,
.L480:
	add	r5, r2, r2, asl #3	@, tmp247, i, i,
	ldr	lr, [sp, #4]	@, %sfp
	movw	ip, #:lower16:73736	@ tmp252,
	movt	ip, #:upper16:73736	@ tmp252,
	add	r2, r3, r5, asl #3	@, tmp249, pRawPacketArray, tmp247,
	mov	r0, r3	@, pRawPacketArray
	ldrd	r4, [r2, #16]	@ <variable>.Pts, tmp249,
	mov	r2, #73728	@ tmp253,
	strd	r4, [lr]	@ <variable>.Pts,
	ldr	lr, [r3, r2]	@ <variable>.Head, <variable>.Head
	str	lr, [r3, ip]	@ <variable>.Head, <variable>.History
.L484:
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.37696,
	b	.L467	@
.L485:
	ldr	r7, [sp, #16]	@, %sfp
	movw	r6, #:lower16:166024	@ tmp162,
	movt	r6, #:upper16:166024	@ tmp162,
	ldr	lr, [r7, r6]	@, <variable>.SmPushRaw.PushRawOverState
	cmp	lr, #1	@,
	str	lr, [sp, #20]	@, %sfp
	ldreq	r0, [sp, #16]	@, %sfp
	moveq	r1, #3	@ tmp164,
	streq	r1, [r0, r6]	@ tmp164, <variable>.SmPushRaw.PushRawOverState
	b	.L463	@
.L489:
	ldrd	r4, [sp, #24]	@,,
	subs	r6, r8, r6	@ tmp228, pts, D.37698
	sbc	r7, r9, r7	@ tmp228, pts, D.37698
	cmp	r5, r7	@, tmp228
	cmpeq	r4, r6	@, tmp228
	bcs	.L477	@,
.L483:
	str	r2, [r3, r1]	@ i, <variable>.History
	b	.L476	@
.L488:
	mov	r0, #73728	@ tmp195,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r1, [r3, r0]	@ temp.2417, <variable>.Head
	cmp	r1, r2	@ temp.2417, i
	rsbgt	r1, r1, #1024	@ tmp196, temp.2417,
	rsble	r1, r1, r2	@ DelNum.2414, temp.2417, i
	addgt	r1, r1, r2	@ DelNum.2414, tmp196, i
	cmp	lr, #1	@,
	beq	.L491	@,
.L474:
	ldr	r2, [sp, #4]	@, %sfp
	mov	r0, #73728	@ tmp216,
	movw	lr, #:lower16:73736	@ tmp215,
	movt	lr, #:upper16:73736	@ tmp215,
	strd	r4, [r2]	@ temp.2423,
	ldr	ip, [r3, r0]	@ <variable>.Head, <variable>.Head
	mov	r0, r3	@, pRawPacketArray
	str	ip, [r3, lr]	@ <variable>.Head, <variable>.History
	b	.L484	@
.L490:
	ldr	ip, [sp, #16]	@, %sfp
	movw	r4, #:lower16:166016	@ tmp232,
	movt	r4, #:upper16:166016	@ tmp232,
	ldr	lr, [sp, #20]	@, %sfp
	ldr	r0, [ip, r4]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, r0	@ DelNum, <variable>.SmPushRaw.PushRawNum
	cmple	lr, #1	@,,
	bne	.L480	@,
	movw	r0, #:lower16:166024	@ tmp241,
	movw	r2, #:lower16:73736	@ tmp243,
	movt	r0, #:upper16:166024	@ tmp241,
	movt	r2, #:upper16:73736	@ tmp243,
	str	r5, [ip, r0]	@, <variable>.SmPushRaw.PushRawOverState
	ldr	r2, [r3, r2]	@ i, <variable>.History
	b	.L480	@
.L491:
	ldr	lr, [sp, #16]	@, %sfp
	movw	r0, #:lower16:166016	@ tmp197,
	movt	r0, #:upper16:166016	@ tmp197,
	ldr	r0, [lr, r0]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	ldr	lr, [sp, #20]	@, %sfp
	cmp	r1, r0	@ DelNum.2414, <variable>.SmPushRaw.PushRawNum
	cmple	lr, #1	@,,
	bne	.L474	@,
	add	r2, ip, r2	@ tmp211, tmp258, i
	ldr	r4, [sp, #12]	@, %sfp
	ldr	r5, [sp, #16]	@, %sfp
	movw	r0, #:lower16:166024	@ tmp206,
	add	ip, r3, r2, asl #3	@, tmp213, pRawPacketArray, tmp211,
	movt	r0, #:upper16:166024	@ tmp206,
	str	r4, [r5, r0]	@, <variable>.SmPushRaw.PushRawOverState
	ldrd	r4, [ip, #16]	@ temp.2423, tmp213,
	b	.L474	@
	.fnend
	.size	SM_SeekPtsInRawArray, .-SM_SeekPtsInRawArray
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1687:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	add	r8, r0, #14	@ tmp161, InstID,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	r5, #:lower16:.LANCHOR0	@ tmp160,
	movt	r5, #:upper16:.LANCHOR0	@ tmp160,
	add	r4, sp, #4	@ tmp141,,
	mov	r7, r0	@ InstID, InstID
	mov	sl, r1	@ pRawPacket, pRawPacket
	ldr	r6, [r5, r8, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r4	@, tmp141
	mov	r1, #12	@,
	bl	__memzero	@
	cmp	r6, #0	@ pSmInstArray,
	mvneq	r4, #6	@ ret,
	beq	.L494	@,
	mov	r0, r7	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L500	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r4, {r0, r1, r2}	@ tmp141,,,
	ldr	r3, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r3, #0	@ <variable>.read_stream,
	beq	.L496	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, sl	@, pRawPacket
	ldmib	sp, {r0, r2}	@ phole ldm
	blx	r2	@ StreamIntf.read_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #0	@ ret,
	bne	.L496	@,
.L497:
	ldr	r0, [r5, r8, asl #2]	@ tmp152, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp152,
	beq	.L501	@,
	cmp	r4, #0	@ ret,
	bne	.L494	@,
	movw	ip, #:lower16:73796	@ tmp154,
	movt	ip, #:upper16:73796	@ tmp154,
	ldr	r1, [sl, #8]	@ <variable>.Length, <variable>.Length
	ldr	lr, [r6, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	r0, r1, lr	@ tmp158, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [r6, ip]	@ tmp158, <variable>.RawPacketArray.RawTotalSize
.L494:
	mov	r0, r4	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L496:
	mvn	r4, #6	@ ret,
	b	.L497	@
.L500:
	mov	r2, r7	@, InstID
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L494	@
.L501:
	mov	r3, r7	@, InstID
	movw	r1, #:lower16:.LC28	@,
	movw	r2, #2984	@,
	movt	r1, #:upper16:.LC28	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L494	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r0, [r2, #56]	@ D.38293, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ D.38293,
	beq	.L503	@,
	movw	r1, #:lower16:166072	@ tmp137,
	movt	r1, #:upper16:166072	@ tmp137,
	ldr	r3, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	bne	.L509	@,
.L503:
	bl	ResetSCD	@
	mov	r1, #80	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L509:
	mov	r3, #0	@ tmp140,
	str	r3, [r0, r1]	@ tmp140, <variable>.Mode
	ldr	r2, [r2, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, r3	@ s_SmIIS.SCDState,
	beq	.L503	@,
.L504:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	beq	.L503	@,
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L504	@,
	b	.L503	@
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	ResetLastUnfinishedSegInfo
	.type	ResetLastUnfinishedSegInfo, %function
ResetLastUnfinishedSegInfo:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	movw	r1, #:lower16:166156	@ tmp166,
	movw	r8, #:lower16:166140	@ tmp158,
	movt	r1, #:upper16:166156	@ tmp166,
	movt	r8, #:upper16:166140	@ tmp158,
	movw	r7, #:lower16:166136	@ tmp159,
	movw	r6, #:lower16:166148	@ tmp160,
	movt	r7, #:upper16:166136	@ tmp159,
	movt	r6, #:upper16:166148	@ tmp160,
	movw	sl, #:lower16:166144	@ tmp161,
	movw	r5, #:lower16:166160	@ tmp162,
	movt	sl, #:upper16:166144	@ tmp161,
	movt	r5, #:upper16:166160	@ tmp162,
	movw	r4, #:lower16:166164	@ tmp163,
	movw	r9, #:lower16:166168	@ tmp164,
	movt	r4, #:upper16:166164	@ tmp163,
	movt	r9, #:upper16:166168	@ tmp164,
	movw	fp, #:lower16:166172	@ tmp165,
	movw	ip, #:lower16:166152	@ tmp167,
	movt	fp, #:upper16:166172	@ tmp165,
	movt	ip, #:upper16:166152	@ tmp167,
	mov	r3, r0	@ pScdInstance, pScdInstance
	add	r0, r0, #165888	@, pScdInstance,
	mov	r2, #0	@ tmp145,
	add	r0, r0, #288	@,,
	str	r2, [r3, ip]	@ tmp145, <variable>.seg_next_addr
	str	r2, [r3, r5]	@ tmp145, <variable>.last_start_code_addr
	mvn	ip, #0	@ tmp135,
	str	r2, [r3, r4]	@ tmp145, <variable>.last_unfinished_seg_size
	strh	ip, [r3, sl]	@ movhi	@ tmp135, <variable>.scd_previous_byte_msb
	mov	sl, #1	@ tmp153,
	str	ip, [r3, r8]	@ tmp135, <variable>.pre_scd_previous_byte_lsb
	str	sl, [r3, r1]	@ tmp153, <variable>.first_start_scd_flag
	mov	r1, #80	@,
	strh	ip, [r3, r7]	@ movhi	@ tmp135, <variable>.pre_scd_previous_byte_msb
	str	ip, [r3, r6]	@ tmp135, <variable>.scd_previous_byte_lsb
	str	r2, [r3, r9]	@ tmp145, <variable>.roll_flag
	str	r2, [r3, fp]	@ tmp145, <variable>.roll_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	b	__memzero	@
	.fnend
	.size	ResetLastUnfinishedSegInfo, .-ResetLastUnfinishedSegInfo
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r0, #0	@ SmID, SmID
	mvnne	r0, #0	@ D.35856,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp136,
	movt	r4, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:174448	@,
	movt	r1, #:upper16:174448	@,
	ldr	r0, [r4, #56]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r0, [r4, #56]	@, s_SmIIS.pSmInstArray
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r2, [r4, #56]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:166096	@ tmp143,
	movt	r3, #:upper16:166096	@ tmp143,
	mov	r0, r5	@ D.35856, SmID
	mvn	r4, #0	@ tmp144,
	mvn	r5, #0	@,
	strd	r4, [r2, r3]	@ tmp144, s_SmIIS.pSmInstArray, tmp143
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	r0, r4, #8	@, pStreamSegArray,
	mov	r1, #92160	@,
	bl	__memzero	@
	movw	r0, #:lower16:92184	@ tmp142,
	movt	r0, #:upper16:92184	@ tmp142,
	movw	r1, #:lower16:92168	@ tmp135,
	movw	r3, #:lower16:92172	@ tmp137,
	movt	r1, #:upper16:92168	@ tmp135,
	ldr	r5, [r4, r0]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	movt	r3, #:upper16:92172	@ tmp137,
	movw	r0, #:lower16:92176	@ tmp139,
	movw	r2, #:lower16:92192	@ tmp141,
	movt	r0, #:upper16:92176	@ tmp139,
	movt	r2, #:upper16:92192	@ tmp141,
	movw	ip, #:lower16:92196	@ tmp144,
	movt	ip, #:upper16:92196	@ tmp144,
	str	r5, [r4, r2]	@ <variable>.SegBufPhyAddr, <variable>.SegBufReadAddr
	mov	r2, #0	@ tmp136,
	str	r5, [r4, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufWriteAddr
	str	r2, [r4, r0]	@ tmp136, <variable>.History
	str	r2, [r4, r1]	@ tmp136, <variable>.Head
	str	r2, [r4, r3]	@ tmp136, <variable>.Tail
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ResetStreamSegArray, .-ResetStreamSegArray
	.align	2
	.global	ConfigStreamSegArray
	.type	ConfigStreamSegArray, %function
ConfigStreamSegArray:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, BufPhyAddr,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ BufPhyAddr, BufPhyAddr
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	bne	.L523	@,
.L520:
	mvn	r0, #0	@ D.35435,
.L521:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L523:
	rsbs	r6, r2, #1	@ tmp150, pBufVirAddr
	movcc	r6, #0	@ tmp150
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp153, tmp150
	cmp	r6, #0	@ tmp153,
	bne	.L520	@,
	movw	r1, #:lower16:92216	@,
	movt	r1, #:upper16:92216	@,
	str	r2, [sp, #4]	@,
	movw	r7, #:lower16:92184	@ tmp155,
	str	r3, [sp, #0]	@,
	movt	r7, #:upper16:92184	@ tmp155,
	bl	__memzero	@
	movw	r0, #:lower16:92196	@ tmp157,
	movt	r0, #:upper16:92196	@ tmp157,
	str	r4, [r5, r7]	@ BufPhyAddr, <variable>.SegBufPhyAddr
	movw	ip, #:lower16:92188	@ tmp158,
	movt	ip, #:upper16:92188	@ tmp158,
	str	r4, [r5, r0]	@ BufPhyAddr, <variable>.SegBufWriteAddr
	movw	r1, #:lower16:92192	@ tmp156,
	ldr	r3, [sp, #0]	@,
	movt	r1, #:upper16:92192	@ tmp156,
	mov	r0, r6	@ D.35435, tmp153
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [sp, #4]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L521	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	bxeq	lr	@
	movw	r1, #:lower16:73752	@,
	movt	r1, #:upper16:73752	@,
	b	__memzero	@
	.fnend
	.size	ResetRawStreamArray, .-ResetRawStreamArray
	.align	2
	.global	SCDDRV_SaveRawStream
	.type	SCDDRV_SaveRawStream, %function
SCDDRV_SaveRawStream:
	.fnstart
.LFB1685:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:save_str_chan_num	@ tmp138,
	movt	ip, #:upper16:save_str_chan_num	@ tmp138,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [ip, #0]	@ save_str_chan_num, save_str_chan_num
	mov	r6, r1	@ pSmInstArray, pSmInstArray
	mov	r5, r2	@ pRawPacket, pRawPacket
	cmp	r0, r3	@ InstID, save_str_chan_num
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r4, #:lower16:vfmw_save_str_file	@ tmp153,
	movt	r4, #:upper16:vfmw_save_str_file	@ tmp153,
	ldr	r0, [r4, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r7, [r1, #16]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, r6, #32	@, pSmInstArray,
	mov	r0, r7	@, eStd
	bl	SCDDRV_IsSCDByPass	@
	cmp	r0, #0	@,
	bne	.L531	@,
.L529:
	ldr	r1, [r5, #8]	@, <variable>.Length
	ldr	r2, [r4, #0]	@, vfmw_save_str_file
	ldr	r0, [r5, #4]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_SpinLockIRQ	@
.L531:
	ldr	r0, [r5, #8]	@, <variable>.Length
	mov	r1, #4	@,
	ldr	r2, [r4, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L529	@
	.fnend
	.size	SCDDRV_SaveRawStream, .-SCDDRV_SaveRawStream
	.align	2
	.global	SCDDRV_SaveSegStream
	.type	SCDDRV_SaveSegStream, %function
SCDDRV_SaveSegStream:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:vfmw_save_seg_file	@ tmp135,
	movt	r5, #:upper16:vfmw_save_seg_file	@ tmp135,
	mov	r4, r1	@ pStreamSeg, pStreamSeg
	ldr	r3, [r5, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r2, #:lower16:save_seg_chan_num	@ tmp137,
	movt	r2, #:upper16:save_seg_chan_num	@ tmp137,
	ldr	r1, [r2, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r0, r1	@ SmID, save_seg_chan_num
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, [r4, #12]	@, <variable>.LenInByte
	ldr	r2, [r5, #0]	@, vfmw_save_seg_file
	ldr	r0, [r4, #0]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinLockIRQ	@
	.fnend
	.size	SCDDRV_SaveSegStream, .-SCDDRV_SaveSegStream
	.align	2
	.global	GetMeg4ModeFlag
	.type	GetMeg4ModeFlag, %function
GetMeg4ModeFlag:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r2, #:lower16:166132	@ tmp145,
	movw	r3, #:lower16:166048	@ tmp146,
	movt	r2, #:upper16:166132	@ tmp145,
	movt	r3, #:upper16:166048	@ tmp146,
	subs	fp, r1, #0	@ ValidSegNum, ValidSegNum
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r0	@ pScdInstance, pScdInstance
	ldr	sl, [r0, r2]	@ UpMsgStepInWord, <variable>.UpMsgStepInWord
	ldr	r7, [r0, r3]	@ pScdUpMsg, <variable>.BufAddrCfg.pUpMsgVirAddr
	beq	.L542	@,
	sub	r8, fp, #1	@ tmp195, ValidSegNum,
	ldr	r0, [r7, #0]	@,* pScdUpMsg
	and	r6, r8, #1	@, tmp195,
	str	r6, [sp, #12]	@, %sfp
	bl	MEM_Phy2Vir	@
	movw	r8, #438	@ tmp186,
	movw	r6, #:lower16:166076	@ tmp187,
	mov	sl, sl, asl #2	@ pretmp.2674, UpMsgStepInWord,
	movt	r6, #:upper16:166076	@ tmp187,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp150,* D.37180
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ tmp149,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp153,
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ tmp156,
	orr	r3, r9, ip, asl #24	@, tmp152, tmp149, tmp150,
	movw	r0, #:lower16:166068	@,
	movw	r9, #:lower16:166080	@ tmp189,
	orr	r4, r3, r1, asl #16	@, tmp155, tmp152, tmp153,
	movt	r0, #:upper16:166068	@,
	orr	r3, r4, r2, asl #8	@, ReadOneWord, tmp155, tmp156,
	movw	r1, #:lower16:g_event_report	@,
	cmp	r3, r8	@ ReadOneWord, tmp186
	cmpne	r3, #288	@, ReadOneWord,
	movt	r1, #:upper16:g_event_report	@,
	movt	r9, #:upper16:166080	@ tmp189,
	str	r1, [sp, #4]	@, %sfp
	str	r0, [sp, #8]	@, %sfp
	beq	.L571	@,
	bic	r3, r3, #1020	@ tmp246, ReadOneWord,
	bic	ip, r3, #3	@ tmp246, tmp246,
	cmp	ip, #32768	@ tmp246,
	beq	.L572	@,
.L545:
	mov	r4, #1	@ i,
	cmp	fp, r4	@ ValidSegNum, i
	bls	.L542	@,
	ldr	r3, [sp, #12]	@, %sfp
	cmp	r3, #0	@,
	beq	.L541	@,
	ldr	r0, [r7, sl]	@,* pretmp.2674
	bl	MEM_Phy2Vir	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp263,* D.37180
	ldrb	r1, [r0, #3]	@ zero_extendqisi2	@ tmp262,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ tmp266,
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ tmp269,
	orr	r3, r1, r3, asl #24	@, tmp265, tmp262, tmp263,
	orr	r0, r3, ip, asl #16	@, tmp268, tmp265, tmp266,
	orr	ip, r0, r2, asl #8	@, ReadOneWord, tmp268, tmp269,
	cmp	ip, r8	@ ReadOneWord, tmp186
	cmpne	ip, #288	@, ReadOneWord,
	moveq	r1, r4	@, i
	streq	r1, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	bic	r1, ip, #1020	@ tmp283, ReadOneWord,
	moveq	r2, #0	@,
	streq	r2, [r5, r9]	@, <variable>.LastH263Num
	bic	r2, r1, #3	@ tmp283, tmp283,
	cmp	r2, #32768	@ tmp283,
	beq	.L573	@,
.L556:
	add	r4, r4, #1	@ i, tmp198,
	cmp	fp, r4	@ ValidSegNum, i
	bls	.L542	@,
.L541:
	mul	lr, sl, r4	@ tmp200, pretmp.2674, i
	ldr	r0, [r7, lr]	@,
	bl	MEM_Phy2Vir	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp204,* D.37180
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ tmp207,
	ldrb	r1, [r0, #3]	@ zero_extendqisi2	@ tmp203,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp210,
	orr	r3, r1, ip, asl #24	@, tmp206, tmp203, tmp204,
	orr	ip, r3, r2, asl #16	@, tmp209, tmp206, tmp207,
	orr	r3, ip, r0, asl #8	@, ReadOneWord, tmp209, tmp210,
	cmp	r3, r8	@ ReadOneWord, tmp186
	cmpne	r3, #288	@, ReadOneWord,
	moveq	r2, #0	@,
	streq	r2, [r5, r9]	@, <variable>.LastH263Num
	bic	r2, r3, #1020	@ tmp170, ReadOneWord,
	moveq	r1, #1	@,
	bic	r0, r2, #3	@ tmp170, tmp170,
	streq	r1, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	cmp	r0, #32768	@ tmp170,
	beq	.L574	@,
.L538:
	add	r4, r4, #1	@ tmp198, i,
	mul	lr, sl, r4	@ tmp222, pretmp.2674, tmp198
	ldr	r0, [r7, lr]	@,
	bl	MEM_Phy2Vir	@
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp226,* D.37180
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp225,
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ tmp229,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp232,
	orr	ip, r2, r1, asl #24	@, tmp228, tmp225, tmp226,
	orr	r2, ip, r3, asl #16	@, tmp231, tmp228, tmp229,
	orr	r0, r2, r0, asl #8	@, ReadOneWord, tmp231, tmp232,
	cmp	r0, r8	@ ReadOneWord, tmp186
	cmpne	r0, #288	@, ReadOneWord,
	moveq	lr, #1	@,
	moveq	r3, #0	@,
	streq	lr, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	streq	r3, [r5, r9]	@, <variable>.LastH263Num
.L555:
	bic	r1, r0, #1020	@ tmp301, ReadOneWord,
	bic	r2, r1, #3	@ tmp301, tmp301,
	cmp	r2, #32768	@ tmp301,
	bne	.L556	@,
	ldr	r0, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r0, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L575	@,
.L567:
	add	r4, r4, #1	@ i, tmp198,
	mov	r0, #2	@,
	cmp	fp, r4	@ ValidSegNum, i
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	bhi	.L541	@,
.L542:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L574:
	ldr	r2, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r2, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L539	@,
.L540:
	mov	r3, #2	@,
	str	r3, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L538	@
.L571:
	bic	r3, r3, #1020	@ tmp246, ReadOneWord,
	mov	r0, #1	@,
	bic	ip, r3, #3	@ tmp246, tmp246,
	mov	r4, #0	@,
	cmp	ip, #32768	@ tmp246,
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	str	r4, [r5, r9]	@, <variable>.LastH263Num
	bne	.L545	@,
.L572:
	ldr	r2, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r2, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L576	@,
.L563:
	mov	r0, #2	@,
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L545	@
.L539:
	ldr	r0, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r1, r0, #1	@ D.37195, <variable>.LastH263Num,
	str	r1, [r5, r9]	@ D.37195, <variable>.LastH263Num
	cmp	r1, #30	@ D.37195,
	bls	.L538	@,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r3, [ip, #0]	@ g_event_report.595, g_event_report
	cmp	r3, #0	@ g_event_report.595,
	beq	.L540	@,
	ldr	lr, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.InstID
	blx	r3	@ g_event_report.595
	b	.L540	@
.L575:
	ldr	r3, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	ip, r3, #1	@ D.37195, <variable>.LastH263Num,
	str	ip, [r5, r9]	@ D.37195, <variable>.LastH263Num
	cmp	ip, #30	@ D.37195,
	bls	.L556	@,
	ldr	lr, [sp, #4]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report.595, g_event_report
	cmp	r3, #0	@ g_event_report.595,
	beq	.L558	@,
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, #0	@,
	ldr	r0, [r5, r1]	@, <variable>.InstID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.595
.L558:
	mov	r2, #2	@,
	str	r2, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L556	@
.L573:
	ldr	lr, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	lr, #1	@ <variable>.Mpeg4ModeFlag,
	bne	.L567	@,
	ldr	r1, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r2, r1, #1	@ D.37195, <variable>.LastH263Num,
	str	r2, [r5, r9]	@ D.37195, <variable>.LastH263Num
	cmp	r2, #30	@ D.37195,
	bls	.L556	@,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r3, [r0, #0]	@ g_event_report.595, g_event_report
	cmp	r3, #0	@ g_event_report.595,
	beq	.L567	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.InstID
	blx	r3	@ g_event_report.595
	b	.L567	@
.L576:
	ldr	lr, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r1, lr, #1	@ D.37195, <variable>.LastH263Num,
	str	r1, [r5, r9]	@ D.37195, <variable>.LastH263Num
	cmp	r1, #30	@ D.37195,
	bls	.L545	@,
	ldr	r4, [sp, #4]	@, %sfp
	ldr	r3, [r4, #0]	@ g_event_report.595, g_event_report
	cmp	r3, #0	@ g_event_report.595,
	beq	.L563	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.InstID
	blx	r3	@ g_event_report.595
	b	.L563	@
	.fnend
	.size	GetMeg4ModeFlag, .-GetMeg4ModeFlag
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp152,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp152,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	ip, [ip, #8]	@ D.35874, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	r4, #:lower16:.LANCHOR0	@ tmp189,
	movt	r4, #:upper16:.LANCHOR0	@ tmp189,
	cmp	ip, #0	@ D.35874,
	mov	r8, r3	@ ResetRegAddr, ResetRegAddr
	mov	r5, r0	@ MemAddr, MemAddr
	movw	r3, #:lower16:269729792	@ tmp151,
	mov	r6, r1	@ MemSize, MemSize
	movt	r3, #:upper16:269729792	@ tmp151,
	mov	r7, r2	@ RegAddr, RegAddr
	str	r3, [r4, #84]	@ tmp151, s_RegPhyBaseAddr
	beq	.L578	@,
	blx	ip	@ D.35874
.L579:
	ldr	r0, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	cmp	r0, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L580	@,
	bl	ResetSCD	@
	mov	r1, #80	@,
	mov	r0, r4	@, tmp154
	mov	sl, #0	@ tmp158,
	bl	__memzero	@
	add	r0, r5, #3	@ tmp159, MemAddr,
	bic	r9, r0, #3	@ tmp160, tmp159,
	str	r5, [r4, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r9, r5, r9	@ Offset, MemAddr, tmp160
	str	sl, [r4, #80]	@ tmp158, s_eScdDrvSleepStage
	add	r0, r9, r5	@ D.35890, Offset, MemAddr
	str	r6, [r4, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r0, [r4, #8]	@ D.35890, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	r3, r9, #12288	@ D.35895, Offset,
	mov	r2, #12288	@ tmp166,
	add	r1, r3, r5	@ temp.2711, D.35895, MemAddr
	str	r2, [r4, #16]	@ tmp166, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r1, [r4, #20]	@ temp.2711, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r1	@, temp.2711
	bl	MEM_Phy2Vir	@
	add	ip, r9, r5	@ tmp171, Offset, MemAddr
	add	r3, ip, #26112	@ tmp172, tmp171,
	mov	r2, #13824	@ tmp170,
	add	r5, r3, #127	@ tmp172, tmp172,
	str	r2, [r4, #28]	@ tmp170, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r5, r5, #127	@ g_hex_base_addr.495, tmp172,
	str	r5, [r4, #88]	@ g_hex_base_addr.495, g_hex_base_addr
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, g_hex_base_addr.495
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.35906,
	str	r0, [r4, #92]	@ D.35906, g_hex_base_vir_addr
	beq	.L584	@,
	add	r9, r9, #44032	@ tmp181, Offset,
	mov	lr, #17920	@ tmp178,
	cmp	r6, r9	@ MemSize, tmp181
	str	r7, [r4, #32]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r8, [r4, #36]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	lr, [r4, #96]	@ tmp178, g_hex_len
	bge	.L585	@,
.L580:
	mvn	r0, #6	@ D.35882,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L578:
	mov	r0, ip	@, D.35874
	movw	r1, #:lower16:.LC7	@,
	movw	r2, #1128	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	b	.L579	@
.L584:
	movw	r1, #:lower16:.LC32	@,
	movw	r2, #1161	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35882,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L585:
	ldr	ip, [r4, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	ip, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L580	@,
	ldr	r1, [r4, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r1, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	movne	r1, #1	@ tmp187,
	movne	r0, sl	@ D.35882, tmp158
	strne	r1, [r4, #64]	@ tmp187, s_SmIIS.IsScdDrvOpen
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L580	@
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ tmp150, SmID,
	movne	r3, #1	@ tmp150
	cmp	r1, #0	@ pSmCfg,
	orreq	r3, r3, #1	@,, tmp153, tmp150
	cmp	r3, #0	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ pSmCfg, pSmCfg
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L598	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp206,
	movt	r6, #:upper16:.LANCHOR0	@ tmp206,
	ldr	r5, [r6, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L589	@,
	ldr	r3, [r1, #12]	@ D.35958, <variable>.BufPhyAddr
	ldr	r2, [r5, #20]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r2, r3	@ <variable>.Config.BufPhyAddr, D.35958
	addeq	ip, r5, #8	@ tmp205, pSmInstArray,
	bne	.L599	@,
.L590:
	mov	r7, r4	@ pSmCfg, pSmCfg
	mov	r8, ip	@ tmp197, tmp205
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	movw	r6, #:lower16:166132	@ tmp199,
	movt	r6, #:upper16:166132	@ tmp199,
	mov	ip, #2	@ tmp200,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp197,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp197,,,,
	ldmia	r7, {r0, r1}	@ pSmCfg,,
	str	ip, [r5, r6]	@ tmp200, <variable>.UpMsgStepInWord
	stmia	r8, {r0, r1}	@ tmp210,,
	ldr	r0, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r0, ip	@ <variable>.VidStd,
	moveq	r0, #3	@ tmp203,
	streq	r0, [r5, r6]	@ tmp203, <variable>.UpMsgStepInWord
	mov	r0, #0	@ D.35953,
.L588:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L598:
	mov	r3, r0	@, SmID
	movw	r1, #:lower16:.LC33	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC33	@,
	movw	r2, #1220	@,
	str	r4, [sp, #0]	@ pSmCfg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35953,
	b	.L588	@
.L599:
	cmp	r3, #0	@ D.35958,
	bne	.L600	@,
.L589:
	mvn	r0, #0	@ D.35953,
	b	.L588	@
.L600:
	ldr	r0, [r1, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r0, #0	@ <variable>.pBufVirAddr,
	beq	.L589	@,
	ldr	r2, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r3, #:lower16:166032	@ tmp158,
	movt	r3, #:upper16:166032	@ tmp158,
	movw	r7, #:lower16:166036	@ tmp161,
	movt	r7, #:upper16:166036	@ tmp161,
	movw	sl, #:lower16:166040	@ tmp164,
	str	r2, [r5, r3]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	sl, #:upper16:166040	@ tmp164,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r8, #:lower16:166044	@ tmp167,
	movt	r8, #:upper16:166044	@ tmp167,
	movw	r1, #:lower16:166048	@ tmp170,
	movt	r1, #:upper16:166048	@ tmp170,
	movw	r3, #:lower16:166052	@ tmp173,
	str	ip, [r5, r7]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r3, #:upper16:166052	@ tmp173,
	ldr	r0, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	r2, #:lower16:166056	@ tmp176,
	movt	r2, #:upper16:166056	@ tmp176,
	movw	r7, #:lower16:166060	@ tmp181,
	movw	ip, #:lower16:166028	@ tmp182,
	movt	r7, #:upper16:166060	@ tmp181,
	str	r0, [r5, sl]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movt	ip, #:upper16:166028	@ tmp182,
	ldr	sl, [r6, #20]	@, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movw	r0, #:lower16:166064	@ tmp187,
	movt	r0, #:upper16:166064	@ tmp187,
	str	sl, [r5, r8]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [r5, r1]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r8, #1152	@ tmp177,
	ldr	r1, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r8, [r5, r2]	@ tmp177, <variable>.BufAddrCfg.UpMsgNum
	str	r1, [r5, r3]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2739, <variable>.BufPhyAddr
	ldr	r3, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	r1, r8, #3	@ tmp179, temp.2739,
	ldr	r2, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	bic	r1, r1, #3	@ TmpPhyAddr, tmp179,
	cmp	r3, #6	@ <variable>.VidStd,
	rsb	r8, r8, r1	@ D.35982, temp.2739, TmpPhyAddr
	add	r2, r8, r2	@ pTmpVirAddr, D.35982, <variable>.pBufVirAddr
	moveq	r3, #1048576	@ prephitmp.2728,
	movne	r3, #131072	@ prephitmp.2728,
	add	r1, r3, r1	@ D.35985, prephitmp.2728, TmpPhyAddr
	add	r2, r2, r3	@ D.35987, pTmpVirAddr, prephitmp.2728
	str	r1, [r5, r7]	@ D.35985, <variable>.BufAddrCfg.SegBufPhyAddr
	str	r2, [r5, ip]	@ D.35987, <variable>.BufAddrCfg.pSegBufVirAddr
	ldr	ip, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	sub	ip, ip, #1024	@ tmp183, <variable>.BufSize,
	rsb	r8, r8, ip	@ tmp186, D.35982, tmp183
	rsb	r3, r3, r8	@ D.35992, prephitmp.2728, tmp186
	str	r3, [r5, r0]	@ D.35992, <variable>.BufAddrCfg.SegBufSize
	cmp	r3, #262144	@ D.35992,
	bcc	.L589	@,
	add	lr, r5, #73728	@, pSmInstArray,
	mov	r7, r4	@ pSmCfg, pSmCfg
	add	r0, lr, #72	@,,
	bl	ConfigStreamSegArray	@
	ldr	r1, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	add	ip, r5, #8	@ tmp205, pSmInstArray,
	str	r1, [r6, #84]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r6, ip	@ tmp194, tmp205
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp194,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp194,,,,
	ldmia	r7, {r0, r1}	@ pSmCfg,,
	stmia	r6, {r0, r1}	@ tmp208,,
	b	.L590	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0	@ SmID, SmID
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	bne	.L612	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp141,
	movt	r6, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r4, [r6, #56]	@ pScdInstance, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pScdInstance,
	beq	.L614	@,
	add	lr, r4, #8	@ tmp145, pScdInstance,
	mov	r8, sp	@ tmp144, tmp173
	movw	r7, #:lower16:166072	@ tmp146,
	movt	r7, #:upper16:166072	@ tmp146,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp175,,,,
	mov	r5, sp	@ tmp173,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp144,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp176,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp144,,,,
	ldmia	lr, {r0, r1}	@ tmp176,,
	stmia	r8, {r0, r1}	@ tmp177,,
	ldr	r8, [r4, r7]	@ TmpMode, <variable>.Mode
	cmp	r8, #0	@ TmpMode,
	bne	.L615	@,
.L605:
	movw	r2, #:lower16:73780	@ tmp151,
	movw	r0, #:lower16:73776	@ tmp152,
	movt	r2, #:upper16:73780	@ tmp151,
	movt	r0, #:upper16:73776	@ tmp152,
	movw	r6, #:lower16:166068	@ tmp156,
	movt	r6, #:upper16:166068	@ tmp156,
	ldr	lr, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	add	r0, r4, #48	@, pScdInstance,
	ldr	r1, [r4, r2]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	sub	r8, r8, #1	@ tmp166, TmpMode,
	subs	r1, r1, lr	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, pScdInstance
	movw	r1, #:lower16:174448	@,
	movt	r1, #:upper16:174448	@,
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.InstID
	bl	__memzero	@
	mov	r0, r4	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
	movw	r3, #:lower16:166096	@ tmp161,
	movw	ip, #:lower16:166132	@ tmp163,
	movt	r3, #:upper16:166096	@ tmp161,
	movt	ip, #:upper16:166132	@ tmp163,
	mov	r2, #2	@ tmp164,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mov	r1, sp	@,
	str	r7, [r4, r6]	@ s8TmpInstID, <variable>.InstID
	mov	r0, #0	@,
	str	r2, [r4, ip]	@ tmp164, <variable>.UpMsgStepInWord
	mvn	r6, #0	@ tmp162,
	mvn	r7, #0	@,
	strd	r6, [r4, r3]	@ tmp162, pScdInstance, tmp161
	bl	SM_Config	@
	cmp	r8, #1	@ tmp166,
	movwls	r3, #:lower16:166072	@ tmp167,
	movhi	r2, #0	@ tmp170,
	movwhi	r3, #:lower16:166072	@ tmp169,
	movls	r0, #0	@ D.35824,
	movls	r2, #1	@ tmp168,
	movtls	r3, #:upper16:166072	@ tmp167,
	movthi	r3, #:upper16:166072	@ tmp169,
	movhi	r0, r2	@ D.35824, tmp170
	str	r2, [r4, r3]	@ tmp170, <variable>.Mode
.L603:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L615:
	str	ip, [r4, r7]	@ SmID, <variable>.Mode
	ldr	r0, [r6, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r0, #0	@ s_SmIIS.SCDState,
	beq	.L605	@,
.L606:
	add	ip, ip, #2	@ i, i,
	cmp	ip, #50	@ i,
	beq	.L605	@,
	add	ip, ip, #2	@ i, i,
	cmp	ip, #50	@ i,
	bne	.L606	@,
	b	.L605	@
.L614:
	movw	r1, #:lower16:.LC34	@,
	movw	r2, #1068	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
.L612:
	mvn	r0, #0	@ D.35824,
	b	.L603	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	SCDDRV_ProcessSegFull
	.type	SCDDRV_ProcessSegFull, %function
SCDDRV_ProcessSegFull:
	.fnstart
.LFB1694:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #73728	@ pStreamSegArray, pSmInstArray,
	add	r5, r5, #72	@ pStreamSegArray, pStreamSegArray,
	mov	r4, r0	@ pSmInstArray, pSmInstArray
	cmp	r5, #0	@ pStreamSegArray,
	movwne	r2, #:lower16:166008	@ tmp140,
	movtne	r2, #:upper16:166008	@ tmp140,
	movwne	r3, #:lower16:166004	@ tmp141,
	movtne	r3, #:upper16:166004	@ tmp141,
	ldrne	r8, [r0, r2]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	moveq	r7, r5	@ FreshSize, pStreamSegArray
	ldrsb	r2, [r0, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	moveq	r8, r5	@ FreshNum, pStreamSegArray
	ldrne	r7, [r0, r3]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	movw	r3, #:lower16:165988	@ tmp142,
	cmp	r2, #0	@ <variable>.IsCounting,
	movt	r3, #:upper16:165988	@ tmp142,
	ldr	r6, [r0, r3]	@ SegBufTotalSize, <variable>.StreamSegArray.SegBufSize
	bne	.L619	@,
	add	r6, r6, r6, lsr #31	@, tmp146, SegBufTotalSize, SegBufTotalSize,
	cmp	r7, r6, asr #1	@ FreshSize, tmp146,
	ldmgefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r8, #127	@ FreshNum,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, #1	@ tmp148,
	strb	r1, [r4, #1]	@ tmp148, <variable>.IsCounting
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	CalcInstBlockTime	@
.L619:
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r6, #0	@ SegBufTotalSize,
	add	r1, r6, #3	@ tmp152, SegBufTotalSize,
	movlt	r6, r1	@ SegBufTotalSize, tmp152
	cmp	r7, r6, asr #2	@ FreshSize, SegBufTotalSize,
	ldmgefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r8, #63	@ FreshNum,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r7, #0	@ FreshSize,
	bne	.L621	@,
	cmp	r8, #0	@ FreshNum,
	bne	.L621	@,
	movw	lr, #:lower16:166164	@ tmp154,
	movt	lr, #:upper16:166164	@ tmp154,
	ldr	ip, [r4, lr]	@ <variable>.last_unfinished_seg_size, <variable>.last_unfinished_seg_size
	cmp	ip, #0	@ <variable>.last_unfinished_seg_size,
	beq	.L621	@,
	mov	r0, r8	@, FreshNum
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:166068	@ tmp157,
	movt	r3, #:upper16:166068	@ tmp157,
	ldr	r0, [r4, r3]	@, <variable>.InstID
	bl	SM_Reset	@
	b	.L622	@
.L621:
	mov	r2, r0	@, WaitSegTime
	movw	r1, #:lower16:.LC36	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pStreamSegArray
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
.L622:
	mov	r0, #0	@ tmp160,
	strb	r0, [r4, #0]	@ tmp160, <variable>.SegFullFlag
	strb	r0, [r4, #1]	@ tmp160, <variable>.IsCounting
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	SCDDRV_ProcessSegFull, .-SCDDRV_ProcessSegFull
	.align	2
	.global	SCDDRV_GetStreamSeg
	.type	SCDDRV_GetStreamSeg, %function
SCDDRV_GetStreamSeg:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	.pad #12
	sub	sp, sp, #12	@,,
	mvneq	r0, #0	@ Ret,
	beq	.L626	@,
	movw	r3, #:lower16:92168	@ tmp151,
	movw	r2, #:lower16:92172	@ tmp152,
	movt	r3, #:upper16:92168	@ tmp151,
	movt	r2, #:upper16:92172	@ tmp152,
	ldr	r3, [r5, r3]	@ i.483, <variable>.Head
	ldr	ip, [r5, r2]	@ D.35648, <variable>.Tail
	cmp	r3, ip	@ i.483, D.35648
	beq	.L627	@,
	mov	r6, r3, asl #2	@ tmp235, i,
	mov	r2, r3	@ i, i.483
	add	r4, r6, r3	@ tmp155, tmp235, i
	add	r0, r5, r4, asl #4	@, tmp159, pStreamSegArray, tmp155,
	ldrsb	r0, [r0, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp237,
	movtne	r0, #:upper16:954437177	@ tmp237,
	bne	.L632	@,
	b	.L628	@
.L630:
	add	r4, r5, r4, asl #4	@, tmp169, pStreamSegArray, tmp165,
	ldrsb	r4, [r4, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r4, #1	@ <variable>.SegState,
	beq	.L628	@,
.L632:
	add	r2, r2, #1	@ D.35657, i,
	smull	r3, r6, r0, r2	@, tmp226, tmp237, D.35657
	mov	r3, r2, asr #31	@ tmp229, D.35657,
	rsb	r4, r3, r6, asr #8	@, i, tmp229, tmp226,
	add	r3, r4, r4, asl #3	@, tmp232, i, i,
	sub	r3, r2, r3, asl #7	@ i.483, D.35657, tmp232,
	cmp	r3, ip	@ i.483, D.35648
	mov	r6, r3, asl #2	@ tmp164, i.483,
	mov	r2, r3	@ i, i.483
	add	r4, r6, r3	@ tmp165, tmp164, i.483
	bne	.L630	@,
.L627:
	mvn	r0, #2	@ Ret,
.L626:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L628:
	add	r6, r6, r3	@ tmp175, tmp235, i.483
	mov	r0, r1	@, pStreamSeg
	mov	r2, #80	@,
	add	r4, r5, r6, asl #4	@, tmp178, pStreamSegArray, tmp175,
	add	r6, r6, #1	@ tmp198, tmp175,
	add	r4, r4, #8	@ tmp179, tmp178,
	mov	r1, r4	@, tmp179
	bl	memcpy	@
	movw	ip, #:lower16:92204	@ tmp203,
	add	r3, r5, r6, asl #4	@, tmp201, pStreamSegArray, tmp198,
	movt	ip, #:upper16:92204	@ tmp203,
	movw	r2, #:lower16:92208	@ tmp206,
	movt	r2, #:upper16:92208	@ tmp206,
	ldr	r3, [r3, #4]	@ D.35661, <variable>.LenInByte
	mov	r1, #2	@ tmp193,
	strb	r1, [r4, #4]	@ tmp193, <variable>.SegState
	mov	r0, #26	@,
	ldr	r7, [r5, ip]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	movw	r1, #:lower16:.LC37	@,
	ldr	lr, [r5, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	movt	r1, #:upper16:.LC37	@,
	rsb	r7, r3, r7	@ D.35662, D.35661, <variable>.SegFreshSize
	str	r7, [r5, ip]	@ D.35662, <variable>.SegFreshSize
	sub	ip, lr, #1	@ D.35664, <variable>.SegFreshNum,
	str	ip, [r5, r2]	@ D.35664, <variable>.SegFreshNum
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r2, [r5, r6, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Ret,
	b	.L626	@
	.fnend
	.size	SCDDRV_GetStreamSeg, .-SCDDRV_GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mov	r5, r1	@ pStreamSeg, pStreamSeg
	movne	r8, #0	@, tmp145
	moveq	r8, #1	@, tmp145
	mvneq	r0, #0	@ Ret,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	movw	r6, #:lower16:92172	@ tmp146,
	movt	r6, #:upper16:92172	@ tmp146,
	movw	r7, #:lower16:954437177	@ tmp151,
	movt	r7, #:upper16:954437177	@ tmp151,
	ldr	r1, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movw	r3, #:lower16:92168	@ tmp157,
	movt	r3, #:upper16:92168	@ tmp157,
	add	r0, r1, #1	@ tmp147, <variable>.Tail,
	ldr	r1, [r4, r3]	@ <variable>.Head, <variable>.Head
	umull	sl, ip, r7, r0	@, tmp150, tmp151, tmp147
	mov	sl, ip, lsr #8	@ tmp149, tmp150,
	add	r3, sl, sl, asl #3	@, tmp154, tmp149, tmp149,
	sub	r0, r0, r3, asl #7	@ tmp156, tmp147, tmp154,
	cmp	r0, r1	@ tmp156, <variable>.Head
	mvneq	r0, #3	@ Ret,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	mov	r1, r2	@, InstID
	ldr	r0, [r5, #0]	@, <variable>.VirAddr
	bl	CheckStream	@
	ldr	r9, [r4, r6]	@ temp.2848, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	fp, r9, r9, asl #2	@, tmp163, temp.2848, temp.2848,
	add	ip, r4, fp, asl #4	@, tmp166, pStreamSegArray, tmp163,
	add	sl, r4, fp, asl #4	@, tmp190, pStreamSegArray, tmp163,
	add	r0, ip, #8	@, tmp166,
	mov	fp, #1	@ tmp183,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movw	ip, #:lower16:92196	@ tmp205,
	movw	r1, #:lower16:92200	@ tmp209,
	movt	ip, #:upper16:92196	@ tmp205,
	movt	r1, #:upper16:92200	@ tmp209,
	add	r2, r3, r3, asl #2	@, tmp176, <variable>.Tail, <variable>.Tail,
	movw	r3, #:lower16:92204	@ tmp214,
	movt	r3, #:upper16:92204	@ tmp214,
	add	r0, r4, r2, asl #4	@, tmp180, pStreamSegArray, tmp176,
	movw	r2, #:lower16:92208	@ tmp219,
	movt	r2, #:upper16:92208	@ tmp219,
	strb	fp, [r0, #12]	@ tmp183, <variable>.SegState
	mov	r0, r8	@ Ret, tmp145
	ldr	r9, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	str	r9, [sl, #24]	@ <variable>.Tail, <variable>.StreamID
	ldr	r8, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	ldr	r9, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	add	r8, r8, fp	@ tmp195, <variable>.Tail,
	ldr	fp, [r4, r3]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	add	r9, r9, #1	@ tmp222, <variable>.SegFreshNum,
	umull	sl, r7, r7, r8	@, tmp197, tmp151, tmp195
	mov	r7, r7, lsr #8	@ tmp199, tmp197,
	add	sl, r7, r7, asl #3	@, tmp202, tmp199, tmp199,
	sub	r7, r8, sl, asl #7	@ tmp204, tmp195, tmp202,
	str	r7, [r4, r6]	@ tmp204, <variable>.Tail
	ldr	sl, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r7, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r6, r7, sl	@ tmp208, <variable>.LenInByte, <variable>.PhyAddr
	str	r6, [r4, ip]	@ tmp208, <variable>.SegBufWriteAddr
	ldr	r6, [r4, r1]	@, <variable>.SegTotalSize
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	sl, ip, r6	@ tmp213, <variable>.LenInByte,
	str	sl, [r4, r1]	@ tmp213, <variable>.SegTotalSize
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r9, [r4, r2]	@ tmp222, <variable>.SegFreshNum
	add	fp, ip, fp	@ tmp218, <variable>.LenInByte, <variable>.SegFreshSize
	str	fp, [r4, r3]	@ tmp218, <variable>.SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.align	2
	.global	ProcessNotMpeg4ScdUpMsg
	.type	ProcessNotMpeg4ScdUpMsg, %function
ProcessNotMpeg4ScdUpMsg:
	.fnstart
.LFB1678:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:166132	@ tmp159,
	movt	r5, #:upper16:166132	@ tmp159,
	.pad #172
	sub	sp, sp, #172	@,,
	movw	ip, #:lower16:166048	@ tmp160,
	movt	ip, #:upper16:166048	@ tmp160,
	ldr	lr, [r0, r5]	@, <variable>.UpMsgStepInWord
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r1, [sp, #60]	@ ValidSegNum, %sfp
	add	r5, sp, #88	@ tmp242,,
	mov	r1, #0	@,
	add	r8, r4, #165888	@, pScdInstance,
	str	lr, [sp, #84]	@, %sfp
	mov	sl, lr, asl #2	@,,
	ldr	r0, [r0, ip]	@, <variable>.BufAddrCfg.pUpMsgVirAddr
	add	r9, r4, #73728	@ pSegArray, pScdInstance,
	str	r2, [sp, #76]	@ pSmStateReg, %sfp
	mov	r2, #80	@,
	str	sl, [sp, #28]	@, %sfp
	add	fp, r8, #208	@,,
	str	r0, [sp, #80]	@, %sfp
	mov	r0, r5	@, tmp242
	bl	memset	@
	ldr	r0, [sp, #80]	@, %sfp
	ldr	r2, [sp, #28]	@, %sfp
	movw	sl, #:lower16:165984	@ tmp243,
	str	fp, [sp, #40]	@, %sfp
	movw	r7, #:lower16:165972	@,
	movw	r6, #:lower16:165968	@,
	movt	r7, #:upper16:165972	@,
	movt	r6, #:upper16:165968	@,
	str	r7, [sp, #64]	@, %sfp
	str	r6, [sp, #68]	@, %sfp
	movw	r1, #:lower16:954437177	@,
	movw	r3, #:lower16:73800	@,
	movt	r1, #:upper16:954437177	@,
	movt	r3, #:upper16:73800	@,
	movw	fp, #:lower16:166068	@,
	add	ip, r4, #48	@, pScdInstance,
	movt	fp, #:upper16:166068	@,
	add	r9, r9, #72	@ pSegArray, pSegArray,
	movt	sl, #:upper16:165984	@ tmp243,
	str	r1, [sp, #72]	@, %sfp
	add	r6, r0, #4	@ ivtmp.2885,,
	str	r3, [sp, #36]	@, %sfp
	add	r8, r0, r2	@ ivtmp.2888,,
	str	fp, [sp, #44]	@, %sfp
	mov	r7, #0	@ i,
	str	ip, [sp, #56]	@, %sfp
	b	.L641	@
.L655:
	ldr	r1, [sp, #24]	@, %sfp
	mov	r0, #1	@,
	strb	r0, [sp, #93]	@, SegPacket.IsLastSeg
	ldr	r0, [sp, #56]	@, %sfp
	str	r1, [sp, #100]	@, SegPacket.LenInByte
	ldr	lr, [r6, #0]	@ tmp210,* ivtmp.2885
	bic	r1, lr, #-1073741824	@, tmp210,
	bl	GetSegPts	@
	ldr	r7, [sp, #44]	@, %sfp
	mov	r0, r9	@, pSegArray
	mov	r1, r5	@, tmp242
	ldr	r2, [r4, r7]	@, <variable>.InstID
	bl	InsertStreamSeg	@
.L644:
	ldr	fp, [sp, #28]	@, %sfp
	ldr	r7, [sp, #32]	@ i, %sfp
	add	r6, r6, fp	@ ivtmp.2885, ivtmp.2885,
	add	r8, r8, fp	@ ivtmp.2888, ivtmp.2888,
.L641:
	ldr	r2, [sp, #60]	@, %sfp
	add	ip, r7, #1	@, i,
	mov	r1, r9	@, pSegArray
	mov	r0, r5	@, tmp242
	cmp	r2, r7	@, i
	str	ip, [sp, #32]	@, %sfp
	bls	.L643	@,
	ldr	r3, [r6, #-4]	@ CurrentStartCodePhyAddr,
	ldr	r2, [r8, #0]	@ NextStartCodePhyAddr,* ivtmp.2888
	cmp	r3, r2	@ CurrentStartCodePhyAddr, NextStartCodePhyAddr
	bls	.L654	@,
	ldr	fp, [sp, #64]	@, %sfp
	ldr	ip, [r4, fp]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	fp, [sp, #68]	@, %sfp
	add	ip, ip, #1152	@ tmp186, <variable>.StreamSegArray.Tail,
	ldr	fp, [r4, fp]	@, <variable>.StreamSegArray.Head
	rsb	ip, fp, ip	@,, tmp186
	str	ip, [sp, #4]	@, %sfp
	ldr	ip, [sp, #76]	@, %sfp
	ldr	fp, [ip, #16]	@, <variable>.ScdRollAddr
	ldr	ip, [sp, #36]	@, %sfp
	str	fp, [sp, #20]	@, %sfp
	ldr	fp, [r4, ip]	@, <variable>.StreamSegArray.pSegBufVirAddr
	str	fp, [sp, #12]	@, %sfp
	ldr	ip, [r4, sl]	@, <variable>.StreamSegArray.SegBufPhyAddr
	rsb	fp, ip, r3	@,, CurrentStartCodePhyAddr
	ldr	ip, [sp, #72]	@, %sfp
	str	fp, [sp, #52]	@, %sfp
	ldr	fp, [sp, #4]	@, %sfp
	umull	ip, fp, ip, fp	@,,,
	ldr	ip, [sp, #20]	@, %sfp
	str	fp, [sp, #48]	@, %sfp
	rsb	fp, r3, ip	@, CurrentStartCodePhyAddr,
	str	fp, [sp, #24]	@, %sfp
	ldr	ip, [r4, sl]	@, <variable>.StreamSegArray.SegBufPhyAddr
	str	r3, [sp, #96]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	rsb	fp, ip, r2	@ SecondHalfSegLen,, NextStartCodePhyAddr
	ldr	ip, [sp, #52]	@, %sfp
	ldr	r2, [sp, #12]	@, %sfp
	add	r2, r2, ip	@,,
	ldr	ip, [sp, #24]	@, %sfp
	str	r2, [sp, #88]	@, SegPacket.VirAddr
	add	r2, ip, fp	@ tmp205,, SecondHalfSegLen
	str	r2, [sp, #100]	@ tmp205, SegPacket.LenInByte
	ldr	r2, [sp, #48]	@, %sfp
	ldr	ip, [sp, #4]	@, %sfp
	mov	r3, r2, lsr #8	@ tmp191,,
	add	r2, r3, r3, asl #3	@, tmp196, tmp191, tmp191,
	sub	r3, ip, r2, asl #7	@ tmp198,, tmp196,
	rsb	r2, r3, #1152	@ FreeSegSlotNum, tmp198,
	cmp	r2, #2	@ FreeSegSlotNum,
	bls	.L643	@,
	bl	CheckSegValid	@
	ldr	r2, [sp, #40]	@, %sfp
	mov	r3, r5	@, tmp242
	subs	r1, r0, #0	@ D.37124,
	ldr	r0, [sp, #56]	@, %sfp
	bne	.L643	@,
	cmp	fp, #0	@ SecondHalfSegLen,
	beq	.L655	@,
	ldr	r7, [sp, #24]	@, %sfp
	strb	r1, [sp, #93]	@ D.37124, SegPacket.IsLastSeg
	str	r7, [sp, #100]	@, SegPacket.LenInByte
	ldr	r1, [r6, #0]	@ tmp218,* ivtmp.2885
	bic	r1, r1, #-1073741824	@, tmp218,
	bl	GetSegPts	@
	ldr	r3, [sp, #44]	@, %sfp
	mov	r1, r5	@, tmp242
	mov	r0, r9	@, pSegArray
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	ldr	r2, [sp, #36]	@, %sfp
	ldr	lr, [sp, #44]	@, %sfp
	mov	r0, r9	@, pSegArray
	ldr	ip, [r4, sl]	@ temp.2902, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r5	@, tmp242
	ldr	r7, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r3, #1	@,
	ldr	r2, [r4, lr]	@, <variable>.InstID
	str	ip, [sp, #96]	@ temp.2902, SegPacket.PhyAddr
	str	r7, [sp, #88]	@ <variable>.StreamSegArray.pSegBufVirAddr, SegPacket.VirAddr
	str	fp, [sp, #100]	@ SecondHalfSegLen, SegPacket.LenInByte
	strb	r3, [sp, #93]	@, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L644	@
.L654:
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r9	@, pSegArray
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	rsb	lr, r3, r2	@ tmp172, CurrentStartCodePhyAddr, NextStartCodePhyAddr
	ldr	fp, [r4, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, r3	@ tmp168, <variable>.StreamSegArray.SegBufPhyAddr, CurrentStartCodePhyAddr
	mov	r0, r5	@, tmp242
	str	r3, [sp, #96]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	add	r2, fp, ip	@ tmp171, <variable>.StreamSegArray.pSegBufVirAddr, tmp168
	str	lr, [sp, #100]	@ tmp172, SegPacket.LenInByte
	str	r2, [sp, #88]	@ tmp171, SegPacket.VirAddr
	mov	r2, #1	@,
	strb	r2, [sp, #93]	@, SegPacket.IsLastSeg
	bl	CheckSegValid	@
	ldr	r2, [sp, #40]	@, %sfp
	mov	r3, r5	@, tmp242
	cmp	r0, #0	@,
	ldr	r0, [sp, #56]	@, %sfp
	bne	.L643	@,
	ldr	r1, [r6, #0]	@ tmp177,* ivtmp.2885
	bic	r1, r1, #-1073741824	@, tmp177,
	bl	GetSegPts	@
	ldr	r3, [sp, #44]	@, %sfp
	mov	r0, r9	@, pSegArray
	mov	r1, r5	@, tmp242
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L644	@,
.L643:
	cmp	r7, #0	@ i,
	beq	.L647	@,
	ldr	r3, [sp, #76]	@, %sfp
	ldr	r0, [r3, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r0, #1	@ prephitmp.2872, <variable>.StartCodeNum,
	cmp	r1, r7	@ prephitmp.2872, i
	bgt	.L656	@,
	cmp	r1, r7	@ prephitmp.2872, i
	beq	.L657	@,
.L650:
	add	sp, sp, #172	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L647:
	ldr	r0, [sp, #76]	@, %sfp
	ldr	r2, [r0, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r2, #1	@ prephitmp.2872, <variable>.StartCodeNum,
	cmp	r1, r7	@ prephitmp.2872, i
	bne	.L650	@,
.L657:
	movw	r3, #:lower16:166020	@ tmp240,
	movt	r3, #:upper16:166020	@ tmp240,
	mov	r0, r4	@, pScdInstance
	ldr	r2, [sp, #76]	@, %sfp
	ldr	r4, [r4, r3]	@ D.37140, <variable>.SmPushRaw.PushRawTotalLen
	bl	SetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #56]	@, %sfp
	mov	r1, r4	@, D.37140
	bl	DeleteRawLen	@
	b	.L650	@
.L656:
	ldr	fp, [sp, #84]	@, %sfp
	mov	r0, r4	@, pScdInstance
	ldr	r1, [sp, #80]	@, %sfp
	mul	ip, fp, r7	@ tmp236,, i
	add	lr, ip, #1	@ tmp237, tmp236,
	ldr	r4, [r1, lr, asl #2]	@ tmp238,
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #56]	@, %sfp
	bic	r4, r4, #-1073741824	@ RawPacketLenToDelete, tmp238,
	mov	r1, r4	@, RawPacketLenToDelete
	bl	DeleteRawLen	@
	b	.L650	@
	.fnend
	.size	ProcessNotMpeg4ScdUpMsg, .-ProcessNotMpeg4ScdUpMsg
	.align	2
	.global	ProcessSegRoll
	.type	ProcessSegRoll, %function
ProcessSegRoll:
	.fnstart
.LFB1674:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r8, #:lower16:165972	@ tmp150,
	movt	r8, #:upper16:165972	@ tmp150,
	movw	fp, #:lower16:165968	@ tmp153,
	movt	fp, #:upper16:165968	@ tmp153,
	mov	r4, r0	@ pScdInstance, pScdInstance
	ldr	r0, [r0, r8]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	movw	r7, #:lower16:954437177	@ tmp158,
	ldr	r3, [r4, fp]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movt	r7, #:upper16:954437177	@ tmp158,
	add	sl, r0, #1152	@ tmp151, <variable>.StreamSegArray.Tail,
	movw	r6, #:lower16:166160	@ tmp146,
	rsb	r0, r3, sl	@ tmp154, <variable>.StreamSegArray.Head, tmp151
	movt	r6, #:upper16:166160	@ tmp146,
	movw	r5, #:lower16:166048	@ tmp148,
	movt	r5, #:upper16:166048	@ tmp148,
	ldr	fp, [r4, r6]	@ D.36971, <variable>.last_start_code_addr
	.pad #12
	sub	sp, sp, #12	@,,
	umull	r6, ip, r7, r0	@, tmp157, tmp158, tmp154
	mov	r6, r1	@ pSegPacket, pSegPacket
	ldr	r9, [r4, r5]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	movw	r5, #:lower16:165984	@ tmp145,
	movt	r5, #:upper16:165984	@ tmp145,
	rsb	sl, fp, r2	@ FirstHalfSegLen, D.36971, RollPhyAddr
	movw	r7, #:lower16:73800	@ tmp164,
	movt	r7, #:upper16:73800	@ tmp164,
	ldr	r8, [r9, #0]	@ tmp149,* <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r1, ip, lsr #8	@ tmp156, tmp157,
	ldr	r9, [r4, r5]	@ SegBufferPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	str	fp, [r6, #8]	@ D.36971, <variable>.PhyAddr
	add	ip, r1, r1, asl #3	@, tmp161, tmp156, tmp156,
	ldr	r2, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r1, [r4, r7]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r8, r9, r8	@ SecondHalfSegLen, SegBufferPhyAddr, tmp149
	rsb	r3, r2, fp	@ tmp166, <variable>.StreamSegArray.SegBufPhyAddr, D.36971
	sub	r2, r0, ip, asl #7	@ tmp163, tmp154, tmp161,
	rsb	ip, r2, #1152	@ FreeSegSlotNum, tmp163,
	add	fp, sl, r8	@ tmp170, FirstHalfSegLen, SecondHalfSegLen
	cmp	ip, #2	@ FreeSegSlotNum,
	add	r1, r1, r3	@ tmp169, <variable>.StreamSegArray.pSegBufVirAddr, tmp166
	str	fp, [r6, #12]	@ tmp170, <variable>.LenInByte
	str	r1, [r6, #0]	@ tmp169, <variable>.VirAddr
	bhi	.L663	@,
.L659:
	mvn	r0, #3	@ D.36984,
.L661:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L663:
	add	lr, r4, #73728	@ pSegArray, pScdInstance,
	mov	r0, r6	@, pSegPacket
	add	fp, lr, #72	@ pSegArray, pSegArray,
	mov	r1, fp	@, pSegArray
	bl	CheckSegValid	@
	subs	ip, r0, #0	@ D.36983,
	bne	.L659	@,
	cmp	r8, #0	@ SecondHalfSegLen,
	beq	.L664	@,
	movw	lr, #:lower16:166068	@ tmp178,
	movt	lr, #:upper16:166068	@ tmp178,
	strb	ip, [r6, #5]	@ D.36983, <variable>.IsLastSeg
	mov	r1, r6	@, pSegPacket
	str	sl, [r6, #12]	@ FirstHalfSegLen, <variable>.LenInByte
	mov	r0, fp	@, pSegArray
	ldr	r2, [r4, lr]	@, <variable>.InstID
	stmia	sp, {ip, lr}	@ phole stm
	bl	InsertStreamSeg	@
	str	r9, [r6, #8]	@ SegBufferPhyAddr, <variable>.PhyAddr
	mov	lr, #1	@ tmp186,
	ldr	r3, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r6	@, pSegPacket
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r0, fp	@, pSegArray
	rsb	r9, r3, r9	@ tmp182, <variable>.StreamSegArray.SegBufPhyAddr, SegBufferPhyAddr
	str	r8, [r6, #12]	@ SecondHalfSegLen, <variable>.LenInByte
	add	ip, r2, r9	@ tmp185, <variable>.StreamSegArray.pSegBufVirAddr, tmp182
	strb	lr, [r6, #5]	@ tmp186, <variable>.IsLastSeg
	str	ip, [r6, #0]	@ tmp185, <variable>.VirAddr
	ldr	r3, [sp, #4]	@,
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	ldr	r1, [sp, #0]	@,
	mov	r0, r1	@ D.36984, D.36983
	b	.L661	@
.L664:
	movw	ip, #:lower16:166068	@ tmp174,
	movt	ip, #:upper16:166068	@ tmp174,
	str	sl, [r6, #12]	@ FirstHalfSegLen, <variable>.LenInByte
	mov	r2, #1	@ tmp172,
	mov	r0, fp	@, pSegArray
	strb	r2, [r6, #5]	@ tmp172, <variable>.IsLastSeg
	mov	r1, r6	@, pSegPacket
	ldr	r2, [r4, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r0, r8	@ D.36984, SecondHalfSegLen
	b	.L661	@
	.fnend
	.size	ProcessSegRoll, .-ProcessSegRoll
	.align	2
	.global	ProcessLastUnfinishedSeg
	.type	ProcessLastUnfinishedSeg, %function
ProcessLastUnfinishedSeg:
	.fnstart
.LFB1675:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r4, r0	@ pScdInstance, pScdInstance
	mov	r7, r1	@ ValidStartCodeNum, ValidStartCodeNum
	mov	r8, r2	@ pSmStateReg, pSmStateReg
	mov	r0, sp	@,
	mov	r1, #0	@,
	mov	r2, #80	@,
	bl	memset	@
	movw	r5, #:lower16:165984	@ tmp148,
	cmp	r7, #0	@ ValidStartCodeNum,
	movt	r5, #:upper16:165984	@ tmp148,
	mov	r6, sp	@ tmp145,
	ldr	r3, [r4, r5]	@ SegBufferPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L666	@,
	movw	r2, #:lower16:166104	@ tmp149,
	movw	ip, #:lower16:166108	@ tmp150,
	movt	r2, #:upper16:166104	@ tmp149,
	movt	ip, #:upper16:166108	@ tmp150,
	movw	lr, #:lower16:166160	@ tmp155,
	movt	lr, #:upper16:166160	@ tmp155,
	ldr	r1, [r4, ip]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	ldr	r0, [r4, r2]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	ip, [r4, lr]	@ <variable>.last_start_code_addr, <variable>.last_start_code_addr
	cmp	r0, r1	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	movle	r2, #0	@, tmp153
	movgt	r2, #1	@, tmp153
	strb	r2, [r4, #0]	@ tmp153, <variable>.SegFullFlag
	cmp	ip, #0	@ <variable>.last_start_code_addr,
	beq	.L667	@,
	movw	r1, #:lower16:166168	@ tmp163,
	movt	r1, #:upper16:166168	@ tmp163,
	movw	r2, #:lower16:166164	@ tmp157,
	movw	r0, #:lower16:166020	@ tmp158,
	movt	r2, #:upper16:166164	@ tmp157,
	movt	r0, #:upper16:166020	@ tmp158,
	ldr	r5, [r4, r1]	@ <variable>.roll_flag, <variable>.roll_flag
	ldr	lr, [r4, r0]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r5, #0	@ <variable>.roll_flag,
	ldr	r0, [r4, r2]	@ <variable>.last_unfinished_seg_size, <variable>.last_unfinished_seg_size
	add	r0, lr, r0	@ tmp162, <variable>.SmPushRaw.PushRawTotalLen, <variable>.last_unfinished_seg_size
	str	r0, [r4, r2]	@ tmp162, <variable>.last_unfinished_seg_size
	bne	.L668	@,
	ldr	r2, [r8, #28]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	cmp	r2, ip	@ <variable>.seg_next_addr, <variable>.last_start_code_addr
	bcs	.L668	@,
	mov	r0, #1	@ tmp169,
	str	r0, [r4, r1]	@ tmp169, <variable>.roll_flag
	ldr	lr, [r8, #28]	@ temp.2965, <variable>.seg_next_addr
	movw	ip, #:lower16:166172	@ tmp170,
	ldr	r1, [r8, #16]	@ RollPhyAddr, <variable>.ScdRollAddr
	movt	ip, #:upper16:166172	@ tmp170,
	cmp	r3, lr	@ SegBufferPhyAddr, temp.2965
	rsbhi	r1, r3, r1	@ D.38380, SegBufferPhyAddr, RollPhyAddr
	addhi	r1, r1, lr	@ RollPhyAddr, D.38380, temp.2965
	str	r1, [r4, ip]	@ RollPhyAddr, <variable>.roll_addr
.L668:
	movw	lr, #:lower16:166156	@ tmp171,
	movt	lr, #:upper16:166156	@ tmp171,
	mov	ip, #0	@ tmp172,
	movw	r2, #:lower16:166152	@ tmp173,
	str	ip, [r4, lr]	@ tmp172, <variable>.first_start_scd_flag
	movt	r2, #:upper16:166152	@ tmp173,
	ldr	r1, [r8, #28]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	cmp	r1, r3	@ <variable>.seg_next_addr, SegBufferPhyAddr
	strcs	r1, [r4, r2]	@, <variable>.seg_next_addr, <variable>.seg_next_addr
	strcc	r3, [r4, r2]	@, SegBufferPhyAddr, <variable>.seg_next_addr
.L667:
	movw	r3, #:lower16:166020	@ tmp177,
	movt	r3, #:upper16:166020	@ tmp177,
	add	r0, r4, #48	@, pScdInstance,
	ldr	r1, [r4, r3]	@, <variable>.SmPushRaw.PushRawTotalLen
	bl	DeleteRawLen	@
.L670:
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L666:
	movw	r7, #:lower16:166160	@ tmp181,
	movt	r7, #:upper16:166160	@ tmp181,
	mov	r1, #0	@ tmp179,
	strb	r1, [r4, #0]	@ tmp179, <variable>.SegFullFlag
	ldr	r0, [r4, r7]	@ <variable>.last_start_code_addr, <variable>.last_start_code_addr
	cmp	r0, r1	@ <variable>.last_start_code_addr,
	beq	.L670	@,
	add	ip, r4, #165888	@, pScdInstance,
	mov	r2, #80	@,
	mov	r0, sp	@,
	add	r1, ip, #288	@,,
	bl	memcpy	@
	movw	r2, #:lower16:166168	@ tmp188,
	movt	r2, #:upper16:166168	@ tmp188,
	ldr	r0, [r4, r2]	@ <variable>.roll_flag, <variable>.roll_flag
	cmp	r0, #1	@ <variable>.roll_flag,
	beq	.L677	@,
	movw	r0, #:lower16:166048	@ tmp195,
	movt	r0, #:upper16:166048	@ tmp195,
	ldr	r3, [r4, r7]	@ temp.2970, <variable>.last_start_code_addr
	ldr	r2, [r4, r0]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	r1, [r2, #0]	@ tmp196,* <variable>.BufAddrCfg.pUpMsgVirAddr
	cmp	r1, r3	@ tmp196, temp.2970
	bcs	.L678	@,
	mov	r0, r4	@, pScdInstance
	mov	r1, sp	@,
	ldr	r2, [r8, #16]	@, <variable>.ScdRollAddr
	bl	ProcessSegRoll	@
	b	.L670	@
.L677:
	movw	lr, #:lower16:166172	@ tmp191,
	movt	lr, #:upper16:166172	@ tmp191,
	mov	r0, r4	@, pScdInstance
	mov	r1, sp	@,
	ldr	r2, [r4, lr]	@, <variable>.roll_addr
	bl	ProcessSegRoll	@
	b	.L670	@
.L678:
	movw	lr, #:lower16:73800	@ tmp197,
	movt	lr, #:upper16:73800	@ tmp197,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r5, r4, #73728	@ pSegArray, pScdInstance,
	ldr	r0, [r4, lr]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r5, r5, #72	@ pSegArray, pSegArray,
	rsb	r1, ip, r3	@ tmp200, <variable>.StreamSegArray.SegBufPhyAddr, temp.2970
	str	r3, [sp, #8]	@ temp.2970, SegPacket.PhyAddr
	add	lr, r0, r1	@ tmp203, <variable>.StreamSegArray.pSegBufVirAddr, tmp200
	str	lr, [sp, #0]	@ tmp203, SegPacket.VirAddr
	ldr	ip, [r2, #0]	@ tmp207,* <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r0, sp	@,
	mov	r1, r5	@, pSegArray
	mov	r2, #1	@ tmp210,
	rsb	r3, r3, ip	@ tmp209, temp.2970, tmp207
	strb	r2, [sp, #5]	@ tmp210, SegPacket.IsLastSeg
	str	r3, [sp, #12]	@ tmp209, SegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	mvnne	r0, #3	@ Ret,
	bne	.L670	@,
	movw	r3, #:lower16:166068	@ tmp214,
	movt	r3, #:upper16:166068	@ tmp214,
	mov	r0, r5	@, pSegArray
	mov	r1, sp	@,
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	b	.L670	@
	.fnend
	.size	ProcessLastUnfinishedSeg, .-ProcessLastUnfinishedSeg
	.align	2
	.global	ProcessMpeg4ScdUpMsg
	.type	ProcessMpeg4ScdUpMsg, %function
ProcessMpeg4ScdUpMsg:
	.fnstart
.LFB1682:
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #244
	sub	sp, sp, #244	@,,
	movw	fp, #:lower16:166048	@ tmp170,
	movt	fp, #:upper16:166048	@ tmp170,
	mov	r5, r0	@ pScdInstance, pScdInstance
	str	r2, [sp, #68]	@ pSmStateReg, %sfp
	ldr	r7, [r5, fp]	@, <variable>.BufAddrCfg.pUpMsgVirAddr
	movw	r3, #:lower16:166132	@ tmp169,
	movt	r3, #:upper16:166132	@ tmp169,
	add	r9, sp, #160	@ tmp308,,
	add	r6, r5, #73728	@, pScdInstance,
	str	r6, [sp, #16]	@, %sfp
	str	r7, [sp, #72]	@, %sfp
	mov	sl, r1	@ ValidSegNum, ValidSegNum
	ldr	ip, [r5, r3]	@, <variable>.UpMsgStepInWord
	mov	r1, #0	@,
	mov	r2, #80	@,
	mov	r0, r9	@, tmp308
	movw	r4, #:lower16:165984	@ tmp178,
	movt	r4, #:upper16:165984	@ tmp178,
	str	ip, [sp, #76]	@, %sfp
	bl	memset	@
	mov	r2, #80	@,
	mov	r1, #0	@,
	add	r0, sp, r2	@,,
	add	lr, r5, #165888	@, pScdInstance,
	str	lr, [sp, #40]	@, %sfp
	bl	memset	@
	ldr	r0, [r5, r4]	@, <variable>.StreamSegArray.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	fp, [sp, #68]	@, %sfp
	ldr	r1, [sp, #76]	@, %sfp
	mov	r7, r0	@ D.37264,
	ldr	r0, [fp, #16]	@, <variable>.ScdRollAddr
	mov	fp, r1, asl #2	@ D.37275,,
	bl	MEM_Phy2Vir	@
	ldr	r6, [sp, #16]	@, %sfp
	mov	r1, r7	@, D.37264
	mov	r2, #4	@,
	movw	r7, #:lower16:165972	@,
	add	r4, r6, #72	@,,
	str	r4, [sp, #16]	@, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #40]	@, %sfp
	mov	r1, sl	@, ValidSegNum
	mov	r0, r5	@, pScdInstance
	add	ip, r3, #208	@,,
	str	ip, [sp, #40]	@, %sfp
	bl	GetMeg4ModeFlag	@
	mov	r2, sl	@, ValidSegNum
	ldr	r1, [sp, #72]	@, %sfp
	mov	r0, r5	@, pScdInstance
	bl	GetNextVop	@
	movt	r7, #:upper16:165972	@,
	str	r7, [sp, #56]	@, %sfp
	movw	r6, #:lower16:165968	@,
	movw	r4, #:lower16:954437177	@,
	movt	r6, #:upper16:165968	@,
	movt	r4, #:upper16:954437177	@,
	str	r6, [sp, #60]	@, %sfp
	str	r4, [sp, #64]	@, %sfp
	movw	r2, #:lower16:73800	@,
	movw	r3, #:lower16:166076	@,
	movt	r2, #:upper16:73800	@,
	movt	r3, #:upper16:166076	@,
	movw	ip, #:lower16:166068	@,
	add	lr, r5, #48	@, pScdInstance,
	movt	ip, #:upper16:166068	@,
	add	r1, r9, #72	@, tmp308,
	str	r2, [sp, #36]	@, %sfp
	str	r3, [sp, #44]	@, %sfp
	mov	r6, #0	@ i,
	str	ip, [sp, #24]	@, %sfp
	str	lr, [sp, #48]	@, %sfp
	str	r1, [sp, #52]	@, %sfp
	str	r0, [sp, #28]	@, %sfp
	ldr	r0, [sp, #72]	@, %sfp
	add	r7, r0, fp	@ ivtmp.3003,, D.37275
	add	r4, r0, #4	@ ivtmp.3002,,
	mov	sl, r7	@ ivtmp.3003, ivtmp.3003
	b	.L680	@
.L696:
	ldr	r0, [sp, #88]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r0, #0	@ LastSegPacket.PhyAddr,
	beq	.L682	@,
	ldr	r2, [sp, #92]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r0, sp, #80	@,,
	ldr	r1, [sp, #16]	@, %sfp
	add	r8, r2, r8	@ tmp188, LastSegPacket.LenInByte, D.37278
	str	r8, [sp, #92]	@ tmp188, LastSegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	bne	.L683	@,
	ldr	lr, [sp, #24]	@, %sfp
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [r5, lr]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r7, r0	@ Ret,
	add	r0, sp, #80	@,,
	bl	__memzero	@
	cmp	r7, #0	@ Ret,
	bne	.L683	@,
.L684:
	ldr	r6, [sp, #20]	@ i, %sfp
	add	r4, r4, fp	@ ivtmp.3002, ivtmp.3002, D.37275
	add	sl, sl, fp	@ ivtmp.3003, ivtmp.3003, D.37275
.L680:
	ldr	lr, [sp, #28]	@, %sfp
	cmp	lr, r6	@, i
	bls	.L683	@,
	ldr	r7, [r4, #-4]	@ CurrentStartCodePhyAddr,
	add	r8, r6, #1	@, i,
	ldr	r0, [sl, #0]	@ NextStartCodePhyAddr,* ivtmp.3003
	sub	r2, r4, #4	@ D.37272, ivtmp.3002,
	str	r8, [sp, #20]	@, %sfp
	rsb	r8, r7, r0	@ D.37278, CurrentStartCodePhyAddr, NextStartCodePhyAddr
	cmp	r8, #3	@ D.37278,
	bgt	.L696	@,
	sub	r1, r8, #1	@ tmp213, D.37278,
	cmp	r1, #2	@ tmp213,
	bls	.L697	@,
	ldr	r3, [sp, #56]	@, %sfp
	movw	lr, #:lower16:165984	@,
	ldr	ip, [sp, #60]	@, %sfp
	movt	lr, #:upper16:165984	@,
	ldr	r8, [r5, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r1, [r5, ip]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	ldr	ip, [sp, #68]	@, %sfp
	add	r3, r8, #1152	@ tmp244, <variable>.StreamSegArray.Tail,
	rsb	r3, r1, r3	@ tmp247, <variable>.StreamSegArray.Head, tmp244
	ldr	r8, [r5, lr]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r1, [sp, #36]	@, %sfp
	ldr	lr, [ip, #16]	@, <variable>.ScdRollAddr
	str	lr, [sp, #4]	@, %sfp
	ldr	lr, [sp, #64]	@, %sfp
	ldr	ip, [r5, r1]	@, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r1, r8, r7	@ tmp259, <variable>.StreamSegArray.SegBufPhyAddr, CurrentStartCodePhyAddr
	rsb	r8, r8, r0	@ SecondHalfSegLen, <variable>.StreamSegArray.SegBufPhyAddr, NextStartCodePhyAddr
	str	r7, [sp, #168]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	str	ip, [sp, #12]	@, %sfp
	umull	lr, ip, lr, r3	@, tmp250,, tmp247
	ldr	lr, [sp, #4]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	rsb	lr, r7, lr	@, CurrentStartCodePhyAddr,
	str	lr, [sp, #32]	@, %sfp
	add	r1, r0, r1	@ tmp262,, tmp259
	str	r1, [sp, #160]	@ tmp262, SegPacket.VirAddr
	add	r1, lr, r8	@ tmp263,, SecondHalfSegLen
	mov	lr, ip, lsr #8	@ tmp249, tmp250,
	str	r1, [sp, #172]	@ tmp263, SegPacket.LenInByte
	add	ip, lr, lr, asl #3	@, tmp254, tmp249, tmp249,
	sub	r0, r3, ip, asl #7	@ tmp256, tmp247, tmp254,
	rsb	r1, r0, #1152	@ FreeSegSlotNum, tmp256,
	cmp	r1, #2	@ FreeSegSlotNum,
	bls	.L683	@,
	mov	r0, r9	@, tmp308
	ldr	r1, [sp, #16]	@, %sfp
	str	r2, [sp, #8]	@,
	bl	CheckSegValid	@
	ldr	r2, [sp, #8]	@,
	subs	r7, r0, #0	@ D.37331,
	bne	.L683	@,
	cmp	r8, #0	@ SecondHalfSegLen,
	bne	.L686	@,
	ldr	lr, [sp, #44]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r0, [r5, lr]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	r0, [sp, #32]	@, %sfp
	mov	r2, #1	@,
	strb	r2, [sp, #165]	@, SegPacket.IsLastSeg
	mov	r3, r9	@, tmp308
	ldr	r2, [sp, #40]	@, %sfp
	str	r0, [sp, #172]	@, SegPacket.LenInByte
	ldr	r1, [r4, #0]	@ tmp272,* ivtmp.3002
	ldr	r0, [sp, #48]	@, %sfp
	bic	r1, r1, #-1073741824	@, tmp272,
	bl	GetSegPts	@
	ldr	r6, [sp, #24]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r9	@, tmp308
	ldr	r2, [r5, r6]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	b	.L684	@
.L682:
	ldr	r1, [sp, #36]	@, %sfp
	movw	r0, #:lower16:165984	@,
	movt	r0, #:upper16:165984	@,
	ldr	r3, [r5, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r0, r9	@, tmp308
	ldr	ip, [r5, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	lr, r3, r7	@ tmp196, <variable>.StreamSegArray.SegBufPhyAddr, CurrentStartCodePhyAddr
	ldr	r1, [sp, #16]	@, %sfp
	add	r3, ip, lr	@ tmp199, <variable>.StreamSegArray.pSegBufVirAddr, tmp196
	str	r2, [sp, #8]	@,
	mov	ip, #1	@,
	str	r8, [sp, #172]	@ D.37278, SegPacket.LenInByte
	str	r3, [sp, #160]	@ tmp199, SegPacket.VirAddr
	str	r7, [sp, #168]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	strb	ip, [sp, #165]	@, SegPacket.IsLastSeg
	bl	CheckSegValid	@
	ldr	r2, [sp, #8]	@,
	cmp	r0, #0	@,
	bne	.L683	@,
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r0, [r5, r3]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	ip, [r4, #0]	@ tmp208,* ivtmp.3002
	ldr	r2, [sp, #40]	@, %sfp
	mov	r3, r9	@, tmp308
	bic	r1, ip, #-1073741824	@, tmp208,
	ldr	r0, [sp, #48]	@, %sfp
	bl	GetSegPts	@
	ldr	lr, [sp, #24]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r9	@, tmp308
	ldr	r2, [r5, lr]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L684	@,
.L683:
	cmp	r6, #0	@ i,
	beq	.L688	@,
	ldr	ip, [sp, #68]	@, %sfp
	ldr	r2, [ip, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r2, #1	@ D.37340, <variable>.StartCodeNum,
	cmp	r1, r6	@ D.37340, i
	bgt	.L698	@,
	beq	.L699	@,
.L688:
	mov	r0, r5	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
.L691:
	add	sp, sp, #244	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L686:
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r0, [r5, r3]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	r0, [sp, #32]	@, %sfp
	strb	r7, [sp, #165]	@ D.37331, SegPacket.IsLastSeg
	mov	r3, r9	@, tmp308
	ldr	r2, [sp, #40]	@, %sfp
	str	r0, [sp, #172]	@, SegPacket.LenInByte
	ldr	r6, [r4, #0]	@ tmp284,* ivtmp.3002
	ldr	r0, [sp, #48]	@, %sfp
	bic	r1, r6, #-1073741824	@, tmp284,
	bl	GetSegPts	@
	ldr	ip, [sp, #24]	@, %sfp
	mov	r1, r9	@, tmp308
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [r5, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	ldr	r1, [sp, #36]	@, %sfp
	movw	r2, #:lower16:165984	@,
	movt	r2, #:upper16:165984	@,
	ldr	lr, [sp, #24]	@, %sfp
	mov	ip, #1	@,
	ldr	r6, [r5, r2]	@ temp.3030, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r3, [r5, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r1, r9	@, tmp308
	ldr	r2, [r5, lr]	@, <variable>.InstID
	ldr	r0, [sp, #16]	@, %sfp
	str	r6, [sp, #168]	@ temp.3030, SegPacket.PhyAddr
	str	r3, [sp, #160]	@ <variable>.StreamSegArray.pSegBufVirAddr, SegPacket.VirAddr
	str	r8, [sp, #172]	@ SecondHalfSegLen, SegPacket.LenInByte
	strb	ip, [sp, #165]	@, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L684	@
.L697:
	str	r2, [sp, #8]	@,
	bl	MEM_Phy2Vir	@
	ldrb	r6, [r0, #0]	@ zero_extendqisi2	@ tmp215,* D.37320
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp214,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ tmp218,
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ tmp221,
	orr	r3, ip, r6, asl #24	@, tmp217, tmp214, tmp215,
	orr	r0, r3, lr, asl #16	@, tmp220, tmp217, tmp218,
	orr	r2, r0, r1, asl #8	@, tmp223, tmp220, tmp221,
	bic	r6, r2, #255	@ tmp224, tmp223,
	ldr	r2, [sp, #8]	@,
	cmp	r6, #256	@ tmp224,
	beq	.L684	@,
	ldr	lr, [sp, #44]	@, %sfp
	add	r3, sp, #80	@,,
	add	r1, r3, #72	@,,
	ldr	r0, [r5, lr]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	r0, [sp, #36]	@, %sfp
	movw	ip, #:lower16:165984	@,
	movt	ip, #:upper16:165984	@,
	mov	r3, #1	@,
	ldr	r1, [r5, ip]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r2, [r5, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r6, r1, r7	@ tmp231, <variable>.StreamSegArray.SegBufPhyAddr, CurrentStartCodePhyAddr
	strb	r3, [sp, #85]	@, LastSegPacket.IsLastSeg
	add	lr, r2, r6	@ tmp234, <variable>.StreamSegArray.pSegBufVirAddr, tmp231
	str	r8, [sp, #92]	@ D.37278, LastSegPacket.LenInByte
	str	lr, [sp, #80]	@ tmp234, LastSegPacket.VirAddr
	add	r3, sp, #80	@,,
	str	r7, [sp, #88]	@ CurrentStartCodePhyAddr, LastSegPacket.PhyAddr
	ldr	r1, [r4, #0]	@ tmp238,* ivtmp.3002
	ldr	r0, [sp, #48]	@, %sfp
	ldr	r2, [sp, #40]	@, %sfp
	bic	r1, r1, #-1073741824	@, tmp238,
	bl	GetSegPts	@
	b	.L684	@
.L698:
	ldr	r0, [sp, #76]	@, %sfp
	ldr	lr, [sp, #72]	@, %sfp
	mul	r1, r0, r6	@ tmp302,, i
	mov	r0, r5	@, pScdInstance
	add	r3, r1, #1	@ tmp303, tmp302,
	ldr	r4, [lr, r3, asl #2]	@ tmp304,
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #48]	@, %sfp
	bic	r4, r4, #-1073741824	@ RawPacketLenToDelete, tmp304,
	mov	r1, r4	@, RawPacketLenToDelete
	bl	DeleteRawLen	@
	b	.L691	@
.L699:
	movw	r2, #:lower16:166020	@ tmp305,
	movt	r2, #:upper16:166020	@ tmp305,
	mov	r0, r5	@, pScdInstance
	mov	r1, r6	@, i
	ldr	r4, [r5, r2]	@ D.37347, <variable>.SmPushRaw.PushRawTotalLen
	ldr	r2, [sp, #68]	@, %sfp
	bl	SetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #48]	@, %sfp
	mov	r1, r4	@, D.37347
	bl	DeleteRawLen	@
	b	.L691	@
	.fnend
	.size	ProcessMpeg4ScdUpMsg, .-ProcessMpeg4ScdUpMsg
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
.LFB1683:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:166024	@ tmp138,
	movt	r3, #:upper16:166024	@ tmp138,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r2, [r0, r3]	@ <variable>.SmPushRaw.PushRawOverState, <variable>.SmPushRaw.PushRawOverState
	mov	r4, r0	@ pScdInstance, pScdInstance
	.pad #36
	sub	sp, sp, #36	@,,
	cmp	r2, #3	@ <variable>.SmPushRaw.PushRawOverState,
	moveq	r2, #2	@ tmp141,
	streq	r2, [r0, r3]	@ tmp141, <variable>.SmPushRaw.PushRawOverState
	mvneq	r0, #6	@ Ret,
	beq	.L702	@,
	mov	r0, #2	@ tmp143,
	str	r0, [r4, r3]	@ tmp143, <variable>.SmPushRaw.PushRawOverState
	mov	r0, sp	@,
	mov	r6, sp	@ tmp166,
	bl	ReadScdStateReg	@
	movw	r3, #:lower16:166132	@ tmp145,
	movt	r3, #:upper16:166132	@ tmp145,
	ldr	r0, [sp, #24]	@, SmStateReg.UpMsgLenInWord
	ldr	r7, [sp, #12]	@ StartCodeNumFromStateReg, SmStateReg.StartCodeNum
	ldr	r1, [r4, r3]	@, <variable>.UpMsgStepInWord
	bl	__aeabi_uidiv	@
	cmp	r0, r7	@, StartCodeNumFromStateReg
	movcc	r5, r0	@ ValidStartCodeNum,
	movcs	r5, r7	@ ValidStartCodeNum, StartCodeNumFromStateReg
	cmp	r7, r5	@ StartCodeNumFromStateReg, ValidStartCodeNum
	bhi	.L706	@,
.L703:
	mov	r0, r4	@, pScdInstance
	mov	r1, r5	@, ValidStartCodeNum
	mov	r2, sp	@,
	rsbs	r7, r5, #1	@ tmp156, ValidStartCodeNum
	movcc	r7, #0	@ tmp156
	bl	ProcessLastUnfinishedSeg	@
	cmp	r0, #0	@ Ret,
	orrne	r7, r7, #1	@,, tmp159, tmp156
	cmp	r7, #0	@ tmp159,
	bne	.L702	@,
	ldr	ip, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	ip, #2	@ <variable>.Config.VidStd,
	beq	.L704	@,
	mov	r0, r4	@, pScdInstance
	sub	r1, r5, #1	@, ValidStartCodeNum,
	mov	r2, sp	@,
	bl	ProcessNotMpeg4ScdUpMsg	@
	mov	r0, r7	@ Ret, tmp159
.L702:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L706:
	ldrsb	r1, [r4, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	cmp	r1, #1	@ <variable>.LastCfgAllRawFlag,
	moveq	r1, #0	@ tmp150,
	streqb	r1, [r4, #2]	@ tmp150, <variable>.LastCfgAllRawFlag
	b	.L703	@
.L704:
	mov	r0, r4	@, pScdInstance
	sub	r1, r5, #1	@, ValidStartCodeNum,
	mov	r2, sp	@,
	bl	ProcessMpeg4ScdUpMsg	@
	mov	r0, r7	@ Ret, tmp159
	b	.L702	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp157,
	add	r2, r0, #14	@ tmp158, SmID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp157,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, [r3, r2, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r5, r0	@ SmID, SmID
	cmp	r4, #0	@ pSmInstArray,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	bne	.L724	@,
.L708:
	mvn	r0, #0	@ D.36146,
.L713:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L724:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L708	@,
	movw	ip, #:lower16:73776	@ tmp162,
	movw	r3, #:lower16:73780	@ tmp163,
	movt	ip, #:upper16:73776	@ tmp162,
	movt	r3, #:upper16:73780	@ tmp163,
	mov	r1, #0	@ tmp159,
	str	r1, [sp, #20]	@ tmp159, TotalSrcLength
	str	r1, [sp, #28]	@ tmp159, SrcVirAddr
	str	r1, [sp, #24]	@ tmp159, SrcLength
	ldr	r8, [r4, ip]	@ D.36154, <variable>.RawPacketArray.Head
	ldr	r0, [r4, r3]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r8	@ <variable>.RawPacketArray.Tail, D.36154
	bne	.L725	@,
.L709:
	mvn	r0, #3	@ D.36146,
	b	.L713	@
.L725:
	mov	r2, #72	@ tmp167,
	add	sl, sp, #20	@ TotalSrcLength.519,,
	mla	r1, r2, r8, r4	@ tmp168, tmp167, D.36154, pSmInstArray
	mov	ip, r3	@ tmp317, tmp163
	mov	r3, r8	@ index.3100, D.36154
	mov	r0, #1	@ tmp171,
	ldr	r7, [r1, #56]	@ <variable>.Length, <variable>.Length
	str	r0, [sp, #12]	@ tmp171, RawNum
	str	r7, [sp, #20]	@ <variable>.Length,
.L710:
	mla	r1, r2, r3, r4	@ tmp187, tmp316, index.3100, pSmInstArray
	add	r0, r3, #1	@ D.38413, index.3100,
	mov	r3, r0, asl #22	@ index.3100, D.38413,
	mov	r3, r3, lsr #22	@ index.3100, index.3100,
	ldrb	r7, [r1, #100]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mla	r0, r2, r3, r4	@ tmp177, tmp316, index.3100, pSmInstArray
	cmp	r7, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L726	@,
	ldr	r7, [sp, #12]	@ RawNum, RawNum
	add	r1, r7, #1	@ D.38414, RawNum,
	str	r1, [sp, #12]	@ D.38414, RawNum
	ldr	r7, [r0, #56]	@ <variable>.Length, <variable>.Length
	ldr	r0, [sp, #20]	@ TotalSrcLength, TotalSrcLength
	add	r0, r7, r0	@ tmp181, <variable>.Length, TotalSrcLength
	str	r0, [sl, #0]	@ tmp181,* TotalSrcLength.519
	ldr	r0, [r4, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r3, r0	@ index.3100, <variable>.RawPacketArray.Tail
	beq	.L709	@,
	cmp	r1, #1024	@ D.38414,
	bls	.L710	@,
	mvn	r0, #3	@ D.36146,
	b	.L713	@
.L726:
	add	sl, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	fp, #:lower16:73800	@ tmp310,
	add	sl, sl, #72	@ pStreamSegArray, pStreamSegArray,
	movt	fp, #:upper16:73800	@ tmp310,
	add	r9, r4, #48	@ pRawPacketArray, pSmInstArray,
	mov	r0, sl	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	movw	r1, #:lower16:165988	@ tmp311,
	movt	r1, #:upper16:165988	@ tmp311,
	ldr	r2, [sp, #20]	@ TotalSrcLength.520, TotalSrcLength
	ldr	ip, [r4, r1]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	cmp	r2, ip	@ TotalSrcLength.520, <variable>.StreamSegArray.SegBufSize
	bhi	.L727	@,
	mov	r7, #72	@ tmp186,
	movw	r1, #:lower16:165984	@ tmp193,
	mla	r0, r7, r8, r4	@ tmp198, tmp186, D.36154, pSmInstArray
	movt	r1, #:upper16:165984	@ tmp193,
	ldr	r7, [r4, fp]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	movw	r3, #:lower16:73776	@ tmp212,
	ldr	fp, [r4, r1]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	r3, #:upper16:73776	@ tmp212,
	ldr	ip, [r0, #56]	@ <variable>.Length, <variable>.Length
	str	ip, [sp, #24]	@ <variable>.Length, SrcLength
	ldr	lr, [r0, #52]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [sp, #28]	@ <variable>.VirAddr, SrcVirAddr
	ldr	r2, [r0, #56]	@ SrcLength.3093, <variable>.Length
	subs	lr, r2, #0	@ tmp221, SrcLength.3093,
	movne	lr, #1	@ tmp221
	str	r2, [sp, #24]	@ SrcLength.3093, SrcLength
	ldr	r1, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	r1, [sp, #16]	@ <variable>.RawPacketArray.Head, index
	ldr	ip, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	ip, #12	@ <variable>.Config.VidStd,
	movne	lr, #0	@, tmp221,
	cmp	lr, #0	@ tmp221,
	bne	.L728	@,
.L714:
	str	fp, [r6, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, fp	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	mov	fp, #72	@ tmp229,
	mla	r3, fp, r8, r4	@ tmp230, tmp229, D.36154, pSmInstArray
	mov	r2, #1	@ tmp245,
	str	r0, [r6, #0]	@ D.36194, <variable>.VirAddr
	rsb	r8, r0, r7	@ tmp226, D.36194, TmpVirAddr
	str	r8, [r6, #12]	@ tmp226, <variable>.LenInByte
	mov	r8, #0	@ i,
	ldrd	r0, [r3, #64]	@ <variable>.Pts, tmp230,
	strd	r0, [r6, #24]	@ <variable>.Pts, pStreamSeg,
	ldrd	r0, [r3, #64]	@ <variable>.Pts, tmp230,
	strd	r0, [r6, #32]	@ <variable>.Pts, pStreamSeg,
	ldrd	r0, [r3, #80]	@ <variable>.UserTag, tmp230,
	strb	r2, [r6, #5]	@ tmp245, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@ <variable>.UserTag, pStreamSeg,
	ldrd	r0, [r3, #88]	@ <variable>.DispTime, tmp230,
	strd	r0, [r6, #48]	@ <variable>.DispTime, pStreamSeg,
	ldr	ip, [r3, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r3, #116]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	b	.L715	@
.L716:
	cmp	r7, #0	@ TmpVirAddr,
	beq	.L709	@,
	ldr	r1, [sp, #28]	@ SrcVirAddr.530, SrcVirAddr
	cmp	r1, #0	@ SrcVirAddr.530,
	beq	.L709	@,
	ldr	r2, [sp, #24]	@, SrcLength
	bl	memcpy	@
	ldr	r0, [sp, #16]	@ index, index
	ldr	r2, [sp, #24]	@ SrcLength, SrcLength
	add	r3, r0, #1	@ tmp293, index,
	ldr	r1, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mla	r0, fp, r0, r4	@ tmp285, tmp315, index, pSmInstArray
	mov	ip, r3, asl #22	@ index.535, tmp293,
	add	r1, r1, r2	@ tmp291, <variable>.LenInByte, SrcLength
	add	r7, r7, r2	@ TmpVirAddr, TmpVirAddr, SrcLength
	mov	r3, ip, lsr #22	@ index.535, index.535,
	mla	ip, fp, r3, r4	@ tmp299, tmp315, index.535, pSmInstArray
	ldrb	r2, [r0, #101]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	str	r1, [r6, #12]	@ tmp291, <variable>.LenInByte
	str	r3, [sp, #16]	@ index.535, index
	strb	r2, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	ldr	r3, [ip, #52]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r3, [sp, #28]	@ <variable>.VirAddr, SrcVirAddr
	ldr	r1, [ip, #56]	@ <variable>.Length, <variable>.Length
	str	r1, [sp, #24]	@ <variable>.Length, SrcLength
.L715:
	ldr	lr, [sp, #12]	@ RawNum, RawNum
	mov	r0, r7	@, TmpVirAddr
	cmp	r8, lr	@ i, RawNum
	add	r8, r8, #1	@ i, i,
	bcc	.L716	@,
	mov	r1, r6	@, pStreamSeg
	mov	r2, r5	@, SmID
	mov	r0, sl	@, pStreamSegArray
	bl	InsertStreamSeg	@
	mov	r0, r9	@, pRawPacketArray
	ldr	r1, [sp, #20]	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36146,
	b	.L713	@
.L727:
	mov	r0, r7	@, <variable>.is_not_last_packet_flag
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@, pRawPacketArray
	ldr	r1, [sp, #20]	@, TotalSrcLength
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L709	@,
	mov	r0, r7	@, <variable>.is_not_last_packet_flag
	movw	r1, #:lower16:.LC39	@,
	movw	r2, #1480	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #3	@ D.36146,
	b	.L713	@
.L728:
	mov	r0, r9	@, pRawPacketArray
	add	r1, sp, #12	@,,
	add	r2, sp, #28	@,,
	add	r3, sp, #24	@,,
	add	lr, sp, #16	@ tmp225,,
	str	lr, [sp, #0]	@ tmp225,
	bl	AdjustRawPacketVP6A	@
	cmp	r0, #0	@,
	beq	.L714	@,
	mvn	r0, #3	@ D.36146,
	b	.L713	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadSegStream
	.type	SM_ReadSegStream, %function
SM_ReadSegStream:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r2, r0, #14	@ tmp141, SmID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r6, r0	@ SmID, SmID
	mov	r5, r1	@ pStreamSeg, pStreamSeg
	ldr	r4, [r3, r2, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	mvneq	r7, #0	@ Ret,
	bne	.L735	@,
.L731:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L735:
	ldr	r0, [r4, #16]	@, <variable>.Config.VidStd
	add	r1, r4, #32	@, pSmInstArray,
	bl	SCDDRV_IsSCDByPass	@
	cmp	r0, #0	@,
	bne	.L736	@,
.L732:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r5	@, pStreamSeg
	add	r0, r0, #72	@,,
	bl	SCDDRV_GetStreamSeg	@
	subs	r7, r0, #0	@ Ret,
	beq	.L737	@,
.L733:
	movw	lr, #:lower16:166124	@ tmp161,
	movt	lr, #:upper16:166124	@ tmp161,
	mov	r0, r7	@, Ret
	ldr	r2, [r4, lr]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r1, r2, #1	@ tmp164, <variable>.numReadSegFail,
	str	r1, [r4, lr]	@ tmp164, <variable>.numReadSegFail
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L736:
	mov	r0, r6	@, SmID
	mov	r1, r5	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L732	@,
	movw	r1, #:lower16:.LC40	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC40	@,
	mvn	r7, #6	@ Ret,
	bl	dprint_vfmw	@
	b	.L733	@
.L737:
	movw	ip, #:lower16:166124	@ tmp159,
	movt	ip, #:upper16:166124	@ tmp159,
	mov	r0, r6	@, SmID
	mov	r1, r5	@, pStreamSeg
	str	r7, [r4, ip]	@ Ret, <variable>.numReadSegFail
	bl	SCDDRV_SaveSegStream	@
	b	.L731	@
	.fnend
	.size	SM_ReadSegStream, .-SM_ReadSegStream
	.align	2
	.global	ShowRawPacket
	.type	ShowRawPacket, %function
ShowRawPacket:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:73744	@ tmp138,
	movw	r3, #:lower16:73732	@ tmp139,
	movt	r4, #:upper16:73744	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp139,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	ldr	r3, [r0, r4]	@ D.35149, <variable>.CurShowIndex
	cmp	r3, r2	@ D.35149, <variable>.Tail
	mvneq	r0, #2	@ D.35153,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, r3, r3, asl #3	@, tmp143, D.35149, D.35149,
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r5, lr, asl #3	@,, pRawStreamArray, tmp143,
	bl	memcpy	@
	ldr	r3, [r5, r4]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	mov	r0, #0	@ D.35153,
	add	ip, r3, #1	@ tmp152, <variable>.CurShowIndex,
	mov	r2, ip, asr #31	@ tmp154, tmp152,
	mov	r2, r2, lsr #22	@ tmp155, tmp154,
	add	r1, ip, r2	@ tmp156, tmp152, tmp155
	mov	r3, r1, asl #22	@ tmp157, tmp156,
	mov	ip, r3, lsr #22	@ tmp157, tmp157,
	rsb	r1, r2, ip	@ tmp159, tmp155, tmp157
	str	r1, [r5, r4]	@ tmp159, <variable>.CurShowIndex
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ShowRawPacket, .-ShowRawPacket
	.align	2
	.global	GetFirstRawPacket
	.type	GetFirstRawPacket, %function
GetFirstRawPacket:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ pRawStreamArray, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pRawPacket, pRawPacket
	beq	.L747	@,
	movw	lr, #:lower16:73732	@ tmp141,
	movt	lr, #:upper16:73732	@ tmp141,
	mov	r1, #73728	@ tmp140,
	ldr	r0, [r3, lr]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, r1]	@ prephitmp.3166, <variable>.Head
	cmp	ip, r0	@ prephitmp.3166, <variable>.Tail
	movwne	r0, #:lower16:73740	@ tmp143,
	movtne	r0, #:upper16:73740	@ tmp143,
	moveq	r6, #0	@ prephitmp.3168,
	ldrne	r5, [r3, r0]	@ FirstRawOffset, <variable>.FirstPacketOffset
	moveq	r5, r6	@ FirstRawOffset, prephitmp.3168
	movne	r6, r5	@ prephitmp.3168, FirstRawOffset
.L744:
	movw	lr, #:lower16:73744	@ tmp144,
	movt	lr, #:upper16:73744	@ tmp144,
	mov	r0, r3	@, pRawStreamArray
	mov	r1, r4	@, pRawPacket
	str	ip, [r3, lr]	@ prephitmp.3166, <variable>.CurShowIndex
	bl	ShowRawPacket	@
	ldr	r2, [r4, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldmib	r4, {r0, r3}	@ phole ldm
	add	ip, r2, r5	@ tmp146, <variable>.PhyAddr, FirstRawOffset
	add	r6, r0, r6	@ tmp148, <variable>.VirAddr, prephitmp.3168
	str	ip, [r4, #0]	@ tmp146, <variable>.PhyAddr
	rsb	r5, r5, r3	@ tmp150, FirstRawOffset, <variable>.Length
	str	r6, [r4, #4]	@ tmp148, <variable>.VirAddr
	str	r5, [r4, #8]	@ tmp150, <variable>.Length
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L747:
	mov	r2, #73728	@ tmp139,
	mov	r6, r3	@ prephitmp.3168, pRawStreamArray
	ldr	ip, [r3, r2]	@ prephitmp.3166, <variable>.Head
	mov	r5, r3	@ FirstRawOffset, pRawStreamArray
	b	.L744	@
	.fnend
	.size	GetFirstRawPacket, .-GetFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1664:
	@ args = 12, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #100
	sub	sp, sp, #100	@,,
	add	r6, r0, #14	@, inst_id,
	add	r0, sp, #24	@,,
	str	r1, [sp, #4]	@ pSmPushRaw, %sfp
	mov	r1, #0	@,
	str	r2, [sp, #8]	@ SegStreamSize, %sfp
	mov	r2, #72	@,
	str	r3, [sp, #12]	@ pRawStreamArray, %sfp
	movw	r5, #:lower16:.LANCHOR0	@,
	str	r6, [sp, #20]	@, %sfp
	movt	r5, #:upper16:.LANCHOR0	@,
	str	r5, [sp, #16]	@, %sfp
	mov	r9, #0	@ tmp253,
	ldr	r5, [sp, #136]	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r1, [sp, #20]	@, %sfp
	ldr	fp, [r2, r1, asl #2]	@ D.36647, s_SmIIS.pSmInstArray
	mov	r1, #8192	@,
	add	r0, fp, #165888	@, D.36647,
	add	r0, r0, #368	@,,
	bl	__memzero	@
	ldr	r0, [sp, #12]	@, %sfp
	add	r1, sp, #24	@,,
	bl	GetFirstRawPacket	@
	ldr	r6, [sp, #32]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [r5, #0]	@ tmp253,* pDownMsgVirAddr
	ldr	r3, [sp, #8]	@, %sfp
	str	r9, [r5, #4]	@ tmp253,
	str	r9, [r5, #8]	@ tmp253,
	cmp	r6, r3	@ RawShowTotalLen,
	movgt	r2, #0	@, tmp261
	movle	r2, #1	@, tmp261
	ldr	sl, [sp, #4]	@, %sfp
	cmp	r2, r9	@ tmp261,
	mov	r3, r6	@ RawPacket.Length, RawShowTotalLen
	movne	r7, r9	@ j.3323, list_length
	movne	r4, r9	@ PushRawNum, list_length
	str	r9, [sl, #4]	@ tmp253, <variable>.PushRawTotalLen
	bne	.L753	@,
	b	.L819	@
.L752:
	ldr	r3, [sp, #32]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	ldr	r1, [sp, #8]	@, %sfp
	cmp	r4, r0	@ PushRawNum,
	movgt	ip, #0	@, tmp289
	movle	ip, #1	@, tmp289
	add	r6, r6, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	r1, r6	@, RawShowTotalLen
	mov	r1, r3	@ prephitmp.3223, RawPacket.Length
	movlt	ip, #0	@, tmp289,
	cmp	ip, #0	@ tmp289,
	beq	.L750	@,
.L753:
	add	r2, fp, r9, asl #3	@, tmp274, D.36647, list_length,
	cmp	r3, #0	@ RawPacket.Length,
	add	lr, r7, #1	@ j, j.3323,
	add	ip, r9, #20736	@ tmp269, list_length,
	add	r2, r2, #165888	@ tmp275, tmp274,
	ldr	r0, [sp, #12]	@, %sfp
	add	r1, sp, #24	@,,
	add	r8, lr, #1	@ j.3301, j,
	add	ip, ip, #46	@ tmp269, tmp269,
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	add	r2, r2, #372	@ tmp275, tmp275,
	ble	.L751	@,
	ldr	sl, [sp, #28]	@, RawPacket.VirAddr
	add	r9, r9, #1	@ list_length, list_length,
	str	sl, [sp, #0]	@, %sfp
	ldr	sl, [sp, #24]	@, RawPacket.PhyAddr
	add	r3, sl, r3	@ tmp263,, RawPacket.Length
	str	sl, [r5, r7, asl #2]	@,* pDownMsgVirAddr
	sub	sl, r3, #1	@ tmp266, tmp263,
	str	sl, [r5, lr, asl #2]	@ tmp266,* pDownMsgVirAddr
	add	r7, r8, #1	@ j.3323, j.3301,
	ldr	lr, [sp, #140]	@, DownMsgPhyAddr
	add	r3, lr, r7, asl #2	@, tmp268,, j.3323,
	str	r3, [r5, r8, asl #2]	@ tmp268,* pDownMsgVirAddr
	ldr	sl, [sp, #0]	@, %sfp
	str	sl, [fp, ip, asl #3]	@, <variable>.raw_msg_arr
	ldr	r3, [sp, #32]	@ RawPacket.Length, RawPacket.Length
	ldr	ip, [sp, #28]	@ RawPacket.VirAddr, RawPacket.VirAddr
	sub	lr, r3, #1	@ tmp276, RawPacket.Length,
	add	sl, ip, lr	@ tmp279, RawPacket.VirAddr, tmp276
	str	sl, [r2, #0]	@ tmp279, <variable>.raw_msg_arr
	mov	sl, #0	@,
	str	sl, [sp, #32]	@, RawPacket.Length
.L751:
	ldr	r2, [sp, #4]	@, %sfp
	str	r6, [r2, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowRawPacket	@
	cmp	r0, #0	@,
	beq	.L752	@,
	ldr	r1, [sp, #32]	@ prephitmp.3223, RawPacket.Length
.L750:
	cmp	r1, #0	@ prephitmp.3223,
	beq	.L754	@,
	ldr	sl, [sp, #4]	@, %sfp
	ldr	r2, [sl, #4]	@ D.36687, <variable>.PushRawTotalLen
	ldr	sl, [sp, #8]	@, %sfp
	sub	r3, sl, #16	@ tmp292,,
	cmp	sl, r6	@, RawShowTotalLen
	cmplt	r2, r3	@, D.36687, tmp292
	bge	.L754	@,
	cmp	r4, #1024	@ PushRawNum,
	bge	.L755	@,
	rsb	r2, r2, sl	@ D.36696, D.36687,
	cmp	r2, r1	@ D.36696, prephitmp.3223
	bgt	.L754	@,
	ldr	sl, [sp, #24]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r0, r7, #1	@ j.3311, j.3323,
	ldr	r6, [sp, #28]	@ RawPacket.VirAddr, RawPacket.VirAddr
	add	ip, r0, #1	@ j.3319, j.3311,
	add	r1, sl, r2	@ tmp300, RawPacket.PhyAddr, D.36696
	add	r3, r9, #20736	@ tmp306, list_length,
	str	sl, [r5, r7, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	sl, r1, #1	@ tmp303, tmp300,
	str	r2, [sp, #32]	@ D.36696, RawPacket.Length
	add	r3, r3, #46	@ tmp306, tmp306,
	str	sl, [r5, r0, asl #2]	@ tmp303,* pDownMsgVirAddr
	add	r7, ip, #1	@ j.3323, j.3319,
	ldr	r1, [sp, #140]	@, DownMsgPhyAddr
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	add	r2, r1, r7, asl #2	@, tmp305,, j.3323,
	str	r2, [r5, ip, asl #2]	@ tmp305,* pDownMsgVirAddr
	str	r6, [fp, r3, asl #3]	@ RawPacket.VirAddr, <variable>.raw_msg_arr
	add	r2, fp, r9, asl #3	@, tmp311, D.36647, list_length,
	ldr	sl, [sp, #32]	@ RawPacket.Length, RawPacket.Length
	movw	r3, #:lower16:166260	@ tmp309,
	ldr	r0, [sp, #28]	@ RawPacket.VirAddr, RawPacket.VirAddr
	movt	r3, #:upper16:166260	@ tmp309,
	sub	r1, sl, #1	@ tmp313, RawPacket.Length,
	add	r9, r9, #1	@ list_length, list_length,
	add	ip, r0, r1	@ tmp316, RawPacket.VirAddr, tmp313
	str	ip, [r2, r3]	@ tmp316, <variable>.raw_msg_arr
	ldr	sl, [sp, #4]	@, %sfp
	mov	r1, #0	@ tmp320,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r3, [sp, #32]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sl, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	str	r1, [sp, #32]	@ tmp320, RawPacket.Length
	add	ip, r2, r3	@ tmp319, <variable>.PushRawTotalLen, RawPacket.Length
	str	ip, [r0, #4]	@ tmp319, <variable>.PushRawTotalLen
.L755:
	sub	r0, r7, #1	@ tmp323, j.3323,
	mov	sl, #0	@ tmp324,
	movw	ip, #:lower16:166148	@ tmp321,
	movt	ip, #:upper16:166148	@ tmp321,
	str	sl, [r5, r0, asl #2]	@ tmp324,* pDownMsgVirAddr
	movw	r1, #:lower16:166140	@ tmp328,
	ldr	r7, [sp, #20]	@, %sfp
	movt	r1, #:upper16:166140	@ tmp328,
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r3, [sp, #4]	@, %sfp
	ldr	r5, [r2, r7, asl #2]	@ temp.3340, s_SmIIS.pSmInstArray
	movw	r2, #:lower16:166144	@ tmp322,
	ldr	r7, [r3, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	movt	r2, #:upper16:166144	@ tmp322,
	movw	r3, #:lower16:166136	@ tmp333,
	movt	r3, #:upper16:166136	@ tmp333,
	ldr	r0, [r5, ip]	@ <variable>.scd_previous_byte_lsb, <variable>.scd_previous_byte_lsb
	cmp	r7, #6	@ <variable>.PushRawTotalLen,
	movge	r7, #6	@ need_update_bytes,
	cmp	r7, #5	@ need_update_bytes,
	add	ip, fp, #165888	@ lsb_write, D.36647,
	str	r0, [r5, r1]	@ <variable>.scd_previous_byte_lsb, <variable>.pre_scd_previous_byte_lsb
	mov	sl, ip	@ msb_write, lsb_write
	ldr	r5, [sp, #20]	@, %sfp
	add	ip, ip, #260	@ lsb_write, lsb_write,
	ldr	r0, [sp, #16]	@, %sfp
	add	sl, sl, #256	@ msb_write, msb_write,
	movhi	r8, #4	@ lsb_need_bytes,
	ldr	r1, [r0, r5, asl #2]	@ temp.3341, s_SmIIS.pSmInstArray
	ldrh	r5, [r1, r2]	@, <variable>.scd_previous_byte_msb
	strh	r5, [r1, r3]	@ movhi	@, <variable>.pre_scd_previous_byte_msb
	movhi	r1, #2	@,
	strhi	r1, [sp, #0]	@, %sfp
	bls	.L816	@,
.L758:
	cmp	r9, #0	@ list_index
	ble	.L767	@,
	add	r6, r9, #20736	@ tmp360, list_index,
	add	r7, r6, #46	@ tmp360, tmp360,
	add	r7, fp, r7, asl #3	@, ivtmp.3262, D.36647, tmp360,
	ldr	fp, [sp, #0]	@ msb_need_bytes, %sfp
	str	r4, [sp, #0]	@ PushRawNum, %sfp
.L773:
	ldr	r1, [r7, #-4]	@ raw_packet_end_addr, <variable>.raw_msg_arr
	ldr	r2, [r7, #-8]	@ tmp364, <variable>.raw_msg_arr
	add	r4, r1, #1	@ tmp363, raw_packet_end_addr,
	rsb	r6, r2, r4	@ raw_packet_length, tmp364, tmp363
	cmp	r8, r6	@ lsb_need_bytes, raw_packet_length
	movcc	r0, r8	@ copy_length, lsb_need_bytes
	movcs	r0, r6	@ copy_length, raw_packet_length
	cmp	r8, #0	@ lsb_need_bytes,
	beq	.L768	@,
	cmp	r0, #0	@ copy_length,
	beq	.L769	@,
	ldrb	r5, [r1, #0]	@ zero_extendqisi2	@ tmp366,* raw_packet_end_addr
	mov	r3, #1	@ lsb_index,
	cmp	r0, r3	@ copy_length, lsb_index
	mvn	r2, #0	@ tmp387,
	add	r4, r2, r0	@ tmp386, tmp387, copy_length
	strb	r5, [ip, #0]	@ tmp366,* lsb_write
	and	r4, r4, r3	@ tmp388, tmp386,
	bls	.L803	@,
	cmp	r4, #0	@ tmp388,
	beq	.L770	@,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp429,* raw_packet_end_addr
	strb	r4, [ip, r3]	@ tmp429,* lsb_index
	mov	r3, #2	@ lsb_index,
	cmp	r0, r3	@ copy_length, lsb_index
	bls	.L803	@,
.L770:
	rsb	r5, r3, #0	@ tmp415, lsb_index
	add	r2, r3, #1	@ tmp389, lsb_index,
	rsb	r4, r2, #0	@ tmp418, tmp389
	ldrb	r5, [r5, r1]	@ zero_extendqisi2	@ tmp416,* raw_packet_end_addr
	strb	r5, [ip, r3]	@ tmp416,* lsb_index
	add	r3, r2, #1	@ lsb_index, tmp389,
	ldrb	r4, [r4, r1]	@ zero_extendqisi2	@ tmp419,* raw_packet_end_addr
	cmp	r0, r3	@ copy_length, lsb_index
	strb	r4, [ip, r2]	@ tmp419,
	bhi	.L770	@,
.L803:
	subs	r8, r8, r0	@ lsb_need_bytes, lsb_need_bytes, copy_length
	add	ip, ip, r0	@ lsb_write, lsb_write, copy_length
	beq	.L768	@,
.L769:
	sub	r9, r9, #1	@ list_index, list_index,
	sub	r7, r7, #8	@ ivtmp.3262, ivtmp.3262,
	cmp	r9, #0	@ list_index,
	bgt	.L773	@,
.L806:
	ldr	r4, [sp, #0]	@ PushRawNum, %sfp
.L767:
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, #0	@ D.36702,
	mov	ip, #1	@ tmp371,
	str	r4, [r3, #0]	@ PushRawNum, <variable>.PushRawNum
	ldr	r5, [sp, #4]	@, %sfp
	str	ip, [r5, #8]	@ tmp371, <variable>.PushRawOverState
.L756:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L754:
	cmp	r4, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.36702,
	bne	.L755	@,
	b	.L756	@
.L768:
	cmp	fp, #0	@ msb_need_bytes,
	beq	.L806	@,
	rsb	r6, r0, r6	@ left_length, copy_length, raw_packet_length
	rsb	r1, r0, r1	@ D.36747, copy_length, raw_packet_end_addr
	cmp	r6, fp	@ left_length, msb_need_bytes
	movcs	r6, fp	@ copy_length.3348, msb_need_bytes
	cmp	r6, #0	@ copy_length.3348,
	beq	.L771	@,
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp369,* D.36747
	mov	r3, #1	@ msb_index,
	cmp	r6, r3	@ copy_length.3348, msb_index
	mvn	r2, #0	@ tmp383,
	add	r0, r2, r6	@ tmp382, tmp383, copy_length.3348
	strb	r4, [sl, #0]	@ tmp369,* msb_write
	and	r0, r0, r3	@ tmp384, tmp382,
	bls	.L804	@,
	cmp	r0, #0	@ tmp384,
	beq	.L772	@,
	ldrb	r2, [r2, r1]	@ zero_extendqisi2	@ tmp427,* D.36747
	strb	r2, [sl, r3]	@ tmp427,* msb_index
	mov	r3, #2	@ msb_index,
	cmp	r6, r3	@ copy_length.3348, msb_index
	bls	.L804	@,
.L772:
	rsb	r5, r3, #0	@ tmp421, msb_index
	add	r2, r3, #1	@ tmp385, msb_index,
	rsb	r0, r2, #0	@ tmp424, tmp385
	ldrb	r4, [r5, r1]	@ zero_extendqisi2	@ tmp422,* D.36747
	strb	r4, [sl, r3]	@ tmp422,* msb_index
	add	r3, r2, #1	@ msb_index, tmp385,
	ldrb	r5, [r0, r1]	@ zero_extendqisi2	@ tmp425,* D.36747
	cmp	r6, r3	@ copy_length.3348, msb_index
	strb	r5, [sl, r2]	@ tmp425,
	bhi	.L772	@,
.L804:
	subs	fp, fp, r6	@ msb_need_bytes, msb_need_bytes, copy_length.3348
	add	sl, sl, r6	@ msb_write, msb_write, copy_length.3348
	beq	.L806	@,
.L771:
	mov	r8, #0	@ lsb_need_bytes,
	b	.L769	@
.L816:
	cmp	r7, #1	@ need_update_bytes,
	rsb	r8, r7, #6	@ need_shift_bytes.3342, need_update_bytes,
	beq	.L817	@,
	rsb	r3, r7, #5	@ tmp343, need_update_bytes,
	mov	r5, ip	@ lsb_write, lsb_write
	add	r6, ip, r3	@ src_index, lsb_write, tmp343
	mov	r3, #1	@ msb_need_bytes.3350,
	rsb	r6, r8, r6	@ tmp379, need_shift_bytes, src_index
	b	.L763	@
.L818:
	mov	r3, ip	@ msb_need_bytes.3350, msb_need_bytes.3349
.L763:
	ldrb	r2, [r6, r8]	@ zero_extendqisi2	@ tmp346,* need_shift_bytes
	subs	r8, r8, #1	@ need_shift_bytes, need_shift_bytes,
	rsb	r0, r3, #2	@ tmp348, msb_need_bytes.3350,
	sub	ip, r3, #1	@ msb_need_bytes.3349, msb_need_bytes.3350,
	moveq	r1, #0	@, tmp352
	movne	r1, #1	@, tmp352
	cmp	r0, #1	@ tmp348,
	movhi	r1, #0	@, tmp355
	andls	r1, r1, #1	@,, tmp355, tmp352
	cmp	r1, #0	@ tmp355,
	strb	r2, [sl, r3]	@ tmp346,* msb_need_bytes.3350
	bne	.L818	@,
	cmp	r3, #0	@
	mov	ip, r5	@ lsb_write, lsb_write
	str	r3, [sp, #0]	@, %sfp
	movne	r8, #4	@ lsb_need_bytes,
	bne	.L758	@,
	cmp	r8, #0	@ need_shift_bytes,
	rsb	r5, r7, #3	@ tmp356, need_update_bytes,
	add	r6, ip, r5	@ src_index.3345, lsb_write, tmp356
	addeq	r8, r8, #4	@ lsb_need_bytes, lsb_need_bytes,
	beq	.L758	@,
	sub	r3, r8, #1	@ tmp395, need_shift_bytes,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@ tmp357,* src_index.3345
	cmp	r3, #0	@ tmp395,
	and	r0, r3, #1	@ tmp397, tmp395,
	mov	r2, #2	@ ivtmp.3275,
	mvn	r3, #0	@ ivtmp.3276,
	strb	r1, [ip, #3]	@ tmp357,
	beq	.L802	@,
	cmp	r0, #0	@ tmp397,
	beq	.L766	@,
	ldrb	r1, [r6, #-1]	@ zero_extendqisi2	@ tmp431,
	cmp	r8, #2	@ need_shift_bytes,
	mov	r2, #1	@ ivtmp.3275,
	mvn	r3, #1	@ ivtmp.3276,
	strb	r1, [ip, #2]	@ tmp431,
	beq	.L802	@,
.L766:
	ldrb	r7, [r6, r3]	@ zero_extendqisi2	@ tmp408,* ivtmp.3276
	sub	r0, r3, #1	@ tmp399, ivtmp.3276,
	sub	r3, r0, #1	@ ivtmp.3276, tmp399,
	sub	r1, r2, #1	@ tmp398, ivtmp.3275,
	add	r5, r3, r8	@ tmp413, ivtmp.3276, need_shift_bytes
	strb	r7, [ip, r2]	@ tmp408,* ivtmp.3275
	cmp	r5, #0	@ tmp413,
	ldrb	r0, [r6, r0]	@ zero_extendqisi2	@ tmp412,
	sub	r2, r1, #1	@ ivtmp.3275, tmp398,
	strb	r0, [ip, r1]	@ tmp412,
	bne	.L766	@,
.L802:
	rsb	r8, r8, #4	@ lsb_need_bytes, need_shift_bytes,
	b	.L758	@
.L817:
	ldrb	r3, [sl, #0]	@ zero_extendqisi2	@ tmp337,* msb_write
	subs	r1, r8, #2	@ need_shift_bytes.3343, need_shift_bytes.3342,
	moveq	r8, #4	@ lsb_need_bytes,
	strb	r3, [sl, #1]	@ tmp337,
	ldrb	r5, [ip, #3]	@ zero_extendqisi2	@ tmp339,
	strb	r5, [sl, #0]	@ tmp339,* msb_write
	streq	r1, [sp, #0]	@ need_shift_bytes.3343, %sfp
	beq	.L758	@,
	ldrb	r2, [ip, #2]	@ zero_extendqisi2	@ tmp341,
	cmp	r1, #1	@ need_shift_bytes.3343,
	sub	r0, r8, #3	@ tmp390, need_shift_bytes.3342,
	sub	r3, ip, #1	@ ivtmp.3271, lsb_write,
	and	r0, r0, #1	@ tmp392, tmp390,
	strb	r2, [ip, #3]	@ tmp341,
	bls	.L801	@,
	cmp	r0, #0	@ tmp392,
	beq	.L761	@,
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp430,
	mov	r7, #2	@ polit_index,
	cmp	r1, r7	@ need_shift_bytes.3343, polit_index
	strb	r0, [r3, #3]	@ tmp430,
	sub	r3, r3, #1	@ ivtmp.3271, ivtmp.3271,
	bls	.L801	@,
.L761:
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp402,
	sub	r2, r3, #1	@ tmp394, ivtmp.3271,
	add	r7, r7, #2	@ polit_index, polit_index,
	cmp	r1, r7	@ need_shift_bytes.3343, polit_index
	strb	r0, [r3, #3]	@ tmp402,
	sub	r3, r2, #1	@ ivtmp.3271, tmp394,
	ldrb	r5, [r2, #2]	@ zero_extendqisi2	@ tmp405,
	strb	r5, [r2, #3]	@ tmp405,
	bhi	.L761	@,
.L801:
	mov	r1, #0	@,
	rsb	r8, r8, #6	@ lsb_need_bytes, need_shift_bytes.3342,
	str	r1, [sp, #0]	@, %sfp
	b	.L758	@
.L819:
	mov	r9, r2	@ list_length, tmp261
	mov	r1, r6	@ prephitmp.3223, RawShowTotalLen
	mov	r7, r2	@ j.3323, list_length
	mov	r4, r2	@ PushRawNum, list_length
	b	.L750	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	SCDDRV_InsertRawPacket
	.type	SCDDRV_InsertRawPacket, %function
SCDDRV_InsertRawPacket:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r0, r0, #14	@ tmp140, SmID,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	cmp	ip, #0	@ <variable>.PhyAddr,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r2, r0, asl #2]	@ pSmInst, s_SmIIS.pSmInstArray
	bne	.L826	@,
.L821:
	mvn	r0, #0	@ D.35113,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L826:
	ldr	r3, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L821	@,
	cmp	r4, #0	@ pSmInst,
	beq	.L821	@,
	movw	r5, #:lower16:73780	@ tmp143,
	movt	r5, #:upper16:73780	@ tmp143,
	movw	r2, #:lower16:73784	@ tmp152,
	movt	r2, #:upper16:73784	@ tmp152,
	ldr	r3, [r4, r5]	@ D.38436, <variable>.RawPacketArray.Tail
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r2, r3, #1	@ tmp144, D.38436,
	mov	r0, r2, asr #31	@ tmp146, tmp144,
	mov	r0, r0, lsr #22	@ tmp147, tmp146,
	add	r2, r2, r0	@ tmp148, tmp144, tmp147
	mov	r2, r2, asl #22	@ tmp149, tmp148,
	mov	r2, r2, lsr #22	@ tmp149, tmp149,
	rsb	r2, r0, r2	@ tmp151, tmp147, tmp149
	cmp	r2, ip	@ tmp151, <variable>.RawPacketArray.History
	mvneq	r0, #3	@ D.35113,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	ip, r4, #48	@ tmp154, pSmInst,
	mov	lr, #72	@ tmp156,
	mov	r2, lr	@, tmp156
	mla	r0, lr, r3, ip	@, tmp156, D.38436, tmp154
	bl	memcpy	@
	ldr	r0, [r4, r5]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movw	r3, #:lower16:-2147482625	@ tmp166,
	movt	r3, #:upper16:-2147482625	@ tmp166,
	add	ip, r0, #1	@ tmp164, <variable>.RawPacketArray.Tail,
	mov	r0, #0	@ D.35113,
	and	r1, ip, r3	@ tmp166, tmp164, tmp166
	cmp	r1, #0	@ tmp166,
	sublt	r1, r1, #1	@ tmp171, tmp166,
	mvnlt	r1, r1, asl #22	@ tmp172, tmp171,
	mvnlt	r1, r1, lsr #22	@ tmp172, tmp172,
	addlt	r1, r1, #1	@ tmp166, tmp172,
	str	r1, [r4, r5]	@ tmp166, <variable>.RawPacketArray.Tail
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SCDDRV_InsertRawPacket, .-SCDDRV_InsertRawPacket
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1686:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r3, r0, #14	@ tmp144, InstID,
	.pad #84
	sub	sp, sp, #84	@,,
	movw	r7, #:lower16:.LANCHOR0	@ tmp192,
	movt	r7, #:upper16:.LANCHOR0	@ tmp192,
	add	r6, sp, #8	@ tmp193,,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	ldr	r4, [r7, r3, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r6	@, tmp193
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L836	@,
	ldr	r0, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #18	@ <variable>.Config.VidStd,
	beq	.L836	@,
	add	r8, r7, r5, asl #2	@, tmp201, tmp192, InstID,
	movw	r1, #:lower16:166120	@,
	add	r2, r8, #100	@, tmp201,
	movw	r7, #:lower16:166112	@ tmp195,
	movw	r8, #:lower16:166116	@ tmp196,
	movt	r1, #:upper16:166120	@,
	movw	sl, #:lower16:g_TraceBsPeriod	@ tmp203,
	str	r2, [sp, #4]	@, %sfp
	movt	r7, #:upper16:166112	@ tmp195,
	movt	r8, #:upper16:166116	@ tmp196,
	str	r1, [sp, #0]	@, %sfp
	movt	sl, #:upper16:g_TraceBsPeriod	@ tmp203,
	b	.L837	@
.L834:
	mov	r0, r5	@, InstID
	mov	r1, r4	@, pSmInstArray
	mov	r2, r6	@, tmp193
	bl	SCDDRV_SaveRawStream	@
.L837:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L829	@,
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp193
	bl	ReadRawStreamData	@
	subs	fp, r0, #0	@ D.37447,
	bne	.L836	@,
	ldr	ip, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	lr, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	add	r9, lr, ip	@ tmp152, RawPacket.Length, <variable>.TotalRawSize
	str	r9, [r4, r7]	@ tmp152, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, r8]	@ D.37453, <variable>.LastStatTime
	cmp	r1, #0	@ D.37453,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	beq	.L831	@,
	rsb	r1, r1, r0	@ TimePeriod, D.37453, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L831	@,
	ldr	ip, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	mov	r0, ip, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@,
	str	fp, [r4, r7]	@ D.37447, <variable>.TotalRawSize
	str	r9, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	mul	r2, r1, r0	@ tmp163,,
	ldr	r0, [sp, #0]	@, %sfp
	mov	r3, r2, lsr #10	@ tmp165, tmp163,
	str	r3, [r4, r0]	@ tmp165, <variable>.BitRate
.L831:
	ldrd	r2, [sp, #24]	@ RawPacket.Pts,,
	mvn	r0, #0	@,
	mov	r1, #0	@,
	cmp	r3, r1	@ RawPacket.Pts,
	cmpeq	r2, r0	@ RawPacket.Pts,
	beq	.L838	@,
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp193
	bl	SCDDRV_InsertRawPacket	@
	cmp	r0, #0	@,
	bne	.L839	@,
.L833:
	mov	lr, #1	@ tmp174,
	strb	lr, [r4, #3]	@ tmp174, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L834	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r3, [sl, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	ip, [r1, #0]	@ tmp182, last_rec_pos_time
	rsb	r2, ip, r0	@ tmp181, tmp182, ThisTime.3400
	cmp	r2, r3	@ tmp181, g_TraceBsPeriod
	strhi	r0, [r1, #0]	@ ThisTime.3400, last_rec_pos_time
	b	.L834	@
.L838:
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp193
	mvn	r2, #0	@ tmp171,
	mvn	r3, #0	@,
	strd	r2, [sp, #24]	@ tmp171,,
	bl	SCDDRV_InsertRawPacket	@
	cmp	r0, #0	@,
	beq	.L833	@,
.L839:
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
.L836:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L829:
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC42	@,
	mov	r0, #23	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	b	.L836	@
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_SeekPtsAfterFillNewRaw
	.type	SM_SeekPtsAfterFillNewRaw, %function
SM_SeekPtsAfterFillNewRaw:
	.fnstart
.LFB1692:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r2	@ ChanID, ChanID
	mov	r6, r0	@ pRawPacketArray, pRawPacketArray
	mov	r5, r1	@ pArgs, pArgs
	mov	r0, r2	@, ChanID
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	FillRawData	@
	mov	r0, r6	@, pRawPacketArray
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	mov	r3, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	SM_SeekPtsInRawArray	@
	.fnend
	.size	SM_SeekPtsAfterFillNewRaw, .-SM_SeekPtsAfterFillNewRaw
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1693:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #14	@ tmp152, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r6, [r3, r2, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r4, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r6, #0	@ pSmInstArray,
	mov	r5, r1	@ pArgs, pArgs
	mvneq	r0, #0	@ D.37741,
	beq	.L844	@,
	add	r0, r6, #73728	@, pSmInstArray,
	add	r0, r0, #72	@,,
	bl	SM_SeekPtsInSegArray	@
	cmp	r0, #0	@,
	bne	.L863	@,
.L845:
	mov	r0, #0	@ D.37741,
.L844:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L863:
	add	r8, r6, #48	@ pRawPacketArray, pSmInstArray,
	mov	r1, #0	@,
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r8	@, pRawPacketArray
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	mov	r3, #1	@,
	bl	SM_SeekPtsInRawArray	@
	cmp	r0, #0	@,
	beq	.L845	@,
	movw	ip, #:lower16:73776	@ tmp155,
	movw	r7, #:lower16:73780	@ tmp156,
	movt	ip, #:upper16:73776	@ tmp155,
	movt	r7, #:upper16:73780	@ tmp156,
	ldrd	r2, [r5, #16]	@ RawNum, pArgs,
	ldr	r1, [r6, ip]	@ D.37749, <variable>.RawPacketArray.Head
	ldr	r6, [r6, r7]	@ D.37750, <variable>.RawPacketArray.Tail
	cmp	r1, r6	@ D.37749, D.37750
	addgt	r6, r6, #1024	@ tmp157, D.37750,
	rsb	r6, r1, r6	@ iftmp.638, D.37749, tmp157
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r7, r3	@ RawNumInVfmw, RawNum
	cmpeq	r6, r2	@ RawNumInVfmw, RawNum
	bcs	.L864	@,
	subs	r6, r2, r6	@ RawNumToSeek, RawNum, RawNumInVfmw
	sbc	r7, r3, r7	@ RawNumToSeek, RawNum, RawNumInVfmw
	movw	r2, #1023	@ tmp160,
	mov	r3, #0	@,
	and	r2, r2, r6	@ tmp159, tmp160, RawNumToSeek
	and	r3, r3, r7	@,, RawNumToSeek
	mov	lr, r6, lsr #10	@ tmp168, RawNumToSeek,
	orrs	r1, r2, r3	@, tmp159
	orr	r3, lr, r7, asl #22	@, tmp176, tmp168, RawNumToSeek,
	addne	r3, r3, #1	@ SeekTime, tmp176,
	add	r7, r3, #1	@ D.37770, SeekTime,
	cmp	r7, #0	@ D.37770,
	ble	.L851	@,
	mov	r0, r8	@, pRawPacketArray
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	and	sl, r3, #1	@ tmp174, SeekTime,
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L845	@,
	mov	r6, #1	@ i,
	cmp	r6, r7	@ i, D.37770
	bge	.L851	@,
	cmp	sl, #0	@ tmp174,
	beq	.L852	@,
	mov	r0, r8	@, pRawPacketArray
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L845	@,
	mov	r6, #2	@ i,
	cmp	r6, r7	@ i, D.37770
	blt	.L852	@,
	b	.L851	@
.L865:
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L845	@,
	cmp	r6, r7	@ i, D.37770
	bge	.L851	@,
.L852:
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	mov	r0, r8	@, pRawPacketArray
	add	r6, r6, #1	@ tmp175, i,
	bl	SM_SeekPtsAfterFillNewRaw	@
	add	r6, r6, #1	@ i, tmp175,
	mov	r1, r5	@, pArgs
	mov	r2, r4	@, ChanID
	cmp	r0, #0	@,
	mov	r0, r8	@, pRawPacketArray
	bne	.L865	@,
	b	.L845	@
.L851:
	mvn	r0, #1	@ D.37741,
	b	.L844	@
.L864:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	strd	r6, [sp]	@ RawNumInVfmw,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.37741,
	b	.L844	@
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	WriteCabacTabDsp
	.type	WriteCabacTabDsp, %function
WriteCabacTabDsp:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L869	@,
	movw	r1, #:lower16:g_CabacMN	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:g_CabacMN	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L869:
	movw	r1, #:lower16:.LC44	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC44	@,
	mov	r2, #58	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	SCDDRV_StartSCD
	.type	SCDDRV_StartSCD, %function
SCDDRV_StartSCD:
	.fnstart
.LFB1665:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r5, #:lower16:166068	@ tmp145,
	movt	r5, #:upper16:166068	@ tmp145,
	movw	ip, #:lower16:166032	@ tmp142,
	movw	r3, #:lower16:166036	@ tmp143,
	movt	ip, #:upper16:166032	@ tmp142,
	movt	r3, #:upper16:166036	@ tmp143,
	mov	r4, r0	@ pScdInstance, pScdInstance
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r0, [r0, r5]	@, <variable>.InstID
	mov	r6, r1	@ pSmCtrlReg, pSmCtrlReg
	mov	r8, r2	@ SegStreamSize, SegStreamSize
	ldr	r9, [r4, ip]	@ DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	add	r7, r4, #165888	@ pSmPushRaw, pScdInstance,
	ldr	sl, [r4, r3]	@ pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	bl	VCTRL_IsEsBufEnable	@
	add	r7, r7, #128	@ pSmPushRaw, pSmPushRaw,
	cmp	r0, #0	@,
	beq	.L874	@,
.L871:
	mov	r0, r7	@, pSmPushRaw
	mov	r1, #12	@,
	bl	__memzero	@
	movw	r5, #:lower16:166068	@ tmp150,
	ldr	ip, [r6, #44]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	movt	r5, #:upper16:166068	@ tmp150,
	mov	r1, r7	@, pSmPushRaw
	mov	r2, r8	@, SegStreamSize
	ldr	r0, [r4, r5]	@ <variable>.InstID, <variable>.InstID
	add	r3, r4, #48	@, pScdInstance,
	str	sl, [sp, #0]	@ pDownMsgVirAddr,
	stmib	sp, {r9, ip}	@ phole stm
	bl	WriteScdMsg	@
	subs	r7, r0, #0	@ Ret,
	bne	.L872	@,
	ldr	r0, [r4, r5]	@, <variable>.InstID
	mov	r1, r6	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L872:
	mov	r0, r7	@, Ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L874:
	ldr	r2, [r4, r5]	@, <variable>.InstID
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	b	.L871	@
	.fnend
	.size	SCDDRV_StartSCD, .-SCDDRV_StartSCD
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #88
	sub	sp, sp, #88	@,,
	add	r5, sp, #20	@ tmp178,,
	movw	r3, #:lower16:166164	@ tmp157,
	add	r2, r5, #4	@ tmp179, tmp178,
	movt	r3, #:upper16:166164	@ tmp157,
	add	r1, r0, #73728	@, pScdInstance,
	mov	ip, #0	@ tmp136,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	add	r1, r1, #72	@,,
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	add	lr, sp, #76	@ tmp160,,
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	add	r6, sp, #80	@ tmp161,,
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2], #4	@ tmp136, ScdCtrlReg
	str	ip, [r2, #0]	@ tmp136, ScdCtrlReg
	ldr	r2, [r0, r3]	@ <variable>.last_unfinished_seg_size, <variable>.last_unfinished_seg_size
	add	r0, r0, #48	@, pScdInstance,
	add	r3, sp, #84	@,,
	str	lr, [sp, #0]	@ tmp160,
	str	r6, [sp, #4]	@ tmp161,
	add	lr, sp, #72	@ tmp162,,
	str	ip, [sp, #84]	@ tmp136, RawStreamSize
	str	ip, [sp, #80]	@ tmp136, FreeSegSlotNum
	str	ip, [sp, #76]	@ tmp136, FreeSegBufSize
	str	lr, [sp, #8]	@ tmp162,
	str	ip, [sp, #72]	@ tmp136, isFreeSegBufSizeFixed
	str	ip, [sp, #20]	@ tmp136, ScdCtrlReg
	bl	SCDDRV_CheckConditionOfStartSCD	@
	subs	r6, r0, #0	@ Ret,
	bne	.L876	@,
	ldr	r0, [sp, #72]	@ isFreeSegBufSizeFixed, isFreeSegBufSizeFixed
	cmp	r0, #0	@ isFreeSegBufSizeFixed,
	bne	.L879	@,
.L877:
	movw	r3, #:lower16:166132	@ tmp167,
	movt	r3, #:upper16:166132	@ tmp167,
	ldr	r2, [sp, #80]	@ FreeSegSlotNum, FreeSegSlotNum
	movw	r0, #:lower16:166056	@ tmp164,
	ldr	r1, [r4, r3]	@ <variable>.UpMsgStepInWord, <variable>.UpMsgStepInWord
	movt	r0, #:upper16:166056	@ tmp164,
	movw	r6, #:lower16:166052	@ tmp166,
	movt	r6, #:upper16:166052	@ tmp166,
	str	r2, [r4, r0]	@ FreeSegSlotNum, <variable>.BufAddrCfg.UpMsgNum
	mov	r0, r4	@, pScdInstance
	mul	lr, r2, r1	@ tmp168, FreeSegSlotNum, <variable>.UpMsgStepInWord
	mov	r1, r5	@, tmp178
	mov	ip, lr, asl #2	@ tmp171, tmp168,
	str	ip, [r4, r6]	@ tmp171, <variable>.BufAddrCfg.UpMsgSize
	bl	SCDDRV_SetCtrlReg	@
	mov	r0, r4	@, pScdInstance
	mov	r1, r5	@, tmp178
	ldr	r2, [sp, #76]	@, FreeSegBufSize
	bl	SCDDRV_StartSCD	@
	subs	r6, r0, #0	@ Ret,
	beq	.L880	@,
.L876:
	mov	r0, r6	@, Ret
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L880:
	mov	r0, r4	@, pScdInstance
	ldr	r1, [sp, #84]	@, RawStreamSize
	ldr	r2, [sp, #76]	@, FreeSegBufSize
	bl	SCDDRV_RecordStartState	@
	b	.L876	@
.L879:
	mov	r0, r4	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
	b	.L877	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp172,
	movt	r4, #:upper16:.LANCHOR0	@ tmp172,
	mov	r5, r0	@ pNextInstId, pNextInstId
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, #80]	@ s_eScdDrvSleepStage.648, s_eScdDrvSleepStage
	cmp	r3, #1	@ s_eScdDrvSleepStage.648,
	moveq	r3, #2	@ tmp144,
	mvneq	r0, #2	@ D.37872,
	streq	r3, [r4, #80]	@ tmp144, s_eScdDrvSleepStage
	beq	.L883	@,
	cmp	r3, #2	@ s_eScdDrvSleepStage.648,
	bne	.L889	@,
.L884:
	mvn	r0, #2	@ D.37872,
.L883:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L889:
	mov	r0, #0	@,
	bl	SCDDRV_CanNotSelectInst	@
	cmp	r0, #0	@,
	bne	.L884	@,
	ldr	r6, [r4, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:166128	@ tmp146,
	movt	ip, #:upper16:166128	@ tmp146,
	ldr	r1, [r6, ip]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	ldrh	r3, [r6, #2]	@ tmp152,
	rsb	r2, r1, r0	@ tmp147, <variable>.LastSCDStartTime,
	cmp	r2, #199	@ tmp147,
	cmpls	r3, #1	@, tmp152,
	movne	r2, #0	@, tmp156
	moveq	r2, #1	@, tmp156
	beq	.L884	@,
	ldrsb	r0, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r0, #1	@ <variable>.SegFullFlag,
	strneb	r2, [r6, #1]	@ tmp156, <variable>.IsCounting
	beq	.L890	@,
.L886:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	movne	r3, #0	@, tmp160
	moveq	r3, #1	@, tmp160
	cmp	r0, #0	@ Ret,
	strb	r3, [r6, #0]	@ tmp160, <variable>.SegFullFlag
	bne	.L884	@,
	str	r0, [r5, #0]	@ Ret,* pNextInstId
	mov	r0, #0	@,
	ldr	r2, [r4, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	movw	lr, #3460	@ tmp170,
	cmp	r2, #0	@ pSmInstArray,
	movwne	r3, #:lower16:166072	@ tmp164,
	movtne	r3, #:upper16:166072	@ tmp164,
	movne	r1, #1	@ tmp165,
	strne	r1, [r2, r3]	@ tmp165, <variable>.Mode
	mov	r1, #1	@,
	ldr	r2, .L891	@,
	ldr	r3, .L891+4	@,
	str	lr, [sp, #0]	@ tmp170,
	bl	RecordPOS	@
	mov	r0, #0	@ D.37872,
	b	.L883	@
.L890:
	mov	r0, r6	@, pSmInstArray
	bl	SCDDRV_ProcessSegFull	@
	b	.L886	@
.L892:
	.align	2
.L891:
	.word	.LANCHOR0+104
	.word	.LANCHOR1+60
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, #0	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp161,
	movw	r5, #:lower16:166072	@ tmp162,
	movt	r4, #:upper16:.LANCHOR0	@ tmp161,
	movt	r5, #:upper16:166072	@ tmp162,
	mov	r0, r3	@ NextInstID.659, tmp140
	str	r3, [sp, #4]	@ tmp140, NextInstID
	b	.L895	@
.L894:
	ldr	r0, [sp, #4]	@ NextInstID.3572, NextInstID
	add	r0, r0, #1	@ NextInstID.659, NextInstID.3572,
	str	r0, [sp, #4]	@ NextInstID.659, NextInstID
	cmp	r0, #0	@ NextInstID.659,
	bgt	.L901	@,
.L895:
	add	r1, r0, #14	@ tmp142, NextInstID.659,
	ldr	r3, [r4, r1, asl #2]	@ D.37958, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.37958,
	beq	.L894	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L894	@,
	bl	FillRawData	@
	ldr	r0, [sp, #4]	@ NextInstID.3572, NextInstID
	add	r0, r0, #1	@ NextInstID.659, NextInstID.3572,
	str	r0, [sp, #4]	@ NextInstID.659, NextInstID
	cmp	r0, #0	@ NextInstID.659,
	ble	.L895	@,
.L901:
	ldr	ip, [r4, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L896	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L902	@,
.L899:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L896:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #76]	@ D.37974, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.37974
	strcc	r0, [r4, #76]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L899	@,
	rsb	r1, r3, r0	@ tmp155, D.37974, CurTime
	cmp	r1, #2000	@ tmp155,
	bls	.L899	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #68]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp158,
	str	r2, [r4, #72]	@ tmp158, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L899	@
.L902:
	ldr	lr, [sp, #4]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp151,
	str	r3, [r4, #72]	@ tmp151, s_SmIIS.SCDState
	str	lr, [r4, #68]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #76]	@, s_SmIIS.LastProcessTime
	b	.L899	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	b	OSAL_GiveEvent	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r0, #:lower16:g_TaskLock	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:269731904	@,
	movt	r0, #:upper16:269731904	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L914	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp192,
	movt	r4, #:upper16:.LANCHOR0	@ tmp192,
	mov	r1, #1	@,
	ldr	r2, [r4, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldreq	r5, [r4, #68]	@ prephitmp.3616, s_SmIIS.ThisInstID
	bne	.L915	@,
	add	ip, r5, #14	@ tmp165, prephitmp.3616,
	ldr	lr, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r0, [r4, ip, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L916	@,
.L910:
	ldr	r3, [r3, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L917	@,
.L911:
	mov	r0, r5	@, prephitmp.3616
	bl	SM_GiveThreadEvent	@
.L914:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L913:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L915:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #68]	@ prephitmp.3616, s_SmIIS.ThisInstID
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp157,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp157,
	ldr	lr, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	add	ip, r4, r5, asl #2	@, tmp153, tmp192, prephitmp.3616,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #108]	@ tmp156, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp155, tmp156, CurTimeInMs
	cmp	r1, r3	@ tmp155, g_TraceBsPeriod
	strhi	r0, [ip, #108]	@ CurTimeInMs, last_rec_pos_time
	add	ip, r5, #14	@ tmp165, prephitmp.3616,
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r0, [r4, ip, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	bne	.L910	@,
.L916:
	mov	r2, #0	@ tmp176,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r3, #72]	@ tmp176, s_SmIIS.SCDState
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L913	@
.L917:
	movw	lr, #:lower16:166072	@ tmp180,
	movt	lr, #:upper16:166072	@ tmp180,
	ldr	r1, [r0, lr]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #1	@ <variable>.Mode,
	beq	.L918	@,
.L912:
	add	r0, sp, #4	@,,
	mov	ip, #0	@ tmp183,
	str	ip, [r4, #72]	@ tmp183, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp182,
	movt	r4, #:upper16:.LANCHOR0	@ tmp182,
	cmp	r0, #0	@,
	bne	.L911	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp188,
	str	r2, [r4, #72]	@ tmp188, s_SmIIS.SCDState
	str	r0, [r4, #68]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #76]	@, s_SmIIS.LastProcessTime
	b	.L911	@
.L918:
	bl	ProcessScdReturn	@
	b	.L912	@
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r4, sp, #4	@ tmp144,,
	mov	r5, r0	@ SmID, SmID
	add	r5, r5, #14	@ tmp137, SmID,
	mov	r0, r4	@, tmp144
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, r5, asl #2]	@ D.36008, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36008,
	beq	.L920	@,
	ldr	r2, [r3, #24]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L920	@,
	movw	r0, #:lower16:166072	@ tmp139,
	movt	r0, #:upper16:166072	@ tmp139,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp142,
	streq	r1, [r3, r0]	@ tmp142, <variable>.Mode
.L920:
	mov	r0, r4	@, tmp144
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	SM_Start, .-SM_Start
	.align	2
	.global	WriteHexFile
	.type	WriteHexFile, %function
WriteHexFile:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #:lower16:.LANCHOR0	@ tmp204,
	.pad #44
	sub	sp, sp, #44	@,,
	movt	r7, #:upper16:.LANCHOR0	@ tmp204,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r0, #20	@,
	mov	r4, #0	@ tmp151,
	movw	r3, #:lower16:269729792	@ tmp153,
	str	r4, [sp, #36]	@ tmp151, dataInt
	movt	r3, #:upper16:269729792	@ tmp153,
	str	r3, [r7, #84]	@ tmp153, s_RegPhyBaseAddr
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L936	@,
	mov	r1, sp	@,
	bic	sl, r1, #8128	@ tmp155,,
	bic	r0, sl, #63	@ tmp155, tmp155,
	cmp	r5, #6	@ eVidStd,
	ldr	r2, [r0, #8]	@, <variable>.addr_limit
	str	r2, [sp, #20]	@, %sfp
	str	r4, [r0, #8]	@ tmp151, <variable>.addr_limit
	beq	.L937	@,
	cmp	r5, #0	@ eVidStd,
	beq	.L938	@,
	mov	r2, r5	@, eVidStd
	mov	r0, r4	@, tmp151
	movw	r1, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mov	sl, r4	@ fp, tmp151
.L926:
	mov	fp, sp	@,
	bic	r5, fp, #8128	@ tmp170,,
	bic	r8, r5, #63	@ tmp170, tmp170,
	add	r9, sp, #40	@,,
	mov	r4, #0	@ tmp172,
	mov	r2, #0	@ tmp173,
	str	r4, [r8, #8]	@ tmp172, <variable>.addr_limit
	mov	r5, r4	@ calbakBaseaddr, tmp172
	mov	r3, #0	@,
	mov	r4, #10	@ ivtmp.3681,
	strd	r2, [r9, #-16]!	@ tmp173,,
	add	fp, sp, #36	@ tmp209,,
	str	r9, [sp, #4]	@, %sfp
	b	.L929	@
.L931:
	ldrd	r8, [sp, #8]	@,,
	strd	r8, [sp, #24]	@,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L935	@,
	ldr	ip, [r7, #88]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #36]	@, dataInt
	add	r0, r5, ip	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L929:
	mov	r1, r6	@, data
	mov	r2, #10	@,
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, sl	@, fp
	bl	vfs_read	@
	mov	r8, r4	@, ivtmp.3681
	mov	r9, r8, asr #31	@
	strd	r8, [sp, #8]	@,,
	movw	r1, #:lower16:.LC54	@,
	mov	r2, fp	@, tmp209
	movt	r1, #:upper16:.LC54	@,
	add	r4, r4, #10	@ ivtmp.3681, ivtmp.3681,
	subs	r9, r0, #0	@ D.35014,
	mov	r0, r6	@, data
	bne	.L931	@,
	mov	r1, r9	@, D.35014
	mov	r0, sl	@, fp
	bl	filp_close	@
	ldr	r8, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #96]	@ g_hex_len, g_hex_len
	mov	r0, sp	@,
	bic	r3, r0, #8128	@ tmp182,,
	add	r0, r8, #264	@, s_RegPhyBaseAddr,
	ldr	r8, [sp, #20]	@, %sfp
	bic	ip, r3, #63	@ tmp182, tmp182,
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r8, [ip, #8]	@, <variable>.addr_limit
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #88]	@, g_hex_base_addr
	add	r0, r2, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r9	@, D.35014
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L932:
	movw	r0, #:lower16:269730052	@,
	movt	r0, #:upper16:269730052	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L932	@,
.L935:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L933:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L938:
	movw	r0, #:lower16:.LC50	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC50	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L926	@,
	movw	r0, #:lower16:.LC51	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC51	@,
	movw	r2, #438	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
	b	.L927	@
.L937:
	movw	r0, #:lower16:.LC48	@,
	mov	r1, r4	@, tmp151
	movt	r0, #:upper16:.LC48	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L926	@,
	mov	r1, r4	@, tmp151
	movw	r0, #:lower16:.LC49	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC49	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
.L927:
	cmn	sl, #4096	@ fp,
	bls	.L926	@,
	mov	r2, r5	@, eVidStd
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L933	@
.L936:
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	b	.L933	@
	.fnend
	.size	WriteHexFile, .-WriteHexFile
	.global	s_RegPhyBaseAddr
	.global	g_pSmIIS
	.global	g_hex_base_vir_addr
	.global	g_hex_base_addr
	.global	g_hex_len
	.global	s_SmIIS
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35682, %object
	.size	__func__.35682, 17
__func__.35682:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	__func__.35216, %object
	.size	__func__.35216, 16
__func__.35216:
	.ascii	"DeleteRawPacket\000"
	.type	__func__.35270, %object
	.size	__func__.35270, 24
__func__.35270:
	.ascii	"DeleteRawPacketInBuffer\000"
	.type	__func__.37863, %object
	.size	__func__.37863, 18
__func__.37863:
	.ascii	"SM_DoNextInstance\000"
	.data
	.align	2
	.type	g_pSmIIS, %object
	.size	g_pSmIIS, 4
g_pSmIIS:
	.word	s_SmIIS
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"***Print Scd State Reg\012\000"
.LC1:
	.ascii	"Scdover = %d \012\000"
	.space	1
.LC2:
	.ascii	"ScdInt = %d \012\000"
	.space	2
.LC3:
	.ascii	"ShortScdNum = %d \012\000"
	.space	1
.LC4:
	.ascii	"ScdNum = %d \012\000"
	.space	2
.LC5:
	.ascii	"ScdRollAddr = %0x \012\000"
.LC6:
	.ascii	"SrcEaten = %d \012\000"
.LC7:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC8:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC9:
	.ascii	"0x%02x,\000"
.LC10:
	.ascii	"\012\000"
	.space	2
.LC11:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC12:
	.ascii	"Array out of bound in function %s\012\000"
	.space	1
.LC13:
	.ascii	"DelRaw err PacketNum = %d, DelNum = %d\012\000"
.LC14:
	.ascii	"%s release RawPhyAddr = 0x%x,Len = %d\012\000"
	.space	1
.LC15:
	.ascii	"line: %d Get SmID fail!\000"
.LC16:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC17:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC18:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC19:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC20:
	.ascii	"UpLen = %x\012\000"
.LC21:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC22:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC23:
	.ascii	"BufferIni = %x\012\000"
.LC24:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC25:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC26:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC27:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC28:
	.ascii	"line: %d s_SmIIS.pSmInstArray[%d] is NULL\012\000"
	.space	1
.LC29:
	.ascii	"SmID = %d is not expected!\012\000"
.LC30:
	.ascii	"%s release RawPhyAddr = 0x%x, Len = %d\012\000"
.LC31:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC32:
	.ascii	"Line: %d\012\000"
	.space	2
.LC33:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC34:
	.ascii	"line: %d, pScdInstance is NULL!\012\000"
	.space	3
.LC35:
	.ascii	"scd buffer is full, reset scd!\012\000"
.LC36:
	.ascii	"(%d ms) not release stream seg, release anyway!\012"
	.ascii	"\000"
	.space	3
.LC37:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC38:
	.ascii	"Raw packet TOO BIG! Can't copy to seg! Len: 0x%x\012"
	.ascii	"\000"
	.space	2
.LC39:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC40:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC41:
	.ascii	"!!!push raw err!!!\012\000"
.LC42:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC43:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC44:
	.ascii	"Line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC45:
	.ascii	"InstId = %d, es buf have been released!\012\000"
	.space	3
.LC46:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC47:
	.ascii	"no memory OSAL_KMALLOC error!\012\000"
	.space	1
.LC48:
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC49:
	.ascii	"/system/lib/modules/hi_vfmw_avsp.bin\000"
	.space	3
.LC50:
	.ascii	"/kmod/hi_vfmw_h264.bin\000"
	.space	1
.LC51:
	.ascii	"/system/lib/modules/hi_vfmw_h264.bin\000"
	.space	3
.LC52:
	.ascii	"eVidStd = %d not have DSP code\012\000"
.LC53:
	.ascii	"Cannot open DSP code for eVidStd(%d)\012\000"
	.space	2
.LC54:
	.ascii	"%8x\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_SmIIS, %object
	.size	s_SmIIS, 80
s_SmIIS:
	.space	80
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	s_RegPhyBaseAddr, %object
	.size	s_RegPhyBaseAddr, 4
s_RegPhyBaseAddr:
	.space	4
	.type	g_hex_base_addr, %object
	.size	g_hex_base_addr, 4
g_hex_base_addr:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	g_hex_len, %object
	.size	g_hex_len, 4
g_hex_len:
	.space	4
	.type	last_rec_pos_time.37424, %object
	.size	last_rec_pos_time.37424, 4
last_rec_pos_time.37424:
	.space	4
	.type	LastRecPosTime.37860, %object
	.size	LastRecPosTime.37860, 4
LastRecPosTime.37860:
	.space	4
	.type	last_rec_pos_time.37910, %object
	.size	last_rec_pos_time.37910, 4
last_rec_pos_time.37910:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
