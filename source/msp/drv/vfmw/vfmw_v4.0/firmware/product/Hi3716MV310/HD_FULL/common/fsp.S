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
	.file	"fsp.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(fsp)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.o
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
	.global	FindLeastTickPhyFs
	.type	FindLeastTickPhyFs, %function
FindLeastTickPhyFs:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ PhyNum
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movle	r5, #0	@ LeastFsID,
	ble	.L5	@,
	tst	r1, #1	@ PhyNum,
	mov	r5, #0	@ LeastFsID,
	mvn	ip, #0	@ LeastTick.616,
	mov	r2, r5	@ i, LeastFsID
	bne	.L6	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #52	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.616
	mov	ip, r3	@ LeastTick.616, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.616
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.616
	cmp	r2, r1	@ tmp174, PhyNum
	beq	.L5	@,
.L19:
	ldr	ip, [r4, #44]	@ LeastTick, <variable>.u32Tick
	cmp	ip, r3	@ LeastTick, LeastTick
	movcs	ip, r3	@ LeastTick, LeastTick
	movcc	r5, r2	@ LeastFsID, tmp174
.L17:
	add	r2, r2, #1	@ i, tmp174,
	add	r0, r4, #52	@ pstPhyFs, tmp175,
.L6:
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmp	r3, ip	@ LeastTick, LeastTick.616
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.616
	cmp	r2, r1	@ tmp174, PhyNum
	bne	.L19	@,
.L5:
	mov	r0, r5	@, LeastFsID
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_GetLogicFs
	.type	FSP_GetLogicFs, %function
FSP_GetLogicFs:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bls	.L24	@,
.L21:
	mov	r0, #0	@ pstLogicFs,
	bx	lr	@
.L24:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.36694, s_pFspInst
	cmp	r3, #0	@ D.36694,
	beq	.L21	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ pstLogicFs, tmp148, LogicFrameID, D.36694
	add	r0, r0, #96	@ pstLogicFs, pstLogicFs,
	bx	lr	@
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bls	.L29	@,
.L26:
	mov	r0, #0	@ D.36718,
	bx	lr	@
.L29:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.36713, s_pFspInst
	cmp	r3, #0	@ D.36713,
	beq	.L26	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ D.36718, tmp148, LogicFrameID, D.36713
	add	r0, r0, #104	@ D.36718, D.36718,
	bx	lr	@
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bls	.L34	@,
.L31:
	mov	r0, #0	@ D.36737,
	bx	lr	@
.L34:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.36732, s_pFspInst
	cmp	r3, #0	@ D.36732,
	beq	.L31	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.36732
	ldr	r0, [r1, #508]	@ D.36737, <variable>.pstDispOutFs
	bx	lr	@
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bhi	.L36	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.36751, s_pFspInst
	cmp	r3, #0	@ D.36751,
	beq	.L36	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.36751
	ldr	r0, [r1, #516]	@ D.36756, <variable>.PmvAddr
	bx	lr	@
.L36:
	mov	r0, #0	@ D.36756,
	bx	lr	@
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp170,
	movt	r2, #:upper16:.LANCHOR0	@ tmp170,
	mov	r3, #63	@ i,
	ldr	r2, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	add	r1, r2, #27136	@ ivtmp.742, pstInst,
	add	r1, r1, #177	@ ivtmp.742, ivtmp.742,
	b	.L42	@
.L50:
	ldrb	ip, [r1, #-432]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #864	@ ivtmp.742, ivtmp.742,
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L41	@,
	subs	r3, r3, #1	@ i, i,
	bcc	.L49	@,
.L42:
	ldrsb	r0, [r1, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.s32DispState,
	bne	.L50	@,
.L41:
	mov	ip, #432	@ tmp176,
	mov	r0, r3	@, ret_id
	mla	r2, ip, r3, r2	@ tmp177, tmp176, ret_id, pstInst
	mov	r3, #0	@ tmp179,
	add	r1, r2, #504	@ tmp178, tmp177,
	str	r3, [r2, #504]	@ tmp179, <variable>.pstDecodeFs
	str	r3, [r1, #4]	@ tmp179, <variable>.pstDispOutFs
	bx	lr	@
.L49:
	mov	r3, #0	@ ret_id,
	b	.L41	@
	.fnend
	.size	FSP_GetNullLogicFs, .-FSP_GetNullLogicFs
	.align	2
	.global	FSP_GetFspType
	.type	FSP_GetFspType, %function
FSP_GetFspType:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L57	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.36990, s_pFspInst
	cmp	r0, #0	@ D.36990,
	beq	.L58	@,
	ldr	r1, [r0, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@, D.36988,
	mvnne	r0, #0	@, D.36988,
	ldmfd	sp!, {r3, pc}	@
.L57:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3293	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36988,
	ldmfd	sp!, {r3, pc}	@
.L58:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3294	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36988,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bhi	.L83	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r5, [r3, r0, asl #2]	@ D.36889, s_pFspInst
	cmp	r5, #0	@ D.36889,
	beq	.L84	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r8, r5	@ ivtmp.813, D.36889
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, <variable>.eFspInstState
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC5	@,
	mov	r6, r5	@ ivtmp.841, D.36889
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #60]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC6	@,
	mov	r7, #1	@ ivtmp.810,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	mov	r4, r0	@ ivtmp.809,
	ldrsb	r3, [r5, #61]	@, <variable>.stInstCfg.s32TfEnable
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #62]	@, <variable>.stInstCfg.s32RprEnable
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #72]	@, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #76]	@, <variable>.stInstCfg.s32DecFsHeight
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #88]	@, <variable>.stInstCfg.s32DispFsWidth
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #92]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #65]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #66]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #67]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #68]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@, <variable>.s32DecFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #11]	@, <variable>.s32DispFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #12]	@, <variable>.s32TfFsNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #13]	@, <variable>.s32PmvNum
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ivtmp.809
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	b	.L62	@
.L87:
	ands	r0, r4, #7	@ tmp188, ivtmp.809,
	beq	.L85	@,
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.810,
	bgt	.L86	@,
.L65:
	add	r4, r4, #1	@ ivtmp.809, ivtmp.809,
	add	r7, r7, #1	@ ivtmp.810, ivtmp.810,
	add	r6, r6, #432	@ ivtmp.841, ivtmp.841,
.L62:
	cmp	r4, #0	@ ivtmp.809,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, r4	@, ivtmp.809
	movt	r1, #:upper16:.LC22	@,
	bne	.L87	@,
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	bl	dprint_vfmw	@
	b	.L65	@
.L85:
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.810,
	ble	.L65	@,
.L86:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i,
	movgt	r6, #52	@ tmp242,
	ble	.L66	@,
.L81:
	mla	lr, r6, r4, r5	@ tmp199, tmp242, i, D.36889
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r4, r4, #1	@ i, i,
	add	ip, lr, #27648	@ tmp200, tmp199,
	add	r2, ip, #144	@ tmp200, tmp200,
	ldrsb	r3, [r2, #6]	@, <variable>.DispState
	ldrsb	r2, [r2, #4]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r4	@ <variable>.s32DecFsNum, i
	ble	.L66	@,
	ands	r0, r4, #7	@ tmp194, i,
	bne	.L81	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L81	@
.L66:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r3, #0	@ <variable>.s32DispFsNum,
	movgt	r4, #0	@ i.832,
	movgt	r6, #52	@ tmp238,
	ble	.L70	@,
.L82:
	mla	lr, r6, r4, r5	@ tmp216, tmp238, i.832, D.36889
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r4, r4, #1	@ i.832, i.832,
	add	ip, lr, #30976	@ tmp217, tmp216,
	add	r2, ip, #144	@ tmp217, tmp217,
	ldrsb	r3, [r2, #6]	@, <variable>.DispState
	ldrsb	r2, [r2, #4]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, r4	@ <variable>.s32DispFsNum, i.832
	ble	.L70	@,
	ands	r0, r4, #7	@ tmp211, i.832,
	bne	.L82	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L82	@
.L70:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	movgt	r4, #0	@ i.836,
	ble	.L74	@,
.L75:
	ldrsb	r2, [r8, #14]	@, <variable>.IsPmvInUse
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	add	r4, r4, #1	@ i.836, i.836,
	add	r8, r8, #1	@ ivtmp.813, ivtmp.813,
	cmp	r3, r4	@ <variable>.s32PmvNum, i.836
	ble	.L74	@,
	ands	r0, r4, #15	@ tmp228, i.836,
	bne	.L75	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L75	@
.L74:
	movw	r1, #:lower16:.LC28	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC28	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L83:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #3036	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L84:
	mov	r0, r5	@, D.36889
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #3037	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L100	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.36855, s_pFspInst
	cmp	r3, #0	@ D.36855,
	movne	r0, #0	@ i,
	beq	.L101	@,
.L93:
	add	r2, r3, #432	@ tmp148, ivtmp.875,
	ldr	r3, [r3, #504]	@ D.36859, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.36859,
	beq	.L92	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L92:
	ldr	r3, [r2, #504]	@ D.36859, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.36859,
	mov	ip, r0	@ tmp147, i
	beq	.L96	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L96:
	add	r0, ip, #1	@ i, tmp147,
	add	r3, r2, #432	@ ivtmp.875, tmp148,
	cmp	r0, #64	@ i,
	bne	.L93	@,
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
.L101:
	mov	r0, r3	@, D.36855
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3005	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
.L100:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3004	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L111	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L112	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L113	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r0, [r3, r0, asl #2]	@ D.36808, s_pFspInst
	cmp	r0, #0	@ D.36808,
	beq	.L114	@,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	ip, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	bxle	lr	@
	mov	r3, #0	@ ivtmp.905,
	mov	r1, r3	@ i, ivtmp.905
.L108:
	add	ip, r0, r3	@ tmp151, D.36808, ivtmp.905
	add	r1, r1, #1	@ i, i,
	add	ip, ip, #34560	@ tmp152, tmp151,
	ldr	ip, [ip, #0]	@ tmp153, <variable>.PmvAddr
	str	ip, [r2, r3]	@ tmp153,* ivtmp.905
	add	r3, r3, #4	@ ivtmp.905, ivtmp.905,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	ip, r1	@ <variable>.s32PmvNum, i
	bgt	.L108	@,
	bx	lr	@
.L111:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2963	@,
	b	dprint_vfmw	@
.L112:
	mov	r0, r2	@, PmvAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC29	@,
	movw	r2, #2964	@,
	b	dprint_vfmw	@
.L113:
	mov	r0, r1	@, PmvNum
	movw	r3, #:lower16:.LC30	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r3, #:upper16:.LC30	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r2, #2965	@,
	b	dprint_vfmw	@
.L114:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2966	@,
	b	dprint_vfmw	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	bhi	.L124	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L125	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L126	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp154,
	movt	ip, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r3, [ip, r0, asl #2]	@ tmp155, s_pFspInst
	cmp	r3, #0	@ tmp155,
	beq	.L127	@,
	mov	r3, #0	@ tmp159,
	str	r3, [r1, #0]	@ tmp159,* DecFsNum
	ldr	r4, [ip, r0, asl #2]	@ tmp161, s_pFspInst
	ldrsb	r4, [r4, #10]	@ D.36781, <variable>.s32DecFsNum
	cmp	r4, r3	@ D.36781,
	str	r4, [r1, #0]	@ D.36781,* DecFsNum
	ldr	ip, [ip, r0, asl #2]	@ temp.949, s_pFspInst
	ble	.L122	@,
	add	ip, ip, #27648	@ ivtmp.940, temp.949,
	add	ip, ip, #160	@ ivtmp.940, ivtmp.940,
.L121:
	ldr	r0, [ip], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r0, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	r0, [r1, #0]	@ tmp166,* DecFsNum
	cmp	r0, r3	@ tmp166, i
	bgt	.L121	@,
.L122:
	ldmfd	sp!, {r4}
	bx	lr
.L124:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2930	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
.L125:
	mov	r0, r2	@, DecFsAddrTab
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC31	@,
	movw	r2, #2931	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
.L127:
	mov	r0, r3	@, tmp155
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2933	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
.L126:
	mov	r0, r1	@, DecFsNum
	movw	r3, #:lower16:.LC32	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r3, #:upper16:.LC32	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r2, #2932	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L134	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.36648, s_pFspInst
	cmp	r0, #0	@ D.36648,
	beq	.L135	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L132	@,
	ldrsb	r1, [r0, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L132	@,
	mov	r3, #52	@ tmp147,
	mla	ip, r3, r2, r0	@ tmp148, tmp147, PhyFsID, D.36648
	add	r0, ip, #27648	@ tmp149, tmp148,
	add	r2, r0, #152	@ tmp149, tmp149,
	ldr	r0, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L132:
	mov	r0, #2	@ eStoreType,
	ldmfd	sp!, {r3, pc}	@
.L134:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2773	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp!, {r3, pc}	@
.L135:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2774	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L143	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp142,
	movt	ip, #:upper16:.LANCHOR0	@ tmp142,
	ldr	ip, [ip, r0, asl #2]	@ D.36618, s_pFspInst
	cmp	ip, #0	@ D.36618,
	beq	.L144	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L140	@,
	ldrsb	r0, [ip, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L141	@,
	mov	r0, r1	@ Ret, ePhyFsType
	mov	r1, #52	@ tmp148,
	mla	r2, r1, r2, ip	@ tmp149, tmp148, PhyFsID, D.36618
	add	r1, r2, #27648	@ tmp150, tmp149,
	add	r2, r1, #152	@ tmp150, tmp150,
	str	r3, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L140:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L145	@,
.L141:
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, pc}	@
.L145:
	ldrsb	r0, [ip, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L141	@,
	mov	r1, #52	@ tmp154,
	mov	r0, #0	@ Ret,
	mla	r2, r1, r2, ip	@ tmp155, tmp154, PhyFsID, D.36618
	add	r2, r2, #30976	@ tmp156, tmp155,
	add	ip, r2, #152	@ tmp156, tmp156,
	str	r3, [ip, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L143:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2740	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, pc}	@
.L144:
	mov	r0, ip	@, D.36618
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2741	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, r0, asl #2]	@ D.36595, s_pFspInst
	cmp	r0, #0	@ D.36595,
	beq	.L150	@,
	mov	r2, #432	@ tmp143,
	mla	r1, r2, r1, r0	@ tmp144, tmp143, LogicFrameID, D.36595
	ldrsb	r0, [r1, #97]	@ D.36599, <variable>.s32DispState
	ldmfd	sp!, {r3, pc}	@
.L150:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2724	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36599,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, r0, asl #2]	@ D.36525, s_pFspInst
	cmp	r0, #0	@ D.36525,
	beq	.L155	@,
	mov	r2, #432	@ tmp143,
	mla	r1, r2, r1, r0	@ tmp144, tmp143, LogicFrameID, D.36525
	ldrsb	r0, [r1, #96]	@ D.36529, <variable>.s32IsRef
	ldmfd	sp!, {r3, pc}	@
.L155:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2645	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36529,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	bhi	.L171	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L172	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r5, [r3, r0, asl #2]	@ D.36450, s_pFspInst
	cmp	r5, #0	@ D.36450,
	beq	.L173	@,
	mov	r7, #432	@ tmp154,
	uxtb	r8, r2	@ D.36458, IsRef
	mla	r7, r7, r1, r5	@ tmp155, tmp154, LogicFrameID, D.36450
	ldrsb	r1, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r8, [r7, #96]	@ D.36458, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r1, [r7, #504]	@ prephitmp.1060, <variable>.pstDecodeFs
	cmp	r1, #0	@ prephitmp.1060,
	beq	.L161	@,
	ldr	sl, [r1, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r7, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, ip	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L174	@,
.L161:
	mov	r3, #432	@ tmp194,
	mla	r3, r3, r4, r5	@ tmp195, tmp194, LogicFrameID, D.36450
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.36478, <variable>.PmvIdc
	cmp	r2, #19	@ D.36478,
	bhi	.L164	@,
	cmp	r6, #1	@ IsRef,
	beq	.L175	@,
	cmp	r6, #0	@ IsRef,
	bne	.L166	@,
	add	r1, r3, #496	@ tmp220, tmp195,
	ldr	ip, [r1, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	beq	.L176	@,
.L167:
	mov	r2, #432	@ tmp244,
	mla	r3, r2, r4, r5	@ tmp245, tmp244, LogicFrameID, D.36450
	ldr	r3, [r3, #508]	@ D.36501, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36501,
	beq	.L168	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L177	@,
.L169:
	mov	r2, #432	@ tmp257,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	mla	r2, r2, r4, r5	@ tmp258, tmp257, LogicFrameID, D.36450
	ldr	r1, [r2, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L178	@,
.L168:
	cmp	r6, #0	@ IsRef,
	moveq	r3, #432	@ tmp274,
	mlaeq	r4, r3, r4, r5	@ tmp275, tmp274, LogicFrameID, D.36450
	streq	r6, [r4, #504]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L171:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2530	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L175:
	add	r3, r3, #496	@ tmp202, tmp195,
	ldr	r0, [r3, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #1	@ <variable>.eLfsPmvState,
	beq	.L179	@,
.L166:
	mov	r3, #432	@ tmp252,
	mla	r0, r3, r4, r5	@ tmp253, tmp252, LogicFrameID, D.36450
	ldr	r3, [r0, #508]	@ D.36501, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36501,
	bne	.L169	@,
	b	.L168	@
.L172:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC33	@,
	mov	r0, #0	@,
	movw	r2, #2531	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L164:
	sxtb	r2, r2	@, D.36478
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ IsRef,
	beq	.L167	@,
	b	.L166	@
.L174:
	ldrsb	ip, [r1, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, r2	@ <variable>.IsDecRef, IsRef
	beq	.L162	@,
	ldr	ip, [r3, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L162	@,
	ldr	r3, [r3, #32]	@ D.37055, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.36476, <variable>.PhyAddr
	cmp	r3, #0	@ D.37055,
	beq	.L180	@,
	blx	r3	@ D.37055
	ldr	r1, [r7, #504]	@ prephitmp.1060, <variable>.pstDecodeFs
.L162:
	strb	r8, [r1, #0]	@ D.36458, <variable>.IsDecRef
	b	.L161	@
.L178:
	cmp	r6, #1	@ IsRef,
	bne	.L168	@,
	ldrsb	r0, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #1	@ <variable>.DispState,
	moveq	r0, #2	@ tmp263,
	streqb	r0, [r3, #2]	@ tmp263, <variable>.DispState
	streqb	r0, [r2, #97]	@ tmp263, <variable>.s32DispState
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L177:
	mov	ip, #0	@ tmp248,
	strb	ip, [r3, #2]	@ tmp248, <variable>.DispState
	b	.L166	@
.L176:
	sxtab	r0, r5, r2	@ tmp224, D.36450, D.36478
	strb	r6, [r0, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, <variable>.PmvAddr
	str	r6, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
	b	.L167	@
.L173:
	mov	r0, r5	@, D.36450
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2532	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L179:
	sxtab	r1, r5, r2	@ tmp206, D.36450, D.36478
	mov	r2, #2	@ tmp215,
	strb	r6, [r1, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r2, [r3, #4]	@ tmp215, <variable>.eLfsPmvState
	b	.L166	@
.L180:
	mov	r0, r3	@, D.37055
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #504]	@ prephitmp.1060, <variable>.pstDecodeFs
	strb	r8, [r1, #0]	@ D.36458, <variable>.IsDecRef
	b	.L161	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L188	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L189	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r0, [r3, r0, asl #2]	@ D.36421, s_pFspInst
	cmp	r0, #0	@ D.36421,
	beq	.L190	@,
	mov	r2, #432	@ tmp147,
	mla	r3, r2, r1, r0	@ tmp148, tmp147, LogicFrameID, D.36421
	ldr	r2, [r3, #500]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r2, #2	@ <variable>.eLfsPmvState,
	bxne	lr	@
	ldrb	ip, [r3, #100]	@ zero_extendqisi2	@ D.36429, <variable>.PmvIdc
	mov	r3, #432	@ tmp165,
	cmp	ip, #19	@ D.36429,
	sxtabls	ip, r0, ip	@ tmp159, D.36421, D.36429
	addls	ip, ip, #8	@ tmp160, tmp159,
	movls	r2, #0	@ tmp161,
	strlsb	r2, [ip, #6]	@ tmp161, <variable>.IsPmvInUse
	mla	ip, r3, r1, r0	@ tmp166, tmp165, LogicFrameID, D.36421
	mov	r0, #0	@ tmp168,
	add	r1, ip, #496	@ tmp167, tmp166,
	str	r0, [r1, #4]	@ tmp168, <variable>.eLfsPmvState
	bx	lr	@
.L188:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2500	@,
	b	dprint_vfmw	@
.L189:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC33	@,
	mov	r0, #0	@,
	movw	r2, #2501	@,
	b	dprint_vfmw	@
.L190:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2502	@,
	b	dprint_vfmw	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L196	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.35100, s_pFspInst
	cmp	r0, #0	@ D.35100,
	beq	.L197	@,
	ldr	r1, [r0, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	moveq	r1, #0	@ tmp141,
	streq	r1, [r0, #4]	@ tmp141, <variable>.eFspInstState
	bx	lr	@
.L196:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #303	@,
	b	dprint_vfmw	@
.L197:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	mov	r2, #304	@,
	b	dprint_vfmw	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #0]	@ temp.1153, s_pFspInst
	cmp	r3, #0	@ temp.1153,
	beq	.L199	@,
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L204	@,
.L199:
	ldr	r3, [r4, #4]	@ temp.1155, s_pFspInst
	cmp	r3, #0	@ temp.1155,
	beq	.L200	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L205	@,
.L200:
	ldr	r3, [r4, #8]	@ temp.1157, s_pFspInst
	cmp	r3, #0	@ temp.1157,
	beq	.L201	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L206	@,
.L201:
	ldr	r3, [r4, #12]	@ D.35018, s_pFspInst
	cmp	r3, #0	@ D.35018,
	ldmeqfd	sp!, {r4, pc}	@
.L207:
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, #3	@,
	ldmfd	sp!, {r4, lr}	@
	b	FSP_DisableInstance	@
.L206:
	mov	r0, #2	@,
	bl	FSP_DisableInstance	@
	ldr	r3, [r4, #12]	@ D.35018, s_pFspInst
	cmp	r3, #0	@ D.35018,
	bne	.L207	@,
	ldmfd	sp!, {r4, pc}	@
.L205:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	b	.L200	@
.L204:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L199	@
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_ConfigAttribute
	.type	FSP_ConfigAttribute, %function
FSP_ConfigAttribute:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L213	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.35035, s_pFspInst
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L214	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	mov	r0, #0	@ D.35033,
	strb	ip, [r3, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	ldmfd	sp!, {r3, pc}	@
.L214:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #234	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC36	@,
	movt	r3, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35033,
	ldmfd	sp!, {r3, pc}	@
.L213:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #233	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35033,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_ConfigAttribute, .-FSP_ConfigAttribute
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	ip, [r2, r0, asl #2]	@ D.36825, s_pFspInst
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	cmp	ip, #0	@ D.36825,
	beq	.L218	@,
	ldrb	r5, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #27860	@ tmp141,
	mov	r0, r1	@ tmp154, pFspInstInfo
	add	r1, ip, #27648	@, D.36825,
	mov	r2, #3328	@,
	add	r1, r1, #148	@,,
	strb	r5, [r3, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r5, [ip, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r4, #27808	@ tmp142,
	ldr	r4, [ip, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	r4, r4, r5	@ tmp145, <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [r3, #3336]	@ tmp145, <variable>.s32DecFsSize
	ldrb	r4, [ip, #11]	@ zero_extendqisi2	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	strb	r4, [r3, #2]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldrb	r4, [ip, #12]	@ zero_extendqisi2	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	strb	r4, [r3, #3]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrb	r4, [ip, #0]	@ zero_extendqisi2	@ <variable>.s32InstID, <variable>.s32InstID
	strb	r4, [r3, #4]	@ <variable>.s32InstID, <variable>.s32InstID
	ldrb	r3, [ip, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r3, [r0], #8	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	ldmfd	sp!, {r4, r5}
	b	memcpy	@
.L218:
	mov	r0, ip	@, D.36825
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2983	@,
	ldmfd	sp!, {r4, r5}
	b	dprint_vfmw	@
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	mov	sl, r2	@ IsWaitDisp, IsWaitDisp
	bhi	.L233	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L234	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp151,
	movt	r8, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r0, [r8, r0, asl #2]	@ tmp152, s_pFspInst
	cmp	r0, #0	@ tmp152,
	beq	.L235	@,
	add	r0, r8, #36	@, tmp151,
	rsbs	r7, r2, #1	@ D.36556, IsWaitDisp
	movcc	r7, #0	@ D.36556
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8, r4, asl #2]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp162,
	mla	r3, r3, r5, r6	@ tmp163, tmp162, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp164, tmp163,
	ldrsb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r1, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L236	@,
	cmp	r7, #0	@ D.36556,
	moveq	r3, #3	@ iftmp.535,
	bne	.L224	@,
.L226:
	mov	ip, #432	@ tmp188,
	mla	r5, ip, r5, r6	@ tmp189, tmp188, LogicFrameID, pstInst
	add	r1, r5, #96	@ tmp190, tmp189,
	ldrsb	r0, [r1, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r3, [r1, #1]	@ iftmp.535, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.IsDummyFs,
	bne	.L231	@,
	add	r4, r5, #504	@ tmp202, tmp189,
	ldr	ip, [r4, #4]	@ temp.1234, <variable>.pstDispOutFs
	cmp	ip, #0	@ temp.1234,
	beq	.L231	@,
	ldr	r2, [r5, #496]	@ D.36579, <variable>.u32Tick
	ldr	r3, [ip, #44]	@ D.36578, <variable>.u32Tick
	cmp	r3, r2	@ D.36578, D.36579
	bne	.L237	@,
	cmp	r7, #0	@ D.36556,
	strneb	r0, [r1, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r0, [ip, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r3, #3	@ tmp239,
	strne	r0, [r4, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r3, [r1, #1]	@ tmp239, <variable>.s32DispState
	streqb	r3, [ip, #2]	@ tmp239, <variable>.DispState
.L231:
	ldr	r0, .L239	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L236:
	ldr	r1, [r3, #508]	@ D.36560, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.36560,
	beq	.L224	@,
	ldrsb	r0, [r2, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.s32DispState,
	beq	.L224	@,
	ldr	r2, [r8, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L224	@,
	ldr	r3, [r8, #28]	@ D.37064, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r1, #12]	@ D.36569, <variable>.PhyAddr
	cmp	r3, #0	@ D.37064,
	beq	.L238	@,
	mov	r0, r4	@, InstID
	blx	r3	@ D.37064
.L224:
	mov	r3, #0	@ iftmp.535,
	b	.L226	@
.L233:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2662	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L234:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC33	@,
	mov	r0, #0	@,
	movw	r2, #2663	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L237:
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r0, .L239	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L235:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2664	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L238:
	mov	r0, r3	@, D.37064
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ iftmp.535,
	b	.L226	@
.L240:
	.align	2
.L239:
	.word	.LANCHOR0+36
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ LogicFrameID, LogicFrameID
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r5, r0, asl #2]	@ tmp145, s_pFspInst
	cmp	r3, #0	@ tmp145,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	ldr	ip, [r5, r4, asl #2]	@ tmp147, s_pFspInst
	mov	r2, #432	@ tmp150,
	mla	r1, r2, r6, ip	@ tmp151, tmp150, LogicFrameID, tmp147
	ldrsb	r0, [r1, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #3	@ <variable>.s32DispState,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, InstID
	mov	r1, r6	@, LogicFrameID
	mov	r2, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetDisplay	@
	.fnend
	.size	FSP_ClearLogicFs, .-FSP_ClearLogicFs
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r2, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r2, #0	@ pstInst,
	beq	.L264	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L247	@,
	add	r2, r2, #27648	@ ivtmp.1285, pstInst,
	sub	r3, r4, #1	@ tmp159, TotalFsNum,
	and	ip, r3, #1	@ tmp161, tmp159,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #148]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L265	@,
.L254:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #52	@ ivtmp.1285, ivtmp.1285,
	ble	.L247	@,
	cmp	ip, #0	@ tmp161,
	beq	.L250	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L256	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L249	@,
.L256:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.1285, ivtmp.1285,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L247	@,
.L250:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #52	@ tmp163, ivtmp.1285,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L248	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L249	@,
.L248:
	ldrsb	r2, [r2, #52]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp162, i
	bne	.L259	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L249	@,
.L259:
	add	r3, r2, #1	@ i, tmp162,
	add	r2, r1, #52	@ ivtmp.1285, tmp163,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L250	@,
.L247:
	add	r1, sp, #24	@ tmp151,,
	mov	r5, #0	@ tmp148,
	add	r2, sp, #12	@,,
	add	r3, sp, #16	@,,
	str	r5, [r1, #-4]!	@ tmp148, RefNum
	str	r5, [sp, #16]	@ tmp148, NewNum
	str	r5, [sp, #12]	@ tmp148, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #20]	@ RefNum.515, RefNum
	ldr	r3, [sp, #12]	@ ReadNum.514, ReadNum
	ldr	ip, [sp, #16]	@ NewNum.513, NewNum
	add	r0, r2, r3	@ tmp154, RefNum.515, ReadNum.514
	add	r1, r0, #2	@ tmp155, tmp154,
	add	r0, r1, ip	@ tmp156, tmp155, NewNum.513
	cmp	r4, r0	@ TotalFsNum, tmp156
	bgt	.L266	@,
.L251:
	mov	r0, #0	@ D.36156,
.L246:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L265:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L254	@,
.L249:
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L251	@,
	b	.L247	@
.L266:
	mov	r0, r5	@, tmp148
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	str	ip, [sp, #0]	@ NewNum.513,
	str	r4, [sp, #4]	@ TotalFsNum,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.36156,
	b	.L246	@
.L264:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36156,
	b	.L246	@
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r0	@ InstID, InstID
	bhi	.L296	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp150,
	ldr	r6, [r3, r0, asl #2]	@ D.36110, s_pFspInst
	cmp	r6, #0	@ D.36110,
	beq	.L297	@,
	ldr	r2, [r3, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L271	@,
	ldr	r4, [r3, #20]	@ D.37072, g_FspFrameIntf.IsFrameAvalible
	cmp	r4, #0	@ D.37072,
	beq	.L298	@,
	blx	r4	@ D.37072
	cmp	r0, #0	@,
	bne	.L273	@,
.L271:
	ldrb	r7, [r6, #10]	@ zero_extendqisi2	@ D.36119, <variable>.s32DecFsNum
	cmp	r7, #0	@ D.36119,
	beq	.L274	@,
	sxtb	r7, r7	@ D.36135, D.36119
	cmp	r7, #0	@ D.36135,
	ble	.L275	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp158,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp158,
	sub	r0, r7, #1	@ tmp165, D.36135,
	add	r6, r6, #27648	@ ivtmp.1318, D.36110,
	ldr	r2, [r3, r5, asl #2]	@ pretmp.1302, s_pstVfmwChan
	and	ip, r0, #1	@ tmp167, tmp165,
	add	r6, r6, #150	@ ivtmp.1318, ivtmp.1318,
	mov	r3, #0	@ i,
	add	r1, r2, #216064	@ ivtmp.1321, pretmp.1302,
	ldr	r0, [r2, #1580]	@ pretmp.1304, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1321, ivtmp.1321,
	cmp	r0, #1	@ pretmp.1304,
	beq	.L299	@,
.L282:
	ldrsb	r2, [r6, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L300	@,
.L283:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, D.36135
	add	r6, r6, #52	@ ivtmp.1318, ivtmp.1318,
	add	r1, r1, #16	@ ivtmp.1321, ivtmp.1321,
	bge	.L275	@,
	cmp	ip, #0	@ tmp167,
	beq	.L279	@,
	cmp	r0, r3	@ pretmp.1304,
	beq	.L295	@,
.L285:
	ldrsb	ip, [r6, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L286	@,
	ldrsb	r2, [r6, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L278	@,
.L286:
	add	r3, r3, #1	@ i, i,
	add	r6, r6, #52	@ ivtmp.1318, ivtmp.1318,
	cmp	r3, r7	@ i, D.36135
	add	r1, r1, #16	@ ivtmp.1321, ivtmp.1321,
	blt	.L279	@,
.L275:
	mov	r0, r5	@, InstID
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.36108,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L273:
	mov	r0, #0	@ D.36108,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L300:
	ldrsb	r2, [r6, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L283	@,
.L278:
	cmp	r3, r7	@ i, D.36135
	bge	.L275	@,
.L274:
	mov	r0, #1	@ D.36108,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L303:
	ldr	r4, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r4, #0	@ <variable>.eFrameState,
	bne	.L277	@,
.L276:
	ldrsb	r4, [r6, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r4, #0	@ <variable>.IsDecRef,
	bne	.L277	@,
	ldrsb	r4, [r6, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #0	@ <variable>.DispState,
	beq	.L278	@,
.L277:
	add	r3, r3, #1	@ i, i,
	cmp	r0, #1	@ pretmp.1304,
	mov	r4, r3	@ tmp168, i
	beq	.L301	@,
.L289:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L290	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L278	@,
.L290:
	add	r3, r4, #1	@ i, tmp168,
	add	r6, r2, #52	@ ivtmp.1318, tmp169,
	cmp	r3, r7	@ i, D.36135
	add	r1, ip, #16	@ ivtmp.1321, tmp170,
	bge	.L275	@,
.L279:
	cmp	r0, #1	@ pretmp.1304,
	add	r2, r6, #52	@ tmp169, ivtmp.1318,
	add	ip, r1, #16	@ tmp170, ivtmp.1321,
	bne	.L276	@,
	b	.L303	@
.L301:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L289	@,
	b	.L290	@
.L298:
	mov	r0, r4	@, D.37072
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36108, D.37072
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L299:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L282	@,
	b	.L283	@
.L295:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L285	@,
	b	.L286	@
.L296:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1892	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36108,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L297:
	mov	r0, r6	@, D.36110
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1893	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36108,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.type	FSP_DSDRePartitionFsMemory, %function
FSP_DSDRePartitionFsMemory:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #452
	sub	sp, sp, #452	@,,
	add	r6, sp, #32	@ tmp173,,
	mov	r5, r0	@ InstID, InstID
	mov	sl, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	mov	r0, r6	@, tmp173
	mov	r9, r2	@ MemSize, MemSize
	str	r3, [sp, #28]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #3	@ InstID,
	bhi	.L345	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp178,
	movt	r3, #:upper16:.LANCHOR0	@ tmp178,
	ldr	r4, [r3, r5, asl #2]	@ D.35276, s_pFspInst
	cmp	r4, #0	@ D.35276,
	beq	.L346	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp181,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp181,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.35279, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r0, #36]	@ D.35285, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrb	r7, [r4, #60]	@ zero_extendqisi2	@ D.35281, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ D.35285,
	mvneq	r2, #0	@ Ret,
	beq	.L309	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, sl	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r9	@, MemSize
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp185,
	str	lr, [sp, #4]	@ tmp185,
	ldrsb	lr, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r5, [sp, #12]	@ InstID,
	str	r6, [sp, #16]	@ tmp173,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	mov	lr, #64	@ tmp189,
	str	lr, [sp, #20]	@ tmp189,
	blx	ip	@ D.35285
	subs	r2, r0, #0	@ Ret,
	bne	.L309	@,
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	ip, r7	@ D.35281, D.35281
	sxtb	r8, r8	@ D.35279, D.35279
	add	r3, r8, ip, asl #2	@, MinFsNum, D.35279, D.35281,
	strb	r1, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	ip, [sp, #308]	@ temp.1450, MemArrange.ValidFrameNum
	cmp	r3, ip	@ MinFsNum, temp.1450
	bgt	.L311	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r2, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	beq	.L347	@,
	ldrb	r0, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r0, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L314:
	ldr	r7, [sp, #440]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r1, r4, #27648	@ ivtmp.1438, D.35276,
	movw	r2, #34640	@ tmp211,
	mov	r0, #0	@ i,
	add	r3, r1, #160	@ ivtmp.1438, ivtmp.1438,
	ldrsb	r6, [r4, #10]	@ D.35315, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp415, tmp211
	add	ip, sp, #32	@ ivtmp.1437,,
	mov	r1, r0	@ tmp414, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L317	@
.L349:
	str	r0, [r2, #-8]	@ tmp420, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp420,
	ldr	r7, [ip, #8]	@ tmp458, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1437, tmp421,
	str	r7, [r3, #52]	@ tmp458, <variable>.PhyAddr
	ldr	r3, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	fp, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	fp, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	fp, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp414, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp414, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp414, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.1438, tmp422,
	beq	.L348	@,
.L317:
	cmp	r6, r0	@ D.35315, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp414, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp420, i,
	ldrgt	r2, [ip, #8]	@ tmp215, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp421, ivtmp.1437,
	ldrle	r2, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.35315, tmp420
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r2, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r2, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r7, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r7, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r2, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r2, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	fp, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp414, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp414, <variable>.IsTfRef
	str	fp, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp414, <variable>.DispState
	ldr	r2, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp422, ivtmp.1438,
	bgt	.L349	@,
	str	r1, [r2, #-8]	@ tmp414, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp420,
	ldr	r7, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1437, tmp421,
	str	r7, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp414, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp414, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.1438, tmp422,
	strb	r1, [r2, #-10]	@ tmp414, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L317	@,
.L348:
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #448	@,,
	movw	r1, #34456	@ tmp248,
	mov	r0, #0	@ tmp249,
	mov	r3, #1	@ tmp246,
	str	r0, [r4, r1]	@ tmp249, <variable>.PhyFsID
	add	ip, r5, r2, asl #2	@, tmp255,, <variable>.s32DecFsNum,
	strb	r3, [r4, #12]	@ tmp246, <variable>.s32TfFsNum
	movw	fp, #34464	@ tmp250,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [ip, #-408]	@ tmp257, MemArrange.FrameAddr
	movw	r3, #34476	@ tmp260,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [r4, fp]	@ tmp257, <variable>.PhyAddr
	movw	fp, #34480	@ tmp262,
	ldr	r1, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r3]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r3, #34472	@ tmp258,
	str	ip, [r4, fp]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r1, [r4, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r1, #34484	@ tmp264,
	ldr	fp, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r3, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	fp, [r4, r1]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	fp, #34488	@ tmp266,
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r1, #34452	@ tmp270,
	cmp	r3, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #34453	@ tmp273,
	ldr	fp, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r0, [r4, r1]	@ tmp249, <variable>.IsDecRef
	movw	r1, #34492	@ tmp268,
	strb	r0, [r4, ip]	@ tmp249, <variable>.IsTfRef
	movw	ip, #34454	@ tmp276,
	str	fp, [r4, r1]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r0, [r4, ip]	@ tmp249, <variable>.DispState
	bne	.L318	@,
	mov	fp, r3	@ prephitmp.1349, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L320:
	add	r0, r4, #30976	@ tmp282, D.35276,
	mov	r2, #0	@ ivtmp.1403,
	add	r9, r0, #180	@ ivtmp.1415, tmp282,
	add	sl, r0, #152	@ ivtmp.1401, tmp282,
	add	r8, r0, #160	@ ivtmp.1407, tmp282,
	add	r7, r0, #168	@ ivtmp.1409, tmp282,
	add	r6, r0, #172	@ ivtmp.1411, tmp282,
	add	r5, r0, #176	@ ivtmp.1413, tmp282,
	mov	r3, r2	@ i.1497, ivtmp.1403
	mov	r1, r2	@ tmp412, ivtmp.1403
	b	.L319	@
.L351:
	str	r3, [sl, #0]	@ i.1497, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp302, i.1497, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp303, tmp302, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	r0, fp, r0, asl #2	@, tmp307,, tmp303,
	ldr	r0, [r0, #-408]	@ tmp309, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp309, <variable>.PhyAddr
	ldr	r0, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r0, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r0, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r0, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp412, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp412, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp412, <variable>.IsTfRef
.L322:
	add	r3, r3, #1	@ i.1497, i.1497,
	add	sl, sl, #52	@ ivtmp.1401, ivtmp.1401,
	cmp	r3, #64	@ i.1497,
	add	r2, r2, #52	@ ivtmp.1403, ivtmp.1403,
	add	r8, r8, #52	@ ivtmp.1407, ivtmp.1407,
	add	r7, r7, #52	@ ivtmp.1409, ivtmp.1409,
	add	r6, r6, #52	@ ivtmp.1411, ivtmp.1411,
	add	r5, r5, #52	@ ivtmp.1413, ivtmp.1413,
	add	r9, r9, #52	@ ivtmp.1415, ivtmp.1415,
	beq	.L350	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.1349, <variable>.s32DispFsNum
.L319:
	add	ip, r4, r2	@ D.38058, D.35276, ivtmp.1403
	cmp	fp, r3	@ prephitmp.1349, i.1497
	add	ip, ip, #30976	@ tmp315, D.38058,
	mov	r0, ip	@ tmp347, tmp315
	bgt	.L351	@,
	str	r1, [sl, #0]	@ tmp412, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp335, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	ip, fp, ip, asl #2	@, tmp339,, tmp335,
	ldr	ip, [ip, #-408]	@ tmp341, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp341, <variable>.PhyAddr
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	ip, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	ip, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	ip, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	ip, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp412, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp412, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp412, <variable>.IsTfRef
	b	.L322	@
.L347:
	ldrsb	r2, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r2, #0	@ <variable>.s8LowBufEnable,
	beq	.L313	@,
	ldr	fp, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	movw	r7, #34644	@ tmp204,
	strb	fp, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	ldr	r6, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r6, [r4, r7]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	b	.L314	@
.L350:
	ldr	r2, [sp, #436]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.1383, D.35276,
	mov	ip, #0	@ tmp411,
	mov	r3, #1	@ i.1499,
	cmp	r2, #20	@ MemArrange.ValidPMVNum,
	movge	r2, #20	@ tmp364,
	uxtb	r5, r2	@ prephitmp.1498, tmp364
	strb	r5, [r4, #13]	@ prephitmp.1498, <variable>.s32PmvNum
	ldr	r0, [sp, #312]	@ tmp442, MemArrange.PMVAddr
	add	r5, sp, #32	@,,
	strb	ip, [r4, #14]	@ tmp411, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.1389, D.35276,
	str	r0, [r1, #0]	@ tmp442, <variable>.PmvAddr
	add	r0, r5, #4	@ ivtmp.1508,,
	add	r1, r1, #4	@ ivtmp.1383, ivtmp.1383,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1498, <variable>.s32PmvNum
	b	.L327	@
.L352:
	ldr	r5, [r0, #280]	@ tmp446, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp411, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp446, <variable>.PmvAddr
.L341:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1498, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.1499, tmp416,
	add	r0, r0, #4	@ ivtmp.1508, tmp417,
	add	r1, r1, #4	@ ivtmp.1383, tmp418,
	add	r2, r2, #1	@ ivtmp.1389, tmp419,
.L327:
	sxtb	r5, r5	@ prephitmp.1498, prephitmp.1498
	cmp	r5, r3	@ prephitmp.1498, i.1499
	add	r3, r3, #1	@ tmp416, i.1499,
	ldrgt	r5, [r0, #280]	@ tmp368, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp417, ivtmp.1508,
	ldrle	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp416,
	strb	ip, [r2, #14]	@ tmp411, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp419, ivtmp.1389,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp418, ivtmp.1383,
	beq	.L326	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.1498, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.1498, tmp416
	bgt	.L352	@,
	ldr	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp411, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L341	@
.L326:
	movw	r1, #27808	@ tmp379,
	ldr	ip, [sp, #432]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp374,
	movw	r2, #27756	@ tmp378,
	movw	r1, #27748	@ tmp376,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp377,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r2, #27764	@ tmp381,
	str	r3, [r4, r1]	@ tmp377, <variable>.stDummyPhyFs.PhyFsID
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r0, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r2]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	ip, #27768	@ tmp383,
	str	r0, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #27772	@ tmp385,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	r2, #27776	@ tmp387,
	ldr	r1, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	movw	ip, #27780	@ tmp389,
	mov	r0, r3	@ D.35274, tmp377
	str	r1, [r4, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r2, #27744	@ tmp393,
	ldr	r1, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r4, ip]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	ip, #27745	@ tmp396,
	ldr	r1, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r2]	@ tmp377, <variable>.stDummyPhyFs.IsDecRef
	movw	r2, #27784	@ tmp391,
	strb	r3, [r4, ip]	@ tmp377, <variable>.stDummyPhyFs.IsTfRef
	movw	ip, #27746	@ tmp399,
	str	r1, [r4, r2]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r2, #34644	@ tmp404,
	strb	r3, [r4, ip]	@ tmp377, <variable>.stDummyPhyFs.DispState
	movw	r3, #34656	@ tmp402,
	ldr	r1, [sp, #444]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	r1, [r4, r3]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	ip, [r4, r2]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	ldr	r3, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r1, [sp, #28]	@, %sfp
	str	r3, [r1, #0]	@ MemArrange.TotalMemUsed,
.L306:
	add	sp, sp, #452	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L318:
	ldr	r3, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #67]	@ D.35338, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	fp, r3, #1	@ tmp289, MemArrange.ValidFrameNum,
	rsb	r1, r2, fp	@ tmp288, <variable>.s32DecFsNum, tmp289
	cmp	r1, #25	@ tmp288,
	movlt	r3, r1	@ tmp426, tmp288
	movge	r3, #25	@ tmp426,
	uxtb	fp, r3	@ prephitmp.1349,
	strb	fp, [r4, #11]	@ tmp2, <variable>.s32DispFsNum
	sxtb	fp, fp	@ prephitmp.1349,
	cmp	fp, ip	@ prephitmp.1349, D.35338
	bge	.L320	@,
	ldrsb	r3, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, fp	@, prephitmp.1349
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	ip, [sp, #0]	@ D.35338,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35274,
	b	.L306	@
.L313:
	ldr	r3, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ tmp206,
	strb	r3, [r4, #10]	@ tmp206, <variable>.s32DecFsNum
	b	.L314	@
.L311:
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ temp.1450,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35274,
	b	.L306	@
.L309:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35274,
	b	.L306	@
.L345:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #523	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35274,
	b	.L306	@
.L346:
	mov	r0, r4	@, D.35276
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #524	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35274,
	b	.L306	@
	.fnend
	.size	FSP_DSDRePartitionFsMemory, .-FSP_DSDRePartitionFsMemory
	.align	2
	.type	FSP_NoneDnrSwitchToDnrSpecialCase1, %function
FSP_NoneDnrSwitchToDnrSpecialCase1:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r7, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #44	@,,
	mov	r1, #416	@,
	str	r2, [sp, #28]	@ s32Num, %sfp
	mov	r5, #0	@ tmp181,
	str	r5, [sp, #460]	@ tmp181, s32UsedMemSize
	bl	__memzero	@
	cmp	r4, #3	@ InstID,
	bhi	.L414	@,
	cmp	r7, #0	@ VoUsingFrameArray,
	beq	.L415	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp190,
	movt	r3, #:upper16:.LANCHOR0	@ tmp190,
	ldr	r6, [r3, r4, asl #2]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L416	@,
	movw	r0, #34648	@ tmp194,
	ldr	r2, [r7, #0]	@ D.35709, <variable>.FrameAddr
	ldr	sl, [r6, r0]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r3, #34644	@ tmp196,
	movw	lr, #34656	@ tmp197,
	ldr	r8, [r6, r3]	@ <variable>.TotalMemUsed, <variable>.TotalMemUsed
	ldr	ip, [r6, lr]	@ <variable>.StrideByte, <variable>.StrideByte
	cmp	sl, r2	@ s32VdhMemAddr, D.35709
	movw	r1, #34652	@ tmp195,
	rsblt	r5, sl, r2	@ s32FreeSize.1554, s32VdhMemAddr, D.35709
	ldr	r0, [r6, r1]	@, <variable>.MemSize
	add	r8, r8, ip	@ s32VdhTotalMemUse, <variable>.TotalMemUsed, <variable>.StrideByte
	cmp	r5, r8	@ s32FreeSize.1554, s32VdhTotalMemUse
	str	r0, [sp, #32]	@, %sfp
	movge	r2, #1	@,
	strge	r2, [sp, #36]	@, %sfp
	bge	.L374	@,
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r3, [sp, #32]	@, %sfp
	sub	r0, ip, #1	@ temp.1594,,
	add	ip, r3, sl	@ D.35717,, s32VdhMemAddr
	add	r3, r7, r0, asl #3	@, D.35721, VoUsingFrameArray, temp.1594,
	ldr	r1, [r7, r0, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r1, lr, r1	@ D.35724, <variable>.FrameSize, <variable>.FrameAddr
	cmp	ip, r1	@ D.35717, D.35724
	rsbgt	ip, r1, ip	@ s32FreeSize.1555, D.35724, D.35717
	movle	ip, #0	@ s32FreeSize.1555,
	cmp	ip, r8	@ s32FreeSize.1555, s32VdhTotalMemUse
	bge	.L363	@,
	cmp	r0, #0	@ temp.1594,
	ble	.L364	@,
	ldr	r5, [r7, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r7, #8	@ D.35735, VoUsingFrameArray,
	ldr	r1, [r7, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r2, r5	@ D.35742, D.35709, <variable>.FrameSize
	rsb	r2, r5, r1	@ tmp205, D.35742, <variable>.FrameAddr
	cmp	r8, r2	@ s32VdhTotalMemUse, tmp205
	movle	r2, r7	@ VoUsingFrameArray.1558, VoUsingFrameArray
	ble	.L366	@,
	tst	r0, #1	@ temp.1594,
	mov	lr, #0	@ i,
	bne	.L368	@,
	ldr	r5, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r2, r3	@ VoUsingFrameArray.1558, ivtmp.1548
	ldr	ip, [r3, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	lr, #1	@ i,
	ldr	r1, [r3, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r5, ip	@ D.35742, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r1, r5, r1	@ s32FreeSize.1563, D.35742, <variable>.FrameAddr
	cmp	r8, r1	@ s32VdhTotalMemUse, s32FreeSize.1563
	bgt	.L368	@,
.L366:
	movw	r0, #34648	@ tmp214,
	movw	r9, #34652	@ tmp215,
	str	r5, [r6, r0]	@ D.35742, <variable>.MemAddr
	str	r8, [r6, r9]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r1, [r2, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r1, r8	@ tmp217, <variable>.FrameSize, s32VdhTotalMemUse
	str	r3, [r2, #4]	@ tmp217, <variable>.FrameSize
	b	.L367	@
.L363:
	movw	lr, #34648	@ tmp207,
	movw	r0, #34652	@ tmp208,
	str	r1, [r6, lr]	@ D.35724, <variable>.MemAddr
	str	r8, [r6, r0]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r9, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r9, r8	@ tmp210, <variable>.FrameSize, s32VdhTotalMemUse
	str	r2, [r3, #4]	@ tmp210, <variable>.FrameSize
.L367:
	movw	r5, #34648	@ tmp286,
	movw	r9, #34652	@ tmp288,
	ldr	r1, [r6, r5]	@, <variable>.MemAddr
	mov	r0, r4	@, InstID
	ldr	r2, [r6, r9]	@, <variable>.MemSize
	add	r3, sp, #460	@,,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	beq	.L417	@,
	ldr	r3, [sp, #460]	@ s32UsedMemSize.481, s32UsedMemSize
	cmp	r8, r3	@ s32VdhTotalMemUse, s32UsedMemSize.481
	movge	r3, #0	@,
	strge	r3, [sp, #36]	@, %sfp
	blt	.L418	@,
.L374:
	ldrsb	r2, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	movwle	r5, #:lower16:s_pstVfmwChan	@ tmp293,
	movtle	r5, #:upper16:s_pstVfmwChan	@ tmp293,
	ble	.L372	@,
	add	fp, r6, #27648	@ ivtmp.1543, pstInst,
	mov	r3, #0	@ i.1570,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp293,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp293,
	add	r0, fp, #160	@ ivtmp.1543, ivtmp.1543,
	mov	ip, r3	@ tmp298, i.1570
	movw	fp, #34640	@ tmp299,
.L375:
	ldr	lr, [r5, r4, asl #2]	@ tmp229, s_pstVfmwChan
	mov	r1, r3, asl #4	@ tmp231, i.1570,
	add	r2, r3, #13504	@ tmp244, i.1570,
	add	r3, r3, #1	@ i.1570, i.1570,
	add	r9, r1, lr	@ tmp232, tmp231, tmp229
	add	r2, r2, #23	@ tmp244, tmp244,
	add	lr, r9, #216064	@ tmp233, tmp232,
	add	r9, lr, #360	@ tmp233, tmp233,
	str	ip, [r9, #0]	@ tmp298, <variable>.eFrameState
	ldr	r9, [r5, r4, asl #2]	@ tmp236, s_pstVfmwChan
	ldr	lr, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, r1, r9	@ tmp239, tmp231, tmp236
	add	r1, r1, #216064	@ tmp240, tmp239,
	add	r1, r1, #360	@ tmp240, tmp240,
	str	lr, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [r6, fp]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	ldr	r1, [r5, r4, asl #2]	@ tmp243, s_pstVfmwChan
	str	lr, [r1, r2, asl #4]	@ <variable>.ImgSlotLen, <variable>.s32FrameSize
	ldr	lr, [r5, r4, asl #2]	@ tmp249, s_pstVfmwChan
	add	r2, lr, r2, asl #4	@, tmp254, tmp249, tmp244,
	str	ip, [r2, #4]	@ tmp298, <variable>.s32UsingCount
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r3	@ <variable>.s32DecFsNum, i.1570
	bgt	.L375	@,
.L372:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp259,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp259,
	ldr	r3, [r5, r4, asl #2]	@ temp.1571, s_pstVfmwChan
	ldr	ip, [r0, #36]	@ D.35769, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.35769,
	ldr	r1, [r3, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r3, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r3, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L376	@,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	lr, #0	@ tmp262,
	mov	r1, #0	@ tmp260,
	str	lr, [sp, #12]	@ tmp262,
	str	r1, [sp, #8]	@ tmp260,
	add	r0, sp, #44	@ tmp264,,
	mov	lr, #64	@ tmp265,
	str	r0, [sp, #16]	@ tmp264,
	str	r1, [sp, #0]	@ tmp260,
	mov	r0, #1	@,
	str	lr, [sp, #20]	@ tmp265,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.35769
	cmp	r0, #0	@,
	bne	.L376	@,
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [r5, r4, asl #2]	@ tmp269, s_pstVfmwChan
	ldr	r3, [sp, #36]	@, %sfp
	str	ip, [r2, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r3, #1	@,
	ldr	r1, [r5, r4, asl #2]	@ temp.1573, s_pstVfmwChan
	ldr	ip, [r1, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	beq	.L419	@,
.L378:
	ldr	r2, [sp, #28]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	sub	r0, r2, #1	@ temp.1594,,
	add	sl, lr, sl	@ temp.1575,, s32VdhMemAddr
	add	r3, r7, r0, asl #3	@, temp.1579, VoUsingFrameArray, temp.1594,
	ldr	lr, [r7, r0, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r2, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r2, lr	@ temp.1582, <variable>.FrameSize, <variable>.FrameAddr
	cmp	sl, r3	@ temp.1575, temp.1582
	rsbgt	sl, r3, sl	@ s32FreeSize, temp.1582, temp.1575
	movle	sl, #0	@ s32FreeSize,
	cmp	sl, ip	@ s32FreeSize, s32DnrSize
	strge	r3, [r1, #236]	@ temp.1582, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.35697,
	bge	.L355	@,
	cmp	r0, #0	@ temp.1594,
	ble	.L384	@,
	ldmia	r7, {r4, lr}	@ phole ldm
	ldr	r3, [r7, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r2, r4, lr	@ temp.1586, <variable>.FrameAddr, <variable>.FrameSize
	rsb	r4, r2, r3	@ tmp278, temp.1586, <variable>.FrameAddr
	cmp	ip, r4	@ s32DnrSize, tmp278
	ble	.L385	@,
	tst	r0, #1	@ temp.1594,
	mov	r5, #0	@ i.1583,
	bne	.L387	@,
	ldr	r2, [r7, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r5, #1	@ i.1583,
	ldr	r4, [r7, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r7, r7, #8	@ ivtmp.1538, ivtmp.1538,
	add	r2, r2, r3	@ temp.1586, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r3, r2, r4	@ s32FreeSize.1588, temp.1586, <variable>.FrameAddr
	cmp	ip, r3	@ s32DnrSize, s32FreeSize.1588
	bgt	.L387	@,
	b	.L385	@
.L388:
	add	r2, r7, #8
	ldmia	r2, {r2, r6, lr}	@ phole ldm
	add	r7, r3, #8	@ ivtmp.1538, tmp304,
	add	r2, r6, r2	@ temp.1586, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r2, lr	@ s32FreeSize.1588, temp.1586, <variable>.FrameAddr
	cmp	ip, r4	@ s32DnrSize, s32FreeSize.1588
	ble	.L385	@,
	ldr	r4, [r3, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r2, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r3, [r3, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r2, r4, r2	@ temp.1586, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r2, r3	@ s32FreeSize.1588, temp.1586, <variable>.FrameAddr
	cmp	ip, lr	@ s32DnrSize, s32FreeSize.1588
	ble	.L385	@,
.L387:
	add	r4, r5, #1	@ tmp303, i.1583,
	add	r3, r7, #8	@ tmp304, ivtmp.1538,
	cmp	r4, r0	@ tmp303, temp.1594
	add	r5, r4, #1	@ i.1583, tmp303,
	blt	.L388	@,
.L389:
	ldr	lr, [sp, #28]	@, %sfp
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC50	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC50	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1299	@,
	stmia	sp, {r4, lr}	@ phole stm
	str	ip, [sp, #8]	@ s32DnrSize,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
.L355:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L376:
	movw	r1, #:lower16:.LC48	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC48	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [r5, r4, asl #2]	@ tmp269, s_pstVfmwChan
	ldr	r3, [sp, #36]	@, %sfp
	str	ip, [r2, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r3, #1	@,
	ldr	r1, [r5, r4, asl #2]	@ temp.1573, s_pstVfmwChan
	ldr	ip, [r1, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	bne	.L378	@,
.L419:
	ldr	lr, [r7, #0]	@ temp.1574, <variable>.FrameAddr
	add	r8, r8, sl	@ D.35777, s32VdhTotalMemUse, s32VdhMemAddr
	cmp	lr, r8	@ temp.1574, D.35777
	rsbgt	lr, r8, lr	@ s32FreeSize.1556, D.35777, temp.1574
	movle	lr, #0	@ s32FreeSize.1556,
	cmp	lr, ip	@ s32FreeSize.1556, s32DnrSize
	strge	r8, [r1, #236]	@ D.35777, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.35697,
	blt	.L378	@,
	b	.L355	@
.L369:
	ldmia	r3, {r5, r9}	@ phole ldm
	ldr	ip, [r1, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r9, r5	@ D.35742, <variable>.FrameSize, <variable>.FrameAddr
	rsb	ip, r5, ip	@ s32FreeSize.1563, D.35742, <variable>.FrameAddr
	cmp	r8, ip	@ s32VdhTotalMemUse, s32FreeSize.1563
	ble	.L366	@,
	ldr	ip, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r1	@ VoUsingFrameArray.1558, tmp309
	ldr	r5, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r1, #8	@ ivtmp.1548, VoUsingFrameArray.1558,
	ldr	r1, [r1, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r5, ip	@ D.35742, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r1, r5, r1	@ s32FreeSize.1563, D.35742, <variable>.FrameAddr
	cmp	r8, r1	@ s32VdhTotalMemUse, s32FreeSize.1563
	ble	.L366	@,
.L368:
	add	ip, lr, #1	@ tmp308, i,
	mov	r1, r3	@ tmp309, ivtmp.1548
	cmp	r0, ip	@ temp.1594, tmp308
	add	lr, ip, #1	@ i, tmp308,
	mov	r2, r3	@ VoUsingFrameArray.1558, ivtmp.1548
	bgt	.L369	@,
.L370:
	str	ip, [sp, #0]	@ i,
	mov	r0, #31	@,
	ldr	ip, [sp, #28]	@, %sfp
	movw	r1, #:lower16:.LC49	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC49	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r3, #1216	@,
	str	ip, [sp, #4]	@,
	str	r8, [sp, #8]	@ s32VdhTotalMemUse,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
	b	.L355	@
.L385:
	str	r2, [r1, #236]	@ temp.1586, <variable>.s32OffLineDnrMemAddr
	mov	r0, #0	@ D.35697,
	b	.L355	@
.L384:
	mov	r4, #0	@ i.1583,
	b	.L389	@
.L418:
	str	r3, [sp, #0]	@ s32UsedMemSize.481,
	mov	r0, #31	@,
	str	r8, [sp, #4]	@ s32VdhTotalMemUse,
	movw	r1, #:lower16:.LC47	@,
	ldr	lr, [r6, r9]	@ <variable>.MemSize, <variable>.MemSize
	movt	r1, #:upper16:.LC47	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movw	r3, #1233	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	str	lr, [sp, #8]	@ <variable>.MemSize,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
	b	.L355	@
.L414:
	mov	r0, r5	@, tmp181
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1164	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
	b	.L355	@
.L364:
	mov	ip, #0	@ i,
	b	.L370	@
.L417:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC46	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1228	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35697, s32Ret
	b	.L355	@
.L416:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC46	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1170	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
	b	.L355	@
.L415:
	mov	r0, r7	@, VoUsingFrameArray
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1165	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC45	@,
	movt	r3, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35697,
	b	.L355	@
	.fnend
	.size	FSP_NoneDnrSwitchToDnrSpecialCase1, .-FSP_NoneDnrSwitchToDnrSpecialCase1
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0	@ InstID, InstID
	bhi	.L448	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp188,
	movt	r8, #:upper16:.LANCHOR0	@ tmp188,
	ldr	r7, [r8, r0, asl #2]	@ D.35160, s_pFspInst
	cmp	r7, #0	@ D.35160,
	beq	.L449	@,
	add	r0, r7, #96	@, D.35160,
	mov	r1, #27648	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L424	@,
	add	r4, r7, #27648	@ ivtmp.1638, D.35160,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.1638, ivtmp.1638,
	mov	r9, r8	@ tmp191, tmp188
	mov	r6, r5	@ tmp193, i
	b	.L429	@
.L427:
	mov	r0, sl	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.37083
.L426:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L425	@,
	ldr	r3, [r8, #28]	@ D.37089, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ temp.1640, <variable>.PhyAddr
	cmp	r3, #0	@ D.37089,
	beq	.L450	@,
	mov	r0, sl	@, InstID
	blx	r3	@ D.37089
.L425:
	strb	r6, [r4, #-44]	@ tmp193, <variable>.IsDecRef
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp193, <variable>.DispState
	str	r6, [r4], #52	@ tmp193, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	ble	.L424	@,
.L429:
	ldr	r1, [r4, #-32]	@ D.35169, <variable>.PhyAddr
	cmp	r1, #0	@ D.35169,
	beq	.L425	@,
	ldr	r0, [r8, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L425	@,
	ldrsb	r2, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L426	@,
	ldr	r3, [r9, #32]	@ D.37083, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37083,
	bne	.L427	@,
	mov	r0, r3	@, D.37083
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L426	@
.L450:
	mov	r0, r3	@, D.37089
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	strb	r6, [r4, #-44]	@ tmp193, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp193, <variable>.DispState
	str	r6, [r4], #52	@ tmp193, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	bgt	.L429	@,
.L424:
	ldrsb	ip, [r7, #11]	@ D.35184, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.35184,
	ble	.L430	@,
	add	r4, r7, #30976	@ tmp177, D.35160,
	cmp	ip, #1	@ D.35184,
	add	lr, r4, #192	@ ivtmp.1630, tmp177,
	sub	r3, ip, #1	@ tmp200, D.35184,
	and	r5, r3, #1	@ tmp202, tmp200,
	mov	r0, #1	@ i.1642,
	mov	r3, #0	@ tmp190,
	add	r2, r4, #244	@ ivtmp.1630, tmp177,
	str	r3, [lr, #0]	@ tmp190, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [lr, #-42]	@ tmp190, <variable>.DispState
	ble	.L430	@,
	cmp	r5, #0	@ tmp202,
	beq	.L431	@,
	mov	r0, #2	@ i.1642,
	cmp	ip, r0	@ D.35184, i.1642
	str	r3, [r2, #0]	@ tmp190, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp190, <variable>.DispState
	add	r2, r4, #296	@ ivtmp.1630, tmp177,
	ble	.L430	@,
.L431:
	add	r0, r0, #2	@ i.1642, i.1642,
	mov	r1, r2	@ tmp203, ivtmp.1630
	cmp	ip, r0	@ D.35184, i.1642
	str	r3, [r1], #52	@ tmp190, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp190, <variable>.DispState
	str	r3, [r2, #52]	@ tmp190, <variable>.u32Tick
	add	r2, r2, #104	@ ivtmp.1630, ivtmp.1630,
	strb	r3, [r1, #-42]	@ tmp190, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp190, <variable>.IsDecRef
	bgt	.L431	@,
.L430:
	ldrsb	ip, [r7, #13]	@ D.35186, <variable>.s32PmvNum
	cmp	ip, #0	@ D.35186,
	ble	.L432	@,
	cmp	ip, #1	@ D.35186,
	sub	r0, ip, #1	@ tmp195, D.35186,
	and	r1, r0, #1	@ tmp197, tmp195,
	mov	r2, #1	@ i.1643,
	mov	r0, #0	@ tmp189,
	add	r3, r7, r2	@ ivtmp.1623, D.35160,
	strb	r0, [r7, #14]	@ tmp189, <variable>.IsPmvInUse
	ble	.L432	@,
	cmp	r1, #0	@ tmp197,
	beq	.L433	@,
	mov	r2, #2	@ i.1643,
	cmp	ip, r2	@ D.35186, i.1643
	strb	r0, [r3, #14]	@ tmp189, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1623, ivtmp.1623,
	ble	.L432	@,
.L433:
	add	r2, r2, #2	@ i.1643, i.1643,
	add	lr, r3, #1	@ tmp199, ivtmp.1623,
	cmp	ip, r2	@ D.35186, i.1643
	strb	r0, [r3, #14]	@ tmp189, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp189, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1623, tmp199,
	bgt	.L433	@,
.L432:
	mov	r0, #0	@ tmp186,
	str	r0, [r7, #36]	@ tmp186, <variable>.u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L448:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #379	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35158,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L449:
	mov	r0, r7	@, D.35160
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #380	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35158,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L457	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r3, r0, asl #2]	@ D.35080, s_pFspInst
	cmp	r4, #0	@ D.35080,
	beq	.L458	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.35078,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r4	@, D.35080
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp143,
	mov	r0, r5	@ D.35078, <variable>.eFspInstState
	str	r1, [r4, #4]	@ tmp143, <variable>.eFspInstState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L458:
	mov	r0, r4	@, D.35080
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35078,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L457:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #282	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35078,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_ClearContext
	.type	FSP_ClearContext, %function
FSP_ClearContext:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ pFspInst, pFspInst
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L464	@,
	add	sl, r4, #40	@ tmp154, pFspInst,
	add	r8, sp, #4	@ tmp155,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.s32InstID
	mov	r6, sl	@ tmp142, tmp154
	mov	r7, r8	@ tmp141, tmp155
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp142,,,,
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, <variable>.s8LowBufEnable
	ldr	r9, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	stmia	r7!, {r0, r1, r2, r3}	@ tmp141,,,,
	ldr	r2, [r6, #0]	@ <variable>.stPreInfo, <variable>.stPreInfo
	movw	r1, #34664	@,
	mov	r0, r4	@, pFspInst
	str	r2, [r7, #0]	@ <variable>.stPreInfo, stTmpPreInfo
	bl	__memzero	@
	sxtb	r2, r5	@ s8TmpInstID, s8TmpInstID
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp146,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp146,
	str	r9, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	strb	fp, [r4, #1]	@, <variable>.s8LowBufEnable
	strb	r5, [r4, #0]	@ s8TmpInstID, <variable>.s32InstID
	ldr	r3, [r0, r2, asl #2]	@ tmp148, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	ldmeqia	r8!, {r0, r1, r2, r3}	@ tmp151,,,,
	movne	ip, #0	@ D.35053,
	moveq	ip, #0	@ D.35053,
	stmeqia	sl!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldreq	r3, [r7, #0]	@ stTmpPreInfo, stTmpPreInfo
	streq	r3, [r6, #0]	@ stTmpPreInfo,
.L461:
	mov	r0, ip	@, D.35053
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L464:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #254	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.35053,
	b	.L461	@
	.fnend
	.size	FSP_ClearContext, .-FSP_ClearContext
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bhi	.L473	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L474	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, r0, asl #2]	@ D.35230, s_pFspInst
	cmp	r2, #0	@ D.35230,
	beq	.L469	@,
	ldr	r2, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L469	@,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp150,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp150,
	mov	r6, #0	@ tmp147,
	strb	r6, [r1, #0]	@ tmp147, <variable>.s32DispLoopEnable
	ldr	r1, [r5, r0, asl #2]	@ tmp151, s_pstVfmwChan
	ldr	r5, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r1, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L471	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L471:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	add	r5, r5, #60	@ tmp153, pstInst,
	mov	r6, #0	@ D.35224,
	mov	ip, r5	@ tmp154, tmp153
	stmia	ip!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldr	r0, [r4, #0]	@ tmp156,* pstFspInstCfg
	str	r0, [ip, #0]	@ tmp156, <variable>.stInstCfg
.L467:
	mov	r0, r6	@, D.35224
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L469:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #488	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC53	@,
	movt	r3, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35224,
	b	.L467	@
.L473:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #485	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35224,
	b	.L467	@
.L474:
	mov	r0, r1	@, pstFspInstCfg
	movw	r2, #486	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.35224,
	b	.L467	@
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r7, r0	@ InstID, InstID
	bhi	.L496	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp162,
	movt	r6, #:upper16:.LANCHOR0	@ tmp162,
	ldr	sl, [r6, r0, asl #2]	@ D.35120, s_pFspInst
	cmp	sl, #0	@ D.35120,
	beq	.L497	@,
	add	r4, sl, #27648	@ ivtmp.1747, D.35120,
	mov	r5, #0	@ i,
	add	r4, r4, #160	@ ivtmp.1747, ivtmp.1747,
	mov	r8, r6	@ tmp163, tmp162
	b	.L483	@
.L481:
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.37100
.L480:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L479	@,
	ldr	r3, [r6, #28]	@ D.37106, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1753, <variable>.PhyAddr
	cmp	r3, #0	@ D.37106,
	beq	.L498	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.37106
.L479:
	ldr	r1, [r4, #52]	@ D.35124, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp167, i,
	add	r4, r4, #52	@ tmp168, ivtmp.1747,
	cmp	r1, #0	@ D.35124,
	beq	.L486	@,
	ldr	r2, [r6, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L486	@,
	ldrsb	ip, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L487	@,
	ldr	r3, [r8, #32]	@ D.37100, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37100,
	beq	.L494	@,
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.37100
.L487:
	ldrsb	lr, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L486	@,
	ldr	r3, [r6, #28]	@ D.37106, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1753, <variable>.PhyAddr
	cmp	r3, #0	@ D.37106,
	beq	.L493	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.37106
.L486:
	add	r5, r5, #1	@ i, tmp167,
	add	r4, r4, #52	@ ivtmp.1747, tmp168,
	cmp	r5, #64	@ i,
	beq	.L499	@,
.L483:
	ldr	r1, [r4, #0]	@ D.35124, <variable>.PhyAddr
	cmp	r1, #0	@ D.35124,
	beq	.L479	@,
	ldr	r3, [r6, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L479	@,
	ldrsb	r0, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	beq	.L480	@,
	ldr	r3, [r8, #32]	@ D.37100, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37100,
	bne	.L481	@,
	mov	r0, r3	@, D.37100
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L480	@
.L499:
	mov	r0, sl	@, D.35120
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.35118,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L498:
	mov	r0, r3	@, D.37106
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L479	@
.L494:
	mov	r0, r3	@, D.37100
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L487	@
.L493:
	mov	r0, r3	@, D.37106
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L486	@
.L496:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #325	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35118,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L497:
	mov	r0, sl	@, D.35120
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #326	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35118,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r1, #16	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	add	r0, r4, #44	@, tmp133,
	mov	r1, #32	@,
	bl	__memzero	@
	mvn	r3, #0	@ tmp138,
	mov	r2, #0	@ tmp149,
	add	r0, r4, #20	@, tmp133,
	mov	r1, #16	@,
	strh	r3, [r4, #70]	@ movhi	@ tmp138, <variable>.history
	str	r2, [r4, #16]	@ tmp149, g_IsFrameIntfValid
	strh	r3, [r4, #46]	@ movhi	@ tmp138, <variable>.history
	strh	r3, [r4, #54]	@ movhi	@ tmp138, <variable>.history
	strh	r3, [r4, #62]	@ movhi	@ tmp138, <variable>.history
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r0	@ InstID, InstID
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bhi	.L618	@,
	movw	r9, #:lower16:.LANCHOR0	@ tmp742,
	movt	r9, #:upper16:.LANCHOR0	@ tmp742,
	ldr	r0, [r9, r0, asl #2]	@ tmp212, s_pFspInst
	cmp	r0, #0	@ tmp212,
	beq	.L619	@,
	movw	r8, #:lower16:s_pstVfmwChan	@ tmp745,
	movt	r8, #:upper16:s_pstVfmwChan	@ tmp745,
	add	r0, r9, #36	@, tmp742,
	mov	r4, #0	@ i.1911,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, r7, asl #2]	@ pretmp.1795, s_pstVfmwChan
	ldr	r5, [r9, r7, asl #2]	@ pstInst, s_pFspInst
	add	r1, r3, #216064	@ ivtmp.1875, pretmp.1795,
	ldr	r0, [r3, #1580]	@ pretmp.1797, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1875, ivtmp.1875,
	mov	r3, r5	@ ivtmp.1928, pstInst
	b	.L510	@
.L506:
	ldrsb	lr, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L507	@,
	ldrsb	sl, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	sl, #0	@ <variable>.s32DispState,
	beq	.L607	@,
.L507:
	add	r4, r4, #1	@ i.1911, i.1911,
	cmp	r0, #1	@ pretmp.1797,
	mov	r3, r4	@ tmp777, i.1911
	beq	.L620	@,
.L584:
	ldrsb	lr, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L585	@,
	ldrsb	sl, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	sl, #0	@ <variable>.s32DispState,
	beq	.L607	@,
.L585:
	add	r4, r3, #1	@ i.1911, tmp777,
	add	r1, ip, #16	@ ivtmp.1875, tmp779,
	cmp	r4, #64	@ i.1911,
	add	r3, r2, #432	@ ivtmp.1928, tmp778,
	beq	.L508	@,
.L510:
	cmp	r0, #1	@ pretmp.1797,
	add	r2, r3, #432	@ tmp778, ivtmp.1928,
	add	ip, r1, #16	@ tmp779, ivtmp.1875,
	bne	.L506	@,
	ldr	lr, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #0	@ <variable>.eFrameState,
	beq	.L506	@,
	add	r4, r4, #1	@ i.1911, i.1911,
	cmp	r0, #1	@ pretmp.1797,
	mov	r3, r4	@ tmp777, i.1911
	bne	.L584	@,
.L620:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L584	@,
	add	r4, r3, #1	@ i.1911, tmp777,
	add	r1, ip, #16	@ ivtmp.1875, tmp779,
	cmp	r4, #64	@ i.1911,
	add	r3, r2, #432	@ ivtmp.1928, tmp778,
	bne	.L510	@,
.L508:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	ldr	r0, .L632	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L607:
	mov	r1, #432	@ tmp226,
	mul	ip, r1, r4	@ tmp225, tmp226, i.1911
	add	r0, ip, #96	@ tmp239, tmp225,
	add	r3, ip, r5	@ tmp227, tmp225, pstInst
	add	r2, r5, r0	@ tmp240, pstInst, tmp239
	add	r1, r3, #96	@ tmp228, tmp227,
	cmp	r2, #0	@ tmp240,
	strb	r4, [r1, #3]	@ i.1911, <variable>.s32LogicFsID
	strb	sl, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L508	@,
	add	ip, r3, #504	@ tmp248, tmp227,
	add	r0, r3, #512	@ tmp260, tmp227,
	cmp	r6, #0	@ NeedPhyFs,
	str	sl, [r3, #504]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	sl, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	sl, [r3, #512]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	sl, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	bne	.L621	@,
	add	r2, r5, #27648	@ D.36259, pstInst,
	mov	sl, #1	@ tmp310,
	add	lr, r2, #96	@ D.36259, D.36259,
	str	lr, [r3, #512]	@ D.36259, <variable>.pstTfOutFs
	str	lr, [r3, #504]	@ D.36259, <variable>.pstDecodeFs
	mov	r3, #34560	@ tmp294,
	str	lr, [ip, #4]	@ D.36259, <variable>.pstDispOutFs
	ldr	fp, [r5, r3]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	fp, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r9, [r5, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	sl, [r1, #2]	@ tmp310, <variable>.IsDummyFs
	sub	r6, r9, #1	@ tmp303, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp303, <variable>.PmvIdc
.L514:
	mov	fp, #432	@ tmp493,
	mov	r3, #1	@ tmp496,
	mul	sl, fp, r4	@ tmp492, tmp493, i.1911
	mov	r1, #392	@,
	add	r6, sl, r5	@ tmp494, tmp492, pstInst
	add	r9, sl, #104	@ tmp554, tmp492,
	add	r2, r6, #504	@ tmp502, tmp494,
	add	sl, r6, #96	@ tmp495, tmp494,
	add	r4, r6, #152	@, tmp494,
	add	r0, r5, r9	@, pstInst, tmp554
	ldr	lr, [r2, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	ip, r6, #136	@ tmp601, tmp494,
	strb	r3, [sl, #1]	@ tmp496, <variable>.s32DispState
	add	fp, r6, #208	@ tmp589, tmp494,
	str	r4, [sp, #24]	@, %sfp
	add	r4, r6, #216	@, tmp494,
	str	r4, [sp, #20]	@, %sfp
	add	r9, r6, #224	@ tmp642, tmp494,
	strb	r3, [lr, #2]	@ tmp496, <variable>.DispState
	add	lr, r6, #144	@, tmp494,
	str	lr, [sp, #28]	@, %sfp
	str	r3, [r6, #500]	@ tmp496, <variable>.eLfsPmvState
	ldr	r4, [r6, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r5, #36]	@ D.36347, <variable>.u32InstTick
	str	r3, [r6, #496]	@ D.36347, <variable>.u32Tick
	str	r3, [r4, #44]	@ D.36347, <variable>.u32Tick
	ldr	lr, [r2, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [r6, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r4, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r5, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	r4, r3, #1	@ tmp536, <variable>.u32InstTick,
	str	r4, [r5, #36]	@ tmp536, <variable>.u32InstTick
	ldr	lr, [r6, #512]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [r2, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #504]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [sp, #12]	@,
	str	ip, [sp, #16]	@,
	bl	__memzero	@
	ldrsb	r2, [sl, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r2, [r6, #280]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r3, [r5, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r3, [r6, #248]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	ip, [r5, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	ip, [r6, #252]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #276]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	r2, [r5, #12]	@ D.36363, <variable>.PhyAddr
	str	r2, [r6, #208]	@ D.36363, <variable>.stDispImg.luma_phy_addr
	mov	r0, r2	@, D.36363
	ldr	r1, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, r2	@ tmp596, <variable>.ChromOffset, D.36363
	str	r3, [fp, #4]	@ tmp596, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [fp, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #16]	@,
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.36376, <variable>.PhyAddr
	str	r2, [r6, #192]	@ D.36376, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r1, r2, r1	@ D.36379, D.36376, <variable>.ChromOffset
	str	r1, [r6, #196]	@ D.36379, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r3, r0, r2	@ tmp630, <variable>.Stride, D.36376
	str	r3, [r6, #200]	@ tmp630, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, r1, ip	@ tmp637, D.36379, <variable>.Stride
	str	r0, [r6, #204]	@ tmp637, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r3, [r4, #12]	@ temp.1915, <variable>.PhyAddr
	str	r3, [r6, #224]	@ temp.1915, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r3	@, temp.1915
	ldr	r2, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r2, r3	@ tmp649, <variable>.ChromOffset, temp.1915
	str	ip, [r9, #4]	@ tmp649, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #24]	@, %sfp
	str	r0, [r1, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [sp, #12]	@,
	ldr	r4, [r0, #12]	@ D.36394, <variable>.PhyAddr
	str	r4, [r6, #216]	@ D.36394, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r4	@, D.36394
	ldr	r2, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r2, r4	@ tmp677, <variable>.ChromOffset, D.36394
	ldr	r4, [sp, #20]	@, %sfp
	str	r3, [r4, #4]	@ tmp677, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r4, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	lr, [sp, #28]	@, %sfp
	add	r1, r6, #464	@ tmp698, tmp494,
	add	ip, r6, #472	@ tmp716, tmp494,
	mov	r3, #0	@ tmp705,
	movw	r2, #:lower16:217508	@ tmp731,
	movt	r2, #:upper16:217508	@ tmp731,
	str	r0, [lr, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	lr, [r5, #48]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r3, [ip, #4]	@ tmp705, <variable>.stDispImg.u32Circumrotate
	str	r3, [r1, #4]	@ tmp705, <variable>.stDispImg.u32Is1D
	str	lr, [r6, #464]	@ <variable>.ImgSize, <variable>.stDispImg.ImgSize
	str	r3, [r6, #480]	@ tmp705, <variable>.stDispImg.u32IsLastFrame
	str	r3, [r6, #472]	@ tmp705, <variable>.stDispImg.is_processed_by_dnr
	ldr	ip, [r8, r7, asl #2]	@ tmp730, s_pstVfmwChan
	ldr	r0, .L632	@,
	ldr	r1, [ip, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	str	r1, [r6, #488]	@ <variable>.u32ChanTick, <variable>.stDispImg.u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [sl, #3]	@ D.36231, <variable>.s32LogicFsID
.L504:
	add	sp, sp, #76	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L621:
	ldrsb	lr, [r5, #10]	@ temp.1926, <variable>.s32DecFsNum
	cmp	lr, #0	@ temp.1926,
	ble	.L513	@,
	ldr	r6, [r8, r7, asl #2]	@ pretmp.1809, s_pstVfmwChan
	add	r0, r5, #27648	@ ivtmp.1860, pstInst,
	add	r3, r0, #150	@ ivtmp.1860, ivtmp.1860,
	sub	ip, lr, #1	@ tmp771, temp.1926,
	add	r1, r6, #216064	@ ivtmp.1863, pretmp.1809,
	and	ip, ip, #1	@ tmp773, tmp771,
	ldr	r0, [r6, #1580]	@ pretmp.1811, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1863, ivtmp.1863,
	cmp	r0, #1	@ pretmp.1811,
	beq	.L622	@,
.L574:
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L623	@,
.L575:
	mov	sl, #1	@ i.1912,
	cmp	sl, lr	@ i.1912, temp.1926
	add	r3, r3, #52	@ ivtmp.1860, ivtmp.1860,
	add	r1, r1, #16	@ ivtmp.1863, ivtmp.1863,
	bge	.L605	@,
	cmp	ip, #0	@ tmp773,
	beq	.L517	@,
	cmp	r0, sl	@ pretmp.1811,
	beq	.L606	@,
.L577:
	ldrsb	ip, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L578	@,
	ldrsb	r6, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r6, #0	@ <variable>.DispState,
	beq	.L604	@,
.L578:
	add	sl, sl, #1	@ i.1912, i.1912,
	add	r3, r3, #52	@ ivtmp.1860, ivtmp.1860,
	cmp	sl, lr	@ i.1912, temp.1926
	add	r1, r1, #16	@ ivtmp.1863, ivtmp.1863,
	blt	.L517	@,
.L605:
	mov	r3, #432	@ tmp330,
	mla	r6, r3, r4, r5	@ tmp331, tmp330, i.1911, pstInst
	ldr	sl, [r6, #504]	@ prephitmp.1880, <variable>.pstDecodeFs
.L513:
	cmp	sl, #0	@ prephitmp.1880,
	beq	.L624	@,
.L518:
	mov	r6, #432	@ tmp354,
	add	r0, r5, #34304	@ tmp357, pstInst,
	mla	r2, r6, r4, r5	@ tmp355, tmp354, i.1911, pstInst
	add	lr, r0, #148	@ tmp357, tmp357,
	str	lr, [r2, #512]	@ tmp357, <variable>.pstTfOutFs
	ldrsb	ip, [r5, #13]	@ temp.1888, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.1888,
	ble	.L527	@,
	ldrsb	r3, [r5, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.36301, temp.1888
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.1803, <variable>.IsPmvInUse
	beq	.L529	@,
	tst	ip, #1	@ temp.1888,
	mov	r2, r5	@ ivtmp.1874, pstInst
	mov	r3, #0	@ i.1889,
	bne	.L530	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@ D.36296, <variable>.IsPmvInUse
	mov	r3, #1	@ i.1889,
	add	r2, r5, r3	@ ivtmp.1874, pstInst,
	cmp	r1, #0	@ D.36296,
	bne	.L530	@,
.L601:
	uxtb	r1, r3	@ prephitmp.1803, i.1889
.L529:
	mov	r2, #432	@ tmp363,
	add	r0, r3, #8640	@ tmp372, i.1889,
	mla	ip, r2, r4, r5	@ tmp364, tmp363, i.1911, pstInst
	movw	lr, #34556	@ tmp379,
	strb	r1, [ip, #100]	@ prephitmp.1803, <variable>.PmvIdc
	ldr	r6, [r5, r0, asl #2]	@ tmp373, <variable>.PmvAddr
	str	r6, [ip, #516]	@ tmp373, <variable>.PmvAddr
	ldr	r1, [r5, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [ip, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r5, #13]	@ D.36301, <variable>.s32PmvNum
	cmp	lr, r3	@ D.36301, i.1889
	ble	.L531	@,
.L527:
	ldrsb	r3, [r5, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L535	@,
.L627:
	ldrsb	sl, [r5, #11]	@ D.36320, <variable>.s32DispFsNum
	cmp	sl, #0	@ D.36320,
	ble	.L616	@,
	add	ip, r5, #30976	@ tmp411, pstInst,
	cmn	ip, #148	@ tmp411,
	beq	.L538	@,
	movw	r6, #31124	@ tmp412,
	ldr	lr, [r5, r6]	@ tmp414,
	bic	r1, lr, #-16777216	@ tmp413, tmp414,
	cmp	r1, #0	@ tmp413,
	beq	.L538	@,
	tst	sl, #1	@ D.36320,
	add	r3, ip, #200	@ ivtmp.1829, tmp411,
	mov	r2, #0	@ i,
	mov	lr, #52	@ tmp747,
	bne	.L542	@,
	cmp	r3, #0	@ ivtmp.1829,
	mov	r2, #1	@ i,
	mov	r1, r2	@ i.1883, i
	beq	.L541	@,
	add	r0, lr, r5	@ tmp802, tmp747, pstInst
	add	r3, ip, #252	@ ivtmp.1829, tmp411,
	add	r6, r0, #30976	@ tmp803, tmp802,
	add	ip, r6, #144	@ tmp803, tmp803,
	ldr	r0, [ip, #4]	@ tmp804,
	bic	r6, r0, #-16777216	@ tmp805, tmp804,
	cmp	r6, #0	@ tmp805,
	bne	.L542	@,
.L541:
	mov	r2, #432	@ tmp440,
	mov	r6, #52	@ tmp434,
	mla	r3, r2, r4, r5	@ tmp441, tmp440, i.1911, pstInst
	mla	r1, r6, r1, r5	@ tmp437, tmp434, i.1883, pstInst
	add	lr, r1, #30976	@ prephitmp.1800, tmp437,
	add	r6, lr, #148	@ prephitmp.1800, prephitmp.1800,
	str	r6, [r3, #508]	@ prephitmp.1800, <variable>.pstDispOutFs
	b	.L537	@
.L631:
	ldr	r6, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	bne	.L516	@,
.L515:
	ldrsb	r6, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r6, #0	@ <variable>.IsDecRef,
	bne	.L516	@,
	ldrsb	r3, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L604	@,
.L516:
	add	sl, sl, #1	@ i.1912, i.1912,
	cmp	r0, #1	@ pretmp.1811,
	mov	r3, sl	@ tmp774, i.1912
	beq	.L625	@,
.L581:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L582	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L604	@,
.L582:
	add	sl, r3, #1	@ i.1912, tmp774,
	add	r1, ip, #16	@ ivtmp.1863, tmp776,
	cmp	sl, lr	@ i.1912, temp.1926
	add	r3, r2, #52	@ ivtmp.1860, tmp775,
	bge	.L605	@,
.L517:
	cmp	r0, #1	@ pretmp.1811,
	add	r2, r3, #52	@ tmp775, ivtmp.1860,
	add	ip, r1, #16	@ tmp776, ivtmp.1863,
	bne	.L515	@,
	b	.L631	@
.L532:
	ldrb	r0, [r2, #15]	@ zero_extendqisi2	@ D.36296, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.1874, tmp765,
	cmp	r0, #0	@ D.36296,
	beq	.L601	@,
	ldrb	r0, [r1, #15]	@ zero_extendqisi2	@ D.36296, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.1889, i.1889,
	cmp	r0, #0	@ D.36296,
	beq	.L601	@,
.L530:
	add	r3, r3, #1	@ i.1889, i.1889,
	add	r1, r2, #1	@ tmp765, ivtmp.1874,
	cmp	r3, ip	@ i.1889, temp.1888
	blt	.L532	@,
.L531:
	cmp	lr, #0	@ D.36301,
	ble	.L533	@,
	ldrsb	ip, [r5, #13]	@ temp.1892, <variable>.s32PmvNum
	mov	r2, #1	@ i.1893,
	mov	r0, #0	@ tmp748,
	strb	r0, [r5, #14]	@ tmp748, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.1892,
	sub	r3, ip, #1	@ tmp756, temp.1892,
	and	r1, r3, r2	@ tmp758, tmp756,
	add	r3, r5, r2	@ ivtmp.1896, pstInst,
	ble	.L533	@,
	cmp	r1, #0	@ tmp758,
	beq	.L534	@,
	mov	r2, #2	@ i.1893,
	cmp	ip, r2	@ temp.1892, i.1893
	strb	r0, [r3, #14]	@ tmp748, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1896, ivtmp.1896,
	ble	.L533	@,
.L534:
	add	r2, r2, #2	@ i.1893, i.1893,
	add	r1, r3, #1	@ tmp759, ivtmp.1896,
	cmp	ip, r2	@ temp.1892, i.1893
	strb	r0, [r3, #14]	@ tmp748, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp748, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1896, tmp759,
	bgt	.L534	@,
.L533:
	mov	r0, #432	@ tmp385,
	mov	ip, #34560	@ tmp395,
	mla	lr, r0, r4, r5	@ tmp386, tmp385, i.1911, pstInst
	mov	r6, #0	@ tmp388,
	mov	r0, r6	@, tmp388
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	add	r2, lr, #96	@ tmp387, tmp386,
	strb	r6, [r2, #4]	@ tmp388, <variable>.PmvIdc
	movw	r6, #34556	@ tmp402,
	ldr	r2, [r5, ip]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r2, [lr, #516]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	ip, [r5, r6]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	ip, [lr, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L627	@,
.L535:
	mov	r0, #432	@ tmp417,
	mla	r2, r0, r4, r5	@ tmp418, tmp417, i.1911, pstInst
	ldr	ip, [r2, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [r2, #508]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L540:
	ldr	lr, [r9, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r6, #:lower16:.LANCHOR0	@ tmp468,
	movt	r6, #:upper16:.LANCHOR0	@ tmp468,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L514	@,
	ldr	r3, [r6, #24]	@ D.37124, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.37124,
	beq	.L628	@,
	mov	r0, r7	@, InstID
	add	r1, sp, #32	@,,
	blx	r3	@ D.37124
	cmp	r0, #0	@,
	bne	.L546	@,
	ldr	sl, [sp, #32]	@ D.36342, stInfo.stFrameInfo.PhyAddr
	cmp	sl, #0	@ D.36342,
	beq	.L629	@,
	mov	r0, #432	@ tmp481,
	mla	fp, r0, r4, r5	@ tmp482, tmp481, i.1911, pstInst
	ldr	r6, [fp, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	sl, [r6, #12]	@ D.36342, <variable>.PhyAddr
	ldr	r9, [sp, #48]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r9, [fp, #516]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
	b	.L514	@
.L543:
	cmp	r3, #0	@ ivtmp.1829,
	add	r0, r0, #30976	@ tmp430, tmp429,
	mla	ip, lr, r2, r5	@ tmp808, tmp747, i, pstInst
	add	r3, r3, #104	@ ivtmp.1829, ivtmp.1829,
	add	r0, r0, #144	@ tmp430, tmp430,
	beq	.L541	@,
	ldr	r0, [r0, #4]	@ tmp432,
	add	ip, ip, #30976	@ tmp809, tmp808,
	add	ip, ip, #144	@ tmp809, tmp809,
	bic	r0, r0, #-16777216	@ tmp431, tmp432,
	cmp	r0, #0	@ tmp431,
	beq	.L541	@,
	cmp	r6, #0	@ tmp754,
	mov	r1, r2	@ i.1883, i
	beq	.L541	@,
	ldr	r6, [ip, #4]	@ tmp810,
	bic	ip, r6, #-16777216	@ tmp811, tmp810,
	cmp	ip, #0	@ tmp811,
	beq	.L541	@,
.L542:
	add	r1, r2, #1	@ tmp755, i,
	add	r6, r3, #52	@ tmp754, ivtmp.1829,
	cmp	sl, r1	@ D.36320, tmp755
	add	r2, r1, #1	@ i, i.1883,
	mla	r0, lr, r1, r5	@ tmp429, tmp747, i.1883, pstInst
	bgt	.L543	@,
.L616:
	mov	ip, #432	@ tmp445,
	mla	r0, ip, r4, r5	@ tmp446, tmp445, i.1911, pstInst
	ldr	r6, [r0, #508]	@ prephitmp.1800, <variable>.pstDispOutFs
.L537:
	cmp	r6, #0	@ prephitmp.1800,
	bne	.L540	@,
	mov	r0, r6	@, prephitmp.1800
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	add	r1, sp, #72	@ tmp452,,
	mov	r0, r7	@, InstID
	add	r2, sp, #60	@,,
	str	r6, [r1, #-4]!	@ prephitmp.1800, RefNum
	add	r3, sp, #64	@,,
	str	r6, [sp, #64]	@ prephitmp.1800, NewNum
	str	r6, [sp, #60]	@ prephitmp.1800, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [sp, #60]	@ ReadNum, ReadNum
	ldr	r2, [sp, #68]	@ RefNum, RefNum
	ldr	r0, [sp, #64]	@ NewNum, NewNum
	add	ip, r2, r3	@ tmp455, RefNum, ReadNum
	ldrsb	r3, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, ip, #2	@ tmp458, tmp455,
	add	r2, r1, r0	@ tmp459, tmp458, NewNum
	cmp	r2, r3	@ tmp459, <variable>.s32DispFsNum
	bge	.L544	@,
	mov	r0, r6	@, prephitmp.1800
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #64]	@ NewNum, NewNum
	mov	r0, r6	@, prephitmp.1800
	movw	r1, #:lower16:.LC59	@,
	ldr	r2, [sp, #68]	@, RefNum
	movt	r1, #:upper16:.LC59	@,
	str	r3, [sp, #0]	@ NewNum,
	ldrsb	ip, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r3, [sp, #60]	@, ReadNum
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, r7	@, InstID
	bl	FSP_PrintContext	@
.L544:
	ldr	r0, .L632	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L625:
	ldr	r6, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	beq	.L581	@,
	b	.L582	@
.L623:
	ldrsb	r6, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r6, #0	@ <variable>.DispState,
	bne	.L575	@,
.L604:
	mov	r0, #432	@ tmp325,
	mov	r2, #52	@ tmp319,
	mla	lr, r0, r4, r5	@ tmp326, tmp325, i.1911, pstInst
	mla	ip, r2, sl, r5	@ tmp322, tmp319, i.1912, pstInst
	add	sl, ip, #27648	@ prephitmp.1880, tmp322,
	add	sl, sl, #148	@ prephitmp.1880, prephitmp.1880,
	str	sl, [lr, #504]	@ prephitmp.1880, <variable>.pstDecodeFs
	b	.L513	@
.L622:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L574	@,
	b	.L575	@
.L628:
	movw	r1, #:lower16:.LC34	@,
	mov	r0, r3	@, D.37124
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
.L546:
	ldr	r0, .L632	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L606:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L577	@,
	b	.L578	@
.L624:
	mov	r0, sl	@, prephitmp.1880
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	addle	fp, r5, #27648	@ pstPhyFs, pstInst,
	addle	fp, fp, #148	@ pstPhyFs, pstPhyFs,
	ble	.L519	@,
	add	fp, r5, #27648	@ pstPhyFs, pstInst,
	add	fp, fp, #148	@ pstPhyFs, pstPhyFs,
	mov	r6, fp	@ ivtmp.1854, pstPhyFs
.L520:
	ldrsb	r2, [r6, #0]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	sl, sl, #1	@ i.1886, i.1886,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #52	@ ivtmp.1854, ivtmp.1854,
	cmp	ip, sl	@ <variable>.s32DecFsNum, i.1886
	bgt	.L520	@,
.L519:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #10]	@ D.36291, <variable>.s32DecFsNum
	mov	r2, fp	@ pstPhyFs, pstPhyFs
	cmp	ip, #0	@ D.36291,
	movle	lr, #0	@ prephitmp.1805,
	ble	.L522	@,
	tst	ip, #1	@ D.36291,
	mov	lr, #0	@ i.1921,
	mov	r0, lr	@ i.1920, i.1921
	mvn	r1, #0	@ LeastTick.1923,
	bne	.L526	@,
	ldr	r3, [fp, #44]	@ LeastTick, <variable>.u32Tick
	add	r2, fp, #52	@ pstPhyFs, pstPhyFs,
	mov	r0, #1	@ i.1920,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r1	@, LeastTick, LeastTick.1923
	mov	r1, r3	@ LeastTick.1923, LeastTick
	b	.L526	@
.L630:
	ldr	r1, [r6, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r1, r3	@ LeastTick, LeastTick
	movcs	r1, r3	@ LeastTick, LeastTick
	movcc	lr, r2	@ i.1921, tmp769
.L603:
	add	r0, r2, #1	@ i.1920, tmp769,
	add	r2, r6, #52	@ pstPhyFs, tmp770,
.L526:
	ldr	r3, [r2, #44]	@ LeastTick, <variable>.u32Tick
	add	r6, r2, #52	@ tmp770, pstPhyFs,
	add	r2, r0, #1	@ tmp769, i.1920,
	cmp	r3, r1	@ LeastTick, LeastTick.1923
	movcc	lr, r0	@ i.1921, i.1920
	movcs	r3, r1	@ LeastTick, LeastTick.1923
	cmp	ip, r2	@ D.36291, tmp769
	bgt	.L630	@,
.L522:
	mov	ip, #432	@ tmp343,
	mov	r3, #52	@ tmp347,
	mla	r2, ip, r4, r5	@ tmp344, tmp343, i.1911, pstInst
	mla	r6, r3, lr, r5	@ tmp350, tmp347, prephitmp.1805, pstInst
	add	r0, r6, #27648	@ tmp351, tmp350,
	add	lr, r0, #148	@ tmp351, tmp351,
	str	lr, [r2, #504]	@ tmp351, <variable>.pstDecodeFs
	b	.L518	@
.L618:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2209	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L538:
	mov	r1, #0	@ i.1883,
	b	.L541	@
.L619:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2210	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L629:
	add	r0, r6, #36	@, tmp468,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, sl	@, D.36342
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36231,
	b	.L504	@
.L633:
	.align	2
.L632:
	.word	.LANCHOR0+36
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.type	FSP_NoneDnrSwitchToDnrNormCase, %function
FSP_NoneDnrSwitchToDnrNormCase:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r4, r0	@ InstID, InstID
	add	r0, sp, #48	@,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r4, #3	@ InstID,
	bhi	.L689	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp180,
	movt	r3, #:upper16:.LANCHOR0	@ tmp180,
	movw	lr, #34648	@ tmp181,
	movw	r8, #34652	@ tmp182,
	ldr	r9, [r3, r4, asl #2]	@ pstInst, s_pFspInst
	movw	r6, #34644	@ tmp183,
	movw	r1, #34656	@ tmp184,
	movw	r3, #34640	@ tmp185,
	ldr	ip, [r9, lr]	@, <variable>.MemAddr
	ldrsb	sl, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	ip, [sp, #24]	@, %sfp
	cmp	sl, #0	@ <variable>.s32DecFsNum,
	ldr	r7, [r9, r8]	@, <variable>.MemSize
	movwle	r5, #:lower16:s_pstVfmwChan	@ tmp336,
	movtle	r5, #:upper16:s_pstVfmwChan	@ tmp336,
	str	r7, [sp, #44]	@, %sfp
	ldr	r2, [r9, r6]	@, <variable>.TotalMemUsed
	str	r2, [sp, #36]	@, %sfp
	ldr	r0, [r9, r1]	@, <variable>.StrideByte
	str	r0, [sp, #32]	@, %sfp
	ldr	r6, [r9, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	ble	.L637	@,
	add	r5, r9, #27648	@ ivtmp.1979, pstInst,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp341,
	add	r8, r5, #160	@ ivtmp.1979, ivtmp.1979,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp341,
	mov	r7, #0	@ i,
	mov	fp, #1	@ tmp342,
	b	.L641	@
.L690:
	ldr	r2, [sl, r4, asl #2]	@ tmp190, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	ip, r1, r2	@ tmp193, tmp192, tmp190
	add	lr, ip, #216064	@ tmp194, tmp193,
	add	r2, lr, #360	@ tmp194, tmp194,
	str	r0, [r2, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	ip, [sl, r4, asl #2]	@ tmp197, s_pstVfmwChan
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1979, ivtmp.1979,
	add	lr, r1, ip	@ tmp200, tmp192, tmp197
	add	ip, lr, #216064	@ tmp201, tmp200,
	add	r1, ip, #360	@ tmp201, tmp201,
	str	r2, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, r4, asl #2]	@ tmp204, s_pstVfmwChan
	str	r6, [lr, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [sl, r4, asl #2]	@ tmp208, s_pstVfmwChan
	add	r1, ip, r3, asl #4	@, tmp213, tmp208, tmp205,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	ble	.L637	@,
.L641:
	ldr	r1, [r8, #0]	@, <variable>.PhyAddr
	mov	r2, r6	@, s32ImgSize
	mov	r0, r4	@, InstID
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp336,
	bl	DNR_FsIsInImgQue	@
	add	r2, r7, #13504	@ tmp205, i,
	mov	r1, r7, asl #4	@ tmp192, i,
	add	r3, r2, #23	@ tmp205, tmp205,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp336,
	mov	ip, r1	@ tmp219, tmp192
	mov	r2, r3	@ tmp232, tmp205
	cmp	r0, #0	@ s32UsingCount
	beq	.L690	@,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp336,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp336,
	ble	.L640	@,
	ldr	r3, [sl, r4, asl #2]	@ tmp217, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	r1, r1, r3	@ tmp220, tmp219, tmp217
	add	lr, r1, #216064	@ tmp221, tmp220,
	add	r3, lr, #360	@ tmp221, tmp221,
	str	fp, [r3, #0]	@ tmp342, <variable>.eFrameState
	ldr	r1, [sl, r4, asl #2]	@ tmp224, s_pstVfmwChan
	ldr	r3, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1979, ivtmp.1979,
	add	lr, ip, r1	@ tmp227, tmp219, tmp224
	add	r1, lr, #216064	@ tmp228, tmp227,
	add	ip, r1, #360	@ tmp228, tmp228,
	str	r3, [ip, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, r4, asl #2]	@ tmp231, s_pstVfmwChan
	str	r6, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r3, [sl, r4, asl #2]	@ tmp235, s_pstVfmwChan
	add	r1, r3, r2, asl #4	@, tmp240, tmp235, tmp232,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	bgt	.L641	@,
.L637:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp245,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp245,
	ldr	r7, [r5, r4, asl #2]	@ temp.1991, s_pstVfmwChan
	ldr	ip, [r8, #36]	@ D.35602, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.35602,
	ldr	r1, [r7, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r7, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r7, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L642	@,
	str	r1, [sp, #4]	@ s32DnrNum,
	mov	sl, #0	@ tmp246,
	mvn	r0, #0	@ tmp248,
	add	r1, sp, #48	@ tmp250,,
	str	r0, [sp, #12]	@ tmp248,
	mov	lr, #64	@ tmp251,
	str	r1, [sp, #16]	@ tmp250,
	mov	r0, #1	@,
	str	sl, [sp, #8]	@ tmp246,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp251,
	str	sl, [sp, #0]	@ tmp246,
	blx	ip	@ D.35602
	cmp	r0, #0	@,
	beq	.L643	@,
.L642:
	movw	r1, #:lower16:.LC63	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC63	@,
	ldr	r2, .L693	@,
	bl	dprint_vfmw	@
.L643:
	ldr	r7, [r5, r4, asl #2]	@ tmp256, s_pstVfmwChan
	ldr	ip, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	sl, [sp, #32]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r8, [sp, #24]	@, %sfp
	str	ip, [r7, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	add	r3, r0, sl	@ tmp259,,
	ldr	sl, [sp, #28]	@, %sfp
	add	r3, r3, r8	@ D.35609, tmp259,
	ldr	r7, [r5, r4, asl #2]	@ temp.1993, s_pstVfmwChan
	ldr	r2, [sl, #0]	@ D.35608, <variable>.FrameAddr
	ldr	r8, [r7, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	cmp	r2, r3	@ D.35608, D.35609
	rsbgt	r2, r3, r2	@ s32FreeSize, D.35609, D.35608
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, s32DnrSize
	bge	.L688	@,
	ldr	fp, [sp, #40]	@, %sfp
	cmp	fp, #0	@,
	beq	.L647	@,
	ble	.L648	@,
	sub	r2, fp, #1	@ tmp260,,
	ldr	ip, [sp, #28]	@, %sfp
	add	r1, ip, r2, asl #3	@, D.35623,, tmp260,
	ldr	lr, [ip, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r1, lr	@ prephitmp.1953, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r3, r2	@ D.35609, prephitmp.1953
	bgt	.L647	@,
.L649:
	ldr	fp, [sp, #44]	@, %sfp
	ldr	ip, [sp, #24]	@, %sfp
	add	r3, fp, ip	@ tmp269,,
	rsb	r1, r2, r3	@ tmp270, prephitmp.1953, tmp269
	cmp	r8, r1	@ s32DnrSize, tmp270
	strle	r2, [r7, #236]	@ prephitmp.1953, <variable>.s32OffLineDnrMemAddr
	movle	r0, #0	@ D.35581,
	ble	.L636	@,
.L650:
	cmp	r6, r8	@ s32ImgSize, s32DnrSize
	movge	r0, #1	@,
	strge	r0, [sp, #24]	@, %sfp
	blt	.L691	@,
.L652:
	ldrsb	ip, [r9, #10]	@ temp.1999, <variable>.s32DecFsNum
	cmp	ip, #0	@ temp.1999,
	ble	.L654	@,
	ldr	r1, [sp, #24]	@, %sfp
	cmp	r1, ip	@, temp.1999
	bgt	.L664	@,
	mov	r3, r1	@ s32DnrLockFrmNum.1982,
	mov	r2, #0	@ i.1995,
	cmp	r3, r2	@ s32DnrLockFrmNum.1982, i.1995
	mov	r1, r2	@ j.2005, i.1995
	mov	fp, r3	@ s32DnrLockFrmNum, s32DnrLockFrmNum.1982
	ble	.L692	@,
.L682:
	mov	r8, r2, asl #4	@ tmp333, i.1995,
	add	r0, r8, r7	@ tmp282, tmp333, temp.1993
	add	lr, r0, #216064	@ tmp283, tmp282,
	add	r0, lr, #360	@ tmp283, tmp283,
	ldr	r0, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	bne	.L657	@,
	mvn	lr, r2	@ tmp349, i.1995
	add	r0, lr, r3	@ tmp348, tmp349, s32DnrLockFrmNum.1982
	add	r1, r8, #216064	@ tmp286, tmp333,
	tst	r0, #1	@ tmp348,
	add	lr, r1, #360	@ tmp286, tmp286,
	mov	r1, r2	@ j.1997, i.1995
	add	r0, r7, lr	@ ivtmp.1976, temp.1993, tmp286
	beq	.L658	@,
	ldr	sl, [r0, #16]!	@ temp.2004, <variable>.eFrameState
	add	r1, r2, #1	@ j.1997, i.1995,
	cmp	sl, #0	@ temp.2004,
	beq	.L658	@,
	b	.L657	@
.L660:
	ldr	sl, [r0, #16]!	@ temp.2004, <variable>.eFrameState
	cmp	sl, #0	@ temp.2004,
	bne	.L657	@,
	ldr	sl, [r0, #16]!	@ temp.2004, <variable>.eFrameState
	add	r1, r1, #1	@ j.1997, j.1997,
	cmp	sl, #0	@ temp.2004,
	bne	.L657	@,
.L658:
	add	r1, r1, #1	@ j.1997, j.1997,
	cmp	r3, r1	@ s32DnrLockFrmNum.1982, j.1997
	bgt	.L660	@,
.L656:
	add	ip, r8, r7	@ tmp290, tmp333, temp.1993
	cmp	r3, r2	@ s32DnrLockFrmNum.1982, i.1995
	add	lr, ip, #216064	@ tmp291, tmp290,
	add	r1, lr, #360	@ tmp291, tmp291,
	ldr	ip, [r1, #4]	@ <variable>.s32FrameAddr, <variable>.s32FrameAddr
	str	ip, [r7, #236]	@ <variable>.s32FrameAddr, <variable>.s32OffLineDnrMemAddr
	ble	.L662	@,
	mov	r8, #52	@ tmp294,
	ldr	r7, [r5, r4, asl #2]	@ tmp299, s_pstVfmwChan
	mul	fp, r8, r2	@ tmp293, tmp294, i.1995
	mov	r8, r2, asl #4	@ tmp301, i.1995,
	add	lr, r8, r7	@ tmp302, tmp301, tmp299
	add	r1, r2, #13504	@ tmp313, i.1995,
	add	r0, lr, #216064	@ tmp303, tmp302,
	mvn	lr, r2	@ tmp344, i.1995
	add	ip, fp, #27648	@ tmp295, tmp293,
	add	r0, r0, #360	@ tmp303, tmp303,
	add	sl, ip, #144	@ tmp295, tmp295,
	mov	fp, #2	@,
	add	sl, r9, sl	@ tmp297, pstInst, tmp295
	add	ip, r1, #23	@ tmp313, tmp313,
	add	r1, r2, #1	@ j, i.1995,
	ldr	r7, [sl, #16]	@, <variable>.PhyAddr
	cmp	r3, r1	@ s32DnrLockFrmNum.1982, j
	str	r7, [sp, #32]	@, %sfp
	add	r7, lr, r3	@ tmp343, tmp344, s32DnrLockFrmNum.1982
	str	fp, [r0, #0]	@, <variable>.eFrameState
	and	fp, r7, #1	@ tmp345, tmp343,
	ldr	lr, [r5, r4, asl #2]	@ tmp306, s_pstVfmwChan
	add	r7, sl, #56	@ ivtmp.1970, tmp297,
	add	r0, r8, lr	@ tmp309, tmp301, tmp306
	add	r8, r0, #216064	@ tmp310, tmp309,
	add	lr, r8, #360	@ tmp310, tmp310,
	ldr	r8, [sp, #32]	@, %sfp
	str	r8, [lr, #4]	@, <variable>.s32FrameAddr
	ldr	r0, [r5, r4, asl #2]	@ tmp312, s_pstVfmwChan
	str	r6, [r0, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	lr, [r5, r4, asl #2]	@ tmp316, s_pstVfmwChan
	add	r0, lr, ip, asl #4	@, tmp321, tmp316, tmp313,
	mov	lr, #0	@,
	add	r0, r0, #4	@ tmp322, tmp321,
	str	lr, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L662	@,
	cmp	fp, #0	@ tmp345,
	beq	.L687	@,
	ldr	lr, [r5, r4, asl #2]	@ tmp395, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp397, j,
	ldr	fp, [r7, #12]	@ s32FrameStartAddr.2006, <variable>.PhyAddr
	add	ip, r1, #13504	@ tmp406, j,
	add	r0, r8, lr	@ tmp398, tmp397, tmp395
	add	ip, ip, #23	@ tmp406, tmp406,
	add	r7, r0, #216064	@ tmp399, tmp398,
	add	r1, r1, #1	@ j, j,
	add	lr, r7, #360	@ tmp399, tmp399,
	add	r7, sl, #108	@ ivtmp.1970, tmp297,
	mov	sl, #2	@,
	cmp	r3, r1	@ s32DnrLockFrmNum.1982, j
	str	sl, [lr, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, r4, asl #2]	@ tmp401, s_pstVfmwChan
	add	lr, r8, r0	@ tmp402, tmp397, tmp401
	add	r0, lr, #216064	@ tmp403, tmp402,
	add	lr, r0, #360	@ tmp403, tmp403,
	str	fp, [lr, #4]	@ s32FrameStartAddr.2006, <variable>.s32FrameAddr
	ldr	r0, [r5, r4, asl #2]	@ tmp404, s_pstVfmwChan
	str	r6, [r0, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	fp, [r5, r4, asl #2]	@ tmp407, s_pstVfmwChan
	add	lr, fp, ip, asl #4	@, tmp409, tmp407, tmp406,
	mov	fp, #0	@,
	add	r0, lr, #4	@ tmp410, tmp409,
	str	fp, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L662	@,
.L687:
	str	r2, [sp, #28]	@ i.1995, %sfp
	str	r9, [sp, #32]	@ pstInst, %sfp
.L663:
	ldr	r9, [r5, r4, asl #2]	@ tmp357, s_pstVfmwChan
	mov	sl, r1, asl #4	@ tmp359, j,
	add	r0, r1, #13504	@ tmp368, j,
	add	r1, r1, #1	@ tmp346, j,
	add	r2, sl, r9	@ tmp360, tmp359, tmp357
	add	fp, r1, #13504	@ tmp388, tmp346,
	add	r8, r2, #216064	@ tmp361, tmp360,
	ldr	lr, [r7, #12]	@ s32FrameStartAddr.2006, <variable>.PhyAddr
	add	ip, r8, #360	@ tmp361, tmp361,
	add	r2, fp, #23	@ tmp388, tmp388,
	mov	fp, #2	@,
	add	r0, r0, #23	@ tmp368, tmp368,
	str	fp, [ip, #0]	@, <variable>.eFrameState
	mov	r8, r1, asl #4	@ tmp379, tmp346,
	ldr	r9, [r5, r4, asl #2]	@ tmp363, s_pstVfmwChan
	add	r1, r1, #1	@ j, tmp346,
	cmp	r3, r1	@ s32DnrLockFrmNum.1982, j
	add	ip, sl, r9	@ tmp364, tmp359, tmp363
	add	r9, ip, #216064	@ tmp365, tmp364,
	add	ip, r9, #360	@ tmp365, tmp365,
	str	lr, [ip, #4]	@ s32FrameStartAddr.2006, <variable>.s32FrameAddr
	mov	lr, #0	@,
	ldr	r9, [r5, r4, asl #2]	@ tmp366, s_pstVfmwChan
	str	r6, [r9, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, r4, asl #2]	@ tmp369, s_pstVfmwChan
	add	r9, ip, r0, asl #4	@, tmp371, tmp369, tmp368,
	str	lr, [r9, #4]	@, <variable>.s32UsingCount
	ldr	ip, [r5, r4, asl #2]	@ tmp377, s_pstVfmwChan
	ldr	r9, [r7, #64]	@ s32FrameStartAddr.2006, <variable>.PhyAddr
	add	r7, r7, #104	@ ivtmp.1970, ivtmp.1970,
	add	lr, r8, ip	@ tmp380, tmp379, tmp377
	add	r0, lr, #216064	@ tmp381, tmp380,
	add	ip, r0, #360	@ tmp381, tmp381,
	str	fp, [ip, #0]	@, <variable>.eFrameState
	ldr	lr, [r5, r4, asl #2]	@ tmp383, s_pstVfmwChan
	add	r0, r8, lr	@ tmp384, tmp379, tmp383
	add	ip, r0, #216064	@ tmp385, tmp384,
	add	lr, ip, #360	@ tmp385, tmp385,
	str	r9, [lr, #4]	@ s32FrameStartAddr.2006, <variable>.s32FrameAddr
	ldr	r0, [r5, r4, asl #2]	@ tmp386, s_pstVfmwChan
	str	r6, [r0, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r0, #0	@,
	ldr	ip, [r5, r4, asl #2]	@ tmp389, s_pstVfmwChan
	add	r9, ip, r2, asl #4	@, tmp391, tmp389, tmp388,
	str	r0, [r9, #4]	@, <variable>.s32UsingCount
	bgt	.L663	@,
	ldr	r2, [sp, #28]	@ i.1995, %sfp
	ldr	r9, [sp, #32]	@ pstInst, %sfp
.L662:
	ldrsb	ip, [r9, #10]	@ temp.1999, <variable>.s32DecFsNum
	cmp	ip, r2	@ temp.1999, i.1995
	ble	.L654	@,
	ldr	r8, [sp, #24]	@, %sfp
	add	r3, r2, r8	@ s32DnrLockFrmNum.1982, i.1995,
.L655:
	cmp	r3, ip	@ s32DnrLockFrmNum.1982, temp.1999
	movle	r0, #0	@ D.35581,
	ble	.L636	@,
	ldr	sl, [sp, #24]	@, %sfp
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC65	@,
	ldr	r2, .L693	@,
	movt	r1, #:upper16:.LC65	@,
	movw	r3, #1134	@,
	str	ip, [sp, #0]	@ temp.1999,
	str	sl, [sp, #4]	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35581,
	b	.L636	@
.L647:
	ldr	r0, [sp, #44]	@, %sfp
	ldr	r1, [sp, #24]	@, %sfp
	add	r2, r0, r1	@ tmp264,,
	rsb	lr, r3, r2	@ tmp265, D.35609, tmp264
	cmp	r8, lr	@ s32DnrSize, tmp265
	bgt	.L650	@,
.L688:
	mov	r0, #0	@ D.35581,
	str	r3, [r7, #236]	@ D.35609, <variable>.s32OffLineDnrMemAddr
.L636:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L640:
	mov	r2, r0	@, s32UsingCount
	movw	r1, #:lower16:.LC62	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35581,
	b	.L636	@
.L657:
	add	r2, r1, #1	@ i.1995, j.2005,
	cmp	ip, r2	@ temp.1999, i.1995
	ble	.L654	@,
	add	r3, r2, fp	@ s32DnrLockFrmNum.1982, i.1995, s32DnrLockFrmNum
	mov	r1, r2	@ j.2005, i.1995
	cmp	ip, r3	@ temp.1999, s32DnrLockFrmNum.1982
	blt	.L655	@,
	cmp	r3, r2	@ s32DnrLockFrmNum.1982, i.1995
	bgt	.L682	@,
.L692:
	mov	r8, r2, asl #4	@ tmp333, i.1995,
	b	.L656	@
.L691:
	mov	r1, r6	@, s32ImgSize
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idiv	@
	mov	r1, r6	@, s32ImgSize
	str	r0, [sp, #24]	@, %sfp
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	ldrgt	r1, [sp, #24]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [sp, #24]	@, %sfp
	b	.L652	@
.L648:
	ldr	sl, [sp, #40]	@, %sfp
	sub	lr, sl, #1	@ pretmp.2003,,
	ldr	sl, [sp, #28]	@, %sfp
	add	ip, sl, lr, asl #3	@, pretmp.1950,, pretmp.2003,
	ldr	fp, [sl, lr, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r3, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, fp, r3	@ prephitmp.1953, <variable>.FrameAddr, <variable>.FrameSize
	b	.L649	@
.L689:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #991	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35581,
	b	.L636	@
.L664:
	ldr	r3, [sp, #24]	@ s32DnrLockFrmNum.1982, %sfp
	b	.L655	@
.L654:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC64	@,
	ldr	r2, .L693	@,
	movt	r1, #:upper16:.LC64	@,
	movw	r3, #1129	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35581,
	b	.L636	@
.L694:
	.align	2
.L693:
	.word	.LANCHOR1+36
	.fnend
	.size	FSP_NoneDnrSwitchToDnrNormCase, .-FSP_NoneDnrSwitchToDnrNormCase
	.align	2
	.type	FSP_NoneDnrSwitchToDnr, %function
FSP_NoneDnrSwitchToDnr:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #3	@ InstID,
	.pad #528
	sub	sp, sp, #528	@,,
	mov	r1, #0	@ tmp149,
	mov	r5, r0	@ InstID, InstID
	str	r1, [sp, #524]	@ tmp149, s32UsingNum
	bhi	.L708	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L709	@,
	movw	r2, #34644	@ tmp158,
	add	r4, sp, #12	@ tmp204,,
	ldr	r6, [r3, r2]	@ s32VdhTotalMemUse, <variable>.TotalMemUsed
	mov	ip, #-2147483648	@ tmp205,
	mov	r0, r1	@ tmp206, ivtmp.2045
.L699:
	add	lr, r1, #8	@ tmp207, ivtmp.2045,
	mov	r2, r4	@ tmp164, tmp204
	str	ip, [r2, r1]!	@ tmp205, <variable>.FrameAddr
	add	r1, lr, #8	@ ivtmp.2045, tmp207,
	cmp	r1, #512	@ ivtmp.2045,
	mov	r3, r4	@ tmp212, tmp204
	str	r0, [r2, #4]	@ tmp206, <variable>.FrameSize
	str	ip, [r3, lr]!	@ tmp205, <variable>.FrameAddr
	str	r0, [r3, #4]	@ tmp206, <variable>.FrameSize
	bne	.L699	@,
	mov	r0, r5	@, InstID
	mov	r1, r4	@, tmp204
	add	r2, sp, #524	@,,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L710	@,
	ldr	ip, [sp, #524]	@ s32UsingNum.489, s32UsingNum
	cmp	ip, #0	@ s32UsingNum.489,
	ble	.L701	@,
	ldr	r2, [sp, #16]	@ D.35826, <variable>.FrameSize
	cmp	r6, r2	@ s32VdhTotalMemUse, D.35826
	ble	.L702	@,
	mov	lr, r6, asl #1	@ tmp173, s32VdhTotalMemUse,
	movw	r1, #:lower16:1431655766	@ tmp176,
	movt	r1, #:upper16:1431655766	@ tmp176,
	smull	r0, r3, r1, lr	@, tmp175, tmp176, tmp173
	sub	r1, r3, lr, asr #31	@ tmp174, tmp175, tmp173,
	cmp	r2, r1	@ D.35826, tmp174
	blt	.L703	@,
.L702:
	mov	r3, r6	@, s32VdhTotalMemUse
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	str	ip, [sp, #0]	@ s32UsingNum.489,
	bl	dprint_vfmw	@
	mov	r0, r5	@, InstID
	add	r1, sp, #12	@,,
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L711	@,
.L704:
	mov	r0, #0	@ D.35811,
.L697:
	add	sp, sp, #528	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L703:
	mov	r3, r6	@, s32VdhTotalMemUse
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	str	ip, [sp, #0]	@ s32UsingNum.489,
	bl	dprint_vfmw	@
	mov	r0, r5	@, InstID
	mov	r1, r4	@, tmp204
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L704	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L712	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1364	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L701:
	mov	r2, ip	@, s32UsingNum.489
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, InstID
	mov	r1, r4	@, tmp204
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L704	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L712	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r3, #1376	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L711:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L712	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1353	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L710:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L712	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1338	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L708:
	mov	r0, r1	@, tmp149
	movw	r2, #1315	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L709:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L712	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1321	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35811,
	b	.L697	@
.L713:
	.align	2
.L712:
	.word	.LANCHOR1+68
	.fnend
	.size	FSP_NoneDnrSwitchToDnr, .-FSP_NoneDnrSwitchToDnr
	.align	2
	.type	FSP_EnableDnr, %function
FSP_EnableDnr:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp186,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp186,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r8, r1	@ PartitionFlag, PartitionFlag
	ldr	r2, [r5, r0, asl #2]	@ D.35377, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ D.35378, <variable>.s32OffLineDnrMemAddr
	ldr	r7, [r2, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r2, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.35378
	str	ip, [sp, #24]	@ D.35378, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	str	r0, [sp, #28]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	ldr	r3, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #32]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L715	@,
	cmp	r8, #1	@ PartitionFlag,
	beq	.L724	@,
	cmp	r8, #0	@ PartitionFlag,
	beq	.L725	@,
	mov	r0, r4	@, InstID
	bl	DNR_OpenChan	@
.L717:
	ldr	ip, [r5, r4, asl #2]	@ tmp161, s_pstVfmwChan
	add	r3, sp, #8	@ tmp165,,
	mov	r0, r4	@, InstID
	mov	lr, #0	@ tmp163,
	ldr	r1, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r7, [sp, #12]	@ s32ThrWidth, stDSDParam.s32ThrWidth
	str	r6, [sp, #16]	@ s32ThrHeight, stDSDParam.s32ThrHeight
	str	r1, [sp, #8]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, stDSDParam.s32DSDenable
	ldmia	r3, {r1, r2, r3}	@ tmp165,,,
	str	lr, [sp, #20]	@ tmp163, stDSDParam.s32MirrorEn
	str	lr, [sp, #0]	@ tmp163,
	bl	DNR_SetDSDParam	@
	mov	r0, r4	@, InstID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L726	@,
.L720:
	ldr	r1, [r5, r4, asl #2]	@ temp.2084, s_pstVfmwChan
	movw	r5, #:lower16:217460	@ tmp174,
	movt	r5, #:upper16:217460	@ tmp174,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp173,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp173,
	ldr	r2, [r1, r5]	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r2, #1	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.35391,
	beq	.L727	@,
.L718:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L725:
	mov	r0, r4	@, InstID
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L717	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC70	@,
	ldr	r2, .L729	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35391,
	b	.L718	@
.L715:
	cmp	r8, #1	@ PartitionFlag,
	bne	.L720	@,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L720	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, .L729	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35391,
	b	.L718	@
.L727:
	add	lr, r1, #217088	@, temp.2084,
	mov	r0, r4	@, InstID
	add	r1, lr, #360	@,,
	bl	DNR_ConfigChan	@
	subs	r3, r0, #0	@ D.35416,
	bne	.L728	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp182, s_pstVfmwChan
	mov	r0, r3	@ D.35391, D.35416
	str	r3, [r1, r5]	@ D.35416, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	b	.L718	@
.L724:
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L717	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC69	@,
	ldr	r2, .L729	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35391,
	b	.L718	@
.L726:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L729	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35391,
	b	.L718	@
.L728:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC73	@,
	ldr	r2, .L729	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35391,
	b	.L718	@
.L730:
	.align	2
.L729:
	.word	.LANCHOR1+92
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r5, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	str	r0, [sp, #24]	@ InstID, %sfp
	add	r0, sp, #48	@,,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #32]	@ UsedMemSize, %sfp
	bl	__memzero	@
	ldr	r0, [sp, #24]	@, %sfp
	cmp	r0, #3	@,
	bhi	.L817	@,
	ldr	r2, [sp, #24]	@, %sfp
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	str	r1, [sp, #28]	@, %sfp
	ldr	r4, [r1, r2, asl #2]	@ D.35946, s_pFspInst
	cmp	r4, #0	@ D.35946,
	beq	.L818	@,
	movw	ip, #34648	@ tmp211,
	movw	r3, #34652	@ tmp212,
	str	r5, [r4, ip]	@ MemPhyAddr, <variable>.MemAddr
	ldr	r0, [sp, #24]	@, %sfp
	str	r7, [r4, r3]	@ MemSize, <variable>.MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L735	@,
	rsb	r2, r0, r0, asl #3	@, tmp221, eChanCapLevel, eChanCapLevel,
	movw	lr, #:lower16:CapItem	@ tmp218,
	add	r6, r2, #1	@ tmp222, tmp221,
	movt	lr, #:upper16:CapItem	@ tmp218,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [lr, r2, asl #2]	@ tmp231, CapItem
	ldr	r3, [lr, r6, asl #2]	@ tmp230, CapItem
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	lr, ip, r3	@ tmp229, tmp231, tmp230
	mul	r2, r2, r1	@ tmp215, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, lr	@, tmp215, tmp229
	bgt	.L735	@,
.L736:
	ldr	r3, [r4, #92]	@ D.35973, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.35973,
	beq	.L811	@,
	ldr	r2, [r4, #88]	@ D.35975, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.35975,
	bne	.L740	@,
.L811:
	ldrb	r6, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2120, <variable>.stInstCfg.s32DispLoopEnable
.L739:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp257,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp257,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.35980, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r3, #36]	@ D.35985, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.35985,
	mvneq	r2, #0	@ Ret,
	beq	.L743	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r5	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r5, #40	@ tmp261,
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r1, r7	@, MemSize
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	add	lr, sp, #48	@ tmp264,,
	str	r5, [sp, #4]	@ tmp261,
	ldrsb	r5, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	lr, [sp, #16]	@ tmp264,
	mov	lr, #64	@ tmp265,
	str	lr, [sp, #20]	@ tmp265,
	str	r5, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	ldr	r5, [sp, #24]	@, %sfp
	str	r5, [sp, #12]	@,
	blx	ip	@ D.35985
	subs	r2, r0, #0	@ Ret,
	bne	.L743	@,
	ldr	ip, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r1, r6	@ prephitmp.2120, prephitmp.2120
	sxtb	r8, r8	@ D.35980, D.35980
	add	r3, r8, r1, asl #2	@, MinFsNum, D.35980, prephitmp.2120,
	strb	ip, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	ip, [sp, #324]	@ temp.2251, MemArrange.ValidFrameNum
	cmp	r3, ip	@ MinFsNum, temp.2251
	bgt	.L745	@,
	ldrsb	r6, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r6, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r2, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	bne	.L746	@,
	ldrsb	r7, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r7, #0	@ <variable>.s8LowBufEnable,
	beq	.L747	@,
	ldr	r0, [sp, #24]	@, %sfp
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp278,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp278,
	ldr	fp, [r2, r0, asl #2]	@ tmp279, s_pstVfmwChan
	ldr	r9, [fp, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L748	@,
	ldrsb	r1, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r5, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	ip, r1, #4	@ tmp281, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	ip, r5	@ tmp281, MemArrange.ValidFrameNum
	movlt	r3, ip	@ tmp935, tmp281
	movge	r3, r5	@ tmp935, MemArrange.ValidFrameNum
	strb	r3, [r4, #10]	@ tmp935, <variable>.s32DecFsNum
	b	.L749	@
.L735:
	ldrsb	r1, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r1, #1	@ <variable>.stInstCfg.s32UserDec,
	beq	.L736	@,
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L819	@,
	rsb	ip, r0, r0, asl #3	@, tmp243, eChanCapLevel, eChanCapLevel,
	movw	r3, #:lower16:CapItem	@ tmp240,
	add	r1, ip, #1	@ tmp251, tmp243,
	movt	r3, #:upper16:CapItem	@ tmp240,
	mov	r2, r0	@, eChanCapLevel
	mov	r0, #0	@,
	ldr	lr, [r3, r1, asl #2]	@ tmp252, CapItem
	movw	r1, #:lower16:.LC75	@,
	ldr	r3, [r3, ip, asl #2]	@ tmp246, CapItem
	movt	r1, #:upper16:.LC75	@,
	str	lr, [sp, #0]	@ tmp252,
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	lr, [sp, #4]	@ <variable>.stInstCfg.s32DecFsWidth,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [sp, #8]	@ <variable>.stInstCfg.s32DecFsHeight,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
.L733:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L819:
	mov	r2, r0	@, eChanCapLevel
	movw	r1, #:lower16:.LC74	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L746:
	ldrb	r9, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r9, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L749:
	ldr	fp, [sp, #456]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r2, r4, #27648	@ ivtmp.2230, D.35946,
	add	r3, r2, #160	@ ivtmp.2230, ivtmp.2230,
	mov	r0, #0	@ i,
	movw	r2, #34640	@ tmp292,
	ldrsb	r6, [r4, #10]	@ D.36019, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp927, tmp292
	add	ip, sp, #48	@ ivtmp.2229,,
	mov	r1, r0	@ tmp926, i
	str	fp, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L752	@
.L821:
	str	r0, [r2, #-8]	@ tmp932, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp932,
	ldr	r7, [ip, #8]	@ tmp972, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2229, tmp933,
	str	r7, [r3, #52]	@ tmp972, <variable>.PhyAddr
	ldr	r3, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	fp, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	fp, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r9, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r9, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r9, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp926, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp926, <variable>.IsTfRef
	str	r9, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp926, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.2230, tmp934,
	beq	.L820	@,
.L752:
	cmp	r6, r0	@ D.36019, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp926, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp932, i,
	ldrgt	r2, [ip, #8]	@ tmp296, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp933, ivtmp.2229,
	ldrle	r2, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.36019, tmp932
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r9, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r7, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r7, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r2, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r2, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	add	r2, r3, #52	@ tmp934, ivtmp.2230,
	ldr	fp, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r9, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp926, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp926, <variable>.IsTfRef
	str	r9, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp926, <variable>.DispState
	ldr	r7, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r7, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bgt	.L821	@,
	str	r1, [r2, #-8]	@ tmp926, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp932,
	ldr	r7, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2229, tmp933,
	str	r7, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r9, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r9, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r9, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp926, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp926, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.2230, tmp934,
	strb	r1, [r2, #-10]	@ tmp926, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L752	@,
.L820:
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r9, #34456	@ tmp329,
	mov	r0, #0	@ tmp330,
	str	r0, [r4, r9]	@ tmp330, <variable>.PhyFsID
	add	r9, sp, #464	@,,
	mov	r5, #1	@ tmp327,
	add	ip, r9, r2, asl #2	@, tmp336,, <variable>.s32DecFsNum,
	strb	r5, [r4, #12]	@ tmp327, <variable>.s32TfFsNum
	movw	fp, #34464	@ tmp331,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [ip, #-408]	@ tmp338, MemArrange.FrameAddr
	movw	r3, #34476	@ tmp341,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [r4, fp]	@ tmp338, <variable>.PhyAddr
	movw	fp, #34480	@ tmp343,
	ldr	r1, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r3]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r3, #34472	@ tmp339,
	str	ip, [r4, fp]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r1, [r4, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r1, #34484	@ tmp345,
	ldr	fp, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r3, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	fp, [r4, r1]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	fp, #34488	@ tmp347,
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r1, #34452	@ tmp351,
	cmp	r3, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #34453	@ tmp354,
	ldr	fp, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r0, [r4, r1]	@ tmp330, <variable>.IsDecRef
	movw	r1, #34492	@ tmp349,
	strb	r0, [r4, ip]	@ tmp330, <variable>.IsTfRef
	movw	ip, #34454	@ tmp357,
	str	fp, [r4, r1]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r0, [r4, ip]	@ tmp330, <variable>.DispState
	bne	.L753	@,
	mov	fp, r3	@ prephitmp.2125, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L755:
	add	r0, r4, #30976	@ tmp363, D.35946,
	mov	r2, #0	@ ivtmp.2195,
	add	r9, r0, #180	@ ivtmp.2207, tmp363,
	add	sl, r0, #152	@ ivtmp.2193, tmp363,
	add	r8, r0, #160	@ ivtmp.2199, tmp363,
	add	r7, r0, #168	@ ivtmp.2201, tmp363,
	add	r6, r0, #172	@ ivtmp.2203, tmp363,
	add	r5, r0, #176	@ ivtmp.2205, tmp363,
	mov	r3, r2	@ i.2302, ivtmp.2195
	mov	r1, r2	@ tmp924, ivtmp.2195
	b	.L754	@
.L823:
	str	r3, [sl, #0]	@ i.2302, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp383, i.2302, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp384, tmp383, <variable>.s32DecFsNum
	add	fp, sp, #464	@,,
	add	r0, fp, r0, asl #2	@, tmp388,, tmp384,
	ldr	r0, [r0, #-408]	@ tmp390, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp390, <variable>.PhyAddr
	ldr	r0, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r0, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r0, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r0, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp924, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp924, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp924, <variable>.IsTfRef
.L757:
	add	r3, r3, #1	@ i.2302, i.2302,
	add	sl, sl, #52	@ ivtmp.2193, ivtmp.2193,
	cmp	r3, #64	@ i.2302,
	add	r2, r2, #52	@ ivtmp.2195, ivtmp.2195,
	add	r8, r8, #52	@ ivtmp.2199, ivtmp.2199,
	add	r7, r7, #52	@ ivtmp.2201, ivtmp.2201,
	add	r6, r6, #52	@ ivtmp.2203, ivtmp.2203,
	add	r5, r5, #52	@ ivtmp.2205, ivtmp.2205,
	add	r9, r9, #52	@ ivtmp.2207, ivtmp.2207,
	beq	.L822	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.2125, <variable>.s32DispFsNum
.L754:
	add	ip, r4, r2	@ D.38982, D.35946, ivtmp.2195
	cmp	fp, r3	@ prephitmp.2125, i.2302
	add	ip, ip, #30976	@ tmp396, D.38982,
	mov	r0, ip	@ tmp428, tmp396
	bgt	.L823	@,
	str	r1, [sl, #0]	@ tmp924, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp416, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #464	@,,
	add	ip, fp, ip, asl #2	@, tmp420,, tmp416,
	ldr	ip, [ip, #-408]	@ tmp422, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp422, <variable>.PhyAddr
	ldr	ip, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	ip, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	ip, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	ip, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	ip, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp924, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp924, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp924, <variable>.IsTfRef
	b	.L757	@
.L822:
	ldr	r5, [sp, #452]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.2175, D.35946,
	mov	r0, #0	@ tmp923,
	mov	r3, #1	@ i.2304,
	cmp	r5, #20	@ MemArrange.ValidPMVNum,
	movge	r5, #20	@ tmp445,
	add	r2, r4, r3	@ ivtmp.2181, D.35946,
	uxtb	r7, r5	@ prephitmp.2303, tmp445
	strb	r7, [r4, #13]	@ prephitmp.2303, <variable>.s32PmvNum
	ldr	r9, [sp, #328]	@ tmp956, MemArrange.PMVAddr
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2303, <variable>.s32PmvNum
	strb	r0, [r4, #14]	@ tmp923, <variable>.IsPmvInUse
	str	r9, [r1, #0]	@ tmp956, <variable>.PmvAddr
	add	r9, sp, #48	@,,
	add	ip, r9, #4	@ ivtmp.2373,,
	add	r1, r1, #4	@ ivtmp.2175, ivtmp.2175,
	b	.L762	@
.L824:
	ldr	r7, [ip, #280]	@ tmp960, MemArrange.PMVAddr
	strb	r0, [r2, #14]	@ tmp923, <variable>.IsPmvInUse
	str	r7, [r1, #0]	@ tmp960, <variable>.PmvAddr
.L808:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2303, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2304, tmp928,
	add	ip, ip, #4	@ ivtmp.2373, tmp929,
	add	r1, r1, #4	@ ivtmp.2175, tmp930,
	add	r2, r2, #1	@ ivtmp.2181, tmp931,
.L762:
	sxtb	r7, r5	@ prephitmp.2303, prephitmp.2303
	cmp	r7, r3	@ prephitmp.2303, i.2304
	add	r3, r3, #1	@ tmp928, i.2304,
	ldrgt	r7, [ip, #280]	@ tmp449, MemArrange.PMVAddr
	add	ip, ip, #4	@ tmp929, ivtmp.2373,
	ldrle	r7, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp928,
	strb	r0, [r2, #14]	@ tmp923, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp931, ivtmp.2181,
	str	r7, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp930, ivtmp.2175,
	beq	.L761	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.2303, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.2303, tmp928
	bgt	.L824	@,
	ldr	r5, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	r0, [r2, #14]	@ tmp923, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L808	@
.L761:
	movw	r7, #27808	@ tmp460,
	ldr	ip, [sp, #448]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r4, r7]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp455,
	movw	r5, #27756	@ tmp459,
	movw	r2, #27748	@ tmp457,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp458,
	str	r1, [r4, r5]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r7, #27764	@ tmp462,
	str	r3, [r4, r2]	@ tmp458, <variable>.stDummyPhyFs.PhyFsID
	movw	ip, #27768	@ tmp464,
	ldr	r0, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	movw	r5, #27772	@ tmp466,
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r4, r7]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r0, #27776	@ tmp468,
	str	r1, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	str	r2, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r5, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r7, [r4, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r5, [r4, r0]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r0, #27780	@ tmp470,
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	cmp	r1, r7	@ prephitmp.2130, <variable>.stPreInfo.s32PreWidth
	movw	r7, #27746	@ tmp480,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	r0, #27744	@ tmp474,
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r7]	@ tmp458, <variable>.stDummyPhyFs.DispState
	movw	r7, #27784	@ tmp472,
	strb	r3, [r4, r0]	@ tmp458, <variable>.stDummyPhyFs.IsDecRef
	movw	r0, #27745	@ tmp477,
	str	ip, [r4, r7]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r7, #34656	@ tmp483,
	strb	r3, [r4, r0]	@ tmp458, <variable>.stDummyPhyFs.IsTfRef
	movw	r3, #34644	@ tmp485,
	ldr	ip, [sp, #460]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	ip, [r4, r7]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	r0, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r4, r3]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	beq	.L825	@,
.L763:
	ldr	r6, [sp, #24]	@, %sfp
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp906,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp906,
	ldr	r3, [r5, r6, asl #2]	@ tmp495, s_pstVfmwChan
	ldr	r6, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L826	@,
.L765:
	movw	r3, #27860	@ tmp896,
	movw	r7, #27808	@ tmp897,
	ldrsb	r0, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldrsb	r5, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r4, r7]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #56]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	rsb	r7, r3, ip	@ tmp900, <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #40]	@ prephitmp.2130, <variable>.stPreInfo.s32PreWidth
	str	r2, [r4, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	str	r0, [r4, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r7, [r4, #52]	@ tmp900, <variable>.stPreInfo.s32PreDecSlotLen
.L764:
	ldr	r2, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.35944,
	ldr	r7, [sp, #32]	@, %sfp
	str	r2, [r7, #0]	@ MemArrange.TotalMemUsed,
	b	.L733	@
.L753:
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #67]	@ D.36042, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r3, r1, #1	@ tmp370, MemArrange.ValidFrameNum,
	rsb	fp, r2, r3	@ tmp369, <variable>.s32DecFsNum, tmp370
	cmp	fp, #25	@ tmp369,
	movlt	r1, fp	@ tmp939, tmp369
	movge	r1, #25	@ tmp939,
	uxtb	r2, r1	@ prephitmp.2125,
	strb	r2, [r4, #11]	@ tmp3, <variable>.s32DispFsNum
	sxtb	fp, r2	@ prephitmp.2125,
	cmp	fp, ip	@ prephitmp.2125, D.36042
	bge	.L755	@,
	ldrsb	r3, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, fp	@, prephitmp.2125
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	ip, [sp, #0]	@ D.36042,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L740:
	ldrb	r6, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2120, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r6, #0	@ prephitmp.2120,
	beq	.L739	@,
	ldr	r0, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r0	@ D.35973, <variable>.stInstCfg.s32DecFsHeight
	beq	.L827	@,
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L747:
	ldr	r7, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r7, #40	@ MemArrange.ValidFrameNum,
	movge	r7, #40	@ tmp287,
	strb	r7, [r4, #10]	@ tmp287, <variable>.s32DecFsNum
	b	.L749	@
.L825:
	ldr	r0, [r4, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r2, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L763	@,
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r3, [r4, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L763	@,
	ldrsb	r7, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r0, [r4, #56]	@ <variable>.stPreInfo.s32PreExpectNum, <variable>.stPreInfo.s32PreExpectNum
	cmp	r7, r0	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	bne	.L763	@,
	b	.L764	@
.L826:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [sp, #24]	@, %sfp
	ldr	r7, [sp, #28]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	ldr	ip, [r7, r1, asl #2]	@, s_pFspInst
	movw	r7, #:lower16:.LANCHOR0	@ tmp498,
	ldr	r1, [r5, r2, asl #2]	@ D.38835, s_pstVfmwChan
	movt	r7, #:upper16:.LANCHOR0	@ tmp498,
	str	ip, [sp, #36]	@, %sfp
	ldr	fp, [r1, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r2, [ip, #72]	@ s32CurWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r3, [ip, #76]	@ s32CurHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	lr, [r1, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	cmp	r3, fp	@ s32CurHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmple	r2, lr	@, s32CurWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movgt	fp, #0	@, tmp508
	movle	fp, #1	@, tmp508
	bgt	.L766	@,
	ldr	r0, [r1, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L828	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #24]	@, %sfp
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L829	@,
	mov	r1, r6	@, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r0, [sp, #24]	@, %sfp
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	beq	.L815	@,
	movw	lr, #:lower16:s_DnrChan	@,
	movt	lr, #:upper16:s_DnrChan	@,
	str	lr, [sp, #28]	@, %sfp
.L774:
	ldr	r0, [sp, #24]	@, %sfp
	mov	fp, #1	@ tmp667,
	ldr	r1, [r5, r0, asl #2]	@ tmp666, s_pstVfmwChan
	str	fp, [r1, #1604]	@ tmp667, <variable>.stSynExtraData.s32DnrEnable
.L777:
	ldr	fp, [sp, #24]	@, %sfp
	movw	r1, #:lower16:76696	@ tmp866,
	ldr	r0, [sp, #28]	@, %sfp
	movt	r1, #:upper16:76696	@ tmp866,
	movw	r3, #:lower16:76664	@ tmp873,
	movt	r3, #:upper16:76664	@ tmp873,
	ldr	ip, [r5, fp, asl #2]	@ tmp870, s_pstVfmwChan
	mla	lr, r1, fp, r0	@ tmp867, tmp866,,
	mov	r0, #31	@,
	ldr	r5, [ip, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	add	r2, lr, #75776	@ tmp868, tmp867,
	add	r2, r2, #880	@ tmp868, tmp868,
	str	r5, [r2, #4]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r5, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r5, [lr, r3]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	movw	r5, #34652	@ tmp885,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	lr, [ip, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r3, [r2, r5]	@ <variable>.MemSize, <variable>.MemSize
	movw	r2, #34648	@ tmp883,
	ldr	r5, [sp, #36]	@, %sfp
	ldr	r2, [r5, r2]	@ <variable>.MemAddr, <variable>.MemAddr
	str	lr, [sp, #0]	@ <variable>.s32OffLineDnrMemAddr,
	ldr	lr, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	lr, [sp, #4]	@ <variable>.s32OffLineDNRMemSize,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret,
	bne	.L775	@,
	ldr	r1, [r4, #72]	@ prephitmp.2130, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	b	.L765	@
.L766:
	ldr	r9, [r1, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L830	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #24]	@, %sfp
	movw	r0, #34640	@ tmp795,
	ldr	r9, [r7, ip, asl #2]	@ pstInst, s_pFspInst
	ldrsb	r1, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	sl, [r9, r0]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	ble	.L779	@,
	add	r8, r9, #27648	@ ivtmp.2156, pstInst,
	mov	r7, fp	@ i, tmp508
	str	r4, [sp, #28]	@ D.35946, %sfp
	add	r8, r8, #160	@ ivtmp.2156, ivtmp.2156,
	mov	fp, r6	@ tmp922, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r4, ip	@ InstID,
	b	.L787	@
.L831:
	ldr	r3, [r5, r4, asl #2]	@ tmp799, s_pstVfmwChan
	add	r1, ip, r3	@ tmp802, tmp801, tmp799
	add	lr, r1, #216064	@ tmp803, tmp802,
	add	r3, lr, #360	@ tmp803, tmp803,
	str	r0, [r3, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	r1, [r5, r4, asl #2]	@ tmp806, s_pstVfmwChan
	add	lr, ip, r1	@ tmp809, tmp801, tmp806
	add	r3, lr, #216064	@ tmp810, tmp809,
	add	r1, r3, #360	@ tmp810, tmp810,
	str	r6, [r1, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r6, [r5, r4, asl #2]	@ tmp812, s_pstVfmwChan
	str	sl, [r6, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, r4, asl #2]	@ tmp816, s_pstVfmwChan
	add	lr, ip, r2, asl #4	@, tmp821, tmp816, tmp813,
	str	r0, [lr, #4]	@ s32UsingCount, <variable>.s32UsingCount
.L785:
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #52	@ ivtmp.2156, ivtmp.2156,
	cmp	r7, r0	@ i, <variable>.s32DecFsNum
	bge	.L813	@,
.L787:
	ldr	r6, [r8, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	mov	r2, sl	@, s32ImgSize
	mov	r0, r4	@, InstID
	mov	r1, r6	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	add	r3, r7, #13504	@ tmp813, i,
	mov	ip, r7, asl #4	@ tmp801, i,
	add	r2, r3, #23	@ tmp813, tmp813,
	mov	r1, ip	@ tmp827, tmp801
	mov	r3, r2	@ tmp839, tmp813
	cmp	r0, #0	@ s32UsingCount
	beq	.L831	@,
	ble	.L786	@,
	ldr	lr, [r5, r4, asl #2]	@ tmp825, s_pstVfmwChan
	add	r2, ip, lr	@ tmp828, tmp827, tmp825
	add	ip, r2, #216064	@ tmp829, tmp828,
	add	lr, ip, #360	@ tmp829, tmp829,
	str	fp, [lr, #0]	@ tmp922, <variable>.eFrameState
	ldr	r2, [r5, r4, asl #2]	@ tmp832, s_pstVfmwChan
	add	ip, r1, r2	@ tmp835, tmp827, tmp832
	add	r1, ip, #216064	@ tmp836, tmp835,
	add	lr, r1, #360	@ tmp836, tmp836,
	str	r6, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r6, [r5, r4, asl #2]	@ tmp838, s_pstVfmwChan
	str	sl, [r6, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, r4, asl #2]	@ tmp842, s_pstVfmwChan
	add	ip, r2, r3, asl #4	@, tmp847, tmp842, tmp839,
	str	r0, [ip, #4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L785	@
.L748:
	ldr	r6, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r6, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	b	.L749	@
.L813:
	ldr	r4, [sp, #28]	@ D.35946, %sfp
.L779:
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #0	@,
	bl	FSP_EnableDnr	@
	subs	r6, r0, #0	@ s32Ret,
	bne	.L832	@,
	ldr	r7, [sp, #24]	@, %sfp
	movw	r9, #:lower16:s_DnrChan	@,
	movt	r9, #:upper16:s_DnrChan	@,
	str	r9, [sp, #28]	@, %sfp
	ldr	fp, [r5, r7, asl #2]	@ tmp861, s_pstVfmwChan
	str	r6, [fp, #1604]	@ s32Ret, <variable>.stSynExtraData.s32DnrEnable
	b	.L777	@
.L817:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1545	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L830:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r6, #34640	@ tmp671,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #24]	@, %sfp
	movw	r3, #:lower16:s_DnrChan	@ tmp953,
	movw	r1, #:lower16:76696	@ tmp675,
	movt	r3, #:upper16:s_DnrChan	@ tmp953,
	movt	r1, #:upper16:76696	@ tmp675,
	ldr	r8, [r7, r0, asl #2]	@ pstInst, s_pFspInst
	movw	r2, #:lower16:76664	@ tmp679,
	mla	sl, r1, r0, r3	@ tmp676, tmp675,, tmp953
	movt	r2, #:upper16:76664	@ tmp679,
	ldrsb	ip, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, sl, #75776	@ tmp677, tmp676,
	cmp	ip, #0	@ <variable>.s32DecFsNum,
	add	r3, r0, #880	@ tmp677, tmp677,
	ldr	ip, [r8, r6]	@ s32ImgSize, <variable>.ImgSlotLen
	ldr	r6, [sl, r2]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r0, [r3, #4]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	sl, r0, r6	@ s32DnrEndAddr, s32DnrStartAddr, <variable>.s32OffLineDNRMemSize
	ble	.L779	@,
	add	r9, r8, #27648	@ ivtmp.2151, pstInst,
	mov	r3, fp	@ i, tmp508
	add	r1, r9, #160	@ ivtmp.2151, ivtmp.2151,
	str	r4, [sp, #28]	@ D.35946, %sfp
	ldr	lr, [sp, #24]	@ InstID, %sfp
	b	.L783	@
.L833:
	ldr	r9, [r5, lr, asl #2]	@ tmp695, s_pstVfmwChan
	add	r7, r6, r9	@ tmp698, tmp697, tmp695
	add	r9, r7, #216064	@ tmp699, tmp698,
	add	r7, r9, #360	@ tmp699, tmp699,
	mov	r9, #1	@,
	str	r9, [r7, #0]	@, <variable>.eFrameState
	ldr	r7, [r5, lr, asl #2]	@ tmp702, s_pstVfmwChan
	add	r6, r6, r7	@ tmp705, tmp697, tmp702
	add	r6, r6, #216064	@ tmp706, tmp705,
	add	r6, r6, #360	@ tmp706, tmp706,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r6, [r5, lr, asl #2]	@ tmp708, s_pstVfmwChan
	str	ip, [r6, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ temp.2345, s_pstVfmwChan
	add	r4, r2, r4, asl #4	@, tmp716, temp.2345, tmp709,
	ldr	r6, [r4, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, r6, r9	@ tmp725, <variable>.s32UsingCount,
	str	r2, [r4, #4]	@ tmp725, <variable>.s32UsingCount
.L781:
	ldrsb	r4, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2151, ivtmp.2151,
	cmp	r3, r4	@ i, <variable>.s32DecFsNum
	bge	.L813	@,
.L783:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r7, r3, #13504	@ tmp709, i,
	add	r4, r7, #23	@ tmp709, tmp709,
	mov	r6, r3, asl #4	@ tmp697, i,
	cmp	sl, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r9, #0	@, tmp693
	movgt	r9, #1	@, tmp693
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r2, ip	@ tmp726, s32FrameStartAddr, s32ImgSize
	movgt	r9, #0	@, tmp693,
	cmp	r9, #0	@ tmp693,
	bne	.L833	@,
	cmp	r0, r7	@ s32DnrStartAddr, tmp726
	movge	r7, #0	@, tmp733
	movlt	r7, #1	@, tmp733
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r4, r3, #13504	@ tmp749, i,
	mov	fp, r3, asl #4	@ tmp737, i,
	add	r6, r4, #23	@ tmp749, tmp749,
	movle	r7, #0	@, tmp733,
	cmp	r7, #0	@ tmp733,
	mov	r9, fp	@ tmp769, tmp737
	mov	r4, r6	@ tmp781, tmp749
	beq	.L782	@,
	ldr	r7, [r5, lr, asl #2]	@ tmp735, s_pstVfmwChan
	add	r4, fp, r7	@ tmp738, tmp737, tmp735
	add	r7, r4, #216064	@ tmp739, tmp738,
	add	r4, r7, #360	@ tmp739, tmp739,
	mov	r7, #1	@,
	str	r7, [r4, #0]	@, <variable>.eFrameState
	ldr	r4, [r5, lr, asl #2]	@ tmp742, s_pstVfmwChan
	add	r4, fp, r4	@ tmp745, tmp737, tmp742
	add	r4, r4, #216064	@ tmp746, tmp745,
	add	r4, r4, #360	@ tmp746, tmp746,
	str	r2, [r4, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r4, [r5, lr, asl #2]	@ tmp748, s_pstVfmwChan
	str	ip, [r4, r6, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ temp.2349, s_pstVfmwChan
	add	r6, r2, r6, asl #4	@, tmp756, temp.2349, tmp749,
	ldr	r4, [r6, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, r4, r7	@ tmp765, <variable>.s32UsingCount,
	str	r2, [r6, #4]	@ tmp765, <variable>.s32UsingCount
	b	.L781	@
.L782:
	ldr	r6, [r5, lr, asl #2]	@ tmp767, s_pstVfmwChan
	add	r6, fp, r6	@ tmp770, tmp769, tmp767
	add	r6, r6, #216064	@ tmp771, tmp770,
	add	r6, r6, #360	@ tmp771, tmp771,
	str	r7, [r6, #0]	@ tmp733, <variable>.eFrameState
	ldr	r6, [r5, lr, asl #2]	@ tmp774, s_pstVfmwChan
	add	r6, fp, r6	@ tmp777, tmp769, tmp774
	add	r6, r6, #216064	@ tmp778, tmp777,
	add	r6, r6, #360	@ tmp778, tmp778,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r6, [r5, lr, asl #2]	@ tmp780, s_pstVfmwChan
	str	ip, [r6, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ tmp784, s_pstVfmwChan
	add	r6, r2, r4, asl #4	@, tmp789, tmp784, tmp781,
	str	r7, [r6, #4]	@ tmp733, <variable>.s32UsingCount
	b	.L781	@
.L743:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L745:
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ temp.2251,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L828:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	movw	r9, #:lower16:s_DnrChan	@,
	bl	dprint_vfmw	@
	ldr	fp, [sp, #24]	@, %sfp
	movt	r9, #:upper16:s_DnrChan	@,
	movw	sl, #:lower16:76696	@ tmp515,
	movt	sl, #:upper16:76696	@ tmp515,
	movw	r6, #:lower16:76664	@ tmp519,
	movt	r6, #:upper16:76664	@ tmp519,
	str	r9, [sp, #28]	@, %sfp
	mla	r0, sl, fp, r9	@ tmp516, tmp515,,
	ldr	ip, [r5, fp, asl #2]	@ tmp525, s_pstVfmwChan
	ldr	sl, [r7, fp, asl #2]	@ pstInst, s_pFspInst
	add	r3, r0, #75776	@ tmp517, tmp516,
	add	r8, r3, #880	@ tmp517, tmp517,
	ldr	r2, [r0, r6]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldr	r6, [r8, #4]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	r8, r2, r6	@ s32DnrEndAddr, s32DnrSize, s32DnrStartAddr
	str	r6, [ip, #236]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	movw	ip, #34640	@ tmp528,
	ldr	r1, [r5, fp, asl #2]	@ tmp527, s_pstVfmwChan
	str	r2, [r1, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldrsb	r3, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	lr, [sl, ip]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L768	@,
	add	r9, sl, #27648	@ ivtmp.2146, pstInst,
	mov	r3, #0	@ i,
	add	r1, r9, #160	@ ivtmp.2146, ivtmp.2146,
	str	r4, [sp, #44]	@ D.35946, %sfp
	ldr	r0, [sp, #24]	@ InstID, %sfp
	b	.L773	@
.L835:
	ldr	r7, [r5, r0, asl #2]	@ tmp539, s_pstVfmwChan
	add	ip, r9, r7	@ tmp542, tmp541, tmp539
	add	r7, ip, #216064	@ tmp543, tmp542,
	add	ip, r7, #360	@ tmp543, tmp543,
	mov	r7, #2	@,
	str	r7, [ip, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, r0, asl #2]	@ tmp546, s_pstVfmwChan
	add	ip, r9, ip	@ tmp549, tmp541, tmp546
	add	r9, ip, #216064	@ tmp550, tmp549,
	add	ip, r9, #360	@ tmp550, tmp550,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r9, [r5, r0, asl #2]	@ tmp552, s_pstVfmwChan
	str	lr, [r9, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r9, #0	@,
	ldr	r2, [r5, r0, asl #2]	@ tmp556, s_pstVfmwChan
	add	ip, r2, r4, asl #4	@, tmp561, tmp556, tmp553,
	str	r9, [ip, #4]	@, <variable>.s32UsingCount
.L770:
	ldrsb	ip, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2146, ivtmp.2146,
	cmp	r3, ip	@ i, <variable>.s32DecFsNum
	bge	.L834	@,
.L773:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r4, r3, #13504	@ tmp553, i,
	mov	r9, r3, asl #4	@ tmp541, i,
	add	r4, r4, #23	@ tmp553, tmp553,
	cmp	r8, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r7, #0	@, tmp537
	movgt	r7, #1	@, tmp537
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	ip, r2, lr	@ s32FrameEndAddr, s32FrameStartAddr, s32ImgSize
	movgt	r7, #0	@, tmp537,
	cmp	r7, #0	@ tmp537,
	bne	.L835	@,
	add	r4, r3, #13504	@ tmp586, i,
	mov	fp, r3, asl #4	@ tmp574, i,
	add	r9, r4, #23	@ tmp586, tmp586,
	cmp	r8, ip	@ s32DnrEndAddr, s32FrameEndAddr
	movlt	r4, #0	@, tmp570
	movge	r4, #1	@, tmp570
	cmp	r6, ip	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r4, #0	@, tmp570,
	cmp	r4, #0	@ tmp570,
	beq	.L771	@,
	ldr	r4, [r5, r0, asl #2]	@ tmp572, s_pstVfmwChan
	add	ip, fp, r4	@ tmp575, tmp574, tmp572
	add	r4, ip, #216064	@ tmp576, tmp575,
	add	ip, r4, #360	@ tmp576, tmp576,
	mov	r4, #2	@,
	str	r4, [ip, #0]	@, <variable>.eFrameState
	ldr	r4, [r5, r0, asl #2]	@ tmp579, s_pstVfmwChan
	add	ip, fp, r4	@ tmp582, tmp574, tmp579
	add	r4, ip, #216064	@ tmp583, tmp582,
	add	ip, r4, #360	@ tmp583, tmp583,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r4, [r5, r0, asl #2]	@ tmp585, s_pstVfmwChan
	str	lr, [r4, r9, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, r0, asl #2]	@ tmp589, s_pstVfmwChan
	add	r2, ip, r9, asl #4	@, tmp594, tmp589, tmp586,
	str	r7, [r2, #4]	@ tmp537, <variable>.s32UsingCount
	b	.L770	@
.L771:
	cmp	r8, ip	@ s32DnrEndAddr, s32FrameEndAddr
	movge	ip, #0	@, tmp603
	movlt	ip, #1	@, tmp603
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r9, r3, #13504	@ tmp619, i,
	mov	fp, r3, asl #4	@ tmp607, i,
	add	r9, r9, #23	@ tmp619, tmp619,
	movle	ip, #0	@, tmp603,
	cmp	ip, #0	@ tmp603,
	str	fp, [sp, #40]	@ tmp7, %sfp
	mov	r7, r9	@ tmp645, tmp619
	beq	.L772	@,
	ldr	r7, [r5, r0, asl #2]	@ tmp605, s_pstVfmwChan
	add	ip, fp, r7	@ tmp608, tmp607, tmp605
	add	r7, ip, #216064	@ tmp609, tmp608,
	add	ip, r7, #360	@ tmp609, tmp609,
	mov	r7, #2	@,
	str	r7, [ip, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, r0, asl #2]	@ tmp612, s_pstVfmwChan
	add	ip, fp, ip	@ tmp615, tmp607, tmp612
	add	ip, ip, #216064	@ tmp616, tmp615,
	add	ip, ip, #360	@ tmp616, tmp616,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, r0, asl #2]	@ tmp618, s_pstVfmwChan
	str	lr, [r2, r9, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, r0, asl #2]	@ tmp622, s_pstVfmwChan
	add	r2, ip, r9, asl #4	@, tmp627, tmp622, tmp619,
	str	r4, [r2, #4]	@ tmp570, <variable>.s32UsingCount
	b	.L770	@
.L772:
	ldr	r9, [sp, #40]	@, %sfp
	ldr	r4, [r5, r0, asl #2]	@ tmp631, s_pstVfmwChan
	add	r4, r9, r4	@ tmp634,, tmp631
	add	r4, r4, #216064	@ tmp635, tmp634,
	add	r4, r4, #360	@ tmp635, tmp635,
	str	ip, [r4, #0]	@ tmp603, <variable>.eFrameState
	ldr	r4, [r5, r0, asl #2]	@ tmp638, s_pstVfmwChan
	add	r4, r9, r4	@ tmp641,, tmp638
	add	r4, r4, #216064	@ tmp642, tmp641,
	add	r4, r4, #360	@ tmp642, tmp642,
	str	r2, [r4, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r4, [r5, r0, asl #2]	@ tmp644, s_pstVfmwChan
	str	lr, [r4, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, r0, asl #2]	@ tmp648, s_pstVfmwChan
	add	r4, r2, r7, asl #4	@, tmp653, tmp648, tmp645,
	str	ip, [r4, #4]	@ tmp603, <variable>.s32UsingCount
	b	.L770	@
.L834:
	ldr	r4, [sp, #44]	@ D.35946, %sfp
.L768:
	ldr	r0, [sp, #24]	@, %sfp
	mov	r1, #2	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	bne	.L774	@,
.L815:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L775:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L836	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1797	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L818:
	mov	r0, r4	@, D.35946
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1546	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L786:
	ldr	ip, [sp, #24]	@, %sfp
	movw	r3, #1484	@,
	ldr	r2, .L836+4	@,
	movw	r1, #:lower16:.LC78	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC78	@,
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	b	.L815	@
.L827:
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, lr	@ D.35975, <variable>.stInstCfg.s32DecFsWidth
	beq	.L739	@,
	mvn	r0, #0	@ D.35944,
	b	.L733	@
.L832:
	ldr	r4, [sp, #24]	@, %sfp
	movw	r3, #1494	@,
	ldr	r2, .L836+4	@,
	movw	r1, #:lower16:.LC78	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC78	@,
	str	r4, [sp, #0]	@,
	bl	dprint_vfmw	@
	b	.L815	@
.L829:
	ldr	fp, [sp, #24]	@, %sfp
	movw	r3, #1445	@,
	ldr	r2, .L836+4	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	str	fp, [sp, #0]	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L775	@
.L837:
	.align	2
.L836:
	.word	.LANCHOR1+132
	.word	.LANCHOR1+108
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r8, r0	@ InstID, InstID
	mov	r9, r1	@ pstVoQue, pstVoQue
	bhi	.L851	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L852	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	sl, [r3, r0, asl #2]	@ D.35206, s_pFspInst
	cmp	sl, #0	@ D.35206,
	movne	r5, sl	@ ivtmp.2408, D.35206
	movne	r4, #0	@ i,
	movne	fp, #432	@ tmp158,
	bne	.L844	@,
	b	.L856	@
.L843:
	mov	r0, r8	@, InstID
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	mla	r2, fp, r7, sl	@ tmp167, tmp158, tmp159, D.35206
	mov	r0, r9	@, pstVoQue
	add	r1, r2, #104	@, tmp167,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L854	@,
	add	r4, r7, #1	@ i, tmp159,
	add	r5, r6, #432	@ ivtmp.2408, tmp160,
	cmp	r4, #64	@ i,
	beq	.L855	@,
.L844:
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	add	r6, r5, #432	@ tmp160, ivtmp.2408,
	bl	FSP_SetRef	@
	mla	r1, fp, r4, sl	@ tmp154, tmp158, i, D.35206
	mov	r0, r9	@, pstVoQue
	add	r7, r4, #1	@ tmp159, i,
	add	r1, r1, #104	@, tmp154,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L843	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r0, r8	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L843	@
.L854:
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	add	r4, r7, #1	@ i, tmp159,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i,
	add	r5, r6, #432	@ ivtmp.2408, tmp160,
	bne	.L844	@,
.L855:
	mov	r0, #0	@ D.35202,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L851:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #456	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35202,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L856:
	mov	r0, sl	@, D.35206
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #458	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35202,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L852:
	mov	r0, r1	@, pstVoQue
	movw	r2, #457	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35202,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.35678, %object
	.size	__func__.35678, 35
__func__.35678:
	.ascii	"FSP_NoneDnrSwitchToDnrSpecialCase1\000"
	.space	1
	.type	__func__.35562, %object
	.size	__func__.35562, 31
__func__.35562:
	.ascii	"FSP_NoneDnrSwitchToDnrNormCase\000"
	.space	1
	.type	__func__.35803, %object
	.size	__func__.35803, 23
__func__.35803:
	.ascii	"FSP_NoneDnrSwitchToDnr\000"
	.space	1
	.type	__func__.35375, %object
	.size	__func__.35375, 14
__func__.35375:
	.ascii	"FSP_EnableDnr\000"
	.space	2
	.type	__func__.35853, %object
	.size	__func__.35853, 24
__func__.35853:
	.ascii	"FSP_ConfigDSDFrameArray\000"
	.type	__func__.35934, %object
	.size	__func__.35934, 22
__func__.35934:
	.ascii	"FSP_PartitionFsMemory\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"fsp.c,L%d: %s\012\000"
	.space	1
.LC1:
	.ascii	"InstID out of range\000"
.LC2:
	.ascii	"fsp is not inited\000"
	.space	2
.LC3:
	.ascii	"FSP CONTEXT:\012\000"
	.space	2
.LC4:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC5:
	.ascii	"eFspInstState\000"
	.space	2
.LC6:
	.ascii	"s32DispLoopEnable\000"
	.space	2
.LC7:
	.ascii	"s32TfEnable\000"
.LC8:
	.ascii	"s32RprEnable\000"
	.space	3
.LC9:
	.ascii	"s32DecFsWidth\000"
	.space	2
.LC10:
	.ascii	"s32DecFsHeight\000"
	.space	1
.LC11:
	.ascii	"s32DispFsWidth\000"
	.space	1
.LC12:
	.ascii	"s32DispFsHeight\000"
.LC13:
	.ascii	"s32ExpectedDecFsNum\000"
.LC14:
	.ascii	"s32ExpectedTfFsNum\000"
	.space	1
.LC15:
	.ascii	"s32ExpectedDispFsNum\000"
	.space	3
.LC16:
	.ascii	"s32ExpectedPmvNum\000"
	.space	2
.LC17:
	.ascii	"s32DecFsNum\000"
.LC18:
	.ascii	"s32DispFsNum\000"
	.space	3
.LC19:
	.ascii	"s32TfFsNum\000"
	.space	1
.LC20:
	.ascii	"s32PmvNum\000"
	.space	2
.LC21:
	.ascii	"logic fs state:\012\000"
	.space	3
.LC22:
	.ascii	"%d%d \000"
	.space	2
.LC23:
	.ascii	"\012\000"
	.space	2
.LC24:
	.ascii	"\012dec fs state:\012\000"
.LC25:
	.ascii	"\012disp fs state:\012\000"
	.space	3
.LC26:
	.ascii	"\012pmv state:\012\000"
	.space	3
.LC27:
	.ascii	"%d \000"
.LC28:
	.ascii	"\012\012\000"
	.space	1
.LC29:
	.ascii	"PmvAddrTab is NULL\012\000"
.LC30:
	.ascii	"PmvNum is NULL\012\000"
.LC31:
	.ascii	"DecFsAddrTab is NULL\012\000"
	.space	2
.LC32:
	.ascii	"DecFsNum is NULL\012\000"
	.space	2
.LC33:
	.ascii	"LogicFrameID out of range\000"
	.space	2
.LC34:
	.ascii	"%s : AllocFrame func null\012\000"
	.space	1
.LC35:
	.ascii	"fsp.c, line %d: pstLogicFs->PmvIdc out of range(=%d"
	.ascii	")\012\000"
	.space	2
.LC36:
	.ascii	"fsp instance not in used\000"
	.space	3
.LC37:
	.ascii	"%s : RleaseFrame func null\012\000"
.LC38:
	.ascii	"FSP_SetDisplay: LogicTick=%d, DispTick=%d!\012\000"
.LC39:
	.ascii	"FSP_IsFsLeak: fsp is not inited \012\000"
	.space	2
.LC40:
	.ascii	"ref=%d,read=%d,new=%d,total=%d\012\000"
.LC41:
	.ascii	"Fsp arrange failed, return %d\012\000"
	.space	1
.LC42:
	.ascii	"disp fs(=%d) less than expected(=%d+%d)!\012\000"
	.space	2
.LC43:
	.ascii	"arrange ret %d, min = %d, actual = %d\012\000"
	.space	1
.LC44:
	.ascii	"FSP InstID out of range\000"
.LC45:
	.ascii	"VoUsingFrameArray == NULL\000"
	.space	2
.LC46:
	.ascii	"%s, %d\012\000"
.LC47:
	.ascii	"%s, %d, UsedMemSize: %d, VdhTotalMemUse: %d, MemSiz"
	.ascii	"e: %d\012\000"
	.space	2
.LC48:
	.ascii	"1 %s: arrange mem for dnr failed\012\000"
	.space	2
.LC49:
	.ascii	"%s, %d, i: %d, UsingNum: %d, VdhTotalMemUse: %#x\012"
	.ascii	"\000"
	.space	2
.LC50:
	.ascii	"%s, %d, i: %d, UsingNum: %d, DnrSize: %d\012\000"
	.space	2
.LC51:
	.ascii	"pFspInst = NULL\000"
.LC52:
	.ascii	"pstFspInstCfg = NULL\000"
	.space	3
.LC53:
	.ascii	"This inst is not active\000"
.LC54:
	.ascii	"no logic frame store!!!\012\000"
	.space	3
.LC55:
	.ascii	"no decode phy fs\012\000"
	.space	2
.LC56:
	.ascii	"no pmv memory\012\000"
	.space	1
.LC57:
	.ascii	"no display phy fs\012\000"
	.space	1
.LC58:
	.ascii	"can not find disp fs\012\000"
	.space	2
.LC59:
	.ascii	"RefNum,ReadNum,NewNum,Total = %d,%d,%d,%d\012\000"
	.space	1
.LC60:
	.ascii	"FSP_AllocFrame failed\012\000"
	.space	1
.LC61:
	.ascii	"invalid stFrameInfo PhyAddr\012\000"
	.space	3
.LC62:
	.ascii	"Error: Count: %d\012\000"
	.space	2
.LC63:
	.ascii	"%s: arrange mem for dnr failed\012\000"
.LC64:
	.ascii	"Error, %s, %d\012\000"
	.space	1
.LC65:
	.ascii	"Error, %s, %d, %d, %d\012\000"
	.space	1
.LC66:
	.ascii	"NoneDnrSwitchToDnrSpecialCase1, FrameSize: %d, VdhT"
	.ascii	"otalMemUse: %d, UsingNum: %d\012\000"
	.space	3
.LC67:
	.ascii	"1 NoneDnrSwitchToDnrNormCase, FrameSize: %d, VdhTot"
	.ascii	"alMemUse: %d, UsingNum: %d\012\000"
	.space	1
.LC68:
	.ascii	"2 NoneDnrSwitchToDnrNormCase, UsingNum: %d\012\000"
.LC69:
	.ascii	"%s, can NOT enable DNR instance\012\000"
	.space	3
.LC70:
	.ascii	"%s, can NOT enableWithourArrange DNR instance\012\000"
	.space	1
.LC71:
	.ascii	"%s, can NOT start DNR instance\012\000"
.LC72:
	.ascii	"%s, can NOT ArrangeMem for DNR instance\012\000"
	.space	3
.LC73:
	.ascii	"%s, can NOT COnfig DNR instance\012\000"
	.space	3
.LC74:
	.ascii	"eChanCapLevel = %d is not expected!\012\000"
	.space	3
.LC75:
	.ascii	"decode channel CapLevel is %d(w=%d,h=%d), this stre"
	.ascii	"am (w=%d,h=%d) can NOT be decoded!\012\000"
	.space	1
.LC76:
	.ascii	"Dnr Switch To Dnr, w x h: %d x %d\012\000"
	.space	1
.LC77:
	.ascii	"None Dnr Switch To Dnr, w x h: %d x %d\012\000"
.LC78:
	.ascii	"Error, %s, %d, ChanID: %d\012\000"
	.space	1
.LC79:
	.ascii	"Dnr Switch To None Dnr, w x h: %d x %d\012\000"
.LC80:
	.ascii	"None Dnr Switch To None Dnr, w x h: %d x %d\012\000"
	.space	3
.LC81:
	.ascii	"VDH addr: %#x, VDH size: %d, Dnr addr: %#x, Dnr siz"
	.ascii	"e: %d\012\000"
	.space	2
.LC82:
	.ascii	"pstVoQue is NULL\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_pFspInst, %object
	.size	s_pFspInst, 16
s_pFspInst:
	.space	16
	.type	g_IsFrameIntfValid, %object
	.size	g_IsFrameIntfValid, 4
g_IsFrameIntfValid:
	.space	4
	.type	g_FspFrameIntf, %object
	.size	g_FspFrameIntf, 16
g_FspFrameIntf:
	.space	16
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 8
g_SpinLock_fsp:
	.space	8
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 32
s_FspVoQue:
	.space	32
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
