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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o
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
	ldr	r3, [r3, #116]	@ D.34690, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.34690,
	beq	.L2	@,
	add	r1, r3, #168	@ tmp138, D.34690,
	cmp	r1, r0	@ tmp138, pRawArray
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L2:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID
	beq	.L10	@,
.L7:
	mvn	r0, #3	@ Ret,
	bx	lr	@
.L10:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #116]	@ D.34778, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.34778,
	beq	.L7	@,
	movw	r1, #:lower16:73900	@ tmp138,
	movt	r1, #:upper16:73900	@ tmp138,
	movw	r2, #:lower16:73904	@ tmp148,
	movt	r2, #:upper16:73904	@ tmp148,
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
	b	.L7	@
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L16	@,
.L12:
	mvn	r0, #0	@ D.34834,
	bx	lr	@
.L16:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.34835, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.34835, <variable>.Tail
	mvneq	r0, #2	@ D.34834,
	bxeq	lr	@
	add	ip, r2, r2, asl #3	@, tmp146, D.34835, D.34835,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.34834,
	bxlt	lr	@
	b	.L12	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pOffset,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r0, #0	@, tmp143
	moveq	r0, #1	@, tmp143
	mvneq	r0, #0	@ D.34854,
	bxeq	lr	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.34854,
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
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	bne	.L36	@,
.L23:
	mvn	r0, #0	@ D.34876,
.L29:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L36:
	movw	r3, #:lower16:.LANCHOR0	@ tmp186,
	movt	r3, #:upper16:.LANCHOR0	@ tmp186,
	ldr	r2, [r3, #116]	@ prephitmp.790, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ prephitmp.790,
	beq	.L23	@,
	add	ip, r2, #168	@ tmp155, prephitmp.790,
	cmp	r0, ip	@ pRawStreamArray, tmp155
	bne	.L23	@,
	movw	ip, #:lower16:73732	@ tmp157,
	movt	ip, #:upper16:73732	@ tmp157,
	mov	r4, #73728	@ tmp156,
	ldr	ip, [r0, ip]	@ D.34882, <variable>.Tail
	ldr	r4, [r0, r4]	@ D.34881, <variable>.Head
	cmp	r4, ip	@ D.34881, D.34882
	addgt	ip, ip, #1024	@ tmp158, D.34882,
	rsb	ip, r4, ip	@ PacketNum, D.34881, tmp158
	cmp	ip, r1	@ PacketNum, DelNum
	bcc	.L23	@,
	tst	r1, #1	@ DelNum,
	movw	ip, #:lower16:73916	@ tmp187,
	movw	r6, #:lower16:.LANCHOR0	@ tmp188,
	movt	ip, #:upper16:73916	@ tmp187,
	movt	r6, #:upper16:.LANCHOR0	@ tmp188,
	mov	r5, #0	@ i,
	bne	.L27	@,
	add	r5, r4, r4, asl #3	@, tmp211, j, j,
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	r7, r5, #1	@ tmp212, tmp211,
	add	r4, r4, #1	@ D.34898, j,
	mov	r5, #1	@ i,
	cmp	r1, r5	@ DelNum, i
	ldr	r7, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r4, r4, asl #22	@ j, D.34898,
	rsb	r7, r7, r8	@ tmp215, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp215, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r3, #116]	@ D.34892, s_SmIIS.pSmInstArray
	mov	r4, r4, lsr #22	@ j, j,
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r7, r7, r7, asr #31	@ tmp219, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp219, <variable>.RawPacketArray.RawTotalSize
	ldrhi	r2, [r6, #116]	@ prephitmp.790, s_SmIIS.pSmInstArray
	bhi	.L27	@,
	b	.L26	@
.L37:
	ldr	r2, [r6, #116]	@ prephitmp.790, s_SmIIS.pSmInstArray
	ldr	r7, [r0, r8, asl #3]	@ <variable>.Length, <variable>.Length
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	rsb	r7, r7, r8	@ tmp202, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp202, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r3, #116]	@ D.34892, s_SmIIS.pSmInstArray
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r8, r7, r7, asr #31	@ tmp206, <variable>.RawPacketArray.RawTotalSize
	str	r8, [r2, ip]	@ tmp206, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r6, #116]	@ prephitmp.790, s_SmIIS.pSmInstArray
.L27:
	add	r7, r4, r4, asl #3	@, tmp163, j, j,
	add	r4, r4, #1	@ D.34898, j,
	add	r7, r7, #1	@ tmp164, tmp163,
	ldr	r8, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r4, r4, asl #22	@ j, D.34898,
	add	r5, r5, #1	@ tmp192, i,
	ldr	r7, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r1, r5	@ DelNum, tmp192
	add	r5, r5, #1	@ i, tmp192,
	rsb	r7, r7, r8	@ tmp167, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	mov	r8, r4, lsr #22	@ j, j,
	str	r7, [r2, ip]	@ tmp167, <variable>.RawPacketArray.RawTotalSize
	add	r7, r8, #1	@ D.34898, j,
	ldr	r2, [r3, #116]	@ D.34892, s_SmIIS.pSmInstArray
	add	r4, r8, r8, asl #3	@, tmp198, j, j,
	add	r8, r4, #1	@ tmp199, tmp198,
	mov	r4, r7, asl #22	@ j, D.34898,
	ldr	r7, [r2, ip]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r4, r4, lsr #22	@ j, j,
	bic	r7, r7, r7, asr #31	@ tmp172, <variable>.RawPacketArray.RawTotalSize
	str	r7, [r2, ip]	@ tmp172, <variable>.RawPacketArray.RawTotalSize
	bhi	.L37	@,
.L26:
	mov	r3, #73728	@ tmp175,
	ldr	r2, [r0, r3]	@ <variable>.Head, <variable>.Head
	add	ip, r1, r2	@ D.34901, DelNum, <variable>.Head
	str	ip, [r0, r3]	@ D.34901, <variable>.Head
	cmp	ip, #1024	@ D.34901,
	mov	r1, #0	@ tmp183,
	subge	ip, ip, #1024	@ tmp181, D.34901,
	strge	ip, [r0, r3]	@ tmp181, <variable>.Head
	movw	r3, #:lower16:73740	@ tmp182,
	movt	r3, #:upper16:73740	@ tmp182,
	str	r1, [r0, r3]	@ tmp183, <variable>.FirstPacketOffset
	mov	r0, r1	@ D.34876, tmp183
	b	.L29	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
.LFB1612:
	@ args = 32, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	ip, r0, #1	@ tmp161, pRawStreamArray
	movcc	ip, #0	@ tmp161
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	orrs	ip, ip, r1, lsr #31	@,, tmp161, Len,
	.pad #32
	sub	sp, sp, #32	@,,
	ldr	fp, [sp, #64]	@ pPts, pPts
	ldr	r9, [sp, #88]	@ pGopNum, pGopNum
	ldr	r7, [sp, #92]	@ pRawPts, pRawPts
	beq	.L51	@,
.L39:
	mvn	ip, #0	@ D.34976,
.L47:
	mov	r0, ip	@, D.34976
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L51:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L39	@,
	mov	ip, #73728	@ tmp173,
	movw	sl, #:lower16:73732	@ tmp179,
	ldr	ip, [r0, ip]	@ Index, <variable>.Head
	movt	sl, #:upper16:73732	@ tmp179,
	movw	r4, #:lower16:73740	@ tmp178,
	movt	r4, #:upper16:73740	@ tmp178,
	ldr	r6, [r0, sl]	@ <variable>.Tail, <variable>.Tail
	mov	r5, ip, asl #3	@ tmp332, Index,
	ldr	sl, [r0, r4]	@ D.34984, <variable>.FirstPacketOffset
	add	r8, r5, ip	@ tmp176, tmp332, Index
	subs	r6, r6, ip	@ RawNum, <variable>.Tail, Index
	add	r5, r5, ip	@ tmp184, tmp332, Index
	add	r4, r8, #1	@ tmp177, tmp176,
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	ldr	r8, [r0, r4, asl #3]	@ D.34983, <variable>.Length
	add	ip, r6, ip	@, RawNum, Index
	str	ip, [sp, #20]	@, %sfp
	add	ip, r0, r5, asl #3	@, tmp186, pRawStreamArray, tmp184,
	ldrd	r4, [ip, #16]	@ <variable>.Pts, tmp186,
	strd	r4, [fp]	@ <variable>.Pts,* pPts
	ldr	r6, [sp, #68]	@, pUsertag
	ldrd	r4, [ip, #32]	@ <variable>.UserTag, tmp186,
	strd	r4, [r6]	@ <variable>.UserTag,
	ldrd	r4, [ip, #16]	@ <variable>.Pts, tmp186,
	strd	r4, [r7]	@ <variable>.Pts,* pRawPts
	ldr	r6, [sp, #72]	@, pDisptime
	ldrd	r4, [ip, #40]	@ <variable>.DispTime, tmp186,
	strd	r4, [r6]	@ <variable>.DispTime,
	ldr	r5, [sp, #76]	@, pDispEnableFlag
	ldr	r6, [ip, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r6, [r5, #0]	@ <variable>.DispEnableFlag,
	ldr	r4, [sp, #80]	@, pDispFrameDistance
	ldr	r5, [ip, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r5, [r4, #0]	@ <variable>.DispFrameDistance,
	ldr	r5, [sp, #84]	@, pDistanceBeforeFirstFrame
	ldr	r6, [ip, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r6, [r5, #0]	@ <variable>.DistanceBeforeFirstFrame,
	mov	r6, #73728	@ tmp245,
	ldr	r4, [ip, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	r4, [r9, #0]	@ <variable>.GopNum,* pGopNum
	ldr	r4, [r0, r6]	@ i, <variable>.Head
	ldr	r6, [sp, #20]	@, %sfp
	cmp	r6, r4	@, i
	ble	.L41	@,
	rsb	r8, sl, r8	@ TotalLen, D.34984, D.34983
	cmp	r1, r8	@ Len, TotalLen
	blt	.L41	@,
	str	r8, [sp, #4]	@ TotalLen, %sfp
	mov	ip, r7	@ pRawPts, pRawPts
	str	r2, [sp, #24]	@ pNum, %sfp
	str	r3, [sp, #28]	@ pOffset, %sfp
	str	r9, [sp, #0]	@ pGopNum, %sfp
	b	.L50	@
.L44:
	ldr	r7, [sp, #20]	@, %sfp
	cmp	r7, r4	@, i
	ldrd	r6, [sp, #8]	@,,
	strd	r6, [fp]	@,* pPts
	ldr	r8, [sp, #68]	@, pUsertag
	ldrd	r6, [r3, #32]	@ <variable>.UserTag, tmp270,
	strd	r6, [r8]	@ <variable>.UserTag,
	ldrd	r6, [r3, #16]	@ <variable>.Pts, tmp270,
	strd	r6, [ip]	@ <variable>.Pts,* pRawPts
	ldr	r2, [sp, #72]	@, pDisptime
	ldrd	r6, [r3, #40]	@ <variable>.DispTime, tmp270,
	strd	r6, [r2]	@ <variable>.DispTime,
	ldr	r6, [sp, #76]	@, pDispEnableFlag
	ldr	r9, [r3, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r9, [r6, #0]	@ <variable>.DispEnableFlag,
	ldr	r7, [sp, #80]	@, pDispFrameDistance
	ldr	r8, [r3, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r8, [r7, #0]	@ <variable>.DispFrameDistance,
	ldr	r2, [sp, #84]	@, pDistanceBeforeFirstFrame
	ldr	r9, [r3, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r9, [r2, #0]	@ <variable>.DistanceBeforeFirstFrame,
	ldr	r9, [sp, #0]	@, %sfp
	ldr	r3, [r3, #68]	@ <variable>.GopNum, <variable>.GopNum
	str	r3, [r9, #0]	@ <variable>.GopNum,
	ble	.L52	@,
	ldr	r7, [sp, #4]	@, %sfp
	cmp	r1, r7	@ Len,
	blt	.L53	@,
.L50:
	add	r4, r4, #1	@ i, i,
	mov	r8, r4, asr #31	@ tmp246, i,
	mov	r5, r8, lsr #22	@ tmp247, tmp246,
	add	r2, r4, r5	@ tmp248, i, tmp247
	mov	r9, r2, asl #22	@ tmp249, tmp248,
	mov	sl, r9, lsr #22	@ tmp249, tmp249,
	ldr	r9, [sp, #4]	@, %sfp
	rsb	r5, r5, sl	@ Index.835, tmp247, tmp249
	mov	sl, r5, asl #3	@ tmp331, Index.835,
	add	r3, sl, r5	@ tmp268, tmp331, Index.835
	add	r7, r3, #1	@ tmp255, tmp254,
	add	r3, r0, r3, asl #3	@, tmp270, pRawStreamArray, tmp268,
	ldr	r2, [r0, r7, asl #3]	@ <variable>.Length, <variable>.Length
	ldrd	r6, [r3, #16]	@, tmp262,
	strd	r6, [sp, #8]	@,,
	add	r7, r9, r2	@,, <variable>.Length
	ldrd	r8, [sp, #8]	@,,
	mvn	r6, #0	@,
	str	r7, [sp, #4]	@, %sfp
	mvn	r7, #0	@,
	cmp	r9, r7	@,
	cmpeq	r8, r6	@,
	ldreqd	r8, [fp]	@,* pPts
	streqd	r8, [sp, #8]	@,,
	b	.L44	@
.L52:
	ldr	r8, [sp, #4]	@ TotalLen, %sfp
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
.L43:
	mov	ip, #73728	@ tmp321,
	ldr	ip, [r0, ip]	@ D.34982, <variable>.Head
	cmp	ip, r4	@ D.34982, i
	beq	.L41	@,
	add	r5, sl, r5	@ tmp325, tmp331, Index.835
	rsb	r4, ip, r4	@ tmp328, D.34982, i
	add	r5, r5, #1	@ tmp326, tmp325,
	mov	ip, #0	@ D.34976,
	ldr	r0, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	str	r4, [r2, #0]	@ tmp328,* pNum
	rsb	r8, r0, r8	@ TotalLen.845, <variable>.Length, TotalLen
	rsb	r1, r8, r1	@ tmp329, TotalLen.845, Len
	str	r1, [r3, #0]	@ tmp329,* pOffset
	b	.L47	@
.L53:
	mov	r8, r7	@ TotalLen,
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
	b	.L43	@
.L41:
	mov	ip, #0	@ tmp322,
	str	ip, [r2, #0]	@ tmp322,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L47	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	rsbs	r6, r0, #1	@ tmp144, pRawStreamArray
	movcc	r6, #0	@ tmp144
	.pad #88
	sub	sp, sp, #88	@,,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	orrs	r6, r6, r1, lsr #31	@, tmp148, tmp144, DelLen,
	bne	.L55	@,
	movw	r2, #:lower16:73748	@ tmp151,
	movw	r4, #:lower16:73740	@ tmp152,
	movt	r2, #:upper16:73748	@ tmp151,
	movt	r4, #:upper16:73740	@ tmp152,
	str	r6, [sp, #84]	@ tmp148, DelNum
	str	r6, [sp, #80]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L55	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L64	@,
.L55:
	mvn	r0, #0	@ Ret,
.L58:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L64:
	add	r2, sp, #84	@,,
	add	r3, sp, #80	@,,
	add	ip, sp, #56	@ tmp157,,
	add	lr, sp, #48	@ tmp158,,
	str	ip, [sp, #0]	@ tmp157,
	add	ip, sp, #40	@ tmp159,,
	str	lr, [sp, #4]	@ tmp158,
	add	lr, sp, #76	@ tmp160,,
	str	ip, [sp, #8]	@ tmp159,
	add	ip, sp, #72	@ tmp161,,
	str	lr, [sp, #12]	@ tmp160,
	add	lr, sp, #68	@ tmp162,,
	str	ip, [sp, #16]	@ tmp161,
	add	ip, sp, #64	@ tmp163,,
	str	lr, [sp, #20]	@ tmp162,
	add	lr, sp, #32	@ tmp164,,
	str	ip, [sp, #24]	@ tmp163,
	str	lr, [sp, #28]	@ tmp164,
	bl	GetRawNumOffsert	@
	ldr	r1, [sp, #84]	@, DelNum
	mov	r0, r5	@, pRawStreamArray
	bl	DeleteRawPacket	@
	movw	r1, #:lower16:73732	@ tmp167,
	movt	r1, #:upper16:73732	@ tmp167,
	mov	ip, #73728	@ tmp166,
	ldr	r2, [r5, ip]	@ D.37764, <variable>.Head
	ldr	r3, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r1, [sp, #80]	@ RawPacketOffSet.471, RawPacketOffSet
	cmp	r2, r3	@ D.37764, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L58	@,
	add	ip, r2, r2, asl #3	@, tmp173, D.37764, D.37764,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	lr, ip, #1	@ tmp174, tmp173,
	add	r2, r1, r0	@ TargetOffset, RawPacketOffSet.471, <variable>.FirstPacketOffset
	ldr	r3, [r5, lr, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r2, r3	@ TargetOffset, <variable>.Length
	strlt	r2, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp148
	blt	.L58	@,
	b	.L55	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ SmID, SmID
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r5, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r4, #:lower16:166136	@ tmp137,
	movt	r4, #:upper16:166136	@ tmp137,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r5, #168	@, pSmInstArray,
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
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L72	@,
.L69:
	mvn	r0, #0	@ D.35065,
	bx	lr	@
.L72:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.35066, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.35066,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.35069, <variable>.FirstPacketOffset, D.35066
	str	r3, [r1, #0]	@ D.35069,* pStreamSize
	cmp	r3, #0	@ D.35069,
	movge	r0, #0	@ D.35065,
	bxge	lr	@
	b	.L69	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.35078,
	bxeq	lr	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.35078,
	rsb	r3, r2, ip	@ D.35081, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.35081,* pStreamNum
	cmp	r3, #0	@ D.35081,
	addlt	r3, r3, #1024	@ tmp142, D.35081,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	bx	lr	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pBufAddr,
	bxeq	lr	@
	cmp	r2, #0	@ pBufLength,
	bxeq	lr	@
	movw	ip, #:lower16:92184	@ tmp143,
	movt	ip, #:upper16:92184	@ tmp143,
	movw	r3, #:lower16:92188	@ tmp145,
	movt	r3, #:upper16:92188	@ tmp145,
	ldr	ip, [r0, ip]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	str	ip, [r1, #0]	@ <variable>.SegBufPhyAddr,* pBufAddr
	ldr	r3, [r0, r3]	@ <variable>.SegBufSize, <variable>.SegBufSize
	str	r3, [r2, #0]	@ <variable>.SegBufSize,* pBufLength
	bx	lr	@
	.fnend
	.size	GetSegBuf, .-GetSegBuf
	.align	2
	.global	GetFreeSegBuf
	.type	GetFreeSegBuf, %function
GetFreeSegBuf:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pAddr,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movne	r3, #0	@, tmp146
	moveq	r3, #1	@, tmp146
	beq	.L86	@,
	cmp	r2, #0	@ pLength,
	beq	.L86	@,
	movw	ip, #:lower16:92196	@ tmp147,
	movt	ip, #:upper16:92196	@ tmp147,
	movw	r4, #:lower16:92192	@ tmp151,
	movt	r4, #:upper16:92192	@ tmp151,
	ldr	r5, [r0, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	str	r5, [r1, #0]	@ <variable>.SegBufWriteAddr,* pAddr
	str	r3, [r2, #0]	@ tmp146,* pLength
	ldr	r1, [r0, ip]	@ temp.986, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.35154, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.986, D.35154
	bgt	.L87	@,
	movw	r3, #:lower16:92188	@ tmp156,
	movt	r3, #:upper16:92188	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.35154,
	ldrge	r3, [r0, r3]	@ prephitmp.975, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.986, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.975, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.975,
.L84:
	cmp	r1, r3	@ Len, prephitmp.975
	strle	r1, [r2, #0]	@ Len,* pLength
.L86:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L87:
	movw	r3, #:lower16:92188	@ tmp152,
	movt	r3, #:upper16:92188	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.975, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.35154, prephitmp.975
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.986, tmp154
	b	.L84	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp149,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp149,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	mov	r5, r1	@ InstID, InstID
	cmp	r4, #0	@ pstChan,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	cmpne	r3, #3	@, <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r2, #:lower16:217472	@ tmp157,
	movt	r2, #:upper16:217472	@ tmp157,
	ldr	r1, [r4, r2]	@ D.35181, <variable>.s32FindStartCodeCnt
	cmp	r1, #199	@ D.35181,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp158,* pSegBufVirAddr
	cmp	ip, #0	@ tmp158,
	bne	.L90	@,
	ldrb	r6, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	cmp	r6, #0	@ tmp159,
	bne	.L90	@,
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ tmp160,
	cmp	r7, #1	@ tmp160,
	beq	.L101	@,
.L90:
	movw	r2, #:lower16:217480	@ tmp255,
	movw	r0, #:lower16:217484	@ tmp258,
	movt	r2, #:upper16:217480	@ tmp255,
	movt	r0, #:upper16:217484	@ tmp258,
	movw	r6, #:lower16:217472	@ tmp252,
	movw	r7, #:lower16:217476	@ tmp254,
	ldr	sl, [r4, r2]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	movt	r6, #:upper16:217472	@ tmp252,
	ldr	r8, [r4, r0]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	movt	r7, #:upper16:217476	@ tmp254,
	mov	ip, #0	@ tmp261,
	add	r1, r1, #1	@ tmp253, D.35181,
	str	ip, [r4, r0]	@ tmp261, <variable>.s32CurrentStartCode
	str	sl, [r4, r7]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r8, [r4, r2]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	str	r1, [r4, r6]	@ tmp253, <variable>.s32FindStartCodeCnt
.L93:
	movw	r2, #:lower16:217468	@ tmp221,
	movt	r2, #:upper16:217468	@ tmp221,
	ldr	r1, [r4, r2]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, r1, #1	@ tmp224, <variable>.s32Mpeg2Score,
	str	r0, [r4, r2]	@ tmp224, <variable>.s32Mpeg2Score
.L94:
	movw	r0, #:lower16:217472	@ tmp225,
	movt	r0, #:upper16:217472	@ tmp225,
	ldr	r2, [r4, r0]	@ prephitmp.1008, <variable>.s32FindStartCodeCnt
	cmp	r2, #2	@ prephitmp.1008,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	cmp	ip, #0	@ D.35209,
	beq	.L95	@,
	movw	r0, #:lower16:217484	@ tmp226,
	movw	r1, #:lower16:217480	@ tmp227,
	movt	r0, #:upper16:217484	@ tmp226,
	movt	r1, #:upper16:217480	@ tmp227,
	ldr	r0, [r4, r0]	@ temp.1021, <variable>.s32CurrentStartCode
	ldr	r1, [r4, r1]	@ temp.1022, <variable>.s32LastOneStartCode
	rsb	ip, r1, r0	@ tmp228, temp.1022, temp.1021
	cmp	ip, #1	@ tmp228,
	beq	.L102	@,
.L96:
	cmp	r0, r1	@ temp.1021, temp.1022
	beq	.L103	@,
.L95:
	cmp	r2, #199	@ prephitmp.1008,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r6, #:lower16:217464	@ tmp242,
	movw	r7, #:lower16:217468	@ tmp243,
	movt	r6, #:upper16:217464	@ tmp242,
	movt	r7, #:upper16:217468	@ tmp243,
	ldr	r2, [r4, r6]	@ prephitmp.1033, <variable>.s32H264Score
	ldr	r1, [r4, r7]	@ prephitmp.1032, <variable>.s32Mpeg2Score
	rsb	ip, r1, r2	@ tmp244, prephitmp.1032, prephitmp.1033
	cmp	ip, #49	@ tmp244,
	ble	.L99	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L104	@,
.L99:
	rsb	r2, r2, r1	@ tmp249, prephitmp.1033, prephitmp.1032
	cmp	r2, #49	@ tmp249,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r2, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp251,
	movt	r0, #:upper16:g_event_report	@ tmp251,
	ldr	r3, [r0, #0]	@ g_event_report.1029, g_event_report
	cmp	r3, #0	@ g_event_report.1029,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #118	@,
	blx	r3	@ g_event_report.1029
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L104:
	movw	r3, #:lower16:g_event_report	@ tmp246,
	movt	r3, #:upper16:g_event_report	@ tmp246,
	ldr	r3, [r3, #0]	@ g_event_report.478, g_event_report
	cmp	r3, #0	@ g_event_report.478,
	beq	.L99	@,
	mov	r1, #118	@,
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	blx	r3	@ g_event_report.478
	ldr	r1, [r4, r7]	@ prephitmp.1032, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r6]	@ prephitmp.1033, <variable>.s32H264Score
	b	.L99	@
.L102:
	movw	ip, #:lower16:217476	@ tmp229,
	movt	ip, #:upper16:217476	@ tmp229,
	ldr	ip, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	ip, ip, r1	@ tmp230, <variable>.s32LastTwoStartCode, temp.1022
	cmp	ip, #1	@ tmp230,
	bne	.L96	@,
.L97:
	cmp	r0, #1	@ temp.1021,
	beq	.L95	@,
	cmp	r0, #20	@ temp.1021,
	beq	.L95	@,
	movw	r1, #:lower16:217464	@ tmp234,
	movt	r1, #:upper16:217464	@ tmp234,
	movw	r2, #:lower16:217472	@ tmp241,
	movt	r2, #:upper16:217472	@ tmp241,
	ldr	r0, [r4, r1]	@ temp.1025, <variable>.s32H264Score
	ldr	r2, [r4, r2]	@ prephitmp.1008, <variable>.s32FindStartCodeCnt
	cmp	r0, #0	@ temp.1025,
	subgt	r0, r0, #1	@ tmp236, temp.1025,
	strgt	r0, [r4, r1]	@ tmp236, <variable>.s32H264Score
	movw	r1, #:lower16:217468	@ tmp237,
	movt	r1, #:upper16:217468	@ tmp237,
	ldr	ip, [r4, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, ip, #1	@ tmp240, <variable>.s32Mpeg2Score,
	str	r0, [r4, r1]	@ tmp240, <variable>.s32Mpeg2Score
	b	.L95	@
.L101:
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	movw	r6, #:lower16:217480	@ tmp164,
	movw	r7, #:lower16:217484	@ tmp167,
	movt	r6, #:upper16:217480	@ tmp164,
	movt	r7, #:upper16:217484	@ tmp167,
	and	ip, r0, #31	@ D.35209, u8Data,
	ldr	r9, [r4, r6]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	sub	r8, ip, #1	@ tmp171, D.35209,
	ldr	sl, [r4, r7]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	cmp	r8, #12	@ tmp171,
	movw	r8, #:lower16:217476	@ tmp163,
	movt	r8, #:upper16:217476	@ tmp163,
	add	r1, r1, #1	@ tmp162, D.35181,
	str	ip, [r4, r7]	@ D.35209, <variable>.s32CurrentStartCode
	str	r9, [r4, r8]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r1, [r4, r2]	@ tmp162, <variable>.s32FindStartCodeCnt
	str	sl, [r4, r6]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	bhi	.L105	@,
.L91:
	movw	r2, #:lower16:217464	@ tmp177,
	movt	r2, #:upper16:217464	@ tmp177,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	ldr	r6, [r4, r2]	@ <variable>.s32H264Score, <variable>.s32H264Score
	movne	r1, #0	@, prephitmp.1010
	moveq	r1, #1	@, prephitmp.1010
	add	r6, r6, #1	@ tmp180, <variable>.s32H264Score,
	str	r6, [r4, r2]	@ tmp180, <variable>.s32H264Score
.L92:
	cmp	r1, #0	@ prephitmp.1010,
	bne	.L93	@,
	cmp	r0, #178	@ u8Data,
	cmpne	r0, #179	@, u8Data,
	beq	.L93	@,
	cmp	r0, #180	@ u8Data,
	cmpne	r0, #181	@, u8Data,
	beq	.L93	@,
	cmp	r0, #183	@ u8Data,
	cmpne	r0, #184	@, u8Data,
	beq	.L93	@,
	cmp	r0, #185	@ u8Data,
	cmpne	r0, #186	@, u8Data,
	beq	.L93	@,
	cmp	r0, #187	@ u8Data,
	movne	r1, #0	@, tmp217
	moveq	r1, #1	@, tmp217
	cmp	r0, #184	@ u8Data,
	movls	r0, r1	@, tmp220, tmp217
	orrhi	r0, r1, #1	@,, tmp220, tmp217
	cmp	r0, #0	@ tmp220,
	beq	.L94	@,
	b	.L93	@
.L103:
	movw	ip, #:lower16:217476	@ tmp232,
	movt	ip, #:upper16:217476	@ tmp232,
	ldr	r1, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r0, r1	@ temp.1021, <variable>.s32LastTwoStartCode
	bne	.L95	@,
	b	.L97	@
.L105:
	cmp	ip, #19	@ D.35209,
	beq	.L91	@,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	movne	r1, #0	@, prephitmp.1010
	moveq	r1, #1	@, prephitmp.1010
	cmp	ip, #30	@ D.35209,
	beq	.L91	@,
	cmp	ip, #31	@ D.35209,
	beq	.L91	@,
	b	.L92	@
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pStreamSegArray, pStreamSegArray
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	bne	.L127	@,
.L107:
	mvn	r0, #0	@ Ret,
.L119:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L127:
	sub	r0, r1, #1152	@ tmp148, StreamID,
	movw	r2, #:lower16:-1154	@ tmp150,
	movt	r2, #:upper16:-1154	@ tmp150,
	cmp	r0, r2	@ tmp148, tmp150
	bls	.L107	@,
	cmn	r1, #1	@ StreamID,
	beq	.L128	@,
	movw	r4, #:lower16:92168	@ tmp180,
	movw	r0, #:lower16:92172	@ tmp181,
	movt	r4, #:upper16:92168	@ tmp180,
	movt	r0, #:upper16:92172	@ tmp181,
	ldr	r2, [r3, r4]	@ i.1075, <variable>.Head
	ldr	r4, [r3, r0]	@ D.35393, <variable>.Tail
	cmp	r2, r4	@ i.1075, D.35393
	beq	.L109	@,
	cmp	r1, r2	@ StreamID, i.1075
	movwne	ip, #:lower16:954437177	@ tmp248,
	movtne	ip, #:upper16:954437177	@ tmp248,
	bne	.L121	@,
	b	.L112	@
.L125:
	cmp	r1, r2	@ StreamID, i.1075
	beq	.L112	@,
.L121:
	add	r2, r2, #1	@ D.35402, i.1075,
	umull	r5, r0, ip, r2	@, tmp198, tmp248, D.35402
	mov	r5, r0, lsr #8	@ i.1075, tmp198,
	add	r0, r5, r5, asl #3	@, tmp202, i.1075, i.1075,
	sub	r2, r2, r0, asl #7	@ i.1075, D.35402, tmp202,
	cmp	r2, r4	@ i.1075, D.35393
	bne	.L125	@,
.L109:
	mvn	r0, #2	@ Ret,
	b	.L119	@
.L112:
	add	ip, r1, r1, asl #2	@, tmp184, StreamID, StreamID,
	add	r5, r3, ip, asl #4	@, tmp188, pStreamSegArray, tmp184,
	add	r5, r5, #8	@ tmp189, tmp188,
	ldrsb	r2, [r5, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #2	@ <variable>.SegState,
	bne	.L109	@,
.L110:
	movw	ip, #:lower16:92168	@ tmp206,
	movt	ip, #:upper16:92168	@ tmp206,
	mov	r2, #0	@ tmp204,
	strb	r2, [r5, #4]	@ tmp204, <variable>.SegState
	ldr	r2, [r3, ip]	@ i.1079, <variable>.Head
	cmp	r2, r1	@ i.1079, StreamID
	beq	.L129	@,
.L115:
	movw	r2, #:lower16:92200	@ tmp236,
	movt	r2, #:upper16:92200	@ tmp236,
	ldr	r1, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	ip, [r3, r2]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	r1, r1, ip	@ tmp240, <variable>.LenInByte, <variable>.SegTotalSize
	bic	r1, r1, r1, asr #31	@ tmp241, tmp240
	str	r1, [r3, r2]	@ tmp241, <variable>.SegTotalSize
	b	.L119	@
.L128:
	movw	r1, #:lower16:92168	@ tmp151,
	movw	r0, #:lower16:92172	@ tmp152,
	movt	r1, #:upper16:92168	@ tmp151,
	movt	r0, #:upper16:92172	@ tmp152,
	ldr	r1, [r3, r1]	@ D.35381, <variable>.Head
	ldr	ip, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r1, ip	@ D.35381, <variable>.Tail
	beq	.L109	@,
	add	ip, r1, r1, asl #2	@, tmp156, StreamID, StreamID,
	add	r2, r3, ip, asl #4	@, tmp166, pStreamSegArray, tmp156,
	add	r5, r2, #8	@ pSeg, tmp159,
	ldr	r0, [r2, #20]	@ temp.1082, <variable>.LenInByte
	cmp	r0, #0	@ temp.1082,
	beq	.L110	@,
	mov	r2, #0	@ i,
.L111:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #15	@ i,
	cmpls	r2, r0	@, i, temp.1082
	bcc	.L111	@,
	b	.L110	@
.L129:
	movw	r0, #:lower16:92172	@ tmp207,
	movt	r0, #:upper16:92172	@ tmp207,
	ldr	r7, [r3, r0]	@ temp.1081, <variable>.Tail
	cmp	r1, r7	@ StreamID, temp.1081
	movwne	r6, #:lower16:954437177	@ tmp247,
	movwne	r8, #1151	@ tmp246,
	movtne	r6, #:upper16:954437177	@ tmp247,
	beq	.L118	@,
.L126:
	add	r1, r2, #1	@ temp.1078, i.1079,
	add	r0, r2, r2, asl #2	@, tmp215, i.1079, i.1079,
	cmp	r2, r8	@ i.1079, tmp246
	umull	r4, ip, r6, r1	@, tmp230, tmp247, temp.1078
	add	r4, r3, r0, asl #4	@, tmp219, pStreamSegArray, tmp215,
	bhi	.L117	@,
	ldrsb	r4, [r4, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r4, #0	@ <variable>.SegState,
	bne	.L130	@,
.L117:
	mov	r0, ip, lsr #8	@ i.1079, tmp230,
	add	r2, r0, r0, asl #3	@, tmp234, i.1079, i.1079,
	sub	r2, r1, r2, asl #7	@ i.1079, temp.1078, tmp234,
	cmp	r2, r7	@ i.1079, temp.1081
	bne	.L126	@,
.L118:
	movw	r0, #:lower16:92196	@ tmp210,
	movt	r0, #:upper16:92196	@ tmp210,
	movw	r1, #:lower16:92168	@ tmp208,
	movw	r2, #:lower16:92192	@ tmp209,
	ldr	ip, [r3, r0]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r1, #:upper16:92168	@ tmp208,
	movt	r2, #:upper16:92192	@ tmp209,
	str	r7, [r3, r1]	@ temp.1081, <variable>.Head
	str	ip, [r3, r2]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L115	@
.L130:
	add	r0, r0, #1	@ tmp228, tmp215,
	movw	ip, #:lower16:92168	@ tmp223,
	movt	ip, #:upper16:92168	@ tmp223,
	movw	r1, #:lower16:92192	@ tmp224,
	movt	r1, #:upper16:92192	@ tmp224,
	str	r2, [r3, ip]	@ i.1079, <variable>.Head
	ldr	ip, [r3, r0, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r3, r1]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L115	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pSegStreamArray, pSegStreamArray
	movwne	r2, #:lower16:92200	@ tmp137,
	movtne	r2, #:upper16:92200	@ tmp137,
	mvneq	r0, #0	@ D.35430,
	movne	r0, #0	@ D.35430,
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
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:92172	@ tmp150,
	movt	r2, #:upper16:92172	@ tmp150,
	movw	r1, #:lower16:92168	@ tmp151,
	movt	r1, #:upper16:92168	@ tmp151,
	ldr	r3, [r0, r2]	@ <variable>.Tail, <variable>.Tail
	movw	r2, #:lower16:954437177	@ tmp152,
	ldr	ip, [r0, r1]	@ <variable>.Head, <variable>.Head
	movt	r2, #:upper16:954437177	@ tmp152,
	add	r3, r3, #1152	@ tmp137, <variable>.Tail,
	rsb	r3, ip, r3	@ tmp140, <variable>.Head, tmp137
	smull	r1, ip, r2, r3	@, tmp142, tmp152, tmp140
	mov	r1, r3, asr #31	@ tmp145, tmp140,
	rsb	r0, r1, ip, asr #8	@, tmp135, tmp145, tmp142,
	add	r2, r0, r0, asl #3	@, tmp148, tmp135, tmp135,
	sub	r0, r3, r2, asl #7	@, tmp140, tmp148,
	bx	lr	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
	.fnstart
.LFB1627:
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
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #140]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
	ldr	r2, [r3, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp142,
	moveq	r2, #2	@ tmp140,
	strne	r2, [r3, #140]	@ tmp142, s_eScdDrvSleepStage
	streq	r2, [r3, #140]	@ tmp140, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r0, [r3, #140]	@, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForceSleep
	.type	SCDDRV_ForceSleep, %function
SCDDRV_ForceSleep:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp133,
	movt	r3, #:upper16:.LANCHOR0	@ tmp133,
	ldr	r2, [r3, #140]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #140]	@ tmp136, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_ForceSleep, .-SCDDRV_ForceSleep
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #8]	@ D.35476, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.35476,
	beq	.L151	@,
	blx	r3	@ D.35476
.L151:
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #140]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r3, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r1, [r0, #116]	@ D.35702, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.35702,
	beq	.L154	@,
	movw	r2, #:lower16:166252	@ tmp144,
	movt	r2, #:upper16:166252	@ tmp144,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L160	@,
.L154:
	mov	r0, #0	@ D.35705,
	bx	lr	@
.L160:
	mov	r0, #0	@ tmp147,
	str	r0, [r1, r2]	@ tmp147, <variable>.Mode
	ldr	r3, [r3, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, r0	@ s_SmIIS.SCDState,
	beq	.L154	@,
	mov	r3, r0	@ i, tmp147
.L155:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L155	@,
	mvn	r0, #6	@ D.35705,
	bx	lr	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	bne	.L162	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L167	@,
	movw	r4, #:lower16:166252	@ tmp143,
	movt	r4, #:upper16:166252	@ tmp143,
	movw	r0, #:lower16:180116	@ tmp146,
	movt	r0, #:upper16:180116	@ tmp146,
	ldr	r7, [r3, r4]	@ <variable>.Mode, <variable>.Mode
	movw	r2, #:lower16:73900	@ tmp148,
	movw	r6, #:lower16:73896	@ tmp149,
	movt	r2, #:upper16:73900	@ tmp148,
	movt	r6, #:upper16:73896	@ tmp149,
	strb	r7, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	ip, [r3, r0]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	r0, #:lower16:73916	@ tmp153,
	movt	r0, #:upper16:73916	@ tmp153,
	str	ip, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	ip, #:lower16:166092	@ tmp157,
	ldr	r5, [r3, r2]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:73908	@ tmp154,
	ldr	r4, [r3, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movt	r2, #:upper16:73908	@ tmp154,
	movt	ip, #:upper16:166092	@ tmp157,
	rsb	r7, r4, r5	@ D.37771, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r7, [r1, #4]	@ D.37771, <variable>.RawNum
	cmp	r7, #0	@ D.37771,
	movw	r5, #:lower16:166088	@ tmp160,
	addlt	r7, r7, #1024	@ tmp152, D.37771,
	strlt	r7, [r1, #4]	@ tmp152, <variable>.RawNum
	ldr	r6, [r3, r0]	@ D.37781, <variable>.RawPacketArray.RawTotalSize
	movt	r5, #:upper16:166088	@ tmp160,
	movw	r4, #:lower16:954437177	@ tmp164,
	movt	r4, #:upper16:954437177	@ tmp164,
	mov	r0, #0	@ D.35717,
	str	r6, [r1, #12]	@ D.37781, <variable>.TotalRawSize
	ldr	r7, [r3, r2]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	movw	r2, #:lower16:166120	@ tmp173,
	movt	r2, #:upper16:166120	@ tmp173,
	rsb	r6, r7, r6	@ tmp156, <variable>.RawPacketArray.FirstPacketOffset, D.37781
	str	r6, [r1, #12]	@ tmp156, <variable>.TotalRawSize
	ldr	ip, [r3, ip]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r5, [r3, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	ip, ip, #1152	@ tmp158, <variable>.StreamSegArray.Tail,
	rsb	ip, r5, ip	@ tmp161, <variable>.StreamSegArray.Head, tmp158
	smull	r5, r4, r4, ip	@, tmp163, tmp164, tmp161
	mov	r5, ip, asr #31	@ tmp166, tmp161,
	rsb	r4, r5, r4, asr #8	@, tmp167, tmp166, tmp163,
	add	r4, r4, r4, asl #3	@, tmp170, tmp167, tmp167,
	sub	ip, ip, r4, asl #7	@ tmp172, tmp161, tmp170,
	str	ip, [r1, #8]	@ tmp172, <variable>.SegNum
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
.L164:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L167:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.35717,
	bne	.L164	@,
.L162:
	mvn	r0, #0	@ D.35717,
	b	.L164	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r2, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r0, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L172	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L172:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	sub	r2, r1, #1	@ tmp144, Mode,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	cmp	r2, #1	@ tmp144,
	add	r3, ip, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r3, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bls	.L177	@,
.L174:
	mvn	r0, #0	@ D.36101,
	bx	lr	@
.L177:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L174	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	mov	r0, #0	@ D.36101,
	str	r1, [r3, r2]	@ Mode, <variable>.Mode
	bx	lr	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
	.fnstart
.LFB1653:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]	@ <variable>.ScdRollAddr, <variable>.ScdRollAddr
	cmp	r3, #0	@ <variable>.ScdRollAddr,
	mvneq	r0, #6	@,,
	movne	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	CheckScdStateReg, .-CheckScdStateReg
	.align	2
	.global	ScdParseUpMsgInfo
	.type	ScdParseUpMsgInfo, %function
ScdParseUpMsgInfo:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ ParseUpMsgInfo
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mvneq	r5, #0	@ D.36358,
	beq	.L184	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.36364, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #72]	@ tmp146,
	mov	r5, #0	@ D.36358,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.36364,
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	ldr	r3, [r3, r2, asl #2]	@ tmp150,* <variable>.pScdUpMsg
	mov	r3, r3, lsr #31	@ tmp149, tmp150,
	bfi	r4, r3, #1, #1	@ tmp151, tmp149,,
	strb	r4, [r1, #72]	@ tmp151,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r4	@ tmp163, tmp151
	ldr	r2, [r2, ip, asl #2]	@ tmp156,* <variable>.pScdUpMsg
	ubfx	r2, r2, #16, #1	@ tmp158, tmp156,,
	bfi	r3, r2, #2, #1	@ tmp163, tmp158,,
	strb	r3, [r1, #72]	@ tmp163,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	uxtb	r3, r3	@ tmp174, tmp163
	ldr	r2, [r2, ip, asl #2]	@ tmp167,* <variable>.pScdUpMsg
	ubfx	r2, r2, #4, #3	@ tmp171, tmp167,,
	bfi	r3, r2, #3, #4	@ tmp174, tmp171,,
	strb	r3, [r1, #72]	@ tmp174,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldrh	r3, [r1, #72]	@,
	ldr	r0, [r2, ip, asl #2]	@ tmp177,* <variable>.pScdUpMsg
	and	r2, r0, #7	@ tmp181, tmp177,
	bfi	r3, r2, #7, #4	@ tmp184, tmp181,,
	strh	r3, [r1, #72]	@ movhi	@ tmp184,
.L184:
	mov	r0, r5	@, D.36358
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegPacket
	mvneq	r0, #0	@ D.36504,
	bxeq	lr	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L193	@,
.L191:
	mvn	r0, #6	@ D.36504,
	bx	lr	@
.L193:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L191	@,
	ldr	ip, [r0, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movls	r0, #0	@ D.36504,
	bxls	lr	@
	b	.L191	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r3	@ pSegPacket, pSegPacket
	.pad #44
	sub	sp, sp, #44	@,,
	mvn	r9, #0	@ tmp144,
	mvn	r6, #0	@ tmp140,
	str	r9, [r3, #68]	@ tmp144, <variable>.GopNum
	str	r9, [r4, #56]	@ tmp144, <variable>.DispEnableFlag
	mvn	r7, #0	@,
	str	r9, [r4, #60]	@ tmp144, <variable>.DispFrameDistance
	mov	r5, r2	@ pLastPts, pLastPts
	strd	r6, [r3, #24]	@ tmp140, pSegPacket,
	add	r2, sp, #36	@,,
	strd	r6, [r3, #40]	@ tmp140, pSegPacket,
	mov	ip, #0	@ tmp138,
	strd	r6, [r3, #32]	@ tmp140, pSegPacket,
	add	r3, sp, #32	@,,
	str	r9, [r4, #64]	@ tmp144, <variable>.DistanceBeforeFirstFrame
	add	r8, r4, #24	@ tmp150, pSegPacket,
	strd	r6, [r4, #48]	@ tmp140, pSegPacket,
	add	sl, r4, #40	@ tmp151, pSegPacket,
	add	lr, r4, #48	@ tmp152, pSegPacket,
	stmia	sp, {r8, sl}	@ phole stm
	add	r9, r4, #56	@ tmp153, pSegPacket,
	str	lr, [sp, #8]	@ tmp152,
	add	fp, r4, #60	@ tmp154, pSegPacket,
	add	lr, r4, #32	@ tmp157, pSegPacket,
	str	ip, [sp, #32]	@ tmp138, Offset
	add	sl, r4, #64	@ tmp155, pSegPacket,
	add	r8, r4, #68	@ tmp156, pSegPacket,
	str	r9, [sp, #12]	@ tmp153,
	str	fp, [sp, #16]	@ tmp154,
	str	sl, [sp, #20]	@ tmp155,
	str	r8, [sp, #24]	@ tmp156,
	str	lr, [sp, #28]	@ tmp157,
	str	ip, [sp, #36]	@ tmp138, Num
	bl	GetRawNumOffsert	@
	ldrd	r2, [r4, #24]	@ D.36532, pSegPacket,
	ldrd	r0, [r5]	@ tmp158,* pLastPts
	cmp	r1, r3	@ tmp158, D.36532
	cmpeq	r0, r2	@ tmp158, D.36532
	beq	.L198	@,
	strd	r2, [r5]	@ D.36532,* pLastPts
.L197:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L198:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L197	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L200	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L200	@,
	movw	r1, #:lower16:166252	@ tmp138,
	movt	r1, #:upper16:166252	@ tmp138,
	ldr	r0, [r2, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	beq	.L200	@,
	ldr	ip, [r2, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	ip, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.36890
	moveq	r0, #1	@, D.36890
	bx	lr	@
.L200:
	mov	r0, #0	@ D.36890,
	bx	lr	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L204	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	rsbs	r2, r3, #1	@ tmp142, pSmInstArray
	movcc	r2, #0	@ tmp142
	orrs	r2, r2, r1, lsr #31	@,, tmp142, Flag,
	bne	.L204	@,
	movw	ip, #:lower16:166252	@ tmp147,
	movt	ip, #:upper16:166252	@ tmp147,
	ldr	r0, [r3, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	strne	r1, [r3, #84]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	r0, [r3, #84]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, #1	@ D.36907,
	bx	lr	@
.L204:
	mov	r0, #0	@ D.36907,
	bx	lr	@
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L213	@,
.L209:
	mov	r0, #0	@ D.36924,
.L211:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {pc}
.L213:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L209	@,
	ldr	ip, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.36924,
	blt	.L211	@,
	ldr	r0, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L209	@,
	ldr	lr, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.36924
	movle	r0, #1	@, D.36924
	b	.L211	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1672:
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
.LFB1674:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #44164	@,
	bx	lr	@
	.fnend
	.size	get_scd_msg_size, .-get_scd_msg_size
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eCapLevel,
	bhi	.L221	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L226	@,
	sub	r0, r0, #13	@ D.37798, eCapLevel,
	cmp	r0, #10	@ D.37798,
	bls	.L227	@,
.L223:
	mov	r0, #3145728	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L227:
	movw	r1, #:lower16:.LANCHOR1	@ tmp149,
	movt	r1, #:upper16:.LANCHOR1	@ tmp149,
	ldr	r0, [r1, r0, asl #2]	@ MaxSegSize, CSWTCH.663
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L221:
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L226:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L221	@,
	mul	r0, r5, r0	@ tmp147, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp148,
	movt	r3, #:upper16:2088960	@ tmp148,
	cmp	r0, r3	@ tmp147, tmp148
	movgt	r0, #20971520	@ MaxSegSize,
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	b	.L223	@
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1670:
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
.LFB1652:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #:lower16:269731904	@ tmp140,
	movt	r0, #:upper16:269731904	@,
	bl	MEM_ReadPhyWord	@
	movw	r5, #:lower16:269731916	@ tmp153,
	movt	r5, #:upper16:269731916	@ tmp153,
	and	ip, r0, #1	@ tmp141,,
	movw	r0, #:lower16:269731908	@ tmp142,
	str	ip, [r4, #0]	@ tmp141, <variable>.Scdover
	movt	r0, #:upper16:269731908	@,
	bl	MEM_ReadPhyWord	@
	and	r2, r0, #1	@ tmp143,,
	mov	r0, r5	@, tmp153
	str	r2, [r4, #4]	@ tmp143, <variable>.ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r0, r0, lsr #22	@ tmp145,,
	str	r0, [r4, #8]	@ tmp145, <variable>.ShortScdNum
	mov	r0, r5	@, tmp153
	bl	MEM_ReadPhyWord	@
	bic	r1, r0, #-16777216	@ tmp148,,
	movw	r0, #:lower16:269731920	@ tmp149,
	bic	r3, r1, #12582912	@ tmp148, tmp148,
	movt	r0, #:upper16:269731920	@,
	str	r3, [r4, #12]	@ tmp148, <variable>.ScdNum
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, <variable>.ScdRollAddr
	movw	r0, #:lower16:269731924	@ tmp150,
	movt	r0, #:upper16:269731924	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, <variable>.SrcEaten
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:269731872	@,
	movt	r0, #:upper16:269731872	@,
	mov	r7, r3	@ Seg_num, Seg_num
	mov	r5, r1	@ pUsedSeg, pUsedSeg
	mov	r6, r2	@ pStreamSegArray, pStreamSegArray
	bl	MEM_ReadPhyWord	@
	mov	r0, sp	@,
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #16]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r0, #6	@ Ret,
	beq	.L234	@,
	movw	fp, #:lower16:92172	@ tmp167,
	movt	fp, #:upper16:92172	@ tmp167,
	movw	ip, #:lower16:92168	@ tmp170,
	movt	ip, #:upper16:92168	@ tmp170,
	ldr	r0, [r6, fp]	@ <variable>.Tail, <variable>.Tail
	movw	r2, #:lower16:954437177	@ tmp174,
	ldr	lr, [r6, ip]	@ <variable>.Head, <variable>.Head
	movt	r2, #:upper16:954437177	@ tmp174,
	add	r3, r0, #1152	@ tmp168, <variable>.Tail,
	subs	r0, r7, #1	@ i, Seg_num,
	rsb	ip, lr, r3	@ tmp171, <variable>.Head, tmp168
	movmi	r0, r7	@ Ret, Seg_num
	smull	r1, fp, r2, ip	@, tmp173, tmp174, tmp171
	mov	r1, ip, asr #31	@ tmp176, tmp171,
	rsb	lr, r1, fp, asr #8	@, SegNum, tmp176, tmp173,
	add	r2, lr, lr, asl #3	@, tmp179, SegNum, SegNum,
	sub	fp, ip, r2, asl #7	@ SegNum, tmp171, tmp179,
	rsb	fp, fp, #1152	@ SegNum.1710, SegNum,
	bmi	.L234	@,
	movw	r2, #:lower16:180124	@ tmp181,
	movt	r2, #:upper16:180124	@ tmp181,
	ldr	r8, [r4, #20]	@ pretmp.1689, <variable>.SegFilter.ModeFlag
	movw	r1, #:lower16:92184	@ tmp182,
	ldr	r7, [r4, r2]	@ pretmp.1682, <variable>.UpMsgStepNum
	movt	r1, #:upper16:92184	@ tmp182,
	cmp	r8, #1	@ pretmp.1689,
	movne	ip, #0	@, pretmp.1690
	moveq	ip, #1	@, pretmp.1690
	tst	r0, #1	@ i,
	ldr	r4, [r6, r1]	@ pretmp.1688, <variable>.SegBufPhyAddr
	movw	r3, #:lower16:-1241448448	@ tmp187,
	mov	sl, r7, asl #2	@ pretmp.1711, pretmp.1682,
	movt	r3, #:upper16:-1241448448	@ tmp187,
	ldr	r6, [r6, #0]	@ pretmp.1684, <variable>.pSegBufVirAddr
	rsb	r1, sl, #0	@ D.39067, pretmp.1711
	mla	r5, sl, r0, r5	@ ivtmp.1706, pretmp.1711, i, pUsedSeg
	mov	r2, #0	@ count,
	beq	.L240	@,
	ldr	sl, [r5, #0]	@ tmp201,* ivtmp.1706
	rsb	lr, r4, sl	@ tmp202, pretmp.1688, tmp201
	ldr	r7, [r6, lr]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp208
	andeq	sl, ip, #1	@,, tmp208, pretmp.1690
	cmp	sl, r2	@ tmp208,
	beq	.L250	@,
.L242:
	cmp	fp, r0	@ SegNum.1710, i
	mov	r2, #1	@ count,
	bcs	.L234	@,
.L243:
	subs	r7, r0, #1	@ i.1709, i,
	add	r5, r5, r1	@ ivtmp.1706, ivtmp.1706, D.39067
	movpl	r0, r7	@ i, i.1709
	bmi	.L234	@,
.L240:
	ldr	lr, [r5, #0]	@ tmp192,* ivtmp.1706
	rsb	r7, r4, lr	@ tmp193, pretmp.1688, tmp192
	ldr	r7, [r6, r7]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp199
	andeq	sl, ip, #1	@,, tmp199, pretmp.1690
	cmp	sl, #0	@ tmp199,
	bne	.L235	@,
.L253:
	cmp	r8, #2	@ pretmp.1689,
	beq	.L251	@,
.L236:
	subs	r7, r0, #1	@ i.1709, i,
	add	r9, r5, r1	@ ivtmp.1706, ivtmp.1706, D.39067
	bmi	.L234	@,
	ldr	sl, [r5, r1]	@ tmp158,* D.39067
	mov	r0, r7	@ i, i.1709
	rsb	r5, r4, sl	@ tmp157, pretmp.1688, tmp158
	ldr	r5, [r6, r5]	@ start_code,
	cmp	r5, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp164
	andeq	sl, ip, #1	@,, tmp164, pretmp.1690
	cmp	sl, #0	@ tmp164,
	beq	.L252	@,
.L246:
	add	r2, r2, #1	@ count, count,
	cmp	r2, #0	@ count,
	ble	.L247	@,
	cmp	fp, r7	@ SegNum.1710, i.1709
	bcs	.L234	@,
.L247:
	add	r5, r9, r1	@ ivtmp.1706, ivtmp.1706, D.39067
	sub	r0, r7, #1	@ i, i.1709,
	ldr	lr, [r5, #0]	@ tmp192,* ivtmp.1706
	rsb	r7, r4, lr	@ tmp193, pretmp.1688, tmp192
	ldr	r7, [r6, r7]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp199
	andeq	sl, ip, #1	@,, tmp199, pretmp.1690
	cmp	sl, #0	@ tmp199,
	beq	.L253	@,
.L235:
	add	r2, r2, #1	@ count, count,
	cmp	r2, #0	@ count,
	ble	.L236	@,
	cmp	fp, r0	@ SegNum.1710, i
	bcc	.L236	@,
.L234:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L252:
	cmp	r8, #2	@ pretmp.1689,
	bne	.L247	@,
	ubfx	r5, r5, #16, #8	@ D.36582, start_code,,
	cmp	r5, #127	@ D.36582,
	bls	.L247	@,
	cmp	r5, #131	@ D.36582,
	bls	.L246	@,
	b	.L247	@
.L250:
	cmp	r8, #2	@ pretmp.1689,
	bne	.L243	@,
	ubfx	r7, r7, #16, #8	@ D.36582, start_code,,
	cmp	r7, #127	@ D.36582,
	bls	.L243	@,
	cmp	r7, #131	@ D.36582,
	bls	.L242	@,
	b	.L243	@
.L251:
	ubfx	r7, r7, #16, #8	@ D.36582, start_code,,
	cmp	r7, #127	@ D.36582,
	bls	.L236	@,
	cmp	r7, #131	@ D.36582,
	bhi	.L236	@,
	b	.L235	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	add	r3, r2, r0, asl #2	@, tmp145, tmp141, SmID,
	mov	r5, r1	@ FirstCalc, FirstCalc
	ldr	r4, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	moveq	r0, r4	@ prephitmp.1727, pSmInstArray
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r3, r0	@ CurTime,
	beq	.L257	@,
	movw	r1, #:lower16:180080	@ tmp147,
	movw	ip, #:lower16:180084	@ tmp149,
	movt	r1, #:upper16:180080	@ tmp147,
	movt	ip, #:upper16:180084	@ tmp149,
	mov	r0, #0	@ tmp148,
	str	r0, [r4, r1]	@ tmp148, <variable>.BlockTimeInMs
	str	r3, [r4, ip]	@ CurTime,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L257:
	movw	r2, #:lower16:180084	@ tmp150,
	movt	r2, #:upper16:180084	@ tmp150,
	ldr	r1, [r4, r2]	@ D.36085, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTime, D.36085
	bls	.L258	@,
	rsb	r3, r1, r0	@ D.36088, D.36085, CurTime
	movw	lr, #:lower16:180080	@ tmp151,
	movt	lr, #:upper16:180080	@ tmp151,
	mov	r0, r3	@ prephitmp.1727, D.36088
	str	r3, [r4, lr]	@ D.36088,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L258:
	movw	ip, #:lower16:180080	@ tmp152,
	movt	ip, #:upper16:180080	@ tmp152,
	mov	r0, r5	@ prephitmp.1727, FirstCalc
	str	r3, [r4, r2]	@ CurTime, <variable>.LastBlockTime
	str	r5, [r4, ip]	@ FirstCalc, <variable>.BlockTimeInMs
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp187,
	movt	r5, #:upper16:.LANCHOR0	@ tmp187,
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	ldr	r1, [r0, #4]	@, <variable>.DownMsgPhyAddr
	ldr	r3, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, r3, #2048	@, s_RegPhyBaseAddr,
	add	r0, lr, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #12]	@, <variable>.UpMsgPhyAddr
	add	ip, r2, #2048	@, s_RegPhyBaseAddr,
	add	r0, ip, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #20]	@, <variable>.UpLen
	add	r3, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #24]	@, <variable>.BufferFirst
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #28]	@, <variable>.BufferLast
	add	r0, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #32]	@, <variable>.BufferIni
	add	r2, r3, #2064	@, s_RegPhyBaseAddr,
	add	r0, r2, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r0, [r4, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	ip, [r4, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	ldr	r2, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	mov	r3, r0, asl #4	@ tmp172, <variable>.SliceCheckFlag,
	and	r1, ip, #15	@ tmp166, <variable>.ScdProtocol,
	ldr	r0, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	ip, r3, #16	@ tmp173, tmp172,
	orr	r1, r1, r2, asl #8	@, tmp170, tmp166, <variable>.ScdLowdlyEnable,
	orr	r1, r1, ip	@, tmp170, tmp173
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.ScdLowdlyEnable,
	beq	.L261	@,
	ldr	r0, [r5, #144]	@, s_RegPhyBaseAddr
	ldr	r1, [r4, #108]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L261:
	bl	PrintScdVtrlReg	@
	ldr	ip, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, ip, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.ScdStart, <variable>.ScdStart
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	and	r1, r1, #1	@, <variable>.ScdStart,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MEM_WritePhyWord	@
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
	ldr	r2, [r3, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
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
	ldr	r2, [r3, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
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
	str	lr, [sp, #-4]!	@,
	.save {lr}
	movw	r0, #:lower16:269731868	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, #:upper16:269731868	@,
	bl	MEM_ReadPhyWord	@
	movw	r2, #:lower16:g_pstRegCrg	@ tmp144,
	movt	r2, #:upper16:g_pstRegCrg	@ tmp144,
	mov	r3, #0	@ i,
	movw	lr, #10000	@ tmp159,
	ldr	ip, [r2, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r1, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r1, r1, #32	@ u32TmpValue, u32TmpValue,
	str	r1, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [r2, #0]	@ pretmp.1830, g_pstRegCrg
	b	.L269	@
.L274:
	ldr	r2, [ip, #372]	@ D.34711, <variable>.PERI_CRG93.u32
	tst	r2, #2	@ D.34711,
	str	r2, [sp, #4]	@ D.34711, u32TmpValue_93.u32
	bne	.L268	@,
	cmp	r3, lr	@ i, tmp159
	beq	.L268	@,
.L269:
	ldr	r2, [ip, #372]	@ D.34711, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp160, i,
	add	r3, r3, #1	@ i, tmp160,
	tst	r2, #2	@ D.34711,
	str	r2, [sp, #4]	@ D.34711, u32TmpValue_93.u32
	beq	.L274	@,
.L268:
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	bfc	r1, #5, #1	@ u32TmpValue,,
	str	r1, [ip, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	lr, [r3, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r0, #1	@, D.34707,
	add	r0, lr, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1665:
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
	bne	.L285	@,
.L276:
	mvn	r5, #6	@ ret,
.L281:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L285:
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	addeq	r6, r6, #28	@ tmp165, InstID,
	movweq	r4, #:lower16:.LANCHOR0	@ tmp164,
	movteq	r4, #:upper16:.LANCHOR0	@ tmp164,
	beq	.L277	@,
	add	r6, r6, #28	@ tmp165, InstID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp164,
	movt	r4, #:upper16:.LANCHOR0	@ tmp164,
	add	r2, r4, r6, asl #2	@, tmp146, tmp164, tmp165,
	ldr	r1, [r2, #4]	@ tmp148, s_SmIIS.pSmInstArray
	ldr	r0, [r1, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	r0, #0	@ <variable>.Config.ScdLowBufEnable,
	beq	.L278	@,
	ldr	r5, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r5	@ StreamIntf.release_stream
	mov	r5, r0	@ ret,
.L279:
	cmp	r5, #0	@ ret,
	bne	.L277	@,
	add	r6, r4, r6, asl #2	@, tmp160, tmp164, tmp165,
	ldr	lr, [r6, #4]	@ tmp162, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ tmp162,
	bne	.L281	@,
	b	.L276	@
.L277:
	add	r6, r4, r6, asl #2	@, tmp160, tmp164, tmp165,
	mvn	r5, #6	@ ret,
	ldr	lr, [r6, #4]	@ tmp162, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ tmp162,
	bne	.L281	@,
	b	.L276	@
.L278:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	ldr	ip, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	ip	@ StreamIntf.release_stream
	mov	r5, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L279	@
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	beq	.L305	@,
.L287:
	mvn	r0, #0	@ D.34922,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L305:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r4, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L287	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L306	@,
.L288:
	movw	r2, #:lower16:73896	@ tmp149,
	movw	ip, #:lower16:73904	@ tmp150,
	movt	r2, #:upper16:73896	@ tmp149,
	movt	ip, #:upper16:73904	@ tmp150,
	ldr	r7, [r4, r2]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r5, [r4, ip]	@ D.34934, <variable>.RawPacketArray.History
	cmp	r7, r5	@ RawHead, D.34934
	addlt	r7, r7, #1024	@ tmp151, RawHead,
	rsb	r7, r5, r7	@ DelNum, D.34934, tmp151
	cmp	r7, #0	@ DelNum,
	beq	.L287	@,
	add	r6, r5, r5, asl #3	@, tmp154, D.34934, D.34934,
	mov	r0, #0	@,
	sub	r8, r7, #1	@ tmp169, DelNum,
	add	lr, r4, r6, asl #3	@, tmp156, pSmInstArray, tmp154,
	mov	r6, #1	@ i,
	add	r1, lr, #168	@, tmp156,
	and	r8, r8, #1	@ tmp171, tmp169,
	bl	ReleaseRawStreamData	@
	add	r3, r5, r6	@ D.34944, D.34934,
	cmp	r6, r7	@ i, DelNum
	mov	r5, r3, asl #22	@ j, D.34944,
	mov	r5, r5, lsr #22	@ j, j,
	bcs	.L301	@,
	cmp	r8, #0	@ tmp171,
	addne	r1, r5, r5, asl #3	@, tmp192, j, j,
	movne	r0, #0	@,
	movne	r6, #2	@ i,
	bne	.L303	@
.L291:
	add	lr, r5, r5, asl #3	@, tmp176, j, j,
	add	r3, r6, #1	@ tmp172, i,
	mov	r0, #0	@,
	add	r6, r3, #1	@ i, tmp172,
	add	r2, r4, lr, asl #3	@, tmp178, pSmInstArray, tmp176,
	add	r1, r2, #168	@, tmp178,
	bl	ReleaseRawStreamData	@
	add	ip, r5, #1	@ D.34944, j,
	mov	r0, #0	@,
	mov	r1, ip, asl #22	@ j, D.34944,
	mov	r5, r1, lsr #22	@ j, j,
	add	r1, r5, r5, asl #3	@, tmp185, j, j,
.L303:
	add	r2, r4, r1, asl #3	@, tmp194, pSmInstArray, tmp192,
	add	r1, r2, #168	@, tmp194,
	bl	ReleaseRawStreamData	@
	add	ip, r5, #1	@ D.34944, j,
	cmp	r6, r7	@ i, DelNum
	mov	r5, ip, asl #22	@ j, D.34944,
	mov	r5, r5, lsr #22	@ j, j,
	bcc	.L291	@,
.L301:
	movw	r0, #:lower16:73904	@ tmp159,
	movt	r0, #:upper16:73904	@ tmp159,
	ldr	r1, [r4, r0]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r7, r7, r1	@ D.34946, DelNum, <variable>.RawPacketArray.History
	str	r7, [r4, r0]	@ D.34946, <variable>.RawPacketArray.History
	cmp	r7, #1024	@ D.34946,
	subge	r7, r7, #1024	@ tmp165, D.34946,
	strge	r7, [r4, r0]	@ tmp165, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.34922,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L306:
	movw	r1, #:lower16:166252	@ tmp147,
	movt	r1, #:upper16:166252	@ tmp147,
	ldr	r0, [r4, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	beq	.L287	@,
	b	.L288	@
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	add	r7, r0, #28	@ tmp167, InstID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp166,
	movt	r4, #:upper16:.LANCHOR0	@ tmp166,
	.pad #20
	sub	sp, sp, #20	@,,
	add	r3, r4, r7, asl #2	@, tmp143, tmp166, tmp167,
	add	r5, sp, #4	@ tmp145,,
	mov	sl, r0	@ InstID, InstID
	ldr	r6, [r3, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r8, r1	@ pRawPacket, pRawPacket
	mov	r0, r5	@, tmp145
	mov	r1, #12	@,
	bl	__memzero	@
	cmp	r6, #0	@ pSmInstArray,
	bne	.L314	@,
.L308:
	mvn	r5, #6	@ ret,
.L310:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L314:
	mov	r0, sl	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L308	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp145,,,
	ldr	r0, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r0, #0	@ <variable>.read_stream,
	bne	.L315	@,
.L311:
	mvn	r5, #6	@ ret,
.L312:
	add	r4, r4, r7, asl #2	@, tmp157, tmp166, tmp167,
	ldr	r1, [r4, #4]	@ tmp159, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ tmp159,
	beq	.L308	@,
	cmp	r5, #0	@ ret,
	bne	.L310	@,
	movw	lr, #:lower16:73916	@ tmp160,
	movt	lr, #:upper16:73916	@ tmp160,
	ldr	r0, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r3, [r6, lr]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	ip, r0, r3	@ tmp164, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r6, lr]	@ tmp164, <variable>.RawPacketArray.RawTotalSize
	b	.L310	@
.L315:
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
	beq	.L312	@,
	b	.L311	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r0, [r2, #116]	@ D.37832, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ D.37832,
	beq	.L317	@,
	movw	r1, #:lower16:166252	@ tmp137,
	movt	r1, #:upper16:166252	@ tmp137,
	ldr	r3, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	bne	.L323	@,
.L317:
	bl	ResetSCD	@
	mov	r1, #140	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
.L323:
	mov	r3, #0	@ tmp140,
	str	r3, [r0, r1]	@ tmp140, <variable>.Mode
	ldr	r2, [r2, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, r3	@ s_SmIIS.SCDState,
	beq	.L317	@,
.L318:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	beq	.L317	@,
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L318	@,
	b	.L317	@
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r5, r0, #0	@ SmID, SmID
	mvnne	r0, #0	@ D.35529,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp136,
	movt	r4, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:180128	@,
	movt	r1, #:upper16:180128	@,
	ldr	r0, [r4, #116]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r2, [r4, #116]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:180088	@ tmp141,
	movt	r3, #:upper16:180088	@ tmp141,
	mov	r0, r5	@ D.35529, SmID
	mvn	r4, #0	@ tmp142,
	mvn	r5, #0	@,
	strd	r4, [r2, r3]	@ tmp142, s_SmIIS.pSmInstArray, tmp141
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
.LFB1618:
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
.LFB1617:
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
	bne	.L335	@,
.L332:
	mvn	r0, #0	@ D.35104,
.L333:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L335:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L332	@,
	movw	r1, #:lower16:92216	@,
	movt	r1, #:upper16:92216	@,
	str	r2, [sp, #4]	@,
	movw	r7, #:lower16:92184	@ tmp156,
	str	r3, [sp, #0]	@,
	movt	r7, #:upper16:92184	@ tmp156,
	bl	__memzero	@
	movw	r0, #:lower16:92196	@ tmp158,
	movt	r0, #:upper16:92196	@ tmp158,
	str	r4, [r5, r7]	@ BufPhyAddr, <variable>.SegBufPhyAddr
	movw	ip, #:lower16:92188	@ tmp159,
	movt	ip, #:upper16:92188	@ tmp159,
	str	r4, [r5, r0]	@ BufPhyAddr, <variable>.SegBufWriteAddr
	movw	r1, #:lower16:92192	@ tmp157,
	ldr	r3, [sp, #0]	@,
	movt	r1, #:upper16:92192	@ tmp157,
	mov	r0, r6	@ D.35104, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [sp, #4]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L333	@
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
	.global	ScdReturnSegFilter
	.type	ScdReturnSegFilter, %function
ScdReturnSegFilter:
	.fnstart
.LFB1655:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r9, #0	@ tmp167,
	ldr	r5, [r0, #32]	@ SegNum, <variable>.SegNum
	.pad #28
	sub	sp, sp, #28	@,,
	str	r9, [r2, #0]	@ tmp167,* pExtraSrcBack
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	ldr	r6, [r0, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	ldr	fp, [sp, #64]	@ UpMsgStepNum, UpMsgStepNum
	cmp	r6, #2	@ <variable>.ProtocolType,
	beq	.L340	@,
	cmp	r5, r9	@ SegNum,
	ble	.L341	@,
	ldr	r2, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	fp, fp, asl #2	@ D.39460, UpMsgStepNum,
	ldr	r8, [r0, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	ip, #1	@ i.2101,
	cmp	ip, r5	@ i.2101, SegNum
	sub	r7, r5, #1	@ tmp247, SegNum,
	ldr	r0, [r2, #0]	@ tmp171,* <variable>.pScdUpMsg
	and	r8, r8, #-2147483648	@ tmp172, <variable>.SegBufPhyAddr,
	and	r7, r7, ip	@ tmp249, tmp247,
	add	r2, r1, fp	@ ivtmp.2091, pTransFormSeg, D.39460
	bic	r6, r0, #-2147483648	@ tmp170, tmp171,
	mov	r0, fp	@ ivtmp.2090, D.39460
	orr	r6, r6, r8	@ tmp174, tmp170, tmp172
	str	r6, [r1, #0]	@ tmp174,* pTransFormSeg
	ldr	r6, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r6, [r6, #4]	@ tmp179,
	str	r6, [r1, #4]	@ tmp179,
	beq	.L341	@,
	cmp	r7, #0	@ tmp249,
	beq	.L342	@,
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	ip, #2	@ i.2101,
	ldr	r6, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	cmp	ip, r5	@ i.2101, SegNum
	mov	r0, fp, asl #1	@ ivtmp.2090, D.39460,
	ldr	r1, [r1, fp]	@ tmp278,* D.39460
	and	r6, r6, #-2147483648	@ tmp281, <variable>.SegBufPhyAddr,
	bic	r1, r1, #-2147483648	@ tmp279, tmp278,
	orr	r1, r1, r6	@ tmp282, tmp279, tmp281
	str	r1, [r2, #0]	@ tmp282,* ivtmp.2091
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r1, fp, r1	@ tmp284, D.39460, <variable>.pScdUpMsg
	ldr	r1, [r1, #4]	@ tmp286,
	str	r1, [r2, #4]	@ tmp286,
	add	r2, r2, fp	@ ivtmp.2091, ivtmp.2091, D.39460
	beq	.L341	@,
.L342:
	ldr	r7, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r1, r0, fp	@ ivtmp.2090, ivtmp.2090, D.39460
	ldr	r8, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	ip, ip, #2	@ i.2101, i.2101,
	add	r6, r2, fp	@ ivtmp.2091, ivtmp.2091, D.39460
	cmp	ip, r5	@ i.2101, SegNum
	ldr	r7, [r7, r0]	@ tmp255,* ivtmp.2090
	and	r8, r8, #-2147483648	@ tmp258, <variable>.SegBufPhyAddr,
	bic	r7, r7, #-2147483648	@ tmp256, tmp255,
	orr	r7, r7, r8	@ tmp259, tmp256, tmp258
	str	r7, [r2, #0]	@ tmp259,* ivtmp.2091
	ldr	r8, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r7, r0, r8	@ tmp261, ivtmp.2090, <variable>.pScdUpMsg
	add	r0, r1, fp	@ ivtmp.2090, ivtmp.2090, D.39460
	ldr	r8, [r7, #4]	@ tmp263,
	str	r8, [r2, #4]	@ tmp263,
	ldr	r7, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r8, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	ldr	r7, [r7, r1]	@ tmp268,* ivtmp.2090
	and	r8, r8, #-2147483648	@ tmp271, <variable>.SegBufPhyAddr,
	bic	r7, r7, #-2147483648	@ tmp269, tmp268,
	orr	r7, r7, r8	@ tmp272, tmp269, tmp271
	str	r7, [r2, fp]	@ tmp272,* D.39460
	ldr	r7, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r2, r6, fp	@ ivtmp.2091, ivtmp.2091, D.39460
	add	r1, r1, r7	@ tmp274, ivtmp.2090, <variable>.pScdUpMsg
	ldr	r1, [r1, #4]	@ tmp276,
	str	r1, [r6, #4]	@ tmp276,
	bne	.L342	@,
.L341:
	mov	r0, #0	@ tmp180,
	str	r0, [r4, #16]	@ tmp180, <variable>.LastH263Num
	str	r0, [r4, #12]	@ tmp180, <variable>.ModeFlag
	str	r5, [r3, #0]	@ SegNum,* pSegNum
.L343:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L340:
	ldr	r0, [r0, #20]	@, <variable>.SegBufPhyAddr
	str	r1, [sp, #8]	@,
	str	r3, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.36432,
	bne	.L362	@,
.L344:
	mvn	r0, #6	@ D.36435,
	b	.L343	@
.L362:
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ D.36445,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	ldrb	r7, [r2, #3]	@ zero_extendqisi2	@ D.36450,
	ldrb	r8, [r2, #0]	@ zero_extendqisi2	@ D.36436,* D.36432
	ldrb	sl, [r2, #1]	@ zero_extendqisi2	@ D.36440,
	str	r3, [sp, #12]	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #8]	@,
	ldr	r2, [sp, #12]	@,
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@ D.36453
	beq	.L344	@,
	orr	r7, r7, r8, asl #24	@, tmp183, D.36450, D.36436,
	mov	fp, fp, asl #2	@ D.39469, UpMsgStepNum,
	orr	r8, r7, sl, asl #16	@, tmp185, tmp183, D.36440,
	mov	r7, r1	@ ivtmp.2096, pTransFormSeg
	orr	lr, r8, r2, asl #8	@, Data32, tmp185, D.36445,
	movw	sl, #:lower16:g_event_report	@,
	strb	lr, [r0, #3]	@ Data32,
	movt	sl, #:upper16:g_event_report	@,
	mov	r6, lr, lsr #16	@ tmp189, Data32,
	mov	ip, lr, lsr #8	@ tmp191, Data32,
	strb	r6, [r0, #1]	@ tmp189,
	mov	r1, lr, lsr #24	@ tmp187, Data32,
	strb	ip, [r0, #2]	@ tmp191,
	add	r8, r7, #4	@ ivtmp.2099, ivtmp.2096,
	strb	r1, [r0, #0]	@ tmp187,* D.36453
	movw	ip, #:lower16:.LANCHOR0	@ tmp243,
	str	sl, [sp, #16]	@, %sfp
	movt	ip, #:upper16:.LANCHOR0	@ tmp243,
	mov	r6, #4	@ ivtmp.2098,
	mov	sl, r5	@ SegNum, SegNum
	str	r3, [sp, #20]	@ pSegNum, %sfp
	b	.L345	@
.L364:
	mov	lr, #1	@,
	mov	r1, #0	@,
	str	lr, [r4, #12]	@, <variable>.ModeFlag
	str	r1, [r4, #16]	@, <variable>.LastH263Num
	str	r5, [r7, #0]	@ TmpPhyAddr.2116,* ivtmp.2096
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [r3, r6]	@ tmp222,* ivtmp.2098
	str	r0, [r8, #0]	@ tmp222,* ivtmp.2099
.L347:
	add	r9, r9, #1	@ i, i,
	add	r7, r7, fp	@ ivtmp.2096, ivtmp.2096, D.39469
	add	r6, r6, fp	@ ivtmp.2098, ivtmp.2098, D.39469
	add	r8, r8, fp	@ ivtmp.2099, ivtmp.2099, D.39469
.L345:
	cmp	r9, sl	@ i, SegNum
	bge	.L363	@,
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r2, r6, r1	@ tmp196, ivtmp.2098, <variable>.pScdUpMsg
	and	r0, r3, #-2147483648	@ tmp200, <variable>.SegBufPhyAddr,
	ldr	lr, [r2, #-4]	@ tmp199,
	bic	r5, lr, #-2147483648	@ tmp198, tmp199,
	orrs	r5, r5, r0	@ TmpPhyAddr.2116, tmp198, tmp200
	beq	.L344	@,
	mov	r0, r5	@, TmpPhyAddr.2116
	str	ip, [sp, #12]	@,
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #12]	@,
	cmp	r0, #0	@ D.36465
	beq	.L344	@,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp203,* D.36465
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ tmp202,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp206,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp209,
	orr	r3, lr, r2, asl #24	@, tmp205, tmp202, tmp203,
	movw	lr, #438	@,
	orr	r2, r3, r1, asl #16	@, tmp208, tmp205, tmp206,
	orr	r0, r2, r0, asl #8	@, Data32.2135, tmp208, tmp209,
	cmp	r0, lr	@ Data32.2135,
	cmpne	r0, #288	@, Data32.2135,
	movne	r2, #0	@, tmp218
	moveq	r2, #1	@, tmp218
	beq	.L364	@,
	bic	r3, r0, #1020	@ tmp223, Data32.2135,
	bic	r0, r3, #3	@ tmp223, tmp223,
	cmp	r0, #32768	@ tmp223,
	beq	.L365	@,
.L348:
	str	r5, [r7, #0]	@ TmpPhyAddr.2116,* ivtmp.2096
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r1, [lr, r6]	@ tmp238,* ivtmp.2098
	str	r1, [r8, #0]	@ tmp238,* ivtmp.2099
	b	.L347	@
.L365:
	ldr	r1, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	r1, #1	@ <variable>.ModeFlag,
	beq	.L349	@,
	mov	r0, #2	@,
	str	r0, [r4, #12]	@, <variable>.ModeFlag
	str	r5, [r7, #0]	@ TmpPhyAddr.2116,* ivtmp.2096
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [lr, r6]	@ tmp228,* ivtmp.2098
	str	r2, [r8, #0]	@ tmp228,* ivtmp.2099
	b	.L347	@
.L363:
	ldr	ip, [sp, #20]	@ pSegNum, %sfp
	mov	r0, #0	@ D.36435,
	str	r9, [ip, #0]	@ i,* pSegNum
	b	.L343	@
.L349:
	ldr	r1, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r3, r1, #1	@ D.36489, <variable>.LastH263Num,
	str	r3, [r4, #16]	@ D.36489, <variable>.LastH263Num
	cmp	r3, #12	@ D.36489,
	ble	.L348	@,
	ldr	lr, [sp, #16]	@, %sfp
	ldr	r3, [lr, #0]	@ g_event_report.568, g_event_report
	cmp	r3, #0	@ g_event_report.568,
	beq	.L351	@,
	ldr	r0, [ip, #128]	@, s_SmIIS.ThisInstID
	mov	r1, #102	@,
	str	ip, [sp, #12]	@,
	blx	r3	@ g_event_report.568
	ldr	ip, [sp, #12]	@,
.L351:
	mov	r3, #2	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	str	r5, [r7, #0]	@ TmpPhyAddr.2116,* ivtmp.2096
	ldr	r0, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r0, r6]	@ tmp234,* ivtmp.2098
	str	r2, [r8, #0]	@ tmp234,* ivtmp.2099
	b	.L347	@
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp152,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp152,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	ip, [ip, #8]	@ D.35547, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	r4, #:lower16:.LANCHOR0	@ tmp187,
	movt	r4, #:upper16:.LANCHOR0	@ tmp187,
	cmp	ip, #0	@ D.35547,
	mov	r8, r3	@ ResetRegAddr, ResetRegAddr
	mov	r5, r0	@ MemAddr, MemAddr
	movw	r3, #:lower16:269729792	@ tmp151,
	mov	r6, r1	@ MemSize, MemSize
	movt	r3, #:upper16:269729792	@ tmp151,
	mov	r7, r2	@ RegAddr, RegAddr
	str	r3, [r4, #144]	@ tmp151, s_RegPhyBaseAddr
	beq	.L367	@,
	blx	ip	@ D.35547
.L367:
	ldr	r0, [r4, #124]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	cmp	r0, #1	@ s_SmIIS.IsScdDrvOpen,
	bne	.L372	@,
.L368:
	mvn	r0, #6	@ D.35554,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L372:
	bl	ResetSCD	@
	mov	r1, #140	@,
	mov	r0, r4	@, tmp153
	mov	sl, #0	@ tmp157,
	bl	__memzero	@
	add	r0, r5, #3	@ tmp158, MemAddr,
	bic	r9, r0, #3	@ tmp159, tmp158,
	str	r5, [r4, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r9, r5, r9	@ Offset, MemAddr, tmp159
	str	sl, [r4, #140]	@ tmp157, s_eScdDrvSleepStage
	add	r0, r9, r5	@ D.35562, Offset, MemAddr
	str	r6, [r4, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r0, [r4, #8]	@ D.35562, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	r2, r9, #12288	@ D.35567, Offset,
	mov	r1, #12288	@ tmp165,
	add	ip, r2, r5	@ temp.2183, D.35567, MemAddr
	str	r1, [r4, #16]	@ tmp165, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	ip, [r4, #20]	@ temp.2183, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, ip	@, temp.2183
	bl	MEM_Phy2Vir	@
	add	r3, r9, r5	@ tmp170, Offset, MemAddr
	add	r2, r3, #26112	@ tmp171, tmp170,
	mov	r1, #13824	@ tmp169,
	add	r5, r2, #127	@ tmp171, tmp171,
	str	r1, [r4, #28]	@ tmp169, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r5, r5, #127	@ g_hex_base_addr.493, tmp171,
	str	r5, [r4, #148]	@ g_hex_base_addr.493, g_hex_base_addr
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, g_hex_base_addr.493
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.35578,
	str	r0, [r4, #152]	@ D.35578, g_hex_base_vir_addr
	mvneq	r0, #0	@ D.35554,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r9, r9, #44032	@ tmp179, Offset,
	mov	lr, #17920	@ tmp176,
	cmp	r6, r9	@ MemSize, tmp179
	str	r7, [r4, #68]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r8, [r4, #72]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	lr, [r4, #156]	@ tmp176, g_hex_len
	blt	.L368	@,
	ldr	r3, [r4, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L368	@,
	ldr	ip, [r4, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	ip, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	movne	ip, #1	@ tmp185,
	movne	r0, sl	@ D.35554, tmp157
	strne	ip, [r4, #124]	@ tmp185, s_SmIIS.IsScdDrvOpen
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L368	@
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	add	r3, r4, r6, asl #2	@, tmp145, tmp158, SmID,
	ldr	r3, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	mov	r5, r0	@ CurTime,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldrsb	r7, [r3, #3]	@ <variable>.InsertNewSegFlag, <variable>.InsertNewSegFlag
	cmp	r7, #1	@ <variable>.InsertNewSegFlag,
	beq	.L380	@,
.L375:
	mov	r7, #0	@ prephitmp.2212,
.L376:
	ldr	r2, [r4, #160]	@ LastEventTime.533, LastEventTime
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	cmp	r5, r2	@ CurTime, LastEventTime.533
	strls	r5, [r0, #160]	@ CurTime, LastEventTime
	movls	r2, #1	@ prephitmp.2201,
	bls	.L378	@,
	rsb	r2, r2, r5	@ tmp149, LastEventTime.533, CurTime
	cmp	r2, #1	@ tmp149,
	movls	r2, #0	@, prephitmp.2201
	movhi	r2, #1	@, prephitmp.2201
.L378:
	tst	r2, r7	@ prephitmp.2201, prephitmp.2212
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #160]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L380:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L375	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L376	@,
	b	.L375	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:.LANCHOR0	@ tmp150,
	movt	r1, #:upper16:.LANCHOR0	@ tmp150,
	add	r3, r1, r0, asl #2	@, tmp154, tmp150, SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r6, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r7, r0	@ SmID, SmID
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r6, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.35911,
	bne	.L393	@,
.L383:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L393:
	movw	r2, #:lower16:73896	@ tmp156,
	movw	ip, #:lower16:73900	@ tmp157,
	movt	r2, #:upper16:73896	@ tmp156,
	movt	ip, #:upper16:73900	@ tmp157,
	ldr	r5, [r6, r2]	@ D.35918, <variable>.RawPacketArray.Head
	ldr	r0, [r6, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r5	@ <variable>.RawPacketArray.Tail, D.35918
	beq	.L384	@,
	add	lr, r6, #73728	@, pSmInstArray,
	add	r4, r6, #168	@ pRawPacketArray, pSmInstArray,
	add	r0, lr, #192	@,,
	bl	ResetStreamSegArray	@
	add	r3, r5, r5, asl #3	@, tmp164, D.35918, D.35918,
	add	r1, r6, r3, asl #3	@, tmp166, pSmInstArray, tmp164,
	ldr	ip, [r1, #172]	@ D.35925, <variable>.VirAddr
	ldmia	ip, {r2, r3}	@ phole ldm
	sub	r0, r2, #32	@ tmp170, D.35926,
	cmp	r0, #1888	@ tmp170,
	movls	r0, #0	@, tmp172
	movhi	r0, #1	@, tmp172
	cmp	r3, #31	@ h,
	orrle	r0, r0, #1	@,, tmp175, tmp172
	cmp	r0, #0	@ tmp175,
	bne	.L392	@,
	cmp	r3, #1088	@ h,
	bgt	.L392	@,
	ldr	r1, [r1, #176]	@ prephitmp.2227, <variable>.Length
	cmp	r1, #1552	@ prephitmp.2227,
	blt	.L389	@,
	movw	r0, #:lower16:3133456	@ tmp198,
	movt	r0, #:upper16:3133456	@ tmp198,
	cmp	r1, r0	@ prephitmp.2227, tmp198
	bgt	.L389	@,
	mov	r8, #3	@ tmp200,
	movw	r0, #:lower16:166108	@ tmp202,
	mul	r8, r8, r2	@ tmp199, tmp200, D.35926
	movt	r0, #:upper16:166108	@ tmp202,
	ldr	lr, [r6, r0]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	lr, lr, #262144	@ tmp203, <variable>.StreamSegArray.SegBufSize,
	mul	r0, r3, r8	@ tmp201, h, tmp199
	mov	r0, r0, asr #1	@ D.35943, tmp201,
	cmp	r0, lr	@ D.35943, tmp203
	bgt	.L389	@,
	add	lr, r0, #16	@ tmp205, D.35943,
	cmp	r1, lr	@ prephitmp.2227, tmp205
	blt	.L389	@,
	ldr	lr, [ip, #8]	@ D.35952,
	movw	r8, #1916	@ tmp210,
	ldr	r0, [ip, #12]	@ disp_h,
	sub	sl, lr, #4	@ tmp208, D.35952,
	cmp	sl, r8	@ tmp208, tmp210
	movls	r8, #0	@, tmp211
	movhi	r8, #1	@, tmp211
	cmp	r0, #3	@ disp_h,
	orrle	r8, r8, #1	@,, tmp214, tmp211
	cmp	r8, #0	@ tmp214,
	bne	.L389	@,
	cmp	r0, #1088	@ disp_h,
	ble	.L390	@,
.L389:
	mov	r0, r4	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.35911,
	b	.L383	@
.L384:
	mvn	r0, #3	@ D.35911,
	b	.L383	@
.L392:
	ldr	r1, [r1, #176]	@ prephitmp.2227, <variable>.Length
	b	.L389	@
.L390:
	mov	r1, #72	@ tmp218,
	str	r0, [sp, #8]	@ disp_h,
	mla	r5, r1, r5, r6	@ tmp219, tmp218, D.35918, pSmInstArray
	stmia	sp, {r2, lr}	@ phole stm
	mov	r0, r7	@, SmID
	add	r1, ip, #16	@, D.35925,
	ldrd	r6, [r5, #184]	@, tmp219,
	strd	r6, [sp, #16]	@,,
	bl	DNR_PutYuv	@
	subs	r6, r0, #0	@ Ret,
	bne	.L384	@,
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	mov	r0, r6	@ D.35911, Ret
	b	.L383	@
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r0, r0, #0	@ tmp151, SmID,
	movne	r0, #1	@ tmp151
	cmp	r1, #0	@ pSmCfg,
	orreq	r0, r0, #1	@,, tmp154, tmp151
	cmp	r0, #0	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pSmCfg, pSmCfg
	beq	.L408	@,
.L395:
	mvn	r0, #0	@ D.35624,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L408:
	movw	r6, #:lower16:.LANCHOR0	@ tmp216,
	movt	r6, #:upper16:.LANCHOR0	@ tmp216,
	ldr	r5, [r6, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L395	@,
	ldr	r3, [r1, #12]	@ D.35629, <variable>.BufPhyAddr
	ldr	r2, [r5, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r2, r3	@ <variable>.Config.BufPhyAddr, D.35629
	addeq	r7, r5, #48	@ tmp214, pSmInstArray,
	bne	.L409	@,
.L396:
	mov	r1, r4	@, pSmCfg
	mov	r0, r7	@, tmp214
	mov	r2, #120	@,
	bl	memcpy	@
	movw	r0, #:lower16:180124	@ tmp208,
	movt	r0, #:upper16:180124	@ tmp208,
	mov	r1, #2	@ tmp209,
	str	r1, [r5, r0]	@ tmp209, <variable>.UpMsgStepNum
	ldr	ip, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	ip, #2	@ <variable>.VidStd,
	moveq	ip, #3	@ tmp212,
	streq	ip, [r5, r0]	@ tmp212, <variable>.UpMsgStepNum
	mov	r0, #0	@ D.35624,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L409:
	cmp	r3, #0	@ D.35629,
	beq	.L395	@,
	ldr	r3, [r1, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r3, #0	@ <variable>.pBufVirAddr,
	beq	.L395	@,
	ldr	lr, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r1, #:lower16:166152	@ tmp158,
	movt	r1, #:upper16:166152	@ tmp158,
	movw	r2, #:lower16:166156	@ tmp161,
	movt	r2, #:upper16:166156	@ tmp161,
	movw	r3, #:lower16:166160	@ tmp164,
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r3, #:upper16:166160	@ tmp164,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r7, #:lower16:166164	@ tmp167,
	movt	r7, #:upper16:166164	@ tmp167,
	movw	lr, #:lower16:166168	@ tmp170,
	movt	lr, #:upper16:166168	@ tmp170,
	movw	r1, #:lower16:166172	@ tmp173,
	str	ip, [r5, r2]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r1, #:upper16:166172	@ tmp173,
	ldr	r8, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	ip, #:lower16:166176	@ tmp176,
	movt	ip, #:upper16:166176	@ tmp176,
	movw	r2, #:lower16:166240	@ tmp181,
	movt	r2, #:upper16:166240	@ tmp181,
	str	r8, [r5, r3]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movw	r3, #:lower16:166148	@ tmp183,
	ldr	r8, [r6, #20]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movt	r3, #:upper16:166148	@ tmp183,
	str	r8, [r5, r7]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	mov	r7, #1152	@ tmp177,
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [r5, lr]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r7, [r5, ip]	@ tmp177, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2264, <variable>.BufPhyAddr
	ldr	r7, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	r1, r8, #3	@ tmp179, temp.2264,
	ldr	lr, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r7, #6	@ <variable>.VidStd,
	bic	ip, r1, #3	@ TmpPhyAddr, tmp179,
	rsb	r8, r8, ip	@ ByteOffsetInWord, temp.2264, TmpPhyAddr
	moveq	r7, #1048576	@ prephitmp.2252,
	movne	r7, #131072	@ prephitmp.2252,
	add	r1, r7, ip	@ tmp182, prephitmp.2252, TmpPhyAddr
	add	ip, r8, lr	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	str	r1, [r5, r2]	@ tmp182, <variable>.BufAddrCfg.SegBufPhyAddr
	add	lr, ip, r7	@ tmp184, pTmpVirAddr, prephitmp.2252
	str	lr, [r5, r3]	@ tmp184, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r2, r8, r1	@ D.35657, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.35657
	bge	.L400	@,
	movw	ip, #:lower16:-1024	@ tmp186,
	movw	r2, #:lower16:166244	@ tmp188,
	movt	ip, #:upper16:-1024	@ tmp186,
	movt	r2, #:upper16:166244	@ tmp188,
	rsb	r3, r7, ip	@ tmp186, prephitmp.2252, tmp186
	add	r3, r3, r0	@ prephitmp.2253, tmp186, SmMaxSegBufSize
	str	r3, [r5, r2]	@ prephitmp.2253, <variable>.BufAddrCfg.SegBufSize
.L401:
	movw	r2, #:lower16:166240	@ tmp194,
	movw	lr, #:lower16:166148	@ tmp195,
	movt	r2, #:upper16:166240	@ tmp194,
	movt	lr, #:upper16:166148	@ tmp195,
	add	r7, r5, #73728	@, pSmInstArray,
	ldr	r1, [r5, r2]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	add	r0, r7, #192	@,,
	ldr	r2, [r5, lr]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	add	r7, r5, #48	@ tmp214, pSmInstArray,
	bl	ConfigStreamSegArray	@
	ldr	r3, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	mov	r0, r7	@, tmp214
	mov	r1, r4	@, pSmCfg
	mov	r2, #120	@,
	str	r3, [r6, #144]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
	b	.L396	@
.L400:
	sub	r1, r2, #1024	@ tmp189, D.35657,
	movw	r0, #:lower16:166244	@ tmp190,
	rsb	r3, r7, r1	@ prephitmp.2253, prephitmp.2252, tmp189
	movt	r0, #:upper16:166244	@ tmp190,
	cmp	r3, #262144	@ prephitmp.2253,
	str	r3, [r5, r0]	@ prephitmp.2253, <variable>.BufAddrCfg.SegBufSize
	bge	.L401	@,
	b	.L395	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #120
	sub	sp, sp, #120	@,,
	beq	.L422	@,
.L411:
	mvn	r0, #0	@ D.35493,
.L417:
	add	sp, sp, #120	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L422:
	movw	r5, #:lower16:.LANCHOR0	@ tmp181,
	movt	r5, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r4, [r5, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L411	@,
	ldr	r1, [r4, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r3, r1, #1	@ tmp143, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ tmp143,
	bls	.L423	@,
.L412:
	mov	r7, #0	@ tmp146,
	mvn	r0, #0	@ tmp147,
	add	r1, r4, #48	@, pSmInstArray,
	str	r0, [r4, #80]	@ tmp147, <variable>.Config.LastRawDisContinueCount
	mov	r2, #120	@,
	str	r7, [r4, #84]	@ tmp146, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, sp	@,
	bl	memcpy	@
	ldr	r1, [r5, #116]	@ D.37839, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:166252	@ tmp152,
	movt	r3, #:upper16:166252	@ tmp152,
	cmp	r1, r7	@ D.37839,
	movw	r2, #:lower16:.LANCHOR0	@ tmp153,
	ldr	r8, [r4, r3]	@ TmpMode, <variable>.Mode
	movt	r2, #:upper16:.LANCHOR0	@ tmp153,
	beq	.L413	@,
	ldr	r5, [r1, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r5, r7	@ <variable>.Mode,
	beq	.L413	@,
	str	r7, [r1, r3]	@ tmp146, <variable>.Mode
	ldr	r6, [r2, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r6, r7	@ s_SmIIS.SCDState,
	bne	.L414	@,
.L413:
	movw	ip, #:lower16:73900	@ tmp160,
	movw	r1, #:lower16:73896	@ tmp161,
	movt	ip, #:upper16:73900	@ tmp160,
	movt	r1, #:upper16:73896	@ tmp161,
	add	r0, r4, #168	@, pSmInstArray,
	sub	r8, r8, #1	@ tmp175, TmpMode,
	ldr	lr, [r4, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	r5, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	r1, lr, r5	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r5, #:lower16:166248	@ tmp165,
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	movt	r5, #:upper16:166248	@ tmp165,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	bl	DeleteRawPacketInBuffer	@
	ldrb	r6, [r4, r5]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.InstID
	mov	r0, r4	@, pSmInstArray
	movw	r1, #:lower16:180128	@,
	movt	r1, #:upper16:180128	@,
	bl	__memzero	@
	movw	r0, #:lower16:180088	@ tmp170,
	movw	r3, #:lower16:180124	@ tmp172,
	movt	r0, #:upper16:180088	@ tmp170,
	movt	r3, #:upper16:180124	@ tmp172,
	mov	r2, #2	@ tmp173,
	sxtb	r7, r6	@ s8TmpInstID, s8TmpInstID
	mov	r1, sp	@,
	str	r7, [r4, r5]	@ s8TmpInstID, <variable>.InstID
	mvn	r6, #0	@ tmp171,
	str	r2, [r4, r3]	@ tmp173, <variable>.UpMsgStepNum
	mvn	r7, #0	@,
	strd	r6, [r4, r0]	@ tmp171, pSmInstArray, tmp170
	mov	r0, #0	@,
	bl	SM_Config	@
	cmp	r8, #1	@ tmp175,
	movw	ip, #:lower16:166252	@ tmp176,
	movt	ip, #:upper16:166252	@ tmp176,
	mov	r0, #0	@ D.35493,
	movls	r2, #1	@ tmp177,
	strhi	r0, [r4, ip]	@ tmp179, <variable>.Mode
	strls	r2, [r4, ip]	@ tmp177, <variable>.Mode
	b	.L417	@
.L414:
	add	r7, r7, #2	@ i, i,
	cmp	r7, #50	@ i,
	beq	.L413	@,
	add	r7, r7, #2	@ i, i,
	cmp	r7, #50	@ i,
	bne	.L414	@,
	b	.L413	@
.L423:
	add	r1, r4, #96	@, pSmInstArray,
	bl	ReleaseRawStreamData	@
	b	.L412	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pStreamSegArray,
	cmpne	r1, #0	@, pStreamSeg,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	mvneq	r0, #0	@ Ret,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r2, #:lower16:92168	@ tmp150,
	movw	r3, #:lower16:92172	@ tmp151,
	movt	r2, #:upper16:92168	@ tmp150,
	movt	r3, #:upper16:92172	@ tmp151,
	ldr	r6, [r4, r2]	@ i, <variable>.Head
	ldr	ip, [r4, r3]	@ D.35338, <variable>.Tail
	cmp	r6, ip	@ i, D.35338
	beq	.L427	@,
	mov	r3, r6, asl #2	@ tmp222, i,
	add	r2, r3, r6	@ tmp154, tmp222, i
	add	r2, r4, r2, asl #4	@, tmp158, pStreamSegArray, tmp154,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp223,
	movtne	r0, #:upper16:954437177	@ tmp223,
	bne	.L432	@,
	b	.L428	@
.L430:
	add	r2, r4, r2, asl #4	@, tmp168, pStreamSegArray, tmp164,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L428	@,
.L432:
	add	r6, r6, #1	@ D.35347, i,
	smull	r3, r2, r0, r6	@, tmp212, tmp223, D.35347
	mov	r3, r6, asr #31	@ tmp215, D.35347,
	rsb	r3, r3, r2, asr #8	@, i, tmp215, tmp212,
	add	r3, r3, r3, asl #3	@, tmp218, i, i,
	sub	r6, r6, r3, asl #7	@ i, D.35347, tmp218,
	cmp	r6, ip	@ i, D.35338
	mov	r3, r6, asl #2	@ tmp222, i,
	add	r2, r3, r6	@ tmp164, tmp222, i
	bne	.L430	@,
.L427:
	mvn	r0, #2	@ Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L428:
	add	r6, r3, r6	@ tmp174, tmp222, i
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
	rsb	ip, ip, r5	@ D.35354, <variable>.LenInByte, <variable>.SegFreshSize
	sub	r1, r1, #1	@ D.35356, <variable>.SegFreshNum,
	bic	ip, ip, ip, asr #31	@ tmp209, D.35354
	str	ip, [r4, r2]	@ tmp209, <variable>.SegFreshSize
	bic	ip, r1, r1, asr #31	@ tmp211, D.35356
	str	ip, [r4, r3]	@ tmp211, <variable>.SegFreshNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
.LFB1622:
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
	movw	r0, #:lower16:92168	@ tmp159,
	ldr	r1, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movt	r0, #:upper16:92168	@ tmp159,
	movt	r7, #:upper16:954437177	@ tmp151,
	add	r3, r1, #1	@ tmp147, <variable>.Tail,
	ldr	r1, [r4, r0]	@ <variable>.Head, <variable>.Head
	smull	r0, ip, r7, r3	@, tmp150, tmp151, tmp147
	mov	r0, r3, asr #31	@ tmp153, tmp147,
	rsb	r0, r0, ip, asr #8	@, tmp149, tmp153, tmp150,
	add	r0, r0, r0, asl #3	@, tmp156, tmp149, tmp149,
	sub	r3, r3, r0, asl #7	@ tmp158, tmp147, tmp156,
	cmp	r3, r1	@ tmp158, <variable>.Head
	mvneq	r0, #3	@ Ret,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	mov	r1, r2	@, InstID
	ldr	r0, [r5, #0]	@, <variable>.VirAddr
	bl	CheckStream	@
	ldr	fp, [r4, r6]	@ D.35305, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	r9, fp, fp, asl #2	@, tmp165, D.35305, D.35305,
	add	ip, r4, r9, asl #4	@, tmp168, pStreamSegArray, tmp165,
	add	sl, r4, r9, asl #4	@, tmp192, pStreamSegArray, tmp165,
	add	r0, ip, #8	@, tmp168,
	mov	r9, #1	@ tmp185,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	movw	ip, #:lower16:92196	@ tmp209,
	movw	r1, #:lower16:92200	@ tmp213,
	movt	ip, #:upper16:92196	@ tmp209,
	movt	r1, #:upper16:92200	@ tmp213,
	add	r2, r3, r3, asl #2	@, tmp178, <variable>.Tail, <variable>.Tail,
	movw	r3, #:lower16:92204	@ tmp218,
	movt	r3, #:upper16:92204	@ tmp218,
	add	r0, r4, r2, asl #4	@, tmp182, pStreamSegArray, tmp178,
	movw	r2, #:lower16:92208	@ tmp223,
	movt	r2, #:upper16:92208	@ tmp223,
	strb	r9, [r0, #12]	@ tmp185, <variable>.SegState
	mov	r0, r8	@ Ret, tmp145
	ldr	fp, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	str	fp, [sl, #24]	@ <variable>.Tail, <variable>.StreamID
	ldr	r8, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	ldr	fp, [r4, r1]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	add	r8, r8, r9	@ tmp197, <variable>.Tail,
	ldr	r9, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	smull	sl, r7, r7, r8	@, tmp199, tmp151, tmp197
	mov	sl, r8, asr #31	@ tmp202, tmp197,
	add	r9, r9, #1	@ tmp226, <variable>.SegFreshNum,
	rsb	r7, sl, r7, asr #8	@, tmp203, tmp202, tmp199,
	add	r7, r7, r7, asl #3	@, tmp206, tmp203, tmp203,
	sub	r7, r8, r7, asl #7	@ tmp208, tmp197, tmp206,
	str	r7, [r4, r6]	@ tmp208, <variable>.Tail
	ldr	r7, [r5, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r6, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r6, r7, r6	@ tmp212, <variable>.PhyAddr, <variable>.LenInByte
	str	r6, [r4, ip]	@ tmp212, <variable>.SegBufWriteAddr
	ldr	ip, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	fp, fp, ip	@ tmp217, <variable>.SegTotalSize, <variable>.LenInByte
	ldr	ip, [r4, r3]	@, <variable>.SegFreshSize
	str	fp, [r4, r1]	@ tmp217, <variable>.SegTotalSize
	ldr	r1, [r5, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	str	r9, [r4, r2]	@ tmp226, <variable>.SegFreshNum
	add	r2, ip, r1	@ tmp222,, <variable>.LenInByte
	str	r2, [r4, r3]	@ tmp222, <variable>.SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.global	__aeabi_uidiv
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsb	r3, [r0, #5]	@ <variable>.IsWaitSCD, <variable>.IsWaitSCD
	mov	r5, #0	@ tmp186,
	.pad #300
	sub	sp, sp, #300	@,,
	cmp	r3, r5	@ <variable>.IsWaitSCD,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r5, [sp, #288]	@ tmp186, SegBufAddr
	str	r5, [sp, #284]	@ tmp186, SegBufLength
	beq	.L441	@,
	movw	r6, #:lower16:166144	@ tmp189,
	movt	r6, #:upper16:166144	@ tmp189,
	ldr	r0, [r0, r6]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	moveq	r0, #2	@ tmp192,
	mvneq	r5, #6	@ Ret,
	streq	r0, [r4, r6]	@ tmp192, <variable>.SmPushRaw.PushRawOver
	beq	.L443	@,
	add	r7, sp, #168	@ tmp441,,
	movw	r0, #:lower16:269731872	@,
	add	r8, sp, #88	@ tmp435,,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	add	sl, sp, #248	@ tmp198,,
	mov	r3, #2	@ tmp195,
	mov	r0, r7	@, tmp441
	str	r3, [r4, r6]	@ tmp195, <variable>.SmPushRaw.PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r8	@, tmp435
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, sl	@, tmp198
	bl	__memzero	@
	movw	ip, #:lower16:180124	@ tmp201,
	movt	ip, #:upper16:180124	@ tmp201,
	str	r5, [sp, #276]	@ tmp186, TmpAddr
	str	r5, [sp, #280]	@ tmp186, SegFreeBufLen
	mov	r0, sl	@, tmp198
	ldr	r2, [r4, ip]	@, <variable>.UpMsgStepNum
	str	r2, [sp, #20]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	r1, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r1, #0	@ SmStateReg.ScdRollAddr,
	bne	.L492	@,
.L441:
	mvn	r5, #6	@ Ret,
.L443:
	mov	r0, r5	@, Ret
	add	sp, sp, #300	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L492:
	add	r6, r4, #73728	@ pStreamSegArray, pScdInstance,
	ldr	r5, [sp, #260]	@, SmStateReg.ScdNum
	add	r6, r6, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r6, #0	@ pStreamSegArray,
	str	r5, [sp, #32]	@, %sfp
	str	r5, [sp, #292]	@, ScdSegNum
	beq	.L481	@,
	movw	r0, #:lower16:166104	@ tmp205,
	movw	lr, #:lower16:166108	@ tmp208,
	movt	r0, #:upper16:166104	@ tmp205,
	movt	lr, #:upper16:166108	@ tmp208,
	ldr	sl, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, lr]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	sl, [sp, #288]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r5, [sp, #284]	@ <variable>.StreamSegArray.SegBufSize,
.L481:
	movw	r0, #:lower16:269731872	@,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	movw	sl, #:lower16:166168	@ tmp212,
	movw	r3, #:lower16:166104	@ tmp216,
	movt	sl, #:upper16:166168	@ tmp212,
	movt	r3, #:upper16:166104	@ tmp216,
	movw	r5, #:lower16:73920	@ tmp215,
	movt	r5, #:upper16:73920	@ tmp215,
	ldr	r2, [sp, #284]	@ SegBufLength, SegBufLength
	ldr	r1, [r4, sl]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	ip, [r4, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	sl, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r3, [sp, #288]	@ SegBufAddr, SegBufAddr
	ldr	lr, [r4, r5]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, r3	@ tmp217, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	ldr	r5, [sp, #292]	@ ScdSegNum, ScdSegNum
	add	ip, lr, ip	@ tmp221, <variable>.StreamSegArray.pSegBufVirAddr, tmp217
	str	r1, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	str	ip, [r4, #8]	@ tmp221, <variable>.SegFilter.pSegBufVirAddr
	cmp	r5, #1152	@ ScdSegNum,
	movge	r5, #1152	@ D.36680,
	str	r2, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	str	r3, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	str	sl, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	and	r1, r0, #15	@ tmp211,,
	movw	r0, #:lower16:269731852	@,
	str	r1, [r4, #16]	@ tmp211, <variable>.SegFilter.ProtocolType
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.36680,
	bhi	.L493	@,
	ldr	r0, [sp, #292]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ iftmp.582,
.L446:
	add	r2, r4, #165888	@ D.36691, pScdInstance,
	add	r1, r4, #8	@, pScdInstance,
	str	r1, [sp, #60]	@, %sfp
	add	sl, r2, #368	@ D.36691, D.36691,
	str	r0, [r4, #40]	@ iftmp.582, <variable>.SegFilter.SegNum
	add	r2, sp, #272	@,,
	ldr	lr, [sp, #20]	@, %sfp
	mov	r1, sl	@, D.36691
	ldr	r0, [sp, #60]	@, %sfp
	add	r3, sp, #292	@,,
	str	lr, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	subs	r5, r0, #0	@ Ret,
	bne	.L441	@,
	ldr	r9, [sp, #292]	@ ScdSegNum.2402, ScdSegNum
	add	r0, r4, #168	@, pScdInstance,
	str	r0, [sp, #64]	@, %sfp
	cmp	r9, #1	@ ScdSegNum.2402,
	ble	.L494	@,
	strb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r9, r0	@ ScdSegNum.2402,
	bcs	.L453	@,
	ldr	r9, [sp, #292]	@ ScdSegNum, ScdSegNum
	sub	r3, r9, #1	@ prephitmp.2378, ScdSegNum,
	str	r3, [sp, #292]	@ prephitmp.2378, ScdSegNum
.L454:
	ldr	ip, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	ip, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L455	@,
	ldr	sl, [sp, #292]	@, ScdSegNum
	str	sl, [sp, #76]	@, %sfp
.L456:
	movw	lr, #:lower16:166092	@ tmp275,
	movt	lr, #:upper16:166092	@ tmp275,
	add	r2, r4, #179200	@, pScdInstance,
	movw	sl, #:lower16:73920	@,
	add	r3, r2, #888	@,,
	movt	sl, #:upper16:73920	@,
	str	r3, [sp, #56]	@, %sfp
	movw	ip, #:lower16:166104	@,
	str	sl, [sp, #40]	@, %sfp
	movt	ip, #:upper16:166104	@,
	movw	r9, #:lower16:166088	@,
	str	ip, [sp, #44]	@, %sfp
	movt	r9, #:upper16:166088	@,
	movw	r0, #:lower16:954437177	@,
	str	r9, [sp, #68]	@, %sfp
	movt	r0, #:upper16:954437177	@,
	movw	r2, #:lower16:166248	@,
	str	r0, [sp, #72]	@, %sfp
	movt	r2, #:upper16:166248	@,
	str	r2, [sp, #52]	@, %sfp
	ldr	r3, [r4, lr]	@, <variable>.StreamSegArray.Tail
	mov	r1, #0	@ ivtmp.2397,
	mov	r9, r1	@ i, ivtmp.2397
	str	r6, [sp, #36]	@ pStreamSegArray, %sfp
	str	r5, [sp, #48]	@ Ret, %sfp
	str	r3, [sp, #80]	@, %sfp
	ldr	r3, [sp, #76]	@ prephitmp.2421, %sfp
	b	.L457	@
.L497:
	ldr	lr, [sp, #96]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	lr, #0	@ LastSegPacket.PhyAddr,
	bne	.L495	@,
	ldr	r2, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r2, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L496	@,
.L467:
	ldr	r0, [sp, #44]	@, %sfp
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	lr, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r1, sp, #276	@,,
	rsb	sl, r2, ip	@ tmp309, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #36]	@, %sfp
	add	r2, sp, #280	@,,
	add	r3, lr, sl	@ tmp312, <variable>.StreamSegArray.pSegBufVirAddr, tmp309
	str	ip, [sp, #176]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	mov	sl, #1	@ tmp305,
	str	r5, [sp, #180]	@ SegPacketLen, SegPacket.LenInByte
	str	r3, [sp, #168]	@ tmp312, SegPacket.VirAddr
	strb	sl, [sp, #173]	@ tmp305, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	ip, [sp, #176]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #280]	@ SegFreeBufLen.2416, SegFreeBufLen
	cmp	ip, #0	@ SegPacket.PhyAddr,
	beq	.L489	@,
	ldr	ip, [sp, #168]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	ip, #0	@ SegPacket.VirAddr,
	beq	.L489	@,
	ldr	r3, [sp, #180]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, SegFreeBufLen.2416
	bhi	.L489	@,
	ldr	r2, [sp, #24]	@, %sfp
	mov	r3, r7	@, tmp441
	ldr	r0, [sp, #64]	@, %sfp
	add	r1, r2, #92	@ tmp321,,
	ldr	r2, [sp, #56]	@, %sfp
	ldr	lr, [r4, r1, asl #2]	@ tmp324, <variable>.TransFormSeg
	bic	r1, lr, #-2147483648	@, tmp324,
	bl	GetSegPts	@
	ldr	sl, [sp, #52]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r7	@, tmp441
	ldr	r2, [r4, sl]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L490	@,
.L466:
	ldr	r3, [sp, #292]	@ prephitmp.2421, ScdSegNum
	mov	r1, fp	@ ivtmp.2397, ivtmp.2456
	ldr	r9, [sp, #28]	@ i, %sfp
.L457:
	cmp	r9, r3	@ i, prephitmp.2421
	bge	.L490	@,
	ldr	sl, [sp, #20]	@, %sfp
	add	r0, r9, #1	@, i,
	add	fp, r1, sl	@ ivtmp.2456, ivtmp.2397,
	add	sl, r1, #1	@ D.36757, ivtmp.2397,
	add	r3, fp, #41472	@ tmp279, ivtmp.2456,
	add	r6, sl, #41472	@, D.36757,
	add	r2, r3, #92	@ tmp279, tmp279,
	str	r6, [sp, #24]	@, %sfp
	add	ip, r6, #92	@ tmp281,,
	ldr	r3, [sp, #288]	@ prephitmp.2383, SegBufAddr
	ldr	r6, [r4, r2, asl #2]	@ NextSegPhyAddr, <variable>.TransFormSeg
	add	r1, r1, #41472	@ tmp277, ivtmp.2397,
	add	r1, r1, #92	@ tmp277, tmp277,
	ldr	r2, [r4, ip, asl #2]	@ tmp284, <variable>.TransFormSeg
	cmp	r3, r6	@ prephitmp.2383, NextSegPhyAddr
	str	r0, [sp, #28]	@, %sfp
	ldr	ip, [r4, r1, asl #2]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldreq	r5, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r1, r2, lsr #31	@ tmp283, tmp284,
	rsbne	r5, ip, r6	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	strb	r1, [sp, #175]	@ tmp283, SegPacket.DspCheckPicOverFlag
	rsbeq	r5, ip, r5	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r5, #3	@ SegPacketLen,
	bgt	.L497	@,
	sub	r0, r5, #1	@ tmp330, SegPacketLen,
	cmp	r0, #2	@ tmp330,
	bhi	.L471	@,
	ldr	r3, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r3, #2	@ <variable>.SegFilter.ProtocolType,
	bne	.L466	@,
	mov	r0, r6	@, NextSegPhyAddr
	str	ip, [sp, #16]	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36811
	beq	.L441	@,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp333,* D.36811
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ tmp332,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp336,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp339,
	orr	r3, lr, ip, asl #24	@, tmp335, tmp332, tmp333,
	orr	r2, r3, r1, asl #16	@, tmp338, tmp335, tmp336,
	orr	lr, r2, r0, asl #8	@, tmp341, tmp338, tmp339,
	bic	ip, lr, #255	@ tmp342, tmp341,
	cmp	ip, #256	@ tmp342,
	beq	.L466	@,
	mov	r2, r9	@, i
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, r8	@, tmp435
	ldr	r0, [sp, #60]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r2, [sp, #44]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	ldr	ip, [sp, #16]	@,
	ldr	r1, [r4, r2]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r2, sp, #280	@,,
	ldr	lr, [r4, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, r1, ip	@ tmp348, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, sp, #276	@,,
	add	r9, lr, r3	@ tmp351, <variable>.StreamSegArray.pSegBufVirAddr, tmp348
	str	r5, [sp, #100]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	r3, #1	@ tmp344,
	str	r9, [sp, #88]	@ tmp351, LastSegPacket.VirAddr
	strb	r3, [sp, #93]	@ tmp344, LastSegPacket.IsLastSeg
	str	ip, [sp, #96]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	add	r2, sl, #41472	@ tmp354, D.36757,
	ldr	r0, [sp, #64]	@, %sfp
	add	sl, r2, #92	@ tmp354, tmp354,
	mov	r3, r8	@, tmp435
	ldr	r2, [sp, #56]	@, %sfp
	ldr	r9, [r4, sl, asl #2]	@ tmp357, <variable>.TransFormSeg
	bic	r1, r9, #-2147483648	@, tmp357,
	bl	GetSegPts	@
	b	.L466	@
.L489:
	movw	r3, #:lower16:166092	@ tmp320,
	movt	r3, #:upper16:166092	@ tmp320,
	ldr	r5, [sp, #48]	@ Ret, %sfp
	ldr	r2, [r4, r3]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
.L463:
	ldr	ip, [sp, #80]	@, %sfp
	cmp	ip, r2	@, prephitmp.2381
	movne	r3, #1	@ tmp416,
	moveq	r3, #0	@ tmp418,
	cmp	r9, #0	@ i,
	strb	r3, [r4, #3]	@ tmp418, <variable>.InsertNewSegFlag
	bgt	.L498	@,
	ldr	r2, [sp, #76]	@, %sfp
	ldr	r3, [sp, #32]	@, %sfp
	rsbs	r0, r2, #1	@ tmp431,
	movcc	r0, #0	@ tmp431
	cmp	r3, #1152	@,
	movls	r0, #0	@, tmp431,
	cmp	r0, #0	@ tmp431,
	bne	.L499	@,
.L480:
	cmp	sl, #1	@ ScdErrFlag,
	bne	.L443	@,
	b	.L441	@
.L471:
	cmp	r5, #0	@ SegPacketLen,
	beq	.L466	@,
	ldr	r5, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r5, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L500	@,
.L472:
	ldr	r0, [sp, #44]	@, %sfp
	rsb	r5, r3, r6	@ tmp369, prephitmp.2383, NextSegPhyAddr
	ldr	r2, [sp, #40]	@, %sfp
	ldr	r1, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	lr, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	sl, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, ip, r1	@ tmp370, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	rsb	lr, lr, ip	@ tmp365, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	add	r2, sp, #280	@,,
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, sp, #276	@,,
	add	lr, sl, lr	@ tmp368, <variable>.StreamSegArray.pSegBufVirAddr, tmp365
	add	r3, r5, r3	@ tmp372, tmp369, tmp370
	str	lr, [sp, #168]	@ tmp368, SegPacket.VirAddr
	mov	sl, #0	@,
	str	r3, [sp, #180]	@ tmp372, SegPacket.LenInByte
	strb	sl, [sp, #173]	@, SegPacket.IsLastSeg
	str	ip, [sp, #176]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r2, [sp, #180]	@ D.36846, SegPacket.LenInByte
	cmp	r2, #3	@ D.36846,
	bls	.L466	@,
	ldr	sl, [sp, #68]	@, %sfp
	movw	r5, #:lower16:166092	@,
	movt	r5, #:upper16:166092	@,
	ldr	ip, [sp, #280]	@, SegFreeBufLen
	ldr	r0, [r4, r5]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
	ldr	r3, [r4, sl]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	mov	sl, r5	@ tmp375,
	add	r1, r0, #1152	@ tmp376, prephitmp.2381,
	str	ip, [sp, #84]	@, %sfp
	rsb	r1, r3, r1	@ tmp378, <variable>.StreamSegArray.Head, tmp376
	ldr	r3, [sp, #72]	@, %sfp
	ldr	r5, [sp, #176]	@ D.37894, SegPacket.PhyAddr
	smull	r3, ip, r3, r1	@, tmp381,, tmp378
	mov	r3, r1, asr #31	@ tmp384, tmp378,
	cmp	r5, #0	@ D.37894,
	rsb	r3, r3, ip, asr #8	@, tmp380, tmp384, tmp381,
	add	ip, r3, r3, asl #3	@, tmp387, tmp380, tmp380,
	sub	r3, r1, ip, asl #7	@ tmp389, tmp378, tmp387,
	rsb	r1, r3, #1152	@ StreamNum, tmp389,
	bne	.L501	@,
.L473:
	cmp	r1, #1	@ StreamNum,
	mov	r2, r0	@ prephitmp.2381, prephitmp.2381
	ldr	r5, [sp, #48]	@ Ret, %sfp
	movgt	sl, #1	@ ScdErrFlag,
	bgt	.L463	@,
.L474:
	mov	sl, #0	@ ScdErrFlag,
	b	.L463	@
.L495:
	ldr	r3, [sp, #100]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #280	@,,
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, sp, #276	@,,
	add	ip, r3, r5	@ tmp289, LastSegPacket.LenInByte, SegPacketLen
	str	ip, [sp, #100]	@ tmp289, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r5, [sp, #96]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #280]	@ SegFreeBufLen.593, SegFreeBufLen
	cmp	r5, #0	@ LastSegPacket.PhyAddr,
	beq	.L491	@,
	ldr	r0, [sp, #88]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r0, #0	@ LastSegPacket.VirAddr,
	beq	.L491	@,
	ldr	r1, [sp, #100]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r1, r2	@ LastSegPacket.LenInByte, SegFreeBufLen.593
	bhi	.L491	@,
	ldr	sl, [sp, #52]	@, %sfp
	mov	r1, r8	@, tmp435
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r2, [r4, sl]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r5, r0	@ Ret.2410,
	mov	r0, r8	@, tmp435
	bl	__memzero	@
	cmp	r5, #0	@ Ret.2410,
	beq	.L466	@,
.L490:
	movw	r3, #:lower16:166092	@ tmp415,
	movt	r3, #:upper16:166092	@ tmp415,
	ldr	r5, [sp, #48]	@ Ret, %sfp
	mov	sl, #0	@ ScdErrFlag,
	ldr	r2, [r4, r3]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
	b	.L463	@
.L491:
	movw	r3, #:lower16:166092	@ tmp297,
	movt	r3, #:upper16:166092	@ tmp297,
	ldr	r5, [sp, #48]	@ Ret, %sfp
	mov	sl, #1	@ ScdErrFlag,
	ldr	r2, [r4, r3]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
	b	.L463	@
.L496:
	ldr	r0, [sp, #60]	@, %sfp
	mov	r1, r7	@, tmp441
	mov	r2, r9	@, i
	ldr	r3, [sp, #20]	@, %sfp
	str	ip, [sp, #16]	@,
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #16]	@,
	b	.L467	@
.L493:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L446	@
.L501:
	ldr	r3, [sp, #168]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L473	@,
	ldr	ip, [sp, #84]	@, %sfp
	cmp	r2, ip	@ D.36846,
	bhi	.L473	@,
	cmp	r1, #1	@ StreamNum,
	ble	.L487	@,
	ldr	r2, [sp, #24]	@, %sfp
	mov	r3, r7	@, tmp441
	ldr	ip, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	r0, r2, #92	@ tmp393,,
	ldr	r2, [sp, #56]	@, %sfp
	rsb	r1, r5, ip	@ tmp392, D.37894, SmStateReg.ScdRollAddr
	ldr	lr, [r4, r0, asl #2]	@ tmp396, <variable>.TransFormSeg
	ldr	r0, [sp, #64]	@, %sfp
	str	r1, [sp, #180]	@ tmp392, SegPacket.LenInByte
	bic	r1, lr, #-2147483648	@, tmp396,
	bl	GetSegPts	@
	ldr	r3, [sp, #52]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r7	@, tmp441
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	subs	r5, r0, #0	@ Ret.2442,
	bne	.L502	@,
	ldr	lr, [sp, #40]	@, %sfp
	ldr	r1, [sp, #44]	@, %sfp
	ldr	ip, [sp, #288]	@ SegBufAddr.2443, SegBufAddr
	ldr	r2, [r4, lr]	@, <variable>.StreamSegArray.pSegBufVirAddr
	ldr	lr, [sp, #52]	@, %sfp
	rsb	r6, ip, r6	@ tmp410, SegBufAddr.2443, NextSegPhyAddr
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r7	@, tmp441
	str	r2, [sp, #12]	@, %sfp
	ldr	r2, [r4, lr]	@, <variable>.InstID
	rsb	r3, r3, ip	@ tmp406, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.2443
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	add	r3, lr, r3	@ tmp409,, tmp406
	str	r6, [sp, #180]	@ tmp410, SegPacket.LenInByte
	str	r3, [sp, #168]	@ tmp409, SegPacket.VirAddr
	mov	r3, #1	@ tmp402,
	str	ip, [sp, #176]	@ SegBufAddr.2443, SegPacket.PhyAddr
	strb	r3, [sp, #173]	@ tmp402, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L466	@,
	mov	r3, sl	@ tmp375, tmp375
	mov	sl, r5	@ Ret.2442, Ret.2442
	ldr	r2, [r4, r3]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
	ldr	r5, [sp, #48]	@ Ret, %sfp
	b	.L463	@
.L453:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	rsb	r0, r1, r0	@,,
	bl	__aeabi_uidiv	@
	sub	r3, r0, #1	@ prephitmp.2378,,
	str	r3, [sp, #292]	@ prephitmp.2378, ScdSegNum
	cmp	r3, #0	@ prephitmp.2378,
	strlt	r5, [sp, #292]	@ Ret, ScdSegNum
	movlt	r3, r5	@ prephitmp.2378, Ret
	b	.L454	@
.L499:
	ldr	r0, [sp, #64]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L480	@
.L500:
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, r7	@, tmp441
	ldr	r0, [sp, #60]	@, %sfp
	mov	r2, r9	@, i
	str	ip, [sp, #16]	@,
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #288]	@ prephitmp.2383, SegBufAddr
	ldr	ip, [sp, #16]	@,
	b	.L472	@
.L455:
	mov	r1, sl	@, D.36691
	mov	r0, r4	@, pScdInstance
	mov	r2, r6	@, pStreamSegArray
	bl	GetNextVop	@
	str	r0, [sp, #76]	@, %sfp
	str	r0, [sp, #292]	@, ScdSegNum
	b	.L456	@
.L498:
	ldr	r1, [sp, #20]	@, %sfp
	ldr	r0, [sp, #64]	@, %sfp
	mul	ip, r1, r9	@ tmp420,, i
	add	lr, ip, #41472	@ tmp421, tmp420,
	add	r3, lr, #93	@ tmp421, tmp421,
	ldr	r2, [r4, r3, asl #2]	@ tmp424, <variable>.TransFormSeg
	bic	r1, r2, #-2147483648	@, tmp424,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L480	@,
	b	.L441	@
.L494:
	movw	r2, #:lower16:180096	@ tmp239,
	movw	r3, #:lower16:180100	@ tmp240,
	movt	r2, #:upper16:180096	@ tmp239,
	movt	r3, #:upper16:180100	@ tmp240,
	ldr	lr, [r4, r2]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	ip, [r4, r3]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	lr, ip	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	strleb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movgt	ip, #1	@ tmp243,
	strgtb	ip, [r4, #0]	@ tmp243, <variable>.SegFullFlag
	cmp	r9, #0	@ ScdSegNum.2402,
	bne	.L450	@,
	movw	r5, #:lower16:166140	@ tmp247,
	movt	r5, #:upper16:166140	@ tmp247,
	ldr	r1, [r4, r5]	@ SrcEaten.2403, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten.2403,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten.2403,
	bgt	.L452	@,
.L451:
	mov	r1, #0	@ SrcEaten,
.L452:
	ldr	r0, [sp, #64]	@, %sfp
	bl	DeleteRawLen	@
	subs	r5, r0, #0	@ Ret,
	bne	.L441	@,
	b	.L443	@
.L450:
	cmp	r9, #1	@ ScdSegNum.2402,
	bne	.L451	@,
	movw	r0, #:lower16:166108	@ tmp250,
	movt	r0, #:upper16:166108	@ tmp250,
	mov	lr, #3	@ tmp253,
	movw	r1, #:lower16:166260	@ tmp248,
	ldr	r5, [r4, r0]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	movt	r1, #:upper16:166260	@ tmp248,
	movw	r2, #:lower16:166140	@ tmp249,
	movt	r2, #:upper16:166140	@ tmp249,
	ldr	r1, [r4, r1]	@ SrcEaten, <variable>.TransFormSeg
	mul	r3, lr, r5	@ tmp251, tmp253, <variable>.StreamSegArray.SegBufSize
	ldr	lr, [r4, r2]	@ SrcEaten.2404, <variable>.SmPushRaw.PushRawTotalLen
	rsb	r0, r1, lr	@ tmp258, SrcEaten, SrcEaten.2404
	cmp	r3, #0	@ tmp251,
	add	ip, r3, #3	@ tmp256, tmp251,
	movlt	r3, ip	@ tmp255, tmp256
	cmp	r0, r3, asr #2	@ tmp258, tmp255,
	movgt	r1, lr	@, SrcEaten, SrcEaten.2404
	b	.L452	@
.L502:
	mov	r3, sl	@ tmp375, tmp375
	ldr	r2, [r4, sl]	@ prephitmp.2381, <variable>.StreamSegArray.Tail
	ldr	r5, [sp, #48]	@ Ret, %sfp
	mov	sl, #0	@ ScdErrFlag,
	b	.L463	@
.L487:
	mov	r2, r0	@ prephitmp.2381, prephitmp.2381
	ldr	r5, [sp, #48]	@ Ret, %sfp
	b	.L474	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ SmID, SmID
	movw	r0, #:lower16:.LANCHOR0	@ tmp166,
	movt	r0, #:upper16:.LANCHOR0	@ tmp166,
	add	r3, r0, r5, asl #2	@, tmp170, tmp166, SmID,
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	ldr	r4, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	bne	.L526	@,
.L504:
	mvn	r0, #0	@ D.35786,
.L509:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L526:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L504	@,
	movw	r2, #:lower16:73900	@ tmp172,
	movw	r1, #:lower16:73896	@ tmp173,
	movt	r2, #:upper16:73900	@ tmp172,
	movt	r1, #:upper16:73896	@ tmp173,
	ldr	r0, [r4, r2]	@ D.35793, <variable>.RawPacketArray.Tail
	ldr	r3, [r4, r1]	@, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ D.35793,
	str	r3, [sp, #28]	@, %sfp
	beq	.L505	@,
	mov	r1, r3, asl #3	@ tmp413,,
	mov	r7, #1	@ rawnum,
	add	sl, r1, r3	@ tmp177, tmp413, index
	mov	fp, r5	@ SmID, SmID
	add	r8, r4, sl, asl #3	@, tmp179, pSmInstArray, tmp177,
	ldr	sl, [r8, #176]	@ TotalSrcLength, <variable>.Length
	b	.L506	@
.L507:
	mov	r2, r2, lsr #22	@ index, index,
	cmp	r0, ip	@ D.35793, index
	add	r3, r2, #1	@ D.35801, index,
	add	r7, r7, #1	@ rawnum, rawnum,
	add	ip, r2, r2, asl #3	@, tmp434, index, index,
	ldr	r1, [r8, #176]	@ D.35803, <variable>.Length
	mov	r3, r3, asl #22	@ index, D.35801,
	beq	.L505	@,
	movw	r5, #1025	@,
	cmp	r7, r5	@ rawnum,
	add	ip, r4, ip, asl #3	@, tmp436, pSmInstArray, tmp434,
	mov	r3, r3, lsr #22	@ index, index,
	add	sl, sl, r1	@ TotalSrcLength, TotalSrcLength, D.35803
	mov	r5, r7	@ tmp422, rawnum
	beq	.L505	@,
	ldrb	r9, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r1, r3, asl #3	@ tmp411, index,
	add	r8, r1, r3	@ tmp447, tmp411, index
	cmp	r9, #0	@ <variable>.is_not_last_packet_flag,
	add	r8, r4, r8, asl #3	@, tmp449, pSmInstArray, tmp447,
	beq	.L524	@,
	cmp	r0, r2	@ D.35793, index
	add	r7, r7, #1	@ rawnum, rawnum,
	ldr	r2, [ip, #176]	@ D.35803, <variable>.Length
	beq	.L505	@,
	ldrb	ip, [ip, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.35803
	cmp	ip, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L524	@,
	cmp	r0, r3	@ D.35793, index
	add	r7, r5, #2	@ rawnum, tmp422,
	ldr	r2, [r8, #176]	@ D.35803, <variable>.Length
	beq	.L505	@,
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.35803
.L506:
	add	r2, r1, r3	@ tmp425, tmp411, index
	add	r8, r3, #1	@ D.35801, index,
	mov	ip, r8, asl #22	@ index, D.35801,
	add	r8, r4, r2, asl #3	@, tmp427, pSmInstArray, tmp425,
	mov	ip, ip, lsr #22	@ index, index,
	ldrb	r3, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r2, ip, #1	@ D.35801, index,
	add	r1, ip, ip, asl #3	@, tmp185, index, index,
	cmp	r3, #0	@ <variable>.is_not_last_packet_flag,
	mov	r2, r2, asl #22	@ index, D.35801,
	add	r8, r4, r1, asl #3	@, tmp187, pSmInstArray, tmp185,
	bne	.L507	@,
.L524:
	add	ip, r4, #73728	@, pSmInstArray,
	add	r2, r4, #168	@, pSmInstArray,
	add	lr, ip, #192	@,,
	str	r2, [sp, #44]	@, %sfp
	str	lr, [sp, #32]	@, %sfp
	movw	r8, #:lower16:73920	@ tmp198,
	mov	r0, lr	@,
	mov	r5, fp	@ SmID, SmID
	bl	ResetStreamSegArray	@
	movw	r3, #:lower16:166108	@ tmp199,
	movt	r3, #:upper16:166108	@ tmp199,
	movt	r8, #:upper16:73920	@ tmp198,
	ldr	r1, [r4, r3]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, r1, #262144	@ tmp200, <variable>.StreamSegArray.SegBufSize,
	cmp	r0, sl	@ tmp200, TotalSrcLength
	blt	.L525	@,
	ldr	r3, [r4, #56]	@ prephitmp.2476, <variable>.Config.VidStd
	movw	r0, #:lower16:166104	@ tmp202,
	movt	r0, #:upper16:166104	@ tmp202,
	ldr	ip, [r4, r8]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	cmp	r3, #10	@ prephitmp.2476,
	cmpne	r3, #12	@, prephitmp.2476,
	ldr	r9, [r4, r0]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L510	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp414,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp414,
	ldr	r2, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	lr, r2, #1	@ tmp212, g_VdmCharacter,
	streqb	lr, [ip], #1	@ tmp212,
	ldr	r8, [sp, #28]	@, %sfp
	mov	r2, #72	@ tmp218,
	ldreq	r3, [r4, #56]	@ prephitmp.2476, <variable>.Config.VidStd
	mla	r1, r2, r8, r4	@ tmp219, tmp218,, pSmInstArray
	cmp	r3, #12	@ prephitmp.2476,
	movw	r3, #:lower16:73896	@ tmp226,
	movt	r3, #:upper16:73896	@ tmp226,
	ldr	r8, [r4, r3]	@ index.2503, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #172]	@, <variable>.VirAddr
	str	r1, [sp, #52]	@, %sfp
	bne	.L512	@,
	ldr	r0, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	cmp	r3, #0	@ SrcLength,
	moveq	r0, #0	@, tmp235
	andne	r0, r0, #1	@,, tmp235, g_VdmCharacter
	cmp	r0, #0	@ tmp235,
	beq	.L512	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L513	@,
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	fp, r1, #3	@,,
	str	fp, [sp, #52]	@, %sfp
.L512:
	str	r9, [r6, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, r9	@, TmpPhyAddr
	str	r3, [sp, #12]	@,
	str	ip, [sp, #8]	@,
	bl	MEM_Phy2Vir	@
	mov	ip, #72	@ tmp296,
	cmp	r7, #0	@ rawnum,
	str	r0, [r6, #0]	@ D.35862, <variable>.VirAddr
	ldr	r3, [sp, #28]	@, %sfp
	mla	fp, ip, r3, r4	@ tmp297, tmp296,, pSmInstArray
	ldr	ip, [sp, #8]	@,
	rsb	r1, r0, ip	@ tmp293, D.35862, TmpVirAddr
	str	r1, [r6, #12]	@ tmp293, <variable>.LenInByte
	ldrd	r0, [fp, #184]	@, tmp297,
	strd	r0, [r6, #24]	@, pStreamSeg,
	ldrd	r2, [fp, #184]	@, tmp297,
	strd	r2, [r6, #32]	@, pStreamSeg,
	mov	r3, #1	@ tmp312,
	ldrd	r0, [fp, #200]	@, tmp297,
	strb	r3, [r6, #5]	@ tmp312, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@, pStreamSeg,
	ldr	r3, [sp, #12]	@,
	beq	.L515	@,
	ldr	lr, [sp, #52]	@, %sfp
	cmp	lr, #0	@,
	cmpne	ip, #0	@, TmpVirAddr,
	beq	.L505	@,
	mov	r2, r8, asl #3	@ tmp410, index.2503,
	mov	r0, #0	@ i,
	add	r1, fp, #208	@, tmp297,
	add	r9, fp, #232	@ tmp420, tmp297,
	str	r1, [sp, #36]	@, %sfp
	add	fp, fp, #224	@ tmp419, tmp297,
	str	r7, [sp, #40]	@ rawnum, %sfp
	mov	r7, r4	@ pSmInstArray, pSmInstArray
	str	sl, [sp, #48]	@ TotalSrcLength, %sfp
	mov	sl, r2	@ tmp410, tmp410
	ldr	r1, [sp, #52]	@ SrcVirAddr, %sfp
	str	r3, [sp, #28]	@ SrcLength, %sfp
	str	r5, [sp, #52]	@ SmID, %sfp
	mov	r5, ip	@ TmpVirAddr, TmpVirAddr
	mov	ip, r0	@ i, i
	b	.L516	@
.L517:
	adds	r5, r5, r4	@ TmpVirAddr, TmpVirAddr, SrcLength.516
	moveq	r3, #0	@, tmp322
	movne	r3, #1	@, tmp322
	cmp	r1, #0	@ SrcVirAddr,
	moveq	r3, #0	@, tmp327
	andne	r3, r3, #1	@,, tmp327, tmp322
	cmp	r3, #0	@ tmp327,
	beq	.L505	@,
.L516:
	ldr	r4, [sp, #28]	@ SrcLength.516, %sfp
	mov	r0, r5	@, TmpVirAddr
	str	ip, [sp, #8]	@,
	mov	r2, r4	@, SrcLength.516
	bl	memcpy	@
	add	r3, sl, r8	@ tmp335, tmp410, index.2503
	ldr	ip, [sp, #8]	@,
	add	r1, r8, #1	@ temp.2522, index.2503,
	ldr	r0, [sp, #40]	@, %sfp
	add	sl, r7, r3, asl #3	@, tmp337, pSmInstArray, tmp335,
	add	ip, ip, #1	@ i, i,
	ldr	r2, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r0, ip	@, i
	ldrb	r0, [sl, #221]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	mov	r8, r1, asl #22	@ index.2503, temp.2522,
	add	r1, r2, r4	@ tmp342, <variable>.LenInByte, SrcLength.516
	str	r1, [r6, #12]	@ tmp342, <variable>.LenInByte
	strb	r0, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	mov	r8, r8, lsr #22	@ index.2503, index.2503,
	ldr	r1, [sp, #36]	@, %sfp
	mov	sl, r8, asl #3	@ tmp410, index.2503,
	add	r2, sl, r8	@ tmp347, tmp410, index.2503
	ldrd	r0, [r1]	@, <variable>.DispTime
	add	r2, r7, r2, asl #3	@, tmp349, pSmInstArray, tmp347,
	strd	r0, [sp, #16]	@,,
	ldr	r3, [r2, #176]	@, <variable>.Length
	str	r3, [sp, #28]	@, %sfp
	ldr	r1, [r2, #172]	@ SrcVirAddr, <variable>.VirAddr
	ldrd	r2, [sp, #16]	@,,
	strd	r2, [r6, #48]	@, pStreamSeg,
	ldr	r2, [fp, #0]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r2, [fp, #4]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r2, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r2, [r9, #0]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r2, [r9, #4]	@ <variable>.GopNum, <variable>.GopNum
	str	r2, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	bhi	.L517	@,
	ldr	sl, [sp, #48]	@ TotalSrcLength, %sfp
	ldr	r5, [sp, #52]	@ SmID, %sfp
.L515:
	mov	r2, r5	@, SmID
	ldr	r0, [sp, #32]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	bl	InsertStreamSeg	@
.L525:
	ldr	r0, [sp, #44]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.35786,
	b	.L509	@
.L505:
	mvn	r0, #3	@ D.35786,
	b	.L509	@
.L510:
	ldr	r0, [sp, #28]	@, %sfp
	mov	r8, #72	@ tmp401,
	movw	r3, #:lower16:73896	@ tmp409,
	movt	r3, #:upper16:73896	@ tmp409,
	mla	lr, r8, r0, r4	@ tmp402, tmp401,, pSmInstArray
	ldr	r8, [r4, r3]	@ index.2503, <variable>.RawPacketArray.Head
	ldr	fp, [lr, #172]	@, <variable>.VirAddr
	ldr	r3, [lr, #176]	@ SrcLength, <variable>.Length
	str	fp, [sp, #52]	@, %sfp
	b	.L512	@
.L513:
	cmp	r7, #1	@ rawnum,
	beq	.L505	@,
	add	r0, r8, #1	@ temp.2508, index.2503,
	mov	r8, r0, asl #22	@ index.2503, temp.2508,
	mov	r8, r8, lsr #22	@ index.2503, index.2503,
	mla	r1, r2, r8, r4	@ tmp240, tmp218, index.2503, pSmInstArray
	ldr	lr, [r1, #176]	@ <variable>.Length, <variable>.Length
	ldr	r1, [r1, #172]	@ SrcVirAddr.2511, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2510, SrcLength, <variable>.Length
	cmp	r3, #2	@ SrcLength.2510,
	ble	.L514	@,
	add	r0, r8, #1020	@ tmp248, index.2503,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2510,
	add	lr, r0, #3	@ tmp248, tmp248,
	sub	r7, r7, #1	@ rawnum, rawnum,
	mov	fp, lr, asl #22	@ tmp250, tmp248,
	mov	r0, fp, lsr #22	@ tmp250, tmp250,
	mla	r2, r2, r0, r4	@ tmp255, tmp218, tmp250, pSmInstArray
	ldr	lr, [r2, #176]	@ <variable>.Length, <variable>.Length
	rsb	fp, lr, #3	@ tmp257, <variable>.Length,
	add	r2, r1, fp	@, SrcVirAddr.2511, tmp257
	str	r2, [sp, #52]	@, %sfp
	b	.L512	@
.L514:
	cmp	r7, #2	@ rawnum,
	beq	.L505	@,
	add	fp, r8, #1	@ temp.2512, index.2503,
	mov	r8, fp, asl #22	@ index.2503, temp.2512,
	mov	r8, r8, lsr #22	@ index.2503, index.2503,
	mla	r1, r2, r8, r4	@ tmp263, tmp218, index.2503, pSmInstArray
	ldr	lr, [r1, #176]	@ <variable>.Length, <variable>.Length
	ldr	fp, [r1, #172]	@ SrcVirAddr.2515, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2514, SrcLength.2510, <variable>.Length
	cmp	r3, #2	@ SrcLength.2514,
	ble	.L505	@,
	add	lr, r8, #1020	@ tmp271, index.2503,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2514,
	add	r0, lr, #3	@ tmp271, tmp271,
	add	lr, lr, #2	@ tmp282, tmp282,
	sub	r7, r7, #2	@ rawnum, rawnum,
	mov	r0, r0, asl #22	@ tmp273, tmp271,
	mov	r1, lr, asl #22	@ tmp284, tmp282,
	mov	lr, r0, lsr #22	@ tmp273, tmp273,
	mov	r1, r1, lsr #22	@ tmp284, tmp284,
	mla	r0, r2, lr, r4	@ tmp278, tmp218, tmp273, pSmInstArray
	mla	lr, r2, r1, r4	@ tmp289, tmp218, tmp284, pSmInstArray
	ldr	r1, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r2, [lr, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r1, #3	@ tmp280, <variable>.Length,
	rsb	r0, r2, lr	@ tmp291, <variable>.Length, tmp280
	add	r2, fp, r0	@, SrcVirAddr.2515, tmp291
	str	r2, [sp, #52]	@, %sfp
	b	.L512	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadSegStream
	.type	SM_ReadSegStream, %function
SM_ReadSegStream:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ SmID, SmID
	movw	r0, #:lower16:.LANCHOR0	@ tmp140,
	movt	r0, #:upper16:.LANCHOR0	@ tmp140,
	add	r3, r0, r7, asl #2	@, tmp144, tmp140, SmID,
	subs	r6, r1, #0	@ pStreamSeg, pStreamSeg
	ldr	r5, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L536	@,
.L528:
	mvn	r4, #0	@ ret,
.L534:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L536:
	cmp	r5, #0	@ pSmInstArray,
	beq	.L528	@,
	ldr	r3, [r5, #56]	@ D.35991, <variable>.Config.VidStd
	sub	r2, r3, #8	@ tmp146, D.35991,
	cmp	r3, #5	@ D.35991,
	cmpne	r2, #1	@, tmp146,
	bls	.L529	@,
	cmp	r3, #4	@ D.35991,
	beq	.L529	@,
	cmp	r3, #10	@ D.35991,
	beq	.L529	@,
	cmp	r3, #14	@ D.35991,
	beq	.L529	@,
	cmp	r3, #11	@ D.35991,
	beq	.L529	@,
	cmp	r3, #12	@ D.35991,
	beq	.L529	@,
	cmp	r3, #13	@ D.35991,
	beq	.L529	@,
	cmp	r3, #1	@ D.35991,
	bne	.L530	@,
	ldr	r1, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L530	@,
.L529:
	mov	r0, r7	@, SmID
	mov	r1, r6	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	mvnne	r4, #6	@ ret,
	beq	.L530	@,
.L532:
	movw	r1, #:lower16:180116	@ tmp167,
	movt	r1, #:upper16:180116	@ tmp167,
	ldr	r2, [r5, r1]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, r2, #1	@ tmp170, <variable>.numReadSegFail,
	str	r0, [r5, r1]	@ tmp170, <variable>.numReadSegFail
	b	.L534	@
.L530:
	add	r4, r5, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r4, #192	@,,
	bl	GetStreamSeg	@
	subs	r4, r0, #0	@ ret,
	bne	.L532	@,
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp157,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp157,
	ldr	ip, [r8, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	ip, #0	@ vfmw_save_seg_file,
	beq	.L533	@,
	movw	r3, #:lower16:save_seg_chan_num	@ tmp159,
	movt	r3, #:upper16:save_seg_chan_num	@ tmp159,
	ldr	lr, [r3, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, lr	@ SmID, save_seg_chan_num
	beq	.L537	@,
.L533:
	movw	lr, #:lower16:180116	@ tmp172,
	movt	lr, #:upper16:180116	@ tmp172,
	mov	ip, #0	@ tmp173,
	str	ip, [r5, lr]	@ tmp173, <variable>.numReadSegFail
	b	.L534	@
.L537:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, [r6, #12]	@, <variable>.LenInByte
	ldr	r2, [r8, #0]	@, vfmw_save_seg_file
	ldr	r0, [r6, #0]	@, <variable>.VirAddr
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L533	@
	.fnend
	.size	SM_ReadSegStream, .-SM_ReadSegStream
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.34816,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	movw	r2, #:lower16:73744	@ tmp145,
	movt	r2, #:upper16:73744	@ tmp145,
	movw	r0, #:lower16:73732	@ tmp154,
	movt	r0, #:upper16:73732	@ tmp154,
	ldr	ip, [r3, r2]	@ <variable>.CurShowIndex, <variable>.CurShowIndex
	ldr	r5, [r3, r0]	@ <variable>.Tail, <variable>.Tail
	add	r0, ip, #1	@ tmp146, <variable>.CurShowIndex,
	mov	ip, r0, asr #31	@ tmp148, tmp146,
	mov	ip, ip, lsr #22	@ tmp149, tmp148,
	add	r0, r0, ip	@ tmp150, tmp146, tmp149
	mov	r0, r0, asl #22	@ tmp151, tmp150,
	mov	r0, r0, lsr #22	@ tmp151, tmp151,
	rsb	r0, ip, r0	@ tmp153, tmp149, tmp151
	cmp	r5, r0	@ <variable>.Tail, tmp153
	mvneq	r0, #2	@ D.34816,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, r0, r0, asl #3	@, tmp159, tmp153, tmp153,
	str	r0, [r3, r2]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r3, lr, asl #3	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.34816, tmp144
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mvneq	r0, #0	@ D.34797,
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	ldmeqfd	sp!, {r4, pc}	@
	movw	r2, #:lower16:73732	@ tmp146,
	movt	r2, #:upper16:73732	@ tmp146,
	mov	r0, #73728	@ tmp145,
	ldr	ip, [r3, r0]	@ D.34798, <variable>.Head
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ D.34798, <variable>.Tail
	mvneq	r0, #2	@ D.34797,
	ldmeqfd	sp!, {r4, pc}	@
	add	r2, ip, ip, asl #3	@, tmp151, D.34798, D.34798,
	movw	lr, #:lower16:73744	@ tmp148,
	movt	lr, #:upper16:73744	@ tmp148,
	mov	r0, r1	@, pRawPacket
	add	r1, r3, r2, asl #3	@,, pRawStreamArray, tmp151,
	mov	r2, #72	@,
	str	ip, [r3, lr]	@ D.34798, <variable>.CurShowIndex
	bl	memcpy	@
	mov	r0, r4	@ D.34797, tmp144
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1650:
	@ args = 8, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	add	r9, sp, #8	@ tmp219,,
	mov	r4, r2	@ pRawStreamArray, pRawStreamArray
	mov	r5, r0	@ pSmPushRaw, pSmPushRaw
	mov	fp, r1	@ SegStreamSize, SegStreamSize
	mov	r0, r9	@, tmp219
	mov	r1, #0	@,
	mov	r2, #72	@,
	mov	r6, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r4, #0	@ pRawStreamArray,
	beq	.L549	@,
	movw	r0, #:lower16:73732	@ tmp159,
	movt	r0, #:upper16:73732	@ tmp159,
	mov	r1, #73728	@ tmp158,
	ldr	r2, [r4, r1]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r4, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ <variable>.Head, <variable>.Tail
	beq	.L549	@,
	movw	r7, #:lower16:73740	@ tmp162,
	movt	r7, #:upper16:73740	@ tmp162,
	ldr	sl, [r4, r7]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	r8, sl	@ prephitmp.2612, FirstRawOffset
.L550:
	mov	r1, r9	@, tmp219
	mov	r0, r4	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r7, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [sp, #12]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp169,
	rsb	r7, sl, r7	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r1, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	cmp	r7, fp	@ RawShowTotalLen, SegStreamSize
	movgt	ip, #0	@, tmp177
	movle	ip, #1	@, tmp177
	add	r8, r3, r8	@ tmp167, RawPacket.VirAddr, prephitmp.2612
	cmp	ip, r2	@ tmp177,
	str	r8, [sp, #12]	@ tmp167, RawPacket.VirAddr
	add	sl, r1, sl	@ tmp165, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r7	@ RawPacket.Length, RawShowTotalLen
	moveq	r8, ip	@ j.2655, tmp177
	str	sl, [sp, #8]	@ tmp165, RawPacket.PhyAddr
	str	r2, [r6, #0]	@ tmp169,* pDownMsgVirAddr
	moveq	sl, r8	@ PushRawNum, j.2655
	str	r2, [r6, #4]	@ tmp169,
	str	r2, [r6, #8]	@ tmp169,
	str	r7, [sp, #16]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [r5, #4]	@ tmp169, <variable>.PushRawTotalLen
	beq	.L552	@,
	mov	r8, r2	@ j.2655, tmp169
	str	r4, [sp, #4]	@ pRawStreamArray, %sfp
	mov	r2, r7	@ prephitmp.2614, RawShowTotalLen
	mov	sl, r8	@ PushRawNum, j.2655
	b	.L554	@
.L561:
	ldr	r3, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	cmp	sl, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp194
	movle	r1, #1	@, tmp194
	add	r7, r7, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	fp, r7	@ SegStreamSize, RawShowTotalLen
	mov	r2, r3	@ prephitmp.2614, RawPacket.Length
	movlt	r1, #0	@, tmp194,
	cmp	r1, #0	@ tmp194,
	beq	.L552	@,
.L554:
	cmp	r2, #0	@ prephitmp.2614,
	add	ip, r8, #1	@ j, j.2655,
	ldr	r0, [sp, #4]	@, %sfp
	mov	r1, r9	@, tmp219
	add	r2, ip, #1	@ j.2634, j,
	add	sl, sl, #1	@ PushRawNum, PushRawNum,
	ble	.L553	@,
	ldr	lr, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r4, #0	@,
	str	r4, [sp, #16]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp179, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r6, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r3, r3, #1	@ tmp182, tmp179,
	str	r3, [r6, ip, asl #2]	@ tmp182,* pDownMsgVirAddr
	add	r8, r2, #1	@ j.2655, j.2634,
	ldr	ip, [sp, #120]	@, DownMsgPhyAddr
	add	lr, ip, r8, asl #2	@, tmp184,, j.2655,
	str	lr, [r6, r2, asl #2]	@ tmp184,* pDownMsgVirAddr
.L553:
	str	r7, [r5, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L561	@,
.L552:
	ldr	r2, [sp, #124]	@ LowdlyFlag, LowdlyFlag
	cmp	r2, #0	@ LowdlyFlag,
	bne	.L555	@,
	ldr	r3, [sp, #16]	@ temp.2638, RawPacket.Length
	cmp	r3, #0	@ temp.2638,
	bne	.L562	@,
.L555:
	cmp	sl, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.36308,
	beq	.L557	@,
.L556:
	mov	lr, #0	@ tmp216,
	sub	r8, r8, #1	@ tmp215, j.2655,
	mov	r0, lr	@ D.36308, tmp216
	mov	r2, #1	@ tmp217,
	str	lr, [r6, r8, asl #2]	@ tmp216,* pDownMsgVirAddr
	str	r2, [r5, #8]	@ tmp217, <variable>.PushRawOver
	str	sl, [r5, #0]	@ PushRawNum, <variable>.PushRawNum
.L557:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L562:
	ldr	r2, [r5, #4]	@ D.36293, <variable>.PushRawTotalLen
	sub	ip, fp, #16	@ tmp197, SegStreamSize,
	cmp	fp, r7	@ SegStreamSize, RawShowTotalLen
	cmplt	r2, ip	@, D.36293, tmp197
	bge	.L555	@,
	cmp	sl, #1024	@ PushRawNum,
	bge	.L556	@,
	rsb	r2, r2, fp	@ D.36302, D.36293, SegStreamSize
	cmp	r3, r2	@ temp.2638, D.36302
	blt	.L555	@,
	ldr	r0, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r1, r8, #1	@ j.2643, j.2655,
	add	r3, r1, #1	@ j.2651, j.2643,
	add	sl, sl, #1	@ PushRawNum, PushRawNum,
	add	ip, r0, r2	@ tmp205, RawPacket.PhyAddr, D.36302
	str	r0, [r6, r8, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r4, ip, #1	@ tmp208, tmp205,
	str	r4, [r6, r1, asl #2]	@ tmp208,* pDownMsgVirAddr
	add	r8, r3, #1	@ j.2655, j.2651,
	ldr	r4, [sp, #120]	@, DownMsgPhyAddr
	add	lr, r4, r8, asl #2	@, tmp210,, j.2655,
	str	lr, [r6, r3, asl #2]	@ tmp210,* pDownMsgVirAddr
	ldr	r3, [r5, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	add	r0, r3, r2	@ tmp213, <variable>.PushRawTotalLen, D.36302
	str	r0, [r5, #4]	@ tmp213, <variable>.PushRawTotalLen
	b	.L556	@
.L549:
	mov	r8, #0	@ prephitmp.2612,
	mov	sl, r8	@ FirstRawOffset, prephitmp.2612
	b	.L550	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
.LFB1651:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	mov	r5, r1	@ pSmPushRaw, pSmPushRaw
	mov	r7, r2	@ SegStreamSize, SegStreamSize
	mov	r6, r3	@ pRawStreamArray, pRawStreamArray
	bl	ResetSCD	@
	ldr	ip, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	ldr	lr, [sp, #36]	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r0, r5	@, pSmPushRaw
	mov	r1, r7	@, SegStreamSize
	mov	r2, r6	@, pRawStreamArray
	ldr	r3, [sp, #32]	@, pDownMsgVirAddr
	str	lr, [sp, #0]	@ DownMsgPhyAddr,
	str	ip, [sp, #4]	@ <variable>.ScdLowdlyEnable,
	bl	WriteScdMsg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L564	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L564:
	mov	r0, r5	@, Ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	ScdDriver, .-ScdDriver
	.global	__aeabi_idivmod
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
.LFB1648:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	adds	r7, r0, #168	@ pRawStreamArray, pScdInstance,
	.pad #164
	sub	sp, sp, #164	@,,
	mov	r3, #0	@ tmp148,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r3, [sp, #148]	@ tmp148, SegBufSize
	ldr	r6, [r0, #56]	@ StdType, <variable>.Config.VidStd
	ldr	r8, [r0, #88]	@ D.36122, <variable>.Config.ScdLowdlyEnable
	bne	.L585	@,
.L567:
	mvn	r6, #0	@ Ret,
.L577:
	mov	r0, r6	@, Ret
	add	sp, sp, #164	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L585:
	add	r9, r0, #73728	@ pStreamSegArray, pScdInstance,
	add	r9, r9, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r9, r3	@ pStreamSegArray,
	beq	.L567	@,
	add	lr, r0, #165888	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, lr, #248	@,,
	str	r3, [sp, #152]	@ tmp148, FreeSegBufAddr
	str	r3, [sp, #156]	@ tmp148, SegStreamSize
	bl	__memzero	@
	movw	r3, #:lower16:73900	@ tmp154,
	movw	r1, #:lower16:73896	@ tmp155,
	movt	r3, #:upper16:73900	@ tmp154,
	movt	r1, #:upper16:73896	@ tmp155,
	movw	r2, #:lower16:73916	@ tmp158,
	movw	r0, #:lower16:73908	@ tmp159,
	ldr	ip, [r4, r3]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:73916	@ tmp158,
	ldr	r5, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movt	r0, #:upper16:73908	@ tmp159,
	subs	r1, ip, r5	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	ldr	r5, [r4, r2]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	addmi	r1, r1, #1024	@ StreamNum, StreamNum,
	subs	r5, r5, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L567	@,
	cmp	r1, #0	@ StreamNum,
	bgt	.L586	@,
.L570:
	mvn	r6, #4	@ Ret,
	b	.L577	@
.L586:
	cmp	r5, #3	@ RawStreamSize,
	ble	.L570	@,
	movw	r1, #:lower16:166092	@ tmp162,
	movt	r1, #:upper16:166092	@ tmp162,
	movw	ip, #:lower16:166088	@ tmp165,
	movt	ip, #:upper16:166088	@ tmp165,
	ldr	r0, [r4, r1]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	mov	r1, #1152	@,
	ldr	r2, [r4, ip]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	sl, r0, r1	@ tmp163, <variable>.StreamSegArray.Tail,
	rsb	r0, r2, sl	@, <variable>.StreamSegArray.Head, tmp163
	bl	__aeabi_idivmod	@
	rsb	sl, r1, #1152	@ StreamNum.543,,
	cmp	sl, #288	@ StreamNum.543,
	bgt	.L587	@,
.L571:
	mvn	r6, #5	@ Ret,
	b	.L577	@
.L587:
	mov	r0, r9	@, pStreamSegArray
	add	r1, sp, #152	@,,
	add	r2, sp, #156	@,,
	bl	GetFreeSegBuf	@
	movw	r3, #:lower16:166108	@ tmp180,
	movt	r3, #:upper16:166108	@ tmp180,
	ldr	r1, [sp, #156]	@ SegStreamSize, SegStreamSize
	ldr	ip, [sp, #152]	@ FreeSegBufAddr, FreeSegBufAddr
	ldr	r3, [r4, r3]	@ D.36155, <variable>.StreamSegArray.SegBufSize
	sub	r0, r1, #79	@ SegStreamSize.548, SegStreamSize,
	add	r2, ip, #3	@ tmp176, FreeSegBufAddr,
	str	r0, [sp, #156]	@ SegStreamSize.548, SegStreamSize
	bic	r2, r2, #3	@ tmp178, tmp176,
	str	r2, [sp, #152]	@ tmp178, FreeSegBufAddr
	cmp	r0, r3, asr #3	@ SegStreamSize.548, D.36155,
	ble	.L571	@,
	movw	r1, #:lower16:180124	@ tmp186,
	movt	r1, #:upper16:180124	@ tmp186,
	movw	lr, #:lower16:166152	@ tmp192,
	movw	r0, #:lower16:166156	@ tmp194,
	ldr	r9, [r4, r1]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movt	lr, #:upper16:166152	@ tmp192,
	movt	r0, #:upper16:166156	@ tmp194,
	movw	ip, #:lower16:166104	@ tmp182,
	movw	r1, #:lower16:166164	@ tmp196,
	movt	ip, #:upper16:166104	@ tmp182,
	mov	fp, r9, asl #2	@ tmp187, <variable>.UpMsgStepNum,
	movt	r1, #:upper16:166164	@ tmp196,
	mul	r9, r9, sl	@, <variable>.UpMsgStepNum, StreamNum.543
	mul	fp, sl, fp	@ tmp189, StreamNum.543, tmp187
	str	r9, [sp, #20]	@, %sfp
	ldr	r9, [r4, lr]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	ldr	lr, [r4, r0]	@, <variable>.BufAddrCfg.pDownMsgVirAddr
	cmp	r6, #6	@ StdType,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	ldr	ip, [r4, ip]	@ D.37941, <variable>.StreamSegArray.SegBufPhyAddr
	cmp	r6, #1	@ StdType,
	cmpne	r6, #15	@, StdType,
	str	r0, [sp, #28]	@, %sfp
	movw	r0, #:lower16:166176	@ tmp184,
	str	lr, [sp, #12]	@, %sfp
	movt	r0, #:upper16:166176	@ tmp184,
	ldr	r1, [r4, r1]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	add	lr, ip, r3	@, D.37941, D.36155
	str	lr, [sp, #24]	@, %sfp
	moveq	r6, #0	@ prephitmp.2703,
	str	r1, [sp, #16]	@, %sfp
	movw	r1, #:lower16:166172	@ tmp185,
	movt	r1, #:upper16:166172	@ tmp185,
	str	sl, [r4, r0]	@ StreamNum.543, <variable>.BufAddrCfg.UpMsgNum
	str	fp, [r4, r1]	@ tmp189, <variable>.BufAddrCfg.UpMsgSize
	mov	r1, #1	@ tmp190,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	str	r9, [sp, #40]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, ScdCtrlReg.DownMsgPhyAddr
	str	lr, [sp, #44]	@, ScdCtrlReg.pDownMsgVirAddr
	ldr	lr, [sp, #20]	@, %sfp
	str	r0, [sp, #48]	@, ScdCtrlReg.UpMsgPhyAddr
	ldr	r0, [sp, #24]	@, %sfp
	str	lr, [sp, #56]	@, ScdCtrlReg.UpLen
	ldr	lr, [sp, #28]	@, %sfp
	str	r0, [sp, #64]	@, ScdCtrlReg.BufferLast
	str	r2, [sp, #68]	@ tmp178, ScdCtrlReg.BufferIni
	str	r8, [sp, #140]	@ D.36122, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [sp, #144]	@, ScdCtrlReg.reg_avs_flag
	str	r3, [sp, #148]	@ D.36155,
	strb	r1, [sp, #38]	@ tmp190, ScdCtrlReg.ScdStart
	str	ip, [sp, #60]	@ D.37941, ScdCtrlReg.BufferFirst
	strb	r1, [sp, #36]	@ tmp190, ScdCtrlReg.ScdIntMask
	beq	.L576	@,
	cmp	r6, #6	@ StdType,
	beq	.L584	@,
	sub	r2, r6, #2	@ tmp218, StdType,
	cmp	r2, #1	@ tmp218,
	bls	.L584	@,
.L576:
	mov	r3, #0	@ tmp221,
	strb	r3, [sp, #37]	@ tmp221, ScdCtrlReg.SliceCheckFlag
.L574:
	movw	r2, #:lower16:166156	@ tmp227,
	movw	r1, #:lower16:166152	@ tmp229,
	movt	r2, #:upper16:166156	@ tmp227,
	movt	r1, #:upper16:166152	@ tmp229,
	add	r0, r4, #165888	@, pScdInstance,
	mov	r3, r7	@, pRawStreamArray
	ldr	ip, [r4, r2]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	mov	r7, #1	@ tmp223,
	ldr	lr, [r4, r1]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	add	r1, r0, #248	@,,
	ldr	r2, [sp, #156]	@, SegStreamSize
	add	r0, sp, #36	@,,
	str	r6, [sp, #72]	@ prephitmp.2703, ScdCtrlReg.ScdProtocol
	stmia	sp, {ip, lr}	@ phole stm
	str	r7, [sp, #76]	@ tmp223, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	bne	.L577	@,
	ldr	lr, [sp, #156]	@ SegStreamSize, SegStreamSize
	movw	r0, #:lower16:180096	@ tmp233,
	movw	ip, #:lower16:180100	@ tmp234,
	movt	r0, #:upper16:180096	@ tmp233,
	movt	ip, #:upper16:180100	@ tmp234,
	cmp	lr, r5	@ SegStreamSize, RawStreamSize
	str	r5, [r4, r0]	@ RawStreamSize, <variable>.PrevCfgRawSize
	mov	r5, #0	@ tmp241,
	str	lr, [r4, ip]	@ SegStreamSize, <variable>.PrevCfgSegSize
	strb	r7, [r4, #5]	@ tmp223, <variable>.IsWaitSCD
	strgeb	r7, [r4, #2]	@ tmp223, <variable>.LastCfgAllRawFlag
	strltb	r6, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r5, [r4, #4]	@ tmp241, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp243,
	movt	r3, #:upper16:180120	@ tmp243,
	strb	r5, [r4, #3]	@ tmp241, <variable>.InsertNewSegFlag
	str	r0, [r4, r3]	@, <variable>.LastSCDStartTime
	b	.L577	@
.L584:
	strb	r1, [sp, #37]	@ tmp190, ScdCtrlReg.SliceCheckFlag
	b	.L574	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp223,
	movt	r4, #:upper16:.LANCHOR0	@ tmp223,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r6, r0	@ pNextInstId, pNextInstId
	ldr	r3, [r4, #140]	@ s_eScdDrvSleepStage.638, s_eScdDrvSleepStage
	cmp	r3, #0	@ s_eScdDrvSleepStage.638,
	bne	.L589	@,
	mov	r0, r3	@, s_eScdDrvSleepStage.638
	mov	r1, sp	@,
	str	r3, [sp, #24]	@ s_eScdDrvSleepStage.638, SegBufAddr
	str	r3, [sp, #28]	@ s_eScdDrvSleepStage.638, SegBufTotalSize
	ldr	r5, [r4, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L590	@,
	ldr	r3, [r5, #56]	@ D.37428, <variable>.Config.VidStd
	sub	r2, r3, #8	@ tmp158, D.37428,
	cmp	r3, #5	@ D.37428,
	cmpne	r2, #1	@, tmp158,
	bls	.L590	@,
	cmp	r3, #1	@ D.37428,
	beq	.L608	@,
	cmp	r3, #11	@ D.37428,
	beq	.L590	@,
	cmp	r3, #14	@ D.37428,
	beq	.L590	@,
	cmp	r3, #4	@ D.37428,
	beq	.L590	@,
	cmp	r3, #12	@ D.37428,
	beq	.L590	@,
	cmp	r3, #10	@ D.37428,
	beq	.L590	@,
	cmp	r3, #13	@ D.37428,
	beq	.L590	@,
	cmp	r3, #18	@ D.37428,
	beq	.L590	@,
	cmp	r3, #17	@ D.37428,
	beq	.L609	@,
.L595:
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:180120	@ tmp167,
	movt	ip, #:upper16:180120	@ tmp167,
	ldrsb	r1, [r5, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	ldr	r3, [r5, ip]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r3	@ WaitTime, D.37448, <variable>.LastSCDStartTime
	strmi	r0, [r5, ip]	@ D.37448, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime,
	cmp	r1, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L610	@,
	ldrsb	r2, [r5, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp206,
	strneb	r2, [r5, #1]	@ tmp206, <variable>.IsCounting
	beq	.L611	@,
.L602:
	mov	r0, r5	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp208,
	mvneq	r0, #2	@ D.37420,
	streqb	r3, [r5, #0]	@ tmp208, <variable>.SegFullFlag
	beq	.L592	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp210,
	strb	r3, [r5, #0]	@ tmp210, <variable>.SegFullFlag
	beq	.L612	@,
.L590:
	mvn	r0, #2	@ D.37420,
.L592:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L589:
	cmp	r3, #1	@ s_eScdDrvSleepStage.638,
	moveq	r3, #2	@ tmp157,
	mvneq	r0, #2	@ D.37420,
	streq	r3, [r4, #140]	@ tmp157, s_eScdDrvSleepStage
	bne	.L590	@,
	b	.L592	@
.L608:
	ldr	r0, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L595	@,
	b	.L590	@
.L610:
	ldrsb	lr, [r5, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime,
	cmple	lr, #0	@, <variable>.FillNewRawFlag,
	beq	.L590	@,
	ldrsb	r2, [r5, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp206,
	strneb	r2, [r5, #1]	@ tmp206, <variable>.IsCounting
	bne	.L602	@,
.L611:
	add	r7, r5, #73728	@ D.37464, pSmInstArray,
	add	r7, r7, #192	@ D.37464, D.37464,
	cmp	r7, #0	@ D.37464,
	moveq	r8, r7	@ FreshSize, D.37464
	moveq	sl, r7	@ FreshNum, D.37464
	beq	.L600	@,
	movw	sl, #:lower16:166104	@ tmp184,
	movt	sl, #:upper16:166104	@ tmp184,
	movw	r8, #:lower16:166128	@ tmp181,
	movw	r3, #:lower16:166124	@ tmp182,
	ldr	lr, [r5, sl]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	r8, #:upper16:166128	@ tmp181,
	movt	r3, #:upper16:166124	@ tmp182,
	movw	ip, #:lower16:166108	@ tmp187,
	movt	ip, #:upper16:166108	@ tmp187,
	ldr	sl, [r5, r8]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	r8, [r5, r3]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #24]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	r0, [r5, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r0, [sp, #28]	@ <variable>.StreamSegArray.SegBufSize,
.L600:
	ldrsb	r0, [r5, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r0, #0	@ <variable>.IsCounting,
	bne	.L601	@,
	ldr	r2, [sp, #28]	@ SegBufTotalSize, SegBufTotalSize
	add	r1, r2, r2, lsr #31	@, tmp193, SegBufTotalSize, SegBufTotalSize,
	cmp	r8, r1, asr #1	@ FreshSize, tmp193,
	bge	.L602	@,
	cmp	sl, #127	@ FreshNum,
	bgt	.L602	@,
	mov	r1, #1	@ tmp195,
	strb	r1, [r5, #1]	@ tmp195, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L602	@
.L612:
	str	r0, [r6, #0]	@ Ret,* pNextInstId
	mov	r0, #1	@,
	ldr	lr, [r4, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, r3	@ pSmInstArray,
	movwne	r3, #:lower16:166252	@ tmp214,
	movtne	r3, #:upper16:166252	@ tmp214,
	movne	r1, #1	@ tmp215,
	strne	r1, [lr, r3]	@ tmp215, <variable>.Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	moveq	r0, #0	@ D.37420,
	beq	.L592	@
.L613:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp219,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp219,
	ldr	r1, [r4, #164]	@ last_rec_pos_time, last_rec_pos_time
	movw	r2, #:lower16:.LANCHOR0	@ tmp216,
	movt	r2, #:upper16:.LANCHOR0	@ tmp216,
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r1, r0	@ tmp217, last_rec_pos_time, D.37497
	cmp	r1, ip	@ tmp217, g_TraceBsPeriod
	strhi	r0, [r2, #164]	@ D.37497, last_rec_pos_time
	movhi	r0, #0	@ D.37420,
	movls	r0, #0	@ D.37420,
	b	.L592	@
.L601:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L602	@,
	ldr	r0, [sp, #28]	@ SegBufTotalSize, SegBufTotalSize
	cmp	r0, #0	@ SegBufTotalSize,
	add	ip, r0, #3	@ tmp200, SegBufTotalSize,
	movlt	r0, ip	@ SegBufTotalSize, tmp200
	cmp	r8, r0, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L602	@,
	cmp	sl, #63	@ FreshNum,
	bgt	.L602	@,
	mov	r0, r7	@, D.37464
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp202,
	strb	r3, [r5, #0]	@ tmp202, <variable>.SegFullFlag
	strb	r3, [r5, #1]	@ tmp202, <variable>.IsCounting
	b	.L602	@
.L609:
	mov	r0, #0	@,
	bl	SM_CopyYuvToDnr	@
	mvn	r0, #2	@ D.37420,
	b	.L592	@
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r0, #:lower16:g_TaskLock	@,
	.pad #8
	sub	sp, sp, #8	@,,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #:lower16:269731904	@,
	movt	r0, #:upper16:269731904	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L623	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	mov	r1, #1	@,
	ldr	r2, [r4, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp149,
	str	r3, [r4, #168]	@ tmp149, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldreq	r5, [r4, #128]	@ prephitmp.2769, s_SmIIS.ThisInstID
	bne	.L624	@,
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.2769,
	ldr	lr, [r4, #124]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L625	@,
.L619:
	ldr	r3, [r3, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L626	@,
.L620:
	mov	r0, r5	@, prephitmp.2769
	mov	r2, #0	@ tmp199,
	str	r2, [r4, #168]	@ tmp199, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L623:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L622:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L624:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #128]	@ prephitmp.2769, s_SmIIS.ThisInstID
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp159,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp159,
	ldr	lr, [r4, #124]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	add	ip, r4, r5, asl #2	@, tmp155, tmp201, prephitmp.2769,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #172]	@ tmp158, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp157, tmp158, CurTimeInMs
	cmp	r1, r3	@ tmp157, g_TraceBsPeriod
	strhi	r0, [ip, #172]	@ CurTimeInMs, last_rec_pos_time
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.2769,
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	bne	.L619	@,
.L625:
	mov	r2, #0	@ tmp182,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r3, #132]	@ tmp182, s_SmIIS.SCDState
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #168]	@ tmp182, s_SCDInISR
	bl	OSAL_SpinUnLockIRQ	@
	b	.L622	@
.L626:
	movw	r1, #:lower16:166252	@ tmp188,
	movt	r1, #:upper16:166252	@ tmp188,
	ldr	r6, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r6, #1	@ <variable>.Mode,
	beq	.L627	@,
.L621:
	add	r0, sp, #4	@,,
	mov	lr, #0	@ tmp191,
	str	lr, [r4, #132]	@ tmp191, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp190,
	movt	r6, #:upper16:.LANCHOR0	@ tmp190,
	cmp	r0, #0	@,
	bne	.L620	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	ip, #1	@ tmp196,
	str	ip, [r6, #132]	@ tmp196, s_SmIIS.SCDState
	str	r0, [r6, #128]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #136]	@, s_SmIIS.LastProcessTime
	b	.L620	@
.L627:
	bl	ProcessScdReturn	@
	b	.L621	@
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r5, #0	@, tmp144
	moveq	r5, #1	@, tmp144
	mvneq	r0, #0	@ D.34758,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #:lower16:73732	@ tmp145,
	movt	r6, #:upper16:73732	@ tmp145,
	movw	r3, #:lower16:73736	@ tmp154,
	movt	r3, #:upper16:73736	@ tmp154,
	ldr	r2, [r4, r6]	@ D.34759, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.34759,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.34758,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	lr, r2, r2, asl #3	@, tmp158, D.34759, D.34759,
	mov	r2, #72	@,
	add	r0, r4, lr, asl #3	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.34758, tmp144
	add	ip, r3, #1	@ tmp167, <variable>.Tail,
	mov	r2, ip, asr #31	@ tmp169, tmp167,
	mov	r2, r2, lsr #22	@ tmp170, tmp169,
	add	r1, ip, r2	@ tmp171, tmp167, tmp170
	mov	r3, r1, asl #22	@ tmp172, tmp171,
	mov	ip, r3, lsr #22	@ tmp172, tmp172,
	rsb	r1, r2, ip	@ tmp174, tmp170, tmp172
	str	r1, [r4, r6]	@ tmp174, <variable>.Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	InsertRawPacket, .-InsertRawPacket
	.align	2
	.global	SM_PushRaw
	.type	SM_PushRaw, %function
SM_PushRaw:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r3, r0, asl #2	@, tmp142, tmp138, SmID,
	cmp	ip, #0	@ <variable>.PhyAddr,
	ldr	r0, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L636	@,
.L634:
	mvn	r0, #0	@,
	bx	lr	@
.L636:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L634	@,
	cmp	r0, #0	@ pSmInstArray,
	beq	.L634	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:.LANCHOR0	@ tmp334,
	movt	r6, #:upper16:.LANCHOR0	@ tmp334,
	.pad #92
	sub	sp, sp, #92	@,,
	add	r3, r6, r0, asl #2	@, tmp159, tmp334, InstID,
	add	r7, sp, #16	@ tmp336,,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	ldr	r4, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r7	@, tmp336
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L656	@,
	ldr	r0, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #18	@ <variable>.Config.VidStd,
	beq	.L656	@,
	ldr	r3, [r4, #84]	@ D.36967, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.36967,
	beq	.L656	@,
	cmp	r3, #2	@ D.36967,
	beq	.L661	@,
.L658:
	add	r2, r6, r5, asl #2	@, tmp344, tmp334, InstID,
	movw	r8, #:lower16:180108	@ tmp341,
	movw	r6, #:lower16:180104	@ tmp340,
	movw	r9, #:lower16:g_TraceBsPeriod	@ tmp346,
	movw	sl, #:lower16:save_str_chan_num	@ tmp347,
	movt	r6, #:upper16:180104	@ tmp340,
	movt	r8, #:upper16:180108	@ tmp341,
	movt	r9, #:upper16:g_TraceBsPeriod	@ tmp346,
	movt	sl, #:upper16:save_str_chan_num	@ tmp347,
	add	r0, r2, #176	@, tmp344,
	movw	r3, #:lower16:180112	@,
	movw	r1, #:lower16:vfmw_save_str_file	@,
	movt	r3, #:upper16:180112	@,
	movt	r1, #:upper16:vfmw_save_str_file	@,
	str	r0, [sp, #8]	@, %sfp
	str	r3, [sp, #4]	@, %sfp
	str	r1, [sp, #12]	@, %sfp
.L660:
	ldr	lr, [r4, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	lr, #0	@ <variable>.Config.ScdLowBufEnable,
	beq	.L647	@,
	mov	r0, r5	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L656	@,
.L647:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L656	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L656	@,
	ldr	r1, [r4, #80]	@ prephitmp.2849, <variable>.Config.LastRawDisContinueCount
	cmn	r1, #1	@ prephitmp.2849,
	ldreq	r1, [sp, #64]	@ prephitmp.2849, RawPacket.discontinue_count
	streq	r1, [r4, #80]	@ prephitmp.2849, <variable>.Config.LastRawDisContinueCount
	ldr	ip, [sp, #64]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	ip, r1	@ RawPacket.discontinue_count, prephitmp.2849
	beq	.L649	@,
	ldr	r3, [r4, #56]	@ D.37056, <variable>.Config.VidStd
	cmp	r3, #3	@ D.37056,
	cmpne	r3, #1	@, D.37056,
	beq	.L662	@,
.L649:
	ldr	lr, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	r2, [sp, #24]	@ RawPacket.Length, RawPacket.Length
	add	fp, r2, lr	@ tmp260, RawPacket.Length, <variable>.TotalRawSize
	str	fp, [r4, r6]	@ tmp260, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, r8]	@ temp.2867, <variable>.LastStatTime
	cmp	r1, #0	@ temp.2867,
	mov	fp, r0	@ ThisTime.2866,
	streq	r0, [r4, r8]	@ ThisTime.2866, <variable>.LastStatTime
	beq	.L651	@,
	rsb	r1, r1, r0	@ TimePeriod.2868, temp.2867, ThisTime.2866
	cmp	r1, #2000	@ TimePeriod.2868,
	bls	.L651	@,
	ldr	r0, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	mov	r0, r0, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r2, #1000	@ tmp272,
	mov	ip, #0	@ tmp275,
	str	fp, [r4, r8]	@ ThisTime.2866, <variable>.LastStatTime
	str	ip, [r4, r6]	@ tmp275, <variable>.TotalRawSize
	ldr	ip, [sp, #4]	@, %sfp
	mul	r3, r2, r0	@ tmp271, tmp272,
	mov	r1, r3, lsr #10	@ tmp273, tmp271,
	str	r1, [r4, ip]	@ tmp273, <variable>.BitRate
.L651:
	ldrd	r0, [sp, #32]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp278,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp278
	cmpeq	r0, r2	@ RawPacket.Pts, tmp278
	beq	.L663	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L656	@,
.L665:
	mov	lr, #1	@ tmp281,
	strb	lr, [r4, #4]	@ tmp281, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L653:
	ldr	r0, [sl, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	bne	.L660	@,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	lr, [r1, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L660	@,
	ldr	fp, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, fp, #10	@ tmp302, eStd,
	cmp	fp, #4	@ eStd,
	cmpne	r3, #3	@, tmp302,
	bls	.L654	@,
	cmp	fp, #14	@ eStd,
	cmpne	fp, #17	@, eStd,
	beq	.L654	@,
	cmp	fp, #8	@ eStd,
	cmpne	fp, #9	@, eStd,
	beq	.L654	@,
	cmp	fp, #5	@ eStd,
	beq	.L654	@,
	cmp	fp, #1	@ eStd,
	bne	.L655	@,
	ldr	r2, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L655	@,
.L654:
	ldr	ip, [sp, #12]	@, %sfp
	add	r0, r7, #8	@, tmp336,
	mov	r1, #4	@,
	ldr	r2, [ip, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
.L655:
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r0, [sp, #20]	@, RawPacket.VirAddr
	ldr	r1, [sp, #24]	@, RawPacket.Length
	ldr	r2, [lr, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L660	@
.L664:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r3, [r9, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #0]	@ tmp289, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp288, tmp289, ThisTime.2875
	cmp	r1, r3	@ tmp288, g_TraceBsPeriod
	ldrhi	r1, [sp, #8]	@, %sfp
	strhi	r0, [r1, #0]	@ ThisTime.2875, last_rec_pos_time
	b	.L653	@
.L663:
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	mvn	r2, #0	@ tmp279,
	mvn	r3, #0	@,
	strd	r2, [sp, #32]	@ tmp279,,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	beq	.L665	@,
.L656:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L661:
	movw	r8, #:lower16:180104	@ tmp163,
	movt	r8, #:upper16:180104	@ tmp163,
	ldr	r2, [r4, #104]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	movw	sl, #:lower16:180108	@ tmp168,
	ldr	r9, [r4, r8]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	sl, #:upper16:180108	@ tmp168,
	add	r1, r2, r9	@ tmp167, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	r1, [r4, r8]	@ tmp167, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, sl]	@ D.36976, <variable>.LastStatTime
	cmp	r3, #0	@ D.36976,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r4, sl]	@ ThisTime, <variable>.LastStatTime
	beq	.L641	@,
	rsb	r1, r3, r0	@ TimePeriod, D.36976, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L641	@,
	ldr	lr, [r4, r8]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movw	fp, #:lower16:180112	@ tmp170,
	movt	fp, #:upper16:180112	@ tmp170,
	mov	r0, lr, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@ tmp179,
	mov	r2, #0	@ tmp182,
	str	r9, [r4, sl]	@ ThisTime, <variable>.LastStatTime
	str	r2, [r4, r8]	@ tmp182, <variable>.TotalRawSize
	mul	r3, r1, r0	@ tmp178, tmp179,
	mov	ip, r3, lsr #10	@ tmp180, tmp178,
	str	ip, [r4, fp]	@ tmp180, <variable>.BitRate
.L641:
	ldrd	r0, [r4, #112]	@ <variable>.Config.DisContinueRawPacket.Pts, pSmInstArray,
	mvn	r2, #0	@ tmp185,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp185
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp185
	beq	.L666	@,
.L642:
	mov	r0, r5	@, InstID
	add	r1, r4, #96	@, pSmInstArray,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L656	@,
	mov	r8, #1	@ tmp188,
	strb	r8, [r4, #4]	@ tmp188, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L667	@,
.L643:
	movw	r2, #:lower16:save_str_chan_num	@ tmp204,
	movt	r2, #:upper16:save_str_chan_num	@ tmp204,
	ldr	r0, [r2, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	beq	.L668	@,
.L644:
	ldr	r8, [r4, #144]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	mov	ip, #0	@ tmp240,
	str	ip, [r4, #84]	@ tmp240, <variable>.Config.DisContinueRawPacketFlag
	str	r8, [r4, #80]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L658	@
.L662:
	mov	r1, r7	@, tmp336
	add	r0, r4, #96	@, pSmInstArray,
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #1	@ tmp255,
	str	r0, [r4, #84]	@ tmp255, <variable>.Config.DisContinueRawPacketFlag
	b	.L656	@
.L666:
	mvn	r2, #0	@ tmp186,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp186, pSmInstArray,
	b	.L642	@
.L668:
	movw	r8, #:lower16:vfmw_save_str_file	@ tmp335,
	movt	r8, #:upper16:vfmw_save_str_file	@ tmp335,
	ldr	lr, [r8, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L644	@,
	ldr	sl, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	sub	r9, sl, #10	@ tmp209, eStd,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	sl, #4	@ eStd,
	cmpne	r9, #3	@, tmp209,
	bls	.L645	@,
	cmp	sl, #14	@ eStd,
	cmpne	sl, #17	@, eStd,
	beq	.L645	@,
	cmp	sl, #8	@ eStd,
	cmpne	sl, #9	@, eStd,
	beq	.L645	@,
	cmp	sl, #5	@ eStd,
	beq	.L645	@,
	cmp	sl, #1	@ eStd,
	beq	.L669	@,
.L646:
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	ldr	r0, [r4, #100]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	ldr	r1, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L644	@
.L667:
	bl	OSAL_GetTimeInMs	@
	add	sl, r6, r5, asl #2	@, tmp193, tmp334, InstID,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp197,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp197,
	ldr	r1, [sl, #176]	@ tmp196, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r9, r1, r0	@ tmp195, tmp196, ThisTime.2861
	cmp	r9, ip	@ tmp195, g_TraceBsPeriod
	strhi	r0, [sl, #176]	@ ThisTime.2861, last_rec_pos_time
	b	.L643	@
.L669:
	ldr	sl, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	sl, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L646	@,
.L645:
	add	r0, r4, #104	@, pSmInstArray,
	mov	r1, #4	@,
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L646	@
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, #0	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp164,
	movw	r5, #:lower16:166252	@ tmp165,
	movt	r4, #:upper16:.LANCHOR0	@ tmp164,
	movt	r5, #:upper16:166252	@ tmp165,
	mov	r0, r3	@ NextInstID.656, tmp140
	str	r3, [sp, #4]	@ tmp140, NextInstID
	b	.L672	@
.L671:
	ldr	r0, [sp, #4]	@ NextInstID.2911, NextInstID
	add	r0, r0, #1	@ NextInstID.656, NextInstID.2911,
	str	r0, [sp, #4]	@ NextInstID.656, NextInstID
	cmp	r0, #0	@ NextInstID.656,
	bgt	.L678	@,
.L672:
	add	r1, r4, r0, asl #2	@, tmp145, tmp164, NextInstID.656,
	ldr	r3, [r1, #116]	@ D.37560, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.37560,
	beq	.L671	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L671	@,
	bl	FillRawData	@
	ldr	r0, [sp, #4]	@ NextInstID.2911, NextInstID
	add	r0, r0, #1	@ NextInstID.656, NextInstID.2911,
	str	r0, [sp, #4]	@ NextInstID.656, NextInstID
	cmp	r0, #0	@ NextInstID.656,
	ble	.L672	@,
.L678:
	ldr	ip, [r4, #132]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L673	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L679	@,
.L676:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L673:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #136]	@ D.37576, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.37576
	strcc	r0, [r4, #136]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L676	@,
	rsb	r1, r3, r0	@ tmp159, D.37576, CurTime
	cmp	r1, #2000	@ tmp159,
	bls	.L676	@,
	bl	ResetSCD	@
	ldr	r0, [r4, #128]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp161,
	str	r2, [r4, #132]	@ tmp161, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L676	@
.L679:
	ldr	lr, [sp, #4]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp155,
	str	r3, [r4, #132]	@ tmp155, s_SmIIS.SCDState
	str	lr, [r4, #128]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #136]	@, s_SmIIS.LastProcessTime
	b	.L676	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp211,
	movt	r2, #:upper16:.LANCHOR0	@ tmp211,
	add	r3, r2, r0, asl #2	@, tmp215, tmp211, ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, [r3, #116]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r4, #0	@ pSmInstArray,
	str	r0, [sp, #24]	@ ChanID, %sfp
	str	r1, [sp, #28]	@ pArgs, %sfp
	mvneq	r0, #0	@ D.37230,
	bne	.L766	@,
.L682:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L766:
	ldr	r1, [sp, #28]	@, %sfp
	movw	r2, #:lower16:166144	@ tmp218,
	movt	r2, #:upper16:166144	@ tmp218,
	ldr	r7, [sp, #28]	@, %sfp
	ldr	fp, [sp, #28]	@, %sfp
	movw	r5, #:lower16:166088	@ tmp222,
	ldrd	r0, [r1]	@,
	movt	r5, #:upper16:166088	@ tmp222,
	add	r8, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	r3, #:lower16:166096	@ tmp221,
	movt	r3, #:upper16:166096	@ tmp221,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	strd	r0, [sp, #16]	@,,
	ldr	r9, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	cmp	r9, #1	@,
	str	r9, [sp, #32]	@, %sfp
	ldrd	r6, [r7, #8]	@,,
	moveq	r9, #3	@ tmp220,
	strd	r6, [sp, #48]	@,,
	ldrd	sl, [fp, #16]	@,,
	strd	sl, [sp, #40]	@,,
	movw	sl, #:lower16:954437177	@ tmp630,
	streq	r9, [r4, r2]	@ tmp220, <variable>.SmPushRaw.PushRawOver
	movw	r9, #:lower16:166092	@ tmp225,
	movt	r9, #:upper16:166092	@ tmp225,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movt	sl, #:upper16:954437177	@ tmp630,
	mov	fp, r3	@ tmp634, tmp221
	ldr	r7, [r4, r9]	@ prephitmp.2927, <variable>.StreamSegArray.Tail
	mov	r5, ip	@ i.2998, <variable>.StreamSegArray.Head
	str	ip, [r4, r3]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
.L756:
	cmp	r5, r7	@ i.2998, prephitmp.2927
	mov	r6, r5, asl #2	@ tmp595, i.2998,
	mov	r1, r5	@, i.2998
	mov	r0, r8	@, pStreamSegArray
	add	r3, r6, r5	@ tmp267, tmp595, i.2998
	beq	.L767	@,
.L684:
	add	r3, r4, r3, asl #4	@, tmp269, pSmInstArray, tmp267,
	movw	ip, #:lower16:73960	@ tmp272,
	add	r2, r3, #73728	@ tmp278, tmp269,
	movt	ip, #:upper16:73960	@ tmp272,
	add	r3, r2, #200	@ tmp270, tmp270,
	add	r2, r2, #232	@ tmp278, tmp278,
	ldrsb	r3, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #1	@ <variable>.SegState,
	bne	.L687	@,
	ldrd	r2, [r2]	@ D.37260, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.37260,
	cmpeq	r2, r0	@ D.37260,
	beq	.L768	@,
	add	r0, r5, #1	@, i.2998,
	str	r0, [sp, #60]	@, %sfp
	ldrd	r0, [sp, #16]	@,,
	cmp	r1, r3	@, D.37260
	cmpeq	r0, r2	@, D.37260
	ldr	r1, [sp, #60]	@, %sfp
	ldr	r0, [sp, #60]	@, %sfp
	smull	r1, r2, sl, r1	@, tmp289, tmp630,
	mov	r3, r0, asr #31	@ tmp292,,
	bls	.L690	@,
	rsb	r3, r3, r2, asr #8	@, i.2998, tmp292, tmp289,
	ldr	r7, [r4, r9]	@ prephitmp.2927, <variable>.StreamSegArray.Tail
	str	r5, [r4, fp]	@ i.2998, <variable>.StreamSegArray.History
	add	r2, r3, r3, asl #3	@, tmp295, i.2998, i.2998,
	sub	r5, r0, r2, asl #7	@ i.2998,, tmp295,
	mov	r0, r8	@, pStreamSegArray
	cmp	r5, r7	@ i.2998, prephitmp.2927
	mov	r6, r5, asl #2	@ tmp595, i.2998,
	mov	r1, r5	@, i.2998
	add	r3, r6, r5	@ tmp267, tmp595, i.2998
	bne	.L684	@,
.L767:
	movw	r0, #:lower16:166088	@ tmp226,
	movt	r0, #:upper16:166088	@ tmp226,
	ldr	r6, [r4, r0]	@ j, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.2998, j
	beq	.L685	@,
	movw	r7, #:lower16:166124	@ tmp612,
	movw	r5, #:lower16:166128	@ tmp614,
	movw	r9, #:lower16:954437177	@ tmp615,
	movw	sl, #:lower16:166092	@ tmp616,
	movt	r7, #:upper16:166124	@ tmp612,
	movt	r5, #:upper16:166128	@ tmp614,
	movt	r9, #:upper16:954437177	@ tmp615,
	movt	sl, #:upper16:166092	@ tmp616,
	mov	fp, #2	@ tmp611,
.L759:
	add	ip, r6, r6, asl #2	@, tmp230, j, j,
	mov	r1, r6	@, j
	add	r6, r6, #1	@ D.37255, j,
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp232, pSmInstArray, tmp230,
	add	r3, r2, #73728	@ tmp243, tmp232,
	add	r2, r3, #200	@ tmp233, tmp233,
	add	lr, r3, #208	@ tmp243, tmp243,
	strb	fp, [r2, #4]	@ tmp12, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r3, r2	@ D.37249, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, ip, #1	@ D.37251, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp251, D.37249
	bic	lr, ip, ip, asr #31	@ tmp253, D.37251
	str	r3, [r4, r7]	@ tmp251, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r5]	@ tmp253, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp254, tmp615, D.37255
	mov	r2, r6, asr #31	@ tmp257, D.37255,
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r3, r2, r1, asr #8	@, j, tmp257, tmp254,
	add	r1, r3, r3, asl #3	@, tmp260, j, j,
	sub	r6, r6, r1, asl #7	@ j, D.37255, tmp260,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L759	@,
.L685:
	mov	r1, #0	@,
	ldr	r0, [sp, #24]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	movw	r3, #:lower16:73896	@ tmp408,
	movw	r0, #:lower16:73900	@ tmp409,
	movt	r3, #:upper16:73896	@ tmp408,
	movt	r0, #:upper16:73900	@ tmp409,
	add	r1, r4, #168	@, pSmInstArray,
	str	r1, [sp, #60]	@, %sfp
	movw	r7, #:lower16:73896	@ tmp412,
	ldr	r1, [r4, r3]	@ D.37289, <variable>.RawPacketArray.Head
	movt	r7, #:upper16:73896	@ tmp412,
	ldr	r9, [r4, r0]	@ D.37290, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:73904	@ tmp411,
	movt	r2, #:upper16:73904	@ tmp411,
	ldr	r3, [r4, r7]	@ i, <variable>.RawPacketArray.Head
	cmp	r1, r9	@ D.37289, D.37290
	mvn	r6, #0	@ tmp607,
	addgt	r9, r9, #1024	@ tmp410, D.37290,
	mvn	r7, #0	@,
	rsb	fp, r1, r9	@ iftmp.630, D.37289, tmp410
	movw	r9, #:lower16:73900	@ tmp413,
	movt	r9, #:upper16:73900	@ tmp413,
	str	r1, [r4, r2]	@ D.37289, <variable>.RawPacketArray.History
	ldr	ip, [r4, r9]	@ prephitmp.2932, <variable>.RawPacketArray.Tail
	str	fp, [sp, #12]	@ iftmp.630, %sfp
.L757:
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	cmp	r3, ip	@ i, prephitmp.2932
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	beq	.L769	@,
.L701:
	ldrd	r0, [r2, #184]	@ temp.2977, tmp423,
	add	r8, r2, #184	@ tmp424, tmp423,
	cmp	r1, r7	@ temp.2977, tmp607
	cmpeq	r0, r6	@ temp.2977, tmp607
	beq	.L770	@,
	ldrd	sl, [sp, #16]	@,,
	add	r2, r3, #1	@ temp.2979, i,
	cmp	fp, r1	@, temp.2977
	cmpeq	sl, r0	@, temp.2977
	mov	r5, r2, asr #31	@ tmp433, temp.2979,
	bls	.L708	@,
	mov	r5, r5, lsr #22	@ tmp434, tmp433,
	movw	ip, #:lower16:73904	@,
	add	lr, r2, r5	@ tmp435, temp.2979, tmp434
	movt	ip, #:upper16:73904	@,
	mov	r0, lr, asl #22	@ tmp436, tmp435,
	str	r3, [r4, ip]	@ i, <variable>.RawPacketArray.History
	ldr	ip, [r4, r9]	@ prephitmp.2932, <variable>.RawPacketArray.Tail
	mov	r2, r0, lsr #22	@ tmp436, tmp436,
	rsb	r3, r5, r2	@ i, tmp434, tmp436
	cmp	r3, ip	@ i, prephitmp.2932
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	bne	.L701	@,
.L769:
	movw	ip, #:lower16:73896	@ tmp414,
	movt	ip, #:upper16:73896	@ tmp414,
	ldr	fp, [sp, #12]	@ iftmp.630, %sfp
	ldr	r2, [r4, ip]	@ temp.2955, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.2955
	rsblt	r1, r2, #1024	@ tmp415, temp.2955,
	rsbge	r1, r2, r3	@ DelNum.2951, temp.2955, i
	addlt	r1, r1, r3	@ DelNum.2951, tmp415, i
	cmp	r1, #0	@ DelNum.2951,
	movweq	r3, #:lower16:73904	@ tmp416,
	movteq	r3, #:upper16:73904	@ tmp416,
	streq	r2, [r4, r3]	@ temp.2955, <variable>.RawPacketArray.History
	bne	.L771	@,
.L705:
	ldrd	r0, [sp, #40]	@,,
	mov	r2, fp	@ RawNumInVfmw, iftmp.630
	mov	r3, r2, asr #31	@ RawNumInVfmw
	cmp	r1, r3	@, RawNumInVfmw
	cmpeq	r0, r2	@, RawNumInVfmw
	bhi	.L772	@,
.L721:
	mvn	r0, #1	@ D.37230,
	b	.L682	@
.L687:
	add	r5, r5, #1	@ temp.3028, i.2998,
	bl	ReleaseStreamSeg	@
	ldr	r7, [r4, r9]	@ prephitmp.2927, <variable>.StreamSegArray.Tail
	smull	r3, ip, sl, r5	@, tmp399, tmp630, temp.3028
	mov	r3, r5, asr #31	@ tmp402, temp.3028,
	rsb	r0, r3, ip, asr #8	@, i.2998, tmp402, tmp399,
	add	r6, r0, r0, asl #3	@, tmp405, i.2998, i.2998,
	sub	r5, r5, r6, asl #7	@ i.2998, temp.3028, tmp405,
	b	.L756	@
.L708:
	beq	.L773	@,
	bcs	.L757	@,
	movw	r2, #:lower16:73904	@ tmp458,
	movt	r2, #:upper16:73904	@ tmp458,
	mvn	r6, #0	@ tmp425,
	mov	ip, r8	@ tmp424, tmp424
	ldr	r1, [r4, r2]	@ i.2986, <variable>.RawPacketArray.History
	add	sl, r1, r1, asl #3	@, tmp462, i.2986, i.2986,
	add	r7, r4, sl, asl #3	@, tmp464, pSmInstArray, tmp462,
	ldrd	sl, [r7, #184]	@ prephitmp.2930, tmp464,
	mvn	r7, #0	@,
	cmp	fp, r7	@ prephitmp.2930, tmp425
	cmpeq	sl, r6	@ prephitmp.2930, tmp425
	beq	.L762	@,
	ldrd	r8, [sp, #16]	@,,
	cmp	r9, fp	@, prephitmp.2930
	cmpeq	r8, sl	@, prephitmp.2930
	bls	.L716	@,
	ldrd	r6, [sp, #48]	@,,
	subs	r8, r8, sl	@,, prephitmp.2930
	sbc	r9, r9, fp	@,, prephitmp.2930
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bcs	.L716	@,
.L762:
	str	r3, [r4, r2]	@ i, <variable>.RawPacketArray.History
	ldrd	sl, [ip]	@ prephitmp.2930, <variable>.Pts
.L715:
	movw	r2, #:lower16:73896	@ tmp484,
	movt	r2, #:upper16:73896	@ tmp484,
	ldr	r0, [r4, r2]	@ temp.2988, <variable>.RawPacketArray.Head
	cmp	r3, r0	@ i, temp.2988
	rsblt	r0, r0, #1024	@ tmp485, temp.2988,
	rsbge	r3, r0, r3	@ DelNum.2952, temp.2988, i
	addlt	r3, r0, r3	@ DelNum.2952, tmp485, i
	cmp	r3, #0	@ DelNum.2952,
	beq	.L719	@,
	movw	r1, #:lower16:166136	@ tmp486,
	movt	r1, #:upper16:166136	@ tmp486,
	ldr	r7, [sp, #32]	@, %sfp
	ldr	r5, [r4, r1]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.2952, <variable>.SmPushRaw.PushRawNum
	cmple	r7, #1	@,,
	movne	r5, #0	@, tmp494
	moveq	r5, #1	@, tmp494
	bne	.L720	@,
.L719:
	ldr	r8, [sp, #28]	@, %sfp
	movw	r9, #:lower16:73896	@ tmp496,
	movt	r9, #:upper16:73896	@ tmp496,
	movw	r3, #:lower16:73904	@ tmp495,
	movw	lr, #:lower16:166144	@ tmp498,
	movt	r3, #:upper16:73904	@ tmp495,
	strd	sl, [r8]	@ prephitmp.2930,
	movt	lr, #:upper16:166144	@ tmp498,
	ldr	ip, [r4, r9]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.37230,
	ldr	r9, [sp, #32]	@, %sfp
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r9, [r4, lr]	@, <variable>.SmPushRaw.PushRawOver
	b	.L682	@
.L690:
	beq	.L774	@,
	bcs	.L756	@,
	movw	r3, #:lower16:166096	@ tmp342,
	movt	r3, #:upper16:166096	@ tmp342,
	mvn	r7, #0	@,
	ldr	r2, [r4, r3]	@ i.3015, <variable>.StreamSegArray.History
	add	r6, r2, r2, asl #2	@, tmp346, i.3015, i.3015,
	add	r1, r4, r6, asl #4	@, tmp348, pSmInstArray, tmp346,
	mvn	r6, #0	@ tmp279,
	ldrd	r0, [r1, ip]	@ D.37274, tmp348, tmp272
	cmp	r1, r7	@ D.37274, tmp279
	cmpeq	r0, r6	@ D.37274, tmp279
	beq	.L760	@,
	ldrd	r6, [sp, #16]	@,,
	cmp	r7, r1	@, D.37274
	cmpeq	r6, r0	@, D.37274
	bls	.L696	@,
	ldrd	sl, [sp, #48]	@,,
	subs	r0, r6, r0	@ tmp352,, D.37274
	sbc	r1, r7, r1	@ tmp352,, D.37274
	cmp	fp, r1	@, tmp352
	cmpeq	sl, r0	@, tmp352
	bcc	.L760	@,
.L696:
	mov	r5, r2	@ i.2998, i.3015
.L695:
	movw	r0, #:lower16:166088	@ tmp354,
	movt	r0, #:upper16:166088	@ tmp354,
	ldr	r6, [r4, r0]	@ j.2999, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.2998, j.2999
	moveq	r2, r5	@ j.3001, i.2998
	beq	.L698	@,
	movw	sl, #:lower16:166124	@ tmp625,
	movw	r7, #:lower16:166128	@ tmp627,
	movw	fp, #:lower16:954437177	@ tmp628,
	movw	r9, #:lower16:166096	@ tmp629,
	movt	sl, #:upper16:166124	@ tmp625,
	movt	r7, #:upper16:166128	@ tmp627,
	movt	fp, #:upper16:954437177	@ tmp628,
	movt	r9, #:upper16:166096	@ tmp629,
	mov	r5, #2	@ tmp624,
.L749:
	add	ip, r6, r6, asl #2	@, tmp358, j.2999, j.2999,
	mov	r1, r6	@, j.2999
	add	r6, r6, #1	@ temp.3026, j.2999,
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp360, pSmInstArray, tmp358,
	add	r3, lr, #73728	@ tmp371, tmp360,
	add	ip, r3, #200	@ tmp361, tmp361,
	add	lr, r3, #208	@ tmp371, tmp371,
	strb	r5, [ip, #4]	@ tmp624, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	ip, [r4, r7]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	r2, [r4, sl]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	rsb	lr, r3, r2	@ temp.3021, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	r2, ip, #1	@ temp.3023, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp379, temp.3021
	bic	lr, r2, r2, asr #31	@ tmp381, temp.3023
	str	r3, [r4, sl]	@ tmp379, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r7]	@ tmp381, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	ip, r1, fp, r6	@, tmp382, tmp628, temp.3026
	mov	r0, r6, asr #31	@ tmp385, temp.3026,
	ldr	r2, [r4, r9]	@ j.3001, <variable>.StreamSegArray.History
	rsb	ip, r0, r1, asr #8	@, j.2999, tmp385, tmp382,
	add	r3, ip, ip, asl #3	@, tmp388, j.2999, j.2999,
	sub	r6, r6, r3, asl #7	@ j.2999, temp.3026, tmp388,
	cmp	r2, r6	@ j.3001, j.2999
	bne	.L749	@,
.L698:
	add	r2, r2, r2, asl #2	@, tmp394, j.3001, j.3001,
	movw	r3, #:lower16:73960	@ tmp391,
	movt	r3, #:upper16:73960	@ tmp391,
	ldr	r1, [sp, #28]	@, %sfp
	add	r4, r4, r2, asl #4	@, tmp396, pSmInstArray, tmp394,
	mov	r0, #0	@ D.37230,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp391, tmp396
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L682	@
.L770:
	add	r3, r3, #1	@ temp.2978, i,
	mov	fp, r3, asr #31	@ tmp426, temp.2978,
	mov	r2, fp, lsr #22	@ tmp427, tmp426,
	add	lr, r3, r2	@ tmp428, temp.2978, tmp427
	mov	r0, lr, asl #22	@ tmp429, tmp428,
	mov	fp, r0, lsr #22	@ tmp429, tmp429,
	rsb	r3, r2, fp	@ i, tmp427, tmp429
	b	.L757	@
.L768:
	add	r5, r5, #1	@ temp.2997, i.2998,
	smull	r1, ip, sl, r5	@, tmp280, tmp630, temp.2997
	mov	r1, r5, asr #31	@ tmp283, temp.2997,
	rsb	r6, r1, ip, asr #8	@, i.2998, tmp283, tmp280,
	add	r0, r6, r6, asl #3	@, tmp286, i.2998, i.2998,
	sub	r5, r5, r0, asl #7	@ i.2998, temp.2997, tmp286,
	b	.L756	@
.L771:
	movw	r3, #:lower16:73904	@ tmp417,
	movt	r3, #:upper16:73904	@ tmp417,
	ldr	r0, [sp, #60]	@, %sfp
	str	r2, [r4, r3]	@ temp.2955, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L705	@
.L760:
	str	r5, [r4, r3]	@ i.2998, <variable>.StreamSegArray.History
	b	.L695	@
.L772:
	subs	r2, r0, r2	@ RawNumToSeek,, RawNumInVfmw
	sbc	r3, r1, r3	@ RawNumToSeek,, RawNumInVfmw
	mov	lr, #0	@,
	movw	r0, #1023	@ tmp503,
	and	r1, lr, r3	@,, RawNumToSeek
	and	r0, r0, r2	@ tmp502, tmp503, RawNumToSeek
	orrs	r6, r0, r1	@, tmp502
	mov	r1, r2, lsr #10	@ tmp578, RawNumToSeek,
	orr	ip, r1, r3, asl #22	@, tmp641, tmp578, RawNumToSeek,
	addne	ip, ip, #1	@ SeekTime, tmp641,
	add	r6, ip, #1	@, SeekTime,
	str	r6, [sp, #40]	@, %sfp
	cmp	r6, #0	@,
	ble	.L721	@,
	movw	r7, #:lower16:73904	@ tmp600,
	movw	fp, #:lower16:73896	@ tmp601,
	movw	sl, #:lower16:73900	@ tmp602,
	movt	r7, #:upper16:73904	@ tmp600,
	movt	fp, #:upper16:73896	@ tmp601,
	movt	sl, #:upper16:73900	@ tmp602,
	mvn	r8, #0	@ tmp603,
	mvn	r9, #0	@,
	mov	r5, #0	@,
	str	r5, [sp, #12]	@, %sfp
.L742:
	mov	r1, #0	@,
	ldr	r0, [sp, #24]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [sp, #24]	@, %sfp
	bl	FillRawData	@
	ldr	r2, [r4, fp]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	ip, r7	@ tmp600, tmp600
	ldr	r5, [r4, sl]	@ prephitmp.2936, <variable>.RawPacketArray.Tail
	mov	r3, r2	@ i.2954, <variable>.RawPacketArray.Head
	str	r2, [r4, r7]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	stmib	sp, {sl, fp}	@ phole stm
.L758:
	add	fp, r3, r3, asl #3	@, tmp522, i.2954, i.2954,
	cmp	r3, r5	@ i.2954, prephitmp.2936
	add	r2, r4, fp, asl #3	@, tmp524, pSmInstArray, tmp522,
	beq	.L775	@,
.L724:
	ldrd	r0, [r2, #184]	@, tmp524,
	cmp	r1, r9	@, tmp603
	cmpeq	r0, r8	@, tmp603
	strd	r0, [sp, #32]	@,,
	beq	.L776	@,
	ldrd	r6, [sp, #16]	@,,
	add	r1, r3, #1	@ temp.2963, i.2954,
	ldrd	sl, [sp, #32]	@,,
	mov	r0, r1, asr #31	@ tmp534, temp.2963,
	cmp	r7, fp	@,
	cmpeq	r6, sl	@,
	bls	.L731	@,
	mov	r7, r0, lsr #22	@ tmp535, tmp534,
	str	r3, [r4, ip]	@ i.2954, <variable>.RawPacketArray.History
	add	r3, r1, r7	@ tmp536, temp.2963, tmp535
	ldr	lr, [sp, #4]	@, %sfp
	mov	sl, r3, asl #22	@ tmp537, tmp536,
	ldr	r5, [r4, lr]	@ prephitmp.2936, <variable>.RawPacketArray.Tail
	mov	fp, sl, lsr #22	@ tmp537, tmp537,
	rsb	r3, r7, fp	@ i.2954, tmp535, tmp537
	cmp	r3, r5	@ i.2954, prephitmp.2936
	add	fp, r3, r3, asl #3	@, tmp522, i.2954, i.2954,
	add	r2, r4, fp, asl #3	@, tmp524, pSmInstArray, tmp522,
	bne	.L724	@,
.L775:
	ldr	fp, [sp, #8]	@ tmp601, %sfp
	mov	r7, ip	@ tmp600, tmp600
	ldr	sl, [sp, #4]	@ tmp602, %sfp
	ldr	r2, [r4, fp]	@ temp.2959, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.2954, temp.2959
	rsblt	r1, r2, #1024	@ tmp516, temp.2959,
	rsbge	r1, r2, r3	@ DelNum, temp.2959, i.2954
	addlt	r1, r3, r1	@ DelNum, i.2954, tmp516
	cmp	r1, #0	@ DelNum,
	streq	r2, [r4, ip]	@ temp.2959, <variable>.RawPacketArray.History
	bne	.L777	@,
.L728:
	ldr	r2, [sp, #12]	@, %sfp
	ldr	ip, [sp, #40]	@, %sfp
	add	r3, r2, #1	@,,
	str	r3, [sp, #12]	@, %sfp
	cmp	r3, ip	@,
	blt	.L742	@,
	mvn	r0, #1	@ D.37230,
	b	.L682	@
.L731:
	beq	.L778	@,
	bcs	.L758	@,
	movw	r1, #:lower16:73904	@ tmp549,
	movt	r1, #:upper16:73904	@ tmp549,
	mov	r8, #72	@ tmp552,
	mvn	r7, #0	@,
	ldr	ip, [r4, r1]	@ i.2968, <variable>.RawPacketArray.History
	mla	r6, r8, ip, r4	@ tmp553, tmp552, i.2968, pSmInstArray
	ldrd	r8, [r6, #184]	@ prephitmp.2934, tmp553,
	mvn	r6, #0	@ tmp526,
	cmp	r9, r7	@ prephitmp.2934, tmp526
	cmpeq	r8, r6	@ prephitmp.2934, tmp526
	beq	.L763	@,
	ldrd	sl, [sp, #16]	@,,
	cmp	fp, r9	@, prephitmp.2934
	cmpeq	sl, r8	@, prephitmp.2934
	bls	.L738	@,
	mov	r6, sl	@ tmp562,
	mov	r7, fp	@,
	ldrd	sl, [sp, #48]	@,,
	subs	r6, r6, r8	@ tmp562, tmp562, prephitmp.2934
	sbc	r7, r7, r9	@ tmp562, tmp562, prephitmp.2934
	cmp	fp, r7	@, tmp562
	cmpeq	sl, r6	@, tmp562
	bcs	.L738	@,
.L763:
	str	r3, [r4, r1]	@ i.2954, <variable>.RawPacketArray.History
	ldrd	r8, [r2, #184]	@ prephitmp.2934, tmp524,
.L737:
	movw	r1, #:lower16:73896	@ tmp569,
	movt	r1, #:upper16:73896	@ tmp569,
	ldr	r0, [r4, r1]	@ temp.2969, <variable>.RawPacketArray.Head
	cmp	r3, r0	@ i.2954, temp.2969
	rsblt	r0, r0, #1024	@ tmp570, temp.2969,
	rsbge	r3, r0, r3	@ DelNum.2950, temp.2969, i.2954
	addlt	r3, r0, r3	@ DelNum.2950, tmp570, i.2954
	cmp	r3, #0	@ DelNum.2950,
	bne	.L741	@,
	ldr	fp, [sp, #28]	@, %sfp
	movw	lr, #:lower16:73896	@ tmp572,
	movt	lr, #:upper16:73896	@ tmp572,
	movw	r2, #:lower16:73904	@ tmp571,
	movt	r2, #:upper16:73904	@ tmp571,
	mov	r0, r3	@ D.37230, DelNum.2950
	strd	r8, [fp]	@ prephitmp.2934,
	ldr	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L682	@
.L738:
	mov	r3, ip	@ i.2954, i.2968
	b	.L737	@
.L776:
	add	r0, r3, #1	@ D.37263, i.2954,
	mov	r2, r0, asr #31	@ tmp527, D.37263,
	mov	sl, r2, lsr #22	@ tmp528, tmp527,
	add	lr, r0, sl	@ tmp529, D.37263, tmp528
	mov	r3, lr, asl #22	@ tmp530, tmp529,
	mov	r7, r3, lsr #22	@ tmp530, tmp530,
	rsb	r3, sl, r7	@ i.2954, tmp528, tmp530
	b	.L758	@
.L773:
	movw	lr, #:lower16:73896	@ tmp440,
	movt	lr, #:upper16:73896	@ tmp440,
	ldr	r2, [r4, lr]	@ temp.2980, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.2980
	rsblt	r2, r2, #1024	@ tmp441, temp.2980,
	rsbge	r3, r2, r3	@ DelNum.2953, temp.2980, i
	addlt	r3, r2, r3	@ DelNum.2953, tmp441, i
	cmp	r3, #0	@ DelNum.2953,
	beq	.L712	@,
	movw	r2, #:lower16:166136	@ tmp442,
	movt	r2, #:upper16:166136	@ tmp442,
	ldr	ip, [sp, #32]	@, %sfp
	ldr	r5, [r4, r2]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.2953, <variable>.SmPushRaw.PushRawNum
	cmple	ip, #1	@,,
	movne	r5, #0	@, tmp450
	moveq	r5, #1	@, tmp450
	bne	.L713	@,
.L712:
	ldr	ip, [sp, #28]	@, %sfp
	movw	r6, #:lower16:73896	@ tmp452,
	movt	r6, #:upper16:73896	@ tmp452,
	movw	r3, #:lower16:73904	@ tmp451,
	movw	lr, #:lower16:166144	@ tmp454,
	movt	r3, #:upper16:73904	@ tmp451,
	strd	r0, [ip]	@ temp.2977,
	movt	lr, #:upper16:166144	@ tmp454,
	ldr	r1, [r4, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.37230,
	ldr	r6, [sp, #32]	@, %sfp
	str	r1, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r6, [r4, lr]	@, <variable>.SmPushRaw.PushRawOver
	b	.L682	@
.L774:
	movw	ip, #:lower16:166088	@ tmp298,
	movt	ip, #:upper16:166088	@ tmp298,
	ldr	r7, [r4, ip]	@ j.3002, <variable>.StreamSegArray.Head
	cmp	r5, r7	@ i.2998, j.3002
	beq	.L692	@,
	movw	r9, #:lower16:166124	@ tmp619,
	movw	sl, #:lower16:166128	@ tmp621,
	movw	fp, #:lower16:954437177	@ tmp622,
	movt	r9, #:upper16:166124	@ tmp619,
	movt	sl, #:upper16:166128	@ tmp621,
	movt	fp, #:upper16:954437177	@ tmp622,
.L748:
	add	ip, r7, r7, asl #2	@, tmp302, j.3002, j.3002,
	mov	r1, r7	@, j.3002
	add	r7, r7, #1	@ temp.3013, j.3002,
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp304, pSmInstArray, tmp302,
	mov	ip, #2	@,
	add	r3, r2, #73728	@ tmp315, tmp304,
	add	r2, r3, #200	@ tmp305, tmp305,
	add	lr, r3, #208	@ tmp315, tmp315,
	strb	ip, [r2, #4]	@, <variable>.SegState
	ldr	r2, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	ip, [r4, r9]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	r3, [r4, sl]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r2, ip	@ temp.3008, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, r3, #1	@ temp.3010, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, lr, lr, asr #31	@ tmp323, temp.3008
	bic	lr, ip, ip, asr #31	@ tmp325, temp.3010
	str	r2, [r4, r9]	@ tmp323, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, sl]	@ tmp325, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r2, fp, r7	@, tmp326, tmp622, temp.3013
	mov	r3, r7, asr #31	@ tmp329, temp.3013,
	rsb	r0, r3, r2, asr #8	@, j.3002, tmp329, tmp326,
	add	r1, r0, r0, asl #3	@, tmp332, j.3002, j.3002,
	sub	r7, r7, r1, asl #7	@ j.3002, temp.3013, tmp332,
	cmp	r5, r7	@ i.2998, j.3002
	bne	.L748	@,
.L692:
	add	r5, r6, r5	@ tmp337, tmp595, i.2998
	movw	r3, #:lower16:73960	@ tmp334,
	movt	r3, #:upper16:73960	@ tmp334,
	ldr	r1, [sp, #28]	@, %sfp
	add	r4, r4, r5, asl #4	@, tmp339, pSmInstArray, tmp337,
	mov	r0, #0	@ D.37230,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp334, tmp339
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L682	@
.L716:
	mov	r3, r1	@ i, i.2986
	b	.L715	@
.L713:
	ldr	r7, [sp, #28]	@, %sfp
	movw	lr, #:lower16:73896	@ tmp456,
	movt	lr, #:upper16:73896	@ tmp456,
	movw	r2, #:lower16:73904	@ tmp455,
	strd	r0, [r7]	@ temp.2977,
	ldr	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L765:
	movt	r2, #:upper16:73904	@ tmp499,
	mov	r1, r3	@, DelNum.2952
	ldr	r0, [sp, #60]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, r5	@, tmp494
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@ D.37230, tmp494
	b	.L682	@
.L720:
	ldr	r2, [sp, #28]	@, %sfp
	movw	r0, #:lower16:73896	@ tmp500,
	movt	r0, #:upper16:73896	@ tmp500,
	strd	sl, [r2]	@ prephitmp.2930,
	movw	r2, #:lower16:73904	@ tmp499,
	ldr	ip, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L765	@
.L778:
	movw	r2, #:lower16:73896	@ tmp541,
	movt	r2, #:upper16:73896	@ tmp541,
	ldrd	r0, [sp, #32]	@ D.37304,,
	ldr	ip, [r4, r2]	@ temp.2964, <variable>.RawPacketArray.Head
	cmp	ip, r3	@ temp.2964, i.2954
	rsbgt	ip, ip, #1024	@ tmp542, temp.2964,
	rsble	r3, ip, r3	@ DelNum.2949, temp.2964, i.2954
	addgt	r3, ip, r3	@ DelNum.2949, tmp542, i.2954
	cmp	r3, #0	@ DelNum.2949,
	bne	.L735	@,
	ldr	r2, [sp, #28]	@, %sfp
	movw	ip, #:lower16:73896	@ tmp544,
	movt	ip, #:upper16:73896	@ tmp544,
	movw	lr, #:lower16:73904	@ tmp543,
	movt	lr, #:upper16:73904	@ tmp543,
	strd	r0, [r2]	@ D.37304,
	mov	r0, r3	@ D.37230, DelNum.2949
	ldr	r1, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	r1, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L682	@
.L777:
	str	r2, [r4, ip]	@ temp.2959, <variable>.RawPacketArray.History
	ldr	r0, [sp, #60]	@, %sfp
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L728	@
.L741:
	ldr	r1, [sp, #28]	@, %sfp
	movw	r0, #:lower16:73896	@ tmp575,
	movt	r0, #:upper16:73896	@ tmp575,
	movw	r2, #:lower16:73904	@ tmp574,
	strd	r8, [r1]	@ prephitmp.2934,
	ldr	ip, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L764:
	movt	r2, #:upper16:73904	@ tmp574,
	mov	r1, r3	@, DelNum.2950
	ldr	r0, [sp, #60]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.37230,
	b	.L682	@
.L735:
	ldr	r6, [sp, #28]	@, %sfp
	movw	lr, #:lower16:73896	@ tmp547,
	movt	lr, #:upper16:73896	@ tmp547,
	movw	r2, #:lower16:73904	@ tmp546,
	strd	r0, [r6]	@ D.37304,
	ldr	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L764	@
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
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r4, sp, #4	@ tmp148,,
	mov	r5, r0	@ SmID, SmID
	mov	r0, r4	@, tmp148
	bl	OSAL_LockIRQ	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	add	r5, r3, r5, asl #2	@, tmp140, tmp136, SmID,
	ldr	r3, [r5, #116]	@ D.35683, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35683,
	beq	.L783	@,
	ldr	r2, [r3, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L783	@,
	movw	r0, #:lower16:166252	@ tmp143,
	movt	r0, #:upper16:166252	@ tmp143,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp146,
	streq	r1, [r3, r0]	@ tmp146, <variable>.Mode
.L783:
	mov	r0, r4	@, tmp148
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
	str	r3, [r7, #144]	@ tmp153, s_RegPhyBaseAddr
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L795	@,
	mov	r2, sp	@,
	bic	r1, r2, #8128	@ tmp154,,
	bic	r0, r1, #63	@ tmp154, tmp154,
	cmp	r5, #6	@ eVidStd,
	ldr	sl, [r0, #8]	@, <variable>.addr_limit
	str	sl, [sp, #12]	@, %sfp
	str	r4, [r0, #8]	@ tmp151, <variable>.addr_limit
	beq	.L798	@,
	cmp	r5, #0	@ eVidStd,
	movne	r9, r4	@ fp, tmp151
	beq	.L799	@,
.L788:
	mov	fp, sp	@,
	bic	r5, fp, #8128	@ tmp167,,
	bic	sl, r5, #63	@ tmp167, tmp167,
	add	r8, sp, #32	@ tmp200,,
	mov	r4, #0	@ tmp169,
	mov	r2, #0	@ tmp170,
	str	r4, [sl, #8]	@ tmp169, <variable>.addr_limit
	mov	r5, r4	@ calbakBaseaddr, tmp169
	mov	r3, #0	@,
	mov	r4, #10	@ ivtmp.3110,
	strd	r2, [r8, #-16]!	@ tmp170, tmp200,
	b	.L791	@
.L793:
	ldrd	sl, [sp]	@, %sfp
	strd	sl, [sp, #16]	@,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L797	@,
	ldr	ip, [r7, #148]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #28]	@, dataInt
	add	r0, r5, ip	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L791:
	mov	r1, r6	@, data
	mov	r2, #10	@,
	mov	r3, r8	@, tmp200
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	sl, r4	@, ivtmp.3110
	mov	fp, sl, asr #31	@
	strd	sl, [sp]	@, %sfp
	movw	r1, #:lower16:.LC4	@,
	add	r2, sp, #28	@,,
	movt	r1, #:upper16:.LC4	@,
	add	r4, r4, #10	@ ivtmp.3110, ivtmp.3110,
	subs	sl, r0, #0	@ D.34668,
	mov	r0, r6	@, data
	bne	.L793	@,
	mov	r1, sl	@, D.34668
	mov	r0, r9	@, fp
	bl	filp_close	@
	mov	fp, sp	@,
	ldr	ip, [sp, #12]	@, %sfp
	bic	r2, fp, #8128	@ tmp179,,
	ldr	r1, [r7, #156]	@ g_hex_len, g_hex_len
	bic	r3, r2, #63	@ tmp179, tmp179,
	ldr	r0, [r7, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	str	ip, [r3, #8]	@, <variable>.addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	mov	r1, r1, lsr #2	@, g_hex_len,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #148]	@, g_hex_base_addr
	add	r0, r2, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, sl	@, D.34668
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r7, #144]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L794:
	movw	r0, #:lower16:269730052	@,
	movt	r0, #:upper16:269730052	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L794	@,
.L797:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L795:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L799:
	movw	r0, #:lower16:.LC2	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC2	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L788	@,
	mov	r1, r5	@, eVidStd
	movw	r0, #:lower16:.LC3	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC3	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L789	@
.L798:
	movw	r0, #:lower16:.LC0	@,
	mov	r1, r4	@, tmp151
	movt	r0, #:upper16:.LC0	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L788	@,
	mov	r1, r4	@, tmp151
	movw	r0, #:lower16:.LC1	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC1	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L789:
	cmn	r9, #4096	@ fp,
	bhi	.L797	@,
	b	.L788	@
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
	.type	CSWTCH.663, %object
	.size	CSWTCH.663, 44
CSWTCH.663:
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	4194304
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
	.word	20971520
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
	.size	s_SmIIS, 140
s_SmIIS:
	.space	140
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
	.type	LastEventTime.36044, %object
	.size	LastEventTime.36044, 4
LastEventTime.36044:
	.space	4
	.type	last_rec_pos_time.37409, %object
	.size	last_rec_pos_time.37409, 4
last_rec_pos_time.37409:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.37513, %object
	.size	last_rec_pos_time.37513, 4
last_rec_pos_time.37513:
	.space	4
	.type	last_rec_pos_time.36944, %object
	.size	last_rec_pos_time.36944, 4
last_rec_pos_time.36944:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
