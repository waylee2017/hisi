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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r2, [r3, #236]	@ temp.709, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.709,
	beq	.L2	@,
	add	r2, r2, #168	@ tmp141, temp.709,
	cmp	r2, r0	@ tmp141, pRawArray
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L2:
	ldr	r2, [r3, #240]	@ temp.711, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.711,
	beq	.L4	@,
	add	r1, r2, #168	@ tmp143, temp.711,
	cmp	r1, r0	@ tmp143, pRawArray
	moveq	r0, #1	@ i,
	bxeq	lr	@
.L4:
	ldr	r2, [r3, #244]	@ temp.713, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.713,
	beq	.L5	@,
	add	ip, r2, #168	@ tmp145, temp.713,
	cmp	ip, r0	@ tmp145, pRawArray
	moveq	r0, #2	@ i,
	bxeq	lr	@
.L5:
	ldr	r3, [r3, #248]	@ D.37116, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.37116,
	beq	.L6	@,
	add	r3, r3, #168	@ tmp147, D.37116,
	cmp	r3, r0	@ tmp147, pRawArray
	moveq	r0, #3	@ i,
	bxeq	lr	@
.L6:
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
	cmp	r0, #3	@ SmID,
	bls	.L13	@,
.L10:
	mvn	r0, #3	@ Ret,
	bx	lr	@
.L13:
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp141, tmp137, SmID,
	ldr	r3, [r3, #236]	@ D.37206, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.37206,
	beq	.L10	@,
	movw	ip, #:lower16:73900	@ tmp143,
	movt	ip, #:upper16:73900	@ tmp143,
	movw	r2, #:lower16:73904	@ tmp153,
	movt	r2, #:upper16:73904	@ tmp153,
	ldr	r0, [r3, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r3, r0, #1	@ tmp144, <variable>.RawPacketArray.Tail,
	mov	r2, r3, asr #31	@ tmp147, tmp144,
	mov	r2, r2, lsr #22	@ tmp148, tmp147,
	add	r1, r3, r2	@ tmp149, tmp144, tmp148
	mov	r3, r1, asl #22	@ tmp150, tmp149,
	mov	r1, r3, lsr #22	@ tmp150, tmp150,
	rsb	r3, r2, r1	@ tmp152, tmp148, tmp150
	cmp	r3, ip	@ tmp152, <variable>.RawPacketArray.History
	movne	r0, #0	@ Ret,
	bxne	lr	@
	b	.L10	@
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
	bne	.L19	@,
.L15:
	mvn	r0, #0	@ D.37262,
	bx	lr	@
.L19:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.37263, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.37263, <variable>.Tail
	mvneq	r0, #2	@ D.37262,
	bxeq	lr	@
	add	ip, r2, r2, asl #3	@, tmp146, D.37263, D.37263,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.37262,
	bxlt	lr	@
	b	.L15	@
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
	mvneq	r0, #0	@ D.37282,
	bxeq	lr	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.37282,
	ldrne	r3, [r3, r2]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	strne	r3, [r1, #0]	@ <variable>.FirstPacketOffset,* pOffset
	bx	lr	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
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
	bne	.L29	@,
.L26:
	mvn	r0, #0	@ D.37506,
	bx	lr	@
.L29:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.37507, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.37507,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.37510, <variable>.FirstPacketOffset, D.37507
	str	r3, [r1, #0]	@ D.37510,* pStreamSize
	cmp	r3, #0	@ D.37510,
	movge	r0, #0	@ D.37506,
	bxge	lr	@
	b	.L26	@
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
	mvneq	r0, #0	@ D.37519,
	bxeq	lr	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.37519,
	rsb	r3, r2, ip	@ D.37522, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.37522,* pStreamNum
	cmp	r3, #0	@ D.37522,
	addlt	r3, r3, #1024	@ tmp142, D.37522,
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
	beq	.L43	@,
	cmp	r2, #0	@ pLength,
	beq	.L43	@,
	movw	ip, #:lower16:92196	@ tmp147,
	movt	ip, #:upper16:92196	@ tmp147,
	movw	r4, #:lower16:92192	@ tmp151,
	movt	r4, #:upper16:92192	@ tmp151,
	ldr	r5, [r0, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	str	r5, [r1, #0]	@ <variable>.SegBufWriteAddr,* pAddr
	str	r3, [r2, #0]	@ tmp146,* pLength
	ldr	r1, [r0, ip]	@ temp.878, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.37595, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.878, D.37595
	bgt	.L44	@,
	movw	r3, #:lower16:92188	@ tmp156,
	movt	r3, #:upper16:92188	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.37595,
	ldrge	r3, [r0, r3]	@ prephitmp.867, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.878, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.867, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.867,
.L41:
	cmp	r1, r3	@ Len, prephitmp.867
	strle	r1, [r2, #0]	@ Len,* pLength
.L43:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L44:
	movw	r3, #:lower16:92188	@ tmp152,
	movt	r3, #:upper16:92188	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.867, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.37595, prephitmp.867
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.878, tmp154
	b	.L41	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
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
	mvneq	r0, #0	@ D.37890,
	movne	r0, #0	@ D.37890,
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
	ldr	r0, [r3, #284]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
	ldr	r2, [r3, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp142,
	moveq	r2, #2	@ tmp140,
	strne	r2, [r3, #284]	@ tmp142, s_eScdDrvSleepStage
	streq	r2, [r3, #284]	@ tmp140, s_eScdDrvSleepStage
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
	ldr	r0, [r3, #284]	@, s_eScdDrvSleepStage
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
	ldr	r2, [r3, #284]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp136,
	strne	r2, [r3, #284]	@ tmp136, s_eScdDrvSleepStage
	bx	lr	@
	.fnend
	.size	SCDDRV_ForceSleep, .-SCDDRV_ForceSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	add	r0, r3, r0, asl #2	@, tmp143, tmp139, SmID,
	ldr	r1, [r0, #236]	@ D.38172, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.38172,
	beq	.L65	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L71	@,
.L65:
	mov	r0, #0	@ D.38175,
	bx	lr	@
.L71:
	mov	r0, #0	@ tmp148,
	str	r0, [r1, r2]	@ tmp148, <variable>.Mode
	ldr	r3, [r3, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, r0	@ s_SmIIS.SCDState,
	beq	.L65	@,
	mov	r3, r0	@ i, tmp148
.L66:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L66	@,
	mvn	r0, #6	@ D.38175,
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	bhi	.L73	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	add	r0, r3, r0, asl #2	@, tmp144, tmp140, SmID,
	ldr	r3, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L78	@,
	movw	r4, #:lower16:166252	@ tmp148,
	movt	r4, #:upper16:166252	@ tmp148,
	movw	r0, #:lower16:180116	@ tmp151,
	movt	r0, #:upper16:180116	@ tmp151,
	ldr	r7, [r3, r4]	@ <variable>.Mode, <variable>.Mode
	movw	r2, #:lower16:73900	@ tmp153,
	movw	r6, #:lower16:73896	@ tmp154,
	movt	r2, #:upper16:73900	@ tmp153,
	movt	r6, #:upper16:73896	@ tmp154,
	strb	r7, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	ip, [r3, r0]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	r0, #:lower16:73916	@ tmp158,
	movt	r0, #:upper16:73916	@ tmp158,
	str	ip, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	movw	ip, #:lower16:166092	@ tmp162,
	ldr	r5, [r3, r2]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:73908	@ tmp159,
	ldr	r4, [r3, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movt	r2, #:upper16:73908	@ tmp159,
	movt	ip, #:upper16:166092	@ tmp162,
	rsb	r7, r4, r5	@ D.40314, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r7, [r1, #4]	@ D.40314, <variable>.RawNum
	cmp	r7, #0	@ D.40314,
	movw	r5, #:lower16:166088	@ tmp165,
	addlt	r7, r7, #1024	@ tmp157, D.40314,
	strlt	r7, [r1, #4]	@ tmp157, <variable>.RawNum
	ldr	r6, [r3, r0]	@ D.40324, <variable>.RawPacketArray.RawTotalSize
	movt	r5, #:upper16:166088	@ tmp165,
	movw	r4, #:lower16:954437177	@ tmp169,
	movt	r4, #:upper16:954437177	@ tmp169,
	mov	r0, #0	@ D.38188,
	str	r6, [r1, #12]	@ D.40324, <variable>.TotalRawSize
	ldr	r7, [r3, r2]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	movw	r2, #:lower16:166120	@ tmp178,
	movt	r2, #:upper16:166120	@ tmp178,
	rsb	r6, r7, r6	@ tmp161, <variable>.RawPacketArray.FirstPacketOffset, D.40324
	str	r6, [r1, #12]	@ tmp161, <variable>.TotalRawSize
	ldr	ip, [r3, ip]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r5, [r3, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	ip, ip, #1152	@ tmp163, <variable>.StreamSegArray.Tail,
	rsb	ip, r5, ip	@ tmp166, <variable>.StreamSegArray.Head, tmp163
	smull	r5, r4, r4, ip	@, tmp168, tmp169, tmp166
	mov	r5, ip, asr #31	@ tmp171, tmp166,
	rsb	r4, r5, r4, asr #8	@, tmp172, tmp171, tmp168,
	add	r4, r4, r4, asl #3	@, tmp175, tmp172, tmp172,
	sub	ip, ip, r4, asl #7	@ tmp177, tmp166, tmp175,
	str	ip, [r1, #8]	@ tmp177, <variable>.SegNum
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
.L75:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L78:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.38188,
	bne	.L75	@,
.L73:
	mvn	r0, #0	@ D.38188,
	b	.L75	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
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
	ldr	r3, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bls	.L83	@,
.L80:
	mvn	r0, #0	@ D.38578,
	bx	lr	@
.L83:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L80	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	mov	r0, #0	@ D.38578,
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
	mvneq	r5, #0	@ D.38839,
	beq	.L90	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.38845, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #72]	@ tmp146,
	mov	r5, #0	@ D.38839,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.38845,
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
.L90:
	mov	r0, r5	@, D.38839
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
	mvneq	r0, #0	@ D.38992,
	bxeq	lr	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L99	@,
.L97:
	mvn	r0, #6	@ D.38992,
	bx	lr	@
.L99:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L97	@,
	ldr	ip, [r0, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movls	r0, #0	@ D.38992,
	bxls	lr	@
	b	.L97	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L101	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r3, r0, asl #2	@, tmp141, tmp137, InstID,
	ldr	r2, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L101	@,
	movw	ip, #:lower16:166252	@ tmp143,
	movt	ip, #:upper16:166252	@ tmp143,
	ldr	r1, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	beq	.L101	@,
	ldr	r0, [r2, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	r0, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.39401
	moveq	r0, #1	@, D.39401
	bx	lr	@
.L101:
	mov	r0, #0	@ D.39401,
	bx	lr	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	bls	.L109	@,
.L105:
	mov	r0, #0	@ D.39438,
.L107:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {pc}
.L109:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L105	@,
	ldr	ip, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.39438,
	blt	.L107	@,
	ldr	r0, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L105	@,
	ldr	lr, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.39438
	movle	r0, #1	@, D.39438
	b	.L107	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
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
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
.LFB1672:
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
	ldr	r2, [r4, #12]	@, <variable>.ScdNum
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
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r7, r1	@ pDownMsgVirAddr, pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r8, r2	@ PushRawNum, PushRawNum
	bl	dprint_vfmw	@
	mov	r2, r7	@, pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, DownMsgPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	cmp	r8, #0	@ PushRawNum,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r2, #0	@,
	ldr	r3, [r7, #0]	@,* pDownMsgVirAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	sub	sl, r8, #1	@ tmp188, PushRawNum,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r2, #2	@,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	cmp	r8, #1	@ PushRawNum,
	and	sl, sl, #1	@ tmp190, tmp188,
	mov	r4, #3	@ j,
	mov	r6, #1	@ i,
	add	r5, r7, #12	@ ivtmp.1310, pDownMsgVirAddr,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	sl, #0	@ tmp190,
	beq	.L116	@,
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1310
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r6, #2	@ i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@,
	mov	r2, #4	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@,
	mov	r2, #5	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r7, #24	@ ivtmp.1310, pDownMsgVirAddr,
	mov	r4, #6	@ j,
	ldmlefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L116:
	mov	r2, r4	@, j
	ldr	r3, [r5, #0]	@,* ivtmp.1310
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	add	sl, r4, #3	@ tmp193, j,
	bl	dprint_vfmw	@
	add	r2, r4, #1	@, j,
	ldr	r3, [r5, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	add	r2, r4, #2	@, j,
	ldr	r3, [r5, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	add	r7, r5, #12	@ tmp192, ivtmp.1310,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	add	r6, r6, #1	@ tmp191, i,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #12]	@,
	mov	r2, sl	@, tmp193
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	add	r2, r4, #4	@, j,
	ldr	r3, [r7, #4]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	add	r2, r4, #5	@, j,
	ldr	r3, [r7, #8]	@,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	add	r6, r6, #1	@ i, tmp191,
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	add	r4, r4, #6	@ j, j,
	bl	dprint_vfmw	@
	cmp	r8, r6	@ PushRawNum, i
	add	r5, r5, #24	@ ivtmp.1310, ivtmp.1310,
	bgt	.L116	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bhi	.L130	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r2, r0, asl #2	@, tmp142, tmp138, InstID,
	ldr	ip, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	rsbs	r3, ip, #1	@ tmp151, pSmInstArray
	movcc	r3, #0	@ tmp151
	orrs	r3, r3, r1, lsr #31	@,, tmp151, Flag,
	bne	.L131	@,
	movw	r2, #:lower16:166252	@ tmp153,
	movt	r2, #:upper16:166252	@ tmp153,
	ldr	r3, [ip, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r3, #0	@ <variable>.Mode,
	strne	r1, [ip, #84]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	r3, [ip, #84]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	moveq	r0, #1	@ D.39419,
	movne	r0, #1	@ D.39419,
	b	.L126	@
.L131:
	mov	r3, r1	@, Flag
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC12	@,
	movw	r2, #3708	@,
	movt	r1, #:upper16:.LC12	@,
	str	ip, [sp, #0]	@ pSmInstArray,
	bl	dprint_vfmw	@
.L130:
	mov	r0, #0	@ D.39419,
.L126:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
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
	ldr	r0, [r3, #8]	@ D.37936, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.37936,
	beq	.L133	@,
	blx	r0	@ D.37936
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #284]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L133:
	movw	r2, #1378	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, #0	@ tmp137,
	str	r2, [r0, #284]	@ tmp137, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ StreamID, StreamID
	bne	.L158	@,
.L137:
	mvn	r0, #0	@ Ret,
.L151:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L158:
	sub	r2, r1, #1152	@ tmp147, StreamID,
	movw	r3, #:lower16:-1154	@ tmp149,
	movt	r3, #:upper16:-1154	@ tmp149,
	cmp	r2, r3	@ tmp147, tmp149
	bls	.L137	@,
	cmn	r1, #1	@ StreamID,
	beq	.L159	@,
	movw	r3, #:lower16:92168	@ tmp198,
	movw	r2, #:lower16:92172	@ tmp199,
	movt	r3, #:upper16:92168	@ tmp198,
	movt	r2, #:upper16:92172	@ tmp199,
	ldr	r3, [r4, r3]	@ i.1409, <variable>.Head
	ldr	r0, [r4, r2]	@ D.37847, <variable>.Tail
	cmp	r0, r3	@ D.37847, i.1409
	beq	.L139	@,
	cmp	r1, r3	@ StreamID, i.1409
	movwne	r1, #:lower16:954437177	@ tmp290,
	movtne	r1, #:upper16:954437177	@ tmp290,
	bne	.L153	@,
	b	.L143	@
.L157:
	cmp	r5, r3	@ StreamID, i.1409
	beq	.L143	@,
.L153:
	add	lr, r3, #1	@ D.37856, i.1409,
	umull	ip, r2, r1, lr	@, tmp216, tmp290, D.37856
	mov	ip, r2, lsr #8	@ i.1409, tmp216,
	add	r2, ip, ip, asl #3	@, tmp220, i.1409, i.1409,
	sub	r3, lr, r2, asl #7	@ i.1409, D.37856, tmp220,
	cmp	r0, r3	@ D.37847, i.1409
	bne	.L157	@,
.L139:
	mov	r2, r5	@, StreamID
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r3, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC18	@,
	movt	r3, #:upper16:.LANCHOR1	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ Ret,
	b	.L151	@
.L143:
	add	ip, r5, r5, asl #2	@, tmp202, StreamID, StreamID,
	add	r0, r4, ip, asl #4	@, tmp206, pStreamSegArray, tmp202,
	add	r6, r0, #8	@ tmp207, tmp206,
	ldrsb	r1, [r6, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r1, #2	@ <variable>.SegState,
	bne	.L139	@,
.L142:
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	mov	lr, #0	@ tmp222,
	ldr	r3, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #26	@,
	ldr	r2, [r6, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC16	@,
	strb	lr, [r6, #4]	@ tmp222, <variable>.SegState
	movt	r1, #:upper16:.LC16	@,
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	str	r5, [sp, #4]	@ StreamID,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:92168	@ tmp228,
	movt	r1, #:upper16:92168	@ tmp228,
	ldr	r3, [r4, r1]	@ <variable>.Head, <variable>.Head
	cmp	r3, r5	@ <variable>.Head, StreamID
	beq	.L160	@,
.L146:
	movw	r3, #:lower16:92200	@ tmp262,
	movt	r3, #:upper16:92200	@ tmp262,
	ldr	r2, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r4, r3]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	ip, r2, r1	@ tmp266, <variable>.LenInByte, <variable>.SegTotalSize
	bic	r2, ip, ip, asr #31	@ tmp267, tmp266
	str	r2, [r4, r3]	@ tmp267, <variable>.SegTotalSize
	b	.L151	@
.L159:
	movw	ip, #:lower16:92168	@ tmp150,
	movw	r1, #:lower16:92172	@ tmp151,
	movt	ip, #:upper16:92168	@ tmp150,
	movt	r1, #:upper16:92172	@ tmp151,
	ldr	sl, [r4, ip]	@ D.37828, <variable>.Head
	ldr	r0, [r4, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	sl, r0	@ D.37828, <variable>.Tail
	beq	.L139	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC14	@,
	mov	r2, sl	@, D.37828
	movt	r1, #:upper16:.LC14	@,
	mov	r9, sl, asl #2	@ tmp271, D.37828,
	bl	dprint_vfmw	@
	add	r3, r9, sl	@ tmp156, tmp271, D.37828
	mov	r5, sl	@ StreamID, D.37828
	add	r8, r3, #1	@ tmp157, tmp156,
	add	r8, r4, r8, asl #4	@, tmp160, pStreamSegArray, tmp157,
	ldr	r6, [r8, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #0	@ <variable>.LenInByte,
	beq	.L140	@,
	mov	lr, r3, asl #1	@ tmp282, tmp156,
	add	r8, r8, #4	@ tmp289, tmp160,
	add	r7, lr, #1	@ tmp283, tmp282,
	mov	r6, #0	@ i.1407,
.L141:
	ldr	ip, [r4, r7, asl #3]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	ldrb	r2, [ip, r6]	@ zero_extendqisi2	@,* i.1407
	add	r6, r6, #1	@ i.1407, i.1407,
	bl	dprint_vfmw	@
	ldr	r0, [r8, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r6, #15	@ i.1407,
	movhi	r2, #0	@,
	movls	r2, #1	@,
	cmp	r0, r6	@ <variable>.LenInByte, i.1407
	movls	r2, #0	@,,
	cmp	r2, #0	@ tmp190,
	bne	.L141	@,
.L140:
	add	lr, r9, sl	@ tmp193, tmp271, D.37828
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC11	@,
	add	r6, r4, lr, asl #4	@, tmp196, pStreamSegArray, tmp193,
	add	r6, r6, #8	@ pSeg, tmp196,
	bl	dprint_vfmw	@
	b	.L142	@
.L160:
	movw	r8, #:lower16:92172	@ tmp279,
	movw	r7, #:lower16:954437177	@ tmp280,
	movt	r8, #:upper16:92172	@ tmp279,
	movt	r7, #:upper16:954437177	@ tmp280,
	movw	sl, #1151	@ tmp275,
	b	.L150	@
.L147:
	ldr	r0, [r4, r8]	@ temp.1412, <variable>.Tail
	add	r3, r5, #1	@ temp.1415, i,
	add	r1, r5, r5, asl #2	@, tmp241, i, i,
	cmp	r0, r5	@ temp.1412, i
	umull	ip, r2, r7, r3	@, tmp256, tmp280, temp.1415
	add	ip, r4, r1, asl #4	@, tmp245, pStreamSegArray, tmp241,
	beq	.L161	@,
	cmp	r5, sl	@ i, tmp275
	mov	r2, r2, lsr #8	@ i, tmp256,
	bhi	.L149	@,
	ldrsb	r0, [ip, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #0	@ <variable>.SegState,
	bne	.L162	@,
.L149:
	add	r0, r2, r2, asl #3	@, tmp260, i, i,
	sub	r5, r3, r0, asl #7	@ i, temp.1415, tmp260,
.L150:
	cmp	r5, sl	@ i, tmp275
	bls	.L147	@,
	movw	r1, #:lower16:.LC17	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC17	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L147	@
.L161:
	movw	ip, #:lower16:92196	@ tmp236,
	movt	ip, #:upper16:92196	@ tmp236,
	movw	r2, #:lower16:92168	@ tmp234,
	movw	r3, #:lower16:92192	@ tmp235,
	ldr	r1, [r4, ip]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:92168	@ tmp234,
	movt	r3, #:upper16:92192	@ tmp235,
	str	r5, [r4, r2]	@ i, <variable>.Head
	str	r1, [r4, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L146	@
.L162:
	add	r1, r1, #1	@ tmp254, tmp241,
	movw	ip, #:lower16:92168	@ tmp249,
	movt	ip, #:upper16:92168	@ tmp249,
	movw	r3, #:lower16:92192	@ tmp250,
	movt	r3, #:upper16:92192	@ tmp250,
	str	r5, [r4, ip]	@ i, <variable>.Head
	ldr	r2, [r4, r1, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r4, r3]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L146	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
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
	ldr	r0, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L167	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L167:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
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
	beq	.L182	@,
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	cmpne	r3, #3	@, <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r2, #:lower16:217472	@ tmp158,
	movt	r2, #:upper16:217472	@ tmp158,
	ldr	r1, [r4, r2]	@ D.37623, <variable>.s32FindStartCodeCnt
	cmp	r1, #199	@ D.37623,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp159,* pSegBufVirAddr
	cmp	ip, #0	@ tmp159,
	bne	.L171	@,
	ldrb	r6, [r0, #1]	@ zero_extendqisi2	@ tmp160,
	cmp	r6, #0	@ tmp160,
	bne	.L171	@,
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ tmp161,
	cmp	r7, #1	@ tmp161,
	beq	.L183	@,
.L171:
	movw	r2, #:lower16:217480	@ tmp256,
	movw	r0, #:lower16:217484	@ tmp259,
	movt	r2, #:upper16:217480	@ tmp256,
	movt	r0, #:upper16:217484	@ tmp259,
	movw	r6, #:lower16:217472	@ tmp253,
	movw	r7, #:lower16:217476	@ tmp255,
	ldr	sl, [r4, r2]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	movt	r6, #:upper16:217472	@ tmp253,
	ldr	r8, [r4, r0]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	movt	r7, #:upper16:217476	@ tmp255,
	mov	ip, #0	@ tmp262,
	add	r1, r1, #1	@ tmp254, D.37623,
	str	ip, [r4, r0]	@ tmp262, <variable>.s32CurrentStartCode
	str	sl, [r4, r7]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r8, [r4, r2]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	str	r1, [r4, r6]	@ tmp254, <variable>.s32FindStartCodeCnt
.L174:
	movw	r2, #:lower16:217468	@ tmp222,
	movt	r2, #:upper16:217468	@ tmp222,
	ldr	r1, [r4, r2]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, r1, #1	@ tmp225, <variable>.s32Mpeg2Score,
	str	r0, [r4, r2]	@ tmp225, <variable>.s32Mpeg2Score
.L175:
	movw	r0, #:lower16:217472	@ tmp226,
	movt	r0, #:upper16:217472	@ tmp226,
	ldr	r2, [r4, r0]	@ prephitmp.1463, <variable>.s32FindStartCodeCnt
	cmp	r2, #2	@ prephitmp.1463,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	cmp	ip, #0	@ D.37651,
	beq	.L176	@,
	movw	r0, #:lower16:217484	@ tmp227,
	movw	r1, #:lower16:217480	@ tmp228,
	movt	r0, #:upper16:217484	@ tmp227,
	movt	r1, #:upper16:217480	@ tmp228,
	ldr	r0, [r4, r0]	@ temp.1476, <variable>.s32CurrentStartCode
	ldr	r1, [r4, r1]	@ temp.1477, <variable>.s32LastOneStartCode
	rsb	ip, r1, r0	@ tmp229, temp.1477, temp.1476
	cmp	ip, #1	@ tmp229,
	beq	.L184	@,
.L177:
	cmp	r0, r1	@ temp.1476, temp.1477
	beq	.L185	@,
.L176:
	cmp	r2, #199	@ prephitmp.1463,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r6, #:lower16:217464	@ tmp243,
	movw	r7, #:lower16:217468	@ tmp244,
	movt	r6, #:upper16:217464	@ tmp243,
	movt	r7, #:upper16:217468	@ tmp244,
	ldr	r2, [r4, r6]	@ prephitmp.1488, <variable>.s32H264Score
	ldr	r1, [r4, r7]	@ prephitmp.1487, <variable>.s32Mpeg2Score
	rsb	ip, r1, r2	@ tmp245, prephitmp.1487, prephitmp.1488
	cmp	ip, #49	@ tmp245,
	ble	.L180	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L186	@,
.L180:
	rsb	r2, r2, r1	@ tmp250, prephitmp.1488, prephitmp.1487
	cmp	r2, #49	@ tmp250,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r2, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp252,
	movt	r0, #:upper16:g_event_report	@ tmp252,
	ldr	r3, [r0, #0]	@ g_event_report.1484, g_event_report
	cmp	r3, #0	@ g_event_report.1484,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #118	@,
	blx	r3	@ g_event_report.1484
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L182:
	mov	r2, r1	@, InstID
	mov	r0, r4	@, pstChan
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L186:
	movw	r3, #:lower16:g_event_report	@ tmp247,
	movt	r3, #:upper16:g_event_report	@ tmp247,
	ldr	r3, [r3, #0]	@ g_event_report.481, g_event_report
	cmp	r3, #0	@ g_event_report.481,
	beq	.L180	@,
	mov	r1, #118	@,
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	blx	r3	@ g_event_report.481
	ldr	r1, [r4, r7]	@ prephitmp.1487, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r6]	@ prephitmp.1488, <variable>.s32H264Score
	b	.L180	@
.L184:
	movw	ip, #:lower16:217476	@ tmp230,
	movt	ip, #:upper16:217476	@ tmp230,
	ldr	ip, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	ip, ip, r1	@ tmp231, <variable>.s32LastTwoStartCode, temp.1477
	cmp	ip, #1	@ tmp231,
	bne	.L177	@,
.L178:
	cmp	r0, #1	@ temp.1476,
	beq	.L176	@,
	cmp	r0, #20	@ temp.1476,
	beq	.L176	@,
	movw	r1, #:lower16:217464	@ tmp235,
	movt	r1, #:upper16:217464	@ tmp235,
	movw	r2, #:lower16:217472	@ tmp242,
	movt	r2, #:upper16:217472	@ tmp242,
	ldr	r0, [r4, r1]	@ temp.1480, <variable>.s32H264Score
	ldr	r2, [r4, r2]	@ prephitmp.1463, <variable>.s32FindStartCodeCnt
	cmp	r0, #0	@ temp.1480,
	subgt	r0, r0, #1	@ tmp237, temp.1480,
	strgt	r0, [r4, r1]	@ tmp237, <variable>.s32H264Score
	movw	r1, #:lower16:217468	@ tmp238,
	movt	r1, #:upper16:217468	@ tmp238,
	ldr	ip, [r4, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, ip, #1	@ tmp241, <variable>.s32Mpeg2Score,
	str	r0, [r4, r1]	@ tmp241, <variable>.s32Mpeg2Score
	b	.L176	@
.L183:
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	movw	r6, #:lower16:217480	@ tmp165,
	movw	r7, #:lower16:217484	@ tmp168,
	movt	r6, #:upper16:217480	@ tmp165,
	movt	r7, #:upper16:217484	@ tmp168,
	and	ip, r0, #31	@ D.37651, u8Data,
	ldr	r9, [r4, r6]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	sub	r8, ip, #1	@ tmp172, D.37651,
	ldr	sl, [r4, r7]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	cmp	r8, #12	@ tmp172,
	movw	r8, #:lower16:217476	@ tmp164,
	movt	r8, #:upper16:217476	@ tmp164,
	add	r1, r1, #1	@ tmp163, D.37623,
	str	ip, [r4, r7]	@ D.37651, <variable>.s32CurrentStartCode
	str	r9, [r4, r8]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r1, [r4, r2]	@ tmp163, <variable>.s32FindStartCodeCnt
	str	sl, [r4, r6]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	bhi	.L187	@,
.L172:
	movw	r2, #:lower16:217464	@ tmp178,
	movt	r2, #:upper16:217464	@ tmp178,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	ldr	r6, [r4, r2]	@ <variable>.s32H264Score, <variable>.s32H264Score
	movne	r1, #0	@, prephitmp.1465
	moveq	r1, #1	@, prephitmp.1465
	add	r6, r6, #1	@ tmp181, <variable>.s32H264Score,
	str	r6, [r4, r2]	@ tmp181, <variable>.s32H264Score
.L173:
	cmp	r1, #0	@ prephitmp.1465,
	bne	.L174	@,
	cmp	r0, #178	@ u8Data,
	cmpne	r0, #179	@, u8Data,
	beq	.L174	@,
	cmp	r0, #180	@ u8Data,
	cmpne	r0, #181	@, u8Data,
	beq	.L174	@,
	cmp	r0, #183	@ u8Data,
	cmpne	r0, #184	@, u8Data,
	beq	.L174	@,
	cmp	r0, #185	@ u8Data,
	cmpne	r0, #186	@, u8Data,
	beq	.L174	@,
	cmp	r0, #187	@ u8Data,
	movne	r1, #0	@, tmp218
	moveq	r1, #1	@, tmp218
	cmp	r0, #184	@ u8Data,
	movls	r0, r1	@, tmp221, tmp218
	orrhi	r0, r1, #1	@,, tmp221, tmp218
	cmp	r0, #0	@ tmp221,
	beq	.L175	@,
	b	.L174	@
.L185:
	movw	ip, #:lower16:217476	@ tmp233,
	movt	ip, #:upper16:217476	@ tmp233,
	ldr	r1, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r0, r1	@ temp.1476, <variable>.s32LastTwoStartCode
	bne	.L176	@,
	b	.L178	@
.L187:
	cmp	ip, #19	@ D.37651,
	beq	.L172	@,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	movne	r1, #0	@, prephitmp.1465
	moveq	r1, #1	@, prephitmp.1465
	cmp	ip, #30	@ D.37651,
	beq	.L172	@,
	cmp	ip, #31	@ D.37651,
	beq	.L172	@,
	b	.L173	@
	.fnend
	.size	CheckStream, .-CheckStream
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
	beq	.L201	@,
.L189:
	mvn	ip, #0	@ D.37415,
.L197:
	mov	r0, ip	@, D.37415
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L201:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L189	@,
	mov	ip, #73728	@ tmp173,
	movw	sl, #:lower16:73732	@ tmp179,
	ldr	ip, [r0, ip]	@ D.37421, <variable>.Head
	movt	sl, #:upper16:73732	@ tmp179,
	movw	r4, #:lower16:73740	@ tmp178,
	movt	r4, #:upper16:73740	@ tmp178,
	ldr	r6, [r0, sl]	@ <variable>.Tail, <variable>.Tail
	mov	r5, ip, asl #3	@ tmp332, D.37421,
	ldr	sl, [r0, r4]	@ D.37423, <variable>.FirstPacketOffset
	add	r8, r5, ip	@ tmp176, tmp332, D.37421
	subs	r6, r6, ip	@ RawNum, <variable>.Tail, D.37421
	add	r5, r5, ip	@ tmp184, tmp332, D.37421
	add	r4, r8, #1	@ tmp177, tmp176,
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	ldr	r8, [r0, r4, asl #3]	@ D.37422, <variable>.Length
	add	ip, r6, ip	@, RawNum, D.37421
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
	ble	.L191	@,
	rsb	r8, sl, r8	@ TotalLen, D.37423, D.37422
	cmp	r1, r8	@ Len, TotalLen
	blt	.L191	@,
	str	r8, [sp, #4]	@ TotalLen, %sfp
	mov	ip, r7	@ pRawPts, pRawPts
	str	r2, [sp, #24]	@ pNum, %sfp
	str	r3, [sp, #28]	@ pOffset, %sfp
	str	r9, [sp, #0]	@ pGopNum, %sfp
	b	.L200	@
.L194:
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
	ble	.L202	@,
	ldr	r7, [sp, #4]	@, %sfp
	cmp	r1, r7	@ Len,
	blt	.L203	@,
.L200:
	add	r4, r4, #1	@ i, i,
	mov	r8, r4, asr #31	@ tmp246, i,
	mov	r5, r8, lsr #22	@ tmp247, tmp246,
	add	r2, r4, r5	@ tmp248, i, tmp247
	mov	r9, r2, asl #22	@ tmp249, tmp248,
	mov	sl, r9, lsr #22	@ tmp249, tmp249,
	ldr	r9, [sp, #4]	@, %sfp
	rsb	r5, r5, sl	@ Index, tmp247, tmp249
	mov	sl, r5, asl #3	@ tmp331, Index,
	add	r3, sl, r5	@ tmp268, tmp331, Index
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
	b	.L194	@
.L202:
	ldr	r8, [sp, #4]	@ TotalLen, %sfp
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
.L193:
	mov	ip, #73728	@ tmp321,
	ldr	ip, [r0, ip]	@ temp.1527, <variable>.Head
	cmp	ip, r4	@ temp.1527, i
	beq	.L191	@,
	add	r5, sl, r5	@ tmp325, tmp331, Index
	rsb	r4, ip, r4	@ tmp328, temp.1527, i
	add	r5, r5, #1	@ tmp326, tmp325,
	mov	ip, #0	@ D.37415,
	ldr	r0, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	str	r4, [r2, #0]	@ tmp328,* pNum
	rsb	r8, r0, r8	@ TotalLen.1529, <variable>.Length, TotalLen
	rsb	r1, r8, r1	@ tmp329, TotalLen.1529, Len
	str	r1, [r3, #0]	@ tmp329,* pOffset
	b	.L197	@
.L203:
	mov	r8, r7	@ TotalLen,
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
	b	.L193	@
.L191:
	mov	ip, #0	@ tmp322,
	str	ip, [r2, #0]	@ tmp322,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L197	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
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
	ldrd	r2, [r4, #24]	@ D.39020, pSegPacket,
	ldrd	r0, [r5]	@ tmp158,* pLastPts
	cmp	r1, r3	@ tmp158, D.39020
	cmpeq	r0, r2	@ tmp158, D.39020
	beq	.L208	@,
	strd	r2, [r5]	@ D.39020,* pLastPts
.L207:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L208:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L207	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movne	r3, #0	@, tmp158
	moveq	r3, #1	@, tmp158
	mov	r9, r1	@ DelNum, DelNum
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	beq	.L233	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp221,
	movt	r1, #:upper16:.LANCHOR0	@ tmp221,
	ldr	r2, [r1, #236]	@ D.40352, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ D.40352,
	beq	.L212	@,
	add	r2, r2, #168	@ tmp160, D.40352,
	cmp	r0, r2	@ pRawStreamArray, tmp160
	moveq	r7, r3	@ SmID, tmp158
	beq	.L213	@,
.L212:
	ldr	r3, [r1, #240]	@ temp.1592, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1592,
	beq	.L214	@,
	add	r3, r3, #168	@ tmp162, temp.1592,
	cmp	r5, r3	@ pRawStreamArray, tmp162
	moveq	r7, #1	@ SmID,
	beq	.L213	@,
.L214:
	ldr	r3, [r1, #244]	@ temp.1594, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1594,
	beq	.L215	@,
	add	r0, r3, #168	@ tmp164, temp.1594,
	cmp	r5, r0	@ pRawStreamArray, tmp164
	moveq	r7, #2	@ SmID,
	beq	.L213	@,
.L215:
	ldr	r3, [r1, #248]	@ temp.1590, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1590,
	beq	.L216	@,
	add	ip, r3, #168	@ tmp166, temp.1590,
	cmp	r5, ip	@ pRawStreamArray, tmp166
	beq	.L217	@,
.L216:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movw	r2, #523	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37304,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L234:
	movw	r1, #:lower16:.LC21	@,
	mov	r3, r9	@, DelNum
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
.L233:
	mvn	r0, #0	@ D.37304,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L217:
	mov	r7, #3	@ SmID,
.L213:
	movw	r3, #:lower16:73732	@ tmp169,
	movt	r3, #:upper16:73732	@ tmp169,
	mov	r2, #73728	@ tmp168,
	ldr	lr, [r5, r3]	@ D.37311, <variable>.Tail
	ldr	r6, [r5, r2]	@ D.37310, <variable>.Head
	cmp	r6, lr	@ D.37310, D.37311
	addgt	lr, lr, #1024	@ tmp170, D.37311,
	rsb	r2, r6, lr	@ PacketNum, D.37310, tmp170
	cmp	r2, r9	@ PacketNum, DelNum
	bcc	.L234	@,
	add	r4, r6, r6, asl #3	@, tmp174, D.37310, D.37310,
	add	r7, r7, #58	@ tmp220, SmID,
	add	r8, r4, #1	@ tmp181, tmp174,
	mov	r0, #26	@,
	add	r7, r1, r7, asl #2	@, tmp226, tmp221, tmp220,
	ldr	r2, [r5, r4, asl #3]	@, <variable>.PhyAddr
	ldr	r3, [r5, r8, asl #3]	@, <variable>.Length
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	movw	r4, #:lower16:73916	@ tmp227,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #4]!	@ D.37326, s_SmIIS.pSmInstArray
	movt	r4, #:upper16:73916	@ tmp227,
	ldr	r0, [r5, r8, asl #3]	@ <variable>.Length, <variable>.Length
	add	ip, r6, #1	@ D.37330, D.37310,
	cmp	r9, #1	@ DelNum,
	ldr	r1, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	sub	sl, r9, #1	@ tmp228, DelNum,
	mov	r6, ip, asl #22	@ j, D.37330,
	and	sl, sl, #1	@ tmp230, tmp228,
	rsb	r2, r0, r1	@ tmp197, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r2, [r3, r4]	@ tmp197, <variable>.RawPacketArray.RawTotalSize
	ldr	r0, [r7, #0]	@ temp.1588, s_SmIIS.pSmInstArray
	mov	r8, #1	@ i,
	mov	r6, r6, lsr #22	@ j, j,
	ldr	ip, [r0, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r1, ip, ip, asr #31	@ tmp207, <variable>.RawPacketArray.RawTotalSize
	str	r1, [r0, r4]	@ tmp207, <variable>.RawPacketArray.RawTotalSize
	bls	.L230	@,
	cmp	sl, #0	@ tmp230,
	beq	.L221	@,
	add	ip, r6, r6, asl #3	@, tmp277, j, j,
	movw	r1, #:lower16:.LC22	@,
	add	sl, ip, #1	@ tmp281, tmp277,
	mov	r0, #26	@,
	ldr	r2, [r5, ip, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC22	@,
	ldr	r3, [r5, sl, asl #3]	@, <variable>.Length
	mov	r8, #2	@ i,
	b	.L232	@
.L221:
	add	lr, r6, r6, asl #3	@, tmp235, j, j,
	mov	r0, #26	@,
	add	sl, lr, #1	@ tmp239, tmp235,
	movw	r1, #:lower16:.LC22	@,
	ldr	r2, [r5, lr, asl #3]	@, <variable>.PhyAddr
	movt	r1, #:upper16:.LC22	@,
	ldr	r3, [r5, sl, asl #3]	@, <variable>.Length
	add	r6, r6, #1	@ D.37330, j,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #0]	@ D.37326, s_SmIIS.pSmInstArray
	ldr	r2, [r5, sl, asl #3]	@ <variable>.Length, <variable>.Length
	mov	r6, r6, asl #22	@ j, D.37330,
	add	r8, r8, #1	@ tmp231, i,
	movw	r1, #:lower16:.LC22	@,
	ldr	ip, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r6, lsr #22	@ j, j,
	movt	r1, #:upper16:.LC22	@,
	add	r8, r8, #1	@ i, tmp231,
	rsb	sl, r2, ip	@ tmp248, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	sl, [r3, r4]	@ tmp248, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r7, #0]	@ temp.1588, s_SmIIS.pSmInstArray
	add	r3, r6, r6, asl #3	@, tmp257, j, j,
	add	sl, r3, #1	@ tmp261, tmp257,
	mov	r0, #26	@,
	ldr	ip, [r2, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	ip, ip, ip, asr #31	@ tmp251, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r2, r4]	@ tmp251, <variable>.RawPacketArray.RawTotalSize
	ldr	r2, [r5, r3, asl #3]	@, <variable>.PhyAddr
	ldr	r3, [r5, sl, asl #3]	@, <variable>.Length
.L232:
	bl	dprint_vfmw	@
	ldr	ip, [r7, #0]	@ D.37326, s_SmIIS.pSmInstArray
	ldr	r3, [r5, sl, asl #3]	@ <variable>.Length, <variable>.Length
	add	r0, r6, #1	@ D.37330, j,
	cmp	r9, r8	@ DelNum, i
	ldr	r1, [ip, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r0, asl #22	@ j, D.37330,
	rsb	r2, r3, r1	@ tmp290, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r2, [ip, r4]	@ tmp290, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r7, #0]	@ temp.1588, s_SmIIS.pSmInstArray
	mov	r6, r6, lsr #22	@ j, j,
	ldr	r0, [r3, r4]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r1, r0, r0, asr #31	@ tmp293, <variable>.RawPacketArray.RawTotalSize
	str	r1, [r3, r4]	@ tmp293, <variable>.RawPacketArray.RawTotalSize
	bhi	.L221	@,
.L230:
	mov	r0, #73728	@ tmp209,
	movw	r3, #:lower16:73740	@ tmp216,
	ldr	r2, [r5, r0]	@ <variable>.Head, <variable>.Head
	movt	r3, #:upper16:73740	@ tmp216,
	mov	r1, #0	@ tmp217,
	add	r9, r9, r2	@ D.37333, DelNum, <variable>.Head
	str	r1, [r5, r3]	@ tmp217, <variable>.FirstPacketOffset
	cmp	r9, #1024	@ D.37333,
	str	r9, [r5, r0]	@ D.37333, <variable>.Head
	subge	r9, r9, #1024	@ tmp215, D.37333,
	strge	r9, [r5, r0]	@ tmp215, <variable>.Head
	mov	r0, r1	@ D.37304, tmp217
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
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
	bne	.L236	@,
	movw	r2, #:lower16:73748	@ tmp151,
	movw	r4, #:lower16:73740	@ tmp152,
	movt	r2, #:upper16:73748	@ tmp151,
	movt	r4, #:upper16:73740	@ tmp152,
	str	r6, [sp, #84]	@ tmp148, DelNum
	str	r6, [sp, #80]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L236	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L245	@,
.L236:
	mvn	r0, #0	@ Ret,
.L239:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L245:
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
	ldr	r2, [r5, ip]	@ D.40370, <variable>.Head
	ldr	r3, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r1, [sp, #80]	@ RawPacketOffSet.474, RawPacketOffSet
	cmp	r2, r3	@ D.40370, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L239	@,
	add	ip, r2, r2, asl #3	@, tmp173, D.40370, D.40370,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	lr, ip, #1	@ tmp174, tmp173,
	add	r2, r1, r0	@ TargetOffset, RawPacketOffSet.474, <variable>.FirstPacketOffset
	ldr	r3, [r5, lr, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r2, r3	@ TargetOffset, <variable>.Length
	strlt	r2, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp148
	blt	.L239	@,
	b	.L236	@
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	add	r0, r3, r0, asl #2	@, tmp140, tmp136, SmID,
	ldr	r5, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L250	@,
	movw	r4, #:lower16:166136	@ tmp143,
	movt	r4, #:upper16:166136	@ tmp143,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r5, #168	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r1, #0	@ tmp146,
	str	r1, [r5, r4]	@ tmp146, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L250:
	mov	r0, r5	@, pSmInstArray
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #802	@,
	movt	r1, #:upper16:.LC23	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
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
	bhi	.L258	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L259	@,
	sub	r0, r0, #13	@ D.40374, eCapLevel,
	cmp	r0, #10	@ D.40374,
	bls	.L260	@,
.L256:
	mov	r0, #3145728	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L260:
	movw	r1, #:lower16:.LANCHOR1	@ tmp151,
	movt	r1, #:upper16:.LANCHOR1	@ tmp151,
	add	r0, r1, r0, asl #2	@, tmp154, tmp151, D.40374,
	ldr	r0, [r0, #20]	@ MaxSegSize, CSWTCH.675
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L259:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L261	@,
	mul	r5, r5, r0	@ tmp149, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp150,
	movt	r3, #:upper16:2088960	@ tmp150,
	cmp	r5, r3	@ tmp149, tmp150
	movgt	r0, #20971520	@ MaxSegSize,
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	b	.L256	@
.L258:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L261:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r0, #:lower16:269731844	@ tmp141,
	.pad #4
	sub	sp, sp, #4	@,,
	movt	r0, #:upper16:269731844	@,
	bl	MEM_ReadPhyWord	@
	mov	fp, r0	@ D.40120,
	movw	r0, #:lower16:269731848	@ tmp142,
	movt	r0, #:upper16:269731848	@,
	bl	MEM_ReadPhyWord	@
	mov	sl, r0	@ D.40121,
	movw	r0, #:lower16:269731852	@ tmp143,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.40122,
	movw	r0, #:lower16:269731856	@ tmp144,
	movt	r0, #:upper16:269731856	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.40123,
	movw	r0, #:lower16:269731860	@ tmp145,
	movt	r0, #:upper16:269731860	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.40124,
	movw	r0, #:lower16:269731864	@ tmp146,
	movt	r0, #:upper16:269731864	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.40125,
	movw	r0, #:lower16:269731872	@ tmp147,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	mov	r4, r0	@ D.40126,
	movw	r0, #:lower16:269731840	@ tmp148,
	movt	r0, #:upper16:269731840	@,
	bl	MEM_ReadPhyWord	@
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	mov	r9, r0	@ D.40127,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, fp	@, D.40120
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	r2, sl	@, D.40121
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.40122
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.40123
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.40124
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.40125
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.40126
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	bl	dprint_vfmw	@
	sxtb	r2, r9	@, D.40127
	movw	r1, #:lower16:.LC34	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC34	@,
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
.LFB1652:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
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
	mov	r0, r4	@, pSmStateReg
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	PrintScdStateReg	@
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
	beq	.L268	@,
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
	rsb	fp, fp, #1152	@ SegNum.1768, SegNum,
	bmi	.L268	@,
	movw	r2, #:lower16:180124	@ tmp181,
	movt	r2, #:upper16:180124	@ tmp181,
	ldr	r8, [r4, #20]	@ pretmp.1747, <variable>.SegFilter.ModeFlag
	movw	r1, #:lower16:92184	@ tmp182,
	ldr	r7, [r4, r2]	@ pretmp.1740, <variable>.UpMsgStepNum
	movt	r1, #:upper16:92184	@ tmp182,
	cmp	r8, #1	@ pretmp.1747,
	movne	ip, #0	@, pretmp.1748
	moveq	ip, #1	@, pretmp.1748
	tst	r0, #1	@ i,
	ldr	r4, [r6, r1]	@ pretmp.1746, <variable>.SegBufPhyAddr
	movw	r3, #:lower16:-1241448448	@ tmp187,
	mov	sl, r7, asl #2	@ pretmp.1769, pretmp.1740,
	movt	r3, #:upper16:-1241448448	@ tmp187,
	ldr	r6, [r6, #0]	@ pretmp.1742, <variable>.pSegBufVirAddr
	rsb	r1, sl, #0	@ D.41690, pretmp.1769
	mla	r5, sl, r0, r5	@ ivtmp.1764, pretmp.1769, i, pUsedSeg
	mov	r2, #0	@ count,
	beq	.L274	@,
	ldr	sl, [r5, #0]	@ tmp201,* ivtmp.1764
	rsb	lr, r4, sl	@ tmp202, pretmp.1746, tmp201
	ldr	r7, [r6, lr]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp208
	andeq	sl, ip, #1	@,, tmp208, pretmp.1748
	cmp	sl, r2	@ tmp208,
	beq	.L284	@,
.L276:
	cmp	fp, r0	@ SegNum.1768, i
	mov	r2, #1	@ count,
	bcs	.L268	@,
.L277:
	subs	r7, r0, #1	@ i.1767, i,
	add	r5, r5, r1	@ ivtmp.1764, ivtmp.1764, D.41690
	movpl	r0, r7	@ i, i.1767
	bmi	.L268	@,
.L274:
	ldr	lr, [r5, #0]	@ tmp192,* ivtmp.1764
	rsb	r7, r4, lr	@ tmp193, pretmp.1746, tmp192
	ldr	r7, [r6, r7]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp199
	andeq	sl, ip, #1	@,, tmp199, pretmp.1748
	cmp	sl, #0	@ tmp199,
	bne	.L269	@,
.L287:
	cmp	r8, #2	@ pretmp.1747,
	beq	.L285	@,
.L270:
	subs	r7, r0, #1	@ i.1767, i,
	add	r9, r5, r1	@ ivtmp.1764, ivtmp.1764, D.41690
	bmi	.L268	@,
	ldr	sl, [r5, r1]	@ tmp158,* D.41690
	mov	r0, r7	@ i, i.1767
	rsb	r5, r4, sl	@ tmp157, pretmp.1746, tmp158
	ldr	r5, [r6, r5]	@ start_code,
	cmp	r5, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp164
	andeq	sl, ip, #1	@,, tmp164, pretmp.1748
	cmp	sl, #0	@ tmp164,
	beq	.L286	@,
.L280:
	add	r2, r2, #1	@ count, count,
	cmp	r2, #0	@ count,
	ble	.L281	@,
	cmp	fp, r7	@ SegNum.1768, i.1767
	bcs	.L268	@,
.L281:
	add	r5, r9, r1	@ ivtmp.1764, ivtmp.1764, D.41690
	sub	r0, r7, #1	@ i, i.1767,
	ldr	lr, [r5, #0]	@ tmp192,* ivtmp.1764
	rsb	r7, r4, lr	@ tmp193, pretmp.1746, tmp192
	ldr	r7, [r6, r7]	@ start_code,
	cmp	r7, r3	@ start_code, tmp187
	movne	sl, #0	@, tmp199
	andeq	sl, ip, #1	@,, tmp199, pretmp.1748
	cmp	sl, #0	@ tmp199,
	beq	.L287	@,
.L269:
	add	r2, r2, #1	@ count, count,
	cmp	r2, #0	@ count,
	ble	.L270	@,
	cmp	fp, r0	@ SegNum.1768, i
	bcc	.L270	@,
.L268:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L286:
	cmp	r8, #2	@ pretmp.1747,
	bne	.L281	@,
	ubfx	r5, r5, #16, #8	@ D.39070, start_code,,
	cmp	r5, #127	@ D.39070,
	bls	.L281	@,
	cmp	r5, #131	@ D.39070,
	bls	.L280	@,
	b	.L281	@
.L284:
	cmp	r8, #2	@ pretmp.1747,
	bne	.L277	@,
	ubfx	r7, r7, #16, #8	@ D.39070, start_code,,
	cmp	r7, #127	@ D.39070,
	bls	.L277	@,
	cmp	r7, #131	@ D.39070,
	bls	.L276	@,
	b	.L277	@
.L285:
	ubfx	r7, r7, #16, #8	@ D.39070, start_code,,
	cmp	r7, #127	@ D.39070,
	bls	.L270	@,
	cmp	r7, #131	@ D.39070,
	bhi	.L270	@,
	b	.L269	@
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
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	moveq	r0, r4	@ prephitmp.1785, pSmInstArray
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r3, r0	@ CurTime,
	beq	.L291	@,
	movw	r1, #:lower16:180080	@ tmp147,
	movw	ip, #:lower16:180084	@ tmp149,
	movt	r1, #:upper16:180080	@ tmp147,
	movt	ip, #:upper16:180084	@ tmp149,
	mov	r0, #0	@ tmp148,
	str	r0, [r4, r1]	@ tmp148, <variable>.BlockTimeInMs
	str	r3, [r4, ip]	@ CurTime,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L291:
	movw	r2, #:lower16:180084	@ tmp150,
	movt	r2, #:upper16:180084	@ tmp150,
	ldr	r1, [r4, r2]	@ D.38562, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTime, D.38562
	bls	.L292	@,
	rsb	r3, r1, r0	@ D.38565, D.38562, CurTime
	movw	lr, #:lower16:180080	@ tmp151,
	movt	lr, #:upper16:180080	@ tmp151,
	mov	r0, r3	@ prephitmp.1785, D.38565
	str	r3, [r4, lr]	@ D.38565,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L292:
	movw	ip, #:lower16:180080	@ tmp152,
	movt	ip, #:upper16:180080	@ tmp152,
	mov	r0, r5	@ prephitmp.1785, FirstCalc
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
	ldr	r3, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	lr, r3, #2048	@, s_RegPhyBaseAddr,
	add	r0, lr, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #12]	@, <variable>.UpMsgPhyAddr
	add	ip, r2, #2048	@, s_RegPhyBaseAddr,
	add	r0, ip, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #20]	@, <variable>.UpLen
	add	r3, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r3, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #24]	@, <variable>.BufferFirst
	add	r0, r2, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #28]	@, <variable>.BufferLast
	add	r0, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #32]	@, <variable>.BufferIni
	add	r2, r3, #2064	@, s_RegPhyBaseAddr,
	add	r0, r2, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r0, [r4, #1]	@ <variable>.SliceCheckFlag, <variable>.SliceCheckFlag
	ldr	ip, [r4, #36]	@ <variable>.ScdProtocol, <variable>.ScdProtocol
	ldr	r2, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	mov	r3, r0, asl #4	@ tmp172, <variable>.SliceCheckFlag,
	and	r1, ip, #15	@ tmp166, <variable>.ScdProtocol,
	ldr	r0, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	ip, r3, #16	@ tmp173, tmp172,
	orr	r1, r1, r2, asl #8	@, tmp170, tmp166, <variable>.ScdLowdlyEnable,
	orr	r1, r1, ip	@, tmp170, tmp173
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ <variable>.ScdLowdlyEnable, <variable>.ScdLowdlyEnable
	cmp	r3, #0	@ <variable>.ScdLowdlyEnable,
	beq	.L295	@,
	ldr	r0, [r5, #288]	@, s_RegPhyBaseAddr
	ldr	r1, [r4, #108]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L295:
	bl	PrintScdVtrlReg	@
	ldr	ip, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, ip, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
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
	ldr	r2, [r3, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
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
	ldr	r2, [r3, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
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
	movw	r4, #:lower16:g_pstRegCrg	@ tmp161,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp161,
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp162,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.446, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #32	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1889, g_pstRegCrg
	mov	r6, r0	@ D.37133,
	b	.L303	@
.L311:
	ldr	r2, [r1, #372]	@ D.37137, <variable>.PERI_CRG93.u32
	and	lr, r2, #2	@ tmp169, D.37137,
	str	r2, [sp, #4]	@ D.37137, u32TmpValue_93.u32
	uxtb	r0, lr	@ tmp170, tmp169
	cmp	r0, #0	@ tmp170,
	bne	.L302	@,
	cmp	r3, ip	@ i, tmp162
	beq	.L310	@,
.L303:
	ldr	r0, [r1, #372]	@ D.37137, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp163, i,
	add	r3, r3, #1	@ i, tmp163,
	tst	r0, #2	@ D.37137,
	str	r0, [sp, #4]	@ D.37137, u32TmpValue_93.u32
	beq	.L311	@,
.L302:
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	bfc	r5, #5, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r0, [r3, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r6, #1	@, D.37133,
	add	ip, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, ip, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L310:
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #0]	@ prephitmp.1889, g_pstRegCrg
	b	.L302	@
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
	beq	.L322	@,
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	addeq	r8, r6, #58	@ tmp167, InstID,
	movweq	r5, #:lower16:.LANCHOR0	@ tmp166,
	movteq	r5, #:upper16:.LANCHOR0	@ tmp166,
	beq	.L315	@,
	add	r8, r6, #58	@ tmp167, InstID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp166,
	movt	r5, #:upper16:.LANCHOR0	@ tmp166,
	add	r2, r5, r8, asl #2	@, tmp147, tmp166, tmp167,
	ldr	r1, [r2, #4]	@ tmp149, s_SmIIS.pSmInstArray
	ldr	r0, [r1, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	r0, #0	@ <variable>.Config.ScdLowBufEnable,
	bne	.L323	@,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	ldr	ip, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	blx	ip	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
.L317:
	cmp	r4, #0	@ ret,
	beq	.L318	@,
.L315:
	mvn	r4, #6	@ ret,
.L318:
	add	r5, r5, r8, asl #2	@, tmp161, tmp166, tmp167,
	ldr	r0, [r5, #4]	@ tmp163, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp163,
	beq	.L324	@,
.L314:
	mov	r0, r4	@, ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L323:
	ldr	r4, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r4	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L317	@
.L322:
	mov	r0, r4	@, pStreamIntf
	mov	r2, r6	@, InstID
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r4, #6	@ ret,
	b	.L314	@
.L324:
	mov	r3, r6	@, InstID
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #4134	@,
	movt	r1, #:upper16:.LC37	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L314	@
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ SmID, SmID
	bhi	.L345	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	add	r3, r0, r4, asl #2	@, tmp152, tmp148, SmID,
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L328	@,
	cmp	r1, #0	@ ResetFlag,
	bne	.L329	@,
	movw	r2, #:lower16:166252	@ tmp154,
	movt	r2, #:upper16:166252	@ tmp154,
	ldr	r1, [r5, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L329	@,
.L328:
	mvn	r0, #0	@ D.37356,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L345:
	mov	r2, r0	@, SmID
	movw	r1, #:lower16:.LC38	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37356,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L329:
	movw	r6, #:lower16:73896	@ tmp156,
	movw	ip, #:lower16:73904	@ tmp157,
	movt	r6, #:upper16:73896	@ tmp156,
	movt	ip, #:upper16:73904	@ tmp157,
	ldr	sl, [r5, r6]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r6, [r5, ip]	@ D.37368, <variable>.RawPacketArray.History
	cmp	sl, r6	@ RawHead, D.37368
	addlt	sl, sl, #1024	@ tmp158, RawHead,
	rsb	sl, r6, sl	@ DelNum, D.37368, tmp158
	cmp	sl, #0	@ DelNum,
	beq	.L328	@,
	add	r8, r6, r6, asl #3	@, tmp162, D.37368, D.37368,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r8, r8, asl #3	@ tmp163, tmp162,
	mov	r7, #1	@ i,
	add	lr, r8, r5	@ tmp164, tmp163, pSmInstArray
	sub	r9, sl, #1	@ tmp193, DelNum,
	and	r9, r9, #1	@ tmp195, tmp193,
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r1, r8, #168	@ tmp179, tmp163,
	add	r1, r5, r1	@, pSmInstArray, tmp179
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r0, r6, r7	@ D.37382, D.37368,
	cmp	r7, sl	@ i, DelNum
	mov	r3, r0, asl #22	@ j, D.37382,
	mov	r6, r3, lsr #22	@ j, j,
	bcs	.L341	@,
	cmp	r9, #0	@ tmp195,
	beq	.L332	@,
	add	ip, r6, r6, asl #3	@, tmp226, j, j,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r8, ip, asl #3	@ tmp227, tmp226,
	mov	r7, #2	@ i,
	b	.L343	@
.L332:
	add	r2, r6, r6, asl #3	@, tmp200, j, j,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r8, r2, asl #3	@ tmp201, tmp200,
	add	r6, r6, #1	@ D.37382, j,
	add	lr, r8, r5	@ tmp202, tmp201, pSmInstArray
	add	r7, r7, #1	@ tmp196, i,
	add	r7, r7, #1	@ i, tmp196,
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r3, r8, #168	@ tmp207, tmp201,
	add	r1, r5, r3	@, pSmInstArray, tmp207
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	mov	ip, r6, asl #22	@ j, D.37382,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	mov	r6, ip, lsr #22	@ j, j,
	mov	r0, #26	@,
	add	r2, r6, r6, asl #3	@, tmp214, j, j,
	mov	r8, r2, asl #3	@ tmp215, tmp214,
.L343:
	add	lr, r8, r5	@ tmp228, tmp227, pSmInstArray
	ldr	r3, [lr, #176]	@, <variable>.Length
	ldr	r2, [lr, #168]	@, <variable>.PhyAddr
	bl	dprint_vfmw	@
	add	r2, r8, #168	@ tmp233, tmp227,
	add	r1, r5, r2	@, pSmInstArray, tmp233
	mov	r0, r4	@, SmID
	bl	ReleaseRawStreamData	@
	add	r3, r6, #1	@ D.37382, j,
	cmp	r7, sl	@ i, DelNum
	mov	r6, r3, asl #22	@ j, D.37382,
	mov	r6, r6, lsr #22	@ j, j,
	bcc	.L332	@,
.L341:
	movw	r0, #:lower16:73904	@ tmp182,
	movt	r0, #:upper16:73904	@ tmp182,
	ldr	r1, [r5, r0]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	sl, sl, r1	@ D.37384, DelNum, <variable>.RawPacketArray.History
	str	sl, [r5, r0]	@ D.37384, <variable>.RawPacketArray.History
	cmp	sl, #1024	@ D.37384,
	subge	sl, sl, #1024	@ tmp188, D.37384,
	strge	sl, [r5, r0]	@ tmp188, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.37356,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
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
	add	r8, r0, #58	@ tmp169, InstID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp168,
	movt	r5, #:upper16:.LANCHOR0	@ tmp168,
	.pad #20
	sub	sp, sp, #20	@,,
	add	r3, r5, r8, asl #2	@, tmp143, tmp168, tmp169,
	add	r4, sp, #4	@ tmp145,,
	mov	r7, r0	@ InstID, InstID
	ldr	r6, [r3, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	sl, r1	@ pRawPacket, pRawPacket
	mov	r0, r4	@, tmp145
	mov	r1, #12	@,
	bl	__memzero	@
	cmp	r6, #0	@ pSmInstArray,
	mvneq	r4, #6	@ ret,
	beq	.L348	@,
	mov	r0, r7	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L354	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r4, {r0, r1, r2}	@ tmp145,,,
	ldr	r0, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r0, #0	@ <variable>.read_stream,
	bne	.L355	@,
.L350:
	mvn	r4, #6	@ ret,
.L351:
	add	r5, r5, r8, asl #2	@, tmp158, tmp168, tmp169,
	ldr	r0, [r5, #4]	@ tmp160, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp160,
	beq	.L356	@,
	cmp	r4, #0	@ ret,
	bne	.L348	@,
	movw	lr, #:lower16:73916	@ tmp162,
	movt	lr, #:upper16:73916	@ tmp162,
	ldr	r1, [sl, #8]	@ <variable>.Length, <variable>.Length
	ldr	r3, [r6, lr]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	ip, r1, r3	@ tmp166, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r6, lr]	@ tmp166, <variable>.RawPacketArray.RawTotalSize
.L348:
	mov	r0, r4	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L355:
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
	beq	.L351	@,
	b	.L350	@
.L354:
	mov	r2, r7	@, InstID
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L348	@
.L356:
	mov	r3, r7	@, InstID
	movw	r1, #:lower16:.LC37	@,
	movw	r2, #4084	@,
	movt	r1, #:upper16:.LC37	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L348	@
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
	movw	ip, #:lower16:.LANCHOR0	@ tmp151,
	movt	ip, #:upper16:.LANCHOR0	@ tmp151,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r1, #:lower16:166252	@ tmp152,
	add	lr, ip, #16	@ D.41959, tmp151,
	movt	r1, #:upper16:166252	@ tmp152,
	mov	r2, ip	@ ivtmp.2026, tmp151
	mov	r4, #0	@ tmp153,
.L360:
	ldr	r3, [r2, #236]	@ D.40407, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40407,
	beq	.L358	@,
	ldr	r0, [r3, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	beq	.L358	@,
	str	r4, [r3, r1]	@ tmp153, <variable>.Mode
	ldr	r3, [ip, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L369	@,
.L358:
	add	r2, r2, #4	@ ivtmp.2026, ivtmp.2026,
	cmp	r2, lr	@ ivtmp.2026, D.41959
	bne	.L360	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L369:
	mov	r3, #2	@ i,
.L359:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L359	@,
	b	.L358	@
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mvnhi	r0, #0	@ D.37995,
	ldmhifd	sp!, {r3, r4, r5, pc}	@
	add	r5, r0, #58	@ tmp137, SmID,
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	movw	r1, #:lower16:180128	@,
	add	r4, r0, r5, asl #2	@, tmp140, tmp136, tmp137,
	movt	r1, #:upper16:180128	@,
	mvn	r5, #0	@,
	ldr	r0, [r4, #4]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r2, [r4, #4]	@ tmp150, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:180088	@ tmp151,
	movt	r3, #:upper16:180088	@ tmp151,
	mvn	r4, #0	@ tmp152,
	mov	r0, #0	@ D.37995,
	strd	r4, [r2, r3]	@ tmp152, tmp150, tmp151
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
	bne	.L381	@,
.L378:
	mvn	r0, #0	@ D.37545,
.L379:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L381:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L378	@,
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
	mov	r0, r6	@ D.37545, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [sp, #4]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L379	@
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
	mov	sl, r1	@ pTransFormSeg, pTransFormSeg
	ldr	r1, [r0, #32]	@, <variable>.SegNum
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	mov	r6, #0	@ tmp170,
	mov	r0, #24	@,
	str	r1, [sp, #8]	@, %sfp
	movw	r1, #:lower16:.LC40	@,
	str	r6, [r2, #0]	@ tmp170,* pExtraSrcBack
	movt	r1, #:upper16:.LC40	@,
	str	r3, [sp, #12]	@ pSegNum, %sfp
	ldr	r5, [sp, #64]	@ UpMsgStepNum, UpMsgStepNum
	bl	dprint_vfmw	@
	ldr	r7, [r4, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	cmp	r7, #2	@ <variable>.ProtocolType,
	beq	.L386	@,
	ldr	r2, [sp, #8]	@, %sfp
	cmp	r2, r6	@,
	ble	.L387	@,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r6	@, tmp170
	ldr	r3, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	ldr	r1, [sp, #8]	@, %sfp
	mov	r5, r5, asl #2	@ D.42098, UpMsgStepNum,
	ldr	ip, [lr, #0]	@ tmp175,* <variable>.pScdUpMsg
	and	r7, r3, #-2147483648	@ tmp176, <variable>.SegBufPhyAddr,
	sub	r9, r1, #1	@ tmp259,,
	movw	r1, #:lower16:.LC41	@,
	bic	r8, ip, #-2147483648	@ tmp174, tmp175,
	movt	r1, #:upper16:.LC41	@,
	orr	r6, r8, r7	@ tmp178, tmp174, tmp176
	str	r6, [sl, #0]	@ tmp178,* pTransFormSeg
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r7, #1	@ i.2183,
	and	r9, r9, #1	@ tmp261, tmp259,
	add	r6, sl, r5	@ ivtmp.2162, pTransFormSeg, D.42098
	mov	r8, r5	@ ivtmp.2161, D.42098
	ldr	ip, [lr, #4]	@ tmp183,
	str	ip, [sl, #4]	@ tmp183,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #0]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, r7	@,
	ble	.L387	@,
	cmp	r9, #0	@ tmp261,
	beq	.L388	@,
	ldr	r8, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r7	@, i.2183
	ldr	r7, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	ldr	lr, [r8, r5]	@ tmp294,* D.42098
	and	r3, r7, #-2147483648	@ tmp297, <variable>.SegBufPhyAddr,
	mov	r7, #2	@ i.2183,
	mov	r8, r5, asl #1	@ ivtmp.2161, D.42098,
	bic	ip, lr, #-2147483648	@ tmp295, tmp294,
	orr	lr, ip, r3	@ tmp298, tmp295, tmp297
	str	lr, [r6, #0]	@ tmp298,* ivtmp.2162
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r5, r3	@ tmp300, D.42098, <variable>.pScdUpMsg
	ldr	lr, [ip, #4]	@ tmp302,
	str	lr, [r6, #4]	@ tmp302,
	add	r6, r6, r5	@ ivtmp.2162, ivtmp.2162, D.42098
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r3, #4]	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, r7	@, i.2183
	ble	.L387	@,
.L388:
	ldr	sl, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	r2, r7	@, i.2183
	ldr	fp, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	ldr	r9, [sl, r8]	@ tmp267,* ivtmp.2161
	and	ip, fp, #-2147483648	@ tmp270, <variable>.SegBufPhyAddr,
	add	sl, r8, r5	@ ivtmp.2161, ivtmp.2161, D.42098
	add	fp, r6, r5	@ ivtmp.2162, ivtmp.2162, D.42098
	bic	lr, r9, #-2147483648	@ tmp268, tmp267,
	add	r9, r7, #1	@ tmp262, i.2183,
	orr	r3, lr, ip	@ tmp271, tmp268, tmp270
	str	r3, [r6, #0]	@ tmp271,* ivtmp.2162
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r8, lr	@ tmp273, ivtmp.2161, <variable>.pScdUpMsg
	add	r8, sl, r5	@ ivtmp.2161, ivtmp.2161, D.42098
	ldr	r3, [ip, #4]	@ tmp275,
	str	r3, [r6, #4]	@ tmp275,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [lr, r7, asl #2]	@,* <variable>.pScdUpMsg
	add	r7, r9, #1	@ i.2183, tmp262,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r0, #24	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	ldr	r3, [ip, sl]	@ tmp282,* ivtmp.2161
	and	ip, r2, #-2147483648	@ tmp285, <variable>.SegBufPhyAddr,
	mov	r2, r9	@, tmp262
	bic	r3, r3, #-2147483648	@ tmp283, tmp282,
	orr	r3, r3, ip	@ tmp286, tmp283, tmp285
	str	r3, [r6, r5]	@ tmp286,* D.42098
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r6, fp, r5	@ ivtmp.2162, ivtmp.2162, D.42098
	add	sl, sl, ip	@ tmp288, ivtmp.2161, <variable>.pScdUpMsg
	ldr	r3, [sl, #4]	@ tmp290,
	str	r3, [fp, #4]	@ tmp290,
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [ip, r9, asl #2]	@,* <variable>.pScdUpMsg
	bl	dprint_vfmw	@
	ldr	r2, [sp, #8]	@, %sfp
	cmp	r2, r7	@, i.2183
	bgt	.L388	@,
.L387:
	mov	r0, #0	@ tmp186,
	str	r0, [r4, #16]	@ tmp186, <variable>.LastH263Num
	str	r0, [r4, #12]	@ tmp186, <variable>.ModeFlag
	ldr	r1, [sp, #8]	@, %sfp
	ldr	r2, [sp, #12]	@, %sfp
	str	r1, [r2, #0]	@,
.L389:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L386:
	ldr	r0, [r4, #20]	@, <variable>.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.38919,
	bne	.L410	@,
.L390:
	mvn	r0, #6	@ D.38922,
	b	.L389	@
.L410:
	ldrb	r8, [r3, #3]	@ zero_extendqisi2	@ D.38937,
	ldrb	r9, [r3, #0]	@ zero_extendqisi2	@ D.38923,* D.38919
	ldrb	fp, [r3, #1]	@ zero_extendqisi2	@ D.38927,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ D.38932,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	str	r3, [sp, #4]	@,
	bl	MEM_Phy2Vir	@
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@ D.38940
	beq	.L390	@,
	orr	r8, r8, r9, asl #24	@, tmp189, D.38937, D.38923,
	mov	lr, sl	@ ivtmp.2176, pTransFormSeg
	orr	fp, r8, fp, asl #16	@, tmp191, tmp189, D.38927,
	mov	sl, r6	@ i, tmp170
	orr	r7, fp, r3, asl #8	@, Data32, tmp191, D.38932,
	strb	r7, [r0, #3]	@ Data32,
	mov	fp, r5, asl #2	@ D.42117, UpMsgStepNum,
	movw	r5, #:lower16:.LANCHOR0	@,
	mov	r9, r7, lsr #24	@ tmp193, Data32,
	mov	r6, r7, lsr #8	@ tmp197, Data32,
	strb	r9, [r0, #0]	@ tmp193,* D.38940
	mov	ip, r7, lsr #16	@ tmp195, Data32,
	strb	r6, [r0, #2]	@ tmp197,
	movt	r5, #:upper16:.LANCHOR0	@,
	strb	ip, [r0, #1]	@ tmp195,
	movw	r0, #:lower16:g_event_report	@ tmp253,
	movt	r0, #:upper16:g_event_report	@ tmp253,
	str	r5, [sp, #16]	@, %sfp
	add	r6, lr, #4	@ ivtmp.2179, ivtmp.2176,
	mov	r7, lr	@ ivtmp.2234, ivtmp.2176
	mov	r5, #4	@ ivtmp.2178,
	str	lr, [sp, #20]	@ ivtmp.2176, %sfp
	mov	r9, r0	@ tmp253, tmp253
	b	.L391	@
.L412:
	mov	r1, #1	@,
	mov	r3, #0	@,
	str	r1, [r4, #12]	@, <variable>.ModeFlag
	str	r3, [r4, #16]	@, <variable>.LastH263Num
	str	r8, [r7, #0]	@ TmpPhyAddr.2198,* ivtmp.2234
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [r2, r5]	@ tmp228,* ivtmp.2178
	str	r0, [r6, #0]	@ tmp228,* ivtmp.2179
.L393:
	add	sl, sl, #1	@ i, i,
	add	r7, r7, fp	@ ivtmp.2234, ivtmp.2234, D.42117
	add	r5, r5, fp	@ ivtmp.2178, ivtmp.2178, D.42117
	add	r6, r6, fp	@ ivtmp.2179, ivtmp.2179, D.42117
.L391:
	ldr	r1, [sp, #8]	@, %sfp
	cmp	sl, r1	@ i,
	bge	.L411	@,
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r2, r5, lr	@ tmp202, ivtmp.2178, <variable>.pScdUpMsg
	and	r1, r3, #-2147483648	@ tmp206, <variable>.SegBufPhyAddr,
	ldr	r0, [r2, #-4]	@ tmp205,
	bic	r8, r0, #-2147483648	@ tmp204, tmp205,
	orrs	r8, r8, r1	@ TmpPhyAddr.2198, tmp204, tmp206
	beq	.L390	@,
	mov	r0, r8	@, TmpPhyAddr.2198
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.38952
	beq	.L390	@,
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp209,* D.38952
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ tmp208,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp212,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp215,
	orr	r3, lr, ip, asl #24	@, tmp211, tmp208, tmp209,
	movw	ip, #438	@,
	orr	r2, r3, r1, asl #16	@, tmp214, tmp211, tmp212,
	orr	r0, r2, r0, asl #8	@, Data32.2217, tmp214, tmp215,
	cmp	r0, ip	@ Data32.2217,
	cmpne	r0, #288	@, Data32.2217,
	movne	r2, #0	@, tmp224
	moveq	r2, #1	@, tmp224
	beq	.L412	@,
	bic	ip, r0, #1020	@ tmp229, Data32.2217,
	bic	lr, ip, #3	@ tmp229, tmp229,
	cmp	lr, #32768	@ tmp229,
	beq	.L413	@,
.L394:
	str	r8, [r7, #0]	@ TmpPhyAddr.2198,* ivtmp.2234
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	lr, [ip, r5]	@ tmp244,* ivtmp.2178
	str	lr, [r6, #0]	@ tmp244,* ivtmp.2179
	b	.L393	@
.L413:
	ldr	r0, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	r0, #1	@ <variable>.ModeFlag,
	beq	.L395	@,
	mov	r1, #2	@,
	str	r1, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.2198,* ivtmp.2234
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r3, r5]	@ tmp234,* ivtmp.2178
	str	r2, [r6, #0]	@ tmp234,* ivtmp.2179
	b	.L393	@
.L411:
	ldr	r4, [sp, #12]	@, %sfp
	ldr	r9, [sp, #20]	@ ivtmp.2176, %sfp
	str	sl, [r4, #0]	@ i,
	mov	r4, #0	@ i.2180,
	b	.L399	@
.L400:
	ldr	r3, [r3, #0]	@,
	bl	dprint_vfmw	@
.L399:
	cmp	r4, sl	@ i.2180, i
	add	r9, r9, fp	@ ivtmp.2176, ivtmp.2176, D.42117
	mov	r2, r4	@, i.2180
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #24	@,
	movt	r1, #:upper16:.LC41	@,
	add	r4, r4, #1	@ i.2180, i.2180,
	rsb	r3, fp, r9	@ tmp246, D.42117, ivtmp.2176
	blt	.L400	@,
	mov	r0, #0	@ D.38922,
	b	.L389	@
.L395:
	ldr	ip, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	lr, ip, #1	@ D.38976, <variable>.LastH263Num,
	str	lr, [r4, #16]	@ D.38976, <variable>.LastH263Num
	cmp	lr, #12	@ D.38976,
	ble	.L394	@,
	ldr	r3, [r9, #0]	@ g_event_report.576, g_event_report
	cmp	r3, #0	@ g_event_report.576,
	beq	.L397	@,
	ldr	r1, [sp, #16]	@, %sfp
	ldr	r0, [r1, #272]	@, s_SmIIS.ThisInstID
	mov	r1, #102	@,
	blx	r3	@ g_event_report.576
.L397:
	mov	r3, #2	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	str	r8, [r7, #0]	@ TmpPhyAddr.2198,* ivtmp.2234
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [r2, r5]	@ tmp240,* ivtmp.2178
	str	r0, [r6, #0]	@ tmp240,* ivtmp.2179
	b	.L393	@
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
	ldr	ip, [ip, #8]	@ D.38013, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	r4, #:lower16:.LANCHOR0	@ tmp189,
	movt	r4, #:upper16:.LANCHOR0	@ tmp189,
	cmp	ip, #0	@ D.38013,
	mov	r8, r3	@ ResetRegAddr, ResetRegAddr
	mov	r5, r0	@ MemAddr, MemAddr
	movw	r3, #:lower16:269729792	@ tmp151,
	mov	r6, r1	@ MemSize, MemSize
	movt	r3, #:upper16:269729792	@ tmp151,
	mov	r7, r2	@ RegAddr, RegAddr
	str	r3, [r4, #288]	@ tmp151, s_RegPhyBaseAddr
	beq	.L415	@,
	blx	ip	@ D.38013
.L416:
	ldr	r0, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	cmp	r0, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L417	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	mov	r0, r4	@, tmp154
	mov	sl, #0	@ tmp158,
	bl	__memzero	@
	add	r0, r5, #3	@ tmp159, MemAddr,
	bic	r9, r0, #3	@ tmp160, tmp159,
	str	r5, [r4, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r9, r5, r9	@ Offset, MemAddr, tmp160
	str	sl, [r4, #284]	@ tmp158, s_eScdDrvSleepStage
	add	r0, r9, r5	@ D.38029, Offset, MemAddr
	str	r6, [r4, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r0, [r4, #8]	@ D.38029, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	r3, r9, #12288	@ D.38034, Offset,
	mov	r2, #12288	@ tmp166,
	add	r1, r3, r5	@ temp.2267, D.38034, MemAddr
	str	r2, [r4, #16]	@ tmp166, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r1, [r4, #20]	@ temp.2267, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r1	@, temp.2267
	bl	MEM_Phy2Vir	@
	add	ip, r9, r5	@ tmp171, Offset, MemAddr
	add	r3, ip, #26112	@ tmp172, tmp171,
	mov	r2, #13824	@ tmp170,
	add	r5, r3, #127	@ tmp172, tmp172,
	str	r2, [r4, #28]	@ tmp170, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r5, r5, #127	@ g_hex_base_addr.498, tmp172,
	str	r5, [r4, #292]	@ g_hex_base_addr.498, g_hex_base_addr
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, g_hex_base_addr.498
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.38045,
	str	r0, [r4, #296]	@ D.38045, g_hex_base_vir_addr
	beq	.L421	@,
	add	r9, r9, #44032	@ tmp181, Offset,
	mov	lr, #17920	@ tmp178,
	cmp	r6, r9	@ MemSize, tmp181
	str	r7, [r4, #68]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r8, [r4, #72]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	lr, [r4, #300]	@ tmp178, g_hex_len
	bge	.L422	@,
.L417:
	mvn	r0, #6	@ D.38021,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L415:
	mov	r0, ip	@, D.38013
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #1564	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	b	.L416	@
.L421:
	movw	r1, #:lower16:.LC42	@,
	movw	r2, #1642	@,
	movt	r1, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38021,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L422:
	ldr	ip, [r4, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	ip, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L417	@,
	ldr	r1, [r4, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r1, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	movne	r1, #1	@ tmp187,
	movne	r0, sl	@ D.38021, tmp158
	strne	r1, [r4, #268]	@ tmp187, s_SmIIS.IsScdDrvOpen
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L417	@
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
	ldr	r3, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	mov	r5, r0	@ CurTime,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldrsb	r7, [r3, #3]	@ <variable>.InsertNewSegFlag, <variable>.InsertNewSegFlag
	cmp	r7, #1	@ <variable>.InsertNewSegFlag,
	beq	.L430	@,
.L425:
	mov	r7, #0	@ prephitmp.2296,
.L426:
	ldr	r2, [r4, #304]	@ LastEventTime.540, LastEventTime
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	cmp	r5, r2	@ CurTime, LastEventTime.540
	strls	r5, [r0, #304]	@ CurTime, LastEventTime
	movls	r2, #1	@ prephitmp.2285,
	bls	.L428	@,
	rsb	r2, r2, r5	@ tmp149, LastEventTime.540, CurTime
	cmp	r2, #1	@ tmp149,
	movls	r2, #0	@, prephitmp.2285
	movhi	r2, #1	@, prephitmp.2285
.L428:
	tst	r2, r7	@ prephitmp.2285, prephitmp.2296
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #304]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L430:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L425	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L426	@,
	b	.L425	@
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp152,
	movt	r1, #:upper16:.LANCHOR0	@ tmp152,
	add	r3, r1, r0, asl #2	@, tmp156, tmp152, SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r8, r0	@ SmID, SmID
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r5, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.38384,
	bne	.L441	@,
.L433:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L441:
	movw	r2, #:lower16:73896	@ tmp158,
	movw	ip, #:lower16:73900	@ tmp159,
	movt	r2, #:upper16:73896	@ tmp158,
	movt	ip, #:upper16:73900	@ tmp159,
	ldr	r6, [r5, r2]	@ D.38391, <variable>.RawPacketArray.Head
	ldr	r0, [r5, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r6	@ <variable>.RawPacketArray.Tail, D.38391
	beq	.L434	@,
	add	r4, r5, #73728	@, pSmInstArray,
	mov	r7, r6, asl #3	@ tmp234, D.38391,
	add	r0, r4, #192	@,,
	add	r4, r5, #168	@ pRawPacketArray, pSmInstArray,
	bl	ResetStreamSegArray	@
	add	r3, r7, r6	@ tmp166, tmp234, D.38391
	add	r0, r5, r3, asl #3	@, tmp168, pSmInstArray, tmp166,
	ldr	r1, [r0, #172]	@ D.38398, <variable>.VirAddr
	ldmia	r1, {r2, r3}	@ phole ldm
	sub	ip, r2, #32	@ tmp172, D.38399,
	cmp	ip, #1888	@ tmp172,
	movls	ip, #0	@, tmp174
	movhi	ip, #1	@, tmp174
	cmp	r3, #31	@ h,
	orrle	ip, ip, #1	@,, tmp177, tmp174
	cmp	ip, #0	@ tmp177,
	bne	.L435	@,
	cmp	r3, #1088	@ h,
	bgt	.L435	@,
	ldr	r0, [r0, #176]	@ D.38411, <variable>.Length
	cmp	r0, #1552	@ D.38411,
	blt	.L435	@,
	movw	lr, #:lower16:3133456	@ tmp186,
	movt	lr, #:upper16:3133456	@ tmp186,
	cmp	r0, lr	@ D.38411, tmp186
	bgt	.L435	@,
	mov	sl, #3	@ tmp188,
	movw	ip, #:lower16:166108	@ tmp190,
	mul	sl, sl, r2	@ tmp187, tmp188, D.38399
	movt	ip, #:upper16:166108	@ tmp190,
	ldr	lr, [r5, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	lr, lr, #262144	@ tmp191, <variable>.StreamSegArray.SegBufSize,
	mul	ip, r3, sl	@ tmp189, h, tmp187
	mov	ip, ip, asr #1	@ D.38416, tmp189,
	cmp	ip, lr	@ D.38416, tmp191
	bgt	.L435	@,
	add	lr, ip, #16	@ tmp193, D.38416,
	cmp	r0, lr	@ D.38411, tmp193
	blt	.L435	@,
	ldr	ip, [r1, #8]	@ D.38427,
	movw	lr, #1916	@ tmp208,
	ldr	r0, [r1, #12]	@ disp_h,
	sub	r7, ip, #4	@ tmp206, D.38427,
	cmp	r7, lr	@ tmp206, tmp208
	movls	lr, #0	@, tmp209
	movhi	lr, #1	@, tmp209
	cmp	r0, #3	@ disp_h,
	orrle	lr, lr, #1	@,, tmp212, tmp209
	cmp	lr, #0	@ tmp212,
	bne	.L438	@,
	cmp	r0, #1088	@ disp_h,
	ble	.L439	@,
.L438:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r1, #72	@ tmp216,
	mla	r5, r1, r6, r5	@ tmp217, tmp216, D.38391, pSmInstArray
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L442	@,
.L437:
	mov	r0, #0	@ D.38384,
	b	.L433	@
.L434:
	mvn	r0, #3	@ D.38384,
	b	.L433	@
.L435:
	add	r6, r7, r6	@ tmp198, tmp234, D.38391
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	add	r5, r5, r6, asl #3	@, tmp200, pSmInstArray, tmp198,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L437	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movw	r2, #2214	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38384,
	b	.L433	@
.L439:
	mov	r7, #72	@ tmp224,
	str	r0, [sp, #8]	@ disp_h,
	mla	r5, r7, r6, r5	@ tmp225, tmp224, D.38391, pSmInstArray
	stmia	sp, {r2, ip}	@ phole stm
	mov	r0, r8	@, SmID
	add	r1, r1, #16	@, D.38398,
	ldrd	r6, [r5, #184]	@, tmp225,
	strd	r6, [sp, #16]	@,,
	bl	DNR_PutYuv	@
	subs	r6, r0, #0	@ Ret,
	bne	.L434	@,
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	mov	r0, r6	@ D.38384, Ret
	b	.L433	@
.L442:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movw	r2, #2229	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38384,
	b	.L433	@
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
	cmp	r0, #3	@ SmID,
	movls	r2, #0	@, tmp151
	movhi	r2, #1	@, tmp151
	mov	r3, r0	@ SmID, SmID
	cmp	r1, #0	@ pSmCfg,
	orreq	r2, r2, #1	@,, tmp154, tmp151
	cmp	r2, #0	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pSmCfg, pSmCfg
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L459	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp224,
	movt	r6, #:upper16:.LANCHOR0	@ tmp224,
	add	r3, r6, r0, asl #2	@, tmp160, tmp224, SmID,
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L446	@,
	ldr	r3, [r1, #12]	@ D.38099, <variable>.BufPhyAddr
	ldr	r1, [r5, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r1, r3	@ <variable>.Config.BufPhyAddr, D.38099
	addeq	r7, r5, #48	@ tmp222, pSmInstArray,
	bne	.L460	@,
.L447:
	mov	r1, r4	@, pSmCfg
	mov	r0, r7	@, tmp222
	mov	r2, #120	@,
	bl	memcpy	@
	movw	r0, #:lower16:180124	@ tmp216,
	movt	r0, #:upper16:180124	@ tmp216,
	mov	r1, #2	@ tmp217,
	str	r1, [r5, r0]	@ tmp217, <variable>.UpMsgStepNum
	ldr	ip, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	ip, #2	@ <variable>.VidStd,
	moveq	ip, #3	@ tmp220,
	streq	ip, [r5, r0]	@ tmp220, <variable>.UpMsgStepNum
	mov	r0, #0	@ D.38094,
.L445:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L459:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #1707	@,
	movt	r1, #:upper16:.LC46	@,
	str	r4, [sp, #0]	@ pSmCfg,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38094,
	b	.L445	@
.L460:
	cmp	r3, #0	@ D.38099,
	bne	.L461	@,
.L446:
	mvn	r0, #0	@ D.38094,
	b	.L445	@
.L461:
	ldr	ip, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	ip, #0	@ <variable>.pBufVirAddr,
	beq	.L446	@,
	ldr	lr, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r1, #:lower16:166152	@ tmp164,
	movt	r1, #:upper16:166152	@ tmp164,
	movw	r2, #:lower16:166156	@ tmp167,
	movt	r2, #:upper16:166156	@ tmp167,
	movw	r3, #:lower16:166160	@ tmp170,
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r3, #:upper16:166160	@ tmp170,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r7, #:lower16:166164	@ tmp173,
	movt	r7, #:upper16:166164	@ tmp173,
	movw	lr, #:lower16:166168	@ tmp176,
	movt	lr, #:upper16:166168	@ tmp176,
	movw	r1, #:lower16:166172	@ tmp179,
	str	ip, [r5, r2]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r1, #:upper16:166172	@ tmp179,
	ldr	r8, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	ip, #:lower16:166176	@ tmp182,
	movt	ip, #:upper16:166176	@ tmp182,
	movw	r2, #:lower16:166240	@ tmp187,
	movt	r2, #:upper16:166240	@ tmp187,
	str	r8, [r5, r3]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movw	r3, #:lower16:166148	@ tmp189,
	ldr	r8, [r6, #20]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movt	r3, #:upper16:166148	@ tmp189,
	str	r8, [r5, r7]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	mov	r7, #1152	@ tmp183,
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [r5, lr]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r7, [r5, ip]	@ tmp183, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2350, <variable>.BufPhyAddr
	ldr	r7, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	r1, r8, #3	@ tmp185, temp.2350,
	ldr	lr, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r7, #6	@ <variable>.VidStd,
	bic	ip, r1, #3	@ TmpPhyAddr, tmp185,
	rsb	r8, r8, ip	@ ByteOffsetInWord, temp.2350, TmpPhyAddr
	moveq	r7, #1048576	@ prephitmp.2338,
	movne	r7, #131072	@ prephitmp.2338,
	add	r1, r7, ip	@ tmp188, prephitmp.2338, TmpPhyAddr
	add	ip, r8, lr	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	str	r1, [r5, r2]	@ tmp188, <variable>.BufAddrCfg.SegBufPhyAddr
	add	lr, ip, r7	@ tmp190, pTmpVirAddr, prephitmp.2338
	str	lr, [r5, r3]	@ tmp190, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r2, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r8, r8, r2	@ D.38127, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r8	@ SmMaxSegBufSize, D.38127
	bge	.L451	@,
	movw	ip, #:lower16:-1024	@ tmp192,
	movw	r2, #:lower16:166244	@ tmp194,
	movt	ip, #:upper16:-1024	@ tmp192,
	movt	r2, #:upper16:166244	@ tmp194,
	rsb	r3, r7, ip	@ tmp192, prephitmp.2338, tmp192
	add	r3, r3, r0	@ prephitmp.2339, tmp192, SmMaxSegBufSize
	str	r3, [r5, r2]	@ prephitmp.2339, <variable>.BufAddrCfg.SegBufSize
.L452:
	movw	r2, #:lower16:166240	@ tmp200,
	movw	lr, #:lower16:166148	@ tmp202,
	movt	r2, #:upper16:166240	@ tmp200,
	movt	lr, #:upper16:166148	@ tmp202,
	add	r7, r5, #73728	@, pSmInstArray,
	ldr	r1, [r5, r2]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	add	r0, r7, #192	@,,
	ldr	r2, [r5, lr]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	add	r7, r5, #48	@ tmp222, pSmInstArray,
	bl	ConfigStreamSegArray	@
	ldr	r3, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	mov	r0, r7	@, tmp222
	mov	r1, r4	@, pSmCfg
	mov	r2, #120	@,
	str	r3, [r6, #288]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
	b	.L447	@
.L451:
	sub	r1, r8, #1024	@ tmp195, D.38127,
	movw	r0, #:lower16:166244	@ tmp196,
	rsb	r3, r7, r1	@ prephitmp.2339, prephitmp.2338, tmp195
	movt	r0, #:upper16:166244	@ tmp196,
	cmp	r3, #262144	@ prephitmp.2339,
	str	r3, [r5, r0]	@ prephitmp.2339, <variable>.BufAddrCfg.SegBufSize
	bge	.L452	@,
	mvn	r0, #0	@ D.38094,
	b	.L445	@
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, r0	@ SmID, SmID
	.pad #120
	sub	sp, sp, #120	@,,
	bhi	.L474	@,
	add	r7, r0, #58	@ tmp193, SmID,
	movw	r6, #:lower16:.LANCHOR0	@ tmp194,
	movt	r6, #:upper16:.LANCHOR0	@ tmp194,
	add	r3, r6, r7, asl #2	@, tmp146, tmp194, tmp193,
	ldr	r4, [r3, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L476	@,
	ldr	r2, [r4, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r1, r2, #1	@ tmp150, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r1, #1	@ tmp150,
	bls	.L477	@,
.L466:
	add	r6, r6, r7, asl #2	@, tmp164, tmp194, tmp193,
	mov	sl, #0	@ tmp153,
	mvn	r0, #0	@ tmp154,
	add	r1, r4, #48	@, pSmInstArray,
	str	r0, [r4, #80]	@ tmp154, <variable>.Config.LastRawDisContinueCount
	mov	r2, #120	@,
	str	sl, [r4, #84]	@ tmp153, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, sp	@,
	bl	memcpy	@
	ldr	r1, [r6, #4]	@ D.40414, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:166252	@ tmp159,
	movt	r3, #:upper16:166252	@ tmp159,
	cmp	r1, sl	@ D.40414,
	movw	r2, #:lower16:.LANCHOR0	@ tmp160,
	ldr	r7, [r4, r3]	@ TmpMode, <variable>.Mode
	movt	r2, #:upper16:.LANCHOR0	@ tmp160,
	beq	.L467	@,
	ldr	r8, [r1, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r8, sl	@ <variable>.Mode,
	bne	.L478	@,
.L467:
	movw	r0, #:lower16:73900	@ tmp172,
	movw	r1, #:lower16:73896	@ tmp173,
	movt	r0, #:upper16:73900	@ tmp172,
	movt	r1, #:upper16:73896	@ tmp173,
	mvn	r8, #0	@ tmp183,
	mvn	r9, #0	@,
	ldr	lr, [r4, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	add	r0, r4, #168	@, pSmInstArray,
	ldr	r6, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	sub	r7, r7, #1	@ tmp187, TmpMode,
	subs	r1, lr, r6	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r6, #:lower16:166248	@ tmp177,
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	movt	r6, #:upper16:166248	@ tmp177,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	bl	DeleteRawPacketInBuffer	@
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.InstID
	mov	r0, r4	@, pSmInstArray
	movw	r1, #:lower16:180128	@,
	movt	r1, #:upper16:180128	@,
	bl	__memzero	@
	movw	r2, #:lower16:180088	@ tmp182,
	movw	r3, #:lower16:180124	@ tmp184,
	movt	r2, #:upper16:180088	@ tmp182,
	movt	r3, #:upper16:180124	@ tmp184,
	mov	ip, #2	@ tmp185,
	strd	r8, [r4, r2]	@ tmp183, pSmInstArray, tmp182
	sxtb	sl, sl	@ s8TmpInstID, s8TmpInstID
	str	ip, [r4, r3]	@ tmp185, <variable>.UpMsgStepNum
	mov	r0, r5	@, SmID
	str	sl, [r4, r6]	@ s8TmpInstID, <variable>.InstID
	mov	r1, sp	@,
	bl	SM_Config	@
	cmp	r7, #1	@ tmp187,
	movwls	r3, #:lower16:166252	@ tmp188,
	movhi	r2, #0	@ tmp191,
	movwhi	r3, #:lower16:166252	@ tmp190,
	movls	r0, #0	@ D.37956,
	movls	r2, #1	@ tmp189,
	movtls	r3, #:upper16:166252	@ tmp188,
	movthi	r3, #:upper16:166252	@ tmp190,
	movhi	r0, r2	@ D.37956, tmp191
	str	r2, [r4, r3]	@ tmp191, <variable>.Mode
.L464:
	add	sp, sp, #120	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L478:
	str	sl, [r1, r3]	@ tmp153, <variable>.Mode
	ldr	r9, [r2, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r9, sl	@ s_SmIIS.SCDState,
	beq	.L467	@,
.L468:
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	beq	.L467	@,
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	bne	.L468	@,
	b	.L467	@
.L476:
	movw	r1, #:lower16:.LC47	@,
	mov	r0, r4	@, pSmInstArray
	movt	r1, #:upper16:.LC47	@,
	movw	r2, #1406	@,
	bl	dprint_vfmw	@
.L474:
	mvn	r0, #0	@ D.37956,
	b	.L464	@
.L477:
	add	r1, r4, #96	@, pSmInstArray,
	bl	ReleaseRawStreamData	@
	b	.L466	@
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	.pad #12
	sub	sp, sp, #12	@,,
	mvneq	r0, #0	@ Ret,
	beq	.L481	@,
	movw	r2, #:lower16:92168	@ tmp151,
	movw	r3, #:lower16:92172	@ tmp152,
	movt	r2, #:upper16:92168	@ tmp151,
	movt	r3, #:upper16:92172	@ tmp152,
	ldr	r6, [r4, r2]	@ i, <variable>.Head
	ldr	ip, [r4, r3]	@ D.37780, <variable>.Tail
	cmp	r6, ip	@ i, D.37780
	beq	.L482	@,
	mov	r3, r6, asl #2	@ tmp238, i,
	add	r2, r3, r6	@ tmp155, tmp238, i
	add	r2, r4, r2, asl #4	@, tmp159, pStreamSegArray, tmp155,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp239,
	movtne	r0, #:upper16:954437177	@ tmp239,
	bne	.L487	@,
	b	.L483	@
.L485:
	add	r2, r4, r2, asl #4	@, tmp169, pStreamSegArray, tmp165,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L483	@,
.L487:
	add	r6, r6, #1	@ D.37789, i,
	smull	r3, r2, r0, r6	@, tmp228, tmp239, D.37789
	mov	r3, r6, asr #31	@ tmp231, D.37789,
	rsb	r3, r3, r2, asr #8	@, i, tmp231, tmp228,
	add	r2, r3, r3, asl #3	@, tmp234, i, i,
	sub	r6, r6, r2, asl #7	@ i, D.37789, tmp234,
	cmp	r6, ip	@ i, D.37780
	mov	r3, r6, asl #2	@ tmp238, i,
	add	r2, r3, r6	@ tmp165, tmp238, i
	bne	.L485	@,
.L482:
	mvn	r0, #2	@ Ret,
.L481:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L483:
	add	r6, r3, r6	@ tmp175, tmp238, i
	mov	r0, r1	@, pStreamSeg
	mov	r2, #80	@,
	add	r5, r4, r6, asl #4	@, tmp178, pStreamSegArray, tmp175,
	add	r6, r6, #1	@ tmp198, tmp175,
	add	r5, r5, #8	@ tmp179, tmp178,
	mov	r1, r5	@, tmp179
	bl	memcpy	@
	movw	ip, #:lower16:92204	@ tmp203,
	add	r3, r4, r6, asl #4	@, tmp201, pStreamSegArray, tmp198,
	movt	ip, #:upper16:92204	@ tmp203,
	movw	r2, #:lower16:92208	@ tmp206,
	movt	r2, #:upper16:92208	@ tmp206,
	ldr	r3, [r3, #4]	@ D.37794, <variable>.LenInByte
	mov	r1, #2	@ tmp193,
	strb	r1, [r5, #4]	@ tmp193, <variable>.SegState
	mov	r0, #26	@,
	ldr	r7, [r4, ip]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	movw	r1, #:lower16:.LC48	@,
	ldr	lr, [r4, r2]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	movt	r1, #:upper16:.LC48	@,
	rsb	r7, r3, r7	@ D.37796, D.37794, <variable>.SegFreshSize
	sub	lr, lr, #1	@ D.37798, <variable>.SegFreshNum,
	bic	r7, r7, r7, asr #31	@ tmp209, D.37796
	str	r7, [r4, ip]	@ tmp209, <variable>.SegFreshSize
	bic	ip, lr, lr, asr #31	@ tmp211, D.37798
	str	ip, [r4, r2]	@ tmp211, <variable>.SegFreshNum
	ldrb	ip, [r5, #5]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	ldr	r2, [r4, r6, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [sp, #0]	@ <variable>.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ Ret,
	b	.L481	@
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
	ldr	fp, [r4, r6]	@ D.37747, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	r9, fp, fp, asl #2	@, tmp165, D.37747, D.37747,
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
	mov	r5, #0	@ tmp189,
	.pad #300
	sub	sp, sp, #300	@,,
	cmp	r3, r5	@ <variable>.IsWaitSCD,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r5, [sp, #288]	@ tmp189, SegBufAddr
	str	r5, [sp, #284]	@ tmp189, SegBufLength
	beq	.L496	@,
	movw	r6, #:lower16:166144	@ tmp192,
	movt	r6, #:upper16:166144	@ tmp192,
	ldr	r0, [r0, r6]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	moveq	r0, #2	@ tmp195,
	mvneq	r5, #6	@ Ret,
	streq	r0, [r4, r6]	@ tmp195, <variable>.SmPushRaw.PushRawOver
	beq	.L498	@,
	add	r7, sp, #168	@ tmp508,,
	movw	r0, #:lower16:269731872	@,
	add	r8, sp, #88	@ tmp513,,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	add	sl, sp, #248	@ tmp201,,
	mov	r3, #2	@ tmp198,
	mov	r0, r7	@, tmp508
	str	r3, [r4, r6]	@ tmp198, <variable>.SmPushRaw.PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r8	@, tmp513
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, sl	@, tmp201
	bl	__memzero	@
	movw	ip, #:lower16:180124	@ tmp204,
	movt	ip, #:upper16:180124	@ tmp204,
	str	r5, [sp, #276]	@ tmp189, TmpAddr
	str	r5, [sp, #280]	@ tmp189, SegFreeBufLen
	mov	r0, sl	@, tmp201
	ldr	r2, [r4, ip]	@, <variable>.UpMsgStepNum
	str	r2, [sp, #20]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	r1, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r1, #0	@ SmStateReg.ScdRollAddr,
	bne	.L547	@,
.L496:
	mvn	r5, #6	@ Ret,
.L498:
	mov	r0, r5	@, Ret
	add	sp, sp, #300	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L547:
	add	sl, r4, #73728	@ pStreamSegArray, pScdInstance,
	ldr	r5, [sp, #260]	@, SmStateReg.ScdNum
	add	r6, sl, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r6, #0	@ pStreamSegArray,
	str	r5, [sp, #32]	@, %sfp
	str	r5, [sp, #292]	@, ScdSegNum
	beq	.L538	@,
	movw	r0, #:lower16:166104	@ tmp208,
	movw	lr, #:lower16:166108	@ tmp211,
	movt	r0, #:upper16:166104	@ tmp208,
	movt	lr, #:upper16:166108	@ tmp211,
	ldr	sl, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, lr]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	sl, [sp, #288]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r5, [sp, #284]	@ <variable>.StreamSegArray.SegBufSize,
.L538:
	movw	r0, #:lower16:269731872	@,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	movw	sl, #:lower16:166168	@ tmp215,
	movw	r3, #:lower16:166104	@ tmp219,
	movt	sl, #:upper16:166168	@ tmp215,
	movt	r3, #:upper16:166104	@ tmp219,
	movw	r5, #:lower16:73920	@ tmp218,
	movt	r5, #:upper16:73920	@ tmp218,
	ldr	r2, [sp, #284]	@ SegBufLength, SegBufLength
	ldr	r1, [r4, sl]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	ip, [r4, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	sl, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r3, [sp, #288]	@ SegBufAddr, SegBufAddr
	ldr	lr, [r4, r5]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, r3	@ tmp220, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	ldr	r5, [sp, #292]	@ ScdSegNum, ScdSegNum
	add	ip, lr, ip	@ tmp224, <variable>.StreamSegArray.pSegBufVirAddr, tmp220
	str	r1, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	str	ip, [r4, #8]	@ tmp224, <variable>.SegFilter.pSegBufVirAddr
	cmp	r5, #1152	@ ScdSegNum,
	movge	r5, #1152	@ D.39168,
	str	r2, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	str	r3, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	str	sl, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	and	r1, r0, #15	@ tmp214,,
	movw	r0, #:lower16:269731852	@,
	str	r1, [r4, #16]	@ tmp214, <variable>.SegFilter.ProtocolType
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.39168,
	bhi	.L548	@,
	ldr	r0, [sp, #292]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ iftmp.590,
.L501:
	add	r2, r4, #165888	@ D.39179, pScdInstance,
	add	r1, r4, #8	@, pScdInstance,
	str	r1, [sp, #56]	@, %sfp
	add	sl, r2, #368	@ D.39179, D.39179,
	str	r0, [r4, #40]	@ iftmp.590, <variable>.SegFilter.SegNum
	add	r2, sp, #272	@,,
	ldr	lr, [sp, #20]	@, %sfp
	mov	r1, sl	@, D.39179
	ldr	r0, [sp, #56]	@, %sfp
	add	r3, sp, #292	@,,
	str	lr, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	subs	r5, r0, #0	@ Ret,
	bne	.L496	@,
	ldr	r9, [sp, #292]	@ ScdSegNum.2496, ScdSegNum
	add	fp, r4, #168	@, pScdInstance,
	str	fp, [sp, #60]	@, %sfp
	cmp	r9, #1	@ ScdSegNum.2496,
	ble	.L549	@,
	strb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r9, r0	@ ScdSegNum.2496,
	bcs	.L508	@,
	ldr	r3, [sp, #292]	@ ScdSegNum, ScdSegNum
	ldr	ip, [sp, #20]	@, %sfp
	sub	r3, r3, #1	@ prephitmp.2472, ScdSegNum,
	str	r3, [sp, #292]	@ prephitmp.2472, ScdSegNum
	mul	r2, ip, r3	@ tmp273,, prephitmp.2472
	add	lr, r2, #41472	@ tmp274, tmp273,
	add	r0, lr, #93	@ tmp274, tmp274,
	ldr	fp, [r4, r0, asl #2]	@ tmp276, <variable>.TransFormSeg
	bic	r9, fp, #-2147483648	@, tmp276,
	str	r9, [sp, #84]	@, %sfp
.L509:
	ldr	r0, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r0, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L512	@,
	ldr	sl, [sp, #292]	@, ScdSegNum
	str	sl, [sp, #72]	@, %sfp
.L513:
	movw	r3, #:lower16:166092	@ tmp289,
	movt	r3, #:upper16:166092	@ tmp289,
	add	r0, r4, #179200	@, pScdInstance,
	movw	sl, #:lower16:73920	@,
	add	fp, r0, #888	@,,
	movt	sl, #:upper16:73920	@,
	str	fp, [sp, #52]	@, %sfp
	movw	r9, #:lower16:166088	@,
	str	sl, [sp, #40]	@, %sfp
	movt	r9, #:upper16:166088	@,
	movw	fp, #:lower16:166104	@,
	str	r9, [sp, #64]	@, %sfp
	movt	fp, #:upper16:166104	@,
	movw	ip, #:lower16:954437177	@,
	str	fp, [sp, #44]	@, %sfp
	movt	ip, #:upper16:954437177	@,
	movw	r2, #:lower16:166248	@,
	str	ip, [sp, #68]	@, %sfp
	movt	r2, #:upper16:166248	@,
	str	r2, [sp, #48]	@, %sfp
	ldr	lr, [r4, r3]	@, <variable>.StreamSegArray.Tail
	mov	r1, #0	@ ivtmp.2490,
	ldr	r3, [sp, #72]	@ prephitmp.2546, %sfp
	mov	r9, r1	@ i, ivtmp.2490
	str	r6, [sp, #36]	@ pStreamSegArray, %sfp
	str	lr, [sp, #80]	@, %sfp
	str	r5, [sp, #76]	@ Ret, %sfp
.L514:
	cmp	r9, r3	@ i, prephitmp.2546
	bge	.L550	@,
	ldr	ip, [sp, #20]	@, %sfp
	add	r5, r1, #41472	@ tmp291, ivtmp.2490,
	add	r6, r1, ip	@ ivtmp.2502, ivtmp.2490,
	add	ip, r1, #1	@ D.39246, ivtmp.2490,
	add	r3, r6, #41472	@ tmp293, ivtmp.2502,
	add	fp, ip, #41472	@ tmp514, D.39246,
	add	sl, r3, #92	@ tmp293, tmp293,
	ldr	r3, [sp, #288]	@ prephitmp.2557, SegBufAddr
	add	r0, fp, #92	@ tmp295, tmp514,
	add	r1, r5, #92	@ tmp291, tmp291,
	ldr	r2, [r4, sl, asl #2]	@, <variable>.TransFormSeg
	add	r5, r9, #1	@, i,
	str	r2, [sp, #12]	@, %sfp
	ldr	sl, [sp, #12]	@, %sfp
	ldr	r2, [r4, r0, asl #2]	@ tmp298, <variable>.TransFormSeg
	cmp	r3, sl	@ prephitmp.2557,
	str	r5, [sp, #28]	@, %sfp
	ldr	sl, [r4, r1, asl #2]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldreq	r5, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r1, r2, lsr #31	@ tmp297, tmp298,
	ldrne	r0, [sp, #12]	@, %sfp
	rsbeq	r5, sl, r5	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	strb	r1, [sp, #175]	@ tmp297, SegPacket.DspCheckPicOverFlag
	rsbne	r5, sl, r0	@ SegPacketLen, CurrSegPhyAddr,
	cmp	r5, #3	@ SegPacketLen,
	ble	.L517	@,
	ldr	lr, [sp, #96]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	lr, #0	@ LastSegPacket.PhyAddr,
	bne	.L551	@,
	ldr	r0, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r0, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L552	@,
.L523:
	ldr	r0, [sp, #44]	@, %sfp
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r1, sp, #276	@,,
	rsb	r3, r2, sl	@ tmp338, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #36]	@, %sfp
	add	r2, sp, #280	@,,
	add	lr, ip, r3	@ tmp341, <variable>.StreamSegArray.pSegBufVirAddr, tmp338
	str	r5, [sp, #180]	@ SegPacketLen, SegPacket.LenInByte
	mov	r5, #1	@ tmp334,
	str	lr, [sp, #168]	@ tmp341, SegPacket.VirAddr
	strb	r5, [sp, #173]	@ tmp334, SegPacket.IsLastSeg
	str	sl, [sp, #176]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #176]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #280]	@ SegFreeBufLen.2523, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	bne	.L553	@,
.L524:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	ldr	r5, [sp, #76]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp, #84]	@, %sfp
	ldr	r2, [sp, #280]	@, SegFreeBufLen
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC52	@,
	mov	r0, #0	@,
	ldr	r2, [sp, #176]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC52	@,
	ldr	r3, [sp, #180]	@, SegPacket.LenInByte
	mov	r6, #1	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L521:
	movw	r3, #:lower16:166092	@ tmp486,
	movt	r3, #:upper16:166092	@ tmp486,
	ldr	r2, [sp, #80]	@, %sfp
	ldr	r0, [r4, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	cmp	r0, r2	@ <variable>.StreamSegArray.Tail,
	movne	r0, #1	@ tmp488,
	moveq	r0, #0	@ tmp490,
	cmp	r9, #0	@ i,
	strb	r0, [r4, #3]	@ tmp490, <variable>.InsertNewSegFlag
	bgt	.L554	@,
	ldr	r1, [sp, #72]	@, %sfp
	ldr	r2, [sp, #32]	@, %sfp
	rsbs	r3, r1, #1	@ tmp503,
	movcc	r3, #0	@ tmp503
	cmp	r2, #1152	@,
	movls	r3, #0	@, tmp503,
	cmp	r3, #0	@ tmp503,
	bne	.L555	@,
.L537:
	cmp	r6, #1	@ ScdErrFlag,
	bne	.L498	@,
	b	.L496	@
.L517:
	sub	r2, r5, #1	@ tmp376, SegPacketLen,
	cmp	r2, #2	@ tmp376,
	bhi	.L526	@,
	ldr	r1, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r1, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L556	@,
.L522:
	ldr	r3, [sp, #292]	@ prephitmp.2546, ScdSegNum
	mov	r1, r6	@ ivtmp.2490, ivtmp.2502
	ldr	r9, [sp, #28]	@ i, %sfp
	b	.L514	@
.L526:
	cmp	r5, #0	@ SegPacketLen,
	beq	.L522	@,
	ldr	r5, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r5, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L557	@,
.L527:
	ldr	lr, [sp, #44]	@, %sfp
	ldr	r2, [sp, #40]	@, %sfp
	ldr	r0, [sp, #12]	@, %sfp
	ldr	ip, [r4, lr]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r1, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsb	lr, r3, r0	@ tmp415, prephitmp.2557,
	ldr	r5, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, sl	@ tmp411, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	rsb	r3, sl, r1	@ tmp416, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, sp, #276	@,,
	add	r2, sp, #280	@,,
	add	r3, lr, r3	@ tmp418, tmp415, tmp416
	add	ip, r5, ip	@ tmp414, <variable>.StreamSegArray.pSegBufVirAddr, tmp411
	mov	lr, #0	@,
	str	ip, [sp, #168]	@ tmp414, SegPacket.VirAddr
	str	r3, [sp, #180]	@ tmp418, SegPacket.LenInByte
	strb	lr, [sp, #173]	@, SegPacket.IsLastSeg
	str	sl, [sp, #176]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r1, [sp, #180]	@ temp.2529, SegPacket.LenInByte
	cmp	r1, #3	@ temp.2529,
	bls	.L522	@,
	ldr	r2, [sp, #64]	@, %sfp
	movw	sl, #:lower16:166092	@,
	movt	sl, #:upper16:166092	@,
	ldr	r3, [sp, #68]	@, %sfp
	ldr	lr, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r5, [r4, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	ip, lr, #1152	@ tmp422, <variable>.StreamSegArray.Tail,
	ldr	lr, [sp, #176]	@ D.40469, SegPacket.PhyAddr
	rsb	r2, r5, ip	@ tmp425, <variable>.StreamSegArray.Head, tmp422
	ldr	ip, [sp, #280]	@ SegFreeBufLen.2559, SegFreeBufLen
	cmp	lr, #0	@ D.40469,
	smull	r3, r0, r3, r2	@, tmp428,, tmp425
	mov	r5, r2, asr #31	@ tmp431, tmp425,
	rsb	r3, r5, r0, asr #8	@, tmp427, tmp431, tmp428,
	add	r5, r3, r3, asl #3	@, tmp434, tmp427, tmp427,
	sub	r3, r2, r5, asl #7	@ tmp436, tmp425, tmp434,
	rsb	r2, r3, #1152	@ StreamNum, tmp436,
	bne	.L558	@,
.L528:
	cmp	r2, #1	@ StreamNum,
	ldr	r5, [sp, #76]	@ Ret, %sfp
	ble	.L529	@,
	movw	r2, #3608	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	ldr	fp, [sp, #84]	@, %sfp
	movw	r2, #3609	@,
	ldr	r3, [sp, #280]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	str	fp, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #93]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	mov	r0, #1	@,
	movw	r2, #3610	@,
.L545:
	ldr	lr, [sp, #100]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r6, r0	@ ScdErrFlag,
	ldr	r3, [sp, #96]	@, LastSegPacket.PhyAddr
	str	ip, [sp, #4]	@ LastSegPacket.IsLastSeg,
	str	lr, [sp, #0]	@ LastSegPacket.LenInByte,
	bl	dprint_vfmw	@
	b	.L521	@
.L553:
	ldr	r5, [sp, #168]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r5, #0	@ SegPacket.VirAddr,
	beq	.L524	@,
	ldr	lr, [sp, #180]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	lr, r2	@ SegPacket.LenInByte, SegFreeBufLen.2523
	bhi	.L524	@,
	add	r5, fp, #92	@ tmp347, tmp514,
	ldr	r2, [sp, #52]	@, %sfp
	mov	r3, r7	@, tmp508
	ldr	r0, [sp, #60]	@, %sfp
	ldr	ip, [r4, r5, asl #2]	@ tmp350, <variable>.TransFormSeg
	bic	r1, ip, #-2147483648	@, tmp350,
	bl	GetSegPts	@
	ldr	r3, [sp, #48]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r7	@, tmp508
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L559	@,
	ldr	fp, [r4, r5, asl #2]	@ tmp363, <variable>.TransFormSeg
	movw	r1, #:lower16:.LC56	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC56	@,
	bic	r2, fp, #-2147483648	@, tmp363,
	ldrd	sl, [sp, #192]	@ SegPacket.Pts,,
	strd	sl, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
.L531:
	ldrb	r9, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC52	@,
	ldr	r2, [sp, #176]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC52	@,
	ldr	r3, [sp, #180]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	str	r9, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L522	@
.L551:
	ldr	ip, [sp, #100]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #280	@,,
	ldr	r0, [sp, #36]	@, %sfp
	add	r1, sp, #276	@,,
	add	r3, ip, r5	@ tmp303, LastSegPacket.LenInByte, SegPacketLen
	str	r3, [sp, #100]	@ tmp303, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r0, [sp, #96]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #280]	@ SegFreeBufLen.601, SegFreeBufLen
	cmp	r0, #0	@ LastSegPacket.PhyAddr,
	bne	.L560	@,
.L519:
	movw	r2, #3454	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	ldr	r5, [sp, #76]	@ Ret, %sfp
	bl	dprint_vfmw	@
	ldr	sl, [sp, #84]	@, %sfp
	movw	r2, #3455	@,
	ldr	r3, [sp, #280]	@, SegFreeBufLen
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	str	sl, [sp, #0]	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:.LC55	@,
	mov	r0, #1	@,
	ldrb	ip, [sp, #93]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movt	r1, #:upper16:.LC55	@,
	mov	r2, #3456	@,
	b	.L545	@
.L560:
	ldr	r1, [sp, #88]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r1, #0	@ LastSegPacket.VirAddr,
	beq	.L519	@,
	ldr	r5, [sp, #100]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r5, r2	@ LastSegPacket.LenInByte, SegFreeBufLen.601
	bhi	.L519	@,
	ldr	lr, [sp, #48]	@, %sfp
	mov	r1, r8	@, tmp513
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r2, [r4, lr]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r5, r0	@ Ret.2505,
	mov	r0, r8	@, tmp513
	bl	__memzero	@
	cmp	r5, #0	@ Ret.2505,
	bne	.L561	@,
	add	sl, fp, #92	@ tmp316, tmp514,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	ldr	r2, [r4, sl, asl #2]	@ tmp319, <variable>.TransFormSeg
	ldrd	sl, [sp, #112]	@ LastSegPacket.Pts,,
	bic	r2, r2, #-2147483648	@, tmp319,
	strd	sl, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	r9, [sp, #93]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC52	@,
	ldr	r2, [sp, #96]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC52	@,
	ldr	r3, [sp, #100]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	str	r9, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L522	@
.L552:
	ldr	r0, [sp, #56]	@, %sfp
	mov	r1, r7	@, tmp508
	mov	r2, r9	@, i
	ldr	r3, [sp, #20]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L523	@
.L548:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L501	@
.L550:
	ldr	r5, [sp, #76]	@ Ret, %sfp
	mov	r6, #0	@ ScdErrFlag,
	b	.L521	@
.L558:
	ldr	r0, [sp, #168]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r0, #0	@ SegPacket.VirAddr,
	beq	.L528	@,
	cmp	r1, ip	@ temp.2529, SegFreeBufLen.2559
	bhi	.L528	@,
	cmp	r2, #1	@ StreamNum,
	ble	.L544	@,
	add	r5, fp, #92	@ tmp440, tmp514,
	ldr	ip, [sp, #264]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #52]	@, %sfp
	mov	r3, r7	@, tmp508
	ldr	sl, [r4, r5, asl #2]	@ tmp443, <variable>.TransFormSeg
	rsb	r1, lr, ip	@ tmp439, D.40469, SmStateReg.ScdRollAddr
	ldr	r0, [sp, #60]	@, %sfp
	str	r1, [sp, #180]	@ tmp439, SegPacket.LenInByte
	bic	r1, sl, #-2147483648	@, tmp443,
	bl	GetSegPts	@
	ldr	sl, [sp, #48]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	mov	r1, r7	@, tmp508
	ldr	r2, [r4, sl]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@
	str	r0, [sp, #24]	@, %sfp
	bne	.L562	@,
	ldr	sl, [r4, r5, asl #2]	@ tmp454, <variable>.TransFormSeg
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bic	r2, sl, #-2147483648	@, tmp454,
	ldrd	sl, [sp, #192]	@,,
	strd	sl, [sp]	@,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r2, [sp, #176]	@, SegPacket.PhyAddr
	movw	r1, #:lower16:.LC52	@,
	ldr	r3, [sp, #180]	@, SegPacket.LenInByte
	movt	r1, #:upper16:.LC52	@,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r1, [sp, #44]	@, %sfp
	ldr	fp, [sp, #40]	@, %sfp
	ldr	sl, [sp, #48]	@, %sfp
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	mov	r1, r7	@, tmp508
	ldr	ip, [sp, #288]	@ SegBufAddr.2581, SegBufAddr
	ldr	r2, [sp, #12]	@, %sfp
	ldr	lr, [r4, fp]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, r3, ip	@ tmp463, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.2581
	rsb	fp, ip, r2	@ tmp467, SegBufAddr.2581,
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r2, [r4, sl]	@, <variable>.InstID
	add	r5, lr, r3	@ tmp466, <variable>.StreamSegArray.pSegBufVirAddr, tmp463
	str	fp, [sp, #180]	@ tmp467, SegPacket.LenInByte
	mov	r3, #1	@ tmp459,
	str	r5, [sp, #168]	@ tmp466, SegPacket.VirAddr
	strb	r3, [sp, #173]	@ tmp459, SegPacket.IsLastSeg
	str	ip, [sp, #176]	@ SegBufAddr.2581, SegPacket.PhyAddr
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L531	@,
	ldrb	lr, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC50	@,
	ldr	r2, [sp, #176]	@, SegPacket.PhyAddr
	movt	r1, #:upper16:.LC50	@,
	ldr	r3, [sp, #180]	@, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r6, [sp, #24]	@ Ret.2566, %sfp
	ldr	r5, [sp, #76]	@ Ret, %sfp
	str	lr, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L521	@
.L508:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #20]	@, %sfp
	rsb	r0, r1, r0	@,,
	bl	__aeabi_uidiv	@
	sub	r3, r0, #1	@ prephitmp.2472,,
	str	r3, [sp, #292]	@ prephitmp.2472, ScdSegNum
	cmp	r3, #0	@ prephitmp.2472,
	strlt	r5, [sp, #292]	@ Ret, ScdSegNum
	ldr	fp, [r4, #12]	@ <variable>.SegFilter.pScdUpMsg, <variable>.SegFilter.pScdUpMsg
	ldrge	r0, [sp, #20]	@, %sfp
	movlt	r1, #4	@ prephitmp.2476,
	movlt	r3, r5	@ prephitmp.2472, Ret
	mulge	r1, r0, r3	@ tmp283,, prephitmp.2472
	addge	r1, r1, #1	@ tmp284, tmp283,
	movge	r1, r1, asl #2	@ prephitmp.2476, tmp284,
	ldr	r9, [fp, r1]	@ tmp287,* prephitmp.2476
	bic	r1, r9, #-2147483648	@, tmp287,
	str	r1, [sp, #84]	@, %sfp
	b	.L509	@
.L555:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #60]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L537	@
.L557:
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, r7	@, tmp508
	ldr	r0, [sp, #56]	@, %sfp
	mov	r2, r9	@, i
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #288]	@ prephitmp.2557, SegBufAddr
	b	.L527	@
.L559:
	ldr	r5, [sp, #76]	@ Ret, %sfp
	mov	r0, #26	@,
	ldrb	ip, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC50	@,
.L546:
	movt	r1, #:upper16:.LC50	@,
	ldr	r2, [sp, #176]	@, SegPacket.PhyAddr
	ldr	r3, [sp, #180]	@, SegPacket.LenInByte
	mov	r6, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L521	@
.L512:
	mov	r1, sl	@, D.39179
	mov	r0, r4	@, pScdInstance
	mov	r2, r6	@, pStreamSegArray
	bl	GetNextVop	@
	str	r0, [sp, #72]	@, %sfp
	str	r0, [sp, #292]	@, ScdSegNum
	b	.L513	@
.L561:
	ldrb	ip, [sp, #93]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r1, #:lower16:.LC50	@,
	ldr	r2, [sp, #96]	@, LastSegPacket.PhyAddr
	movt	r1, #:upper16:.LC50	@,
	ldr	r3, [sp, #100]	@, LastSegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r5, [sp, #76]	@ Ret, %sfp
	mov	r6, #0	@ ScdErrFlag,
	str	ip, [sp, #0]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L521	@
.L554:
	ldr	r0, [sp, #20]	@, %sfp
	mul	r2, r0, r9	@ tmp492,, i
	ldr	r0, [sp, #60]	@, %sfp
	add	lr, r2, #41472	@ tmp493, tmp492,
	add	ip, lr, #93	@ tmp493, tmp493,
	ldr	r1, [r4, ip, asl #2]	@ tmp496, <variable>.TransFormSeg
	bic	r1, r1, #-2147483648	@, tmp496,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L537	@,
	b	.L496	@
.L549:
	movw	lr, #:lower16:180096	@ tmp242,
	movw	r3, #:lower16:180100	@ tmp243,
	movt	lr, #:upper16:180096	@ tmp242,
	movt	r3, #:upper16:180100	@ tmp243,
	ldr	ip, [r4, lr]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	r0, [r4, r3]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	ip, r0	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	strleb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movgt	r0, #1	@ tmp246,
	strgtb	r0, [r4, #0]	@ tmp246, <variable>.SegFullFlag
	cmp	r9, #0	@ ScdSegNum.2496,
	bne	.L505	@,
	movw	r5, #:lower16:166140	@ tmp250,
	movt	r5, #:upper16:166140	@ tmp250,
	ldr	r1, [r4, r5]	@ SrcEaten.2497, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten.2497,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten.2497,
	bgt	.L507	@,
.L506:
	mov	r1, #0	@ SrcEaten,
.L507:
	ldr	r0, [sp, #60]	@, %sfp
	bl	DeleteRawLen	@
	subs	r5, r0, #0	@ Ret,
	bne	.L496	@,
	b	.L498	@
.L556:
	ldr	r0, [sp, #12]	@, %sfp
	str	ip, [sp, #16]	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.39318
	beq	.L496	@,
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ tmp379,* D.39318
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp378,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp382,
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ tmp385,
	orr	lr, r2, r3, asl #24	@, tmp381, tmp378, tmp379,
	orr	r3, lr, r1, asl #16	@, tmp384, tmp381, tmp382,
	orr	lr, r3, ip, asl #8	@, tmp387, tmp384, tmp385,
	bic	r0, lr, #255	@ tmp388, tmp387,
	cmp	r0, #256	@ tmp388,
	beq	.L522	@,
	mov	r2, r9	@, i
	ldr	r3, [sp, #20]	@, %sfp
	mov	r1, r8	@, tmp513
	ldr	r0, [sp, #56]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	fp, [sp, #44]	@, %sfp
	ldr	r2, [sp, #40]	@, %sfp
	mov	lr, #1	@ tmp390,
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r1, [r4, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [r4, r2]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r2, sp, #280	@,,
	rsb	r9, r1, sl	@ tmp394, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	add	r1, sp, #276	@,,
	add	r3, ip, r9	@ tmp397, <variable>.StreamSegArray.pSegBufVirAddr, tmp394
	str	r5, [sp, #100]	@ SegPacketLen, LastSegPacket.LenInByte
	str	r3, [sp, #88]	@ tmp397, LastSegPacket.VirAddr
	strb	lr, [sp, #93]	@ tmp390, LastSegPacket.IsLastSeg
	str	sl, [sp, #96]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r0, [sp, #16]	@,
	mov	r3, r8	@, tmp513
	ldr	r2, [sp, #52]	@, %sfp
	add	ip, r0, #41472	@ tmp400, D.39246,
	ldr	r0, [sp, #60]	@, %sfp
	add	r5, ip, #92	@ tmp400, tmp400,
	ldr	r9, [r4, r5, asl #2]	@ tmp403, <variable>.TransFormSeg
	bic	r1, r9, #-2147483648	@, tmp403,
	bl	GetSegPts	@
	b	.L522	@
.L505:
	cmp	r9, #1	@ ScdSegNum.2496,
	bne	.L506	@,
	movw	r1, #:lower16:166108	@ tmp252,
	movt	r1, #:upper16:166108	@ tmp252,
	movw	ip, #:lower16:166260	@ tmp251,
	movt	ip, #:upper16:166260	@ tmp251,
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	mov	r2, #3	@ tmp255,
	ldr	r1, [r4, ip]	@ SrcEaten, <variable>.TransFormSeg
	movw	r5, #:lower16:166140	@ tmp260,
	movt	r5, #:upper16:166140	@ tmp260,
	mul	ip, r2, r3	@ tmp253, tmp255, <variable>.StreamSegArray.SegBufSize
	ldr	lr, [r4, r5]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	rsb	r2, r1, lr	@ tmp261, SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	cmp	ip, #0	@ tmp253,
	add	r0, ip, #3	@ tmp258, tmp253,
	movlt	ip, r0	@ tmp257, tmp258
	cmp	r2, ip, asr #2	@ tmp261, tmp257,
	ble	.L507	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, r5]	@ SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	b	.L507	@
.L562:
	ldr	r5, [sp, #76]	@ Ret, %sfp
	mov	r0, #26	@,
	ldrb	ip, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	movw	r1, #:lower16:.LC50	@,
	b	.L546	@
.L544:
	ldr	r5, [sp, #76]	@ Ret, %sfp
.L529:
	ldrb	r6, [sp, #173]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r3, r1	@, temp.2529
	mov	r2, lr	@, D.40469
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	str	r6, [sp, #0]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	mov	r6, #0	@ ScdErrFlag,
	b	.L521	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ SmID, SmID
	movw	r0, #:lower16:.LANCHOR0	@ tmp167,
	movt	r0, #:upper16:.LANCHOR0	@ tmp167,
	add	r3, r0, r5, asl #2	@, tmp171, tmp167, SmID,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	bne	.L586	@,
.L564:
	mvn	r0, #0	@ D.38257,
.L570:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L586:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L564	@,
	movw	r2, #:lower16:73900	@ tmp173,
	movw	r1, #:lower16:73896	@ tmp174,
	movt	r2, #:upper16:73900	@ tmp173,
	movt	r1, #:upper16:73896	@ tmp174,
	ldr	r0, [r4, r2]	@ D.38264, <variable>.RawPacketArray.Tail
	ldr	r3, [r4, r1]	@, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ D.38264,
	str	r3, [sp, #16]	@, %sfp
	beq	.L565	@,
	mov	r1, r3, asl #3	@ tmp417,,
	mov	r7, #1	@ rawnum,
	add	sl, r1, r3	@ tmp178, tmp417, index
	mov	fp, r5	@ SmID, SmID
	add	r8, r4, sl, asl #3	@, tmp180, pSmInstArray, tmp178,
	ldr	sl, [r8, #176]	@ TotalSrcLength, <variable>.Length
	b	.L566	@
.L567:
	mov	r2, r2, lsr #22	@ index, index,
	cmp	r0, ip	@ D.38264, index
	add	r3, r2, #1	@ D.38272, index,
	add	r7, r7, #1	@ rawnum, rawnum,
	add	ip, r2, r2, asl #3	@, tmp438, index, index,
	ldr	r1, [r8, #176]	@ D.38274, <variable>.Length
	mov	r3, r3, asl #22	@ index, D.38272,
	beq	.L565	@,
	movw	r5, #1025	@,
	cmp	r7, r5	@ rawnum,
	add	ip, r4, ip, asl #3	@, tmp440, pSmInstArray, tmp438,
	mov	r3, r3, lsr #22	@ index, index,
	add	sl, sl, r1	@ TotalSrcLength, TotalSrcLength, D.38274
	mov	r5, r7	@ tmp426, rawnum
	beq	.L565	@,
	ldrb	r9, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r1, r3, asl #3	@ tmp416, index,
	add	r8, r1, r3	@ tmp451, tmp416, index
	cmp	r9, #0	@ <variable>.is_not_last_packet_flag,
	add	r8, r4, r8, asl #3	@, tmp453, pSmInstArray, tmp451,
	beq	.L585	@,
	cmp	r0, r2	@ D.38264, index
	add	r7, r7, #1	@ rawnum, rawnum,
	ldr	r2, [ip, #176]	@ D.38274, <variable>.Length
	beq	.L565	@,
	ldrb	ip, [ip, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.38274
	cmp	ip, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L585	@,
	cmp	r0, r3	@ D.38264, index
	add	r7, r5, #2	@ rawnum, tmp426,
	ldr	r2, [r8, #176]	@ D.38274, <variable>.Length
	beq	.L565	@,
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.38274
.L566:
	add	r2, r1, r3	@ tmp429, tmp416, index
	add	r8, r3, #1	@ D.38272, index,
	mov	ip, r8, asl #22	@ index, D.38272,
	add	r8, r4, r2, asl #3	@, tmp431, pSmInstArray, tmp429,
	mov	ip, ip, lsr #22	@ index, index,
	ldrb	r3, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r2, ip, #1	@ D.38272, index,
	add	r1, ip, ip, asl #3	@, tmp186, index, index,
	cmp	r3, #0	@ <variable>.is_not_last_packet_flag,
	mov	r2, r2, asl #22	@ index, D.38272,
	add	r8, r4, r1, asl #3	@, tmp188, pSmInstArray, tmp186,
	bne	.L567	@,
.L585:
	add	ip, r4, #73728	@, pSmInstArray,
	add	r2, r4, #168	@, pSmInstArray,
	add	lr, ip, #192	@,,
	str	r2, [sp, #28]	@, %sfp
	str	lr, [sp, #20]	@, %sfp
	movw	r8, #:lower16:73920	@ tmp199,
	mov	r0, lr	@,
	mov	r5, fp	@ SmID, SmID
	bl	ResetStreamSegArray	@
	movw	r3, #:lower16:166108	@ tmp200,
	movt	r3, #:upper16:166108	@ tmp200,
	movt	r8, #:upper16:73920	@ tmp199,
	ldr	r1, [r4, r3]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	r0, r1, #262144	@ tmp201, <variable>.StreamSegArray.SegBufSize,
	cmp	r0, sl	@ tmp201, TotalSrcLength
	blt	.L587	@,
	ldr	r3, [r4, #56]	@ prephitmp.2633, <variable>.Config.VidStd
	movw	r0, #:lower16:166104	@ tmp206,
	movt	r0, #:upper16:166104	@ tmp206,
	ldr	r9, [r4, r8]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	cmp	r3, #10	@ prephitmp.2633,
	cmpne	r3, #12	@, prephitmp.2633,
	ldr	ip, [r4, r0]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L571	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp414,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp414,
	ldr	r2, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	lr, r2, #1	@ tmp216, g_VdmCharacter,
	streqb	lr, [r9], #1	@ tmp216,
	ldr	r8, [sp, #16]	@, %sfp
	mov	r2, #72	@ tmp222,
	ldreq	r3, [r4, #56]	@ prephitmp.2633, <variable>.Config.VidStd
	mla	r1, r2, r8, r4	@ tmp223, tmp222,, pSmInstArray
	cmp	r3, #12	@ prephitmp.2633,
	movw	r3, #:lower16:73896	@ tmp230,
	movt	r3, #:upper16:73896	@ tmp230,
	ldr	r8, [r4, r3]	@ index.2660, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #172]	@, <variable>.VirAddr
	str	r1, [sp, #36]	@, %sfp
	bne	.L573	@,
	ldr	r0, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	cmp	r3, #0	@ SrcLength,
	moveq	r0, #0	@, tmp239
	andne	r0, r0, #1	@,, tmp239, g_VdmCharacter
	cmp	r0, #0	@ tmp239,
	beq	.L573	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L574	@,
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@,,
	str	r1, [sp, #36]	@, %sfp
.L573:
	str	ip, [r6, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, ip	@, TmpPhyAddr
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	mov	ip, #72	@ tmp300,
	cmp	r7, #0	@ rawnum,
	str	r0, [r6, #0]	@ D.38335, <variable>.VirAddr
	rsb	r1, r0, r9	@ tmp297, D.38335, TmpVirAddr
	ldr	r3, [sp, #16]	@, %sfp
	str	r1, [r6, #12]	@ tmp297, <variable>.LenInByte
	mla	ip, ip, r3, r4	@ tmp301, tmp300,, pSmInstArray
	ldrd	r0, [ip, #184]	@, tmp301,
	strd	r0, [r6, #24]	@, pStreamSeg,
	ldrd	r2, [ip, #184]	@, tmp301,
	strd	r2, [r6, #32]	@, pStreamSeg,
	mov	r3, #1	@ tmp316,
	ldrd	r0, [ip, #200]	@, tmp301,
	strb	r3, [r6, #5]	@ tmp316, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@, pStreamSeg,
	ldr	r3, [sp, #0]	@,
	beq	.L576	@,
	ldr	r1, [sp, #36]	@, %sfp
	cmp	r1, #0	@,
	cmpne	r9, #0	@, TmpVirAddr,
	beq	.L565	@,
	add	r2, ip, #208	@, tmp301,
	add	fp, ip, #232	@ tmp424, tmp301,
	mov	r0, r8, asl #3	@ tmp415, index.2660,
	add	ip, ip, #224	@ tmp423, tmp301,
	mov	lr, #0	@ i,
	str	r2, [sp, #24]	@, %sfp
	str	sl, [sp, #32]	@ TotalSrcLength, %sfp
	mov	r2, r3	@ SrcLength, SrcLength
	mov	sl, r7	@ rawnum, rawnum
	str	r5, [sp, #36]	@ SmID, %sfp
	mov	r3, lr	@ i, i
	mov	r5, ip	@ tmp423, tmp423
	str	r1, [sp, #16]	@, %sfp
	mov	r7, r4	@ pSmInstArray, pSmInstArray
	mov	ip, r0	@ tmp415, tmp415
	b	.L577	@
.L578:
	adds	r9, r9, r4	@ TmpVirAddr, TmpVirAddr, SrcLength.523
	ldr	r1, [sp, #16]	@, %sfp
	moveq	r0, #0	@, tmp326
	movne	r0, #1	@, tmp326
	cmp	r1, #0	@,
	moveq	r0, #0	@, tmp331
	andne	r0, r0, #1	@,, tmp331, tmp326
	cmp	r0, #0	@ tmp331,
	beq	.L565	@,
.L577:
	ldr	r1, [sp, #16]	@, %sfp
	mov	r0, r9	@, TmpVirAddr
	mov	r4, r2	@ SrcLength.523, SrcLength
	stmia	sp, {r3, ip}	@ phole stm
	bl	memcpy	@
	ldr	ip, [sp, #4]	@,
	add	r1, r8, #1	@ temp.2679, index.2660,
	ldr	r0, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, ip, r8	@ tmp339, tmp415, index.2660
	mov	r8, r1, asl #22	@ index.2660, temp.2679,
	ldr	r3, [sp, #0]	@,
	add	r1, r0, r4	@ tmp346, <variable>.LenInByte, SrcLength.523
	add	ip, r7, r2, asl #3	@, tmp341, pSmInstArray, tmp339,
	mov	r8, r8, lsr #22	@ index.2660, index.2660,
	add	r3, r3, #1	@ i, i,
	ldrb	r2, [ip, #221]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	mov	ip, r8, asl #3	@ tmp415, index.2660,
	str	r1, [r6, #12]	@ tmp346, <variable>.LenInByte
	add	r0, ip, r8	@, tmp415, index.2660
	str	r0, [sp, #16]	@, %sfp
	cmp	sl, r3	@ rawnum, i
	strb	r2, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	ldr	r1, [sp, #24]	@, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	ldrd	r0, [r1]	@, <variable>.DispTime
	strd	r0, [sp, #8]	@,,
	add	r1, r7, r2, asl #3	@, tmp353, pSmInstArray,,
	ldr	r2, [r1, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #172]	@, <variable>.VirAddr
	str	r1, [sp, #16]	@, %sfp
	ldrd	r0, [sp, #8]	@,,
	strd	r0, [r6, #48]	@, pStreamSeg,
	ldr	r0, [r5, #0]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	str	r0, [r6, #56]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	ldr	r0, [r5, #4]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r0, [r6, #60]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	ldr	r0, [fp, #0]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r0, [r6, #64]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	ldr	r0, [fp, #4]	@ <variable>.GopNum, <variable>.GopNum
	str	r0, [r6, #68]	@ <variable>.GopNum, <variable>.GopNum
	bhi	.L578	@,
	ldr	sl, [sp, #32]	@ TotalSrcLength, %sfp
	ldr	r5, [sp, #36]	@ SmID, %sfp
.L576:
	mov	r2, r5	@, SmID
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #20]	@, %sfp
	bl	InsertStreamSeg	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.38257,
	b	.L570	@
.L565:
	mvn	r0, #3	@ D.38257,
	b	.L570	@
.L571:
	ldr	r2, [sp, #16]	@, %sfp
	mov	r8, #72	@ tmp405,
	movw	r3, #:lower16:73896	@ tmp413,
	movt	r3, #:upper16:73896	@ tmp413,
	mla	r0, r8, r2, r4	@ tmp406, tmp405,, pSmInstArray
	ldr	r8, [r4, r3]	@ index.2660, <variable>.RawPacketArray.Head
	ldr	lr, [r0, #172]	@, <variable>.VirAddr
	ldr	r3, [r0, #176]	@ SrcLength, <variable>.Length
	str	lr, [sp, #36]	@, %sfp
	b	.L573	@
.L587:
	mov	r2, sl	@, TotalSrcLength
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.38286
	beq	.L570	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC44	@,
	movw	r2, #2007	@,
	movt	r1, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38257,
	b	.L570	@
.L574:
	cmp	r7, #1	@ rawnum,
	beq	.L565	@,
	add	r1, r8, #1	@ temp.2665, index.2660,
	mov	r8, r1, asl #22	@ index.2660, temp.2665,
	mov	r8, r8, lsr #22	@ index.2660, index.2660,
	mla	r0, r2, r8, r4	@ tmp244, tmp222, index.2660, pSmInstArray
	ldr	lr, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r1, [r0, #172]	@ SrcVirAddr.2668, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2667, SrcLength, <variable>.Length
	cmp	r3, #2	@ SrcLength.2667,
	ble	.L575	@,
	add	r0, r8, #1020	@ tmp252, index.2660,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2667,
	add	lr, r0, #3	@ tmp252, tmp252,
	sub	r7, r7, #1	@ rawnum, rawnum,
	mov	r0, lr, asl #22	@ tmp254, tmp252,
	mov	lr, r0, lsr #22	@ tmp254, tmp254,
	mla	r2, r2, lr, r4	@ tmp259, tmp222, tmp254, pSmInstArray
	ldr	r0, [r2, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r0, #3	@ tmp261, <variable>.Length,
	add	r2, r1, lr	@, SrcVirAddr.2668, tmp261
	str	r2, [sp, #36]	@, %sfp
	b	.L573	@
.L575:
	cmp	r7, #2	@ rawnum,
	beq	.L565	@,
	add	r8, r8, #1	@ temp.2669, index.2660,
	mov	fp, r8, asl #22	@ index.2660, temp.2669,
	mov	r8, fp, lsr #22	@ index.2660, index.2660,
	mla	r1, r2, r8, r4	@ tmp267, tmp222, index.2660, pSmInstArray
	ldr	lr, [r1, #176]	@ <variable>.Length, <variable>.Length
	ldr	fp, [r1, #172]	@ SrcVirAddr.2672, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2671, SrcLength.2667, <variable>.Length
	cmp	r3, #2	@ SrcLength.2671,
	ble	.L565	@,
	add	lr, r8, #1020	@ tmp275, index.2660,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2671,
	add	r0, lr, #3	@ tmp275, tmp275,
	add	lr, lr, #2	@ tmp286, tmp286,
	sub	r7, r7, #2	@ rawnum, rawnum,
	mov	r0, r0, asl #22	@ tmp277, tmp275,
	mov	r1, lr, asl #22	@ tmp288, tmp286,
	mov	lr, r0, lsr #22	@ tmp277, tmp277,
	mov	r1, r1, lsr #22	@ tmp288, tmp288,
	mla	r0, r2, lr, r4	@ tmp282, tmp222, tmp277, pSmInstArray
	mla	lr, r2, r1, r4	@ tmp293, tmp222, tmp288, pSmInstArray
	ldr	r1, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r2, [lr, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r1, #3	@ tmp284, <variable>.Length,
	rsb	r0, r2, lr	@ tmp295, <variable>.Length, tmp284
	add	r2, fp, r0	@, SrcVirAddr.2672, tmp295
	str	r2, [sp, #36]	@, %sfp
	b	.L573	@
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
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L596	@,
.L589:
	mvn	r4, #0	@ ret,
.L594:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L596:
	cmp	r5, #0	@ pSmInstArray,
	beq	.L589	@,
	ldr	r3, [r5, #56]	@ D.38467, <variable>.Config.VidStd
	sub	r2, r3, #8	@ tmp146, D.38467,
	cmp	r3, #5	@ D.38467,
	cmpne	r2, #1	@, tmp146,
	bls	.L590	@,
	cmp	r3, #4	@ D.38467,
	beq	.L590	@,
	cmp	r3, #10	@ D.38467,
	beq	.L590	@,
	cmp	r3, #14	@ D.38467,
	beq	.L590	@,
	cmp	r3, #11	@ D.38467,
	beq	.L590	@,
	cmp	r3, #12	@ D.38467,
	beq	.L590	@,
	cmp	r3, #13	@ D.38467,
	beq	.L590	@,
	cmp	r3, #1	@ D.38467,
	bne	.L591	@,
	ldr	r1, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L591	@,
.L590:
	mov	r0, r7	@, SmID
	mov	r1, r6	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L597	@,
.L591:
	add	r4, r5, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r4, #192	@,,
	bl	GetStreamSeg	@
	subs	r4, r0, #0	@ ret,
	beq	.L598	@,
.L592:
	movw	r1, #:lower16:180116	@ tmp168,
	movt	r1, #:upper16:180116	@ tmp168,
	ldr	r2, [r5, r1]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, r2, #1	@ tmp171, <variable>.numReadSegFail,
	str	r0, [r5, r1]	@ tmp171, <variable>.numReadSegFail
	b	.L594	@
.L598:
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp158,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp158,
	ldr	ip, [r8, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	ip, #0	@ vfmw_save_seg_file,
	beq	.L593	@,
	movw	r3, #:lower16:save_seg_chan_num	@ tmp160,
	movt	r3, #:upper16:save_seg_chan_num	@ tmp160,
	ldr	lr, [r3, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, lr	@ SmID, save_seg_chan_num
	beq	.L599	@,
.L593:
	movw	lr, #:lower16:180116	@ tmp173,
	movt	lr, #:upper16:180116	@ tmp173,
	mov	ip, #0	@ tmp174,
	str	ip, [r5, lr]	@ tmp174, <variable>.numReadSegFail
	b	.L594	@
.L599:
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
	b	.L593	@
.L597:
	movw	r1, #:lower16:.LC62	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC62	@,
	mvn	r4, #6	@ ret,
	bl	dprint_vfmw	@
	b	.L592	@
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
	mvneq	r0, #0	@ D.37244,
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
	mvneq	r0, #2	@ D.37244,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, r0, r0, asl #3	@, tmp159, tmp153, tmp153,
	str	r0, [r3, r2]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r3, lr, asl #3	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.37244, tmp144
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
	mvneq	r0, #0	@ D.37225,
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	ldmeqfd	sp!, {r4, pc}	@
	movw	r2, #:lower16:73732	@ tmp146,
	movt	r2, #:upper16:73732	@ tmp146,
	mov	r0, #73728	@ tmp145,
	ldr	ip, [r3, r0]	@ D.37226, <variable>.Head
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ D.37226, <variable>.Tail
	mvneq	r0, #2	@ D.37225,
	ldmeqfd	sp!, {r4, pc}	@
	add	r2, ip, ip, asl #3	@, tmp151, D.37226, D.37226,
	movw	lr, #:lower16:73744	@ tmp148,
	movt	lr, #:upper16:73744	@ tmp148,
	mov	r0, r1	@, pRawPacket
	add	r1, r3, r2, asl #3	@,, pRawStreamArray, tmp151,
	mov	r2, #72	@,
	str	ip, [r3, lr]	@ D.37226, <variable>.CurShowIndex
	bl	memcpy	@
	mov	r0, r4	@ D.37225, tmp144
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
	mov	r7, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r4, #0	@ pRawStreamArray,
	beq	.L611	@,
	movw	r0, #:lower16:73732	@ tmp159,
	movt	r0, #:upper16:73732	@ tmp159,
	mov	r1, #73728	@ tmp158,
	ldr	r2, [r4, r1]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r4, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ <variable>.Head, <variable>.Tail
	beq	.L611	@,
	movw	r6, #:lower16:73740	@ tmp162,
	movt	r6, #:upper16:73740	@ tmp162,
	ldr	sl, [r4, r6]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	r6, sl	@ prephitmp.2769, FirstRawOffset
.L612:
	mov	r1, r9	@, tmp219
	mov	r0, r4	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r8, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [sp, #12]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp169,
	rsb	r8, sl, r8	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r1, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	cmp	r8, fp	@ RawShowTotalLen, SegStreamSize
	movgt	ip, #0	@, tmp177
	movle	ip, #1	@, tmp177
	add	r6, r3, r6	@ tmp167, RawPacket.VirAddr, prephitmp.2769
	cmp	ip, r2	@ tmp177,
	str	r6, [sp, #12]	@ tmp167, RawPacket.VirAddr
	add	sl, r1, sl	@ tmp165, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r8	@ RawPacket.Length, RawShowTotalLen
	moveq	r6, ip	@ PushRawNum, tmp177
	str	sl, [sp, #8]	@ tmp165, RawPacket.PhyAddr
	str	r2, [r7, #0]	@ tmp169,* pDownMsgVirAddr
	moveq	sl, r6	@ j.2812, PushRawNum
	str	r2, [r7, #4]	@ tmp169,
	str	r2, [r7, #8]	@ tmp169,
	str	r8, [sp, #16]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [r5, #4]	@ tmp169, <variable>.PushRawTotalLen
	beq	.L614	@,
	mov	r6, r2	@ PushRawNum, tmp169
	str	r4, [sp, #4]	@ pRawStreamArray, %sfp
	mov	r2, r8	@ prephitmp.2771, RawShowTotalLen
	mov	sl, r6	@ j.2812, PushRawNum
	b	.L616	@
.L623:
	ldr	r3, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	cmp	r6, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp194
	movle	r1, #1	@, tmp194
	add	r8, r8, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	fp, r8	@ SegStreamSize, RawShowTotalLen
	mov	r2, r3	@ prephitmp.2771, RawPacket.Length
	movlt	r1, #0	@, tmp194,
	cmp	r1, #0	@ tmp194,
	beq	.L614	@,
.L616:
	cmp	r2, #0	@ prephitmp.2771,
	add	ip, sl, #1	@ j, j.2812,
	ldr	r0, [sp, #4]	@, %sfp
	mov	r1, r9	@, tmp219
	add	r2, ip, #1	@ j.2790, j,
	add	r6, r6, #1	@ PushRawNum, PushRawNum,
	ble	.L615	@,
	ldr	lr, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r4, #0	@,
	str	r4, [sp, #16]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp179, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r7, sl, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r3, r3, #1	@ tmp182, tmp179,
	str	r3, [r7, ip, asl #2]	@ tmp182,* pDownMsgVirAddr
	add	sl, r2, #1	@ j.2812, j.2790,
	ldr	ip, [sp, #120]	@, DownMsgPhyAddr
	add	lr, ip, sl, asl #2	@, tmp184,, j.2812,
	str	lr, [r7, r2, asl #2]	@ tmp184,* pDownMsgVirAddr
.L615:
	str	r8, [r5, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L623	@,
.L614:
	ldr	r2, [sp, #124]	@, LowdlyFlag
	cmp	r2, #0	@,
	bne	.L617	@,
	ldr	r3, [sp, #16]	@ temp.2795, RawPacket.Length
	cmp	r3, #0	@ temp.2795,
	bne	.L624	@,
.L617:
	cmp	r6, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.38789,
	bne	.L618	@,
.L619:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L624:
	ldr	r2, [r5, #4]	@ D.38774, <variable>.PushRawTotalLen
	sub	ip, fp, #16	@ tmp197, SegStreamSize,
	cmp	fp, r8	@ SegStreamSize, RawShowTotalLen
	cmplt	r2, ip	@, D.38774, tmp197
	bge	.L617	@,
	cmp	r6, #1024	@ PushRawNum,
	bge	.L618	@,
	rsb	r2, r2, fp	@ D.38783, D.38774, SegStreamSize
	cmp	r3, r2	@ temp.2795, D.38783
	blt	.L617	@,
	ldr	r0, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	lr, sl, #1	@ j.2800, j.2812,
	ldr	r1, [sp, #124]	@, LowdlyFlag
	add	r3, lr, #1	@ j.2808, j.2800,
	add	ip, r0, r2	@ tmp205, RawPacket.PhyAddr, D.38783
	add	r6, r6, #1	@ PushRawNum, PushRawNum,
	sub	r4, ip, #1	@ tmp208, tmp205,
	str	r1, [sp, #16]	@, RawPacket.Length
	str	r0, [r7, sl, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	add	sl, r3, #1	@ j.2812, j.2808,
	str	r4, [r7, lr, asl #2]	@ tmp208,* pDownMsgVirAddr
	ldr	r1, [sp, #120]	@, DownMsgPhyAddr
	add	lr, r1, sl, asl #2	@, tmp210,, j.2812,
	str	lr, [r7, r3, asl #2]	@ tmp210,* pDownMsgVirAddr
	ldr	r0, [r5, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	add	r4, r0, r2	@ tmp213, <variable>.PushRawTotalLen, D.38783
	str	r4, [r5, #4]	@ tmp213, <variable>.PushRawTotalLen
.L618:
	sub	sl, sl, #1	@ tmp215, j.2812,
	ldr	r0, [sp, #120]	@, DownMsgPhyAddr
	mov	r4, #0	@ tmp216,
	mov	r3, #1	@ tmp217,
	str	r4, [r7, sl, asl #2]	@ tmp216,* pDownMsgVirAddr
	mov	r1, r7	@, pDownMsgVirAddr
	mov	r2, r6	@, PushRawNum
	str	r6, [r5, #0]	@ PushRawNum, <variable>.PushRawNum
	str	r3, [r5, #8]	@ tmp217, <variable>.PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r4	@ D.38789, tmp216
	b	.L619	@
.L611:
	mov	r6, #0	@ prephitmp.2769,
	mov	sl, r6	@ FirstRawOffset, prephitmp.2769
	b	.L612	@
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
	bne	.L626	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L626:
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
	adds	r6, r0, #168	@ pRawStreamArray, pScdInstance,
	.pad #164
	sub	sp, sp, #164	@,,
	mov	r3, #0	@ tmp148,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r3, [sp, #148]	@ tmp148, SegBufSize
	ldr	r5, [r0, #56]	@ StdType, <variable>.Config.VidStd
	ldr	r7, [r0, #88]	@ D.38599, <variable>.Config.ScdLowdlyEnable
	bne	.L647	@,
.L629:
	mvn	r5, #0	@ Ret,
.L639:
	mov	r0, r5	@, Ret
	add	sp, sp, #164	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L647:
	add	r8, r0, #73728	@ pStreamSegArray, pScdInstance,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r8, r3	@ pStreamSegArray,
	beq	.L629	@,
	add	lr, r0, #165888	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, lr, #248	@,,
	str	r3, [sp, #152]	@ tmp148, FreeSegBufAddr
	str	r3, [sp, #156]	@ tmp148, SegStreamSize
	movw	r9, #:lower16:73900	@ tmp154,
	bl	__memzero	@
	movt	r9, #:upper16:73900	@ tmp154,
	movw	ip, #:lower16:73896	@ tmp155,
	movt	ip, #:upper16:73896	@ tmp155,
	ldr	sl, [r4, r9]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	mov	r0, #26	@,
	ldr	r1, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	sl, sl, r1	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r1, #:lower16:.LC63	@,
	addmi	sl, sl, #1024	@ StreamNum, StreamNum,
	movt	r1, #:upper16:.LC63	@,
	mov	r2, sl	@, StreamNum
	bl	dprint_vfmw	@
	movw	r2, #:lower16:73916	@ tmp159,
	movw	r0, #:lower16:73908	@ tmp160,
	movt	r2, #:upper16:73916	@ tmp159,
	movt	r0, #:upper16:73908	@ tmp160,
	ldr	r9, [r4, r2]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	subs	r9, r9, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L629	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC66	@,
	mov	r2, r9	@, RawStreamSize
	movt	r1, #:upper16:.LC66	@,
	bl	dprint_vfmw	@
	cmp	sl, #0	@ StreamNum,
	bgt	.L648	@,
.L632:
	mvn	r5, #4	@ Ret,
	b	.L639	@
.L648:
	cmp	r9, #3	@ RawStreamSize,
	ble	.L632	@,
	movw	r2, #:lower16:166092	@ tmp163,
	movt	r2, #:upper16:166092	@ tmp163,
	movw	ip, #:lower16:166088	@ tmp166,
	movt	ip, #:upper16:166088	@ tmp166,
	ldr	sl, [r4, r2]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	mov	r1, #1152	@,
	ldr	r3, [r4, ip]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	add	r0, sl, r1	@ tmp164, <variable>.StreamSegArray.Tail,
	rsb	r0, r3, r0	@, <variable>.StreamSegArray.Head, tmp164
	bl	__aeabi_idivmod	@
	mov	r0, #26	@,
	rsb	sl, r1, #1152	@ StreamNum.550,,
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	mov	r2, sl	@, StreamNum.550
	bl	dprint_vfmw	@
	cmp	sl, #288	@ StreamNum.550,
	bgt	.L649	@,
.L633:
	mvn	r5, #5	@ Ret,
	b	.L639	@
.L649:
	mov	r0, r8	@, pStreamSegArray
	add	r1, sp, #152	@,,
	add	r2, sp, #156	@,,
	bl	GetFreeSegBuf	@
	ldr	r1, [sp, #156]	@ SegStreamSize, SegStreamSize
	ldr	r2, [sp, #152]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	r3, r1, #79	@ SegStreamSize.555, SegStreamSize,
	movw	r1, #:lower16:.LC65	@,
	add	ip, r2, #3	@ tmp178, FreeSegBufAddr,
	movt	r1, #:upper16:.LC65	@,
	mov	r2, r3	@, SegStreamSize.555
	bic	ip, ip, #3	@ tmp180, tmp178,
	str	r3, [sp, #156]	@ SegStreamSize.555, SegStreamSize
	str	ip, [sp, #152]	@ tmp180, FreeSegBufAddr
	bl	dprint_vfmw	@
	movw	r0, #:lower16:166108	@ tmp183,
	movt	r0, #:upper16:166108	@ tmp183,
	ldr	r1, [sp, #156]	@ SegStreamSize, SegStreamSize
	ldr	r3, [r4, r0]	@ D.38636, <variable>.StreamSegArray.SegBufSize
	cmp	r1, r3, asr #3	@ SegStreamSize, D.38636,
	ble	.L633	@,
	movw	r2, #:lower16:180124	@ tmp190,
	movt	r2, #:upper16:180124	@ tmp190,
	movw	r8, #:lower16:166104	@ tmp186,
	movw	ip, #:lower16:166152	@ tmp196,
	ldr	lr, [r4, r2]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movt	r8, #:upper16:166104	@ tmp186,
	movt	ip, #:upper16:166152	@ tmp196,
	movw	r1, #:lower16:166156	@ tmp198,
	movw	r2, #:lower16:166164	@ tmp200,
	movt	r1, #:upper16:166156	@ tmp198,
	mul	r0, lr, sl	@, <variable>.UpMsgStepNum, StreamNum.550
	mov	fp, lr, asl #2	@ tmp191, <variable>.UpMsgStepNum,
	movt	r2, #:upper16:166164	@ tmp200,
	mul	fp, sl, fp	@ tmp193, StreamNum.550, tmp191
	str	r0, [sp, #16]	@, %sfp
	ldr	r0, [r4, r8]	@ D.40512, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	lr, [r4, r1]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	r8, [r4, ip]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	cmp	r5, #6	@ StdType,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	str	ip, [sp, #28]	@, %sfp
	add	ip, r0, r3	@, D.40512, D.38636
	ldr	r1, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	cmp	r5, #1	@ StdType,
	cmpne	r5, #15	@, StdType,
	ldr	r2, [sp, #152]	@, FreeSegBufAddr
	str	ip, [sp, #20]	@, %sfp
	moveq	r5, #0	@ prephitmp.2860,
	str	r1, [sp, #12]	@, %sfp
	movw	r1, #:lower16:166176	@ tmp188,
	str	r2, [sp, #24]	@, %sfp
	movt	r1, #:upper16:166176	@ tmp188,
	movw	r2, #:lower16:166172	@ tmp189,
	movt	r2, #:upper16:166172	@ tmp189,
	str	sl, [r4, r1]	@ StreamNum.550, <variable>.BufAddrCfg.UpMsgNum
	mov	r1, #1	@ tmp194,
	str	fp, [r4, r2]	@ tmp193, <variable>.BufAddrCfg.UpMsgSize
	ldr	ip, [sp, #12]	@, %sfp
	str	lr, [sp, #44]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, ScdCtrlReg.pDownMsgVirAddr
	ldr	lr, [sp, #16]	@, %sfp
	str	ip, [sp, #48]	@, ScdCtrlReg.UpMsgPhyAddr
	ldr	r2, [sp, #20]	@, %sfp
	str	lr, [sp, #56]	@, ScdCtrlReg.UpLen
	ldr	ip, [sp, #24]	@, %sfp
	ldr	lr, [sp, #28]	@, %sfp
	str	r8, [sp, #40]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, ScdCtrlReg.DownMsgPhyAddr
	str	r2, [sp, #64]	@, ScdCtrlReg.BufferLast
	str	ip, [sp, #68]	@, ScdCtrlReg.BufferIni
	str	r7, [sp, #140]	@ D.38599, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [sp, #144]	@, ScdCtrlReg.reg_avs_flag
	str	r3, [sp, #148]	@ D.38636,
	strb	r1, [sp, #38]	@ tmp194, ScdCtrlReg.ScdStart
	str	r0, [sp, #60]	@ D.40512, ScdCtrlReg.BufferFirst
	strb	r1, [sp, #36]	@ tmp194, ScdCtrlReg.ScdIntMask
	beq	.L638	@,
	cmp	r5, #6	@ StdType,
	beq	.L646	@,
	sub	r3, r5, #2	@ tmp222, StdType,
	cmp	r3, #1	@ tmp222,
	bls	.L646	@,
.L638:
	mov	r1, #0	@ tmp225,
	strb	r1, [sp, #37]	@ tmp225, ScdCtrlReg.SliceCheckFlag
.L636:
	movw	r2, #:lower16:166156	@ tmp231,
	movw	r3, #:lower16:166152	@ tmp233,
	movt	r2, #:upper16:166156	@ tmp231,
	movt	r3, #:upper16:166152	@ tmp233,
	add	r0, r4, #165888	@, pScdInstance,
	ldr	ip, [r4, r2]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	add	r1, r0, #248	@,,
	ldr	lr, [r4, r3]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	add	r0, sp, #36	@,,
	mov	r3, r6	@, pRawStreamArray
	ldr	r2, [sp, #156]	@, SegStreamSize
	str	r5, [sp, #72]	@ prephitmp.2860, ScdCtrlReg.ScdProtocol
	mov	r6, #1	@ tmp227,
	stmia	sp, {ip, lr}	@ phole stm
	str	r6, [sp, #76]	@ tmp227, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r5, r0, #0	@ Ret,
	bne	.L639	@,
	ldr	lr, [sp, #156]	@ SegStreamSize, SegStreamSize
	movw	r0, #:lower16:180096	@ tmp237,
	movw	ip, #:lower16:180100	@ tmp238,
	movt	r0, #:upper16:180096	@ tmp237,
	movt	ip, #:upper16:180100	@ tmp238,
	cmp	lr, r9	@ SegStreamSize, RawStreamSize
	strb	r6, [r4, #5]	@ tmp227, <variable>.IsWaitSCD
	strgeb	r6, [r4, #2]	@ tmp227, <variable>.LastCfgAllRawFlag
	mov	r6, #0	@ tmp245,
	str	r9, [r4, r0]	@ RawStreamSize, <variable>.PrevCfgRawSize
	str	lr, [r4, ip]	@ SegStreamSize, <variable>.PrevCfgSegSize
	strltb	r5, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r6, [r4, #4]	@ tmp245, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:180120	@ tmp247,
	movt	r1, #:upper16:180120	@ tmp247,
	strb	r6, [r4, #3]	@ tmp245, <variable>.InsertNewSegFlag
	str	r0, [r4, r1]	@, <variable>.LastSCDStartTime
	b	.L639	@
.L646:
	strb	r1, [sp, #37]	@ tmp194, ScdCtrlReg.SliceCheckFlag
	b	.L636	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp491,
	movt	r5, #:upper16:.LANCHOR0	@ tmp491,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r9, r0	@ pNextInstId, pNextInstId
	ldr	r3, [r5, #284]	@ s_eScdDrvSleepStage.649, s_eScdDrvSleepStage
	cmp	r3, #0	@ s_eScdDrvSleepStage.649,
	beq	.L651	@,
	cmp	r3, #1	@ s_eScdDrvSleepStage.649,
	moveq	r3, #2	@ tmp184,
	mvneq	r0, #2	@ D.39950,
	streq	r3, [r5, #284]	@ tmp184, s_eScdDrvSleepStage
	beq	.L653	@,
.L652:
	mvn	r0, #2	@ D.39950,
.L653:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L651:
	ldr	r1, [r5, #272]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	add	r8, sp, #8	@ tmp490,,
	str	r3, [sp, #32]	@ s_eScdDrvSleepStage.649, SegBufAddr
	add	r7, r1, #1	@ tmp188, s_SmIIS.ThisInstID,
	mov	r1, r8	@, tmp490
	str	r3, [sp, #36]	@ s_eScdDrvSleepStage.649, SegBufTotalSize
	mov	ip, r7, asr #31	@ tmp190, tmp188,
	mov	r0, ip, lsr #30	@ tmp191, tmp190,
	add	r6, r7, r0	@ tmp192, tmp188, tmp191
	and	r4, r6, #3	@ tmp193, tmp192,
	rsb	r4, r0, r4	@ NextInstId, tmp191, tmp193
	add	r7, r4, #58	@ tmp489, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp199, tmp491, tmp489,
	ldr	r6, [r2, #4]	@ pSmInstArray.2911, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L654	@,
	ldr	r3, [r6, #56]	@ temp.2912, <variable>.Config.VidStd
	sub	lr, r3, #8	@ tmp203, temp.2912,
	cmp	r3, #5	@ temp.2912,
	cmpne	lr, #1	@, tmp203,
	bls	.L654	@,
	cmp	r3, #1	@ temp.2912,
	beq	.L747	@,
	cmp	r3, #11	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #14	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #4	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #12	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #10	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #13	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #18	@ temp.2912,
	beq	.L654	@,
	cmp	r3, #17	@ temp.2912,
	beq	.L657	@,
.L723:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp211,
	movt	r3, #:upper16:180120	@ tmp211,
	ldr	r2, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime.2923, D.39980, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ D.39980, <variable>.LastSCDStartTime
	ldrsb	r0, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	movmi	r2, #200	@ WaitTime.2923,
	cmp	r0, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L659	@,
	ldrsb	ip, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	ip, #1	@ <variable>.SegFullFlag,
	movne	sl, #0	@ tmp219,
	strneb	sl, [r6, #1]	@ tmp219, <variable>.IsCounting
	movne	fp, sl	@ FreshNum, FreshSize
	beq	.L748	@,
.L665:
	mov	r0, r6	@, pSmInstArray.2911
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2926,
	beq	.L662	@,
	cmp	r0, #0	@ Ret.2926,
	mov	r3, #0	@ tmp215,
	strb	r3, [r6, #0]	@ tmp215, <variable>.SegFullFlag
	beq	.L663	@,
.L664:
	add	ip, r4, #1	@ temp.2948, NextInstId,
	mov	r1, r8	@, tmp490
	mov	r3, ip, asr #31	@ tmp259, temp.2948,
	mov	r6, r3, lsr #30	@ tmp260, tmp259,
	add	r7, ip, r6	@ tmp261, temp.2948, tmp260
	and	r4, r7, #3	@ tmp262, tmp261,
	rsb	r4, r6, r4	@ NextInstId, tmp260, tmp262
	add	r7, r4, #58	@ tmp489, NextInstId,
	mov	r0, r4	@, NextInstId
	add	lr, r5, r7, asl #2	@, tmp268, tmp491, tmp489,
	ldr	r6, [lr, #4]	@ pSmInstArray.2949, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r2, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r2, #0	@ stInstInfo.InstMode,
	beq	.L673	@,
	ldr	r3, [r6, #56]	@ temp.2951, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp272, temp.2951,
	cmp	r3, #5	@ temp.2951,
	cmpne	r1, #1	@, tmp272,
	bls	.L673	@,
	cmp	r3, #1	@ temp.2951,
	beq	.L749	@,
	cmp	r3, #11	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #14	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #4	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #12	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #10	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #13	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #18	@ temp.2951,
	beq	.L673	@,
	cmp	r3, #17	@ temp.2951,
	beq	.L676	@,
.L727:
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:180120	@ tmp280,
	movt	ip, #:upper16:180120	@ tmp280,
	ldr	r2, [r6, ip]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime.2959, temp.2956, <variable>.LastSCDStartTime
	strmi	r0, [r6, ip]	@ temp.2956, <variable>.LastSCDStartTime
	ldrsb	r0, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	movmi	r2, #200	@ WaitTime.2959,
	cmp	r0, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L678	@,
	ldrsb	lr, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	lr, #1	@ <variable>.SegFullFlag,
	movne	lr, #0	@ tmp288,
	strneb	lr, [r6, #1]	@ tmp288, <variable>.IsCounting
	beq	.L750	@,
.L682:
	mov	r0, r6	@, pSmInstArray.2949
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2962,
	beq	.L681	@,
	cmp	r0, #0	@ Ret.2962,
	mov	r3, #0	@ tmp284,
	strb	r3, [r6, #0]	@ tmp284, <variable>.SegFullFlag
	beq	.L663	@,
.L673:
	add	lr, r4, #1	@ temp.2984, NextInstId,
	mov	r1, r8	@, tmp490
	mov	r0, lr, asr #31	@ tmp328, temp.2984,
	mov	r6, r0, lsr #30	@ tmp329, tmp328,
	add	r7, lr, r6	@ tmp330, temp.2984, tmp329
	and	r4, r7, #3	@ tmp331, tmp330,
	rsb	r4, r6, r4	@ NextInstId, tmp329, tmp331
	add	r7, r4, #58	@ tmp489, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp337, tmp491, tmp489,
	ldr	r6, [r2, #4]	@ pSmInstArray.2985, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	ip, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	ip, #0	@ stInstInfo.InstMode,
	beq	.L690	@,
	ldr	r3, [r6, #56]	@ temp.2987, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp341, temp.2987,
	cmp	r3, #5	@ temp.2987,
	cmpne	r1, #1	@, tmp341,
	bls	.L690	@,
	cmp	r3, #1	@ temp.2987,
	beq	.L751	@,
	cmp	r3, #11	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #14	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #4	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #12	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #10	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #13	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #18	@ temp.2987,
	beq	.L690	@,
	cmp	r3, #17	@ temp.2987,
	beq	.L693	@,
.L731:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp349,
	movt	r3, #:upper16:180120	@ tmp349,
	ldrsb	lr, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	ldr	ip, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, ip	@ WaitTime.2995, temp.2992, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ temp.2992, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime.2995,
	cmp	lr, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L695	@,
	ldrsb	r2, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp357,
	strneb	r2, [r6, #1]	@ tmp357, <variable>.IsCounting
	beq	.L752	@,
.L699:
	mov	r0, r6	@, pSmInstArray.2985
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2998,
	beq	.L698	@,
	cmp	r0, #0	@ Ret.2998,
	mov	r3, #0	@ tmp353,
	strb	r3, [r6, #0]	@ tmp353, <variable>.SegFullFlag
	beq	.L663	@,
.L690:
	add	lr, r4, #1	@ D.39951, NextInstId,
	mov	r1, r8	@, tmp490
	mov	r3, lr, asr #31	@ tmp397, D.39951,
	mov	r6, r3, lsr #30	@ tmp398, tmp397,
	add	r7, lr, r6	@ tmp399, D.39951, tmp398
	and	r4, r7, #3	@ tmp400, tmp399,
	rsb	r4, r6, r4	@ NextInstId, tmp398, tmp400
	add	r7, r4, #58	@ tmp489, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp406, tmp491, tmp489,
	ldr	r6, [r2, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	ip, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	ip, #0	@ stInstInfo.InstMode,
	beq	.L652	@,
	ldr	r3, [r6, #56]	@ D.39959, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp410, D.39959,
	cmp	r3, #5	@ D.39959,
	cmpne	r1, #1	@, tmp410,
	bls	.L652	@,
	cmp	r3, #1	@ D.39959,
	beq	.L753	@,
	cmp	r3, #11	@ D.39959,
	beq	.L652	@,
	cmp	r3, #14	@ D.39959,
	beq	.L652	@,
	cmp	r3, #4	@ D.39959,
	beq	.L652	@,
	cmp	r3, #12	@ D.39959,
	beq	.L652	@,
	cmp	r3, #10	@ D.39959,
	beq	.L652	@,
	cmp	r3, #13	@ D.39959,
	beq	.L652	@,
	cmp	r3, #18	@ D.39959,
	beq	.L652	@,
	cmp	r3, #17	@ D.39959,
	beq	.L754	@,
.L709:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp420,
	movt	r3, #:upper16:180120	@ tmp420,
	ldrsb	ip, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	ldr	r2, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime, temp.2914, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ temp.2914, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime,
	cmp	ip, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L755	@,
.L711:
	ldrsb	r1, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r1, #1	@ <variable>.SegFullFlag,
	movne	r1, #0	@ tmp460,
	strneb	r1, [r6, #1]	@ tmp460, <variable>.IsCounting
	beq	.L756	@,
.L715:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp462,
	mvneq	r0, #2	@ D.39950,
	streqb	r3, [r6, #0]	@ tmp462, <variable>.SegFullFlag
	beq	.L653	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp464,
	strb	r3, [r6, #0]	@ tmp464, <variable>.SegFullFlag
	bne	.L652	@,
.L663:
	add	r7, r5, r7, asl #2	@, tmp470, tmp491, tmp489,
	str	r4, [r9, #0]	@ NextInstId,* pNextInstId
	mov	r0, #1	@,
	ldr	r2, [r7, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	movwne	r3, #:lower16:166252	@ tmp472,
	movtne	r3, #:upper16:166252	@ tmp472,
	movne	r1, #1	@ tmp473,
	strne	r1, [r2, r3]	@ tmp473, <variable>.Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L757	@,
	mov	r0, #0	@ D.39950,
	b	.L653	@
.L747:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L723	@,
.L654:
	mov	sl, #0	@ FreshSize,
	mov	fp, sl	@ FreshNum, FreshSize
	b	.L664	@
.L749:
	ldr	r3, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L727	@,
	b	.L673	@
.L751:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L731	@,
	b	.L690	@
.L753:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L709	@,
	b	.L652	@
.L659:
	ldrsb	r3, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2923,
	cmple	r3, #0	@, <variable>.FillNewRawFlag,
	beq	.L654	@,
	ldrsb	ip, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	ip, #1	@ <variable>.SegFullFlag,
	movne	sl, #0	@ tmp219,
	strneb	sl, [r6, #1]	@ tmp219, <variable>.IsCounting
	movne	fp, sl	@ FreshNum, FreshSize
	bne	.L665	@,
.L748:
	add	sl, r6, #73728	@ temp.2927, pSmInstArray.2911,
	add	r3, sl, #192	@ temp.2927, temp.2927,
	cmp	r3, #0	@ temp.2927,
	beq	.L758	@,
	movw	fp, #:lower16:166104	@ tmp243,
	movt	fp, #:upper16:166104	@ tmp243,
	movw	sl, #:lower16:166128	@ tmp240,
	movw	r1, #:lower16:166124	@ tmp241,
	ldr	ip, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp240,
	movt	r1, #:upper16:166124	@ tmp241,
	movw	r2, #:lower16:166108	@ tmp246,
	movt	r2, #:upper16:166108	@ tmp246,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	ip, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	lr, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	lr, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L668:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L759	@,
	ldr	r1, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	r0, r1, r1, lsr #31	@, tmp236, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, r0, asr #1	@ FreshSize, tmp236,
	bge	.L665	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L665	@,
	mov	r1, #1	@ tmp238,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp238, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L665	@
.L662:
	mov	r7, #1	@ tmp217,
	strb	r7, [r6, #0]	@ tmp217, <variable>.SegFullFlag
	b	.L664	@
.L678:
	ldrsb	r0, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2959,
	cmple	r0, #0	@, <variable>.FillNewRawFlag,
	beq	.L673	@,
	ldrsb	lr, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	lr, #1	@ <variable>.SegFullFlag,
	movne	lr, #0	@ tmp288,
	strneb	lr, [r6, #1]	@ tmp288, <variable>.IsCounting
	bne	.L682	@,
.L750:
	add	r3, r6, #73728	@ temp.2963, pSmInstArray.2949,
	add	r3, r3, #192	@ temp.2963, temp.2963,
	cmp	r3, #0	@ temp.2963,
	beq	.L685	@,
	movw	fp, #:lower16:166104	@ tmp312,
	movt	fp, #:upper16:166104	@ tmp312,
	movw	sl, #:lower16:166128	@ tmp309,
	movw	r1, #:lower16:166124	@ tmp310,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp309,
	movt	r1, #:upper16:166124	@ tmp310,
	movw	r2, #:lower16:166108	@ tmp315,
	movt	r2, #:upper16:166108	@ tmp315,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	ip, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	ip, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L685:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L760	@,
	ldr	r1, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	lr, r1, r1, lsr #31	@, tmp305, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, lr, asr #1	@ FreshSize, tmp305,
	bge	.L682	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L682	@,
	mov	r1, #1	@ tmp307,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp307, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L682	@
.L681:
	mov	r7, #1	@ tmp286,
	strb	r7, [r6, #0]	@ tmp286, <variable>.SegFullFlag
	b	.L673	@
.L695:
	ldrsb	r3, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2995,
	cmple	r3, #0	@, <variable>.FillNewRawFlag,
	beq	.L690	@,
	ldrsb	r2, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp357,
	strneb	r2, [r6, #1]	@ tmp357, <variable>.IsCounting
	bne	.L699	@,
.L752:
	add	r0, r6, #73728	@ temp.2999, pSmInstArray.2985,
	add	r3, r0, #192	@ temp.2999, temp.2999,
	cmp	r3, #0	@ temp.2999,
	beq	.L702	@,
	movw	fp, #:lower16:166104	@ tmp381,
	movt	fp, #:upper16:166104	@ tmp381,
	movw	sl, #:lower16:166128	@ tmp378,
	movw	r1, #:lower16:166124	@ tmp379,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp378,
	movt	r1, #:upper16:166124	@ tmp379,
	movw	r2, #:lower16:166108	@ tmp384,
	movt	r2, #:upper16:166108	@ tmp384,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	ip, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	ip, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L702:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L761	@,
	ldr	r0, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	lr, r0, r0, lsr #31	@, tmp374, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, lr, asr #1	@ FreshSize, tmp374,
	bge	.L699	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L699	@,
	mov	r1, #1	@ tmp376,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp376, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L699	@
.L698:
	mov	r7, #1	@ tmp355,
	strb	r7, [r6, #0]	@ tmp355, <variable>.SegFullFlag
	b	.L690	@
.L755:
	ldrsb	lr, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime,
	cmple	lr, #0	@, <variable>.FillNewRawFlag,
	bne	.L711	@,
	b	.L652	@
.L756:
	add	r8, r6, #73728	@ D.39996, pSmInstArray,
	add	r8, r8, #192	@ D.39996, D.39996,
	cmp	r8, #0	@ D.39996,
	beq	.L713	@,
	movw	fp, #:lower16:166104	@ tmp437,
	movt	fp, #:upper16:166104	@ tmp437,
	movw	sl, #:lower16:166128	@ tmp434,
	movw	r3, #:lower16:166124	@ tmp435,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp434,
	movt	r3, #:upper16:166124	@ tmp435,
	movw	ip, #:lower16:166108	@ tmp440,
	movt	ip, #:upper16:166108	@ tmp440,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r3]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	r0, [r6, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r0, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L713:
	ldrsb	r2, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r2, #0	@ <variable>.IsCounting,
	bne	.L714	@,
	ldr	r0, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	r1, r0, r0, lsr #31	@, tmp446, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, r1, asr #1	@ FreshSize, tmp446,
	bge	.L715	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L715	@,
	mov	r1, #1	@ tmp448,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp448, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L715	@
.L757:
	bl	OSAL_GetTimeInMs	@
	add	r4, r5, r4, asl #2	@, tmp477, tmp491, NextInstId,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp481,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp481,
	ldr	r2, [r4, #308]	@ tmp480, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r2, r0	@ tmp479, tmp480, D.40030
	cmp	r1, ip	@ tmp479, g_TraceBsPeriod
	strhi	r0, [r4, #308]	@ D.40030, last_rec_pos_time
	movhi	r0, #0	@ D.39950,
	movls	r0, #0	@ D.39950,
	b	.L653	@
.L759:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime.2929,
	ble	.L665	@,
	ldr	lr, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	lr, #0	@ SegBufTotalSize,
	add	r3, lr, #3	@ tmp226, SegBufTotalSize,
	movlt	lr, r3	@ SegBufTotalSize, tmp226
	cmp	sl, lr, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L665	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L665	@,
	mov	r2, r0	@, WaitSegTime.2929
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #4]	@,
	mvn	r1, #0	@,
	mov	r0, ip	@, temp.2927
	bl	ReleaseStreamSeg	@
	mov	r2, #0	@ tmp229,
	strb	r2, [r6, #0]	@ tmp229, <variable>.SegFullFlag
	strb	r2, [r6, #1]	@ tmp229, <variable>.IsCounting
	b	.L665	@
.L760:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime.2965,
	ble	.L682	@,
	ldr	ip, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	ip, #0	@ SegBufTotalSize,
	add	r2, ip, #3	@ tmp295, SegBufTotalSize,
	movlt	ip, r2	@ SegBufTotalSize, tmp295
	cmp	sl, ip, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L682	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L682	@,
	mov	r2, r0	@, WaitSegTime.2965
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #4]	@,
	mvn	r1, #0	@,
	mov	r0, r3	@, temp.2963
	bl	ReleaseStreamSeg	@
	mov	r0, #0	@ tmp298,
	strb	r0, [r6, #0]	@ tmp298, <variable>.SegFullFlag
	strb	r0, [r6, #1]	@ tmp298, <variable>.IsCounting
	b	.L682	@
.L761:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime.3001,
	ble	.L699	@,
	ldr	r3, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	r3, #0	@ SegBufTotalSize,
	add	ip, r3, #3	@ tmp364, SegBufTotalSize,
	movlt	r3, ip	@ SegBufTotalSize, tmp364
	cmp	sl, r3, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L699	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L699	@,
	mov	r2, r0	@, WaitSegTime.3001
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	ldr	r1, [sp, #4]	@,
	mov	r0, r1	@, temp.2999
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r2, #0	@ tmp367,
	strb	r2, [r6, #0]	@ tmp367, <variable>.SegFullFlag
	strb	r2, [r6, #1]	@ tmp367, <variable>.IsCounting
	b	.L699	@
.L714:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	ble	.L715	@,
	ldr	ip, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	ip, #0	@ SegBufTotalSize,
	add	lr, ip, #3	@ tmp453, SegBufTotalSize,
	movlt	ip, lr	@ SegBufTotalSize, tmp453
	cmp	sl, ip, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L715	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L715	@,
	mov	r2, r0	@, WaitSegTime
	movw	r1, #:lower16:.LC67	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC67	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.39996
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp456,
	strb	r3, [r6, #0]	@ tmp456, <variable>.SegFullFlag
	strb	r3, [r6, #1]	@ tmp456, <variable>.IsCounting
	b	.L715	@
.L758:
	mov	sl, r3	@ FreshSize, temp.2927
	mov	fp, r3	@ FreshNum, temp.2927
	b	.L668	@
.L657:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L654	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC68	@,
	mov	sl, #0	@ FreshSize,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	mov	fp, sl	@ FreshNum, FreshSize
	b	.L664	@
.L676:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L673	@,
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L673	@
.L693:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L690	@,
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #26	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L690	@
.L754:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L652	@,
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.39950,
	b	.L653	@
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
	beq	.L771	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	mov	r1, #1	@,
	ldr	r2, [r4, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp149,
	str	r3, [r4, #324]	@ tmp149, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldreq	r5, [r4, #272]	@ prephitmp.3040, s_SmIIS.ThisInstID
	bne	.L772	@,
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.3040,
	ldr	lr, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L773	@,
.L767:
	ldr	r3, [r3, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L774	@,
.L768:
	mov	r0, r5	@, prephitmp.3040
	mov	r2, #0	@ tmp199,
	str	r2, [r4, #324]	@ tmp199, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L771:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L770:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L772:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #272]	@ prephitmp.3040, s_SmIIS.ThisInstID
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp159,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp159,
	ldr	lr, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	add	ip, r4, r5, asl #2	@, tmp155, tmp201, prephitmp.3040,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #328]	@ tmp158, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp157, tmp158, CurTimeInMs
	cmp	r1, r3	@ tmp157, g_TraceBsPeriod
	strhi	r0, [ip, #328]	@ CurTimeInMs, last_rec_pos_time
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.3040,
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	bne	.L767	@,
.L773:
	mov	r2, #0	@ tmp182,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r3, #276]	@ tmp182, s_SmIIS.SCDState
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #324]	@ tmp182, s_SCDInISR
	bl	OSAL_SpinUnLockIRQ	@
	b	.L770	@
.L774:
	movw	r1, #:lower16:166252	@ tmp188,
	movt	r1, #:upper16:166252	@ tmp188,
	ldr	r6, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r6, #1	@ <variable>.Mode,
	beq	.L775	@,
.L769:
	add	r0, sp, #4	@,,
	mov	lr, #0	@ tmp191,
	str	lr, [r4, #276]	@ tmp191, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp190,
	movt	r6, #:upper16:.LANCHOR0	@ tmp190,
	cmp	r0, #0	@,
	bne	.L768	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	ip, #1	@ tmp196,
	str	ip, [r6, #276]	@ tmp196, s_SmIIS.SCDState
	str	r0, [r6, #272]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #280]	@, s_SmIIS.LastProcessTime
	b	.L768	@
.L775:
	bl	ProcessScdReturn	@
	b	.L769	@
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
	mvneq	r0, #0	@ D.37185,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #:lower16:73732	@ tmp145,
	movt	r6, #:upper16:73732	@ tmp145,
	movw	r3, #:lower16:73736	@ tmp154,
	movt	r3, #:upper16:73736	@ tmp154,
	ldr	r2, [r4, r6]	@ D.37186, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.37186,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.37185,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	lr, r2, r2, asl #3	@, tmp158, D.37186, D.37186,
	mov	r2, #72	@,
	add	r0, r4, lr, asl #3	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.37185, tmp144
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
	ldr	r0, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L784	@,
.L782:
	mvn	r0, #0	@,
	bx	lr	@
.L784:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L782	@,
	cmp	r0, #0	@ pSmInstArray,
	beq	.L782	@,
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
	movw	r6, #:lower16:.LANCHOR0	@ tmp352,
	movt	r6, #:upper16:.LANCHOR0	@ tmp352,
	.pad #92
	sub	sp, sp, #92	@,,
	add	r3, r6, r0, asl #2	@, tmp159, tmp352, InstID,
	add	r7, sp, #16	@ tmp354,,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r7	@, tmp354
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L807	@,
	ldr	r0, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #18	@ <variable>.Config.VidStd,
	beq	.L807	@,
	ldr	r3, [r4, #84]	@ D.39481, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.39481,
	beq	.L807	@,
	cmp	r3, #2	@ D.39481,
	beq	.L813	@,
.L809:
	add	r2, r6, r5, asl #2	@, tmp361, tmp352, InstID,
	movw	sl, #:lower16:180108	@ tmp358,
	movw	r6, #:lower16:180104	@ tmp357,
	movw	r9, #:lower16:g_TraceBsPeriod	@ tmp363,
	movw	r8, #:lower16:save_str_chan_num	@ tmp364,
	movt	r6, #:upper16:180104	@ tmp357,
	movt	sl, #:upper16:180108	@ tmp358,
	movt	r9, #:upper16:g_TraceBsPeriod	@ tmp363,
	movt	r8, #:upper16:save_str_chan_num	@ tmp364,
	add	r0, r2, #344	@, tmp361,
	movw	r3, #:lower16:180112	@,
	movw	r1, #:lower16:vfmw_save_str_file	@,
	movt	r3, #:upper16:180112	@,
	movt	r1, #:upper16:vfmw_save_str_file	@,
	str	r0, [sp, #8]	@, %sfp
	str	r3, [sp, #4]	@, %sfp
	str	r1, [sp, #12]	@, %sfp
.L811:
	ldr	lr, [r4, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	lr, #0	@ <variable>.Config.ScdLowBufEnable,
	beq	.L796	@,
	mov	r0, r5	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L807	@,
.L796:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L797	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp354
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L807	@,
	ldr	r1, [r4, #80]	@ prephitmp.3124, <variable>.Config.LastRawDisContinueCount
	cmn	r1, #1	@ prephitmp.3124,
	ldreq	r1, [sp, #64]	@ prephitmp.3124, RawPacket.discontinue_count
	streq	r1, [r4, #80]	@ prephitmp.3124, <variable>.Config.LastRawDisContinueCount
	ldr	ip, [sp, #64]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	ip, r1	@ RawPacket.discontinue_count, prephitmp.3124
	beq	.L799	@,
	ldr	r3, [r4, #56]	@ D.39576, <variable>.Config.VidStd
	cmp	r3, #3	@ D.39576,
	cmpne	r3, #1	@, D.39576,
	beq	.L814	@,
.L799:
	ldr	r0, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	r2, [sp, #24]	@ RawPacket.Length, RawPacket.Length
	add	fp, r2, r0	@ tmp270, RawPacket.Length, <variable>.TotalRawSize
	str	fp, [r4, r6]	@ tmp270, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, sl]	@ temp.3145, <variable>.LastStatTime
	cmp	r1, #0	@ temp.3145,
	mov	fp, r0	@ ThisTime.3144,
	streq	r0, [r4, sl]	@ ThisTime.3144, <variable>.LastStatTime
	beq	.L801	@,
	rsb	r1, r1, r0	@ TimePeriod.3146, temp.3145, ThisTime.3144
	cmp	r1, #2000	@ TimePeriod.3146,
	bls	.L801	@,
	ldr	lr, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	mov	r0, lr, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r2, #1000	@ tmp282,
	mov	ip, #0	@ tmp285,
	str	fp, [r4, sl]	@ ThisTime.3144, <variable>.LastStatTime
	str	ip, [r4, r6]	@ tmp285, <variable>.TotalRawSize
	ldr	ip, [sp, #4]	@, %sfp
	mul	r3, r2, r0	@ tmp281, tmp282,
	mov	r1, r3, lsr #10	@ tmp283, tmp281,
	str	r1, [r4, ip]	@ tmp283, <variable>.BitRate
.L801:
	ldrd	r2, [sp, #32]	@,,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #16]	@, RawPacket.PhyAddr
	ldr	r3, [sp, #24]	@, RawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldrd	r0, [sp, #32]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp293,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp293
	cmpeq	r0, r2	@ RawPacket.Pts, tmp293
	beq	.L815	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp354
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L812	@,
.L803:
	mov	r1, #1	@ tmp297,
	strb	r1, [r4, #4]	@ tmp297, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L816	@,
.L804:
	ldr	r0, [r8, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	bne	.L811	@,
	ldr	r2, [sp, #12]	@, %sfp
	ldr	lr, [r2, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L811	@,
	ldr	fp, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, fp, #10	@ tmp318, eStd,
	cmp	fp, #4	@ eStd,
	cmpne	r3, #3	@, tmp318,
	bls	.L805	@,
	cmp	fp, #14	@ eStd,
	cmpne	fp, #17	@, eStd,
	beq	.L805	@,
	cmp	fp, #8	@ eStd,
	cmpne	fp, #9	@, eStd,
	beq	.L805	@,
	cmp	fp, #5	@ eStd,
	beq	.L805	@,
	cmp	fp, #1	@ eStd,
	bne	.L806	@,
	ldr	ip, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	ip, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L806	@,
.L805:
	ldr	lr, [sp, #12]	@, %sfp
	add	r0, r7, #8	@, tmp354,
	mov	r1, #4	@,
	ldr	r2, [lr, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
.L806:
	ldr	r3, [sp, #12]	@, %sfp
	ldr	r0, [sp, #20]	@, RawPacket.VirAddr
	ldr	r1, [sp, #24]	@, RawPacket.Length
	ldr	r2, [r3, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L811	@
.L816:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #8]	@, %sfp
	ldr	r3, [r9, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	ip, [r1, #0]	@ tmp305, last_rec_pos_time
	rsb	r2, ip, r0	@ tmp304, tmp305, ThisTime.3158
	cmp	r2, r3	@ tmp304, g_TraceBsPeriod
	ldrhi	r2, [sp, #8]	@, %sfp
	strhi	r0, [r2, #0]	@ ThisTime.3158, last_rec_pos_time
	b	.L804	@
.L815:
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp354
	mvn	r2, #0	@ tmp294,
	mvn	r3, #0	@,
	strd	r2, [sp, #32]	@ tmp294,,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	beq	.L803	@,
.L812:
	movw	r1, #:lower16:.LC71	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
.L807:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L813:
	movw	r8, #:lower16:180104	@ tmp163,
	movt	r8, #:upper16:180104	@ tmp163,
	ldr	r2, [r4, #104]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	movw	sl, #:lower16:180108	@ tmp168,
	ldr	r9, [r4, r8]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	sl, #:upper16:180108	@ tmp168,
	add	r1, r2, r9	@ tmp167, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	r1, [r4, r8]	@ tmp167, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, sl]	@ D.39490, <variable>.LastStatTime
	cmp	r3, #0	@ D.39490,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r4, sl]	@ ThisTime, <variable>.LastStatTime
	beq	.L789	@,
	rsb	r1, r3, r0	@ TimePeriod, D.39490, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L789	@,
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
.L789:
	ldrd	r2, [r4, #112]	@, pSmInstArray,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #96]	@, <variable>.Config.DisContinueRawPacket.PhyAddr
	ldr	r3, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	mov	r0, #26	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldrd	r0, [r4, #112]	@ <variable>.Config.DisContinueRawPacket.Pts, pSmInstArray,
	mvn	r2, #0	@ tmp190,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp190
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp190
	beq	.L817	@,
.L790:
	mov	r0, r5	@, InstID
	add	r1, r4, #96	@, pSmInstArray,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L812	@,
	mov	r8, #1	@ tmp194,
	strb	r8, [r4, #4]	@ tmp194, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L818	@,
.L792:
	movw	r2, #:lower16:save_str_chan_num	@ tmp210,
	movt	r2, #:upper16:save_str_chan_num	@ tmp210,
	ldr	r0, [r2, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	beq	.L819	@,
.L793:
	ldr	r8, [r4, #144]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	mov	ip, #0	@ tmp247,
	str	ip, [r4, #84]	@ tmp247, <variable>.Config.DisContinueRawPacketFlag
	str	r8, [r4, #80]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L809	@
.L797:
	mov	r2, r5	@, InstID
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #23	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L807	@
.L814:
	mov	r1, r7	@, tmp354
	add	r0, r4, #96	@, pSmInstArray,
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #1	@ tmp262,
	str	r0, [r4, #84]	@ tmp262, <variable>.Config.DisContinueRawPacketFlag
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, [r4, #80]	@, <variable>.Config.LastRawDisContinueCount
	movt	r1, #:upper16:.LC72	@,
	ldr	r3, [sp, #64]	@, RawPacket.discontinue_count
	bl	dprint_vfmw	@
	b	.L807	@
.L817:
	mvn	r2, #0	@ tmp191,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp191, pSmInstArray,
	b	.L790	@
.L818:
	bl	OSAL_GetTimeInMs	@
	add	sl, r6, r5, asl #2	@, tmp199, tmp352, InstID,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp203,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp203,
	ldr	r1, [sl, #344]	@ tmp202, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r9, r1, r0	@ tmp201, tmp202, ThisTime.3138
	cmp	r9, ip	@ tmp201, g_TraceBsPeriod
	strhi	r0, [sl, #344]	@ ThisTime.3138, last_rec_pos_time
	b	.L792	@
.L819:
	movw	r8, #:lower16:vfmw_save_str_file	@ tmp353,
	movt	r8, #:upper16:vfmw_save_str_file	@ tmp353,
	ldr	lr, [r8, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L793	@,
	ldr	sl, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	sub	r9, sl, #10	@ tmp215, eStd,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	sl, #4	@ eStd,
	cmpne	r9, #3	@, tmp215,
	bls	.L794	@,
	cmp	sl, #14	@ eStd,
	cmpne	sl, #17	@, eStd,
	beq	.L794	@,
	cmp	sl, #8	@ eStd,
	cmpne	sl, #9	@, eStd,
	beq	.L794	@,
	cmp	sl, #5	@ eStd,
	beq	.L794	@,
	cmp	sl, #1	@ eStd,
	beq	.L820	@,
.L795:
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	ldr	r0, [r4, #100]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	ldr	r1, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L793	@
.L820:
	ldr	sl, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	sl, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L795	@,
.L794:
	add	r0, r4, #104	@, pSmInstArray,
	mov	r1, #4	@,
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L795	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp165,
	movw	r5, #:lower16:166252	@ tmp166,
	movt	r4, #:upper16:.LANCHOR0	@ tmp165,
	movt	r5, #:upper16:166252	@ tmp166,
	mov	r0, r3	@ NextInstID.667, tmp140
	str	r3, [sp, #4]	@ tmp140, NextInstID
	b	.L823	@
.L822:
	ldr	r0, [sp, #4]	@ NextInstID.3194, NextInstID
	add	r0, r0, #1	@ NextInstID.667, NextInstID.3194,
	str	r0, [sp, #4]	@ NextInstID.667, NextInstID
	cmp	r0, #3	@ NextInstID.667,
	bgt	.L829	@,
.L823:
	add	r1, r4, r0, asl #2	@, tmp145, tmp165, NextInstID.667,
	ldr	r3, [r1, #236]	@ D.40093, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40093,
	beq	.L822	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L822	@,
	bl	FillRawData	@
	ldr	r0, [sp, #4]	@ NextInstID.3194, NextInstID
	add	r0, r0, #1	@ NextInstID.667, NextInstID.3194,
	str	r0, [sp, #4]	@ NextInstID.667, NextInstID
	cmp	r0, #3	@ NextInstID.667,
	ble	.L823	@,
.L829:
	ldr	ip, [r4, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L824	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L830	@,
.L827:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L824:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #280]	@ D.40109, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.40109
	strcc	r0, [r4, #280]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L827	@,
	rsb	r1, r3, r0	@ tmp159, D.40109, CurTime
	cmp	r1, #2000	@ tmp159,
	bls	.L827	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #272]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp162,
	str	r2, [r4, #276]	@ tmp162, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L827	@
.L830:
	ldr	lr, [sp, #4]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp155,
	str	r3, [r4, #276]	@ tmp155, s_SmIIS.SCDState
	str	lr, [r4, #272]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #280]	@, s_SmIIS.LastProcessTime
	b	.L827	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp211,
	movt	r2, #:upper16:.LANCHOR0	@ tmp211,
	add	r3, r2, r0, asl #2	@, tmp215, tmp211, ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #60
	sub	sp, sp, #60	@,,
	cmp	r4, #0	@ pSmInstArray,
	str	r0, [sp, #20]	@ ChanID, %sfp
	str	r1, [sp, #24]	@ pArgs, %sfp
	mvneq	r0, #0	@ D.39759,
	bne	.L917	@,
.L833:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L917:
	ldr	r1, [sp, #24]	@, %sfp
	movw	r2, #:lower16:166144	@ tmp218,
	movt	r2, #:upper16:166144	@ tmp218,
	ldr	r7, [sp, #24]	@, %sfp
	ldr	fp, [sp, #24]	@, %sfp
	movw	r5, #:lower16:166088	@ tmp222,
	ldrd	r0, [r1]	@,
	movt	r5, #:upper16:166088	@ tmp222,
	add	r8, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	r3, #:lower16:166096	@ tmp221,
	movt	r3, #:upper16:166096	@ tmp221,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	strd	r0, [sp, #8]	@,,
	ldr	r9, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	cmp	r9, #1	@,
	str	r9, [sp, #28]	@, %sfp
	ldrd	r6, [r7, #8]	@,,
	moveq	r9, #3	@ tmp220,
	strd	r6, [sp, #40]	@,,
	ldrd	sl, [fp, #16]	@,,
	strd	sl, [sp, #32]	@,,
	movw	sl, #:lower16:954437177	@ tmp635,
	streq	r9, [r4, r2]	@ tmp220, <variable>.SmPushRaw.PushRawOver
	movw	r9, #:lower16:166092	@ tmp225,
	movt	r9, #:upper16:166092	@ tmp225,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movt	sl, #:upper16:954437177	@ tmp635,
	mov	fp, r3	@ tmp639, tmp221
	ldr	r7, [r4, r9]	@ prephitmp.3210, <variable>.StreamSegArray.Tail
	mov	r5, ip	@ i.3283, <variable>.StreamSegArray.Head
	str	ip, [r4, r3]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
.L908:
	cmp	r5, r7	@ i.3283, prephitmp.3210
	mov	r6, r5, asl #2	@ tmp591, i.3283,
	mov	r1, r5	@, i.3283
	mov	r0, r8	@, pStreamSegArray
	add	r3, r6, r5	@ tmp267, tmp591, i.3283
	beq	.L918	@,
.L835:
	add	r3, r4, r3, asl #4	@, tmp269, pSmInstArray, tmp267,
	movw	ip, #:lower16:73960	@ tmp272,
	add	r2, r3, #73728	@ tmp278, tmp269,
	movt	ip, #:upper16:73960	@ tmp272,
	add	r3, r2, #200	@ tmp270, tmp270,
	add	r2, r2, #232	@ tmp278, tmp278,
	ldrsb	r3, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #1	@ <variable>.SegState,
	bne	.L838	@,
	ldrd	r2, [r2]	@ D.39789, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.39789,
	cmpeq	r2, r0	@ D.39789,
	beq	.L919	@,
	add	r0, r5, #1	@, i.3283,
	str	r0, [sp, #48]	@, %sfp
	ldrd	r0, [sp, #8]	@,,
	cmp	r1, r3	@, D.39789
	cmpeq	r0, r2	@, D.39789
	ldr	r1, [sp, #48]	@, %sfp
	ldr	r0, [sp, #48]	@, %sfp
	smull	r1, r2, sl, r1	@, tmp289, tmp635,
	mov	r3, r0, asr #31	@ tmp292,,
	bls	.L841	@,
	rsb	r3, r3, r2, asr #8	@, i.3283, tmp292, tmp289,
	ldr	r7, [r4, r9]	@ prephitmp.3210, <variable>.StreamSegArray.Tail
	str	r5, [r4, fp]	@ i.3283, <variable>.StreamSegArray.History
	add	r2, r3, r3, asl #3	@, tmp295, i.3283, i.3283,
	sub	r5, r0, r2, asl #7	@ i.3283,, tmp295,
	mov	r0, r8	@, pStreamSegArray
	cmp	r5, r7	@ i.3283, prephitmp.3210
	mov	r6, r5, asl #2	@ tmp591, i.3283,
	mov	r1, r5	@, i.3283
	add	r3, r6, r5	@ tmp267, tmp591, i.3283
	bne	.L835	@,
.L918:
	movw	r0, #:lower16:166088	@ tmp226,
	movt	r0, #:upper16:166088	@ tmp226,
	ldr	r6, [r4, r0]	@ j, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3283, j
	beq	.L836	@,
	movw	r7, #:lower16:166124	@ tmp617,
	movw	r5, #:lower16:166128	@ tmp619,
	movw	r9, #:lower16:954437177	@ tmp620,
	movw	sl, #:lower16:166092	@ tmp621,
	movt	r7, #:upper16:166124	@ tmp617,
	movt	r5, #:upper16:166128	@ tmp619,
	movt	r9, #:upper16:954437177	@ tmp620,
	movt	sl, #:upper16:166092	@ tmp621,
	mov	fp, #2	@ tmp616,
.L911:
	add	ip, r6, r6, asl #2	@, tmp230, j, j,
	mov	r1, r6	@, j
	add	r6, r6, #1	@ D.39784, j,
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp232, pSmInstArray, tmp230,
	add	r3, r2, #73728	@ tmp243, tmp232,
	add	r2, r3, #200	@ tmp233, tmp233,
	add	lr, r3, #208	@ tmp243, tmp243,
	strb	fp, [r2, #4]	@ tmp12, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r3, r2	@ D.39778, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, ip, #1	@ D.39780, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp251, D.39778
	bic	lr, ip, ip, asr #31	@ tmp253, D.39780
	str	r3, [r4, r7]	@ tmp251, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r5]	@ tmp253, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp254, tmp620, D.39784
	mov	r2, r6, asr #31	@ tmp257, D.39784,
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r3, r2, r1, asr #8	@, j, tmp257, tmp254,
	add	r1, r3, r3, asl #3	@, tmp260, j, j,
	sub	r6, r6, r1, asl #7	@ j, D.39784, tmp260,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L911	@,
.L836:
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	movw	r3, #:lower16:73896	@ tmp408,
	movw	r0, #:lower16:73900	@ tmp409,
	movt	r3, #:upper16:73896	@ tmp408,
	movt	r0, #:upper16:73900	@ tmp409,
	add	r1, r4, #168	@, pSmInstArray,
	str	r1, [sp, #48]	@, %sfp
	movw	r7, #:lower16:73896	@ tmp412,
	ldr	r1, [r4, r3]	@ D.39818, <variable>.RawPacketArray.Head
	movt	r7, #:upper16:73896	@ tmp412,
	ldr	r9, [r4, r0]	@ D.39819, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:73904	@ tmp411,
	movt	r2, #:upper16:73904	@ tmp411,
	ldr	r3, [r4, r7]	@ i, <variable>.RawPacketArray.Head
	cmp	r1, r9	@ D.39818, D.39819
	mvn	r6, #0	@ tmp612,
	addgt	r9, r9, #1024	@ tmp410, D.39819,
	mvn	r7, #0	@,
	rsb	fp, r1, r9	@ iftmp.641, D.39818, tmp410
	movw	r9, #:lower16:73900	@ tmp413,
	movt	r9, #:upper16:73900	@ tmp413,
	str	r1, [r4, r2]	@ D.39818, <variable>.RawPacketArray.History
	ldr	ip, [r4, r9]	@ prephitmp.3215, <variable>.RawPacketArray.Tail
	str	fp, [sp, #52]	@ iftmp.641, %sfp
.L909:
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	cmp	r3, ip	@ i, prephitmp.3215
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	beq	.L920	@,
.L852:
	ldrd	r0, [r2, #184]	@ temp.3263, tmp423,
	add	r8, r2, #184	@ tmp424, tmp423,
	cmp	r1, r7	@ temp.3263, tmp612
	cmpeq	r0, r6	@ temp.3263, tmp612
	beq	.L921	@,
	ldrd	sl, [sp, #8]	@,,
	add	r2, r3, #1	@ temp.3265, i,
	cmp	fp, r1	@, temp.3263
	cmpeq	sl, r0	@, temp.3263
	mov	r5, r2, asr #31	@ tmp433, temp.3265,
	bls	.L859	@,
	movw	ip, #:lower16:73904	@,
	movt	ip, #:upper16:73904	@,
	mov	r5, r5, lsr #22	@ tmp434, tmp433,
	str	r3, [r4, ip]	@ i, <variable>.RawPacketArray.History
	add	r3, r2, r5	@ tmp435, temp.3265, tmp434
	ldr	ip, [r4, r9]	@ prephitmp.3215, <variable>.RawPacketArray.Tail
	mov	r0, r3, asl #22	@ tmp436, tmp435,
	mov	r2, r0, lsr #22	@ tmp436, tmp436,
	rsb	r3, r5, r2	@ i, tmp434, tmp436
	cmp	r3, ip	@ i, prephitmp.3215
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	bne	.L852	@,
.L920:
	movw	r6, #:lower16:73896	@ tmp414,
	movt	r6, #:upper16:73896	@ tmp414,
	ldr	fp, [sp, #52]	@ iftmp.641, %sfp
	ldr	r2, [r4, r6]	@ temp.3240, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3240
	rsblt	r1, r2, #1024	@ tmp415, temp.3240,
	rsbge	r1, r2, r3	@ DelNum.3234, temp.3240, i
	addlt	r1, r1, r3	@ DelNum.3234, tmp415, i
	cmp	r1, #0	@ DelNum.3234,
	movweq	r3, #:lower16:73904	@ tmp416,
	movteq	r3, #:upper16:73904	@ tmp416,
	streq	r2, [r4, r3]	@ temp.3240, <variable>.RawPacketArray.History
	bne	.L922	@,
.L856:
	ldrd	r0, [sp, #32]	@,,
	mov	r6, fp	@ RawNumInVfmw, iftmp.641
	mov	r7, r6, asr #31	@ RawNumInVfmw
	cmp	r1, r7	@, RawNumInVfmw
	cmpeq	r0, r6	@, RawNumInVfmw
	bls	.L923	@,
	ldrd	r2, [sp, #32]	@,,
	mov	lr, #0	@,
	subs	r6, r2, r6	@ RawNumToSeek,, RawNumInVfmw
	sbc	r7, r3, r7	@ RawNumToSeek,, RawNumInVfmw
	movw	r2, #1023	@ tmp504,
	and	r3, lr, r7	@,, RawNumToSeek
	and	r2, r2, r6	@ tmp503, tmp504, RawNumToSeek
	orrs	r8, r2, r3	@, tmp503
	mov	r3, r6, lsr #10	@ tmp583, RawNumToSeek,
	orr	ip, r3, r7, asl #22	@, tmp646, tmp583, RawNumToSeek,
	addne	ip, ip, #1	@ SeekTime, tmp646,
	add	r8, ip, #1	@, SeekTime,
	str	r8, [sp, #52]	@, %sfp
	cmp	r8, #0	@,
	ble	.L875	@,
	movw	r5, #:lower16:73904	@ tmp605,
	movw	fp, #:lower16:73900	@ tmp607,
	movt	r5, #:upper16:73904	@ tmp605,
	movt	fp, #:upper16:73900	@ tmp607,
	movw	r9, #:lower16:73896	@,
	mov	sl, #0	@,
	movt	r9, #:upper16:73896	@,
	str	sl, [sp, #32]	@, %sfp
	str	r9, [sp, #28]	@, %sfp
.L894:
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [sp, #20]	@, %sfp
	bl	FillRawData	@
	ldr	r0, [sp, #28]	@, %sfp
	ldr	r1, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	ldr	r0, [r4, fp]	@ prephitmp.3219, <variable>.RawPacketArray.Tail
	mov	r3, r1	@ i.3237, <variable>.RawPacketArray.Head
	str	r1, [r4, r5]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
.L910:
	add	ip, r3, r3, asl #3	@, tmp523, i.3237, i.3237,
	cmp	r3, r0	@ i.3237, prephitmp.3219
	add	r2, r4, ip, asl #3	@, tmp525, pSmInstArray, tmp523,
	beq	.L924	@,
.L876:
	ldrd	r8, [r2, #184]	@ D.39833, tmp525,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	sl, r2, #184	@ tmp526, tmp525,
	cmp	r9, r7	@ D.39833,
	cmpeq	r8, r6	@ D.39833,
	beq	.L925	@,
	ldrd	r6, [sp, #8]	@,,
	add	r1, r3, #1	@ temp.3248, i.3237,
	cmp	r7, r9	@, D.39833
	cmpeq	r6, r8	@, D.39833
	mov	ip, r1, asr #31	@ tmp535, temp.3248,
	bls	.L883	@,
	mov	ip, ip, lsr #22	@ tmp536, tmp535,
	str	r3, [r4, r5]	@ i.3237, <variable>.RawPacketArray.History
	add	r2, r1, ip	@ tmp537, temp.3248, tmp536
	ldr	r0, [r4, fp]	@ prephitmp.3219, <variable>.RawPacketArray.Tail
	mov	r3, r2, asl #22	@ tmp538, tmp537,
	mov	lr, r3, lsr #22	@ tmp538, tmp538,
	rsb	r3, ip, lr	@ i.3237, tmp536, tmp538
	cmp	r3, r0	@ i.3237, prephitmp.3219
	add	ip, r3, r3, asl #3	@, tmp523, i.3237, i.3237,
	add	r2, r4, ip, asl #3	@, tmp525, pSmInstArray, tmp523,
	bne	.L876	@,
.L924:
	ldr	lr, [sp, #28]	@, %sfp
	ldr	r2, [r4, lr]	@ temp.3244, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.3237, temp.3244
	rsblt	r1, r2, #1024	@ tmp517, temp.3244,
	rsbge	r1, r2, r3	@ DelNum, temp.3244, i.3237
	addlt	r1, r1, r3	@ DelNum, tmp517, i.3237
	cmp	r1, #0	@ DelNum,
	streq	r2, [r4, r5]	@ temp.3244, <variable>.RawPacketArray.History
	bne	.L926	@,
.L880:
	ldr	r2, [sp, #32]	@, %sfp
	ldr	r3, [sp, #52]	@, %sfp
	add	r0, r2, #1	@,,
	str	r0, [sp, #32]	@, %sfp
	cmp	r0, r3	@,
	blt	.L894	@,
.L875:
	mvn	r0, #1	@ D.39759,
	b	.L833	@
.L838:
	add	r5, r5, #1	@ temp.3311, i.3283,
	bl	ReleaseStreamSeg	@
	ldr	r7, [r4, r9]	@ prephitmp.3210, <variable>.StreamSegArray.Tail
	smull	r3, ip, sl, r5	@, tmp399, tmp635, temp.3311
	mov	r3, r5, asr #31	@ tmp402, temp.3311,
	rsb	r0, r3, ip, asr #8	@, i.3283, tmp402, tmp399,
	add	r6, r0, r0, asl #3	@, tmp405, i.3283, i.3283,
	sub	r5, r5, r6, asl #7	@ i.3283, temp.3311, tmp405,
	b	.L908	@
.L859:
	beq	.L927	@,
	bcs	.L909	@,
	movw	r2, #:lower16:73904	@ tmp458,
	movt	r2, #:upper16:73904	@ tmp458,
	mvn	r6, #0	@ tmp425,
	mov	ip, r8	@ tmp424, tmp424
	ldr	r1, [r4, r2]	@ i.3271, <variable>.RawPacketArray.History
	add	sl, r1, r1, asl #3	@, tmp462, i.3271, i.3271,
	add	r7, r4, sl, asl #3	@, tmp464, pSmInstArray, tmp462,
	ldrd	sl, [r7, #184]	@ prephitmp.3213, tmp464,
	mvn	r7, #0	@,
	cmp	fp, r7	@ prephitmp.3213, tmp425
	cmpeq	sl, r6	@ prephitmp.3213, tmp425
	beq	.L914	@,
	ldrd	r8, [sp, #8]	@,,
	cmp	r9, fp	@, prephitmp.3213
	cmpeq	r8, sl	@, prephitmp.3213
	bls	.L867	@,
	ldrd	r6, [sp, #40]	@,,
	subs	r8, r8, sl	@,, prephitmp.3213
	sbc	r9, r9, fp	@,, prephitmp.3213
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bcs	.L867	@,
.L914:
	str	r3, [r4, r2]	@ i, <variable>.RawPacketArray.History
	ldrd	sl, [ip]	@ prephitmp.3213, <variable>.Pts
.L866:
	movw	r1, #:lower16:73896	@ tmp484,
	movt	r1, #:upper16:73896	@ tmp484,
	ldr	r0, [r4, r1]	@ temp.3273, <variable>.RawPacketArray.Head
	cmp	r3, r0	@ i, temp.3273
	rsblt	r0, r0, #1024	@ tmp485, temp.3273,
	rsbge	r3, r0, r3	@ DelNum.3233, temp.3273, i
	addlt	r3, r0, r3	@ DelNum.3233, tmp485, i
	cmp	r3, #0	@ DelNum.3233,
	beq	.L870	@,
	movw	r2, #:lower16:166136	@ tmp486,
	movt	r2, #:upper16:166136	@ tmp486,
	ldr	r7, [sp, #28]	@, %sfp
	ldr	r5, [r4, r2]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.3233, <variable>.SmPushRaw.PushRawNum
	cmple	r7, #1	@,,
	movne	r5, #0	@, tmp494
	moveq	r5, #1	@, tmp494
	bne	.L871	@,
.L870:
	ldr	r8, [sp, #24]	@, %sfp
	movw	r9, #:lower16:73896	@ tmp496,
	movt	r9, #:upper16:73896	@ tmp496,
	movw	r3, #:lower16:73904	@ tmp495,
	movw	lr, #:lower16:166144	@ tmp498,
	movt	r3, #:upper16:73904	@ tmp495,
	strd	sl, [r8]	@ prephitmp.3213,
	movt	lr, #:upper16:166144	@ tmp498,
	ldr	ip, [r4, r9]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.39759,
	ldr	r9, [sp, #28]	@, %sfp
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r9, [r4, lr]	@, <variable>.SmPushRaw.PushRawOver
	b	.L833	@
.L841:
	beq	.L928	@,
	bcs	.L908	@,
	movw	r3, #:lower16:166096	@ tmp342,
	movt	r3, #:upper16:166096	@ tmp342,
	mvn	r7, #0	@,
	ldr	r2, [r4, r3]	@ i.3298, <variable>.StreamSegArray.History
	add	r6, r2, r2, asl #2	@, tmp346, i.3298, i.3298,
	add	r1, r4, r6, asl #4	@, tmp348, pSmInstArray, tmp346,
	mvn	r6, #0	@ tmp279,
	ldrd	r0, [r1, ip]	@ D.39803, tmp348, tmp272
	cmp	r1, r7	@ D.39803, tmp279
	cmpeq	r0, r6	@ D.39803, tmp279
	beq	.L912	@,
	ldrd	r6, [sp, #8]	@,,
	cmp	r7, r1	@, D.39803
	cmpeq	r6, r0	@, D.39803
	bls	.L847	@,
	ldrd	sl, [sp, #40]	@,,
	subs	r0, r6, r0	@ tmp352,, D.39803
	sbc	r1, r7, r1	@ tmp352,, D.39803
	cmp	fp, r1	@, tmp352
	cmpeq	sl, r0	@, tmp352
	bcc	.L912	@,
.L847:
	mov	r5, r2	@ i.3283, i.3298
.L846:
	movw	r0, #:lower16:166088	@ tmp354,
	movt	r0, #:upper16:166088	@ tmp354,
	ldr	r6, [r4, r0]	@ j.3239, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3283, j.3239
	moveq	r2, r5	@ j.3238, i.3283
	beq	.L849	@,
	movw	sl, #:lower16:166124	@ tmp630,
	movw	r7, #:lower16:166128	@ tmp632,
	movw	fp, #:lower16:954437177	@ tmp633,
	movw	r9, #:lower16:166096	@ tmp634,
	movt	sl, #:upper16:166124	@ tmp630,
	movt	r7, #:upper16:166128	@ tmp632,
	movt	fp, #:upper16:954437177	@ tmp633,
	movt	r9, #:upper16:166096	@ tmp634,
	mov	r5, #2	@ tmp629,
.L901:
	add	ip, r6, r6, asl #2	@, tmp358, j.3239, j.3239,
	mov	r1, r6	@, j.3239
	add	r6, r6, #1	@ temp.3309, j.3239,
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp360, pSmInstArray, tmp358,
	add	r3, lr, #73728	@ tmp371, tmp360,
	add	ip, r3, #200	@ tmp361, tmp361,
	add	lr, r3, #208	@ tmp371, tmp371,
	strb	r5, [ip, #4]	@ tmp629, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	ip, [r4, r7]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	r2, [r4, sl]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	rsb	lr, r3, r2	@ temp.3304, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	r2, ip, #1	@ temp.3306, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp379, temp.3304
	bic	lr, r2, r2, asr #31	@ tmp381, temp.3306
	str	r3, [r4, sl]	@ tmp379, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r7]	@ tmp381, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	ip, r1, fp, r6	@, tmp382, tmp633, temp.3309
	mov	r0, r6, asr #31	@ tmp385, temp.3309,
	ldr	r2, [r4, r9]	@ j.3238, <variable>.StreamSegArray.History
	rsb	ip, r0, r1, asr #8	@, j.3239, tmp385, tmp382,
	add	r3, ip, ip, asl #3	@, tmp388, j.3239, j.3239,
	sub	r6, r6, r3, asl #7	@ j.3239, temp.3309, tmp388,
	cmp	r2, r6	@ j.3238, j.3239
	bne	.L901	@,
.L849:
	add	r2, r2, r2, asl #2	@, tmp394, j.3238, j.3238,
	movw	r3, #:lower16:73960	@ tmp391,
	movt	r3, #:upper16:73960	@ tmp391,
	ldr	r1, [sp, #24]	@, %sfp
	add	r4, r4, r2, asl #4	@, tmp396, pSmInstArray, tmp394,
	mov	r0, #0	@ D.39759,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp391, tmp396
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L833	@
.L921:
	add	lr, r3, #1	@ temp.3264, i,
	mov	fp, lr, asr #31	@ tmp426, temp.3264,
	mov	r2, fp, lsr #22	@ tmp427, tmp426,
	add	r3, lr, r2	@ tmp428, temp.3264, tmp427
	mov	r0, r3, asl #22	@ tmp429, tmp428,
	mov	fp, r0, lsr #22	@ tmp429, tmp429,
	rsb	r3, r2, fp	@ i, tmp427, tmp429
	b	.L909	@
.L919:
	add	r5, r5, #1	@ temp.3282, i.3283,
	smull	r1, ip, sl, r5	@, tmp280, tmp635, temp.3282
	mov	r1, r5, asr #31	@ tmp283, temp.3282,
	rsb	r6, r1, ip, asr #8	@, i.3283, tmp283, tmp280,
	add	r0, r6, r6, asl #3	@, tmp286, i.3283, i.3283,
	sub	r5, r5, r0, asl #7	@ i.3283, temp.3282, tmp286,
	b	.L908	@
.L923:
	mov	r2, r0	@,
	mov	r3, r1	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	strd	r6, [sp]	@ RawNumInVfmw,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.39759,
	b	.L833	@
.L922:
	movw	ip, #:lower16:73904	@ tmp417,
	movt	ip, #:upper16:73904	@ tmp417,
	ldr	r0, [sp, #48]	@, %sfp
	str	r2, [r4, ip]	@ temp.3240, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L856	@
.L912:
	str	r5, [r4, r3]	@ i.3283, <variable>.StreamSegArray.History
	b	.L846	@
.L883:
	beq	.L929	@,
	bcs	.L910	@,
	movw	r1, #:lower16:73904	@ tmp550,
	movt	r1, #:upper16:73904	@ tmp550,
	ldr	r0, [r4, r1]	@ i.3254, <variable>.RawPacketArray.History
	add	r7, r0, r0, asl #3	@, tmp554, i.3254, i.3254,
	add	r6, r4, r7, asl #3	@, tmp556, pSmInstArray, tmp554,
	mvn	r7, #0	@,
	ldrd	r8, [r6, #184]	@ prephitmp.3217, tmp556,
	mvn	r6, #0	@ tmp527,
	cmp	r9, r7	@ prephitmp.3217, tmp527
	cmpeq	r8, r6	@ prephitmp.3217, tmp527
	beq	.L930	@,
	ldrd	r6, [sp, #8]	@,,
	cmp	r7, r9	@, prephitmp.3217
	cmpeq	r6, r8	@, prephitmp.3217
	bls	.L890	@,
	ldrd	sl, [sp, #40]	@,,
	subs	r6, r6, r8	@ tmp567, tmp567, prephitmp.3217
	sbc	r7, r7, r9	@ tmp567, tmp567, prephitmp.3217
	cmp	fp, r7	@, tmp567
	cmpeq	sl, r6	@, tmp567
	bcs	.L890	@,
	str	r3, [r4, r1]	@ i.3237, <variable>.RawPacketArray.History
	ldrd	r8, [r2, #184]	@ prephitmp.3217, tmp525,
.L889:
	movw	lr, #:lower16:73896	@ tmp574,
	movt	lr, #:upper16:73896	@ tmp574,
	ldr	r1, [r4, lr]	@ temp.3255, <variable>.RawPacketArray.Head
	cmp	r3, r1	@ i.3237, temp.3255
	rsblt	r1, r1, #1024	@ tmp575, temp.3255,
	rsbge	r0, r1, r3	@ DelNum.3232, temp.3255, i.3237
	addlt	r0, r1, r3	@ DelNum.3232, tmp575, i.3237
	cmp	r0, #0	@ DelNum.3232,
	bne	.L893	@,
	ldr	fp, [sp, #24]	@, %sfp
	movw	r2, #:lower16:73896	@ tmp577,
	movt	r2, #:upper16:73896	@ tmp577,
	movw	r3, #:lower16:73904	@ tmp576,
	movt	r3, #:upper16:73904	@ tmp576,
	strd	r8, [fp]	@ prephitmp.3217,
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L833	@
.L925:
	add	r3, r3, #1	@ D.39792, i.3237,
	mov	r2, r3, asr #31	@ tmp528, D.39792,
	mov	r2, r2, lsr #22	@ tmp529, tmp528,
	add	lr, r3, r2	@ tmp530, D.39792, tmp529
	mov	ip, lr, asl #22	@ tmp531, tmp530,
	mov	r3, ip, lsr #22	@ tmp531, tmp531,
	rsb	r3, r2, r3	@ i.3237, tmp529, tmp531
	b	.L910	@
.L927:
	movw	r2, #:lower16:73896	@ tmp440,
	movt	r2, #:upper16:73896	@ tmp440,
	ldr	lr, [r4, r2]	@ temp.3266, <variable>.RawPacketArray.Head
	cmp	r3, lr	@ i, temp.3266
	rsblt	lr, lr, #1024	@ tmp441, temp.3266,
	rsbge	r3, lr, r3	@ DelNum.3236, temp.3266, i
	addlt	r3, lr, r3	@ DelNum.3236, tmp441, i
	cmp	r3, #0	@ DelNum.3236,
	beq	.L863	@,
	movw	lr, #:lower16:166136	@ tmp442,
	movt	lr, #:upper16:166136	@ tmp442,
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r5, [r4, lr]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.3236, <variable>.SmPushRaw.PushRawNum
	cmple	ip, #1	@,,
	movne	r5, #0	@, tmp450
	moveq	r5, #1	@, tmp450
	bne	.L864	@,
.L863:
	ldr	ip, [sp, #24]	@, %sfp
	movw	r6, #:lower16:73896	@ tmp452,
	movt	r6, #:upper16:73896	@ tmp452,
	movw	r3, #:lower16:73904	@ tmp451,
	movw	r2, #:lower16:166144	@ tmp454,
	movt	r3, #:upper16:73904	@ tmp451,
	strd	r0, [ip]	@ temp.3263,
	movt	r2, #:upper16:166144	@ tmp454,
	ldr	r1, [r4, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.39759,
	ldr	r6, [sp, #28]	@, %sfp
	str	r1, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r6, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	b	.L833	@
.L929:
	movw	lr, #:lower16:73896	@ tmp542,
	movt	lr, #:upper16:73896	@ tmp542,
	ldr	r1, [r4, lr]	@ temp.3250, <variable>.RawPacketArray.Head
	cmp	r1, r3	@ temp.3250, i.3237
	rsbgt	r1, r1, #1024	@ tmp543, temp.3250,
	rsble	r0, r1, r3	@ DelNum.3235, temp.3250, i.3237
	addgt	r0, r1, r3	@ DelNum.3235, tmp543, i.3237
	cmp	r0, #0	@ DelNum.3235,
	bne	.L887	@,
	ldr	r7, [sp, #24]	@, %sfp
	movw	r2, #:lower16:73896	@ tmp545,
	movt	r2, #:upper16:73896	@ tmp545,
	movw	r3, #:lower16:73904	@ tmp544,
	movt	r3, #:upper16:73904	@ tmp544,
	strd	r8, [r7]	@ D.39833,
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L833	@
.L928:
	movw	ip, #:lower16:166088	@ tmp298,
	movt	ip, #:upper16:166088	@ tmp298,
	ldr	r7, [r4, ip]	@ j.3285, <variable>.StreamSegArray.Head
	cmp	r5, r7	@ i.3283, j.3285
	beq	.L843	@,
	movw	r9, #:lower16:166124	@ tmp624,
	movw	sl, #:lower16:166128	@ tmp626,
	movw	fp, #:lower16:954437177	@ tmp627,
	movt	r9, #:upper16:166124	@ tmp624,
	movt	sl, #:upper16:166128	@ tmp626,
	movt	fp, #:upper16:954437177	@ tmp627,
.L900:
	add	ip, r7, r7, asl #2	@, tmp302, j.3285, j.3285,
	mov	r1, r7	@, j.3285
	add	r7, r7, #1	@ temp.3296, j.3285,
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
	rsb	lr, r2, ip	@ temp.3291, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, r3, #1	@ temp.3293, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, lr, lr, asr #31	@ tmp323, temp.3291
	bic	lr, ip, ip, asr #31	@ tmp325, temp.3293
	str	r2, [r4, r9]	@ tmp323, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, sl]	@ tmp325, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r2, fp, r7	@, tmp326, tmp627, temp.3296
	mov	r3, r7, asr #31	@ tmp329, temp.3296,
	rsb	r0, r3, r2, asr #8	@, j.3285, tmp329, tmp326,
	add	r1, r0, r0, asl #3	@, tmp332, j.3285, j.3285,
	sub	r7, r7, r1, asl #7	@ j.3285, temp.3296, tmp332,
	cmp	r5, r7	@ i.3283, j.3285
	bne	.L900	@,
.L843:
	add	r5, r6, r5	@ tmp337, tmp591, i.3283
	movw	r3, #:lower16:73960	@ tmp334,
	movt	r3, #:upper16:73960	@ tmp334,
	ldr	r1, [sp, #24]	@, %sfp
	add	r4, r4, r5, asl #4	@, tmp339, pSmInstArray, tmp337,
	mov	r0, #0	@ D.39759,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp334, tmp339
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L833	@
.L926:
	str	r2, [r4, r5]	@ temp.3244, <variable>.RawPacketArray.History
	ldr	r0, [sp, #48]	@, %sfp
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L880	@
.L867:
	mov	r3, r1	@ i, i.3271
	b	.L866	@
.L890:
	mov	r3, r0	@ i.3237, i.3254
	b	.L889	@
.L893:
	ldr	r1, [sp, #24]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp580,
	movt	r3, #:upper16:73896	@ tmp580,
	strd	r8, [r1]	@ prephitmp.3217,
.L915:
	ldr	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	lr, #:lower16:73904	@ tmp579,
	movt	lr, #:upper16:73904	@ tmp579,
	mov	r1, r0	@, DelNum.3232
	ldr	r0, [sp, #48]	@, %sfp
	str	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.39759,
	b	.L833	@
.L887:
	ldr	sl, [sp, #24]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp548,
	movt	r3, #:upper16:73896	@ tmp548,
	strd	r8, [sl]	@ D.39833,
	b	.L915	@
.L930:
	str	r3, [r4, r1]	@ i.3237, <variable>.RawPacketArray.History
	ldrd	r8, [sl]	@ prephitmp.3217, <variable>.Pts
	b	.L889	@
.L871:
	ldr	r1, [sp, #24]	@, %sfp
	movw	r0, #:lower16:73896	@ tmp500,
	movt	r0, #:upper16:73896	@ tmp500,
	movw	r2, #:lower16:73904	@ tmp499,
	strd	sl, [r1]	@ prephitmp.3213,
	ldr	ip, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L916:
	movt	r2, #:upper16:73904	@ tmp499,
	mov	r1, r3	@, DelNum.3233
	ldr	r0, [sp, #48]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, r5	@, tmp494
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@ D.39759, tmp494
	b	.L833	@
.L864:
	ldr	r7, [sp, #24]	@, %sfp
	movw	lr, #:lower16:73896	@ tmp456,
	movt	lr, #:upper16:73896	@ tmp456,
	movw	r2, #:lower16:73904	@ tmp455,
	strd	r0, [r7]	@ temp.3263,
	ldr	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L916	@
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
	beq	.L934	@,
	movw	r1, #:lower16:g_CabacMN	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:g_CabacMN	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L934:
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC76	@,
	mov	r2, #68	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
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
	ldr	r3, [r5, #236]	@ D.38153, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38153,
	beq	.L936	@,
	ldr	r2, [r3, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L936	@,
	movw	r0, #:lower16:166252	@ tmp143,
	movt	r0, #:upper16:166252	@ tmp143,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp146,
	streq	r1, [r3, r0]	@ tmp146, <variable>.Mode
.L936:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #:lower16:.LANCHOR0	@ tmp203,
	.pad #44
	sub	sp, sp, #44	@,,
	movt	r7, #:upper16:.LANCHOR0	@ tmp203,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r0, #20	@,
	mov	r4, #0	@ tmp150,
	movw	r3, #:lower16:269729792	@ tmp152,
	str	r4, [sp, #36]	@ tmp150, dataInt
	movt	r3, #:upper16:269729792	@ tmp152,
	str	r3, [r7, #288]	@ tmp152, s_RegPhyBaseAddr
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L952	@,
	mov	r1, sp	@,
	bic	sl, r1, #8128	@ tmp154,,
	bic	r0, sl, #63	@ tmp154, tmp154,
	cmp	r5, #6	@ eVidStd,
	ldr	r2, [r0, #8]	@, <variable>.addr_limit
	str	r2, [sp, #20]	@, %sfp
	str	r4, [r0, #8]	@ tmp150, <variable>.addr_limit
	beq	.L953	@,
	cmp	r5, #0	@ eVidStd,
	beq	.L954	@,
	mov	r2, r5	@, eVidStd
	mov	r0, r4	@, tmp150
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	mov	sl, r4	@ fp, tmp150
.L942:
	mov	fp, sp	@,
	bic	r5, fp, #8128	@ tmp169,,
	bic	r8, r5, #63	@ tmp169, tmp169,
	add	r9, sp, #40	@,,
	mov	r4, #0	@ tmp171,
	mov	r2, #0	@ tmp172,
	str	r4, [r8, #8]	@ tmp171, <variable>.addr_limit
	mov	r5, r4	@ calbakBaseaddr, tmp171
	mov	r3, #0	@,
	mov	r4, #10	@ ivtmp.3393,
	strd	r2, [r9, #-16]!	@ tmp172,,
	add	fp, sp, #36	@ tmp208,,
	str	r9, [sp, #4]	@, %sfp
	b	.L945	@
.L947:
	ldrd	r8, [sp, #8]	@,,
	strd	r8, [sp, #24]	@,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L951	@,
	ldr	ip, [r7, #292]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #36]	@, dataInt
	add	r0, r5, ip	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L945:
	mov	r1, r6	@, data
	mov	r2, #10	@,
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, sl	@, fp
	bl	vfs_read	@
	mov	r8, r4	@, ivtmp.3393
	mov	r9, r8, asr #31	@
	strd	r8, [sp, #8]	@,,
	movw	r1, #:lower16:.LC84	@,
	mov	r2, fp	@, tmp208
	movt	r1, #:upper16:.LC84	@,
	add	r4, r4, #10	@ ivtmp.3393, ivtmp.3393,
	subs	r9, r0, #0	@ D.37094,
	mov	r0, r6	@, data
	bne	.L947	@,
	mov	r1, r9	@, D.37094
	mov	r0, sl	@, fp
	bl	filp_close	@
	ldr	r8, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #300]	@ g_hex_len, g_hex_len
	mov	r0, sp	@,
	bic	r3, r0, #8128	@ tmp181,,
	add	r0, r8, #264	@, s_RegPhyBaseAddr,
	ldr	r8, [sp, #20]	@, %sfp
	bic	ip, r3, #63	@ tmp181, tmp181,
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r8, [ip, #8]	@, <variable>.addr_limit
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #292]	@, g_hex_base_addr
	add	r0, r2, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r9	@, D.37094
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L948:
	movw	r0, #:lower16:269730052	@,
	movt	r0, #:upper16:269730052	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L948	@,
.L951:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L949:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L954:
	movw	r0, #:lower16:.LC80	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC80	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L942	@,
	movw	r0, #:lower16:.LC81	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC81	@,
	movw	r2, #438	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
	b	.L943	@
.L953:
	movw	r0, #:lower16:.LC78	@,
	mov	r1, r4	@, tmp150
	movt	r0, #:upper16:.LC78	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L942	@,
	mov	r1, r4	@, tmp150
	movw	r0, #:lower16:.LC79	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC79	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
.L943:
	cmn	sl, #4096	@ fp,
	bls	.L942	@,
	mov	r2, r5	@, eVidStd
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L949	@
.L952:
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	b	.L949	@
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
	.type	__func__.37818, %object
	.size	__func__.37818, 17
__func__.37818:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	CSWTCH.675, %object
	.size	CSWTCH.675, 44
CSWTCH.675:
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
	.ascii	"***Print Down Msg Now\012\000"
	.space	1
.LC8:
	.ascii	"DownMsgVirAddr = %x   \012\000"
.LC9:
	.ascii	"DownMsgPhyAddr = %x   \012\000"
.LC10:
	.ascii	"DownMsg[%d] = %x   \000"
.LC11:
	.ascii	"\012\000"
	.space	2
.LC12:
	.ascii	"line; %d, Flag = %d, pSmInstArray = %p\012\000"
.LC13:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC14:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC15:
	.ascii	"0x%02x,\000"
.LC16:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC17:
	.ascii	"Array out of bound in function %s\012\000"
	.space	1
.LC18:
	.ascii	"Release Err StreamID %d in function %s\012\000"
.LC19:
	.ascii	"CheckStream.InstID %d\012\000"
	.space	1
.LC20:
	.ascii	"line: %d Get SmID fail!\000"
.LC21:
	.ascii	"DelRaw err PacketNum=%d,DelNum=%d\012\000"
	.space	1
.LC22:
	.ascii	"Release RawPhyAddr=0x%x,Len=%d\012\000"
.LC23:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC24:
	.ascii	"SetMaxSegSize get eCapLevel failed!\012\000"
	.space	3
.LC25:
	.ascii	"SetMaxSegSize get ChanWidth/ChanHeight failed!\012\000"
.LC26:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC27:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC28:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC29:
	.ascii	"UpLen = %x\012\000"
.LC30:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC31:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC32:
	.ascii	"BufferIni = %x\012\000"
.LC33:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC34:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC35:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC36:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC37:
	.ascii	"line: %d s_SmIIS.pSmInstArray[%d] is NULL\012\000"
	.space	1
.LC38:
	.ascii	"SmID = %d is not expected!\012\000"
.LC39:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC40:
	.ascii	"***Print Up Msg Now\012\000"
	.space	3
.LC41:
	.ascii	"ScdUpMsg[%d] = 0x%x\012\000"
	.space	3
.LC42:
	.ascii	"line: %d\012\000"
	.space	2
.LC43:
	.ascii	"Raw packet(VFMW_RAW YUV) TOO BIG(maybe caused by w/"
	.ascii	"h... err)! can't copy to seg!\012\000"
	.space	2
.LC44:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC45:
	.ascii	"VFMW_RAW YUV disp w/h err)! discard raw packet!\012"
	.ascii	"\000"
	.space	3
.LC46:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC47:
	.ascii	"line: %d, pSmInstArray is NULL!\012\000"
	.space	3
.LC48:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC49:
	.ascii	"Error! (PushRawTotalLen - SrcEaten) > SM_RAW_DISCAR"
	.ascii	"D_SIZE, packet discard...\012\000"
	.space	2
.LC50:
	.ascii	"Insert err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,Is"
	.ascii	"LastSeg=%d\012\000"
	.space	1
.LC51:
	.ascii	"RawLen = %d, Pts = %ld, \012\000"
	.space	2
.LC52:
	.ascii	"Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg=%d\012"
	.ascii	"\000"
.LC53:
	.ascii	"line %d CheckSeg err\012\000"
	.space	2
.LC54:
	.ascii	"line %d SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC55:
	.ascii	"line %d Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLas"
	.ascii	"tSeg=%d\012\000"
.LC56:
	.ascii	"RawLen = %d, Pts =  %lld, \012\000"
.LC57:
	.ascii	"CheckSeg err\012\000"
	.space	2
.LC58:
	.ascii	"SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC59:
	.ascii	"Insert 2 err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,"
	.ascii	"IsLastSeg=%d\012\000"
	.space	3
.LC60:
	.ascii	"ReadScdSegNum = %d, FilterScdSegNum = 0 release raw"
	.ascii	" packet anyway!\012\000"
.LC61:
	.ascii	"Raw packet TOO BIG! can't copy to seg! Len: %#x\012"
	.ascii	"\000"
	.space	3
.LC62:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC63:
	.ascii	"RawStreamNum=%d\012\000"
	.space	3
.LC64:
	.ascii	"SegStreamNum=%d\012\000"
	.space	3
.LC65:
	.ascii	"SegStreamSize=%d\012\000"
	.space	2
.LC66:
	.ascii	"RawStreamSize=%d\012\000"
	.space	2
.LC67:
	.ascii	"long time(%d ms) not release stream seg, release an"
	.ascii	"yway!\012\000"
	.space	2
.LC68:
	.ascii	"VFMW_RAW SM_CopyYuvToDnr fail\012\000"
	.space	1
.LC69:
	.ascii	"raw_pts: %lld\012\000"
	.space	1
.LC70:
	.ascii	"Get RawPhyAddr=0x%x,Len=%d\012\000"
.LC71:
	.ascii	"!!!push raw err!!!\012\000"
.LC72:
	.ascii	"DisContinueRawPacket found! %d ---> %d\012\000"
.LC73:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC74:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC75:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC76:
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC77:
	.ascii	"no memory OSAL_KMALLOC error!\012\000"
	.space	1
.LC78:
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC79:
	.ascii	"/system/lib/modules/hi_vfmw_avsp.bin\000"
	.space	3
.LC80:
	.ascii	"/kmod/hi_vfmw_h264.bin\000"
	.space	1
.LC81:
	.ascii	"/system/lib/modules/hi_vfmw_h264.bin\000"
	.space	3
.LC82:
	.ascii	"eVidStd = %d not have DSP code\012\000"
.LC83:
	.ascii	"Cannot open DSP code for eVidStd(%d)\012\000"
	.space	2
.LC84:
	.ascii	"%8x\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_SmIIS, %object
	.size	s_SmIIS, 284
s_SmIIS:
	.space	284
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
	.type	LastEventTime.38521, %object
	.size	LastEventTime.38521, 4
LastEventTime.38521:
	.space	4
	.type	last_rec_pos_time.39939, %object
	.size	last_rec_pos_time.39939, 16
last_rec_pos_time.39939:
	.space	16
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.40046, %object
	.size	last_rec_pos_time.40046, 16
last_rec_pos_time.40046:
	.space	16
	.type	last_rec_pos_time.39458, %object
	.size	last_rec_pos_time.39458, 16
last_rec_pos_time.39458:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
