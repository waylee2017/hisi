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
	.file	"bitstream.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(bitstream)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.bitstream.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/bitstream.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/bitstream.o
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
	.global	ZerosMS_32
	.type	ZerosMS_32, %function
ZerosMS_32:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldrb	r2, [r3, r0, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.532, CalcZeroNum
	cmp	r2, #8	@ tmpZeroNum.532,
	bne	.L3	@,
	mov	ip, r0, asl #8	@ data.533, data,
	ldrb	r1, [r3, ip, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.536, CalcZeroNum
	cmp	r1, #8	@ tmpZeroNum.536,
	add	r2, r2, r1	@ ZeroNum, tmpZeroNum.532, tmpZeroNum.536
	bne	.L3	@,
	mov	ip, r0, asl #16	@ data.537, data,
	ldrb	r1, [r3, ip, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum.540, CalcZeroNum
	cmp	r1, #8	@ tmpZeroNum.540,
	add	r2, r2, r1	@ ZeroNum, ZeroNum, tmpZeroNum.540
	moveq	r0, r0, asl #24	@ tmp149, data,
	ldreqb	r3, [r3, r0, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum, CalcZeroNum
	addeq	r2, r2, r3	@ ZeroNum, ZeroNum, tmpZeroNum
.L3:
	mov	r0, r2	@, ZeroNum
	bx	lr	@
	.fnend
	.size	ZerosMS_32, .-ZerosMS_32
	.align	2
	.global	BsInit
	.type	BsInit, %function
BsInit:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bic	r3, r1, #3	@ D.33231, pInput,
	str	r2, [r0, #16]	@ length, <variable>.BsLen
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	add	ip, r3, #8	@ tmp141, D.33231,
	str	r3, [r0, #0]	@ D.33231, <variable>.pHead
	and	r5, r1, #3	@ tmp160, pInput,
	str	ip, [r0, #4]	@ tmp141, <variable>.pTail
	ldr	r2, [r3, #0]	@ Data,* D.33231
	mov	r1, r5, asl #3	@ tmp161, tmp160,
	and	r4, r2, #65280	@ tmp145, Data,
	and	ip, r2, #16711680	@ tmp148, Data,
	mov	r5, r2, asl #24	@ tmp143, Data,
	orr	r2, r5, r2, lsr #24	@, tmp144, tmp143, Data,
	orr	r2, r2, r4, asl #8	@, tmp147, tmp144, tmp145,
	mov	r4, #0	@ tmp162,
	orr	r2, r2, ip, lsr #8	@, tmp150, tmp147, tmp148,
	str	r2, [r0, #8]	@ tmp150, <variable>.Bufa
	ldr	r3, [r3, #4]	@ Data.565,
	str	r4, [r0, #24]	@ tmp162, <variable>.TotalPos
	and	ip, r3, #65280	@ tmp154, Data.565,
	and	r2, r3, #16711680	@ tmp157, Data.565,
	mov	r4, r3, asl #24	@ tmp152, Data.565,
	str	r1, [r0, #20]	@ tmp161, <variable>.BufPos
	orr	r3, r4, r3, lsr #24	@, tmp153, tmp152, Data.565,
	orr	r1, r3, ip, asl #8	@, tmp156, tmp153, tmp154,
	orr	r3, r1, r2, lsr #8	@, tmp159, tmp156, tmp157,
	str	r3, [r0, #12]	@ tmp159, <variable>.Bufb
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	BsInit, .-BsInit
	.align	2
	.global	BsPos
	.type	BsPos, %function
BsPos:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]	@, <variable>.TotalPos
	bx	lr	@
	.fnend
	.size	BsPos, .-BsPos
	.align	2
	.global	BsGet
	.type	BsGet, %function
BsGet:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldr	r2, [r0, #20]	@ D.33490, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	add	ip, r1, r2	@ ABBufPos, nBits, D.33490
	cmp	ip, #32	@ ABBufPos,
	ble	.L11	@,
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsb	r0, r2, #32	@ tmp143, D.33490,
	ldr	r7, [r3, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r5, r1, #32	@ tmp146, nBits,
	ldr	r6, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	mov	r0, r4, lsr r0	@ tmp144, <variable>.Bufb,
	orr	r2, r0, r7, asl r2	@, Data.621, tmp144, <variable>.Bufa,
	add	r1, r6, r1	@ tmp148, <variable>.TotalPos, nBits
	str	r1, [r3, #24]	@ tmp148, <variable>.TotalPos
	mov	r0, r2, lsr r5	@ D.33483, Data.621,
.L12:
	ldr	r1, [r3, #4]	@ tmp167, <variable>.pTail
	sub	r5, ip, #32	@ tmp154, ABBufPos,
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	str	r5, [r3, #20]	@ tmp154, <variable>.BufPos
	ldr	r2, [r1], #4	@ Data1,
	and	r4, r2, #65280	@ tmp160, Data1,
	and	ip, r2, #16711680	@ tmp163, Data1,
	mov	r5, r2, asl #24	@ tmp158, Data1,
	str	r1, [r3, #4]	@ tmp167, <variable>.pTail
	orr	r2, r5, r2, lsr #24	@, tmp159, tmp158, Data1,
	orr	r1, r2, r4, asl #8	@, tmp162, tmp159, tmp160,
	orr	r2, r1, ip, lsr #8	@, tmp165, tmp162, tmp163,
	str	r2, [r3, #12]	@ tmp165, <variable>.Bufb
.L14:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L11:
	ldr	r0, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	rsb	r4, r1, #32	@ tmp151, nBits,
	ldr	r5, [r3, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	strne	ip, [r3, #20]	@ ABBufPos, <variable>.BufPos
	mov	r2, r0, asl r2	@ tmp149, <variable>.Bufa,
	add	r1, r5, r1	@ tmp153, <variable>.TotalPos, nBits
	str	r1, [r3, #24]	@ tmp153, <variable>.TotalPos
	mov	r0, r2, lsr r4	@ D.33483, tmp149,
	bne	.L14	@,
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	b	.L12	@
	.fnend
	.size	BsGet, .-BsGet
	.align	2
	.global	BsShow
	.type	BsShow, %function
BsShow:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r3, [r0, #20]	@ D.33266, <variable>.BufPos
	add	r2, r1, r3	@ tmp140, nBits, D.33266
	cmp	r2, #32	@ tmp140,
	rsbgt	ip, r3, #32	@ tmp142, D.33266,
	rsbgt	r1, r1, #32	@ tmp145, nBits,
	ldrgt	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsble	r1, r1, #32	@ tmp148, nBits,
	ldrgt	r2, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	ldrle	r0, [r0, #8]	@ <variable>.Bufa, <variable>.Bufa
	movgt	r0, r4, lsr ip	@ tmp143, <variable>.Bufb,
	orrgt	r3, r0, r2, asl r3	@, Data.653, tmp143, <variable>.Bufa,
	movle	r3, r0, asl r3	@ tmp146, <variable>.Bufa,
	mov	r0, r3, lsr r1	@ Data, tmp146,
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	BsShow, .-BsShow
	.align	2
	.global	BsSkip
	.type	BsSkip, %function
BsSkip:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	ldr	ip, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	mov	r3, r0	@ pBS, pBS
	add	r2, r1, r2	@ ABBufPos, nBits, <variable>.BufPos
	cmp	r2, #31	@ ABBufPos,
	add	r0, ip, r1	@ tmp140, <variable>.TotalPos, nBits
	strle	r2, [r3, #20]	@ ABBufPos, <variable>.BufPos
	str	r0, [r3, #24]	@ tmp140, <variable>.TotalPos
	ble	.L22	@,
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r2, #32	@ tmp141, ABBufPos,
	ldr	r0, [r3, #4]	@ tmp154, <variable>.pTail
	str	r5, [r3, #20]	@ tmp141, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [r0], #4	@ Data1,
	and	r4, r2, #65280	@ tmp147, Data1,
	and	ip, r2, #16711680	@ tmp150, Data1,
	mov	r5, r2, asl #24	@ tmp145, Data1,
	str	r0, [r3, #4]	@ tmp154, <variable>.pTail
	orr	r0, r5, r2, lsr #24	@, tmp146, tmp145, Data1,
	orr	r2, r0, r4, asl #8	@, tmp149, tmp146, tmp147,
	orr	r0, r2, ip, lsr #8	@, tmp152, tmp149, tmp150,
	str	r0, [r3, #12]	@ tmp152, <variable>.Bufb
.L22:
	mov	r0, r1	@, nBits
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	BsSkip, .-BsSkip
	.align	2
	.global	BsBack
	.type	BsBack, %function
BsBack:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r2, [r0, #24]	@ D.33310, <variable>.TotalPos
	ldr	ip, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	cmp	r1, r2	@ nBits, D.33310
	movlt	r0, r1	@ nBits.704, nBits
	movge	r0, r2	@ nBits.704, D.33310
	subs	ip, ip, r0	@ PredBufPos, <variable>.BufPos, nBits.704
	rsb	r2, r0, r2	@ tmp142, nBits.704, D.33310
	strpl	ip, [r3, #20]	@ PredBufPos, <variable>.BufPos
	str	r2, [r3, #24]	@ tmp142, <variable>.TotalPos
	bpl	.L26	@,
	ldr	r2, [r3, #4]	@ <variable>.pTail, <variable>.pTail
	add	r4, ip, #32	@ tmp154, PredBufPos,
	ldr	r1, [r3, #8]	@ <variable>.Bufa, <variable>.Bufa
	sub	r2, r2, #4	@ D.33319, <variable>.pTail,
	str	r2, [r3, #4]	@ D.33319, <variable>.pTail
	str	r1, [r3, #12]	@ <variable>.Bufa, <variable>.Bufb
	ldr	r2, [r2, #-8]	@ Data1,
	str	r4, [r3, #20]	@ tmp154, <variable>.BufPos
	and	ip, r2, #65280	@ tmp148, Data1,
	and	r1, r2, #16711680	@ tmp151, Data1,
	mov	r4, r2, asl #24	@ tmp146, Data1,
	orr	r2, r4, r2, lsr #24	@, tmp147, tmp146, Data1,
	orr	r2, r2, ip, asl #8	@, tmp150, tmp147, tmp148,
	orr	r2, r2, r1, lsr #8	@, tmp153, tmp150, tmp151,
	str	r2, [r3, #8]	@ tmp153, <variable>.Bufa
.L26:
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	BsBack, .-BsBack
	.align	2
	.global	BsBitsToNextByte
	.type	BsBitsToNextByte, %function
BsBitsToNextByte:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]	@ D.33339, <variable>.TotalPos
	add	r1, r3, #7	@ tmp137, D.33339,
	bic	r0, r1, #7	@ tmp138, tmp137,
	rsb	r0, r3, r0	@, D.33339, tmp138
	bx	lr	@
	.fnend
	.size	BsBitsToNextByte, .-BsBitsToNextByte
	.align	2
	.global	BsToNextByte
	.type	BsToNextByte, %function
BsToNextByte:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	ip, [r0, #24]	@ D.33347, <variable>.TotalPos
	mov	r3, r0	@ pBS, pBS
	ldr	r1, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	add	r2, ip, #7	@ tmp139, D.33347,
	bic	r0, r2, #7	@ tmp140, tmp139,
	rsb	r0, ip, r0	@ SkipLen, D.33347, tmp140
	add	r1, r0, r1	@ ABBufPos, SkipLen, <variable>.BufPos
	add	r2, r0, ip	@ tmp142, SkipLen, D.33347
	cmp	r1, #31	@ ABBufPos,
	str	r2, [r3, #24]	@ tmp142, <variable>.TotalPos
	strle	r1, [r3, #20]	@ ABBufPos, <variable>.BufPos
	ble	.L32	@,
	ldr	r4, [r3, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r1, #32	@ tmp143, ABBufPos,
	ldr	ip, [r3, #4]	@ tmp156, <variable>.pTail
	str	r5, [r3, #20]	@ tmp143, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [ip], #4	@ Data1,
	and	r4, r2, #65280	@ tmp149, Data1,
	and	r1, r2, #16711680	@ tmp152, Data1,
	mov	r5, r2, asl #24	@ tmp147, Data1,
	str	ip, [r3, #4]	@ tmp156, <variable>.pTail
	orr	ip, r5, r2, lsr #24	@, tmp148, tmp147, Data1,
	orr	r2, ip, r4, asl #8	@, tmp151, tmp148, tmp149,
	orr	ip, r2, r1, lsr #8	@, tmp154, tmp151, tmp152,
	str	ip, [r3, #12]	@ tmp154, <variable>.Bufb
.L32:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	BsToNextByte, .-BsToNextByte
	.align	2
	.global	BsResidBits
	.type	BsResidBits, %function
BsResidBits:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #16]	@ <variable>.BsLen, <variable>.BsLen
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r0, r3, r2, asl #3	@,, <variable>.TotalPos, <variable>.BsLen,
	bx	lr	@
	.fnend
	.size	BsResidBits, .-BsResidBits
	.align	2
	.global	BsIsByteAligned
	.type	BsIsByteAligned, %function
BsIsByteAligned:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	tst	r3, #7	@ <variable>.TotalPos,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	BsIsByteAligned, .-BsIsByteAligned
	.align	2
	.global	BsNextBitsByteAligned
	.type	BsNextBitsByteAligned, %function
BsNextBitsByteAligned:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	lr, [r0, #24]	@ D.33369, <variable>.TotalPos
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	and	r3, lr, #7	@ tmp145, D.33369,
	rsb	r3, r3, #8	@ D.33371, tmp145,
	add	r2, r3, r2	@ ABBufPos, D.33371, <variable>.BufPos
	add	ip, r3, lr	@ tmp147, D.33371, D.33369
	cmp	r2, #31	@ ABBufPos,
	str	ip, [r0, #24]	@ tmp147, <variable>.TotalPos
	ble	.L39	@,
	ldr	ip, [r0, #12]	@ prephitmp.814, <variable>.Bufb
	sub	r2, r2, #32	@ prephitmp.813, ABBufPos,
	ldr	r4, [r0, #4]	@ tmp159, <variable>.pTail
	str	r2, [r0, #20]	@ prephitmp.813, <variable>.BufPos
	str	ip, [r0, #8]	@ prephitmp.814, <variable>.Bufa
	ldr	lr, [r4], #4	@ Data1,
	and	r6, lr, #65280	@ tmp152, Data1,
	and	r5, lr, #16711680	@ tmp155, Data1,
	mov	r7, lr, asl #24	@ tmp150, Data1,
	str	r4, [r0, #4]	@ tmp159, <variable>.pTail
	orr	lr, r7, lr, lsr #24	@, tmp151, tmp150, Data1,
	orr	lr, lr, r6, asl #8	@, tmp154, tmp151, tmp152,
	orr	lr, lr, r5, lsr #8	@, tmp157, tmp154, tmp155,
	str	lr, [r0, #12]	@ tmp157, <variable>.Bufb
.L40:
	add	lr, r2, r1	@ tmp161, prephitmp.813, nBits
	cmp	lr, #32	@ tmp161,
	rsbgt	lr, r2, #32	@ tmp162, prephitmp.813,
	movle	r4, ip, asl r2	@ tmp166, prephitmp.814,
	ldrgt	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	rsbgt	r1, r1, #32	@ tmp165, nBits,
	rsble	r1, r1, #32	@ tmp167, nBits,
	movgt	r4, r4, lsr lr	@ tmp163, <variable>.Bufb,
	orrgt	r4, r4, ip, asl r2	@, Data.827, tmp163, prephitmp.814,
	mov	r4, r4, lsr r1	@ Data.828, tmp166,
	mov	r1, r3	@, D.33371
	bl	BsBack	@
	mov	r0, r4	@, Data.828
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L39:
	ldr	ip, [r0, #8]	@ prephitmp.814, <variable>.Bufa
	str	r2, [r0, #20]	@ prephitmp.813, <variable>.BufPos
	b	.L40	@
	.fnend
	.size	BsNextBitsByteAligned, .-BsNextBitsByteAligned
	.align	2
	.global	BsLongSkip
	.type	BsLongSkip, %function
BsLongSkip:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ nBits
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	beq	.L45	@,
	cmp	r1, #64	@ nBits,
	bgt	.L46	@,
	cmp	r1, #32	@ nBits,
	bgt	.L47	@,
	ldr	r3, [r0, #20]	@ prephitmp.844, <variable>.BufPos
	ldr	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	r3, r3, r1	@ ABBufPos, prephitmp.844, nBits
	cmp	r3, #31	@ ABBufPos,
	add	r2, r2, r1	@ tmp169, <variable>.TotalPos, nBits
	str	r2, [r0, #24]	@ tmp169, <variable>.TotalPos
	ble	.L51	@,
.L53:
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r3, #32	@ tmp170, ABBufPos,
	ldr	r2, [r0, #4]	@ tmp183, <variable>.pTail
	str	r5, [r0, #20]	@ tmp170, <variable>.BufPos
	str	r4, [r0, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r3, [r2], #4	@ Data1,
	and	r4, r3, #65280	@ tmp176, Data1,
	and	ip, r3, #16711680	@ tmp179, Data1,
	mov	r5, r3, asl #24	@ tmp174, Data1,
	str	r2, [r0, #4]	@ tmp183, <variable>.pTail
	orr	r3, r5, r3, lsr #24	@, tmp175, tmp174, Data1,
	orr	r2, r3, r4, asl #8	@, tmp178, tmp175, tmp176,
	orr	r3, r2, ip, lsr #8	@, tmp181, tmp178, tmp179,
	str	r3, [r0, #12]	@ tmp181, <variable>.Bufb
.L45:
	mov	r0, r1	@, nBits
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L46:
	ldr	ip, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r7, #0	@ tmp188,
	ldr	r8, [r0, #4]	@ <variable>.pTail, <variable>.pTail
	rsb	r5, ip, #32	@ bits, <variable>.BufPos,
	ldr	r3, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	rsb	r1, r5, r1	@ nBits, bits, nBits
	str	r7, [r0, #20]	@ tmp188, <variable>.BufPos
	cmp	r1, #0	@ nBits,
	add	r6, r1, #31	@ tmp190, nBits,
	add	r2, r5, r3	@ D.33398, bits, <variable>.TotalPos
	str	r2, [r0, #24]	@ D.33398, <variable>.TotalPos
	movge	r6, r1	@ nBits, nBits
	ands	r5, r1, #31	@ bits.855, nBits,
	mov	r4, r6, asr #5	@ tmp191, nBits,
	sub	ip, r4, #-1073741823	@ tmp192, tmp191,
	add	r4, r2, r4, asl #5	@, D.33421, D.33398, tmp191,
	add	r2, r8, ip, asl #2	@, D.33406, <variable>.pTail, tmp192,
	str	r2, [r0, #4]	@ D.33406, <variable>.pTail
	ldr	r3, [r8, ip, asl #2]	@ D.33408,* <variable>.pTail
	add	r7, r2, #4	@ D.33418, D.33406,
	add	ip, r7, #4	@ tmp213, D.33418,
	str	r7, [r0, #4]	@ D.33418, <variable>.pTail
	and	r7, r3, #65280	@ tmp198, D.33408,
	and	r6, r3, #16711680	@ tmp201, D.33408,
	mov	r8, r3, asl #24	@ tmp196, D.33408,
	orr	r3, r8, r3, lsr #24	@, tmp197, tmp196, D.33408,
	orr	r3, r3, r7, asl #8	@, tmp200, tmp197, tmp198,
	orr	r3, r3, r6, lsr #8	@, tmp203, tmp200, tmp201,
	str	r3, [r0, #8]	@ tmp203, <variable>.Bufa
	ldr	r3, [r2, #4]	@ temp.857,
	str	ip, [r0, #4]	@ tmp213, <variable>.pTail
	and	ip, r3, #65280	@ tmp207, temp.857,
	and	r2, r3, #16711680	@ tmp210, temp.857,
	mov	r6, r3, asl #24	@ tmp205, temp.857,
	str	r4, [r0, #24]	@ D.33421, <variable>.TotalPos
	orr	r3, r6, r3, lsr #24	@, tmp206, tmp205, temp.857,
	addne	r4, r4, r5	@ tmp215, D.33421, bits.855
	orr	r3, r3, ip, asl #8	@, tmp209, tmp206, tmp207,
	strne	r5, [r0, #20]	@ bits.855, <variable>.BufPos
	orr	ip, r3, r2, lsr #8	@, tmp212, tmp209, tmp210,
	strne	r4, [r0, #24]	@ tmp215, <variable>.TotalPos
	str	ip, [r0, #12]	@ tmp212, <variable>.Bufb
	b	.L45	@
.L47:
	ldr	r3, [r0, #20]	@ prephitmp.844, <variable>.BufPos
	ldr	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	add	ip, r3, #32	@ tmp153, prephitmp.844,
	cmp	ip, #31	@ tmp153,
	add	r2, r2, #32	@ <variable>.TotalPos, <variable>.TotalPos,
	str	r2, [r0, #24]	@ <variable>.TotalPos, <variable>.TotalPos
	movle	r3, ip	@ prephitmp.844, tmp153
	strle	r3, [r0, #20]	@ prephitmp.844, <variable>.BufPos
	ble	.L50	@,
	ldr	r5, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	ldr	r4, [r0, #4]	@ tmp166, <variable>.pTail
	str	r5, [r0, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	ip, [r4], #4	@ Data1,
	and	r6, ip, #65280	@ tmp159, Data1,
	and	r5, ip, #16711680	@ tmp162, Data1,
	mov	r7, ip, asl #24	@ tmp157, Data1,
	str	r4, [r0, #4]	@ tmp166, <variable>.pTail
	orr	ip, r7, ip, lsr #24	@, tmp158, tmp157, Data1,
	orr	ip, ip, r6, asl #8	@, tmp161, tmp158, tmp159,
	orr	ip, ip, r5, lsr #8	@, tmp164, tmp161, tmp162,
	str	ip, [r0, #12]	@ tmp164, <variable>.Bufb
.L50:
	sub	r1, r1, #32	@ nBits, nBits,
	add	r3, r3, r1	@ ABBufPos, prephitmp.844, nBits
	add	r2, r2, r1	@ tmp169, <variable>.TotalPos, nBits
	cmp	r3, #31	@ ABBufPos,
	str	r2, [r0, #24]	@ tmp169, <variable>.TotalPos
	bgt	.L53	@,
.L51:
	ldr	r3, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	add	ip, r3, r1	@ tmp185, <variable>.BufPos, nBits
	str	ip, [r0, #20]	@ tmp185, <variable>.BufPos
	b	.L45	@
	.fnend
	.size	BsLongSkip, .-BsLongSkip
	.align	2
	.global	BsSkipWithoutCount
	.type	BsSkipWithoutCount, %function
BsSkipWithoutCount:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r2, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	mov	r3, r0	@ pBS, pBS
	add	r2, r1, r2	@ ABBufPos, nBits, <variable>.BufPos
	cmp	r2, #31	@ ABBufPos,
	strle	r2, [r0, #20]	@ ABBufPos, <variable>.BufPos
	ble	.L56	@,
	ldr	r4, [r0, #12]	@ <variable>.Bufb, <variable>.Bufb
	sub	r5, r2, #32	@ tmp139, ABBufPos,
	ldr	r0, [r0, #4]	@ tmp152, <variable>.pTail
	str	r5, [r3, #20]	@ tmp139, <variable>.BufPos
	str	r4, [r3, #8]	@ <variable>.Bufb, <variable>.Bufa
	ldr	r2, [r0], #4	@ Data1,
	and	r4, r2, #65280	@ tmp145, Data1,
	and	ip, r2, #16711680	@ tmp148, Data1,
	mov	r5, r2, asl #24	@ tmp143, Data1,
	str	r0, [r3, #4]	@ tmp152, <variable>.pTail
	orr	r0, r5, r2, lsr #24	@, tmp144, tmp143, Data1,
	orr	r2, r0, r4, asl #8	@, tmp147, tmp144, tmp145,
	orr	r0, r2, ip, lsr #8	@, tmp150, tmp147, tmp148,
	str	r0, [r3, #12]	@ tmp150, <variable>.Bufb
.L56:
	mov	r0, r1	@, nBits
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	BsSkipWithoutCount, .-BsSkipWithoutCount
	.align	2
	.global	BsGetNextBytePtr
	.type	BsGetNextBytePtr, %function
BsGetNextBytePtr:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #20]	@ <variable>.BufPos, <variable>.BufPos
	ldr	r2, [r0, #4]	@ <variable>.pTail, <variable>.pTail
	rsb	r3, r1, #32	@ tmp136, <variable>.BufPos,
	mvn	r1, #3	@ tmp146,
	add	ip, r3, #7	@ tmp140, tmp136,
	cmp	r3, #0	@ tmp136,
	movlt	r3, ip	@ tmp145, tmp140
	sub	r0, r1, r3, asr #3	@ tmp142, tmp146, tmp145,
	add	r0, r0, r2	@, tmp142, <variable>.pTail
	bx	lr	@
	.fnend
	.size	BsGetNextBytePtr, .-BsGetNextBytePtr
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CalcZeroNum, %object
	.size	CalcZeroNum, 256
CalcZeroNum:
	.byte	8
	.byte	7
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
