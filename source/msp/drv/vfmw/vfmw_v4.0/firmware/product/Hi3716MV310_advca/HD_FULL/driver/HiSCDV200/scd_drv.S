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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o
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
	.global	GetInstIDByRawArray
	.type	GetInstIDByRawArray, %function
GetInstIDByRawArray:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r2, [r3, #236]	@ temp.780, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.780,
	beq	.L2	@,
	add	r2, r2, #168	@ tmp141, temp.780,
	cmp	r2, r0	@ tmp141, pRawArray
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L2:
	ldr	r2, [r3, #240]	@ temp.782, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.782,
	beq	.L4	@,
	add	r1, r2, #168	@ tmp143, temp.782,
	cmp	r1, r0	@ tmp143, pRawArray
	moveq	r0, #1	@ i,
	bxeq	lr	@
.L4:
	ldr	r2, [r3, #244]	@ temp.784, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ temp.784,
	beq	.L5	@,
	add	ip, r2, #168	@ tmp145, temp.784,
	cmp	ip, r0	@ tmp145, pRawArray
	moveq	r0, #2	@ i,
	bxeq	lr	@
.L5:
	ldr	r3, [r3, #248]	@ D.39991, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.39991,
	beq	.L6	@,
	add	r3, r3, #168	@ tmp147, D.39991,
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
.LFB1925:
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
	ldr	r3, [r3, #236]	@ D.40077, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40077,
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
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L19	@,
.L15:
	mvn	r0, #0	@ D.40133,
	bx	lr	@
.L19:
	movw	ip, #:lower16:73732	@ tmp140,
	movt	ip, #:upper16:73732	@ tmp140,
	mov	r2, #73728	@ tmp139,
	ldr	r2, [r0, r2]	@ D.40134, <variable>.Head
	ldr	r3, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ D.40134, <variable>.Tail
	mvneq	r0, #2	@ D.40133,
	bxeq	lr	@
	add	ip, r2, r2, asl #3	@, tmp146, D.40134, D.40134,
	movw	r3, #:lower16:73740	@ tmp142,
	movt	r3, #:upper16:73740	@ tmp142,
	add	r2, ip, #1	@ tmp147, tmp146,
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	ldr	r2, [r0, r2, asl #3]	@ <variable>.Length, <variable>.Length
	add	r1, r1, ip	@ TargetOffset, Offset, <variable>.FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, <variable>.Length
	strlt	r1, [r0, r3]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, #0	@ D.40133,
	bxlt	lr	@
	b	.L15	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pOffset,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r0, #0	@, tmp143
	moveq	r0, #1	@, tmp143
	mvneq	r0, #0	@ D.40153,
	bxeq	lr	@
	movw	r2, #:lower16:73732	@ tmp145,
	movt	r2, #:upper16:73732	@ tmp145,
	mov	ip, #73728	@ tmp144,
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r3, ip]	@ <variable>.Head, <variable>.Head
	cmp	ip, r2	@ <variable>.Head, <variable>.Tail
	movwne	r2, #:lower16:73740	@ tmp148,
	movtne	r2, #:upper16:73740	@ tmp148,
	mvneq	r0, #2	@ D.40153,
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
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bne	.L29	@,
.L26:
	mvn	r0, #0	@ D.40365,
	bx	lr	@
.L29:
	movw	ip, #:lower16:73748	@ tmp139,
	movt	ip, #:upper16:73748	@ tmp139,
	movw	r3, #:lower16:73740	@ tmp140,
	movt	r3, #:upper16:73740	@ tmp140,
	ldr	r2, [r0, ip]	@ D.40366, <variable>.RawTotalSize
	str	r2, [r1, #0]	@ D.40366,* pStreamSize
	ldr	ip, [r0, r3]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	rsb	r3, ip, r2	@ D.40369, <variable>.FirstPacketOffset, D.40366
	str	r3, [r1, #0]	@ D.40369,* pStreamSize
	cmp	r3, #0	@ D.40369,
	movge	r0, #0	@ D.40365,
	bxge	lr	@
	b	.L26	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	mvneq	r0, #0	@ D.40378,
	bxeq	lr	@
	movw	r3, #:lower16:73732	@ tmp138,
	movt	r3, #:upper16:73732	@ tmp138,
	mov	ip, #73728	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Head, <variable>.Head
	ldr	ip, [r0, r3]	@ <variable>.Tail, <variable>.Tail
	mov	r0, #0	@ D.40378,
	rsb	r3, r2, ip	@ D.40381, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.40381,* pStreamNum
	cmp	r3, #0	@ D.40381,
	addlt	r3, r3, #1024	@ tmp142, D.40381,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	bx	lr	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
	.fnstart
.LFB1939:
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
.LFB1940:
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
	ldr	r1, [r0, ip]	@ temp.949, <variable>.SegBufWriteAddr
	ldr	ip, [r0, r4]	@ D.40454, <variable>.SegBufReadAddr
	cmp	r1, ip	@ temp.949, D.40454
	bgt	.L44	@,
	movw	r3, #:lower16:92188	@ tmp156,
	movt	r3, #:upper16:92188	@ tmp156,
	sublt	ip, ip, #1	@ tmp155, D.40454,
	ldrge	r3, [r0, r3]	@ prephitmp.938, <variable>.SegBufSize
	rsblt	r1, r1, ip	@ Len, temp.949, tmp155
	ldrlt	r3, [r0, r3]	@ prephitmp.938, <variable>.SegBufSize
	subge	r1, r3, #1	@ Len, prephitmp.938,
.L41:
	cmp	r1, r3	@ Len, prephitmp.938
	strle	r1, [r2, #0]	@ Len,* pLength
.L43:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L44:
	movw	r3, #:lower16:92188	@ tmp152,
	movt	r3, #:upper16:92188	@ tmp152,
	ldr	r3, [r0, r3]	@ prephitmp.938, <variable>.SegBufSize
	add	ip, ip, r3	@ tmp153, D.40454, prephitmp.938
	sub	r0, ip, #1	@ tmp154, tmp153,
	rsb	r1, r1, r0	@ Len, temp.949, tmp154
	b	.L41	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
	.fnstart
.LFB1945:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ pSegStreamArray, pSegStreamArray
	movwne	r2, #:lower16:92200	@ tmp137,
	movtne	r2, #:upper16:92200	@ tmp137,
	mvneq	r0, #0	@ D.40730,
	movne	r0, #0	@ D.40730,
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
.LFB1946:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegStreamArray
	mvneq	r0, #0	@ D.40738,
	bxeq	lr	@
	movw	ip, #:lower16:92172	@ tmp138,
	movw	r3, #:lower16:92168	@ tmp139,
	movt	ip, #:upper16:92172	@ tmp138,
	movt	r3, #:upper16:92168	@ tmp139,
	ldr	r2, [r0, ip]	@ <variable>.Tail, <variable>.Tail
	ldr	ip, [r0, r3]	@ <variable>.Head, <variable>.Head
	mov	r0, #0	@ D.40738,
	rsb	r3, ip, r2	@ D.40741, <variable>.Head, <variable>.Tail
	str	r3, [r1, #0]	@ D.40741,* pStreamNum
	cmp	r3, #0	@ D.40741,
	addlt	r3, r3, #1152	@ tmp142, D.40741,
	strlt	r3, [r1, #0]	@ tmp142,* pStreamNum
	bx	lr	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
	.fnstart
.LFB1947:
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
.LFB1948:
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
.LFB1949:
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
	.global	SCDDRV_ForeceSleep
	.type	SCDDRV_ForeceSleep, %function
SCDDRV_ForeceSleep:
	.fnstart
.LFB1950:
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
	.size	SCDDRV_ForeceSleep, .-SCDDRV_ForeceSleep
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
.LFB1958:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	add	r0, r3, r0, asl #2	@, tmp143, tmp139, SmID,
	ldr	r1, [r0, #236]	@ D.41009, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ D.41009,
	beq	.L68	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	ldr	ip, [r1, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	bne	.L74	@,
.L68:
	mov	r0, #0	@ D.41012,
	bx	lr	@
.L74:
	mov	r0, #0	@ tmp148,
	str	r0, [r1, r2]	@ tmp148, <variable>.Mode
	ldr	r3, [r3, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, r0	@ s_SmIIS.SCDState,
	beq	.L68	@,
	mov	r3, r0	@ i, tmp148
.L69:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L69	@,
	mvn	r0, #6	@ D.41012,
	bx	lr	@
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
.LFB1959:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ SmID,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	bhi	.L76	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	add	r0, r3, r0, asl #2	@, tmp145, tmp141, SmID,
	ldr	r3, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L82	@,
	movw	r2, #:lower16:166252	@ tmp149,
	movt	r2, #:upper16:166252	@ tmp149,
	movw	ip, #:lower16:180116	@ tmp152,
	movt	ip, #:upper16:180116	@ tmp152,
	ldr	r4, [r3, r2]	@ <variable>.Mode, <variable>.Mode
	movw	r0, #:lower16:73900	@ tmp154,
	movw	r2, #:lower16:73896	@ tmp155,
	movt	r0, #:upper16:73900	@ tmp154,
	movt	r2, #:upper16:73896	@ tmp155,
	strb	r4, [r1, #0]	@ <variable>.Mode, <variable>.InstMode
	ldr	r4, [r3, ip]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	str	r4, [r1, #20]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	ldr	ip, [r3, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	r2, #:lower16:73916	@ tmp159,
	ldr	r0, [r3, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	movt	r2, #:upper16:73916	@ tmp159,
	rsb	r4, ip, r0	@ D.43061, <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Tail
	str	r4, [r1, #4]	@ D.43061, <variable>.RawNum
	cmp	r4, #0	@ D.43061,
	movw	ip, #:lower16:73908	@ tmp160,
	addlt	r4, r4, #1024	@ tmp158, D.43061,
	strlt	r4, [r1, #4]	@ tmp158, <variable>.RawNum
	ldr	r4, [r3, r2]	@ D.43071, <variable>.RawPacketArray.RawTotalSize
	movt	ip, #:upper16:73908	@ tmp160,
	movw	r0, #:lower16:166092	@ tmp163,
	movw	r2, #:lower16:166088	@ tmp164,
	movt	r0, #:upper16:166092	@ tmp163,
	movt	r2, #:upper16:166088	@ tmp164,
	str	r4, [r1, #12]	@ D.43071, <variable>.TotalRawSize
	ldr	ip, [r3, ip]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	rsb	r4, ip, r4	@ tmp162, <variable>.RawPacketArray.FirstPacketOffset, D.43071
	str	r4, [r1, #12]	@ tmp162, <variable>.TotalRawSize
	ldr	r0, [r3, r0]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r2, [r3, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	rsb	ip, r2, r0	@ D.43078, <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Tail
	movw	r2, #:lower16:166120	@ tmp168,
	movt	r2, #:upper16:166120	@ tmp168,
	cmp	ip, #0	@ D.43078,
	str	ip, [r1, #8]	@ D.43078, <variable>.SegNum
	addlt	ip, ip, #1152	@ tmp167, D.43078,
	strlt	ip, [r1, #8]	@ tmp167, <variable>.SegNum
	mov	r0, #0	@ D.41025,
	ldr	ip, [r3, r2]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.StreamSegArray.SegTotalSize
	str	ip, [r1, #16]	@ <variable>.StreamSegArray.SegTotalSize, <variable>.TotalSegSize
.L78:
	ldmfd	sp!, {r4}
	bx	lr
.L82:
	cmp	r1, #0	@ pSmInstInfo,
	strneb	r3, [r1, #0]	@ pSmInstArray, <variable>.InstMode
	mvnne	r0, #0	@ D.41025,
	bne	.L78	@,
.L76:
	mvn	r0, #0	@ D.41025,
	b	.L78	@
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
.LFB1967:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	sub	r2, r1, #1	@ tmp144, Mode,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	cmp	r2, #1	@ tmp144,
	add	r3, ip, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r3, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bls	.L87	@,
.L84:
	mvn	r0, #0	@ D.41411,
	bx	lr	@
.L87:
	cmp	r3, #0	@ pSmInstArray,
	beq	.L84	@,
	movw	r2, #:lower16:166252	@ tmp145,
	movt	r2, #:upper16:166252	@ tmp145,
	mov	r0, #0	@ D.41411,
	str	r1, [r3, r2]	@ Mode, <variable>.Mode
	bx	lr	@
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
	.fnstart
.LFB1973:
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
.LFB1974:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ ParseUpMsgInfo
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	mvneq	r5, #0	@ D.41660,
	beq	.L94	@,
	ldr	r5, [r0, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	ldrb	r4, [r1, #72]	@ zero_extendqisi2	@,
	mul	r2, r2, r3	@ D.41666, SegNum, UpMsgStepNum
	cmp	r5, #1	@ <variable>.ModeFlag,
	bfceq	r4, #0, #1	@ tmp142,,
	orrne	r4, r4, #1	@ tmp146, tmp145,
	strb	r4, [r1, #72]	@ tmp146,
	mov	r5, #0	@ D.41660,
	ldr	r3, [r0, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	ip, r2, #2	@ tmp153, D.41666,
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
.L94:
	mov	r0, r5	@, D.41660
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
.LFB1976:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegPacket
	mvneq	r0, #0	@ D.41806,
	bxeq	lr	@
	ldr	r3, [r0, #8]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	bne	.L103	@,
.L101:
	mvn	r0, #6	@ D.41806,
	bx	lr	@
.L103:
	ldr	r2, [r0, #0]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	r2, #0	@ <variable>.VirAddr,
	beq	.L101	@,
	ldr	ip, [r0, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, r1	@ <variable>.LenInByte, SegFreeBufLen
	movls	r0, #0	@ D.41806,
	bxls	lr	@
	b	.L101	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
.LFB1980:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L105	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	add	r0, r3, r0, asl #2	@, tmp141, tmp137, InstID,
	ldr	r2, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	beq	.L105	@,
	movw	ip, #:lower16:166252	@ tmp143,
	movt	ip, #:upper16:166252	@ tmp143,
	ldr	r1, [r2, ip]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	beq	.L105	@,
	ldr	r0, [r2, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	cmp	r0, #1	@ <variable>.Config.DisContinueRawPacketFlag,
	movne	r0, #0	@, D.42206
	moveq	r0, #1	@, D.42206
	bx	lr	@
.L105:
	mov	r0, #0	@ D.42206,
	bx	lr	@
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
.LFB1982:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	bls	.L113	@,
.L109:
	mov	r0, #0	@ D.42242,
.L111:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {pc}
.L113:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #0]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L109	@,
	ldr	ip, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r1, r2, ip	@ tmp138, stInstInfo.TotalSegSize, stInstInfo.TotalRawSize
	cmp	r1, #102400	@ tmp138,
	movlt	r0, #1	@ D.42242,
	blt	.L111	@,
	ldr	r0, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r0, #9	@ stInstInfo.SegNum,
	bgt	.L109	@,
	ldr	lr, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	lr, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@, D.42242
	movle	r0, #1	@, D.42242
	b	.L111	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	get_scd_msg_size
	.type	get_scd_msg_size, %function
get_scd_msg_size:
	.fnstart
.LFB1994:
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
.LFB1992:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
.LFB1991:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r2	@ PushRawNum, PushRawNum
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #0	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	mov	r4, #1	@ i,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	sub	r6, r5, #1	@ tmp137, PushRawNum,
	bl	vfmw_dprint_nothing	@
	and	r6, r6, r4	@ tmp139, tmp137,
	bl	vfmw_dprint_nothing	@
	cmp	r5, r4	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	cmp	r6, #0	@ tmp139,
	beq	.L120	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #2	@ i,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, r4	@ PushRawNum, i
	ldmlefd	sp!, {r4, r5, r6, pc}	@
.L120:
	add	r4, r4, #1	@ tmp140, i,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i, tmp140,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, r4	@ PushRawNum, i
	bgt	.L120	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
.LFB1981:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L134	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r3, r0, asl #2	@, tmp142, tmp138, InstID,
	ldr	r3, [r0, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	rsbs	r2, r3, #1	@ tmp151, pSmInstArray
	movcc	r2, #0	@ tmp151
	orrs	r2, r2, r1, lsr #31	@,, tmp151, Flag,
	bne	.L135	@,
	movw	r2, #:lower16:166252	@ tmp152,
	movt	r2, #:upper16:166252	@ tmp152,
	ldr	ip, [r3, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	ip, #0	@ <variable>.Mode,
	strne	r1, [r3, #84]	@ Flag, <variable>.Config.DisContinueRawPacketFlag
	streq	ip, [r3, #84]	@ <variable>.Mode, <variable>.Config.DisContinueRawPacketFlag
	moveq	r0, #1	@ D.42224,
	movne	r0, #1	@ D.42224,
	ldmfd	sp!, {r3, pc}	@
.L135:
	bl	vfmw_dprint_nothing	@
.L134:
	mov	r0, #0	@ D.42224,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp134,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp134,
	ldr	r3, [r3, #8]	@ D.40781, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.40781,
	beq	.L137	@,
	blx	r3	@ D.40781
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #284]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
.L137:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp135,
	movt	r0, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ tmp136,
	str	r2, [r0, #284]	@ tmp136, s_eScdDrvSleepStage
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
.LFB1944:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	subs	r4, r0, #0	@ pStreamSegArray, pStreamSegArray
	mov	r5, r1	@ StreamID, StreamID
	bne	.L162	@,
.L141:
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L162:
	sub	r2, r1, #1152	@ tmp146, StreamID,
	movw	r3, #:lower16:-1154	@ tmp148,
	movt	r3, #:upper16:-1154	@ tmp148,
	cmp	r2, r3	@ tmp146, tmp148
	bls	.L141	@,
	cmn	r1, #1	@ StreamID,
	beq	.L163	@,
	movw	r3, #:lower16:92168	@ tmp188,
	movw	r2, #:lower16:92172	@ tmp189,
	movt	r3, #:upper16:92168	@ tmp188,
	movt	r2, #:upper16:92172	@ tmp189,
	ldr	r3, [r4, r3]	@ i.1445, <variable>.Head
	ldr	r0, [r4, r2]	@ D.40693, <variable>.Tail
	cmp	r0, r3	@ D.40693, i.1445
	beq	.L143	@,
	cmp	r1, r3	@ StreamID, i.1445
	movwne	r1, #:lower16:954437177	@ tmp265,
	movtne	r1, #:upper16:954437177	@ tmp265,
	bne	.L157	@,
	b	.L147	@
.L161:
	cmp	r5, r3	@ StreamID, i.1445
	beq	.L147	@,
.L157:
	add	lr, r3, #1	@ D.40702, i.1445,
	umull	ip, r2, r1, lr	@, tmp206, tmp265, D.40702
	mov	ip, r2, lsr #8	@ i.1445, tmp206,
	add	r2, ip, ip, asl #3	@, tmp210, i.1445, i.1445,
	sub	r3, lr, r2, asl #7	@ i.1445, D.40702, tmp210,
	cmp	r0, r3	@ D.40693, i.1445
	bne	.L161	@,
.L143:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L147:
	add	ip, r5, r5, asl #2	@, tmp192, StreamID, StreamID,
	add	r1, r4, ip, asl #4	@, tmp196, pStreamSegArray, tmp192,
	add	sl, r1, #8	@ tmp197, tmp196,
	ldrsb	r0, [sl, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r0, #2	@ <variable>.SegState,
	bne	.L143	@,
.L146:
	mov	r1, #0	@ tmp212,
	strb	r1, [sl, #4]	@ tmp212, <variable>.SegState
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:92168	@ tmp214,
	movt	r0, #:upper16:92168	@ tmp214,
	ldr	r3, [r4, r0]	@ <variable>.Head, <variable>.Head
	cmp	r3, r5	@ <variable>.Head, StreamID
	beq	.L164	@,
.L150:
	movw	ip, #:lower16:92200	@ tmp246,
	movt	ip, #:upper16:92200	@ tmp246,
	ldr	r2, [sl, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r0, #0	@ Ret,
	ldr	r1, [r4, ip]	@ <variable>.SegTotalSize, <variable>.SegTotalSize
	rsb	r3, r2, r1	@ tmp250, <variable>.LenInByte, <variable>.SegTotalSize
	bic	lr, r3, r3, asr #31	@ tmp251, tmp250
	str	lr, [r4, ip]	@ tmp251, <variable>.SegTotalSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L163:
	movw	ip, #:lower16:92168	@ tmp149,
	movw	r1, #:lower16:92172	@ tmp150,
	movt	ip, #:upper16:92168	@ tmp149,
	movt	r1, #:upper16:92172	@ tmp150,
	ldr	r8, [r4, ip]	@ D.40681, <variable>.Head
	ldr	r0, [r4, r1]	@ <variable>.Tail, <variable>.Tail
	cmp	r8, r0	@ D.40681, <variable>.Tail
	beq	.L143	@,
	mov	sl, r8, asl #2	@ tmp253, D.40681,
	bl	vfmw_dprint_nothing	@
	add	r3, sl, r8	@ tmp154, tmp253, D.40681
	mov	r5, r8	@ StreamID, D.40681
	add	r7, r3, #1	@ tmp155, tmp154,
	add	r7, r4, r7, asl #4	@, tmp158, pStreamSegArray, tmp155,
	ldr	r2, [r7, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r2, #0	@ <variable>.LenInByte,
	beq	.L144	@,
	add	r7, r7, #4	@ tmp264, tmp158,
	mov	r6, #0	@ i.1443,
.L145:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, #0]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r6, r6, #1	@ i.1443, i.1443,
	cmp	r6, #15	@ i.1443,
	movhi	r1, #0	@,
	movls	r1, #1	@,
	cmp	ip, r6	@ <variable>.LenInByte, i.1443
	movls	r1, #0	@,,
	cmp	r1, #0	@ tmp181,
	bne	.L145	@,
.L144:
	add	lr, sl, r8	@ tmp184, tmp253, D.40681
	add	sl, r4, lr, asl #4	@, tmp187, pStreamSegArray, tmp184,
	add	sl, sl, #8	@ pSeg, tmp187,
	bl	vfmw_dprint_nothing	@
	b	.L146	@
.L164:
	movw	r8, #:lower16:92172	@ tmp258,
	movw	r7, #:lower16:954437177	@ tmp259,
	movt	r8, #:upper16:92172	@ tmp258,
	movt	r7, #:upper16:954437177	@ tmp259,
	movw	r6, #1151	@ tmp257,
	b	.L154	@
.L151:
	ldr	lr, [r4, r8]	@ temp.1447, <variable>.Tail
	add	r3, r5, #1	@ temp.1450, i,
	add	r1, r5, r5, asl #2	@, tmp225, i, i,
	cmp	lr, r5	@ temp.1447, i
	umull	ip, r2, r7, r3	@, tmp240, tmp259, temp.1450
	add	ip, r4, r1, asl #4	@, tmp229, pStreamSegArray, tmp225,
	beq	.L165	@,
	cmp	r5, r6	@ i, tmp257
	mov	r2, r2, lsr #8	@ i, tmp240,
	bhi	.L153	@,
	ldrsb	lr, [ip, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	lr, #0	@ <variable>.SegState,
	bne	.L166	@,
.L153:
	add	r0, r2, r2, asl #3	@, tmp244, i, i,
	sub	r5, r3, r0, asl #7	@ i, temp.1450, tmp244,
.L154:
	cmp	r5, r6	@ i, tmp257
	bls	.L151	@,
	bl	vfmw_dprint_nothing	@
	b	.L151	@
.L165:
	movw	r0, #:lower16:92196	@ tmp220,
	movt	r0, #:upper16:92196	@ tmp220,
	movw	r2, #:lower16:92168	@ tmp218,
	movw	r3, #:lower16:92192	@ tmp219,
	ldr	ip, [r4, r0]	@ <variable>.SegBufWriteAddr, <variable>.SegBufWriteAddr
	movt	r2, #:upper16:92168	@ tmp218,
	movt	r3, #:upper16:92192	@ tmp219,
	str	r5, [r4, r2]	@ i, <variable>.Head
	str	ip, [r4, r3]	@ <variable>.SegBufWriteAddr, <variable>.SegBufReadAddr
	b	.L150	@
.L166:
	add	r1, r1, #1	@ tmp238, tmp225,
	movw	r2, #:lower16:92168	@ tmp233,
	movt	r2, #:upper16:92168	@ tmp233,
	movw	r3, #:lower16:92192	@ tmp234,
	movt	r3, #:upper16:92192	@ tmp234,
	str	r5, [r4, r2]	@ i, <variable>.Head
	ldr	ip, [r4, r1, asl #4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.SegBufReadAddr
	b	.L150	@
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
.LFB1964:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r2, r0, asl #2	@, tmp142, tmp138, SmID,
	ldr	r0, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L171	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L171:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
.LFB1941:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp149,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp149,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	mov	r5, r1	@ InstID, InstID
	cmp	r4, #0	@ pstChan,
	beq	.L186	@,
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	cmpne	r3, #3	@, <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r2, #:lower16:217472	@ tmp157,
	movt	r2, #:upper16:217472	@ tmp157,
	ldr	r1, [r4, r2]	@ D.40481, <variable>.s32FindStartCodeCnt
	cmp	r1, #199	@ D.40481,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ tmp158,* pSegBufVirAddr
	cmp	ip, #0	@ tmp158,
	bne	.L175	@,
	ldrb	r6, [r0, #1]	@ zero_extendqisi2	@ tmp159,
	cmp	r6, #0	@ tmp159,
	bne	.L175	@,
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ tmp160,
	cmp	r7, #1	@ tmp160,
	beq	.L187	@,
.L175:
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
	add	r1, r1, #1	@ tmp253, D.40481,
	str	ip, [r4, r0]	@ tmp261, <variable>.s32CurrentStartCode
	str	sl, [r4, r7]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r8, [r4, r2]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	str	r1, [r4, r6]	@ tmp253, <variable>.s32FindStartCodeCnt
.L178:
	movw	r2, #:lower16:217468	@ tmp221,
	movt	r2, #:upper16:217468	@ tmp221,
	ldr	r1, [r4, r2]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, r1, #1	@ tmp224, <variable>.s32Mpeg2Score,
	str	r0, [r4, r2]	@ tmp224, <variable>.s32Mpeg2Score
.L179:
	movw	r0, #:lower16:217472	@ tmp225,
	movt	r0, #:upper16:217472	@ tmp225,
	ldr	r2, [r4, r0]	@ prephitmp.1498, <variable>.s32FindStartCodeCnt
	cmp	r2, #2	@ prephitmp.1498,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	cmp	ip, #0	@ D.40509,
	beq	.L180	@,
	movw	r0, #:lower16:217484	@ tmp226,
	movw	r1, #:lower16:217480	@ tmp227,
	movt	r0, #:upper16:217484	@ tmp226,
	movt	r1, #:upper16:217480	@ tmp227,
	ldr	r0, [r4, r0]	@ temp.1511, <variable>.s32CurrentStartCode
	ldr	r1, [r4, r1]	@ temp.1512, <variable>.s32LastOneStartCode
	rsb	ip, r1, r0	@ tmp228, temp.1512, temp.1511
	cmp	ip, #1	@ tmp228,
	beq	.L188	@,
.L181:
	cmp	r0, r1	@ temp.1511, temp.1512
	beq	.L189	@,
.L180:
	cmp	r2, #199	@ prephitmp.1498,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r6, #:lower16:217464	@ tmp242,
	movw	r7, #:lower16:217468	@ tmp243,
	movt	r6, #:upper16:217464	@ tmp242,
	movt	r7, #:upper16:217468	@ tmp243,
	ldr	r2, [r4, r6]	@ prephitmp.1523, <variable>.s32H264Score
	ldr	r1, [r4, r7]	@ prephitmp.1522, <variable>.s32Mpeg2Score
	rsb	ip, r1, r2	@ tmp244, prephitmp.1522, prephitmp.1523
	cmp	ip, #49	@ tmp244,
	ble	.L184	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L190	@,
.L184:
	rsb	r2, r2, r1	@ tmp249, prephitmp.1523, prephitmp.1522
	cmp	r2, #49	@ tmp249,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r2, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #:lower16:g_event_report	@ tmp251,
	movt	r0, #:upper16:g_event_report	@ tmp251,
	ldr	r3, [r0, #0]	@ g_event_report.1519, g_event_report
	cmp	r3, #0	@ g_event_report.1519,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	mov	r0, r5	@, InstID
	mov	r1, #118	@,
	blx	r3	@ g_event_report.1519
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L186:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	vfmw_dprint_nothing	@
.L190:
	movw	r3, #:lower16:g_event_report	@ tmp246,
	movt	r3, #:upper16:g_event_report	@ tmp246,
	ldr	r3, [r3, #0]	@ g_event_report.547, g_event_report
	cmp	r3, #0	@ g_event_report.547,
	beq	.L184	@,
	mov	r1, #118	@,
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	blx	r3	@ g_event_report.547
	ldr	r1, [r4, r7]	@ prephitmp.1522, <variable>.s32Mpeg2Score
	ldr	r2, [r4, r6]	@ prephitmp.1523, <variable>.s32H264Score
	b	.L184	@
.L188:
	movw	ip, #:lower16:217476	@ tmp229,
	movt	ip, #:upper16:217476	@ tmp229,
	ldr	ip, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	rsb	ip, ip, r1	@ tmp230, <variable>.s32LastTwoStartCode, temp.1512
	cmp	ip, #1	@ tmp230,
	bne	.L181	@,
.L182:
	cmp	r0, #1	@ temp.1511,
	beq	.L180	@,
	cmp	r0, #20	@ temp.1511,
	beq	.L180	@,
	movw	r1, #:lower16:217464	@ tmp234,
	movt	r1, #:upper16:217464	@ tmp234,
	movw	r2, #:lower16:217472	@ tmp241,
	movt	r2, #:upper16:217472	@ tmp241,
	ldr	r0, [r4, r1]	@ temp.1515, <variable>.s32H264Score
	ldr	r2, [r4, r2]	@ prephitmp.1498, <variable>.s32FindStartCodeCnt
	cmp	r0, #0	@ temp.1515,
	subgt	r0, r0, #1	@ tmp236, temp.1515,
	strgt	r0, [r4, r1]	@ tmp236, <variable>.s32H264Score
	movw	r1, #:lower16:217468	@ tmp237,
	movt	r1, #:upper16:217468	@ tmp237,
	ldr	ip, [r4, r1]	@ <variable>.s32Mpeg2Score, <variable>.s32Mpeg2Score
	add	r0, ip, #1	@ tmp240, <variable>.s32Mpeg2Score,
	str	r0, [r4, r1]	@ tmp240, <variable>.s32Mpeg2Score
	b	.L180	@
.L187:
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ u8Data,
	movw	r6, #:lower16:217480	@ tmp164,
	movw	r7, #:lower16:217484	@ tmp167,
	movt	r6, #:upper16:217480	@ tmp164,
	movt	r7, #:upper16:217484	@ tmp167,
	and	ip, r0, #31	@ D.40509, u8Data,
	ldr	r9, [r4, r6]	@ <variable>.s32LastOneStartCode, <variable>.s32LastOneStartCode
	sub	r8, ip, #1	@ tmp171, D.40509,
	ldr	sl, [r4, r7]	@ <variable>.s32CurrentStartCode, <variable>.s32CurrentStartCode
	cmp	r8, #12	@ tmp171,
	movw	r8, #:lower16:217476	@ tmp163,
	movt	r8, #:upper16:217476	@ tmp163,
	add	r1, r1, #1	@ tmp162, D.40481,
	str	ip, [r4, r7]	@ D.40509, <variable>.s32CurrentStartCode
	str	r9, [r4, r8]	@ <variable>.s32LastOneStartCode, <variable>.s32LastTwoStartCode
	str	r1, [r4, r2]	@ tmp162, <variable>.s32FindStartCodeCnt
	str	sl, [r4, r6]	@ <variable>.s32CurrentStartCode, <variable>.s32LastOneStartCode
	bhi	.L191	@,
.L176:
	movw	r2, #:lower16:217464	@ tmp177,
	movt	r2, #:upper16:217464	@ tmp177,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	ldr	r6, [r4, r2]	@ <variable>.s32H264Score, <variable>.s32H264Score
	movne	r1, #0	@, prephitmp.1500
	moveq	r1, #1	@, prephitmp.1500
	add	r6, r6, #1	@ tmp180, <variable>.s32H264Score,
	str	r6, [r4, r2]	@ tmp180, <variable>.s32H264Score
.L177:
	cmp	r1, #0	@ prephitmp.1500,
	bne	.L178	@,
	cmp	r0, #178	@ u8Data,
	cmpne	r0, #179	@, u8Data,
	beq	.L178	@,
	cmp	r0, #180	@ u8Data,
	cmpne	r0, #181	@, u8Data,
	beq	.L178	@,
	cmp	r0, #183	@ u8Data,
	cmpne	r0, #184	@, u8Data,
	beq	.L178	@,
	cmp	r0, #185	@ u8Data,
	cmpne	r0, #186	@, u8Data,
	beq	.L178	@,
	cmp	r0, #187	@ u8Data,
	movne	r1, #0	@, tmp217
	moveq	r1, #1	@, tmp217
	cmp	r0, #184	@ u8Data,
	movls	r0, r1	@, tmp220, tmp217
	orrhi	r0, r1, #1	@,, tmp220, tmp217
	cmp	r0, #0	@ tmp220,
	beq	.L179	@,
	b	.L178	@
.L189:
	movw	ip, #:lower16:217476	@ tmp232,
	movt	ip, #:upper16:217476	@ tmp232,
	ldr	r1, [r4, ip]	@ <variable>.s32LastTwoStartCode, <variable>.s32LastTwoStartCode
	cmp	r0, r1	@ temp.1511, <variable>.s32LastTwoStartCode
	bne	.L180	@,
	b	.L182	@
.L191:
	cmp	ip, #19	@ D.40509,
	beq	.L176	@,
	cmp	r0, #0	@ u8Data,
	cmpne	r0, #177	@, u8Data,
	movne	r1, #0	@, prephitmp.1500
	moveq	r1, #1	@, prephitmp.1500
	cmp	ip, #30	@ D.40509,
	beq	.L176	@,
	cmp	ip, #31	@ D.40509,
	beq	.L176	@,
	b	.L177	@
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
.LFB1932:
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
	beq	.L205	@,
.L193:
	mvn	ip, #0	@ D.40276,
.L201:
	mov	r0, ip	@, D.40276
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L205:
	cmp	r2, #0	@ pNum,
	cmpne	r3, #0	@, pOffset,
	beq	.L193	@,
	mov	ip, #73728	@ tmp173,
	movw	sl, #:lower16:73732	@ tmp179,
	ldr	ip, [r0, ip]	@ D.40282, <variable>.Head
	movt	sl, #:upper16:73732	@ tmp179,
	movw	r4, #:lower16:73740	@ tmp178,
	movt	r4, #:upper16:73740	@ tmp178,
	ldr	r6, [r0, sl]	@ <variable>.Tail, <variable>.Tail
	mov	r5, ip, asl #3	@ tmp332, D.40282,
	ldr	sl, [r0, r4]	@ D.40284, <variable>.FirstPacketOffset
	add	r8, r5, ip	@ tmp176, tmp332, D.40282
	subs	r6, r6, ip	@ RawNum, <variable>.Tail, D.40282
	add	r5, r5, ip	@ tmp184, tmp332, D.40282
	add	r4, r8, #1	@ tmp177, tmp176,
	addmi	r6, r6, #1024	@ RawNum, RawNum,
	ldr	r8, [r0, r4, asl #3]	@ D.40283, <variable>.Length
	add	ip, r6, ip	@, RawNum, D.40282
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
	ble	.L195	@,
	rsb	r8, sl, r8	@ TotalLen, D.40284, D.40283
	cmp	r1, r8	@ Len, TotalLen
	blt	.L195	@,
	str	r8, [sp, #4]	@ TotalLen, %sfp
	mov	ip, r7	@ pRawPts, pRawPts
	str	r2, [sp, #24]	@ pNum, %sfp
	str	r3, [sp, #28]	@ pOffset, %sfp
	str	r9, [sp, #0]	@ pGopNum, %sfp
	b	.L204	@
.L198:
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
	ble	.L206	@,
	ldr	r7, [sp, #4]	@, %sfp
	cmp	r1, r7	@ Len,
	blt	.L207	@,
.L204:
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
	b	.L198	@
.L206:
	ldr	r8, [sp, #4]	@ TotalLen, %sfp
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
.L197:
	mov	ip, #73728	@ tmp321,
	ldr	ip, [r0, ip]	@ temp.1562, <variable>.Head
	cmp	ip, r4	@ temp.1562, i
	beq	.L195	@,
	add	r5, sl, r5	@ tmp325, tmp331, Index
	rsb	r4, ip, r4	@ tmp328, temp.1562, i
	add	r5, r5, #1	@ tmp326, tmp325,
	mov	ip, #0	@ D.40276,
	ldr	r0, [r0, r5, asl #3]	@ <variable>.Length, <variable>.Length
	str	r4, [r2, #0]	@ tmp328,* pNum
	rsb	r8, r0, r8	@ TotalLen.1564, <variable>.Length, TotalLen
	rsb	r1, r8, r1	@ tmp329, TotalLen.1564, Len
	str	r1, [r3, #0]	@ tmp329,* pOffset
	b	.L201	@
.L207:
	mov	r8, r7	@ TotalLen,
	ldr	r2, [sp, #24]	@ pNum, %sfp
	ldr	r3, [sp, #28]	@ pOffset, %sfp
	b	.L197	@
.L195:
	mov	ip, #0	@ tmp322,
	str	ip, [r2, #0]	@ tmp322,* pNum
	str	r1, [r3, #0]	@ Len,* pOffset
	b	.L201	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
.LFB1977:
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
	ldrd	r2, [r4, #24]	@ D.41834, pSegPacket,
	ldrd	r0, [r5]	@ tmp158,* pLastPts
	cmp	r1, r3	@ tmp158, D.41834
	cmpeq	r0, r2	@ tmp158, D.41834
	beq	.L212	@,
	strd	r2, [r5]	@ D.41834,* pLastPts
.L211:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L212:
	strd	r6, [r4, #24]	@ tmp140, pSegPacket,
	b	.L211	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, DelNum,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movne	r3, #0	@, tmp157
	moveq	r3, #1	@, tmp157
	mov	r4, r1	@ DelNum, DelNum
	mov	r8, r0	@ pRawStreamArray, pRawStreamArray
	beq	.L237	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp205,
	movt	r2, #:upper16:.LANCHOR0	@ tmp205,
	ldr	r1, [r2, #236]	@ temp.1623, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ temp.1623,
	beq	.L216	@,
	add	r1, r1, #168	@ tmp159, temp.1623,
	cmp	r0, r1	@ pRawStreamArray, tmp159
	moveq	r7, r3	@ SmID, tmp157
	beq	.L217	@,
.L216:
	ldr	r3, [r2, #240]	@ temp.1624, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1624,
	beq	.L218	@,
	add	r3, r3, #168	@ tmp161, temp.1624,
	cmp	r8, r3	@ pRawStreamArray, tmp161
	moveq	r7, #1	@ SmID,
	beq	.L217	@,
.L218:
	ldr	r3, [r2, #244]	@ temp.1626, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ temp.1626,
	beq	.L219	@,
	add	r0, r3, #168	@ tmp163, temp.1626,
	cmp	r8, r0	@ pRawStreamArray, tmp163
	moveq	r7, #2	@ SmID,
	beq	.L217	@,
.L219:
	ldr	r3, [r2, #248]	@ D.43100, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.43100,
	beq	.L220	@,
	add	ip, r3, #168	@ tmp165, D.43100,
	cmp	r8, ip	@ pRawStreamArray, tmp165
	beq	.L221	@,
.L220:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40175,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L238:
	bl	vfmw_dprint_nothing	@
.L237:
	mvn	r0, #0	@ D.40175,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L221:
	mov	r7, #3	@ SmID,
.L217:
	movw	r3, #:lower16:73732	@ tmp167,
	movt	r3, #:upper16:73732	@ tmp167,
	mov	r0, #73728	@ tmp166,
	ldr	r1, [r8, r3]	@ D.40181, <variable>.Tail
	ldr	r6, [r8, r0]	@ D.40180, <variable>.Head
	cmp	r6, r1	@ D.40180, D.40181
	addgt	r1, r1, #1024	@ tmp168, D.40181,
	rsb	lr, r6, r1	@ PacketNum, D.40180, tmp168
	cmp	lr, r4	@ PacketNum, DelNum
	bcc	.L238	@,
	add	r7, r7, #58	@ tmp206, SmID,
	movw	r5, #:lower16:73916	@ tmp211,
	movt	r5, #:upper16:73916	@ tmp211,
	sub	r9, r4, #1	@ tmp212, DelNum,
	add	r7, r2, r7, asl #2	@, tmp210, tmp205, tmp206,
	bl	vfmw_dprint_nothing	@
	add	r0, r6, r6, asl #3	@, tmp179, D.40180, D.40180,
	add	r1, r6, #1	@ D.40197, D.40180,
	ldr	r3, [r7, #4]!	@ D.40191, s_SmIIS.pSmInstArray
	add	sl, r0, #1	@ tmp180, tmp179,
	mov	r6, r1, asl #22	@ j, D.40197,
	cmp	r4, #1	@ DelNum,
	ldr	r2, [r8, sl, asl #3]	@ <variable>.Length, <variable>.Length
	and	r9, r9, #1	@ tmp214, tmp212,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	sl, #1	@ i,
	mov	r6, r6, lsr #22	@ j, j,
	rsb	r0, r2, ip	@ tmp183, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [r3, r5]	@ tmp183, <variable>.RawPacketArray.RawTotalSize
	ldr	ip, [r7, #0]	@ temp.1620, s_SmIIS.pSmInstArray
	ldr	r1, [ip, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r2, r1, r1, asr #31	@ tmp193, <variable>.RawPacketArray.RawTotalSize
	str	r2, [ip, r5]	@ tmp193, <variable>.RawPacketArray.RawTotalSize
	bls	.L234	@,
	cmp	r9, #0	@ tmp214,
	beq	.L225	@,
	bl	vfmw_dprint_nothing	@
	add	sl, r6, r6, asl #3	@, tmp258, j, j,
	ldr	r3, [r7, #0]	@ D.40191, s_SmIIS.pSmInstArray
	add	r2, sl, #1	@ tmp259, tmp258,
	add	r6, r6, #1	@ D.40197, j,
	mov	sl, #2	@ i,
	ldr	r2, [r8, r2, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r4, sl	@ DelNum, i
	ldr	r1, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r6, asl #22	@ j, D.40197,
	b	.L236	@
.L225:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r7, #0]	@ D.40191, s_SmIIS.pSmInstArray
	add	r2, r6, r6, asl #3	@, tmp224, j, j,
	add	r3, r6, #1	@ D.40197, j,
	add	r0, r2, #1	@ tmp225, tmp224,
	add	sl, sl, #1	@ tmp215, i,
	ldr	r1, [ip, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r3, asl #22	@ j, D.40197,
	ldr	r3, [r8, r0, asl #3]	@ <variable>.Length, <variable>.Length
	add	sl, sl, #1	@ i, tmp215,
	mov	r6, r6, lsr #22	@ j, j,
	rsb	r2, r3, r1	@ tmp228, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r2, [ip, r5]	@ tmp228, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r7, #0]	@ temp.1620, s_SmIIS.pSmInstArray
	ldr	r0, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	r1, r0, r0, asr #31	@ tmp231, <variable>.RawPacketArray.RawTotalSize
	str	r1, [r3, r5]	@ tmp231, <variable>.RawPacketArray.RawTotalSize
	bl	vfmw_dprint_nothing	@
	add	ip, r6, r6, asl #3	@, tmp242, j, j,
	ldr	r3, [r7, #0]	@ D.40191, s_SmIIS.pSmInstArray
	add	r2, ip, #1	@ tmp243, tmp242,
	add	r6, r6, #1	@ D.40197, j,
	cmp	r4, sl	@ DelNum, i
	ldr	r2, [r8, r2, asl #3]	@ <variable>.Length, <variable>.Length
	ldr	r1, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	mov	r6, r6, asl #22	@ j, D.40197,
.L236:
	rsb	r0, r2, r1	@ tmp262, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	r0, [r3, r5]	@ tmp262, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r7, #0]	@ temp.1620, s_SmIIS.pSmInstArray
	mov	r6, r6, lsr #22	@ j, j,
	ldr	ip, [r3, r5]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	bic	lr, ip, ip, asr #31	@ tmp265, <variable>.RawPacketArray.RawTotalSize
	str	lr, [r3, r5]	@ tmp265, <variable>.RawPacketArray.RawTotalSize
	bhi	.L225	@,
.L234:
	mov	r1, #73728	@ tmp195,
	movw	ip, #:lower16:73740	@ tmp202,
	ldr	r0, [r8, r1]	@ <variable>.Head, <variable>.Head
	movt	ip, #:upper16:73740	@ tmp202,
	mov	lr, #0	@ tmp203,
	add	r4, r4, r0	@ D.40200, DelNum, <variable>.Head
	str	lr, [r8, ip]	@ tmp203, <variable>.FirstPacketOffset
	cmp	r4, #1024	@ D.40200,
	str	r4, [r8, r1]	@ D.40200, <variable>.Head
	mov	r0, lr	@ D.40175, tmp203
	subge	r4, r4, #1024	@ tmp201, D.40200,
	strge	r4, [r8, r1]	@ tmp201, <variable>.Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
.LFB1933:
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
	bne	.L240	@,
	movw	r2, #:lower16:73748	@ tmp151,
	movw	r4, #:lower16:73740	@ tmp152,
	movt	r2, #:upper16:73748	@ tmp151,
	movt	r4, #:upper16:73740	@ tmp152,
	str	r6, [sp, #84]	@ tmp148, DelNum
	str	r6, [sp, #80]	@ tmp148, RawPacketOffSet
	ldr	ip, [r0, r2]	@ <variable>.RawTotalSize, <variable>.RawTotalSize
	ldr	r2, [r0, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	subs	r2, ip, r2	@ TotallLen, <variable>.RawTotalSize, <variable>.FirstPacketOffset
	bmi	.L240	@,
	cmp	r1, r2	@ DelLen, TotallLen
	ble	.L249	@,
.L240:
	mvn	r0, #0	@ Ret,
.L243:
	add	sp, sp, #88	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L249:
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
	ldr	r2, [r5, ip]	@ D.43118, <variable>.Head
	ldr	r3, [r5, r1]	@ <variable>.Tail, <variable>.Tail
	ldr	r1, [sp, #80]	@ RawPacketOffSet.540, RawPacketOffSet
	cmp	r2, r3	@ D.43118, <variable>.Tail
	mvneq	r0, #2	@ Ret,
	beq	.L243	@,
	add	ip, r2, r2, asl #3	@, tmp173, D.43118, D.43118,
	ldr	r0, [r5, r4]	@ <variable>.FirstPacketOffset, <variable>.FirstPacketOffset
	add	lr, ip, #1	@ tmp174, tmp173,
	add	r2, r1, r0	@ TargetOffset, RawPacketOffSet.540, <variable>.FirstPacketOffset
	ldr	r3, [r5, lr, asl #3]	@ <variable>.Length, <variable>.Length
	cmp	r2, r3	@ TargetOffset, <variable>.Length
	strlt	r2, [r5, r4]	@ TargetOffset, <variable>.FirstPacketOffset
	movlt	r0, r6	@ Ret, tmp148
	blt	.L243	@,
	b	.L240	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
.LFB1934:
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
	beq	.L254	@,
	movw	r4, #:lower16:166136	@ tmp142,
	movt	r4, #:upper16:166136	@ tmp142,
	ldr	r1, [r5, r4]	@ LastPushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r5, #168	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r1, #0	@ tmp145,
	str	r1, [r5, r4]	@ tmp145, <variable>.SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L254:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
.LFB1993:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eCapLevel,
	bhi	.L262	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L263	@,
	sub	r0, r0, #13	@ D.43122, eCapLevel,
	cmp	r0, #10	@ D.43122,
	bls	.L264	@,
.L260:
	mov	r0, #3145728	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L264:
	movw	r1, #:lower16:.LANCHOR1	@ tmp149,
	movt	r1, #:upper16:.LANCHOR1	@ tmp149,
	ldr	r0, [r1, r0, asl #2]	@ MaxSegSize, CSWTCH.744
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L263:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L262	@,
	mul	r5, r5, r0	@ tmp147, ChanWidth, ChanHeight
	movw	r3, #:lower16:2088960	@ tmp148,
	movt	r3, #:upper16:2088960	@ tmp148,
	cmp	r5, r3	@ tmp147, tmp148
	movgt	r0, #20971520	@ MaxSegSize,
	ldmgtfd	sp!, {r3, r4, r5, pc}	@
	b	.L260	@
.L262:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ MaxSegSize,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
.LFB1990:
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
	bl	MEM_ReadPhyWord	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	ReadScdStateReg
	.type	ReadScdStateReg, %function
ReadScdStateReg:
	.fnstart
.LFB1972:
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
.LFB1978:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pScdInstance, pScdInstance
	movw	r0, #:lower16:269731872	@,
	movt	r0, #:upper16:269731872	@,
	mov	r5, r2	@ pStreamSegArray, pStreamSegArray
	mov	r8, r3	@ Seg_num, Seg_num
	mov	r6, r1	@ pUsedSeg, pUsedSeg
	mov	r1, #0	@ tmp156,
	str	r1, [sp, #36]	@ tmp156, SegNum
	bl	MEM_ReadPhyWord	@
	add	r0, sp, #12	@,,
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #28]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r0, #6	@, Ret,
	movne	r0, #0	@, Ret,
	cmp	r5, #0	@ pStreamSegArray,
	beq	.L272	@,
	movw	lr, #:lower16:92172	@ tmp160,
	movw	ip, #:lower16:92168	@ tmp161,
	movt	lr, #:upper16:92172	@ tmp160,
	movt	ip, #:upper16:92168	@ tmp161,
	ldr	r7, [r5, lr]	@ <variable>.Tail, <variable>.Tail
	ldr	r2, [r5, ip]	@ <variable>.Head, <variable>.Head
	subs	r7, r7, r2	@ prephitmp.1783, <variable>.Tail, <variable>.Head
	addmi	r7, r7, #1152	@ prephitmp.1783, prephitmp.1783,
.L273:
	cmp	r0, #0	@ Ret,
	rsb	r7, r7, #1152	@ SegNum.646, prephitmp.1783,
	str	r7, [sp, #36]	@ SegNum.646, SegNum
	bne	.L274	@,
	subs	r2, r8, #1	@ i, Seg_num,
	movmi	r0, r8	@ Ret, Seg_num
	bmi	.L274	@,
	movw	r1, #:lower16:180124	@ tmp166,
	movt	r1, #:upper16:180124	@ tmp166,
	ldr	r8, [r4, #20]	@ pretmp.1779, <variable>.SegFilter.ModeFlag
	movw	r3, #:lower16:92184	@ tmp167,
	ldr	sl, [r4, r1]	@ pretmp.1772, <variable>.UpMsgStepNum
	movt	r3, #:upper16:92184	@ tmp167,
	cmp	r8, #1	@ pretmp.1779,
	movne	ip, #0	@, pretmp.1780
	moveq	ip, #1	@, pretmp.1780
	tst	r2, #1	@ i,
	ldr	r4, [r5, r3]	@ pretmp.1778, <variable>.SegBufPhyAddr
	movw	r3, #:lower16:-1241448448	@ tmp182,
	mov	r9, sl, asl #2	@ pretmp.1802, pretmp.1772,
	movt	r3, #:upper16:-1241448448	@ tmp182,
	ldr	r5, [r5, #0]	@ pretmp.1774, <variable>.pSegBufVirAddr
	rsb	r1, r9, #0	@ D.44401, pretmp.1802
	mla	r6, r9, r2, r6	@ ivtmp.1798, pretmp.1802, i, pUsedSeg
	bne	.L287	@,
.L279:
	ldr	r9, [r6, #0]	@ tmp172,* ivtmp.1798
	rsb	lr, r4, r9	@ tmp171, pretmp.1778, tmp172
	ldr	sl, [r5, lr]	@ start_code,
	cmp	sl, r3	@ start_code, tmp182
	movne	r9, #0	@, tmp178
	andeq	r9, ip, #1	@,, tmp178, pretmp.1780
	cmp	r9, #0	@ tmp178,
	bne	.L276	@,
.L296:
	cmp	r8, #2	@ pretmp.1779,
	beq	.L293	@,
.L277:
	subs	sl, r2, #1	@ i.1801, i,
	add	fp, r6, r1	@ ivtmp.1798, ivtmp.1798, D.44401
	bmi	.L278	@,
	ldr	lr, [r6, r1]	@ tmp187,* D.44401
	mov	r2, sl	@ i, i.1801
	rsb	r6, r4, lr	@ tmp188, pretmp.1778, tmp187
	ldr	r6, [r5, r6]	@ start_code,
	cmp	r6, r3	@ start_code, tmp182
	movne	r9, #0	@, tmp194
	andeq	r9, ip, #1	@,, tmp194, pretmp.1780
	cmp	r9, #0	@ tmp194,
	beq	.L294	@,
.L284:
	add	r0, r0, #1	@ count, count,
	cmp	r0, #0	@ count,
	ble	.L285	@,
	cmp	r7, sl	@ SegNum.646, i.1801
	bcc	.L285	@,
.L278:
	mov	r0, r2	@ Ret, i
.L274:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L287:
	ldr	r9, [r6, #0]	@ tmp195,* ivtmp.1798
	rsb	sl, r4, r9	@ tmp196, pretmp.1778, tmp195
	ldr	sl, [r5, sl]	@ start_code,
	cmp	sl, r3	@ start_code, tmp182
	movne	r9, #0	@, tmp202
	andeq	r9, ip, #1	@,, tmp202, pretmp.1780
	cmp	r9, #0	@ tmp202,
	bne	.L281	@,
	cmp	r8, #2	@ pretmp.1779,
	beq	.L295	@,
.L282:
	subs	sl, r2, #1	@ i.1801, i,
	add	r6, r6, r1	@ ivtmp.1798, ivtmp.1798, D.44401
	movpl	r2, sl	@ i, i.1801
	bmi	.L278	@,
	ldr	r9, [r6, #0]	@ tmp172,* ivtmp.1798
	rsb	lr, r4, r9	@ tmp171, pretmp.1778, tmp172
	ldr	sl, [r5, lr]	@ start_code,
	cmp	sl, r3	@ start_code, tmp182
	movne	r9, #0	@, tmp178
	andeq	r9, ip, #1	@,, tmp178, pretmp.1780
	cmp	r9, #0	@ tmp178,
	beq	.L296	@,
.L276:
	add	r0, r0, #1	@ count, count,
	cmp	r0, #0	@ count,
	ble	.L277	@,
	cmp	r7, r2	@ SegNum.646, i
	bcc	.L277	@,
	mov	r0, r2	@ Ret, i
	b	.L274	@
.L294:
	cmp	r8, #2	@ pretmp.1779,
	beq	.L297	@,
.L285:
	add	r6, fp, r1	@ ivtmp.1798, ivtmp.1798, D.44401
	sub	r2, sl, #1	@ i, i.1801,
	b	.L279	@
.L295:
	ubfx	sl, sl, #16, #8	@ D.41889, start_code,,
	cmp	sl, #127	@ D.41889,
	bls	.L282	@,
	cmp	sl, #131	@ D.41889,
	bhi	.L282	@,
.L281:
	cmp	r7, r2	@ SegNum.646, i
	mov	r0, #1	@ count,
	bcc	.L282	@,
	mov	r0, r2	@ Ret, i
	b	.L274	@
.L293:
	ubfx	sl, sl, #16, #8	@ D.41889, start_code,,
	cmp	sl, #127	@ D.41889,
	bls	.L277	@,
	cmp	sl, #131	@ D.41889,
	bhi	.L277	@,
	b	.L276	@
.L272:
	str	r0, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r7, [sp, #36]	@ prephitmp.1783, SegNum
	ldr	r0, [sp, #4]	@,
	b	.L273	@
.L297:
	ubfx	r6, r6, #16, #8	@ D.41889, start_code,,
	cmp	r6, #127	@ D.41889,
	bls	.L285	@,
	cmp	r6, #131	@ D.41889,
	bls	.L284	@,
	b	.L285	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
.LFB1966:
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
	moveq	r0, r4	@ prephitmp.1818, pSmInstArray
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	mov	r3, r0	@ CurTime,
	beq	.L301	@,
	movw	r1, #:lower16:180080	@ tmp147,
	movw	ip, #:lower16:180084	@ tmp149,
	movt	r1, #:upper16:180080	@ tmp147,
	movt	ip, #:upper16:180084	@ tmp149,
	mov	r0, #0	@ tmp148,
	str	r0, [r4, r1]	@ tmp148, <variable>.BlockTimeInMs
	str	r3, [r4, ip]	@ CurTime,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L301:
	movw	r2, #:lower16:180084	@ tmp150,
	movt	r2, #:upper16:180084	@ tmp150,
	ldr	r1, [r4, r2]	@ D.41395, <variable>.LastBlockTime
	cmp	r0, r1	@ CurTime, D.41395
	bls	.L302	@,
	rsb	r3, r1, r0	@ D.41398, D.41395, CurTime
	movw	lr, #:lower16:180080	@ tmp151,
	movt	lr, #:upper16:180080	@ tmp151,
	mov	r0, r3	@ prephitmp.1818, D.41398
	str	r3, [r4, lr]	@ D.41398,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L302:
	movw	ip, #:lower16:180080	@ tmp152,
	movt	ip, #:upper16:180080	@ tmp152,
	mov	r0, r5	@ prephitmp.1818, FirstCalc
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
.LFB1969:
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
	beq	.L305	@,
	ldr	r0, [r5, #288]	@, s_RegPhyBaseAddr
	ldr	r1, [r4, #108]	@, <variable>.reg_avs_flag
	bl	MEM_WritePhyWord	@
.L305:
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
.LFB1922:
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
.LFB1921:
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
.LFB1920:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:g_pstRegCrg	@ tmp160,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp160,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	r0, #:lower16:269731868	@,
	movt	r0, #:upper16:269731868	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [r4, #0]	@ g_pstRegCrg.513, g_pstRegCrg
	mov	r3, #0	@ i,
	movw	ip, #10000	@ tmp161,
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #32	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1921, g_pstRegCrg
	b	.L313	@
.L321:
	ldr	r2, [r1, #372]	@ D.40012, <variable>.PERI_CRG93.u32
	tst	r2, #2	@ D.40012,
	str	r2, [sp, #12]	@ D.40012, u32TmpValue_93.u32
	bne	.L312	@,
	cmp	r3, ip	@ i, tmp161
	beq	.L320	@,
.L313:
	ldr	lr, [r1, #372]	@ D.40012, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ tmp162, i,
	add	r3, r3, #1	@ i, tmp162,
	tst	lr, #2	@ D.40012,
	str	lr, [sp, #12]	@ D.40012, u32TmpValue_93.u32
	beq	.L321	@,
.L312:
	movw	lr, #:lower16:.LANCHOR0	@ tmp153,
	movt	lr, #:upper16:.LANCHOR0	@ tmp153,
	bfc	r5, #5, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	ip, [lr, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r0, #1	@, D.40008,
	add	r0, ip, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L320:
	str	r0, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #0]	@ prephitmp.1921, g_pstRegCrg
	ldr	r0, [sp, #4]	@,
	b	.L312	@
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
.LFB1985:
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
	beq	.L332	@,
	ldmia	r4, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp138,,,
	ldr	r3, [r4, #8]	@ <variable>.release_stream, <variable>.release_stream
	cmp	r3, #0	@ <variable>.release_stream,
	addeq	r6, r6, #58	@ tmp165, InstID,
	movweq	r4, #:lower16:.LANCHOR0	@ tmp164,
	movteq	r4, #:upper16:.LANCHOR0	@ tmp164,
	beq	.L325	@,
	add	r6, r6, #58	@ tmp165, InstID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp164,
	movt	r4, #:upper16:.LANCHOR0	@ tmp164,
	add	r2, r4, r6, asl #2	@, tmp146, tmp164, tmp165,
	ldr	r1, [r2, #4]	@ tmp148, s_SmIIS.pSmInstArray
	ldr	r0, [r1, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	r0, #0	@ <variable>.Config.ScdLowBufEnable,
	bne	.L333	@,
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
.L327:
	cmp	r5, #0	@ ret,
	beq	.L328	@,
.L325:
	mvn	r5, #6	@ ret,
.L328:
	add	r6, r4, r6, asl #2	@, tmp160, tmp164, tmp165,
	ldr	lr, [r6, #4]	@ tmp162, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ tmp162,
	beq	.L332	@,
.L324:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L333:
	ldr	r5, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r5	@ StreamIntf.release_stream
	mov	r5, r0	@ ret,
	b	.L327	@
.L332:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #6	@ ret,
	b	.L324	@
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r0	@ SmID, SmID
	bhi	.L354	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp146,
	movt	r0, #:upper16:.LANCHOR0	@ tmp146,
	add	r3, r0, r4, asl #2	@, tmp150, tmp146, SmID,
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L337	@,
	cmp	r1, #0	@ ResetFlag,
	bne	.L338	@,
	movw	r2, #:lower16:166252	@ tmp152,
	movt	r2, #:upper16:166252	@ tmp152,
	ldr	r1, [r5, r2]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	bne	.L338	@,
.L337:
	mvn	r0, #0	@ D.40222,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L354:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40222,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L338:
	movw	r6, #:lower16:73896	@ tmp154,
	movw	ip, #:lower16:73904	@ tmp155,
	movt	r6, #:upper16:73896	@ tmp154,
	movt	ip, #:upper16:73904	@ tmp155,
	ldr	r8, [r5, r6]	@ RawHead, <variable>.RawPacketArray.Head
	ldr	r6, [r5, ip]	@ D.40234, <variable>.RawPacketArray.History
	cmp	r8, r6	@ RawHead, D.40234
	addlt	r8, r8, #1024	@ tmp156, RawHead,
	rsb	r8, r6, r8	@ DelNum, D.40234, tmp156
	cmp	r8, #0	@ DelNum,
	beq	.L337	@,
	bl	vfmw_dprint_nothing	@
	add	r2, r6, r6, asl #3	@, tmp159, D.40234, D.40234,
	mov	r0, r4	@, SmID
	mov	r7, #1	@ i,
	add	r1, r5, r2, asl #3	@, tmp161, pSmInstArray, tmp159,
	sub	sl, r8, #1	@ tmp173, DelNum,
	add	r1, r1, #168	@, tmp161,
	and	sl, sl, r7	@ tmp175, tmp173,
	bl	ReleaseRawStreamData	@
	add	r0, r6, r7	@ D.40244, D.40234,
	cmp	r7, r8	@ i, DelNum
	mov	r3, r0, asl #22	@ j, D.40244,
	mov	r6, r3, lsr #22	@ j, j,
	bcs	.L350	@,
	cmp	sl, #0	@ tmp175,
	beq	.L341	@,
	bl	vfmw_dprint_nothing	@
	mov	r7, #2	@ i,
	add	r1, r6, r6, asl #3	@, tmp196, j, j,
	mov	r0, r4	@, SmID
	b	.L352	@
.L341:
	bl	vfmw_dprint_nothing	@
	add	r1, r6, r6, asl #3	@, tmp180, j, j,
	mov	r0, r4	@, SmID
	add	r7, r7, #1	@ tmp176, i,
	add	r3, r5, r1, asl #3	@, tmp182, pSmInstArray, tmp180,
	add	r7, r7, #1	@ i, tmp176,
	add	r1, r3, #168	@, tmp182,
	bl	ReleaseRawStreamData	@
	add	ip, r6, #1	@ D.40244, j,
	mov	r6, ip, asl #22	@ j, D.40244,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, SmID
	mov	r6, r6, lsr #22	@ j, j,
	add	r1, r6, r6, asl #3	@, tmp189, j, j,
.L352:
	add	ip, r5, r1, asl #3	@, tmp198, pSmInstArray, tmp196,
	add	r6, r6, #1	@ D.40244, j,
	add	r1, ip, #168	@, tmp198,
	bl	ReleaseRawStreamData	@
	mov	r2, r6, asl #22	@ j, D.40244,
	cmp	r7, r8	@ i, DelNum
	mov	r6, r2, lsr #22	@ j, j,
	bcc	.L341	@,
.L350:
	movw	lr, #:lower16:73904	@ tmp164,
	movt	lr, #:upper16:73904	@ tmp164,
	ldr	r0, [r5, lr]	@ <variable>.RawPacketArray.History, <variable>.RawPacketArray.History
	add	r8, r8, r0	@ D.40246, DelNum, <variable>.RawPacketArray.History
	mov	r0, #0	@ D.40222,
	cmp	r8, #1024	@ D.40246,
	str	r8, [r5, lr]	@ D.40246, <variable>.RawPacketArray.History
	subge	r8, r8, #1024	@ tmp170, D.40246,
	strge	r8, [r5, lr]	@ tmp170, <variable>.RawPacketArray.History
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
.LFB1984:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	add	r7, r0, #58	@ tmp167, InstID,
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
	beq	.L363	@,
	mov	r0, sl	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r3, r0, #0	@ pStreamIntf,
	beq	.L364	@,
	ldmia	r3, {r0, r1, r2}	@ pStreamIntf,,,
	stmia	r5, {r0, r1, r2}	@ tmp145,,,
	ldr	r0, [r3, #4]	@ <variable>.read_stream, <variable>.read_stream
	cmp	r0, #0	@ <variable>.read_stream,
	bne	.L365	@,
.L359:
	mvn	r5, #6	@ ret,
.L360:
	add	r4, r4, r7, asl #2	@, tmp157, tmp166, tmp167,
	ldr	r1, [r4, #4]	@ tmp159, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ tmp159,
	beq	.L366	@,
	cmp	r5, #0	@ ret,
	bne	.L357	@,
	movw	lr, #:lower16:73916	@ tmp160,
	movt	lr, #:upper16:73916	@ tmp160,
	ldr	r0, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r3, [r6, lr]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	add	ip, r0, r3	@ tmp164, <variable>.Length, <variable>.RawPacketArray.RawTotalSize
	str	ip, [r6, lr]	@ tmp164, <variable>.RawPacketArray.RawTotalSize
.L357:
	mov	r0, r5	@, ret
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L365:
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
	beq	.L360	@,
	b	.L359	@
.L364:
	bl	vfmw_dprint_nothing	@
.L363:
	mvn	r5, #6	@ ret,
	b	.L357	@
.L366:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #6	@ ret,
	b	.L357	@
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
.LFB1955:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:.LANCHOR0	@ tmp179,
	movt	ip, #:upper16:.LANCHOR0	@ tmp179,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r1, #:lower16:166252	@ tmp180,
	add	lr, ip, #16	@ D.44666, tmp179,
	movt	r1, #:upper16:166252	@ tmp180,
	mov	r2, ip	@ ivtmp.2057, tmp179
	mov	r4, #0	@ tmp181,
.L370:
	ldr	r3, [r2, #236]	@ D.43160, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.43160,
	beq	.L368	@,
	ldr	r0, [r3, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r0, #0	@ <variable>.Mode,
	beq	.L368	@,
	str	r4, [r3, r1]	@ tmp181, <variable>.Mode
	ldr	r3, [ip, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L379	@,
.L368:
	add	r2, r2, #4	@ ivtmp.2057, ivtmp.2057,
	cmp	r2, lr	@ ivtmp.2057, D.44666
	bne	.L370	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L379:
	mov	r3, #2	@ i,
.L369:
	add	r3, r3, #2	@ i, i,
	cmp	r3, #50	@ i,
	bne	.L369	@,
	b	.L368	@
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mvnhi	r0, #0	@ D.40836,
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
	mov	r0, #0	@ D.40836,
	strd	r4, [r2, r3]	@ tmp152, tmp150, tmp151
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
.LFB1938:
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
.LFB1937:
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
	bne	.L391	@,
.L388:
	mvn	r0, #0	@ D.40404,
.L389:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L391:
	rsbs	r6, r2, #1	@ tmp151, pBufVirAddr
	movcc	r6, #0	@ tmp151
	cmp	r3, #262144	@ BufSize,
	orrcc	r6, r6, #1	@,, tmp154, tmp151
	cmp	r6, #0	@ tmp154,
	bne	.L388	@,
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
	mov	r0, r6	@ D.40404, tmp154
	str	r3, [r5, ip]	@ BufSize, <variable>.SegBufSize
	ldr	r2, [sp, #4]	@,
	str	r4, [r5, r1]	@ BufPhyAddr, <variable>.SegBufReadAddr
	str	r2, [r5, #0]	@ pBufVirAddr, <variable>.pSegBufVirAddr
	b	.L389	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
	.fnstart
.LFB1923:
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
.LFB1975:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	ldr	r5, [r0, #32]	@ SegNum, <variable>.SegNum
	mov	fp, #0	@ tmp168,
	str	fp, [r2, #0]	@ tmp168,* pExtraSrcBack
	mov	r8, r1	@ pTransFormSeg, pTransFormSeg
	mov	r6, r3	@ pSegNum, pSegNum
	ldr	sl, [sp, #64]	@ UpMsgStepNum, UpMsgStepNum
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r4, #8]	@ <variable>.ProtocolType, <variable>.ProtocolType
	cmp	r7, #2	@ <variable>.ProtocolType,
	beq	.L396	@,
	cmp	r5, fp	@ SegNum,
	ble	.L397	@,
	ldr	fp, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	sub	r3, r5, #1	@ tmp248, SegNum,
	ldr	r9, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	and	r7, r3, #1	@, tmp248,
	str	r7, [sp, #12]	@, %sfp
	mov	sl, sl, asl #2	@ D.44802, UpMsgStepNum,
	ldr	lr, [fp, #0]	@ tmp172,* <variable>.pScdUpMsg
	and	r2, r9, #-2147483648	@ tmp173, <variable>.SegBufPhyAddr,
	mov	fp, #1	@ i.2206,
	add	r7, r8, sl	@ ivtmp.2191, pTransFormSeg, D.44802
	bic	ip, lr, #-2147483648	@ tmp171, tmp172,
	mov	r9, sl	@ ivtmp.2190, D.44802
	orr	r1, ip, r2	@ tmp175, tmp171, tmp173
	str	r1, [r8, #0]	@ tmp175,* pTransFormSeg
	ldr	r0, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r0, #4]	@ tmp180,
	str	r3, [r8, #4]	@ tmp180,
	bl	vfmw_dprint_nothing	@
	cmp	r5, fp	@ SegNum,
	ble	.L397	@,
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, #0	@,
	beq	.L419	@,
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	mov	fp, #2	@ i.2206,
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	mov	r9, sl, asl #1	@ ivtmp.2190, D.44802,
	ldr	r0, [r3, sl]	@ tmp279,* D.44802
	and	lr, r2, #-2147483648	@ tmp282, <variable>.SegBufPhyAddr,
	bic	ip, r0, #-2147483648	@ tmp280, tmp279,
	orr	r1, ip, lr	@ tmp283, tmp280, tmp282
	str	r1, [r7, #0]	@ tmp283,* ivtmp.2191
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r0, sl, r3	@ tmp285, D.44802, <variable>.pScdUpMsg
	ldr	r2, [r0, #4]	@ tmp287,
	str	r2, [r7, #4]	@ tmp287,
	add	r7, r7, sl	@ ivtmp.2191, ivtmp.2191, D.44802
	bl	vfmw_dprint_nothing	@
	cmp	r5, fp	@ SegNum, i.2206
	ble	.L397	@,
.L419:
	str	r6, [sp, #12]	@ pSegNum, %sfp
	mov	r6, r5	@ SegNum, SegNum
.L398:
	ldr	r3, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r8, r9, sl	@ ivtmp.2190, ivtmp.2190, D.44802
	ldr	r2, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r5, r7, sl	@ ivtmp.2191, ivtmp.2191, D.44802
	add	fp, fp, #1	@ tmp251, i.2206,
	ldr	lr, [r3, r9]	@ tmp256,* ivtmp.2190
	and	ip, r2, #-2147483648	@ tmp259, <variable>.SegBufPhyAddr,
	add	fp, fp, #1	@ i.2206, tmp251,
	bic	r1, lr, #-2147483648	@ tmp257, tmp256,
	orr	r0, r1, ip	@ tmp260, tmp257, tmp259
	str	r0, [r7, #0]	@ tmp260,* ivtmp.2191
	ldr	r2, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r3, r9, r2	@ tmp262, ivtmp.2190, <variable>.pScdUpMsg
	add	r9, r8, sl	@ ivtmp.2190, ivtmp.2190, D.44802
	ldr	lr, [r3, #4]	@ tmp264,
	str	lr, [r7, #4]	@ tmp264,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r1, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	ldr	r0, [ip, r8]	@ tmp269,* ivtmp.2190
	and	r2, r1, #-2147483648	@ tmp272, <variable>.SegBufPhyAddr,
	bic	r3, r0, #-2147483648	@ tmp270, tmp269,
	orr	ip, r3, r2	@ tmp273, tmp270, tmp272
	str	ip, [r7, sl]	@ tmp273,* D.44802
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	add	r7, r5, sl	@ ivtmp.2191, ivtmp.2191, D.44802
	add	r8, r8, r1	@ tmp275, ivtmp.2190, <variable>.pScdUpMsg
	ldr	r0, [r8, #4]	@ tmp277,
	str	r0, [r5, #4]	@ tmp277,
	bl	vfmw_dprint_nothing	@
	cmp	r6, fp	@ SegNum, i.2206
	bgt	.L398	@,
	mov	r5, r6	@ SegNum, SegNum
	ldr	r6, [sp, #12]	@ pSegNum, %sfp
.L397:
	mov	r0, #0	@ tmp181,
	str	r0, [r4, #16]	@ tmp181, <variable>.LastH263Num
	str	r0, [r4, #12]	@ tmp181, <variable>.ModeFlag
	str	r5, [r6, #0]	@ SegNum,* pSegNum
.L399:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L396:
	ldr	r0, [r4, #20]	@, <variable>.SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.41734,
	bne	.L420	@,
.L400:
	mvn	r0, #6	@ D.41737,
	b	.L399	@
.L420:
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.41742,
	ldrb	ip, [r2, #0]	@ zero_extendqisi2	@ D.41738,* D.41734
	ldrb	lr, [r2, #2]	@ zero_extendqisi2	@ D.41747,
	ldr	r0, [r4, #28]	@, <variable>.SegBufRollAddr
	ldrb	r9, [r2, #3]	@ zero_extendqisi2	@ D.41752,
	stmib	sp, {r1, lr}	@ phole stm
	str	ip, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	ldmib	sp, {r1, r2}	@ phole ldm
	ldr	r3, [sp, #0]	@,
	cmp	r0, #0	@ D.41755
	beq	.L400	@,
	orr	ip, r9, r3, asl #24	@, tmp184, D.41752, D.41738,
	movw	r9, #:lower16:g_event_report	@,
	orr	r1, ip, r1, asl #16	@, tmp186, tmp184, D.41742,
	mov	ip, sl, asl #2	@ D.44815, UpMsgStepNum,
	orr	r2, r1, r2, asl #8	@, Data32, tmp186, D.41747,
	movt	r9, #:upper16:g_event_report	@,
	strb	r2, [r0, #3]	@ Data32,
	movw	sl, #:lower16:.LANCHOR0	@,
	mov	r7, r2, lsr #8	@ tmp192, Data32,
	movt	sl, #:upper16:.LANCHOR0	@,
	strb	r7, [r0, #2]	@ tmp192,
	mov	lr, r2, lsr #24	@ tmp188, Data32,
	mov	r3, r2, lsr #16	@ tmp190, Data32,
	strb	lr, [r0, #0]	@ tmp188,* D.41755
	strb	r3, [r0, #1]	@ tmp190,
	mov	r7, #4	@ ivtmp.2202,
	str	r9, [sp, #12]	@, %sfp
	mov	r9, r5	@ SegNum, SegNum
	str	sl, [sp, #16]	@, %sfp
	add	sl, r8, #4	@ ivtmp.2203, ivtmp.2200,
	str	r6, [sp, #20]	@ pSegNum, %sfp
	mov	r6, ip	@ D.44815, D.44815
	b	.L401	@
.L422:
	mov	r1, #1	@,
	mov	r3, #0	@,
	str	r1, [r4, #12]	@, <variable>.ModeFlag
	str	r3, [r4, #16]	@, <variable>.LastH263Num
	str	r5, [r8, #0]	@ TmpPhyAddr.2221,* ivtmp.2200
	ldr	lr, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r0, [lr, r7]	@ tmp223,* ivtmp.2202
	str	r0, [sl, #0]	@ tmp223,* ivtmp.2203
.L403:
	add	fp, fp, #1	@ i, i,
	add	r8, r8, r6	@ ivtmp.2200, ivtmp.2200, D.44815
	add	r7, r7, r6	@ ivtmp.2202, ivtmp.2202, D.44815
	add	sl, sl, r6	@ ivtmp.2203, ivtmp.2203, D.44815
.L401:
	cmp	fp, r9	@ i, SegNum
	bge	.L421	@,
	ldr	r1, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r3, [r4, #20]	@ <variable>.SegBufPhyAddr, <variable>.SegBufPhyAddr
	add	r2, r7, r1	@ tmp197, ivtmp.2202, <variable>.pScdUpMsg
	and	r0, r3, #-2147483648	@ tmp201, <variable>.SegBufPhyAddr,
	ldr	lr, [r2, #-4]	@ tmp200,
	bic	r5, lr, #-2147483648	@ tmp199, tmp200,
	orrs	r5, r5, r0	@ TmpPhyAddr.2221, tmp199, tmp201
	beq	.L400	@,
	mov	r0, r5	@, TmpPhyAddr.2221
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.41767
	beq	.L400	@,
	ldrb	r2, [r0, #0]	@ zero_extendqisi2	@ tmp204,* D.41767
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ tmp203,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp207,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp210,
	orr	r3, ip, r2, asl #24	@, tmp206, tmp203, tmp204,
	movw	ip, #438	@,
	orr	lr, r3, r1, asl #16	@, tmp209, tmp206, tmp207,
	orr	r0, lr, r0, asl #8	@, Data32.2240, tmp209, tmp210,
	cmp	r0, ip	@ Data32.2240,
	cmpne	r0, #288	@, Data32.2240,
	movne	r2, #0	@, tmp219
	moveq	r2, #1	@, tmp219
	beq	.L422	@,
	bic	r0, r0, #1020	@ tmp224, Data32.2240,
	bic	ip, r0, #3	@ tmp224, tmp224,
	cmp	ip, #32768	@ tmp224,
	beq	.L423	@,
.L404:
	str	r5, [r8, #0]	@ TmpPhyAddr.2221,* ivtmp.2200
	ldr	ip, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r1, [ip, r7]	@ tmp239,* ivtmp.2202
	str	r1, [sl, #0]	@ tmp239,* ivtmp.2203
	b	.L403	@
.L423:
	ldr	lr, [r4, #12]	@ <variable>.ModeFlag, <variable>.ModeFlag
	cmp	lr, #1	@ <variable>.ModeFlag,
	beq	.L405	@,
.L407:
	mov	r3, #2	@,
	str	r3, [r4, #12]	@, <variable>.ModeFlag
	str	r5, [r8, #0]	@ TmpPhyAddr.2221,* ivtmp.2200
	ldr	r0, [r4, #4]	@ <variable>.pScdUpMsg, <variable>.pScdUpMsg
	ldr	r2, [r0, r7]	@ tmp235,* ivtmp.2202
	str	r2, [sl, #0]	@ tmp235,* ivtmp.2203
	b	.L403	@
.L421:
	ldr	r6, [sp, #20]	@ pSegNum, %sfp
	mov	r4, #0	@ i.2204,
	str	fp, [r6, #0]	@ i,* pSegNum
	b	.L409	@
.L410:
	bl	vfmw_dprint_nothing	@
.L409:
	cmp	r4, fp	@ i.2204, i
	add	r4, r4, #1	@ i.2204, i.2204,
	blt	.L410	@,
	mov	r0, #0	@ D.41737,
	b	.L399	@
.L405:
	ldr	r1, [r4, #16]	@ <variable>.LastH263Num, <variable>.LastH263Num
	add	r3, r1, #1	@ D.41791, <variable>.LastH263Num,
	str	r3, [r4, #16]	@ D.41791, <variable>.LastH263Num
	cmp	r3, #12	@ D.41791,
	ble	.L404	@,
	ldr	ip, [sp, #12]	@, %sfp
	ldr	r3, [ip, #0]	@ g_event_report.641, g_event_report
	cmp	r3, #0	@ g_event_report.641,
	beq	.L407	@,
	ldr	lr, [sp, #16]	@, %sfp
	mov	r1, #102	@,
	ldr	r0, [lr, #272]	@, s_SmIIS.ThisInstID
	blx	r3	@ g_event_report.641
	b	.L407	@
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
.LFB1954:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	ip, [ip, #8]	@ D.40854, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	movw	r4, #:lower16:.LANCHOR0	@ tmp189,
	movt	r4, #:upper16:.LANCHOR0	@ tmp189,
	cmp	ip, #0	@ D.40854,
	mov	r8, r3	@ ResetRegAddr, ResetRegAddr
	mov	r5, r0	@ MemAddr, MemAddr
	movw	r3, #:lower16:269729792	@ tmp151,
	mov	r6, r1	@ MemSize, MemSize
	movt	r3, #:upper16:269729792	@ tmp151,
	mov	r7, r2	@ RegAddr, RegAddr
	str	r3, [r4, #292]	@ tmp151, s_RegPhyBaseAddr_1
	str	r3, [r4, #288]	@ tmp151, s_RegPhyBaseAddr
	beq	.L425	@,
	blx	ip	@ D.40854
.L426:
	ldr	r0, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r4, #:lower16:.LANCHOR0	@ tmp155,
	movt	r4, #:upper16:.LANCHOR0	@ tmp155,
	cmp	r0, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L427	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	mov	r0, r4	@, tmp155
	mov	sl, #0	@ tmp159,
	bl	__memzero	@
	add	r0, r5, #3	@ tmp160, MemAddr,
	bic	r9, r0, #3	@ tmp161, tmp160,
	str	r5, [r4, #0]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r9, r5, r9	@ Offset, MemAddr, tmp161
	str	sl, [r4, #284]	@ tmp159, s_eScdDrvSleepStage
	add	r0, r9, r5	@ D.40869, Offset, MemAddr
	str	r6, [r4, #4]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r0, [r4, #8]	@ D.40869, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	bl	MEM_Phy2Vir	@
	add	r2, r9, #12288	@ D.40874, Offset,
	mov	r1, #12288	@ tmp167,
	add	ip, r2, r5	@ temp.2288, D.40874, MemAddr
	str	r1, [r4, #16]	@ tmp167, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	ip, [r4, #20]	@ temp.2288, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	str	r0, [r4, #12]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, ip	@, temp.2288
	bl	MEM_Phy2Vir	@
	add	r3, r9, r5	@ tmp172, Offset, MemAddr
	add	r2, r3, #26112	@ tmp173, tmp172,
	mov	r1, #13824	@ tmp171,
	add	r5, r2, #127	@ tmp173, tmp173,
	str	r1, [r4, #28]	@ tmp171, s_SmIIS.ScdDrvMem.UpMsgMemSize
	bic	r5, r5, #127	@ g_hex_base_addr.564, tmp173,
	str	r5, [r4, #296]	@ g_hex_base_addr.564, g_hex_base_addr
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, g_hex_base_addr.564
	bl	MEM_Phy2Vir	@
	cmp	r0, sl	@ D.40885,
	str	r0, [r4, #300]	@ D.40885, g_hex_base_vir_addr
	beq	.L431	@,
	add	r9, r9, #44032	@ tmp181, Offset,
	mov	lr, #17920	@ tmp178,
	cmp	r6, r9	@ MemSize, tmp181
	str	r7, [r4, #68]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r8, [r4, #72]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	lr, [r4, #304]	@ tmp178, g_hex_len
	bge	.L432	@,
.L427:
	mvn	r0, #6	@ D.40861,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L425:
	bl	vfmw_dprint_nothing	@
	b	.L426	@
.L431:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40861,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L432:
	ldr	r3, [r4, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L427	@,
	ldr	ip, [r4, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	ip, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	movne	ip, #1	@ tmp187,
	movne	r0, sl	@ D.40861, tmp159
	strne	ip, [r4, #268]	@ tmp187, s_SmIIS.IsScdDrvOpen
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	b	.L427	@
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
.LFB1965:
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
	beq	.L440	@,
.L435:
	mov	r7, #0	@ prephitmp.2317,
.L436:
	ldr	r2, [r4, #308]	@ LastEventTime.607, LastEventTime
	movw	r0, #:lower16:.LANCHOR0	@ tmp148,
	movt	r0, #:upper16:.LANCHOR0	@ tmp148,
	cmp	r5, r2	@ CurTime, LastEventTime.607
	strls	r5, [r0, #308]	@ CurTime, LastEventTime
	movls	r2, #1	@ prephitmp.2306,
	bls	.L438	@,
	rsb	r2, r2, r5	@ tmp149, LastEventTime.607, CurTime
	cmp	r2, #1	@ tmp149,
	movls	r2, #0	@, prephitmp.2306
	movhi	r2, #1	@, prephitmp.2306
.L438:
	tst	r2, r7	@ prephitmp.2306, prephitmp.2317
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r0, #:lower16:g_IntEvent	@,
	movt	r0, #:upper16:g_IntEvent	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #308]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L440:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L435	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #0	@,
	beq	.L436	@,
	b	.L435	@
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
	.fnstart
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #:lower16:.LANCHOR0	@ tmp152,
	movt	r1, #:upper16:.LANCHOR0	@ tmp152,
	add	r3, r1, r0, asl #2	@, tmp156, tmp152, SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	ldr	r6, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r7, r0	@ SmID, SmID
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r6, #0	@ pSmInstArray,
	mvneq	r0, #0	@ D.41221,
	bne	.L452	@,
.L443:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L452:
	movw	r2, #:lower16:73896	@ tmp158,
	movw	ip, #:lower16:73900	@ tmp159,
	movt	r2, #:upper16:73896	@ tmp158,
	movt	ip, #:upper16:73900	@ tmp159,
	ldr	r5, [r6, r2]	@ D.41228, <variable>.RawPacketArray.Head
	ldr	r0, [r6, ip]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	cmp	r0, r5	@ <variable>.RawPacketArray.Tail, D.41228
	beq	.L444	@,
	add	r4, r6, #73728	@, pSmInstArray,
	mov	r8, r5, asl #3	@ tmp229, D.41228,
	add	r0, r4, #192	@,,
	add	r4, r6, #168	@ pRawPacketArray, pSmInstArray,
	bl	ResetStreamSegArray	@
	add	r3, r8, r5	@ tmp166, tmp229, D.41228
	add	r0, r6, r3, asl #3	@, tmp168, pSmInstArray, tmp166,
	ldr	r1, [r0, #172]	@ D.41235, <variable>.VirAddr
	ldmia	r1, {r2, r3}	@ phole ldm
	sub	ip, r2, #32	@ tmp172, D.41236,
	cmp	ip, #1888	@ tmp172,
	movls	ip, #0	@, tmp174
	movhi	ip, #1	@, tmp174
	cmp	r3, #31	@ h,
	orrle	ip, ip, #1	@,, tmp177, tmp174
	cmp	ip, #0	@ tmp177,
	bne	.L445	@,
	cmp	r3, #1088	@ h,
	bgt	.L445	@,
	ldr	r0, [r0, #176]	@ D.41248, <variable>.Length
	cmp	r0, #1552	@ D.41248,
	blt	.L445	@,
	movw	lr, #:lower16:3133456	@ tmp186,
	movt	lr, #:upper16:3133456	@ tmp186,
	cmp	r0, lr	@ D.41248, tmp186
	bgt	.L445	@,
	mov	sl, #3	@ tmp188,
	movw	ip, #:lower16:166108	@ tmp190,
	mul	sl, sl, r2	@ tmp187, tmp188, D.41236
	movt	ip, #:upper16:166108	@ tmp190,
	ldr	lr, [r6, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	sub	lr, lr, #262144	@ tmp191, <variable>.StreamSegArray.SegBufSize,
	mul	ip, r3, sl	@ tmp189, h, tmp187
	mov	ip, ip, asr #1	@ D.41253, tmp189,
	cmp	ip, lr	@ D.41253, tmp191
	bgt	.L445	@,
	add	lr, ip, #16	@ tmp193, D.41253,
	cmp	r0, lr	@ D.41248, tmp193
	blt	.L445	@,
	ldr	ip, [r1, #8]	@ D.41262,
	movw	lr, #1916	@ tmp206,
	ldr	r0, [r1, #12]	@ disp_h,
	sub	r8, ip, #4	@ tmp204, D.41262,
	cmp	r8, lr	@ tmp204, tmp206
	movls	lr, #0	@, tmp207
	movhi	lr, #1	@, tmp207
	cmp	r0, #3	@ disp_h,
	orrle	lr, lr, #1	@,, tmp210, tmp207
	cmp	lr, #0	@ tmp210,
	bne	.L448	@,
	cmp	r0, #1088	@ disp_h,
	ble	.L449	@,
.L448:
	bl	vfmw_dprint_nothing	@
	mov	r1, #72	@ tmp213,
	mla	r5, r1, r5, r6	@ tmp214, tmp213, D.41228, pSmInstArray
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L451	@,
.L447:
	mov	r0, #0	@ D.41221,
	b	.L443	@
.L444:
	mvn	r0, #3	@ D.41221,
	b	.L443	@
.L445:
	add	r5, r8, r5	@ tmp197, tmp229, D.41228
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pRawPacketArray
	add	r6, r6, r5, asl #3	@, tmp199, pSmInstArray, tmp197,
	ldr	r1, [r6, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L447	@,
.L451:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.41221,
	b	.L443	@
.L449:
	str	ip, [sp, #4]	@ D.41262,
	mov	ip, #72	@ tmp219,
	mla	r5, ip, r5, r6	@ tmp220, tmp219, D.41228, pSmInstArray
	str	r0, [sp, #8]	@ disp_h,
	str	r2, [sp, #0]	@ D.41236,
	mov	r0, r7	@, SmID
	add	r1, r1, #16	@, D.41235,
	ldrd	r6, [r5, #184]	@, tmp220,
	strd	r6, [sp, #16]	@,,
	bl	DNR_PutYuv	@
	subs	r6, r0, #0	@ Ret,
	bne	.L444	@,
	mov	r0, r4	@, pRawPacketArray
	ldr	r1, [r5, #176]	@, <variable>.Length
	bl	DeleteRawLen	@
	mov	r0, r6	@ D.41221, Ret
	b	.L443	@
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ SmID,
	movls	r2, #0	@, tmp151
	movhi	r2, #1	@, tmp151
	cmp	r1, #0	@ pSmCfg,
	orreq	r2, r2, #1	@,, tmp154, tmp151
	cmp	r2, #0	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pSmCfg, pSmCfg
	bne	.L468	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp225,
	movt	r6, #:upper16:.LANCHOR0	@ tmp225,
	add	r3, r6, r0, asl #2	@, tmp159, tmp225, SmID,
	ldr	r5, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L456	@,
	ldr	r3, [r1, #12]	@ D.40937, <variable>.BufPhyAddr
	ldr	r1, [r5, #60]	@ <variable>.Config.BufPhyAddr, <variable>.Config.BufPhyAddr
	cmp	r1, r3	@ <variable>.Config.BufPhyAddr, D.40937
	addeq	r7, r5, #48	@ tmp223, pSmInstArray,
	bne	.L469	@,
.L457:
	mov	r1, r4	@, pSmCfg
	mov	r0, r7	@, tmp223
	mov	r2, #120	@,
	bl	memcpy	@
	movw	r1, #:lower16:180124	@ tmp217,
	movt	r1, #:upper16:180124	@ tmp217,
	mov	r3, #2	@ tmp218,
	str	r3, [r5, r1]	@ tmp218, <variable>.UpMsgStepNum
	ldr	r0, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	cmp	r0, #2	@ <variable>.VidStd,
	moveq	r0, #3	@ tmp221,
	streq	r0, [r5, r1]	@ tmp221, <variable>.UpMsgStepNum
	mov	r0, #0	@ D.40932,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L468:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40932,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L469:
	cmp	r3, #0	@ D.40937,
	bne	.L470	@,
.L456:
	mvn	r0, #0	@ D.40932,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L470:
	ldr	ip, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	ip, #0	@ <variable>.pBufVirAddr,
	beq	.L456	@,
	ldr	lr, [r6, #8]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	movw	r1, #:lower16:166152	@ tmp163,
	movt	r1, #:upper16:166152	@ tmp163,
	movw	r2, #:lower16:166156	@ tmp166,
	movt	r2, #:upper16:166156	@ tmp166,
	movw	r3, #:lower16:166160	@ tmp169,
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	movt	r3, #:upper16:166160	@ tmp169,
	ldr	ip, [r6, #12]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	movw	r7, #:lower16:166164	@ tmp172,
	movt	r7, #:upper16:166164	@ tmp172,
	movw	lr, #:lower16:166168	@ tmp175,
	movt	lr, #:upper16:166168	@ tmp175,
	movw	r1, #:lower16:166172	@ tmp178,
	str	ip, [r5, r2]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	movt	r1, #:upper16:166172	@ tmp178,
	ldr	r8, [r6, #16]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	movw	ip, #:lower16:166176	@ tmp181,
	movt	ip, #:upper16:166176	@ tmp181,
	movw	r2, #:lower16:166240	@ tmp186,
	movt	r2, #:upper16:166240	@ tmp186,
	str	r8, [r5, r3]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, <variable>.BufAddrCfg.DownMsgSize
	movw	r3, #:lower16:166148	@ tmp188,
	ldr	r8, [r6, #20]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	movt	r3, #:upper16:166148	@ tmp188,
	str	r8, [r5, r7]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, <variable>.BufAddrCfg.UpMsgPhyAddr
	mov	r7, #1152	@ tmp182,
	ldr	r8, [r6, #24]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	str	r8, [r5, lr]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r7, [r5, ip]	@ tmp182, <variable>.BufAddrCfg.UpMsgNum
	str	lr, [r5, r1]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, <variable>.BufAddrCfg.UpMsgSize
	ldr	r8, [r4, #12]	@ temp.2370, <variable>.BufPhyAddr
	ldr	r7, [r4, #8]	@ <variable>.VidStd, <variable>.VidStd
	add	r1, r8, #3	@ tmp184, temp.2370,
	ldr	lr, [r4, #0]	@ <variable>.pBufVirAddr, <variable>.pBufVirAddr
	cmp	r7, #6	@ <variable>.VidStd,
	bic	ip, r1, #3	@ TmpPhyAddr, tmp184,
	rsb	r8, r8, ip	@ ByteOffsetInWord, temp.2370, TmpPhyAddr
	moveq	r7, #1048576	@ prephitmp.2358,
	movne	r7, #131072	@ prephitmp.2358,
	add	r1, r7, ip	@ tmp187, prephitmp.2358, TmpPhyAddr
	add	ip, r8, lr	@ pTmpVirAddr, ByteOffsetInWord, <variable>.pBufVirAddr
	str	r1, [r5, r2]	@ tmp187, <variable>.BufAddrCfg.SegBufPhyAddr
	add	lr, ip, r7	@ tmp189, pTmpVirAddr, prephitmp.2358
	str	lr, [r5, r3]	@ tmp189, <variable>.BufAddrCfg.pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r2, [r4, #16]	@ <variable>.BufSize, <variable>.BufSize
	rsb	r8, r8, r2	@ D.40965, ByteOffsetInWord, <variable>.BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r8	@ SmMaxSegBufSize, D.40965
	bge	.L461	@,
	movw	ip, #:lower16:-1024	@ tmp191,
	movw	r2, #:lower16:166244	@ tmp193,
	movt	ip, #:upper16:-1024	@ tmp191,
	movt	r2, #:upper16:166244	@ tmp193,
	rsb	r3, r7, ip	@ tmp191, prephitmp.2358, tmp191
	add	r3, r3, r0	@ prephitmp.2359, tmp191, SmMaxSegBufSize
	str	r3, [r5, r2]	@ prephitmp.2359, <variable>.BufAddrCfg.SegBufSize
.L462:
	movw	r2, #:lower16:166240	@ tmp199,
	movw	lr, #:lower16:166148	@ tmp201,
	movt	r2, #:upper16:166240	@ tmp199,
	movt	lr, #:upper16:166148	@ tmp201,
	add	r7, r5, #73728	@, pSmInstArray,
	ldr	r1, [r5, r2]	@, <variable>.BufAddrCfg.SegBufPhyAddr
	add	r0, r7, #192	@,,
	ldr	r2, [r5, lr]	@, <variable>.BufAddrCfg.pSegBufVirAddr
	add	r7, r5, #48	@ tmp223, pSmInstArray,
	bl	ConfigStreamSegArray	@
	ldr	ip, [r4, #20]	@ <variable>.RegPhyBaseAddr, <variable>.RegPhyBaseAddr
	mov	r0, r7	@, tmp223
	mov	r1, r4	@, pSmCfg
	mov	r2, #120	@,
	movw	r3, #:lower16:269729792	@ tmp206,
	str	ip, [r6, #288]	@ <variable>.RegPhyBaseAddr, s_RegPhyBaseAddr
	movt	r3, #:upper16:269729792	@ tmp206,
	str	r3, [r6, #292]	@ tmp206, s_RegPhyBaseAddr_1
	bl	memcpy	@
	b	.L457	@
.L461:
	sub	r1, r8, #1024	@ tmp194, D.40965,
	movw	r0, #:lower16:166244	@ tmp195,
	rsb	r3, r7, r1	@ prephitmp.2359, prephitmp.2358, tmp194
	movt	r0, #:upper16:166244	@ tmp195,
	cmp	r3, #262144	@ prephitmp.2359,
	str	r3, [r5, r0]	@ prephitmp.2359, <variable>.BufAddrCfg.SegBufSize
	bge	.L462	@,
	b	.L456	@
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
.LFB1952:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, r0	@ SmID, SmID
	.pad #120
	sub	sp, sp, #120	@,,
	bhi	.L483	@,
	add	r7, r0, #58	@ tmp194, SmID,
	movw	r6, #:lower16:.LANCHOR0	@ tmp192,
	movt	r6, #:upper16:.LANCHOR0	@ tmp192,
	add	r3, r6, r7, asl #2	@, tmp146, tmp192, tmp194,
	ldr	r4, [r3, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L485	@,
	ldr	r2, [r4, #84]	@ <variable>.Config.DisContinueRawPacketFlag, <variable>.Config.DisContinueRawPacketFlag
	sub	r1, r2, #1	@ tmp148, <variable>.Config.DisContinueRawPacketFlag,
	cmp	r1, #1	@ tmp148,
	bls	.L486	@,
.L475:
	add	r6, r6, r7, asl #2	@, tmp162, tmp192, tmp194,
	mov	sl, #0	@ tmp151,
	mvn	r0, #0	@ tmp152,
	add	r1, r4, #48	@, pSmInstArray,
	str	r0, [r4, #80]	@ tmp152, <variable>.Config.LastRawDisContinueCount
	mov	r2, #120	@,
	str	sl, [r4, #84]	@ tmp151, <variable>.Config.DisContinueRawPacketFlag
	mov	r0, sp	@,
	bl	memcpy	@
	ldr	r1, [r6, #4]	@ D.43167, s_SmIIS.pSmInstArray
	movw	r3, #:lower16:166252	@ tmp157,
	movt	r3, #:upper16:166252	@ tmp157,
	cmp	r1, sl	@ D.43167,
	movw	r2, #:lower16:.LANCHOR0	@ tmp158,
	ldr	r7, [r4, r3]	@ TmpMode, <variable>.Mode
	movt	r2, #:upper16:.LANCHOR0	@ tmp158,
	beq	.L476	@,
	ldr	r8, [r1, r3]	@ <variable>.Mode, <variable>.Mode
	cmp	r8, sl	@ <variable>.Mode,
	bne	.L487	@,
.L476:
	movw	r0, #:lower16:73900	@ tmp170,
	movw	r1, #:lower16:73896	@ tmp171,
	movt	r0, #:upper16:73900	@ tmp170,
	movt	r1, #:upper16:73896	@ tmp171,
	mvn	r8, #0	@ tmp181,
	mvn	r9, #0	@,
	ldr	lr, [r4, r0]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	add	r0, r4, #168	@, pSmInstArray,
	ldr	r6, [r4, r1]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	sub	r7, r7, #1	@ tmp185, TmpMode,
	subs	r1, lr, r6	@ RawNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	movw	r6, #:lower16:166248	@ tmp175,
	addmi	r1, r1, #1024	@ RawNum, RawNum,
	movt	r6, #:upper16:166248	@ tmp175,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	bl	DeleteRawPacketInBuffer	@
	ldrb	sl, [r4, r6]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.InstID
	mov	r0, r4	@, pSmInstArray
	movw	r1, #:lower16:180128	@,
	movt	r1, #:upper16:180128	@,
	bl	__memzero	@
	movw	r2, #:lower16:180088	@ tmp180,
	movw	r3, #:lower16:180124	@ tmp182,
	movt	r2, #:upper16:180088	@ tmp180,
	movt	r3, #:upper16:180124	@ tmp182,
	mov	ip, #2	@ tmp183,
	strd	r8, [r4, r2]	@ tmp181, pSmInstArray, tmp180
	sxtb	sl, sl	@ s8TmpInstID, s8TmpInstID
	str	ip, [r4, r3]	@ tmp183, <variable>.UpMsgStepNum
	mov	r0, r5	@, SmID
	str	sl, [r4, r6]	@ s8TmpInstID, <variable>.InstID
	mov	r1, sp	@,
	bl	SM_Config	@
	cmp	r7, #1	@ tmp185,
	movwls	r3, #:lower16:166252	@ tmp186,
	movhi	r2, #0	@ tmp189,
	movwhi	r3, #:lower16:166252	@ tmp188,
	movls	r0, #0	@ D.40799,
	movls	r2, #1	@ tmp187,
	movtls	r3, #:upper16:166252	@ tmp186,
	movthi	r3, #:upper16:166252	@ tmp188,
	movhi	r0, r2	@ D.40799, tmp189
	str	r2, [r4, r3]	@ tmp189, <variable>.Mode
.L473:
	add	sp, sp, #120	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L487:
	str	sl, [r1, r3]	@ tmp151, <variable>.Mode
	ldr	r9, [r2, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r9, sl	@ s_SmIIS.SCDState,
	beq	.L476	@,
.L477:
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	beq	.L476	@,
	add	sl, sl, #2	@ i, i,
	cmp	sl, #50	@ i,
	bne	.L477	@,
	b	.L476	@
.L485:
	bl	vfmw_dprint_nothing	@
.L483:
	mvn	r0, #0	@ D.40799,
	b	.L473	@
.L486:
	add	r1, r4, #96	@, pSmInstArray,
	bl	ReleaseRawStreamData	@
	b	.L475	@
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
.LFB1943:
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
	ldr	ip, [r4, r3]	@ D.40638, <variable>.Tail
	cmp	r6, ip	@ i, D.40638
	beq	.L491	@,
	mov	r3, r6, asl #2	@ tmp222, i,
	add	r2, r3, r6	@ tmp154, tmp222, i
	add	r2, r4, r2, asl #4	@, tmp158, pStreamSegArray, tmp154,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	movwne	r0, #:lower16:954437177	@ tmp223,
	movtne	r0, #:upper16:954437177	@ tmp223,
	bne	.L496	@,
	b	.L492	@
.L494:
	add	r2, r4, r2, asl #4	@, tmp168, pStreamSegArray, tmp164,
	ldrsb	r2, [r2, #12]	@ <variable>.SegState, <variable>.SegState
	cmp	r2, #1	@ <variable>.SegState,
	beq	.L492	@,
.L496:
	add	r6, r6, #1	@ D.40647, i,
	smull	r3, r2, r0, r6	@, tmp212, tmp223, D.40647
	mov	r3, r6, asr #31	@ tmp215, D.40647,
	rsb	r3, r3, r2, asr #8	@, i, tmp215, tmp212,
	add	r3, r3, r3, asl #3	@, tmp218, i, i,
	sub	r6, r6, r3, asl #7	@ i, D.40647, tmp218,
	cmp	r6, ip	@ i, D.40638
	mov	r3, r6, asl #2	@ tmp222, i,
	add	r2, r3, r6	@ tmp164, tmp222, i
	bne	.L494	@,
.L491:
	mvn	r0, #2	@ Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L492:
	add	r6, r3, r6	@ tmp174, tmp222, i
	mov	r0, r1	@, pStreamSeg
	mov	r2, #80	@,
	add	r5, r4, r6, asl #4	@, tmp177, pStreamSegArray, tmp174,
	add	r6, r4, r6, asl #4	@, tmp201, pStreamSegArray, tmp174,
	add	r5, r5, #8	@ tmp178, tmp177,
	mov	r1, r5	@, tmp178
	bl	memcpy	@
	movw	r2, #:lower16:92204	@ tmp194,
	movw	r3, #:lower16:92208	@ tmp206,
	movt	r2, #:upper16:92204	@ tmp194,
	movt	r3, #:upper16:92208	@ tmp206,
	ldr	r0, [r6, #20]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, #2	@ tmp192,
	strb	r1, [r5, #4]	@ tmp192, <variable>.SegState
	ldr	ip, [r4, r2]	@ <variable>.SegFreshSize, <variable>.SegFreshSize
	ldr	r1, [r4, r3]	@ <variable>.SegFreshNum, <variable>.SegFreshNum
	rsb	r0, r0, ip	@ D.40654, <variable>.LenInByte, <variable>.SegFreshSize
	sub	r1, r1, #1	@ D.40656, <variable>.SegFreshNum,
	bic	ip, r0, r0, asr #31	@ tmp209, D.40654
	bic	r0, r1, r1, asr #31	@ tmp211, D.40656
	str	ip, [r4, r2]	@ tmp209, <variable>.SegFreshSize
	str	r0, [r4, r3]	@ tmp211, <variable>.SegFreshNum
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
.LFB1942:
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
	ldr	fp, [r4, r6]	@ D.40605, <variable>.Tail
	mov	r1, r5	@, pStreamSeg
	mov	r2, #80	@,
	add	r9, fp, fp, asl #2	@, tmp165, D.40605, D.40605,
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
.LFB1979:
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrsb	r3, [r0, #5]	@ <variable>.IsWaitSCD, <variable>.IsWaitSCD
	mov	r5, #0	@ tmp183,
	.pad #292
	sub	sp, sp, #292	@,,
	cmp	r3, r5	@ <variable>.IsWaitSCD,
	mov	r4, r0	@ pScdInstance, pScdInstance
	str	r5, [sp, #280]	@ tmp183, SegBufAddr
	str	r5, [sp, #276]	@ tmp183, SegBufLength
	beq	.L505	@,
	movw	r6, #:lower16:166144	@ tmp186,
	movt	r6, #:upper16:166144	@ tmp186,
	ldr	r0, [r0, r6]	@ <variable>.SmPushRaw.PushRawOver, <variable>.SmPushRaw.PushRawOver
	cmp	r0, #3	@ <variable>.SmPushRaw.PushRawOver,
	moveq	r0, #2	@ tmp189,
	mvneq	r5, #6	@ Ret,
	streq	r0, [r4, r6]	@ tmp189, <variable>.SmPushRaw.PushRawOver
	beq	.L507	@,
	add	r7, sp, #160	@ tmp422,,
	movw	r0, #:lower16:269731872	@,
	add	r8, sp, #80	@ tmp416,,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	add	sl, sp, #240	@ tmp195,,
	mov	r3, #2	@ tmp192,
	mov	r0, r7	@, tmp422
	str	r3, [r4, r6]	@ tmp192, <variable>.SmPushRaw.PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r8	@, tmp416
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, sl	@, tmp195
	bl	__memzero	@
	movw	ip, #:lower16:180124	@ tmp198,
	movt	ip, #:upper16:180124	@ tmp198,
	str	r5, [sp, #268]	@ tmp183, TmpAddr
	str	r5, [sp, #272]	@ tmp183, SegFreeBufLen
	mov	r0, sl	@, tmp195
	ldr	r2, [r4, ip]	@, <variable>.UpMsgStepNum
	str	r2, [sp, #16]	@, %sfp
	bl	ReadScdStateReg	@
	ldr	r1, [sp, #256]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r1, #0	@ SmStateReg.ScdRollAddr,
	bne	.L556	@,
.L505:
	mvn	r5, #6	@ Ret,
.L507:
	mov	r0, r5	@, Ret
	add	sp, sp, #292	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L556:
	add	r6, r4, #73728	@ pStreamSegArray, pScdInstance,
	ldr	r5, [sp, #252]	@, SmStateReg.ScdNum
	add	r6, r6, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r6, #0	@ pStreamSegArray,
	str	r5, [sp, #28]	@, %sfp
	str	r5, [sp, #284]	@, ScdSegNum
	beq	.L547	@,
	movw	r0, #:lower16:166104	@ tmp202,
	movw	lr, #:lower16:166108	@ tmp205,
	movt	r0, #:upper16:166104	@ tmp202,
	movt	lr, #:upper16:166108	@ tmp205,
	ldr	sl, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, lr]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	sl, [sp, #280]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	str	r5, [sp, #276]	@ <variable>.StreamSegArray.SegBufSize,
.L547:
	movw	r0, #:lower16:269731872	@,
	movt	r0, #:upper16:269731872	@,
	bl	MEM_ReadPhyWord	@
	movw	sl, #:lower16:166168	@ tmp209,
	movw	r3, #:lower16:166104	@ tmp213,
	movt	sl, #:upper16:166168	@ tmp209,
	movt	r3, #:upper16:166104	@ tmp213,
	movw	r5, #:lower16:73920	@ tmp212,
	movt	r5, #:upper16:73920	@ tmp212,
	ldr	r2, [sp, #276]	@ SegBufLength, SegBufLength
	ldr	r1, [r4, sl]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.BufAddrCfg.pUpMsgVirAddr
	ldr	ip, [r4, r3]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	sl, [sp, #256]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r3, [sp, #280]	@ SegBufAddr, SegBufAddr
	ldr	lr, [r4, r5]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, ip, r3	@ tmp214, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr
	ldr	r5, [sp, #284]	@ ScdSegNum, ScdSegNum
	add	ip, lr, ip	@ tmp218, <variable>.StreamSegArray.pSegBufVirAddr, tmp214
	str	r1, [r4, #12]	@ <variable>.BufAddrCfg.pUpMsgVirAddr, <variable>.SegFilter.pScdUpMsg
	str	ip, [r4, #8]	@ tmp218, <variable>.SegFilter.pSegBufVirAddr
	cmp	r5, #1152	@ ScdSegNum,
	movge	r5, #1152	@ D.41987,
	str	r2, [r4, #32]	@ SegBufLength, <variable>.SegFilter.SegBufSize
	str	r3, [r4, #28]	@ SegBufAddr, <variable>.SegFilter.SegBufPhyAddr
	str	sl, [r4, #36]	@ SmStateReg.ScdRollAddr, <variable>.SegFilter.SegBufRollAddr
	and	r1, r0, #15	@ tmp208,,
	movw	r0, #:lower16:269731852	@,
	str	r1, [r4, #16]	@ tmp208, <variable>.SegFilter.ProtocolType
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.41987,
	bhi	.L557	@,
	ldr	r0, [sp, #284]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ iftmp.657,
.L510:
	add	r2, r4, #165888	@ D.41998, pScdInstance,
	add	r1, r4, #8	@, pScdInstance,
	str	r1, [sp, #52]	@, %sfp
	add	sl, r2, #368	@ D.41998, D.41998,
	str	r0, [r4, #40]	@ iftmp.657, <variable>.SegFilter.SegNum
	add	r2, sp, #264	@,,
	ldr	lr, [sp, #16]	@, %sfp
	mov	r1, sl	@, D.41998
	ldr	r0, [sp, #52]	@, %sfp
	add	r3, sp, #284	@,,
	str	lr, [sp, #0]	@,
	bl	ScdReturnSegFilter	@
	subs	r5, r0, #0	@ Ret,
	bne	.L505	@,
	ldr	r9, [sp, #284]	@ ScdSegNum.2504, ScdSegNum
	add	r0, r4, #168	@, pScdInstance,
	str	r0, [sp, #56]	@, %sfp
	cmp	r9, #1	@ ScdSegNum.2504,
	ble	.L558	@,
	strb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r9, r0	@ ScdSegNum.2504,
	bcs	.L517	@,
	ldr	r9, [sp, #284]	@ ScdSegNum, ScdSegNum
	sub	r3, r9, #1	@ prephitmp.2508, ScdSegNum,
	str	r3, [sp, #284]	@ prephitmp.2508, ScdSegNum
.L518:
	ldr	r0, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r0, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L519	@,
	ldr	sl, [sp, #284]	@, ScdSegNum
	str	sl, [sp, #68]	@, %sfp
.L520:
	movw	r3, #:lower16:166092	@ tmp274,
	movt	r3, #:upper16:166092	@ tmp274,
	add	r2, r4, #179200	@, pScdInstance,
	movw	r0, #:lower16:73920	@,
	add	sl, r2, #888	@,,
	movt	r0, #:upper16:73920	@,
	str	sl, [sp, #48]	@, %sfp
	movw	r9, #:lower16:166104	@,
	str	r0, [sp, #36]	@, %sfp
	movt	r9, #:upper16:166104	@,
	movw	lr, #:lower16:166248	@,
	str	r9, [sp, #40]	@, %sfp
	movt	lr, #:upper16:166248	@,
	movw	ip, #:lower16:166088	@,
	str	lr, [sp, #44]	@, %sfp
	movt	ip, #:upper16:166088	@,
	str	ip, [sp, #64]	@, %sfp
	mov	r1, #0	@ ivtmp.2499,
	ldr	r2, [r4, r3]	@, <variable>.StreamSegArray.Tail
	mov	r9, r1	@ i, ivtmp.2499
	ldr	r3, [sp, #68]	@ prephitmp.2513, %sfp
	str	r1, [sp, #60]	@ ivtmp.2499, %sfp
	str	r2, [sp, #76]	@, %sfp
	str	r6, [sp, #32]	@ pStreamSegArray, %sfp
	str	r5, [sp, #72]	@ Ret, %sfp
.L521:
	cmp	r9, r3	@ i, prephitmp.2513
	bge	.L559	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	r0, r1, #41472	@ tmp276, ivtmp.2499,
	add	r6, r1, ip	@ ivtmp.2558, ivtmp.2499,
	add	ip, r1, #1	@ D.42064, ivtmp.2499,
	add	r3, r6, #41472	@ tmp278, ivtmp.2558,
	add	fp, ip, #41472	@, D.42064,
	add	sl, r3, #92	@ tmp278, tmp278,
	str	fp, [sp, #20]	@, %sfp
	add	r5, fp, #92	@ tmp280,,
	ldr	r3, [sp, #280]	@ prephitmp.2515, SegBufAddr
	ldr	fp, [r4, sl, asl #2]	@ NextSegPhyAddr, <variable>.TransFormSeg
	add	r1, r0, #92	@ tmp276, tmp276,
	ldr	r2, [r4, r5, asl #2]	@ tmp283, <variable>.TransFormSeg
	add	r5, r9, #1	@, i,
	cmp	r3, fp	@ prephitmp.2515, NextSegPhyAddr
	str	r5, [sp, #24]	@, %sfp
	ldr	sl, [r4, r1, asl #2]	@ CurrSegPhyAddr, <variable>.TransFormSeg
	ldreq	r5, [sp, #256]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	mov	r1, r2, lsr #31	@ tmp282, tmp283,
	rsbne	r5, sl, fp	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	strb	r1, [sp, #167]	@ tmp282, SegPacket.DspCheckPicOverFlag
	rsbeq	r5, sl, r5	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r5, #3	@ SegPacketLen,
	ble	.L524	@,
	ldr	lr, [sp, #88]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	lr, #0	@ LastSegPacket.PhyAddr,
	bne	.L560	@,
	ldr	r2, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r2, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L561	@,
.L530:
	ldr	r0, [sp, #40]	@, %sfp
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	add	r1, sp, #268	@,,
	rsb	lr, r2, sl	@ tmp304, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #32]	@, %sfp
	add	r2, sp, #272	@,,
	add	r3, ip, lr	@ tmp307, <variable>.StreamSegArray.pSegBufVirAddr, tmp304
	str	r5, [sp, #172]	@ SegPacketLen, SegPacket.LenInByte
	mov	lr, #1	@,
	str	r3, [sp, #160]	@ tmp307, SegPacket.VirAddr
	strb	lr, [sp, #165]	@, SegPacket.IsLastSeg
	str	sl, [sp, #168]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	r1, [sp, #168]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #272]	@ SegFreeBufLen.2519, SegFreeBufLen
	cmp	r1, #0	@ SegPacket.PhyAddr,
	bne	.L562	@,
.L531:
	ldr	r5, [sp, #72]	@ Ret, %sfp
	mov	sl, #1	@ ScdErrFlag,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L528:
	movw	r3, #:lower16:166092	@ tmp395,
	movt	r3, #:upper16:166092	@ tmp395,
	ldr	r2, [sp, #76]	@, %sfp
	ldr	ip, [r4, r3]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	cmp	ip, r2	@ <variable>.StreamSegArray.Tail,
	movne	ip, #1	@ tmp397,
	moveq	ip, #0	@ tmp399,
	cmp	r9, #0	@ i,
	strb	ip, [r4, #3]	@ tmp399, <variable>.InsertNewSegFlag
	bgt	.L563	@,
	ldr	ip, [sp, #68]	@, %sfp
	ldr	r1, [sp, #28]	@, %sfp
	rsbs	r3, ip, #1	@ tmp412,
	movcc	r3, #0	@ tmp412
	cmp	r1, #1152	@,
	movls	r3, #0	@, tmp412,
	cmp	r3, #0	@ tmp412,
	bne	.L564	@,
.L546:
	cmp	sl, #1	@ ScdErrFlag,
	bne	.L507	@,
	b	.L505	@
.L524:
	sub	r1, r5, #1	@ tmp321, SegPacketLen,
	cmp	r1, #2	@ tmp321,
	bhi	.L533	@,
	ldr	r0, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r0, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L565	@,
.L529:
	ldr	r3, [sp, #284]	@ prephitmp.2513, ScdSegNum
	mov	r1, r6	@ ivtmp.2499, ivtmp.2558
	ldr	r9, [sp, #24]	@ i, %sfp
	b	.L521	@
.L533:
	cmp	r5, #0	@ SegPacketLen,
	beq	.L529	@,
	ldr	r5, [r4, #16]	@ <variable>.SegFilter.ProtocolType, <variable>.SegFilter.ProtocolType
	cmp	r5, #2	@ <variable>.SegFilter.ProtocolType,
	beq	.L566	@,
.L534:
	ldr	r0, [sp, #40]	@, %sfp
	rsb	lr, r3, fp	@ tmp360, prephitmp.2515, NextSegPhyAddr
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r2, [sp, #256]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	ip, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	r5, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	r3, sl, r2	@ tmp361, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	rsb	ip, ip, sl	@ tmp356, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #32]	@, %sfp
	add	r1, sp, #268	@,,
	add	r2, sp, #272	@,,
	add	ip, r5, ip	@ tmp359, <variable>.StreamSegArray.pSegBufVirAddr, tmp356
	str	sl, [sp, #168]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r5, lr, r3	@ tmp363, tmp360, tmp361
	str	ip, [sp, #160]	@ tmp359, SegPacket.VirAddr
	mov	r3, #0	@,
	str	r5, [sp, #172]	@ tmp363, SegPacket.LenInByte
	strb	r3, [sp, #165]	@, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	sl, [sp, #172]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	sl, #3	@ SegPacket.LenInByte,
	bls	.L529	@,
	ldr	sl, [sp, #32]	@, %sfp
	cmp	sl, #0	@,
	beq	.L535	@,
	ldr	r2, [sp, #64]	@, %sfp
	movw	ip, #:lower16:166092	@,
	movt	ip, #:upper16:166092	@,
	ldr	lr, [r4, r2]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	ldr	r5, [r4, ip]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	subs	r3, r5, lr	@, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	str	r3, [sp, #60]	@, %sfp
	addmi	r3, r3, #1152	@,,
	strmi	r3, [sp, #60]	@, %sfp
.L536:
	ldr	ip, [sp, #168]	@ D.43223, SegPacket.PhyAddr
	ldr	r1, [sp, #60]	@, %sfp
	cmp	ip, #0	@ D.43223,
	ldr	r2, [sp, #272]	@ SegFreeBufLen.2537, SegFreeBufLen
	rsb	r1, r1, #1152	@,,
	str	r1, [sp, #60]	@, %sfp
	bne	.L567	@,
.L537:
	ldr	sl, [sp, #60]	@, %sfp
	ldr	r5, [sp, #72]	@ Ret, %sfp
	cmp	sl, #1	@,
	ble	.L538	@,
	bl	vfmw_dprint_nothing	@
	mov	sl, #1	@ ScdErrFlag,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L528	@
.L562:
	ldr	r5, [sp, #160]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r5, #0	@ SegPacket.VirAddr,
	beq	.L531	@,
	ldr	sl, [sp, #172]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	sl, r2	@ SegPacket.LenInByte, SegFreeBufLen.2519
	bhi	.L531	@,
	ldr	r2, [sp, #20]	@, %sfp
	mov	r3, r7	@, tmp422
	ldr	r0, [sp, #56]	@, %sfp
	add	ip, r2, #92	@ tmp313,,
	ldr	r2, [sp, #48]	@, %sfp
	ldr	lr, [r4, ip, asl #2]	@ tmp316, <variable>.TransFormSeg
	bic	r1, lr, #-2147483648	@, tmp316,
	bl	GetSegPts	@
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mov	r1, r7	@, tmp422
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L555	@,
.L532:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L529	@
.L560:
	ldr	r3, [sp, #92]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r1, sp, #268	@,,
	add	r2, sp, #272	@,,
	ldr	r0, [sp, #32]	@, %sfp
	add	sl, r3, r5	@ tmp288, LastSegPacket.LenInByte, SegPacketLen
	str	sl, [sp, #92]	@ tmp288, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r1, [sp, #88]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #272]	@ SegFreeBufLen.668, SegFreeBufLen
	cmp	r1, #0	@ LastSegPacket.PhyAddr,
	beq	.L531	@,
	ldr	r5, [sp, #80]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r5, #0	@ LastSegPacket.VirAddr,
	beq	.L531	@,
	ldr	r0, [sp, #92]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r0, r2	@ LastSegPacket.LenInByte, SegFreeBufLen.668
	bhi	.L531	@,
	ldr	ip, [sp, #44]	@, %sfp
	mov	r1, r8	@, tmp416
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r2, [r4, ip]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	sl, r0	@ Ret.2511,
	mov	r0, r8	@, tmp416
	bl	__memzero	@
	cmp	sl, #0	@ Ret.2511,
	beq	.L532	@,
.L555:
	ldr	r5, [sp, #72]	@ Ret, %sfp
	mov	sl, #0	@ ScdErrFlag,
	bl	vfmw_dprint_nothing	@
	b	.L528	@
.L561:
	ldr	r0, [sp, #52]	@, %sfp
	mov	r1, r7	@, tmp422
	mov	r2, r9	@, i
	ldr	r3, [sp, #16]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L530	@
.L557:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L510	@
.L559:
	ldr	r5, [sp, #72]	@ Ret, %sfp
	mov	sl, #0	@ ScdErrFlag,
	b	.L528	@
.L567:
	ldr	r0, [sp, #160]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r0, #0	@ SegPacket.VirAddr,
	beq	.L537	@,
	ldr	sl, [sp, #172]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	sl, r2	@ SegPacket.LenInByte, SegFreeBufLen.2537
	bhi	.L537	@,
	cmp	r1, #1	@,
	ble	.L553	@,
	ldr	r2, [sp, #20]	@, %sfp
	mov	r3, r7	@, tmp422
	ldr	r1, [sp, #256]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	r0, r2, #92	@ tmp375,,
	ldr	r2, [sp, #48]	@, %sfp
	rsb	r5, ip, r1	@ tmp374, D.43223, SmStateReg.ScdRollAddr
	ldr	lr, [r4, r0, asl #2]	@ tmp378, <variable>.TransFormSeg
	ldr	r0, [sp, #56]	@, %sfp
	bic	r1, lr, #-2147483648	@, tmp378,
	str	r5, [sp, #172]	@ tmp374, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r3, [sp, #44]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mov	r1, r7	@, tmp422
	ldr	r2, [r4, r3]	@, <variable>.InstID
	bl	InsertStreamSeg	@
	subs	sl, r0, #0	@ Ret.2544,
	bne	.L555	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #40]	@, %sfp
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r5, [sp, #44]	@, %sfp
	ldr	r2, [r4, r0]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	ip, [sp, #280]	@ SegBufAddr.2545, SegBufAddr
	ldr	lr, [r4, r1]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	mov	r1, r7	@, tmp422
	rsb	r3, r2, ip	@ tmp387, <variable>.StreamSegArray.SegBufPhyAddr, SegBufAddr.2545
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r2, [r4, r5]	@, <variable>.InstID
	rsb	fp, ip, fp	@ tmp391, SegBufAddr.2545, NextSegPhyAddr
	add	r5, lr, r3	@ tmp390, <variable>.StreamSegArray.pSegBufVirAddr, tmp387
	str	fp, [sp, #172]	@ tmp391, SegPacket.LenInByte
	mov	r3, #1	@,
	str	r5, [sp, #160]	@ tmp390, SegPacket.VirAddr
	strb	r3, [sp, #165]	@, SegPacket.IsLastSeg
	str	ip, [sp, #168]	@ SegBufAddr.2545, SegPacket.PhyAddr
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L568	@,
	bl	vfmw_dprint_nothing	@
	b	.L529	@
.L517:
	movw	r0, #:lower16:269731852	@,
	movt	r0, #:upper16:269731852	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #16]	@, %sfp
	rsb	r0, r1, r0	@,,
	bl	__aeabi_uidiv	@
	sub	r3, r0, #1	@ prephitmp.2508,,
	str	r3, [sp, #284]	@ prephitmp.2508, ScdSegNum
	cmp	r3, #0	@ prephitmp.2508,
	strlt	r5, [sp, #284]	@ Ret, ScdSegNum
	movlt	r3, r5	@ prephitmp.2508, Ret
	b	.L518	@
.L564:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #56]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L546	@
.L566:
	ldr	r3, [sp, #16]	@, %sfp
	mov	r1, r7	@, tmp422
	ldr	r0, [sp, #52]	@, %sfp
	mov	r2, r9	@, i
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #280]	@ prephitmp.2515, SegBufAddr
	b	.L534	@
.L519:
	mov	r1, sl	@, D.41998
	mov	r0, r4	@, pScdInstance
	mov	r2, r6	@, pStreamSegArray
	bl	GetNextVop	@
	str	r0, [sp, #68]	@, %sfp
	str	r0, [sp, #284]	@, ScdSegNum
	b	.L520	@
.L535:
	bl	vfmw_dprint_nothing	@
	b	.L536	@
.L563:
	ldr	r0, [sp, #16]	@, %sfp
	mul	r2, r0, r9	@ tmp401,, i
	ldr	r0, [sp, #56]	@, %sfp
	add	ip, r2, #41472	@ tmp402, tmp401,
	add	r1, ip, #93	@ tmp402, tmp402,
	ldr	lr, [r4, r1, asl #2]	@ tmp405, <variable>.TransFormSeg
	bic	r1, lr, #-2147483648	@, tmp405,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L546	@,
	b	.L505	@
.L565:
	mov	r0, fp	@, NextSegPhyAddr
	str	ip, [sp, #12]	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.42120
	beq	.L505	@,
	ldrb	lr, [r0, #0]	@ zero_extendqisi2	@ tmp324,* D.42120
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ tmp323,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ tmp327,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ tmp330,
	orr	r3, r2, lr, asl #24	@, tmp326, tmp323, tmp324,
	orr	ip, r3, r1, asl #16	@, tmp329, tmp326, tmp327,
	orr	lr, ip, r0, asl #8	@, tmp332, tmp329, tmp330,
	bic	r3, lr, #255	@ tmp333, tmp332,
	cmp	r3, #256	@ tmp333,
	beq	.L529	@,
	mov	r2, r9	@, i
	ldr	r3, [sp, #16]	@, %sfp
	mov	r1, r8	@, tmp416
	ldr	r0, [sp, #52]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	mov	r3, #1	@,
	ldr	r2, [r4, r1]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	add	r1, sp, #268	@,,
	ldr	lr, [r4, r0]	@ <variable>.StreamSegArray.pSegBufVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	rsb	ip, r2, sl	@ tmp339, <variable>.StreamSegArray.SegBufPhyAddr, CurrSegPhyAddr
	ldr	r0, [sp, #32]	@, %sfp
	add	r2, sp, #272	@,,
	add	r9, lr, ip	@ tmp342, <variable>.StreamSegArray.pSegBufVirAddr, tmp339
	str	r5, [sp, #92]	@ SegPacketLen, LastSegPacket.LenInByte
	str	r9, [sp, #80]	@ tmp342, LastSegPacket.VirAddr
	strb	r3, [sp, #85]	@, LastSegPacket.IsLastSeg
	str	sl, [sp, #88]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	bl	GetFreeSegBuf	@
	ldr	ip, [sp, #12]	@,
	mov	r3, r8	@, tmp416
	ldr	r0, [sp, #56]	@, %sfp
	add	sl, ip, #41472	@ tmp345, D.42064,
	ldr	r2, [sp, #48]	@, %sfp
	add	r5, sl, #92	@ tmp345, tmp345,
	ldr	r9, [r4, r5, asl #2]	@ tmp348, <variable>.TransFormSeg
	bic	r1, r9, #-2147483648	@, tmp348,
	bl	GetSegPts	@
	b	.L529	@
.L558:
	movw	r2, #:lower16:180096	@ tmp236,
	movw	r3, #:lower16:180100	@ tmp237,
	movt	r2, #:upper16:180096	@ tmp236,
	movt	r3, #:upper16:180100	@ tmp237,
	ldr	lr, [r4, r2]	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgRawSize
	ldr	ip, [r4, r3]	@ <variable>.PrevCfgSegSize, <variable>.PrevCfgSegSize
	cmp	lr, ip	@ <variable>.PrevCfgRawSize, <variable>.PrevCfgSegSize
	strleb	r5, [r4, #0]	@ Ret, <variable>.SegFullFlag
	movgt	ip, #1	@ tmp240,
	strgtb	ip, [r4, #0]	@ tmp240, <variable>.SegFullFlag
	cmp	r9, #0	@ ScdSegNum.2504,
	bne	.L514	@,
	movw	r5, #:lower16:166140	@ tmp244,
	movt	r5, #:upper16:166140	@ tmp244,
	ldr	r1, [r4, r5]	@ SrcEaten.2505, <variable>.SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten.2505,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten.2505,
	bgt	.L516	@,
.L515:
	mov	r1, #0	@ SrcEaten,
.L516:
	ldr	r0, [sp, #56]	@, %sfp
	bl	DeleteRawLen	@
	subs	r5, r0, #0	@ Ret,
	bne	.L505	@,
	b	.L507	@
.L514:
	cmp	r9, #1	@ ScdSegNum.2504,
	bne	.L515	@,
	movw	r1, #:lower16:166108	@ tmp246,
	movt	r1, #:upper16:166108	@ tmp246,
	movw	lr, #:lower16:166260	@ tmp245,
	movt	lr, #:upper16:166260	@ tmp245,
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	mov	ip, #3	@ tmp249,
	ldr	r1, [r4, lr]	@ SrcEaten, <variable>.TransFormSeg
	movw	r5, #:lower16:166140	@ tmp254,
	movt	r5, #:upper16:166140	@ tmp254,
	mul	lr, ip, r3	@ tmp247, tmp249, <variable>.StreamSegArray.SegBufSize
	ldr	r2, [r4, r5]	@ <variable>.SmPushRaw.PushRawTotalLen, <variable>.SmPushRaw.PushRawTotalLen
	rsb	ip, r1, r2	@ tmp255, SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	cmp	lr, #0	@ tmp247,
	add	r0, lr, #3	@ tmp252, tmp247,
	movlt	lr, r0	@ tmp251, tmp252
	cmp	ip, lr, asr #2	@ tmp255, tmp251,
	ble	.L516	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r5]	@ SrcEaten, <variable>.SmPushRaw.PushRawTotalLen
	b	.L516	@
.L568:
	ldr	r5, [sp, #72]	@ Ret, %sfp
	bl	vfmw_dprint_nothing	@
	b	.L528	@
.L553:
	ldr	r5, [sp, #72]	@ Ret, %sfp
.L538:
	bl	vfmw_dprint_nothing	@
	mov	sl, #0	@ ScdErrFlag,
	b	.L528	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
.LFB1961:
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
	bne	.L592	@,
.L570:
	mvn	r0, #0	@ D.41096,
.L576:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L592:
	cmp	r1, #0	@ pStreamSeg,
	beq	.L570	@,
	movw	r2, #:lower16:73900	@ tmp173,
	movw	r1, #:lower16:73896	@ tmp174,
	movt	r2, #:upper16:73900	@ tmp173,
	movt	r1, #:upper16:73896	@ tmp174,
	ldr	r0, [r4, r2]	@ D.41103, <variable>.RawPacketArray.Tail
	ldr	r3, [r4, r1]	@, <variable>.RawPacketArray.Head
	cmp	r0, r3	@ D.41103,
	str	r3, [sp, #16]	@, %sfp
	beq	.L571	@,
	mov	r1, r3, asl #3	@ tmp414,,
	mov	r7, #1	@ rawnum,
	add	sl, r1, r3	@ tmp178, tmp414, index
	mov	fp, r5	@ SmID, SmID
	add	r8, r4, sl, asl #3	@, tmp180, pSmInstArray, tmp178,
	ldr	sl, [r8, #176]	@ TotalSrcLength, <variable>.Length
	b	.L572	@
.L573:
	mov	r2, r2, lsr #22	@ index, index,
	cmp	r0, ip	@ D.41103, index
	add	r3, r2, #1	@ D.41111, index,
	add	r7, r7, #1	@ rawnum, rawnum,
	add	ip, r2, r2, asl #3	@, tmp435, index, index,
	ldr	r1, [r8, #176]	@ D.41113, <variable>.Length
	mov	r3, r3, asl #22	@ index, D.41111,
	beq	.L571	@,
	movw	r5, #1025	@,
	cmp	r7, r5	@ rawnum,
	add	ip, r4, ip, asl #3	@, tmp437, pSmInstArray, tmp435,
	mov	r3, r3, lsr #22	@ index, index,
	add	sl, sl, r1	@ TotalSrcLength, TotalSrcLength, D.41113
	mov	r5, r7	@ tmp423, rawnum
	beq	.L571	@,
	ldrb	r9, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	mov	r1, r3, asl #3	@ tmp412, index,
	add	r8, r1, r3	@ tmp448, tmp412, index
	cmp	r9, #0	@ <variable>.is_not_last_packet_flag,
	add	r8, r4, r8, asl #3	@, tmp450, pSmInstArray, tmp448,
	beq	.L591	@,
	cmp	r0, r2	@ D.41103, index
	add	r7, r7, #1	@ rawnum, rawnum,
	ldr	r2, [ip, #176]	@ D.41113, <variable>.Length
	beq	.L571	@,
	ldrb	ip, [ip, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.41113
	cmp	ip, #0	@ <variable>.is_not_last_packet_flag,
	beq	.L591	@,
	cmp	r0, r3	@ D.41103, index
	add	r7, r5, #2	@ rawnum, tmp423,
	ldr	r2, [r8, #176]	@ D.41113, <variable>.Length
	beq	.L571	@,
	add	sl, sl, r2	@ TotalSrcLength, TotalSrcLength, D.41113
.L572:
	add	r2, r1, r3	@ tmp426, tmp412, index
	add	r8, r3, #1	@ D.41111, index,
	mov	ip, r8, asl #22	@ index, D.41111,
	add	r8, r4, r2, asl #3	@, tmp428, pSmInstArray, tmp426,
	mov	ip, ip, lsr #22	@ index, index,
	ldrb	r3, [r8, #220]	@ zero_extendqisi2	@ <variable>.is_not_last_packet_flag, <variable>.is_not_last_packet_flag
	add	r2, ip, #1	@ D.41111, index,
	add	r1, ip, ip, asl #3	@, tmp186, index, index,
	cmp	r3, #0	@ <variable>.is_not_last_packet_flag,
	mov	r2, r2, asl #22	@ index, D.41111,
	add	r8, r4, r1, asl #3	@, tmp188, pSmInstArray, tmp186,
	bne	.L573	@,
.L591:
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
	blt	.L593	@,
	ldr	r3, [r4, #56]	@ prephitmp.2578, <variable>.Config.VidStd
	movw	r0, #:lower16:166104	@ tmp203,
	movt	r0, #:upper16:166104	@ tmp203,
	ldr	r9, [r4, r8]	@ TmpVirAddr, <variable>.StreamSegArray.pSegBufVirAddr
	cmp	r3, #10	@ prephitmp.2578,
	cmpne	r3, #12	@, prephitmp.2578,
	ldr	ip, [r4, r0]	@ TmpPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	bne	.L577	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp415,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp415,
	ldr	r2, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	ands	lr, r2, #1	@ tmp213, g_VdmCharacter,
	streqb	lr, [r9], #1	@ tmp213,
	ldr	r8, [sp, #16]	@, %sfp
	mov	r2, #72	@ tmp219,
	ldreq	r3, [r4, #56]	@ prephitmp.2578, <variable>.Config.VidStd
	mla	r1, r2, r8, r4	@ tmp220, tmp219,, pSmInstArray
	cmp	r3, #12	@ prephitmp.2578,
	movw	r3, #:lower16:73896	@ tmp227,
	movt	r3, #:upper16:73896	@ tmp227,
	ldr	r8, [r4, r3]	@ index.2605, <variable>.RawPacketArray.Head
	ldr	r3, [r1, #176]	@ SrcLength, <variable>.Length
	ldr	r1, [r1, #172]	@, <variable>.VirAddr
	str	r1, [sp, #36]	@, %sfp
	bne	.L579	@,
	ldr	r0, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	cmp	r3, #0	@ SrcLength,
	moveq	r0, #0	@, tmp236
	andne	r0, r0, #1	@,, tmp236, g_VdmCharacter
	cmp	r0, #0	@ tmp236,
	beq	.L579	@,
	cmp	r3, #2	@ SrcLength,
	ble	.L580	@,
	sub	r3, r3, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@,,
	str	r1, [sp, #36]	@, %sfp
.L579:
	str	ip, [r6, #8]	@ TmpPhyAddr, <variable>.PhyAddr
	mov	r0, ip	@, TmpPhyAddr
	str	r3, [sp, #0]	@,
	bl	MEM_Phy2Vir	@
	mov	ip, #72	@ tmp297,
	cmp	r7, #0	@ rawnum,
	str	r0, [r6, #0]	@ D.41172, <variable>.VirAddr
	rsb	r1, r0, r9	@ tmp294, D.41172, TmpVirAddr
	ldr	r3, [sp, #16]	@, %sfp
	str	r1, [r6, #12]	@ tmp294, <variable>.LenInByte
	mla	ip, ip, r3, r4	@ tmp298, tmp297,, pSmInstArray
	ldrd	r0, [ip, #184]	@, tmp298,
	strd	r0, [r6, #24]	@, pStreamSeg,
	ldrd	r2, [ip, #184]	@, tmp298,
	strd	r2, [r6, #32]	@, pStreamSeg,
	mov	r3, #1	@ tmp313,
	ldrd	r0, [ip, #200]	@, tmp298,
	strb	r3, [r6, #5]	@ tmp313, <variable>.IsLastSeg
	strd	r0, [r6, #40]	@, pStreamSeg,
	ldr	r3, [sp, #0]	@,
	beq	.L582	@,
	ldr	r1, [sp, #36]	@, %sfp
	cmp	r1, #0	@,
	cmpne	r9, #0	@, TmpVirAddr,
	beq	.L571	@,
	add	r2, ip, #208	@, tmp298,
	add	fp, ip, #232	@ tmp421, tmp298,
	mov	r0, r8, asl #3	@ tmp411, index.2605,
	add	ip, ip, #224	@ tmp420, tmp298,
	mov	lr, #0	@ i,
	str	r2, [sp, #24]	@, %sfp
	str	sl, [sp, #32]	@ TotalSrcLength, %sfp
	mov	r2, r3	@ SrcLength, SrcLength
	mov	sl, r7	@ rawnum, rawnum
	str	r5, [sp, #36]	@ SmID, %sfp
	mov	r3, lr	@ i, i
	mov	r5, ip	@ tmp420, tmp420
	str	r1, [sp, #16]	@, %sfp
	mov	r7, r4	@ pSmInstArray, pSmInstArray
	mov	ip, r0	@ tmp411, tmp411
	b	.L583	@
.L584:
	adds	r9, r9, r4	@ TmpVirAddr, TmpVirAddr, SrcLength.590
	ldr	r1, [sp, #16]	@, %sfp
	moveq	r0, #0	@, tmp323
	movne	r0, #1	@, tmp323
	cmp	r1, #0	@,
	moveq	r0, #0	@, tmp328
	andne	r0, r0, #1	@,, tmp328, tmp323
	cmp	r0, #0	@ tmp328,
	beq	.L571	@,
.L583:
	ldr	r1, [sp, #16]	@, %sfp
	mov	r0, r9	@, TmpVirAddr
	mov	r4, r2	@ SrcLength.590, SrcLength
	stmia	sp, {r3, ip}	@ phole stm
	bl	memcpy	@
	ldr	ip, [sp, #4]	@,
	add	r1, r8, #1	@ temp.2624, index.2605,
	ldr	r0, [r6, #12]	@ <variable>.LenInByte, <variable>.LenInByte
	add	r2, ip, r8	@ tmp336, tmp411, index.2605
	mov	r8, r1, asl #22	@ index.2605, temp.2624,
	ldr	r3, [sp, #0]	@,
	add	r1, r0, r4	@ tmp343, <variable>.LenInByte, SrcLength.590
	add	ip, r7, r2, asl #3	@, tmp338, pSmInstArray, tmp336,
	mov	r8, r8, lsr #22	@ index.2605, index.2605,
	add	r3, r3, #1	@ i, i,
	ldrb	r2, [ip, #221]	@ zero_extendqisi2	@ <variable>.is_stream_end_flag, <variable>.is_stream_end_flag
	mov	ip, r8, asl #3	@ tmp411, index.2605,
	str	r1, [r6, #12]	@ tmp343, <variable>.LenInByte
	add	r0, ip, r8	@, tmp411, index.2605
	str	r0, [sp, #16]	@, %sfp
	cmp	sl, r3	@ rawnum, i
	strb	r2, [r6, #6]	@ <variable>.is_stream_end_flag, <variable>.IsStreamEnd
	ldr	r1, [sp, #24]	@, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	ldrd	r0, [r1]	@, <variable>.DispTime
	strd	r0, [sp, #8]	@,,
	add	r1, r7, r2, asl #3	@, tmp350, pSmInstArray,,
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
	bhi	.L584	@,
	ldr	sl, [sp, #32]	@ TotalSrcLength, %sfp
	ldr	r5, [sp, #36]	@ SmID, %sfp
.L582:
	mov	r2, r5	@, SmID
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #20]	@, %sfp
	bl	InsertStreamSeg	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.41096,
	b	.L576	@
.L571:
	mvn	r0, #3	@ D.41096,
	b	.L576	@
.L577:
	ldr	r2, [sp, #16]	@, %sfp
	mov	r8, #72	@ tmp402,
	movw	r3, #:lower16:73896	@ tmp410,
	movt	r3, #:upper16:73896	@ tmp410,
	mla	r0, r8, r2, r4	@ tmp403, tmp402,, pSmInstArray
	ldr	r8, [r4, r3]	@ index.2605, <variable>.RawPacketArray.Head
	ldr	lr, [r0, #172]	@, <variable>.VirAddr
	ldr	r3, [r0, #176]	@ SrcLength, <variable>.Length
	str	lr, [sp, #36]	@, %sfp
	b	.L579	@
.L593:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, sl	@, TotalSrcLength
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.41124
	beq	.L576	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.41096,
	b	.L576	@
.L580:
	cmp	r7, #1	@ rawnum,
	beq	.L571	@,
	add	r1, r8, #1	@ temp.2610, index.2605,
	mov	r8, r1, asl #22	@ index.2605, temp.2610,
	mov	r8, r8, lsr #22	@ index.2605, index.2605,
	mla	r0, r2, r8, r4	@ tmp241, tmp219, index.2605, pSmInstArray
	ldr	lr, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r1, [r0, #172]	@ SrcVirAddr.2613, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2612, SrcLength, <variable>.Length
	cmp	r3, #2	@ SrcLength.2612,
	ble	.L581	@,
	add	r0, r8, #1020	@ tmp249, index.2605,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2612,
	add	lr, r0, #3	@ tmp249, tmp249,
	sub	r7, r7, #1	@ rawnum, rawnum,
	mov	r0, lr, asl #22	@ tmp251, tmp249,
	mov	lr, r0, lsr #22	@ tmp251, tmp251,
	mla	r2, r2, lr, r4	@ tmp256, tmp219, tmp251, pSmInstArray
	ldr	r0, [r2, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r0, #3	@ tmp258, <variable>.Length,
	add	r2, r1, lr	@, SrcVirAddr.2613, tmp258
	str	r2, [sp, #36]	@, %sfp
	b	.L579	@
.L581:
	cmp	r7, #2	@ rawnum,
	beq	.L571	@,
	add	r8, r8, #1	@ temp.2614, index.2605,
	mov	fp, r8, asl #22	@ index.2605, temp.2614,
	mov	r8, fp, lsr #22	@ index.2605, index.2605,
	mla	r1, r2, r8, r4	@ tmp264, tmp219, index.2605, pSmInstArray
	ldr	lr, [r1, #176]	@ <variable>.Length, <variable>.Length
	ldr	fp, [r1, #172]	@ SrcVirAddr.2617, <variable>.VirAddr
	add	r3, r3, lr	@ SrcLength.2616, SrcLength.2612, <variable>.Length
	cmp	r3, #2	@ SrcLength.2616,
	ble	.L571	@,
	add	lr, r8, #1020	@ tmp272, index.2605,
	sub	r3, r3, #3	@ SrcLength, SrcLength.2616,
	add	r0, lr, #3	@ tmp272, tmp272,
	add	lr, lr, #2	@ tmp283, tmp283,
	sub	r7, r7, #2	@ rawnum, rawnum,
	mov	r0, r0, asl #22	@ tmp274, tmp272,
	mov	r1, lr, asl #22	@ tmp285, tmp283,
	mov	lr, r0, lsr #22	@ tmp274, tmp274,
	mov	r1, r1, lsr #22	@ tmp285, tmp285,
	mla	r0, r2, lr, r4	@ tmp279, tmp219, tmp274, pSmInstArray
	mla	lr, r2, r1, r4	@ tmp290, tmp219, tmp285, pSmInstArray
	ldr	r1, [r0, #176]	@ <variable>.Length, <variable>.Length
	ldr	r2, [lr, #176]	@ <variable>.Length, <variable>.Length
	rsb	lr, r1, #3	@ tmp281, <variable>.Length,
	rsb	r0, r2, lr	@ tmp292, <variable>.Length, tmp281
	add	r2, fp, r0	@, SrcVirAddr.2617, tmp292
	str	r2, [sp, #36]	@, %sfp
	b	.L579	@
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_ReadStreamSeg
	.type	SM_ReadStreamSeg, %function
SM_ReadStreamSeg:
	.fnstart
.LFB1963:
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
	bne	.L602	@,
.L595:
	mvn	r4, #0	@ ret,
.L600:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L602:
	cmp	r5, #0	@ pSmInstArray,
	beq	.L595	@,
	ldr	r3, [r5, #56]	@ D.41301, <variable>.Config.VidStd
	sub	r2, r3, #8	@ tmp146, D.41301,
	cmp	r3, #5	@ D.41301,
	cmpne	r2, #1	@, tmp146,
	bls	.L596	@,
	cmp	r3, #4	@ D.41301,
	beq	.L596	@,
	cmp	r3, #10	@ D.41301,
	beq	.L596	@,
	cmp	r3, #14	@ D.41301,
	beq	.L596	@,
	cmp	r3, #11	@ D.41301,
	beq	.L596	@,
	cmp	r3, #12	@ D.41301,
	beq	.L596	@,
	cmp	r3, #13	@ D.41301,
	beq	.L596	@,
	cmp	r3, #1	@ D.41301,
	bne	.L597	@,
	ldr	r1, [r5, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r1, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L597	@,
.L596:
	mov	r0, r7	@, SmID
	mov	r1, r6	@, pStreamSeg
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L603	@,
.L597:
	add	r4, r5, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r4, #192	@,,
	bl	GetStreamSeg	@
	subs	r4, r0, #0	@ ret,
	beq	.L604	@,
.L598:
	movw	r1, #:lower16:180116	@ tmp167,
	movt	r1, #:upper16:180116	@ tmp167,
	ldr	r2, [r5, r1]	@ <variable>.numReadSegFail, <variable>.numReadSegFail
	add	r0, r2, #1	@ tmp170, <variable>.numReadSegFail,
	str	r0, [r5, r1]	@ tmp170, <variable>.numReadSegFail
	b	.L600	@
.L604:
	movw	r8, #:lower16:vfmw_save_seg_file	@ tmp157,
	movt	r8, #:upper16:vfmw_save_seg_file	@ tmp157,
	ldr	ip, [r8, #0]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	ip, #0	@ vfmw_save_seg_file,
	beq	.L599	@,
	movw	r3, #:lower16:save_seg_chan_num	@ tmp159,
	movt	r3, #:upper16:save_seg_chan_num	@ tmp159,
	ldr	lr, [r3, #0]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, lr	@ SmID, save_seg_chan_num
	beq	.L605	@,
.L599:
	movw	lr, #:lower16:180116	@ tmp172,
	movt	lr, #:upper16:180116	@ tmp172,
	mov	ip, #0	@ tmp173,
	str	ip, [r5, lr]	@ tmp173, <variable>.numReadSegFail
	b	.L600	@
.L605:
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
	b	.L599	@
.L603:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #6	@ ret,
	b	.L598	@
	.fnend
	.size	SM_ReadStreamSeg, .-SM_ReadStreamSeg
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	mvneq	r0, #0	@ D.40115,
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
	mvneq	r0, #2	@ D.40115,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	add	lr, r0, r0, asl #3	@, tmp159, tmp153, tmp153,
	str	r0, [r3, r2]	@ tmp153, <variable>.CurShowIndex
	mov	r0, r1	@, pRawPacket
	mov	r2, #72	@,
	add	r1, r3, lr, asl #3	@,, pRawStreamArray, tmp159,
	bl	memcpy	@
	mov	r0, r4	@ D.40115, tmp144
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mvneq	r0, #0	@ D.40096,
	movne	r4, #0	@, tmp144
	moveq	r4, #1	@, tmp144
	ldmeqfd	sp!, {r4, pc}	@
	movw	r2, #:lower16:73732	@ tmp146,
	movt	r2, #:upper16:73732	@ tmp146,
	mov	r0, #73728	@ tmp145,
	ldr	ip, [r3, r0]	@ D.40097, <variable>.Head
	ldr	r2, [r3, r2]	@ <variable>.Tail, <variable>.Tail
	cmp	ip, r2	@ D.40097, <variable>.Tail
	mvneq	r0, #2	@ D.40096,
	ldmeqfd	sp!, {r4, pc}	@
	add	r2, ip, ip, asl #3	@, tmp151, D.40097, D.40097,
	movw	lr, #:lower16:73744	@ tmp148,
	movt	lr, #:upper16:73744	@ tmp148,
	mov	r0, r1	@, pRawPacket
	add	r1, r3, r2, asl #3	@,, pRawStreamArray, tmp151,
	mov	r2, #72	@,
	str	ip, [r3, lr]	@ D.40097, <variable>.CurShowIndex
	bl	memcpy	@
	mov	r0, r4	@ D.40096, tmp144
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
.LFB1970:
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
	beq	.L617	@,
	movw	r0, #:lower16:73732	@ tmp159,
	movt	r0, #:upper16:73732	@ tmp159,
	mov	r1, #73728	@ tmp158,
	ldr	r2, [r4, r1]	@ <variable>.Head, <variable>.Head
	ldr	r3, [r4, r0]	@ <variable>.Tail, <variable>.Tail
	cmp	r2, r3	@ <variable>.Head, <variable>.Tail
	beq	.L617	@,
	movw	r8, #:lower16:73740	@ tmp162,
	movt	r8, #:upper16:73740	@ tmp162,
	ldr	r6, [r4, r8]	@ FirstRawOffset, <variable>.FirstPacketOffset
	mov	sl, r6	@ prephitmp.2714, FirstRawOffset
.L618:
	mov	r1, r9	@, tmp219
	mov	r0, r4	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r8, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [sp, #12]	@ RawPacket.VirAddr, RawPacket.VirAddr
	mov	r2, #0	@ tmp169,
	rsb	r8, r6, r8	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r1, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	cmp	r8, fp	@ RawShowTotalLen, SegStreamSize
	movgt	ip, #0	@, tmp177
	movle	ip, #1	@, tmp177
	add	sl, r3, sl	@ tmp167, RawPacket.VirAddr, prephitmp.2714
	cmp	ip, r2	@ tmp177,
	str	sl, [sp, #12]	@ tmp167, RawPacket.VirAddr
	add	r6, r1, r6	@ tmp165, RawPacket.PhyAddr, FirstRawOffset
	mov	r3, r8	@ RawPacket.Length, RawShowTotalLen
	moveq	sl, ip	@ j.2757, tmp177
	str	r6, [sp, #8]	@ tmp165, RawPacket.PhyAddr
	str	r2, [r7, #0]	@ tmp169,* pDownMsgVirAddr
	moveq	r6, sl	@ PushRawNum, j.2757
	str	r2, [r7, #4]	@ tmp169,
	str	r2, [r7, #8]	@ tmp169,
	str	r8, [sp, #16]	@ RawShowTotalLen, RawPacket.Length
	str	r2, [r5, #4]	@ tmp169, <variable>.PushRawTotalLen
	beq	.L620	@,
	mov	sl, r2	@ j.2757, tmp169
	str	r4, [sp, #4]	@ pRawStreamArray, %sfp
	mov	r2, r8	@ prephitmp.2716, RawShowTotalLen
	mov	r6, sl	@ PushRawNum, j.2757
	b	.L622	@
.L629:
	ldr	r3, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	movw	r0, #1023	@,
	cmp	r6, r0	@ PushRawNum,
	movgt	r1, #0	@, tmp194
	movle	r1, #1	@, tmp194
	add	r8, r8, r3	@ RawShowTotalLen, RawShowTotalLen, RawPacket.Length
	cmp	fp, r8	@ SegStreamSize, RawShowTotalLen
	mov	r2, r3	@ prephitmp.2716, RawPacket.Length
	movlt	r1, #0	@, tmp194,
	cmp	r1, #0	@ tmp194,
	beq	.L620	@,
.L622:
	cmp	r2, #0	@ prephitmp.2716,
	add	ip, sl, #1	@ j, j.2757,
	ldr	r0, [sp, #4]	@, %sfp
	mov	r1, r9	@, tmp219
	add	r2, ip, #1	@ j.2735, j,
	add	r6, r6, #1	@ PushRawNum, PushRawNum,
	ble	.L621	@,
	ldr	lr, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r4, #0	@,
	str	r4, [sp, #16]	@, RawPacket.Length
	add	r3, lr, r3	@ tmp179, RawPacket.PhyAddr, RawPacket.Length
	str	lr, [r7, sl, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	sub	r3, r3, #1	@ tmp182, tmp179,
	str	r3, [r7, ip, asl #2]	@ tmp182,* pDownMsgVirAddr
	add	sl, r2, #1	@ j.2757, j.2735,
	ldr	ip, [sp, #120]	@, DownMsgPhyAddr
	add	lr, ip, sl, asl #2	@, tmp184,, j.2757,
	str	lr, [r7, r2, asl #2]	@ tmp184,* pDownMsgVirAddr
.L621:
	str	r8, [r5, #4]	@ RawShowTotalLen, <variable>.PushRawTotalLen
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L629	@,
.L620:
	ldr	r2, [sp, #124]	@, LowdlyFlag
	cmp	r2, #0	@,
	bne	.L623	@,
	ldr	r3, [sp, #16]	@ temp.2740, RawPacket.Length
	cmp	r3, #0	@ temp.2740,
	bne	.L630	@,
.L623:
	cmp	r6, #0	@ PushRawNum,
	mvneq	r0, #5	@ D.41610,
	bne	.L624	@,
.L625:
	add	sp, sp, #84	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L630:
	ldr	r2, [r5, #4]	@ D.41595, <variable>.PushRawTotalLen
	sub	ip, fp, #16	@ tmp197, SegStreamSize,
	cmp	fp, r8	@ SegStreamSize, RawShowTotalLen
	cmplt	r2, ip	@, D.41595, tmp197
	bge	.L623	@,
	cmp	r6, #1024	@ PushRawNum,
	bge	.L624	@,
	rsb	r2, r2, fp	@ D.41604, D.41595, SegStreamSize
	cmp	r3, r2	@ temp.2740, D.41604
	blt	.L623	@,
	ldr	r0, [sp, #8]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	lr, sl, #1	@ j.2745, j.2757,
	ldr	r1, [sp, #124]	@, LowdlyFlag
	add	r3, lr, #1	@ j.2753, j.2745,
	add	ip, r0, r2	@ tmp205, RawPacket.PhyAddr, D.41604
	add	r6, r6, #1	@ PushRawNum, PushRawNum,
	sub	r4, ip, #1	@ tmp208, tmp205,
	str	r1, [sp, #16]	@, RawPacket.Length
	str	r0, [r7, sl, asl #2]	@ RawPacket.PhyAddr,* pDownMsgVirAddr
	add	sl, r3, #1	@ j.2757, j.2753,
	str	r4, [r7, lr, asl #2]	@ tmp208,* pDownMsgVirAddr
	ldr	r1, [sp, #120]	@, DownMsgPhyAddr
	add	lr, r1, sl, asl #2	@, tmp210,, j.2757,
	str	lr, [r7, r3, asl #2]	@ tmp210,* pDownMsgVirAddr
	ldr	r0, [r5, #4]	@ <variable>.PushRawTotalLen, <variable>.PushRawTotalLen
	add	r4, r0, r2	@ tmp213, <variable>.PushRawTotalLen, D.41604
	str	r4, [r5, #4]	@ tmp213, <variable>.PushRawTotalLen
.L624:
	sub	sl, sl, #1	@ tmp215, j.2757,
	ldr	r0, [sp, #120]	@, DownMsgPhyAddr
	mov	r4, #0	@ tmp216,
	mov	r3, #1	@ tmp217,
	str	r4, [r7, sl, asl #2]	@ tmp216,* pDownMsgVirAddr
	mov	r1, r7	@, pDownMsgVirAddr
	mov	r2, r6	@, PushRawNum
	str	r6, [r5, #0]	@ PushRawNum, <variable>.PushRawNum
	str	r3, [r5, #8]	@ tmp217, <variable>.PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r4	@ D.41610, tmp216
	b	.L625	@
.L617:
	mov	sl, #0	@ prephitmp.2714,
	mov	r6, sl	@ FirstRawOffset, prephitmp.2714
	b	.L618	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
.LFB1971:
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
	bne	.L632	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L632:
	mov	r0, r5	@, Ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	ScdDriver, .-ScdDriver
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
.LFB1968:
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
	ldr	r8, [r0, #88]	@ D.41432, <variable>.Config.ScdLowdlyEnable
	bne	.L654	@,
.L635:
	mvn	r6, #0	@ Ret,
.L646:
	mov	r0, r6	@, Ret
	add	sp, sp, #164	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L654:
	add	r9, r0, #73728	@ pStreamSegArray, pScdInstance,
	add	r9, r9, #192	@ pStreamSegArray, pStreamSegArray,
	cmp	r9, r3	@ pStreamSegArray,
	beq	.L635	@,
	add	lr, r0, #165888	@, pScdInstance,
	mov	r1, #12	@,
	add	r0, lr, #248	@,,
	str	r3, [sp, #152]	@ tmp148, FreeSegBufAddr
	str	r3, [sp, #156]	@ tmp148, SegStreamSize
	movw	r5, #:lower16:73900	@ tmp154,
	bl	__memzero	@
	movt	r5, #:upper16:73900	@ tmp154,
	movw	ip, #:lower16:73896	@ tmp155,
	movt	ip, #:upper16:73896	@ tmp155,
	ldr	sl, [r4, r5]	@ <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Tail
	ldr	r1, [r4, ip]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	subs	sl, sl, r1	@ StreamNum, <variable>.RawPacketArray.Tail, <variable>.RawPacketArray.Head
	addmi	sl, sl, #1024	@ StreamNum, StreamNum,
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:73916	@ tmp158,
	movw	r0, #:lower16:73908	@ tmp159,
	movt	r2, #:upper16:73916	@ tmp158,
	movt	r0, #:upper16:73908	@ tmp159,
	ldr	r5, [r4, r2]	@ <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.RawTotalSize
	ldr	r3, [r4, r0]	@ <variable>.RawPacketArray.FirstPacketOffset, <variable>.RawPacketArray.FirstPacketOffset
	subs	r5, r5, r3	@ RawStreamSize, <variable>.RawPacketArray.RawTotalSize, <variable>.RawPacketArray.FirstPacketOffset
	bmi	.L635	@,
	bl	vfmw_dprint_nothing	@
	cmp	sl, #0	@ StreamNum,
	bgt	.L655	@,
.L638:
	mvn	r6, #4	@ Ret,
	b	.L646	@
.L655:
	cmp	r5, #3	@ RawStreamSize,
	ble	.L638	@,
	movw	r2, #:lower16:166092	@ tmp162,
	movw	r1, #:lower16:166088	@ tmp163,
	movt	r2, #:upper16:166092	@ tmp162,
	movt	r1, #:upper16:166088	@ tmp163,
	ldr	sl, [r4, r2]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	ldr	r3, [r4, r1]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	subs	r0, sl, r3	@ StreamNum.2826, <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Head
	addmi	r0, r0, #1152	@ StreamNum.2826, StreamNum.2826,
	rsb	sl, r0, #1152	@ StreamNum.617, StreamNum.2826,
	bl	vfmw_dprint_nothing	@
	cmp	sl, #288	@ StreamNum.617,
	bgt	.L656	@,
.L640:
	mvn	r6, #5	@ Ret,
	b	.L646	@
.L656:
	mov	r0, r9	@, pStreamSegArray
	add	r1, sp, #152	@,,
	add	r2, sp, #156	@,,
	bl	GetFreeSegBuf	@
	ldr	r0, [sp, #152]	@ FreeSegBufAddr, FreeSegBufAddr
	ldr	r1, [sp, #156]	@ SegStreamSize, SegStreamSize
	add	ip, r0, #3	@ tmp168, FreeSegBufAddr,
	bic	r2, ip, #3	@ tmp170, tmp168,
	sub	r3, r1, #79	@ tmp172, SegStreamSize,
	str	r2, [sp, #152]	@ tmp170, FreeSegBufAddr
	str	r3, [sp, #156]	@ tmp172, SegStreamSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:166108	@ tmp173,
	movt	r0, #:upper16:166108	@ tmp173,
	ldr	ip, [sp, #156]	@ SegStreamSize, SegStreamSize
	ldr	r3, [r4, r0]	@ D.41466, <variable>.StreamSegArray.SegBufSize
	cmp	ip, r3, asr #3	@ SegStreamSize, D.41466,
	ble	.L640	@,
	movw	r2, #:lower16:180124	@ tmp180,
	movt	r2, #:upper16:180124	@ tmp180,
	movw	r9, #:lower16:166104	@ tmp176,
	movw	ip, #:lower16:166152	@ tmp186,
	ldr	lr, [r4, r2]	@ <variable>.UpMsgStepNum, <variable>.UpMsgStepNum
	movt	r9, #:upper16:166104	@ tmp176,
	movt	ip, #:upper16:166152	@ tmp186,
	movw	r1, #:lower16:166156	@ tmp188,
	movw	r2, #:lower16:166164	@ tmp190,
	movt	r1, #:upper16:166156	@ tmp188,
	mul	r0, lr, sl	@, <variable>.UpMsgStepNum, StreamNum.617
	mov	fp, lr, asl #2	@ tmp181, <variable>.UpMsgStepNum,
	movt	r2, #:upper16:166164	@ tmp190,
	mul	fp, sl, fp	@ tmp183, StreamNum.617, tmp181
	str	r0, [sp, #16]	@, %sfp
	ldr	r0, [r4, r9]	@ D.43267, <variable>.StreamSegArray.SegBufPhyAddr
	ldr	lr, [r4, r1]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	ldr	r9, [r4, ip]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	cmp	r6, #6	@ StdType,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	str	ip, [sp, #28]	@, %sfp
	add	ip, r0, r3	@, D.43267, D.41466
	ldr	r1, [r4, r2]	@, <variable>.BufAddrCfg.UpMsgPhyAddr
	cmp	r6, #1	@ StdType,
	cmpne	r6, #15	@, StdType,
	ldr	r2, [sp, #152]	@, FreeSegBufAddr
	str	ip, [sp, #20]	@, %sfp
	moveq	r6, #0	@ prephitmp.2805,
	str	r1, [sp, #12]	@, %sfp
	movw	r1, #:lower16:166176	@ tmp178,
	str	r2, [sp, #24]	@, %sfp
	movt	r1, #:upper16:166176	@ tmp178,
	movw	r2, #:lower16:166172	@ tmp179,
	movt	r2, #:upper16:166172	@ tmp179,
	str	sl, [r4, r1]	@ StreamNum.617, <variable>.BufAddrCfg.UpMsgNum
	mov	r1, #1	@ tmp184,
	str	fp, [r4, r2]	@ tmp183, <variable>.BufAddrCfg.UpMsgSize
	ldr	r2, [sp, #12]	@, %sfp
	str	lr, [sp, #44]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, ScdCtrlReg.pDownMsgVirAddr
	ldr	lr, [sp, #16]	@, %sfp
	str	r2, [sp, #48]	@, ScdCtrlReg.UpMsgPhyAddr
	ldr	ip, [sp, #20]	@, %sfp
	str	lr, [sp, #56]	@, ScdCtrlReg.UpLen
	ldr	r2, [sp, #24]	@, %sfp
	ldr	lr, [sp, #28]	@, %sfp
	str	r9, [sp, #40]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, ScdCtrlReg.DownMsgPhyAddr
	str	ip, [sp, #64]	@, ScdCtrlReg.BufferLast
	str	r2, [sp, #68]	@, ScdCtrlReg.BufferIni
	str	r8, [sp, #140]	@ D.41432, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [sp, #144]	@, ScdCtrlReg.reg_avs_flag
	str	r3, [sp, #148]	@ D.41466,
	strb	r1, [sp, #38]	@ tmp184, ScdCtrlReg.ScdStart
	str	r0, [sp, #60]	@ D.43267, ScdCtrlReg.BufferFirst
	strb	r1, [sp, #36]	@ tmp184, ScdCtrlReg.ScdIntMask
	beq	.L645	@,
	cmp	r6, #6	@ StdType,
	beq	.L653	@,
	sub	r3, r6, #2	@ tmp212, StdType,
	cmp	r3, #1	@ tmp212,
	bls	.L653	@,
.L645:
	mov	r1, #0	@ tmp215,
	strb	r1, [sp, #37]	@ tmp215, ScdCtrlReg.SliceCheckFlag
.L643:
	movw	r2, #:lower16:166156	@ tmp221,
	movw	r3, #:lower16:166152	@ tmp223,
	movt	r2, #:upper16:166156	@ tmp221,
	movt	r3, #:upper16:166152	@ tmp223,
	add	r0, r4, #165888	@, pScdInstance,
	ldr	ip, [r4, r2]	@ <variable>.BufAddrCfg.pDownMsgVirAddr, <variable>.BufAddrCfg.pDownMsgVirAddr
	add	r1, r0, #248	@,,
	ldr	lr, [r4, r3]	@ <variable>.BufAddrCfg.DownMsgPhyAddr, <variable>.BufAddrCfg.DownMsgPhyAddr
	add	r0, sp, #36	@,,
	mov	r3, r7	@, pRawStreamArray
	ldr	r2, [sp, #156]	@, SegStreamSize
	str	r6, [sp, #72]	@ prephitmp.2805, ScdCtrlReg.ScdProtocol
	mov	r7, #1	@ tmp217,
	stmia	sp, {ip, lr}	@ phole stm
	str	r7, [sp, #76]	@ tmp217, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	bne	.L646	@,
	ldr	lr, [sp, #156]	@ SegStreamSize, SegStreamSize
	movw	r0, #:lower16:180096	@ tmp227,
	movw	ip, #:lower16:180100	@ tmp228,
	movt	r0, #:upper16:180096	@ tmp227,
	movt	ip, #:upper16:180100	@ tmp228,
	cmp	lr, r5	@ SegStreamSize, RawStreamSize
	str	r5, [r4, r0]	@ RawStreamSize, <variable>.PrevCfgRawSize
	mov	r5, #0	@ tmp235,
	str	lr, [r4, ip]	@ SegStreamSize, <variable>.PrevCfgSegSize
	strb	r7, [r4, #5]	@ tmp217, <variable>.IsWaitSCD
	strgeb	r7, [r4, #2]	@ tmp217, <variable>.LastCfgAllRawFlag
	strltb	r6, [r4, #2]	@ Ret, <variable>.LastCfgAllRawFlag
	strb	r5, [r4, #4]	@ tmp235, <variable>.FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:180120	@ tmp237,
	movt	r1, #:upper16:180120	@ tmp237,
	strb	r5, [r4, #3]	@ tmp235, <variable>.InsertNewSegFlag
	str	r0, [r4, r1]	@, <variable>.LastSCDStartTime
	b	.L646	@
.L653:
	strb	r1, [sp, #37]	@ tmp184, ScdCtrlReg.SliceCheckFlag
	b	.L643	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
.LFB1987:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp482,
	movt	r5, #:upper16:.LANCHOR0	@ tmp482,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r9, r0	@ pNextInstId, pNextInstId
	ldr	r3, [r5, #284]	@ s_eScdDrvSleepStage.719, s_eScdDrvSleepStage
	cmp	r3, #0	@ s_eScdDrvSleepStage.719,
	beq	.L658	@,
	cmp	r3, #1	@ s_eScdDrvSleepStage.719,
	moveq	r3, #2	@ tmp184,
	mvneq	r0, #2	@ D.42743,
	streq	r3, [r5, #284]	@ tmp184, s_eScdDrvSleepStage
	beq	.L660	@,
.L659:
	mvn	r0, #2	@ D.42743,
.L660:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L658:
	ldr	r1, [r5, #272]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	add	r8, sp, #8	@ tmp483,,
	str	r3, [sp, #32]	@ s_eScdDrvSleepStage.719, SegBufAddr
	add	r7, r1, #1	@ tmp188, s_SmIIS.ThisInstID,
	mov	r1, r8	@, tmp483
	str	r3, [sp, #36]	@ s_eScdDrvSleepStage.719, SegBufTotalSize
	mov	ip, r7, asr #31	@ tmp190, tmp188,
	mov	r0, ip, lsr #30	@ tmp191, tmp190,
	add	r6, r7, r0	@ tmp192, tmp188, tmp191
	and	r4, r6, #3	@ tmp193, tmp192,
	rsb	r4, r0, r4	@ NextInstId, tmp191, tmp193
	add	r7, r4, #58	@ tmp481, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp199, tmp482, tmp481,
	ldr	r6, [r2, #4]	@ pSmInstArray.2857, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L661	@,
	ldr	r3, [r6, #56]	@ temp.2860, <variable>.Config.VidStd
	sub	lr, r3, #8	@ tmp203, temp.2860,
	cmp	r3, #5	@ temp.2860,
	cmpne	lr, #1	@, tmp203,
	bls	.L661	@,
	cmp	r3, #1	@ temp.2860,
	beq	.L754	@,
	cmp	r3, #11	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #14	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #4	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #12	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #10	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #13	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #18	@ temp.2860,
	beq	.L661	@,
	cmp	r3, #17	@ temp.2860,
	beq	.L664	@,
.L730:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp211,
	movt	r3, #:upper16:180120	@ tmp211,
	ldr	r2, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime.2869, D.42772, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ D.42772, <variable>.LastSCDStartTime
	ldrsb	r0, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	movmi	r2, #200	@ WaitTime.2869,
	cmp	r0, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L666	@,
	ldrsb	ip, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	ip, #1	@ <variable>.SegFullFlag,
	movne	sl, #0	@ tmp219,
	strneb	sl, [r6, #1]	@ tmp219, <variable>.IsCounting
	movne	fp, sl	@ FreshNum, FreshSize
	beq	.L755	@,
.L672:
	mov	r0, r6	@, pSmInstArray.2857
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2872,
	beq	.L669	@,
	cmp	r0, #0	@ Ret.2872,
	mov	r3, #0	@ tmp215,
	strb	r3, [r6, #0]	@ tmp215, <variable>.SegFullFlag
	beq	.L670	@,
.L671:
	add	ip, r4, #1	@ temp.2892, NextInstId,
	mov	r1, r8	@, tmp483
	mov	r3, ip, asr #31	@ tmp257, temp.2892,
	mov	r6, r3, lsr #30	@ tmp258, tmp257,
	add	r7, ip, r6	@ tmp259, temp.2892, tmp258
	and	r4, r7, #3	@ tmp260, tmp259,
	rsb	r4, r6, r4	@ NextInstId, tmp258, tmp260
	add	r7, r4, #58	@ tmp481, NextInstId,
	mov	r0, r4	@, NextInstId
	add	lr, r5, r7, asl #2	@, tmp266, tmp482, tmp481,
	ldr	r6, [lr, #4]	@ pSmInstArray.2893, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r2, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r2, #0	@ stInstInfo.InstMode,
	beq	.L680	@,
	ldr	r3, [r6, #56]	@ temp.2895, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp270, temp.2895,
	cmp	r3, #5	@ temp.2895,
	cmpne	r1, #1	@, tmp270,
	bls	.L680	@,
	cmp	r3, #1	@ temp.2895,
	beq	.L756	@,
	cmp	r3, #11	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #14	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #4	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #12	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #10	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #13	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #18	@ temp.2895,
	beq	.L680	@,
	cmp	r3, #17	@ temp.2895,
	beq	.L683	@,
.L734:
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:180120	@ tmp278,
	movt	ip, #:upper16:180120	@ tmp278,
	ldr	r2, [r6, ip]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime.2903, temp.2900, <variable>.LastSCDStartTime
	strmi	r0, [r6, ip]	@ temp.2900, <variable>.LastSCDStartTime
	ldrsb	r0, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	movmi	r2, #200	@ WaitTime.2903,
	cmp	r0, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L685	@,
	ldrsb	lr, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	lr, #1	@ <variable>.SegFullFlag,
	movne	lr, #0	@ tmp286,
	strneb	lr, [r6, #1]	@ tmp286, <variable>.IsCounting
	beq	.L757	@,
.L689:
	mov	r0, r6	@, pSmInstArray.2893
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2906,
	beq	.L688	@,
	cmp	r0, #0	@ Ret.2906,
	mov	r3, #0	@ tmp282,
	strb	r3, [r6, #0]	@ tmp282, <variable>.SegFullFlag
	beq	.L670	@,
.L680:
	add	lr, r4, #1	@ temp.2926, NextInstId,
	mov	r1, r8	@, tmp483
	mov	r0, lr, asr #31	@ tmp324, temp.2926,
	mov	r6, r0, lsr #30	@ tmp325, tmp324,
	add	r7, lr, r6	@ tmp326, temp.2926, tmp325
	and	r4, r7, #3	@ tmp327, tmp326,
	rsb	r4, r6, r4	@ NextInstId, tmp325, tmp327
	add	r7, r4, #58	@ tmp481, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp333, tmp482, tmp481,
	ldr	r6, [r2, #4]	@ pSmInstArray.2927, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	ip, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	ip, #0	@ stInstInfo.InstMode,
	beq	.L697	@,
	ldr	r3, [r6, #56]	@ temp.2929, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp337, temp.2929,
	cmp	r3, #5	@ temp.2929,
	cmpne	r1, #1	@, tmp337,
	bls	.L697	@,
	cmp	r3, #1	@ temp.2929,
	beq	.L758	@,
	cmp	r3, #11	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #14	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #4	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #12	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #10	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #13	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #18	@ temp.2929,
	beq	.L697	@,
	cmp	r3, #17	@ temp.2929,
	beq	.L700	@,
.L738:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp345,
	movt	r3, #:upper16:180120	@ tmp345,
	ldrsb	lr, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	ldr	ip, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, ip	@ WaitTime.2937, temp.2934, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ temp.2934, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime.2937,
	cmp	lr, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L702	@,
	ldrsb	r2, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp353,
	strneb	r2, [r6, #1]	@ tmp353, <variable>.IsCounting
	beq	.L759	@,
.L706:
	mov	r0, r6	@, pSmInstArray.2927
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret.2940,
	beq	.L705	@,
	cmp	r0, #0	@ Ret.2940,
	mov	r3, #0	@ tmp349,
	strb	r3, [r6, #0]	@ tmp349, <variable>.SegFullFlag
	beq	.L670	@,
.L697:
	add	lr, r4, #1	@ D.42744, NextInstId,
	mov	r1, r8	@, tmp483
	mov	r3, lr, asr #31	@ tmp391, D.42744,
	mov	r6, r3, lsr #30	@ tmp392, tmp391,
	add	r7, lr, r6	@ tmp393, D.42744, tmp392
	and	r4, r7, #3	@ tmp394, tmp393,
	rsb	r4, r6, r4	@ NextInstId, tmp392, tmp394
	add	r7, r4, #58	@ tmp481, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r2, r5, r7, asl #2	@, tmp400, tmp482, tmp481,
	ldr	r6, [r2, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	ip, [sp, #8]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	ip, #0	@ stInstInfo.InstMode,
	beq	.L659	@,
	ldr	r3, [r6, #56]	@ D.42752, <variable>.Config.VidStd
	sub	r1, r3, #8	@ tmp404, D.42752,
	cmp	r3, #5	@ D.42752,
	cmpne	r1, #1	@, tmp404,
	bls	.L659	@,
	cmp	r3, #1	@ D.42752,
	beq	.L760	@,
	cmp	r3, #11	@ D.42752,
	beq	.L659	@,
	cmp	r3, #14	@ D.42752,
	beq	.L659	@,
	cmp	r3, #4	@ D.42752,
	beq	.L659	@,
	cmp	r3, #12	@ D.42752,
	beq	.L659	@,
	cmp	r3, #10	@ D.42752,
	beq	.L659	@,
	cmp	r3, #13	@ D.42752,
	beq	.L659	@,
	cmp	r3, #18	@ D.42752,
	beq	.L659	@,
	cmp	r3, #17	@ D.42752,
	beq	.L761	@,
.L716:
	bl	OSAL_GetTimeInMs	@
	movw	r3, #:lower16:180120	@ tmp413,
	movt	r3, #:upper16:180120	@ tmp413,
	ldrsb	ip, [r6, #2]	@ <variable>.LastCfgAllRawFlag, <variable>.LastCfgAllRawFlag
	ldr	r2, [r6, r3]	@ <variable>.LastSCDStartTime, <variable>.LastSCDStartTime
	subs	r2, r0, r2	@ WaitTime, temp.2861, <variable>.LastSCDStartTime
	strmi	r0, [r6, r3]	@ temp.2861, <variable>.LastSCDStartTime
	movmi	r2, #200	@ WaitTime,
	cmp	ip, #1	@ <variable>.LastCfgAllRawFlag,
	beq	.L762	@,
.L718:
	ldrsb	r1, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r1, #1	@ <variable>.SegFullFlag,
	movne	r1, #0	@ tmp452,
	strneb	r1, [r6, #1]	@ tmp452, <variable>.IsCounting
	beq	.L763	@,
.L722:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp454,
	mvneq	r0, #2	@ D.42743,
	streqb	r3, [r6, #0]	@ tmp454, <variable>.SegFullFlag
	beq	.L660	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp456,
	strb	r3, [r6, #0]	@ tmp456, <variable>.SegFullFlag
	bne	.L659	@,
.L670:
	add	r7, r5, r7, asl #2	@, tmp462, tmp482, tmp481,
	str	r4, [r9, #0]	@ NextInstId,* pNextInstId
	mov	r0, #1	@,
	ldr	r2, [r7, #4]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	movwne	r3, #:lower16:166252	@ tmp464,
	movtne	r3, #:upper16:166252	@ tmp464,
	movne	r1, #1	@ tmp465,
	strne	r1, [r2, r3]	@ tmp465, <variable>.Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L764	@,
	mov	r0, #0	@ D.42743,
	b	.L660	@
.L754:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L730	@,
.L661:
	mov	sl, #0	@ FreshSize,
	mov	fp, sl	@ FreshNum, FreshSize
	b	.L671	@
.L756:
	ldr	r3, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L734	@,
	b	.L680	@
.L758:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L738	@,
	b	.L697	@
.L760:
	ldr	r0, [r6, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, #0	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L716	@,
	b	.L659	@
.L666:
	ldrsb	r3, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2869,
	cmple	r3, #0	@, <variable>.FillNewRawFlag,
	beq	.L661	@,
	ldrsb	ip, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	ip, #1	@ <variable>.SegFullFlag,
	movne	sl, #0	@ tmp219,
	strneb	sl, [r6, #1]	@ tmp219, <variable>.IsCounting
	movne	fp, sl	@ FreshNum, FreshSize
	bne	.L672	@,
.L755:
	add	sl, r6, #73728	@ temp.2873, pSmInstArray.2857,
	add	r3, sl, #192	@ temp.2873, temp.2873,
	cmp	r3, #0	@ temp.2873,
	beq	.L765	@,
	movw	fp, #:lower16:166104	@ tmp242,
	movt	fp, #:upper16:166104	@ tmp242,
	movw	sl, #:lower16:166128	@ tmp239,
	movw	r1, #:lower16:166124	@ tmp240,
	ldr	ip, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp239,
	movt	r1, #:upper16:166124	@ tmp240,
	movw	r2, #:lower16:166108	@ tmp245,
	movt	r2, #:upper16:166108	@ tmp245,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	ip, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	lr, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	lr, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L675:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L766	@,
	ldr	r1, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	r0, r1, r1, lsr #31	@, tmp235, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, r0, asr #1	@ FreshSize, tmp235,
	bge	.L672	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L672	@,
	mov	r1, #1	@ tmp237,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp237, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L672	@
.L669:
	mov	r7, #1	@ tmp217,
	strb	r7, [r6, #0]	@ tmp217, <variable>.SegFullFlag
	b	.L671	@
.L685:
	ldrsb	r0, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2903,
	cmple	r0, #0	@, <variable>.FillNewRawFlag,
	beq	.L680	@,
	ldrsb	lr, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	lr, #1	@ <variable>.SegFullFlag,
	movne	lr, #0	@ tmp286,
	strneb	lr, [r6, #1]	@ tmp286, <variable>.IsCounting
	bne	.L689	@,
.L757:
	add	r3, r6, #73728	@ temp.2907, pSmInstArray.2893,
	add	r3, r3, #192	@ temp.2907, temp.2907,
	cmp	r3, #0	@ temp.2907,
	beq	.L692	@,
	movw	fp, #:lower16:166104	@ tmp309,
	movt	fp, #:upper16:166104	@ tmp309,
	movw	sl, #:lower16:166128	@ tmp306,
	movw	r1, #:lower16:166124	@ tmp307,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp306,
	movt	r1, #:upper16:166124	@ tmp307,
	movw	r2, #:lower16:166108	@ tmp312,
	movt	r2, #:upper16:166108	@ tmp312,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	ip, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	ip, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L692:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L767	@,
	ldr	r1, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	lr, r1, r1, lsr #31	@, tmp302, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, lr, asr #1	@ FreshSize, tmp302,
	bge	.L689	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L689	@,
	mov	r1, #1	@ tmp304,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp304, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L689	@
.L688:
	mov	r7, #1	@ tmp284,
	strb	r7, [r6, #0]	@ tmp284, <variable>.SegFullFlag
	b	.L680	@
.L702:
	ldrsb	r3, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime.2937,
	cmple	r3, #0	@, <variable>.FillNewRawFlag,
	beq	.L697	@,
	ldrsb	r2, [r6, #0]	@ <variable>.SegFullFlag, <variable>.SegFullFlag
	cmp	r2, #1	@ <variable>.SegFullFlag,
	movne	r2, #0	@ tmp353,
	strneb	r2, [r6, #1]	@ tmp353, <variable>.IsCounting
	bne	.L706	@,
.L759:
	add	r0, r6, #73728	@ temp.2941, pSmInstArray.2927,
	add	r3, r0, #192	@ temp.2941, temp.2941,
	cmp	r3, #0	@ temp.2941,
	beq	.L709	@,
	movw	fp, #:lower16:166104	@ tmp376,
	movt	fp, #:upper16:166104	@ tmp376,
	movw	sl, #:lower16:166128	@ tmp373,
	movw	r1, #:lower16:166124	@ tmp374,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp373,
	movt	r1, #:upper16:166124	@ tmp374,
	movw	r2, #:lower16:166108	@ tmp379,
	movt	r2, #:upper16:166108	@ tmp379,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r1]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	ip, [r6, r2]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	ip, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L709:
	ldrsb	r1, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r1, #0	@ <variable>.IsCounting,
	bne	.L768	@,
	ldr	r0, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	lr, r0, r0, lsr #31	@, tmp369, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, lr, asr #1	@ FreshSize, tmp369,
	bge	.L706	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L706	@,
	mov	r1, #1	@ tmp371,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp371, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L706	@
.L705:
	mov	r7, #1	@ tmp351,
	strb	r7, [r6, #0]	@ tmp351, <variable>.SegFullFlag
	b	.L697	@
.L762:
	ldrsb	lr, [r6, #4]	@ <variable>.FillNewRawFlag, <variable>.FillNewRawFlag
	cmp	r2, #199	@ WaitTime,
	cmple	lr, #0	@, <variable>.FillNewRawFlag,
	bne	.L718	@,
	b	.L659	@
.L763:
	add	r8, r6, #73728	@ D.42788, pSmInstArray,
	add	r8, r8, #192	@ D.42788, D.42788,
	cmp	r8, #0	@ D.42788,
	beq	.L720	@,
	movw	fp, #:lower16:166104	@ tmp430,
	movt	fp, #:upper16:166104	@ tmp430,
	movw	sl, #:lower16:166128	@ tmp427,
	movw	r3, #:lower16:166124	@ tmp428,
	ldr	lr, [r6, fp]	@ <variable>.StreamSegArray.SegBufPhyAddr, <variable>.StreamSegArray.SegBufPhyAddr
	movt	sl, #:upper16:166128	@ tmp427,
	movt	r3, #:upper16:166124	@ tmp428,
	movw	ip, #:lower16:166108	@ tmp433,
	movt	ip, #:upper16:166108	@ tmp433,
	ldr	fp, [r6, sl]	@ FreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	sl, [r6, r3]	@ FreshSize, <variable>.StreamSegArray.SegFreshSize
	str	lr, [sp, #32]	@ <variable>.StreamSegArray.SegBufPhyAddr,
	ldr	r0, [r6, ip]	@ <variable>.StreamSegArray.SegBufSize, <variable>.StreamSegArray.SegBufSize
	str	r0, [sp, #36]	@ <variable>.StreamSegArray.SegBufSize,
.L720:
	ldrsb	r2, [r6, #1]	@ <variable>.IsCounting, <variable>.IsCounting
	cmp	r2, #0	@ <variable>.IsCounting,
	bne	.L721	@,
	ldr	r0, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	add	r1, r0, r0, lsr #31	@, tmp439, SegBufTotalSize, SegBufTotalSize,
	cmp	sl, r1, asr #1	@ FreshSize, tmp439,
	bge	.L722	@,
	cmp	fp, #127	@ FreshNum,
	bgt	.L722	@,
	mov	r1, #1	@ tmp441,
	mov	r0, r4	@, NextInstId
	strb	r1, [r6, #1]	@ tmp441, <variable>.IsCounting
	bl	CalcInstBlockTime	@
	b	.L722	@
.L764:
	bl	OSAL_GetTimeInMs	@
	add	r4, r5, r4, asl #2	@, tmp469, tmp482, NextInstId,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp473,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp473,
	ldr	r2, [r4, #312]	@ tmp472, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r1, r2, r0	@ tmp471, tmp472, D.42821
	cmp	r1, ip	@ tmp471, g_TraceBsPeriod
	strhi	r0, [r4, #312]	@ D.42821, last_rec_pos_time
	movhi	r0, #0	@ D.42743,
	movls	r0, #0	@ D.42743,
	b	.L660	@
.L766:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L672	@,
	ldr	lr, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	lr, #0	@ SegBufTotalSize,
	add	r3, lr, #3	@ tmp226, SegBufTotalSize,
	movlt	lr, r3	@ SegBufTotalSize, tmp226
	cmp	sl, lr, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L672	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L672	@,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #4]	@,
	mvn	r1, #0	@,
	mov	r0, ip	@, temp.2873
	bl	ReleaseStreamSeg	@
	mov	r2, #0	@ tmp228,
	strb	r2, [r6, #0]	@ tmp228, <variable>.SegFullFlag
	strb	r2, [r6, #1]	@ tmp228, <variable>.IsCounting
	b	.L672	@
.L767:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L689	@,
	ldr	ip, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	ip, #0	@ SegBufTotalSize,
	add	r2, ip, #3	@ tmp293, SegBufTotalSize,
	movlt	ip, r2	@ SegBufTotalSize, tmp293
	cmp	sl, ip, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L689	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L689	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #4]	@,
	mvn	r1, #0	@,
	mov	r0, r3	@, temp.2907
	bl	ReleaseStreamSeg	@
	mov	r0, #0	@ tmp295,
	strb	r0, [r6, #0]	@ tmp295, <variable>.SegFullFlag
	strb	r0, [r6, #1]	@ tmp295, <variable>.IsCounting
	b	.L689	@
.L768:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	str	r3, [sp, #4]	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L706	@,
	ldr	r3, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	r3, #0	@ SegBufTotalSize,
	add	ip, r3, #3	@ tmp360, SegBufTotalSize,
	movlt	r3, ip	@ SegBufTotalSize, tmp360
	cmp	sl, r3, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L706	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L706	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #4]	@,
	mov	r0, r1	@, temp.2941
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r2, #0	@ tmp362,
	strb	r2, [r6, #0]	@ tmp362, <variable>.SegFullFlag
	strb	r2, [r6, #1]	@ tmp362, <variable>.IsCounting
	b	.L706	@
.L721:
	mov	r0, r4	@, NextInstId
	mov	r1, #0	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L722	@,
	ldr	ip, [sp, #36]	@ SegBufTotalSize, SegBufTotalSize
	cmp	ip, #0	@ SegBufTotalSize,
	add	lr, ip, #3	@ tmp446, SegBufTotalSize,
	movlt	ip, lr	@ SegBufTotalSize, tmp446
	cmp	sl, ip, asr #2	@ FreshSize, SegBufTotalSize,
	bge	.L722	@,
	cmp	fp, #63	@ FreshNum,
	bgt	.L722	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@, D.42788
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp448,
	strb	r3, [r6, #0]	@ tmp448, <variable>.SegFullFlag
	strb	r3, [r6, #1]	@ tmp448, <variable>.IsCounting
	b	.L722	@
.L765:
	mov	sl, r3	@ FreshSize, temp.2873
	mov	fp, r3	@ FreshNum, temp.2873
	b	.L675	@
.L664:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L661	@,
	mov	sl, #0	@ FreshSize,
	bl	vfmw_dprint_nothing	@
	mov	fp, sl	@ FreshNum, FreshSize
	b	.L671	@
.L683:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L680	@,
	bl	vfmw_dprint_nothing	@
	b	.L680	@
.L700:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L697	@,
	bl	vfmw_dprint_nothing	@
	b	.L697	@
.L761:
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L659	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ D.42743,
	b	.L660	@
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
.LFB1988:
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
	beq	.L778	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	mov	r1, #1	@,
	ldr	r2, [r4, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r2, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp149,
	str	r3, [r4, #328]	@ tmp149, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldreq	r5, [r4, #272]	@ prephitmp.2980, s_SmIIS.ThisInstID
	bne	.L779	@,
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.2980,
	ldr	lr, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L780	@,
.L774:
	ldr	r3, [r3, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L781	@,
.L775:
	mov	r0, r5	@, prephitmp.2980
	mov	r2, #0	@ tmp199,
	str	r2, [r4, #328]	@ tmp199, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L778:
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L777:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L779:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #272]	@ prephitmp.2980, s_SmIIS.ThisInstID
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp159,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp159,
	ldr	lr, [r4, #268]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	add	ip, r4, r5, asl #2	@, tmp155, tmp201, prephitmp.2980,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #332]	@ tmp158, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp157, tmp158, CurTimeInMs
	cmp	r1, r3	@ tmp157, g_TraceBsPeriod
	strhi	r0, [ip, #332]	@ CurTimeInMs, last_rec_pos_time
	add	ip, r4, r5, asl #2	@, tmp170, tmp201, prephitmp.2980,
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [ip, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	lr, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	bne	.L774	@,
.L780:
	mov	r2, #0	@ tmp182,
	movw	r0, #:lower16:g_TaskLock	@,
	str	r2, [r3, #276]	@ tmp182, s_SmIIS.SCDState
	movt	r0, #:upper16:g_TaskLock	@,
	str	r2, [r3, #328]	@ tmp182, s_SCDInISR
	bl	OSAL_SpinUnLockIRQ	@
	b	.L777	@
.L781:
	movw	r1, #:lower16:166252	@ tmp188,
	movt	r1, #:upper16:166252	@ tmp188,
	ldr	r6, [r0, r1]	@ <variable>.Mode, <variable>.Mode
	cmp	r6, #1	@ <variable>.Mode,
	beq	.L782	@,
.L776:
	add	r0, sp, #4	@,,
	mov	lr, #0	@ tmp191,
	str	lr, [r4, #276]	@ tmp191, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	movw	r6, #:lower16:.LANCHOR0	@ tmp190,
	movt	r6, #:upper16:.LANCHOR0	@ tmp190,
	cmp	r0, #0	@,
	bne	.L775	@,
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	mov	ip, #1	@ tmp196,
	str	ip, [r6, #276]	@ tmp196, s_SmIIS.SCDState
	str	r0, [r6, #272]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #280]	@, s_SmIIS.LastProcessTime
	b	.L775	@
.L782:
	bl	ProcessScdReturn	@
	b	.L776	@
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray,
	cmpne	r1, #0	@, pRawPacket,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	movne	r5, #0	@, tmp144
	moveq	r5, #1	@, tmp144
	mvneq	r0, #0	@ D.40056,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #:lower16:73732	@ tmp145,
	movt	r6, #:upper16:73732	@ tmp145,
	movw	r3, #:lower16:73736	@ tmp154,
	movt	r3, #:upper16:73736	@ tmp154,
	ldr	r2, [r4, r6]	@ D.40057, <variable>.Tail
	ldr	ip, [r4, r3]	@ <variable>.History, <variable>.History
	add	r3, r2, #1	@ tmp146, D.40057,
	mov	r0, r3, asr #31	@ tmp148, tmp146,
	mov	r0, r0, lsr #22	@ tmp149, tmp148,
	add	r3, r3, r0	@ tmp150, tmp146, tmp149
	mov	r3, r3, asl #22	@ tmp151, tmp150,
	mov	r3, r3, lsr #22	@ tmp151, tmp151,
	rsb	r3, r0, r3	@ tmp153, tmp149, tmp151
	cmp	r3, ip	@ tmp153, <variable>.History
	mvneq	r0, #3	@ D.40056,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	add	lr, r2, r2, asl #3	@, tmp158, D.40057, D.40057,
	mov	r2, #72	@,
	add	r0, r4, lr, asl #3	@,, pRawStreamArray, tmp158,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.Tail, <variable>.Tail
	mov	r0, r5	@ D.40056, tmp144
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
.LFB1960:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r1, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, r3, r0, asl #2	@, tmp142, tmp138, SmID,
	cmp	ip, #0	@ <variable>.PhyAddr,
	ldr	r0, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bne	.L791	@,
.L789:
	mvn	r0, #0	@,
	bx	lr	@
.L791:
	ldr	ip, [r1, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L789	@,
	cmp	r0, #0	@ pSmInstArray,
	beq	.L789	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
.LFB1983:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r6, #:lower16:.LANCHOR0	@ tmp335,
	movt	r6, #:upper16:.LANCHOR0	@ tmp335,
	.pad #92
	sub	sp, sp, #92	@,,
	add	r3, r6, r0, asl #2	@, tmp159, tmp335, InstID,
	add	r7, sp, #16	@ tmp336,,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r7	@, tmp336
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L814	@,
	ldr	r0, [r4, #56]	@ <variable>.Config.VidStd, <variable>.Config.VidStd
	cmp	r0, #18	@ <variable>.Config.VidStd,
	beq	.L814	@,
	ldr	r3, [r4, #84]	@ D.42285, <variable>.Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.42285,
	beq	.L814	@,
	cmp	r3, #2	@ D.42285,
	beq	.L819	@,
.L816:
	add	r2, r6, r5, asl #2	@, tmp345, tmp335, InstID,
	movw	r8, #:lower16:180108	@ tmp342,
	movw	r6, #:lower16:180104	@ tmp341,
	movw	r9, #:lower16:g_TraceBsPeriod	@ tmp347,
	movw	sl, #:lower16:save_str_chan_num	@ tmp348,
	movt	r6, #:upper16:180104	@ tmp341,
	movt	r8, #:upper16:180108	@ tmp342,
	movt	r9, #:upper16:g_TraceBsPeriod	@ tmp347,
	movt	sl, #:upper16:save_str_chan_num	@ tmp348,
	add	r0, r2, #348	@, tmp345,
	movw	r3, #:lower16:180112	@,
	movw	r1, #:lower16:vfmw_save_str_file	@,
	movt	r3, #:upper16:180112	@,
	movt	r1, #:upper16:vfmw_save_str_file	@,
	str	r0, [sp, #8]	@, %sfp
	str	r3, [sp, #4]	@, %sfp
	str	r1, [sp, #12]	@, %sfp
.L818:
	ldr	lr, [r4, #92]	@ <variable>.Config.ScdLowBufEnable, <variable>.Config.ScdLowBufEnable
	cmp	lr, #0	@ <variable>.Config.ScdLowBufEnable,
	beq	.L803	@,
	mov	r0, r5	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L814	@,
.L803:
	mov	r0, r5	@, InstID
	bl	GetRawState	@
	cmp	r0, #0	@,
	bne	.L804	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L814	@,
	ldr	r1, [r4, #80]	@ prephitmp.3064, <variable>.Config.LastRawDisContinueCount
	cmn	r1, #1	@ prephitmp.3064,
	ldreq	r1, [sp, #64]	@ prephitmp.3064, RawPacket.discontinue_count
	streq	r1, [r4, #80]	@ prephitmp.3064, <variable>.Config.LastRawDisContinueCount
	ldr	ip, [sp, #64]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	ip, r1	@ RawPacket.discontinue_count, prephitmp.3064
	beq	.L806	@,
	ldr	r3, [r4, #56]	@ D.42377, <variable>.Config.VidStd
	cmp	r3, #3	@ D.42377,
	cmpne	r3, #1	@, D.42377,
	beq	.L820	@,
.L806:
	ldr	lr, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	ldr	r2, [sp, #24]	@ RawPacket.Length, RawPacket.Length
	add	fp, r2, lr	@ tmp261, RawPacket.Length, <variable>.TotalRawSize
	str	fp, [r4, r6]	@ tmp261, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r4, r8]	@ temp.3082, <variable>.LastStatTime
	cmp	r1, #0	@ temp.3082,
	mov	fp, r0	@ ThisTime.3081,
	streq	r0, [r4, r8]	@ ThisTime.3081, <variable>.LastStatTime
	beq	.L808	@,
	rsb	r1, r1, r0	@ TimePeriod.3083, temp.3082, ThisTime.3081
	cmp	r1, #2000	@ TimePeriod.3083,
	bls	.L808	@,
	ldr	r0, [r4, r6]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	mov	r0, r0, asl #3	@, <variable>.TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r2, #1000	@ tmp273,
	mov	ip, #0	@ tmp276,
	str	fp, [r4, r8]	@ ThisTime.3081, <variable>.LastStatTime
	str	ip, [r4, r6]	@ tmp276, <variable>.TotalRawSize
	ldr	ip, [sp, #4]	@, %sfp
	mul	r3, r2, r0	@ tmp272, tmp273,
	mov	r1, r3, lsr #10	@ tmp274, tmp272,
	str	r1, [r4, ip]	@ tmp274, <variable>.BitRate
.L808:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r0, [sp, #32]	@ RawPacket.Pts,,
	mvn	r2, #0	@ tmp279,
	mov	r3, #0	@,
	cmp	r1, r3	@ RawPacket.Pts, tmp279
	cmpeq	r0, r2	@ RawPacket.Pts, tmp279
	beq	.L821	@,
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L804	@,
.L810:
	mov	lr, #1	@ tmp282,
	strb	lr, [r4, #4]	@ tmp282, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L822	@,
.L811:
	ldr	r0, [sl, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	bne	.L818	@,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	lr, [r1, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L818	@,
	ldr	fp, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, fp, #10	@ tmp303, eStd,
	cmp	fp, #4	@ eStd,
	cmpne	r3, #3	@, tmp303,
	bls	.L812	@,
	cmp	fp, #14	@ eStd,
	cmpne	fp, #17	@, eStd,
	beq	.L812	@,
	cmp	fp, #8	@ eStd,
	cmpne	fp, #9	@, eStd,
	beq	.L812	@,
	cmp	fp, #5	@ eStd,
	beq	.L812	@,
	cmp	fp, #1	@ eStd,
	bne	.L813	@,
	ldr	r2, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L813	@,
.L812:
	ldr	ip, [sp, #12]	@, %sfp
	add	r0, r7, #8	@, tmp336,
	mov	r1, #4	@,
	ldr	r2, [ip, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
.L813:
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r0, [sp, #20]	@, RawPacket.VirAddr
	ldr	r1, [sp, #24]	@, RawPacket.Length
	ldr	r2, [lr, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L818	@
.L822:
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r3, [r9, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [ip, #0]	@ tmp290, last_rec_pos_time
	rsb	r1, r2, r0	@ tmp289, tmp290, ThisTime.3090
	cmp	r1, r3	@ tmp289, g_TraceBsPeriod
	ldrhi	r1, [sp, #8]	@, %sfp
	strhi	r0, [r1, #0]	@ ThisTime.3090, last_rec_pos_time
	b	.L811	@
.L821:
	mov	r0, r5	@, InstID
	mov	r1, r7	@, tmp336
	mvn	r2, #0	@ tmp280,
	mvn	r3, #0	@,
	strd	r2, [sp, #32]	@ tmp280,,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	beq	.L810	@,
.L804:
	bl	vfmw_dprint_nothing	@
.L814:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L819:
	movw	r8, #:lower16:180104	@ tmp163,
	movt	r8, #:upper16:180104	@ tmp163,
	ldr	r2, [r4, #104]	@ <variable>.Config.DisContinueRawPacket.Length, <variable>.Config.DisContinueRawPacket.Length
	movw	sl, #:lower16:180108	@ tmp168,
	ldr	r9, [r4, r8]	@ <variable>.TotalRawSize, <variable>.TotalRawSize
	movt	sl, #:upper16:180108	@ tmp168,
	add	r1, r2, r9	@ tmp167, <variable>.Config.DisContinueRawPacket.Length, <variable>.TotalRawSize
	str	r1, [r4, r8]	@ tmp167, <variable>.TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, sl]	@ D.42294, <variable>.LastStatTime
	cmp	r3, #0	@ D.42294,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r4, sl]	@ ThisTime, <variable>.LastStatTime
	beq	.L796	@,
	rsb	r1, r3, r0	@ TimePeriod, D.42294, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L796	@,
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
.L796:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r0, [r4, #112]	@ <variable>.Config.DisContinueRawPacket.Pts, pSmInstArray,
	mvn	r2, #0	@ tmp185,
	mov	r3, #0	@,
	cmp	r1, r3	@ <variable>.Config.DisContinueRawPacket.Pts, tmp185
	cmpeq	r0, r2	@ <variable>.Config.DisContinueRawPacket.Pts, tmp185
	beq	.L823	@,
.L797:
	mov	r0, r5	@, InstID
	add	r1, r4, #96	@, pSmInstArray,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L804	@,
	mov	r8, #1	@ tmp188,
	strb	r8, [r4, #4]	@ tmp188, <variable>.FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L824	@,
.L799:
	movw	r2, #:lower16:save_str_chan_num	@ tmp204,
	movt	r2, #:upper16:save_str_chan_num	@ tmp204,
	ldr	r0, [r2, #0]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r0	@ InstID, save_str_chan_num
	beq	.L825	@,
.L800:
	ldr	r8, [r4, #144]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.DisContinueRawPacket.discontinue_count
	mov	ip, #0	@ tmp241,
	str	ip, [r4, #84]	@ tmp241, <variable>.Config.DisContinueRawPacketFlag
	str	r8, [r4, #80]	@ <variable>.Config.DisContinueRawPacket.discontinue_count, <variable>.Config.LastRawDisContinueCount
	b	.L816	@
.L820:
	mov	r1, r7	@, tmp336
	add	r0, r4, #96	@, pSmInstArray,
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #1	@ tmp256,
	str	r0, [r4, #84]	@ tmp256, <variable>.Config.DisContinueRawPacketFlag
	bl	vfmw_dprint_nothing	@
	b	.L814	@
.L823:
	mvn	r2, #0	@ tmp186,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp186, pSmInstArray,
	b	.L797	@
.L824:
	bl	OSAL_GetTimeInMs	@
	add	sl, r6, r5, asl #2	@, tmp193, tmp335, InstID,
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp197,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp197,
	ldr	r1, [sl, #348]	@ tmp196, last_rec_pos_time
	ldr	ip, [r3, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r9, r1, r0	@ tmp195, tmp196, ThisTime.3076
	cmp	r9, ip	@ tmp195, g_TraceBsPeriod
	strhi	r0, [sl, #348]	@ ThisTime.3076, last_rec_pos_time
	b	.L799	@
.L825:
	movw	r8, #:lower16:vfmw_save_str_file	@ tmp338,
	movt	r8, #:upper16:vfmw_save_str_file	@ tmp338,
	ldr	lr, [r8, #0]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	lr, #0	@ vfmw_save_str_file,
	beq	.L800	@,
	ldr	sl, [r4, #56]	@ eStd, <variable>.Config.VidStd
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	sub	r9, sl, #10	@ tmp209, eStd,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	sl, #4	@ eStd,
	cmpne	r9, #3	@, tmp209,
	bls	.L801	@,
	cmp	sl, #14	@ eStd,
	cmpne	sl, #17	@, eStd,
	beq	.L801	@,
	cmp	sl, #8	@ eStd,
	cmpne	sl, #9	@, eStd,
	beq	.L801	@,
	cmp	sl, #5	@ eStd,
	beq	.L801	@,
	cmp	sl, #1	@ eStd,
	beq	.L826	@,
.L802:
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	ldr	r0, [r4, #100]	@, <variable>.Config.DisContinueRawPacket.VirAddr
	ldr	r1, [r4, #104]	@, <variable>.Config.DisContinueRawPacket.Length
	bl	klib_fwrite	@
	movw	r0, #:lower16:g_TaskLock	@,
	movt	r0, #:upper16:g_TaskLock	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L800	@
.L826:
	ldr	sl, [r4, #72]	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile, <variable>.Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	sl, #1	@ <variable>.Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L802	@,
.L801:
	add	r0, r4, #104	@, pSmInstArray,
	mov	r1, #4	@,
	ldr	r2, [r8, #0]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L802	@
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
.LFB1989:
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
	mov	r0, r3	@ NextInstID.737, tmp140
	str	r3, [sp, #4]	@ tmp140, NextInstID
	b	.L829	@
.L828:
	ldr	r0, [sp, #4]	@ NextInstID.3126, NextInstID
	add	r0, r0, #1	@ NextInstID.737, NextInstID.3126,
	str	r0, [sp, #4]	@ NextInstID.737, NextInstID
	cmp	r0, #3	@ NextInstID.737,
	bgt	.L835	@,
.L829:
	add	r1, r4, r0, asl #2	@, tmp145, tmp164, NextInstID.737,
	ldr	r3, [r1, #236]	@ D.42883, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42883,
	beq	.L828	@,
	ldr	r2, [r3, r5]	@ <variable>.Mode, <variable>.Mode
	cmp	r2, #1	@ <variable>.Mode,
	bne	.L828	@,
	bl	FillRawData	@
	ldr	r0, [sp, #4]	@ NextInstID.3126, NextInstID
	add	r0, r0, #1	@ NextInstID.737, NextInstID.3126,
	str	r0, [sp, #4]	@ NextInstID.737, NextInstID
	cmp	r0, #3	@ NextInstID.737,
	ble	.L829	@,
.L835:
	ldr	ip, [r4, #276]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	cmp	ip, #0	@ s_SmIIS.SCDState,
	bne	.L830	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L836	@,
.L833:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L830:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #280]	@ D.42899, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.42899
	strcc	r0, [r4, #280]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L833	@,
	rsb	r1, r3, r0	@ tmp159, D.42899, CurTime
	cmp	r1, #2000	@ tmp159,
	bls	.L833	@,
	bl	vfmw_dprint_nothing	@
	bl	ResetSCD	@
	ldr	r0, [r4, #272]	@, s_SmIIS.ThisInstID
	mov	r2, #0	@ tmp161,
	str	r2, [r4, #276]	@ tmp161, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	b	.L833	@
.L836:
	ldr	lr, [sp, #4]	@ NextInstID, NextInstID
	mov	r3, #1	@ tmp155,
	str	r3, [r4, #276]	@ tmp155, s_SmIIS.SCDState
	str	lr, [r4, #272]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #280]	@, s_SmIIS.LastProcessTime
	b	.L833	@
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
.LFB1986:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp211,
	movt	r2, #:upper16:.LANCHOR0	@ tmp211,
	add	r3, r2, r0, asl #2	@, tmp215, tmp211, ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r4, [r3, #236]	@ pSmInstArray, s_SmIIS.pSmInstArray
	.pad #52
	sub	sp, sp, #52	@,,
	cmp	r4, #0	@ pSmInstArray,
	str	r0, [sp, #12]	@ ChanID, %sfp
	str	r1, [sp, #16]	@ pArgs, %sfp
	mvneq	r0, #0	@ D.42553,
	bne	.L923	@,
.L839:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L923:
	ldr	r1, [sp, #16]	@, %sfp
	movw	r2, #:lower16:166144	@ tmp218,
	movt	r2, #:upper16:166144	@ tmp218,
	ldr	r7, [sp, #16]	@, %sfp
	ldr	fp, [sp, #16]	@, %sfp
	movw	r5, #:lower16:166088	@ tmp222,
	ldrd	r0, [r1]	@,
	movt	r5, #:upper16:166088	@ tmp222,
	add	r8, r4, #73728	@ pStreamSegArray, pSmInstArray,
	movw	r3, #:lower16:166096	@ tmp221,
	movt	r3, #:upper16:166096	@ tmp221,
	add	r8, r8, #192	@ pStreamSegArray, pStreamSegArray,
	strd	r0, [sp]	@, %sfp
	ldr	r9, [r4, r2]	@, <variable>.SmPushRaw.PushRawOver
	cmp	r9, #1	@,
	str	r9, [sp, #20]	@, %sfp
	ldrd	r6, [r7, #8]	@,,
	moveq	r9, #3	@ tmp220,
	strd	r6, [sp, #32]	@,,
	ldrd	sl, [fp, #16]	@,,
	strd	sl, [sp, #24]	@,,
	movw	sl, #:lower16:954437177	@ tmp634,
	streq	r9, [r4, r2]	@ tmp220, <variable>.SmPushRaw.PushRawOver
	movw	r9, #:lower16:166092	@ tmp225,
	movt	r9, #:upper16:166092	@ tmp225,
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.Head
	movt	sl, #:upper16:954437177	@ tmp634,
	mov	fp, r3	@ tmp638, tmp221
	ldr	r7, [r4, r9]	@ prephitmp.3142, <variable>.StreamSegArray.Tail
	mov	r5, ip	@ i.3213, <variable>.StreamSegArray.Head
	str	ip, [r4, r3]	@ <variable>.StreamSegArray.Head, <variable>.StreamSegArray.History
.L914:
	cmp	r5, r7	@ i.3213, prephitmp.3142
	mov	r6, r5, asl #2	@ tmp590, i.3213,
	mov	r1, r5	@, i.3213
	mov	r0, r8	@, pStreamSegArray
	add	r3, r6, r5	@ tmp267, tmp590, i.3213
	beq	.L924	@,
.L841:
	add	r3, r4, r3, asl #4	@, tmp269, pSmInstArray, tmp267,
	movw	ip, #:lower16:73960	@ tmp272,
	add	r2, r3, #73728	@ tmp278, tmp269,
	movt	ip, #:upper16:73960	@ tmp272,
	add	r3, r2, #200	@ tmp270, tmp270,
	add	r2, r2, #232	@ tmp278, tmp278,
	ldrsb	r3, [r3, #4]	@ <variable>.SegState, <variable>.SegState
	cmp	r3, #1	@ <variable>.SegState,
	bne	.L844	@,
	ldrd	r2, [r2]	@ D.42583, <variable>.RawPts
	mvn	r0, #0	@,
	mvn	r1, #0	@,
	cmp	r3, r1	@ D.42583,
	cmpeq	r2, r0	@ D.42583,
	beq	.L925	@,
	add	r0, r5, #1	@, i.3213,
	str	r0, [sp, #40]	@, %sfp
	ldrd	r0, [sp]	@, %sfp
	cmp	r1, r3	@, D.42583
	cmpeq	r0, r2	@, D.42583
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	smull	r1, r2, sl, r1	@, tmp289, tmp634,
	mov	r3, r0, asr #31	@ tmp292,,
	bls	.L847	@,
	rsb	r3, r3, r2, asr #8	@, i.3213, tmp292, tmp289,
	ldr	r7, [r4, r9]	@ prephitmp.3142, <variable>.StreamSegArray.Tail
	str	r5, [r4, fp]	@ i.3213, <variable>.StreamSegArray.History
	add	r2, r3, r3, asl #3	@, tmp295, i.3213, i.3213,
	sub	r5, r0, r2, asl #7	@ i.3213,, tmp295,
	mov	r0, r8	@, pStreamSegArray
	cmp	r5, r7	@ i.3213, prephitmp.3142
	mov	r6, r5, asl #2	@ tmp590, i.3213,
	mov	r1, r5	@, i.3213
	add	r3, r6, r5	@ tmp267, tmp590, i.3213
	bne	.L841	@,
.L924:
	movw	r0, #:lower16:166088	@ tmp226,
	movt	r0, #:upper16:166088	@ tmp226,
	ldr	r6, [r4, r0]	@ j, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3213, j
	beq	.L842	@,
	movw	r7, #:lower16:166124	@ tmp616,
	movw	r5, #:lower16:166128	@ tmp618,
	movw	r9, #:lower16:954437177	@ tmp619,
	movw	sl, #:lower16:166092	@ tmp620,
	movt	r7, #:upper16:166124	@ tmp616,
	movt	r5, #:upper16:166128	@ tmp618,
	movt	r9, #:upper16:954437177	@ tmp619,
	movt	sl, #:upper16:166092	@ tmp620,
	mov	fp, #2	@ tmp615,
.L917:
	add	ip, r6, r6, asl #2	@, tmp230, j, j,
	mov	r1, r6	@, j
	add	r6, r6, #1	@ D.42578, j,
	mov	r0, r8	@, pStreamSegArray
	add	r2, r4, ip, asl #4	@, tmp232, pSmInstArray, tmp230,
	add	r3, r2, #73728	@ tmp243, tmp232,
	add	r2, r3, #200	@ tmp233, tmp233,
	add	lr, r3, #208	@ tmp243, tmp243,
	strb	fp, [r2, #4]	@ tmp12, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r2, [r4, r7]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	ldr	ip, [r4, r5]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	rsb	lr, r3, r2	@ D.42572, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, ip, #1	@ D.42574, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp251, D.42572
	bic	lr, ip, ip, asr #31	@ tmp253, D.42574
	str	r3, [r4, r7]	@ tmp251, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r5]	@ tmp253, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r1, r9, r6	@, tmp254, tmp619, D.42578
	mov	r2, r6, asr #31	@ tmp257, D.42578,
	ldr	ip, [r4, sl]	@ <variable>.StreamSegArray.Tail, <variable>.StreamSegArray.Tail
	rsb	r3, r2, r1, asr #8	@, j, tmp257, tmp254,
	add	r1, r3, r3, asl #3	@, tmp260, j, j,
	sub	r6, r6, r1, asl #7	@ j, D.42578, tmp260,
	cmp	ip, r6	@ <variable>.StreamSegArray.Tail, j
	bne	.L917	@,
.L842:
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	movw	r3, #:lower16:73896	@ tmp408,
	movw	r0, #:lower16:73900	@ tmp409,
	movt	r3, #:upper16:73896	@ tmp408,
	movt	r0, #:upper16:73900	@ tmp409,
	add	r1, r4, #168	@, pSmInstArray,
	str	r1, [sp, #40]	@, %sfp
	movw	r7, #:lower16:73896	@ tmp412,
	ldr	r1, [r4, r3]	@ D.42612, <variable>.RawPacketArray.Head
	movt	r7, #:upper16:73896	@ tmp412,
	ldr	r9, [r4, r0]	@ D.42613, <variable>.RawPacketArray.Tail
	movw	r2, #:lower16:73904	@ tmp411,
	movt	r2, #:upper16:73904	@ tmp411,
	ldr	r3, [r4, r7]	@ i, <variable>.RawPacketArray.Head
	cmp	r1, r9	@ D.42612, D.42613
	mvn	r6, #0	@ tmp611,
	addgt	r9, r9, #1024	@ tmp410, D.42613,
	mvn	r7, #0	@,
	rsb	fp, r1, r9	@ iftmp.711, D.42612, tmp410
	movw	r9, #:lower16:73900	@ tmp413,
	movt	r9, #:upper16:73900	@ tmp413,
	str	r1, [r4, r2]	@ D.42612, <variable>.RawPacketArray.History
	ldr	ip, [r4, r9]	@ prephitmp.3147, <variable>.RawPacketArray.Tail
	str	fp, [sp, #44]	@ iftmp.711, %sfp
.L915:
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	cmp	r3, ip	@ i, prephitmp.3147
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	beq	.L926	@,
.L858:
	ldrd	r0, [r2, #184]	@ temp.3192, tmp423,
	add	r8, r2, #184	@ tmp424, tmp423,
	cmp	r1, r7	@ temp.3192, tmp611
	cmpeq	r0, r6	@ temp.3192, tmp611
	beq	.L927	@,
	ldrd	sl, [sp]	@, %sfp
	add	r2, r3, #1	@ temp.3194, i,
	cmp	fp, r1	@, temp.3192
	cmpeq	sl, r0	@, temp.3192
	mov	r5, r2, asr #31	@ tmp433, temp.3194,
	bls	.L865	@,
	mov	r5, r5, lsr #22	@ tmp434, tmp433,
	movw	ip, #:lower16:73904	@,
	add	lr, r2, r5	@ tmp435, temp.3194, tmp434
	movt	ip, #:upper16:73904	@,
	mov	r0, lr, asl #22	@ tmp436, tmp435,
	str	r3, [r4, ip]	@ i, <variable>.RawPacketArray.History
	ldr	ip, [r4, r9]	@ prephitmp.3147, <variable>.RawPacketArray.Tail
	mov	r2, r0, lsr #22	@ tmp436, tmp436,
	rsb	r3, r5, r2	@ i, tmp434, tmp436
	cmp	r3, ip	@ i, prephitmp.3147
	add	lr, r3, r3, asl #3	@, tmp421, i, i,
	add	r2, r4, lr, asl #3	@, tmp423, pSmInstArray, tmp421,
	bne	.L858	@,
.L926:
	movw	ip, #:lower16:73896	@ tmp414,
	movt	ip, #:upper16:73896	@ tmp414,
	ldr	fp, [sp, #44]	@ iftmp.711, %sfp
	ldr	r2, [r4, ip]	@ temp.3170, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3170
	rsblt	r1, r2, #1024	@ tmp415, temp.3170,
	rsbge	r1, r2, r3	@ DelNum.3165, temp.3170, i
	addlt	r1, r1, r3	@ DelNum.3165, tmp415, i
	cmp	r1, #0	@ DelNum.3165,
	movweq	r3, #:lower16:73904	@ tmp416,
	movteq	r3, #:upper16:73904	@ tmp416,
	streq	r2, [r4, r3]	@ temp.3170, <variable>.RawPacketArray.History
	bne	.L928	@,
.L862:
	ldrd	r0, [sp, #24]	@,,
	mov	r2, fp	@ RawNumInVfmw, iftmp.711
	mov	r3, r2, asr #31	@ RawNumInVfmw
	cmp	r1, r3	@, RawNumInVfmw
	cmpeq	r0, r2	@, RawNumInVfmw
	bls	.L929	@,
	ldrd	r6, [sp, #24]	@,,
	movw	r0, #1023	@ tmp503,
	mov	r1, #0	@,
	subs	r2, r6, r2	@ RawNumToSeek,, RawNumInVfmw
	sbc	r3, r7, r3	@ RawNumToSeek,, RawNumInVfmw
	and	r1, r1, r3	@,, RawNumToSeek
	and	r0, r0, r2	@ tmp502, tmp503, RawNumToSeek
	mov	lr, r2, lsr #10	@ tmp582, RawNumToSeek,
	orrs	r7, r0, r1	@, tmp502
	orr	ip, lr, r3, asl #22	@, tmp645, tmp582, RawNumToSeek,
	addne	ip, ip, #1	@ SeekTime, tmp645,
	add	r1, ip, #1	@, SeekTime,
	str	r1, [sp, #44]	@, %sfp
	cmp	r1, #0	@,
	ble	.L881	@,
	movw	r5, #:lower16:73904	@ tmp604,
	movw	fp, #:lower16:73900	@ tmp606,
	movt	r5, #:upper16:73904	@ tmp604,
	movt	fp, #:upper16:73900	@ tmp606,
	movw	r8, #:lower16:73896	@,
	mov	r9, #0	@,
	movt	r8, #:upper16:73896	@,
	str	r9, [sp, #24]	@, %sfp
	str	r8, [sp, #20]	@, %sfp
.L900:
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, [sp, #12]	@, %sfp
	bl	FillRawData	@
	ldr	sl, [sp, #20]	@, %sfp
	ldr	r0, [r4, fp]	@ prephitmp.3151, <variable>.RawPacketArray.Tail
	ldr	r2, [r4, sl]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r3, r2	@ i.3168, <variable>.RawPacketArray.Head
	str	r2, [r4, r5]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
.L916:
	add	ip, r3, r3, asl #3	@, tmp522, i.3168, i.3168,
	cmp	r3, r0	@ i.3168, prephitmp.3151
	add	r2, r4, ip, asl #3	@, tmp524, pSmInstArray, tmp522,
	beq	.L930	@,
.L882:
	ldrd	r8, [r2, #184]	@ D.42627, tmp524,
	mvn	r6, #0	@,
	mvn	r7, #0	@,
	add	sl, r2, #184	@ tmp525, tmp524,
	cmp	r9, r7	@ D.42627,
	cmpeq	r8, r6	@ D.42627,
	beq	.L931	@,
	ldrd	r6, [sp]	@, %sfp
	add	r1, r3, #1	@ temp.3178, i.3168,
	cmp	r7, r9	@, D.42627
	cmpeq	r6, r8	@, D.42627
	mov	ip, r1, asr #31	@ tmp534, temp.3178,
	bls	.L889	@,
	mov	ip, ip, lsr #22	@ tmp535, tmp534,
	str	r3, [r4, r5]	@ i.3168, <variable>.RawPacketArray.History
	add	r2, r1, ip	@ tmp536, temp.3178, tmp535
	ldr	r0, [r4, fp]	@ prephitmp.3151, <variable>.RawPacketArray.Tail
	mov	r3, r2, asl #22	@ tmp537, tmp536,
	mov	lr, r3, lsr #22	@ tmp537, tmp537,
	rsb	r3, ip, lr	@ i.3168, tmp535, tmp537
	cmp	r3, r0	@ i.3168, prephitmp.3151
	add	ip, r3, r3, asl #3	@, tmp522, i.3168, i.3168,
	add	r2, r4, ip, asl #3	@, tmp524, pSmInstArray, tmp522,
	bne	.L882	@,
.L930:
	ldr	lr, [sp, #20]	@, %sfp
	ldr	r2, [r4, lr]	@ temp.3174, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i.3168, temp.3174
	rsblt	r1, r2, #1024	@ tmp516, temp.3174,
	rsbge	r1, r2, r3	@ DelNum, temp.3174, i.3168
	addlt	r1, r3, r1	@ DelNum, i.3168, tmp516
	cmp	r1, #0	@ DelNum,
	streq	r2, [r4, r5]	@ temp.3174, <variable>.RawPacketArray.History
	bne	.L932	@,
.L886:
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r3, [sp, #44]	@, %sfp
	add	r0, r2, #1	@,,
	str	r0, [sp, #24]	@, %sfp
	cmp	r0, r3	@,
	blt	.L900	@,
.L881:
	mvn	r0, #1	@ D.42553,
	b	.L839	@
.L844:
	add	r5, r5, #1	@ temp.3243, i.3213,
	bl	ReleaseStreamSeg	@
	ldr	r7, [r4, r9]	@ prephitmp.3142, <variable>.StreamSegArray.Tail
	smull	r3, ip, sl, r5	@, tmp399, tmp634, temp.3243
	mov	r3, r5, asr #31	@ tmp402, temp.3243,
	rsb	r0, r3, ip, asr #8	@, i.3213, tmp402, tmp399,
	add	r6, r0, r0, asl #3	@, tmp405, i.3213, i.3213,
	sub	r5, r5, r6, asl #7	@ i.3213, temp.3243, tmp405,
	b	.L914	@
.L865:
	beq	.L933	@,
	bcs	.L915	@,
	movw	r2, #:lower16:73904	@ tmp458,
	movt	r2, #:upper16:73904	@ tmp458,
	mvn	r6, #0	@ tmp425,
	mov	ip, r8	@ tmp424, tmp424
	ldr	r1, [r4, r2]	@ i.3201, <variable>.RawPacketArray.History
	add	sl, r1, r1, asl #3	@, tmp462, i.3201, i.3201,
	add	r7, r4, sl, asl #3	@, tmp464, pSmInstArray, tmp462,
	ldrd	sl, [r7, #184]	@ prephitmp.3145, tmp464,
	mvn	r7, #0	@,
	cmp	fp, r7	@ prephitmp.3145, tmp425
	cmpeq	sl, r6	@ prephitmp.3145, tmp425
	beq	.L920	@,
	ldrd	r8, [sp]	@, %sfp
	cmp	r9, fp	@, prephitmp.3145
	cmpeq	r8, sl	@, prephitmp.3145
	bls	.L873	@,
	ldrd	r6, [sp, #32]	@,,
	subs	r8, r8, sl	@,, prephitmp.3145
	sbc	r9, r9, fp	@,, prephitmp.3145
	cmp	r7, r9	@,
	cmpeq	r6, r8	@,
	bcs	.L873	@,
.L920:
	str	r3, [r4, r2]	@ i, <variable>.RawPacketArray.History
	ldrd	sl, [ip]	@ prephitmp.3145, <variable>.Pts
.L872:
	movw	r2, #:lower16:73896	@ tmp484,
	movt	r2, #:upper16:73896	@ tmp484,
	ldr	r0, [r4, r2]	@ temp.3203, <variable>.RawPacketArray.Head
	cmp	r3, r0	@ i, temp.3203
	rsblt	r0, r0, #1024	@ tmp485, temp.3203,
	rsbge	r3, r0, r3	@ DelNum.3164, temp.3203, i
	addlt	r3, r0, r3	@ DelNum.3164, tmp485, i
	cmp	r3, #0	@ DelNum.3164,
	beq	.L876	@,
	movw	r1, #:lower16:166136	@ tmp486,
	movt	r1, #:upper16:166136	@ tmp486,
	ldr	r7, [sp, #20]	@, %sfp
	ldr	r5, [r4, r1]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.3164, <variable>.SmPushRaw.PushRawNum
	cmple	r7, #1	@,,
	movne	r5, #0	@, tmp494
	moveq	r5, #1	@, tmp494
	bne	.L877	@,
.L876:
	ldr	r8, [sp, #16]	@, %sfp
	movw	r9, #:lower16:73896	@ tmp496,
	movt	r9, #:upper16:73896	@ tmp496,
	movw	r3, #:lower16:73904	@ tmp495,
	movw	lr, #:lower16:166144	@ tmp498,
	movt	r3, #:upper16:73904	@ tmp495,
	strd	sl, [r8]	@ prephitmp.3145,
	movt	lr, #:upper16:166144	@ tmp498,
	ldr	ip, [r4, r9]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.42553,
	ldr	r9, [sp, #20]	@, %sfp
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r9, [r4, lr]	@, <variable>.SmPushRaw.PushRawOver
	b	.L839	@
.L847:
	beq	.L934	@,
	bcs	.L914	@,
	movw	r3, #:lower16:166096	@ tmp342,
	movt	r3, #:upper16:166096	@ tmp342,
	mvn	r7, #0	@,
	ldr	r2, [r4, r3]	@ i.3230, <variable>.StreamSegArray.History
	add	r6, r2, r2, asl #2	@, tmp346, i.3230, i.3230,
	add	r1, r4, r6, asl #4	@, tmp348, pSmInstArray, tmp346,
	mvn	r6, #0	@ tmp279,
	ldrd	r0, [r1, ip]	@ D.42597, tmp348, tmp272
	cmp	r1, r7	@ D.42597, tmp279
	cmpeq	r0, r6	@ D.42597, tmp279
	beq	.L918	@,
	ldrd	r6, [sp]	@, %sfp
	cmp	r7, r1	@, D.42597
	cmpeq	r6, r0	@, D.42597
	bls	.L853	@,
	ldrd	sl, [sp, #32]	@,,
	subs	r0, r6, r0	@ tmp352,, D.42597
	sbc	r1, r7, r1	@ tmp352,, D.42597
	cmp	fp, r1	@, tmp352
	cmpeq	sl, r0	@, tmp352
	bcc	.L918	@,
.L853:
	mov	r5, r2	@ i.3213, i.3230
.L852:
	movw	r0, #:lower16:166088	@ tmp354,
	movt	r0, #:upper16:166088	@ tmp354,
	ldr	r6, [r4, r0]	@ j.3214, <variable>.StreamSegArray.Head
	cmp	r5, r6	@ i.3213, j.3214
	moveq	r2, r5	@ j.3216, i.3213
	beq	.L855	@,
	movw	sl, #:lower16:166124	@ tmp629,
	movw	r7, #:lower16:166128	@ tmp631,
	movw	fp, #:lower16:954437177	@ tmp632,
	movw	r9, #:lower16:166096	@ tmp633,
	movt	sl, #:upper16:166124	@ tmp629,
	movt	r7, #:upper16:166128	@ tmp631,
	movt	fp, #:upper16:954437177	@ tmp632,
	movt	r9, #:upper16:166096	@ tmp633,
	mov	r5, #2	@ tmp628,
.L907:
	add	ip, r6, r6, asl #2	@, tmp358, j.3214, j.3214,
	mov	r1, r6	@, j.3214
	add	r6, r6, #1	@ temp.3241, j.3214,
	mov	r0, r8	@, pStreamSegArray
	add	lr, r4, ip, asl #4	@, tmp360, pSmInstArray, tmp358,
	add	r3, lr, #73728	@ tmp371, tmp360,
	add	ip, r3, #200	@ tmp361, tmp361,
	add	lr, r3, #208	@ tmp371, tmp371,
	strb	r5, [ip, #4]	@ tmp628, <variable>.SegState
	ldr	r3, [lr, #4]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	ip, [r4, r7]	@ <variable>.StreamSegArray.SegFreshNum, <variable>.StreamSegArray.SegFreshNum
	ldr	r2, [r4, sl]	@ <variable>.StreamSegArray.SegFreshSize, <variable>.StreamSegArray.SegFreshSize
	rsb	lr, r3, r2	@ temp.3236, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	r2, ip, #1	@ temp.3238, <variable>.StreamSegArray.SegFreshNum,
	bic	r3, lr, lr, asr #31	@ tmp379, temp.3236
	bic	lr, r2, r2, asr #31	@ tmp381, temp.3238
	str	r3, [r4, sl]	@ tmp379, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, r7]	@ tmp381, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	ip, r1, fp, r6	@, tmp382, tmp632, temp.3241
	mov	r0, r6, asr #31	@ tmp385, temp.3241,
	ldr	r2, [r4, r9]	@ j.3216, <variable>.StreamSegArray.History
	rsb	ip, r0, r1, asr #8	@, j.3214, tmp385, tmp382,
	add	r3, ip, ip, asl #3	@, tmp388, j.3214, j.3214,
	sub	r6, r6, r3, asl #7	@ j.3214, temp.3241, tmp388,
	cmp	r2, r6	@ j.3216, j.3214
	bne	.L907	@,
.L855:
	add	r2, r2, r2, asl #2	@, tmp394, j.3216, j.3216,
	movw	r3, #:lower16:73960	@ tmp391,
	movt	r3, #:upper16:73960	@ tmp391,
	ldr	r1, [sp, #16]	@, %sfp
	add	r4, r4, r2, asl #4	@, tmp396, pSmInstArray, tmp394,
	mov	r0, #0	@ D.42553,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp391, tmp396
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L839	@
.L927:
	add	r3, r3, #1	@ temp.3193, i,
	mov	fp, r3, asr #31	@ tmp426, temp.3193,
	mov	r2, fp, lsr #22	@ tmp427, tmp426,
	add	lr, r3, r2	@ tmp428, temp.3193, tmp427
	mov	r0, lr, asl #22	@ tmp429, tmp428,
	mov	fp, r0, lsr #22	@ tmp429, tmp429,
	rsb	r3, r2, fp	@ i, tmp427, tmp429
	b	.L915	@
.L925:
	add	r5, r5, #1	@ temp.3212, i.3213,
	smull	r1, ip, sl, r5	@, tmp280, tmp634, temp.3212
	mov	r1, r5, asr #31	@ tmp283, temp.3212,
	rsb	r6, r1, ip, asr #8	@, i.3213, tmp283, tmp280,
	add	r0, r6, r6, asl #3	@, tmp286, i.3213, i.3213,
	sub	r5, r5, r0, asl #7	@ i.3213, temp.3212, tmp286,
	b	.L914	@
.L929:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.42553,
	b	.L839	@
.L928:
	movw	r3, #:lower16:73904	@ tmp417,
	movt	r3, #:upper16:73904	@ tmp417,
	ldr	r0, [sp, #40]	@, %sfp
	str	r2, [r4, r3]	@ temp.3170, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L862	@
.L918:
	str	r5, [r4, r3]	@ i.3213, <variable>.StreamSegArray.History
	b	.L852	@
.L889:
	beq	.L935	@,
	bcs	.L916	@,
	movw	r1, #:lower16:73904	@ tmp549,
	movt	r1, #:upper16:73904	@ tmp549,
	mvn	r7, #0	@,
	ldr	r0, [r4, r1]	@ i.3183, <variable>.RawPacketArray.History
	add	r8, r0, r0, asl #3	@, tmp553, i.3183, i.3183,
	add	r6, r4, r8, asl #3	@, tmp555, pSmInstArray, tmp553,
	ldrd	r8, [r6, #184]	@ prephitmp.3149, tmp555,
	mvn	r6, #0	@ tmp526,
	cmp	r9, r7	@ prephitmp.3149, tmp526
	cmpeq	r8, r6	@ prephitmp.3149, tmp526
	beq	.L936	@,
	ldrd	r6, [sp]	@, %sfp
	cmp	r7, r9	@, prephitmp.3149
	cmpeq	r6, r8	@, prephitmp.3149
	bls	.L896	@,
	ldrd	sl, [sp, #32]	@,,
	subs	r6, r6, r8	@ tmp566, tmp566, prephitmp.3149
	sbc	r7, r7, r9	@ tmp566, tmp566, prephitmp.3149
	cmp	fp, r7	@, tmp566
	cmpeq	sl, r6	@, tmp566
	bcs	.L896	@,
	str	r3, [r4, r1]	@ i.3168, <variable>.RawPacketArray.History
	ldrd	r8, [r2, #184]	@ prephitmp.3149, tmp524,
.L895:
	movw	lr, #:lower16:73896	@ tmp573,
	movt	lr, #:upper16:73896	@ tmp573,
	ldr	r1, [r4, lr]	@ temp.3184, <variable>.RawPacketArray.Head
	cmp	r3, r1	@ i.3168, temp.3184
	rsblt	r1, r1, #1024	@ tmp574, temp.3184,
	rsbge	r0, r1, r3	@ DelNum.3169, temp.3184, i.3168
	addlt	r0, r1, r3	@ DelNum.3169, tmp574, i.3168
	cmp	r0, #0	@ DelNum.3169,
	bne	.L899	@,
	ldr	fp, [sp, #16]	@, %sfp
	movw	r2, #:lower16:73896	@ tmp576,
	movt	r2, #:upper16:73896	@ tmp576,
	movw	r3, #:lower16:73904	@ tmp575,
	movt	r3, #:upper16:73904	@ tmp575,
	strd	r8, [fp]	@ prephitmp.3149,
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L839	@
.L931:
	add	r3, r3, #1	@ D.42586, i.3168,
	mov	r2, r3, asr #31	@ tmp527, D.42586,
	mov	r2, r2, lsr #22	@ tmp528, tmp527,
	add	lr, r3, r2	@ tmp529, D.42586, tmp528
	mov	ip, lr, asl #22	@ tmp530, tmp529,
	mov	r3, ip, lsr #22	@ tmp530, tmp530,
	rsb	r3, r2, r3	@ i.3168, tmp528, tmp530
	b	.L916	@
.L933:
	movw	lr, #:lower16:73896	@ tmp440,
	movt	lr, #:upper16:73896	@ tmp440,
	ldr	r2, [r4, lr]	@ temp.3195, <variable>.RawPacketArray.Head
	cmp	r3, r2	@ i, temp.3195
	rsblt	r2, r2, #1024	@ tmp441, temp.3195,
	rsbge	r3, r2, r3	@ DelNum.3166, temp.3195, i
	addlt	r3, r2, r3	@ DelNum.3166, tmp441, i
	cmp	r3, #0	@ DelNum.3166,
	beq	.L869	@,
	movw	r2, #:lower16:166136	@ tmp442,
	movt	r2, #:upper16:166136	@ tmp442,
	ldr	ip, [sp, #20]	@, %sfp
	ldr	r5, [r4, r2]	@ <variable>.SmPushRaw.PushRawNum, <variable>.SmPushRaw.PushRawNum
	cmp	r3, r5	@ DelNum.3166, <variable>.SmPushRaw.PushRawNum
	cmple	ip, #1	@,,
	movne	r5, #0	@, tmp450
	moveq	r5, #1	@, tmp450
	bne	.L870	@,
.L869:
	ldr	ip, [sp, #16]	@, %sfp
	movw	r6, #:lower16:73896	@ tmp452,
	movt	r6, #:upper16:73896	@ tmp452,
	movw	r3, #:lower16:73904	@ tmp451,
	movw	lr, #:lower16:166144	@ tmp454,
	movt	r3, #:upper16:73904	@ tmp451,
	strd	r0, [ip]	@ temp.3192,
	movt	lr, #:upper16:166144	@ tmp454,
	ldr	r1, [r4, r6]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	mov	r0, #0	@ D.42553,
	ldr	r6, [sp, #20]	@, %sfp
	str	r1, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	str	r6, [r4, lr]	@, <variable>.SmPushRaw.PushRawOver
	b	.L839	@
.L935:
	movw	lr, #:lower16:73896	@ tmp541,
	movt	lr, #:upper16:73896	@ tmp541,
	ldr	r1, [r4, lr]	@ temp.3179, <variable>.RawPacketArray.Head
	cmp	r1, r3	@ temp.3179, i.3168
	rsbgt	r1, r1, #1024	@ tmp542, temp.3179,
	rsble	r0, r1, r3	@ DelNum.3167, temp.3179, i.3168
	addgt	r0, r1, r3	@ DelNum.3167, tmp542, i.3168
	cmp	r0, #0	@ DelNum.3167,
	bne	.L893	@,
	ldr	r7, [sp, #16]	@, %sfp
	movw	r2, #:lower16:73896	@ tmp544,
	movt	r2, #:upper16:73896	@ tmp544,
	movw	r3, #:lower16:73904	@ tmp543,
	movt	r3, #:upper16:73904	@ tmp543,
	strd	r8, [r7]	@ D.42627,
	ldr	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	str	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	b	.L839	@
.L934:
	movw	ip, #:lower16:166088	@ tmp298,
	movt	ip, #:upper16:166088	@ tmp298,
	ldr	r7, [r4, ip]	@ j.3217, <variable>.StreamSegArray.Head
	cmp	r5, r7	@ i.3213, j.3217
	beq	.L849	@,
	movw	r9, #:lower16:166124	@ tmp623,
	movw	sl, #:lower16:166128	@ tmp625,
	movw	fp, #:lower16:954437177	@ tmp626,
	movt	r9, #:upper16:166124	@ tmp623,
	movt	sl, #:upper16:166128	@ tmp625,
	movt	fp, #:upper16:954437177	@ tmp626,
.L906:
	add	ip, r7, r7, asl #2	@, tmp302, j.3217, j.3217,
	mov	r1, r7	@, j.3217
	add	r7, r7, #1	@ temp.3228, j.3217,
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
	rsb	lr, r2, ip	@ temp.3223, <variable>.LenInByte, <variable>.StreamSegArray.SegFreshSize
	sub	ip, r3, #1	@ temp.3225, <variable>.StreamSegArray.SegFreshNum,
	bic	r2, lr, lr, asr #31	@ tmp323, temp.3223
	bic	lr, ip, ip, asr #31	@ tmp325, temp.3225
	str	r2, [r4, r9]	@ tmp323, <variable>.StreamSegArray.SegFreshSize
	str	lr, [r4, sl]	@ tmp325, <variable>.StreamSegArray.SegFreshNum
	bl	ReleaseStreamSeg	@
	smull	r0, r2, fp, r7	@, tmp326, tmp626, temp.3228
	mov	r3, r7, asr #31	@ tmp329, temp.3228,
	rsb	r0, r3, r2, asr #8	@, j.3217, tmp329, tmp326,
	add	r1, r0, r0, asl #3	@, tmp332, j.3217, j.3217,
	sub	r7, r7, r1, asl #7	@ j.3217, temp.3228, tmp332,
	cmp	r5, r7	@ i.3213, j.3217
	bne	.L906	@,
.L849:
	add	r5, r6, r5	@ tmp337, tmp590, i.3213
	movw	r3, #:lower16:73960	@ tmp334,
	movt	r3, #:upper16:73960	@ tmp334,
	ldr	r1, [sp, #16]	@, %sfp
	add	r4, r4, r5, asl #4	@, tmp339, pSmInstArray, tmp337,
	mov	r0, #0	@ D.42553,
	ldrd	r2, [r3, r4]	@ <variable>.RawPts, tmp334, tmp339
	strd	r2, [r1]	@ <variable>.RawPts,
	b	.L839	@
.L932:
	str	r2, [r4, r5]	@ temp.3174, <variable>.RawPacketArray.History
	ldr	r0, [sp, #40]	@, %sfp
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	b	.L886	@
.L873:
	mov	r3, r1	@ i, i.3201
	b	.L872	@
.L896:
	mov	r3, r0	@ i.3168, i.3183
	b	.L895	@
.L899:
	ldr	r1, [sp, #16]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp579,
	movt	r3, #:upper16:73896	@ tmp579,
	strd	r8, [r1]	@ prephitmp.3149,
.L921:
	ldr	ip, [r4, r3]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	movw	lr, #:lower16:73904	@ tmp578,
	movt	lr, #:upper16:73904	@ tmp578,
	mov	r1, r0	@, DelNum.3169
	ldr	r0, [sp, #40]	@, %sfp
	str	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.42553,
	b	.L839	@
.L893:
	ldr	sl, [sp, #16]	@, %sfp
	movw	r3, #:lower16:73896	@ tmp547,
	movt	r3, #:upper16:73896	@ tmp547,
	strd	r8, [sl]	@ D.42627,
	b	.L921	@
.L936:
	str	r3, [r4, r1]	@ i.3168, <variable>.RawPacketArray.History
	ldrd	r8, [sl]	@ prephitmp.3149, <variable>.Pts
	b	.L895	@
.L877:
	ldr	r2, [sp, #16]	@, %sfp
	movw	r0, #:lower16:73896	@ tmp500,
	movt	r0, #:upper16:73896	@ tmp500,
	strd	sl, [r2]	@ prephitmp.3145,
	movw	r2, #:lower16:73904	@ tmp499,
	ldr	ip, [r4, r0]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
.L922:
	movt	r2, #:upper16:73904	@ tmp499,
	mov	r1, r3	@, DelNum.3164
	ldr	r0, [sp, #40]	@, %sfp
	str	ip, [r4, r2]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, r5	@, tmp494
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@ D.42553, tmp494
	b	.L839	@
.L870:
	ldr	r7, [sp, #16]	@, %sfp
	movw	lr, #:lower16:73896	@ tmp456,
	movt	lr, #:upper16:73896	@ tmp456,
	movw	r2, #:lower16:73904	@ tmp455,
	strd	r0, [r7]	@ temp.3192,
	ldr	ip, [r4, lr]	@ <variable>.RawPacketArray.Head, <variable>.RawPacketArray.Head
	b	.L922	@
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	WriteCabacTabDsp
	.type	WriteCabacTabDsp, %function
WriteCabacTabDsp:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L940	@,
	movw	r1, #:lower16:g_CabacMN	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:g_CabacMN	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L940:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
.LFB1957:
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
	ldr	r3, [r5, #236]	@ D.40990, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40990,
	beq	.L942	@,
	ldr	r2, [r3, #64]	@ <variable>.Config.BufSize, <variable>.Config.BufSize
	cmp	r2, #0	@ <variable>.Config.BufSize,
	beq	.L942	@,
	movw	r0, #:lower16:166252	@ tmp143,
	movt	r0, #:upper16:166252	@ tmp143,
	ldr	r1, [r3, r0]	@ <variable>.Mode, <variable>.Mode
	cmp	r1, #0	@ <variable>.Mode,
	moveq	r1, #1	@ tmp146,
	streq	r1, [r3, r0]	@ tmp146, <variable>.Mode
.L942:
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
.LFB1918:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #:lower16:.LANCHOR0	@ tmp201,
	.pad #44
	sub	sp, sp, #44	@,,
	movt	r7, #:upper16:.LANCHOR0	@ tmp201,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r0, #20	@,
	mov	r4, #0	@ tmp150,
	movw	r3, #:lower16:269729792	@ tmp152,
	str	r4, [sp, #36]	@ tmp150, dataInt
	movt	r3, #:upper16:269729792	@ tmp152,
	str	r3, [r7, #288]	@ tmp152, s_RegPhyBaseAddr
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L958	@,
	mov	r1, sp	@,
	bic	sl, r1, #8128	@ tmp153,,
	bic	r0, sl, #63	@ tmp153, tmp153,
	cmp	r5, #6	@ eVidStd,
	ldr	r2, [r0, #8]	@, <variable>.addr_limit
	str	r2, [sp, #20]	@, %sfp
	str	r4, [r0, #8]	@ tmp150, <variable>.addr_limit
	beq	.L959	@,
	cmp	r5, #0	@ eVidStd,
	beq	.L960	@,
	mov	sl, r4	@ fp, tmp150
	bl	vfmw_dprint_nothing	@
.L948:
	mov	fp, sp	@,
	bic	r5, fp, #8128	@ tmp166,,
	bic	r8, r5, #63	@ tmp166, tmp166,
	add	r9, sp, #40	@,,
	mov	r4, #0	@ tmp168,
	mov	r2, #0	@ tmp169,
	str	r4, [r8, #8]	@ tmp168, <variable>.addr_limit
	mov	r5, r4	@ calbakBaseaddr, tmp168
	mov	r3, #0	@,
	mov	r4, #10	@ ivtmp.3325,
	strd	r2, [r9, #-16]!	@ tmp169,,
	add	fp, sp, #36	@ tmp205,,
	str	r9, [sp, #4]	@, %sfp
	b	.L951	@
.L953:
	ldrd	r8, [sp, #8]	@,,
	strd	r8, [sp, #24]	@,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L957	@,
	ldr	ip, [r7, #296]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #36]	@, dataInt
	add	r0, r5, ip	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L951:
	mov	r1, r6	@, data
	mov	r2, #10	@,
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, sl	@, fp
	bl	vfs_read	@
	mov	r8, r4	@, ivtmp.3325
	mov	r9, r8, asr #31	@
	strd	r8, [sp, #8]	@,,
	movw	r1, #:lower16:.LC4	@,
	mov	r2, fp	@, tmp205
	movt	r1, #:upper16:.LC4	@,
	add	r4, r4, #10	@ ivtmp.3325, ivtmp.3325,
	subs	r9, r0, #0	@ D.39972,
	mov	r0, r6	@, data
	bne	.L953	@,
	mov	r1, r9	@, D.39972
	mov	r0, sl	@, fp
	bl	filp_close	@
	ldr	r8, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #304]	@ g_hex_len, g_hex_len
	mov	r0, sp	@,
	bic	r3, r0, #8128	@ tmp178,,
	add	r0, r8, #264	@, s_RegPhyBaseAddr,
	ldr	r8, [sp, #20]	@, %sfp
	bic	ip, r3, #63	@ tmp178, tmp178,
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r8, [ip, #8]	@, <variable>.addr_limit
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r7, #296]	@, g_hex_base_addr
	add	r0, r2, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r9	@, D.39972
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r7, #288]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r3, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L954:
	movw	r0, #:lower16:269730052	@,
	movt	r0, #:upper16:269730052	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L954	@,
.L957:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L955:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L960:
	movw	r0, #:lower16:.LC2	@,
	mov	r1, r5	@, eVidStd
	movt	r0, #:upper16:.LC2	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L948	@,
	mov	r1, r5	@, eVidStd
	movw	r0, #:lower16:.LC3	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC3	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
	b	.L949	@
.L959:
	movw	r0, #:lower16:.LC0	@,
	mov	r1, r4	@, tmp150
	movt	r0, #:upper16:.LC0	@,
	movw	r2, #438	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	sl, r0	@ fp,
	bls	.L948	@,
	mov	r1, r4	@, tmp150
	movw	r0, #:lower16:.LC1	@,
	movw	r2, #438	@,
	movt	r0, #:upper16:.LC1	@,
	bl	filp_open	@
	mov	sl, r0	@ fp,
.L949:
	cmn	sl, #4096	@ fp,
	bls	.L948	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L955	@
.L958:
	bl	vfmw_dprint_nothing	@
	b	.L955	@
	.fnend
	.size	WriteHexFile, .-WriteHexFile
	.global	s_RegPhyBaseAddr
	.global	s_RegPhyBaseAddr_1
	.global	g_pSmIIS
	.global	g_hex_base_vir_addr
	.global	g_hex_base_addr
	.global	g_hex_len
	.global	s_SmIIS
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	CSWTCH.744, %object
	.size	CSWTCH.744, 44
CSWTCH.744:
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
	.type	s_RegPhyBaseAddr_1, %object
	.size	s_RegPhyBaseAddr_1, 4
s_RegPhyBaseAddr_1:
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
	.type	LastEventTime.41354, %object
	.size	LastEventTime.41354, 4
LastEventTime.41354:
	.space	4
	.type	last_rec_pos_time.42732, %object
	.size	last_rec_pos_time.42732, 16
last_rec_pos_time.42732:
	.space	16
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.42837, %object
	.size	last_rec_pos_time.42837, 16
last_rec_pos_time.42837:
	.space	16
	.type	last_rec_pos_time.42262, %object
	.size	last_rec_pos_time.42262, 16
last_rec_pos_time.42262:
	.space	16
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
