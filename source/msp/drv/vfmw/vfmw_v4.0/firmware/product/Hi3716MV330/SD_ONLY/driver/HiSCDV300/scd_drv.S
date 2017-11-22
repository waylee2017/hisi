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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
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
	ldr	r3, [r3, #56]	@ D.34370, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.34370,
	beq	.L2	@,
	add	r1, r3, #48	@ tmp138, D.34370,
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
	mvn	r0, #3	@ D.34467,
	bx	lr	@
.L12:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #56]	@ D.34469, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.34469,
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
	mvn	r0, #0	@ D.34515,
	bx	lr	@
.L18:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.34516, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.34516, <variable>.Tail
	mvneq	r0, #2	@ D.34515,
	bxeq	lr	@
	add	ip, r2, r2, asl #3	@, tmp146, D.34516, D.34516,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.34515,
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
	mvneq	r0, #0	@ D.34535,
	bxeq	lr	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.34535,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	bx	lr	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	bne	.L38	@,
.L25:
	mvn	r0, #0	@ D.34557,
.L31:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L38:
	movw	r3, #:lower16:.LANCHOR0	@ tmp185,
	movt	r3, #:upper16:.LANCHOR0	@ tmp185,
	ldr	r2, [r3, #56]	@ prephitmp.812, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ prephitmp.812,
	beq	.L25	@,
	add	ip, r2, #48	@ tmp155, prephitmp.812,
	cmp	r0, ip	@ pRawStreamArray, tmp155
	bne	.L25	@,
	movw	ip, #:lower16:73732	@ tmp157,
	movt	ip, #:upper16:73732	@ tmp157,
	mov	r4, #73728	@ tmp156,
	ldr	ip, [r0, ip]	@ D.34563, <variable>.Tail
	ldr	r4, [r0, r4]	@ D.34562, <variable>.Head
	cmp	r4, ip	@ D.34562, D.34563
	addgt	ip, ip, #1024	@ tmp158, D.34563,
	rsb	ip, r4, ip	@ PacketNum, D.34562, tmp158
	cmp	ip, r1	@ PacketNum, DelNum
	bcc	.L25	@,
	tst	r1, #1	@ DelNum,
	movw	ip, #:lower16:73796	@ tmp187,
	movw	r6, #:lower16:.LANCHOR0	@ tmp188,
	movt	ip, #:upper16:73796	@ tmp187,
	movt	r6, #:upper16:.LANCHOR0	@ tmp188,
	mov	r5, #0	@ i,
	bne	.L29	@,
	add	r5, r4, r4, asl #3	@, tmp211, j, j,
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	r7, r5, #1	@ tmp212, tmp211,
	add	r4, r4, #1	@ D.34579, j,
	mov	r5, #1	@ i,
	cmp	r1, r5	@ DelNum, i
	ldr	r7, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r4, r4, asl #22	@ j, D.34579,
	rsb	r7, r7, r8	@ tmp215, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp215, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r3, #56]	@ D.34573, s_SmIIS.pSmInstArray
	mov	r4, r4, lsr #22	@ j, j,
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r7, r7, r7, asr #31	@ tmp219, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp219, <variable>.RawPacketArray.RawTotalSize
	ldrhi	r2, [r6, #56]	@ prephitmp.812, s_SmIIS.pSmInstArray
	bhi	.L29	@,
	b	.L28	@
.L39:
	ldr	r2, [r6, #56]	@ prephitmp.812, s_SmIIS.pSmInstArray
	ldr	r7, [r0, r8, asl #3]	@ <variable>.Length, <variable>.Length
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	rsb	r7, r7, r8	@ tmp202, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp202, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r3, #56]	@ D.34573, s_SmIIS.pSmInstArray
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r8, r7, r7, asr #31	@ tmp206, <variable>.RawPacketArray.RawTotalSize
	str	r8, [r2, ip]	@ tmp206, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r6, #56]	@ prephitmp.812, s_SmIIS.pSmInstArray
.L29:
	add	r7, r4, r4, asl #3	@, tmp163, j, j,
	add	r4, r4, #1	@ D.34579, j,
	add	r7, r7, #1	@ tmp164, tmp163,
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r4, r4, asl #22	@ j, D.34579,
	add	r5, r5, #1	@ tmp192, i,
	ldr	r7, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r1, r5	@ DelNum, tmp192
	add	r5, r5, #1	@ i, tmp192,
	rsb	r7, r7, r8	@ tmp167, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	mov	r8, r4, lsr #22	@ j, j,
	str	r7, [r2, ip]	@ tmp167, <variable>.RawPacketArray.RawTotalSize
	add	r7, r8, #1	@ D.34579, j,
	ldr	r2, [r3, #56]	@ D.34573, s_SmIIS.pSmInstArray
	add	r4, r8, r8, asl #3	@, tmp198, j, j,
	add	r8, r4, #1	@ tmp199, tmp198,
	mov	r4, r7, asl #22	@ j, D.34579,
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r4, r4, lsr #22	@ j, j,
	bic	r7, r7, r7, asr #31	@ tmp172, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp172, <variable>.RawPacketArray.RawTotalSize
	bhi	.L39	@,
.L28:
	mov	r3, #73728	@ tmp175,
	ldr	r2, [r0, r3]	@ <variable>.Head, <variable>.Head
	add	ip, r1, r2	@ D.34582, DelNum, <variable>.Head
	str	ip, [r0, r3]	@ D.34582, <variable>.Head
	cmp	ip, #1024	@ D.34582,
	mov	r1, #0	@ tmp183,
	subge	ip, ip, #1024	@ tmp181, D.34582,
	strge	ip, [r0, r3]	@ tmp181, <variable>.Head
	movw	r3, #:lower16:73740	@ tmp182,
	movt	r3, #:upper16:73740	@ tmp182,
	str	r1, [r0, r3]	@ tmp183, <variable>.FirstPacketOffset
	mov	r0, r1	@ D.34557, tmp183
	b	.L31	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	GetRawNumOffset
	.type	GetRawNumOffset, %function
GetRawNumOffset:
	.fnstart
.LFB1613:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	ip, r0, #1	@ tmp153, pRawStreamArray
	movcc	ip, #0	@ tmp153
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	orrs	ip, ip, r1, lsr #31	@,, tmp153, RawPacketLength,
	mvnne	r0, #0	@ D.34651,
	bne	.L42	@,
	movw	r4, #:lower16:73732	@ tmp164,
	movt	r4, #:upper16:73732	@ tmp164,
	mov	r8, #73728	@ tmp158,
	movw	ip, #:lower16:73740	@ tmp163,
	ldr	r7, [r0, r8]	@ i, <variable>.Head
	movt	ip, #:upper16:73740	@ tmp163,
	ldr	r8, [r0, r4]	@ <variable>.Tail, <variable>.Tail
	ldr	r4, [r0, ip]	@ D.34654, <variable>.FirstPacketOffset
	subs	r8, r8, r7	@ TotalRawNum, <variable>.Tail, i
	add	r5, r7, r7, asl #3	@, tmp161, i, i,
	addmi	r8, r8, #1024	@ TotalRawNum, TotalRawNum,
	add	ip, r5, #1	@ tmp162, tmp161,
	add	r8, r8, r7	@ LastRawPacketIndex, TotalRawNum, i
	mov	r5, r7	@ prephitmp.845, i
	cmp	r8, r7	@ LastRawPacketIndex, i
	ldr	ip, [r0, ip, asl #3]	@ D.34653, <variable>.Length
	bls	.L58	@,
	rsb	r4, r4, ip	@ TotalLen, D.34654, D.34653
	cmp	r1, r4	@ RawPacketLength, TotalLen
	blt	.L58	@,
	mvn	r5, r7	@ tmp183, i
	add	r6, r5, r8	@ tmp182, tmp183, LastRawPacketIndex
	tst	r6, #1	@ tmp182,
	mov	ip, r7	@ i.859, i
	bne	.L59	@,
.L45:
	add	ip, ip, #1	@ i.859, i.859,
	cmp	r8, ip	@ LastRawPacketIndex, i.859
	mov	r6, ip, asr #31	@ tmp166, i.859,
	mov	r6, r6, lsr #22	@ tmp167, tmp166,
	add	r5, ip, r6	@ tmp168, i.859, tmp167
	mov	r5, r5, asl #22	@ tmp169, tmp168,
	mov	r5, r5, lsr #22	@ tmp169, tmp169,
	rsb	r5, r6, r5	@ Index, tmp167, tmp169
	add	r6, r5, r5, asl #3	@, tmp174, Index, Index,
	add	r6, r6, #1	@ tmp175, tmp174,
	ldr	r6, [r0, r6, asl #3]	@ D.34659, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.34659
	bls	.L46	@,
	cmp	r1, r4	@ RawPacketLength, TotalLen
	blt	.L46	@,
	add	ip, ip, #1	@ i.859, i.859,
	mov	r6, ip, asr #31	@ tmp194, i.859,
	mov	r6, r6, lsr #22	@ tmp195, tmp194,
	add	r5, ip, r6	@ tmp196, i.859, tmp195
	mov	r5, r5, asl #22	@ tmp198, tmp196,
	mov	r5, r5, lsr #22	@ tmp198, tmp198,
	rsb	r5, r6, r5	@ Index, tmp195, tmp198
	add	r6, r5, r5, asl #3	@, tmp200, Index, Index,
	add	r6, r6, #1	@ tmp201, tmp200,
	ldr	r6, [r0, r6, asl #3]	@ D.34659, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.34659
.L57:
	cmp	r1, r4	@ RawPacketLength, TotalLen
	bge	.L45	@,
.L46:
	cmp	ip, r7	@ i.859, i
	rsbne	r4, r6, r4	@ tmp176, D.34659, TotalLen
	rsbne	r1, r4, r1	@ tmp177, tmp176, RawPacketLength
	movne	r7, ip	@ i, i.859
.L58:
	str	r1, [r3, #0]	@ tmp177,* pPacketOffset
	mov	r1, #73728	@ tmp178,
	ldr	ip, [sp, #20]	@ pIndex, pIndex
	str	r5, [ip, #0]	@ prephitmp.845,* pIndex
	ldr	r3, [r0, r1]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.34651,
	rsb	r7, r3, r7	@ tmp180, <variable>.Head, i
	str	r7, [r2, #0]	@ tmp180,* pRawNum
.L42:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L59:
	add	ip, r7, #1	@ i.859, i,
	cmp	r8, ip	@ LastRawPacketIndex, i.859
	mov	r6, ip, asr #31	@ tmp186, i.859,
	mov	r6, r6, lsr #22	@ tmp187, tmp186,
	add	r5, ip, r6	@ tmp188, i.859, tmp187
	mov	r5, r5, asl #22	@ tmp190, tmp188,
	mov	r5, r5, lsr #22	@ tmp190, tmp190,
	rsb	r5, r6, r5	@ Index, tmp187, tmp190
	add	r6, r5, r5, asl #3	@, tmp192, Index, Index,
	add	r6, r6, #1	@ tmp193, tmp192,
	ldr	r6, [r0, r6, asl #3]	@ D.34659, <variable>.Length
	add	r4, r4, r6	@ TotalLen, TotalLen, D.34659
	bhi	.L57	@,
	b	.L46	@
	.fnend
	.size	GetRawNumOffset, .-GetRawNumOffset
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
	bne	.L61	@,
	movw	r2, #:lower16:73748	@ tmp152,
	movw	r4, #:lower16:73740	@ tmp153,
	movt	r2, #:upper16:73748	@ tmp152,
	movt	r4, #:upper16:73740	@ tmp153,
	str	r6, [sp, #20]	@ tmp149, DelNum
	str	r6, [sp, #16]	@ tmp149, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L61	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L69	@,
.L61:
	mvn	r0, #0	@ Ret,
.L64:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L69:
	add	r2, sp, #20	@,,
	add	r3, sp, #16	@,,
	mov	r7, #73728	@ tmp159,
	add	lr, sp, #12	@ tmp158,,
	str	lr, [sp, #0]	@ tmp158,
	bl	GetRawNumOffset	@
	ldr	ip, [r5, r7]	@ <variable>.Head, <variable>.Head
	mov	r0, r5	@, pRawStreamArray
	ldr	r1, [sp, #20]	@ DelNum.470, DelNum
	add	r3, r1, ip	@ tmp160, DelNum.470, <variable>.Head
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
	ldr	r2, [r5, r7]	@ D.37406, <variable>.Head
	ldr	r1, [sp, #16]	@ RawPacketOffSet.475, RawPacketOffSet
	ldr	r3, [r5, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.37406, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L64	@,
	add	r2, r2, r2, asl #3	@, tmp175, D.37406, D.37406,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	ip, r2, #1	@ tmp176, tmp175,
	add	r1, r1, r0	@ TargetOffset, RawPacketOffSet.475, <variable>.FirstPacketOffset
	ldr	r3, [r5, ip, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r1, r3	@ TargetOffset, <variable>.Length
	strlt	r1, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp149
	blt	.L64	@,
	b	.L61	@
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
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r4, #:lower16:166016	@ tmp137,
	movt	r4, #:upper16:166016	@ tmp137,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r5, #48	@, pSmInstArray,
	bl	DeleteRawPacket	@
	str	r6, [r5, r4]	@ SmID, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
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
	bne	.L77	@,
.L74:
	mvn	r0, #0	@ D.34717,
	bx	lr	@
.L77:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.34718, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.34718,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.34721, <variable>.FirstPacketOffset, D.34718
	str	r3, [r1, #0]	@ D.34721,* pStreamSize
	cmp	r3, #0	@ D.34721,
	movge	r0, #0	@ D.34717,
	bxge	lr	@
	b	.L74	@
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
	mvneq	r0, #0	@ D.34730,
	bxeq	lr	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.34730,
	rsb	r3, r2, ip	@ D.34733, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.34733,* pStreamNum
	cmp	r3, #0	@ D.34733,
	addlt	r3, r3, #1024	@ tmp142, D.34733,
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
	ldr	r2, [r0, r2]	@ D.34780, <variable>.SegBufWriteAddr
	ldr	r3, [r0, r3]	@ D.34781, <variable>.SegBufReadAddr
	cmp	r2, r3	@ D.34780, D.34781
	bhi	.L88	@,
	movwcs	r3, #:lower16:92188	@ tmp145,
	movtcs	r3, #:upper16:92188	@ tmp145,
	subcc	r3, r3, #1	@ tmp144, D.34781,
	ldrcs	r0, [r0, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	rsbcc	r0, r2, r3	@ SegBufFreeSize, D.34780, tmp144
	subcs	r0, r0, #1	@ SegBufFreeSize, <variable>.SegBufSize,
	bx	lr	@
.L88:
	movw	r1, #:lower16:92188	@ tmp140,
	movt	r1, #:upper16:92188	@ tmp140,
	ldr	ip, [r0, r1]	@ <variable>.SegBufSize, <variable>.SegBufSize
	add	r1, r3, ip	@ tmp141, D.34781, <variable>.SegBufSize
	sub	r0, r1, #1	@ tmp143, tmp141,
	rsb	r0, r2, r0	@ SegBufFreeSize, D.34780, tmp143
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
	bls	.L90	@,
	cmp	r3, #19	@ tmp136,
	beq	.L90	@,
	cmp	r3, #30	@ tmp136,
	beq	.L90	@,
	cmp	r3, #31	@ tmp136,
	bne	.L91	@,
.L90:
	movw	r3, #:lower16:211784	@ tmp138,
	movt	r3, #:upper16:211784	@ tmp138,
	ldr	r2, [r0, r3]	@ <variable>.s32H264Score, <variable>.s32H264Score
	add	ip, r2, #1	@ tmp141, <variable>.s32H264Score,
	str	ip, [r0, r3]	@ tmp141, <variable>.s32H264Score
.L91:
	cmp	r1, #0	@ u8Data,
	cmpne	r1, #177	@, u8Data,
	beq	.L92	@,
	cmp	r1, #178	@ u8Data,
	cmpne	r1, #179	@, u8Data,
	bne	.L95	@,
.L92:
	movw	ip, #:lower16:211788	@ tmp163,
	movt	ip, #:upper16:211788	@ tmp163,
	ldr	r3, [r0, ip]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r1, r3, #1	@ tmp166, <variable>.s32Mpeg2Score,
	str	r1, [r0, ip]	@ tmp166, <variable>.s32Mpeg2Score
	bx	lr	@
.L95:
	cmp	r1, #180	@ u8Data,
	cmpne	r1, #181	@, u8Data,
	beq	.L92	@,
	cmp	r1, #182	@ u8Data,
	bhi	.L92	@,
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
	ldr	r2, [r0, r3]	@ D.34838, <variable>.s32CurrentStartCode
	ldr	r3, [r0, ip]	@ D.34839, <variable>.s32LastOneStartCode
	rsb	r1, r3, r2	@ tmp143, D.34839, D.34838
	cmp	r1, #1	@ tmp143,
	beq	.L102	@,
.L98:
	cmp	r2, r3	@ D.34838, D.34839
	bxne	lr	@
	movw	ip, #:lower16:211796	@ tmp147,
	movt	ip, #:upper16:211796	@ tmp147,
	ldr	r3, [r0, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r2, r3	@ D.34838, <variable>.s32LastTwoStartCode
	bxne	lr	@
.L99:
	cmp	r2, #1	@ D.34838,
	bxeq	lr	@
	cmp	r2, #20	@ D.34838,
	bxeq	lr	@
	movw	r2, #:lower16:211784	@ tmp149,
	movt	r2, #:upper16:211784	@ tmp149,
	movw	r1, #:lower16:211788	@ tmp152,
	movt	r1, #:upper16:211788	@ tmp152,
	ldr	ip, [r0, r2]	@ D.34849, <variable>.s32H264Score
	ldr	r3, [r0, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	cmp	ip, #0	@ D.34849,
	subgt	ip, ip, #1	@ tmp151, D.34849,
	strgt	ip, [r0, r2]	@ tmp151, <variable>.s32H264Score
	add	r2, r3, #1	@ tmp155, <variable>.s32Mpeg2Score,
	str	r2, [r0, r1]	@ tmp155, <variable>.s32Mpeg2Score
	bx	lr	@
.L102:
	movw	r1, #:lower16:211796	@ tmp144,
	movt	r1, #:upper16:211796	@ tmp144,
	ldr	ip, [r0, r1]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	r1, ip, r3	@ tmp145, <variable>.s32LastTwoStartCode, D.34839
	cmp	r1, #1	@ tmp145,
	bne	.L98	@,
	b	.L99	@
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
	ldr	r1, [r4, #880]	@ D.34864, <variable>.eVidStd
	cmp	r1, #0	@ D.34864,
	cmpne	r1, #3	@, D.34864,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r2, #:lower16:211792	@ tmp152,
	movt	r2, #:upper16:211792	@ tmp152,
	ldr	r3, [r4, r2]	@ D.34870, <variable>.s32FindStartCodeCnt
	cmp	r3, #199	@ D.34870,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r6, [r0, #0]	@ zero_extendqisi2	@ tmp153,* pSegBufVirAddr
	cmp	r6, #0	@ tmp153,
	beq	.L109	@,
.L105:
	mov	lr, #0	@ prephitmp.1042,
	mov	r7, lr	@ u8Data, prephitmp.1042
.L106:
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
	str	lr, [r4, r0]	@ prephitmp.1042, <variable>.s32CurrentStartCode
	add	lr, r3, #1	@ tmp157, D.34870,
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
	ldr	r2, [r4, r6]	@ prephitmp.1044, <variable>.s32H264Score
	ldr	r1, [r4, r7]	@ prephitmp.1055, <variable>.s32Mpeg2Score
	rsb	r3, r1, r2	@ tmp169, prephitmp.1055, prephitmp.1044
	cmp	r3, #49	@ tmp169,
	ble	.L107	@,
	ldr	lr, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	lr, #3	@ <variable>.eVidStd,
	beq	.L110	@,
.L107:
	rsb	r2, r2, r1	@ tmp174, prephitmp.1044, prephitmp.1055
	cmp	r2, #49	@ tmp174,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:g_event_report	@ tmp176,
	movt	r1, #:upper16:g_event_report	@ tmp176,
	ldr	r3, [r1, #0]	@ g_event_report.1058, g_event_report
	cmp	r3, #0	@ g_event_report.1058,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #118	@,
	blx	r3	@ g_event_report.1058
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L109:
	ldrb	r7, [r0, #1]	@ zero_extendqisi2	@ tmp154,
	cmp	r7, #0	@ tmp154,
	bne	.L105	@,
	ldrb	r8, [r0, #2]	@ zero_extendqisi2	@ tmp155,
	cmp	r8, #1	@ tmp155,
	bne	.L105	@,
	ldrb	r7, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	and	lr, r7, #31	@ prephitmp.1042, u8Data,
	b	.L106	@
.L110:
	movw	ip, #:lower16:g_event_report	@ tmp171,
	movt	ip, #:upper16:g_event_report	@ tmp171,
	ldr	r3, [ip, #0]	@ g_event_report.479, g_event_report
	cmp	r3, #0	@ g_event_report.479,
	beq	.L107	@,
	mov	r1, #118	@,
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	blx	r3	@ g_event_report.479
	ldr	r1, [r4, r7]	@ prephitmp.1055, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r6]	@ prephitmp.1044, <variable>.s32H264Score
	b	.L107	@
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pStreamSegArray, pStreamSegArray
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	bne	.L132	@,
.L112:
	mvn	r0, #0	@ Ret,
.L124:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L132:
	sub	r0, r1, #1152	@ tmp146, StreamID,
	movw	r2, #:lower16:-1154	@ tmp148,
	movt	r2, #:upper16:-1154	@ tmp148,
	cmp	r0, r2	@ tmp146, tmp148
	bls	.L112	@,
	cmn	r1, #1	@ StreamID,
	beq	.L133	@,
	movw	r4, #:lower16:92168	@ tmp178,
	movw	r0, #:lower16:92172	@ tmp179,
	movt	r4, #:upper16:92168	@ tmp178,
	movt	r0, #:upper16:92172	@ tmp179,
	ldr	r2, [r3, r4]	@ i.1090, <variable>.Head
	ldr	r4, [r3, r0]	@ temp.1097, <variable>.Tail
	cmp	r2, r4	@ i.1090, temp.1097
	beq	.L114	@,
	cmp	r1, r2	@ StreamID, i.1090
	movwne	ip, #:lower16:954437177	@ tmp245,
	movtne	ip, #:upper16:954437177	@ tmp245,
	bne	.L126	@,
	b	.L117	@
.L130:
	cmp	r1, r2	@ StreamID, i.1090
	beq	.L117	@,
.L126:
	add	r2, r2, #1	@ D.35027, i.1090,
	umull	r5, r0, ip, r2	@, tmp196, tmp245, D.35027
	mov	r5, r0, lsr #8	@ i.1090, tmp196,
	add	r0, r5, r5, asl #3	@, tmp200, i.1090, i.1090,
	sub	r2, r2, r0, asl #7	@ i.1090, D.35027, tmp200,
	cmp	r2, r4	@ i.1090, temp.1097
	bne	.L130	@,
.L114:
	mvn	r0, #2	@ Ret,
	b	.L124	@
.L117:
	add	ip, r1, r1, asl #2	@, tmp182, StreamID, StreamID,
	add	r5, r3, ip, asl #4	@, tmp186, pStreamSegArray, tmp182,
	add	r5, r5, #8	@ tmp187, tmp186,
	ldrsb	r2, [r5, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #2	@ <variable>.SegState,
	bne	.L114	@,
.L115:
	movw	ip, #:lower16:92168	@ tmp204,
	movt	ip, #:upper16:92168	@ tmp204,
	mov	r2, #0	@ tmp202,
	strb	r2, [r5, #4]	@ tmp202, <variable>.SegState
	ldr	r2, [r3, ip]	@ i.1093, <variable>.Head
	cmp	r2, r1	@ i.1093, StreamID
	beq	.L134	@,
.L120:
	movw	r2, #:lower16:92200	@ tmp234,
	movt	r2, #:upper16:92200	@ tmp234,
	ldr	r1, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	ip, [r3, r2]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	r1, r1, ip	@ tmp238, <variable>.LenInByte, <variable>.SegTotalSize
	str	r1, [r3, r2]	@ tmp238, <variable>.SegTotalSize
	b	.L124	@
.L133:
	movw	r1, #:lower16:92168	@ tmp149,
	movw	r0, #:lower16:92172	@ tmp150,
	movt	r1, #:upper16:92168	@ tmp149,
	movt	r0, #:upper16:92172	@ tmp150,
	ldr	r1, [r3, r1]	@ StreamID, <variable>.Head
	ldr	ip, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r1, ip	@ StreamID, <variable>.Tail
	beq	.L114	@,
	add	ip, r1, r1, asl #2	@, tmp154, StreamID, StreamID,
	add	r2, r3, ip, asl #4	@, tmp164, pStreamSegArray, tmp154,
	add	r5, r2, #8	@ pSeg, tmp157,
	ldr	r0, [r2, #20]	@ temp.1095, <variable>.LenInByte
	cmp	r0, #0	@ temp.1095,
	beq	.L115	@,
	mov	r2, #0	@ i,
.L116:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #15	@ i,
	cmpls	r2, r0	@, i, temp.1095
	bcc	.L116	@,
	b	.L115	@
.L134:
	movw	r0, #:lower16:92172	@ tmp205,
	movt	r0, #:upper16:92172	@ tmp205,
	ldr	r7, [r3, r0]	@ temp.1094, <variable>.Tail
	cmp	r1, r7	@ StreamID, temp.1094
	movwne	r6, #:lower16:954437177	@ tmp244,
	movwne	r8, #1151	@ tmp243,
	movtne	r6, #:upper16:954437177	@ tmp244,
	beq	.L123	@,
.L131:
	add	r1, r2, #1	@ temp.1092, i.1093,
	add	r0, r2, r2, asl #2	@, tmp213, i.1093, i.1093,
	cmp	r2, r8	@ i.1093, tmp243
	umull	r4, ip, r6, r1	@, tmp228, tmp244, temp.1092
	add	r4, r3, r0, asl #4	@, tmp217, pStreamSegArray, tmp213,
	bhi	.L122	@,
	ldrsb	r4, [r4, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r4, #0	@ <variable>.SegState,
	bne	.L135	@,
.L122:
	mov	r0, ip, lsr #8	@ i.1093, tmp228,
	add	r2, r0, r0, asl #3	@, tmp232, i.1093, i.1093,
	sub	r2, r1, r2, asl #7	@ i.1093, temp.1092, tmp232,
	cmp	r2, r7	@ i.1093, temp.1094
	bne	.L131	@,
.L123:
	movw	r0, #:lower16:92196	@ tmp208,
	movt	r0, #:upper16:92196	@ tmp208,
	movw	r1, #:lower16:92168	@ tmp206,
	movw	r2, #:lower16:92192	@ tmp207,
	ldr	ip, [r3, r0]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r1, #:upper16:92168	@ tmp206,
	movt	r2, #:upper16:92192	@ tmp207,
	str	r7, [r3, r1]	@ temp.1094, <variable>.Head
	str	ip, [r3, r2]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L120	@
.L135:
	add	r0, r0, #1	@ tmp226, tmp213,
	movw	ip, #:lower16:92168	@ tmp221,
	movt	ip, #:upper16:92168	@ tmp221,
	movw	r1, #:lower16:92192	@ tmp222,
	movt	r1, #:upper16:92192	@ tmp222,
	str	r2, [r3, ip]	@ i.1093, <variable>.Head
	ldr	ip, [r3, r0, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r3, r1]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L120	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
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
	mvneq	r0, #0	@ D.35050,
	movne	r0, #0	@ D.35050,
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
	ldr	r3, [r3, #8]	@ D.35098, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.35098,
	beq	.L156	@,
	blx	r3	@ D.35098
.L156:
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #80]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
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
	ldr	r1, [r3, r0, asl #2]	@ D.35324, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.35324,
	beq	.L159	@,
	movw	r2, #:lower16:166072	@ tmp140,
	movt	r2, #:upper16:166072	@ tmp140,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L165	@,
.L159:
	mov	r0, #0	@ D.35327,
	bx	lr	@
.L165:
	mov	r0, #0	@ tmp143,
	str	r0, [r1, r2]	@ tmp143, <variable>.Mode
	ldr	r3, [r3, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, r0	@ s_SmIIS.SCDState,
	beq	.L159	@,
	mov	r3, r0	@ i, tmp143
.L160:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L160	@,
	mvn	r0, #6	@ D.35327,
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
	bne	.L167	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L172	@,
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
	rsb	r7, ip, r4	@ D.37413, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r7, [r1, #4]	@ D.37413, <variable>.RawNum
	cmp	r7, #0	@ D.37413,
	movw	r4, #:lower16:165968	@ tmp160,
	addlt	r7, r7, #1024	@ tmp152, D.37413,
	strlt	r7, [r1, #4]	@ tmp152, <variable>.RawNum
	ldr	r6, [r3, r0]	@ D.37423, <variable>.RawPacketArray.RawTotalSize
	movt	r4, #:upper16:165968	@ tmp160,
	movw	ip, #:lower16:954437177	@ tmp164,
	movt	ip, #:upper16:954437177	@ tmp164,
	mov	r0, #0	@ D.35339,
	str	r6, [r1, #12]	@ D.37423, <variable>.TotalRawSize
	ldr	r7, [r3, r2]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	movw	r2, #:lower16:166000	@ tmp171,
	movt	r2, #:upper16:166000	@ tmp171,
	rsb	r6, r7, r6	@ tmp156, <variable>.RawPacketArray.FirstPacketOffset, D.37423
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
.L169:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L172:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.35339,
	bne	.L169	@,
.L167:
	mvn	r0, #0	@ D.35339,
	b	.L169	@
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
.L174:
	add	r5, ip, r3	@ tmp163, tmp169, index
	add	r4, r3, #1	@ D.35379, index,
	add	ip, r0, r5, asl #3	@, tmp165, pRawPacketArray, tmp163,
	mov	r3, r4, asl #22	@ index, D.35379,
	ldrb	r4, [ip, #52]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r3, r3, lsr #22	@ index, index,
	cmp	r4, #0	@ <variable>.is_not_last_packet_flag,
	mov	ip, r3, asl #3	@ tmp169, index,
	add	r5, ip, r3	@ tmp152, tmp169, index
	add	r5, r5, #1	@ tmp153, tmp152,
	beq	.L179	@,
	ldr	r4, [r1, #0]	@ tmp147,* pRawNum
	add	r4, r4, #1	@ tmp148, tmp147,
	str	r4, [r1, #0]	@ tmp148,* pRawNum
	ldr	r4, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	ldr	r5, [r2, #0]	@ tmp154,* pTotalLength
	add	r4, r5, r4	@ tmp156, tmp154, <variable>.Length
	str	r4, [r2, #0]	@ tmp156,* pTotalLength
	ldr	r4, [r0, r6]	@ <variable>.Tail, <variable>.Tail
	cmp	r4, r3	@ <variable>.Tail, index
	beq	.L175	@,
	ldr	r4, [r1, #0]	@ tmp159,* pRawNum
	cmp	r4, #1024	@ tmp159,
	bls	.L174	@,
.L175:
	mvn	r0, #3	@ D.35386,
.L177:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L179:
	mov	r0, r4	@ D.35386, <variable>.is_not_last_packet_flag
	b	.L177	@
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
	ldr	ip, [r1, #0]	@ RawNum.514,* pRawNum
	mov	fp, r2	@ pSrcVirAddr, pSrcVirAddr
	mov	r2, #73728	@ tmp150,
	cmp	ip, #0	@ RawNum.514,
	ldr	r2, [r0, r2]	@ D.35406, <variable>.Head
	beq	.L181	@,
	mov	r7, r2, asl #3	@ tmp152, index,
	add	r4, r7, r2	@ tmp153, tmp152, index
	add	r4, r4, #1	@ tmp154, tmp153,
	ldr	r4, [r0, r4, asl #3]	@ SrcLength.1367, <variable>.Length
	cmp	r4, #2	@ SrcLength.1367,
	movgt	r6, #3	@ prephitmp.1352,
	movgt	r5, #0	@ i,
	bgt	.L183	@,
	tst	ip, #1	@ RawNum.514,
	mov	sl, r4	@ SrcLength.1368, SrcLength.1367
	mov	r5, #0	@ i,
	mov	r6, #3	@ offset,
	bne	.L185	@,
	add	r2, r2, #1	@ D.35413, index,
	mov	r5, #1	@ i,
	rsb	r6, r4, #3	@ offset, SrcLength.1367,
	mov	r7, r2, asl #22	@ index, D.35413,
	mov	r2, r7, lsr #22	@ index, index,
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r8, r7, r2	@ tmp184, tmp170, index
	add	r8, r8, r5	@ tmp185, tmp184,
	ldr	r8, [r0, r8, asl #3]	@ SrcLength, <variable>.Length
	add	r4, r4, r8	@ SrcLength.1367, SrcLength.1367, SrcLength
	cmp	r4, #2	@ SrcLength.1367,
	movle	sl, r4	@ SrcLength.1368, SrcLength.1367
	movle	r4, r8	@ SrcLength.1367, SrcLength
	ble	.L185	@,
.L183:
	add	r7, r7, r2	@ tmp163, tmp170, index
	rsb	ip, r5, ip	@ tmp160, i, RawNum.514
	str	ip, [r1, #0]	@ tmp160,* pRawNum
	sub	r4, r4, #3	@ tmp168, SrcLength.1367,
	add	r7, r0, r7, asl #3	@, tmp165, pRawPacketArray, tmp163,
	mov	r0, #0	@ D.35416,
	ldr	r1, [r7, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	add	r6, r1, r6	@ tmp167, <variable>.VirAddr, prephitmp.1352
	str	r6, [fp, #0]	@ tmp167,* pSrcVirAddr
	str	r4, [r3, #0]	@ tmp168,* pSrcLength
	ldr	r3, [sp, #32]	@ pIndex, pIndex
	str	r2, [r3, #0]	@ index,* pIndex
	b	.L186	@
.L187:
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r9, r2, #1	@ D.35413, index,
	add	r8, r7, r2	@ tmp158, tmp170, index
	add	r4, r8, #1	@ tmp159, tmp158,
	ldr	r8, [r0, r4, asl #3]	@ SrcLength, <variable>.Length
	add	r4, sl, r8	@ SrcLength.1367, SrcLength.1368, SrcLength
	cmp	r4, #2	@ SrcLength.1367,
	bgt	.L183	@,
	mov	r7, r9, asl #22	@ index, D.35413,
	rsb	r6, r8, r6	@ offset, SrcLength, offset
	add	r5, r5, #1	@ i, i,
	mov	r2, r7, lsr #22	@ index, index,
	mov	r7, r2, asl #3	@ tmp170, index,
	add	r8, r7, r2	@ tmp179, tmp170, index
	add	sl, r8, #1	@ tmp180, tmp179,
	ldr	r8, [r0, sl, asl #3]	@ SrcLength, <variable>.Length
	add	r4, r4, r8	@ SrcLength.1367, SrcLength.1367, SrcLength
	cmp	r4, #2	@ SrcLength.1367,
	mov	sl, r4	@ SrcLength.1368, SrcLength.1367
	bgt	.L183	@,
	mov	r4, r8	@ SrcLength.1367, SrcLength
.L185:
	add	r2, r2, #1	@ D.35413, index,
	add	r5, r5, #1	@ i, i,
	cmp	r5, ip	@ i, RawNum.514
	rsb	r6, r4, r6	@ offset, SrcLength.1367, offset
	mov	r2, r2, asl #22	@ index, D.35413,
	mov	r2, r2, lsr #22	@ index, index,
	bcc	.L187	@,
.L181:
	mvn	r0, #3	@ D.35416,
.L186:
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
	beq	.L195	@,
	cmp	r0, #3	@ VidStd,
	cmpne	r0, #2	@, VidStd,
	beq	.L195	@,
	cmp	r0, #6	@ VidStd,
	beq	.L195	@,
	cmp	r0, #1	@ VidStd,
	beq	.L199	@,
	subs	r0, r0, #15	@ D.35555, VidStd,
	movne	r0, #1	@ D.35555
	bx	lr	@
.L195:
	mov	r0, #0	@ D.35555,
	bx	lr	@
.L199:
	ldr	r0, [r1, #0]	@ <variable>.Vc1Ext.IsAdvProfile, <variable>.Vc1Ext.IsAdvProfile
	rsbs	r0, r0, #1	@ D.35555, <variable>.Vc1Ext.IsAdvProfile
	movcc	r0, #0	@ D.35555
	bx	lr	@
	.fnend
	.size	SCDDRV_IsSCDByPass, .-SCDDRV_IsSCDByPass
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
	beq	.L204	@,
	add	r2, r0, #73728	@, pSmInstArray,
	add	r0, r2, #72	@,,
	b	ReleaseStreamSeg	@
.L204:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
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
	bls	.L209	@,
.L206:
	mvn	r0, #0	@ D.35625,
	bx	lr	@
.L209:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L206	@,
	movw	ip, #:lower16:166072	@ tmp141,
	movt	ip, #:upper16:166072	@ tmp141,
	mov	r0, #0	@ D.35625,
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
	beq	.L212	@,
	movw	r3, #:lower16:73748	@ tmp140,
	movt	r3, #:upper16:73748	@ tmp140,
	movw	ip, #:lower16:73740	@ tmp141,
	movt	ip, #:upper16:73740	@ tmp141,
	ldr	r4, [r0, r3]	@ D.37444, <variable>.RawTotalSize
	movw	r3, #:lower16:73732	@ tmp144,
	movt	r3, #:upper16:73732	@ tmp144,
	str	r4, [r1, #0]	@ D.37444,* pTotalRawSize
	ldr	ip, [r0, ip]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp143, <variable>.FirstPacketOffset, D.37444
	mov	ip, #73728	@ tmp145,
	str	r4, [r1, #0]	@ tmp143,* pTotalRawSize
	ldr	r1, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	rsb	r3, r1, ip	@ D.37451, <variable>.Head, <variable>.Tail
	str	r3, [r2, #0]	@ D.37451,* pTotalRawNum
	cmp	r3, #0	@ D.37451,
	addlt	r3, r3, #1024	@ tmp148, D.37451,
	strlt	r3, [r2, #0]	@ tmp148,* pTotalRawNum
.L212:
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
	ldr	r2, [r0, r2]	@ D.35645, <variable>.SegBufWriteAddr
	ldr	r3, [r0, r3]	@ D.35646, <variable>.SegBufReadAddr
	cmp	r2, r3	@ D.35645, D.35646
	bhi	.L219	@,
	movwcs	r3, #:lower16:92188	@ tmp155,
	movtcs	r3, #:upper16:92188	@ tmp155,
	movwcc	ip, #:lower16:92188	@ tmp154,
	movtcc	ip, #:upper16:92188	@ tmp154,
	ldrcs	r0, [r0, r3]	@ prephitmp.1475, <variable>.SegBufSize
	subcc	r3, r3, #1	@ tmp153, D.35646,
	ldrcc	r0, [r0, ip]	@ prephitmp.1475, <variable>.SegBufSize
	rsbcc	r2, r2, r3	@ Len, D.35645, tmp153
	subcs	r2, r0, #1	@ Len, prephitmp.1475,
	cmp	r0, r2	@ prephitmp.1475, Len
	strcs	r2, [r1, #0]	@ Len,* pLength
	bx	lr	@
.L219:
	movw	ip, #:lower16:92188	@ tmp150,
	movt	ip, #:upper16:92188	@ tmp150,
	ldr	r0, [r0, ip]	@ prephitmp.1475, <variable>.SegBufSize
	add	r3, r3, r0	@ tmp151, D.35646, prephitmp.1475
	sub	ip, r3, #1	@ tmp152, tmp151,
	rsb	r2, r2, ip	@ Len, D.35645, tmp152
	cmp	r0, r2	@ prephitmp.1475, Len
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
	ldr	r0, [r5, #0]	@ D.35671,* pFreeSegBufSize
	add	r3, r6, #79	@ tmp141, LastUnfinishedSegSize,
	movw	ip, #:lower16:92188	@ tmp144,
	movt	ip, #:upper16:92188	@ tmp144,
	cmp	r0, r3	@ D.35671, tmp141
	movwcs	r3, #:lower16:-79	@ tmp142,
	movtcs	r3, #:upper16:-79	@ tmp142,
	rsbcs	r3, r6, r3	@ tmp142, LastUnfinishedSegSize, tmp142
	addcs	r7, r3, r0	@ iftmp.551, tmp142, D.35671
	str	r7, [r5, #0]	@ iftmp.551,* pFreeSegBufSize
	ldr	r1, [r8, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	movw	r3, #:lower16:92172	@ tmp152,
	movt	r3, #:upper16:92172	@ tmp152,
	movw	r0, #:lower16:92168	@ tmp155,
	movt	r0, #:upper16:92168	@ tmp155,
	rsb	r2, r1, r1, asl #3	@, tmp148, <variable>.SegBufSize, <variable>.SegBufSize,
	cmp	r6, r2, lsr #3	@ LastUnfinishedSegSize, tmp148,
	addcs	r7, r7, r6	@ tmp150, iftmp.551, LastUnfinishedSegSize
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
	moveq	r4, #1	@ prephitmp.1600,
	mov	r1, #0	@ tmp148,
	ldr	r6, [sp, #40]	@ pFreeSegBufSize, pFreeSegBufSize
	str	r1, [sp, #12]	@ tmp148, TotalRawNum
	ldr	r5, [sp, #44]	@ pFreeSegSlotNum, pFreeSegSlotNum
	beq	.L233	@,
	movw	r1, #:lower16:73748	@ tmp149,
	movt	r1, #:upper16:73748	@ tmp149,
	movw	ip, #:lower16:73740	@ tmp150,
	movt	ip, #:upper16:73740	@ tmp150,
	ldr	r4, [r0, r1]	@ D.37472, <variable>.RawTotalSize
	movw	r1, #:lower16:73732	@ tmp153,
	movt	r1, #:upper16:73732	@ tmp153,
	str	r4, [r3, #0]	@ D.37472,* pTotalRawSize
	ldr	ip, [r0, ip]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp152, <variable>.FirstPacketOffset, D.37472
	str	r4, [r3, #0]	@ tmp152,* pTotalRawSize
	mov	r4, #73728	@ tmp154,
	ldr	ip, [r0, r4]	@ <variable>.Head, <variable>.Head
	ldr	r4, [r0, r1]	@ <variable>.Tail, <variable>.Tail
	rsb	r4, ip, r4	@ tmp157, <variable>.Head, <variable>.Tail
	str	r4, [sp, #12]	@ tmp157,
	cmp	r4, #0	@ tmp157,
	blt	.L234	@,
	movne	r4, #0	@, prephitmp.1600
	moveq	r4, #1	@, prephitmp.1600
.L233:
	ldr	r3, [r3, #0]	@ tmp165,* pTotalRawSize
	cmp	r3, #3	@ tmp165,
	orrls	r4, r4, #1	@,, tmp169, prephitmp.1600
	cmp	r4, #0	@ tmp169,
	mvnne	r0, #4	@ D.35724,
	bne	.L236	@,
	ldr	lr, [sp, #48]	@ pIsFreeSegBufSizeFixed, pIsFreeSegBufSizeFixed
	mov	r1, r2	@, LastUnfinishedSegSize
	mov	r0, r7	@, pStreamSegArray
	mov	r2, r6	@, pFreeSegBufSize
	mov	r3, r5	@, pFreeSegSlotNum
	str	lr, [sp, #0]	@ pIsFreeSegBufSizeFixed,
	bl	SCDDRV_GetSegStreamStatus	@
	ldr	r0, [r5, #0]	@ tmp175,* pFreeSegSlotNum
	cmp	r0, #288	@ tmp175,
	bls	.L237	@,
	movw	ip, #:lower16:92188	@ tmp170,
	movt	ip, #:upper16:92188	@ tmp170,
	ldr	r2, [r6, #0]	@ tmp173,* pFreeSegBufSize
	ldr	lr, [r7, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	cmp	r2, lr, lsr #3	@ tmp173, <variable>.SegBufSize,
	movhi	r0, r4	@ D.35724, tmp169
	bhi	.L236	@,
.L237:
	mvn	r0, #5	@ D.35724,
.L236:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L234:
	add	r4, r4, #1024	@ tmp160, tmp157,
	str	r4, [sp, #12]	@ tmp160,
	rsbs	r4, r4, #1	@ prephitmp.1600, tmp160
	movcc	r4, #0	@ prephitmp.1600
	b	.L233	@
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
	moveq	r2, #0	@ prephitmp.1625,
	str	ip, [r1, #48]	@ tmp168, <variable>.reg_avs_flag
	str	r0, [r1, #44]	@ <variable>.Config.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	beq	.L247	@,
	cmp	r2, #6	@ StdType,
	beq	.L249	@,
	sub	r0, r2, #2	@ tmp178, StdType,
	cmp	r0, #1	@ tmp178,
	bhi	.L247	@,
.L249:
	str	r2, [r1, #36]	@ prephitmp.1625, <variable>.ScdProtocol
	mov	r2, #1	@ tmp183,
	strb	r3, [r1, #1]	@ tmp181, <variable>.SliceCheckFlag
	str	r2, [r1, #40]	@ tmp183, <variable>.ScdIniClr
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L247:
	mov	r3, #0	@ tmp181,
	b	.L249	@
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
	mvneq	r0, #0	@ D.36100,
	bxeq	lr	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L258	@,
.L253:
	mvn	r0, #6	@ D.36100,
	bx	lr	@
.L258:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L253	@,
	movw	r3, #:lower16:92196	@ tmp143,
	movw	ip, #:lower16:92192	@ tmp144,
	movt	r3, #:upper16:92196	@ tmp143,
	movt	ip, #:upper16:92192	@ tmp144,
	ldr	r3, [r1, r3]	@ D.37504, <variable>.SegBufWriteAddr
	ldr	r2, [r1, ip]	@ D.37503, <variable>.SegBufReadAddr
	cmp	r3, r2	@ D.37504, D.37503
	bls	.L254	@,
	movw	ip, #:lower16:92188	@ tmp145,
	movt	ip, #:upper16:92188	@ tmp145,
	ldr	r1, [r1, ip]	@ <variable>.SegBufSize, <variable>.SegBufSize
	add	r2, r2, r1	@ tmp146, D.37503, <variable>.SegBufSize
	sub	r1, r2, #1	@ tmp148, tmp146,
	rsb	r3, r3, r1	@ SegBufFreeSize, D.37504, tmp148
.L255:
	ldr	r2, [r0, #12]	@ D.36110, <variable>.LenInByte
	cmp	r2, #3	@ D.36110,
	bls	.L253	@,
	cmp	r2, r3	@ D.36110, SegBufFreeSize
	movls	r0, #0	@ D.36100,
	bxls	lr	@
	b	.L253	@
.L254:
	movwcs	r3, #:lower16:92188	@ tmp150,
	movtcs	r3, #:upper16:92188	@ tmp150,
	subcc	r2, r2, #1	@ tmp149, D.37503,
	ldrcs	r3, [r1, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	rsbcc	r3, r3, r2	@ SegBufFreeSize, D.37504, tmp149
	subcs	r3, r3, #1	@ SegBufFreeSize, <variable>.SegBufSize,
	b	.L255	@
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
	ldr	r2, [sp, #12]	@ Index.577, Index
	add	r3, r2, r2, asl #3	@, tmp148, Index.577, Index.577,
	add	r6, r6, r3, asl #3	@, tmp150, pRawStreamArray, tmp148,
	ldrd	r2, [r6, #16]	@ D.36134, tmp150,
	strd	r2, [r4, #24]	@ D.36134, pSegPacket,
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
	cmp	r3, r1	@ D.36134, tmp208
	cmpeq	r2, r0	@ D.36134, tmp208
	beq	.L263	@,
	strd	r2, [r5]	@ D.36134,* pLastPts
.L262:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L263:
	mvn	r2, #0	@ tmp209,
	mvn	r3, #0	@,
	strd	r2, [r4, #24]	@ tmp209, pSegPacket,
	b	.L262	@
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
	beq	.L271	@,
	cmp	r0, #2	@ ModeFlag,
	beq	.L272	@,
.L267:
	movw	ip, #:lower16:-33488896	@ tmp142,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r1, ip	@ StartCode, tmp142
	mov	r0, #0	@ flag,
	bxne	lr	@
.L266:
	mov	r0, #1	@ flag,
	bx	lr	@
.L272:
	ubfx	r2, r1, #16, #8	@ tmp139, StartCode,,
	movw	ip, #:lower16:-33488896	@ tmp142,
	sub	r0, r2, #128	@ tmp140, tmp139,
	movt	ip, #:upper16:-33488896	@ tmp142,
	cmp	r0, #3	@ tmp140,
	movhi	r0, #0	@, flag
	movls	r0, #1	@, flag
	cmp	r1, ip	@ StartCode, tmp142
	bxne	lr	@
	b	.L266	@
.L271:
	movw	r3, #:lower16:-1241448448	@ tmp137,
	movt	r3, #:upper16:-1241448448	@ tmp137,
	cmp	r1, r3	@ StartCode, tmp137
	bne	.L267	@,
	b	.L266	@
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
	blt	.L274	@,
	movw	r6, #:lower16:166132	@ tmp162,
	movt	r6, #:upper16:166132	@ tmp162,
	movw	r5, #:lower16:73800	@ tmp163,
	movw	sl, #:lower16:165984	@ tmp164,
	ldr	r7, [r3, r6]	@ pretmp.1733, <variable>.UpMsgStepInWord
	movt	r5, #:upper16:73800	@ tmp163,
	movt	sl, #:upper16:165984	@ tmp164,
	movw	r0, #:lower16:166076	@ tmp165,
	tst	ip, #1	@ ValidSegNum,
	movt	r0, #:upper16:166076	@ tmp165,
	mov	r2, r7, asl #2	@ pretmp.1757, pretmp.1733,
	ldr	r6, [r3, sl]	@ pretmp.1737, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r7, [r3, r5]	@ pretmp.1735, <variable>.StreamSegArray.pSegBufVirAddr
	movw	sl, #:lower16:-1241448448	@ tmp179,
	ldr	r0, [r3, r0]	@ pretmp.1739, <variable>.Mpeg4ModeFlag
	movw	r5, #:lower16:-33488896	@ tmp177,
	mla	r1, r2, ip, r1	@ ivtmp.1754, pretmp.1757, ValidSegNum, pScdUpMsg
	movt	r5, #:upper16:-33488896	@ tmp177,
	movt	sl, #:upper16:-1241448448	@ tmp179,
	rsb	r3, r2, #0	@ D.38851, pretmp.1757
	beq	.L280	@,
	ldr	r2, [r1, #0]	@ tmp189,* ivtmp.1754
	cmp	r0, #1	@ pretmp.1739,
	rsb	r2, r6, r2	@ tmp190, pretmp.1737, tmp189
	ldr	r2, [r7, r2]	@ StartCode,
	beq	.L300	@,
	cmp	r0, #2	@ pretmp.1739,
	beq	.L301	@,
.L286:
	mov	r8, #0	@ flag,
.L297:
	cmp	r2, r5	@ StartCode, tmp177
	beq	.L284	@,
	cmp	r8, #1	@ flag,
	beq	.L284	@,
.L285:
	subs	r4, r4, #1	@ i, i,
	add	r1, r1, r3	@ ivtmp.1754, ivtmp.1754, D.38851
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bmi	.L274	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
.L280:
	ldr	r2, [r1, #0]	@ tmp168,* ivtmp.1754
	cmp	r0, #1	@ pretmp.1739,
	rsb	r2, r6, r2	@ tmp167, pretmp.1737, tmp168
	ldr	r2, [r7, r2]	@ StartCode,
	beq	.L302	@,
	cmp	r0, #2	@ pretmp.1739,
	beq	.L303	@,
.L277:
	cmp	r2, r5	@ StartCode, tmp177
	mov	r8, #0	@ flag,
	beq	.L276	@,
.L306:
	cmp	r8, #1	@ flag,
	beq	.L276	@,
	subs	r4, r4, #1	@ tmp182, i,
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	add	r8, r1, r3	@ ivtmp.1754, ivtmp.1754, D.38851
	bmi	.L274	@,
.L307:
	ldr	r2, [r1, r3]	@ tmp186,* D.38851
	cmp	r0, #1	@ pretmp.1739,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	rsb	r1, r6, r2	@ tmp187, pretmp.1737, tmp186
	ldr	r2, [r7, r1]	@ StartCode,
	beq	.L304	@,
	cmp	r0, #2	@ pretmp.1739,
	beq	.L305	@,
.L292:
	cmp	r2, r5	@ StartCode, tmp177
	mov	r1, #0	@ flag,
	beq	.L290	@,
.L308:
	cmp	r1, #1	@ flag,
	beq	.L290	@,
.L291:
	sub	r4, r4, #1	@ i, tmp182,
	add	r1, r8, r3	@ ivtmp.1754, ivtmp.1754, D.38851
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	b	.L280	@
.L303:
	ubfx	r8, r2, #16, #8	@ tmp171, StartCode,,
	sub	r8, r8, #128	@ tmp172, tmp171,
	cmp	r8, #3	@ tmp172,
	movhi	r8, #0	@, flag
	movls	r8, #1	@, flag
	cmp	r2, r5	@ StartCode, tmp177
	bne	.L306	@,
.L276:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bcs	.L274	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	subs	r4, r4, #1	@ tmp182, i,
	add	r8, r1, r3	@ ivtmp.1754, ivtmp.1754, D.38851
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bpl	.L307	@,
.L274:
	mov	r0, r2	@, ValidSegNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L305:
	ubfx	r1, r2, #16, #8	@ tmp201, StartCode,,
	sub	r1, r1, #128	@ tmp202, tmp201,
	cmp	r1, #3	@ tmp202,
	movhi	r1, #0	@, flag
	movls	r1, #1	@, flag
	cmp	r2, r5	@ StartCode, tmp177
	bne	.L308	@,
.L290:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	bcs	.L274	@,
	sub	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	b	.L291	@
.L302:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L277	@,
	b	.L276	@
.L304:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L292	@,
	b	.L290	@
.L300:
	cmp	r2, sl	@ StartCode, tmp179
	bne	.L286	@,
.L284:
	cmp	r9, ip	@ FreeSegSlotNum, ValidSegNum
	mov	r2, ip	@ ValidSegNum, ValidSegNum
	subcc	ip, ip, #1	@ ValidSegNum, ValidSegNum,
	bcc	.L285	@,
	b	.L274	@
.L301:
	ubfx	r8, r2, #16, #8	@ tmp195, StartCode,,
	sub	r8, r8, #128	@ tmp196, tmp195,
	cmp	r8, #3	@ tmp196,
	movhi	r8, #0	@, flag
	movls	r8, #1	@, flag
	b	.L297	@
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
	addcc	r0, r1, r0	@ D.36208, SegNextAddr, RollPhyAddr
	rsbcc	r0, r2, r0	@ RollPhyAddr, SegBufferPhyAddr, D.36208
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
	mul	r7, r7, r1	@ D.36224, <variable>.UpMsgStepInWord, LastStartCodeIndex
	add	r3, r3, #288	@,,
	add	lr, r7, #1	@ tmp149, D.36224,
	ldr	ip, [r6, lr, asl #2]	@ tmp151,* pScdUpMsg
	bic	r1, ip, #-1073741824	@, tmp151,
	bl	GetSegPts	@
	ldr	r3, [r6, r7, asl #2]	@ D.36234,* pScdUpMsg
	movw	r0, #:lower16:166160	@ tmp156,
	movw	r2, #:lower16:165984	@ tmp157,
	movt	r0, #:upper16:166160	@ tmp156,
	movt	r2, #:upper16:165984	@ tmp157,
	movw	r1, #:lower16:166152	@ tmp160,
	movt	r1, #:upper16:166152	@ tmp160,
	str	r3, [r4, r0]	@ D.36234, <variable>.last_start_code_addr
	ldr	r0, [r4, r2]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r2, [r5, #28]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	cmp	r0, r2	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.seg_next_addr
	movcs	r2, r0	@ D.37521, <variable>.StreamSegArray.SegBufPhyAddr
	str	r2, [r4, r1]	@ D.37521, <variable>.seg_next_addr
	cmp	r3, r2	@ D.36234, D.37521
	bls	.L315	@,
	movw	r1, #:lower16:166168	@ tmp161,
	movt	r1, #:upper16:166168	@ tmp161,
	mov	ip, #1	@ tmp162,
	str	ip, [r4, r1]	@ tmp162, <variable>.roll_flag
	movw	ip, #:lower16:166172	@ tmp164,
	ldr	lr, [r5, #28]	@ temp.1826, <variable>.seg_next_addr
	movt	ip, #:upper16:166172	@ tmp164,
	ldr	r1, [r5, #16]	@ RollPhyAddr, <variable>.ScdRollAddr
	cmp	lr, r0	@ temp.1826, <variable>.StreamSegArray.SegBufPhyAddr
	rsbcc	r1, r0, r1	@ D.37527, <variable>.StreamSegArray.SegBufPhyAddr, RollPhyAddr
	movw	r0, #:lower16:165984	@ tmp167,
	movt	r0, #:upper16:165984	@ tmp167,
	addcc	r1, r1, lr	@ RollPhyAddr, D.37527, temp.1826
	movw	lr, #:lower16:166164	@ tmp165,
	str	r1, [r4, ip]	@ RollPhyAddr, <variable>.roll_addr
	ldr	r5, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	lr, #:upper16:166164	@ tmp165,
	movw	ip, #:lower16:166156	@ tmp177,
	movt	ip, #:upper16:166156	@ tmp177,
	rsb	r2, r5, r2	@ tmp168, <variable>.StreamSegArray.SegBufPhyAddr, D.37521
	rsb	r3, r3, r1	@ D.36246, D.36234, RollPhyAddr
	add	r1, r2, r3	@ tmp170, tmp168, D.36246
	mov	r2, #0	@ tmp178,
	str	r1, [r4, lr]	@ tmp170, <variable>.last_unfinished_seg_size
	str	r2, [r4, ip]	@ tmp178, <variable>.first_start_scd_flag
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L315:
	movw	lr, #:lower16:166168	@ tmp171,
	movw	r0, #:lower16:166172	@ tmp173,
	movt	lr, #:upper16:166168	@ tmp171,
	movt	r0, #:upper16:166172	@ tmp173,
	movw	r1, #:lower16:166164	@ tmp175,
	movw	ip, #:lower16:166156	@ tmp177,
	movt	r1, #:upper16:166164	@ tmp175,
	movt	ip, #:upper16:166156	@ tmp177,
	rsb	r3, r3, r2	@ tmp176, D.36234, D.37521
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
	mvneq	r0, #6	@ D.36350,
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
	beq	.L336	@,
.L332:
	mov	r0, #0	@ D.36678,
.L334:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {pc}
.L336:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L332	@,
	ldr	ip, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.36678,
	blt	.L334	@,
	ldr	r0, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L332	@,
	ldr	lr, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.36678
	movle	r0, #1	@, D.36678
	b	.L334	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
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
.L339:
	add	r2, r5, r5, asl #2	@, tmp143, i, i,
	mov	r1, r5	@, i
	add	r5, r5, #1	@ D.36879, i,
	mov	r0, r4	@, pStreamSegArray
	add	lr, r4, r2, asl #4	@, tmp159, pStreamSegArray, tmp143,
	ldr	r2, [lr, #20]	@ <variable>.LenInByte, <variable>.LenInByte
	strb	r9, [lr, #12]	@ tmp179, <variable>.SegState
	ldr	ip, [r4, r7]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	ldr	lr, [r4, r6]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	rsb	r3, r2, ip	@ D.36875, <variable>.LenInByte, <variable>.SegFreshSize
	str	r3, [r4, r7]	@ D.36875, <variable>.SegFreshSize
	sub	ip, lr, #1	@ D.36877, <variable>.SegFreshNum,
	str	ip, [r4, r6]	@ D.36877, <variable>.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r3, r2, r8, r5	@, tmp168, tmp182, D.36879
	mov	r1, r5, asr #31	@ tmp171, D.36879,
	rsb	r0, r1, r2, asr #8	@, i, tmp171, tmp168,
	add	r3, r0, r0, asl #3	@, tmp174, i, i,
	sub	r5, r5, r3, asl #7	@ i, D.36879, tmp174,
	cmp	sl, r5	@ EndNum, i
	bne	.L339	@,
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
	ldr	lr, [r0, r8]	@ prephitmp.1991, <variable>.Tail
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
.L356:
	add	r2, r6, r6, asl #2	@, tmp158, i, i,
	cmp	r6, lr	@ i, prephitmp.1991
	mov	r1, r6	@, i
	mov	r0, r4	@, pStreamSegArray
	add	r3, r4, r2, asl #4	@, tmp171, pStreamSegArray, tmp158,
	beq	.L358	@,
.L343:
	ldrsb	r2, [r3, #12]	@ <variable>.SegState, <variable>.SegState
	add	r5, r3, #40	@ tmp172, tmp171,
	cmp	r2, #1	@ <variable>.SegState,
	bne	.L345	@,
	ldrd	r2, [r3, #40]	@ D.36901, tmp171,
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.36901,
	cmpeq	r2, r0	@ D.36901,
	beq	.L359	@,
	ldrd	sl, [sp]	@, %sfp
	add	r1, r6, #1	@ temp.2004, i,
	cmp	fp, r3	@, D.36901
	cmpeq	sl, r2	@, D.36901
	mov	r3, r1, asr #31	@ tmp186, temp.2004,
	smull	fp, r2, r7, r1	@, tmp183, tmp239, temp.2004
	bls	.L348	@,
	str	r6, [r4, r9]	@ i, <variable>.History
	rsb	r6, r3, r2, asr #8	@, i, tmp186, tmp183,
	ldr	lr, [r4, r8]	@ prephitmp.1991, <variable>.Tail
	add	r0, r6, r6, asl #3	@, tmp189, i, i,
	sub	r6, r1, r0, asl #7	@ i, temp.2004, tmp189,
	mov	r0, r4	@, pStreamSegArray
	cmp	r6, lr	@ i, prephitmp.1991
	add	r2, r6, r6, asl #2	@, tmp158, i, i,
	mov	r1, r6	@, i
	add	r3, r4, r2, asl #4	@, tmp171, pStreamSegArray, tmp158,
	bne	.L343	@,
.L358:
	movw	ip, #:lower16:92168	@ tmp154,
	movt	ip, #:upper16:92168	@ tmp154,
	mov	r2, r6	@, i
	ldr	r1, [r4, ip]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	mvn	r0, #1	@ D.36911,
.L344:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L345:
	add	r6, r6, #1	@ temp.2013, i,
	bl	ReleaseStreamSeg	@
	ldr	lr, [r4, r8]	@ prephitmp.1991, <variable>.Tail
	smull	r0, r3, r7, r6	@, tmp226, tmp239, temp.2013
	mov	r1, r6, asr #31	@ tmp229, temp.2013,
	rsb	r0, r1, r3, asr #8	@, i, tmp229, tmp226,
	add	r2, r0, r0, asl #3	@, tmp232, i, i,
	sub	r6, r6, r2, asl #7	@ i, temp.2013, tmp232,
	b	.L356	@
.L348:
	beq	.L360	@,
	bcs	.L356	@,
	movw	r3, #:lower16:92176	@ tmp202,
	movt	r3, #:upper16:92176	@ tmp202,
	mov	r2, r6	@ i.628, i.628
	mvn	r9, #0	@,
	ldr	r1, [r4, r3]	@ i.2008, <variable>.History
	add	r7, r1, r1, asl #2	@, tmp206, i.2008, i.2008,
	add	r8, r4, r7, asl #4	@, tmp208, pStreamSegArray, tmp206,
	ldrd	r6, [r8, #40]	@ D.36915, tmp208,
	mvn	r8, #0	@ tmp173,
	cmp	r7, r9	@ D.36915, tmp173
	cmpeq	r6, r8	@ D.36915, tmp173
	beq	.L357	@,
	ldrd	r8, [sp]	@, %sfp
	cmp	r9, r7	@, D.36915
	cmpeq	r8, r6	@, D.36915
	bls	.L352	@,
	ldrd	sl, [sp, #16]	@,,
	subs	r6, r8, r6	@ tmp212,, D.36915
	sbc	r7, r9, r7	@ tmp212,, D.36915
	cmp	fp, r7	@, tmp212
	cmpeq	sl, r6	@, tmp212
	bcs	.L352	@,
.L357:
	str	r2, [r4, r3]	@ i.628, <variable>.History
.L351:
	movw	lr, #:lower16:92168	@ tmp214,
	movt	lr, #:upper16:92168	@ tmp214,
	mov	r0, r4	@, pStreamSegArray
	ldr	r1, [r4, lr]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	movw	ip, #:lower16:92176	@ tmp217,
	movt	ip, #:upper16:92176	@ tmp217,
	mov	r0, #0	@ D.36911,
	ldr	r3, [r4, ip]	@ <variable>.History, <variable>.History
	add	fp, r3, r3, asl #2	@, tmp221, <variable>.History, <variable>.History,
	add	r4, r4, fp, asl #4	@, tmp223, pStreamSegArray, tmp221,
	ldr	fp, [sp, #12]	@, %sfp
	ldrd	r2, [r4, #40]	@ <variable>.RawPts, tmp223,
	strd	r2, [fp]	@ <variable>.RawPts,
	b	.L344	@
.L359:
	add	r0, r6, #1	@ D.36904, i,
	smull	r1, r2, r7, r0	@, tmp174, tmp239, D.36904
	mov	ip, r0, asr #31	@ tmp177, D.36904,
	rsb	r3, ip, r2, asr #8	@, i, tmp177, tmp174,
	add	r1, r3, r3, asl #3	@, tmp180, i, i,
	sub	r6, r0, r1, asl #7	@ i, D.36904, tmp180,
	b	.L356	@
.L352:
	mov	r2, r1	@ i.628, i.2008
	b	.L351	@
.L360:
	movw	lr, #:lower16:92168	@ tmp192,
	movt	lr, #:upper16:92168	@ tmp192,
	mov	r0, r4	@, pStreamSegArray
	mov	r2, r6	@, i
	ldr	r1, [r4, lr]	@, <variable>.Head
	bl	ReleaseSegArrayPackets	@
	ldrd	r2, [r5]	@ <variable>.RawPts, <variable>.RawPts
	ldr	r1, [sp, #12]	@, %sfp
	mov	r0, #0	@ D.36911,
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L344	@
	.fnend
	.size	SM_SeekPtsInSegArray, .-SM_SeekPtsInSegArray
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
	beq	.L362	@,
	movw	r1, #:lower16:166072	@ tmp141,
	movt	r1, #:upper16:166072	@ tmp141,
	ldr	r2, [r3, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #0	@ <variable>.Mode,
	beq	.L362	@,
	add	r1, r3, #32	@ tmp144, pSmInstArray,
	ldr	r2, [r3, #16]	@ VidStd, <variable>.Config.VidStd
	mov	ip, sp	@ tmp143,
	ldmia	r1, {r0, r1}	@ tmp144,,
	cmp	r2, #17	@ VidStd,
	stmia	ip, {r0, r1}	@ tmp143,,
	beq	.L362	@,
	mov	r0, r2	@, VidStd
	mov	r1, sp	@,
	bl	SCDDRV_IsSCDByPass	@
	subs	r0, r0, #0	@ D.37099,,
	movne	r0, #1	@ D.37099
	b	.L363	@
.L362:
	mov	r0, #1	@ D.37099,
.L363:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	SCDDRV_CanNotSelectInst, .-SCDDRV_CanNotSelectInst
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
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
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r0, #:lower16:269731844	@ tmp133,
	movt	r0, #:upper16:269731844	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731848	@ tmp134,
	movt	r0, #:upper16:269731848	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731852	@ tmp135,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731856	@ tmp136,
	movt	r0, #:upper16:269731856	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731860	@ tmp137,
	movt	r0, #:upper16:269731860	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731864	@ tmp138,
	movt	r0, #:upper16:269731864	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731872	@ tmp139,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #:lower16:269731840	@ tmp140,
	movt	r0, #:upper16:269731840	@,
	ldmfd	sp!, {r4, lr}	@
	b	MEM_ReadPhyWord	@
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
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
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	bne	.L382	@,
	movw	r3, #:lower16:166088	@ tmp143,
	movt	r3, #:upper16:166088	@ tmp143,
	ldr	r1, [r4, r3]	@ D.35608, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTimeInMS, D.35608
	bhi	.L383	@,
	movw	lr, #:lower16:166084	@ tmp145,
	movt	lr, #:upper16:166084	@ tmp145,
	mov	r0, r5	@ prephitmp.2164, FirstCalc
	str	r2, [r4, r3]	@ CurTimeInMS, <variable>.LastBlockTime
	str	r5, [r4, lr]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L383:
	rsb	r2, r1, r0	@ D.35611, D.35608, CurTimeInMS
	movw	ip, #:lower16:166084	@ tmp144,
	movt	ip, #:upper16:166084	@ tmp144,
	mov	r0, r2	@ prephitmp.2164, D.35611
	str	r2, [r4, ip]	@ D.35611,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L382:
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
	ldr	r0, [r4, r6, asl #2]	@ D.35854, s_SmIIS.pSmInstArray
	movw	r1, #:lower16:166156	@ tmp180,
	movt	r1, #:upper16:166156	@ tmp180,
	ldr	r3, [r0, r1]	@ <variable>.first_start_scd_flag, <variable>.first_start_scd_flag
	cmp	r3, #1	@ <variable>.first_start_scd_flag,
	beq	.L391	@,
	movw	r3, #:lower16:166140	@ tmp190,
	movt	r3, #:upper16:166140	@ tmp190,
	movw	ip, #:lower16:50331651	@ tmp191,
	movt	ip, #:upper16:50331651	@ tmp191,
	ldr	r1, [r0, r3]	@ D.35865, <variable>.pre_scd_previous_byte_lsb
	cmp	r1, ip	@ D.35865, tmp191
	beq	.L392	@,
.L387:
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
.L386:
	ldr	r0, [r5, #44]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	cmp	r0, #0	@ <variable>.ScdLowdlyEnable,
	beq	.L388	@,
	ldr	r0, [r4, #84]	@, s_RegPhyBaseAddr
	ldr	r1, [r5, #48]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L388:
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
.L392:
	movw	r2, #:lower16:166136	@ tmp192,
	movt	r2, #:upper16:166136	@ tmp192,
	ldrh	r7, [r0, r2]	@ <variable>.pre_scd_previous_byte_msb, <variable>.pre_scd_previous_byte_msb
	cmp	r7, #0	@ <variable>.pre_scd_previous_byte_msb,
	bne	.L387	@,
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
	b	.L386	@
.L391:
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
	b	.L386	@
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r0, #:lower16:269731868	@,
	.pad #8
	sub	sp, sp, #8	@,,
	movt	r0, #:upper16:269731868	@,
	bl	MEM_ReadPhyWord	@
	movw	r2, #:lower16:g_pstRegCrg	@ tmp143,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp143,
	mov	r3, #0	@ i,
	movw	r1, #10000	@ tmp157,
	ldr	ip, [r2, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r2, #0]	@ pretmp.2283, g_pstRegCrg
	b	.L399	@
.L404:
	ldr	r2, [ip, #372]	@ D.34391, <variable>.PERI_CRG93.u32
	tst	r2, #2	@ D.34391,
	str	r2, [sp, #4]	@ D.34391, u32TmpValue_93.u32
	bne	.L398	@,
	cmp	r3, r1	@ i, tmp157
	beq	.L398	@,
.L399:
	ldr	lr, [ip, #372]	@ D.34391, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp158, i,
	add	r3, r3, #1	@ i, tmp158,
	tst	lr, #2	@ D.34391,
	str	lr, [sp, #4]	@ D.34391, u32TmpValue_93.u32
	beq	.L404	@,
.L398:
	movw	r1, #:lower16:.LANCHOR0	@ tmp152,
	movt	r1, #:upper16:.LANCHOR0	@ tmp152,
	bfc	r4, #5, #1	@ u32TmpValue,,
	str	r4, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r1, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r0, #1	@, D.34387,
	add	r0, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, lr}
	b	MEM_WritePhyWord	@
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pRawPacket, pRawPacket
	mov	r6, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	add	r5, sp, #4	@ tmp138,,
	mov	r1, #12	@,
	mov	r4, r0	@ pStreamIntf,
	mov	r0, r5	@, tmp138
	bl	__memzero	@
	cmp	r4, #0	@ pStreamIntf,
	bne	.L418	@,
.L409:
	mvn	r5, #6	@ ret,
.L414:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L418:
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	addeq	r6, r6, #14	@ tmp157, InstID,
	movweq	r4, #:lower16:.LANCHOR0	@ tmp156,
	movteq	r4, #:upper16:.LANCHOR0	@ tmp156,
	beq	.L410	@,
	add	r6, r6, #14	@ tmp157, InstID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp156,
	movt	r4, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r1, [r4, r6, asl #2]	@ tmp144, s_SmIIS.pSmInstArray
	ldr	r0, [r1, #44]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	r0, #0	@ <variable>.Config.ScdLowBufEnable,
	beq	.L411	@,
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	ldr	r2, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	r2	@ StreamIntf.release_stream
	mov	r5, r0	@ ret,
.L412:
	cmp	r5, #0	@ ret,
	bne	.L410	@,
	ldr	ip, [r4, r6, asl #2]	@ tmp154, s_SmIIS.pSmInstArray
	cmp	ip, #0	@ tmp154,
	bne	.L414	@,
	b	.L409	@
.L410:
	ldr	ip, [r4, r6, asl #2]	@ tmp154, s_SmIIS.pSmInstArray
	mvn	r5, #6	@ ret,
	cmp	ip, #0	@ tmp154,
	bne	.L414	@,
	b	.L409	@
.L411:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r5, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r5	@ StreamIntf.release_stream
	mov	r5, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L412	@
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
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	beq	.L438	@,
.L420:
	mvn	r0, #0	@ D.34603,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L438:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r4, [r3, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L420	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L439	@,
.L421:
	movw	r2, #:lower16:73776	@ tmp149,
	movw	ip, #:lower16:73784	@ tmp150,
	movt	r2, #:upper16:73776	@ tmp149,
	movt	ip, #:upper16:73784	@ tmp150,
	ldr	r7, [r4, r2]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r5, [r4, ip]	@ D.34615, <variable>.RawPacketArray.History
	cmp	r7, r5	@ RawHead, D.34615
	addlt	r7, r7, #1024	@ tmp151, RawHead,
	rsb	r7, r5, r7	@ DelNum, D.34615, tmp151
	cmp	r7, #0	@ DelNum,
	beq	.L420	@,
	add	r6, r5, r5, asl #3	@, tmp154, D.34615, D.34615,
	mov	r0, #0	@,
	sub	r8, r7, #1	@ tmp169, DelNum,
	add	lr, r4, r6, asl #3	@, tmp156, pSmInstArray, tmp154,
	mov	r6, #1	@ i,
	add	r1, lr, #48	@, tmp156,
	and	r8, r8, #1	@ tmp171, tmp169,
	bl	ReleaseRawStreamData	@
	add	r3, r5, r6	@ D.34625, D.34615,
	cmp	r6, r7	@ i, DelNum
	mov	r5, r3, asl #22	@ j, D.34625,
	mov	r5, r5, lsr #22	@ j, j,
	bcs	.L434	@,
	cmp	r8, #0	@ tmp171,
	addne	r1, r5, r5, asl #3	@, tmp192, j, j,
	movne	r0, #0	@,
	movne	r6, #2	@ i,
	bne	.L436	@
.L424:
	add	lr, r5, r5, asl #3	@, tmp176, j, j,
	add	r3, r6, #1	@ tmp172, i,
	mov	r0, #0	@,
	add	r6, r3, #1	@ i, tmp172,
	add	r2, r4, lr, asl #3	@, tmp178, pSmInstArray, tmp176,
	add	r1, r2, #48	@, tmp178,
	bl	ReleaseRawStreamData	@
	add	ip, r5, #1	@ D.34625, j,
	mov	r0, #0	@,
	mov	r1, ip, asl #22	@ j, D.34625,
	mov	r5, r1, lsr #22	@ j, j,
	add	r1, r5, r5, asl #3	@, tmp185, j, j,
.L436:
	add	r2, r4, r1, asl #3	@, tmp194, pSmInstArray, tmp192,
	add	r1, r2, #48	@, tmp194,
	bl	ReleaseRawStreamData	@
	add	ip, r5, #1	@ D.34625, j,
	cmp	r6, r7	@ i, DelNum
	mov	r5, ip, asl #22	@ j, D.34625,
	mov	r5, r5, lsr #22	@ j, j,
	bcc	.L424	@,
.L434:
	movw	r0, #:lower16:73784	@ tmp159,
	movt	r0, #:upper16:73784	@ tmp159,
	ldr	r1, [r4, r0]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r7, r7, r1	@ D.34627, DelNum, <variable>.RawPacketArray.History
	str	r7, [r4, r0]	@ D.34627, <variable>.RawPacketArray.History
	cmp	r7, #1024	@ D.34627,
	subge	r7, r7, #1024	@ tmp165, D.34627,
	strge	r7, [r4, r0]	@ tmp165, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.34603,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L439:
	movw	r1, #:lower16:166072	@ tmp147,
	movt	r1, #:upper16:166072	@ tmp147,
	ldr	r0, [r4, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	beq	.L420	@,
	b	.L421	@
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
	beq	.L464	@,
.L442:
	mov	fp, #73728	@ tmp166,
	movw	sl, #:lower16:73732	@ tmp169,
	movt	sl, #:upper16:73732	@ tmp169,
	ldr	r0, [r3, fp]	@ <variable>.Head, <variable>.Head
	movw	r1, #:lower16:73736	@ tmp165,
	movt	r1, #:upper16:73736	@ tmp165,
	ldr	lr, [r3, sl]	@ prephitmp.2399, <variable>.Tail
	mvn	r6, #0	@ tmp259,
	mvn	r7, #0	@,
	mov	r2, r0	@ i, <variable>.Head
	mov	fp, r1	@ tmp260, tmp165
	str	r0, [r3, r1]	@ <variable>.Head, <variable>.History
.L461:
	mov	ip, r2, asl #3	@ tmp258, i,
	add	r1, r2, #1	@ temp.2413, i,
	add	r4, ip, r2	@ tmp176, tmp258, i
	cmp	r2, lr	@ i, prephitmp.2399
	mov	r0, r1, asr #31	@ tmp188, temp.2413,
	add	r4, r3, r4, asl #3	@, tmp178, pRawPacketArray, tmp176,
	beq	.L465	@,
.L443:
	mov	r0, r0, lsr #22	@ tmp189, tmp188,
	ldrd	r4, [r4, #16]	@ D.36958, tmp178,
	add	r1, r1, r0	@ tmp190, temp.2413, tmp189
	cmp	r5, r7	@ D.36958, tmp259
	cmpeq	r4, r6	@ D.36958, tmp259
	mov	r1, r1, asl #22	@ tmp191, tmp190,
	mov	r1, r1, lsr #22	@ tmp191, tmp191,
	beq	.L466	@,
	cmp	r9, r5	@ pts, D.36958
	cmpeq	r8, r4	@ pts, D.36958
	bls	.L449	@,
	str	r2, [r3, fp]	@ i, <variable>.History
	rsb	r2, r0, r1	@ i, tmp189, tmp191
	ldr	lr, [r3, sl]	@ prephitmp.2399, <variable>.Tail
	add	r1, r2, #1	@ temp.2413, i,
	mov	ip, r2, asl #3	@ tmp258, i,
	add	r4, ip, r2	@ tmp176, tmp258, i
	cmp	r2, lr	@ i, prephitmp.2399
	mov	r0, r1, asr #31	@ tmp188, temp.2413,
	add	r4, r3, r4, asl #3	@, tmp178, pRawPacketArray, tmp176,
	bne	.L443	@,
.L465:
	mov	r1, #73728	@ tmp170,
	movw	ip, #:lower16:73736	@ tmp172,
	ldr	lr, [r3, r1]	@ temp.2412, <variable>.Head
	movt	ip, #:upper16:73736	@ tmp172,
	mov	r0, r3	@, pRawPacketArray
	cmp	r2, lr	@ i, temp.2412
	rsblt	r1, lr, #1024	@ tmp171, temp.2412,
	rsbge	r1, lr, r2	@ DelNum.2411, temp.2412, i
	addlt	r1, r1, r2	@ DelNum.2411, tmp171, i
	str	lr, [r3, ip]	@ temp.2412, <variable>.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mvn	r0, #1	@ D.36980,
.L446:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L466:
	add	r2, r2, #1	@ D.36961, i,
	mov	r1, r2, asr #31	@ tmp181, D.36961,
	mov	r0, r1, lsr #22	@ tmp182, tmp181,
	add	ip, r2, r0	@ tmp183, D.36961, tmp182
	mov	r4, ip, asl #22	@ tmp184, tmp183,
	mov	r2, r4, lsr #22	@ tmp184, tmp184,
	rsb	r2, r0, r2	@ i, tmp182, tmp184
	b	.L461	@
.L449:
	beq	.L467	@,
	movw	r1, #:lower16:73736	@ tmp218,
	movt	r1, #:upper16:73736	@ tmp218,
	mvn	r5, #0	@,
	ldr	r0, [r3, r1]	@ i.2418, <variable>.History
	add	r6, r0, r0, asl #3	@, tmp222, i.2418, i.2418,
	add	r4, r3, r6, asl #3	@, tmp224, pRawPacketArray, tmp222,
	ldrd	r6, [r4, #16]	@ D.36982, tmp224,
	mvn	r4, #0	@ tmp180,
	cmp	r7, r5	@ D.36982, tmp180
	cmpeq	r6, r4	@ D.36982, tmp180
	beq	.L462	@,
	cmp	r9, r7	@ pts, D.36982
	cmpeq	r8, r6	@ pts, D.36982
	bhi	.L468	@,
.L456:
	mov	r2, r0	@ i, i.2418
.L455:
	mov	r1, #73728	@ tmp230,
	ldr	r5, [sp, #12]	@, %sfp
	ldr	r1, [r3, r1]	@ temp.2419, <variable>.Head
	cmp	r2, r1	@ i, temp.2419
	rsblt	r1, r1, #1024	@ tmp231, temp.2419,
	rsbge	r1, r1, r2	@ DelNum.2410, temp.2419, i
	addlt	r1, r1, r2	@ DelNum.2410, tmp231, i
	cmp	r5, #1	@,
	beq	.L469	@,
.L459:
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
.L463:
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #8]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.36980,
	b	.L446	@
.L464:
	ldr	r7, [sp, #16]	@, %sfp
	movw	r6, #:lower16:166024	@ tmp162,
	movt	r6, #:upper16:166024	@ tmp162,
	ldr	lr, [r7, r6]	@, <variable>.SmPushRaw.PushRawOverState
	cmp	lr, #1	@,
	str	lr, [sp, #20]	@, %sfp
	ldreq	r0, [sp, #16]	@, %sfp
	moveq	r1, #3	@ tmp164,
	streq	r1, [r0, r6]	@ tmp164, <variable>.SmPushRaw.PushRawOverState
	b	.L442	@
.L468:
	ldrd	r4, [sp, #24]	@,,
	subs	r6, r8, r6	@ tmp228, pts, D.36982
	sbc	r7, r9, r7	@ tmp228, pts, D.36982
	cmp	r5, r7	@, tmp228
	cmpeq	r4, r6	@, tmp228
	bcs	.L456	@,
.L462:
	str	r2, [r3, r1]	@ i, <variable>.History
	b	.L455	@
.L467:
	mov	r0, #73728	@ tmp195,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r1, [r3, r0]	@ temp.2414, <variable>.Head
	cmp	r1, r2	@ temp.2414, i
	rsbgt	r1, r1, #1024	@ tmp196, temp.2414,
	rsble	r1, r1, r2	@ DelNum, temp.2414, i
	addgt	r1, r1, r2	@ DelNum, tmp196, i
	cmp	lr, #1	@,
	beq	.L470	@,
.L453:
	ldr	r2, [sp, #4]	@, %sfp
	mov	r0, #73728	@ tmp216,
	movw	lr, #:lower16:73736	@ tmp215,
	movt	lr, #:upper16:73736	@ tmp215,
	strd	r4, [r2]	@ D.36958,
	ldr	ip, [r3, r0]	@ <variable>.Head, <variable>.Head
	mov	r0, r3	@, pRawPacketArray
	str	ip, [r3, lr]	@ <variable>.Head, <variable>.History
	b	.L463	@
.L469:
	ldr	ip, [sp, #16]	@, %sfp
	movw	r4, #:lower16:166016	@ tmp232,
	movt	r4, #:upper16:166016	@ tmp232,
	ldr	lr, [sp, #20]	@, %sfp
	ldr	r0, [ip, r4]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, r0	@ DelNum.2410, <variable>.SmPushRaw.PushRawNum
	cmple	lr, #1	@,,
	bne	.L459	@,
	movw	r0, #:lower16:166024	@ tmp241,
	movw	r2, #:lower16:73736	@ tmp243,
	movt	r0, #:upper16:166024	@ tmp241,
	movt	r2, #:upper16:73736	@ tmp243,
	str	r5, [ip, r0]	@, <variable>.SmPushRaw.PushRawOverState
	ldr	r2, [r3, r2]	@ i, <variable>.History
	b	.L459	@
.L470:
	ldr	lr, [sp, #16]	@, %sfp
	movw	r0, #:lower16:166016	@ tmp197,
	movt	r0, #:upper16:166016	@ tmp197,
	ldr	r0, [lr, r0]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	ldr	lr, [sp, #20]	@, %sfp
	cmp	r1, r0	@ DelNum, <variable>.SmPushRaw.PushRawNum
	cmple	lr, #1	@,,
	bne	.L453	@,
	add	r2, ip, r2	@ tmp211, tmp258, i
	ldr	r4, [sp, #12]	@, %sfp
	ldr	r5, [sp, #16]	@, %sfp
	movw	r0, #:lower16:166024	@ tmp206,
	add	ip, r3, r2, asl #3	@, tmp213, pRawPacketArray, tmp211,
	movt	r0, #:upper16:166024	@ tmp206,
	str	r4, [r5, r0]	@, <variable>.SmPushRaw.PushRawOverState
	ldrd	r4, [ip, #16]	@ D.36958, tmp213,
	b	.L453	@
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
	add	r7, r0, #14	@ tmp159, InstID,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	add	r5, sp, #4	@ tmp141,,
	mov	sl, r0	@ InstID, InstID
	mov	r8, r1	@ pRawPacket, pRawPacket
	ldr	r6, [r4, r7, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r1, #12	@,
	mov	r0, r5	@, tmp141
	bl	__memzero	@
	cmp	r6, #0	@ pSmInstArray,
	bne	.L478	@,
.L472:
	mvn	r5, #6	@ ret,
.L474:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L478:
	mov	r0, sl	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L472	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp141,,,
	ldr	r3, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r3, #0	@ <variable>.read_stream,
	beq	.L475	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r8	@, pRawPacket
	ldmib	sp, {r0, r2}	@ phole ldm
	blx	r2	@ StreamIntf.read_stream
	mov	r5, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ret,
	bne	.L475	@,
.L476:
	ldr	r0, [r4, r7, asl #2]	@ tmp151, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp151,
	beq	.L472	@,
	cmp	r5, #0	@ ret,
	bne	.L474	@,
	movw	lr, #:lower16:73796	@ tmp152,
	movt	lr, #:upper16:73796	@ tmp152,
	ldr	r1, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r3, [r6, lr]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	ip, r1, r3	@ tmp156, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r6, lr]	@ tmp156, <variable>.RawPacketArray.RawTotalSize
	b	.L474	@
.L475:
	mvn	r5, #6	@ ret,
	b	.L476	@
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
	ldr	r0, [r2, #56]	@ D.37543, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ D.37543,
	beq	.L480	@,
	movw	r1, #:lower16:166072	@ tmp137,
	movt	r1, #:upper16:166072	@ tmp137,
	ldr	r3, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	bne	.L486	@,
.L480:
	bl	ResetSCD	@
	mov	r1, #80	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L486:
	mov	r3, #0	@ tmp140,
	str	r3, [r0, r1]	@ tmp140, <variable>.Mode
	ldr	r2, [r2, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, r3	@ s_SmIIS.SCDState,
	beq	.L480	@,
.L481:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	beq	.L480	@,
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L481	@,
	b	.L480	@
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
	mvnne	r0, #0	@ D.35156,
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
	mov	r0, r5	@ D.35156, SmID
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
	bne	.L500	@,
.L497:
	mvn	r0, #0	@ D.34756,
.L498:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L500:
	rsbs	r6, r2, #1	@ tmp150, pBufVirAddr
	movcc	r6, #0	@ tmp150
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp153, tmp150
	cmp	r6, #0	@ tmp153,
	bne	.L497	@,
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
	mov	r0, r6	@ D.34756, tmp153
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [sp, #4]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L498	@
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
	bne	.L508	@,
.L506:
	ldr	r1, [r5, #8]	@, <variable>.Length
	ldr	r2, [r4, #0]	@, vfmw_save_str_file
	ldr	r0, [r5, #4]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_SpinLockIRQ	@
.L508:
	ldr	r0, [r5, #8]	@, <variable>.Length
	mov	r1, #4	@,
	ldr	r2, [r4, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L506	@
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
	beq	.L519	@,
	sub	r8, fp, #1	@ tmp195, ValidSegNum,
	ldr	r0, [r7, #0]	@,* pScdUpMsg
	and	r6, r8, #1	@, tmp195,
	str	r6, [sp, #12]	@, %sfp
	bl	MEM_Phy2Vir	@
	movw	r8, #438	@ tmp186,
	movw	r6, #:lower16:166076	@ tmp187,
	mov	sl, sl, asl #2	@ pretmp.2671, UpMsgStepInWord,
	movt	r6, #:upper16:166076	@ tmp187,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp150,* D.36473
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
	beq	.L548	@,
	bic	r3, r3, #1020	@ tmp246, ReadOneWord,
	bic	ip, r3, #3	@ tmp246, tmp246,
	cmp	ip, #32768	@ tmp246,
	beq	.L549	@,
.L522:
	mov	r4, #1	@ i,
	cmp	fp, r4	@ ValidSegNum, i
	bls	.L519	@,
	ldr	r3, [sp, #12]	@, %sfp
	cmp	r3, #0	@,
	beq	.L518	@,
	ldr	r0, [r7, sl]	@,* pretmp.2671
	bl	MEM_Phy2Vir	@
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp263,* D.36473
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
	beq	.L550	@,
.L533:
	add	r4, r4, #1	@ i, tmp198,
	cmp	fp, r4	@ ValidSegNum, i
	bls	.L519	@,
.L518:
	mul	lr, sl, r4	@ tmp200, pretmp.2671, i
	ldr	r0, [r7, lr]	@,
	bl	MEM_Phy2Vir	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp204,* D.36473
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
	beq	.L551	@,
.L515:
	add	r4, r4, #1	@ tmp198, i,
	mul	lr, sl, r4	@ tmp222, pretmp.2671, tmp198
	ldr	r0, [r7, lr]	@,
	bl	MEM_Phy2Vir	@
	ldrb	r1, [r0, #0]	@ zero_extendqisi2	@ tmp226,* D.36473
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
.L532:
	bic	r1, r0, #1020	@ tmp301, ReadOneWord,
	bic	r2, r1, #3	@ tmp301, tmp301,
	cmp	r2, #32768	@ tmp301,
	bne	.L533	@,
	ldr	r0, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r0, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L552	@,
.L544:
	add	r4, r4, #1	@ i, tmp198,
	mov	r0, #2	@,
	cmp	fp, r4	@ ValidSegNum, i
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	bhi	.L518	@,
.L519:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L551:
	ldr	r2, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r2, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L516	@,
.L517:
	mov	r3, #2	@,
	str	r3, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L515	@
.L548:
	bic	r3, r3, #1020	@ tmp246, ReadOneWord,
	mov	r0, #1	@,
	bic	ip, r3, #3	@ tmp246, tmp246,
	mov	r4, #0	@,
	cmp	ip, #32768	@ tmp246,
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	str	r4, [r5, r9]	@, <variable>.LastH263Num
	bne	.L522	@,
.L549:
	ldr	r2, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	r2, #1	@ <variable>.Mpeg4ModeFlag,
	beq	.L553	@,
.L540:
	mov	r0, #2	@,
	str	r0, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L522	@
.L516:
	ldr	r0, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r1, r0, #1	@ D.36488, <variable>.LastH263Num,
	str	r1, [r5, r9]	@ D.36488, <variable>.LastH263Num
	cmp	r1, #30	@ D.36488,
	bls	.L515	@,
	ldr	ip, [sp, #4]	@, %sfp
	ldr	r3, [ip, #0]	@ g_event_report.594, g_event_report
	cmp	r3, #0	@ g_event_report.594,
	beq	.L517	@,
	ldr	lr, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, lr]	@, <variable>.InstID
	blx	r3	@ g_event_report.594
	b	.L517	@
.L552:
	ldr	r3, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	ip, r3, #1	@ D.36488, <variable>.LastH263Num,
	str	ip, [r5, r9]	@ D.36488, <variable>.LastH263Num
	cmp	ip, #30	@ D.36488,
	bls	.L533	@,
	ldr	lr, [sp, #4]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report.594, g_event_report
	cmp	r3, #0	@ g_event_report.594,
	beq	.L535	@,
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, #0	@,
	ldr	r0, [r5, r1]	@, <variable>.InstID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.594
.L535:
	mov	r2, #2	@,
	str	r2, [r5, r6]	@, <variable>.Mpeg4ModeFlag
	b	.L533	@
.L550:
	ldr	lr, [r5, r6]	@ <variable>.Mpeg4ModeFlag, <variable>.Mpeg4ModeFlag
	cmp	lr, #1	@ <variable>.Mpeg4ModeFlag,
	bne	.L544	@,
	ldr	r1, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r2, r1, #1	@ D.36488, <variable>.LastH263Num,
	str	r2, [r5, r9]	@ D.36488, <variable>.LastH263Num
	cmp	r2, #30	@ D.36488,
	bls	.L533	@,
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r3, [r0, #0]	@ g_event_report.594, g_event_report
	cmp	r3, #0	@ g_event_report.594,
	beq	.L544	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.InstID
	blx	r3	@ g_event_report.594
	b	.L544	@
.L553:
	ldr	lr, [r5, r9]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r1, lr, #1	@ D.36488, <variable>.LastH263Num,
	str	r1, [r5, r9]	@ D.36488, <variable>.LastH263Num
	cmp	r1, #30	@ D.36488,
	bls	.L522	@,
	ldr	r4, [sp, #4]	@, %sfp
	ldr	r3, [r4, #0]	@ g_event_report.594, g_event_report
	cmp	r3, #0	@ g_event_report.594,
	beq	.L540	@,
	ldr	ip, [sp, #8]	@, %sfp
	mov	r1, #102	@,
	mov	r2, #0	@,
	ldr	r0, [r5, ip]	@, <variable>.InstID
	blx	r3	@ g_event_report.594
	b	.L540	@
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
	ldr	ip, [ip, #8]	@ D.35174, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	r4, #:lower16:.LANCHOR0	@ tmp187,
	movt	r4, #:upper16:.LANCHOR0	@ tmp187,
	cmp	ip, #0	@ D.35174,
	mov	r8, r3	@ ResetRegAddr, ResetRegAddr
	mov	r5, r0	@ MemAddr, MemAddr
	movw	r3, #:lower16:269729792	@ tmp151,
	mov	r6, r1	@ MemSize, MemSize
	movt	r3, #:upper16:269729792	@ tmp151,
	mov	r7, r2	@ RegAddr, RegAddr
	str	r3, [r4, #84]	@ tmp151, s_RegPhyBaseAddr
	beq	.L555	@,
	blx	ip	@ D.35174
.L555:
	ldr	r0, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	cmp	r0, #1	@ s_SmIIS.IsScdDrvOpen,
	bne	.L560	@,
.L556:
	mvn	r0, #6	@ D.35181,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L560:
	bl	ResetSCD	@
	mov	r1, #80	@,
	mov	r0, r4	@, tmp153
	mov	sl, #0	@ tmp157,
	bl	__memzero	@
	add	r0, r5, #3	@ tmp158, MemAddr,
	bic	r9, r0, #3	@ tmp159, tmp158,
	str	r5, [r4, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r9, r5, r9	@ Offset, MemAddr, tmp159
	str	sl, [r4, #80]	@ tmp157, s_eScdDrvSleepStage
	add	r0, r9, r5	@ D.35189, Offset, MemAddr
	str	r6, [r4, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r0, [r4, #8]	@ D.35189, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	r2, r9, #12288	@ D.35194, Offset,
	mov	r1, #12288	@ tmp165,
	add	ip, r2, r5	@ temp.2708, D.35194, MemAddr
	str	r1, [r4, #16]	@ tmp165, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	ip, [r4, #20]	@ temp.2708, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, ip	@, temp.2708
	bl	MEM_Phy2Vir	@
	add	r3, r9, r5	@ tmp170, Offset, MemAddr
	add	r2, r3, #26112	@ tmp171, tmp170,
	mov	r1, #13824	@ tmp169,
	add	r5, r2, #127	@ tmp171, tmp171,
	str	r1, [r4, #28]	@ tmp169, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r5, r5, #127	@ g_hex_base_addr.494, tmp171,
	str	r5, [r4, #88]	@ g_hex_base_addr.494, g_hex_base_addr
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, g_hex_base_addr.494
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.35205,
	str	r0, [r4, #92]	@ D.35205, g_hex_base_vir_addr
	mvneq	r0, #0	@ D.35181,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r9, r9, #44032	@ tmp179, Offset,
	mov	lr, #17920	@ tmp176,
	cmp	r6, r9	@ MemSize, tmp179
	str	r7, [r4, #32]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r8, [r4, #36]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	lr, [r4, #96]	@ tmp176, g_hex_len
	blt	.L556	@,
	ldr	r3, [r4, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L556	@,
	ldr	ip, [r4, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	ip, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	movne	ip, #1	@ tmp185,
	movne	r0, sl	@ D.35181, tmp157
	strne	ip, [r4, #64]	@ tmp185, s_SmIIS.IsScdDrvOpen
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L556	@
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
	subs	r0, r0, #0	@ tmp150, SmID,
	movne	r0, #1	@ tmp150
	cmp	r1, #0	@ pSmCfg,
	orreq	r0, r0, #1	@,, tmp153, tmp150
	cmp	r0, #0	@ tmp153,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ pSmCfg, pSmCfg
	beq	.L572	@,
.L562:
	mvn	r0, #0	@ D.35250,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L572:
	movw	r6, #:lower16:.LANCHOR0	@ tmp204,
	movt	r6, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r5, [r6, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L562	@,
	ldr	r3, [r1, #12]	@ D.35255, <variable>.BufPhyAddr
	ldr	r2, [r5, #20]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r2, r3	@ <variable>.Config.BufPhyAddr, D.35255
	addeq	ip, r5, #8	@ tmp203, pSmInstArray,
	bne	.L573	@,
.L563:
	mov	r7, r4	@ pSmCfg, pSmCfg
	mov	r8, ip	@ tmp195, tmp203
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	movw	r6, #:lower16:166132	@ tmp197,
	movt	r6, #:upper16:166132	@ tmp197,
	mov	ip, #2	@ tmp198,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp195,,,,
	ldmia	r7, {r0, r1}	@ pSmCfg,,
	str	ip, [r5, r6]	@ tmp198, <variable>.UpMsgStepInWord
	stmia	r8, {r0, r1}	@ tmp208,,
	ldr	r0, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r0, ip	@ <variable>.VidStd,
	moveq	r0, #3	@ tmp201,
	streq	r0, [r5, r6]	@ tmp201, <variable>.UpMsgStepInWord
	mov	r0, #0	@ D.35250,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L573:
	cmp	r3, #0	@ D.35255,
	beq	.L562	@,
	ldr	r3, [r1, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r3, #0	@ <variable>.pBufVirAddr,
	beq	.L562	@,
	ldr	r2, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r3, #:lower16:166032	@ tmp157,
	movt	r3, #:upper16:166032	@ tmp157,
	movw	r7, #:lower16:166036	@ tmp160,
	movt	r7, #:upper16:166036	@ tmp160,
	movw	sl, #:lower16:166040	@ tmp163,
	str	r2, [r5, r3]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	sl, #:upper16:166040	@ tmp163,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r8, #:lower16:166044	@ tmp166,
	movt	r8, #:upper16:166044	@ tmp166,
	movw	r1, #:lower16:166048	@ tmp169,
	movt	r1, #:upper16:166048	@ tmp169,
	movw	r3, #:lower16:166052	@ tmp172,
	str	ip, [r5, r7]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r3, #:upper16:166052	@ tmp172,
	ldr	r0, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	r2, #:lower16:166056	@ tmp175,
	movt	r2, #:upper16:166056	@ tmp175,
	movw	r7, #:lower16:166060	@ tmp180,
	movw	ip, #:lower16:166028	@ tmp181,
	movt	r7, #:upper16:166060	@ tmp180,
	str	r0, [r5, sl]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movt	ip, #:upper16:166028	@ tmp181,
	ldr	sl, [r6, #20]	@, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movw	r0, #:lower16:166064	@ tmp185,
	movt	r0, #:upper16:166064	@ tmp185,
	str	sl, [r5, r8]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [r5, r1]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r8, #1152	@ tmp176,
	ldr	r1, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r8, [r5, r2]	@ tmp176, <variable>.BufAddrCfg.UpMsgNum
	str	r1, [r5, r3]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2736, <variable>.BufPhyAddr
	ldr	r3, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	r1, r8, #3	@ tmp178, temp.2736,
	ldr	r2, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	bic	r1, r1, #3	@ TmpPhyAddr, tmp178,
	cmp	r3, #6	@ <variable>.VidStd,
	rsb	r8, r8, r1	@ D.35279, temp.2736, TmpPhyAddr
	add	r2, r8, r2	@ pTmpVirAddr, D.35279, <variable>.pBufVirAddr
	moveq	r3, #1048576	@ prephitmp.2725,
	movne	r3, #131072	@ prephitmp.2725,
	add	r1, r3, r1	@ D.35282, prephitmp.2725, TmpPhyAddr
	add	r2, r2, r3	@ D.35284, pTmpVirAddr, prephitmp.2725
	str	r1, [r5, r7]	@ D.35282, <variable>.BufAddrCfg.SegBufPhyAddr
	str	r2, [r5, ip]	@ D.35284, <variable>.BufAddrCfg.pSegBufVirAddr
	ldr	ip, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	sub	ip, ip, #1024	@ tmp182, <variable>.BufSize,
	rsb	r8, r8, ip	@ tmp184, D.35279, tmp182
	rsb	r3, r3, r8	@ D.35289, prephitmp.2725, tmp184
	str	r3, [r5, r0]	@ D.35289, <variable>.BufAddrCfg.SegBufSize
	cmp	r3, #262144	@ D.35289,
	bcc	.L562	@,
	add	lr, r5, #73728	@, pSmInstArray,
	mov	r7, r4	@ pSmCfg, pSmCfg
	add	r0, lr, #72	@,,
	bl	ConfigStreamSegArray	@
	ldr	r1, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	add	ip, r5, #8	@ tmp203, pSmInstArray,
	str	r1, [r6, #84]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r6, ip	@ tmp192, tmp203
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r7!, {r0, r1, r2, r3}	@ pSmCfg,,,,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r7, {r0, r1}	@ pSmCfg,,
	stmia	r6, {r0, r1}	@ tmp206,,
	b	.L563	@
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
	beq	.L585	@,
.L575:
	mvn	r0, #0	@ D.35126,
.L580:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L585:
	movw	r6, #:lower16:.LANCHOR0	@ tmp141,
	movt	r6, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r4, [r6, #56]	@ pScdInstance, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pScdInstance,
	beq	.L575	@,
	add	lr, r4, #8	@ tmp143, pScdInstance,
	mov	r8, sp	@ tmp142, tmp170
	movw	r7, #:lower16:166072	@ tmp144,
	movt	r7, #:upper16:166072	@ tmp144,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp173,,,,
	mov	r5, sp	@ tmp170,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp142,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp174,,,,
	stmia	r8!, {r0, r1, r2, r3}	@ tmp142,,,,
	ldmia	lr, {r0, r1}	@ tmp174,,
	stmia	r8, {r0, r1}	@ tmp175,,
	ldr	r8, [r4, r7]	@ TmpMode, <variable>.Mode
	cmp	r8, #0	@ TmpMode,
	beq	.L576	@,
	str	ip, [r4, r7]	@ SmID, <variable>.Mode
	ldr	r0, [r6, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r0, #0	@ s_SmIIS.SCDState,
	bne	.L577	@,
.L576:
	movw	r2, #:lower16:73780	@ tmp149,
	movw	r1, #:lower16:73776	@ tmp150,
	movt	r2, #:upper16:73780	@ tmp149,
	movt	r1, #:upper16:73776	@ tmp150,
	movw	r6, #:lower16:166068	@ tmp154,
	movt	r6, #:upper16:166068	@ tmp154,
	ldr	lr, [r4, r2]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	sub	r8, r8, #1	@ tmp164, TmpMode,
	ldr	r0, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	r1, lr, r0	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	add	r0, r4, #48	@, pScdInstance,
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
	movw	r3, #:lower16:166096	@ tmp159,
	movw	ip, #:lower16:166132	@ tmp161,
	movt	r3, #:upper16:166096	@ tmp159,
	movt	ip, #:upper16:166132	@ tmp161,
	mov	r2, #2	@ tmp162,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mov	r1, sp	@,
	str	r7, [r4, r6]	@ s8TmpInstID, <variable>.InstID
	mov	r0, #0	@,
	str	r2, [r4, ip]	@ tmp162, <variable>.UpMsgStepInWord
	mvn	r6, #0	@ tmp160,
	mvn	r7, #0	@,
	strd	r6, [r4, r3]	@ tmp160, pScdInstance, tmp159
	bl	SM_Config	@
	cmp	r8, #1	@ tmp164,
	movw	r1, #:lower16:166072	@ tmp165,
	movt	r1, #:upper16:166072	@ tmp165,
	mov	r0, #0	@ D.35126,
	movls	r2, #1	@ tmp166,
	strhi	r0, [r4, r1]	@ tmp168, <variable>.Mode
	strls	r2, [r4, r1]	@ tmp166, <variable>.Mode
	b	.L580	@
.L577:
	add	ip, ip, #2	@ i, i,
	cmp	ip, #50	@ i,
	beq	.L576	@,
	add	ip, ip, #2	@ i, i,
	cmp	ip, #50	@ i,
	bne	.L577	@,
	b	.L576	@
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
	bne	.L589	@,
	add	r6, r6, r6, lsr #31	@, tmp146, SegBufTotalSize, SegBufTotalSize,
	cmp	r7, r6, asr #1	@ FreshSize, tmp146,
	ldmgefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r8, #127	@ FreshNum,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, #1	@ tmp148,
	strb	r1, [r4, #1]	@ tmp148, <variable>.IsCounting
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	CalcInstBlockTime	@
.L589:
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r6, #0	@ SegBufTotalSize,
	add	r0, r6, #3	@ tmp152, SegBufTotalSize,
	movlt	r6, r0	@ SegBufTotalSize, tmp152
	cmp	r7, r6, asr #2	@ FreshSize, SegBufTotalSize,
	ldmgefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r8, #63	@ FreshNum,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	cmp	r7, #0	@ FreshSize,
	bne	.L591	@,
	cmp	r8, #0	@ FreshNum,
	bne	.L591	@,
	movw	ip, #:lower16:166164	@ tmp154,
	movt	ip, #:upper16:166164	@ tmp154,
	ldr	r1, [r4, ip]	@ <variable>.last_unfinished_seg_size, <variable>.last_unfinished_seg_size
	cmp	r1, #0	@ <variable>.last_unfinished_seg_size,
	beq	.L591	@,
	movw	lr, #:lower16:166068	@ tmp156,
	movt	lr, #:upper16:166068	@ tmp156,
	ldr	r0, [r4, lr]	@, <variable>.InstID
	bl	SM_Reset	@
	b	.L592	@
.L591:
	mov	r0, r5	@, pStreamSegArray
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
.L592:
	mov	r3, #0	@ tmp158,
	strb	r3, [r4, #0]	@ tmp158, <variable>.SegFullFlag
	strb	r3, [r4, #1]	@ tmp158, <variable>.IsCounting
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mvneq	r0, #0	@ Ret,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r3, #:lower16:92168	@ tmp150,
	movw	r2, #:lower16:92172	@ tmp151,
	movt	r3, #:upper16:92168	@ tmp150,
	movt	r2, #:upper16:92172	@ tmp151,
	ldr	r3, [r4, r3]	@ i.482, <variable>.Head
	ldr	ip, [r4, r2]	@ D.34969, <variable>.Tail
	cmp	r3, ip	@ i.482, D.34969
	beq	.L597	@,
	mov	r6, r3, asl #2	@ tmp220, i,
	mov	r2, r3	@ i, i.482
	add	r5, r6, r3	@ tmp154, tmp220, i
	add	r0, r4, r5, asl #4	@, tmp158, pStreamSegArray, tmp154,
	ldrsb	r0, [r0, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp221,
	movtne	r0, #:upper16:954437177	@ tmp221,
	bne	.L602	@,
	b	.L598	@
.L600:
	add	r5, r4, r5, asl #4	@, tmp168, pStreamSegArray, tmp164,
	ldrsb	r5, [r5, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r5, #1	@ <variable>.SegState,
	beq	.L598	@,
.L602:
	add	r2, r2, #1	@ D.34978, i,
	smull	r3, r6, r0, r2	@, tmp210, tmp221, D.34978
	mov	r3, r2, asr #31	@ tmp213, D.34978,
	rsb	r5, r3, r6, asr #8	@, i, tmp213, tmp210,
	add	r3, r5, r5, asl #3	@, tmp216, i, i,
	sub	r3, r2, r3, asl #7	@ i.482, D.34978, tmp216,
	cmp	r3, ip	@ i.482, D.34969
	mov	r6, r3, asl #2	@ tmp163, i.482,
	mov	r2, r3	@ i, i.482
	add	r5, r6, r3	@ tmp164, tmp163, i.482
	bne	.L600	@,
.L597:
	mvn	r0, #2	@ Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L598:
	add	r6, r6, r3	@ tmp174, tmp220, i.482
	mov	r0, r1	@, pStreamSeg
	mov	r2, #80	@,
	add	lr, r4, r6, asl #4	@, tmp177, pStreamSegArray, tmp174,
	add	r6, r4, r6, asl #4	@, tmp201, pStreamSegArray, tmp174,
	add	r5, lr, #8	@ tmp178, tmp177,
	mov	r1, r5	@, tmp178
	bl	memcpy	@
	movw	r2, #:lower16:92204	@ tmp194,
	movw	r3, #:lower16:92208	@ tmp206,
	movt	r2, #:upper16:92204	@ tmp194,
	movt	r3, #:upper16:92208	@ tmp206,
	ldr	ip, [r6, #20]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #2	@ tmp192,
	strb	r0, [r5, #4]	@ tmp192, <variable>.SegState
	ldr	r5, [r4, r2]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	mov	r0, #0	@ Ret,
	ldr	r1, [r4, r3]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	rsb	ip, ip, r5	@ D.34983, <variable>.LenInByte, <variable>.SegFreshSize
	str	ip, [r4, r2]	@ D.34983, <variable>.SegFreshSize
	sub	ip, r1, #1	@ D.34985, <variable>.SegFreshNum,
	str	ip, [r4, r3]	@ D.34985, <variable>.SegFreshNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	ldr	r9, [r4, r6]	@ temp.2845, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	fp, r9, r9, asl #2	@, tmp163, temp.2845, temp.2845,
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
	add	r6, r0, #4	@ ivtmp.2882,,
	str	r3, [sp, #36]	@, %sfp
	add	r8, r0, r2	@ ivtmp.2885,,
	str	fp, [sp, #44]	@, %sfp
	mov	r7, #0	@ i,
	str	ip, [sp, #56]	@, %sfp
	b	.L611	@
.L625:
	ldr	r1, [sp, #24]	@, %sfp
	mov	r0, #1	@,
	strb	r0, [sp, #93]	@, SegPacket.IsLastSeg
	ldr	r0, [sp, #56]	@, %sfp
	str	r1, [sp, #100]	@, SegPacket.LenInByte
	ldr	lr, [r6, #0]	@ tmp210,* ivtmp.2882
	bic	r1, lr, #-1073741824	@, tmp210,
	bl	GetSegPts	@
	ldr	r7, [sp, #44]	@, %sfp
	mov	r0, r9	@, pSegArray
	mov	r1, r5	@, tmp242
	ldr	r2, [r4, r7]	@, <variable>.InstID
	bl	InsertStreamSeg	@
.L614:
	ldr	fp, [sp, #28]	@, %sfp
	ldr	r7, [sp, #32]	@ i, %sfp
	add	r6, r6, fp	@ ivtmp.2882, ivtmp.2882,
	add	r8, r8, fp	@ ivtmp.2885, ivtmp.2885,
.L611:
	ldr	r2, [sp, #60]	@, %sfp
	add	ip, r7, #1	@, i,
	mov	r1, r9	@, pSegArray
	mov	r0, r5	@, tmp242
	cmp	r2, r7	@, i
	str	ip, [sp, #32]	@, %sfp
	bls	.L613	@,
	ldr	r3, [r6, #-4]	@ CurrentStartCodePhyAddr,
	ldr	r2, [r8, #0]	@ NextStartCodePhyAddr,* ivtmp.2885
	cmp	r3, r2	@ CurrentStartCodePhyAddr, NextStartCodePhyAddr
	bls	.L624	@,
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
	bls	.L613	@,
	bl	CheckSegValid	@
	ldr	r2, [sp, #40]	@, %sfp
	mov	r3, r5	@, tmp242
	subs	r1, r0, #0	@ D.36417,
	ldr	r0, [sp, #56]	@, %sfp
	bne	.L613	@,
	cmp	fp, #0	@ SecondHalfSegLen,
	beq	.L625	@,
	ldr	r7, [sp, #24]	@, %sfp
	strb	r1, [sp, #93]	@ D.36417, SegPacket.IsLastSeg
	str	r7, [sp, #100]	@, SegPacket.LenInByte
	ldr	r1, [r6, #0]	@ tmp218,* ivtmp.2882
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
	ldr	ip, [r4, sl]	@ temp.2899, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r5	@, tmp242
	ldr	r7, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r3, #1	@,
	ldr	r2, [r4, lr]	@, <variable>.InstID
	str	ip, [sp, #96]	@ temp.2899, SegPacket.PhyAddr
	str	r7, [sp, #88]	@ <variable>.StreamSegArray.pSegBufVirAddr, SegPacket.VirAddr
	str	fp, [sp, #100]	@ SecondHalfSegLen, SegPacket.LenInByte
	strb	r3, [sp, #93]	@, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L614	@
.L624:
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
	bne	.L613	@,
	ldr	r1, [r6, #0]	@ tmp177,* ivtmp.2882
	bic	r1, r1, #-1073741824	@, tmp177,
	bl	GetSegPts	@
	ldr	r3, [sp, #44]	@, %sfp
	mov	r0, r9	@, pSegArray
	mov	r1, r5	@, tmp242
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L614	@,
.L613:
	cmp	r7, #0	@ i,
	beq	.L617	@,
	ldr	r3, [sp, #76]	@, %sfp
	ldr	r0, [r3, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r0, #1	@ prephitmp.2869, <variable>.StartCodeNum,
	cmp	r1, r7	@ prephitmp.2869, i
	bgt	.L626	@,
	cmp	r1, r7	@ prephitmp.2869, i
	beq	.L627	@,
.L620:
	add	sp, sp, #172	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L617:
	ldr	r0, [sp, #76]	@, %sfp
	ldr	r2, [r0, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r2, #1	@ prephitmp.2869, <variable>.StartCodeNum,
	cmp	r1, r7	@ prephitmp.2869, i
	bne	.L620	@,
.L627:
	movw	r3, #:lower16:166020	@ tmp240,
	movt	r3, #:upper16:166020	@ tmp240,
	mov	r0, r4	@, pScdInstance
	ldr	r2, [sp, #76]	@, %sfp
	ldr	r4, [r4, r3]	@ D.36433, <variable>.SmPushRaw.PushRawTotalLen
	bl	SetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #56]	@, %sfp
	mov	r1, r4	@, D.36433
	bl	DeleteRawLen	@
	b	.L620	@
.L626:
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
	b	.L620	@
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
	ldr	fp, [r4, r6]	@ D.36264, <variable>.last_start_code_addr
	.pad #12
	sub	sp, sp, #12	@,,
	umull	r6, ip, r7, r0	@, tmp157, tmp158, tmp154
	mov	r6, r1	@ pSegPacket, pSegPacket
	ldr	r9, [r4, r5]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	movw	r5, #:lower16:165984	@ tmp145,
	movt	r5, #:upper16:165984	@ tmp145,
	rsb	sl, fp, r2	@ FirstHalfSegLen, D.36264, RollPhyAddr
	movw	r7, #:lower16:73800	@ tmp164,
	movt	r7, #:upper16:73800	@ tmp164,
	ldr	r8, [r9, #0]	@ tmp149,* <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r1, ip, lsr #8	@ tmp156, tmp157,
	ldr	r9, [r4, r5]	@ SegBufferPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	str	fp, [r6, #8]	@ D.36264, <variable>.PhyAddr
	add	ip, r1, r1, asl #3	@, tmp161, tmp156, tmp156,
	ldr	r2, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r1, [r4, r7]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r8, r9, r8	@ SecondHalfSegLen, SegBufferPhyAddr, tmp149
	rsb	r3, r2, fp	@ tmp166, <variable>.StreamSegArray.SegBufPhyAddr, D.36264
	sub	r2, r0, ip, asl #7	@ tmp163, tmp154, tmp161,
	rsb	ip, r2, #1152	@ FreeSegSlotNum, tmp163,
	add	fp, sl, r8	@ tmp170, FirstHalfSegLen, SecondHalfSegLen
	cmp	ip, #2	@ FreeSegSlotNum,
	add	r1, r1, r3	@ tmp169, <variable>.StreamSegArray.pSegBufVirAddr, tmp166
	str	fp, [r6, #12]	@ tmp170, <variable>.LenInByte
	str	r1, [r6, #0]	@ tmp169, <variable>.VirAddr
	bhi	.L633	@,
.L629:
	mvn	r0, #3	@ D.36277,
.L631:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L633:
	add	lr, r4, #73728	@ pSegArray, pScdInstance,
	mov	r0, r6	@, pSegPacket
	add	fp, lr, #72	@ pSegArray, pSegArray,
	mov	r1, fp	@, pSegArray
	bl	CheckSegValid	@
	subs	ip, r0, #0	@ D.36276,
	bne	.L629	@,
	cmp	r8, #0	@ SecondHalfSegLen,
	beq	.L634	@,
	movw	lr, #:lower16:166068	@ tmp178,
	movt	lr, #:upper16:166068	@ tmp178,
	strb	ip, [r6, #5]	@ D.36276, <variable>.IsLastSeg
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
	mov	r0, r1	@ D.36277, D.36276
	b	.L631	@
.L634:
	movw	ip, #:lower16:166068	@ tmp174,
	movt	ip, #:upper16:166068	@ tmp174,
	str	sl, [r6, #12]	@ FirstHalfSegLen, <variable>.LenInByte
	mov	r2, #1	@ tmp172,
	mov	r0, fp	@, pSegArray
	strb	r2, [r6, #5]	@ tmp172, <variable>.IsLastSeg
	mov	r1, r6	@, pSegPacket
	ldr	r2, [r4, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r0, r8	@ D.36277, SecondHalfSegLen
	b	.L631	@
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
	bne	.L636	@,
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
	beq	.L637	@,
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
	bne	.L638	@,
	ldr	r2, [r8, #28]	@ <variable>.seg_next_addr, <variable>.seg_next_addr
	cmp	r2, ip	@ <variable>.seg_next_addr, <variable>.last_start_code_addr
	bcs	.L638	@,
	mov	r0, #1	@ tmp169,
	str	r0, [r4, r1]	@ tmp169, <variable>.roll_flag
	ldr	lr, [r8, #28]	@ temp.2962, <variable>.seg_next_addr
	movw	ip, #:lower16:166172	@ tmp170,
	ldr	r1, [r8, #16]	@ RollPhyAddr, <variable>.ScdRollAddr
	movt	ip, #:upper16:166172	@ tmp170,
	cmp	r3, lr	@ SegBufferPhyAddr, temp.2962
	rsbhi	r1, r3, r1	@ D.37630, SegBufferPhyAddr, RollPhyAddr
	addhi	r1, r1, lr	@ RollPhyAddr, D.37630, temp.2962
	str	r1, [r4, ip]	@ RollPhyAddr, <variable>.roll_addr
.L638:
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
.L637:
	movw	r3, #:lower16:166020	@ tmp177,
	movt	r3, #:upper16:166020	@ tmp177,
	add	r0, r4, #48	@, pScdInstance,
	ldr	r1, [r4, r3]	@, <variable>.SmPushRaw.PushRawTotalLen
	bl	DeleteRawLen	@
.L640:
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L636:
	movw	r7, #:lower16:166160	@ tmp181,
	movt	r7, #:upper16:166160	@ tmp181,
	mov	r1, #0	@ tmp179,
	strb	r1, [r4, #0]	@ tmp179, <variable>.SegFullFlag
	ldr	r0, [r4, r7]	@ <variable>.last_start_code_addr, <variable>.last_start_code_addr
	cmp	r0, r1	@ <variable>.last_start_code_addr,
	beq	.L640	@,
	add	ip, r4, #165888	@, pScdInstance,
	mov	r2, #80	@,
	mov	r0, sp	@,
	add	r1, ip, #288	@,,
	bl	memcpy	@
	movw	r2, #:lower16:166168	@ tmp188,
	movt	r2, #:upper16:166168	@ tmp188,
	ldr	r0, [r4, r2]	@ <variable>.roll_flag, <variable>.roll_flag
	cmp	r0, #1	@ <variable>.roll_flag,
	beq	.L647	@,
	movw	r0, #:lower16:166048	@ tmp195,
	movt	r0, #:upper16:166048	@ tmp195,
	ldr	r3, [r4, r7]	@ temp.2967, <variable>.last_start_code_addr
	ldr	r2, [r4, r0]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	r1, [r2, #0]	@ tmp196,* <variable>.BufAddrCfg.pUpMsgVirAddr
	cmp	r1, r3	@ tmp196, temp.2967
	bcs	.L648	@,
	mov	r0, r4	@, pScdInstance
	mov	r1, sp	@,
	ldr	r2, [r8, #16]	@, <variable>.ScdRollAddr
	bl	ProcessSegRoll	@
	b	.L640	@
.L647:
	movw	lr, #:lower16:166172	@ tmp191,
	movt	lr, #:upper16:166172	@ tmp191,
	mov	r0, r4	@, pScdInstance
	mov	r1, sp	@,
	ldr	r2, [r4, lr]	@, <variable>.roll_addr
	bl	ProcessSegRoll	@
	b	.L640	@
.L648:
	movw	lr, #:lower16:73800	@ tmp197,
	movt	lr, #:upper16:73800	@ tmp197,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r5, r4, #73728	@ pSegArray, pScdInstance,
	ldr	r0, [r4, lr]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r5, r5, #72	@ pSegArray, pSegArray,
	rsb	r1, ip, r3	@ tmp200, <variable>.StreamSegArray.SegBufPhyAddr, temp.2967
	str	r3, [sp, #8]	@ temp.2967, SegPacket.PhyAddr
	add	lr, r0, r1	@ tmp203, <variable>.StreamSegArray.pSegBufVirAddr, tmp200
	str	lr, [sp, #0]	@ tmp203, SegPacket.VirAddr
	ldr	ip, [r2, #0]	@ tmp207,* <variable>.BufAddrCfg.pUpMsgVirAddr
	mov	r0, sp	@,
	mov	r1, r5	@, pSegArray
	mov	r2, #1	@ tmp210,
	rsb	r3, r3, ip	@ tmp209, temp.2967, tmp207
	strb	r2, [sp, #5]	@ tmp210, SegPacket.IsLastSeg
	str	r3, [sp, #12]	@ tmp209, SegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	mvnne	r0, #3	@ Ret,
	bne	.L640	@,
	movw	r3, #:lower16:166068	@ tmp214,
	movt	r3, #:upper16:166068	@ tmp214,
	mov	r0, r5	@, pSegArray
	mov	r1, sp	@,
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	b	.L640	@
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
	mov	r7, r0	@ D.36557,
	ldr	r0, [fp, #16]	@, <variable>.ScdRollAddr
	mov	fp, r1, asl #2	@ D.36568,,
	bl	MEM_Phy2Vir	@
	ldr	r6, [sp, #16]	@, %sfp
	mov	r1, r7	@, D.36557
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
	add	r7, r0, fp	@ ivtmp.3000,, D.36568
	add	r4, r0, #4	@ ivtmp.2999,,
	mov	sl, r7	@ ivtmp.3000, ivtmp.3000
	b	.L650	@
.L666:
	ldr	r0, [sp, #88]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r0, #0	@ LastSegPacket.PhyAddr,
	beq	.L652	@,
	ldr	r2, [sp, #92]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r0, sp, #80	@,,
	ldr	r1, [sp, #16]	@, %sfp
	add	r8, r2, r8	@ tmp188, LastSegPacket.LenInByte, D.36571
	str	r8, [sp, #92]	@ tmp188, LastSegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	bne	.L653	@,
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
	bne	.L653	@,
.L654:
	ldr	r6, [sp, #20]	@ i, %sfp
	add	r4, r4, fp	@ ivtmp.2999, ivtmp.2999, D.36568
	add	sl, sl, fp	@ ivtmp.3000, ivtmp.3000, D.36568
.L650:
	ldr	lr, [sp, #28]	@, %sfp
	cmp	lr, r6	@, i
	bls	.L653	@,
	ldr	r7, [r4, #-4]	@ CurrentStartCodePhyAddr,
	add	r8, r6, #1	@, i,
	ldr	r0, [sl, #0]	@ NextStartCodePhyAddr,* ivtmp.3000
	sub	r2, r4, #4	@ D.36565, ivtmp.2999,
	str	r8, [sp, #20]	@, %sfp
	rsb	r8, r7, r0	@ D.36571, CurrentStartCodePhyAddr, NextStartCodePhyAddr
	cmp	r8, #3	@ D.36571,
	bgt	.L666	@,
	sub	r1, r8, #1	@ tmp213, D.36571,
	cmp	r1, #2	@ tmp213,
	bls	.L667	@,
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
	bls	.L653	@,
	mov	r0, r9	@, tmp308
	ldr	r1, [sp, #16]	@, %sfp
	str	r2, [sp, #8]	@,
	bl	CheckSegValid	@
	ldr	r2, [sp, #8]	@,
	subs	r7, r0, #0	@ D.36624,
	bne	.L653	@,
	cmp	r8, #0	@ SecondHalfSegLen,
	bne	.L656	@,
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
	ldr	r1, [r4, #0]	@ tmp272,* ivtmp.2999
	ldr	r0, [sp, #48]	@, %sfp
	bic	r1, r1, #-1073741824	@, tmp272,
	bl	GetSegPts	@
	ldr	r6, [sp, #24]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r9	@, tmp308
	ldr	r2, [r5, r6]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	b	.L654	@
.L652:
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
	str	r8, [sp, #172]	@ D.36571, SegPacket.LenInByte
	str	r3, [sp, #160]	@ tmp199, SegPacket.VirAddr
	str	r7, [sp, #168]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	strb	ip, [sp, #165]	@, SegPacket.IsLastSeg
	bl	CheckSegValid	@
	ldr	r2, [sp, #8]	@,
	cmp	r0, #0	@,
	bne	.L653	@,
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r0, [r5, r3]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	ip, [r4, #0]	@ tmp208,* ivtmp.2999
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
	beq	.L654	@,
.L653:
	cmp	r6, #0	@ i,
	beq	.L658	@,
	ldr	ip, [sp, #68]	@, %sfp
	ldr	r2, [ip, #12]	@ <variable>.StartCodeNum, <variable>.StartCodeNum
	sub	r1, r2, #1	@ D.36633, <variable>.StartCodeNum,
	cmp	r1, r6	@ D.36633, i
	bgt	.L668	@,
	beq	.L669	@,
.L658:
	mov	r0, r5	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
.L661:
	add	sp, sp, #244	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L656:
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r1, [sp, #52]	@, %sfp
	ldr	r0, [r5, r3]	@, <variable>.Mpeg4ModeFlag
	bl	ParseMpeg4UniqueUpMsg	@
	ldr	r0, [sp, #32]	@, %sfp
	strb	r7, [sp, #165]	@ D.36624, SegPacket.IsLastSeg
	mov	r3, r9	@, tmp308
	ldr	r2, [sp, #40]	@, %sfp
	str	r0, [sp, #172]	@, SegPacket.LenInByte
	ldr	r6, [r4, #0]	@ tmp284,* ivtmp.2999
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
	ldr	r6, [r5, r2]	@ temp.3027, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r3, [r5, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r1, r9	@, tmp308
	ldr	r2, [r5, lr]	@, <variable>.InstID
	ldr	r0, [sp, #16]	@, %sfp
	str	r6, [sp, #168]	@ temp.3027, SegPacket.PhyAddr
	str	r3, [sp, #160]	@ <variable>.StreamSegArray.pSegBufVirAddr, SegPacket.VirAddr
	str	r8, [sp, #172]	@ SecondHalfSegLen, SegPacket.LenInByte
	strb	ip, [sp, #165]	@, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L654	@
.L667:
	str	r2, [sp, #8]	@,
	bl	MEM_Phy2Vir	@
	ldrb	r6, [r0, #0]	@ zero_extendqisi2	@ tmp215,* D.36613
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp214,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ tmp218,
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ tmp221,
	orr	r3, ip, r6, asl #24	@, tmp217, tmp214, tmp215,
	orr	r0, r3, lr, asl #16	@, tmp220, tmp217, tmp218,
	orr	r2, r0, r1, asl #8	@, tmp223, tmp220, tmp221,
	bic	r6, r2, #255	@ tmp224, tmp223,
	ldr	r2, [sp, #8]	@,
	cmp	r6, #256	@ tmp224,
	beq	.L654	@,
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
	str	r8, [sp, #92]	@ D.36571, LastSegPacket.LenInByte
	str	lr, [sp, #80]	@ tmp234, LastSegPacket.VirAddr
	add	r3, sp, #80	@,,
	str	r7, [sp, #88]	@ CurrentStartCodePhyAddr, LastSegPacket.PhyAddr
	ldr	r1, [r4, #0]	@ tmp238,* ivtmp.2999
	ldr	r0, [sp, #48]	@, %sfp
	ldr	r2, [sp, #40]	@, %sfp
	bic	r1, r1, #-1073741824	@, tmp238,
	bl	GetSegPts	@
	b	.L654	@
.L668:
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
	b	.L661	@
.L669:
	movw	r2, #:lower16:166020	@ tmp305,
	movt	r2, #:upper16:166020	@ tmp305,
	mov	r0, r5	@, pScdInstance
	mov	r1, r6	@, i
	ldr	r4, [r5, r2]	@ D.36640, <variable>.SmPushRaw.PushRawTotalLen
	ldr	r2, [sp, #68]	@, %sfp
	bl	SetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #48]	@, %sfp
	mov	r1, r4	@, D.36640
	bl	DeleteRawLen	@
	b	.L661	@
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
	beq	.L672	@,
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
	bhi	.L676	@,
.L673:
	mov	r0, r4	@, pScdInstance
	mov	r1, r5	@, ValidStartCodeNum
	mov	r2, sp	@,
	rsbs	r7, r5, #1	@ tmp156, ValidStartCodeNum
	movcc	r7, #0	@ tmp156
	bl	ProcessLastUnfinishedSeg	@
	cmp	r0, #0	@ Ret,
	orrne	r7, r7, #1	@,, tmp159, tmp156
	cmp	r7, #0	@ tmp159,
	bne	.L672	@,
	ldr	ip, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	ip, #2	@ <variable>.Config.VidStd,
	beq	.L674	@,
	mov	r0, r4	@, pScdInstance
	sub	r1, r5, #1	@, ValidStartCodeNum,
	mov	r2, sp	@,
	bl	ProcessNotMpeg4ScdUpMsg	@
	mov	r0, r7	@ Ret, tmp159
.L672:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L676:
	ldrsb	r1, [r4, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	cmp	r1, #1	@ <variable>.LastCfgAllRawFlag,
	moveq	r1, #0	@ tmp150,
	streqb	r1, [r4, #2]	@ tmp150, <variable>.LastCfgAllRawFlag
	b	.L673	@
.L674:
	mov	r0, r4	@, pScdInstance
	sub	r1, r5, #1	@, ValidStartCodeNum,
	mov	r2, sp	@,
	bl	ProcessMpeg4ScdUpMsg	@
	mov	r0, r7	@ Ret, tmp159
	b	.L672	@
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	add	r2, r0, #14	@ tmp157, SmID,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, [r3, r2, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r5, r0	@ SmID, SmID
	cmp	r4, #0	@ pSmInstArray,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	bne	.L694	@,
.L678:
	mvn	r0, #0	@ D.35443,
.L683:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L694:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L678	@,
	movw	ip, #:lower16:73776	@ tmp161,
	movw	r3, #:lower16:73780	@ tmp162,
	movt	ip, #:upper16:73776	@ tmp161,
	movt	r3, #:upper16:73780	@ tmp162,
	mov	r1, #0	@ tmp158,
	str	r1, [sp, #20]	@ tmp158, TotalSrcLength
	str	r1, [sp, #28]	@ tmp158, SrcVirAddr
	str	r1, [sp, #24]	@ tmp158, SrcLength
	ldr	r8, [r4, ip]	@ D.35451, <variable>.RawPacketArray.Head
	ldr	r0, [r4, r3]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r8	@ <variable>.RawPacketArray.Tail, D.35451
	bne	.L695	@,
.L679:
	mvn	r0, #3	@ D.35443,
	b	.L683	@
.L695:
	mov	r2, #72	@ tmp166,
	add	r7, sp, #20	@ TotalSrcLength.518,,
	mla	r1, r2, r8, r4	@ tmp167, tmp166, D.35451, pSmInstArray
	mov	ip, r3	@ tmp313, tmp162
	mov	r3, r8	@ index.3096, D.35451
	mov	r0, #1	@ tmp170,
	ldr	sl, [r1, #56]	@ <variable>.Length, <variable>.Length
	str	r0, [sp, #12]	@ tmp170, RawNum
	str	sl, [sp, #20]	@ <variable>.Length,
.L680:
	mla	sl, r2, r3, r4	@ tmp186, tmp312, index.3096, pSmInstArray
	add	r0, r3, #1	@ D.37663, index.3096,
	mov	r3, r0, asl #22	@ index.3096, D.37663,
	mov	r3, r3, lsr #22	@ index.3096, index.3096,
	ldrb	r1, [sl, #100]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mla	r0, r2, r3, r4	@ tmp176, tmp312, index.3096, pSmInstArray
	cmp	r1, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L696	@,
	ldr	sl, [sp, #12]	@ RawNum, RawNum
	add	r1, sl, #1	@ D.37664, RawNum,
	str	r1, [sp, #12]	@ D.37664, RawNum
	ldr	sl, [r0, #56]	@ <variable>.Length, <variable>.Length
	ldr	r0, [sp, #20]	@ TotalSrcLength, TotalSrcLength
	add	r0, sl, r0	@ tmp180, <variable>.Length, TotalSrcLength
	str	r0, [r7, #0]	@ tmp180,* TotalSrcLength.518
	ldr	r0, [r4, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r3, r0	@ index.3096, <variable>.RawPacketArray.Tail
	beq	.L679	@,
	cmp	r1, #1024	@ D.37664,
	bls	.L680	@,
	mvn	r0, #3	@ D.35443,
	b	.L683	@
.L696:
	add	r9, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	r7, #:lower16:73800	@ tmp306,
	add	sl, r9, #72	@ pStreamSegArray, pStreamSegArray,
	movt	r7, #:upper16:73800	@ tmp306,
	add	r9, r4, #48	@ pRawPacketArray, pSmInstArray,
	mov	r0, sl	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	movw	r2, #:lower16:165988	@ tmp307,
	movt	r2, #:upper16:165988	@ tmp307,
	ldr	r1, [sp, #20]	@ TotalSrcLength.519, TotalSrcLength
	ldr	ip, [r4, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	cmp	r1, ip	@ TotalSrcLength.519, <variable>.StreamSegArray.SegBufSize
	bhi	.L697	@,
	mov	fp, #72	@ tmp185,
	movw	r1, #:lower16:165984	@ tmp189,
	mla	r0, fp, r8, r4	@ tmp194, tmp185, D.35451, pSmInstArray
	movt	r1, #:upper16:165984	@ tmp189,
	ldr	r7, [r4, r7]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	movw	r3, #:lower16:73776	@ tmp208,
	ldr	fp, [r4, r1]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	r3, #:upper16:73776	@ tmp208,
	ldr	ip, [r0, #56]	@ <variable>.Length, <variable>.Length
	str	ip, [sp, #24]	@ <variable>.Length, SrcLength
	ldr	lr, [r0, #52]	@ <variable>.VirAddr, <variable>.VirAddr
	str	lr, [sp, #28]	@ <variable>.VirAddr, SrcVirAddr
	ldr	r2, [r0, #56]	@ SrcLength.3089, <variable>.Length
	subs	lr, r2, #0	@ tmp217, SrcLength.3089,
	movne	lr, #1	@ tmp217
	str	r2, [sp, #24]	@ SrcLength.3089, SrcLength
	ldr	r1, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	r1, [sp, #16]	@ <variable>.RawPacketArray.Head, index
	ldr	ip, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	ip, #12	@ <variable>.Config.VidStd,
	movne	lr, #0	@, tmp217,
	cmp	lr, #0	@ tmp217,
	bne	.L698	@,
.L684:
	str	fp, [r6, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, fp	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	mov	fp, #72	@ tmp225,
	mla	r3, fp, r8, r4	@ tmp226, tmp225, D.35451, pSmInstArray
	mov	r2, #1	@ tmp241,
	str	r0, [r6, #0]	@ D.35489, <variable>.VirAddr
	rsb	r8, r0, r7	@ tmp222, D.35489, TmpVirAddr
	str	r8, [r6, #12]	@ tmp222, <variable>.LenInByte
	mov	r8, #0	@ i,
	ldrd	r0, [r3, #64]	@ <variable>.Pts, tmp226,
	strd	r0, [r6, #24]	@ <variable>.Pts, pStreamSeg,
	ldrd	r0, [r3, #64]	@ <variable>.Pts, tmp226,
	strd	r0, [r6, #32]	@ <variable>.Pts, pStreamSeg,
	ldrd	r0, [r3, #80]	@ <variable>.UserTag, tmp226,
	strb	r2, [r6, #5]	@ tmp241, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@ <variable>.UserTag, pStreamSeg,
	ldrd	r0, [r3, #88]	@ <variable>.DispTime, tmp226,
	strd	r0, [r6, #48]	@ <variable>.DispTime, pStreamSeg,
	ldr	ip, [r3, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	ip, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [r3, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	ip, [r3, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	ip, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r3, #116]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	b	.L685	@
.L686:
	cmp	r7, #0	@ TmpVirAddr,
	beq	.L679	@,
	ldr	r1, [sp, #28]	@ SrcVirAddr.529, SrcVirAddr
	cmp	r1, #0	@ SrcVirAddr.529,
	beq	.L679	@,
	ldr	r2, [sp, #24]	@, SrcLength
	bl	memcpy	@
	ldr	r0, [sp, #16]	@ index, index
	ldr	r2, [sp, #24]	@ SrcLength, SrcLength
	add	r3, r0, #1	@ tmp289, index,
	ldr	r1, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mla	r0, fp, r0, r4	@ tmp281, tmp311, index, pSmInstArray
	mov	ip, r3, asl #22	@ index.534, tmp289,
	add	r1, r1, r2	@ tmp287, <variable>.LenInByte, SrcLength
	add	r7, r7, r2	@ TmpVirAddr, TmpVirAddr, SrcLength
	mov	r3, ip, lsr #22	@ index.534, index.534,
	mla	ip, fp, r3, r4	@ tmp295, tmp311, index.534, pSmInstArray
	ldrb	r2, [r0, #101]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	str	r1, [r6, #12]	@ tmp287, <variable>.LenInByte
	str	r3, [sp, #16]	@ index.534, index
	strb	r2, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	ldr	r3, [ip, #52]	@ <variable>.VirAddr, <variable>.VirAddr
	str	r3, [sp, #28]	@ <variable>.VirAddr, SrcVirAddr
	ldr	r1, [ip, #56]	@ <variable>.Length, <variable>.Length
	str	r1, [sp, #24]	@ <variable>.Length, SrcLength
.L685:
	ldr	lr, [sp, #12]	@ RawNum, RawNum
	mov	r0, r7	@, TmpVirAddr
	cmp	r8, lr	@ i, RawNum
	add	r8, r8, #1	@ i, i,
	bcc	.L686	@,
	mov	r1, r6	@, pStreamSeg
	mov	r2, r5	@, SmID
	mov	r0, sl	@, pStreamSegArray
	bl	InsertStreamSeg	@
	mov	r0, r9	@, pRawPacketArray
	ldr	r1, [sp, #20]	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.35443,
	b	.L683	@
.L697:
	mov	r0, r9	@, pRawPacketArray
	bl	DeleteRawLen	@
	mvn	r0, #3	@ D.35443,
	b	.L683	@
.L698:
	mov	r0, r9	@, pRawPacketArray
	add	r1, sp, #12	@,,
	add	r2, sp, #28	@,,
	add	r3, sp, #24	@,,
	add	lr, sp, #16	@ tmp221,,
	str	lr, [sp, #0]	@ tmp221,
	bl	AdjustRawPacketVP6A	@
	cmp	r0, #0	@,
	beq	.L684	@,
	mvn	r0, #3	@ D.35443,
	b	.L683	@
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
	bne	.L705	@,
.L701:
	mov	r0, r7	@, Ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L705:
	ldr	r0, [r4, #16]	@, <variable>.Config.VidStd
	add	r1, r4, #32	@, pSmInstArray,
	bl	SCDDRV_IsSCDByPass	@
	cmp	r0, #0	@,
	bne	.L706	@,
.L702:
	add	r7, r4, #73728	@, pSmInstArray,
	mov	r1, r5	@, pStreamSeg
	add	r0, r7, #72	@,,
	bl	SCDDRV_GetStreamSeg	@
	subs	r7, r0, #0	@ Ret,
	beq	.L707	@,
	movw	r3, #:lower16:166124	@ tmp160,
	movt	r3, #:upper16:166124	@ tmp160,
	ldr	r0, [r4, r3]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r2, r0, #1	@ tmp163, <variable>.numReadSegFail,
	mov	r0, r7	@, Ret
	str	r2, [r4, r3]	@ tmp163, <variable>.numReadSegFail
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L706:
	mov	r0, r6	@, SmID
	mov	r1, r5	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L702	@,
	movw	r1, #:lower16:166124	@ tmp152,
	movt	r1, #:upper16:166124	@ tmp152,
	mvn	r7, #6	@ Ret,
	ldr	ip, [r4, r1]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, ip, #1	@ tmp155, <variable>.numReadSegFail,
	str	r0, [r4, r1]	@ tmp155, <variable>.numReadSegFail
	b	.L701	@
.L707:
	movw	lr, #:lower16:166124	@ tmp158,
	movt	lr, #:upper16:166124	@ tmp158,
	mov	r0, r6	@, SmID
	mov	r1, r5	@, pStreamSeg
	str	r7, [r4, lr]	@ Ret, <variable>.numReadSegFail
	bl	SCDDRV_SaveSegStream	@
	b	.L701	@
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
	ldr	r3, [r0, r4]	@ D.34482, <variable>.CurShowIndex
	cmp	r3, r2	@ D.34482, <variable>.Tail
	mvneq	r0, #2	@ D.34486,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, r3, r3, asl #3	@, tmp143, D.34482, D.34482,
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r5, lr, asl #3	@,, pRawStreamArray, tmp143,
	bl	memcpy	@
	ldr	r3, [r5, r4]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	mov	r0, #0	@ D.34486,
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
	beq	.L717	@,
	movw	lr, #:lower16:73732	@ tmp141,
	movt	lr, #:upper16:73732	@ tmp141,
	mov	r1, #73728	@ tmp140,
	ldr	r0, [r3, lr]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, r1]	@ prephitmp.3162, <variable>.Head
	cmp	ip, r0	@ prephitmp.3162, <variable>.Tail
	movwne	r0, #:lower16:73740	@ tmp143,
	movtne	r0, #:upper16:73740	@ tmp143,
	moveq	r6, #0	@ prephitmp.3164,
	ldrne	r5, [r3, r0]	@ FirstRawOffset, <variable>.FirstPacketOffset
	moveq	r5, r6	@ FirstRawOffset, prephitmp.3164
	movne	r6, r5	@ prephitmp.3164, FirstRawOffset
.L714:
	movw	lr, #:lower16:73744	@ tmp144,
	movt	lr, #:upper16:73744	@ tmp144,
	mov	r0, r3	@, pRawStreamArray
	mov	r1, r4	@, pRawPacket
	str	ip, [r3, lr]	@ prephitmp.3162, <variable>.CurShowIndex
	bl	ShowRawPacket	@
	ldr	r2, [r4, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldmib	r4, {r0, r3}	@ phole ldm
	add	ip, r2, r5	@ tmp146, <variable>.PhyAddr, FirstRawOffset
	add	r6, r0, r6	@ tmp148, <variable>.VirAddr, prephitmp.3164
	str	ip, [r4, #0]	@ tmp146, <variable>.PhyAddr
	rsb	r5, r5, r3	@ tmp150, FirstRawOffset, <variable>.Length
	str	r6, [r4, #4]	@ tmp148, <variable>.VirAddr
	str	r5, [r4, #8]	@ tmp150, <variable>.Length
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L717:
	mov	r2, #73728	@ tmp139,
	mov	r6, r3	@ prephitmp.3164, pRawStreamArray
	ldr	ip, [r3, r2]	@ prephitmp.3162, <variable>.Head
	mov	r5, r3	@ FirstRawOffset, pRawStreamArray
	b	.L714	@
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
	add	r5, r0, #14	@, inst_id,
	add	r0, sp, #24	@,,
	str	r1, [sp, #4]	@ pSmPushRaw, %sfp
	mov	r1, #0	@,
	str	r2, [sp, #8]	@ SegStreamSize, %sfp
	mov	r2, #72	@,
	str	r3, [sp, #12]	@ pRawStreamArray, %sfp
	movw	r4, #:lower16:.LANCHOR0	@,
	str	r5, [sp, #20]	@, %sfp
	movt	r4, #:upper16:.LANCHOR0	@,
	ldr	r5, [sp, #136]	@ pDownMsgVirAddr, pDownMsgVirAddr
	str	r4, [sp, #16]	@, %sfp
	bl	memset	@
	ldr	r2, [sp, #16]	@, %sfp
	mov	r4, #0	@ tmp253,
	ldr	r1, [sp, #20]	@, %sfp
	ldr	fp, [r2, r1, asl #2]	@ D.35941, s_SmIIS.pSmInstArray
	mov	r1, #8192	@,
	add	r0, fp, #165888	@, D.35941,
	add	r0, r0, #368	@,,
	bl	__memzero	@
	ldr	r0, [sp, #12]	@, %sfp
	add	r1, sp, #24	@,,
	bl	GetFirstRawPacket	@
	ldr	r6, [sp, #32]	@ RawShowTotalLen, RawPacket.Length
	str	r4, [r5, #0]	@ tmp253,* pDownMsgVirAddr
	ldr	r3, [sp, #8]	@, %sfp
	str	r4, [r5, #4]	@ tmp253,
	str	r4, [r5, #8]	@ tmp253,
	cmp	r6, r3	@ RawShowTotalLen,
	movgt	r2, #0	@, tmp261
	movle	r2, #1	@, tmp261
	ldr	sl, [sp, #4]	@, %sfp
	cmp	r2, r4	@ tmp261,
	mov	r3, r6	@ RawPacket.Length, RawShowTotalLen
	movne	r9, r4	@ list_length, PushRawNum
	movne	r7, r4	@ j.3319, PushRawNum
	str	r4, [sl, #4]	@ tmp253, <variable>.PushRawTotalLen
	bne	.L723	@,
	b	.L789	@
.L722:
	ldr	r3, [sp, #32]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	ldr	r1, [sp, #8]	@, %sfp
	cmp	r4, r0	@ PushRawNum,
	movgt	ip, #0	@, tmp289
	movle	ip, #1	@, tmp289
	add	r6, r6, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	r1, r6	@, RawShowTotalLen
	mov	r1, r3	@ prephitmp.3219, RawPacket.Length
	movlt	ip, #0	@, tmp289,
	cmp	ip, #0	@ tmp289,
	beq	.L720	@,
.L723:
	add	r2, fp, r9, asl #3	@, tmp274, D.35941, list_length,
	cmp	r3, #0	@ RawPacket.Length,
	add	lr, r7, #1	@ j, j.3319,
	add	ip, r9, #20736	@ tmp269, list_length,
	add	r2, r2, #165888	@ tmp275, tmp274,
	ldr	r0, [sp, #12]	@, %sfp
	add	r1, sp, #24	@,,
	add	r8, lr, #1	@ j.3297, j,
	add	ip, ip, #46	@ tmp269, tmp269,
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	add	r2, r2, #372	@ tmp275, tmp275,
	ble	.L721	@,
	ldr	sl, [sp, #28]	@, RawPacket.VirAddr
	add	r9, r9, #1	@ list_length, list_length,
	str	sl, [sp, #0]	@, %sfp
	ldr	sl, [sp, #24]	@, RawPacket.PhyAddr
	add	r3, sl, r3	@ tmp263,, RawPacket.Length
	str	sl, [r5, r7, asl #2]	@,* pDownMsgVirAddr
	sub	sl, r3, #1	@ tmp266, tmp263,
	str	sl, [r5, lr, asl #2]	@ tmp266,* pDownMsgVirAddr
	add	r7, r8, #1	@ j.3319, j.3297,
	ldr	lr, [sp, #140]	@, DownMsgPhyAddr
	add	r3, lr, r7, asl #2	@, tmp268,, j.3319,
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
.L721:
	ldr	r2, [sp, #4]	@, %sfp
	str	r6, [r2, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowRawPacket	@
	cmp	r0, #0	@,
	beq	.L722	@,
	ldr	r1, [sp, #32]	@ prephitmp.3219, RawPacket.Length
.L720:
	cmp	r1, #0	@ prephitmp.3219,
	beq	.L724	@,
	ldr	sl, [sp, #4]	@, %sfp
	ldr	r2, [sl, #4]	@ D.35981, <variable>.PushRawTotalLen
	ldr	sl, [sp, #8]	@, %sfp
	sub	r3, sl, #16	@ tmp292,,
	cmp	sl, r6	@, RawShowTotalLen
	cmplt	r2, r3	@, D.35981, tmp292
	bge	.L724	@,
	cmp	r4, #1024	@ PushRawNum,
	bge	.L725	@,
	rsb	r2, r2, sl	@ D.35990, D.35981,
	cmp	r2, r1	@ D.35990, prephitmp.3219
	bgt	.L724	@,
	ldr	sl, [sp, #24]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r0, r7, #1	@ j.3307, j.3319,
	ldr	r6, [sp, #28]	@ RawPacket.VirAddr, RawPacket.VirAddr
	add	ip, r0, #1	@ j.3315, j.3307,
	add	r1, sl, r2	@ tmp300, RawPacket.PhyAddr, D.35990
	add	r3, r9, #20736	@ tmp306, list_length,
	str	sl, [r5, r7, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	sl, r1, #1	@ tmp303, tmp300,
	str	r2, [sp, #32]	@ D.35990, RawPacket.Length
	add	r3, r3, #46	@ tmp306, tmp306,
	str	sl, [r5, r0, asl #2]	@ tmp303,* pDownMsgVirAddr
	add	r7, ip, #1	@ j.3319, j.3315,
	ldr	r1, [sp, #140]	@, DownMsgPhyAddr
	add	r4, r4, #1	@ PushRawNum, PushRawNum,
	add	r2, r1, r7, asl #2	@, tmp305,, j.3319,
	str	r2, [r5, ip, asl #2]	@ tmp305,* pDownMsgVirAddr
	str	r6, [fp, r3, asl #3]	@ RawPacket.VirAddr, <variable>.raw_msg_arr
	add	r2, fp, r9, asl #3	@, tmp311, D.35941, list_length,
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
.L725:
	sub	r0, r7, #1	@ tmp323, j.3319,
	mov	sl, #0	@ tmp324,
	movw	ip, #:lower16:166148	@ tmp321,
	movt	ip, #:upper16:166148	@ tmp321,
	str	sl, [r5, r0, asl #2]	@ tmp324,* pDownMsgVirAddr
	movw	r1, #:lower16:166140	@ tmp328,
	ldr	r7, [sp, #20]	@, %sfp
	movt	r1, #:upper16:166140	@ tmp328,
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r3, [sp, #4]	@, %sfp
	ldr	r5, [r2, r7, asl #2]	@ temp.3336, s_SmIIS.pSmInstArray
	movw	r2, #:lower16:166144	@ tmp322,
	ldr	r7, [r3, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	movt	r2, #:upper16:166144	@ tmp322,
	movw	r3, #:lower16:166136	@ tmp333,
	movt	r3, #:upper16:166136	@ tmp333,
	ldr	r0, [r5, ip]	@ <variable>.scd_previous_byte_lsb, <variable>.scd_previous_byte_lsb
	cmp	r7, #6	@ <variable>.PushRawTotalLen,
	movge	r7, #6	@ need_update_bytes,
	cmp	r7, #5	@ need_update_bytes,
	add	ip, fp, #165888	@ lsb_write, D.35941,
	str	r0, [r5, r1]	@ <variable>.scd_previous_byte_lsb, <variable>.pre_scd_previous_byte_lsb
	mov	sl, ip	@ msb_write, lsb_write
	ldr	r5, [sp, #20]	@, %sfp
	add	ip, ip, #260	@ lsb_write, lsb_write,
	ldr	r0, [sp, #16]	@, %sfp
	add	sl, sl, #256	@ msb_write, msb_write,
	movhi	r8, #4	@ lsb_need_bytes,
	ldr	r1, [r0, r5, asl #2]	@ temp.3337, s_SmIIS.pSmInstArray
	ldrh	r5, [r1, r2]	@, <variable>.scd_previous_byte_msb
	strh	r5, [r1, r3]	@ movhi	@, <variable>.pre_scd_previous_byte_msb
	movhi	r1, #2	@,
	strhi	r1, [sp, #0]	@, %sfp
	bls	.L786	@,
.L728:
	cmp	r9, #0	@ list_index
	ble	.L737	@,
	add	r6, r9, #20736	@ tmp360, list_index,
	add	r7, r6, #46	@ tmp360, tmp360,
	add	r7, fp, r7, asl #3	@, ivtmp.3258, D.35941, tmp360,
	ldr	fp, [sp, #0]	@ msb_need_bytes, %sfp
	str	r4, [sp, #0]	@ PushRawNum, %sfp
.L743:
	ldr	r1, [r7, #-4]	@ raw_packet_end_addr, <variable>.raw_msg_arr
	ldr	r2, [r7, #-8]	@ tmp364, <variable>.raw_msg_arr
	add	r4, r1, #1	@ tmp363, raw_packet_end_addr,
	rsb	r6, r2, r4	@ raw_packet_length, tmp364, tmp363
	cmp	r8, r6	@ lsb_need_bytes, raw_packet_length
	movcc	r0, r8	@ copy_length, lsb_need_bytes
	movcs	r0, r6	@ copy_length, raw_packet_length
	cmp	r8, #0	@ lsb_need_bytes,
	beq	.L738	@,
	cmp	r0, #0	@ copy_length,
	beq	.L739	@,
	ldrb	r5, [r1, #0]	@ zero_extendqisi2	@ tmp366,* raw_packet_end_addr
	mov	r3, #1	@ lsb_index,
	cmp	r0, r3	@ copy_length, lsb_index
	mvn	r2, #0	@ tmp387,
	add	r4, r2, r0	@ tmp386, tmp387, copy_length
	strb	r5, [ip, #0]	@ tmp366,* lsb_write
	and	r4, r4, r3	@ tmp388, tmp386,
	bls	.L773	@,
	cmp	r4, #0	@ tmp388,
	beq	.L740	@,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp429,* raw_packet_end_addr
	strb	r4, [ip, r3]	@ tmp429,* lsb_index
	mov	r3, #2	@ lsb_index,
	cmp	r0, r3	@ copy_length, lsb_index
	bls	.L773	@,
.L740:
	rsb	r5, r3, #0	@ tmp415, lsb_index
	add	r2, r3, #1	@ tmp389, lsb_index,
	rsb	r4, r2, #0	@ tmp418, tmp389
	ldrb	r5, [r5, r1]	@ zero_extendqisi2	@ tmp416,* raw_packet_end_addr
	strb	r5, [ip, r3]	@ tmp416,* lsb_index
	add	r3, r2, #1	@ lsb_index, tmp389,
	ldrb	r4, [r4, r1]	@ zero_extendqisi2	@ tmp419,* raw_packet_end_addr
	cmp	r0, r3	@ copy_length, lsb_index
	strb	r4, [ip, r2]	@ tmp419,
	bhi	.L740	@,
.L773:
	subs	r8, r8, r0	@ lsb_need_bytes, lsb_need_bytes, copy_length
	add	ip, ip, r0	@ lsb_write, lsb_write, copy_length
	beq	.L738	@,
.L739:
	sub	r9, r9, #1	@ list_index, list_index,
	sub	r7, r7, #8	@ ivtmp.3258, ivtmp.3258,
	cmp	r9, #0	@ list_index,
	bgt	.L743	@,
.L776:
	ldr	r4, [sp, #0]	@ PushRawNum, %sfp
.L737:
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, #0	@ D.35996,
	mov	ip, #1	@ tmp371,
	str	r4, [r3, #0]	@ PushRawNum, <variable>.PushRawNum
	ldr	r5, [sp, #4]	@, %sfp
	str	ip, [r5, #8]	@ tmp371, <variable>.PushRawOverState
.L726:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L724:
	cmp	r4, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.35996,
	bne	.L725	@,
	b	.L726	@
.L738:
	cmp	fp, #0	@ msb_need_bytes,
	beq	.L776	@,
	rsb	r6, r0, r6	@ left_length, copy_length, raw_packet_length
	rsb	r1, r0, r1	@ D.36041, copy_length, raw_packet_end_addr
	cmp	r6, fp	@ left_length, msb_need_bytes
	movcs	r6, fp	@ copy_length.3344, msb_need_bytes
	cmp	r6, #0	@ copy_length.3344,
	beq	.L741	@,
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ tmp369,* D.36041
	mov	r3, #1	@ msb_index,
	cmp	r6, r3	@ copy_length.3344, msb_index
	mvn	r2, #0	@ tmp383,
	add	r0, r2, r6	@ tmp382, tmp383, copy_length.3344
	strb	r4, [sl, #0]	@ tmp369,* msb_write
	and	r0, r0, r3	@ tmp384, tmp382,
	bls	.L774	@,
	cmp	r0, #0	@ tmp384,
	beq	.L742	@,
	ldrb	r2, [r2, r1]	@ zero_extendqisi2	@ tmp427,* D.36041
	strb	r2, [sl, r3]	@ tmp427,* msb_index
	mov	r3, #2	@ msb_index,
	cmp	r6, r3	@ copy_length.3344, msb_index
	bls	.L774	@,
.L742:
	rsb	r5, r3, #0	@ tmp421, msb_index
	add	r2, r3, #1	@ tmp385, msb_index,
	rsb	r0, r2, #0	@ tmp424, tmp385
	ldrb	r4, [r5, r1]	@ zero_extendqisi2	@ tmp422,* D.36041
	strb	r4, [sl, r3]	@ tmp422,* msb_index
	add	r3, r2, #1	@ msb_index, tmp385,
	ldrb	r5, [r0, r1]	@ zero_extendqisi2	@ tmp425,* D.36041
	cmp	r6, r3	@ copy_length.3344, msb_index
	strb	r5, [sl, r2]	@ tmp425,
	bhi	.L742	@,
.L774:
	subs	fp, fp, r6	@ msb_need_bytes, msb_need_bytes, copy_length.3344
	add	sl, sl, r6	@ msb_write, msb_write, copy_length.3344
	beq	.L776	@,
.L741:
	mov	r8, #0	@ lsb_need_bytes,
	b	.L739	@
.L786:
	cmp	r7, #1	@ need_update_bytes,
	rsb	r8, r7, #6	@ need_shift_bytes.3338, need_update_bytes,
	beq	.L787	@,
	rsb	r3, r7, #5	@ tmp343, need_update_bytes,
	mov	r5, ip	@ lsb_write, lsb_write
	add	r6, ip, r3	@ src_index, lsb_write, tmp343
	mov	r3, #1	@ msb_need_bytes.3346,
	rsb	r6, r8, r6	@ tmp379, need_shift_bytes, src_index
	b	.L733	@
.L788:
	mov	r3, ip	@ msb_need_bytes.3346, msb_need_bytes.3345
.L733:
	ldrb	r2, [r6, r8]	@ zero_extendqisi2	@ tmp346,* need_shift_bytes
	subs	r8, r8, #1	@ need_shift_bytes, need_shift_bytes,
	rsb	r0, r3, #2	@ tmp348, msb_need_bytes.3346,
	sub	ip, r3, #1	@ msb_need_bytes.3345, msb_need_bytes.3346,
	moveq	r1, #0	@, tmp352
	movne	r1, #1	@, tmp352
	cmp	r0, #1	@ tmp348,
	movhi	r1, #0	@, tmp355
	andls	r1, r1, #1	@,, tmp355, tmp352
	cmp	r1, #0	@ tmp355,
	strb	r2, [sl, r3]	@ tmp346,* msb_need_bytes.3346
	bne	.L788	@,
	cmp	r3, #0	@
	mov	ip, r5	@ lsb_write, lsb_write
	str	r3, [sp, #0]	@, %sfp
	movne	r8, #4	@ lsb_need_bytes,
	bne	.L728	@,
	cmp	r8, #0	@ need_shift_bytes,
	rsb	r5, r7, #3	@ tmp356, need_update_bytes,
	add	r6, ip, r5	@ src_index.3341, lsb_write, tmp356
	addeq	r8, r8, #4	@ lsb_need_bytes, lsb_need_bytes,
	beq	.L728	@,
	sub	r3, r8, #1	@ tmp395, need_shift_bytes,
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@ tmp357,* src_index.3341
	cmp	r3, #0	@ tmp395,
	and	r0, r3, #1	@ tmp397, tmp395,
	mov	r2, #2	@ ivtmp.3271,
	mvn	r3, #0	@ ivtmp.3272,
	strb	r1, [ip, #3]	@ tmp357,
	beq	.L772	@,
	cmp	r0, #0	@ tmp397,
	beq	.L736	@,
	ldrb	r1, [r6, #-1]	@ zero_extendqisi2	@ tmp431,
	cmp	r8, #2	@ need_shift_bytes,
	mov	r2, #1	@ ivtmp.3271,
	mvn	r3, #1	@ ivtmp.3272,
	strb	r1, [ip, #2]	@ tmp431,
	beq	.L772	@,
.L736:
	ldrb	r7, [r6, r3]	@ zero_extendqisi2	@ tmp408,* ivtmp.3272
	sub	r0, r3, #1	@ tmp399, ivtmp.3272,
	sub	r3, r0, #1	@ ivtmp.3272, tmp399,
	sub	r1, r2, #1	@ tmp398, ivtmp.3271,
	add	r5, r3, r8	@ tmp413, ivtmp.3272, need_shift_bytes
	strb	r7, [ip, r2]	@ tmp408,* ivtmp.3271
	cmp	r5, #0	@ tmp413,
	ldrb	r0, [r6, r0]	@ zero_extendqisi2	@ tmp412,
	sub	r2, r1, #1	@ ivtmp.3271, tmp398,
	strb	r0, [ip, r1]	@ tmp412,
	bne	.L736	@,
.L772:
	rsb	r8, r8, #4	@ lsb_need_bytes, need_shift_bytes,
	b	.L728	@
.L787:
	ldrb	r3, [sl, #0]	@ zero_extendqisi2	@ tmp337,* msb_write
	subs	r1, r8, #2	@ need_shift_bytes.3339, need_shift_bytes.3338,
	moveq	r8, #4	@ lsb_need_bytes,
	strb	r3, [sl, #1]	@ tmp337,
	ldrb	r5, [ip, #3]	@ zero_extendqisi2	@ tmp339,
	strb	r5, [sl, #0]	@ tmp339,* msb_write
	streq	r1, [sp, #0]	@ need_shift_bytes.3339, %sfp
	beq	.L728	@,
	ldrb	r2, [ip, #2]	@ zero_extendqisi2	@ tmp341,
	cmp	r1, #1	@ need_shift_bytes.3339,
	sub	r0, r8, #3	@ tmp390, need_shift_bytes.3338,
	sub	r3, ip, #1	@ ivtmp.3267, lsb_write,
	and	r0, r0, #1	@ tmp392, tmp390,
	strb	r2, [ip, #3]	@ tmp341,
	bls	.L771	@,
	cmp	r0, #0	@ tmp392,
	beq	.L731	@,
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp430,
	mov	r7, #2	@ polit_index,
	cmp	r1, r7	@ need_shift_bytes.3339, polit_index
	strb	r0, [r3, #3]	@ tmp430,
	sub	r3, r3, #1	@ ivtmp.3267, ivtmp.3267,
	bls	.L771	@,
.L731:
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ tmp402,
	sub	r2, r3, #1	@ tmp394, ivtmp.3267,
	add	r7, r7, #2	@ polit_index, polit_index,
	cmp	r1, r7	@ need_shift_bytes.3339, polit_index
	strb	r0, [r3, #3]	@ tmp402,
	sub	r3, r2, #1	@ ivtmp.3267, tmp394,
	ldrb	r5, [r2, #2]	@ zero_extendqisi2	@ tmp405,
	strb	r5, [r2, #3]	@ tmp405,
	bhi	.L731	@,
.L771:
	mov	r1, #0	@,
	rsb	r8, r8, #6	@ lsb_need_bytes, need_shift_bytes.3338,
	str	r1, [sp, #0]	@, %sfp
	b	.L728	@
.L789:
	mov	r4, r2	@ PushRawNum, tmp261
	mov	r1, r6	@ prephitmp.3219, RawShowTotalLen
	mov	r9, r2	@ list_length, PushRawNum
	mov	r7, r2	@ j.3319, PushRawNum
	b	.L720	@
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
	bne	.L796	@,
.L791:
	mvn	r0, #0	@ D.34446,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L796:
	ldr	r3, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r3, #0	@ <variable>.VirAddr,
	beq	.L791	@,
	cmp	r4, #0	@ pSmInst,
	beq	.L791	@,
	movw	r5, #:lower16:73780	@ tmp143,
	movt	r5, #:upper16:73780	@ tmp143,
	movw	r2, #:lower16:73784	@ tmp152,
	movt	r2, #:upper16:73784	@ tmp152,
	ldr	r3, [r4, r5]	@ D.37686, <variable>.RawPacketArray.Tail
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r2, r3, #1	@ tmp144, D.37686,
	mov	r0, r2, asr #31	@ tmp146, tmp144,
	mov	r0, r0, lsr #22	@ tmp147, tmp146,
	add	r2, r2, r0	@ tmp148, tmp144, tmp147
	mov	r2, r2, asl #22	@ tmp149, tmp148,
	mov	r2, r2, lsr #22	@ tmp149, tmp149,
	rsb	r2, r0, r2	@ tmp151, tmp147, tmp149
	cmp	r2, ip	@ tmp151, <variable>.RawPacketArray.History
	mvneq	r0, #3	@ D.34446,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	ip, r4, #48	@ tmp154, pSmInst,
	mov	lr, #72	@ tmp156,
	mov	r2, lr	@, tmp156
	mla	r0, lr, r3, ip	@, tmp156, D.37686, tmp154
	bl	memcpy	@
	ldr	r0, [r4, r5]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movw	r3, #:lower16:-2147482625	@ tmp166,
	movt	r3, #:upper16:-2147482625	@ tmp166,
	add	ip, r0, #1	@ tmp164, <variable>.RawPacketArray.Tail,
	mov	r0, #0	@ D.34446,
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
	movw	r7, #:lower16:.LANCHOR0	@ tmp191,
	movt	r7, #:upper16:.LANCHOR0	@ tmp191,
	add	r6, sp, #8	@ tmp190,,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	ldr	r4, [r7, r3, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r6	@, tmp190
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L804	@,
	ldr	r0, [r4, #16]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #18	@ <variable>.Config.VidStd,
	beq	.L804	@,
	add	r8, r7, r5, asl #2	@, tmp199, tmp191, InstID,
	movw	r1, #:lower16:166120	@,
	add	r2, r8, #100	@, tmp199,
	movw	r7, #:lower16:166112	@ tmp193,
	movw	r8, #:lower16:166116	@ tmp194,
	movt	r1, #:upper16:166120	@,
	movw	sl, #:lower16:g_TraceBsPeriod	@ tmp201,
	str	r2, [sp, #4]	@, %sfp
	movt	r7, #:upper16:166112	@ tmp193,
	movt	r8, #:upper16:166116	@ tmp194,
	str	r1, [sp, #0]	@, %sfp
	movt	sl, #:upper16:g_TraceBsPeriod	@ tmp201,
	b	.L805	@
.L802:
	mov	r0, r5	@, InstID
	mov	r1, r4	@, pSmInstArray
	mov	r2, r6	@, tmp190
	bl	SCDDRV_SaveRawStream	@
.L805:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L804	@,
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp190
	bl	ReadRawStreamData	@
	subs	fp, r0, #0	@ D.36739,
	bne	.L804	@,
	ldr	ip, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	lr, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	add	r9, lr, ip	@ tmp152, RawPacket.Length, <variable>.TotalRawSize
	str	r9, [r4, r7]	@ tmp152, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, r8]	@ D.36745, <variable>.LastStatTime
	cmp	r1, #0	@ D.36745,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	beq	.L800	@,
	rsb	r1, r1, r0	@ TimePeriod, D.36745, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L800	@,
	ldr	ip, [r4, r7]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	mov	r0, ip, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@,
	str	fp, [r4, r7]	@ D.36739, <variable>.TotalRawSize
	str	r9, [r4, r8]	@ ThisTime, <variable>.LastStatTime
	mul	r2, r1, r0	@ tmp163,,
	ldr	r0, [sp, #0]	@, %sfp
	mov	r3, r2, lsr #10	@ tmp165, tmp163,
	str	r3, [r4, r0]	@ tmp165, <variable>.BitRate
.L800:
	ldrd	r2, [sp, #24]	@ RawPacket.Pts,,
	mvn	r0, #0	@,
	mov	r1, #0	@,
	cmp	r3, r1	@ RawPacket.Pts,
	cmpeq	r2, r0	@ RawPacket.Pts,
	beq	.L806	@,
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp190
	bl	SCDDRV_InsertRawPacket	@
	cmp	r0, #0	@,
	bne	.L804	@,
.L807:
	mov	lr, #1	@ tmp173,
	strb	lr, [r4, #3]	@ tmp173, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L802	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r3, [sl, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	ip, [r1, #0]	@ tmp181, last_rec_pos_time
	rsb	r2, ip, r0	@ tmp180, tmp181, ThisTime.3396
	cmp	r2, r3	@ tmp180, g_TraceBsPeriod
	strhi	r0, [r1, #0]	@ ThisTime.3396, last_rec_pos_time
	b	.L802	@
.L806:
	mov	r0, r5	@, InstID
	mov	r1, r6	@, tmp190
	mvn	r2, #0	@ tmp171,
	mvn	r3, #0	@,
	strd	r2, [sp, #24]	@ tmp171,,
	bl	SCDDRV_InsertRawPacket	@
	cmp	r0, #0	@,
	beq	.L807	@,
.L804:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #14	@ tmp152, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3, r2, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r5, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r4, #0	@ pSmInstArray,
	mov	r6, r1	@ pArgs, pArgs
	mvneq	r0, #0	@ D.37025,
	beq	.L812	@,
	add	r0, r4, #73728	@, pSmInstArray,
	add	r0, r0, #72	@,,
	bl	SM_SeekPtsInSegArray	@
	cmp	r0, #0	@,
	bne	.L830	@,
.L813:
	mov	r0, #0	@ D.37025,
.L812:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L830:
	add	r7, r4, #48	@ pRawPacketArray, pSmInstArray,
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r7	@, pRawPacketArray
	mov	r1, r6	@, pArgs
	mov	r2, r5	@, ChanID
	mov	r3, #1	@,
	bl	SM_SeekPtsInRawArray	@
	cmp	r0, #0	@,
	beq	.L813	@,
	movw	r2, #:lower16:73776	@ tmp155,
	movw	lr, #:lower16:73780	@ tmp156,
	movt	r2, #:upper16:73776	@ tmp155,
	movt	lr, #:upper16:73780	@ tmp156,
	ldr	r1, [r4, r2]	@ D.37033, <variable>.RawPacketArray.Head
	ldr	ip, [r4, lr]	@ D.37034, <variable>.RawPacketArray.Tail
	cmp	r1, ip	@ D.37033, D.37034
	addgt	ip, ip, #1024	@ tmp157, D.37034,
	rsb	r2, r1, ip	@ iftmp.637, D.37033, tmp157
	ldrd	r0, [r6, #16]	@ RawNum, pArgs,
	mov	r3, r2, asr #31	@ RawNumInVfmw
	cmp	r3, r1	@ RawNumInVfmw, RawNum
	cmpeq	r2, r0	@ RawNumInVfmw, RawNum
	bcc	.L831	@,
.L816:
	mvn	r0, #1	@ D.37025,
	b	.L812	@
.L831:
	subs	r2, r0, r2	@ RawNumToSeek, RawNum, RawNumInVfmw
	sbc	r3, r1, r3	@ RawNumToSeek, RawNum, RawNumInVfmw
	movw	r0, #1023	@ tmp159,
	mov	r1, #0	@,
	and	r0, r0, r2	@ tmp158, tmp159, RawNumToSeek
	and	r1, r1, r3	@,, RawNumToSeek
	mov	r8, r2, lsr #10	@ tmp167, RawNumToSeek,
	orrs	ip, r0, r1	@, tmp158
	orr	r3, r8, r3, asl #22	@, tmp175, tmp167, RawNumToSeek,
	addne	r3, r3, #1	@ SeekTime, tmp175,
	add	r8, r3, #1	@ D.37053, SeekTime,
	cmp	r8, #0	@ D.37053,
	ble	.L816	@,
	mov	r0, r7	@, pRawPacketArray
	mov	r1, r6	@, pArgs
	mov	r2, r5	@, ChanID
	and	r3, r3, #1	@ tmp173, SeekTime,
	str	r3, [sp, #4]	@,
	bl	SM_SeekPtsAfterFillNewRaw	@
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L813	@,
	mov	r4, #1	@ i,
	cmp	r4, r8	@ i, D.37053
	bge	.L816	@,
	cmp	r3, #0	@ tmp173,
	beq	.L819	@,
	mov	r0, r7	@, pRawPacketArray
	mov	r1, r6	@, pArgs
	mov	r2, r5	@, ChanID
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L813	@,
	add	r4, r4, r4	@ i, i,
	cmp	r4, r8	@ i, D.37053
	blt	.L819	@,
	b	.L816	@
.L832:
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L813	@,
	cmp	r4, r8	@ i, D.37053
	bge	.L816	@,
.L819:
	mov	r1, r6	@, pArgs
	mov	r2, r5	@, ChanID
	mov	r0, r7	@, pRawPacketArray
	add	r4, r4, #1	@ tmp174, i,
	bl	SM_SeekPtsAfterFillNewRaw	@
	add	r4, r4, #1	@ i, tmp174,
	mov	r1, r6	@, pArgs
	mov	r2, r5	@, ChanID
	cmp	r0, #0	@,
	mov	r0, r7	@, pRawPacketArray
	bne	.L832	@,
	b	.L813	@
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
	ldmeqfd	sp!, {r4, pc}	@
	movw	r1, #:lower16:g_CabacMN	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:g_CabacMN	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
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
	add	r8, r0, #165888	@ pSmPushRaw, pScdInstance,
	movw	r5, #:lower16:166068	@ tmp144,
	movt	r5, #:upper16:166068	@ tmp144,
	add	r8, r8, #128	@ pSmPushRaw, pSmPushRaw,
	movw	lr, #:lower16:166032	@ tmp141,
	movw	r3, #:lower16:166036	@ tmp142,
	movt	lr, #:upper16:166032	@ tmp141,
	movt	r3, #:upper16:166036	@ tmp142,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pScdInstance, pScdInstance
	ldr	r0, [r0, r5]	@, <variable>.InstID
	ldr	r7, [r4, r3]	@ pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	mov	r6, r1	@ pSmCtrlReg, pSmCtrlReg
	ldr	sl, [r4, lr]	@ DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	mov	r9, r2	@ SegStreamSize, SegStreamSize
	bl	VCTRL_IsEsBufEnable	@
	mov	r0, r8	@, pSmPushRaw
	mov	r1, #12	@,
	bl	__memzero	@
	ldr	ip, [r6, #44]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	ldr	r0, [r4, r5]	@ <variable>.InstID, <variable>.InstID
	mov	r1, r8	@, pSmPushRaw
	mov	r2, r9	@, SegStreamSize
	add	r3, r4, #48	@, pScdInstance,
	stmia	sp, {r7, sl, ip}	@ phole stm
	bl	WriteScdMsg	@
	subs	r7, r0, #0	@ Ret,
	bne	.L837	@,
	ldr	r0, [r4, r5]	@, <variable>.InstID
	mov	r1, r6	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L837:
	mov	r0, r7	@, Ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
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
	bne	.L840	@,
	ldr	r0, [sp, #72]	@ isFreeSegBufSizeFixed, isFreeSegBufSizeFixed
	cmp	r0, #0	@ isFreeSegBufSizeFixed,
	bne	.L843	@,
.L841:
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
	beq	.L844	@,
.L840:
	mov	r0, r6	@, Ret
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L844:
	mov	r0, r4	@, pScdInstance
	ldr	r1, [sp, #84]	@, RawStreamSize
	ldr	r2, [sp, #76]	@, FreeSegBufSize
	bl	SCDDRV_RecordStartState	@
	b	.L840	@
.L843:
	mov	r0, r4	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
	b	.L841	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp171,
	movt	r4, #:upper16:.LANCHOR0	@ tmp171,
	mov	r5, r0	@ pNextInstId, pNextInstId
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, #80]	@ s_eScdDrvSleepStage.647, s_eScdDrvSleepStage
	cmp	r3, #1	@ s_eScdDrvSleepStage.647,
	moveq	r3, #2	@ tmp144,
	mvneq	r0, #2	@ D.37153,
	streq	r3, [r4, #80]	@ tmp144, s_eScdDrvSleepStage
	beq	.L847	@,
	cmp	r3, #2	@ s_eScdDrvSleepStage.647,
	bne	.L853	@,
.L848:
	mvn	r0, #2	@ D.37153,
.L847:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L853:
	mov	r0, #0	@,
	bl	SCDDRV_CanNotSelectInst	@
	cmp	r0, #0	@,
	bne	.L848	@,
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
	beq	.L848	@,
	ldrsb	r0, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r0, #1	@ <variable>.SegFullFlag,
	strneb	r2, [r6, #1]	@ tmp156, <variable>.IsCounting
	beq	.L854	@,
.L850:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	movne	r3, #0	@, tmp160
	moveq	r3, #1	@, tmp160
	cmp	r0, #0	@ Ret,
	strb	r3, [r6, #0]	@ tmp160, <variable>.SegFullFlag
	bne	.L848	@,
	str	r0, [r5, #0]	@ Ret,* pNextInstId
	mov	r0, #0	@,
	ldr	r2, [r4, #56]	@ pSmInstArray, s_SmIIS.pSmInstArray
	movw	lr, #3460	@ tmp169,
	cmp	r2, #0	@ pSmInstArray,
	movwne	r3, #:lower16:166072	@ tmp164,
	movtne	r3, #:upper16:166072	@ tmp164,
	movne	r1, #1	@ tmp165,
	strne	r1, [r2, r3]	@ tmp165, <variable>.Mode
	mov	r1, #1	@,
	ldr	r2, .L855	@,
	movw	r3, #:lower16:.LANCHOR1	@,
	movt	r3, #:upper16:.LANCHOR1	@,
	str	lr, [sp, #0]	@ tmp169,
	bl	RecordPOS	@
	mov	r0, #0	@ D.37153,
	b	.L847	@
.L854:
	mov	r0, r6	@, pSmInstArray
	bl	SCDDRV_ProcessSegFull	@
	b	.L850	@
.L856:
	.align	2
.L855:
	.word	.LANCHOR0+104
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movw	r5, #:lower16:166072	@ tmp161,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	movt	r5, #:upper16:166072	@ tmp161,
	mov	r0, r3	@ NextInstID.658, tmp140
	str	r3, [sp, #4]	@ tmp140, NextInstID
	b	.L859	@
.L858:
	ldr	r0, [sp, #4]	@ NextInstID.3567, NextInstID
	add	r0, r0, #1	@ NextInstID.658, NextInstID.3567,
	str	r0, [sp, #4]	@ NextInstID.658, NextInstID
	cmp	r0, #0	@ NextInstID.658,
	bgt	.L865	@,
.L859:
	add	r1, r0, #14	@ tmp142, NextInstID.658,
	ldr	r3, [r4, r1, asl #2]	@ D.37239, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.37239,
	beq	.L858	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L858	@,
	bl	FillRawData	@
	ldr	r0, [sp, #4]	@ NextInstID.3567, NextInstID
	add	r0, r0, #1	@ NextInstID.658, NextInstID.3567,
	str	r0, [sp, #4]	@ NextInstID.658, NextInstID
	cmp	r0, #0	@ NextInstID.658,
	ble	.L859	@,
.L865:
	ldr	ip, [r4, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L860	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L866	@,
.L863:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L860:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #76]	@ D.37255, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.37255
	strcc	r0, [r4, #76]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L863	@,
	rsb	r1, r3, r0	@ tmp155, D.37255, CurTime
	cmp	r1, #2000	@ tmp155,
	bls	.L863	@,
	bl	ResetSCD	@
	ldr	r0, [r4, #68]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp157,
	str	r2, [r4, #72]	@ tmp157, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L863	@
.L866:
	ldr	lr, [sp, #4]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp151,
	str	r3, [r4, #72]	@ tmp151, s_SmIIS.SCDState
	str	lr, [r4, #68]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #76]	@, s_SmIIS.LastProcessTime
	b	.L863	@
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
	beq	.L878	@,
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
	ldreq	r5, [r4, #68]	@ prephitmp.3611, s_SmIIS.ThisInstID
	bne	.L879	@,
	add	ip, r5, #14	@ tmp165, prephitmp.3611,
	ldr	lr, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r0, [r4, ip, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L880	@,
.L874:
	ldr	r3, [r3, #72]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L881	@,
.L875:
	mov	r0, r5	@, prephitmp.3611
	bl	SM_GiveThreadEvent	@
.L878:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L877:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L879:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #68]	@ prephitmp.3611, s_SmIIS.ThisInstID
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp157,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp157,
	ldr	lr, [r4, #64]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	add	ip, r4, r5, asl #2	@, tmp153, tmp192, prephitmp.3611,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #108]	@ tmp156, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp155, tmp156, CurTimeInMs
	cmp	r1, r3	@ tmp155, g_TraceBsPeriod
	strhi	r0, [ip, #108]	@ CurTimeInMs, last_rec_pos_time
	add	ip, r5, #14	@ tmp165, prephitmp.3611,
	movw	r3, #:lower16:.LANCHOR0	@ tmp164,
	movt	r3, #:upper16:.LANCHOR0	@ tmp164,
	ldr	r0, [r4, ip, asl #2]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	bne	.L874	@,
.L880:
	mov	r2, #0	@ tmp176,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r3, #72]	@ tmp176, s_SmIIS.SCDState
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L877	@
.L881:
	movw	lr, #:lower16:166072	@ tmp180,
	movt	lr, #:upper16:166072	@ tmp180,
	ldr	r1, [r0, lr]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #1	@ <variable>.Mode,
	beq	.L882	@,
.L876:
	add	r0, sp, #4	@,,
	mov	ip, #0	@ tmp183,
	str	ip, [r4, #72]	@ tmp183, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp182,
	movt	r4, #:upper16:.LANCHOR0	@ tmp182,
	cmp	r0, #0	@,
	bne	.L875	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp188,
	str	r2, [r4, #72]	@ tmp188, s_SmIIS.SCDState
	str	r0, [r4, #68]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #76]	@, s_SmIIS.LastProcessTime
	b	.L875	@
.L882:
	bl	ProcessScdReturn	@
	b	.L876	@
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
	ldr	r3, [r3, r5, asl #2]	@ D.35305, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35305,
	beq	.L884	@,
	ldr	r2, [r3, #24]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L884	@,
	movw	r0, #:lower16:166072	@ tmp139,
	movt	r0, #:upper16:166072	@ tmp139,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp142,
	streq	r1, [r3, r0]	@ tmp142, <variable>.Mode
.L884:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #:lower16:.LANCHOR0	@ tmp201,
	.pad #36
	sub	sp, sp, #36	@,,
	movt	r7, #:upper16:.LANCHOR0	@ tmp201,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r0, #20	@,
	mov	r4, #0	@ tmp151,
	movw	r3, #:lower16:269729792	@ tmp153,
	str	r4, [sp, #28]	@ tmp151, dataInt
	movt	r3, #:upper16:269729792	@ tmp153,
	str	r3, [r7, #84]	@ tmp153, s_RegPhyBaseAddr
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L896	@,
	mov	r2, sp	@,
	bic	r1, r2, #8128	@ tmp154,,
	bic	r0, r1, #63	@ tmp154, tmp154,
	cmp	r5, #6	@ eVidStd,
	ldr	sl, [r0, #8]	@, <variable>.addr_limit
	str	sl, [sp, #12]	@, %sfp
	str	r4, [r0, #8]	@ tmp151, <variable>.addr_limit
	beq	.L899	@,
	cmp	r5, #0	@ eVidStd,
	movne	r9, r4	@ fp, tmp151
	beq	.L900	@,
.L889:
	mov	fp, sp	@,
	bic	r5, fp, #8128	@ tmp167,,
	bic	sl, r5, #63	@ tmp167, tmp167,
	add	r8, sp, #32	@ tmp200,,
	mov	r4, #0	@ tmp169,
	mov	r2, #0	@ tmp170,
	str	r4, [sl, #8]	@ tmp169, <variable>.addr_limit
	mov	r5, r4	@ calbakBaseaddr, tmp169
	mov	r3, #0	@,
	mov	r4, #10	@ ivtmp.3676,
	strd	r2, [r8, #-16]!	@ tmp170, tmp200,
	b	.L892	@
.L894:
	ldrd	sl, [sp]	@, %sfp
	strd	sl, [sp, #16]	@,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L898	@,
	ldr	ip, [r7, #88]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #28]	@, dataInt
	add	r0, r5, ip	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L892:
	mov	r1, r6	@, data
	mov	r2, #10	@,
	mov	r3, r8	@, tmp200
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	sl, r4	@, ivtmp.3676
	mov	fp, sl, asr #31	@
	strd	sl, [sp]	@, %sfp
	movw	r1, #:lower16:.LC4	@,
	add	r2, sp, #28	@,,
	movt	r1, #:upper16:.LC4	@,
	add	r4, r4, #10	@ ivtmp.3676, ivtmp.3676,
	subs	sl, r0, #0	@ D.34348,
	mov	r0, r6	@, data
	bne	.L894	@,
	mov	r1, sl	@, D.34348
	mov	r0, r9	@, fp
	bl	filp_close	@
	mov	fp, sp	@,
	ldr	ip, [sp, #12]	@, %sfp
	bic	r2, fp, #8128	@ tmp179,,
	ldr	r1, [r7, #96]	@ g_hex_len, g_hex_len
	bic	r3, r2, #63	@ tmp179, tmp179,
	ldr	r0, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	str	ip, [r3, #8]	@, <variable>.addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	mov	r1, r1, lsr #2	@, g_hex_len,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #88]	@, g_hex_base_addr
	add	r0, r2, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, sl	@, D.34348
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r7, #84]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L895:
	movw	r0, #:lower16:269730052	@,
	movt	r0, #:upper16:269730052	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L895	@,
.L898:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L896:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L900:
	movw	r0, #:lower16:.LC2	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC2	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L889	@,
	mov	r1, r5	@, eVidStd
	movw	r0, #:lower16:.LC3	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC3	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L890	@
.L899:
	movw	r0, #:lower16:.LC0	@,
	mov	r1, r4	@, tmp151
	movt	r0, #:upper16:.LC0	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L889	@,
	mov	r1, r4	@, tmp151
	movw	r0, #:lower16:.LC1	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC1	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L890:
	cmn	r9, #4096	@ fp,
	bhi	.L898	@,
	b	.L889	@
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
	.type	__func__.37144, %object
	.size	__func__.37144, 18
__func__.37144:
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
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC1:
	.ascii	"/system/lib/modules/hi_vfmw_avsp.bin\000"
	.space	3
.LC2:
	.ascii	"/kmod/hi_vfmw_h264.bin\000"
	.space	1
.LC3:
	.ascii	"/system/lib/modules/hi_vfmw_h264.bin\000"
	.space	3
.LC4:
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
	.type	last_rec_pos_time.36717, %object
	.size	last_rec_pos_time.36717, 4
last_rec_pos_time.36717:
	.space	4
	.type	LastRecPosTime.37141, %object
	.size	LastRecPosTime.37141, 4
LastRecPosTime.37141:
	.space	4
	.type	last_rec_pos_time.37191, %object
	.size	last_rec_pos_time.37191, 4
last_rec_pos_time.37191:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
